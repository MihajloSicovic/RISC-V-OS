//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

extern void userMain();

int main()
{
    Riscv::w_stvec((uint64) &Riscv::stvecTrap | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    //userMain();
    __getc();
    return 0;
}