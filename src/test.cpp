//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/Semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"

extern void userMain();

int main()
{
    TCB *mainThread, *userMainThread;

    Riscv::w_stvec((uint64)&Riscv::stvecTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    mainThread = TCB::createThread(nullptr, nullptr, nullptr);
    TCB::main = TCB::running = mainThread;

    thread_create(&userMainThread, reinterpret_cast<void (*)(void *)>(userMain), nullptr);

    while(!userMainThread->isFinished()) {
        thread_dispatch();
    }

    printString("Main finished\n");
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    delete mainThread;
    delete userMainThread;
    return 0;
}