#ifndef syscall_c
#define syscall_c

#include "../lib/hw.h"
#include "Semaphore.hpp"
#include "ccb.hpp"

void* mem_alloc(size_t size);

int mem_free(void* p);

size_t mem_get_free_space();

size_t mem_get_largest_free_block();

typedef CCB* thread_t;

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg);

int thread_exit();

void thread_dispatch();

typedef ABI::Semaphore* sem_t;

int sem_open (
        sem_t* handle,
        unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int time_sleep(time_t time);

char getc();

void putc(char c);

#endif //syscall_c