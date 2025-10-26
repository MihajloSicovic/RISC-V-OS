//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"
#include "../h/Semaphore.hpp"

#define USER_MODE 8
#define SUPERVISOR_MODE 9
#define CONSOLE_INTERRUPT 0x8000000000000009UL
#define SOFTWARE_INTERRUPT 0x8000000000000001UL

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    uint64 scause = r_scause();

    if (scause == CONSOLE_INTERRUPT) {
        console_handler();
        return;
    }

    if (scause == SOFTWARE_INTERRUPT) {
        mc_sip(SIP_SSIE);
        return;
    }

    if (scause != USER_MODE && scause != SUPERVISOR_MODE) {
        printString("Error code: ");
        printInt(scause);
        printString(" (BNT = ");
        printInt(scause >> 63);
        printString(")\n");
        return;
    }

    uint64 codeOperation = Riscv::r_a0();
    uint64 volatile sepc = r_sepc() + 4;
    uint64 volatile sstatus = r_sstatus();

    int returnValue;
    size_t returnSize;
    ABI::Semaphore *semHandlePtr;
    switch (codeOperation) {
        case 0x01:
            // mem_alloc (size_t size)
            size_t size;
            void *retPtr;
            __asm__ volatile("mv %0, a1" : "=r" (size));
            retPtr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);

            __asm__ volatile ("mv t0, %0" : : "r" (retPtr));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x02:
            // mem_free (void*)
            void *memPtr;
            __asm__ volatile("mv %0, a1" : "=r" (memPtr));

            returnValue = MemoryAllocator::Instance()->mem_free(memPtr);

            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x03:
            // mem_get_free_space()
            returnSize = MemoryAllocator::Instance()->mem_get_free_space();

            __asm__ volatile ("mv t0, %0" : : "r" (returnSize));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x04:
            // mem_get_largest_free_block()
            returnSize = MemoryAllocator::Instance()->mem_get_largest_free_block();

            __asm__ volatile ("mv t0, %0" : : "r" (returnSize));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x11:
            // thread_create (thread_t* handle, void(*start_routine)(void*), void* arg)
            TCB **thread;
            Body body;
            void *arg;
            uint64 *stack;
            __asm__ volatile ("mv %0, a1" : "=r" (thread));
            __asm__ volatile ("mv %0, a2" : "=r" (body));
            __asm__ volatile ("mv %0, a6" : "=r" (stack));
            __asm__ volatile ("mv %0, a7" : "=r" (arg));
            *thread = TCB::createThread(body, arg, stack);

            if (*thread != nullptr) {
                __asm__ volatile ("li t0, 0");
                __asm__ volatile ("sw t0, 80(x8)");
            }
            else {
                __asm__ volatile ("li t0, -1");
                __asm__ volatile ("sw t0, 80(x8)");
            }
            break;

        case 0x12:
            // thread_exit()
            TCB::running->setFinished(true);
            TCB::dispatch();
            __asm__ volatile ("li a0, 0");
            break;

        case 0x13:
            // thread_dispatch()
            TCB::dispatch();
            break;

        case 0x21:
            // sem_open (sem_t* handle, unsigned init)
            unsigned init;
            ABI::Semaphore **semHandle;

            __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
            __asm__ volatile ("mv %0, a2" : "=r" (init));
            *semHandle = ABI::Semaphore::createSemaphore(init);

            if (*semHandle != nullptr) {
                __asm__ volatile ("li t0, 0");
                __asm__ volatile ("sw t0, 80(x8)");
            }
            else {
                __asm__ volatile ("li t0, -1");
                __asm__ volatile ("sw t0, 80(x8)");
            }
            break;

        case 0x22:
            // sem_close (sem_t handle)
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
            if (semHandlePtr) returnValue = semHandlePtr->close();
            else returnValue = -2;

            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x23:
            // sem_wait (sem_t id)
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
            if (semHandlePtr) returnValue = semHandlePtr->wait();
            else returnValue = -2;

            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x24:
            // sem_signal (sem_t id)
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
            if (semHandlePtr) returnValue = semHandlePtr->signal();
            else returnValue = -2;

            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x41:
            // getc()
            returnValue = __getc();
            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x42:
            // putc(char)
            char c;
            __asm__ volatile ("mv %0, a1" : "=r" (c));
            __putc(c);
            break;
    }

    w_sstatus(sstatus);
    w_sepc(sepc);
}
