//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"
#include "../h/riscv.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body, void* arg, uint64* stack)
{
    return new CCB(body, arg, stack);
}

void CCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    CCB::yield();
}

void CCB::yield()
{
    Riscv::pushRegisters();

    CCB::dispatch();

    Riscv::popRegisters();
}

void CCB::dispatch()
{
    CCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);
}
