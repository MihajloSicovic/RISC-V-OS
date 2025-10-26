//
// Created by os on 10/16/25.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_H
#define PROJECT_BASE_V1_1_SEMAPHORE_H

#include "list.hpp"
#include "MemoryAllocator.hpp"

class TCB;

namespace ABI {
    class Semaphore {
    public:
        // Destructor.
        virtual ~Semaphore() = default;

        // Creates pointer to Semaphore object.
        static Semaphore *createSemaphore(unsigned int init = 1);

        // Performs semaphore wait operation.
        int wait();

        // Performs semaphore signal operation.
        int signal();

        // Closes the object.
        int close();

        // Gets semaphore parameter starting value.
        unsigned int getValue() const { return val; }

        void *operator new(size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
        }

        void *operator new[](size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
        }

        void operator delete(void *ptr) {
            MemoryAllocator::Instance()->mem_free(ptr);
        }

        void operator delete[](void *ptr) {
            MemoryAllocator::Instance()->mem_free(ptr);
        }

    protected:
        // Constructor.
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}

        // Blocks current thread and yields execution to the next one.
        void block();

        // Unblocks a thread in the blocked queue and puts it back into scheduler.
        void unblock();

    private:
        long val;
        bool closed;
        List<TCB> blocked;
    };
}

#endif //PROJECT_BASE_V1_1_SEMAPHORE_H
