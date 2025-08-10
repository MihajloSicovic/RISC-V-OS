#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator {
public:

    static MemoryAllocator* Instance() {
        static MemoryAllocator memoryAllocator;
        return &memoryAllocator;
    }

    // Allocates a continuous memory block that contains at least size bytes.
    void* mem_alloc(size_t size);

    // Frees an allocated block of memory with the given address.
    int mem_free(void* addr);

    // Gets the total size of free memory expressed in bytes.
    size_t mem_get_free_space();

    // Gets the size of the largest block of free memory expressed in bytes.
    size_t mem_get_largest_free_block();

    struct Header {
        Header* next;
        size_t size;
    };

private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
        free_head->next = nullptr;
    }

    static int tryToJoin(Header* cur);
};

#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
