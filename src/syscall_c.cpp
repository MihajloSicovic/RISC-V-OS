#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include"../lib/console.h"
#include "../h/ccb.hpp"

void* mem_alloc(size_t size) {
    size += sizeof(MemoryAllocator::Header);
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);

    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("mv a1, %0" : : "r" (paddedSize));
    __asm__ volatile("ecall");

    void* result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

int mem_free(void* p) {
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("mv a1, %0" : : "r" (p));
    __asm__ volatile("ecall");

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

size_t mem_get_free_space() {
    __asm__ volatile("li a0, 0x03");
    __asm__ volatile("ecall");

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

size_t mem_get_largest_free_block() {
    __asm__ volatile("li a0, 0x04");
    __asm__ volatile("ecall");

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    __asm__ volatile("ecall");

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

int thread_start(thread_t* handle) {
    if (!handle) return -1;
    CCB::startThread(*handle);
    return 0;
}

int thread_exit() {
    __asm__ volatile("li a0, 0x12");
    __asm__ volatile ("ecall");

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile ("ecall");
}

int sem_open(sem_t* handle, unsigned init) {
    __asm__ volatile("li a0, 0x21");
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    __asm__ volatile ("ecall");

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

int sem_close(sem_t handle) {
    __asm__ volatile("li a0, 0x22");
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("ecall");

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

int sem_wait(sem_t id) {
    __asm__ volatile("li a0, 0x23");
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile ("ecall");

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

int sem_signal(sem_t id) {
    __asm__ volatile("li a0, 0x24");
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile ("ecall");

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

int time_sleep(time_t time) {
    __asm__ volatile("li a0, 0x31");
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    __asm__ volatile ("ecall");

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    return result;
}

char getc() {
    __asm__ volatile("li a0, 0x41");
    __asm__ volatile ("ecall");

    char result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}

void putc(char c) {
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    __asm__ volatile("li a0, 0x42");
    __asm__ volatile ("ecall");
}