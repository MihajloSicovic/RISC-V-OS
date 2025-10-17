//
// Created by os on 10/16/25.
//

#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(this->myHandle);
}

int Semaphore::wait() {
    return sem_wait(this->myHandle);
}

int Semaphore::signal() {
    return sem_signal(this->myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::~Thread() {
    delete this->myHandle;
}

Thread::Thread() {
    thread_create(&this->myHandle, runWrapper, this);
}

int Thread::start() {
    return thread_start(&this->myHandle);
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Console::putc(char c) {
    syscall_c::putc(c);
}

char Console::getc() {
    return syscall_c::getc();
}
