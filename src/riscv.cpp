//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/ccb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    uint64 scause = r_scause();
    if (scause == 8 || scause == 9)
    {
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 codeOperation = Riscv::r_a0();
        int returnValue;
        Semaphore* semHandlePtr;
        switch (codeOperation) {
            case 0x01:
                // mem_alloc(size)

                size_t size;
                void* ptr;
                __asm__ volatile("mv %0, a1" : "=r" (size));
                ptr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);

                __asm__ volatile("mv t0, %0" : : "r"(ptr));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x02:
                // mem_free(ptr)

                void* memptr;
                __asm__ volatile("mv %0, a1" : "=r" (memptr));

                returnValue = MemoryAllocator::Instance()->mem_free(memptr);

                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x03:
                // mem_get_free_space()

                returnValue = MemoryAllocator::Instance()->mem_get_free_space();

                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x04:
                // mem_get_largest_free_block()

                returnValue = MemoryAllocator::Instance()->mem_get_largest_free_block();

                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x11:
                //thread_create
                CCB** thread;
                Body body;
                void* arg;
                __asm__ volatile ("mv %0, a1" : "=r" (thread));
                __asm__ volatile ("mv %0, a2" : "=r" (body));
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
                //*thread = CCB::createCoroutine(body, arg);
                if(*thread != nullptr) {
                    __asm__ volatile ("li t0, 0");
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                else {
                    __asm__ volatile ("li t0, -1");
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                break;

            case 0x12:
                //thread_exit()
                CCB::running->setFinished(true);
                CCB::dispatch();
                __asm__ volatile ("li t0, 0");
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x13:
                //thread_dispatch()
                CCB::dispatch();
                break;

            case 0x21:
                //sem_open
                unsigned init;
                Semaphore** semHandle;

                __asm__ volatile ("mv %0, a2" : "=r" (init));
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
                *semHandle = Semaphore::createSemaphore(init);

                if(*semHandle != nullptr) {
                    __asm__ volatile ("li t0, 0");
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                else {
                    __asm__ volatile ("li t0, -1");
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                break;

            case 0x22:
                //sem_close
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->close();
                }
                else returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x23:
                //sem_wait
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->wait();
                }
                else returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x24:
                //sem_signal
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr)
                    returnValue = semHandlePtr->signal();
                else
                    returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else
    {
        // unexpected trap cause
        printString("ERROR! SCAUSE: ");
        printInteger(scause);
        printString("\n");
    }
}