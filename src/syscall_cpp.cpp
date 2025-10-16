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
    //thread_exit();
    delete this->myHandle;
}

Thread::Thread() {
    thread_create_without_start(&this->myHandle, runWrapper, this);
}
