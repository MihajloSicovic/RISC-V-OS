//
// Created by os on 10/16/25.
//

#include "../h/Semaphore.hpp"
#include "../h/tcb.hpp"

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
        blocked.addLast(TCB::running);
        TCB::running->setBlocked(true);
        TCB::yield();
    }

    void Semaphore::unblock() {
        TCB *thread = blocked.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    }
}
