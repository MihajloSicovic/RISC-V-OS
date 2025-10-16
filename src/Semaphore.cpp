//
// Created by os on 10/16/25.
//

#include "../h/Semaphore.hpp"
#include "../h/ccb.hpp"

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
    CCB::running = Scheduler::get();
    thread_dispatch();
}

void Semaphore::unblock() {
    CCB* thread = blocked.removeFirst();
    Scheduler::put(thread);
}