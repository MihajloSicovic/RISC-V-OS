//
// Created by os on 10/16/25.
//

#include "../h/Semaphore.hpp"
#include "../h/ccb.hpp"
#include "../h/syscall_c.hpp"

namespace ABI {
    Semaphore *Semaphore::createSemaphore(unsigned int init) {
        return new Semaphore(init);
    }

    int Semaphore::wait() {
        if (closed) return -1;

        if (--val < 0) block();

        return 0;
    }

    int Semaphore::signal() {
        if (closed) return -1;

        if (++val <= 0) unblock();

        return 0;
    }

    int Semaphore::close() {
        if (closed) return -1;

        closed = true;

        while (!blocked.empty()) unblock();

        return 0;
    }

    void Semaphore::block() {
        blocked.addLast(CCB::running);
        CCB::running->setBlocked(true);
        CCB::yield();
    }

    void Semaphore::unblock() {
        CCB *thread = blocked.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    }
}
