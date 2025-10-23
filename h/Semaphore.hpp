//
// Created by os on 10/16/25.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_H
#define PROJECT_BASE_V1_1_SEMAPHORE_H

#include "list.hpp"
#include "ccb.hpp"
#include "MemoryAllocator.hpp"

namespace ABI {
    class Semaphore {
    public:
        virtual ~Semaphore() = default;

        static Semaphore *createSemaphore(unsigned int init = 1);

        int wait();

        int signal();

        int close();

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
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}

        void block();

        void unblock();

    private:
        long val;
        bool closed;
        List<CCB> blocked;
    };
}

#endif //PROJECT_BASE_V1_1_SEMAPHORE_H
