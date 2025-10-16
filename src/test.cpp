//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"

int main()
{
    Riscv::w_stvec((uint64) &Riscv::stvecTrap);

    MemoryAllocator* m = MemoryAllocator::Instance();
    void* res = mem_alloc(100);
    CCB *coroutines[3];

    m->mem_free(res);
    coroutines[0] = CCB::createCoroutine(nullptr);
    CCB::running = coroutines[0];

    coroutines[1] = CCB::createCoroutine(workerBodyC);
    printString("CoroutineC created\n");
    coroutines[2] = CCB::createCoroutine(workerBodyD);
    printString("CoroutineD created\n");

    while (!(coroutines[1]->isFinished() &&
             coroutines[2]->isFinished()))
    {
        CCB::yield();
    }

    for (auto &coroutine: coroutines)
    {
        delete coroutine;
    }
    printString("Finished\n");

    return 0;
}