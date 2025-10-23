//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body, void* arg, uint64* stack)
{
    return new CCB(body, arg, stack);
}

void CCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    CCB::yield();
}

void CCB::yield()
{
    /*
    Riscv::pushRegisters();

    CCB::dispatch();

    Riscv::popRegisters();
     */
    thread_dispatch();
}

void CCB::dispatch()
{
    CCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    if(running->body == nullptr) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    }
    else {
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }

    CCB::contextSwitch(&old->context, &running->context);
}
