//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "MemoryAllocator.hpp"

// Thread Control Block
class TCB
{
public:
    // Destructor.
    ~TCB() { delete[] stack; }

    // Checks if the thread is finished execution.
    bool isFinished() const { return finished; }

    // Sets the thread's state to finished.
    void setFinished(bool value) { finished = value; }

    // Checks if the thread is blocked.
    bool isBlocked() const { return blocked; }

    // Sets the thread's state to blocked.
    void setBlocked(bool value) { blocked = value; }

    // dummy method
    using Body = void (*)(void*);

    // Creates and returns pointer to thread.
    static TCB *createThread(Body body, void* arg, uint64* stack);

    // Yields execution of the running thread to the next.
    static void yield();

    // Pointer to the currently running thread.
    static TCB *running, *main;

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    }
    void* operator new[](size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    }

    void operator delete(void *ptr) {
        MemoryAllocator::Instance()->mem_free(ptr);
    }
    void operator delete[](void *ptr) {
        MemoryAllocator::Instance()->mem_free(ptr);
    }


private:
    // Constructor.
    explicit TCB(Body body, void* arg, uint64* stack) :
            body(body),
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            arg(arg)
    {
        if (body != nullptr) { Scheduler::put(this); }
    }

    // Wrapper function for thread object.
    static void threadWrapper();

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    bool finished, blocked;
    void *arg;

    // Performs context switch between to thread contexts.
    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    friend class Riscv;

    static uint64 constexpr STACK_SIZE = 1024;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
