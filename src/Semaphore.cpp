//
// Created by os on 10/16/25.
//

#include "../h/Semaphore.hpp"
#include "../h/ccb.hpp"

Semaphore* Semaphore::createSemaphore(unsigned int init) {
    return new Semaphore(init);
}

int Semaphore::wait() {
    if (closed) return -1;

    if (--val < 0) {
        blocked.addLast(CCB::running);
        CCB::running = Scheduler::get();
        CCB::dispatch();
    }
    return 0;
}

int Semaphore::signal() {
    if (closed) return -1;

    if (++val <= 0) {
        CCB* thread = blocked.removeFirst();
        Scheduler::put(thread);
    }
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
    CCB::running = Scheduler::get();
    CCB::dispatch();
}

void Semaphore::unblock() {
    CCB* thread = blocked.removeFirst();
    Scheduler::put(thread);
}
