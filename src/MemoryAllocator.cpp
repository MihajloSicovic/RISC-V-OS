#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    size += sizeof(Header);
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found

    target = cur;
    if (cur->size == paddedSize) {
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
        if (prev) prev->next = cur;
        else free_head = cur;
        cur->next = target->next;
        cur->size = target->size - paddedSize;
    }
    target->size = paddedSize;
    target->next = nullptr;

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);

    if (cur) target->next = cur->next;
    else target->next = alloc_head;

    if (cur) cur->next = target;
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
}

int MemoryAllocator::mem_free(void* addr) {
    if (addr == nullptr) return -1; // Error: Address not provided

    Header *cur, *prev = nullptr;
    Header* target = (Header*)((char*)addr - sizeof(Header));

    // Remove from alloc list
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found

    if (prev) prev->next = cur->next;
    else alloc_head = cur->next;

    // Add to free list
    if (free_head == nullptr || target < free_head) cur = nullptr;
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);

    if (cur) target->next = cur->next;
    else target->next = free_head;

    if (cur) cur->next = target;
    else free_head = target;

    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    if (cur == nullptr) return 0;

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
}

size_t MemoryAllocator::mem_get_free_space() {
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
        result += cur->size;
    }

    return result;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
        if (result < cur->size) result = cur->size;
    }

    return result;
}