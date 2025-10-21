//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"
#include "../h/workers.hpp"
#include "../h/Semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

extern void userMain();

int main()
{
    CCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::stvecTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    threads[0] = CCB::createCoroutine(nullptr, nullptr, nullptr);
    CCB::running = threads[0];

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);

    while(!threads[1]->isFinished()) {
        thread_dispatch();
    }

    printString("Vratio sam se u main\n");

    return 0;
}