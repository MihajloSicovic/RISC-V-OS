#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"

void main() {
    void *p1 = MemoryAllocator::Instance()->mem_alloc(100);
    void *p2 = MemoryAllocator::Instance()->mem_alloc(1000);
    void *p3 = MemoryAllocator::Instance()->mem_alloc(10000);
    MemoryAllocator::Instance()->mem_free(p2);
    void *p4 = MemoryAllocator::Instance()->mem_alloc(900);
    MemoryAllocator::Instance()->mem_free(p1);
    MemoryAllocator::Instance()->mem_free(p4);
    MemoryAllocator::Instance()->mem_free(p3);
    return;
}