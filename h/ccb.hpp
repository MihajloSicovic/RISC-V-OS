//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "MemoryAllocator.hpp"
#include "Semaphore.hpp"

// Coroutine Control Block
class CCB
{
public:
    ~CCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    using Body = void (*)();

    static CCB *createCoroutine(Body body, void* arg, uint64* stack);

    static void yield();

    static CCB *running;

    static void startThread(CCB* tcbToStart) {
        Scheduler::put(tcbToStart);
    }

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

    static void dispatch();

private:
    explicit CCB(Body body, void* arg, uint64* stack) :
            body(body),
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg)
    {
        if (body != nullptr) { Scheduler::put(this); }
    }

    static void threadWrapper();

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    void *arg;

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static uint64 constexpr STACK_SIZE = 1024;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
