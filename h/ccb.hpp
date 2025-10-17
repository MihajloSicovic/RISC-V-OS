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

    using Body = void (*)(void*);

    static CCB *createCoroutine(Body body, void* arg);

    static void yield();

    static CCB *running;

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
    explicit CCB(Body body, void* arg) :
            body(body),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({body != nullptr ? (uint64) body : 0,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg)
    {
        if (body != nullptr) { Scheduler::put(this); }
    }

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
