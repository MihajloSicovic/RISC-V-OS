//
// Created by os on 10/16/25.
//

#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"


void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread(void (*body)(void *), void *arg) :
    myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    delete myHandle;
}

Thread::Thread() :
        myHandle(nullptr), body(runWrapper), arg(this) {}

int Thread::start() {
    return thread_create(&myHandle, body, arg);
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

void Console::putc(char c) {
    syscall_c::putc(c);
}

char Console::getc() {
    return syscall_c::getc();
}
