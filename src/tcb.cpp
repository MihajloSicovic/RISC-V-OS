//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;
TCB *TCB::main = nullptr;

TCB *TCB::createThread(Body body, void* arg, uint64* stack)
{
    return new TCB(body, arg, stack);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}

void TCB::yield()
{
    thread_dispatch();
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    if (running == main) Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else Riscv::mc_sstatus(Riscv::SSTATUS_SPP);

    TCB::contextSwitch(&old->context, &running->context);
}

int TCB::exit() {
    running->setFinished(true);
    dispatch();
    return 0;
}
