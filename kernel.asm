
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	55013103          	ld	sp,1360(sp) # 8000b550 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	454060ef          	jal	ra,80006470 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv9stvecTrapEv>:
.align 4
.global _ZN5Riscv9stvecTrapEv
.type _ZN5Riscv9stvecTrapEv, @function
_ZN5Riscv9stvecTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv14handleSyscallsEv
    80001084:	4bc010ef          	jal	ra,80002540 <_ZN5Riscv14handleSyscallsEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)
    ret
    80001188:	00008067          	ret

000000008000118c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000118c:	01813183          	ld	gp,24(sp)
    80001190:	02013203          	ld	tp,32(sp)
    80001194:	02813283          	ld	t0,40(sp)
    80001198:	03013303          	ld	t1,48(sp)
    8000119c:	03813383          	ld	t2,56(sp)
    800011a0:	04013403          	ld	s0,64(sp)
    800011a4:	04813483          	ld	s1,72(sp)
    800011a8:	05013503          	ld	a0,80(sp)
    800011ac:	05813583          	ld	a1,88(sp)
    800011b0:	06013603          	ld	a2,96(sp)
    800011b4:	06813683          	ld	a3,104(sp)
    800011b8:	07013703          	ld	a4,112(sp)
    800011bc:	07813783          	ld	a5,120(sp)
    800011c0:	08013803          	ld	a6,128(sp)
    800011c4:	08813883          	ld	a7,136(sp)
    800011c8:	09013903          	ld	s2,144(sp)
    800011cc:	09813983          	ld	s3,152(sp)
    800011d0:	0a013a03          	ld	s4,160(sp)
    800011d4:	0a813a83          	ld	s5,168(sp)
    800011d8:	0b013b03          	ld	s6,176(sp)
    800011dc:	0b813b83          	ld	s7,184(sp)
    800011e0:	0c013c03          	ld	s8,192(sp)
    800011e4:	0c813c83          	ld	s9,200(sp)
    800011e8:	0d013d03          	ld	s10,208(sp)
    800011ec:	0d813d83          	ld	s11,216(sp)
    800011f0:	0e013e03          	ld	t3,224(sp)
    800011f4:	0e813e83          	ld	t4,232(sp)
    800011f8:	0f013f03          	ld	t5,240(sp)
    800011fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001200:	10010113          	addi	sp,sp,256
    ret
    80001204:	00008067          	ret

0000000080001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001208:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000120c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001210:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001214:	0085b103          	ld	sp,8(a1)

    80001218:	00008067          	ret

000000008000121c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000121c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001220:	00b29a63          	bne	t0,a1,80001234 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001224:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001228:	fe029ae3          	bnez	t0,8000121c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000122c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001230:	00008067          	ret

0000000080001234 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001234:	00100513          	li	a0,1
    80001238:	00008067          	ret

000000008000123c <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include"../lib/console.h"
#include "../h/ccb.hpp"

void* mem_alloc(size_t size) {
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16
    size_t paddedSize = size / MEM_BLOCK_SIZE + (size % MEM_BLOCK_SIZE ? 1 : 0);
    80001248:	00655793          	srli	a5,a0,0x6
    8000124c:	03f57513          	andi	a0,a0,63
    80001250:	00050463          	beqz	a0,80001258 <_Z9mem_allocm+0x1c>
    80001254:	00100513          	li	a0,1
    80001258:	00a78533          	add	a0,a5,a0

    __asm__ volatile("mv a1, %0" : : "r" (paddedSize));
    8000125c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001260:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001264:	00000073          	ecall

    void* result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001268:	00050513          	mv	a0,a0
    return result;
}
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <_Z8mem_freePv>:

int mem_free(void* p) {
    80001278:	ff010113          	addi	sp,sp,-16
    8000127c:	00813423          	sd	s0,8(sp)
    80001280:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (p));
    80001284:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    80001288:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    8000128c:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001290:	00050513          	mv	a0,a0
    return result;
}
    80001294:	0005051b          	sext.w	a0,a0
    80001298:	00813403          	ld	s0,8(sp)
    8000129c:	01010113          	addi	sp,sp,16
    800012a0:	00008067          	ret

00000000800012a4 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800012a4:	ff010113          	addi	sp,sp,-16
    800012a8:	00813423          	sd	s0,8(sp)
    800012ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x03");
    800012b0:	00300513          	li	a0,3
    __asm__ volatile("ecall");
    800012b4:	00000073          	ecall

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800012b8:	00050513          	mv	a0,a0
    return result;
}
    800012bc:	00813403          	ld	s0,8(sp)
    800012c0:	01010113          	addi	sp,sp,16
    800012c4:	00008067          	ret

00000000800012c8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800012c8:	ff010113          	addi	sp,sp,-16
    800012cc:	00813423          	sd	s0,8(sp)
    800012d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x04");
    800012d4:	00400513          	li	a0,4
    __asm__ volatile("ecall");
    800012d8:	00000073          	ecall

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800012dc:	00050513          	mv	a0,a0
    return result;
}
    800012e0:	00813403          	ld	s0,8(sp)
    800012e4:	01010113          	addi	sp,sp,16
    800012e8:	00008067          	ret

00000000800012ec <_Z13thread_createPP3CCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800012ec:	fd010113          	addi	sp,sp,-48
    800012f0:	02113423          	sd	ra,40(sp)
    800012f4:	02813023          	sd	s0,32(sp)
    800012f8:	00913c23          	sd	s1,24(sp)
    800012fc:	01213823          	sd	s2,16(sp)
    80001300:	01313423          	sd	s3,8(sp)
    80001304:	03010413          	addi	s0,sp,48
    80001308:	00050493          	mv	s1,a0
    8000130c:	00058913          	mv	s2,a1
    80001310:	00060993          	mv	s3,a2

class MemoryAllocator {
public:

    static MemoryAllocator* Instance() {
        static MemoryAllocator memoryAllocator;
    80001314:	0000a797          	auipc	a5,0xa
    80001318:	2ac7c783          	lbu	a5,684(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000131c:	04079263          	bnez	a5,80001360 <_Z13thread_createPP3CCBPFvPvES2_+0x74>
private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001320:	0000a797          	auipc	a5,0xa
    80001324:	2287b783          	ld	a5,552(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001328:	0007b783          	ld	a5,0(a5)
    8000132c:	0000a717          	auipc	a4,0xa
    80001330:	29c70713          	addi	a4,a4,668 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001334:	00f73023          	sd	a5,0(a4)
    80001338:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000133c:	0000a717          	auipc	a4,0xa
    80001340:	22473703          	ld	a4,548(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001344:	00073703          	ld	a4,0(a4)
    80001348:	40f70733          	sub	a4,a4,a5
    8000134c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001350:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001354:	00100793          	li	a5,1
    80001358:	0000a717          	auipc	a4,0xa
    8000135c:	26f70423          	sb	a5,616(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    void* sp = MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    80001360:	000085b7          	lui	a1,0x8
    80001364:	0000a517          	auipc	a0,0xa
    80001368:	26450513          	addi	a0,a0,612 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000136c:	00001097          	auipc	ra,0x1
    80001370:	79c080e7          	jalr	1948(ra) # 80002b08 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("mv a6, %0" : : "r"((uint64)sp));
    80001374:	00050813          	mv	a6,a0
    __asm__ volatile ("mv a7, %0" : : "r"((uint64)arg));
    80001378:	00098893          	mv	a7,s3
    __asm__ volatile ("mv a2, %0" : : "r"((uint64)start_routine));
    8000137c:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)handle));
    80001380:	00048593          	mv	a1,s1
    __asm__ volatile("li a0, 0x11");
    80001384:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    80001388:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000138c:	00050513          	mv	a0,a0
    return result;
}
    80001390:	0005051b          	sext.w	a0,a0
    80001394:	02813083          	ld	ra,40(sp)
    80001398:	02013403          	ld	s0,32(sp)
    8000139c:	01813483          	ld	s1,24(sp)
    800013a0:	01013903          	ld	s2,16(sp)
    800013a4:	00813983          	ld	s3,8(sp)
    800013a8:	03010113          	addi	sp,sp,48
    800013ac:	00008067          	ret

00000000800013b0 <_Z12thread_startPP3CCB>:

int thread_start(thread_t* handle) {
    if (!handle) return -1;
    800013b0:	02050a63          	beqz	a0,800013e4 <_Z12thread_startPP3CCB+0x34>
int thread_start(thread_t* handle) {
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00113423          	sd	ra,8(sp)
    800013bc:	00813023          	sd	s0,0(sp)
    800013c0:	01010413          	addi	s0,sp,16
    using Body = void (*)(void*);

    static CCB *createCoroutine(Body body, void* arg, uint64* stack);

    static void yield();

    800013c4:	00053503          	ld	a0,0(a0)
    800013c8:	00001097          	auipc	ra,0x1
    800013cc:	5fc080e7          	jalr	1532(ra) # 800029c4 <_ZN9Scheduler3putEP3CCB>
    CCB::startThread(*handle);
    return 0;
    800013d0:	00000513          	li	a0,0
}
    800013d4:	00813083          	ld	ra,8(sp)
    800013d8:	00013403          	ld	s0,0(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret
    if (!handle) return -1;
    800013e4:	fff00513          	li	a0,-1
}
    800013e8:	00008067          	ret

00000000800013ec <_Z11thread_exitv>:

int thread_exit() {
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00813423          	sd	s0,8(sp)
    800013f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800013f8:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    800013fc:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001400:	00050513          	mv	a0,a0
    return result;
}
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00813423          	sd	s0,8(sp)
    8000141c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001420:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80001424:	00000073          	ecall
}
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z8sem_openPPN3ABI9SemaphoreEj>:

int sem_open(sem_t* handle, unsigned init) {
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" ((uint64)init));
    80001440:	02059593          	slli	a1,a1,0x20
    80001444:	0205d593          	srli	a1,a1,0x20
    80001448:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" ((uint64)handle));
    8000144c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001450:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    80001454:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001458:	00050513          	mv	a0,a0
    return result;
}
    8000145c:	0005051b          	sext.w	a0,a0
    80001460:	00813403          	ld	s0,8(sp)
    80001464:	01010113          	addi	sp,sp,16
    80001468:	00008067          	ret

000000008000146c <_Z9sem_closePN3ABI9SemaphoreE>:

int sem_close(sem_t handle) {
    8000146c:	ff010113          	addi	sp,sp,-16
    80001470:	00813423          	sd	s0,8(sp)
    80001474:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001478:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000147c:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    80001480:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001484:	00050513          	mv	a0,a0
    return result;
}
    80001488:	0005051b          	sext.w	a0,a0
    8000148c:	00813403          	ld	s0,8(sp)
    80001490:	01010113          	addi	sp,sp,16
    80001494:	00008067          	ret

0000000080001498 <_Z8sem_waitPN3ABI9SemaphoreE>:

int sem_wait(sem_t id) {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00813423          	sd	s0,8(sp)
    800014a0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800014a4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800014a8:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    800014ac:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800014b0:	00050513          	mv	a0,a0
    return result;
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>:

int sem_signal(sem_t id) {
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00813423          	sd	s0,8(sp)
    800014cc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800014d0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800014d4:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    800014d8:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800014dc:	00050513          	mv	a0,a0
    return result;
}
    800014e0:	0005051b          	sext.w	a0,a0
    800014e4:	00813403          	ld	s0,8(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret

00000000800014f0 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    800014f0:	ff010113          	addi	sp,sp,-16
    800014f4:	00813423          	sd	s0,8(sp)
    800014f8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    800014fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001500:	03100513          	li	a0,49
    __asm__ volatile ("ecall");
    80001504:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001508:	00050513          	mv	a0,a0
    return result;
}
    8000150c:	0005051b          	sext.w	a0,a0
    80001510:	00813403          	ld	s0,8(sp)
    80001514:	01010113          	addi	sp,sp,16
    80001518:	00008067          	ret

000000008000151c <_Z4getcv>:

char getc() {
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00813423          	sd	s0,8(sp)
    80001524:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001528:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    8000152c:	00000073          	ecall

    char result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001530:	00050513          	mv	a0,a0
    return result;
}
    80001534:	0ff57513          	andi	a0,a0,255
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_Z4putcc>:

void putc(char c) {
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00813423          	sd	s0,8(sp)
    8000154c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    80001550:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001554:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    80001558:	00000073          	ecall
    8000155c:	00813403          	ld	s0,8(sp)
    80001560:	01010113          	addi	sp,sp,16
    80001564:	00008067          	ret

0000000080001568 <_ZL9fibonaccim>:
#include "../h/ccb.hpp"
#include "../h/Semaphore.hpp"
#include "../test/printing.hpp"

static uint64 fibonacci(uint64 n)
{
    80001568:	fe010113          	addi	sp,sp,-32
    8000156c:	00113c23          	sd	ra,24(sp)
    80001570:	00813823          	sd	s0,16(sp)
    80001574:	00913423          	sd	s1,8(sp)
    80001578:	01213023          	sd	s2,0(sp)
    8000157c:	02010413          	addi	s0,sp,32
    80001580:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001584:	00100793          	li	a5,1
    80001588:	02a7f663          	bgeu	a5,a0,800015b4 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    8000158c:	00357793          	andi	a5,a0,3
    80001590:	02078e63          	beqz	a5,800015cc <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001594:	fff48513          	addi	a0,s1,-1
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	fd0080e7          	jalr	-48(ra) # 80001568 <_ZL9fibonaccim>
    800015a0:	00050913          	mv	s2,a0
    800015a4:	ffe48513          	addi	a0,s1,-2
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	fc0080e7          	jalr	-64(ra) # 80001568 <_ZL9fibonaccim>
    800015b0:	00a90533          	add	a0,s2,a0
}
    800015b4:	01813083          	ld	ra,24(sp)
    800015b8:	01013403          	ld	s0,16(sp)
    800015bc:	00813483          	ld	s1,8(sp)
    800015c0:	00013903          	ld	s2,0(sp)
    800015c4:	02010113          	addi	sp,sp,32
    800015c8:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	e48080e7          	jalr	-440(ra) # 80001414 <_Z15thread_dispatchv>
    800015d4:	fc1ff06f          	j	80001594 <_ZL9fibonaccim+0x2c>

00000000800015d8 <_Z11workerBodyAPv>:

void workerBodyA(void*)
{
    800015d8:	fe010113          	addi	sp,sp,-32
    800015dc:	00113c23          	sd	ra,24(sp)
    800015e0:	00813823          	sd	s0,16(sp)
    800015e4:	00913423          	sd	s1,8(sp)
    800015e8:	01213023          	sd	s2,0(sp)
    800015ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800015f0:	00000493          	li	s1,0
    800015f4:	0400006f          	j	80001634 <_Z11workerBodyAPv+0x5c>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800015f8:	00008517          	auipc	a0,0x8
    800015fc:	a2850513          	addi	a0,a0,-1496 # 80009020 <CONSOLE_STATUS+0x10>
    80001600:	00004097          	auipc	ra,0x4
    80001604:	c2c080e7          	jalr	-980(ra) # 8000522c <_Z11printStringPKc>
        printInt(i);
    80001608:	00000613          	li	a2,0
    8000160c:	00a00593          	li	a1,10
    80001610:	00048513          	mv	a0,s1
    80001614:	00004097          	auipc	ra,0x4
    80001618:	dc8080e7          	jalr	-568(ra) # 800053dc <_Z8printIntiii>
        printString("\n");
    8000161c:	00008517          	auipc	a0,0x8
    80001620:	eec50513          	addi	a0,a0,-276 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001624:	00004097          	auipc	ra,0x4
    80001628:	c08080e7          	jalr	-1016(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 3; i++)
    8000162c:	0014849b          	addiw	s1,s1,1
    80001630:	0ff4f493          	andi	s1,s1,255
    80001634:	00200793          	li	a5,2
    80001638:	fc97f0e3          	bgeu	a5,s1,800015f8 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    8000163c:	00008517          	auipc	a0,0x8
    80001640:	9ec50513          	addi	a0,a0,-1556 # 80009028 <CONSOLE_STATUS+0x18>
    80001644:	00004097          	auipc	ra,0x4
    80001648:	be8080e7          	jalr	-1048(ra) # 8000522c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000164c:	00700313          	li	t1,7
    thread_dispatch();
    80001650:	00000097          	auipc	ra,0x0
    80001654:	dc4080e7          	jalr	-572(ra) # 80001414 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001658:	00030913          	mv	s2,t1

    printString("A: t1=");
    8000165c:	00008517          	auipc	a0,0x8
    80001660:	9dc50513          	addi	a0,a0,-1572 # 80009038 <CONSOLE_STATUS+0x28>
    80001664:	00004097          	auipc	ra,0x4
    80001668:	bc8080e7          	jalr	-1080(ra) # 8000522c <_Z11printStringPKc>
    printInt(t1);
    8000166c:	00000613          	li	a2,0
    80001670:	00a00593          	li	a1,10
    80001674:	0009051b          	sext.w	a0,s2
    80001678:	00004097          	auipc	ra,0x4
    8000167c:	d64080e7          	jalr	-668(ra) # 800053dc <_Z8printIntiii>
    printString("\n");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	e8850513          	addi	a0,a0,-376 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001688:	00004097          	auipc	ra,0x4
    8000168c:	ba4080e7          	jalr	-1116(ra) # 8000522c <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001690:	01400513          	li	a0,20
    80001694:	00000097          	auipc	ra,0x0
    80001698:	ed4080e7          	jalr	-300(ra) # 80001568 <_ZL9fibonaccim>
    8000169c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800016a0:	00008517          	auipc	a0,0x8
    800016a4:	9a050513          	addi	a0,a0,-1632 # 80009040 <CONSOLE_STATUS+0x30>
    800016a8:	00004097          	auipc	ra,0x4
    800016ac:	b84080e7          	jalr	-1148(ra) # 8000522c <_Z11printStringPKc>
    printInt(result);
    800016b0:	00000613          	li	a2,0
    800016b4:	00a00593          	li	a1,10
    800016b8:	0009051b          	sext.w	a0,s2
    800016bc:	00004097          	auipc	ra,0x4
    800016c0:	d20080e7          	jalr	-736(ra) # 800053dc <_Z8printIntiii>
    printString("\n");
    800016c4:	00008517          	auipc	a0,0x8
    800016c8:	e4450513          	addi	a0,a0,-444 # 80009508 <CONSOLE_STATUS+0x4f8>
    800016cc:	00004097          	auipc	ra,0x4
    800016d0:	b60080e7          	jalr	-1184(ra) # 8000522c <_Z11printStringPKc>
    800016d4:	0400006f          	j	80001714 <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800016d8:	00008517          	auipc	a0,0x8
    800016dc:	94850513          	addi	a0,a0,-1720 # 80009020 <CONSOLE_STATUS+0x10>
    800016e0:	00004097          	auipc	ra,0x4
    800016e4:	b4c080e7          	jalr	-1204(ra) # 8000522c <_Z11printStringPKc>
        printInt(i);
    800016e8:	00000613          	li	a2,0
    800016ec:	00a00593          	li	a1,10
    800016f0:	00048513          	mv	a0,s1
    800016f4:	00004097          	auipc	ra,0x4
    800016f8:	ce8080e7          	jalr	-792(ra) # 800053dc <_Z8printIntiii>
        printString("\n");
    800016fc:	00008517          	auipc	a0,0x8
    80001700:	e0c50513          	addi	a0,a0,-500 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001704:	00004097          	auipc	ra,0x4
    80001708:	b28080e7          	jalr	-1240(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 6; i++)
    8000170c:	0014849b          	addiw	s1,s1,1
    80001710:	0ff4f493          	andi	s1,s1,255
    80001714:	00500793          	li	a5,5
    80001718:	fc97f0e3          	bgeu	a5,s1,800016d8 <_Z11workerBodyAPv+0x100>
    }

    CCB::running->setFinished(true);
    8000171c:	0000a797          	auipc	a5,0xa
    80001720:	e3c7b783          	ld	a5,-452(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001724:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001728:	00100713          	li	a4,1
    8000172c:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001730:	00000097          	auipc	ra,0x0
    80001734:	ce4080e7          	jalr	-796(ra) # 80001414 <_Z15thread_dispatchv>
}
    80001738:	01813083          	ld	ra,24(sp)
    8000173c:	01013403          	ld	s0,16(sp)
    80001740:	00813483          	ld	s1,8(sp)
    80001744:	00013903          	ld	s2,0(sp)
    80001748:	02010113          	addi	sp,sp,32
    8000174c:	00008067          	ret

0000000080001750 <_Z11workerBodyBPv>:

void workerBodyB(void*)
{
    80001750:	fe010113          	addi	sp,sp,-32
    80001754:	00113c23          	sd	ra,24(sp)
    80001758:	00813823          	sd	s0,16(sp)
    8000175c:	00913423          	sd	s1,8(sp)
    80001760:	01213023          	sd	s2,0(sp)
    80001764:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001768:	00a00493          	li	s1,10
    8000176c:	0400006f          	j	800017ac <_Z11workerBodyBPv+0x5c>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001770:	00008517          	auipc	a0,0x8
    80001774:	8e050513          	addi	a0,a0,-1824 # 80009050 <CONSOLE_STATUS+0x40>
    80001778:	00004097          	auipc	ra,0x4
    8000177c:	ab4080e7          	jalr	-1356(ra) # 8000522c <_Z11printStringPKc>
        printInt(i);
    80001780:	00000613          	li	a2,0
    80001784:	00a00593          	li	a1,10
    80001788:	00048513          	mv	a0,s1
    8000178c:	00004097          	auipc	ra,0x4
    80001790:	c50080e7          	jalr	-944(ra) # 800053dc <_Z8printIntiii>
        printString("\n");
    80001794:	00008517          	auipc	a0,0x8
    80001798:	d7450513          	addi	a0,a0,-652 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000179c:	00004097          	auipc	ra,0x4
    800017a0:	a90080e7          	jalr	-1392(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 13; i++)
    800017a4:	0014849b          	addiw	s1,s1,1
    800017a8:	0ff4f493          	andi	s1,s1,255
    800017ac:	00c00793          	li	a5,12
    800017b0:	fc97f0e3          	bgeu	a5,s1,80001770 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    800017b4:	00008517          	auipc	a0,0x8
    800017b8:	8a450513          	addi	a0,a0,-1884 # 80009058 <CONSOLE_STATUS+0x48>
    800017bc:	00004097          	auipc	ra,0x4
    800017c0:	a70080e7          	jalr	-1424(ra) # 8000522c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800017c4:	00500313          	li	t1,5
    thread_dispatch();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	c4c080e7          	jalr	-948(ra) # 80001414 <_Z15thread_dispatchv>

    uint64 result = fibonacci(23);
    800017d0:	01700513          	li	a0,23
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	d94080e7          	jalr	-620(ra) # 80001568 <_ZL9fibonaccim>
    800017dc:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800017e0:	00008517          	auipc	a0,0x8
    800017e4:	86050513          	addi	a0,a0,-1952 # 80009040 <CONSOLE_STATUS+0x30>
    800017e8:	00004097          	auipc	ra,0x4
    800017ec:	a44080e7          	jalr	-1468(ra) # 8000522c <_Z11printStringPKc>
    printInt(result);
    800017f0:	00000613          	li	a2,0
    800017f4:	00a00593          	li	a1,10
    800017f8:	0009051b          	sext.w	a0,s2
    800017fc:	00004097          	auipc	ra,0x4
    80001800:	be0080e7          	jalr	-1056(ra) # 800053dc <_Z8printIntiii>
    printString("\n");
    80001804:	00008517          	auipc	a0,0x8
    80001808:	d0450513          	addi	a0,a0,-764 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000180c:	00004097          	auipc	ra,0x4
    80001810:	a20080e7          	jalr	-1504(ra) # 8000522c <_Z11printStringPKc>
    80001814:	0400006f          	j	80001854 <_Z11workerBodyBPv+0x104>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001818:	00008517          	auipc	a0,0x8
    8000181c:	83850513          	addi	a0,a0,-1992 # 80009050 <CONSOLE_STATUS+0x40>
    80001820:	00004097          	auipc	ra,0x4
    80001824:	a0c080e7          	jalr	-1524(ra) # 8000522c <_Z11printStringPKc>
        printInt(i);
    80001828:	00000613          	li	a2,0
    8000182c:	00a00593          	li	a1,10
    80001830:	00048513          	mv	a0,s1
    80001834:	00004097          	auipc	ra,0x4
    80001838:	ba8080e7          	jalr	-1112(ra) # 800053dc <_Z8printIntiii>
        printString("\n");
    8000183c:	00008517          	auipc	a0,0x8
    80001840:	ccc50513          	addi	a0,a0,-820 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001844:	00004097          	auipc	ra,0x4
    80001848:	9e8080e7          	jalr	-1560(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 16; i++)
    8000184c:	0014849b          	addiw	s1,s1,1
    80001850:	0ff4f493          	andi	s1,s1,255
    80001854:	00f00793          	li	a5,15
    80001858:	fc97f0e3          	bgeu	a5,s1,80001818 <_Z11workerBodyBPv+0xc8>
    }

    CCB::running->setFinished(true);
    8000185c:	0000a797          	auipc	a5,0xa
    80001860:	cfc7b783          	ld	a5,-772(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001864:	0007b783          	ld	a5,0(a5)
    80001868:	00100713          	li	a4,1
    8000186c:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001870:	00000097          	auipc	ra,0x0
    80001874:	ba4080e7          	jalr	-1116(ra) # 80001414 <_Z15thread_dispatchv>
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	00013903          	ld	s2,0(sp)
    80001888:	02010113          	addi	sp,sp,32
    8000188c:	00008067          	ret

0000000080001890 <_Z11workerBodyCPv>:

static int a = 0;

void workerBodyC(void*) {
    80001890:	fe010113          	addi	sp,sp,-32
    80001894:	00113c23          	sd	ra,24(sp)
    80001898:	00813823          	sd	s0,16(sp)
    8000189c:	00913423          	sd	s1,8(sp)
    800018a0:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    800018a4:	00000493          	li	s1,0
    800018a8:	00900793          	li	a5,9
    800018ac:	0497c663          	blt	a5,s1,800018f8 <_Z11workerBodyCPv+0x68>
        a += 1000;
    800018b0:	0000a797          	auipc	a5,0xa
    800018b4:	d2878793          	addi	a5,a5,-728 # 8000b5d8 <_ZL1a>
    800018b8:	0007a503          	lw	a0,0(a5)
    800018bc:	3e85051b          	addiw	a0,a0,1000
    800018c0:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    800018c4:	00000613          	li	a2,0
    800018c8:	00a00593          	li	a1,10
    800018cc:	0005051b          	sext.w	a0,a0
    800018d0:	00004097          	auipc	ra,0x4
    800018d4:	b0c080e7          	jalr	-1268(ra) # 800053dc <_Z8printIntiii>
        printString("\n");
    800018d8:	00008517          	auipc	a0,0x8
    800018dc:	c3050513          	addi	a0,a0,-976 # 80009508 <CONSOLE_STATUS+0x4f8>
    800018e0:	00004097          	auipc	ra,0x4
    800018e4:	94c080e7          	jalr	-1716(ra) # 8000522c <_Z11printStringPKc>
        thread_dispatch();
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	b2c080e7          	jalr	-1236(ra) # 80001414 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    800018f0:	0014849b          	addiw	s1,s1,1
    800018f4:	fb5ff06f          	j	800018a8 <_Z11workerBodyCPv+0x18>
    }
    CCB::running->setFinished(true);
    800018f8:	0000a797          	auipc	a5,0xa
    800018fc:	c607b783          	ld	a5,-928(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001900:	0007b783          	ld	a5,0(a5)
    80001904:	00100713          	li	a4,1
    80001908:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	b08080e7          	jalr	-1272(ra) # 80001414 <_Z15thread_dispatchv>
}
    80001914:	01813083          	ld	ra,24(sp)
    80001918:	01013403          	ld	s0,16(sp)
    8000191c:	00813483          	ld	s1,8(sp)
    80001920:	02010113          	addi	sp,sp,32
    80001924:	00008067          	ret

0000000080001928 <_Z11workerBodyDPv>:

void workerBodyD(void*) {
    80001928:	fe010113          	addi	sp,sp,-32
    8000192c:	00113c23          	sd	ra,24(sp)
    80001930:	00813823          	sd	s0,16(sp)
    80001934:	00913423          	sd	s1,8(sp)
    80001938:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    8000193c:	00000493          	li	s1,0
    80001940:	00900793          	li	a5,9
    80001944:	0497c663          	blt	a5,s1,80001990 <_Z11workerBodyDPv+0x68>
        a -= 1000;
    80001948:	0000a797          	auipc	a5,0xa
    8000194c:	c9078793          	addi	a5,a5,-880 # 8000b5d8 <_ZL1a>
    80001950:	0007a503          	lw	a0,0(a5)
    80001954:	c185051b          	addiw	a0,a0,-1000
    80001958:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    8000195c:	00000613          	li	a2,0
    80001960:	00a00593          	li	a1,10
    80001964:	0005051b          	sext.w	a0,a0
    80001968:	00004097          	auipc	ra,0x4
    8000196c:	a74080e7          	jalr	-1420(ra) # 800053dc <_Z8printIntiii>
        printString("\n");
    80001970:	00008517          	auipc	a0,0x8
    80001974:	b9850513          	addi	a0,a0,-1128 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001978:	00004097          	auipc	ra,0x4
    8000197c:	8b4080e7          	jalr	-1868(ra) # 8000522c <_Z11printStringPKc>
        thread_dispatch();
    80001980:	00000097          	auipc	ra,0x0
    80001984:	a94080e7          	jalr	-1388(ra) # 80001414 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    80001988:	0014849b          	addiw	s1,s1,1
    8000198c:	fb5ff06f          	j	80001940 <_Z11workerBodyDPv+0x18>
    }
    CCB::running->setFinished(true);
    80001990:	0000a797          	auipc	a5,0xa
    80001994:	bc87b783          	ld	a5,-1080(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001998:	0007b783          	ld	a5,0(a5)
    8000199c:	00100713          	li	a4,1
    800019a0:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	a70080e7          	jalr	-1424(ra) # 80001414 <_Z15thread_dispatchv>
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	00813483          	ld	s1,8(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret

00000000800019c0 <_ZN3ABI9Semaphore15createSemaphoreEj>:
#include "../h/Semaphore.hpp"
#include "../h/ccb.hpp"
#include "../h/syscall_c.hpp"

namespace ABI {
    Semaphore *Semaphore::createSemaphore(unsigned int init) {
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	02010413          	addi	s0,sp,32
    800019d4:	00050493          	mv	s1,a0
    800019d8:	0000a797          	auipc	a5,0xa
    800019dc:	be87c783          	lbu	a5,-1048(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019e0:	04079263          	bnez	a5,80001a24 <_ZN3ABI9Semaphore15createSemaphoreEj+0x64>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800019e4:	0000a797          	auipc	a5,0xa
    800019e8:	b647b783          	ld	a5,-1180(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019ec:	0007b783          	ld	a5,0(a5)
    800019f0:	0000a717          	auipc	a4,0xa
    800019f4:	bd870713          	addi	a4,a4,-1064 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019f8:	00f73023          	sd	a5,0(a4)
    800019fc:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001a00:	0000a717          	auipc	a4,0xa
    80001a04:	b6073703          	ld	a4,-1184(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a08:	00073703          	ld	a4,0(a4)
    80001a0c:	40f70733          	sub	a4,a4,a5
    80001a10:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001a14:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001a18:	00100793          	li	a5,1
    80001a1c:	0000a717          	auipc	a4,0xa
    80001a20:	baf70223          	sb	a5,-1116(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        int close();

        unsigned int getValue() const { return val; }

        void *operator new(size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
    80001a24:	02800593          	li	a1,40
    80001a28:	0000a517          	auipc	a0,0xa
    80001a2c:	ba050513          	addi	a0,a0,-1120 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	0d8080e7          	jalr	216(ra) # 80002b08 <_ZN15MemoryAllocator9mem_allocEm>
        void operator delete[](void *ptr) {
            MemoryAllocator::Instance()->mem_free(ptr);
        }

    protected:
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    80001a38:	0000a717          	auipc	a4,0xa
    80001a3c:	8f870713          	addi	a4,a4,-1800 # 8000b330 <_ZTVN3ABI9SemaphoreE+0x10>
    80001a40:	00e53023          	sd	a4,0(a0)
    80001a44:	02049493          	slli	s1,s1,0x20
    80001a48:	0204d493          	srli	s1,s1,0x20
    80001a4c:	00953423          	sd	s1,8(a0)
    80001a50:	00050823          	sb	zero,16(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001a54:	00053c23          	sd	zero,24(a0)
    80001a58:	02053023          	sd	zero,32(a0)
        return new Semaphore(init);
    }
    80001a5c:	01813083          	ld	ra,24(sp)
    80001a60:	01013403          	ld	s0,16(sp)
    80001a64:	00813483          	ld	s1,8(sp)
    80001a68:	02010113          	addi	sp,sp,32
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN3ABI9Semaphore5blockEv>:
        while (!blocked.empty()) unblock();

        return 0;
    }

    void Semaphore::block() {
    80001a70:	fe010113          	addi	sp,sp,-32
    80001a74:	00113c23          	sd	ra,24(sp)
    80001a78:	00813823          	sd	s0,16(sp)
    80001a7c:	00913423          	sd	s1,8(sp)
    80001a80:	01213023          	sd	s2,0(sp)
    80001a84:	02010413          	addi	s0,sp,32
    80001a88:	00050493          	mv	s1,a0
        blocked.addLast(CCB::running);
    80001a8c:	0000a797          	auipc	a5,0xa
    80001a90:	acc7b783          	ld	a5,-1332(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a94:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001a98:	01000513          	li	a0,16
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	26c080e7          	jalr	620(ra) # 80001d08 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001aa4:	01253023          	sd	s2,0(a0)
    80001aa8:	00053423          	sd	zero,8(a0)
        if (tail)
    80001aac:	0204b783          	ld	a5,32(s1)
    80001ab0:	04078063          	beqz	a5,80001af0 <_ZN3ABI9Semaphore5blockEv+0x80>
        {
            tail->next = elem;
    80001ab4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001ab8:	02a4b023          	sd	a0,32(s1)
        CCB::running->setBlocked(true);
    80001abc:	0000a797          	auipc	a5,0xa
    80001ac0:	a9c7b783          	ld	a5,-1380(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ac4:	0007b783          	ld	a5,0(a5)
    void setBlocked(bool value) { blocked = value; }
    80001ac8:	00100713          	li	a4,1
    80001acc:	02e780a3          	sb	a4,33(a5)
        CCB::yield();
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	5c4080e7          	jalr	1476(ra) # 80002094 <_ZN3CCB5yieldEv>
    }
    80001ad8:	01813083          	ld	ra,24(sp)
    80001adc:	01013403          	ld	s0,16(sp)
    80001ae0:	00813483          	ld	s1,8(sp)
    80001ae4:	00013903          	ld	s2,0(sp)
    80001ae8:	02010113          	addi	sp,sp,32
    80001aec:	00008067          	ret
        } else
        {
            head = tail = elem;
    80001af0:	02a4b023          	sd	a0,32(s1)
    80001af4:	00a4bc23          	sd	a0,24(s1)
    80001af8:	fc5ff06f          	j	80001abc <_ZN3ABI9Semaphore5blockEv+0x4c>

0000000080001afc <_ZN3ABI9Semaphore4waitEv>:
        if (closed) return -1;
    80001afc:	01054783          	lbu	a5,16(a0)
    80001b00:	04079463          	bnez	a5,80001b48 <_ZN3ABI9Semaphore4waitEv+0x4c>
        if (--val < 0) block();
    80001b04:	00853783          	ld	a5,8(a0)
    80001b08:	fff78793          	addi	a5,a5,-1
    80001b0c:	00f53423          	sd	a5,8(a0)
    80001b10:	0007c663          	bltz	a5,80001b1c <_ZN3ABI9Semaphore4waitEv+0x20>
        return 0;
    80001b14:	00000513          	li	a0,0
    }
    80001b18:	00008067          	ret
    int Semaphore::wait() {
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00113423          	sd	ra,8(sp)
    80001b24:	00813023          	sd	s0,0(sp)
    80001b28:	01010413          	addi	s0,sp,16
        if (--val < 0) block();
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	f44080e7          	jalr	-188(ra) # 80001a70 <_ZN3ABI9Semaphore5blockEv>
        return 0;
    80001b34:	00000513          	li	a0,0
    }
    80001b38:	00813083          	ld	ra,8(sp)
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	01010113          	addi	sp,sp,16
    80001b44:	00008067          	ret
        if (closed) return -1;
    80001b48:	fff00513          	li	a0,-1
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN3ABI9Semaphore7unblockEv>:

    void Semaphore::unblock() {
    80001b50:	fe010113          	addi	sp,sp,-32
    80001b54:	00113c23          	sd	ra,24(sp)
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00913423          	sd	s1,8(sp)
    80001b60:	02010413          	addi	s0,sp,32
    80001b64:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001b68:	01853503          	ld	a0,24(a0)
    80001b6c:	04050463          	beqz	a0,80001bb4 <_ZN3ABI9Semaphore7unblockEv+0x64>

        Elem *elem = head;
        head = head->next;
    80001b70:	00853703          	ld	a4,8(a0)
    80001b74:	00e7bc23          	sd	a4,24(a5)
        if (!head) { tail = 0; }
    80001b78:	02070a63          	beqz	a4,80001bac <_ZN3ABI9Semaphore7unblockEv+0x5c>

        T *ret = elem->data;
    80001b7c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	288080e7          	jalr	648(ra) # 80001e08 <_ZdlPv>
    80001b88:	020480a3          	sb	zero,33(s1)
        CCB *thread = blocked.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	e34080e7          	jalr	-460(ra) # 800029c4 <_ZN9Scheduler3putEP3CCB>
    }
    80001b98:	01813083          	ld	ra,24(sp)
    80001b9c:	01013403          	ld	s0,16(sp)
    80001ba0:	00813483          	ld	s1,8(sp)
    80001ba4:	02010113          	addi	sp,sp,32
    80001ba8:	00008067          	ret
        if (!head) { tail = 0; }
    80001bac:	0207b023          	sd	zero,32(a5)
    80001bb0:	fcdff06f          	j	80001b7c <_ZN3ABI9Semaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001bb4:	00050493          	mv	s1,a0
    80001bb8:	fd1ff06f          	j	80001b88 <_ZN3ABI9Semaphore7unblockEv+0x38>

0000000080001bbc <_ZN3ABI9Semaphore6signalEv>:
        if (closed) return -1;
    80001bbc:	01054783          	lbu	a5,16(a0)
    80001bc0:	04079463          	bnez	a5,80001c08 <_ZN3ABI9Semaphore6signalEv+0x4c>
        if (++val <= 0) unblock();
    80001bc4:	00853783          	ld	a5,8(a0)
    80001bc8:	00178793          	addi	a5,a5,1
    80001bcc:	00f53423          	sd	a5,8(a0)
    80001bd0:	00f05663          	blez	a5,80001bdc <_ZN3ABI9Semaphore6signalEv+0x20>
        return 0;
    80001bd4:	00000513          	li	a0,0
    }
    80001bd8:	00008067          	ret
    int Semaphore::signal() {
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00113423          	sd	ra,8(sp)
    80001be4:	00813023          	sd	s0,0(sp)
    80001be8:	01010413          	addi	s0,sp,16
        if (++val <= 0) unblock();
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	f64080e7          	jalr	-156(ra) # 80001b50 <_ZN3ABI9Semaphore7unblockEv>
        return 0;
    80001bf4:	00000513          	li	a0,0
    }
    80001bf8:	00813083          	ld	ra,8(sp)
    80001bfc:	00013403          	ld	s0,0(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret
        if (closed) return -1;
    80001c08:	fff00513          	li	a0,-1
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN3ABI9Semaphore5closeEv>:
        if (closed) return -1;
    80001c10:	01054783          	lbu	a5,16(a0)
    80001c14:	04079a63          	bnez	a5,80001c68 <_ZN3ABI9Semaphore5closeEv+0x58>
    int Semaphore::close() {
    80001c18:	fe010113          	addi	sp,sp,-32
    80001c1c:	00113c23          	sd	ra,24(sp)
    80001c20:	00813823          	sd	s0,16(sp)
    80001c24:	00913423          	sd	s1,8(sp)
    80001c28:	02010413          	addi	s0,sp,32
    80001c2c:	00050493          	mv	s1,a0
        closed = true;
    80001c30:	00100793          	li	a5,1
    80001c34:	00f50823          	sb	a5,16(a0)
    80001c38:	0100006f          	j	80001c48 <_ZN3ABI9Semaphore5closeEv+0x38>
        while (!blocked.empty()) unblock();
    80001c3c:	00048513          	mv	a0,s1
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	f10080e7          	jalr	-240(ra) # 80001b50 <_ZN3ABI9Semaphore7unblockEv>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    bool empty() { return head == nullptr; }
    80001c48:	0184b783          	ld	a5,24(s1)
    80001c4c:	fe0798e3          	bnez	a5,80001c3c <_ZN3ABI9Semaphore5closeEv+0x2c>
        return 0;
    80001c50:	00000513          	li	a0,0
    }
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	02010113          	addi	sp,sp,32
    80001c64:	00008067          	ret
        if (closed) return -1;
    80001c68:	fff00513          	li	a0,-1
    }
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN3ABI9SemaphoreD1Ev>:
        virtual ~Semaphore() = default;
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00813423          	sd	s0,8(sp)
    80001c78:	01010413          	addi	s0,sp,16
    80001c7c:	00813403          	ld	s0,8(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <_ZN3ABI9SemaphoreD0Ev>:
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00113423          	sd	ra,8(sp)
    80001c90:	00813023          	sd	s0,0(sp)
    80001c94:	01010413          	addi	s0,sp,16
    80001c98:	00050593          	mv	a1,a0
    80001c9c:	0000a797          	auipc	a5,0xa
    80001ca0:	9247c783          	lbu	a5,-1756(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ca4:	04079263          	bnez	a5,80001ce8 <_ZN3ABI9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001ca8:	0000a797          	auipc	a5,0xa
    80001cac:	8a07b783          	ld	a5,-1888(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001cb0:	0007b783          	ld	a5,0(a5)
    80001cb4:	0000a717          	auipc	a4,0xa
    80001cb8:	91470713          	addi	a4,a4,-1772 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cbc:	00f73023          	sd	a5,0(a4)
    80001cc0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001cc4:	0000a717          	auipc	a4,0xa
    80001cc8:	89c73703          	ld	a4,-1892(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ccc:	00073703          	ld	a4,0(a4)
    80001cd0:	40f70733          	sub	a4,a4,a5
    80001cd4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001cd8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001cdc:	00100793          	li	a5,1
    80001ce0:	0000a717          	auipc	a4,0xa
    80001ce4:	8ef70023          	sb	a5,-1824(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            MemoryAllocator::Instance()->mem_free(ptr);
    80001ce8:	0000a517          	auipc	a0,0xa
    80001cec:	8e050513          	addi	a0,a0,-1824 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	f68080e7          	jalr	-152(ra) # 80002c58 <_ZN15MemoryAllocator8mem_freeEPv>
        virtual ~Semaphore() = default;
    80001cf8:	00813083          	ld	ra,8(sp)
    80001cfc:	00013403          	ld	s0,0(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret

0000000080001d08 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    80001d18:	00050593          	mv	a1,a0
    80001d1c:	0000a797          	auipc	a5,0xa
    80001d20:	8a47c783          	lbu	a5,-1884(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d24:	04079263          	bnez	a5,80001d68 <_Znwm+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001d28:	0000a797          	auipc	a5,0xa
    80001d2c:	8207b783          	ld	a5,-2016(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d30:	0007b783          	ld	a5,0(a5)
    80001d34:	0000a717          	auipc	a4,0xa
    80001d38:	89470713          	addi	a4,a4,-1900 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d3c:	00f73023          	sd	a5,0(a4)
    80001d40:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001d44:	0000a717          	auipc	a4,0xa
    80001d48:	81c73703          	ld	a4,-2020(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d4c:	00073703          	ld	a4,0(a4)
    80001d50:	40f70733          	sub	a4,a4,a5
    80001d54:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001d58:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001d5c:	00100793          	li	a5,1
    80001d60:	0000a717          	auipc	a4,0xa
    80001d64:	86f70023          	sb	a5,-1952(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001d68:	0000a517          	auipc	a0,0xa
    80001d6c:	86050513          	addi	a0,a0,-1952 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	d98080e7          	jalr	-616(ra) # 80002b08 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d78:	00813083          	ld	ra,8(sp)
    80001d7c:	00013403          	ld	s0,0(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_Znam>:

void *operator new[](size_t n)
{
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    80001d98:	00050593          	mv	a1,a0
    80001d9c:	0000a797          	auipc	a5,0xa
    80001da0:	8247c783          	lbu	a5,-2012(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001da4:	04079263          	bnez	a5,80001de8 <_Znam+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001da8:	00009797          	auipc	a5,0x9
    80001dac:	7a07b783          	ld	a5,1952(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001db0:	0007b783          	ld	a5,0(a5)
    80001db4:	0000a717          	auipc	a4,0xa
    80001db8:	81470713          	addi	a4,a4,-2028 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001dbc:	00f73023          	sd	a5,0(a4)
    80001dc0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001dc4:	00009717          	auipc	a4,0x9
    80001dc8:	79c73703          	ld	a4,1948(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001dcc:	00073703          	ld	a4,0(a4)
    80001dd0:	40f70733          	sub	a4,a4,a5
    80001dd4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001dd8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ddc:	00100793          	li	a5,1
    80001de0:	00009717          	auipc	a4,0x9
    80001de4:	7ef70023          	sb	a5,2016(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001de8:	00009517          	auipc	a0,0x9
    80001dec:	7e050513          	addi	a0,a0,2016 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	d18080e7          	jalr	-744(ra) # 80002b08 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
    80001e18:	00050593          	mv	a1,a0
    80001e1c:	00009797          	auipc	a5,0x9
    80001e20:	7a47c783          	lbu	a5,1956(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e24:	04079263          	bnez	a5,80001e68 <_ZdlPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001e28:	00009797          	auipc	a5,0x9
    80001e2c:	7207b783          	ld	a5,1824(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e30:	0007b783          	ld	a5,0(a5)
    80001e34:	00009717          	auipc	a4,0x9
    80001e38:	79470713          	addi	a4,a4,1940 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e3c:	00f73023          	sd	a5,0(a4)
    80001e40:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001e44:	00009717          	auipc	a4,0x9
    80001e48:	71c73703          	ld	a4,1820(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e4c:	00073703          	ld	a4,0(a4)
    80001e50:	40f70733          	sub	a4,a4,a5
    80001e54:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001e58:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001e5c:	00100793          	li	a5,1
    80001e60:	00009717          	auipc	a4,0x9
    80001e64:	76f70023          	sb	a5,1888(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80001e68:	00009517          	auipc	a0,0x9
    80001e6c:	76050513          	addi	a0,a0,1888 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	de8080e7          	jalr	-536(ra) # 80002c58 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e78:	00813083          	ld	ra,8(sp)
    80001e7c:	00013403          	ld	s0,0(sp)
    80001e80:	01010113          	addi	sp,sp,16
    80001e84:	00008067          	ret

0000000080001e88 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00113423          	sd	ra,8(sp)
    80001e90:	00813023          	sd	s0,0(sp)
    80001e94:	01010413          	addi	s0,sp,16
    80001e98:	00050593          	mv	a1,a0
    80001e9c:	00009797          	auipc	a5,0x9
    80001ea0:	7247c783          	lbu	a5,1828(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ea4:	04079263          	bnez	a5,80001ee8 <_ZdaPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001ea8:	00009797          	auipc	a5,0x9
    80001eac:	6a07b783          	ld	a5,1696(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001eb0:	0007b783          	ld	a5,0(a5)
    80001eb4:	00009717          	auipc	a4,0x9
    80001eb8:	71470713          	addi	a4,a4,1812 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ebc:	00f73023          	sd	a5,0(a4)
    80001ec0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001ec4:	00009717          	auipc	a4,0x9
    80001ec8:	69c73703          	ld	a4,1692(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ecc:	00073703          	ld	a4,0(a4)
    80001ed0:	40f70733          	sub	a4,a4,a5
    80001ed4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ed8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001edc:	00100793          	li	a5,1
    80001ee0:	00009717          	auipc	a4,0x9
    80001ee4:	6ef70023          	sb	a5,1760(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80001ee8:	00009517          	auipc	a0,0x9
    80001eec:	6e050513          	addi	a0,a0,1760 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	d68080e7          	jalr	-664(ra) # 80002c58 <_ZN15MemoryAllocator8mem_freeEPv>
    80001ef8:	00813083          	ld	ra,8(sp)
    80001efc:	00013403          	ld	s0,0(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	00008067          	ret

0000000080001f08 <_ZN3CCB15createCoroutineEPFvPvES0_Pm>:
#include "../h/syscall_c.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body, void* arg, uint64* stack)
{
    80001f08:	fd010113          	addi	sp,sp,-48
    80001f0c:	02113423          	sd	ra,40(sp)
    80001f10:	02813023          	sd	s0,32(sp)
    80001f14:	00913c23          	sd	s1,24(sp)
    80001f18:	01213823          	sd	s2,16(sp)
    80001f1c:	01313423          	sd	s3,8(sp)
    80001f20:	01413023          	sd	s4,0(sp)
    80001f24:	03010413          	addi	s0,sp,48
    80001f28:	00050993          	mv	s3,a0
    80001f2c:	00058a13          	mv	s4,a1
    80001f30:	00060913          	mv	s2,a2
    80001f34:	00009797          	auipc	a5,0x9
    80001f38:	68c7c783          	lbu	a5,1676(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f3c:	04079263          	bnez	a5,80001f80 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x78>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001f40:	00009797          	auipc	a5,0x9
    80001f44:	6087b783          	ld	a5,1544(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001f48:	0007b783          	ld	a5,0(a5)
    80001f4c:	00009717          	auipc	a4,0x9
    80001f50:	67c70713          	addi	a4,a4,1660 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f54:	00f73023          	sd	a5,0(a4)
    80001f58:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001f5c:	00009717          	auipc	a4,0x9
    80001f60:	60473703          	ld	a4,1540(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f64:	00073703          	ld	a4,0(a4)
    80001f68:	40f70733          	sub	a4,a4,a5
    80001f6c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001f70:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001f74:	00100793          	li	a5,1
    80001f78:	00009717          	auipc	a4,0x9
    80001f7c:	64f70423          	sb	a5,1608(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    static void startThread(CCB* tcbToStart) {
        Scheduler::put(tcbToStart);
    }

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001f80:	03000593          	li	a1,48
    80001f84:	00009517          	auipc	a0,0x9
    80001f88:	64450513          	addi	a0,a0,1604 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	b7c080e7          	jalr	-1156(ra) # 80002b08 <_ZN15MemoryAllocator9mem_allocEm>
    80001f94:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            arg(arg)
    80001f98:	01353023          	sd	s3,0(a0)
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
    80001f9c:	04090463          	beqz	s2,80001fe4 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xdc>
    80001fa0:	00090793          	mv	a5,s2
            arg(arg)
    80001fa4:	00f4b423          	sd	a5,8(s1)
    80001fa8:	00000797          	auipc	a5,0x0
    80001fac:	11478793          	addi	a5,a5,276 # 800020bc <_ZN3CCB13threadWrapperEv>
    80001fb0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001fb4:	04090263          	beqz	s2,80001ff8 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xf0>
    80001fb8:	00002637          	lui	a2,0x2
    80001fbc:	00c90633          	add	a2,s2,a2
            arg(arg)
    80001fc0:	00c4bc23          	sd	a2,24(s1)
    80001fc4:	02048023          	sb	zero,32(s1)
    80001fc8:	020480a3          	sb	zero,33(s1)
    80001fcc:	0344b423          	sd	s4,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001fd0:	0a098063          	beqz	s3,80002070 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x168>
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	9ec080e7          	jalr	-1556(ra) # 800029c4 <_ZN9Scheduler3putEP3CCB>
    80001fe0:	0900006f          	j	80002070 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x168>
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
    80001fe4:	00002537          	lui	a0,0x2
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	da0080e7          	jalr	-608(ra) # 80001d88 <_Znam>
    80001ff0:	00050793          	mv	a5,a0
    80001ff4:	fb1ff06f          	j	80001fa4 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x9c>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ff8:	00000613          	li	a2,0
    80001ffc:	fc5ff06f          	j	80001fc0 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xb8>
    80002000:	00050913          	mv	s2,a0
    80002004:	00009797          	auipc	a5,0x9
    80002008:	5bc7c783          	lbu	a5,1468(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000200c:	04079263          	bnez	a5,80002050 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x148>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002010:	00009797          	auipc	a5,0x9
    80002014:	5387b783          	ld	a5,1336(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002018:	0007b783          	ld	a5,0(a5)
    8000201c:	00009717          	auipc	a4,0x9
    80002020:	5ac70713          	addi	a4,a4,1452 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002024:	00f73023          	sd	a5,0(a4)
    80002028:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000202c:	00009717          	auipc	a4,0x9
    80002030:	53473703          	ld	a4,1332(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002034:	00073703          	ld	a4,0(a4)
    80002038:	40f70733          	sub	a4,a4,a5
    8000203c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002040:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002044:	00100793          	li	a5,1
    80002048:	00009717          	auipc	a4,0x9
    8000204c:	56f70c23          	sb	a5,1400(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80002050:	00048593          	mv	a1,s1
    80002054:	00009517          	auipc	a0,0x9
    80002058:	57450513          	addi	a0,a0,1396 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	bfc080e7          	jalr	-1028(ra) # 80002c58 <_ZN15MemoryAllocator8mem_freeEPv>
    80002064:	00090513          	mv	a0,s2
    80002068:	0000a097          	auipc	ra,0xa
    8000206c:	6b0080e7          	jalr	1712(ra) # 8000c718 <_Unwind_Resume>
    return new CCB(body, arg, stack);
}
    80002070:	00048513          	mv	a0,s1
    80002074:	02813083          	ld	ra,40(sp)
    80002078:	02013403          	ld	s0,32(sp)
    8000207c:	01813483          	ld	s1,24(sp)
    80002080:	01013903          	ld	s2,16(sp)
    80002084:	00813983          	ld	s3,8(sp)
    80002088:	00013a03          	ld	s4,0(sp)
    8000208c:	03010113          	addi	sp,sp,48
    80002090:	00008067          	ret

0000000080002094 <_ZN3CCB5yieldEv>:
    running->setFinished(true);
    CCB::yield();
}

void CCB::yield()
{
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00113423          	sd	ra,8(sp)
    8000209c:	00813023          	sd	s0,0(sp)
    800020a0:	01010413          	addi	s0,sp,16

    CCB::dispatch();

    Riscv::popRegisters();
     */
    thread_dispatch();
    800020a4:	fffff097          	auipc	ra,0xfffff
    800020a8:	370080e7          	jalr	880(ra) # 80001414 <_Z15thread_dispatchv>
}
    800020ac:	00813083          	ld	ra,8(sp)
    800020b0:	00013403          	ld	s0,0(sp)
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret

00000000800020bc <_ZN3CCB13threadWrapperEv>:
{
    800020bc:	fe010113          	addi	sp,sp,-32
    800020c0:	00113c23          	sd	ra,24(sp)
    800020c4:	00813823          	sd	s0,16(sp)
    800020c8:	00913423          	sd	s1,8(sp)
    800020cc:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	450080e7          	jalr	1104(ra) # 80002520 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800020d8:	00009497          	auipc	s1,0x9
    800020dc:	50848493          	addi	s1,s1,1288 # 8000b5e0 <_ZN3CCB7runningE>
    800020e0:	0004b783          	ld	a5,0(s1)
    800020e4:	0007b703          	ld	a4,0(a5)
    800020e8:	0287b503          	ld	a0,40(a5)
    800020ec:	000700e7          	jalr	a4
    running->setFinished(true);
    800020f0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800020f4:	00100713          	li	a4,1
    800020f8:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	f98080e7          	jalr	-104(ra) # 80002094 <_ZN3CCB5yieldEv>
}
    80002104:	01813083          	ld	ra,24(sp)
    80002108:	01013403          	ld	s0,16(sp)
    8000210c:	00813483          	ld	s1,8(sp)
    80002110:	02010113          	addi	sp,sp,32
    80002114:	00008067          	ret

0000000080002118 <_ZN3CCB8dispatchEv>:

void CCB::dispatch()
{
    80002118:	fe010113          	addi	sp,sp,-32
    8000211c:	00113c23          	sd	ra,24(sp)
    80002120:	00813823          	sd	s0,16(sp)
    80002124:	00913423          	sd	s1,8(sp)
    80002128:	02010413          	addi	s0,sp,32
    CCB *old = running;
    8000212c:	00009497          	auipc	s1,0x9
    80002130:	4b44b483          	ld	s1,1204(s1) # 8000b5e0 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80002134:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002138:	00079663          	bnez	a5,80002144 <_ZN3CCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    8000213c:	0214c783          	lbu	a5,33(s1)
    80002140:	04078463          	beqz	a5,80002188 <_ZN3CCB8dispatchEv+0x70>
    running = Scheduler::get();
    80002144:	00001097          	auipc	ra,0x1
    80002148:	818080e7          	jalr	-2024(ra) # 8000295c <_ZN9Scheduler3getEv>
    8000214c:	00009797          	auipc	a5,0x9
    80002150:	48a7ba23          	sd	a0,1172(a5) # 8000b5e0 <_ZN3CCB7runningE>

    if(running->body == nullptr) {
    80002154:	00053783          	ld	a5,0(a0)
    80002158:	04078063          	beqz	a5,80002198 <_ZN3CCB8dispatchEv+0x80>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000215c:	10000793          	li	a5,256
    80002160:	1007b073          	csrc	sstatus,a5
    }
    else {
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }

    CCB::contextSwitch(&old->context, &running->context);
    80002164:	01050593          	addi	a1,a0,16
    80002168:	01048513          	addi	a0,s1,16
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	09c080e7          	jalr	156(ra) # 80001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80002174:	01813083          	ld	ra,24(sp)
    80002178:	01013403          	ld	s0,16(sp)
    8000217c:	00813483          	ld	s1,8(sp)
    80002180:	02010113          	addi	sp,sp,32
    80002184:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002188:	00048513          	mv	a0,s1
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	838080e7          	jalr	-1992(ra) # 800029c4 <_ZN9Scheduler3putEP3CCB>
    80002194:	fb1ff06f          	j	80002144 <_ZN3CCB8dispatchEv+0x2c>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002198:	10000793          	li	a5,256
    8000219c:	1007a073          	csrs	sstatus,a5
}
    800021a0:	fc5ff06f          	j	80002164 <_ZN3CCB8dispatchEv+0x4c>

00000000800021a4 <_ZN6ThreadD1Ev>:
}

Thread::Thread(void (*body)(void *), void *arg) :
    myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    800021a4:	fe010113          	addi	sp,sp,-32
    800021a8:	00113c23          	sd	ra,24(sp)
    800021ac:	00813823          	sd	s0,16(sp)
    800021b0:	00913423          	sd	s1,8(sp)
    800021b4:	02010413          	addi	s0,sp,32
    800021b8:	00009797          	auipc	a5,0x9
    800021bc:	1a078793          	addi	a5,a5,416 # 8000b358 <_ZTV6Thread+0x10>
    800021c0:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    800021c4:	00853483          	ld	s1,8(a0)
    800021c8:	06048a63          	beqz	s1,8000223c <_ZN6ThreadD1Ev+0x98>
    ~CCB() { delete[] stack; }
    800021cc:	0084b503          	ld	a0,8(s1)
    800021d0:	00050663          	beqz	a0,800021dc <_ZN6ThreadD1Ev+0x38>
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	cb4080e7          	jalr	-844(ra) # 80001e88 <_ZdaPv>
    800021dc:	00009797          	auipc	a5,0x9
    800021e0:	3e47c783          	lbu	a5,996(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021e4:	04079263          	bnez	a5,80002228 <_ZN6ThreadD1Ev+0x84>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800021e8:	00009797          	auipc	a5,0x9
    800021ec:	3607b783          	ld	a5,864(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    800021f0:	0007b783          	ld	a5,0(a5)
    800021f4:	00009717          	auipc	a4,0x9
    800021f8:	3d470713          	addi	a4,a4,980 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021fc:	00f73023          	sd	a5,0(a4)
    80002200:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002204:	00009717          	auipc	a4,0x9
    80002208:	35c73703          	ld	a4,860(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000220c:	00073703          	ld	a4,0(a4)
    80002210:	40f70733          	sub	a4,a4,a5
    80002214:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002218:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000221c:	00100793          	li	a5,1
    80002220:	00009717          	auipc	a4,0x9
    80002224:	3af70023          	sb	a5,928(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        return MemoryAllocator::Instance()->mem_alloc(size);
    80002228:	00048593          	mv	a1,s1
    8000222c:	00009517          	auipc	a0,0x9
    80002230:	39c50513          	addi	a0,a0,924 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002234:	00001097          	auipc	ra,0x1
    80002238:	a24080e7          	jalr	-1500(ra) # 80002c58 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000223c:	01813083          	ld	ra,24(sp)
    80002240:	01013403          	ld	s0,16(sp)
    80002244:	00813483          	ld	s1,8(sp)
    80002248:	02010113          	addi	sp,sp,32
    8000224c:	00008067          	ret

0000000080002250 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002250:	fe010113          	addi	sp,sp,-32
    80002254:	00113c23          	sd	ra,24(sp)
    80002258:	00813823          	sd	s0,16(sp)
    8000225c:	00913423          	sd	s1,8(sp)
    80002260:	02010413          	addi	s0,sp,32
    80002264:	00050493          	mv	s1,a0
}
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	f3c080e7          	jalr	-196(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80002270:	00048513          	mv	a0,s1
    80002274:	00000097          	auipc	ra,0x0
    80002278:	b94080e7          	jalr	-1132(ra) # 80001e08 <_ZdlPv>
    8000227c:	01813083          	ld	ra,24(sp)
    80002280:	01013403          	ld	s0,16(sp)
    80002284:	00813483          	ld	s1,8(sp)
    80002288:	02010113          	addi	sp,sp,32
    8000228c:	00008067          	ret

0000000080002290 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00113423          	sd	ra,8(sp)
    80002298:	00813023          	sd	s0,0(sp)
    8000229c:	01010413          	addi	s0,sp,16
    800022a0:	00009797          	auipc	a5,0x9
    800022a4:	0e078793          	addi	a5,a5,224 # 8000b380 <_ZTV9Semaphore+0x10>
    800022a8:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800022ac:	00853503          	ld	a0,8(a0)
    800022b0:	fffff097          	auipc	ra,0xfffff
    800022b4:	1bc080e7          	jalr	444(ra) # 8000146c <_Z9sem_closePN3ABI9SemaphoreE>
}
    800022b8:	00813083          	ld	ra,8(sp)
    800022bc:	00013403          	ld	s0,0(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800022c8:	fe010113          	addi	sp,sp,-32
    800022cc:	00113c23          	sd	ra,24(sp)
    800022d0:	00813823          	sd	s0,16(sp)
    800022d4:	00913423          	sd	s1,8(sp)
    800022d8:	02010413          	addi	s0,sp,32
    800022dc:	00050493          	mv	s1,a0
}
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	fb0080e7          	jalr	-80(ra) # 80002290 <_ZN9SemaphoreD1Ev>
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	b1c080e7          	jalr	-1252(ra) # 80001e08 <_ZdlPv>
    800022f4:	01813083          	ld	ra,24(sp)
    800022f8:	01013403          	ld	s0,16(sp)
    800022fc:	00813483          	ld	s1,8(sp)
    80002300:	02010113          	addi	sp,sp,32
    80002304:	00008067          	ret

0000000080002308 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00113423          	sd	ra,8(sp)
    80002310:	00813023          	sd	s0,0(sp)
    80002314:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	0fc080e7          	jalr	252(ra) # 80001414 <_Z15thread_dispatchv>
}
    80002320:	00813083          	ld	ra,8(sp)
    80002324:	00013403          	ld	s0,0(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00813423          	sd	s0,8(sp)
    80002338:	01010413          	addi	s0,sp,16
    myHandle(nullptr), body(body), arg(arg) {}
    8000233c:	00009797          	auipc	a5,0x9
    80002340:	01c78793          	addi	a5,a5,28 # 8000b358 <_ZTV6Thread+0x10>
    80002344:	00f53023          	sd	a5,0(a0)
    80002348:	00053423          	sd	zero,8(a0)
    8000234c:	00b53823          	sd	a1,16(a0)
    80002350:	00c53c23          	sd	a2,24(a0)
    80002354:	00813403          	ld	s0,8(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_ZN6ThreadC1Ev>:
Thread::Thread() :
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00813423          	sd	s0,8(sp)
    80002368:	01010413          	addi	s0,sp,16
        myHandle(nullptr), body(runWrapper), arg(this) {}
    8000236c:	00009797          	auipc	a5,0x9
    80002370:	fec78793          	addi	a5,a5,-20 # 8000b358 <_ZTV6Thread+0x10>
    80002374:	00f53023          	sd	a5,0(a0)
    80002378:	00053423          	sd	zero,8(a0)
    8000237c:	00000797          	auipc	a5,0x0
    80002380:	17078793          	addi	a5,a5,368 # 800024ec <_ZN6Thread10runWrapperEPv>
    80002384:	00f53823          	sd	a5,16(a0)
    80002388:	00a53c23          	sd	a0,24(a0)
    8000238c:	00813403          	ld	s0,8(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN6Thread5startEv>:
int Thread::start() {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    800023a8:	01853603          	ld	a2,24(a0)
    800023ac:	01053583          	ld	a1,16(a0)
    800023b0:	00850513          	addi	a0,a0,8
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	f38080e7          	jalr	-200(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
}
    800023bc:	00813083          	ld	ra,8(sp)
    800023c0:	00013403          	ld	s0,0(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00113423          	sd	ra,8(sp)
    800023d4:	00813023          	sd	s0,0(sp)
    800023d8:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	114080e7          	jalr	276(ra) # 800014f0 <_Z10time_sleepm>
}
    800023e4:	00813083          	ld	ra,8(sp)
    800023e8:	00013403          	ld	s0,0(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    80002404:	00009797          	auipc	a5,0x9
    80002408:	f7c78793          	addi	a5,a5,-132 # 8000b380 <_ZTV9Semaphore+0x10>
    8000240c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002410:	00850513          	addi	a0,a0,8
    80002414:	fffff097          	auipc	ra,0xfffff
    80002418:	020080e7          	jalr	32(ra) # 80001434 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    8000241c:	00813083          	ld	ra,8(sp)
    80002420:	00013403          	ld	s0,0(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret

000000008000242c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00113423          	sd	ra,8(sp)
    80002434:	00813023          	sd	s0,0(sp)
    80002438:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000243c:	00853503          	ld	a0,8(a0)
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	058080e7          	jalr	88(ra) # 80001498 <_Z8sem_waitPN3ABI9SemaphoreE>
}
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00113423          	sd	ra,8(sp)
    80002460:	00813023          	sd	s0,0(sp)
    80002464:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002468:	00853503          	ld	a0,8(a0)
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	058080e7          	jalr	88(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002474:	00813083          	ld	ra,8(sp)
    80002478:	00013403          	ld	s0,0(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret

0000000080002484 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00113423          	sd	ra,8(sp)
    8000248c:	00813023          	sd	s0,0(sp)
    80002490:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	0b0080e7          	jalr	176(ra) # 80001544 <_Z4putcc>
}
    8000249c:	00813083          	ld	ra,8(sp)
    800024a0:	00013403          	ld	s0,0(sp)
    800024a4:	01010113          	addi	sp,sp,16
    800024a8:	00008067          	ret

00000000800024ac <_ZN7Console4getcEv>:

char Console::getc() {
    800024ac:	ff010113          	addi	sp,sp,-16
    800024b0:	00113423          	sd	ra,8(sp)
    800024b4:	00813023          	sd	s0,0(sp)
    800024b8:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	060080e7          	jalr	96(ra) # 8000151c <_Z4getcv>
}
    800024c4:	00813083          	ld	ra,8(sp)
    800024c8:	00013403          	ld	s0,0(sp)
    800024cc:	01010113          	addi	sp,sp,16
    800024d0:	00008067          	ret

00000000800024d4 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {}
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00813423          	sd	s0,8(sp)
    800024dc:	01010413          	addi	s0,sp,16
    800024e0:	00813403          	ld	s0,8(sp)
    800024e4:	01010113          	addi	sp,sp,16
    800024e8:	00008067          	ret

00000000800024ec <_ZN6Thread10runWrapperEPv>:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void runWrapper(void* thread) {
        if (thread) {
    800024ec:	02050863          	beqz	a0,8000251c <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    800024f0:	ff010113          	addi	sp,sp,-16
    800024f4:	00113423          	sd	ra,8(sp)
    800024f8:	00813023          	sd	s0,0(sp)
    800024fc:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    80002500:	00053783          	ld	a5,0(a0)
    80002504:	0107b783          	ld	a5,16(a5)
    80002508:	000780e7          	jalr	a5
        }
    }
    8000250c:	00813083          	ld	ra,8(sp)
    80002510:	00013403          	ld	s0,0(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret
    8000251c:	00008067          	ret

0000000080002520 <_ZN5Riscv10popSppSpieEv>:

#define CONSOLE_INTERRUPT 0x8000000000000009UL
#define SOFTWARE_INTERRUPT 0x8000000000000001UL

void Riscv::popSppSpie()
{
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00813423          	sd	s0,8(sp)
    80002528:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000252c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002530:	10200073          	sret
}
    80002534:	00813403          	ld	s0,8(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret

0000000080002540 <_ZN5Riscv14handleSyscallsEv>:

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    80002540:	fb010113          	addi	sp,sp,-80
    80002544:	04113423          	sd	ra,72(sp)
    80002548:	04813023          	sd	s0,64(sp)
    8000254c:	02913c23          	sd	s1,56(sp)
    80002550:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002554:	142027f3          	csrr	a5,scause
    80002558:	faf43c23          	sd	a5,-72(s0)
    return scause;
    8000255c:	fb843483          	ld	s1,-72(s0)
}

inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002560:	00050793          	mv	a5,a0
    80002564:	faf43823          	sd	a5,-80(s0)
    return a0;
    80002568:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();
    uint64 codeOperation = Riscv::r_a0();

    if (scause == CONSOLE_INTERRUPT) {
    8000256c:	fff00793          	li	a5,-1
    80002570:	03f79793          	slli	a5,a5,0x3f
    80002574:	00978793          	addi	a5,a5,9
    80002578:	06f48463          	beq	s1,a5,800025e0 <_ZN5Riscv14handleSyscallsEv+0xa0>
        console_handler();
        return;
    }

    if (scause == SOFTWARE_INTERRUPT) {
    8000257c:	fff00793          	li	a5,-1
    80002580:	03f79793          	slli	a5,a5,0x3f
    80002584:	00178793          	addi	a5,a5,1
    80002588:	06f48263          	beq	s1,a5,800025ec <_ZN5Riscv14handleSyscallsEv+0xac>
        mc_sip(SIP_SSIE);
        return;
    }

    if (scause != 8 && scause != 9) {
    8000258c:	ff848793          	addi	a5,s1,-8
    80002590:	00100693          	li	a3,1
    80002594:	06f6e263          	bltu	a3,a5,800025f8 <_ZN5Riscv14handleSyscallsEv+0xb8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002598:	141027f3          	csrr	a5,sepc
    8000259c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800025a0:	fc843783          	ld	a5,-56(s0)
        printInt(scause);
        printString("\n");
        return;
    }

    uint64 volatile sepc = r_sepc() + 4;
    800025a4:	00478793          	addi	a5,a5,4
    800025a8:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025ac:	100027f3          	csrr	a5,sstatus
    800025b0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800025b4:	fc043783          	ld	a5,-64(s0)
    uint64 volatile sstatus = r_sstatus();
    800025b8:	fcf43823          	sd	a5,-48(s0)

    int returnValue;
    ABI::Semaphore *semHandlePtr;
    switch (codeOperation) {
    800025bc:	04200793          	li	a5,66
    800025c0:	0ce7ee63          	bltu	a5,a4,8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
    800025c4:	00271713          	slli	a4,a4,0x2
    800025c8:	00007697          	auipc	a3,0x7
    800025cc:	ab068693          	addi	a3,a3,-1360 # 80009078 <CONSOLE_STATUS+0x68>
    800025d0:	00d70733          	add	a4,a4,a3
    800025d4:	00072783          	lw	a5,0(a4)
    800025d8:	00d787b3          	add	a5,a5,a3
    800025dc:	00078067          	jr	a5
        console_handler();
    800025e0:	00006097          	auipc	ra,0x6
    800025e4:	fc0080e7          	jalr	-64(ra) # 800085a0 <console_handler>
        return;
    800025e8:	0c40006f          	j	800026ac <_ZN5Riscv14handleSyscallsEv+0x16c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800025ec:	00200793          	li	a5,2
    800025f0:	1447b073          	csrc	sip,a5
        return;
    800025f4:	0b80006f          	j	800026ac <_ZN5Riscv14handleSyscallsEv+0x16c>
        printString("Error code: ");
    800025f8:	00007517          	auipc	a0,0x7
    800025fc:	a7050513          	addi	a0,a0,-1424 # 80009068 <CONSOLE_STATUS+0x58>
    80002600:	00003097          	auipc	ra,0x3
    80002604:	c2c080e7          	jalr	-980(ra) # 8000522c <_Z11printStringPKc>
        printInt(scause);
    80002608:	00000613          	li	a2,0
    8000260c:	00a00593          	li	a1,10
    80002610:	0004851b          	sext.w	a0,s1
    80002614:	00003097          	auipc	ra,0x3
    80002618:	dc8080e7          	jalr	-568(ra) # 800053dc <_Z8printIntiii>
        printString("\n");
    8000261c:	00007517          	auipc	a0,0x7
    80002620:	eec50513          	addi	a0,a0,-276 # 80009508 <CONSOLE_STATUS+0x4f8>
    80002624:	00003097          	auipc	ra,0x3
    80002628:	c08080e7          	jalr	-1016(ra) # 8000522c <_Z11printStringPKc>
        return;
    8000262c:	0800006f          	j	800026ac <_ZN5Riscv14handleSyscallsEv+0x16c>
        case 0x01:
            // mem_alloc(size)

            size_t size;
            void *ptr;
            __asm__ volatile("mv %0, a1" : "=r" (size));
    80002630:	00058593          	mv	a1,a1
    80002634:	00009797          	auipc	a5,0x9
    80002638:	f8c7c783          	lbu	a5,-116(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000263c:	04079263          	bnez	a5,80002680 <_ZN5Riscv14handleSyscallsEv+0x140>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002640:	00009797          	auipc	a5,0x9
    80002644:	f087b783          	ld	a5,-248(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002648:	0007b783          	ld	a5,0(a5)
    8000264c:	00009717          	auipc	a4,0x9
    80002650:	f7c70713          	addi	a4,a4,-132 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002654:	00f73023          	sd	a5,0(a4)
    80002658:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000265c:	00009717          	auipc	a4,0x9
    80002660:	f0473703          	ld	a4,-252(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002664:	00073703          	ld	a4,0(a4)
    80002668:	40f70733          	sub	a4,a4,a5
    8000266c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002670:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002674:	00100793          	li	a5,1
    80002678:	00009717          	auipc	a4,0x9
    8000267c:	f4f70423          	sb	a5,-184(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            ptr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);
    80002680:	00659593          	slli	a1,a1,0x6
    80002684:	00009517          	auipc	a0,0x9
    80002688:	f4450513          	addi	a0,a0,-188 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	47c080e7          	jalr	1148(ra) # 80002b08 <_ZN15MemoryAllocator9mem_allocEm>

            __asm__ volatile ("mv t0, %0" : : "r"(ptr));
    80002694:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002698:	04542823          	sw	t0,80(s0)
            __asm__ volatile ("mv %0, a1" : "=r" (c));
            __putc(c);
            break;
    }

    w_sstatus(sstatus);
    8000269c:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800026a0:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    800026a4:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800026a8:	14179073          	csrw	sepc,a5
}
    800026ac:	04813083          	ld	ra,72(sp)
    800026b0:	04013403          	ld	s0,64(sp)
    800026b4:	03813483          	ld	s1,56(sp)
    800026b8:	05010113          	addi	sp,sp,80
    800026bc:	00008067          	ret
            __asm__ volatile("mv %0, a1" : "=r" (memptr));
    800026c0:	00058593          	mv	a1,a1
    800026c4:	00009797          	auipc	a5,0x9
    800026c8:	efc7c783          	lbu	a5,-260(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026cc:	04079263          	bnez	a5,80002710 <_ZN5Riscv14handleSyscallsEv+0x1d0>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800026d0:	00009797          	auipc	a5,0x9
    800026d4:	e787b783          	ld	a5,-392(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026d8:	0007b783          	ld	a5,0(a5)
    800026dc:	00009717          	auipc	a4,0x9
    800026e0:	eec70713          	addi	a4,a4,-276 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026e4:	00f73023          	sd	a5,0(a4)
    800026e8:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800026ec:	00009717          	auipc	a4,0x9
    800026f0:	e7473703          	ld	a4,-396(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026f4:	00073703          	ld	a4,0(a4)
    800026f8:	40f70733          	sub	a4,a4,a5
    800026fc:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002700:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002704:	00100793          	li	a5,1
    80002708:	00009717          	auipc	a4,0x9
    8000270c:	eaf70c23          	sb	a5,-328(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_free(memptr);
    80002710:	00009517          	auipc	a0,0x9
    80002714:	eb850513          	addi	a0,a0,-328 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	540080e7          	jalr	1344(ra) # 80002c58 <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002720:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002724:	04542823          	sw	t0,80(s0)
            break;
    80002728:	f75ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
    8000272c:	00009797          	auipc	a5,0x9
    80002730:	e947c783          	lbu	a5,-364(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002734:	04079263          	bnez	a5,80002778 <_ZN5Riscv14handleSyscallsEv+0x238>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002738:	00009797          	auipc	a5,0x9
    8000273c:	e107b783          	ld	a5,-496(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002740:	0007b783          	ld	a5,0(a5)
    80002744:	00009717          	auipc	a4,0x9
    80002748:	e8470713          	addi	a4,a4,-380 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000274c:	00f73023          	sd	a5,0(a4)
    80002750:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002754:	00009717          	auipc	a4,0x9
    80002758:	e0c73703          	ld	a4,-500(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000275c:	00073703          	ld	a4,0(a4)
    80002760:	40f70733          	sub	a4,a4,a5
    80002764:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002768:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000276c:	00100793          	li	a5,1
    80002770:	00009717          	auipc	a4,0x9
    80002774:	e4f70823          	sb	a5,-432(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_get_free_space();
    80002778:	00009517          	auipc	a0,0x9
    8000277c:	e5050513          	addi	a0,a0,-432 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002780:	00000097          	auipc	ra,0x0
    80002784:	5c4080e7          	jalr	1476(ra) # 80002d44 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002788:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    8000278c:	04542823          	sw	t0,80(s0)
            break;
    80002790:	f0dff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
    80002794:	00009797          	auipc	a5,0x9
    80002798:	e2c7c783          	lbu	a5,-468(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000279c:	04079263          	bnez	a5,800027e0 <_ZN5Riscv14handleSyscallsEv+0x2a0>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800027a0:	00009797          	auipc	a5,0x9
    800027a4:	da87b783          	ld	a5,-600(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027a8:	0007b783          	ld	a5,0(a5)
    800027ac:	00009717          	auipc	a4,0x9
    800027b0:	e1c70713          	addi	a4,a4,-484 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027b4:	00f73023          	sd	a5,0(a4)
    800027b8:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800027bc:	00009717          	auipc	a4,0x9
    800027c0:	da473703          	ld	a4,-604(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027c4:	00073703          	ld	a4,0(a4)
    800027c8:	40f70733          	sub	a4,a4,a5
    800027cc:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800027d0:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800027d4:	00100793          	li	a5,1
    800027d8:	00009717          	auipc	a4,0x9
    800027dc:	def70423          	sb	a5,-536(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_get_largest_free_block();
    800027e0:	00009517          	auipc	a0,0x9
    800027e4:	de850513          	addi	a0,a0,-536 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	590080e7          	jalr	1424(ra) # 80002d78 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800027f0:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800027f4:	04542823          	sw	t0,80(s0)
            break;
    800027f8:	ea5ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
            __asm__ volatile ("mv %0, a1" : "=r" (thread));
    800027fc:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002800:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %0, a6" : "=r" (stack));
    80002804:	00080613          	mv	a2,a6
            __asm__ volatile ("mv %0, a7" : "=r" (arg));
    80002808:	00088593          	mv	a1,a7
            *thread = CCB::createCoroutine(body, arg, stack);
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	6fc080e7          	jalr	1788(ra) # 80001f08 <_ZN3CCB15createCoroutineEPFvPvES0_Pm>
    80002814:	00a4b023          	sd	a0,0(s1)
            if (*thread != nullptr) {
    80002818:	00050663          	beqz	a0,80002824 <_ZN5Riscv14handleSyscallsEv+0x2e4>
                __asm__ volatile ("li a0, 0");
    8000281c:	00000513          	li	a0,0
    80002820:	e7dff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
                __asm__ volatile ("li a0, -1");
    80002824:	fff00513          	li	a0,-1
    80002828:	e75ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
            CCB::running->setFinished(true);
    8000282c:	00009797          	auipc	a5,0x9
    80002830:	d2c7b783          	ld	a5,-724(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002834:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002838:	00100713          	li	a4,1
    8000283c:	02e78023          	sb	a4,32(a5)
            CCB::dispatch();
    80002840:	00000097          	auipc	ra,0x0
    80002844:	8d8080e7          	jalr	-1832(ra) # 80002118 <_ZN3CCB8dispatchEv>
            __asm__ volatile ("li a0, 0");
    80002848:	00000513          	li	a0,0
            break;
    8000284c:	e51ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
            CCB::dispatch();
    80002850:	00000097          	auipc	ra,0x0
    80002854:	8c8080e7          	jalr	-1848(ra) # 80002118 <_ZN3CCB8dispatchEv>
            break;
    80002858:	e45ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
            __asm__ volatile ("mv %0, a2" : "=r" (init));
    8000285c:	00060513          	mv	a0,a2
    80002860:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002864:	00058493          	mv	s1,a1
            *semHandle = ABI::Semaphore::createSemaphore(init);
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	158080e7          	jalr	344(ra) # 800019c0 <_ZN3ABI9Semaphore15createSemaphoreEj>
    80002870:	00a4b023          	sd	a0,0(s1)
            if (*semHandle != nullptr) {
    80002874:	00050663          	beqz	a0,80002880 <_ZN5Riscv14handleSyscallsEv+0x340>
                __asm__ volatile ("li a0, 0");
    80002878:	00000513          	li	a0,0
    8000287c:	e21ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
                __asm__ volatile ("li a0, -1");
    80002880:	fff00513          	li	a0,-1
    80002884:	e19ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002888:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr) {
    8000288c:	00050c63          	beqz	a0,800028a4 <_ZN5Riscv14handleSyscallsEv+0x364>
                returnValue = semHandlePtr->close();
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	380080e7          	jalr	896(ra) # 80001c10 <_ZN3ABI9Semaphore5closeEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002898:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    8000289c:	04542823          	sw	t0,80(s0)
            break;
    800028a0:	dfdff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
            } else returnValue = -2;
    800028a4:	ffe00513          	li	a0,-2
    800028a8:	ff1ff06f          	j	80002898 <_ZN5Riscv14handleSyscallsEv+0x358>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028ac:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr) {
    800028b0:	00050c63          	beqz	a0,800028c8 <_ZN5Riscv14handleSyscallsEv+0x388>
                returnValue = semHandlePtr->wait();
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	248080e7          	jalr	584(ra) # 80001afc <_ZN3ABI9Semaphore4waitEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800028bc:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800028c0:	04542823          	sw	t0,80(s0)
            break;
    800028c4:	dd9ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
            } else returnValue = -2;
    800028c8:	ffe00513          	li	a0,-2
    800028cc:	ff1ff06f          	j	800028bc <_ZN5Riscv14handleSyscallsEv+0x37c>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028d0:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr)
    800028d4:	00050c63          	beqz	a0,800028ec <_ZN5Riscv14handleSyscallsEv+0x3ac>
                returnValue = semHandlePtr->signal();
    800028d8:	fffff097          	auipc	ra,0xfffff
    800028dc:	2e4080e7          	jalr	740(ra) # 80001bbc <_ZN3ABI9Semaphore6signalEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800028e0:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800028e4:	04542823          	sw	t0,80(s0)
            break;
    800028e8:	db5ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
                returnValue = -2;
    800028ec:	ffe00513          	li	a0,-2
    800028f0:	ff1ff06f          	j	800028e0 <_ZN5Riscv14handleSyscallsEv+0x3a0>
            returnValue = __getc();
    800028f4:	00006097          	auipc	ra,0x6
    800028f8:	c74080e7          	jalr	-908(ra) # 80008568 <__getc>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800028fc:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002900:	04542823          	sw	t0,80(s0)
            break;
    80002904:	d99ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>
            __asm__ volatile ("mv %0, a1" : "=r" (c));
    80002908:	00058513          	mv	a0,a1
            __putc(c);
    8000290c:	0ff57513          	andi	a0,a0,255
    80002910:	00006097          	auipc	ra,0x6
    80002914:	c1c080e7          	jalr	-996(ra) # 8000852c <__putc>
            break;
    80002918:	d85ff06f          	j	8000269c <_ZN5Riscv14handleSyscallsEv+0x15c>

000000008000291c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    8000291c:	ff010113          	addi	sp,sp,-16
    80002920:	00813423          	sd	s0,8(sp)
    80002924:	01010413          	addi	s0,sp,16
    80002928:	00100793          	li	a5,1
    8000292c:	00f50863          	beq	a0,a5,8000293c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002930:	00813403          	ld	s0,8(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret
    8000293c:	000107b7          	lui	a5,0x10
    80002940:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002944:	fef596e3          	bne	a1,a5,80002930 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002948:	00009797          	auipc	a5,0x9
    8000294c:	ca078793          	addi	a5,a5,-864 # 8000b5e8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002950:	0007b023          	sd	zero,0(a5)
    80002954:	0007b423          	sd	zero,8(a5)
    80002958:	fd9ff06f          	j	80002930 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000295c <_ZN9Scheduler3getEv>:
{
    8000295c:	fe010113          	addi	sp,sp,-32
    80002960:	00113c23          	sd	ra,24(sp)
    80002964:	00813823          	sd	s0,16(sp)
    80002968:	00913423          	sd	s1,8(sp)
    8000296c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002970:	00009517          	auipc	a0,0x9
    80002974:	c7853503          	ld	a0,-904(a0) # 8000b5e8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002978:	04050263          	beqz	a0,800029bc <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    8000297c:	00853783          	ld	a5,8(a0)
    80002980:	00009717          	auipc	a4,0x9
    80002984:	c6f73423          	sd	a5,-920(a4) # 8000b5e8 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002988:	02078463          	beqz	a5,800029b0 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    8000298c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	478080e7          	jalr	1144(ra) # 80001e08 <_ZdlPv>
}
    80002998:	00048513          	mv	a0,s1
    8000299c:	01813083          	ld	ra,24(sp)
    800029a0:	01013403          	ld	s0,16(sp)
    800029a4:	00813483          	ld	s1,8(sp)
    800029a8:	02010113          	addi	sp,sp,32
    800029ac:	00008067          	ret
        if (!head) { tail = 0; }
    800029b0:	00009797          	auipc	a5,0x9
    800029b4:	c407b023          	sd	zero,-960(a5) # 8000b5f0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029b8:	fd5ff06f          	j	8000298c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029bc:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800029c0:	fd9ff06f          	j	80002998 <_ZN9Scheduler3getEv+0x3c>

00000000800029c4 <_ZN9Scheduler3putEP3CCB>:
{
    800029c4:	fe010113          	addi	sp,sp,-32
    800029c8:	00113c23          	sd	ra,24(sp)
    800029cc:	00813823          	sd	s0,16(sp)
    800029d0:	00913423          	sd	s1,8(sp)
    800029d4:	02010413          	addi	s0,sp,32
    800029d8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800029dc:	01000513          	li	a0,16
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	328080e7          	jalr	808(ra) # 80001d08 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800029e8:	00953023          	sd	s1,0(a0)
    800029ec:	00053423          	sd	zero,8(a0)
        if (tail)
    800029f0:	00009797          	auipc	a5,0x9
    800029f4:	c007b783          	ld	a5,-1024(a5) # 8000b5f0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029f8:	02078263          	beqz	a5,80002a1c <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    800029fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002a00:	00009797          	auipc	a5,0x9
    80002a04:	bea7b823          	sd	a0,-1040(a5) # 8000b5f0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002a08:	01813083          	ld	ra,24(sp)
    80002a0c:	01013403          	ld	s0,16(sp)
    80002a10:	00813483          	ld	s1,8(sp)
    80002a14:	02010113          	addi	sp,sp,32
    80002a18:	00008067          	ret
            head = tail = elem;
    80002a1c:	00009797          	auipc	a5,0x9
    80002a20:	bcc78793          	addi	a5,a5,-1076 # 8000b5e8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a24:	00a7b423          	sd	a0,8(a5)
    80002a28:	00a7b023          	sd	a0,0(a5)
    80002a2c:	fddff06f          	j	80002a08 <_ZN9Scheduler3putEP3CCB+0x44>

0000000080002a30 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00113423          	sd	ra,8(sp)
    80002a38:	00813023          	sd	s0,0(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	000105b7          	lui	a1,0x10
    80002a44:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a48:	00100513          	li	a0,1
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	ed0080e7          	jalr	-304(ra) # 8000291c <_Z41__static_initialization_and_destruction_0ii>
    80002a54:	00813083          	ld	ra,8(sp)
    80002a58:	00013403          	ld	s0,0(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <main>:
#include "../test/printing.hpp"

extern void userMain();

int main()
{
    80002a64:	fc010113          	addi	sp,sp,-64
    80002a68:	02113c23          	sd	ra,56(sp)
    80002a6c:	02813823          	sd	s0,48(sp)
    80002a70:	04010413          	addi	s0,sp,64
    CCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::stvecTrap);
    80002a74:	00009797          	auipc	a5,0x9
    80002a78:	af47b783          	ld	a5,-1292(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002a7c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a80:	00200793          	li	a5,2
    80002a84:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    threads[0] = CCB::createCoroutine(nullptr, nullptr, nullptr);
    80002a88:	00000613          	li	a2,0
    80002a8c:	00000593          	li	a1,0
    80002a90:	00000513          	li	a0,0
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	474080e7          	jalr	1140(ra) # 80001f08 <_ZN3CCB15createCoroutineEPFvPvES0_Pm>
    80002a9c:	fca43423          	sd	a0,-56(s0)
    CCB::running = threads[0];
    80002aa0:	00009797          	auipc	a5,0x9
    80002aa4:	ab87b783          	ld	a5,-1352(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002aa8:	00a7b023          	sd	a0,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80002aac:	00000613          	li	a2,0
    80002ab0:	00009597          	auipc	a1,0x9
    80002ab4:	a905b583          	ld	a1,-1392(a1) # 8000b540 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ab8:	fd040513          	addi	a0,s0,-48
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	830080e7          	jalr	-2000(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>

    while(!threads[1]->isFinished()) {
    80002ac4:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    80002ac8:	0207c783          	lbu	a5,32(a5)
    80002acc:	00079863          	bnez	a5,80002adc <main+0x78>
        thread_dispatch();
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	944080e7          	jalr	-1724(ra) # 80001414 <_Z15thread_dispatchv>
    80002ad8:	fedff06f          	j	80002ac4 <main+0x60>
    }

    printString("Vratio sam se u main\n");
    80002adc:	00006517          	auipc	a0,0x6
    80002ae0:	6ac50513          	addi	a0,a0,1708 # 80009188 <CONSOLE_STATUS+0x178>
    80002ae4:	00002097          	auipc	ra,0x2
    80002ae8:	748080e7          	jalr	1864(ra) # 8000522c <_Z11printStringPKc>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002aec:	00200793          	li	a5,2
    80002af0:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    return 0;
    80002af4:	00000513          	li	a0,0
    80002af8:	03813083          	ld	ra,56(sp)
    80002afc:	03013403          	ld	s0,48(sp)
    80002b00:	04010113          	addi	sp,sp,64
    80002b04:	00008067          	ret

0000000080002b08 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    80002b08:	ff010113          	addi	sp,sp,-16
    80002b0c:	00813423          	sd	s0,8(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	00050613          	mv	a2,a0
    size += sizeof(Header);
    80002b18:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    80002b1c:	fc05f713          	andi	a4,a1,-64
    80002b20:	03f5f593          	andi	a1,a1,63
    80002b24:	00058463          	beqz	a1,80002b2c <_ZN15MemoryAllocator9mem_allocEm+0x24>
    80002b28:	04000593          	li	a1,64
    80002b2c:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002b30:	00063503          	ld	a0,0(a2) # 2000 <_entry-0x7fffe000>
    Header *cur, *prev = nullptr;
    80002b34:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002b38:	00050c63          	beqz	a0,80002b50 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002b3c:	00853783          	ld	a5,8(a0)
    80002b40:	00e7f863          	bgeu	a5,a4,80002b50 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002b44:	00050693          	mv	a3,a0
    80002b48:	00053503          	ld	a0,0(a0)
    80002b4c:	fedff06f          	j	80002b38 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    80002b50:	08050a63          	beqz	a0,80002be4 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    80002b54:	00853783          	ld	a5,8(a0)
    80002b58:	04e78a63          	beq	a5,a4,80002bac <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    80002b5c:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    80002b60:	06068463          	beqz	a3,80002bc8 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002b64:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    80002b68:	00053683          	ld	a3,0(a0)
    80002b6c:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    80002b70:	00853683          	ld	a3,8(a0)
    80002b74:	40e686b3          	sub	a3,a3,a4
    80002b78:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    80002b7c:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    80002b80:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    80002b84:	00863683          	ld	a3,8(a2)
    80002b88:	04068463          	beqz	a3,80002bd0 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002b8c:	00068793          	mv	a5,a3
    80002b90:	00078713          	mv	a4,a5
    80002b94:	0007b783          	ld	a5,0(a5)
    80002b98:	00078463          	beqz	a5,80002ba0 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80002b9c:	fea7eae3          	bltu	a5,a0,80002b90 <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    80002ba0:	02070a63          	beqz	a4,80002bd4 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002ba4:	00f53023          	sd	a5,0(a0)
    80002ba8:	0300006f          	j	80002bd8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    80002bac:	00068863          	beqz	a3,80002bbc <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002bb0:	00053783          	ld	a5,0(a0)
    80002bb4:	00f6b023          	sd	a5,0(a3)
    80002bb8:	fc5ff06f          	j	80002b7c <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    80002bbc:	00053783          	ld	a5,0(a0)
    80002bc0:	00f63023          	sd	a5,0(a2)
    80002bc4:	fb9ff06f          	j	80002b7c <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002bc8:	00f63023          	sd	a5,0(a2)
    80002bcc:	f9dff06f          	j	80002b68 <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002bd0:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    80002bd4:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002bd8:	00070c63          	beqz	a4,80002bf0 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002bdc:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002be0:	01050513          	addi	a0,a0,16
}
    80002be4:	00813403          	ld	s0,8(sp)
    80002be8:	01010113          	addi	sp,sp,16
    80002bec:	00008067          	ret
    else alloc_head = target;
    80002bf0:	00a63423          	sd	a0,8(a2)
    80002bf4:	fedff06f          	j	80002be0 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002bf8 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002bf8:	ff010113          	addi	sp,sp,-16
    80002bfc:	00813423          	sd	s0,8(sp)
    80002c00:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    80002c04:	04050263          	beqz	a0,80002c48 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002c08:	00053783          	ld	a5,0(a0)
    80002c0c:	04078263          	beqz	a5,80002c50 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002c10:	00853703          	ld	a4,8(a0)
    80002c14:	00e506b3          	add	a3,a0,a4
    80002c18:	00d78a63          	beq	a5,a3,80002c2c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    80002c1c:	00000513          	li	a0,0
}
    80002c20:	00813403          	ld	s0,8(sp)
    80002c24:	01010113          	addi	sp,sp,16
    80002c28:	00008067          	ret
        cur->size += cur->next->size;
    80002c2c:	0087b683          	ld	a3,8(a5)
    80002c30:	00d70733          	add	a4,a4,a3
    80002c34:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    80002c38:	0007b783          	ld	a5,0(a5)
    80002c3c:	00f53023          	sd	a5,0(a0)
        return 1;
    80002c40:	00100513          	li	a0,1
    80002c44:	fddff06f          	j	80002c20 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    80002c48:	00000513          	li	a0,0
    80002c4c:	fd5ff06f          	j	80002c20 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    80002c50:	00000513          	li	a0,0
    80002c54:	fcdff06f          	j	80002c20 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

0000000080002c58 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    80002c58:	0c058a63          	beqz	a1,80002d2c <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002c5c:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    80002c60:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002c64:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    80002c68:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002c6c:	00078a63          	beqz	a5,80002c80 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002c70:	00a7f863          	bgeu	a5,a0,80002c80 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002c74:	00078713          	mv	a4,a5
    80002c78:	0007b783          	ld	a5,0(a5)
    80002c7c:	ff1ff06f          	j	80002c6c <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002c80:	0a078a63          	beqz	a5,80002d34 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002c84:	0aa79c63          	bne	a5,a0,80002d3c <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    80002c88:	fe010113          	addi	sp,sp,-32
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00913423          	sd	s1,8(sp)
    80002c98:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    80002c9c:	02070c63          	beqz	a4,80002cd4 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    80002ca0:	0007b783          	ld	a5,0(a5)
    80002ca4:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002ca8:	0006b703          	ld	a4,0(a3)
    80002cac:	02070a63          	beqz	a4,80002ce0 <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    80002cb0:	02e56c63          	bltu	a0,a4,80002ce8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002cb4:	00070793          	mv	a5,a4
    80002cb8:	00078493          	mv	s1,a5
    80002cbc:	0007b783          	ld	a5,0(a5)
    80002cc0:	00078463          	beqz	a5,80002cc8 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002cc4:	fea7eae3          	bltu	a5,a0,80002cb8 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002cc8:	02048263          	beqz	s1,80002cec <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002ccc:	fef5b823          	sd	a5,-16(a1)
    80002cd0:	0200006f          	j	80002cf0 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    80002cd4:	0007b783          	ld	a5,0(a5)
    80002cd8:	00f6b423          	sd	a5,8(a3)
    80002cdc:	fcdff06f          	j	80002ca8 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002ce0:	00070493          	mv	s1,a4
    80002ce4:	0080006f          	j	80002cec <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002ce8:	00000493          	li	s1,0
    else target->next = free_head;
    80002cec:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002cf0:	02048a63          	beqz	s1,80002d24 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002cf4:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	f00080e7          	jalr	-256(ra) # 80002bf8 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002d00:	00048513          	mv	a0,s1
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	ef4080e7          	jalr	-268(ra) # 80002bf8 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    80002d0c:	00000513          	li	a0,0
}
    80002d10:	01813083          	ld	ra,24(sp)
    80002d14:	01013403          	ld	s0,16(sp)
    80002d18:	00813483          	ld	s1,8(sp)
    80002d1c:	02010113          	addi	sp,sp,32
    80002d20:	00008067          	ret
    else free_head = target;
    80002d24:	00a6b023          	sd	a0,0(a3)
    80002d28:	fd1ff06f          	j	80002cf8 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    80002d2c:	fff00513          	li	a0,-1
    80002d30:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002d34:	ffe00513          	li	a0,-2
    80002d38:	00008067          	ret
    80002d3c:	ffe00513          	li	a0,-2
}
    80002d40:	00008067          	ret

0000000080002d44 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002d44:	ff010113          	addi	sp,sp,-16
    80002d48:	00813423          	sd	s0,8(sp)
    80002d4c:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d50:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002d54:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d58:	00078a63          	beqz	a5,80002d6c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    80002d5c:	0087b703          	ld	a4,8(a5)
    80002d60:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d64:	0007b783          	ld	a5,0(a5)
    80002d68:	ff1ff06f          	j	80002d58 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    80002d6c:	00813403          	ld	s0,8(sp)
    80002d70:	01010113          	addi	sp,sp,16
    80002d74:	00008067          	ret

0000000080002d78 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002d78:	ff010113          	addi	sp,sp,-16
    80002d7c:	00813423          	sd	s0,8(sp)
    80002d80:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d84:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002d88:	00000513          	li	a0,0
    80002d8c:	0080006f          	j	80002d94 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d90:	0007b783          	ld	a5,0(a5)
    80002d94:	00078a63          	beqz	a5,80002da8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    80002d98:	0087b703          	ld	a4,8(a5)
    80002d9c:	fee57ae3          	bgeu	a0,a4,80002d90 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    80002da0:	00070513          	mv	a0,a4
    80002da4:	fedff06f          	j	80002d90 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    80002da8:	00813403          	ld	s0,8(sp)
    80002dac:	01010113          	addi	sp,sp,16
    80002db0:	00008067          	ret

0000000080002db4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002db4:	fe010113          	addi	sp,sp,-32
    80002db8:	00113c23          	sd	ra,24(sp)
    80002dbc:	00813823          	sd	s0,16(sp)
    80002dc0:	00913423          	sd	s1,8(sp)
    80002dc4:	01213023          	sd	s2,0(sp)
    80002dc8:	02010413          	addi	s0,sp,32
    80002dcc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002dd0:	00000913          	li	s2,0
    80002dd4:	00c0006f          	j	80002de0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'e') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002dd8:	ffffe097          	auipc	ra,0xffffe
    80002ddc:	63c080e7          	jalr	1596(ra) # 80001414 <_Z15thread_dispatchv>
    while ((key = getc()) != 'e') {
    80002de0:	ffffe097          	auipc	ra,0xffffe
    80002de4:	73c080e7          	jalr	1852(ra) # 8000151c <_Z4getcv>
    80002de8:	0005059b          	sext.w	a1,a0
    80002dec:	06500793          	li	a5,101
    80002df0:	02f58a63          	beq	a1,a5,80002e24 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002df4:	0084b503          	ld	a0,8(s1)
    80002df8:	00003097          	auipc	ra,0x3
    80002dfc:	3f4080e7          	jalr	1012(ra) # 800061ec <_ZN6Buffer3putEi>
        i++;
    80002e00:	0019071b          	addiw	a4,s2,1
    80002e04:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e08:	0004a683          	lw	a3,0(s1)
    80002e0c:	0026979b          	slliw	a5,a3,0x2
    80002e10:	00d787bb          	addw	a5,a5,a3
    80002e14:	0017979b          	slliw	a5,a5,0x1
    80002e18:	02f767bb          	remw	a5,a4,a5
    80002e1c:	fc0792e3          	bnez	a5,80002de0 <_ZL16producerKeyboardPv+0x2c>
    80002e20:	fb9ff06f          	j	80002dd8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e24:	00100793          	li	a5,1
    80002e28:	00008717          	auipc	a4,0x8
    80002e2c:	7cf72823          	sw	a5,2000(a4) # 8000b5f8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e30:	02100593          	li	a1,33
    80002e34:	0084b503          	ld	a0,8(s1)
    80002e38:	00003097          	auipc	ra,0x3
    80002e3c:	3b4080e7          	jalr	948(ra) # 800061ec <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e40:	0104b503          	ld	a0,16(s1)
    80002e44:	ffffe097          	auipc	ra,0xffffe
    80002e48:	680080e7          	jalr	1664(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002e4c:	01813083          	ld	ra,24(sp)
    80002e50:	01013403          	ld	s0,16(sp)
    80002e54:	00813483          	ld	s1,8(sp)
    80002e58:	00013903          	ld	s2,0(sp)
    80002e5c:	02010113          	addi	sp,sp,32
    80002e60:	00008067          	ret

0000000080002e64 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e64:	fe010113          	addi	sp,sp,-32
    80002e68:	00113c23          	sd	ra,24(sp)
    80002e6c:	00813823          	sd	s0,16(sp)
    80002e70:	00913423          	sd	s1,8(sp)
    80002e74:	01213023          	sd	s2,0(sp)
    80002e78:	02010413          	addi	s0,sp,32
    80002e7c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e80:	00000913          	li	s2,0
    80002e84:	00c0006f          	j	80002e90 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e88:	ffffe097          	auipc	ra,0xffffe
    80002e8c:	58c080e7          	jalr	1420(ra) # 80001414 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e90:	00008797          	auipc	a5,0x8
    80002e94:	7687a783          	lw	a5,1896(a5) # 8000b5f8 <_ZL9threadEnd>
    80002e98:	02079e63          	bnez	a5,80002ed4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e9c:	0004a583          	lw	a1,0(s1)
    80002ea0:	0305859b          	addiw	a1,a1,48
    80002ea4:	0084b503          	ld	a0,8(s1)
    80002ea8:	00003097          	auipc	ra,0x3
    80002eac:	344080e7          	jalr	836(ra) # 800061ec <_ZN6Buffer3putEi>
        i++;
    80002eb0:	0019071b          	addiw	a4,s2,1
    80002eb4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002eb8:	0004a683          	lw	a3,0(s1)
    80002ebc:	0026979b          	slliw	a5,a3,0x2
    80002ec0:	00d787bb          	addw	a5,a5,a3
    80002ec4:	0017979b          	slliw	a5,a5,0x1
    80002ec8:	02f767bb          	remw	a5,a4,a5
    80002ecc:	fc0792e3          	bnez	a5,80002e90 <_ZL8producerPv+0x2c>
    80002ed0:	fb9ff06f          	j	80002e88 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002ed4:	0104b503          	ld	a0,16(s1)
    80002ed8:	ffffe097          	auipc	ra,0xffffe
    80002edc:	5ec080e7          	jalr	1516(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002ee0:	01813083          	ld	ra,24(sp)
    80002ee4:	01013403          	ld	s0,16(sp)
    80002ee8:	00813483          	ld	s1,8(sp)
    80002eec:	00013903          	ld	s2,0(sp)
    80002ef0:	02010113          	addi	sp,sp,32
    80002ef4:	00008067          	ret

0000000080002ef8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002ef8:	fd010113          	addi	sp,sp,-48
    80002efc:	02113423          	sd	ra,40(sp)
    80002f00:	02813023          	sd	s0,32(sp)
    80002f04:	00913c23          	sd	s1,24(sp)
    80002f08:	01213823          	sd	s2,16(sp)
    80002f0c:	01313423          	sd	s3,8(sp)
    80002f10:	03010413          	addi	s0,sp,48
    80002f14:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f18:	00000993          	li	s3,0
    80002f1c:	01c0006f          	j	80002f38 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f20:	ffffe097          	auipc	ra,0xffffe
    80002f24:	4f4080e7          	jalr	1268(ra) # 80001414 <_Z15thread_dispatchv>
    80002f28:	0500006f          	j	80002f78 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f2c:	00a00513          	li	a0,10
    80002f30:	ffffe097          	auipc	ra,0xffffe
    80002f34:	614080e7          	jalr	1556(ra) # 80001544 <_Z4putcc>
    while (!threadEnd) {
    80002f38:	00008797          	auipc	a5,0x8
    80002f3c:	6c07a783          	lw	a5,1728(a5) # 8000b5f8 <_ZL9threadEnd>
    80002f40:	06079063          	bnez	a5,80002fa0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f44:	00893503          	ld	a0,8(s2)
    80002f48:	00003097          	auipc	ra,0x3
    80002f4c:	334080e7          	jalr	820(ra) # 8000627c <_ZN6Buffer3getEv>
        i++;
    80002f50:	0019849b          	addiw	s1,s3,1
    80002f54:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f58:	0ff57513          	andi	a0,a0,255
    80002f5c:	ffffe097          	auipc	ra,0xffffe
    80002f60:	5e8080e7          	jalr	1512(ra) # 80001544 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f64:	00092703          	lw	a4,0(s2)
    80002f68:	0027179b          	slliw	a5,a4,0x2
    80002f6c:	00e787bb          	addw	a5,a5,a4
    80002f70:	02f4e7bb          	remw	a5,s1,a5
    80002f74:	fa0786e3          	beqz	a5,80002f20 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f78:	05000793          	li	a5,80
    80002f7c:	02f4e4bb          	remw	s1,s1,a5
    80002f80:	fa049ce3          	bnez	s1,80002f38 <_ZL8consumerPv+0x40>
    80002f84:	fa9ff06f          	j	80002f2c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f88:	00893503          	ld	a0,8(s2)
    80002f8c:	00003097          	auipc	ra,0x3
    80002f90:	2f0080e7          	jalr	752(ra) # 8000627c <_ZN6Buffer3getEv>
        putc(key);
    80002f94:	0ff57513          	andi	a0,a0,255
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	5ac080e7          	jalr	1452(ra) # 80001544 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002fa0:	00893503          	ld	a0,8(s2)
    80002fa4:	00003097          	auipc	ra,0x3
    80002fa8:	364080e7          	jalr	868(ra) # 80006308 <_ZN6Buffer6getCntEv>
    80002fac:	fca04ee3          	bgtz	a0,80002f88 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002fb0:	01093503          	ld	a0,16(s2)
    80002fb4:	ffffe097          	auipc	ra,0xffffe
    80002fb8:	510080e7          	jalr	1296(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002fbc:	02813083          	ld	ra,40(sp)
    80002fc0:	02013403          	ld	s0,32(sp)
    80002fc4:	01813483          	ld	s1,24(sp)
    80002fc8:	01013903          	ld	s2,16(sp)
    80002fcc:	00813983          	ld	s3,8(sp)
    80002fd0:	03010113          	addi	sp,sp,48
    80002fd4:	00008067          	ret

0000000080002fd8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002fd8:	f9010113          	addi	sp,sp,-112
    80002fdc:	06113423          	sd	ra,104(sp)
    80002fe0:	06813023          	sd	s0,96(sp)
    80002fe4:	04913c23          	sd	s1,88(sp)
    80002fe8:	05213823          	sd	s2,80(sp)
    80002fec:	05313423          	sd	s3,72(sp)
    80002ff0:	05413023          	sd	s4,64(sp)
    80002ff4:	03513c23          	sd	s5,56(sp)
    80002ff8:	03613823          	sd	s6,48(sp)
    80002ffc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003000:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003004:	00006517          	auipc	a0,0x6
    80003008:	19c50513          	addi	a0,a0,412 # 800091a0 <CONSOLE_STATUS+0x190>
    8000300c:	00002097          	auipc	ra,0x2
    80003010:	220080e7          	jalr	544(ra) # 8000522c <_Z11printStringPKc>
    getString(input, 30);
    80003014:	01e00593          	li	a1,30
    80003018:	fa040493          	addi	s1,s0,-96
    8000301c:	00048513          	mv	a0,s1
    80003020:	00002097          	auipc	ra,0x2
    80003024:	294080e7          	jalr	660(ra) # 800052b4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003028:	00048513          	mv	a0,s1
    8000302c:	00002097          	auipc	ra,0x2
    80003030:	360080e7          	jalr	864(ra) # 8000538c <_Z11stringToIntPKc>
    80003034:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003038:	00006517          	auipc	a0,0x6
    8000303c:	18850513          	addi	a0,a0,392 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003040:	00002097          	auipc	ra,0x2
    80003044:	1ec080e7          	jalr	492(ra) # 8000522c <_Z11printStringPKc>
    getString(input, 30);
    80003048:	01e00593          	li	a1,30
    8000304c:	00048513          	mv	a0,s1
    80003050:	00002097          	auipc	ra,0x2
    80003054:	264080e7          	jalr	612(ra) # 800052b4 <_Z9getStringPci>
    n = stringToInt(input);
    80003058:	00048513          	mv	a0,s1
    8000305c:	00002097          	auipc	ra,0x2
    80003060:	330080e7          	jalr	816(ra) # 8000538c <_Z11stringToIntPKc>
    80003064:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003068:	00006517          	auipc	a0,0x6
    8000306c:	17850513          	addi	a0,a0,376 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003070:	00002097          	auipc	ra,0x2
    80003074:	1bc080e7          	jalr	444(ra) # 8000522c <_Z11printStringPKc>
    80003078:	00000613          	li	a2,0
    8000307c:	00a00593          	li	a1,10
    80003080:	00090513          	mv	a0,s2
    80003084:	00002097          	auipc	ra,0x2
    80003088:	358080e7          	jalr	856(ra) # 800053dc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000308c:	00006517          	auipc	a0,0x6
    80003090:	16c50513          	addi	a0,a0,364 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003094:	00002097          	auipc	ra,0x2
    80003098:	198080e7          	jalr	408(ra) # 8000522c <_Z11printStringPKc>
    8000309c:	00000613          	li	a2,0
    800030a0:	00a00593          	li	a1,10
    800030a4:	00048513          	mv	a0,s1
    800030a8:	00002097          	auipc	ra,0x2
    800030ac:	334080e7          	jalr	820(ra) # 800053dc <_Z8printIntiii>
    printString(".\n");
    800030b0:	00006517          	auipc	a0,0x6
    800030b4:	16050513          	addi	a0,a0,352 # 80009210 <CONSOLE_STATUS+0x200>
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	174080e7          	jalr	372(ra) # 8000522c <_Z11printStringPKc>
    if(threadNum > n) {
    800030c0:	0324c463          	blt	s1,s2,800030e8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800030c4:	03205c63          	blez	s2,800030fc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800030c8:	03800513          	li	a0,56
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	c3c080e7          	jalr	-964(ra) # 80001d08 <_Znwm>
    800030d4:	00050a13          	mv	s4,a0
    800030d8:	00048593          	mv	a1,s1
    800030dc:	00003097          	auipc	ra,0x3
    800030e0:	074080e7          	jalr	116(ra) # 80006150 <_ZN6BufferC1Ei>
    800030e4:	0300006f          	j	80003114 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800030e8:	00006517          	auipc	a0,0x6
    800030ec:	13050513          	addi	a0,a0,304 # 80009218 <CONSOLE_STATUS+0x208>
    800030f0:	00002097          	auipc	ra,0x2
    800030f4:	13c080e7          	jalr	316(ra) # 8000522c <_Z11printStringPKc>
        return;
    800030f8:	0140006f          	j	8000310c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800030fc:	00006517          	auipc	a0,0x6
    80003100:	15c50513          	addi	a0,a0,348 # 80009258 <CONSOLE_STATUS+0x248>
    80003104:	00002097          	auipc	ra,0x2
    80003108:	128080e7          	jalr	296(ra) # 8000522c <_Z11printStringPKc>
        return;
    8000310c:	000b0113          	mv	sp,s6
    80003110:	1500006f          	j	80003260 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003114:	00000593          	li	a1,0
    80003118:	00008517          	auipc	a0,0x8
    8000311c:	4e850513          	addi	a0,a0,1256 # 8000b600 <_ZL10waitForAll>
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	314080e7          	jalr	788(ra) # 80001434 <_Z8sem_openPPN3ABI9SemaphoreEj>
    thread_t threads[threadNum];
    80003128:	00391793          	slli	a5,s2,0x3
    8000312c:	00f78793          	addi	a5,a5,15
    80003130:	ff07f793          	andi	a5,a5,-16
    80003134:	40f10133          	sub	sp,sp,a5
    80003138:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000313c:	0019071b          	addiw	a4,s2,1
    80003140:	00171793          	slli	a5,a4,0x1
    80003144:	00e787b3          	add	a5,a5,a4
    80003148:	00379793          	slli	a5,a5,0x3
    8000314c:	00f78793          	addi	a5,a5,15
    80003150:	ff07f793          	andi	a5,a5,-16
    80003154:	40f10133          	sub	sp,sp,a5
    80003158:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000315c:	00191613          	slli	a2,s2,0x1
    80003160:	012607b3          	add	a5,a2,s2
    80003164:	00379793          	slli	a5,a5,0x3
    80003168:	00f987b3          	add	a5,s3,a5
    8000316c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003170:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003174:	00008717          	auipc	a4,0x8
    80003178:	48c73703          	ld	a4,1164(a4) # 8000b600 <_ZL10waitForAll>
    8000317c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003180:	00078613          	mv	a2,a5
    80003184:	00000597          	auipc	a1,0x0
    80003188:	d7458593          	addi	a1,a1,-652 # 80002ef8 <_ZL8consumerPv>
    8000318c:	f9840513          	addi	a0,s0,-104
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	15c080e7          	jalr	348(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003198:	00000493          	li	s1,0
    8000319c:	0280006f          	j	800031c4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800031a0:	00000597          	auipc	a1,0x0
    800031a4:	c1458593          	addi	a1,a1,-1004 # 80002db4 <_ZL16producerKeyboardPv>
                      data + i);
    800031a8:	00179613          	slli	a2,a5,0x1
    800031ac:	00f60633          	add	a2,a2,a5
    800031b0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800031b4:	00c98633          	add	a2,s3,a2
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	134080e7          	jalr	308(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031c0:	0014849b          	addiw	s1,s1,1
    800031c4:	0524d263          	bge	s1,s2,80003208 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800031c8:	00149793          	slli	a5,s1,0x1
    800031cc:	009787b3          	add	a5,a5,s1
    800031d0:	00379793          	slli	a5,a5,0x3
    800031d4:	00f987b3          	add	a5,s3,a5
    800031d8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031dc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031e0:	00008717          	auipc	a4,0x8
    800031e4:	42073703          	ld	a4,1056(a4) # 8000b600 <_ZL10waitForAll>
    800031e8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031ec:	00048793          	mv	a5,s1
    800031f0:	00349513          	slli	a0,s1,0x3
    800031f4:	00aa8533          	add	a0,s5,a0
    800031f8:	fa9054e3          	blez	s1,800031a0 <_Z22producerConsumer_C_APIv+0x1c8>
    800031fc:	00000597          	auipc	a1,0x0
    80003200:	c6858593          	addi	a1,a1,-920 # 80002e64 <_ZL8producerPv>
    80003204:	fa5ff06f          	j	800031a8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	20c080e7          	jalr	524(ra) # 80001414 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003210:	00000493          	li	s1,0
    80003214:	00994e63          	blt	s2,s1,80003230 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003218:	00008517          	auipc	a0,0x8
    8000321c:	3e853503          	ld	a0,1000(a0) # 8000b600 <_ZL10waitForAll>
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	278080e7          	jalr	632(ra) # 80001498 <_Z8sem_waitPN3ABI9SemaphoreE>
    for (int i = 0; i <= threadNum; i++) {
    80003228:	0014849b          	addiw	s1,s1,1
    8000322c:	fe9ff06f          	j	80003214 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003230:	00008517          	auipc	a0,0x8
    80003234:	3d053503          	ld	a0,976(a0) # 8000b600 <_ZL10waitForAll>
    80003238:	ffffe097          	auipc	ra,0xffffe
    8000323c:	234080e7          	jalr	564(ra) # 8000146c <_Z9sem_closePN3ABI9SemaphoreE>
    delete buffer;
    80003240:	000a0e63          	beqz	s4,8000325c <_Z22producerConsumer_C_APIv+0x284>
    80003244:	000a0513          	mv	a0,s4
    80003248:	00003097          	auipc	ra,0x3
    8000324c:	148080e7          	jalr	328(ra) # 80006390 <_ZN6BufferD1Ev>
    80003250:	000a0513          	mv	a0,s4
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	bb4080e7          	jalr	-1100(ra) # 80001e08 <_ZdlPv>
    8000325c:	000b0113          	mv	sp,s6
}
    80003260:	f9040113          	addi	sp,s0,-112
    80003264:	06813083          	ld	ra,104(sp)
    80003268:	06013403          	ld	s0,96(sp)
    8000326c:	05813483          	ld	s1,88(sp)
    80003270:	05013903          	ld	s2,80(sp)
    80003274:	04813983          	ld	s3,72(sp)
    80003278:	04013a03          	ld	s4,64(sp)
    8000327c:	03813a83          	ld	s5,56(sp)
    80003280:	03013b03          	ld	s6,48(sp)
    80003284:	07010113          	addi	sp,sp,112
    80003288:	00008067          	ret
    8000328c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003290:	000a0513          	mv	a0,s4
    80003294:	fffff097          	auipc	ra,0xfffff
    80003298:	b74080e7          	jalr	-1164(ra) # 80001e08 <_ZdlPv>
    8000329c:	00048513          	mv	a0,s1
    800032a0:	00009097          	auipc	ra,0x9
    800032a4:	478080e7          	jalr	1144(ra) # 8000c718 <_Unwind_Resume>

00000000800032a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032a8:	fe010113          	addi	sp,sp,-32
    800032ac:	00113c23          	sd	ra,24(sp)
    800032b0:	00813823          	sd	s0,16(sp)
    800032b4:	00913423          	sd	s1,8(sp)
    800032b8:	01213023          	sd	s2,0(sp)
    800032bc:	02010413          	addi	s0,sp,32
    800032c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032c4:	00100793          	li	a5,1
    800032c8:	02a7f863          	bgeu	a5,a0,800032f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032cc:	00a00793          	li	a5,10
    800032d0:	02f577b3          	remu	a5,a0,a5
    800032d4:	02078e63          	beqz	a5,80003310 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032d8:	fff48513          	addi	a0,s1,-1
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	fcc080e7          	jalr	-52(ra) # 800032a8 <_ZL9fibonaccim>
    800032e4:	00050913          	mv	s2,a0
    800032e8:	ffe48513          	addi	a0,s1,-2
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	fbc080e7          	jalr	-68(ra) # 800032a8 <_ZL9fibonaccim>
    800032f4:	00a90533          	add	a0,s2,a0
}
    800032f8:	01813083          	ld	ra,24(sp)
    800032fc:	01013403          	ld	s0,16(sp)
    80003300:	00813483          	ld	s1,8(sp)
    80003304:	00013903          	ld	s2,0(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	104080e7          	jalr	260(ra) # 80001414 <_Z15thread_dispatchv>
    80003318:	fc1ff06f          	j	800032d8 <_ZL9fibonaccim+0x30>

000000008000331c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000331c:	fe010113          	addi	sp,sp,-32
    80003320:	00113c23          	sd	ra,24(sp)
    80003324:	00813823          	sd	s0,16(sp)
    80003328:	00913423          	sd	s1,8(sp)
    8000332c:	01213023          	sd	s2,0(sp)
    80003330:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003334:	00000913          	li	s2,0
    80003338:	0380006f          	j	80003370 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000333c:	ffffe097          	auipc	ra,0xffffe
    80003340:	0d8080e7          	jalr	216(ra) # 80001414 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003344:	00148493          	addi	s1,s1,1
    80003348:	000027b7          	lui	a5,0x2
    8000334c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003350:	0097ee63          	bltu	a5,s1,8000336c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003354:	00000713          	li	a4,0
    80003358:	000077b7          	lui	a5,0x7
    8000335c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003360:	fce7eee3          	bltu	a5,a4,8000333c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003364:	00170713          	addi	a4,a4,1
    80003368:	ff1ff06f          	j	80003358 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000336c:	00190913          	addi	s2,s2,1
    80003370:	00900793          	li	a5,9
    80003374:	0527e063          	bltu	a5,s2,800033b4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003378:	00006517          	auipc	a0,0x6
    8000337c:	ca850513          	addi	a0,a0,-856 # 80009020 <CONSOLE_STATUS+0x10>
    80003380:	00002097          	auipc	ra,0x2
    80003384:	eac080e7          	jalr	-340(ra) # 8000522c <_Z11printStringPKc>
    80003388:	00000613          	li	a2,0
    8000338c:	00a00593          	li	a1,10
    80003390:	0009051b          	sext.w	a0,s2
    80003394:	00002097          	auipc	ra,0x2
    80003398:	048080e7          	jalr	72(ra) # 800053dc <_Z8printIntiii>
    8000339c:	00006517          	auipc	a0,0x6
    800033a0:	16c50513          	addi	a0,a0,364 # 80009508 <CONSOLE_STATUS+0x4f8>
    800033a4:	00002097          	auipc	ra,0x2
    800033a8:	e88080e7          	jalr	-376(ra) # 8000522c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033ac:	00000493          	li	s1,0
    800033b0:	f99ff06f          	j	80003348 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800033b4:	00006517          	auipc	a0,0x6
    800033b8:	ed450513          	addi	a0,a0,-300 # 80009288 <CONSOLE_STATUS+0x278>
    800033bc:	00002097          	auipc	ra,0x2
    800033c0:	e70080e7          	jalr	-400(ra) # 8000522c <_Z11printStringPKc>
    finishedA = true;
    800033c4:	00100793          	li	a5,1
    800033c8:	00008717          	auipc	a4,0x8
    800033cc:	24f70023          	sb	a5,576(a4) # 8000b608 <_ZL9finishedA>
}
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	01013403          	ld	s0,16(sp)
    800033d8:	00813483          	ld	s1,8(sp)
    800033dc:	00013903          	ld	s2,0(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret

00000000800033e8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800033e8:	fe010113          	addi	sp,sp,-32
    800033ec:	00113c23          	sd	ra,24(sp)
    800033f0:	00813823          	sd	s0,16(sp)
    800033f4:	00913423          	sd	s1,8(sp)
    800033f8:	01213023          	sd	s2,0(sp)
    800033fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003400:	00000913          	li	s2,0
    80003404:	0380006f          	j	8000343c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	00c080e7          	jalr	12(ra) # 80001414 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003410:	00148493          	addi	s1,s1,1
    80003414:	000027b7          	lui	a5,0x2
    80003418:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000341c:	0097ee63          	bltu	a5,s1,80003438 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003420:	00000713          	li	a4,0
    80003424:	000077b7          	lui	a5,0x7
    80003428:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000342c:	fce7eee3          	bltu	a5,a4,80003408 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003430:	00170713          	addi	a4,a4,1
    80003434:	ff1ff06f          	j	80003424 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003438:	00190913          	addi	s2,s2,1
    8000343c:	00f00793          	li	a5,15
    80003440:	0527e063          	bltu	a5,s2,80003480 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003444:	00006517          	auipc	a0,0x6
    80003448:	c0c50513          	addi	a0,a0,-1012 # 80009050 <CONSOLE_STATUS+0x40>
    8000344c:	00002097          	auipc	ra,0x2
    80003450:	de0080e7          	jalr	-544(ra) # 8000522c <_Z11printStringPKc>
    80003454:	00000613          	li	a2,0
    80003458:	00a00593          	li	a1,10
    8000345c:	0009051b          	sext.w	a0,s2
    80003460:	00002097          	auipc	ra,0x2
    80003464:	f7c080e7          	jalr	-132(ra) # 800053dc <_Z8printIntiii>
    80003468:	00006517          	auipc	a0,0x6
    8000346c:	0a050513          	addi	a0,a0,160 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003470:	00002097          	auipc	ra,0x2
    80003474:	dbc080e7          	jalr	-580(ra) # 8000522c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003478:	00000493          	li	s1,0
    8000347c:	f99ff06f          	j	80003414 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003480:	00006517          	auipc	a0,0x6
    80003484:	e1850513          	addi	a0,a0,-488 # 80009298 <CONSOLE_STATUS+0x288>
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	da4080e7          	jalr	-604(ra) # 8000522c <_Z11printStringPKc>
    finishedB = true;
    80003490:	00100793          	li	a5,1
    80003494:	00008717          	auipc	a4,0x8
    80003498:	16f70aa3          	sb	a5,373(a4) # 8000b609 <_ZL9finishedB>
    thread_dispatch();
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	f78080e7          	jalr	-136(ra) # 80001414 <_Z15thread_dispatchv>
}
    800034a4:	01813083          	ld	ra,24(sp)
    800034a8:	01013403          	ld	s0,16(sp)
    800034ac:	00813483          	ld	s1,8(sp)
    800034b0:	00013903          	ld	s2,0(sp)
    800034b4:	02010113          	addi	sp,sp,32
    800034b8:	00008067          	ret

00000000800034bc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034bc:	fe010113          	addi	sp,sp,-32
    800034c0:	00113c23          	sd	ra,24(sp)
    800034c4:	00813823          	sd	s0,16(sp)
    800034c8:	00913423          	sd	s1,8(sp)
    800034cc:	01213023          	sd	s2,0(sp)
    800034d0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034d4:	00000493          	li	s1,0
    800034d8:	0400006f          	j	80003518 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800034dc:	00006517          	auipc	a0,0x6
    800034e0:	dcc50513          	addi	a0,a0,-564 # 800092a8 <CONSOLE_STATUS+0x298>
    800034e4:	00002097          	auipc	ra,0x2
    800034e8:	d48080e7          	jalr	-696(ra) # 8000522c <_Z11printStringPKc>
    800034ec:	00000613          	li	a2,0
    800034f0:	00a00593          	li	a1,10
    800034f4:	00048513          	mv	a0,s1
    800034f8:	00002097          	auipc	ra,0x2
    800034fc:	ee4080e7          	jalr	-284(ra) # 800053dc <_Z8printIntiii>
    80003500:	00006517          	auipc	a0,0x6
    80003504:	00850513          	addi	a0,a0,8 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003508:	00002097          	auipc	ra,0x2
    8000350c:	d24080e7          	jalr	-732(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003510:	0014849b          	addiw	s1,s1,1
    80003514:	0ff4f493          	andi	s1,s1,255
    80003518:	00200793          	li	a5,2
    8000351c:	fc97f0e3          	bgeu	a5,s1,800034dc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003520:	00006517          	auipc	a0,0x6
    80003524:	d9050513          	addi	a0,a0,-624 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003528:	00002097          	auipc	ra,0x2
    8000352c:	d04080e7          	jalr	-764(ra) # 8000522c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003530:	00700313          	li	t1,7
    thread_dispatch();
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	ee0080e7          	jalr	-288(ra) # 80001414 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000353c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003540:	00006517          	auipc	a0,0x6
    80003544:	d8050513          	addi	a0,a0,-640 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003548:	00002097          	auipc	ra,0x2
    8000354c:	ce4080e7          	jalr	-796(ra) # 8000522c <_Z11printStringPKc>
    80003550:	00000613          	li	a2,0
    80003554:	00a00593          	li	a1,10
    80003558:	0009051b          	sext.w	a0,s2
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	e80080e7          	jalr	-384(ra) # 800053dc <_Z8printIntiii>
    80003564:	00006517          	auipc	a0,0x6
    80003568:	fa450513          	addi	a0,a0,-92 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000356c:	00002097          	auipc	ra,0x2
    80003570:	cc0080e7          	jalr	-832(ra) # 8000522c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003574:	00c00513          	li	a0,12
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	d30080e7          	jalr	-720(ra) # 800032a8 <_ZL9fibonaccim>
    80003580:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003584:	00006517          	auipc	a0,0x6
    80003588:	d4450513          	addi	a0,a0,-700 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	ca0080e7          	jalr	-864(ra) # 8000522c <_Z11printStringPKc>
    80003594:	00000613          	li	a2,0
    80003598:	00a00593          	li	a1,10
    8000359c:	0009051b          	sext.w	a0,s2
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	e3c080e7          	jalr	-452(ra) # 800053dc <_Z8printIntiii>
    800035a8:	00006517          	auipc	a0,0x6
    800035ac:	f6050513          	addi	a0,a0,-160 # 80009508 <CONSOLE_STATUS+0x4f8>
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	c7c080e7          	jalr	-900(ra) # 8000522c <_Z11printStringPKc>
    800035b8:	0400006f          	j	800035f8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035bc:	00006517          	auipc	a0,0x6
    800035c0:	cec50513          	addi	a0,a0,-788 # 800092a8 <CONSOLE_STATUS+0x298>
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	c68080e7          	jalr	-920(ra) # 8000522c <_Z11printStringPKc>
    800035cc:	00000613          	li	a2,0
    800035d0:	00a00593          	li	a1,10
    800035d4:	00048513          	mv	a0,s1
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	e04080e7          	jalr	-508(ra) # 800053dc <_Z8printIntiii>
    800035e0:	00006517          	auipc	a0,0x6
    800035e4:	f2850513          	addi	a0,a0,-216 # 80009508 <CONSOLE_STATUS+0x4f8>
    800035e8:	00002097          	auipc	ra,0x2
    800035ec:	c44080e7          	jalr	-956(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035f0:	0014849b          	addiw	s1,s1,1
    800035f4:	0ff4f493          	andi	s1,s1,255
    800035f8:	00500793          	li	a5,5
    800035fc:	fc97f0e3          	bgeu	a5,s1,800035bc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003600:	00006517          	auipc	a0,0x6
    80003604:	c8850513          	addi	a0,a0,-888 # 80009288 <CONSOLE_STATUS+0x278>
    80003608:	00002097          	auipc	ra,0x2
    8000360c:	c24080e7          	jalr	-988(ra) # 8000522c <_Z11printStringPKc>
    finishedC = true;
    80003610:	00100793          	li	a5,1
    80003614:	00008717          	auipc	a4,0x8
    80003618:	fef70b23          	sb	a5,-10(a4) # 8000b60a <_ZL9finishedC>
    thread_dispatch();
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	df8080e7          	jalr	-520(ra) # 80001414 <_Z15thread_dispatchv>
}
    80003624:	01813083          	ld	ra,24(sp)
    80003628:	01013403          	ld	s0,16(sp)
    8000362c:	00813483          	ld	s1,8(sp)
    80003630:	00013903          	ld	s2,0(sp)
    80003634:	02010113          	addi	sp,sp,32
    80003638:	00008067          	ret

000000008000363c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000363c:	fe010113          	addi	sp,sp,-32
    80003640:	00113c23          	sd	ra,24(sp)
    80003644:	00813823          	sd	s0,16(sp)
    80003648:	00913423          	sd	s1,8(sp)
    8000364c:	01213023          	sd	s2,0(sp)
    80003650:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003654:	00a00493          	li	s1,10
    80003658:	0400006f          	j	80003698 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000365c:	00006517          	auipc	a0,0x6
    80003660:	c7c50513          	addi	a0,a0,-900 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80003664:	00002097          	auipc	ra,0x2
    80003668:	bc8080e7          	jalr	-1080(ra) # 8000522c <_Z11printStringPKc>
    8000366c:	00000613          	li	a2,0
    80003670:	00a00593          	li	a1,10
    80003674:	00048513          	mv	a0,s1
    80003678:	00002097          	auipc	ra,0x2
    8000367c:	d64080e7          	jalr	-668(ra) # 800053dc <_Z8printIntiii>
    80003680:	00006517          	auipc	a0,0x6
    80003684:	e8850513          	addi	a0,a0,-376 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003688:	00002097          	auipc	ra,0x2
    8000368c:	ba4080e7          	jalr	-1116(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003690:	0014849b          	addiw	s1,s1,1
    80003694:	0ff4f493          	andi	s1,s1,255
    80003698:	00c00793          	li	a5,12
    8000369c:	fc97f0e3          	bgeu	a5,s1,8000365c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800036a0:	00006517          	auipc	a0,0x6
    800036a4:	c4050513          	addi	a0,a0,-960 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	b84080e7          	jalr	-1148(ra) # 8000522c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036b0:	00500313          	li	t1,5
    thread_dispatch();
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	d60080e7          	jalr	-672(ra) # 80001414 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036bc:	01000513          	li	a0,16
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	be8080e7          	jalr	-1048(ra) # 800032a8 <_ZL9fibonaccim>
    800036c8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036cc:	00006517          	auipc	a0,0x6
    800036d0:	c2450513          	addi	a0,a0,-988 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800036d4:	00002097          	auipc	ra,0x2
    800036d8:	b58080e7          	jalr	-1192(ra) # 8000522c <_Z11printStringPKc>
    800036dc:	00000613          	li	a2,0
    800036e0:	00a00593          	li	a1,10
    800036e4:	0009051b          	sext.w	a0,s2
    800036e8:	00002097          	auipc	ra,0x2
    800036ec:	cf4080e7          	jalr	-780(ra) # 800053dc <_Z8printIntiii>
    800036f0:	00006517          	auipc	a0,0x6
    800036f4:	e1850513          	addi	a0,a0,-488 # 80009508 <CONSOLE_STATUS+0x4f8>
    800036f8:	00002097          	auipc	ra,0x2
    800036fc:	b34080e7          	jalr	-1228(ra) # 8000522c <_Z11printStringPKc>
    80003700:	0400006f          	j	80003740 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003704:	00006517          	auipc	a0,0x6
    80003708:	bd450513          	addi	a0,a0,-1068 # 800092d8 <CONSOLE_STATUS+0x2c8>
    8000370c:	00002097          	auipc	ra,0x2
    80003710:	b20080e7          	jalr	-1248(ra) # 8000522c <_Z11printStringPKc>
    80003714:	00000613          	li	a2,0
    80003718:	00a00593          	li	a1,10
    8000371c:	00048513          	mv	a0,s1
    80003720:	00002097          	auipc	ra,0x2
    80003724:	cbc080e7          	jalr	-836(ra) # 800053dc <_Z8printIntiii>
    80003728:	00006517          	auipc	a0,0x6
    8000372c:	de050513          	addi	a0,a0,-544 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003730:	00002097          	auipc	ra,0x2
    80003734:	afc080e7          	jalr	-1284(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003738:	0014849b          	addiw	s1,s1,1
    8000373c:	0ff4f493          	andi	s1,s1,255
    80003740:	00f00793          	li	a5,15
    80003744:	fc97f0e3          	bgeu	a5,s1,80003704 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003748:	00006517          	auipc	a0,0x6
    8000374c:	bb850513          	addi	a0,a0,-1096 # 80009300 <CONSOLE_STATUS+0x2f0>
    80003750:	00002097          	auipc	ra,0x2
    80003754:	adc080e7          	jalr	-1316(ra) # 8000522c <_Z11printStringPKc>
    finishedD = true;
    80003758:	00100793          	li	a5,1
    8000375c:	00008717          	auipc	a4,0x8
    80003760:	eaf707a3          	sb	a5,-337(a4) # 8000b60b <_ZL9finishedD>
    thread_dispatch();
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	cb0080e7          	jalr	-848(ra) # 80001414 <_Z15thread_dispatchv>
}
    8000376c:	01813083          	ld	ra,24(sp)
    80003770:	01013403          	ld	s0,16(sp)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	00013903          	ld	s2,0(sp)
    8000377c:	02010113          	addi	sp,sp,32
    80003780:	00008067          	ret

0000000080003784 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003784:	fc010113          	addi	sp,sp,-64
    80003788:	02113c23          	sd	ra,56(sp)
    8000378c:	02813823          	sd	s0,48(sp)
    80003790:	02913423          	sd	s1,40(sp)
    80003794:	03213023          	sd	s2,32(sp)
    80003798:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000379c:	02000513          	li	a0,32
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	568080e7          	jalr	1384(ra) # 80001d08 <_Znwm>
    800037a8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800037ac:	fffff097          	auipc	ra,0xfffff
    800037b0:	bb4080e7          	jalr	-1100(ra) # 80002360 <_ZN6ThreadC1Ev>
    800037b4:	00008797          	auipc	a5,0x8
    800037b8:	bec78793          	addi	a5,a5,-1044 # 8000b3a0 <_ZTV7WorkerA+0x10>
    800037bc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037c0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	b4c50513          	addi	a0,a0,-1204 # 80009310 <CONSOLE_STATUS+0x300>
    800037cc:	00002097          	auipc	ra,0x2
    800037d0:	a60080e7          	jalr	-1440(ra) # 8000522c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800037d4:	02000513          	li	a0,32
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	530080e7          	jalr	1328(ra) # 80001d08 <_Znwm>
    800037e0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	b7c080e7          	jalr	-1156(ra) # 80002360 <_ZN6ThreadC1Ev>
    800037ec:	00008797          	auipc	a5,0x8
    800037f0:	bdc78793          	addi	a5,a5,-1060 # 8000b3c8 <_ZTV7WorkerB+0x10>
    800037f4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800037f8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800037fc:	00006517          	auipc	a0,0x6
    80003800:	b2c50513          	addi	a0,a0,-1236 # 80009328 <CONSOLE_STATUS+0x318>
    80003804:	00002097          	auipc	ra,0x2
    80003808:	a28080e7          	jalr	-1496(ra) # 8000522c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000380c:	02000513          	li	a0,32
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	4f8080e7          	jalr	1272(ra) # 80001d08 <_Znwm>
    80003818:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000381c:	fffff097          	auipc	ra,0xfffff
    80003820:	b44080e7          	jalr	-1212(ra) # 80002360 <_ZN6ThreadC1Ev>
    80003824:	00008797          	auipc	a5,0x8
    80003828:	bcc78793          	addi	a5,a5,-1076 # 8000b3f0 <_ZTV7WorkerC+0x10>
    8000382c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003830:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003834:	00006517          	auipc	a0,0x6
    80003838:	b0c50513          	addi	a0,a0,-1268 # 80009340 <CONSOLE_STATUS+0x330>
    8000383c:	00002097          	auipc	ra,0x2
    80003840:	9f0080e7          	jalr	-1552(ra) # 8000522c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003844:	02000513          	li	a0,32
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	4c0080e7          	jalr	1216(ra) # 80001d08 <_Znwm>
    80003850:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	b0c080e7          	jalr	-1268(ra) # 80002360 <_ZN6ThreadC1Ev>
    8000385c:	00008797          	auipc	a5,0x8
    80003860:	bbc78793          	addi	a5,a5,-1092 # 8000b418 <_ZTV7WorkerD+0x10>
    80003864:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003868:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000386c:	00006517          	auipc	a0,0x6
    80003870:	aec50513          	addi	a0,a0,-1300 # 80009358 <CONSOLE_STATUS+0x348>
    80003874:	00002097          	auipc	ra,0x2
    80003878:	9b8080e7          	jalr	-1608(ra) # 8000522c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000387c:	00000493          	li	s1,0
    80003880:	00300793          	li	a5,3
    80003884:	0297c663          	blt	a5,s1,800038b0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003888:	00349793          	slli	a5,s1,0x3
    8000388c:	fe040713          	addi	a4,s0,-32
    80003890:	00f707b3          	add	a5,a4,a5
    80003894:	fe07b503          	ld	a0,-32(a5)
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	b00080e7          	jalr	-1280(ra) # 80002398 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800038a0:	0014849b          	addiw	s1,s1,1
    800038a4:	fddff06f          	j	80003880 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	a60080e7          	jalr	-1440(ra) # 80002308 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038b0:	00008797          	auipc	a5,0x8
    800038b4:	d587c783          	lbu	a5,-680(a5) # 8000b608 <_ZL9finishedA>
    800038b8:	fe0788e3          	beqz	a5,800038a8 <_Z20Threads_CPP_API_testv+0x124>
    800038bc:	00008797          	auipc	a5,0x8
    800038c0:	d4d7c783          	lbu	a5,-691(a5) # 8000b609 <_ZL9finishedB>
    800038c4:	fe0782e3          	beqz	a5,800038a8 <_Z20Threads_CPP_API_testv+0x124>
    800038c8:	00008797          	auipc	a5,0x8
    800038cc:	d427c783          	lbu	a5,-702(a5) # 8000b60a <_ZL9finishedC>
    800038d0:	fc078ce3          	beqz	a5,800038a8 <_Z20Threads_CPP_API_testv+0x124>
    800038d4:	00008797          	auipc	a5,0x8
    800038d8:	d377c783          	lbu	a5,-713(a5) # 8000b60b <_ZL9finishedD>
    800038dc:	fc0786e3          	beqz	a5,800038a8 <_Z20Threads_CPP_API_testv+0x124>
    800038e0:	fc040493          	addi	s1,s0,-64
    800038e4:	0080006f          	j	800038ec <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800038e8:	00848493          	addi	s1,s1,8
    800038ec:	fe040793          	addi	a5,s0,-32
    800038f0:	08f48663          	beq	s1,a5,8000397c <_Z20Threads_CPP_API_testv+0x1f8>
    800038f4:	0004b503          	ld	a0,0(s1)
    800038f8:	fe0508e3          	beqz	a0,800038e8 <_Z20Threads_CPP_API_testv+0x164>
    800038fc:	00053783          	ld	a5,0(a0)
    80003900:	0087b783          	ld	a5,8(a5)
    80003904:	000780e7          	jalr	a5
    80003908:	fe1ff06f          	j	800038e8 <_Z20Threads_CPP_API_testv+0x164>
    8000390c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003910:	00048513          	mv	a0,s1
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	4f4080e7          	jalr	1268(ra) # 80001e08 <_ZdlPv>
    8000391c:	00090513          	mv	a0,s2
    80003920:	00009097          	auipc	ra,0x9
    80003924:	df8080e7          	jalr	-520(ra) # 8000c718 <_Unwind_Resume>
    80003928:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000392c:	00048513          	mv	a0,s1
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	4d8080e7          	jalr	1240(ra) # 80001e08 <_ZdlPv>
    80003938:	00090513          	mv	a0,s2
    8000393c:	00009097          	auipc	ra,0x9
    80003940:	ddc080e7          	jalr	-548(ra) # 8000c718 <_Unwind_Resume>
    80003944:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003948:	00048513          	mv	a0,s1
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	4bc080e7          	jalr	1212(ra) # 80001e08 <_ZdlPv>
    80003954:	00090513          	mv	a0,s2
    80003958:	00009097          	auipc	ra,0x9
    8000395c:	dc0080e7          	jalr	-576(ra) # 8000c718 <_Unwind_Resume>
    80003960:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003964:	00048513          	mv	a0,s1
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	4a0080e7          	jalr	1184(ra) # 80001e08 <_ZdlPv>
    80003970:	00090513          	mv	a0,s2
    80003974:	00009097          	auipc	ra,0x9
    80003978:	da4080e7          	jalr	-604(ra) # 8000c718 <_Unwind_Resume>
}
    8000397c:	03813083          	ld	ra,56(sp)
    80003980:	03013403          	ld	s0,48(sp)
    80003984:	02813483          	ld	s1,40(sp)
    80003988:	02013903          	ld	s2,32(sp)
    8000398c:	04010113          	addi	sp,sp,64
    80003990:	00008067          	ret

0000000080003994 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003994:	ff010113          	addi	sp,sp,-16
    80003998:	00113423          	sd	ra,8(sp)
    8000399c:	00813023          	sd	s0,0(sp)
    800039a0:	01010413          	addi	s0,sp,16
    800039a4:	00008797          	auipc	a5,0x8
    800039a8:	9fc78793          	addi	a5,a5,-1540 # 8000b3a0 <_ZTV7WorkerA+0x10>
    800039ac:	00f53023          	sd	a5,0(a0)
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	7f4080e7          	jalr	2036(ra) # 800021a4 <_ZN6ThreadD1Ev>
    800039b8:	00813083          	ld	ra,8(sp)
    800039bc:	00013403          	ld	s0,0(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret

00000000800039c8 <_ZN7WorkerAD0Ev>:
    800039c8:	fe010113          	addi	sp,sp,-32
    800039cc:	00113c23          	sd	ra,24(sp)
    800039d0:	00813823          	sd	s0,16(sp)
    800039d4:	00913423          	sd	s1,8(sp)
    800039d8:	02010413          	addi	s0,sp,32
    800039dc:	00050493          	mv	s1,a0
    800039e0:	00008797          	auipc	a5,0x8
    800039e4:	9c078793          	addi	a5,a5,-1600 # 8000b3a0 <_ZTV7WorkerA+0x10>
    800039e8:	00f53023          	sd	a5,0(a0)
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	7b8080e7          	jalr	1976(ra) # 800021a4 <_ZN6ThreadD1Ev>
    800039f4:	00048513          	mv	a0,s1
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	410080e7          	jalr	1040(ra) # 80001e08 <_ZdlPv>
    80003a00:	01813083          	ld	ra,24(sp)
    80003a04:	01013403          	ld	s0,16(sp)
    80003a08:	00813483          	ld	s1,8(sp)
    80003a0c:	02010113          	addi	sp,sp,32
    80003a10:	00008067          	ret

0000000080003a14 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003a14:	ff010113          	addi	sp,sp,-16
    80003a18:	00113423          	sd	ra,8(sp)
    80003a1c:	00813023          	sd	s0,0(sp)
    80003a20:	01010413          	addi	s0,sp,16
    80003a24:	00008797          	auipc	a5,0x8
    80003a28:	9a478793          	addi	a5,a5,-1628 # 8000b3c8 <_ZTV7WorkerB+0x10>
    80003a2c:	00f53023          	sd	a5,0(a0)
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	774080e7          	jalr	1908(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80003a38:	00813083          	ld	ra,8(sp)
    80003a3c:	00013403          	ld	s0,0(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <_ZN7WorkerBD0Ev>:
    80003a48:	fe010113          	addi	sp,sp,-32
    80003a4c:	00113c23          	sd	ra,24(sp)
    80003a50:	00813823          	sd	s0,16(sp)
    80003a54:	00913423          	sd	s1,8(sp)
    80003a58:	02010413          	addi	s0,sp,32
    80003a5c:	00050493          	mv	s1,a0
    80003a60:	00008797          	auipc	a5,0x8
    80003a64:	96878793          	addi	a5,a5,-1688 # 8000b3c8 <_ZTV7WorkerB+0x10>
    80003a68:	00f53023          	sd	a5,0(a0)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	738080e7          	jalr	1848(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80003a74:	00048513          	mv	a0,s1
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	390080e7          	jalr	912(ra) # 80001e08 <_ZdlPv>
    80003a80:	01813083          	ld	ra,24(sp)
    80003a84:	01013403          	ld	s0,16(sp)
    80003a88:	00813483          	ld	s1,8(sp)
    80003a8c:	02010113          	addi	sp,sp,32
    80003a90:	00008067          	ret

0000000080003a94 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a94:	ff010113          	addi	sp,sp,-16
    80003a98:	00113423          	sd	ra,8(sp)
    80003a9c:	00813023          	sd	s0,0(sp)
    80003aa0:	01010413          	addi	s0,sp,16
    80003aa4:	00008797          	auipc	a5,0x8
    80003aa8:	94c78793          	addi	a5,a5,-1716 # 8000b3f0 <_ZTV7WorkerC+0x10>
    80003aac:	00f53023          	sd	a5,0(a0)
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	6f4080e7          	jalr	1780(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80003ab8:	00813083          	ld	ra,8(sp)
    80003abc:	00013403          	ld	s0,0(sp)
    80003ac0:	01010113          	addi	sp,sp,16
    80003ac4:	00008067          	ret

0000000080003ac8 <_ZN7WorkerCD0Ev>:
    80003ac8:	fe010113          	addi	sp,sp,-32
    80003acc:	00113c23          	sd	ra,24(sp)
    80003ad0:	00813823          	sd	s0,16(sp)
    80003ad4:	00913423          	sd	s1,8(sp)
    80003ad8:	02010413          	addi	s0,sp,32
    80003adc:	00050493          	mv	s1,a0
    80003ae0:	00008797          	auipc	a5,0x8
    80003ae4:	91078793          	addi	a5,a5,-1776 # 8000b3f0 <_ZTV7WorkerC+0x10>
    80003ae8:	00f53023          	sd	a5,0(a0)
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	6b8080e7          	jalr	1720(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80003af4:	00048513          	mv	a0,s1
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	310080e7          	jalr	784(ra) # 80001e08 <_ZdlPv>
    80003b00:	01813083          	ld	ra,24(sp)
    80003b04:	01013403          	ld	s0,16(sp)
    80003b08:	00813483          	ld	s1,8(sp)
    80003b0c:	02010113          	addi	sp,sp,32
    80003b10:	00008067          	ret

0000000080003b14 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003b14:	ff010113          	addi	sp,sp,-16
    80003b18:	00113423          	sd	ra,8(sp)
    80003b1c:	00813023          	sd	s0,0(sp)
    80003b20:	01010413          	addi	s0,sp,16
    80003b24:	00008797          	auipc	a5,0x8
    80003b28:	8f478793          	addi	a5,a5,-1804 # 8000b418 <_ZTV7WorkerD+0x10>
    80003b2c:	00f53023          	sd	a5,0(a0)
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	674080e7          	jalr	1652(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80003b38:	00813083          	ld	ra,8(sp)
    80003b3c:	00013403          	ld	s0,0(sp)
    80003b40:	01010113          	addi	sp,sp,16
    80003b44:	00008067          	ret

0000000080003b48 <_ZN7WorkerDD0Ev>:
    80003b48:	fe010113          	addi	sp,sp,-32
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	00813823          	sd	s0,16(sp)
    80003b54:	00913423          	sd	s1,8(sp)
    80003b58:	02010413          	addi	s0,sp,32
    80003b5c:	00050493          	mv	s1,a0
    80003b60:	00008797          	auipc	a5,0x8
    80003b64:	8b878793          	addi	a5,a5,-1864 # 8000b418 <_ZTV7WorkerD+0x10>
    80003b68:	00f53023          	sd	a5,0(a0)
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	638080e7          	jalr	1592(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80003b74:	00048513          	mv	a0,s1
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	290080e7          	jalr	656(ra) # 80001e08 <_ZdlPv>
    80003b80:	01813083          	ld	ra,24(sp)
    80003b84:	01013403          	ld	s0,16(sp)
    80003b88:	00813483          	ld	s1,8(sp)
    80003b8c:	02010113          	addi	sp,sp,32
    80003b90:	00008067          	ret

0000000080003b94 <_ZN7WorkerA3runEv>:
    void run() override {
    80003b94:	ff010113          	addi	sp,sp,-16
    80003b98:	00113423          	sd	ra,8(sp)
    80003b9c:	00813023          	sd	s0,0(sp)
    80003ba0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003ba4:	00000593          	li	a1,0
    80003ba8:	fffff097          	auipc	ra,0xfffff
    80003bac:	774080e7          	jalr	1908(ra) # 8000331c <_ZN7WorkerA11workerBodyAEPv>
    }
    80003bb0:	00813083          	ld	ra,8(sp)
    80003bb4:	00013403          	ld	s0,0(sp)
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZN7WorkerB3runEv>:
    void run() override {
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00113423          	sd	ra,8(sp)
    80003bc8:	00813023          	sd	s0,0(sp)
    80003bcc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003bd0:	00000593          	li	a1,0
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	814080e7          	jalr	-2028(ra) # 800033e8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003bdc:	00813083          	ld	ra,8(sp)
    80003be0:	00013403          	ld	s0,0(sp)
    80003be4:	01010113          	addi	sp,sp,16
    80003be8:	00008067          	ret

0000000080003bec <_ZN7WorkerC3runEv>:
    void run() override {
    80003bec:	ff010113          	addi	sp,sp,-16
    80003bf0:	00113423          	sd	ra,8(sp)
    80003bf4:	00813023          	sd	s0,0(sp)
    80003bf8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003bfc:	00000593          	li	a1,0
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	8bc080e7          	jalr	-1860(ra) # 800034bc <_ZN7WorkerC11workerBodyCEPv>
    }
    80003c08:	00813083          	ld	ra,8(sp)
    80003c0c:	00013403          	ld	s0,0(sp)
    80003c10:	01010113          	addi	sp,sp,16
    80003c14:	00008067          	ret

0000000080003c18 <_ZN7WorkerD3runEv>:
    void run() override {
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00113423          	sd	ra,8(sp)
    80003c20:	00813023          	sd	s0,0(sp)
    80003c24:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c28:	00000593          	li	a1,0
    80003c2c:	00000097          	auipc	ra,0x0
    80003c30:	a10080e7          	jalr	-1520(ra) # 8000363c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c34:	00813083          	ld	ra,8(sp)
    80003c38:	00013403          	ld	s0,0(sp)
    80003c3c:	01010113          	addi	sp,sp,16
    80003c40:	00008067          	ret

0000000080003c44 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c44:	f8010113          	addi	sp,sp,-128
    80003c48:	06113c23          	sd	ra,120(sp)
    80003c4c:	06813823          	sd	s0,112(sp)
    80003c50:	06913423          	sd	s1,104(sp)
    80003c54:	07213023          	sd	s2,96(sp)
    80003c58:	05313c23          	sd	s3,88(sp)
    80003c5c:	05413823          	sd	s4,80(sp)
    80003c60:	05513423          	sd	s5,72(sp)
    80003c64:	05613023          	sd	s6,64(sp)
    80003c68:	03713c23          	sd	s7,56(sp)
    80003c6c:	03813823          	sd	s8,48(sp)
    80003c70:	03913423          	sd	s9,40(sp)
    80003c74:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c78:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c7c:	00005517          	auipc	a0,0x5
    80003c80:	52450513          	addi	a0,a0,1316 # 800091a0 <CONSOLE_STATUS+0x190>
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	5a8080e7          	jalr	1448(ra) # 8000522c <_Z11printStringPKc>
    getString(input, 30);
    80003c8c:	01e00593          	li	a1,30
    80003c90:	f8040493          	addi	s1,s0,-128
    80003c94:	00048513          	mv	a0,s1
    80003c98:	00001097          	auipc	ra,0x1
    80003c9c:	61c080e7          	jalr	1564(ra) # 800052b4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	00001097          	auipc	ra,0x1
    80003ca8:	6e8080e7          	jalr	1768(ra) # 8000538c <_Z11stringToIntPKc>
    80003cac:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003cb0:	00005517          	auipc	a0,0x5
    80003cb4:	51050513          	addi	a0,a0,1296 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	574080e7          	jalr	1396(ra) # 8000522c <_Z11printStringPKc>
    getString(input, 30);
    80003cc0:	01e00593          	li	a1,30
    80003cc4:	00048513          	mv	a0,s1
    80003cc8:	00001097          	auipc	ra,0x1
    80003ccc:	5ec080e7          	jalr	1516(ra) # 800052b4 <_Z9getStringPci>
    n = stringToInt(input);
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	6b8080e7          	jalr	1720(ra) # 8000538c <_Z11stringToIntPKc>
    80003cdc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003ce0:	00005517          	auipc	a0,0x5
    80003ce4:	50050513          	addi	a0,a0,1280 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003ce8:	00001097          	auipc	ra,0x1
    80003cec:	544080e7          	jalr	1348(ra) # 8000522c <_Z11printStringPKc>
    printInt(threadNum);
    80003cf0:	00000613          	li	a2,0
    80003cf4:	00a00593          	li	a1,10
    80003cf8:	00098513          	mv	a0,s3
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	6e0080e7          	jalr	1760(ra) # 800053dc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003d04:	00005517          	auipc	a0,0x5
    80003d08:	4f450513          	addi	a0,a0,1268 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	520080e7          	jalr	1312(ra) # 8000522c <_Z11printStringPKc>
    printInt(n);
    80003d14:	00000613          	li	a2,0
    80003d18:	00a00593          	li	a1,10
    80003d1c:	00048513          	mv	a0,s1
    80003d20:	00001097          	auipc	ra,0x1
    80003d24:	6bc080e7          	jalr	1724(ra) # 800053dc <_Z8printIntiii>
    printString(".\n");
    80003d28:	00005517          	auipc	a0,0x5
    80003d2c:	4e850513          	addi	a0,a0,1256 # 80009210 <CONSOLE_STATUS+0x200>
    80003d30:	00001097          	auipc	ra,0x1
    80003d34:	4fc080e7          	jalr	1276(ra) # 8000522c <_Z11printStringPKc>
    if (threadNum > n) {
    80003d38:	0334c463          	blt	s1,s3,80003d60 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d3c:	03305c63          	blez	s3,80003d74 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d40:	03800513          	li	a0,56
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	fc4080e7          	jalr	-60(ra) # 80001d08 <_Znwm>
    80003d4c:	00050a93          	mv	s5,a0
    80003d50:	00048593          	mv	a1,s1
    80003d54:	00001097          	auipc	ra,0x1
    80003d58:	7a8080e7          	jalr	1960(ra) # 800054fc <_ZN9BufferCPPC1Ei>
    80003d5c:	0300006f          	j	80003d8c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d60:	00005517          	auipc	a0,0x5
    80003d64:	4b850513          	addi	a0,a0,1208 # 80009218 <CONSOLE_STATUS+0x208>
    80003d68:	00001097          	auipc	ra,0x1
    80003d6c:	4c4080e7          	jalr	1220(ra) # 8000522c <_Z11printStringPKc>
        return;
    80003d70:	0140006f          	j	80003d84 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d74:	00005517          	auipc	a0,0x5
    80003d78:	4e450513          	addi	a0,a0,1252 # 80009258 <CONSOLE_STATUS+0x248>
    80003d7c:	00001097          	auipc	ra,0x1
    80003d80:	4b0080e7          	jalr	1200(ra) # 8000522c <_Z11printStringPKc>
        return;
    80003d84:	000c0113          	mv	sp,s8
    80003d88:	2140006f          	j	80003f9c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d8c:	01000513          	li	a0,16
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	f78080e7          	jalr	-136(ra) # 80001d08 <_Znwm>
    80003d98:	00050913          	mv	s2,a0
    80003d9c:	00000593          	li	a1,0
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	654080e7          	jalr	1620(ra) # 800023f4 <_ZN9SemaphoreC1Ej>
    80003da8:	00008797          	auipc	a5,0x8
    80003dac:	8727b823          	sd	s2,-1936(a5) # 8000b618 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003db0:	00399793          	slli	a5,s3,0x3
    80003db4:	00f78793          	addi	a5,a5,15
    80003db8:	ff07f793          	andi	a5,a5,-16
    80003dbc:	40f10133          	sub	sp,sp,a5
    80003dc0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003dc4:	0019871b          	addiw	a4,s3,1
    80003dc8:	00171793          	slli	a5,a4,0x1
    80003dcc:	00e787b3          	add	a5,a5,a4
    80003dd0:	00379793          	slli	a5,a5,0x3
    80003dd4:	00f78793          	addi	a5,a5,15
    80003dd8:	ff07f793          	andi	a5,a5,-16
    80003ddc:	40f10133          	sub	sp,sp,a5
    80003de0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003de4:	00199493          	slli	s1,s3,0x1
    80003de8:	013484b3          	add	s1,s1,s3
    80003dec:	00349493          	slli	s1,s1,0x3
    80003df0:	009b04b3          	add	s1,s6,s1
    80003df4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003df8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003dfc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e00:	02800513          	li	a0,40
    80003e04:	ffffe097          	auipc	ra,0xffffe
    80003e08:	f04080e7          	jalr	-252(ra) # 80001d08 <_Znwm>
    80003e0c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	550080e7          	jalr	1360(ra) # 80002360 <_ZN6ThreadC1Ev>
    80003e18:	00007797          	auipc	a5,0x7
    80003e1c:	67878793          	addi	a5,a5,1656 # 8000b490 <_ZTV8Consumer+0x10>
    80003e20:	00fbb023          	sd	a5,0(s7)
    80003e24:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e28:	000b8513          	mv	a0,s7
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	56c080e7          	jalr	1388(ra) # 80002398 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e34:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e38:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e3c:	00007797          	auipc	a5,0x7
    80003e40:	7dc7b783          	ld	a5,2012(a5) # 8000b618 <_ZL10waitForAll>
    80003e44:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e48:	02800513          	li	a0,40
    80003e4c:	ffffe097          	auipc	ra,0xffffe
    80003e50:	ebc080e7          	jalr	-324(ra) # 80001d08 <_Znwm>
    80003e54:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	508080e7          	jalr	1288(ra) # 80002360 <_ZN6ThreadC1Ev>
    80003e60:	00007797          	auipc	a5,0x7
    80003e64:	5e078793          	addi	a5,a5,1504 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    80003e68:	00f4b023          	sd	a5,0(s1)
    80003e6c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e70:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e74:	00048513          	mv	a0,s1
    80003e78:	ffffe097          	auipc	ra,0xffffe
    80003e7c:	520080e7          	jalr	1312(ra) # 80002398 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e80:	00100913          	li	s2,1
    80003e84:	0300006f          	j	80003eb4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e88:	00007797          	auipc	a5,0x7
    80003e8c:	5e078793          	addi	a5,a5,1504 # 8000b468 <_ZTV8Producer+0x10>
    80003e90:	00fcb023          	sd	a5,0(s9)
    80003e94:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e98:	00391793          	slli	a5,s2,0x3
    80003e9c:	00fa07b3          	add	a5,s4,a5
    80003ea0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003ea4:	000c8513          	mv	a0,s9
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	4f0080e7          	jalr	1264(ra) # 80002398 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003eb0:	0019091b          	addiw	s2,s2,1
    80003eb4:	05395263          	bge	s2,s3,80003ef8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003eb8:	00191493          	slli	s1,s2,0x1
    80003ebc:	012484b3          	add	s1,s1,s2
    80003ec0:	00349493          	slli	s1,s1,0x3
    80003ec4:	009b04b3          	add	s1,s6,s1
    80003ec8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003ecc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003ed0:	00007797          	auipc	a5,0x7
    80003ed4:	7487b783          	ld	a5,1864(a5) # 8000b618 <_ZL10waitForAll>
    80003ed8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003edc:	02800513          	li	a0,40
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	e28080e7          	jalr	-472(ra) # 80001d08 <_Znwm>
    80003ee8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	474080e7          	jalr	1140(ra) # 80002360 <_ZN6ThreadC1Ev>
    80003ef4:	f95ff06f          	j	80003e88 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	410080e7          	jalr	1040(ra) # 80002308 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f00:	00000493          	li	s1,0
    80003f04:	0099ce63          	blt	s3,s1,80003f20 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003f08:	00007517          	auipc	a0,0x7
    80003f0c:	71053503          	ld	a0,1808(a0) # 8000b618 <_ZL10waitForAll>
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	51c080e7          	jalr	1308(ra) # 8000242c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f18:	0014849b          	addiw	s1,s1,1
    80003f1c:	fe9ff06f          	j	80003f04 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f20:	00007517          	auipc	a0,0x7
    80003f24:	6f853503          	ld	a0,1784(a0) # 8000b618 <_ZL10waitForAll>
    80003f28:	00050863          	beqz	a0,80003f38 <_Z20testConsumerProducerv+0x2f4>
    80003f2c:	00053783          	ld	a5,0(a0)
    80003f30:	0087b783          	ld	a5,8(a5)
    80003f34:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f38:	00000493          	li	s1,0
    80003f3c:	0080006f          	j	80003f44 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f40:	0014849b          	addiw	s1,s1,1
    80003f44:	0334d263          	bge	s1,s3,80003f68 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f48:	00349793          	slli	a5,s1,0x3
    80003f4c:	00fa07b3          	add	a5,s4,a5
    80003f50:	0007b503          	ld	a0,0(a5)
    80003f54:	fe0506e3          	beqz	a0,80003f40 <_Z20testConsumerProducerv+0x2fc>
    80003f58:	00053783          	ld	a5,0(a0)
    80003f5c:	0087b783          	ld	a5,8(a5)
    80003f60:	000780e7          	jalr	a5
    80003f64:	fddff06f          	j	80003f40 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f68:	000b8a63          	beqz	s7,80003f7c <_Z20testConsumerProducerv+0x338>
    80003f6c:	000bb783          	ld	a5,0(s7)
    80003f70:	0087b783          	ld	a5,8(a5)
    80003f74:	000b8513          	mv	a0,s7
    80003f78:	000780e7          	jalr	a5
    delete buffer;
    80003f7c:	000a8e63          	beqz	s5,80003f98 <_Z20testConsumerProducerv+0x354>
    80003f80:	000a8513          	mv	a0,s5
    80003f84:	00002097          	auipc	ra,0x2
    80003f88:	870080e7          	jalr	-1936(ra) # 800057f4 <_ZN9BufferCPPD1Ev>
    80003f8c:	000a8513          	mv	a0,s5
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	e78080e7          	jalr	-392(ra) # 80001e08 <_ZdlPv>
    80003f98:	000c0113          	mv	sp,s8
}
    80003f9c:	f8040113          	addi	sp,s0,-128
    80003fa0:	07813083          	ld	ra,120(sp)
    80003fa4:	07013403          	ld	s0,112(sp)
    80003fa8:	06813483          	ld	s1,104(sp)
    80003fac:	06013903          	ld	s2,96(sp)
    80003fb0:	05813983          	ld	s3,88(sp)
    80003fb4:	05013a03          	ld	s4,80(sp)
    80003fb8:	04813a83          	ld	s5,72(sp)
    80003fbc:	04013b03          	ld	s6,64(sp)
    80003fc0:	03813b83          	ld	s7,56(sp)
    80003fc4:	03013c03          	ld	s8,48(sp)
    80003fc8:	02813c83          	ld	s9,40(sp)
    80003fcc:	08010113          	addi	sp,sp,128
    80003fd0:	00008067          	ret
    80003fd4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003fd8:	000a8513          	mv	a0,s5
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	e2c080e7          	jalr	-468(ra) # 80001e08 <_ZdlPv>
    80003fe4:	00048513          	mv	a0,s1
    80003fe8:	00008097          	auipc	ra,0x8
    80003fec:	730080e7          	jalr	1840(ra) # 8000c718 <_Unwind_Resume>
    80003ff0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003ff4:	00090513          	mv	a0,s2
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	e10080e7          	jalr	-496(ra) # 80001e08 <_ZdlPv>
    80004000:	00048513          	mv	a0,s1
    80004004:	00008097          	auipc	ra,0x8
    80004008:	714080e7          	jalr	1812(ra) # 8000c718 <_Unwind_Resume>
    8000400c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004010:	000b8513          	mv	a0,s7
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	df4080e7          	jalr	-524(ra) # 80001e08 <_ZdlPv>
    8000401c:	00048513          	mv	a0,s1
    80004020:	00008097          	auipc	ra,0x8
    80004024:	6f8080e7          	jalr	1784(ra) # 8000c718 <_Unwind_Resume>
    80004028:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000402c:	00048513          	mv	a0,s1
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	dd8080e7          	jalr	-552(ra) # 80001e08 <_ZdlPv>
    80004038:	00090513          	mv	a0,s2
    8000403c:	00008097          	auipc	ra,0x8
    80004040:	6dc080e7          	jalr	1756(ra) # 8000c718 <_Unwind_Resume>
    80004044:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004048:	000c8513          	mv	a0,s9
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	dbc080e7          	jalr	-580(ra) # 80001e08 <_ZdlPv>
    80004054:	00048513          	mv	a0,s1
    80004058:	00008097          	auipc	ra,0x8
    8000405c:	6c0080e7          	jalr	1728(ra) # 8000c718 <_Unwind_Resume>

0000000080004060 <_ZN8Consumer3runEv>:
    void run() override {
    80004060:	fd010113          	addi	sp,sp,-48
    80004064:	02113423          	sd	ra,40(sp)
    80004068:	02813023          	sd	s0,32(sp)
    8000406c:	00913c23          	sd	s1,24(sp)
    80004070:	01213823          	sd	s2,16(sp)
    80004074:	01313423          	sd	s3,8(sp)
    80004078:	03010413          	addi	s0,sp,48
    8000407c:	00050913          	mv	s2,a0
        int i = 0;
    80004080:	00000993          	li	s3,0
    80004084:	0100006f          	j	80004094 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004088:	00a00513          	li	a0,10
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	3f8080e7          	jalr	1016(ra) # 80002484 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004094:	00007797          	auipc	a5,0x7
    80004098:	57c7a783          	lw	a5,1404(a5) # 8000b610 <_ZL9threadEnd>
    8000409c:	04079a63          	bnez	a5,800040f0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800040a0:	02093783          	ld	a5,32(s2)
    800040a4:	0087b503          	ld	a0,8(a5)
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	638080e7          	jalr	1592(ra) # 800056e0 <_ZN9BufferCPP3getEv>
            i++;
    800040b0:	0019849b          	addiw	s1,s3,1
    800040b4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800040b8:	0ff57513          	andi	a0,a0,255
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	3c8080e7          	jalr	968(ra) # 80002484 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800040c4:	05000793          	li	a5,80
    800040c8:	02f4e4bb          	remw	s1,s1,a5
    800040cc:	fc0494e3          	bnez	s1,80004094 <_ZN8Consumer3runEv+0x34>
    800040d0:	fb9ff06f          	j	80004088 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800040d4:	02093783          	ld	a5,32(s2)
    800040d8:	0087b503          	ld	a0,8(a5)
    800040dc:	00001097          	auipc	ra,0x1
    800040e0:	604080e7          	jalr	1540(ra) # 800056e0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800040e4:	0ff57513          	andi	a0,a0,255
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	39c080e7          	jalr	924(ra) # 80002484 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800040f0:	02093783          	ld	a5,32(s2)
    800040f4:	0087b503          	ld	a0,8(a5)
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	674080e7          	jalr	1652(ra) # 8000576c <_ZN9BufferCPP6getCntEv>
    80004100:	fca04ae3          	bgtz	a0,800040d4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004104:	02093783          	ld	a5,32(s2)
    80004108:	0107b503          	ld	a0,16(a5)
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	34c080e7          	jalr	844(ra) # 80002458 <_ZN9Semaphore6signalEv>
    }
    80004114:	02813083          	ld	ra,40(sp)
    80004118:	02013403          	ld	s0,32(sp)
    8000411c:	01813483          	ld	s1,24(sp)
    80004120:	01013903          	ld	s2,16(sp)
    80004124:	00813983          	ld	s3,8(sp)
    80004128:	03010113          	addi	sp,sp,48
    8000412c:	00008067          	ret

0000000080004130 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004130:	ff010113          	addi	sp,sp,-16
    80004134:	00113423          	sd	ra,8(sp)
    80004138:	00813023          	sd	s0,0(sp)
    8000413c:	01010413          	addi	s0,sp,16
    80004140:	00007797          	auipc	a5,0x7
    80004144:	35078793          	addi	a5,a5,848 # 8000b490 <_ZTV8Consumer+0x10>
    80004148:	00f53023          	sd	a5,0(a0)
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	058080e7          	jalr	88(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80004154:	00813083          	ld	ra,8(sp)
    80004158:	00013403          	ld	s0,0(sp)
    8000415c:	01010113          	addi	sp,sp,16
    80004160:	00008067          	ret

0000000080004164 <_ZN8ConsumerD0Ev>:
    80004164:	fe010113          	addi	sp,sp,-32
    80004168:	00113c23          	sd	ra,24(sp)
    8000416c:	00813823          	sd	s0,16(sp)
    80004170:	00913423          	sd	s1,8(sp)
    80004174:	02010413          	addi	s0,sp,32
    80004178:	00050493          	mv	s1,a0
    8000417c:	00007797          	auipc	a5,0x7
    80004180:	31478793          	addi	a5,a5,788 # 8000b490 <_ZTV8Consumer+0x10>
    80004184:	00f53023          	sd	a5,0(a0)
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	01c080e7          	jalr	28(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80004190:	00048513          	mv	a0,s1
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	c74080e7          	jalr	-908(ra) # 80001e08 <_ZdlPv>
    8000419c:	01813083          	ld	ra,24(sp)
    800041a0:	01013403          	ld	s0,16(sp)
    800041a4:	00813483          	ld	s1,8(sp)
    800041a8:	02010113          	addi	sp,sp,32
    800041ac:	00008067          	ret

00000000800041b0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00113423          	sd	ra,8(sp)
    800041b8:	00813023          	sd	s0,0(sp)
    800041bc:	01010413          	addi	s0,sp,16
    800041c0:	00007797          	auipc	a5,0x7
    800041c4:	28078793          	addi	a5,a5,640 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    800041c8:	00f53023          	sd	a5,0(a0)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	fd8080e7          	jalr	-40(ra) # 800021a4 <_ZN6ThreadD1Ev>
    800041d4:	00813083          	ld	ra,8(sp)
    800041d8:	00013403          	ld	s0,0(sp)
    800041dc:	01010113          	addi	sp,sp,16
    800041e0:	00008067          	ret

00000000800041e4 <_ZN16ProducerKeyboradD0Ev>:
    800041e4:	fe010113          	addi	sp,sp,-32
    800041e8:	00113c23          	sd	ra,24(sp)
    800041ec:	00813823          	sd	s0,16(sp)
    800041f0:	00913423          	sd	s1,8(sp)
    800041f4:	02010413          	addi	s0,sp,32
    800041f8:	00050493          	mv	s1,a0
    800041fc:	00007797          	auipc	a5,0x7
    80004200:	24478793          	addi	a5,a5,580 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    80004204:	00f53023          	sd	a5,0(a0)
    80004208:	ffffe097          	auipc	ra,0xffffe
    8000420c:	f9c080e7          	jalr	-100(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80004210:	00048513          	mv	a0,s1
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	bf4080e7          	jalr	-1036(ra) # 80001e08 <_ZdlPv>
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret

0000000080004230 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00113423          	sd	ra,8(sp)
    80004238:	00813023          	sd	s0,0(sp)
    8000423c:	01010413          	addi	s0,sp,16
    80004240:	00007797          	auipc	a5,0x7
    80004244:	22878793          	addi	a5,a5,552 # 8000b468 <_ZTV8Producer+0x10>
    80004248:	00f53023          	sd	a5,0(a0)
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	f58080e7          	jalr	-168(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80004254:	00813083          	ld	ra,8(sp)
    80004258:	00013403          	ld	s0,0(sp)
    8000425c:	01010113          	addi	sp,sp,16
    80004260:	00008067          	ret

0000000080004264 <_ZN8ProducerD0Ev>:
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00113c23          	sd	ra,24(sp)
    8000426c:	00813823          	sd	s0,16(sp)
    80004270:	00913423          	sd	s1,8(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	00050493          	mv	s1,a0
    8000427c:	00007797          	auipc	a5,0x7
    80004280:	1ec78793          	addi	a5,a5,492 # 8000b468 <_ZTV8Producer+0x10>
    80004284:	00f53023          	sd	a5,0(a0)
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	f1c080e7          	jalr	-228(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80004290:	00048513          	mv	a0,s1
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	b74080e7          	jalr	-1164(ra) # 80001e08 <_ZdlPv>
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	00813483          	ld	s1,8(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret

00000000800042b0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800042b0:	fe010113          	addi	sp,sp,-32
    800042b4:	00113c23          	sd	ra,24(sp)
    800042b8:	00813823          	sd	s0,16(sp)
    800042bc:	00913423          	sd	s1,8(sp)
    800042c0:	02010413          	addi	s0,sp,32
    800042c4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800042c8:	ffffd097          	auipc	ra,0xffffd
    800042cc:	254080e7          	jalr	596(ra) # 8000151c <_Z4getcv>
    800042d0:	0005059b          	sext.w	a1,a0
    800042d4:	01b00793          	li	a5,27
    800042d8:	00f58c63          	beq	a1,a5,800042f0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800042dc:	0204b783          	ld	a5,32(s1)
    800042e0:	0087b503          	ld	a0,8(a5)
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	36c080e7          	jalr	876(ra) # 80005650 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800042ec:	fddff06f          	j	800042c8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800042f0:	00100793          	li	a5,1
    800042f4:	00007717          	auipc	a4,0x7
    800042f8:	30f72e23          	sw	a5,796(a4) # 8000b610 <_ZL9threadEnd>
        td->buffer->put('!');
    800042fc:	0204b783          	ld	a5,32(s1)
    80004300:	02100593          	li	a1,33
    80004304:	0087b503          	ld	a0,8(a5)
    80004308:	00001097          	auipc	ra,0x1
    8000430c:	348080e7          	jalr	840(ra) # 80005650 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004310:	0204b783          	ld	a5,32(s1)
    80004314:	0107b503          	ld	a0,16(a5)
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	140080e7          	jalr	320(ra) # 80002458 <_ZN9Semaphore6signalEv>
    }
    80004320:	01813083          	ld	ra,24(sp)
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	00813483          	ld	s1,8(sp)
    8000432c:	02010113          	addi	sp,sp,32
    80004330:	00008067          	ret

0000000080004334 <_ZN8Producer3runEv>:
    void run() override {
    80004334:	fe010113          	addi	sp,sp,-32
    80004338:	00113c23          	sd	ra,24(sp)
    8000433c:	00813823          	sd	s0,16(sp)
    80004340:	00913423          	sd	s1,8(sp)
    80004344:	01213023          	sd	s2,0(sp)
    80004348:	02010413          	addi	s0,sp,32
    8000434c:	00050493          	mv	s1,a0
        int i = 0;
    80004350:	00000913          	li	s2,0
        while (!threadEnd) {
    80004354:	00007797          	auipc	a5,0x7
    80004358:	2bc7a783          	lw	a5,700(a5) # 8000b610 <_ZL9threadEnd>
    8000435c:	04079263          	bnez	a5,800043a0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004360:	0204b783          	ld	a5,32(s1)
    80004364:	0007a583          	lw	a1,0(a5)
    80004368:	0305859b          	addiw	a1,a1,48
    8000436c:	0087b503          	ld	a0,8(a5)
    80004370:	00001097          	auipc	ra,0x1
    80004374:	2e0080e7          	jalr	736(ra) # 80005650 <_ZN9BufferCPP3putEi>
            i++;
    80004378:	0019071b          	addiw	a4,s2,1
    8000437c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004380:	0204b783          	ld	a5,32(s1)
    80004384:	0007a783          	lw	a5,0(a5)
    80004388:	00e787bb          	addw	a5,a5,a4
    8000438c:	00500513          	li	a0,5
    80004390:	02a7e53b          	remw	a0,a5,a0
    80004394:	ffffe097          	auipc	ra,0xffffe
    80004398:	038080e7          	jalr	56(ra) # 800023cc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000439c:	fb9ff06f          	j	80004354 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800043a0:	0204b783          	ld	a5,32(s1)
    800043a4:	0107b503          	ld	a0,16(a5)
    800043a8:	ffffe097          	auipc	ra,0xffffe
    800043ac:	0b0080e7          	jalr	176(ra) # 80002458 <_ZN9Semaphore6signalEv>
    }
    800043b0:	01813083          	ld	ra,24(sp)
    800043b4:	01013403          	ld	s0,16(sp)
    800043b8:	00813483          	ld	s1,8(sp)
    800043bc:	00013903          	ld	s2,0(sp)
    800043c0:	02010113          	addi	sp,sp,32
    800043c4:	00008067          	ret

00000000800043c8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800043c8:	fe010113          	addi	sp,sp,-32
    800043cc:	00113c23          	sd	ra,24(sp)
    800043d0:	00813823          	sd	s0,16(sp)
    800043d4:	00913423          	sd	s1,8(sp)
    800043d8:	01213023          	sd	s2,0(sp)
    800043dc:	02010413          	addi	s0,sp,32
    800043e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800043e4:	00100793          	li	a5,1
    800043e8:	02a7f863          	bgeu	a5,a0,80004418 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043ec:	00a00793          	li	a5,10
    800043f0:	02f577b3          	remu	a5,a0,a5
    800043f4:	02078e63          	beqz	a5,80004430 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043f8:	fff48513          	addi	a0,s1,-1
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	fcc080e7          	jalr	-52(ra) # 800043c8 <_ZL9fibonaccim>
    80004404:	00050913          	mv	s2,a0
    80004408:	ffe48513          	addi	a0,s1,-2
    8000440c:	00000097          	auipc	ra,0x0
    80004410:	fbc080e7          	jalr	-68(ra) # 800043c8 <_ZL9fibonaccim>
    80004414:	00a90533          	add	a0,s2,a0
}
    80004418:	01813083          	ld	ra,24(sp)
    8000441c:	01013403          	ld	s0,16(sp)
    80004420:	00813483          	ld	s1,8(sp)
    80004424:	00013903          	ld	s2,0(sp)
    80004428:	02010113          	addi	sp,sp,32
    8000442c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004430:	ffffd097          	auipc	ra,0xffffd
    80004434:	fe4080e7          	jalr	-28(ra) # 80001414 <_Z15thread_dispatchv>
    80004438:	fc1ff06f          	j	800043f8 <_ZL9fibonaccim+0x30>

000000008000443c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000443c:	fe010113          	addi	sp,sp,-32
    80004440:	00113c23          	sd	ra,24(sp)
    80004444:	00813823          	sd	s0,16(sp)
    80004448:	00913423          	sd	s1,8(sp)
    8000444c:	01213023          	sd	s2,0(sp)
    80004450:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004454:	00a00493          	li	s1,10
    80004458:	0400006f          	j	80004498 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000445c:	00005517          	auipc	a0,0x5
    80004460:	e7c50513          	addi	a0,a0,-388 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80004464:	00001097          	auipc	ra,0x1
    80004468:	dc8080e7          	jalr	-568(ra) # 8000522c <_Z11printStringPKc>
    8000446c:	00000613          	li	a2,0
    80004470:	00a00593          	li	a1,10
    80004474:	00048513          	mv	a0,s1
    80004478:	00001097          	auipc	ra,0x1
    8000447c:	f64080e7          	jalr	-156(ra) # 800053dc <_Z8printIntiii>
    80004480:	00005517          	auipc	a0,0x5
    80004484:	08850513          	addi	a0,a0,136 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	da4080e7          	jalr	-604(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004490:	0014849b          	addiw	s1,s1,1
    80004494:	0ff4f493          	andi	s1,s1,255
    80004498:	00c00793          	li	a5,12
    8000449c:	fc97f0e3          	bgeu	a5,s1,8000445c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800044a0:	00005517          	auipc	a0,0x5
    800044a4:	e4050513          	addi	a0,a0,-448 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	d84080e7          	jalr	-636(ra) # 8000522c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044b0:	00500313          	li	t1,5
    thread_dispatch();
    800044b4:	ffffd097          	auipc	ra,0xffffd
    800044b8:	f60080e7          	jalr	-160(ra) # 80001414 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800044bc:	01000513          	li	a0,16
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	f08080e7          	jalr	-248(ra) # 800043c8 <_ZL9fibonaccim>
    800044c8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044cc:	00005517          	auipc	a0,0x5
    800044d0:	e2450513          	addi	a0,a0,-476 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	d58080e7          	jalr	-680(ra) # 8000522c <_Z11printStringPKc>
    800044dc:	00000613          	li	a2,0
    800044e0:	00a00593          	li	a1,10
    800044e4:	0009051b          	sext.w	a0,s2
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	ef4080e7          	jalr	-268(ra) # 800053dc <_Z8printIntiii>
    800044f0:	00005517          	auipc	a0,0x5
    800044f4:	01850513          	addi	a0,a0,24 # 80009508 <CONSOLE_STATUS+0x4f8>
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	d34080e7          	jalr	-716(ra) # 8000522c <_Z11printStringPKc>
    80004500:	0400006f          	j	80004540 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004504:	00005517          	auipc	a0,0x5
    80004508:	dd450513          	addi	a0,a0,-556 # 800092d8 <CONSOLE_STATUS+0x2c8>
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	d20080e7          	jalr	-736(ra) # 8000522c <_Z11printStringPKc>
    80004514:	00000613          	li	a2,0
    80004518:	00a00593          	li	a1,10
    8000451c:	00048513          	mv	a0,s1
    80004520:	00001097          	auipc	ra,0x1
    80004524:	ebc080e7          	jalr	-324(ra) # 800053dc <_Z8printIntiii>
    80004528:	00005517          	auipc	a0,0x5
    8000452c:	fe050513          	addi	a0,a0,-32 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004530:	00001097          	auipc	ra,0x1
    80004534:	cfc080e7          	jalr	-772(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004538:	0014849b          	addiw	s1,s1,1
    8000453c:	0ff4f493          	andi	s1,s1,255
    80004540:	00f00793          	li	a5,15
    80004544:	fc97f0e3          	bgeu	a5,s1,80004504 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004548:	00005517          	auipc	a0,0x5
    8000454c:	db850513          	addi	a0,a0,-584 # 80009300 <CONSOLE_STATUS+0x2f0>
    80004550:	00001097          	auipc	ra,0x1
    80004554:	cdc080e7          	jalr	-804(ra) # 8000522c <_Z11printStringPKc>
    finishedD = true;
    80004558:	00100793          	li	a5,1
    8000455c:	00007717          	auipc	a4,0x7
    80004560:	0cf70223          	sb	a5,196(a4) # 8000b620 <_ZL9finishedD>
    thread_dispatch();
    80004564:	ffffd097          	auipc	ra,0xffffd
    80004568:	eb0080e7          	jalr	-336(ra) # 80001414 <_Z15thread_dispatchv>
}
    8000456c:	01813083          	ld	ra,24(sp)
    80004570:	01013403          	ld	s0,16(sp)
    80004574:	00813483          	ld	s1,8(sp)
    80004578:	00013903          	ld	s2,0(sp)
    8000457c:	02010113          	addi	sp,sp,32
    80004580:	00008067          	ret

0000000080004584 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004584:	fe010113          	addi	sp,sp,-32
    80004588:	00113c23          	sd	ra,24(sp)
    8000458c:	00813823          	sd	s0,16(sp)
    80004590:	00913423          	sd	s1,8(sp)
    80004594:	01213023          	sd	s2,0(sp)
    80004598:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000459c:	00000493          	li	s1,0
    800045a0:	0400006f          	j	800045e0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800045a4:	00005517          	auipc	a0,0x5
    800045a8:	d0450513          	addi	a0,a0,-764 # 800092a8 <CONSOLE_STATUS+0x298>
    800045ac:	00001097          	auipc	ra,0x1
    800045b0:	c80080e7          	jalr	-896(ra) # 8000522c <_Z11printStringPKc>
    800045b4:	00000613          	li	a2,0
    800045b8:	00a00593          	li	a1,10
    800045bc:	00048513          	mv	a0,s1
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	e1c080e7          	jalr	-484(ra) # 800053dc <_Z8printIntiii>
    800045c8:	00005517          	auipc	a0,0x5
    800045cc:	f4050513          	addi	a0,a0,-192 # 80009508 <CONSOLE_STATUS+0x4f8>
    800045d0:	00001097          	auipc	ra,0x1
    800045d4:	c5c080e7          	jalr	-932(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045d8:	0014849b          	addiw	s1,s1,1
    800045dc:	0ff4f493          	andi	s1,s1,255
    800045e0:	00200793          	li	a5,2
    800045e4:	fc97f0e3          	bgeu	a5,s1,800045a4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800045e8:	00005517          	auipc	a0,0x5
    800045ec:	cc850513          	addi	a0,a0,-824 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	c3c080e7          	jalr	-964(ra) # 8000522c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800045f8:	00700313          	li	t1,7
    thread_dispatch();
    800045fc:	ffffd097          	auipc	ra,0xffffd
    80004600:	e18080e7          	jalr	-488(ra) # 80001414 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004604:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004608:	00005517          	auipc	a0,0x5
    8000460c:	cb850513          	addi	a0,a0,-840 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80004610:	00001097          	auipc	ra,0x1
    80004614:	c1c080e7          	jalr	-996(ra) # 8000522c <_Z11printStringPKc>
    80004618:	00000613          	li	a2,0
    8000461c:	00a00593          	li	a1,10
    80004620:	0009051b          	sext.w	a0,s2
    80004624:	00001097          	auipc	ra,0x1
    80004628:	db8080e7          	jalr	-584(ra) # 800053dc <_Z8printIntiii>
    8000462c:	00005517          	auipc	a0,0x5
    80004630:	edc50513          	addi	a0,a0,-292 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004634:	00001097          	auipc	ra,0x1
    80004638:	bf8080e7          	jalr	-1032(ra) # 8000522c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000463c:	00c00513          	li	a0,12
    80004640:	00000097          	auipc	ra,0x0
    80004644:	d88080e7          	jalr	-632(ra) # 800043c8 <_ZL9fibonaccim>
    80004648:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000464c:	00005517          	auipc	a0,0x5
    80004650:	c7c50513          	addi	a0,a0,-900 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004654:	00001097          	auipc	ra,0x1
    80004658:	bd8080e7          	jalr	-1064(ra) # 8000522c <_Z11printStringPKc>
    8000465c:	00000613          	li	a2,0
    80004660:	00a00593          	li	a1,10
    80004664:	0009051b          	sext.w	a0,s2
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	d74080e7          	jalr	-652(ra) # 800053dc <_Z8printIntiii>
    80004670:	00005517          	auipc	a0,0x5
    80004674:	e9850513          	addi	a0,a0,-360 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004678:	00001097          	auipc	ra,0x1
    8000467c:	bb4080e7          	jalr	-1100(ra) # 8000522c <_Z11printStringPKc>
    80004680:	0400006f          	j	800046c0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004684:	00005517          	auipc	a0,0x5
    80004688:	c2450513          	addi	a0,a0,-988 # 800092a8 <CONSOLE_STATUS+0x298>
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	ba0080e7          	jalr	-1120(ra) # 8000522c <_Z11printStringPKc>
    80004694:	00000613          	li	a2,0
    80004698:	00a00593          	li	a1,10
    8000469c:	00048513          	mv	a0,s1
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	d3c080e7          	jalr	-708(ra) # 800053dc <_Z8printIntiii>
    800046a8:	00005517          	auipc	a0,0x5
    800046ac:	e6050513          	addi	a0,a0,-416 # 80009508 <CONSOLE_STATUS+0x4f8>
    800046b0:	00001097          	auipc	ra,0x1
    800046b4:	b7c080e7          	jalr	-1156(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046b8:	0014849b          	addiw	s1,s1,1
    800046bc:	0ff4f493          	andi	s1,s1,255
    800046c0:	00500793          	li	a5,5
    800046c4:	fc97f0e3          	bgeu	a5,s1,80004684 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800046c8:	00005517          	auipc	a0,0x5
    800046cc:	ca850513          	addi	a0,a0,-856 # 80009370 <CONSOLE_STATUS+0x360>
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	b5c080e7          	jalr	-1188(ra) # 8000522c <_Z11printStringPKc>
    finishedC = true;
    800046d8:	00100793          	li	a5,1
    800046dc:	00007717          	auipc	a4,0x7
    800046e0:	f4f702a3          	sb	a5,-187(a4) # 8000b621 <_ZL9finishedC>
    thread_dispatch();
    800046e4:	ffffd097          	auipc	ra,0xffffd
    800046e8:	d30080e7          	jalr	-720(ra) # 80001414 <_Z15thread_dispatchv>
}
    800046ec:	01813083          	ld	ra,24(sp)
    800046f0:	01013403          	ld	s0,16(sp)
    800046f4:	00813483          	ld	s1,8(sp)
    800046f8:	00013903          	ld	s2,0(sp)
    800046fc:	02010113          	addi	sp,sp,32
    80004700:	00008067          	ret

0000000080004704 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004704:	fe010113          	addi	sp,sp,-32
    80004708:	00113c23          	sd	ra,24(sp)
    8000470c:	00813823          	sd	s0,16(sp)
    80004710:	00913423          	sd	s1,8(sp)
    80004714:	01213023          	sd	s2,0(sp)
    80004718:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000471c:	00000913          	li	s2,0
    80004720:	0380006f          	j	80004758 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	cf0080e7          	jalr	-784(ra) # 80001414 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000472c:	00148493          	addi	s1,s1,1
    80004730:	000027b7          	lui	a5,0x2
    80004734:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004738:	0097ee63          	bltu	a5,s1,80004754 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000473c:	00000713          	li	a4,0
    80004740:	000077b7          	lui	a5,0x7
    80004744:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004748:	fce7eee3          	bltu	a5,a4,80004724 <_ZL11workerBodyBPv+0x20>
    8000474c:	00170713          	addi	a4,a4,1
    80004750:	ff1ff06f          	j	80004740 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004754:	00190913          	addi	s2,s2,1
    80004758:	00f00793          	li	a5,15
    8000475c:	0527e063          	bltu	a5,s2,8000479c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004760:	00005517          	auipc	a0,0x5
    80004764:	8f050513          	addi	a0,a0,-1808 # 80009050 <CONSOLE_STATUS+0x40>
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	ac4080e7          	jalr	-1340(ra) # 8000522c <_Z11printStringPKc>
    80004770:	00000613          	li	a2,0
    80004774:	00a00593          	li	a1,10
    80004778:	0009051b          	sext.w	a0,s2
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	c60080e7          	jalr	-928(ra) # 800053dc <_Z8printIntiii>
    80004784:	00005517          	auipc	a0,0x5
    80004788:	d8450513          	addi	a0,a0,-636 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000478c:	00001097          	auipc	ra,0x1
    80004790:	aa0080e7          	jalr	-1376(ra) # 8000522c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004794:	00000493          	li	s1,0
    80004798:	f99ff06f          	j	80004730 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000479c:	00005517          	auipc	a0,0x5
    800047a0:	afc50513          	addi	a0,a0,-1284 # 80009298 <CONSOLE_STATUS+0x288>
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	a88080e7          	jalr	-1400(ra) # 8000522c <_Z11printStringPKc>
    finishedB = true;
    800047ac:	00100793          	li	a5,1
    800047b0:	00007717          	auipc	a4,0x7
    800047b4:	e6f70923          	sb	a5,-398(a4) # 8000b622 <_ZL9finishedB>
    thread_dispatch();
    800047b8:	ffffd097          	auipc	ra,0xffffd
    800047bc:	c5c080e7          	jalr	-932(ra) # 80001414 <_Z15thread_dispatchv>
}
    800047c0:	01813083          	ld	ra,24(sp)
    800047c4:	01013403          	ld	s0,16(sp)
    800047c8:	00813483          	ld	s1,8(sp)
    800047cc:	00013903          	ld	s2,0(sp)
    800047d0:	02010113          	addi	sp,sp,32
    800047d4:	00008067          	ret

00000000800047d8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800047d8:	fe010113          	addi	sp,sp,-32
    800047dc:	00113c23          	sd	ra,24(sp)
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00913423          	sd	s1,8(sp)
    800047e8:	01213023          	sd	s2,0(sp)
    800047ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047f0:	00000913          	li	s2,0
    800047f4:	0380006f          	j	8000482c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800047f8:	ffffd097          	auipc	ra,0xffffd
    800047fc:	c1c080e7          	jalr	-996(ra) # 80001414 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004800:	00148493          	addi	s1,s1,1
    80004804:	000027b7          	lui	a5,0x2
    80004808:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000480c:	0097ee63          	bltu	a5,s1,80004828 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004810:	00000713          	li	a4,0
    80004814:	000077b7          	lui	a5,0x7
    80004818:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000481c:	fce7eee3          	bltu	a5,a4,800047f8 <_ZL11workerBodyAPv+0x20>
    80004820:	00170713          	addi	a4,a4,1
    80004824:	ff1ff06f          	j	80004814 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004828:	00190913          	addi	s2,s2,1
    8000482c:	00900793          	li	a5,9
    80004830:	0527e063          	bltu	a5,s2,80004870 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004834:	00004517          	auipc	a0,0x4
    80004838:	7ec50513          	addi	a0,a0,2028 # 80009020 <CONSOLE_STATUS+0x10>
    8000483c:	00001097          	auipc	ra,0x1
    80004840:	9f0080e7          	jalr	-1552(ra) # 8000522c <_Z11printStringPKc>
    80004844:	00000613          	li	a2,0
    80004848:	00a00593          	li	a1,10
    8000484c:	0009051b          	sext.w	a0,s2
    80004850:	00001097          	auipc	ra,0x1
    80004854:	b8c080e7          	jalr	-1140(ra) # 800053dc <_Z8printIntiii>
    80004858:	00005517          	auipc	a0,0x5
    8000485c:	cb050513          	addi	a0,a0,-848 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004860:	00001097          	auipc	ra,0x1
    80004864:	9cc080e7          	jalr	-1588(ra) # 8000522c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004868:	00000493          	li	s1,0
    8000486c:	f99ff06f          	j	80004804 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004870:	00005517          	auipc	a0,0x5
    80004874:	a1850513          	addi	a0,a0,-1512 # 80009288 <CONSOLE_STATUS+0x278>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	9b4080e7          	jalr	-1612(ra) # 8000522c <_Z11printStringPKc>
    finishedA = true;
    80004880:	00100793          	li	a5,1
    80004884:	00007717          	auipc	a4,0x7
    80004888:	d8f70fa3          	sb	a5,-609(a4) # 8000b623 <_ZL9finishedA>
}
    8000488c:	01813083          	ld	ra,24(sp)
    80004890:	01013403          	ld	s0,16(sp)
    80004894:	00813483          	ld	s1,8(sp)
    80004898:	00013903          	ld	s2,0(sp)
    8000489c:	02010113          	addi	sp,sp,32
    800048a0:	00008067          	ret

00000000800048a4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800048a4:	fd010113          	addi	sp,sp,-48
    800048a8:	02113423          	sd	ra,40(sp)
    800048ac:	02813023          	sd	s0,32(sp)
    800048b0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800048b4:	00000613          	li	a2,0
    800048b8:	00000597          	auipc	a1,0x0
    800048bc:	f2058593          	addi	a1,a1,-224 # 800047d8 <_ZL11workerBodyAPv>
    800048c0:	fd040513          	addi	a0,s0,-48
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	a28080e7          	jalr	-1496(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    800048cc:	00005517          	auipc	a0,0x5
    800048d0:	a4450513          	addi	a0,a0,-1468 # 80009310 <CONSOLE_STATUS+0x300>
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	958080e7          	jalr	-1704(ra) # 8000522c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800048dc:	00000613          	li	a2,0
    800048e0:	00000597          	auipc	a1,0x0
    800048e4:	e2458593          	addi	a1,a1,-476 # 80004704 <_ZL11workerBodyBPv>
    800048e8:	fd840513          	addi	a0,s0,-40
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	a00080e7          	jalr	-1536(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    800048f4:	00005517          	auipc	a0,0x5
    800048f8:	a3450513          	addi	a0,a0,-1484 # 80009328 <CONSOLE_STATUS+0x318>
    800048fc:	00001097          	auipc	ra,0x1
    80004900:	930080e7          	jalr	-1744(ra) # 8000522c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004904:	00000613          	li	a2,0
    80004908:	00000597          	auipc	a1,0x0
    8000490c:	c7c58593          	addi	a1,a1,-900 # 80004584 <_ZL11workerBodyCPv>
    80004910:	fe040513          	addi	a0,s0,-32
    80004914:	ffffd097          	auipc	ra,0xffffd
    80004918:	9d8080e7          	jalr	-1576(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    8000491c:	00005517          	auipc	a0,0x5
    80004920:	a2450513          	addi	a0,a0,-1500 # 80009340 <CONSOLE_STATUS+0x330>
    80004924:	00001097          	auipc	ra,0x1
    80004928:	908080e7          	jalr	-1784(ra) # 8000522c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000492c:	00000613          	li	a2,0
    80004930:	00000597          	auipc	a1,0x0
    80004934:	b0c58593          	addi	a1,a1,-1268 # 8000443c <_ZL11workerBodyDPv>
    80004938:	fe840513          	addi	a0,s0,-24
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	9b0080e7          	jalr	-1616(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    80004944:	00005517          	auipc	a0,0x5
    80004948:	a1450513          	addi	a0,a0,-1516 # 80009358 <CONSOLE_STATUS+0x348>
    8000494c:	00001097          	auipc	ra,0x1
    80004950:	8e0080e7          	jalr	-1824(ra) # 8000522c <_Z11printStringPKc>
    80004954:	00c0006f          	j	80004960 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	abc080e7          	jalr	-1348(ra) # 80001414 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004960:	00007797          	auipc	a5,0x7
    80004964:	cc37c783          	lbu	a5,-829(a5) # 8000b623 <_ZL9finishedA>
    80004968:	fe0788e3          	beqz	a5,80004958 <_Z18Threads_C_API_testv+0xb4>
    8000496c:	00007797          	auipc	a5,0x7
    80004970:	cb67c783          	lbu	a5,-842(a5) # 8000b622 <_ZL9finishedB>
    80004974:	fe0782e3          	beqz	a5,80004958 <_Z18Threads_C_API_testv+0xb4>
    80004978:	00007797          	auipc	a5,0x7
    8000497c:	ca97c783          	lbu	a5,-855(a5) # 8000b621 <_ZL9finishedC>
    80004980:	fc078ce3          	beqz	a5,80004958 <_Z18Threads_C_API_testv+0xb4>
    80004984:	00007797          	auipc	a5,0x7
    80004988:	c9c7c783          	lbu	a5,-868(a5) # 8000b620 <_ZL9finishedD>
    8000498c:	fc0786e3          	beqz	a5,80004958 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004990:	02813083          	ld	ra,40(sp)
    80004994:	02013403          	ld	s0,32(sp)
    80004998:	03010113          	addi	sp,sp,48
    8000499c:	00008067          	ret

00000000800049a0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800049a0:	fd010113          	addi	sp,sp,-48
    800049a4:	02113423          	sd	ra,40(sp)
    800049a8:	02813023          	sd	s0,32(sp)
    800049ac:	00913c23          	sd	s1,24(sp)
    800049b0:	01213823          	sd	s2,16(sp)
    800049b4:	01313423          	sd	s3,8(sp)
    800049b8:	03010413          	addi	s0,sp,48
    800049bc:	00050993          	mv	s3,a0
    800049c0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800049c4:	00000913          	li	s2,0
    800049c8:	00c0006f          	j	800049d4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'e') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800049cc:	ffffe097          	auipc	ra,0xffffe
    800049d0:	93c080e7          	jalr	-1732(ra) # 80002308 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'e') {
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	b48080e7          	jalr	-1208(ra) # 8000151c <_Z4getcv>
    800049dc:	0005059b          	sext.w	a1,a0
    800049e0:	06500793          	li	a5,101
    800049e4:	02f58a63          	beq	a1,a5,80004a18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800049e8:	0084b503          	ld	a0,8(s1)
    800049ec:	00001097          	auipc	ra,0x1
    800049f0:	c64080e7          	jalr	-924(ra) # 80005650 <_ZN9BufferCPP3putEi>
        i++;
    800049f4:	0019071b          	addiw	a4,s2,1
    800049f8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800049fc:	0004a683          	lw	a3,0(s1)
    80004a00:	0026979b          	slliw	a5,a3,0x2
    80004a04:	00d787bb          	addw	a5,a5,a3
    80004a08:	0017979b          	slliw	a5,a5,0x1
    80004a0c:	02f767bb          	remw	a5,a4,a5
    80004a10:	fc0792e3          	bnez	a5,800049d4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a14:	fb9ff06f          	j	800049cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004a18:	00100793          	li	a5,1
    80004a1c:	00007717          	auipc	a4,0x7
    80004a20:	c0f72623          	sw	a5,-1012(a4) # 8000b628 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a24:	0209b783          	ld	a5,32(s3)
    80004a28:	02100593          	li	a1,33
    80004a2c:	0087b503          	ld	a0,8(a5)
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	c20080e7          	jalr	-992(ra) # 80005650 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a38:	0104b503          	ld	a0,16(s1)
    80004a3c:	ffffe097          	auipc	ra,0xffffe
    80004a40:	a1c080e7          	jalr	-1508(ra) # 80002458 <_ZN9Semaphore6signalEv>
}
    80004a44:	02813083          	ld	ra,40(sp)
    80004a48:	02013403          	ld	s0,32(sp)
    80004a4c:	01813483          	ld	s1,24(sp)
    80004a50:	01013903          	ld	s2,16(sp)
    80004a54:	00813983          	ld	s3,8(sp)
    80004a58:	03010113          	addi	sp,sp,48
    80004a5c:	00008067          	ret

0000000080004a60 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a60:	fe010113          	addi	sp,sp,-32
    80004a64:	00113c23          	sd	ra,24(sp)
    80004a68:	00813823          	sd	s0,16(sp)
    80004a6c:	00913423          	sd	s1,8(sp)
    80004a70:	01213023          	sd	s2,0(sp)
    80004a74:	02010413          	addi	s0,sp,32
    80004a78:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a7c:	00000913          	li	s2,0
    80004a80:	00c0006f          	j	80004a8c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a84:	ffffe097          	auipc	ra,0xffffe
    80004a88:	884080e7          	jalr	-1916(ra) # 80002308 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a8c:	00007797          	auipc	a5,0x7
    80004a90:	b9c7a783          	lw	a5,-1124(a5) # 8000b628 <_ZL9threadEnd>
    80004a94:	02079e63          	bnez	a5,80004ad0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a98:	0004a583          	lw	a1,0(s1)
    80004a9c:	0305859b          	addiw	a1,a1,48
    80004aa0:	0084b503          	ld	a0,8(s1)
    80004aa4:	00001097          	auipc	ra,0x1
    80004aa8:	bac080e7          	jalr	-1108(ra) # 80005650 <_ZN9BufferCPP3putEi>
        i++;
    80004aac:	0019071b          	addiw	a4,s2,1
    80004ab0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ab4:	0004a683          	lw	a3,0(s1)
    80004ab8:	0026979b          	slliw	a5,a3,0x2
    80004abc:	00d787bb          	addw	a5,a5,a3
    80004ac0:	0017979b          	slliw	a5,a5,0x1
    80004ac4:	02f767bb          	remw	a5,a4,a5
    80004ac8:	fc0792e3          	bnez	a5,80004a8c <_ZN12ProducerSync8producerEPv+0x2c>
    80004acc:	fb9ff06f          	j	80004a84 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004ad0:	0104b503          	ld	a0,16(s1)
    80004ad4:	ffffe097          	auipc	ra,0xffffe
    80004ad8:	984080e7          	jalr	-1660(ra) # 80002458 <_ZN9Semaphore6signalEv>
}
    80004adc:	01813083          	ld	ra,24(sp)
    80004ae0:	01013403          	ld	s0,16(sp)
    80004ae4:	00813483          	ld	s1,8(sp)
    80004ae8:	00013903          	ld	s2,0(sp)
    80004aec:	02010113          	addi	sp,sp,32
    80004af0:	00008067          	ret

0000000080004af4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004af4:	fd010113          	addi	sp,sp,-48
    80004af8:	02113423          	sd	ra,40(sp)
    80004afc:	02813023          	sd	s0,32(sp)
    80004b00:	00913c23          	sd	s1,24(sp)
    80004b04:	01213823          	sd	s2,16(sp)
    80004b08:	01313423          	sd	s3,8(sp)
    80004b0c:	01413023          	sd	s4,0(sp)
    80004b10:	03010413          	addi	s0,sp,48
    80004b14:	00050993          	mv	s3,a0
    80004b18:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b1c:	00000a13          	li	s4,0
    80004b20:	01c0006f          	j	80004b3c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	7e4080e7          	jalr	2020(ra) # 80002308 <_ZN6Thread8dispatchEv>
    80004b2c:	0500006f          	j	80004b7c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b30:	00a00513          	li	a0,10
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	a10080e7          	jalr	-1520(ra) # 80001544 <_Z4putcc>
    while (!threadEnd) {
    80004b3c:	00007797          	auipc	a5,0x7
    80004b40:	aec7a783          	lw	a5,-1300(a5) # 8000b628 <_ZL9threadEnd>
    80004b44:	06079263          	bnez	a5,80004ba8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b48:	00893503          	ld	a0,8(s2)
    80004b4c:	00001097          	auipc	ra,0x1
    80004b50:	b94080e7          	jalr	-1132(ra) # 800056e0 <_ZN9BufferCPP3getEv>
        i++;
    80004b54:	001a049b          	addiw	s1,s4,1
    80004b58:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b5c:	0ff57513          	andi	a0,a0,255
    80004b60:	ffffd097          	auipc	ra,0xffffd
    80004b64:	9e4080e7          	jalr	-1564(ra) # 80001544 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b68:	00092703          	lw	a4,0(s2)
    80004b6c:	0027179b          	slliw	a5,a4,0x2
    80004b70:	00e787bb          	addw	a5,a5,a4
    80004b74:	02f4e7bb          	remw	a5,s1,a5
    80004b78:	fa0786e3          	beqz	a5,80004b24 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b7c:	05000793          	li	a5,80
    80004b80:	02f4e4bb          	remw	s1,s1,a5
    80004b84:	fa049ce3          	bnez	s1,80004b3c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b88:	fa9ff06f          	j	80004b30 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b8c:	0209b783          	ld	a5,32(s3)
    80004b90:	0087b503          	ld	a0,8(a5)
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	b4c080e7          	jalr	-1204(ra) # 800056e0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b9c:	0ff57513          	andi	a0,a0,255
    80004ba0:	ffffe097          	auipc	ra,0xffffe
    80004ba4:	8e4080e7          	jalr	-1820(ra) # 80002484 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004ba8:	0209b783          	ld	a5,32(s3)
    80004bac:	0087b503          	ld	a0,8(a5)
    80004bb0:	00001097          	auipc	ra,0x1
    80004bb4:	bbc080e7          	jalr	-1092(ra) # 8000576c <_ZN9BufferCPP6getCntEv>
    80004bb8:	fca04ae3          	bgtz	a0,80004b8c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004bbc:	01093503          	ld	a0,16(s2)
    80004bc0:	ffffe097          	auipc	ra,0xffffe
    80004bc4:	898080e7          	jalr	-1896(ra) # 80002458 <_ZN9Semaphore6signalEv>
}
    80004bc8:	02813083          	ld	ra,40(sp)
    80004bcc:	02013403          	ld	s0,32(sp)
    80004bd0:	01813483          	ld	s1,24(sp)
    80004bd4:	01013903          	ld	s2,16(sp)
    80004bd8:	00813983          	ld	s3,8(sp)
    80004bdc:	00013a03          	ld	s4,0(sp)
    80004be0:	03010113          	addi	sp,sp,48
    80004be4:	00008067          	ret

0000000080004be8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004be8:	f8010113          	addi	sp,sp,-128
    80004bec:	06113c23          	sd	ra,120(sp)
    80004bf0:	06813823          	sd	s0,112(sp)
    80004bf4:	06913423          	sd	s1,104(sp)
    80004bf8:	07213023          	sd	s2,96(sp)
    80004bfc:	05313c23          	sd	s3,88(sp)
    80004c00:	05413823          	sd	s4,80(sp)
    80004c04:	05513423          	sd	s5,72(sp)
    80004c08:	05613023          	sd	s6,64(sp)
    80004c0c:	03713c23          	sd	s7,56(sp)
    80004c10:	03813823          	sd	s8,48(sp)
    80004c14:	03913423          	sd	s9,40(sp)
    80004c18:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c1c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c20:	00004517          	auipc	a0,0x4
    80004c24:	58050513          	addi	a0,a0,1408 # 800091a0 <CONSOLE_STATUS+0x190>
    80004c28:	00000097          	auipc	ra,0x0
    80004c2c:	604080e7          	jalr	1540(ra) # 8000522c <_Z11printStringPKc>
    getString(input, 30);
    80004c30:	01e00593          	li	a1,30
    80004c34:	f8040493          	addi	s1,s0,-128
    80004c38:	00048513          	mv	a0,s1
    80004c3c:	00000097          	auipc	ra,0x0
    80004c40:	678080e7          	jalr	1656(ra) # 800052b4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c44:	00048513          	mv	a0,s1
    80004c48:	00000097          	auipc	ra,0x0
    80004c4c:	744080e7          	jalr	1860(ra) # 8000538c <_Z11stringToIntPKc>
    80004c50:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c54:	00004517          	auipc	a0,0x4
    80004c58:	56c50513          	addi	a0,a0,1388 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	5d0080e7          	jalr	1488(ra) # 8000522c <_Z11printStringPKc>
    getString(input, 30);
    80004c64:	01e00593          	li	a1,30
    80004c68:	00048513          	mv	a0,s1
    80004c6c:	00000097          	auipc	ra,0x0
    80004c70:	648080e7          	jalr	1608(ra) # 800052b4 <_Z9getStringPci>
    n = stringToInt(input);
    80004c74:	00048513          	mv	a0,s1
    80004c78:	00000097          	auipc	ra,0x0
    80004c7c:	714080e7          	jalr	1812(ra) # 8000538c <_Z11stringToIntPKc>
    80004c80:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c84:	00004517          	auipc	a0,0x4
    80004c88:	55c50513          	addi	a0,a0,1372 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004c8c:	00000097          	auipc	ra,0x0
    80004c90:	5a0080e7          	jalr	1440(ra) # 8000522c <_Z11printStringPKc>
    80004c94:	00000613          	li	a2,0
    80004c98:	00a00593          	li	a1,10
    80004c9c:	00090513          	mv	a0,s2
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	73c080e7          	jalr	1852(ra) # 800053dc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004ca8:	00004517          	auipc	a0,0x4
    80004cac:	55050513          	addi	a0,a0,1360 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	57c080e7          	jalr	1404(ra) # 8000522c <_Z11printStringPKc>
    80004cb8:	00000613          	li	a2,0
    80004cbc:	00a00593          	li	a1,10
    80004cc0:	00048513          	mv	a0,s1
    80004cc4:	00000097          	auipc	ra,0x0
    80004cc8:	718080e7          	jalr	1816(ra) # 800053dc <_Z8printIntiii>
    printString(".\n");
    80004ccc:	00004517          	auipc	a0,0x4
    80004cd0:	54450513          	addi	a0,a0,1348 # 80009210 <CONSOLE_STATUS+0x200>
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	558080e7          	jalr	1368(ra) # 8000522c <_Z11printStringPKc>
    if(threadNum > n) {
    80004cdc:	0324c463          	blt	s1,s2,80004d04 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004ce0:	03205c63          	blez	s2,80004d18 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004ce4:	03800513          	li	a0,56
    80004ce8:	ffffd097          	auipc	ra,0xffffd
    80004cec:	020080e7          	jalr	32(ra) # 80001d08 <_Znwm>
    80004cf0:	00050a93          	mv	s5,a0
    80004cf4:	00048593          	mv	a1,s1
    80004cf8:	00001097          	auipc	ra,0x1
    80004cfc:	804080e7          	jalr	-2044(ra) # 800054fc <_ZN9BufferCPPC1Ei>
    80004d00:	0300006f          	j	80004d30 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d04:	00004517          	auipc	a0,0x4
    80004d08:	51450513          	addi	a0,a0,1300 # 80009218 <CONSOLE_STATUS+0x208>
    80004d0c:	00000097          	auipc	ra,0x0
    80004d10:	520080e7          	jalr	1312(ra) # 8000522c <_Z11printStringPKc>
        return;
    80004d14:	0140006f          	j	80004d28 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d18:	00004517          	auipc	a0,0x4
    80004d1c:	54050513          	addi	a0,a0,1344 # 80009258 <CONSOLE_STATUS+0x248>
    80004d20:	00000097          	auipc	ra,0x0
    80004d24:	50c080e7          	jalr	1292(ra) # 8000522c <_Z11printStringPKc>
        return;
    80004d28:	000b8113          	mv	sp,s7
    80004d2c:	2380006f          	j	80004f64 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d30:	01000513          	li	a0,16
    80004d34:	ffffd097          	auipc	ra,0xffffd
    80004d38:	fd4080e7          	jalr	-44(ra) # 80001d08 <_Znwm>
    80004d3c:	00050493          	mv	s1,a0
    80004d40:	00000593          	li	a1,0
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	6b0080e7          	jalr	1712(ra) # 800023f4 <_ZN9SemaphoreC1Ej>
    80004d4c:	00007797          	auipc	a5,0x7
    80004d50:	8e97b223          	sd	s1,-1820(a5) # 8000b630 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d54:	00391793          	slli	a5,s2,0x3
    80004d58:	00f78793          	addi	a5,a5,15
    80004d5c:	ff07f793          	andi	a5,a5,-16
    80004d60:	40f10133          	sub	sp,sp,a5
    80004d64:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d68:	0019071b          	addiw	a4,s2,1
    80004d6c:	00171793          	slli	a5,a4,0x1
    80004d70:	00e787b3          	add	a5,a5,a4
    80004d74:	00379793          	slli	a5,a5,0x3
    80004d78:	00f78793          	addi	a5,a5,15
    80004d7c:	ff07f793          	andi	a5,a5,-16
    80004d80:	40f10133          	sub	sp,sp,a5
    80004d84:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d88:	00191c13          	slli	s8,s2,0x1
    80004d8c:	012c07b3          	add	a5,s8,s2
    80004d90:	00379793          	slli	a5,a5,0x3
    80004d94:	00fa07b3          	add	a5,s4,a5
    80004d98:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d9c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004da0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004da4:	02800513          	li	a0,40
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	f60080e7          	jalr	-160(ra) # 80001d08 <_Znwm>
    80004db0:	00050b13          	mv	s6,a0
    80004db4:	012c0c33          	add	s8,s8,s2
    80004db8:	003c1c13          	slli	s8,s8,0x3
    80004dbc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004dc0:	ffffd097          	auipc	ra,0xffffd
    80004dc4:	5a0080e7          	jalr	1440(ra) # 80002360 <_ZN6ThreadC1Ev>
    80004dc8:	00006797          	auipc	a5,0x6
    80004dcc:	74078793          	addi	a5,a5,1856 # 8000b508 <_ZTV12ConsumerSync+0x10>
    80004dd0:	00fb3023          	sd	a5,0(s6)
    80004dd4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004dd8:	000b0513          	mv	a0,s6
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	5bc080e7          	jalr	1468(ra) # 80002398 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004de4:	00000493          	li	s1,0
    80004de8:	0380006f          	j	80004e20 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004dec:	00006797          	auipc	a5,0x6
    80004df0:	6f478793          	addi	a5,a5,1780 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    80004df4:	00fcb023          	sd	a5,0(s9)
    80004df8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004dfc:	00349793          	slli	a5,s1,0x3
    80004e00:	00f987b3          	add	a5,s3,a5
    80004e04:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004e08:	00349793          	slli	a5,s1,0x3
    80004e0c:	00f987b3          	add	a5,s3,a5
    80004e10:	0007b503          	ld	a0,0(a5)
    80004e14:	ffffd097          	auipc	ra,0xffffd
    80004e18:	584080e7          	jalr	1412(ra) # 80002398 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e1c:	0014849b          	addiw	s1,s1,1
    80004e20:	0b24d063          	bge	s1,s2,80004ec0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e24:	00149793          	slli	a5,s1,0x1
    80004e28:	009787b3          	add	a5,a5,s1
    80004e2c:	00379793          	slli	a5,a5,0x3
    80004e30:	00fa07b3          	add	a5,s4,a5
    80004e34:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e38:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e3c:	00006717          	auipc	a4,0x6
    80004e40:	7f473703          	ld	a4,2036(a4) # 8000b630 <_ZL10waitForAll>
    80004e44:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e48:	02905863          	blez	s1,80004e78 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e4c:	02800513          	li	a0,40
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	eb8080e7          	jalr	-328(ra) # 80001d08 <_Znwm>
    80004e58:	00050c93          	mv	s9,a0
    80004e5c:	00149c13          	slli	s8,s1,0x1
    80004e60:	009c0c33          	add	s8,s8,s1
    80004e64:	003c1c13          	slli	s8,s8,0x3
    80004e68:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e6c:	ffffd097          	auipc	ra,0xffffd
    80004e70:	4f4080e7          	jalr	1268(ra) # 80002360 <_ZN6ThreadC1Ev>
    80004e74:	f79ff06f          	j	80004dec <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e78:	02800513          	li	a0,40
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	e8c080e7          	jalr	-372(ra) # 80001d08 <_Znwm>
    80004e84:	00050c93          	mv	s9,a0
    80004e88:	00149c13          	slli	s8,s1,0x1
    80004e8c:	009c0c33          	add	s8,s8,s1
    80004e90:	003c1c13          	slli	s8,s8,0x3
    80004e94:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e98:	ffffd097          	auipc	ra,0xffffd
    80004e9c:	4c8080e7          	jalr	1224(ra) # 80002360 <_ZN6ThreadC1Ev>
    80004ea0:	00006797          	auipc	a5,0x6
    80004ea4:	61878793          	addi	a5,a5,1560 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    80004ea8:	00fcb023          	sd	a5,0(s9)
    80004eac:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004eb0:	00349793          	slli	a5,s1,0x3
    80004eb4:	00f987b3          	add	a5,s3,a5
    80004eb8:	0197b023          	sd	s9,0(a5)
    80004ebc:	f4dff06f          	j	80004e08 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004ec0:	ffffd097          	auipc	ra,0xffffd
    80004ec4:	448080e7          	jalr	1096(ra) # 80002308 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ec8:	00000493          	li	s1,0
    80004ecc:	00994e63          	blt	s2,s1,80004ee8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004ed0:	00006517          	auipc	a0,0x6
    80004ed4:	76053503          	ld	a0,1888(a0) # 8000b630 <_ZL10waitForAll>
    80004ed8:	ffffd097          	auipc	ra,0xffffd
    80004edc:	554080e7          	jalr	1364(ra) # 8000242c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ee0:	0014849b          	addiw	s1,s1,1
    80004ee4:	fe9ff06f          	j	80004ecc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004ee8:	00000493          	li	s1,0
    80004eec:	0080006f          	j	80004ef4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004ef0:	0014849b          	addiw	s1,s1,1
    80004ef4:	0324d263          	bge	s1,s2,80004f18 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004ef8:	00349793          	slli	a5,s1,0x3
    80004efc:	00f987b3          	add	a5,s3,a5
    80004f00:	0007b503          	ld	a0,0(a5)
    80004f04:	fe0506e3          	beqz	a0,80004ef0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004f08:	00053783          	ld	a5,0(a0)
    80004f0c:	0087b783          	ld	a5,8(a5)
    80004f10:	000780e7          	jalr	a5
    80004f14:	fddff06f          	j	80004ef0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004f18:	000b0a63          	beqz	s6,80004f2c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f1c:	000b3783          	ld	a5,0(s6)
    80004f20:	0087b783          	ld	a5,8(a5)
    80004f24:	000b0513          	mv	a0,s6
    80004f28:	000780e7          	jalr	a5
    delete waitForAll;
    80004f2c:	00006517          	auipc	a0,0x6
    80004f30:	70453503          	ld	a0,1796(a0) # 8000b630 <_ZL10waitForAll>
    80004f34:	00050863          	beqz	a0,80004f44 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f38:	00053783          	ld	a5,0(a0)
    80004f3c:	0087b783          	ld	a5,8(a5)
    80004f40:	000780e7          	jalr	a5
    delete buffer;
    80004f44:	000a8e63          	beqz	s5,80004f60 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f48:	000a8513          	mv	a0,s5
    80004f4c:	00001097          	auipc	ra,0x1
    80004f50:	8a8080e7          	jalr	-1880(ra) # 800057f4 <_ZN9BufferCPPD1Ev>
    80004f54:	000a8513          	mv	a0,s5
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	eb0080e7          	jalr	-336(ra) # 80001e08 <_ZdlPv>
    80004f60:	000b8113          	mv	sp,s7

}
    80004f64:	f8040113          	addi	sp,s0,-128
    80004f68:	07813083          	ld	ra,120(sp)
    80004f6c:	07013403          	ld	s0,112(sp)
    80004f70:	06813483          	ld	s1,104(sp)
    80004f74:	06013903          	ld	s2,96(sp)
    80004f78:	05813983          	ld	s3,88(sp)
    80004f7c:	05013a03          	ld	s4,80(sp)
    80004f80:	04813a83          	ld	s5,72(sp)
    80004f84:	04013b03          	ld	s6,64(sp)
    80004f88:	03813b83          	ld	s7,56(sp)
    80004f8c:	03013c03          	ld	s8,48(sp)
    80004f90:	02813c83          	ld	s9,40(sp)
    80004f94:	08010113          	addi	sp,sp,128
    80004f98:	00008067          	ret
    80004f9c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004fa0:	000a8513          	mv	a0,s5
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	e64080e7          	jalr	-412(ra) # 80001e08 <_ZdlPv>
    80004fac:	00048513          	mv	a0,s1
    80004fb0:	00007097          	auipc	ra,0x7
    80004fb4:	768080e7          	jalr	1896(ra) # 8000c718 <_Unwind_Resume>
    80004fb8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004fbc:	00048513          	mv	a0,s1
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	e48080e7          	jalr	-440(ra) # 80001e08 <_ZdlPv>
    80004fc8:	00090513          	mv	a0,s2
    80004fcc:	00007097          	auipc	ra,0x7
    80004fd0:	74c080e7          	jalr	1868(ra) # 8000c718 <_Unwind_Resume>
    80004fd4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004fd8:	000b0513          	mv	a0,s6
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	e2c080e7          	jalr	-468(ra) # 80001e08 <_ZdlPv>
    80004fe4:	00048513          	mv	a0,s1
    80004fe8:	00007097          	auipc	ra,0x7
    80004fec:	730080e7          	jalr	1840(ra) # 8000c718 <_Unwind_Resume>
    80004ff0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004ff4:	000c8513          	mv	a0,s9
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	e10080e7          	jalr	-496(ra) # 80001e08 <_ZdlPv>
    80005000:	00048513          	mv	a0,s1
    80005004:	00007097          	auipc	ra,0x7
    80005008:	714080e7          	jalr	1812(ra) # 8000c718 <_Unwind_Resume>
    8000500c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005010:	000c8513          	mv	a0,s9
    80005014:	ffffd097          	auipc	ra,0xffffd
    80005018:	df4080e7          	jalr	-524(ra) # 80001e08 <_ZdlPv>
    8000501c:	00048513          	mv	a0,s1
    80005020:	00007097          	auipc	ra,0x7
    80005024:	6f8080e7          	jalr	1784(ra) # 8000c718 <_Unwind_Resume>

0000000080005028 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005028:	ff010113          	addi	sp,sp,-16
    8000502c:	00113423          	sd	ra,8(sp)
    80005030:	00813023          	sd	s0,0(sp)
    80005034:	01010413          	addi	s0,sp,16
    80005038:	00006797          	auipc	a5,0x6
    8000503c:	4d078793          	addi	a5,a5,1232 # 8000b508 <_ZTV12ConsumerSync+0x10>
    80005040:	00f53023          	sd	a5,0(a0)
    80005044:	ffffd097          	auipc	ra,0xffffd
    80005048:	160080e7          	jalr	352(ra) # 800021a4 <_ZN6ThreadD1Ev>
    8000504c:	00813083          	ld	ra,8(sp)
    80005050:	00013403          	ld	s0,0(sp)
    80005054:	01010113          	addi	sp,sp,16
    80005058:	00008067          	ret

000000008000505c <_ZN12ConsumerSyncD0Ev>:
    8000505c:	fe010113          	addi	sp,sp,-32
    80005060:	00113c23          	sd	ra,24(sp)
    80005064:	00813823          	sd	s0,16(sp)
    80005068:	00913423          	sd	s1,8(sp)
    8000506c:	02010413          	addi	s0,sp,32
    80005070:	00050493          	mv	s1,a0
    80005074:	00006797          	auipc	a5,0x6
    80005078:	49478793          	addi	a5,a5,1172 # 8000b508 <_ZTV12ConsumerSync+0x10>
    8000507c:	00f53023          	sd	a5,0(a0)
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	124080e7          	jalr	292(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80005088:	00048513          	mv	a0,s1
    8000508c:	ffffd097          	auipc	ra,0xffffd
    80005090:	d7c080e7          	jalr	-644(ra) # 80001e08 <_ZdlPv>
    80005094:	01813083          	ld	ra,24(sp)
    80005098:	01013403          	ld	s0,16(sp)
    8000509c:	00813483          	ld	s1,8(sp)
    800050a0:	02010113          	addi	sp,sp,32
    800050a4:	00008067          	ret

00000000800050a8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800050a8:	ff010113          	addi	sp,sp,-16
    800050ac:	00113423          	sd	ra,8(sp)
    800050b0:	00813023          	sd	s0,0(sp)
    800050b4:	01010413          	addi	s0,sp,16
    800050b8:	00006797          	auipc	a5,0x6
    800050bc:	42878793          	addi	a5,a5,1064 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    800050c0:	00f53023          	sd	a5,0(a0)
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	0e0080e7          	jalr	224(ra) # 800021a4 <_ZN6ThreadD1Ev>
    800050cc:	00813083          	ld	ra,8(sp)
    800050d0:	00013403          	ld	s0,0(sp)
    800050d4:	01010113          	addi	sp,sp,16
    800050d8:	00008067          	ret

00000000800050dc <_ZN12ProducerSyncD0Ev>:
    800050dc:	fe010113          	addi	sp,sp,-32
    800050e0:	00113c23          	sd	ra,24(sp)
    800050e4:	00813823          	sd	s0,16(sp)
    800050e8:	00913423          	sd	s1,8(sp)
    800050ec:	02010413          	addi	s0,sp,32
    800050f0:	00050493          	mv	s1,a0
    800050f4:	00006797          	auipc	a5,0x6
    800050f8:	3ec78793          	addi	a5,a5,1004 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    800050fc:	00f53023          	sd	a5,0(a0)
    80005100:	ffffd097          	auipc	ra,0xffffd
    80005104:	0a4080e7          	jalr	164(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80005108:	00048513          	mv	a0,s1
    8000510c:	ffffd097          	auipc	ra,0xffffd
    80005110:	cfc080e7          	jalr	-772(ra) # 80001e08 <_ZdlPv>
    80005114:	01813083          	ld	ra,24(sp)
    80005118:	01013403          	ld	s0,16(sp)
    8000511c:	00813483          	ld	s1,8(sp)
    80005120:	02010113          	addi	sp,sp,32
    80005124:	00008067          	ret

0000000080005128 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005128:	ff010113          	addi	sp,sp,-16
    8000512c:	00113423          	sd	ra,8(sp)
    80005130:	00813023          	sd	s0,0(sp)
    80005134:	01010413          	addi	s0,sp,16
    80005138:	00006797          	auipc	a5,0x6
    8000513c:	38078793          	addi	a5,a5,896 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    80005140:	00f53023          	sd	a5,0(a0)
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	060080e7          	jalr	96(ra) # 800021a4 <_ZN6ThreadD1Ev>
    8000514c:	00813083          	ld	ra,8(sp)
    80005150:	00013403          	ld	s0,0(sp)
    80005154:	01010113          	addi	sp,sp,16
    80005158:	00008067          	ret

000000008000515c <_ZN16ProducerKeyboardD0Ev>:
    8000515c:	fe010113          	addi	sp,sp,-32
    80005160:	00113c23          	sd	ra,24(sp)
    80005164:	00813823          	sd	s0,16(sp)
    80005168:	00913423          	sd	s1,8(sp)
    8000516c:	02010413          	addi	s0,sp,32
    80005170:	00050493          	mv	s1,a0
    80005174:	00006797          	auipc	a5,0x6
    80005178:	34478793          	addi	a5,a5,836 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    8000517c:	00f53023          	sd	a5,0(a0)
    80005180:	ffffd097          	auipc	ra,0xffffd
    80005184:	024080e7          	jalr	36(ra) # 800021a4 <_ZN6ThreadD1Ev>
    80005188:	00048513          	mv	a0,s1
    8000518c:	ffffd097          	auipc	ra,0xffffd
    80005190:	c7c080e7          	jalr	-900(ra) # 80001e08 <_ZdlPv>
    80005194:	01813083          	ld	ra,24(sp)
    80005198:	01013403          	ld	s0,16(sp)
    8000519c:	00813483          	ld	s1,8(sp)
    800051a0:	02010113          	addi	sp,sp,32
    800051a4:	00008067          	ret

00000000800051a8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800051a8:	ff010113          	addi	sp,sp,-16
    800051ac:	00113423          	sd	ra,8(sp)
    800051b0:	00813023          	sd	s0,0(sp)
    800051b4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800051b8:	02053583          	ld	a1,32(a0)
    800051bc:	fffff097          	auipc	ra,0xfffff
    800051c0:	7e4080e7          	jalr	2020(ra) # 800049a0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800051c4:	00813083          	ld	ra,8(sp)
    800051c8:	00013403          	ld	s0,0(sp)
    800051cc:	01010113          	addi	sp,sp,16
    800051d0:	00008067          	ret

00000000800051d4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800051d4:	ff010113          	addi	sp,sp,-16
    800051d8:	00113423          	sd	ra,8(sp)
    800051dc:	00813023          	sd	s0,0(sp)
    800051e0:	01010413          	addi	s0,sp,16
        producer(td);
    800051e4:	02053583          	ld	a1,32(a0)
    800051e8:	00000097          	auipc	ra,0x0
    800051ec:	878080e7          	jalr	-1928(ra) # 80004a60 <_ZN12ProducerSync8producerEPv>
    }
    800051f0:	00813083          	ld	ra,8(sp)
    800051f4:	00013403          	ld	s0,0(sp)
    800051f8:	01010113          	addi	sp,sp,16
    800051fc:	00008067          	ret

0000000080005200 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005200:	ff010113          	addi	sp,sp,-16
    80005204:	00113423          	sd	ra,8(sp)
    80005208:	00813023          	sd	s0,0(sp)
    8000520c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005210:	02053583          	ld	a1,32(a0)
    80005214:	00000097          	auipc	ra,0x0
    80005218:	8e0080e7          	jalr	-1824(ra) # 80004af4 <_ZN12ConsumerSync8consumerEPv>
    }
    8000521c:	00813083          	ld	ra,8(sp)
    80005220:	00013403          	ld	s0,0(sp)
    80005224:	01010113          	addi	sp,sp,16
    80005228:	00008067          	ret

000000008000522c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000522c:	fe010113          	addi	sp,sp,-32
    80005230:	00113c23          	sd	ra,24(sp)
    80005234:	00813823          	sd	s0,16(sp)
    80005238:	00913423          	sd	s1,8(sp)
    8000523c:	02010413          	addi	s0,sp,32
    80005240:	00050493          	mv	s1,a0
    LOCK();
    80005244:	00100613          	li	a2,1
    80005248:	00000593          	li	a1,0
    8000524c:	00006517          	auipc	a0,0x6
    80005250:	3ec50513          	addi	a0,a0,1004 # 8000b638 <lockPrint>
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	fc8080e7          	jalr	-56(ra) # 8000121c <copy_and_swap>
    8000525c:	00050863          	beqz	a0,8000526c <_Z11printStringPKc+0x40>
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	1b4080e7          	jalr	436(ra) # 80001414 <_Z15thread_dispatchv>
    80005268:	fddff06f          	j	80005244 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000526c:	0004c503          	lbu	a0,0(s1)
    80005270:	00050a63          	beqz	a0,80005284 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005274:	ffffc097          	auipc	ra,0xffffc
    80005278:	2d0080e7          	jalr	720(ra) # 80001544 <_Z4putcc>
        string++;
    8000527c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005280:	fedff06f          	j	8000526c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005284:	00000613          	li	a2,0
    80005288:	00100593          	li	a1,1
    8000528c:	00006517          	auipc	a0,0x6
    80005290:	3ac50513          	addi	a0,a0,940 # 8000b638 <lockPrint>
    80005294:	ffffc097          	auipc	ra,0xffffc
    80005298:	f88080e7          	jalr	-120(ra) # 8000121c <copy_and_swap>
    8000529c:	fe0514e3          	bnez	a0,80005284 <_Z11printStringPKc+0x58>
}
    800052a0:	01813083          	ld	ra,24(sp)
    800052a4:	01013403          	ld	s0,16(sp)
    800052a8:	00813483          	ld	s1,8(sp)
    800052ac:	02010113          	addi	sp,sp,32
    800052b0:	00008067          	ret

00000000800052b4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800052b4:	fd010113          	addi	sp,sp,-48
    800052b8:	02113423          	sd	ra,40(sp)
    800052bc:	02813023          	sd	s0,32(sp)
    800052c0:	00913c23          	sd	s1,24(sp)
    800052c4:	01213823          	sd	s2,16(sp)
    800052c8:	01313423          	sd	s3,8(sp)
    800052cc:	01413023          	sd	s4,0(sp)
    800052d0:	03010413          	addi	s0,sp,48
    800052d4:	00050993          	mv	s3,a0
    800052d8:	00058a13          	mv	s4,a1
    LOCK();
    800052dc:	00100613          	li	a2,1
    800052e0:	00000593          	li	a1,0
    800052e4:	00006517          	auipc	a0,0x6
    800052e8:	35450513          	addi	a0,a0,852 # 8000b638 <lockPrint>
    800052ec:	ffffc097          	auipc	ra,0xffffc
    800052f0:	f30080e7          	jalr	-208(ra) # 8000121c <copy_and_swap>
    800052f4:	00050863          	beqz	a0,80005304 <_Z9getStringPci+0x50>
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	11c080e7          	jalr	284(ra) # 80001414 <_Z15thread_dispatchv>
    80005300:	fddff06f          	j	800052dc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005304:	00000913          	li	s2,0
    80005308:	00090493          	mv	s1,s2
    8000530c:	0019091b          	addiw	s2,s2,1
    80005310:	03495a63          	bge	s2,s4,80005344 <_Z9getStringPci+0x90>
        cc = getc();
    80005314:	ffffc097          	auipc	ra,0xffffc
    80005318:	208080e7          	jalr	520(ra) # 8000151c <_Z4getcv>
        if(cc < 1)
    8000531c:	02050463          	beqz	a0,80005344 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005320:	009984b3          	add	s1,s3,s1
    80005324:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005328:	00a00793          	li	a5,10
    8000532c:	00f50a63          	beq	a0,a5,80005340 <_Z9getStringPci+0x8c>
    80005330:	00d00793          	li	a5,13
    80005334:	fcf51ae3          	bne	a0,a5,80005308 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005338:	00090493          	mv	s1,s2
    8000533c:	0080006f          	j	80005344 <_Z9getStringPci+0x90>
    80005340:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005344:	009984b3          	add	s1,s3,s1
    80005348:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000534c:	00000613          	li	a2,0
    80005350:	00100593          	li	a1,1
    80005354:	00006517          	auipc	a0,0x6
    80005358:	2e450513          	addi	a0,a0,740 # 8000b638 <lockPrint>
    8000535c:	ffffc097          	auipc	ra,0xffffc
    80005360:	ec0080e7          	jalr	-320(ra) # 8000121c <copy_and_swap>
    80005364:	fe0514e3          	bnez	a0,8000534c <_Z9getStringPci+0x98>
    return buf;
}
    80005368:	00098513          	mv	a0,s3
    8000536c:	02813083          	ld	ra,40(sp)
    80005370:	02013403          	ld	s0,32(sp)
    80005374:	01813483          	ld	s1,24(sp)
    80005378:	01013903          	ld	s2,16(sp)
    8000537c:	00813983          	ld	s3,8(sp)
    80005380:	00013a03          	ld	s4,0(sp)
    80005384:	03010113          	addi	sp,sp,48
    80005388:	00008067          	ret

000000008000538c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000538c:	ff010113          	addi	sp,sp,-16
    80005390:	00813423          	sd	s0,8(sp)
    80005394:	01010413          	addi	s0,sp,16
    80005398:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000539c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800053a0:	0006c603          	lbu	a2,0(a3)
    800053a4:	fd06071b          	addiw	a4,a2,-48
    800053a8:	0ff77713          	andi	a4,a4,255
    800053ac:	00900793          	li	a5,9
    800053b0:	02e7e063          	bltu	a5,a4,800053d0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800053b4:	0025179b          	slliw	a5,a0,0x2
    800053b8:	00a787bb          	addw	a5,a5,a0
    800053bc:	0017979b          	slliw	a5,a5,0x1
    800053c0:	00168693          	addi	a3,a3,1
    800053c4:	00c787bb          	addw	a5,a5,a2
    800053c8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800053cc:	fd5ff06f          	j	800053a0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800053d0:	00813403          	ld	s0,8(sp)
    800053d4:	01010113          	addi	sp,sp,16
    800053d8:	00008067          	ret

00000000800053dc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800053dc:	fc010113          	addi	sp,sp,-64
    800053e0:	02113c23          	sd	ra,56(sp)
    800053e4:	02813823          	sd	s0,48(sp)
    800053e8:	02913423          	sd	s1,40(sp)
    800053ec:	03213023          	sd	s2,32(sp)
    800053f0:	01313c23          	sd	s3,24(sp)
    800053f4:	04010413          	addi	s0,sp,64
    800053f8:	00050493          	mv	s1,a0
    800053fc:	00058913          	mv	s2,a1
    80005400:	00060993          	mv	s3,a2
    LOCK();
    80005404:	00100613          	li	a2,1
    80005408:	00000593          	li	a1,0
    8000540c:	00006517          	auipc	a0,0x6
    80005410:	22c50513          	addi	a0,a0,556 # 8000b638 <lockPrint>
    80005414:	ffffc097          	auipc	ra,0xffffc
    80005418:	e08080e7          	jalr	-504(ra) # 8000121c <copy_and_swap>
    8000541c:	00050863          	beqz	a0,8000542c <_Z8printIntiii+0x50>
    80005420:	ffffc097          	auipc	ra,0xffffc
    80005424:	ff4080e7          	jalr	-12(ra) # 80001414 <_Z15thread_dispatchv>
    80005428:	fddff06f          	j	80005404 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000542c:	00098463          	beqz	s3,80005434 <_Z8printIntiii+0x58>
    80005430:	0804c463          	bltz	s1,800054b8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005434:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005438:	00000593          	li	a1,0
    }

    i = 0;
    8000543c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005440:	0009079b          	sext.w	a5,s2
    80005444:	0325773b          	remuw	a4,a0,s2
    80005448:	00048613          	mv	a2,s1
    8000544c:	0014849b          	addiw	s1,s1,1
    80005450:	02071693          	slli	a3,a4,0x20
    80005454:	0206d693          	srli	a3,a3,0x20
    80005458:	00006717          	auipc	a4,0x6
    8000545c:	0c870713          	addi	a4,a4,200 # 8000b520 <digits>
    80005460:	00d70733          	add	a4,a4,a3
    80005464:	00074683          	lbu	a3,0(a4)
    80005468:	fd040713          	addi	a4,s0,-48
    8000546c:	00c70733          	add	a4,a4,a2
    80005470:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005474:	0005071b          	sext.w	a4,a0
    80005478:	0325553b          	divuw	a0,a0,s2
    8000547c:	fcf772e3          	bgeu	a4,a5,80005440 <_Z8printIntiii+0x64>
    if(neg)
    80005480:	00058c63          	beqz	a1,80005498 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005484:	fd040793          	addi	a5,s0,-48
    80005488:	009784b3          	add	s1,a5,s1
    8000548c:	02d00793          	li	a5,45
    80005490:	fef48823          	sb	a5,-16(s1)
    80005494:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005498:	fff4849b          	addiw	s1,s1,-1
    8000549c:	0204c463          	bltz	s1,800054c4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800054a0:	fd040793          	addi	a5,s0,-48
    800054a4:	009787b3          	add	a5,a5,s1
    800054a8:	ff07c503          	lbu	a0,-16(a5)
    800054ac:	ffffc097          	auipc	ra,0xffffc
    800054b0:	098080e7          	jalr	152(ra) # 80001544 <_Z4putcc>
    800054b4:	fe5ff06f          	j	80005498 <_Z8printIntiii+0xbc>
        x = -xx;
    800054b8:	4090053b          	negw	a0,s1
        neg = 1;
    800054bc:	00100593          	li	a1,1
        x = -xx;
    800054c0:	f7dff06f          	j	8000543c <_Z8printIntiii+0x60>

    UNLOCK();
    800054c4:	00000613          	li	a2,0
    800054c8:	00100593          	li	a1,1
    800054cc:	00006517          	auipc	a0,0x6
    800054d0:	16c50513          	addi	a0,a0,364 # 8000b638 <lockPrint>
    800054d4:	ffffc097          	auipc	ra,0xffffc
    800054d8:	d48080e7          	jalr	-696(ra) # 8000121c <copy_and_swap>
    800054dc:	fe0514e3          	bnez	a0,800054c4 <_Z8printIntiii+0xe8>
    800054e0:	03813083          	ld	ra,56(sp)
    800054e4:	03013403          	ld	s0,48(sp)
    800054e8:	02813483          	ld	s1,40(sp)
    800054ec:	02013903          	ld	s2,32(sp)
    800054f0:	01813983          	ld	s3,24(sp)
    800054f4:	04010113          	addi	sp,sp,64
    800054f8:	00008067          	ret

00000000800054fc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054fc:	fd010113          	addi	sp,sp,-48
    80005500:	02113423          	sd	ra,40(sp)
    80005504:	02813023          	sd	s0,32(sp)
    80005508:	00913c23          	sd	s1,24(sp)
    8000550c:	01213823          	sd	s2,16(sp)
    80005510:	01313423          	sd	s3,8(sp)
    80005514:	03010413          	addi	s0,sp,48
    80005518:	00050493          	mv	s1,a0
    8000551c:	00058913          	mv	s2,a1
    80005520:	0015879b          	addiw	a5,a1,1
    80005524:	0007851b          	sext.w	a0,a5
    80005528:	00f4a023          	sw	a5,0(s1)
    8000552c:	0004a823          	sw	zero,16(s1)
    80005530:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005534:	00251513          	slli	a0,a0,0x2
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	d04080e7          	jalr	-764(ra) # 8000123c <_Z9mem_allocm>
    80005540:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005544:	01000513          	li	a0,16
    80005548:	ffffc097          	auipc	ra,0xffffc
    8000554c:	7c0080e7          	jalr	1984(ra) # 80001d08 <_Znwm>
    80005550:	00050993          	mv	s3,a0
    80005554:	00000593          	li	a1,0
    80005558:	ffffd097          	auipc	ra,0xffffd
    8000555c:	e9c080e7          	jalr	-356(ra) # 800023f4 <_ZN9SemaphoreC1Ej>
    80005560:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005564:	01000513          	li	a0,16
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	7a0080e7          	jalr	1952(ra) # 80001d08 <_Znwm>
    80005570:	00050993          	mv	s3,a0
    80005574:	00090593          	mv	a1,s2
    80005578:	ffffd097          	auipc	ra,0xffffd
    8000557c:	e7c080e7          	jalr	-388(ra) # 800023f4 <_ZN9SemaphoreC1Ej>
    80005580:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005584:	01000513          	li	a0,16
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	780080e7          	jalr	1920(ra) # 80001d08 <_Znwm>
    80005590:	00050913          	mv	s2,a0
    80005594:	00100593          	li	a1,1
    80005598:	ffffd097          	auipc	ra,0xffffd
    8000559c:	e5c080e7          	jalr	-420(ra) # 800023f4 <_ZN9SemaphoreC1Ej>
    800055a0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800055a4:	01000513          	li	a0,16
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	760080e7          	jalr	1888(ra) # 80001d08 <_Znwm>
    800055b0:	00050913          	mv	s2,a0
    800055b4:	00100593          	li	a1,1
    800055b8:	ffffd097          	auipc	ra,0xffffd
    800055bc:	e3c080e7          	jalr	-452(ra) # 800023f4 <_ZN9SemaphoreC1Ej>
    800055c0:	0324b823          	sd	s2,48(s1)
}
    800055c4:	02813083          	ld	ra,40(sp)
    800055c8:	02013403          	ld	s0,32(sp)
    800055cc:	01813483          	ld	s1,24(sp)
    800055d0:	01013903          	ld	s2,16(sp)
    800055d4:	00813983          	ld	s3,8(sp)
    800055d8:	03010113          	addi	sp,sp,48
    800055dc:	00008067          	ret
    800055e0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800055e4:	00098513          	mv	a0,s3
    800055e8:	ffffd097          	auipc	ra,0xffffd
    800055ec:	820080e7          	jalr	-2016(ra) # 80001e08 <_ZdlPv>
    800055f0:	00048513          	mv	a0,s1
    800055f4:	00007097          	auipc	ra,0x7
    800055f8:	124080e7          	jalr	292(ra) # 8000c718 <_Unwind_Resume>
    800055fc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005600:	00098513          	mv	a0,s3
    80005604:	ffffd097          	auipc	ra,0xffffd
    80005608:	804080e7          	jalr	-2044(ra) # 80001e08 <_ZdlPv>
    8000560c:	00048513          	mv	a0,s1
    80005610:	00007097          	auipc	ra,0x7
    80005614:	108080e7          	jalr	264(ra) # 8000c718 <_Unwind_Resume>
    80005618:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000561c:	00090513          	mv	a0,s2
    80005620:	ffffc097          	auipc	ra,0xffffc
    80005624:	7e8080e7          	jalr	2024(ra) # 80001e08 <_ZdlPv>
    80005628:	00048513          	mv	a0,s1
    8000562c:	00007097          	auipc	ra,0x7
    80005630:	0ec080e7          	jalr	236(ra) # 8000c718 <_Unwind_Resume>
    80005634:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005638:	00090513          	mv	a0,s2
    8000563c:	ffffc097          	auipc	ra,0xffffc
    80005640:	7cc080e7          	jalr	1996(ra) # 80001e08 <_ZdlPv>
    80005644:	00048513          	mv	a0,s1
    80005648:	00007097          	auipc	ra,0x7
    8000564c:	0d0080e7          	jalr	208(ra) # 8000c718 <_Unwind_Resume>

0000000080005650 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005650:	fe010113          	addi	sp,sp,-32
    80005654:	00113c23          	sd	ra,24(sp)
    80005658:	00813823          	sd	s0,16(sp)
    8000565c:	00913423          	sd	s1,8(sp)
    80005660:	01213023          	sd	s2,0(sp)
    80005664:	02010413          	addi	s0,sp,32
    80005668:	00050493          	mv	s1,a0
    8000566c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005670:	01853503          	ld	a0,24(a0)
    80005674:	ffffd097          	auipc	ra,0xffffd
    80005678:	db8080e7          	jalr	-584(ra) # 8000242c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000567c:	0304b503          	ld	a0,48(s1)
    80005680:	ffffd097          	auipc	ra,0xffffd
    80005684:	dac080e7          	jalr	-596(ra) # 8000242c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005688:	0084b783          	ld	a5,8(s1)
    8000568c:	0144a703          	lw	a4,20(s1)
    80005690:	00271713          	slli	a4,a4,0x2
    80005694:	00e787b3          	add	a5,a5,a4
    80005698:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000569c:	0144a783          	lw	a5,20(s1)
    800056a0:	0017879b          	addiw	a5,a5,1
    800056a4:	0004a703          	lw	a4,0(s1)
    800056a8:	02e7e7bb          	remw	a5,a5,a4
    800056ac:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056b0:	0304b503          	ld	a0,48(s1)
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	da4080e7          	jalr	-604(ra) # 80002458 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056bc:	0204b503          	ld	a0,32(s1)
    800056c0:	ffffd097          	auipc	ra,0xffffd
    800056c4:	d98080e7          	jalr	-616(ra) # 80002458 <_ZN9Semaphore6signalEv>

}
    800056c8:	01813083          	ld	ra,24(sp)
    800056cc:	01013403          	ld	s0,16(sp)
    800056d0:	00813483          	ld	s1,8(sp)
    800056d4:	00013903          	ld	s2,0(sp)
    800056d8:	02010113          	addi	sp,sp,32
    800056dc:	00008067          	ret

00000000800056e0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800056e0:	fe010113          	addi	sp,sp,-32
    800056e4:	00113c23          	sd	ra,24(sp)
    800056e8:	00813823          	sd	s0,16(sp)
    800056ec:	00913423          	sd	s1,8(sp)
    800056f0:	01213023          	sd	s2,0(sp)
    800056f4:	02010413          	addi	s0,sp,32
    800056f8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800056fc:	02053503          	ld	a0,32(a0)
    80005700:	ffffd097          	auipc	ra,0xffffd
    80005704:	d2c080e7          	jalr	-724(ra) # 8000242c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005708:	0284b503          	ld	a0,40(s1)
    8000570c:	ffffd097          	auipc	ra,0xffffd
    80005710:	d20080e7          	jalr	-736(ra) # 8000242c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005714:	0084b703          	ld	a4,8(s1)
    80005718:	0104a783          	lw	a5,16(s1)
    8000571c:	00279693          	slli	a3,a5,0x2
    80005720:	00d70733          	add	a4,a4,a3
    80005724:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005728:	0017879b          	addiw	a5,a5,1
    8000572c:	0004a703          	lw	a4,0(s1)
    80005730:	02e7e7bb          	remw	a5,a5,a4
    80005734:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005738:	0284b503          	ld	a0,40(s1)
    8000573c:	ffffd097          	auipc	ra,0xffffd
    80005740:	d1c080e7          	jalr	-740(ra) # 80002458 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005744:	0184b503          	ld	a0,24(s1)
    80005748:	ffffd097          	auipc	ra,0xffffd
    8000574c:	d10080e7          	jalr	-752(ra) # 80002458 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005750:	00090513          	mv	a0,s2
    80005754:	01813083          	ld	ra,24(sp)
    80005758:	01013403          	ld	s0,16(sp)
    8000575c:	00813483          	ld	s1,8(sp)
    80005760:	00013903          	ld	s2,0(sp)
    80005764:	02010113          	addi	sp,sp,32
    80005768:	00008067          	ret

000000008000576c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000576c:	fe010113          	addi	sp,sp,-32
    80005770:	00113c23          	sd	ra,24(sp)
    80005774:	00813823          	sd	s0,16(sp)
    80005778:	00913423          	sd	s1,8(sp)
    8000577c:	01213023          	sd	s2,0(sp)
    80005780:	02010413          	addi	s0,sp,32
    80005784:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005788:	02853503          	ld	a0,40(a0)
    8000578c:	ffffd097          	auipc	ra,0xffffd
    80005790:	ca0080e7          	jalr	-864(ra) # 8000242c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005794:	0304b503          	ld	a0,48(s1)
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	c94080e7          	jalr	-876(ra) # 8000242c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800057a0:	0144a783          	lw	a5,20(s1)
    800057a4:	0104a903          	lw	s2,16(s1)
    800057a8:	0327ce63          	blt	a5,s2,800057e4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800057ac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800057b0:	0304b503          	ld	a0,48(s1)
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	ca4080e7          	jalr	-860(ra) # 80002458 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800057bc:	0284b503          	ld	a0,40(s1)
    800057c0:	ffffd097          	auipc	ra,0xffffd
    800057c4:	c98080e7          	jalr	-872(ra) # 80002458 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057c8:	00090513          	mv	a0,s2
    800057cc:	01813083          	ld	ra,24(sp)
    800057d0:	01013403          	ld	s0,16(sp)
    800057d4:	00813483          	ld	s1,8(sp)
    800057d8:	00013903          	ld	s2,0(sp)
    800057dc:	02010113          	addi	sp,sp,32
    800057e0:	00008067          	ret
        ret = cap - head + tail;
    800057e4:	0004a703          	lw	a4,0(s1)
    800057e8:	4127093b          	subw	s2,a4,s2
    800057ec:	00f9093b          	addw	s2,s2,a5
    800057f0:	fc1ff06f          	j	800057b0 <_ZN9BufferCPP6getCntEv+0x44>

00000000800057f4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800057f4:	fe010113          	addi	sp,sp,-32
    800057f8:	00113c23          	sd	ra,24(sp)
    800057fc:	00813823          	sd	s0,16(sp)
    80005800:	00913423          	sd	s1,8(sp)
    80005804:	02010413          	addi	s0,sp,32
    80005808:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000580c:	00a00513          	li	a0,10
    80005810:	ffffd097          	auipc	ra,0xffffd
    80005814:	c74080e7          	jalr	-908(ra) # 80002484 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005818:	00004517          	auipc	a0,0x4
    8000581c:	b6850513          	addi	a0,a0,-1176 # 80009380 <CONSOLE_STATUS+0x370>
    80005820:	00000097          	auipc	ra,0x0
    80005824:	a0c080e7          	jalr	-1524(ra) # 8000522c <_Z11printStringPKc>
    while (getCnt()) {
    80005828:	00048513          	mv	a0,s1
    8000582c:	00000097          	auipc	ra,0x0
    80005830:	f40080e7          	jalr	-192(ra) # 8000576c <_ZN9BufferCPP6getCntEv>
    80005834:	02050c63          	beqz	a0,8000586c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005838:	0084b783          	ld	a5,8(s1)
    8000583c:	0104a703          	lw	a4,16(s1)
    80005840:	00271713          	slli	a4,a4,0x2
    80005844:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005848:	0007c503          	lbu	a0,0(a5)
    8000584c:	ffffd097          	auipc	ra,0xffffd
    80005850:	c38080e7          	jalr	-968(ra) # 80002484 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005854:	0104a783          	lw	a5,16(s1)
    80005858:	0017879b          	addiw	a5,a5,1
    8000585c:	0004a703          	lw	a4,0(s1)
    80005860:	02e7e7bb          	remw	a5,a5,a4
    80005864:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005868:	fc1ff06f          	j	80005828 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000586c:	02100513          	li	a0,33
    80005870:	ffffd097          	auipc	ra,0xffffd
    80005874:	c14080e7          	jalr	-1004(ra) # 80002484 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005878:	00a00513          	li	a0,10
    8000587c:	ffffd097          	auipc	ra,0xffffd
    80005880:	c08080e7          	jalr	-1016(ra) # 80002484 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005884:	0084b503          	ld	a0,8(s1)
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	9f0080e7          	jalr	-1552(ra) # 80001278 <_Z8mem_freePv>
    delete itemAvailable;
    80005890:	0204b503          	ld	a0,32(s1)
    80005894:	00050863          	beqz	a0,800058a4 <_ZN9BufferCPPD1Ev+0xb0>
    80005898:	00053783          	ld	a5,0(a0)
    8000589c:	0087b783          	ld	a5,8(a5)
    800058a0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800058a4:	0184b503          	ld	a0,24(s1)
    800058a8:	00050863          	beqz	a0,800058b8 <_ZN9BufferCPPD1Ev+0xc4>
    800058ac:	00053783          	ld	a5,0(a0)
    800058b0:	0087b783          	ld	a5,8(a5)
    800058b4:	000780e7          	jalr	a5
    delete mutexTail;
    800058b8:	0304b503          	ld	a0,48(s1)
    800058bc:	00050863          	beqz	a0,800058cc <_ZN9BufferCPPD1Ev+0xd8>
    800058c0:	00053783          	ld	a5,0(a0)
    800058c4:	0087b783          	ld	a5,8(a5)
    800058c8:	000780e7          	jalr	a5
    delete mutexHead;
    800058cc:	0284b503          	ld	a0,40(s1)
    800058d0:	00050863          	beqz	a0,800058e0 <_ZN9BufferCPPD1Ev+0xec>
    800058d4:	00053783          	ld	a5,0(a0)
    800058d8:	0087b783          	ld	a5,8(a5)
    800058dc:	000780e7          	jalr	a5
}
    800058e0:	01813083          	ld	ra,24(sp)
    800058e4:	01013403          	ld	s0,16(sp)
    800058e8:	00813483          	ld	s1,8(sp)
    800058ec:	02010113          	addi	sp,sp,32
    800058f0:	00008067          	ret

00000000800058f4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800058f4:	fe010113          	addi	sp,sp,-32
    800058f8:	00113c23          	sd	ra,24(sp)
    800058fc:	00813823          	sd	s0,16(sp)
    80005900:	00913423          	sd	s1,8(sp)
    80005904:	01213023          	sd	s2,0(sp)
    80005908:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000590c:	00004517          	auipc	a0,0x4
    80005910:	a8c50513          	addi	a0,a0,-1396 # 80009398 <CONSOLE_STATUS+0x388>
    80005914:	00000097          	auipc	ra,0x0
    80005918:	918080e7          	jalr	-1768(ra) # 8000522c <_Z11printStringPKc>
    int test = getc() - '0';
    8000591c:	ffffc097          	auipc	ra,0xffffc
    80005920:	c00080e7          	jalr	-1024(ra) # 8000151c <_Z4getcv>
    80005924:	00050913          	mv	s2,a0
    80005928:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	bf0080e7          	jalr	-1040(ra) # 8000151c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005934:	fcb9091b          	addiw	s2,s2,-53
    80005938:	00100793          	li	a5,1
    8000593c:	0327f463          	bgeu	a5,s2,80005964 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005940:	00700793          	li	a5,7
    80005944:	0e97e263          	bltu	a5,s1,80005a28 <_Z8userMainv+0x134>
    80005948:	00249493          	slli	s1,s1,0x2
    8000594c:	00004717          	auipc	a4,0x4
    80005950:	c6470713          	addi	a4,a4,-924 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80005954:	00e484b3          	add	s1,s1,a4
    80005958:	0004a783          	lw	a5,0(s1)
    8000595c:	00e787b3          	add	a5,a5,a4
    80005960:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005964:	00004517          	auipc	a0,0x4
    80005968:	a5450513          	addi	a0,a0,-1452 # 800093b8 <CONSOLE_STATUS+0x3a8>
    8000596c:	00000097          	auipc	ra,0x0
    80005970:	8c0080e7          	jalr	-1856(ra) # 8000522c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005974:	01813083          	ld	ra,24(sp)
    80005978:	01013403          	ld	s0,16(sp)
    8000597c:	00813483          	ld	s1,8(sp)
    80005980:	00013903          	ld	s2,0(sp)
    80005984:	02010113          	addi	sp,sp,32
    80005988:	00008067          	ret
            Threads_C_API_test();
    8000598c:	fffff097          	auipc	ra,0xfffff
    80005990:	f18080e7          	jalr	-232(ra) # 800048a4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005994:	00004517          	auipc	a0,0x4
    80005998:	a5450513          	addi	a0,a0,-1452 # 800093e8 <CONSOLE_STATUS+0x3d8>
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	890080e7          	jalr	-1904(ra) # 8000522c <_Z11printStringPKc>
            break;
    800059a4:	fd1ff06f          	j	80005974 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800059a8:	ffffe097          	auipc	ra,0xffffe
    800059ac:	ddc080e7          	jalr	-548(ra) # 80003784 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800059b0:	00004517          	auipc	a0,0x4
    800059b4:	a7850513          	addi	a0,a0,-1416 # 80009428 <CONSOLE_STATUS+0x418>
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	874080e7          	jalr	-1932(ra) # 8000522c <_Z11printStringPKc>
            break;
    800059c0:	fb5ff06f          	j	80005974 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800059c4:	ffffd097          	auipc	ra,0xffffd
    800059c8:	614080e7          	jalr	1556(ra) # 80002fd8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800059cc:	00004517          	auipc	a0,0x4
    800059d0:	a9c50513          	addi	a0,a0,-1380 # 80009468 <CONSOLE_STATUS+0x458>
    800059d4:	00000097          	auipc	ra,0x0
    800059d8:	858080e7          	jalr	-1960(ra) # 8000522c <_Z11printStringPKc>
            break;
    800059dc:	f99ff06f          	j	80005974 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800059e0:	fffff097          	auipc	ra,0xfffff
    800059e4:	208080e7          	jalr	520(ra) # 80004be8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800059e8:	00004517          	auipc	a0,0x4
    800059ec:	ad050513          	addi	a0,a0,-1328 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	83c080e7          	jalr	-1988(ra) # 8000522c <_Z11printStringPKc>
            break;
    800059f8:	f7dff06f          	j	80005974 <_Z8userMainv+0x80>
            System_Mode_test();
    800059fc:	00000097          	auipc	ra,0x0
    80005a00:	658080e7          	jalr	1624(ra) # 80006054 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005a04:	00004517          	auipc	a0,0x4
    80005a08:	b0c50513          	addi	a0,a0,-1268 # 80009510 <CONSOLE_STATUS+0x500>
    80005a0c:	00000097          	auipc	ra,0x0
    80005a10:	820080e7          	jalr	-2016(ra) # 8000522c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005a14:	00004517          	auipc	a0,0x4
    80005a18:	b1c50513          	addi	a0,a0,-1252 # 80009530 <CONSOLE_STATUS+0x520>
    80005a1c:	00000097          	auipc	ra,0x0
    80005a20:	810080e7          	jalr	-2032(ra) # 8000522c <_Z11printStringPKc>
            break;
    80005a24:	f51ff06f          	j	80005974 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005a28:	00004517          	auipc	a0,0x4
    80005a2c:	b6050513          	addi	a0,a0,-1184 # 80009588 <CONSOLE_STATUS+0x578>
    80005a30:	fffff097          	auipc	ra,0xfffff
    80005a34:	7fc080e7          	jalr	2044(ra) # 8000522c <_Z11printStringPKc>
    80005a38:	f3dff06f          	j	80005974 <_Z8userMainv+0x80>

0000000080005a3c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a3c:	fe010113          	addi	sp,sp,-32
    80005a40:	00113c23          	sd	ra,24(sp)
    80005a44:	00813823          	sd	s0,16(sp)
    80005a48:	00913423          	sd	s1,8(sp)
    80005a4c:	01213023          	sd	s2,0(sp)
    80005a50:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a54:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a58:	00600493          	li	s1,6
    while (--i > 0) {
    80005a5c:	fff4849b          	addiw	s1,s1,-1
    80005a60:	04905463          	blez	s1,80005aa8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a64:	00004517          	auipc	a0,0x4
    80005a68:	b6c50513          	addi	a0,a0,-1172 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005a6c:	fffff097          	auipc	ra,0xfffff
    80005a70:	7c0080e7          	jalr	1984(ra) # 8000522c <_Z11printStringPKc>
        printInt(sleep_time);
    80005a74:	00000613          	li	a2,0
    80005a78:	00a00593          	li	a1,10
    80005a7c:	0009051b          	sext.w	a0,s2
    80005a80:	00000097          	auipc	ra,0x0
    80005a84:	95c080e7          	jalr	-1700(ra) # 800053dc <_Z8printIntiii>
        printString(" !\n");
    80005a88:	00004517          	auipc	a0,0x4
    80005a8c:	b5050513          	addi	a0,a0,-1200 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005a90:	fffff097          	auipc	ra,0xfffff
    80005a94:	79c080e7          	jalr	1948(ra) # 8000522c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a98:	00090513          	mv	a0,s2
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	a54080e7          	jalr	-1452(ra) # 800014f0 <_Z10time_sleepm>
    while (--i > 0) {
    80005aa4:	fb9ff06f          	j	80005a5c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005aa8:	00a00793          	li	a5,10
    80005aac:	02f95933          	divu	s2,s2,a5
    80005ab0:	fff90913          	addi	s2,s2,-1
    80005ab4:	00006797          	auipc	a5,0x6
    80005ab8:	b8c78793          	addi	a5,a5,-1140 # 8000b640 <_ZL8finished>
    80005abc:	01278933          	add	s2,a5,s2
    80005ac0:	00100793          	li	a5,1
    80005ac4:	00f90023          	sb	a5,0(s2)
}
    80005ac8:	01813083          	ld	ra,24(sp)
    80005acc:	01013403          	ld	s0,16(sp)
    80005ad0:	00813483          	ld	s1,8(sp)
    80005ad4:	00013903          	ld	s2,0(sp)
    80005ad8:	02010113          	addi	sp,sp,32
    80005adc:	00008067          	ret

0000000080005ae0 <_Z12testSleepingv>:

void testSleeping() {
    80005ae0:	fc010113          	addi	sp,sp,-64
    80005ae4:	02113c23          	sd	ra,56(sp)
    80005ae8:	02813823          	sd	s0,48(sp)
    80005aec:	02913423          	sd	s1,40(sp)
    80005af0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005af4:	00a00793          	li	a5,10
    80005af8:	fcf43823          	sd	a5,-48(s0)
    80005afc:	01400793          	li	a5,20
    80005b00:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b04:	00000493          	li	s1,0
    80005b08:	02c0006f          	j	80005b34 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005b0c:	00349793          	slli	a5,s1,0x3
    80005b10:	fd040613          	addi	a2,s0,-48
    80005b14:	00f60633          	add	a2,a2,a5
    80005b18:	00000597          	auipc	a1,0x0
    80005b1c:	f2458593          	addi	a1,a1,-220 # 80005a3c <_ZL9sleepyRunPv>
    80005b20:	fc040513          	addi	a0,s0,-64
    80005b24:	00f50533          	add	a0,a0,a5
    80005b28:	ffffb097          	auipc	ra,0xffffb
    80005b2c:	7c4080e7          	jalr	1988(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b30:	0014849b          	addiw	s1,s1,1
    80005b34:	00100793          	li	a5,1
    80005b38:	fc97dae3          	bge	a5,s1,80005b0c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b3c:	00006797          	auipc	a5,0x6
    80005b40:	b047c783          	lbu	a5,-1276(a5) # 8000b640 <_ZL8finished>
    80005b44:	fe078ce3          	beqz	a5,80005b3c <_Z12testSleepingv+0x5c>
    80005b48:	00006797          	auipc	a5,0x6
    80005b4c:	af97c783          	lbu	a5,-1287(a5) # 8000b641 <_ZL8finished+0x1>
    80005b50:	fe0786e3          	beqz	a5,80005b3c <_Z12testSleepingv+0x5c>
}
    80005b54:	03813083          	ld	ra,56(sp)
    80005b58:	03013403          	ld	s0,48(sp)
    80005b5c:	02813483          	ld	s1,40(sp)
    80005b60:	04010113          	addi	sp,sp,64
    80005b64:	00008067          	ret

0000000080005b68 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b68:	fe010113          	addi	sp,sp,-32
    80005b6c:	00113c23          	sd	ra,24(sp)
    80005b70:	00813823          	sd	s0,16(sp)
    80005b74:	00913423          	sd	s1,8(sp)
    80005b78:	01213023          	sd	s2,0(sp)
    80005b7c:	02010413          	addi	s0,sp,32
    80005b80:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b84:	00100793          	li	a5,1
    80005b88:	02a7f863          	bgeu	a5,a0,80005bb8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b8c:	00a00793          	li	a5,10
    80005b90:	02f577b3          	remu	a5,a0,a5
    80005b94:	02078e63          	beqz	a5,80005bd0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b98:	fff48513          	addi	a0,s1,-1
    80005b9c:	00000097          	auipc	ra,0x0
    80005ba0:	fcc080e7          	jalr	-52(ra) # 80005b68 <_ZL9fibonaccim>
    80005ba4:	00050913          	mv	s2,a0
    80005ba8:	ffe48513          	addi	a0,s1,-2
    80005bac:	00000097          	auipc	ra,0x0
    80005bb0:	fbc080e7          	jalr	-68(ra) # 80005b68 <_ZL9fibonaccim>
    80005bb4:	00a90533          	add	a0,s2,a0
}
    80005bb8:	01813083          	ld	ra,24(sp)
    80005bbc:	01013403          	ld	s0,16(sp)
    80005bc0:	00813483          	ld	s1,8(sp)
    80005bc4:	00013903          	ld	s2,0(sp)
    80005bc8:	02010113          	addi	sp,sp,32
    80005bcc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	844080e7          	jalr	-1980(ra) # 80001414 <_Z15thread_dispatchv>
    80005bd8:	fc1ff06f          	j	80005b98 <_ZL9fibonaccim+0x30>

0000000080005bdc <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005bdc:	fe010113          	addi	sp,sp,-32
    80005be0:	00113c23          	sd	ra,24(sp)
    80005be4:	00813823          	sd	s0,16(sp)
    80005be8:	00913423          	sd	s1,8(sp)
    80005bec:	01213023          	sd	s2,0(sp)
    80005bf0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bf4:	00a00493          	li	s1,10
    80005bf8:	0400006f          	j	80005c38 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bfc:	00003517          	auipc	a0,0x3
    80005c00:	6dc50513          	addi	a0,a0,1756 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005c04:	fffff097          	auipc	ra,0xfffff
    80005c08:	628080e7          	jalr	1576(ra) # 8000522c <_Z11printStringPKc>
    80005c0c:	00000613          	li	a2,0
    80005c10:	00a00593          	li	a1,10
    80005c14:	00048513          	mv	a0,s1
    80005c18:	fffff097          	auipc	ra,0xfffff
    80005c1c:	7c4080e7          	jalr	1988(ra) # 800053dc <_Z8printIntiii>
    80005c20:	00004517          	auipc	a0,0x4
    80005c24:	8e850513          	addi	a0,a0,-1816 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005c28:	fffff097          	auipc	ra,0xfffff
    80005c2c:	604080e7          	jalr	1540(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c30:	0014849b          	addiw	s1,s1,1
    80005c34:	0ff4f493          	andi	s1,s1,255
    80005c38:	00c00793          	li	a5,12
    80005c3c:	fc97f0e3          	bgeu	a5,s1,80005bfc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c40:	00003517          	auipc	a0,0x3
    80005c44:	6a050513          	addi	a0,a0,1696 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005c48:	fffff097          	auipc	ra,0xfffff
    80005c4c:	5e4080e7          	jalr	1508(ra) # 8000522c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c50:	00500313          	li	t1,5
    thread_dispatch();
    80005c54:	ffffb097          	auipc	ra,0xffffb
    80005c58:	7c0080e7          	jalr	1984(ra) # 80001414 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c5c:	01000513          	li	a0,16
    80005c60:	00000097          	auipc	ra,0x0
    80005c64:	f08080e7          	jalr	-248(ra) # 80005b68 <_ZL9fibonaccim>
    80005c68:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c6c:	00003517          	auipc	a0,0x3
    80005c70:	68450513          	addi	a0,a0,1668 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005c74:	fffff097          	auipc	ra,0xfffff
    80005c78:	5b8080e7          	jalr	1464(ra) # 8000522c <_Z11printStringPKc>
    80005c7c:	00000613          	li	a2,0
    80005c80:	00a00593          	li	a1,10
    80005c84:	0009051b          	sext.w	a0,s2
    80005c88:	fffff097          	auipc	ra,0xfffff
    80005c8c:	754080e7          	jalr	1876(ra) # 800053dc <_Z8printIntiii>
    80005c90:	00004517          	auipc	a0,0x4
    80005c94:	87850513          	addi	a0,a0,-1928 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005c98:	fffff097          	auipc	ra,0xfffff
    80005c9c:	594080e7          	jalr	1428(ra) # 8000522c <_Z11printStringPKc>
    80005ca0:	0400006f          	j	80005ce0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ca4:	00003517          	auipc	a0,0x3
    80005ca8:	63450513          	addi	a0,a0,1588 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005cac:	fffff097          	auipc	ra,0xfffff
    80005cb0:	580080e7          	jalr	1408(ra) # 8000522c <_Z11printStringPKc>
    80005cb4:	00000613          	li	a2,0
    80005cb8:	00a00593          	li	a1,10
    80005cbc:	00048513          	mv	a0,s1
    80005cc0:	fffff097          	auipc	ra,0xfffff
    80005cc4:	71c080e7          	jalr	1820(ra) # 800053dc <_Z8printIntiii>
    80005cc8:	00004517          	auipc	a0,0x4
    80005ccc:	84050513          	addi	a0,a0,-1984 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005cd0:	fffff097          	auipc	ra,0xfffff
    80005cd4:	55c080e7          	jalr	1372(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005cd8:	0014849b          	addiw	s1,s1,1
    80005cdc:	0ff4f493          	andi	s1,s1,255
    80005ce0:	00f00793          	li	a5,15
    80005ce4:	fc97f0e3          	bgeu	a5,s1,80005ca4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ce8:	00003517          	auipc	a0,0x3
    80005cec:	61850513          	addi	a0,a0,1560 # 80009300 <CONSOLE_STATUS+0x2f0>
    80005cf0:	fffff097          	auipc	ra,0xfffff
    80005cf4:	53c080e7          	jalr	1340(ra) # 8000522c <_Z11printStringPKc>
    finishedD = true;
    80005cf8:	00100793          	li	a5,1
    80005cfc:	00006717          	auipc	a4,0x6
    80005d00:	94f70323          	sb	a5,-1722(a4) # 8000b642 <_ZL9finishedD>
    thread_dispatch();
    80005d04:	ffffb097          	auipc	ra,0xffffb
    80005d08:	710080e7          	jalr	1808(ra) # 80001414 <_Z15thread_dispatchv>
}
    80005d0c:	01813083          	ld	ra,24(sp)
    80005d10:	01013403          	ld	s0,16(sp)
    80005d14:	00813483          	ld	s1,8(sp)
    80005d18:	00013903          	ld	s2,0(sp)
    80005d1c:	02010113          	addi	sp,sp,32
    80005d20:	00008067          	ret

0000000080005d24 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005d24:	fe010113          	addi	sp,sp,-32
    80005d28:	00113c23          	sd	ra,24(sp)
    80005d2c:	00813823          	sd	s0,16(sp)
    80005d30:	00913423          	sd	s1,8(sp)
    80005d34:	01213023          	sd	s2,0(sp)
    80005d38:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d3c:	00000493          	li	s1,0
    80005d40:	0400006f          	j	80005d80 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d44:	00003517          	auipc	a0,0x3
    80005d48:	56450513          	addi	a0,a0,1380 # 800092a8 <CONSOLE_STATUS+0x298>
    80005d4c:	fffff097          	auipc	ra,0xfffff
    80005d50:	4e0080e7          	jalr	1248(ra) # 8000522c <_Z11printStringPKc>
    80005d54:	00000613          	li	a2,0
    80005d58:	00a00593          	li	a1,10
    80005d5c:	00048513          	mv	a0,s1
    80005d60:	fffff097          	auipc	ra,0xfffff
    80005d64:	67c080e7          	jalr	1660(ra) # 800053dc <_Z8printIntiii>
    80005d68:	00003517          	auipc	a0,0x3
    80005d6c:	7a050513          	addi	a0,a0,1952 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005d70:	fffff097          	auipc	ra,0xfffff
    80005d74:	4bc080e7          	jalr	1212(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d78:	0014849b          	addiw	s1,s1,1
    80005d7c:	0ff4f493          	andi	s1,s1,255
    80005d80:	00200793          	li	a5,2
    80005d84:	fc97f0e3          	bgeu	a5,s1,80005d44 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d88:	00003517          	auipc	a0,0x3
    80005d8c:	52850513          	addi	a0,a0,1320 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005d90:	fffff097          	auipc	ra,0xfffff
    80005d94:	49c080e7          	jalr	1180(ra) # 8000522c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d98:	00700313          	li	t1,7
    thread_dispatch();
    80005d9c:	ffffb097          	auipc	ra,0xffffb
    80005da0:	678080e7          	jalr	1656(ra) # 80001414 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005da4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005da8:	00003517          	auipc	a0,0x3
    80005dac:	51850513          	addi	a0,a0,1304 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005db0:	fffff097          	auipc	ra,0xfffff
    80005db4:	47c080e7          	jalr	1148(ra) # 8000522c <_Z11printStringPKc>
    80005db8:	00000613          	li	a2,0
    80005dbc:	00a00593          	li	a1,10
    80005dc0:	0009051b          	sext.w	a0,s2
    80005dc4:	fffff097          	auipc	ra,0xfffff
    80005dc8:	618080e7          	jalr	1560(ra) # 800053dc <_Z8printIntiii>
    80005dcc:	00003517          	auipc	a0,0x3
    80005dd0:	73c50513          	addi	a0,a0,1852 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	458080e7          	jalr	1112(ra) # 8000522c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005ddc:	00c00513          	li	a0,12
    80005de0:	00000097          	auipc	ra,0x0
    80005de4:	d88080e7          	jalr	-632(ra) # 80005b68 <_ZL9fibonaccim>
    80005de8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005dec:	00003517          	auipc	a0,0x3
    80005df0:	4dc50513          	addi	a0,a0,1244 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005df4:	fffff097          	auipc	ra,0xfffff
    80005df8:	438080e7          	jalr	1080(ra) # 8000522c <_Z11printStringPKc>
    80005dfc:	00000613          	li	a2,0
    80005e00:	00a00593          	li	a1,10
    80005e04:	0009051b          	sext.w	a0,s2
    80005e08:	fffff097          	auipc	ra,0xfffff
    80005e0c:	5d4080e7          	jalr	1492(ra) # 800053dc <_Z8printIntiii>
    80005e10:	00003517          	auipc	a0,0x3
    80005e14:	6f850513          	addi	a0,a0,1784 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005e18:	fffff097          	auipc	ra,0xfffff
    80005e1c:	414080e7          	jalr	1044(ra) # 8000522c <_Z11printStringPKc>
    80005e20:	0400006f          	j	80005e60 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005e24:	00003517          	auipc	a0,0x3
    80005e28:	48450513          	addi	a0,a0,1156 # 800092a8 <CONSOLE_STATUS+0x298>
    80005e2c:	fffff097          	auipc	ra,0xfffff
    80005e30:	400080e7          	jalr	1024(ra) # 8000522c <_Z11printStringPKc>
    80005e34:	00000613          	li	a2,0
    80005e38:	00a00593          	li	a1,10
    80005e3c:	00048513          	mv	a0,s1
    80005e40:	fffff097          	auipc	ra,0xfffff
    80005e44:	59c080e7          	jalr	1436(ra) # 800053dc <_Z8printIntiii>
    80005e48:	00003517          	auipc	a0,0x3
    80005e4c:	6c050513          	addi	a0,a0,1728 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005e50:	fffff097          	auipc	ra,0xfffff
    80005e54:	3dc080e7          	jalr	988(ra) # 8000522c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e58:	0014849b          	addiw	s1,s1,1
    80005e5c:	0ff4f493          	andi	s1,s1,255
    80005e60:	00500793          	li	a5,5
    80005e64:	fc97f0e3          	bgeu	a5,s1,80005e24 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005e68:	00003517          	auipc	a0,0x3
    80005e6c:	50850513          	addi	a0,a0,1288 # 80009370 <CONSOLE_STATUS+0x360>
    80005e70:	fffff097          	auipc	ra,0xfffff
    80005e74:	3bc080e7          	jalr	956(ra) # 8000522c <_Z11printStringPKc>
    finishedC = true;
    80005e78:	00100793          	li	a5,1
    80005e7c:	00005717          	auipc	a4,0x5
    80005e80:	7cf703a3          	sb	a5,1991(a4) # 8000b643 <_ZL9finishedC>
    thread_dispatch();
    80005e84:	ffffb097          	auipc	ra,0xffffb
    80005e88:	590080e7          	jalr	1424(ra) # 80001414 <_Z15thread_dispatchv>
}
    80005e8c:	01813083          	ld	ra,24(sp)
    80005e90:	01013403          	ld	s0,16(sp)
    80005e94:	00813483          	ld	s1,8(sp)
    80005e98:	00013903          	ld	s2,0(sp)
    80005e9c:	02010113          	addi	sp,sp,32
    80005ea0:	00008067          	ret

0000000080005ea4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005ea4:	fe010113          	addi	sp,sp,-32
    80005ea8:	00113c23          	sd	ra,24(sp)
    80005eac:	00813823          	sd	s0,16(sp)
    80005eb0:	00913423          	sd	s1,8(sp)
    80005eb4:	01213023          	sd	s2,0(sp)
    80005eb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005ebc:	00000913          	li	s2,0
    80005ec0:	0400006f          	j	80005f00 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005ec4:	ffffb097          	auipc	ra,0xffffb
    80005ec8:	550080e7          	jalr	1360(ra) # 80001414 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005ecc:	00148493          	addi	s1,s1,1
    80005ed0:	000027b7          	lui	a5,0x2
    80005ed4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005ed8:	0097ee63          	bltu	a5,s1,80005ef4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005edc:	00000713          	li	a4,0
    80005ee0:	000077b7          	lui	a5,0x7
    80005ee4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ee8:	fce7eee3          	bltu	a5,a4,80005ec4 <_ZL11workerBodyBPv+0x20>
    80005eec:	00170713          	addi	a4,a4,1
    80005ef0:	ff1ff06f          	j	80005ee0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ef4:	00a00793          	li	a5,10
    80005ef8:	04f90663          	beq	s2,a5,80005f44 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005efc:	00190913          	addi	s2,s2,1
    80005f00:	00f00793          	li	a5,15
    80005f04:	0527e463          	bltu	a5,s2,80005f4c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005f08:	00003517          	auipc	a0,0x3
    80005f0c:	14850513          	addi	a0,a0,328 # 80009050 <CONSOLE_STATUS+0x40>
    80005f10:	fffff097          	auipc	ra,0xfffff
    80005f14:	31c080e7          	jalr	796(ra) # 8000522c <_Z11printStringPKc>
    80005f18:	00000613          	li	a2,0
    80005f1c:	00a00593          	li	a1,10
    80005f20:	0009051b          	sext.w	a0,s2
    80005f24:	fffff097          	auipc	ra,0xfffff
    80005f28:	4b8080e7          	jalr	1208(ra) # 800053dc <_Z8printIntiii>
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	5dc50513          	addi	a0,a0,1500 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005f34:	fffff097          	auipc	ra,0xfffff
    80005f38:	2f8080e7          	jalr	760(ra) # 8000522c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f3c:	00000493          	li	s1,0
    80005f40:	f91ff06f          	j	80005ed0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f44:	14102ff3          	csrr	t6,sepc
    80005f48:	fb5ff06f          	j	80005efc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f4c:	00003517          	auipc	a0,0x3
    80005f50:	34c50513          	addi	a0,a0,844 # 80009298 <CONSOLE_STATUS+0x288>
    80005f54:	fffff097          	auipc	ra,0xfffff
    80005f58:	2d8080e7          	jalr	728(ra) # 8000522c <_Z11printStringPKc>
    finishedB = true;
    80005f5c:	00100793          	li	a5,1
    80005f60:	00005717          	auipc	a4,0x5
    80005f64:	6ef70223          	sb	a5,1764(a4) # 8000b644 <_ZL9finishedB>
    thread_dispatch();
    80005f68:	ffffb097          	auipc	ra,0xffffb
    80005f6c:	4ac080e7          	jalr	1196(ra) # 80001414 <_Z15thread_dispatchv>
}
    80005f70:	01813083          	ld	ra,24(sp)
    80005f74:	01013403          	ld	s0,16(sp)
    80005f78:	00813483          	ld	s1,8(sp)
    80005f7c:	00013903          	ld	s2,0(sp)
    80005f80:	02010113          	addi	sp,sp,32
    80005f84:	00008067          	ret

0000000080005f88 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f88:	fe010113          	addi	sp,sp,-32
    80005f8c:	00113c23          	sd	ra,24(sp)
    80005f90:	00813823          	sd	s0,16(sp)
    80005f94:	00913423          	sd	s1,8(sp)
    80005f98:	01213023          	sd	s2,0(sp)
    80005f9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005fa0:	00000913          	li	s2,0
    80005fa4:	0380006f          	j	80005fdc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005fa8:	ffffb097          	auipc	ra,0xffffb
    80005fac:	46c080e7          	jalr	1132(ra) # 80001414 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005fb0:	00148493          	addi	s1,s1,1
    80005fb4:	000027b7          	lui	a5,0x2
    80005fb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fbc:	0097ee63          	bltu	a5,s1,80005fd8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fc0:	00000713          	li	a4,0
    80005fc4:	000077b7          	lui	a5,0x7
    80005fc8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fcc:	fce7eee3          	bltu	a5,a4,80005fa8 <_ZL11workerBodyAPv+0x20>
    80005fd0:	00170713          	addi	a4,a4,1
    80005fd4:	ff1ff06f          	j	80005fc4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005fd8:	00190913          	addi	s2,s2,1
    80005fdc:	00900793          	li	a5,9
    80005fe0:	0527e063          	bltu	a5,s2,80006020 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005fe4:	00003517          	auipc	a0,0x3
    80005fe8:	03c50513          	addi	a0,a0,60 # 80009020 <CONSOLE_STATUS+0x10>
    80005fec:	fffff097          	auipc	ra,0xfffff
    80005ff0:	240080e7          	jalr	576(ra) # 8000522c <_Z11printStringPKc>
    80005ff4:	00000613          	li	a2,0
    80005ff8:	00a00593          	li	a1,10
    80005ffc:	0009051b          	sext.w	a0,s2
    80006000:	fffff097          	auipc	ra,0xfffff
    80006004:	3dc080e7          	jalr	988(ra) # 800053dc <_Z8printIntiii>
    80006008:	00003517          	auipc	a0,0x3
    8000600c:	50050513          	addi	a0,a0,1280 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006010:	fffff097          	auipc	ra,0xfffff
    80006014:	21c080e7          	jalr	540(ra) # 8000522c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006018:	00000493          	li	s1,0
    8000601c:	f99ff06f          	j	80005fb4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006020:	00003517          	auipc	a0,0x3
    80006024:	26850513          	addi	a0,a0,616 # 80009288 <CONSOLE_STATUS+0x278>
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	204080e7          	jalr	516(ra) # 8000522c <_Z11printStringPKc>
    finishedA = true;
    80006030:	00100793          	li	a5,1
    80006034:	00005717          	auipc	a4,0x5
    80006038:	60f708a3          	sb	a5,1553(a4) # 8000b645 <_ZL9finishedA>
}
    8000603c:	01813083          	ld	ra,24(sp)
    80006040:	01013403          	ld	s0,16(sp)
    80006044:	00813483          	ld	s1,8(sp)
    80006048:	00013903          	ld	s2,0(sp)
    8000604c:	02010113          	addi	sp,sp,32
    80006050:	00008067          	ret

0000000080006054 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006054:	fd010113          	addi	sp,sp,-48
    80006058:	02113423          	sd	ra,40(sp)
    8000605c:	02813023          	sd	s0,32(sp)
    80006060:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006064:	00000613          	li	a2,0
    80006068:	00000597          	auipc	a1,0x0
    8000606c:	f2058593          	addi	a1,a1,-224 # 80005f88 <_ZL11workerBodyAPv>
    80006070:	fd040513          	addi	a0,s0,-48
    80006074:	ffffb097          	auipc	ra,0xffffb
    80006078:	278080e7          	jalr	632(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    8000607c:	00003517          	auipc	a0,0x3
    80006080:	29450513          	addi	a0,a0,660 # 80009310 <CONSOLE_STATUS+0x300>
    80006084:	fffff097          	auipc	ra,0xfffff
    80006088:	1a8080e7          	jalr	424(ra) # 8000522c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000608c:	00000613          	li	a2,0
    80006090:	00000597          	auipc	a1,0x0
    80006094:	e1458593          	addi	a1,a1,-492 # 80005ea4 <_ZL11workerBodyBPv>
    80006098:	fd840513          	addi	a0,s0,-40
    8000609c:	ffffb097          	auipc	ra,0xffffb
    800060a0:	250080e7          	jalr	592(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    800060a4:	00003517          	auipc	a0,0x3
    800060a8:	28450513          	addi	a0,a0,644 # 80009328 <CONSOLE_STATUS+0x318>
    800060ac:	fffff097          	auipc	ra,0xfffff
    800060b0:	180080e7          	jalr	384(ra) # 8000522c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800060b4:	00000613          	li	a2,0
    800060b8:	00000597          	auipc	a1,0x0
    800060bc:	c6c58593          	addi	a1,a1,-916 # 80005d24 <_ZL11workerBodyCPv>
    800060c0:	fe040513          	addi	a0,s0,-32
    800060c4:	ffffb097          	auipc	ra,0xffffb
    800060c8:	228080e7          	jalr	552(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    800060cc:	00003517          	auipc	a0,0x3
    800060d0:	27450513          	addi	a0,a0,628 # 80009340 <CONSOLE_STATUS+0x330>
    800060d4:	fffff097          	auipc	ra,0xfffff
    800060d8:	158080e7          	jalr	344(ra) # 8000522c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060dc:	00000613          	li	a2,0
    800060e0:	00000597          	auipc	a1,0x0
    800060e4:	afc58593          	addi	a1,a1,-1284 # 80005bdc <_ZL11workerBodyDPv>
    800060e8:	fe840513          	addi	a0,s0,-24
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	200080e7          	jalr	512(ra) # 800012ec <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	26450513          	addi	a0,a0,612 # 80009358 <CONSOLE_STATUS+0x348>
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	130080e7          	jalr	304(ra) # 8000522c <_Z11printStringPKc>
    80006104:	00c0006f          	j	80006110 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006108:	ffffb097          	auipc	ra,0xffffb
    8000610c:	30c080e7          	jalr	780(ra) # 80001414 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006110:	00005797          	auipc	a5,0x5
    80006114:	5357c783          	lbu	a5,1333(a5) # 8000b645 <_ZL9finishedA>
    80006118:	fe0788e3          	beqz	a5,80006108 <_Z16System_Mode_testv+0xb4>
    8000611c:	00005797          	auipc	a5,0x5
    80006120:	5287c783          	lbu	a5,1320(a5) # 8000b644 <_ZL9finishedB>
    80006124:	fe0782e3          	beqz	a5,80006108 <_Z16System_Mode_testv+0xb4>
    80006128:	00005797          	auipc	a5,0x5
    8000612c:	51b7c783          	lbu	a5,1307(a5) # 8000b643 <_ZL9finishedC>
    80006130:	fc078ce3          	beqz	a5,80006108 <_Z16System_Mode_testv+0xb4>
    80006134:	00005797          	auipc	a5,0x5
    80006138:	50e7c783          	lbu	a5,1294(a5) # 8000b642 <_ZL9finishedD>
    8000613c:	fc0786e3          	beqz	a5,80006108 <_Z16System_Mode_testv+0xb4>
    }

}
    80006140:	02813083          	ld	ra,40(sp)
    80006144:	02013403          	ld	s0,32(sp)
    80006148:	03010113          	addi	sp,sp,48
    8000614c:	00008067          	ret

0000000080006150 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006150:	fe010113          	addi	sp,sp,-32
    80006154:	00113c23          	sd	ra,24(sp)
    80006158:	00813823          	sd	s0,16(sp)
    8000615c:	00913423          	sd	s1,8(sp)
    80006160:	01213023          	sd	s2,0(sp)
    80006164:	02010413          	addi	s0,sp,32
    80006168:	00050493          	mv	s1,a0
    8000616c:	00058913          	mv	s2,a1
    80006170:	0015879b          	addiw	a5,a1,1
    80006174:	0007851b          	sext.w	a0,a5
    80006178:	00f4a023          	sw	a5,0(s1)
    8000617c:	0004a823          	sw	zero,16(s1)
    80006180:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006184:	00251513          	slli	a0,a0,0x2
    80006188:	ffffb097          	auipc	ra,0xffffb
    8000618c:	0b4080e7          	jalr	180(ra) # 8000123c <_Z9mem_allocm>
    80006190:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006194:	00000593          	li	a1,0
    80006198:	02048513          	addi	a0,s1,32
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	298080e7          	jalr	664(ra) # 80001434 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&spaceAvailable, _cap);
    800061a4:	00090593          	mv	a1,s2
    800061a8:	01848513          	addi	a0,s1,24
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	288080e7          	jalr	648(ra) # 80001434 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexHead, 1);
    800061b4:	00100593          	li	a1,1
    800061b8:	02848513          	addi	a0,s1,40
    800061bc:	ffffb097          	auipc	ra,0xffffb
    800061c0:	278080e7          	jalr	632(ra) # 80001434 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexTail, 1);
    800061c4:	00100593          	li	a1,1
    800061c8:	03048513          	addi	a0,s1,48
    800061cc:	ffffb097          	auipc	ra,0xffffb
    800061d0:	268080e7          	jalr	616(ra) # 80001434 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    800061d4:	01813083          	ld	ra,24(sp)
    800061d8:	01013403          	ld	s0,16(sp)
    800061dc:	00813483          	ld	s1,8(sp)
    800061e0:	00013903          	ld	s2,0(sp)
    800061e4:	02010113          	addi	sp,sp,32
    800061e8:	00008067          	ret

00000000800061ec <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061ec:	fe010113          	addi	sp,sp,-32
    800061f0:	00113c23          	sd	ra,24(sp)
    800061f4:	00813823          	sd	s0,16(sp)
    800061f8:	00913423          	sd	s1,8(sp)
    800061fc:	01213023          	sd	s2,0(sp)
    80006200:	02010413          	addi	s0,sp,32
    80006204:	00050493          	mv	s1,a0
    80006208:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000620c:	01853503          	ld	a0,24(a0)
    80006210:	ffffb097          	auipc	ra,0xffffb
    80006214:	288080e7          	jalr	648(ra) # 80001498 <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexTail);
    80006218:	0304b503          	ld	a0,48(s1)
    8000621c:	ffffb097          	auipc	ra,0xffffb
    80006220:	27c080e7          	jalr	636(ra) # 80001498 <_Z8sem_waitPN3ABI9SemaphoreE>
    buffer[tail] = val;
    80006224:	0084b783          	ld	a5,8(s1)
    80006228:	0144a703          	lw	a4,20(s1)
    8000622c:	00271713          	slli	a4,a4,0x2
    80006230:	00e787b3          	add	a5,a5,a4
    80006234:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006238:	0144a783          	lw	a5,20(s1)
    8000623c:	0017879b          	addiw	a5,a5,1
    80006240:	0004a703          	lw	a4,0(s1)
    80006244:	02e7e7bb          	remw	a5,a5,a4
    80006248:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000624c:	0304b503          	ld	a0,48(s1)
    80006250:	ffffb097          	auipc	ra,0xffffb
    80006254:	274080e7          	jalr	628(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(itemAvailable);
    80006258:	0204b503          	ld	a0,32(s1)
    8000625c:	ffffb097          	auipc	ra,0xffffb
    80006260:	268080e7          	jalr	616(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>

}
    80006264:	01813083          	ld	ra,24(sp)
    80006268:	01013403          	ld	s0,16(sp)
    8000626c:	00813483          	ld	s1,8(sp)
    80006270:	00013903          	ld	s2,0(sp)
    80006274:	02010113          	addi	sp,sp,32
    80006278:	00008067          	ret

000000008000627c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000627c:	fe010113          	addi	sp,sp,-32
    80006280:	00113c23          	sd	ra,24(sp)
    80006284:	00813823          	sd	s0,16(sp)
    80006288:	00913423          	sd	s1,8(sp)
    8000628c:	01213023          	sd	s2,0(sp)
    80006290:	02010413          	addi	s0,sp,32
    80006294:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006298:	02053503          	ld	a0,32(a0)
    8000629c:	ffffb097          	auipc	ra,0xffffb
    800062a0:	1fc080e7          	jalr	508(ra) # 80001498 <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexHead);
    800062a4:	0284b503          	ld	a0,40(s1)
    800062a8:	ffffb097          	auipc	ra,0xffffb
    800062ac:	1f0080e7          	jalr	496(ra) # 80001498 <_Z8sem_waitPN3ABI9SemaphoreE>

    int ret = buffer[head];
    800062b0:	0084b703          	ld	a4,8(s1)
    800062b4:	0104a783          	lw	a5,16(s1)
    800062b8:	00279693          	slli	a3,a5,0x2
    800062bc:	00d70733          	add	a4,a4,a3
    800062c0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062c4:	0017879b          	addiw	a5,a5,1
    800062c8:	0004a703          	lw	a4,0(s1)
    800062cc:	02e7e7bb          	remw	a5,a5,a4
    800062d0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062d4:	0284b503          	ld	a0,40(s1)
    800062d8:	ffffb097          	auipc	ra,0xffffb
    800062dc:	1ec080e7          	jalr	492(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(spaceAvailable);
    800062e0:	0184b503          	ld	a0,24(s1)
    800062e4:	ffffb097          	auipc	ra,0xffffb
    800062e8:	1e0080e7          	jalr	480(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    800062ec:	00090513          	mv	a0,s2
    800062f0:	01813083          	ld	ra,24(sp)
    800062f4:	01013403          	ld	s0,16(sp)
    800062f8:	00813483          	ld	s1,8(sp)
    800062fc:	00013903          	ld	s2,0(sp)
    80006300:	02010113          	addi	sp,sp,32
    80006304:	00008067          	ret

0000000080006308 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006308:	fe010113          	addi	sp,sp,-32
    8000630c:	00113c23          	sd	ra,24(sp)
    80006310:	00813823          	sd	s0,16(sp)
    80006314:	00913423          	sd	s1,8(sp)
    80006318:	01213023          	sd	s2,0(sp)
    8000631c:	02010413          	addi	s0,sp,32
    80006320:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006324:	02853503          	ld	a0,40(a0)
    80006328:	ffffb097          	auipc	ra,0xffffb
    8000632c:	170080e7          	jalr	368(ra) # 80001498 <_Z8sem_waitPN3ABI9SemaphoreE>
    sem_wait(mutexTail);
    80006330:	0304b503          	ld	a0,48(s1)
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	164080e7          	jalr	356(ra) # 80001498 <_Z8sem_waitPN3ABI9SemaphoreE>

    if (tail >= head) {
    8000633c:	0144a783          	lw	a5,20(s1)
    80006340:	0104a903          	lw	s2,16(s1)
    80006344:	0327ce63          	blt	a5,s2,80006380 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006348:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000634c:	0304b503          	ld	a0,48(s1)
    80006350:	ffffb097          	auipc	ra,0xffffb
    80006354:	174080e7          	jalr	372(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>
    sem_signal(mutexHead);
    80006358:	0284b503          	ld	a0,40(s1)
    8000635c:	ffffb097          	auipc	ra,0xffffb
    80006360:	168080e7          	jalr	360(ra) # 800014c4 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    80006364:	00090513          	mv	a0,s2
    80006368:	01813083          	ld	ra,24(sp)
    8000636c:	01013403          	ld	s0,16(sp)
    80006370:	00813483          	ld	s1,8(sp)
    80006374:	00013903          	ld	s2,0(sp)
    80006378:	02010113          	addi	sp,sp,32
    8000637c:	00008067          	ret
        ret = cap - head + tail;
    80006380:	0004a703          	lw	a4,0(s1)
    80006384:	4127093b          	subw	s2,a4,s2
    80006388:	00f9093b          	addw	s2,s2,a5
    8000638c:	fc1ff06f          	j	8000634c <_ZN6Buffer6getCntEv+0x44>

0000000080006390 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006390:	fe010113          	addi	sp,sp,-32
    80006394:	00113c23          	sd	ra,24(sp)
    80006398:	00813823          	sd	s0,16(sp)
    8000639c:	00913423          	sd	s1,8(sp)
    800063a0:	02010413          	addi	s0,sp,32
    800063a4:	00050493          	mv	s1,a0
    putc('\n');
    800063a8:	00a00513          	li	a0,10
    800063ac:	ffffb097          	auipc	ra,0xffffb
    800063b0:	198080e7          	jalr	408(ra) # 80001544 <_Z4putcc>
    printString("Buffer deleted!\n");
    800063b4:	00003517          	auipc	a0,0x3
    800063b8:	fcc50513          	addi	a0,a0,-52 # 80009380 <CONSOLE_STATUS+0x370>
    800063bc:	fffff097          	auipc	ra,0xfffff
    800063c0:	e70080e7          	jalr	-400(ra) # 8000522c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800063c4:	00048513          	mv	a0,s1
    800063c8:	00000097          	auipc	ra,0x0
    800063cc:	f40080e7          	jalr	-192(ra) # 80006308 <_ZN6Buffer6getCntEv>
    800063d0:	02a05c63          	blez	a0,80006408 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063d4:	0084b783          	ld	a5,8(s1)
    800063d8:	0104a703          	lw	a4,16(s1)
    800063dc:	00271713          	slli	a4,a4,0x2
    800063e0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063e4:	0007c503          	lbu	a0,0(a5)
    800063e8:	ffffb097          	auipc	ra,0xffffb
    800063ec:	15c080e7          	jalr	348(ra) # 80001544 <_Z4putcc>
        head = (head + 1) % cap;
    800063f0:	0104a783          	lw	a5,16(s1)
    800063f4:	0017879b          	addiw	a5,a5,1
    800063f8:	0004a703          	lw	a4,0(s1)
    800063fc:	02e7e7bb          	remw	a5,a5,a4
    80006400:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006404:	fc1ff06f          	j	800063c4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006408:	02100513          	li	a0,33
    8000640c:	ffffb097          	auipc	ra,0xffffb
    80006410:	138080e7          	jalr	312(ra) # 80001544 <_Z4putcc>
    putc('\n');
    80006414:	00a00513          	li	a0,10
    80006418:	ffffb097          	auipc	ra,0xffffb
    8000641c:	12c080e7          	jalr	300(ra) # 80001544 <_Z4putcc>
    mem_free(buffer);
    80006420:	0084b503          	ld	a0,8(s1)
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	e54080e7          	jalr	-428(ra) # 80001278 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000642c:	0204b503          	ld	a0,32(s1)
    80006430:	ffffb097          	auipc	ra,0xffffb
    80006434:	03c080e7          	jalr	60(ra) # 8000146c <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(spaceAvailable);
    80006438:	0184b503          	ld	a0,24(s1)
    8000643c:	ffffb097          	auipc	ra,0xffffb
    80006440:	030080e7          	jalr	48(ra) # 8000146c <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexTail);
    80006444:	0304b503          	ld	a0,48(s1)
    80006448:	ffffb097          	auipc	ra,0xffffb
    8000644c:	024080e7          	jalr	36(ra) # 8000146c <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexHead);
    80006450:	0284b503          	ld	a0,40(s1)
    80006454:	ffffb097          	auipc	ra,0xffffb
    80006458:	018080e7          	jalr	24(ra) # 8000146c <_Z9sem_closePN3ABI9SemaphoreE>
}
    8000645c:	01813083          	ld	ra,24(sp)
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	00813483          	ld	s1,8(sp)
    80006468:	02010113          	addi	sp,sp,32
    8000646c:	00008067          	ret

0000000080006470 <start>:
    80006470:	ff010113          	addi	sp,sp,-16
    80006474:	00813423          	sd	s0,8(sp)
    80006478:	01010413          	addi	s0,sp,16
    8000647c:	300027f3          	csrr	a5,mstatus
    80006480:	ffffe737          	lui	a4,0xffffe
    80006484:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1f4f>
    80006488:	00e7f7b3          	and	a5,a5,a4
    8000648c:	00001737          	lui	a4,0x1
    80006490:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006494:	00e7e7b3          	or	a5,a5,a4
    80006498:	30079073          	csrw	mstatus,a5
    8000649c:	00000797          	auipc	a5,0x0
    800064a0:	16078793          	addi	a5,a5,352 # 800065fc <system_main>
    800064a4:	34179073          	csrw	mepc,a5
    800064a8:	00000793          	li	a5,0
    800064ac:	18079073          	csrw	satp,a5
    800064b0:	000107b7          	lui	a5,0x10
    800064b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800064b8:	30279073          	csrw	medeleg,a5
    800064bc:	30379073          	csrw	mideleg,a5
    800064c0:	104027f3          	csrr	a5,sie
    800064c4:	2227e793          	ori	a5,a5,546
    800064c8:	10479073          	csrw	sie,a5
    800064cc:	fff00793          	li	a5,-1
    800064d0:	00a7d793          	srli	a5,a5,0xa
    800064d4:	3b079073          	csrw	pmpaddr0,a5
    800064d8:	00f00793          	li	a5,15
    800064dc:	3a079073          	csrw	pmpcfg0,a5
    800064e0:	f14027f3          	csrr	a5,mhartid
    800064e4:	0200c737          	lui	a4,0x200c
    800064e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064ec:	0007869b          	sext.w	a3,a5
    800064f0:	00269713          	slli	a4,a3,0x2
    800064f4:	000f4637          	lui	a2,0xf4
    800064f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064fc:	00d70733          	add	a4,a4,a3
    80006500:	0037979b          	slliw	a5,a5,0x3
    80006504:	020046b7          	lui	a3,0x2004
    80006508:	00d787b3          	add	a5,a5,a3
    8000650c:	00c585b3          	add	a1,a1,a2
    80006510:	00371693          	slli	a3,a4,0x3
    80006514:	00005717          	auipc	a4,0x5
    80006518:	13c70713          	addi	a4,a4,316 # 8000b650 <timer_scratch>
    8000651c:	00b7b023          	sd	a1,0(a5)
    80006520:	00d70733          	add	a4,a4,a3
    80006524:	00f73c23          	sd	a5,24(a4)
    80006528:	02c73023          	sd	a2,32(a4)
    8000652c:	34071073          	csrw	mscratch,a4
    80006530:	00000797          	auipc	a5,0x0
    80006534:	6e078793          	addi	a5,a5,1760 # 80006c10 <timervec>
    80006538:	30579073          	csrw	mtvec,a5
    8000653c:	300027f3          	csrr	a5,mstatus
    80006540:	0087e793          	ori	a5,a5,8
    80006544:	30079073          	csrw	mstatus,a5
    80006548:	304027f3          	csrr	a5,mie
    8000654c:	0807e793          	ori	a5,a5,128
    80006550:	30479073          	csrw	mie,a5
    80006554:	f14027f3          	csrr	a5,mhartid
    80006558:	0007879b          	sext.w	a5,a5
    8000655c:	00078213          	mv	tp,a5
    80006560:	30200073          	mret
    80006564:	00813403          	ld	s0,8(sp)
    80006568:	01010113          	addi	sp,sp,16
    8000656c:	00008067          	ret

0000000080006570 <timerinit>:
    80006570:	ff010113          	addi	sp,sp,-16
    80006574:	00813423          	sd	s0,8(sp)
    80006578:	01010413          	addi	s0,sp,16
    8000657c:	f14027f3          	csrr	a5,mhartid
    80006580:	0200c737          	lui	a4,0x200c
    80006584:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006588:	0007869b          	sext.w	a3,a5
    8000658c:	00269713          	slli	a4,a3,0x2
    80006590:	000f4637          	lui	a2,0xf4
    80006594:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006598:	00d70733          	add	a4,a4,a3
    8000659c:	0037979b          	slliw	a5,a5,0x3
    800065a0:	020046b7          	lui	a3,0x2004
    800065a4:	00d787b3          	add	a5,a5,a3
    800065a8:	00c585b3          	add	a1,a1,a2
    800065ac:	00371693          	slli	a3,a4,0x3
    800065b0:	00005717          	auipc	a4,0x5
    800065b4:	0a070713          	addi	a4,a4,160 # 8000b650 <timer_scratch>
    800065b8:	00b7b023          	sd	a1,0(a5)
    800065bc:	00d70733          	add	a4,a4,a3
    800065c0:	00f73c23          	sd	a5,24(a4)
    800065c4:	02c73023          	sd	a2,32(a4)
    800065c8:	34071073          	csrw	mscratch,a4
    800065cc:	00000797          	auipc	a5,0x0
    800065d0:	64478793          	addi	a5,a5,1604 # 80006c10 <timervec>
    800065d4:	30579073          	csrw	mtvec,a5
    800065d8:	300027f3          	csrr	a5,mstatus
    800065dc:	0087e793          	ori	a5,a5,8
    800065e0:	30079073          	csrw	mstatus,a5
    800065e4:	304027f3          	csrr	a5,mie
    800065e8:	0807e793          	ori	a5,a5,128
    800065ec:	30479073          	csrw	mie,a5
    800065f0:	00813403          	ld	s0,8(sp)
    800065f4:	01010113          	addi	sp,sp,16
    800065f8:	00008067          	ret

00000000800065fc <system_main>:
    800065fc:	fe010113          	addi	sp,sp,-32
    80006600:	00813823          	sd	s0,16(sp)
    80006604:	00913423          	sd	s1,8(sp)
    80006608:	00113c23          	sd	ra,24(sp)
    8000660c:	02010413          	addi	s0,sp,32
    80006610:	00000097          	auipc	ra,0x0
    80006614:	0c4080e7          	jalr	196(ra) # 800066d4 <cpuid>
    80006618:	00005497          	auipc	s1,0x5
    8000661c:	f7848493          	addi	s1,s1,-136 # 8000b590 <started>
    80006620:	02050263          	beqz	a0,80006644 <system_main+0x48>
    80006624:	0004a783          	lw	a5,0(s1)
    80006628:	0007879b          	sext.w	a5,a5
    8000662c:	fe078ce3          	beqz	a5,80006624 <system_main+0x28>
    80006630:	0ff0000f          	fence
    80006634:	00003517          	auipc	a0,0x3
    80006638:	fdc50513          	addi	a0,a0,-36 # 80009610 <CONSOLE_STATUS+0x600>
    8000663c:	00001097          	auipc	ra,0x1
    80006640:	a70080e7          	jalr	-1424(ra) # 800070ac <panic>
    80006644:	00001097          	auipc	ra,0x1
    80006648:	9c4080e7          	jalr	-1596(ra) # 80007008 <consoleinit>
    8000664c:	00001097          	auipc	ra,0x1
    80006650:	150080e7          	jalr	336(ra) # 8000779c <printfinit>
    80006654:	00003517          	auipc	a0,0x3
    80006658:	eb450513          	addi	a0,a0,-332 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000665c:	00001097          	auipc	ra,0x1
    80006660:	aac080e7          	jalr	-1364(ra) # 80007108 <__printf>
    80006664:	00003517          	auipc	a0,0x3
    80006668:	f7c50513          	addi	a0,a0,-132 # 800095e0 <CONSOLE_STATUS+0x5d0>
    8000666c:	00001097          	auipc	ra,0x1
    80006670:	a9c080e7          	jalr	-1380(ra) # 80007108 <__printf>
    80006674:	00003517          	auipc	a0,0x3
    80006678:	e9450513          	addi	a0,a0,-364 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000667c:	00001097          	auipc	ra,0x1
    80006680:	a8c080e7          	jalr	-1396(ra) # 80007108 <__printf>
    80006684:	00001097          	auipc	ra,0x1
    80006688:	4a4080e7          	jalr	1188(ra) # 80007b28 <kinit>
    8000668c:	00000097          	auipc	ra,0x0
    80006690:	148080e7          	jalr	328(ra) # 800067d4 <trapinit>
    80006694:	00000097          	auipc	ra,0x0
    80006698:	16c080e7          	jalr	364(ra) # 80006800 <trapinithart>
    8000669c:	00000097          	auipc	ra,0x0
    800066a0:	5b4080e7          	jalr	1460(ra) # 80006c50 <plicinit>
    800066a4:	00000097          	auipc	ra,0x0
    800066a8:	5d4080e7          	jalr	1492(ra) # 80006c78 <plicinithart>
    800066ac:	00000097          	auipc	ra,0x0
    800066b0:	078080e7          	jalr	120(ra) # 80006724 <userinit>
    800066b4:	0ff0000f          	fence
    800066b8:	00100793          	li	a5,1
    800066bc:	00003517          	auipc	a0,0x3
    800066c0:	f3c50513          	addi	a0,a0,-196 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800066c4:	00f4a023          	sw	a5,0(s1)
    800066c8:	00001097          	auipc	ra,0x1
    800066cc:	a40080e7          	jalr	-1472(ra) # 80007108 <__printf>
    800066d0:	0000006f          	j	800066d0 <system_main+0xd4>

00000000800066d4 <cpuid>:
    800066d4:	ff010113          	addi	sp,sp,-16
    800066d8:	00813423          	sd	s0,8(sp)
    800066dc:	01010413          	addi	s0,sp,16
    800066e0:	00020513          	mv	a0,tp
    800066e4:	00813403          	ld	s0,8(sp)
    800066e8:	0005051b          	sext.w	a0,a0
    800066ec:	01010113          	addi	sp,sp,16
    800066f0:	00008067          	ret

00000000800066f4 <mycpu>:
    800066f4:	ff010113          	addi	sp,sp,-16
    800066f8:	00813423          	sd	s0,8(sp)
    800066fc:	01010413          	addi	s0,sp,16
    80006700:	00020793          	mv	a5,tp
    80006704:	00813403          	ld	s0,8(sp)
    80006708:	0007879b          	sext.w	a5,a5
    8000670c:	00779793          	slli	a5,a5,0x7
    80006710:	00006517          	auipc	a0,0x6
    80006714:	f7050513          	addi	a0,a0,-144 # 8000c680 <cpus>
    80006718:	00f50533          	add	a0,a0,a5
    8000671c:	01010113          	addi	sp,sp,16
    80006720:	00008067          	ret

0000000080006724 <userinit>:
    80006724:	ff010113          	addi	sp,sp,-16
    80006728:	00813423          	sd	s0,8(sp)
    8000672c:	01010413          	addi	s0,sp,16
    80006730:	00813403          	ld	s0,8(sp)
    80006734:	01010113          	addi	sp,sp,16
    80006738:	ffffc317          	auipc	t1,0xffffc
    8000673c:	32c30067          	jr	812(t1) # 80002a64 <main>

0000000080006740 <either_copyout>:
    80006740:	ff010113          	addi	sp,sp,-16
    80006744:	00813023          	sd	s0,0(sp)
    80006748:	00113423          	sd	ra,8(sp)
    8000674c:	01010413          	addi	s0,sp,16
    80006750:	02051663          	bnez	a0,8000677c <either_copyout+0x3c>
    80006754:	00058513          	mv	a0,a1
    80006758:	00060593          	mv	a1,a2
    8000675c:	0006861b          	sext.w	a2,a3
    80006760:	00002097          	auipc	ra,0x2
    80006764:	c54080e7          	jalr	-940(ra) # 800083b4 <__memmove>
    80006768:	00813083          	ld	ra,8(sp)
    8000676c:	00013403          	ld	s0,0(sp)
    80006770:	00000513          	li	a0,0
    80006774:	01010113          	addi	sp,sp,16
    80006778:	00008067          	ret
    8000677c:	00003517          	auipc	a0,0x3
    80006780:	ebc50513          	addi	a0,a0,-324 # 80009638 <CONSOLE_STATUS+0x628>
    80006784:	00001097          	auipc	ra,0x1
    80006788:	928080e7          	jalr	-1752(ra) # 800070ac <panic>

000000008000678c <either_copyin>:
    8000678c:	ff010113          	addi	sp,sp,-16
    80006790:	00813023          	sd	s0,0(sp)
    80006794:	00113423          	sd	ra,8(sp)
    80006798:	01010413          	addi	s0,sp,16
    8000679c:	02059463          	bnez	a1,800067c4 <either_copyin+0x38>
    800067a0:	00060593          	mv	a1,a2
    800067a4:	0006861b          	sext.w	a2,a3
    800067a8:	00002097          	auipc	ra,0x2
    800067ac:	c0c080e7          	jalr	-1012(ra) # 800083b4 <__memmove>
    800067b0:	00813083          	ld	ra,8(sp)
    800067b4:	00013403          	ld	s0,0(sp)
    800067b8:	00000513          	li	a0,0
    800067bc:	01010113          	addi	sp,sp,16
    800067c0:	00008067          	ret
    800067c4:	00003517          	auipc	a0,0x3
    800067c8:	e9c50513          	addi	a0,a0,-356 # 80009660 <CONSOLE_STATUS+0x650>
    800067cc:	00001097          	auipc	ra,0x1
    800067d0:	8e0080e7          	jalr	-1824(ra) # 800070ac <panic>

00000000800067d4 <trapinit>:
    800067d4:	ff010113          	addi	sp,sp,-16
    800067d8:	00813423          	sd	s0,8(sp)
    800067dc:	01010413          	addi	s0,sp,16
    800067e0:	00813403          	ld	s0,8(sp)
    800067e4:	00003597          	auipc	a1,0x3
    800067e8:	ea458593          	addi	a1,a1,-348 # 80009688 <CONSOLE_STATUS+0x678>
    800067ec:	00006517          	auipc	a0,0x6
    800067f0:	f1450513          	addi	a0,a0,-236 # 8000c700 <tickslock>
    800067f4:	01010113          	addi	sp,sp,16
    800067f8:	00001317          	auipc	t1,0x1
    800067fc:	5c030067          	jr	1472(t1) # 80007db8 <initlock>

0000000080006800 <trapinithart>:
    80006800:	ff010113          	addi	sp,sp,-16
    80006804:	00813423          	sd	s0,8(sp)
    80006808:	01010413          	addi	s0,sp,16
    8000680c:	00000797          	auipc	a5,0x0
    80006810:	2f478793          	addi	a5,a5,756 # 80006b00 <kernelvec>
    80006814:	10579073          	csrw	stvec,a5
    80006818:	00813403          	ld	s0,8(sp)
    8000681c:	01010113          	addi	sp,sp,16
    80006820:	00008067          	ret

0000000080006824 <usertrap>:
    80006824:	ff010113          	addi	sp,sp,-16
    80006828:	00813423          	sd	s0,8(sp)
    8000682c:	01010413          	addi	s0,sp,16
    80006830:	00813403          	ld	s0,8(sp)
    80006834:	01010113          	addi	sp,sp,16
    80006838:	00008067          	ret

000000008000683c <usertrapret>:
    8000683c:	ff010113          	addi	sp,sp,-16
    80006840:	00813423          	sd	s0,8(sp)
    80006844:	01010413          	addi	s0,sp,16
    80006848:	00813403          	ld	s0,8(sp)
    8000684c:	01010113          	addi	sp,sp,16
    80006850:	00008067          	ret

0000000080006854 <kerneltrap>:
    80006854:	fe010113          	addi	sp,sp,-32
    80006858:	00813823          	sd	s0,16(sp)
    8000685c:	00113c23          	sd	ra,24(sp)
    80006860:	00913423          	sd	s1,8(sp)
    80006864:	02010413          	addi	s0,sp,32
    80006868:	142025f3          	csrr	a1,scause
    8000686c:	100027f3          	csrr	a5,sstatus
    80006870:	0027f793          	andi	a5,a5,2
    80006874:	10079c63          	bnez	a5,8000698c <kerneltrap+0x138>
    80006878:	142027f3          	csrr	a5,scause
    8000687c:	0207ce63          	bltz	a5,800068b8 <kerneltrap+0x64>
    80006880:	00003517          	auipc	a0,0x3
    80006884:	e5050513          	addi	a0,a0,-432 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006888:	00001097          	auipc	ra,0x1
    8000688c:	880080e7          	jalr	-1920(ra) # 80007108 <__printf>
    80006890:	141025f3          	csrr	a1,sepc
    80006894:	14302673          	csrr	a2,stval
    80006898:	00003517          	auipc	a0,0x3
    8000689c:	e4850513          	addi	a0,a0,-440 # 800096e0 <CONSOLE_STATUS+0x6d0>
    800068a0:	00001097          	auipc	ra,0x1
    800068a4:	868080e7          	jalr	-1944(ra) # 80007108 <__printf>
    800068a8:	00003517          	auipc	a0,0x3
    800068ac:	e5050513          	addi	a0,a0,-432 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800068b0:	00000097          	auipc	ra,0x0
    800068b4:	7fc080e7          	jalr	2044(ra) # 800070ac <panic>
    800068b8:	0ff7f713          	andi	a4,a5,255
    800068bc:	00900693          	li	a3,9
    800068c0:	04d70063          	beq	a4,a3,80006900 <kerneltrap+0xac>
    800068c4:	fff00713          	li	a4,-1
    800068c8:	03f71713          	slli	a4,a4,0x3f
    800068cc:	00170713          	addi	a4,a4,1
    800068d0:	fae798e3          	bne	a5,a4,80006880 <kerneltrap+0x2c>
    800068d4:	00000097          	auipc	ra,0x0
    800068d8:	e00080e7          	jalr	-512(ra) # 800066d4 <cpuid>
    800068dc:	06050663          	beqz	a0,80006948 <kerneltrap+0xf4>
    800068e0:	144027f3          	csrr	a5,sip
    800068e4:	ffd7f793          	andi	a5,a5,-3
    800068e8:	14479073          	csrw	sip,a5
    800068ec:	01813083          	ld	ra,24(sp)
    800068f0:	01013403          	ld	s0,16(sp)
    800068f4:	00813483          	ld	s1,8(sp)
    800068f8:	02010113          	addi	sp,sp,32
    800068fc:	00008067          	ret
    80006900:	00000097          	auipc	ra,0x0
    80006904:	3c4080e7          	jalr	964(ra) # 80006cc4 <plic_claim>
    80006908:	00a00793          	li	a5,10
    8000690c:	00050493          	mv	s1,a0
    80006910:	06f50863          	beq	a0,a5,80006980 <kerneltrap+0x12c>
    80006914:	fc050ce3          	beqz	a0,800068ec <kerneltrap+0x98>
    80006918:	00050593          	mv	a1,a0
    8000691c:	00003517          	auipc	a0,0x3
    80006920:	d9450513          	addi	a0,a0,-620 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006924:	00000097          	auipc	ra,0x0
    80006928:	7e4080e7          	jalr	2020(ra) # 80007108 <__printf>
    8000692c:	01013403          	ld	s0,16(sp)
    80006930:	01813083          	ld	ra,24(sp)
    80006934:	00048513          	mv	a0,s1
    80006938:	00813483          	ld	s1,8(sp)
    8000693c:	02010113          	addi	sp,sp,32
    80006940:	00000317          	auipc	t1,0x0
    80006944:	3bc30067          	jr	956(t1) # 80006cfc <plic_complete>
    80006948:	00006517          	auipc	a0,0x6
    8000694c:	db850513          	addi	a0,a0,-584 # 8000c700 <tickslock>
    80006950:	00001097          	auipc	ra,0x1
    80006954:	48c080e7          	jalr	1164(ra) # 80007ddc <acquire>
    80006958:	00005717          	auipc	a4,0x5
    8000695c:	c3c70713          	addi	a4,a4,-964 # 8000b594 <ticks>
    80006960:	00072783          	lw	a5,0(a4)
    80006964:	00006517          	auipc	a0,0x6
    80006968:	d9c50513          	addi	a0,a0,-612 # 8000c700 <tickslock>
    8000696c:	0017879b          	addiw	a5,a5,1
    80006970:	00f72023          	sw	a5,0(a4)
    80006974:	00001097          	auipc	ra,0x1
    80006978:	534080e7          	jalr	1332(ra) # 80007ea8 <release>
    8000697c:	f65ff06f          	j	800068e0 <kerneltrap+0x8c>
    80006980:	00001097          	auipc	ra,0x1
    80006984:	090080e7          	jalr	144(ra) # 80007a10 <uartintr>
    80006988:	fa5ff06f          	j	8000692c <kerneltrap+0xd8>
    8000698c:	00003517          	auipc	a0,0x3
    80006990:	d0450513          	addi	a0,a0,-764 # 80009690 <CONSOLE_STATUS+0x680>
    80006994:	00000097          	auipc	ra,0x0
    80006998:	718080e7          	jalr	1816(ra) # 800070ac <panic>

000000008000699c <clockintr>:
    8000699c:	fe010113          	addi	sp,sp,-32
    800069a0:	00813823          	sd	s0,16(sp)
    800069a4:	00913423          	sd	s1,8(sp)
    800069a8:	00113c23          	sd	ra,24(sp)
    800069ac:	02010413          	addi	s0,sp,32
    800069b0:	00006497          	auipc	s1,0x6
    800069b4:	d5048493          	addi	s1,s1,-688 # 8000c700 <tickslock>
    800069b8:	00048513          	mv	a0,s1
    800069bc:	00001097          	auipc	ra,0x1
    800069c0:	420080e7          	jalr	1056(ra) # 80007ddc <acquire>
    800069c4:	00005717          	auipc	a4,0x5
    800069c8:	bd070713          	addi	a4,a4,-1072 # 8000b594 <ticks>
    800069cc:	00072783          	lw	a5,0(a4)
    800069d0:	01013403          	ld	s0,16(sp)
    800069d4:	01813083          	ld	ra,24(sp)
    800069d8:	00048513          	mv	a0,s1
    800069dc:	0017879b          	addiw	a5,a5,1
    800069e0:	00813483          	ld	s1,8(sp)
    800069e4:	00f72023          	sw	a5,0(a4)
    800069e8:	02010113          	addi	sp,sp,32
    800069ec:	00001317          	auipc	t1,0x1
    800069f0:	4bc30067          	jr	1212(t1) # 80007ea8 <release>

00000000800069f4 <devintr>:
    800069f4:	142027f3          	csrr	a5,scause
    800069f8:	00000513          	li	a0,0
    800069fc:	0007c463          	bltz	a5,80006a04 <devintr+0x10>
    80006a00:	00008067          	ret
    80006a04:	fe010113          	addi	sp,sp,-32
    80006a08:	00813823          	sd	s0,16(sp)
    80006a0c:	00113c23          	sd	ra,24(sp)
    80006a10:	00913423          	sd	s1,8(sp)
    80006a14:	02010413          	addi	s0,sp,32
    80006a18:	0ff7f713          	andi	a4,a5,255
    80006a1c:	00900693          	li	a3,9
    80006a20:	04d70c63          	beq	a4,a3,80006a78 <devintr+0x84>
    80006a24:	fff00713          	li	a4,-1
    80006a28:	03f71713          	slli	a4,a4,0x3f
    80006a2c:	00170713          	addi	a4,a4,1
    80006a30:	00e78c63          	beq	a5,a4,80006a48 <devintr+0x54>
    80006a34:	01813083          	ld	ra,24(sp)
    80006a38:	01013403          	ld	s0,16(sp)
    80006a3c:	00813483          	ld	s1,8(sp)
    80006a40:	02010113          	addi	sp,sp,32
    80006a44:	00008067          	ret
    80006a48:	00000097          	auipc	ra,0x0
    80006a4c:	c8c080e7          	jalr	-884(ra) # 800066d4 <cpuid>
    80006a50:	06050663          	beqz	a0,80006abc <devintr+0xc8>
    80006a54:	144027f3          	csrr	a5,sip
    80006a58:	ffd7f793          	andi	a5,a5,-3
    80006a5c:	14479073          	csrw	sip,a5
    80006a60:	01813083          	ld	ra,24(sp)
    80006a64:	01013403          	ld	s0,16(sp)
    80006a68:	00813483          	ld	s1,8(sp)
    80006a6c:	00200513          	li	a0,2
    80006a70:	02010113          	addi	sp,sp,32
    80006a74:	00008067          	ret
    80006a78:	00000097          	auipc	ra,0x0
    80006a7c:	24c080e7          	jalr	588(ra) # 80006cc4 <plic_claim>
    80006a80:	00a00793          	li	a5,10
    80006a84:	00050493          	mv	s1,a0
    80006a88:	06f50663          	beq	a0,a5,80006af4 <devintr+0x100>
    80006a8c:	00100513          	li	a0,1
    80006a90:	fa0482e3          	beqz	s1,80006a34 <devintr+0x40>
    80006a94:	00048593          	mv	a1,s1
    80006a98:	00003517          	auipc	a0,0x3
    80006a9c:	c1850513          	addi	a0,a0,-1000 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	668080e7          	jalr	1640(ra) # 80007108 <__printf>
    80006aa8:	00048513          	mv	a0,s1
    80006aac:	00000097          	auipc	ra,0x0
    80006ab0:	250080e7          	jalr	592(ra) # 80006cfc <plic_complete>
    80006ab4:	00100513          	li	a0,1
    80006ab8:	f7dff06f          	j	80006a34 <devintr+0x40>
    80006abc:	00006517          	auipc	a0,0x6
    80006ac0:	c4450513          	addi	a0,a0,-956 # 8000c700 <tickslock>
    80006ac4:	00001097          	auipc	ra,0x1
    80006ac8:	318080e7          	jalr	792(ra) # 80007ddc <acquire>
    80006acc:	00005717          	auipc	a4,0x5
    80006ad0:	ac870713          	addi	a4,a4,-1336 # 8000b594 <ticks>
    80006ad4:	00072783          	lw	a5,0(a4)
    80006ad8:	00006517          	auipc	a0,0x6
    80006adc:	c2850513          	addi	a0,a0,-984 # 8000c700 <tickslock>
    80006ae0:	0017879b          	addiw	a5,a5,1
    80006ae4:	00f72023          	sw	a5,0(a4)
    80006ae8:	00001097          	auipc	ra,0x1
    80006aec:	3c0080e7          	jalr	960(ra) # 80007ea8 <release>
    80006af0:	f65ff06f          	j	80006a54 <devintr+0x60>
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	f1c080e7          	jalr	-228(ra) # 80007a10 <uartintr>
    80006afc:	fadff06f          	j	80006aa8 <devintr+0xb4>

0000000080006b00 <kernelvec>:
    80006b00:	f0010113          	addi	sp,sp,-256
    80006b04:	00113023          	sd	ra,0(sp)
    80006b08:	00213423          	sd	sp,8(sp)
    80006b0c:	00313823          	sd	gp,16(sp)
    80006b10:	00413c23          	sd	tp,24(sp)
    80006b14:	02513023          	sd	t0,32(sp)
    80006b18:	02613423          	sd	t1,40(sp)
    80006b1c:	02713823          	sd	t2,48(sp)
    80006b20:	02813c23          	sd	s0,56(sp)
    80006b24:	04913023          	sd	s1,64(sp)
    80006b28:	04a13423          	sd	a0,72(sp)
    80006b2c:	04b13823          	sd	a1,80(sp)
    80006b30:	04c13c23          	sd	a2,88(sp)
    80006b34:	06d13023          	sd	a3,96(sp)
    80006b38:	06e13423          	sd	a4,104(sp)
    80006b3c:	06f13823          	sd	a5,112(sp)
    80006b40:	07013c23          	sd	a6,120(sp)
    80006b44:	09113023          	sd	a7,128(sp)
    80006b48:	09213423          	sd	s2,136(sp)
    80006b4c:	09313823          	sd	s3,144(sp)
    80006b50:	09413c23          	sd	s4,152(sp)
    80006b54:	0b513023          	sd	s5,160(sp)
    80006b58:	0b613423          	sd	s6,168(sp)
    80006b5c:	0b713823          	sd	s7,176(sp)
    80006b60:	0b813c23          	sd	s8,184(sp)
    80006b64:	0d913023          	sd	s9,192(sp)
    80006b68:	0da13423          	sd	s10,200(sp)
    80006b6c:	0db13823          	sd	s11,208(sp)
    80006b70:	0dc13c23          	sd	t3,216(sp)
    80006b74:	0fd13023          	sd	t4,224(sp)
    80006b78:	0fe13423          	sd	t5,232(sp)
    80006b7c:	0ff13823          	sd	t6,240(sp)
    80006b80:	cd5ff0ef          	jal	ra,80006854 <kerneltrap>
    80006b84:	00013083          	ld	ra,0(sp)
    80006b88:	00813103          	ld	sp,8(sp)
    80006b8c:	01013183          	ld	gp,16(sp)
    80006b90:	02013283          	ld	t0,32(sp)
    80006b94:	02813303          	ld	t1,40(sp)
    80006b98:	03013383          	ld	t2,48(sp)
    80006b9c:	03813403          	ld	s0,56(sp)
    80006ba0:	04013483          	ld	s1,64(sp)
    80006ba4:	04813503          	ld	a0,72(sp)
    80006ba8:	05013583          	ld	a1,80(sp)
    80006bac:	05813603          	ld	a2,88(sp)
    80006bb0:	06013683          	ld	a3,96(sp)
    80006bb4:	06813703          	ld	a4,104(sp)
    80006bb8:	07013783          	ld	a5,112(sp)
    80006bbc:	07813803          	ld	a6,120(sp)
    80006bc0:	08013883          	ld	a7,128(sp)
    80006bc4:	08813903          	ld	s2,136(sp)
    80006bc8:	09013983          	ld	s3,144(sp)
    80006bcc:	09813a03          	ld	s4,152(sp)
    80006bd0:	0a013a83          	ld	s5,160(sp)
    80006bd4:	0a813b03          	ld	s6,168(sp)
    80006bd8:	0b013b83          	ld	s7,176(sp)
    80006bdc:	0b813c03          	ld	s8,184(sp)
    80006be0:	0c013c83          	ld	s9,192(sp)
    80006be4:	0c813d03          	ld	s10,200(sp)
    80006be8:	0d013d83          	ld	s11,208(sp)
    80006bec:	0d813e03          	ld	t3,216(sp)
    80006bf0:	0e013e83          	ld	t4,224(sp)
    80006bf4:	0e813f03          	ld	t5,232(sp)
    80006bf8:	0f013f83          	ld	t6,240(sp)
    80006bfc:	10010113          	addi	sp,sp,256
    80006c00:	10200073          	sret
    80006c04:	00000013          	nop
    80006c08:	00000013          	nop
    80006c0c:	00000013          	nop

0000000080006c10 <timervec>:
    80006c10:	34051573          	csrrw	a0,mscratch,a0
    80006c14:	00b53023          	sd	a1,0(a0)
    80006c18:	00c53423          	sd	a2,8(a0)
    80006c1c:	00d53823          	sd	a3,16(a0)
    80006c20:	01853583          	ld	a1,24(a0)
    80006c24:	02053603          	ld	a2,32(a0)
    80006c28:	0005b683          	ld	a3,0(a1)
    80006c2c:	00c686b3          	add	a3,a3,a2
    80006c30:	00d5b023          	sd	a3,0(a1)
    80006c34:	00200593          	li	a1,2
    80006c38:	14459073          	csrw	sip,a1
    80006c3c:	01053683          	ld	a3,16(a0)
    80006c40:	00853603          	ld	a2,8(a0)
    80006c44:	00053583          	ld	a1,0(a0)
    80006c48:	34051573          	csrrw	a0,mscratch,a0
    80006c4c:	30200073          	mret

0000000080006c50 <plicinit>:
    80006c50:	ff010113          	addi	sp,sp,-16
    80006c54:	00813423          	sd	s0,8(sp)
    80006c58:	01010413          	addi	s0,sp,16
    80006c5c:	00813403          	ld	s0,8(sp)
    80006c60:	0c0007b7          	lui	a5,0xc000
    80006c64:	00100713          	li	a4,1
    80006c68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c6c:	00e7a223          	sw	a4,4(a5)
    80006c70:	01010113          	addi	sp,sp,16
    80006c74:	00008067          	ret

0000000080006c78 <plicinithart>:
    80006c78:	ff010113          	addi	sp,sp,-16
    80006c7c:	00813023          	sd	s0,0(sp)
    80006c80:	00113423          	sd	ra,8(sp)
    80006c84:	01010413          	addi	s0,sp,16
    80006c88:	00000097          	auipc	ra,0x0
    80006c8c:	a4c080e7          	jalr	-1460(ra) # 800066d4 <cpuid>
    80006c90:	0085171b          	slliw	a4,a0,0x8
    80006c94:	0c0027b7          	lui	a5,0xc002
    80006c98:	00e787b3          	add	a5,a5,a4
    80006c9c:	40200713          	li	a4,1026
    80006ca0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ca4:	00813083          	ld	ra,8(sp)
    80006ca8:	00013403          	ld	s0,0(sp)
    80006cac:	00d5151b          	slliw	a0,a0,0xd
    80006cb0:	0c2017b7          	lui	a5,0xc201
    80006cb4:	00a78533          	add	a0,a5,a0
    80006cb8:	00052023          	sw	zero,0(a0)
    80006cbc:	01010113          	addi	sp,sp,16
    80006cc0:	00008067          	ret

0000000080006cc4 <plic_claim>:
    80006cc4:	ff010113          	addi	sp,sp,-16
    80006cc8:	00813023          	sd	s0,0(sp)
    80006ccc:	00113423          	sd	ra,8(sp)
    80006cd0:	01010413          	addi	s0,sp,16
    80006cd4:	00000097          	auipc	ra,0x0
    80006cd8:	a00080e7          	jalr	-1536(ra) # 800066d4 <cpuid>
    80006cdc:	00813083          	ld	ra,8(sp)
    80006ce0:	00013403          	ld	s0,0(sp)
    80006ce4:	00d5151b          	slliw	a0,a0,0xd
    80006ce8:	0c2017b7          	lui	a5,0xc201
    80006cec:	00a78533          	add	a0,a5,a0
    80006cf0:	00452503          	lw	a0,4(a0)
    80006cf4:	01010113          	addi	sp,sp,16
    80006cf8:	00008067          	ret

0000000080006cfc <plic_complete>:
    80006cfc:	fe010113          	addi	sp,sp,-32
    80006d00:	00813823          	sd	s0,16(sp)
    80006d04:	00913423          	sd	s1,8(sp)
    80006d08:	00113c23          	sd	ra,24(sp)
    80006d0c:	02010413          	addi	s0,sp,32
    80006d10:	00050493          	mv	s1,a0
    80006d14:	00000097          	auipc	ra,0x0
    80006d18:	9c0080e7          	jalr	-1600(ra) # 800066d4 <cpuid>
    80006d1c:	01813083          	ld	ra,24(sp)
    80006d20:	01013403          	ld	s0,16(sp)
    80006d24:	00d5179b          	slliw	a5,a0,0xd
    80006d28:	0c201737          	lui	a4,0xc201
    80006d2c:	00f707b3          	add	a5,a4,a5
    80006d30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d34:	00813483          	ld	s1,8(sp)
    80006d38:	02010113          	addi	sp,sp,32
    80006d3c:	00008067          	ret

0000000080006d40 <consolewrite>:
    80006d40:	fb010113          	addi	sp,sp,-80
    80006d44:	04813023          	sd	s0,64(sp)
    80006d48:	04113423          	sd	ra,72(sp)
    80006d4c:	02913c23          	sd	s1,56(sp)
    80006d50:	03213823          	sd	s2,48(sp)
    80006d54:	03313423          	sd	s3,40(sp)
    80006d58:	03413023          	sd	s4,32(sp)
    80006d5c:	01513c23          	sd	s5,24(sp)
    80006d60:	05010413          	addi	s0,sp,80
    80006d64:	06c05c63          	blez	a2,80006ddc <consolewrite+0x9c>
    80006d68:	00060993          	mv	s3,a2
    80006d6c:	00050a13          	mv	s4,a0
    80006d70:	00058493          	mv	s1,a1
    80006d74:	00000913          	li	s2,0
    80006d78:	fff00a93          	li	s5,-1
    80006d7c:	01c0006f          	j	80006d98 <consolewrite+0x58>
    80006d80:	fbf44503          	lbu	a0,-65(s0)
    80006d84:	0019091b          	addiw	s2,s2,1
    80006d88:	00148493          	addi	s1,s1,1
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	a9c080e7          	jalr	-1380(ra) # 80007828 <uartputc>
    80006d94:	03298063          	beq	s3,s2,80006db4 <consolewrite+0x74>
    80006d98:	00048613          	mv	a2,s1
    80006d9c:	00100693          	li	a3,1
    80006da0:	000a0593          	mv	a1,s4
    80006da4:	fbf40513          	addi	a0,s0,-65
    80006da8:	00000097          	auipc	ra,0x0
    80006dac:	9e4080e7          	jalr	-1564(ra) # 8000678c <either_copyin>
    80006db0:	fd5518e3          	bne	a0,s5,80006d80 <consolewrite+0x40>
    80006db4:	04813083          	ld	ra,72(sp)
    80006db8:	04013403          	ld	s0,64(sp)
    80006dbc:	03813483          	ld	s1,56(sp)
    80006dc0:	02813983          	ld	s3,40(sp)
    80006dc4:	02013a03          	ld	s4,32(sp)
    80006dc8:	01813a83          	ld	s5,24(sp)
    80006dcc:	00090513          	mv	a0,s2
    80006dd0:	03013903          	ld	s2,48(sp)
    80006dd4:	05010113          	addi	sp,sp,80
    80006dd8:	00008067          	ret
    80006ddc:	00000913          	li	s2,0
    80006de0:	fd5ff06f          	j	80006db4 <consolewrite+0x74>

0000000080006de4 <consoleread>:
    80006de4:	f9010113          	addi	sp,sp,-112
    80006de8:	06813023          	sd	s0,96(sp)
    80006dec:	04913c23          	sd	s1,88(sp)
    80006df0:	05213823          	sd	s2,80(sp)
    80006df4:	05313423          	sd	s3,72(sp)
    80006df8:	05413023          	sd	s4,64(sp)
    80006dfc:	03513c23          	sd	s5,56(sp)
    80006e00:	03613823          	sd	s6,48(sp)
    80006e04:	03713423          	sd	s7,40(sp)
    80006e08:	03813023          	sd	s8,32(sp)
    80006e0c:	06113423          	sd	ra,104(sp)
    80006e10:	01913c23          	sd	s9,24(sp)
    80006e14:	07010413          	addi	s0,sp,112
    80006e18:	00060b93          	mv	s7,a2
    80006e1c:	00050913          	mv	s2,a0
    80006e20:	00058c13          	mv	s8,a1
    80006e24:	00060b1b          	sext.w	s6,a2
    80006e28:	00006497          	auipc	s1,0x6
    80006e2c:	90048493          	addi	s1,s1,-1792 # 8000c728 <cons>
    80006e30:	00400993          	li	s3,4
    80006e34:	fff00a13          	li	s4,-1
    80006e38:	00a00a93          	li	s5,10
    80006e3c:	05705e63          	blez	s7,80006e98 <consoleread+0xb4>
    80006e40:	09c4a703          	lw	a4,156(s1)
    80006e44:	0984a783          	lw	a5,152(s1)
    80006e48:	0007071b          	sext.w	a4,a4
    80006e4c:	08e78463          	beq	a5,a4,80006ed4 <consoleread+0xf0>
    80006e50:	07f7f713          	andi	a4,a5,127
    80006e54:	00e48733          	add	a4,s1,a4
    80006e58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e5c:	0017869b          	addiw	a3,a5,1
    80006e60:	08d4ac23          	sw	a3,152(s1)
    80006e64:	00070c9b          	sext.w	s9,a4
    80006e68:	0b370663          	beq	a4,s3,80006f14 <consoleread+0x130>
    80006e6c:	00100693          	li	a3,1
    80006e70:	f9f40613          	addi	a2,s0,-97
    80006e74:	000c0593          	mv	a1,s8
    80006e78:	00090513          	mv	a0,s2
    80006e7c:	f8e40fa3          	sb	a4,-97(s0)
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	8c0080e7          	jalr	-1856(ra) # 80006740 <either_copyout>
    80006e88:	01450863          	beq	a0,s4,80006e98 <consoleread+0xb4>
    80006e8c:	001c0c13          	addi	s8,s8,1
    80006e90:	fffb8b9b          	addiw	s7,s7,-1
    80006e94:	fb5c94e3          	bne	s9,s5,80006e3c <consoleread+0x58>
    80006e98:	000b851b          	sext.w	a0,s7
    80006e9c:	06813083          	ld	ra,104(sp)
    80006ea0:	06013403          	ld	s0,96(sp)
    80006ea4:	05813483          	ld	s1,88(sp)
    80006ea8:	05013903          	ld	s2,80(sp)
    80006eac:	04813983          	ld	s3,72(sp)
    80006eb0:	04013a03          	ld	s4,64(sp)
    80006eb4:	03813a83          	ld	s5,56(sp)
    80006eb8:	02813b83          	ld	s7,40(sp)
    80006ebc:	02013c03          	ld	s8,32(sp)
    80006ec0:	01813c83          	ld	s9,24(sp)
    80006ec4:	40ab053b          	subw	a0,s6,a0
    80006ec8:	03013b03          	ld	s6,48(sp)
    80006ecc:	07010113          	addi	sp,sp,112
    80006ed0:	00008067          	ret
    80006ed4:	00001097          	auipc	ra,0x1
    80006ed8:	1d8080e7          	jalr	472(ra) # 800080ac <push_on>
    80006edc:	0984a703          	lw	a4,152(s1)
    80006ee0:	09c4a783          	lw	a5,156(s1)
    80006ee4:	0007879b          	sext.w	a5,a5
    80006ee8:	fef70ce3          	beq	a4,a5,80006ee0 <consoleread+0xfc>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	234080e7          	jalr	564(ra) # 80008120 <pop_on>
    80006ef4:	0984a783          	lw	a5,152(s1)
    80006ef8:	07f7f713          	andi	a4,a5,127
    80006efc:	00e48733          	add	a4,s1,a4
    80006f00:	01874703          	lbu	a4,24(a4)
    80006f04:	0017869b          	addiw	a3,a5,1
    80006f08:	08d4ac23          	sw	a3,152(s1)
    80006f0c:	00070c9b          	sext.w	s9,a4
    80006f10:	f5371ee3          	bne	a4,s3,80006e6c <consoleread+0x88>
    80006f14:	000b851b          	sext.w	a0,s7
    80006f18:	f96bf2e3          	bgeu	s7,s6,80006e9c <consoleread+0xb8>
    80006f1c:	08f4ac23          	sw	a5,152(s1)
    80006f20:	f7dff06f          	j	80006e9c <consoleread+0xb8>

0000000080006f24 <consputc>:
    80006f24:	10000793          	li	a5,256
    80006f28:	00f50663          	beq	a0,a5,80006f34 <consputc+0x10>
    80006f2c:	00001317          	auipc	t1,0x1
    80006f30:	9f430067          	jr	-1548(t1) # 80007920 <uartputc_sync>
    80006f34:	ff010113          	addi	sp,sp,-16
    80006f38:	00113423          	sd	ra,8(sp)
    80006f3c:	00813023          	sd	s0,0(sp)
    80006f40:	01010413          	addi	s0,sp,16
    80006f44:	00800513          	li	a0,8
    80006f48:	00001097          	auipc	ra,0x1
    80006f4c:	9d8080e7          	jalr	-1576(ra) # 80007920 <uartputc_sync>
    80006f50:	02000513          	li	a0,32
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	9cc080e7          	jalr	-1588(ra) # 80007920 <uartputc_sync>
    80006f5c:	00013403          	ld	s0,0(sp)
    80006f60:	00813083          	ld	ra,8(sp)
    80006f64:	00800513          	li	a0,8
    80006f68:	01010113          	addi	sp,sp,16
    80006f6c:	00001317          	auipc	t1,0x1
    80006f70:	9b430067          	jr	-1612(t1) # 80007920 <uartputc_sync>

0000000080006f74 <consoleintr>:
    80006f74:	fe010113          	addi	sp,sp,-32
    80006f78:	00813823          	sd	s0,16(sp)
    80006f7c:	00913423          	sd	s1,8(sp)
    80006f80:	01213023          	sd	s2,0(sp)
    80006f84:	00113c23          	sd	ra,24(sp)
    80006f88:	02010413          	addi	s0,sp,32
    80006f8c:	00005917          	auipc	s2,0x5
    80006f90:	79c90913          	addi	s2,s2,1948 # 8000c728 <cons>
    80006f94:	00050493          	mv	s1,a0
    80006f98:	00090513          	mv	a0,s2
    80006f9c:	00001097          	auipc	ra,0x1
    80006fa0:	e40080e7          	jalr	-448(ra) # 80007ddc <acquire>
    80006fa4:	02048c63          	beqz	s1,80006fdc <consoleintr+0x68>
    80006fa8:	0a092783          	lw	a5,160(s2)
    80006fac:	09892703          	lw	a4,152(s2)
    80006fb0:	07f00693          	li	a3,127
    80006fb4:	40e7873b          	subw	a4,a5,a4
    80006fb8:	02e6e263          	bltu	a3,a4,80006fdc <consoleintr+0x68>
    80006fbc:	00d00713          	li	a4,13
    80006fc0:	04e48063          	beq	s1,a4,80007000 <consoleintr+0x8c>
    80006fc4:	07f7f713          	andi	a4,a5,127
    80006fc8:	00e90733          	add	a4,s2,a4
    80006fcc:	0017879b          	addiw	a5,a5,1
    80006fd0:	0af92023          	sw	a5,160(s2)
    80006fd4:	00970c23          	sb	s1,24(a4)
    80006fd8:	08f92e23          	sw	a5,156(s2)
    80006fdc:	01013403          	ld	s0,16(sp)
    80006fe0:	01813083          	ld	ra,24(sp)
    80006fe4:	00813483          	ld	s1,8(sp)
    80006fe8:	00013903          	ld	s2,0(sp)
    80006fec:	00005517          	auipc	a0,0x5
    80006ff0:	73c50513          	addi	a0,a0,1852 # 8000c728 <cons>
    80006ff4:	02010113          	addi	sp,sp,32
    80006ff8:	00001317          	auipc	t1,0x1
    80006ffc:	eb030067          	jr	-336(t1) # 80007ea8 <release>
    80007000:	00a00493          	li	s1,10
    80007004:	fc1ff06f          	j	80006fc4 <consoleintr+0x50>

0000000080007008 <consoleinit>:
    80007008:	fe010113          	addi	sp,sp,-32
    8000700c:	00113c23          	sd	ra,24(sp)
    80007010:	00813823          	sd	s0,16(sp)
    80007014:	00913423          	sd	s1,8(sp)
    80007018:	02010413          	addi	s0,sp,32
    8000701c:	00005497          	auipc	s1,0x5
    80007020:	70c48493          	addi	s1,s1,1804 # 8000c728 <cons>
    80007024:	00048513          	mv	a0,s1
    80007028:	00002597          	auipc	a1,0x2
    8000702c:	6e058593          	addi	a1,a1,1760 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007030:	00001097          	auipc	ra,0x1
    80007034:	d88080e7          	jalr	-632(ra) # 80007db8 <initlock>
    80007038:	00000097          	auipc	ra,0x0
    8000703c:	7ac080e7          	jalr	1964(ra) # 800077e4 <uartinit>
    80007040:	01813083          	ld	ra,24(sp)
    80007044:	01013403          	ld	s0,16(sp)
    80007048:	00000797          	auipc	a5,0x0
    8000704c:	d9c78793          	addi	a5,a5,-612 # 80006de4 <consoleread>
    80007050:	0af4bc23          	sd	a5,184(s1)
    80007054:	00000797          	auipc	a5,0x0
    80007058:	cec78793          	addi	a5,a5,-788 # 80006d40 <consolewrite>
    8000705c:	0cf4b023          	sd	a5,192(s1)
    80007060:	00813483          	ld	s1,8(sp)
    80007064:	02010113          	addi	sp,sp,32
    80007068:	00008067          	ret

000000008000706c <console_read>:
    8000706c:	ff010113          	addi	sp,sp,-16
    80007070:	00813423          	sd	s0,8(sp)
    80007074:	01010413          	addi	s0,sp,16
    80007078:	00813403          	ld	s0,8(sp)
    8000707c:	00005317          	auipc	t1,0x5
    80007080:	76433303          	ld	t1,1892(t1) # 8000c7e0 <devsw+0x10>
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00030067          	jr	t1

000000008000708c <console_write>:
    8000708c:	ff010113          	addi	sp,sp,-16
    80007090:	00813423          	sd	s0,8(sp)
    80007094:	01010413          	addi	s0,sp,16
    80007098:	00813403          	ld	s0,8(sp)
    8000709c:	00005317          	auipc	t1,0x5
    800070a0:	74c33303          	ld	t1,1868(t1) # 8000c7e8 <devsw+0x18>
    800070a4:	01010113          	addi	sp,sp,16
    800070a8:	00030067          	jr	t1

00000000800070ac <panic>:
    800070ac:	fe010113          	addi	sp,sp,-32
    800070b0:	00113c23          	sd	ra,24(sp)
    800070b4:	00813823          	sd	s0,16(sp)
    800070b8:	00913423          	sd	s1,8(sp)
    800070bc:	02010413          	addi	s0,sp,32
    800070c0:	00050493          	mv	s1,a0
    800070c4:	00002517          	auipc	a0,0x2
    800070c8:	64c50513          	addi	a0,a0,1612 # 80009710 <CONSOLE_STATUS+0x700>
    800070cc:	00005797          	auipc	a5,0x5
    800070d0:	7a07ae23          	sw	zero,1980(a5) # 8000c888 <pr+0x18>
    800070d4:	00000097          	auipc	ra,0x0
    800070d8:	034080e7          	jalr	52(ra) # 80007108 <__printf>
    800070dc:	00048513          	mv	a0,s1
    800070e0:	00000097          	auipc	ra,0x0
    800070e4:	028080e7          	jalr	40(ra) # 80007108 <__printf>
    800070e8:	00002517          	auipc	a0,0x2
    800070ec:	42050513          	addi	a0,a0,1056 # 80009508 <CONSOLE_STATUS+0x4f8>
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	018080e7          	jalr	24(ra) # 80007108 <__printf>
    800070f8:	00100793          	li	a5,1
    800070fc:	00004717          	auipc	a4,0x4
    80007100:	48f72e23          	sw	a5,1180(a4) # 8000b598 <panicked>
    80007104:	0000006f          	j	80007104 <panic+0x58>

0000000080007108 <__printf>:
    80007108:	f3010113          	addi	sp,sp,-208
    8000710c:	08813023          	sd	s0,128(sp)
    80007110:	07313423          	sd	s3,104(sp)
    80007114:	09010413          	addi	s0,sp,144
    80007118:	05813023          	sd	s8,64(sp)
    8000711c:	08113423          	sd	ra,136(sp)
    80007120:	06913c23          	sd	s1,120(sp)
    80007124:	07213823          	sd	s2,112(sp)
    80007128:	07413023          	sd	s4,96(sp)
    8000712c:	05513c23          	sd	s5,88(sp)
    80007130:	05613823          	sd	s6,80(sp)
    80007134:	05713423          	sd	s7,72(sp)
    80007138:	03913c23          	sd	s9,56(sp)
    8000713c:	03a13823          	sd	s10,48(sp)
    80007140:	03b13423          	sd	s11,40(sp)
    80007144:	00005317          	auipc	t1,0x5
    80007148:	72c30313          	addi	t1,t1,1836 # 8000c870 <pr>
    8000714c:	01832c03          	lw	s8,24(t1)
    80007150:	00b43423          	sd	a1,8(s0)
    80007154:	00c43823          	sd	a2,16(s0)
    80007158:	00d43c23          	sd	a3,24(s0)
    8000715c:	02e43023          	sd	a4,32(s0)
    80007160:	02f43423          	sd	a5,40(s0)
    80007164:	03043823          	sd	a6,48(s0)
    80007168:	03143c23          	sd	a7,56(s0)
    8000716c:	00050993          	mv	s3,a0
    80007170:	4a0c1663          	bnez	s8,8000761c <__printf+0x514>
    80007174:	60098c63          	beqz	s3,8000778c <__printf+0x684>
    80007178:	0009c503          	lbu	a0,0(s3)
    8000717c:	00840793          	addi	a5,s0,8
    80007180:	f6f43c23          	sd	a5,-136(s0)
    80007184:	00000493          	li	s1,0
    80007188:	22050063          	beqz	a0,800073a8 <__printf+0x2a0>
    8000718c:	00002a37          	lui	s4,0x2
    80007190:	00018ab7          	lui	s5,0x18
    80007194:	000f4b37          	lui	s6,0xf4
    80007198:	00989bb7          	lui	s7,0x989
    8000719c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800071a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800071a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800071a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800071ac:	00148c9b          	addiw	s9,s1,1
    800071b0:	02500793          	li	a5,37
    800071b4:	01998933          	add	s2,s3,s9
    800071b8:	38f51263          	bne	a0,a5,8000753c <__printf+0x434>
    800071bc:	00094783          	lbu	a5,0(s2)
    800071c0:	00078c9b          	sext.w	s9,a5
    800071c4:	1e078263          	beqz	a5,800073a8 <__printf+0x2a0>
    800071c8:	0024849b          	addiw	s1,s1,2
    800071cc:	07000713          	li	a4,112
    800071d0:	00998933          	add	s2,s3,s1
    800071d4:	38e78a63          	beq	a5,a4,80007568 <__printf+0x460>
    800071d8:	20f76863          	bltu	a4,a5,800073e8 <__printf+0x2e0>
    800071dc:	42a78863          	beq	a5,a0,8000760c <__printf+0x504>
    800071e0:	06400713          	li	a4,100
    800071e4:	40e79663          	bne	a5,a4,800075f0 <__printf+0x4e8>
    800071e8:	f7843783          	ld	a5,-136(s0)
    800071ec:	0007a603          	lw	a2,0(a5)
    800071f0:	00878793          	addi	a5,a5,8
    800071f4:	f6f43c23          	sd	a5,-136(s0)
    800071f8:	42064a63          	bltz	a2,8000762c <__printf+0x524>
    800071fc:	00a00713          	li	a4,10
    80007200:	02e677bb          	remuw	a5,a2,a4
    80007204:	00002d97          	auipc	s11,0x2
    80007208:	534d8d93          	addi	s11,s11,1332 # 80009738 <digits>
    8000720c:	00900593          	li	a1,9
    80007210:	0006051b          	sext.w	a0,a2
    80007214:	00000c93          	li	s9,0
    80007218:	02079793          	slli	a5,a5,0x20
    8000721c:	0207d793          	srli	a5,a5,0x20
    80007220:	00fd87b3          	add	a5,s11,a5
    80007224:	0007c783          	lbu	a5,0(a5)
    80007228:	02e656bb          	divuw	a3,a2,a4
    8000722c:	f8f40023          	sb	a5,-128(s0)
    80007230:	14c5d863          	bge	a1,a2,80007380 <__printf+0x278>
    80007234:	06300593          	li	a1,99
    80007238:	00100c93          	li	s9,1
    8000723c:	02e6f7bb          	remuw	a5,a3,a4
    80007240:	02079793          	slli	a5,a5,0x20
    80007244:	0207d793          	srli	a5,a5,0x20
    80007248:	00fd87b3          	add	a5,s11,a5
    8000724c:	0007c783          	lbu	a5,0(a5)
    80007250:	02e6d73b          	divuw	a4,a3,a4
    80007254:	f8f400a3          	sb	a5,-127(s0)
    80007258:	12a5f463          	bgeu	a1,a0,80007380 <__printf+0x278>
    8000725c:	00a00693          	li	a3,10
    80007260:	00900593          	li	a1,9
    80007264:	02d777bb          	remuw	a5,a4,a3
    80007268:	02079793          	slli	a5,a5,0x20
    8000726c:	0207d793          	srli	a5,a5,0x20
    80007270:	00fd87b3          	add	a5,s11,a5
    80007274:	0007c503          	lbu	a0,0(a5)
    80007278:	02d757bb          	divuw	a5,a4,a3
    8000727c:	f8a40123          	sb	a0,-126(s0)
    80007280:	48e5f263          	bgeu	a1,a4,80007704 <__printf+0x5fc>
    80007284:	06300513          	li	a0,99
    80007288:	02d7f5bb          	remuw	a1,a5,a3
    8000728c:	02059593          	slli	a1,a1,0x20
    80007290:	0205d593          	srli	a1,a1,0x20
    80007294:	00bd85b3          	add	a1,s11,a1
    80007298:	0005c583          	lbu	a1,0(a1)
    8000729c:	02d7d7bb          	divuw	a5,a5,a3
    800072a0:	f8b401a3          	sb	a1,-125(s0)
    800072a4:	48e57263          	bgeu	a0,a4,80007728 <__printf+0x620>
    800072a8:	3e700513          	li	a0,999
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b40223          	sb	a1,-124(s0)
    800072c8:	46e57663          	bgeu	a0,a4,80007734 <__printf+0x62c>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b402a3          	sb	a1,-123(s0)
    800072e8:	46ea7863          	bgeu	s4,a4,80007758 <__printf+0x650>
    800072ec:	02d7f5bb          	remuw	a1,a5,a3
    800072f0:	02059593          	slli	a1,a1,0x20
    800072f4:	0205d593          	srli	a1,a1,0x20
    800072f8:	00bd85b3          	add	a1,s11,a1
    800072fc:	0005c583          	lbu	a1,0(a1)
    80007300:	02d7d7bb          	divuw	a5,a5,a3
    80007304:	f8b40323          	sb	a1,-122(s0)
    80007308:	3eeaf863          	bgeu	s5,a4,800076f8 <__printf+0x5f0>
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b403a3          	sb	a1,-121(s0)
    80007328:	42eb7e63          	bgeu	s6,a4,80007764 <__printf+0x65c>
    8000732c:	02d7f5bb          	remuw	a1,a5,a3
    80007330:	02059593          	slli	a1,a1,0x20
    80007334:	0205d593          	srli	a1,a1,0x20
    80007338:	00bd85b3          	add	a1,s11,a1
    8000733c:	0005c583          	lbu	a1,0(a1)
    80007340:	02d7d7bb          	divuw	a5,a5,a3
    80007344:	f8b40423          	sb	a1,-120(s0)
    80007348:	42ebfc63          	bgeu	s7,a4,80007780 <__printf+0x678>
    8000734c:	02079793          	slli	a5,a5,0x20
    80007350:	0207d793          	srli	a5,a5,0x20
    80007354:	00fd8db3          	add	s11,s11,a5
    80007358:	000dc703          	lbu	a4,0(s11)
    8000735c:	00a00793          	li	a5,10
    80007360:	00900c93          	li	s9,9
    80007364:	f8e404a3          	sb	a4,-119(s0)
    80007368:	00065c63          	bgez	a2,80007380 <__printf+0x278>
    8000736c:	f9040713          	addi	a4,s0,-112
    80007370:	00f70733          	add	a4,a4,a5
    80007374:	02d00693          	li	a3,45
    80007378:	fed70823          	sb	a3,-16(a4)
    8000737c:	00078c93          	mv	s9,a5
    80007380:	f8040793          	addi	a5,s0,-128
    80007384:	01978cb3          	add	s9,a5,s9
    80007388:	f7f40d13          	addi	s10,s0,-129
    8000738c:	000cc503          	lbu	a0,0(s9)
    80007390:	fffc8c93          	addi	s9,s9,-1
    80007394:	00000097          	auipc	ra,0x0
    80007398:	b90080e7          	jalr	-1136(ra) # 80006f24 <consputc>
    8000739c:	ffac98e3          	bne	s9,s10,8000738c <__printf+0x284>
    800073a0:	00094503          	lbu	a0,0(s2)
    800073a4:	e00514e3          	bnez	a0,800071ac <__printf+0xa4>
    800073a8:	1a0c1663          	bnez	s8,80007554 <__printf+0x44c>
    800073ac:	08813083          	ld	ra,136(sp)
    800073b0:	08013403          	ld	s0,128(sp)
    800073b4:	07813483          	ld	s1,120(sp)
    800073b8:	07013903          	ld	s2,112(sp)
    800073bc:	06813983          	ld	s3,104(sp)
    800073c0:	06013a03          	ld	s4,96(sp)
    800073c4:	05813a83          	ld	s5,88(sp)
    800073c8:	05013b03          	ld	s6,80(sp)
    800073cc:	04813b83          	ld	s7,72(sp)
    800073d0:	04013c03          	ld	s8,64(sp)
    800073d4:	03813c83          	ld	s9,56(sp)
    800073d8:	03013d03          	ld	s10,48(sp)
    800073dc:	02813d83          	ld	s11,40(sp)
    800073e0:	0d010113          	addi	sp,sp,208
    800073e4:	00008067          	ret
    800073e8:	07300713          	li	a4,115
    800073ec:	1ce78a63          	beq	a5,a4,800075c0 <__printf+0x4b8>
    800073f0:	07800713          	li	a4,120
    800073f4:	1ee79e63          	bne	a5,a4,800075f0 <__printf+0x4e8>
    800073f8:	f7843783          	ld	a5,-136(s0)
    800073fc:	0007a703          	lw	a4,0(a5)
    80007400:	00878793          	addi	a5,a5,8
    80007404:	f6f43c23          	sd	a5,-136(s0)
    80007408:	28074263          	bltz	a4,8000768c <__printf+0x584>
    8000740c:	00002d97          	auipc	s11,0x2
    80007410:	32cd8d93          	addi	s11,s11,812 # 80009738 <digits>
    80007414:	00f77793          	andi	a5,a4,15
    80007418:	00fd87b3          	add	a5,s11,a5
    8000741c:	0007c683          	lbu	a3,0(a5)
    80007420:	00f00613          	li	a2,15
    80007424:	0007079b          	sext.w	a5,a4
    80007428:	f8d40023          	sb	a3,-128(s0)
    8000742c:	0047559b          	srliw	a1,a4,0x4
    80007430:	0047569b          	srliw	a3,a4,0x4
    80007434:	00000c93          	li	s9,0
    80007438:	0ee65063          	bge	a2,a4,80007518 <__printf+0x410>
    8000743c:	00f6f693          	andi	a3,a3,15
    80007440:	00dd86b3          	add	a3,s11,a3
    80007444:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007448:	0087d79b          	srliw	a5,a5,0x8
    8000744c:	00100c93          	li	s9,1
    80007450:	f8d400a3          	sb	a3,-127(s0)
    80007454:	0cb67263          	bgeu	a2,a1,80007518 <__printf+0x410>
    80007458:	00f7f693          	andi	a3,a5,15
    8000745c:	00dd86b3          	add	a3,s11,a3
    80007460:	0006c583          	lbu	a1,0(a3)
    80007464:	00f00613          	li	a2,15
    80007468:	0047d69b          	srliw	a3,a5,0x4
    8000746c:	f8b40123          	sb	a1,-126(s0)
    80007470:	0047d593          	srli	a1,a5,0x4
    80007474:	28f67e63          	bgeu	a2,a5,80007710 <__printf+0x608>
    80007478:	00f6f693          	andi	a3,a3,15
    8000747c:	00dd86b3          	add	a3,s11,a3
    80007480:	0006c503          	lbu	a0,0(a3)
    80007484:	0087d813          	srli	a6,a5,0x8
    80007488:	0087d69b          	srliw	a3,a5,0x8
    8000748c:	f8a401a3          	sb	a0,-125(s0)
    80007490:	28b67663          	bgeu	a2,a1,8000771c <__printf+0x614>
    80007494:	00f6f693          	andi	a3,a3,15
    80007498:	00dd86b3          	add	a3,s11,a3
    8000749c:	0006c583          	lbu	a1,0(a3)
    800074a0:	00c7d513          	srli	a0,a5,0xc
    800074a4:	00c7d69b          	srliw	a3,a5,0xc
    800074a8:	f8b40223          	sb	a1,-124(s0)
    800074ac:	29067a63          	bgeu	a2,a6,80007740 <__printf+0x638>
    800074b0:	00f6f693          	andi	a3,a3,15
    800074b4:	00dd86b3          	add	a3,s11,a3
    800074b8:	0006c583          	lbu	a1,0(a3)
    800074bc:	0107d813          	srli	a6,a5,0x10
    800074c0:	0107d69b          	srliw	a3,a5,0x10
    800074c4:	f8b402a3          	sb	a1,-123(s0)
    800074c8:	28a67263          	bgeu	a2,a0,8000774c <__printf+0x644>
    800074cc:	00f6f693          	andi	a3,a3,15
    800074d0:	00dd86b3          	add	a3,s11,a3
    800074d4:	0006c683          	lbu	a3,0(a3)
    800074d8:	0147d79b          	srliw	a5,a5,0x14
    800074dc:	f8d40323          	sb	a3,-122(s0)
    800074e0:	21067663          	bgeu	a2,a6,800076ec <__printf+0x5e4>
    800074e4:	02079793          	slli	a5,a5,0x20
    800074e8:	0207d793          	srli	a5,a5,0x20
    800074ec:	00fd8db3          	add	s11,s11,a5
    800074f0:	000dc683          	lbu	a3,0(s11)
    800074f4:	00800793          	li	a5,8
    800074f8:	00700c93          	li	s9,7
    800074fc:	f8d403a3          	sb	a3,-121(s0)
    80007500:	00075c63          	bgez	a4,80007518 <__printf+0x410>
    80007504:	f9040713          	addi	a4,s0,-112
    80007508:	00f70733          	add	a4,a4,a5
    8000750c:	02d00693          	li	a3,45
    80007510:	fed70823          	sb	a3,-16(a4)
    80007514:	00078c93          	mv	s9,a5
    80007518:	f8040793          	addi	a5,s0,-128
    8000751c:	01978cb3          	add	s9,a5,s9
    80007520:	f7f40d13          	addi	s10,s0,-129
    80007524:	000cc503          	lbu	a0,0(s9)
    80007528:	fffc8c93          	addi	s9,s9,-1
    8000752c:	00000097          	auipc	ra,0x0
    80007530:	9f8080e7          	jalr	-1544(ra) # 80006f24 <consputc>
    80007534:	ff9d18e3          	bne	s10,s9,80007524 <__printf+0x41c>
    80007538:	0100006f          	j	80007548 <__printf+0x440>
    8000753c:	00000097          	auipc	ra,0x0
    80007540:	9e8080e7          	jalr	-1560(ra) # 80006f24 <consputc>
    80007544:	000c8493          	mv	s1,s9
    80007548:	00094503          	lbu	a0,0(s2)
    8000754c:	c60510e3          	bnez	a0,800071ac <__printf+0xa4>
    80007550:	e40c0ee3          	beqz	s8,800073ac <__printf+0x2a4>
    80007554:	00005517          	auipc	a0,0x5
    80007558:	31c50513          	addi	a0,a0,796 # 8000c870 <pr>
    8000755c:	00001097          	auipc	ra,0x1
    80007560:	94c080e7          	jalr	-1716(ra) # 80007ea8 <release>
    80007564:	e49ff06f          	j	800073ac <__printf+0x2a4>
    80007568:	f7843783          	ld	a5,-136(s0)
    8000756c:	03000513          	li	a0,48
    80007570:	01000d13          	li	s10,16
    80007574:	00878713          	addi	a4,a5,8
    80007578:	0007bc83          	ld	s9,0(a5)
    8000757c:	f6e43c23          	sd	a4,-136(s0)
    80007580:	00000097          	auipc	ra,0x0
    80007584:	9a4080e7          	jalr	-1628(ra) # 80006f24 <consputc>
    80007588:	07800513          	li	a0,120
    8000758c:	00000097          	auipc	ra,0x0
    80007590:	998080e7          	jalr	-1640(ra) # 80006f24 <consputc>
    80007594:	00002d97          	auipc	s11,0x2
    80007598:	1a4d8d93          	addi	s11,s11,420 # 80009738 <digits>
    8000759c:	03ccd793          	srli	a5,s9,0x3c
    800075a0:	00fd87b3          	add	a5,s11,a5
    800075a4:	0007c503          	lbu	a0,0(a5)
    800075a8:	fffd0d1b          	addiw	s10,s10,-1
    800075ac:	004c9c93          	slli	s9,s9,0x4
    800075b0:	00000097          	auipc	ra,0x0
    800075b4:	974080e7          	jalr	-1676(ra) # 80006f24 <consputc>
    800075b8:	fe0d12e3          	bnez	s10,8000759c <__printf+0x494>
    800075bc:	f8dff06f          	j	80007548 <__printf+0x440>
    800075c0:	f7843783          	ld	a5,-136(s0)
    800075c4:	0007bc83          	ld	s9,0(a5)
    800075c8:	00878793          	addi	a5,a5,8
    800075cc:	f6f43c23          	sd	a5,-136(s0)
    800075d0:	000c9a63          	bnez	s9,800075e4 <__printf+0x4dc>
    800075d4:	1080006f          	j	800076dc <__printf+0x5d4>
    800075d8:	001c8c93          	addi	s9,s9,1
    800075dc:	00000097          	auipc	ra,0x0
    800075e0:	948080e7          	jalr	-1720(ra) # 80006f24 <consputc>
    800075e4:	000cc503          	lbu	a0,0(s9)
    800075e8:	fe0518e3          	bnez	a0,800075d8 <__printf+0x4d0>
    800075ec:	f5dff06f          	j	80007548 <__printf+0x440>
    800075f0:	02500513          	li	a0,37
    800075f4:	00000097          	auipc	ra,0x0
    800075f8:	930080e7          	jalr	-1744(ra) # 80006f24 <consputc>
    800075fc:	000c8513          	mv	a0,s9
    80007600:	00000097          	auipc	ra,0x0
    80007604:	924080e7          	jalr	-1756(ra) # 80006f24 <consputc>
    80007608:	f41ff06f          	j	80007548 <__printf+0x440>
    8000760c:	02500513          	li	a0,37
    80007610:	00000097          	auipc	ra,0x0
    80007614:	914080e7          	jalr	-1772(ra) # 80006f24 <consputc>
    80007618:	f31ff06f          	j	80007548 <__printf+0x440>
    8000761c:	00030513          	mv	a0,t1
    80007620:	00000097          	auipc	ra,0x0
    80007624:	7bc080e7          	jalr	1980(ra) # 80007ddc <acquire>
    80007628:	b4dff06f          	j	80007174 <__printf+0x6c>
    8000762c:	40c0053b          	negw	a0,a2
    80007630:	00a00713          	li	a4,10
    80007634:	02e576bb          	remuw	a3,a0,a4
    80007638:	00002d97          	auipc	s11,0x2
    8000763c:	100d8d93          	addi	s11,s11,256 # 80009738 <digits>
    80007640:	ff700593          	li	a1,-9
    80007644:	02069693          	slli	a3,a3,0x20
    80007648:	0206d693          	srli	a3,a3,0x20
    8000764c:	00dd86b3          	add	a3,s11,a3
    80007650:	0006c683          	lbu	a3,0(a3)
    80007654:	02e557bb          	divuw	a5,a0,a4
    80007658:	f8d40023          	sb	a3,-128(s0)
    8000765c:	10b65e63          	bge	a2,a1,80007778 <__printf+0x670>
    80007660:	06300593          	li	a1,99
    80007664:	02e7f6bb          	remuw	a3,a5,a4
    80007668:	02069693          	slli	a3,a3,0x20
    8000766c:	0206d693          	srli	a3,a3,0x20
    80007670:	00dd86b3          	add	a3,s11,a3
    80007674:	0006c683          	lbu	a3,0(a3)
    80007678:	02e7d73b          	divuw	a4,a5,a4
    8000767c:	00200793          	li	a5,2
    80007680:	f8d400a3          	sb	a3,-127(s0)
    80007684:	bca5ece3          	bltu	a1,a0,8000725c <__printf+0x154>
    80007688:	ce5ff06f          	j	8000736c <__printf+0x264>
    8000768c:	40e007bb          	negw	a5,a4
    80007690:	00002d97          	auipc	s11,0x2
    80007694:	0a8d8d93          	addi	s11,s11,168 # 80009738 <digits>
    80007698:	00f7f693          	andi	a3,a5,15
    8000769c:	00dd86b3          	add	a3,s11,a3
    800076a0:	0006c583          	lbu	a1,0(a3)
    800076a4:	ff100613          	li	a2,-15
    800076a8:	0047d69b          	srliw	a3,a5,0x4
    800076ac:	f8b40023          	sb	a1,-128(s0)
    800076b0:	0047d59b          	srliw	a1,a5,0x4
    800076b4:	0ac75e63          	bge	a4,a2,80007770 <__printf+0x668>
    800076b8:	00f6f693          	andi	a3,a3,15
    800076bc:	00dd86b3          	add	a3,s11,a3
    800076c0:	0006c603          	lbu	a2,0(a3)
    800076c4:	00f00693          	li	a3,15
    800076c8:	0087d79b          	srliw	a5,a5,0x8
    800076cc:	f8c400a3          	sb	a2,-127(s0)
    800076d0:	d8b6e4e3          	bltu	a3,a1,80007458 <__printf+0x350>
    800076d4:	00200793          	li	a5,2
    800076d8:	e2dff06f          	j	80007504 <__printf+0x3fc>
    800076dc:	00002c97          	auipc	s9,0x2
    800076e0:	03cc8c93          	addi	s9,s9,60 # 80009718 <CONSOLE_STATUS+0x708>
    800076e4:	02800513          	li	a0,40
    800076e8:	ef1ff06f          	j	800075d8 <__printf+0x4d0>
    800076ec:	00700793          	li	a5,7
    800076f0:	00600c93          	li	s9,6
    800076f4:	e0dff06f          	j	80007500 <__printf+0x3f8>
    800076f8:	00700793          	li	a5,7
    800076fc:	00600c93          	li	s9,6
    80007700:	c69ff06f          	j	80007368 <__printf+0x260>
    80007704:	00300793          	li	a5,3
    80007708:	00200c93          	li	s9,2
    8000770c:	c5dff06f          	j	80007368 <__printf+0x260>
    80007710:	00300793          	li	a5,3
    80007714:	00200c93          	li	s9,2
    80007718:	de9ff06f          	j	80007500 <__printf+0x3f8>
    8000771c:	00400793          	li	a5,4
    80007720:	00300c93          	li	s9,3
    80007724:	dddff06f          	j	80007500 <__printf+0x3f8>
    80007728:	00400793          	li	a5,4
    8000772c:	00300c93          	li	s9,3
    80007730:	c39ff06f          	j	80007368 <__printf+0x260>
    80007734:	00500793          	li	a5,5
    80007738:	00400c93          	li	s9,4
    8000773c:	c2dff06f          	j	80007368 <__printf+0x260>
    80007740:	00500793          	li	a5,5
    80007744:	00400c93          	li	s9,4
    80007748:	db9ff06f          	j	80007500 <__printf+0x3f8>
    8000774c:	00600793          	li	a5,6
    80007750:	00500c93          	li	s9,5
    80007754:	dadff06f          	j	80007500 <__printf+0x3f8>
    80007758:	00600793          	li	a5,6
    8000775c:	00500c93          	li	s9,5
    80007760:	c09ff06f          	j	80007368 <__printf+0x260>
    80007764:	00800793          	li	a5,8
    80007768:	00700c93          	li	s9,7
    8000776c:	bfdff06f          	j	80007368 <__printf+0x260>
    80007770:	00100793          	li	a5,1
    80007774:	d91ff06f          	j	80007504 <__printf+0x3fc>
    80007778:	00100793          	li	a5,1
    8000777c:	bf1ff06f          	j	8000736c <__printf+0x264>
    80007780:	00900793          	li	a5,9
    80007784:	00800c93          	li	s9,8
    80007788:	be1ff06f          	j	80007368 <__printf+0x260>
    8000778c:	00002517          	auipc	a0,0x2
    80007790:	f9450513          	addi	a0,a0,-108 # 80009720 <CONSOLE_STATUS+0x710>
    80007794:	00000097          	auipc	ra,0x0
    80007798:	918080e7          	jalr	-1768(ra) # 800070ac <panic>

000000008000779c <printfinit>:
    8000779c:	fe010113          	addi	sp,sp,-32
    800077a0:	00813823          	sd	s0,16(sp)
    800077a4:	00913423          	sd	s1,8(sp)
    800077a8:	00113c23          	sd	ra,24(sp)
    800077ac:	02010413          	addi	s0,sp,32
    800077b0:	00005497          	auipc	s1,0x5
    800077b4:	0c048493          	addi	s1,s1,192 # 8000c870 <pr>
    800077b8:	00048513          	mv	a0,s1
    800077bc:	00002597          	auipc	a1,0x2
    800077c0:	f7458593          	addi	a1,a1,-140 # 80009730 <CONSOLE_STATUS+0x720>
    800077c4:	00000097          	auipc	ra,0x0
    800077c8:	5f4080e7          	jalr	1524(ra) # 80007db8 <initlock>
    800077cc:	01813083          	ld	ra,24(sp)
    800077d0:	01013403          	ld	s0,16(sp)
    800077d4:	0004ac23          	sw	zero,24(s1)
    800077d8:	00813483          	ld	s1,8(sp)
    800077dc:	02010113          	addi	sp,sp,32
    800077e0:	00008067          	ret

00000000800077e4 <uartinit>:
    800077e4:	ff010113          	addi	sp,sp,-16
    800077e8:	00813423          	sd	s0,8(sp)
    800077ec:	01010413          	addi	s0,sp,16
    800077f0:	100007b7          	lui	a5,0x10000
    800077f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077f8:	f8000713          	li	a4,-128
    800077fc:	00e781a3          	sb	a4,3(a5)
    80007800:	00300713          	li	a4,3
    80007804:	00e78023          	sb	a4,0(a5)
    80007808:	000780a3          	sb	zero,1(a5)
    8000780c:	00e781a3          	sb	a4,3(a5)
    80007810:	00700693          	li	a3,7
    80007814:	00d78123          	sb	a3,2(a5)
    80007818:	00e780a3          	sb	a4,1(a5)
    8000781c:	00813403          	ld	s0,8(sp)
    80007820:	01010113          	addi	sp,sp,16
    80007824:	00008067          	ret

0000000080007828 <uartputc>:
    80007828:	00004797          	auipc	a5,0x4
    8000782c:	d707a783          	lw	a5,-656(a5) # 8000b598 <panicked>
    80007830:	00078463          	beqz	a5,80007838 <uartputc+0x10>
    80007834:	0000006f          	j	80007834 <uartputc+0xc>
    80007838:	fd010113          	addi	sp,sp,-48
    8000783c:	02813023          	sd	s0,32(sp)
    80007840:	00913c23          	sd	s1,24(sp)
    80007844:	01213823          	sd	s2,16(sp)
    80007848:	01313423          	sd	s3,8(sp)
    8000784c:	02113423          	sd	ra,40(sp)
    80007850:	03010413          	addi	s0,sp,48
    80007854:	00004917          	auipc	s2,0x4
    80007858:	d4c90913          	addi	s2,s2,-692 # 8000b5a0 <uart_tx_r>
    8000785c:	00093783          	ld	a5,0(s2)
    80007860:	00004497          	auipc	s1,0x4
    80007864:	d4848493          	addi	s1,s1,-696 # 8000b5a8 <uart_tx_w>
    80007868:	0004b703          	ld	a4,0(s1)
    8000786c:	02078693          	addi	a3,a5,32
    80007870:	00050993          	mv	s3,a0
    80007874:	02e69c63          	bne	a3,a4,800078ac <uartputc+0x84>
    80007878:	00001097          	auipc	ra,0x1
    8000787c:	834080e7          	jalr	-1996(ra) # 800080ac <push_on>
    80007880:	00093783          	ld	a5,0(s2)
    80007884:	0004b703          	ld	a4,0(s1)
    80007888:	02078793          	addi	a5,a5,32
    8000788c:	00e79463          	bne	a5,a4,80007894 <uartputc+0x6c>
    80007890:	0000006f          	j	80007890 <uartputc+0x68>
    80007894:	00001097          	auipc	ra,0x1
    80007898:	88c080e7          	jalr	-1908(ra) # 80008120 <pop_on>
    8000789c:	00093783          	ld	a5,0(s2)
    800078a0:	0004b703          	ld	a4,0(s1)
    800078a4:	02078693          	addi	a3,a5,32
    800078a8:	fce688e3          	beq	a3,a4,80007878 <uartputc+0x50>
    800078ac:	01f77693          	andi	a3,a4,31
    800078b0:	00005597          	auipc	a1,0x5
    800078b4:	fe058593          	addi	a1,a1,-32 # 8000c890 <uart_tx_buf>
    800078b8:	00d586b3          	add	a3,a1,a3
    800078bc:	00170713          	addi	a4,a4,1
    800078c0:	01368023          	sb	s3,0(a3)
    800078c4:	00e4b023          	sd	a4,0(s1)
    800078c8:	10000637          	lui	a2,0x10000
    800078cc:	02f71063          	bne	a4,a5,800078ec <uartputc+0xc4>
    800078d0:	0340006f          	j	80007904 <uartputc+0xdc>
    800078d4:	00074703          	lbu	a4,0(a4)
    800078d8:	00f93023          	sd	a5,0(s2)
    800078dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078e0:	00093783          	ld	a5,0(s2)
    800078e4:	0004b703          	ld	a4,0(s1)
    800078e8:	00f70e63          	beq	a4,a5,80007904 <uartputc+0xdc>
    800078ec:	00564683          	lbu	a3,5(a2)
    800078f0:	01f7f713          	andi	a4,a5,31
    800078f4:	00e58733          	add	a4,a1,a4
    800078f8:	0206f693          	andi	a3,a3,32
    800078fc:	00178793          	addi	a5,a5,1
    80007900:	fc069ae3          	bnez	a3,800078d4 <uartputc+0xac>
    80007904:	02813083          	ld	ra,40(sp)
    80007908:	02013403          	ld	s0,32(sp)
    8000790c:	01813483          	ld	s1,24(sp)
    80007910:	01013903          	ld	s2,16(sp)
    80007914:	00813983          	ld	s3,8(sp)
    80007918:	03010113          	addi	sp,sp,48
    8000791c:	00008067          	ret

0000000080007920 <uartputc_sync>:
    80007920:	ff010113          	addi	sp,sp,-16
    80007924:	00813423          	sd	s0,8(sp)
    80007928:	01010413          	addi	s0,sp,16
    8000792c:	00004717          	auipc	a4,0x4
    80007930:	c6c72703          	lw	a4,-916(a4) # 8000b598 <panicked>
    80007934:	02071663          	bnez	a4,80007960 <uartputc_sync+0x40>
    80007938:	00050793          	mv	a5,a0
    8000793c:	100006b7          	lui	a3,0x10000
    80007940:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007944:	02077713          	andi	a4,a4,32
    80007948:	fe070ce3          	beqz	a4,80007940 <uartputc_sync+0x20>
    8000794c:	0ff7f793          	andi	a5,a5,255
    80007950:	00f68023          	sb	a5,0(a3)
    80007954:	00813403          	ld	s0,8(sp)
    80007958:	01010113          	addi	sp,sp,16
    8000795c:	00008067          	ret
    80007960:	0000006f          	j	80007960 <uartputc_sync+0x40>

0000000080007964 <uartstart>:
    80007964:	ff010113          	addi	sp,sp,-16
    80007968:	00813423          	sd	s0,8(sp)
    8000796c:	01010413          	addi	s0,sp,16
    80007970:	00004617          	auipc	a2,0x4
    80007974:	c3060613          	addi	a2,a2,-976 # 8000b5a0 <uart_tx_r>
    80007978:	00004517          	auipc	a0,0x4
    8000797c:	c3050513          	addi	a0,a0,-976 # 8000b5a8 <uart_tx_w>
    80007980:	00063783          	ld	a5,0(a2)
    80007984:	00053703          	ld	a4,0(a0)
    80007988:	04f70263          	beq	a4,a5,800079cc <uartstart+0x68>
    8000798c:	100005b7          	lui	a1,0x10000
    80007990:	00005817          	auipc	a6,0x5
    80007994:	f0080813          	addi	a6,a6,-256 # 8000c890 <uart_tx_buf>
    80007998:	01c0006f          	j	800079b4 <uartstart+0x50>
    8000799c:	0006c703          	lbu	a4,0(a3)
    800079a0:	00f63023          	sd	a5,0(a2)
    800079a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079a8:	00063783          	ld	a5,0(a2)
    800079ac:	00053703          	ld	a4,0(a0)
    800079b0:	00f70e63          	beq	a4,a5,800079cc <uartstart+0x68>
    800079b4:	01f7f713          	andi	a4,a5,31
    800079b8:	00e806b3          	add	a3,a6,a4
    800079bc:	0055c703          	lbu	a4,5(a1)
    800079c0:	00178793          	addi	a5,a5,1
    800079c4:	02077713          	andi	a4,a4,32
    800079c8:	fc071ae3          	bnez	a4,8000799c <uartstart+0x38>
    800079cc:	00813403          	ld	s0,8(sp)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret

00000000800079d8 <uartgetc>:
    800079d8:	ff010113          	addi	sp,sp,-16
    800079dc:	00813423          	sd	s0,8(sp)
    800079e0:	01010413          	addi	s0,sp,16
    800079e4:	10000737          	lui	a4,0x10000
    800079e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079ec:	0017f793          	andi	a5,a5,1
    800079f0:	00078c63          	beqz	a5,80007a08 <uartgetc+0x30>
    800079f4:	00074503          	lbu	a0,0(a4)
    800079f8:	0ff57513          	andi	a0,a0,255
    800079fc:	00813403          	ld	s0,8(sp)
    80007a00:	01010113          	addi	sp,sp,16
    80007a04:	00008067          	ret
    80007a08:	fff00513          	li	a0,-1
    80007a0c:	ff1ff06f          	j	800079fc <uartgetc+0x24>

0000000080007a10 <uartintr>:
    80007a10:	100007b7          	lui	a5,0x10000
    80007a14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a18:	0017f793          	andi	a5,a5,1
    80007a1c:	0a078463          	beqz	a5,80007ac4 <uartintr+0xb4>
    80007a20:	fe010113          	addi	sp,sp,-32
    80007a24:	00813823          	sd	s0,16(sp)
    80007a28:	00913423          	sd	s1,8(sp)
    80007a2c:	00113c23          	sd	ra,24(sp)
    80007a30:	02010413          	addi	s0,sp,32
    80007a34:	100004b7          	lui	s1,0x10000
    80007a38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a3c:	0ff57513          	andi	a0,a0,255
    80007a40:	fffff097          	auipc	ra,0xfffff
    80007a44:	534080e7          	jalr	1332(ra) # 80006f74 <consoleintr>
    80007a48:	0054c783          	lbu	a5,5(s1)
    80007a4c:	0017f793          	andi	a5,a5,1
    80007a50:	fe0794e3          	bnez	a5,80007a38 <uartintr+0x28>
    80007a54:	00004617          	auipc	a2,0x4
    80007a58:	b4c60613          	addi	a2,a2,-1204 # 8000b5a0 <uart_tx_r>
    80007a5c:	00004517          	auipc	a0,0x4
    80007a60:	b4c50513          	addi	a0,a0,-1204 # 8000b5a8 <uart_tx_w>
    80007a64:	00063783          	ld	a5,0(a2)
    80007a68:	00053703          	ld	a4,0(a0)
    80007a6c:	04f70263          	beq	a4,a5,80007ab0 <uartintr+0xa0>
    80007a70:	100005b7          	lui	a1,0x10000
    80007a74:	00005817          	auipc	a6,0x5
    80007a78:	e1c80813          	addi	a6,a6,-484 # 8000c890 <uart_tx_buf>
    80007a7c:	01c0006f          	j	80007a98 <uartintr+0x88>
    80007a80:	0006c703          	lbu	a4,0(a3)
    80007a84:	00f63023          	sd	a5,0(a2)
    80007a88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a8c:	00063783          	ld	a5,0(a2)
    80007a90:	00053703          	ld	a4,0(a0)
    80007a94:	00f70e63          	beq	a4,a5,80007ab0 <uartintr+0xa0>
    80007a98:	01f7f713          	andi	a4,a5,31
    80007a9c:	00e806b3          	add	a3,a6,a4
    80007aa0:	0055c703          	lbu	a4,5(a1)
    80007aa4:	00178793          	addi	a5,a5,1
    80007aa8:	02077713          	andi	a4,a4,32
    80007aac:	fc071ae3          	bnez	a4,80007a80 <uartintr+0x70>
    80007ab0:	01813083          	ld	ra,24(sp)
    80007ab4:	01013403          	ld	s0,16(sp)
    80007ab8:	00813483          	ld	s1,8(sp)
    80007abc:	02010113          	addi	sp,sp,32
    80007ac0:	00008067          	ret
    80007ac4:	00004617          	auipc	a2,0x4
    80007ac8:	adc60613          	addi	a2,a2,-1316 # 8000b5a0 <uart_tx_r>
    80007acc:	00004517          	auipc	a0,0x4
    80007ad0:	adc50513          	addi	a0,a0,-1316 # 8000b5a8 <uart_tx_w>
    80007ad4:	00063783          	ld	a5,0(a2)
    80007ad8:	00053703          	ld	a4,0(a0)
    80007adc:	04f70263          	beq	a4,a5,80007b20 <uartintr+0x110>
    80007ae0:	100005b7          	lui	a1,0x10000
    80007ae4:	00005817          	auipc	a6,0x5
    80007ae8:	dac80813          	addi	a6,a6,-596 # 8000c890 <uart_tx_buf>
    80007aec:	01c0006f          	j	80007b08 <uartintr+0xf8>
    80007af0:	0006c703          	lbu	a4,0(a3)
    80007af4:	00f63023          	sd	a5,0(a2)
    80007af8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007afc:	00063783          	ld	a5,0(a2)
    80007b00:	00053703          	ld	a4,0(a0)
    80007b04:	02f70063          	beq	a4,a5,80007b24 <uartintr+0x114>
    80007b08:	01f7f713          	andi	a4,a5,31
    80007b0c:	00e806b3          	add	a3,a6,a4
    80007b10:	0055c703          	lbu	a4,5(a1)
    80007b14:	00178793          	addi	a5,a5,1
    80007b18:	02077713          	andi	a4,a4,32
    80007b1c:	fc071ae3          	bnez	a4,80007af0 <uartintr+0xe0>
    80007b20:	00008067          	ret
    80007b24:	00008067          	ret

0000000080007b28 <kinit>:
    80007b28:	fc010113          	addi	sp,sp,-64
    80007b2c:	02913423          	sd	s1,40(sp)
    80007b30:	fffff7b7          	lui	a5,0xfffff
    80007b34:	00006497          	auipc	s1,0x6
    80007b38:	d7b48493          	addi	s1,s1,-645 # 8000d8af <end+0xfff>
    80007b3c:	02813823          	sd	s0,48(sp)
    80007b40:	01313c23          	sd	s3,24(sp)
    80007b44:	00f4f4b3          	and	s1,s1,a5
    80007b48:	02113c23          	sd	ra,56(sp)
    80007b4c:	03213023          	sd	s2,32(sp)
    80007b50:	01413823          	sd	s4,16(sp)
    80007b54:	01513423          	sd	s5,8(sp)
    80007b58:	04010413          	addi	s0,sp,64
    80007b5c:	000017b7          	lui	a5,0x1
    80007b60:	01100993          	li	s3,17
    80007b64:	00f487b3          	add	a5,s1,a5
    80007b68:	01b99993          	slli	s3,s3,0x1b
    80007b6c:	06f9e063          	bltu	s3,a5,80007bcc <kinit+0xa4>
    80007b70:	00005a97          	auipc	s5,0x5
    80007b74:	d40a8a93          	addi	s5,s5,-704 # 8000c8b0 <end>
    80007b78:	0754ec63          	bltu	s1,s5,80007bf0 <kinit+0xc8>
    80007b7c:	0734fa63          	bgeu	s1,s3,80007bf0 <kinit+0xc8>
    80007b80:	00088a37          	lui	s4,0x88
    80007b84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b88:	00004917          	auipc	s2,0x4
    80007b8c:	a2890913          	addi	s2,s2,-1496 # 8000b5b0 <kmem>
    80007b90:	00ca1a13          	slli	s4,s4,0xc
    80007b94:	0140006f          	j	80007ba8 <kinit+0x80>
    80007b98:	000017b7          	lui	a5,0x1
    80007b9c:	00f484b3          	add	s1,s1,a5
    80007ba0:	0554e863          	bltu	s1,s5,80007bf0 <kinit+0xc8>
    80007ba4:	0534f663          	bgeu	s1,s3,80007bf0 <kinit+0xc8>
    80007ba8:	00001637          	lui	a2,0x1
    80007bac:	00100593          	li	a1,1
    80007bb0:	00048513          	mv	a0,s1
    80007bb4:	00000097          	auipc	ra,0x0
    80007bb8:	5e4080e7          	jalr	1508(ra) # 80008198 <__memset>
    80007bbc:	00093783          	ld	a5,0(s2)
    80007bc0:	00f4b023          	sd	a5,0(s1)
    80007bc4:	00993023          	sd	s1,0(s2)
    80007bc8:	fd4498e3          	bne	s1,s4,80007b98 <kinit+0x70>
    80007bcc:	03813083          	ld	ra,56(sp)
    80007bd0:	03013403          	ld	s0,48(sp)
    80007bd4:	02813483          	ld	s1,40(sp)
    80007bd8:	02013903          	ld	s2,32(sp)
    80007bdc:	01813983          	ld	s3,24(sp)
    80007be0:	01013a03          	ld	s4,16(sp)
    80007be4:	00813a83          	ld	s5,8(sp)
    80007be8:	04010113          	addi	sp,sp,64
    80007bec:	00008067          	ret
    80007bf0:	00002517          	auipc	a0,0x2
    80007bf4:	b6050513          	addi	a0,a0,-1184 # 80009750 <digits+0x18>
    80007bf8:	fffff097          	auipc	ra,0xfffff
    80007bfc:	4b4080e7          	jalr	1204(ra) # 800070ac <panic>

0000000080007c00 <freerange>:
    80007c00:	fc010113          	addi	sp,sp,-64
    80007c04:	000017b7          	lui	a5,0x1
    80007c08:	02913423          	sd	s1,40(sp)
    80007c0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c10:	009504b3          	add	s1,a0,s1
    80007c14:	fffff537          	lui	a0,0xfffff
    80007c18:	02813823          	sd	s0,48(sp)
    80007c1c:	02113c23          	sd	ra,56(sp)
    80007c20:	03213023          	sd	s2,32(sp)
    80007c24:	01313c23          	sd	s3,24(sp)
    80007c28:	01413823          	sd	s4,16(sp)
    80007c2c:	01513423          	sd	s5,8(sp)
    80007c30:	01613023          	sd	s6,0(sp)
    80007c34:	04010413          	addi	s0,sp,64
    80007c38:	00a4f4b3          	and	s1,s1,a0
    80007c3c:	00f487b3          	add	a5,s1,a5
    80007c40:	06f5e463          	bltu	a1,a5,80007ca8 <freerange+0xa8>
    80007c44:	00005a97          	auipc	s5,0x5
    80007c48:	c6ca8a93          	addi	s5,s5,-916 # 8000c8b0 <end>
    80007c4c:	0954e263          	bltu	s1,s5,80007cd0 <freerange+0xd0>
    80007c50:	01100993          	li	s3,17
    80007c54:	01b99993          	slli	s3,s3,0x1b
    80007c58:	0734fc63          	bgeu	s1,s3,80007cd0 <freerange+0xd0>
    80007c5c:	00058a13          	mv	s4,a1
    80007c60:	00004917          	auipc	s2,0x4
    80007c64:	95090913          	addi	s2,s2,-1712 # 8000b5b0 <kmem>
    80007c68:	00002b37          	lui	s6,0x2
    80007c6c:	0140006f          	j	80007c80 <freerange+0x80>
    80007c70:	000017b7          	lui	a5,0x1
    80007c74:	00f484b3          	add	s1,s1,a5
    80007c78:	0554ec63          	bltu	s1,s5,80007cd0 <freerange+0xd0>
    80007c7c:	0534fa63          	bgeu	s1,s3,80007cd0 <freerange+0xd0>
    80007c80:	00001637          	lui	a2,0x1
    80007c84:	00100593          	li	a1,1
    80007c88:	00048513          	mv	a0,s1
    80007c8c:	00000097          	auipc	ra,0x0
    80007c90:	50c080e7          	jalr	1292(ra) # 80008198 <__memset>
    80007c94:	00093703          	ld	a4,0(s2)
    80007c98:	016487b3          	add	a5,s1,s6
    80007c9c:	00e4b023          	sd	a4,0(s1)
    80007ca0:	00993023          	sd	s1,0(s2)
    80007ca4:	fcfa76e3          	bgeu	s4,a5,80007c70 <freerange+0x70>
    80007ca8:	03813083          	ld	ra,56(sp)
    80007cac:	03013403          	ld	s0,48(sp)
    80007cb0:	02813483          	ld	s1,40(sp)
    80007cb4:	02013903          	ld	s2,32(sp)
    80007cb8:	01813983          	ld	s3,24(sp)
    80007cbc:	01013a03          	ld	s4,16(sp)
    80007cc0:	00813a83          	ld	s5,8(sp)
    80007cc4:	00013b03          	ld	s6,0(sp)
    80007cc8:	04010113          	addi	sp,sp,64
    80007ccc:	00008067          	ret
    80007cd0:	00002517          	auipc	a0,0x2
    80007cd4:	a8050513          	addi	a0,a0,-1408 # 80009750 <digits+0x18>
    80007cd8:	fffff097          	auipc	ra,0xfffff
    80007cdc:	3d4080e7          	jalr	980(ra) # 800070ac <panic>

0000000080007ce0 <kfree>:
    80007ce0:	fe010113          	addi	sp,sp,-32
    80007ce4:	00813823          	sd	s0,16(sp)
    80007ce8:	00113c23          	sd	ra,24(sp)
    80007cec:	00913423          	sd	s1,8(sp)
    80007cf0:	02010413          	addi	s0,sp,32
    80007cf4:	03451793          	slli	a5,a0,0x34
    80007cf8:	04079c63          	bnez	a5,80007d50 <kfree+0x70>
    80007cfc:	00005797          	auipc	a5,0x5
    80007d00:	bb478793          	addi	a5,a5,-1100 # 8000c8b0 <end>
    80007d04:	00050493          	mv	s1,a0
    80007d08:	04f56463          	bltu	a0,a5,80007d50 <kfree+0x70>
    80007d0c:	01100793          	li	a5,17
    80007d10:	01b79793          	slli	a5,a5,0x1b
    80007d14:	02f57e63          	bgeu	a0,a5,80007d50 <kfree+0x70>
    80007d18:	00001637          	lui	a2,0x1
    80007d1c:	00100593          	li	a1,1
    80007d20:	00000097          	auipc	ra,0x0
    80007d24:	478080e7          	jalr	1144(ra) # 80008198 <__memset>
    80007d28:	00004797          	auipc	a5,0x4
    80007d2c:	88878793          	addi	a5,a5,-1912 # 8000b5b0 <kmem>
    80007d30:	0007b703          	ld	a4,0(a5)
    80007d34:	01813083          	ld	ra,24(sp)
    80007d38:	01013403          	ld	s0,16(sp)
    80007d3c:	00e4b023          	sd	a4,0(s1)
    80007d40:	0097b023          	sd	s1,0(a5)
    80007d44:	00813483          	ld	s1,8(sp)
    80007d48:	02010113          	addi	sp,sp,32
    80007d4c:	00008067          	ret
    80007d50:	00002517          	auipc	a0,0x2
    80007d54:	a0050513          	addi	a0,a0,-1536 # 80009750 <digits+0x18>
    80007d58:	fffff097          	auipc	ra,0xfffff
    80007d5c:	354080e7          	jalr	852(ra) # 800070ac <panic>

0000000080007d60 <kalloc>:
    80007d60:	fe010113          	addi	sp,sp,-32
    80007d64:	00813823          	sd	s0,16(sp)
    80007d68:	00913423          	sd	s1,8(sp)
    80007d6c:	00113c23          	sd	ra,24(sp)
    80007d70:	02010413          	addi	s0,sp,32
    80007d74:	00004797          	auipc	a5,0x4
    80007d78:	83c78793          	addi	a5,a5,-1988 # 8000b5b0 <kmem>
    80007d7c:	0007b483          	ld	s1,0(a5)
    80007d80:	02048063          	beqz	s1,80007da0 <kalloc+0x40>
    80007d84:	0004b703          	ld	a4,0(s1)
    80007d88:	00001637          	lui	a2,0x1
    80007d8c:	00500593          	li	a1,5
    80007d90:	00048513          	mv	a0,s1
    80007d94:	00e7b023          	sd	a4,0(a5)
    80007d98:	00000097          	auipc	ra,0x0
    80007d9c:	400080e7          	jalr	1024(ra) # 80008198 <__memset>
    80007da0:	01813083          	ld	ra,24(sp)
    80007da4:	01013403          	ld	s0,16(sp)
    80007da8:	00048513          	mv	a0,s1
    80007dac:	00813483          	ld	s1,8(sp)
    80007db0:	02010113          	addi	sp,sp,32
    80007db4:	00008067          	ret

0000000080007db8 <initlock>:
    80007db8:	ff010113          	addi	sp,sp,-16
    80007dbc:	00813423          	sd	s0,8(sp)
    80007dc0:	01010413          	addi	s0,sp,16
    80007dc4:	00813403          	ld	s0,8(sp)
    80007dc8:	00b53423          	sd	a1,8(a0)
    80007dcc:	00052023          	sw	zero,0(a0)
    80007dd0:	00053823          	sd	zero,16(a0)
    80007dd4:	01010113          	addi	sp,sp,16
    80007dd8:	00008067          	ret

0000000080007ddc <acquire>:
    80007ddc:	fe010113          	addi	sp,sp,-32
    80007de0:	00813823          	sd	s0,16(sp)
    80007de4:	00913423          	sd	s1,8(sp)
    80007de8:	00113c23          	sd	ra,24(sp)
    80007dec:	01213023          	sd	s2,0(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	00050493          	mv	s1,a0
    80007df8:	10002973          	csrr	s2,sstatus
    80007dfc:	100027f3          	csrr	a5,sstatus
    80007e00:	ffd7f793          	andi	a5,a5,-3
    80007e04:	10079073          	csrw	sstatus,a5
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	8ec080e7          	jalr	-1812(ra) # 800066f4 <mycpu>
    80007e10:	07852783          	lw	a5,120(a0)
    80007e14:	06078e63          	beqz	a5,80007e90 <acquire+0xb4>
    80007e18:	fffff097          	auipc	ra,0xfffff
    80007e1c:	8dc080e7          	jalr	-1828(ra) # 800066f4 <mycpu>
    80007e20:	07852783          	lw	a5,120(a0)
    80007e24:	0004a703          	lw	a4,0(s1)
    80007e28:	0017879b          	addiw	a5,a5,1
    80007e2c:	06f52c23          	sw	a5,120(a0)
    80007e30:	04071063          	bnez	a4,80007e70 <acquire+0x94>
    80007e34:	00100713          	li	a4,1
    80007e38:	00070793          	mv	a5,a4
    80007e3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e40:	0007879b          	sext.w	a5,a5
    80007e44:	fe079ae3          	bnez	a5,80007e38 <acquire+0x5c>
    80007e48:	0ff0000f          	fence
    80007e4c:	fffff097          	auipc	ra,0xfffff
    80007e50:	8a8080e7          	jalr	-1880(ra) # 800066f4 <mycpu>
    80007e54:	01813083          	ld	ra,24(sp)
    80007e58:	01013403          	ld	s0,16(sp)
    80007e5c:	00a4b823          	sd	a0,16(s1)
    80007e60:	00013903          	ld	s2,0(sp)
    80007e64:	00813483          	ld	s1,8(sp)
    80007e68:	02010113          	addi	sp,sp,32
    80007e6c:	00008067          	ret
    80007e70:	0104b903          	ld	s2,16(s1)
    80007e74:	fffff097          	auipc	ra,0xfffff
    80007e78:	880080e7          	jalr	-1920(ra) # 800066f4 <mycpu>
    80007e7c:	faa91ce3          	bne	s2,a0,80007e34 <acquire+0x58>
    80007e80:	00002517          	auipc	a0,0x2
    80007e84:	8d850513          	addi	a0,a0,-1832 # 80009758 <digits+0x20>
    80007e88:	fffff097          	auipc	ra,0xfffff
    80007e8c:	224080e7          	jalr	548(ra) # 800070ac <panic>
    80007e90:	00195913          	srli	s2,s2,0x1
    80007e94:	fffff097          	auipc	ra,0xfffff
    80007e98:	860080e7          	jalr	-1952(ra) # 800066f4 <mycpu>
    80007e9c:	00197913          	andi	s2,s2,1
    80007ea0:	07252e23          	sw	s2,124(a0)
    80007ea4:	f75ff06f          	j	80007e18 <acquire+0x3c>

0000000080007ea8 <release>:
    80007ea8:	fe010113          	addi	sp,sp,-32
    80007eac:	00813823          	sd	s0,16(sp)
    80007eb0:	00113c23          	sd	ra,24(sp)
    80007eb4:	00913423          	sd	s1,8(sp)
    80007eb8:	01213023          	sd	s2,0(sp)
    80007ebc:	02010413          	addi	s0,sp,32
    80007ec0:	00052783          	lw	a5,0(a0)
    80007ec4:	00079a63          	bnez	a5,80007ed8 <release+0x30>
    80007ec8:	00002517          	auipc	a0,0x2
    80007ecc:	89850513          	addi	a0,a0,-1896 # 80009760 <digits+0x28>
    80007ed0:	fffff097          	auipc	ra,0xfffff
    80007ed4:	1dc080e7          	jalr	476(ra) # 800070ac <panic>
    80007ed8:	01053903          	ld	s2,16(a0)
    80007edc:	00050493          	mv	s1,a0
    80007ee0:	fffff097          	auipc	ra,0xfffff
    80007ee4:	814080e7          	jalr	-2028(ra) # 800066f4 <mycpu>
    80007ee8:	fea910e3          	bne	s2,a0,80007ec8 <release+0x20>
    80007eec:	0004b823          	sd	zero,16(s1)
    80007ef0:	0ff0000f          	fence
    80007ef4:	0f50000f          	fence	iorw,ow
    80007ef8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007efc:	ffffe097          	auipc	ra,0xffffe
    80007f00:	7f8080e7          	jalr	2040(ra) # 800066f4 <mycpu>
    80007f04:	100027f3          	csrr	a5,sstatus
    80007f08:	0027f793          	andi	a5,a5,2
    80007f0c:	04079a63          	bnez	a5,80007f60 <release+0xb8>
    80007f10:	07852783          	lw	a5,120(a0)
    80007f14:	02f05e63          	blez	a5,80007f50 <release+0xa8>
    80007f18:	fff7871b          	addiw	a4,a5,-1
    80007f1c:	06e52c23          	sw	a4,120(a0)
    80007f20:	00071c63          	bnez	a4,80007f38 <release+0x90>
    80007f24:	07c52783          	lw	a5,124(a0)
    80007f28:	00078863          	beqz	a5,80007f38 <release+0x90>
    80007f2c:	100027f3          	csrr	a5,sstatus
    80007f30:	0027e793          	ori	a5,a5,2
    80007f34:	10079073          	csrw	sstatus,a5
    80007f38:	01813083          	ld	ra,24(sp)
    80007f3c:	01013403          	ld	s0,16(sp)
    80007f40:	00813483          	ld	s1,8(sp)
    80007f44:	00013903          	ld	s2,0(sp)
    80007f48:	02010113          	addi	sp,sp,32
    80007f4c:	00008067          	ret
    80007f50:	00002517          	auipc	a0,0x2
    80007f54:	83050513          	addi	a0,a0,-2000 # 80009780 <digits+0x48>
    80007f58:	fffff097          	auipc	ra,0xfffff
    80007f5c:	154080e7          	jalr	340(ra) # 800070ac <panic>
    80007f60:	00002517          	auipc	a0,0x2
    80007f64:	80850513          	addi	a0,a0,-2040 # 80009768 <digits+0x30>
    80007f68:	fffff097          	auipc	ra,0xfffff
    80007f6c:	144080e7          	jalr	324(ra) # 800070ac <panic>

0000000080007f70 <holding>:
    80007f70:	00052783          	lw	a5,0(a0)
    80007f74:	00079663          	bnez	a5,80007f80 <holding+0x10>
    80007f78:	00000513          	li	a0,0
    80007f7c:	00008067          	ret
    80007f80:	fe010113          	addi	sp,sp,-32
    80007f84:	00813823          	sd	s0,16(sp)
    80007f88:	00913423          	sd	s1,8(sp)
    80007f8c:	00113c23          	sd	ra,24(sp)
    80007f90:	02010413          	addi	s0,sp,32
    80007f94:	01053483          	ld	s1,16(a0)
    80007f98:	ffffe097          	auipc	ra,0xffffe
    80007f9c:	75c080e7          	jalr	1884(ra) # 800066f4 <mycpu>
    80007fa0:	01813083          	ld	ra,24(sp)
    80007fa4:	01013403          	ld	s0,16(sp)
    80007fa8:	40a48533          	sub	a0,s1,a0
    80007fac:	00153513          	seqz	a0,a0
    80007fb0:	00813483          	ld	s1,8(sp)
    80007fb4:	02010113          	addi	sp,sp,32
    80007fb8:	00008067          	ret

0000000080007fbc <push_off>:
    80007fbc:	fe010113          	addi	sp,sp,-32
    80007fc0:	00813823          	sd	s0,16(sp)
    80007fc4:	00113c23          	sd	ra,24(sp)
    80007fc8:	00913423          	sd	s1,8(sp)
    80007fcc:	02010413          	addi	s0,sp,32
    80007fd0:	100024f3          	csrr	s1,sstatus
    80007fd4:	100027f3          	csrr	a5,sstatus
    80007fd8:	ffd7f793          	andi	a5,a5,-3
    80007fdc:	10079073          	csrw	sstatus,a5
    80007fe0:	ffffe097          	auipc	ra,0xffffe
    80007fe4:	714080e7          	jalr	1812(ra) # 800066f4 <mycpu>
    80007fe8:	07852783          	lw	a5,120(a0)
    80007fec:	02078663          	beqz	a5,80008018 <push_off+0x5c>
    80007ff0:	ffffe097          	auipc	ra,0xffffe
    80007ff4:	704080e7          	jalr	1796(ra) # 800066f4 <mycpu>
    80007ff8:	07852783          	lw	a5,120(a0)
    80007ffc:	01813083          	ld	ra,24(sp)
    80008000:	01013403          	ld	s0,16(sp)
    80008004:	0017879b          	addiw	a5,a5,1
    80008008:	06f52c23          	sw	a5,120(a0)
    8000800c:	00813483          	ld	s1,8(sp)
    80008010:	02010113          	addi	sp,sp,32
    80008014:	00008067          	ret
    80008018:	0014d493          	srli	s1,s1,0x1
    8000801c:	ffffe097          	auipc	ra,0xffffe
    80008020:	6d8080e7          	jalr	1752(ra) # 800066f4 <mycpu>
    80008024:	0014f493          	andi	s1,s1,1
    80008028:	06952e23          	sw	s1,124(a0)
    8000802c:	fc5ff06f          	j	80007ff0 <push_off+0x34>

0000000080008030 <pop_off>:
    80008030:	ff010113          	addi	sp,sp,-16
    80008034:	00813023          	sd	s0,0(sp)
    80008038:	00113423          	sd	ra,8(sp)
    8000803c:	01010413          	addi	s0,sp,16
    80008040:	ffffe097          	auipc	ra,0xffffe
    80008044:	6b4080e7          	jalr	1716(ra) # 800066f4 <mycpu>
    80008048:	100027f3          	csrr	a5,sstatus
    8000804c:	0027f793          	andi	a5,a5,2
    80008050:	04079663          	bnez	a5,8000809c <pop_off+0x6c>
    80008054:	07852783          	lw	a5,120(a0)
    80008058:	02f05a63          	blez	a5,8000808c <pop_off+0x5c>
    8000805c:	fff7871b          	addiw	a4,a5,-1
    80008060:	06e52c23          	sw	a4,120(a0)
    80008064:	00071c63          	bnez	a4,8000807c <pop_off+0x4c>
    80008068:	07c52783          	lw	a5,124(a0)
    8000806c:	00078863          	beqz	a5,8000807c <pop_off+0x4c>
    80008070:	100027f3          	csrr	a5,sstatus
    80008074:	0027e793          	ori	a5,a5,2
    80008078:	10079073          	csrw	sstatus,a5
    8000807c:	00813083          	ld	ra,8(sp)
    80008080:	00013403          	ld	s0,0(sp)
    80008084:	01010113          	addi	sp,sp,16
    80008088:	00008067          	ret
    8000808c:	00001517          	auipc	a0,0x1
    80008090:	6f450513          	addi	a0,a0,1780 # 80009780 <digits+0x48>
    80008094:	fffff097          	auipc	ra,0xfffff
    80008098:	018080e7          	jalr	24(ra) # 800070ac <panic>
    8000809c:	00001517          	auipc	a0,0x1
    800080a0:	6cc50513          	addi	a0,a0,1740 # 80009768 <digits+0x30>
    800080a4:	fffff097          	auipc	ra,0xfffff
    800080a8:	008080e7          	jalr	8(ra) # 800070ac <panic>

00000000800080ac <push_on>:
    800080ac:	fe010113          	addi	sp,sp,-32
    800080b0:	00813823          	sd	s0,16(sp)
    800080b4:	00113c23          	sd	ra,24(sp)
    800080b8:	00913423          	sd	s1,8(sp)
    800080bc:	02010413          	addi	s0,sp,32
    800080c0:	100024f3          	csrr	s1,sstatus
    800080c4:	100027f3          	csrr	a5,sstatus
    800080c8:	0027e793          	ori	a5,a5,2
    800080cc:	10079073          	csrw	sstatus,a5
    800080d0:	ffffe097          	auipc	ra,0xffffe
    800080d4:	624080e7          	jalr	1572(ra) # 800066f4 <mycpu>
    800080d8:	07852783          	lw	a5,120(a0)
    800080dc:	02078663          	beqz	a5,80008108 <push_on+0x5c>
    800080e0:	ffffe097          	auipc	ra,0xffffe
    800080e4:	614080e7          	jalr	1556(ra) # 800066f4 <mycpu>
    800080e8:	07852783          	lw	a5,120(a0)
    800080ec:	01813083          	ld	ra,24(sp)
    800080f0:	01013403          	ld	s0,16(sp)
    800080f4:	0017879b          	addiw	a5,a5,1
    800080f8:	06f52c23          	sw	a5,120(a0)
    800080fc:	00813483          	ld	s1,8(sp)
    80008100:	02010113          	addi	sp,sp,32
    80008104:	00008067          	ret
    80008108:	0014d493          	srli	s1,s1,0x1
    8000810c:	ffffe097          	auipc	ra,0xffffe
    80008110:	5e8080e7          	jalr	1512(ra) # 800066f4 <mycpu>
    80008114:	0014f493          	andi	s1,s1,1
    80008118:	06952e23          	sw	s1,124(a0)
    8000811c:	fc5ff06f          	j	800080e0 <push_on+0x34>

0000000080008120 <pop_on>:
    80008120:	ff010113          	addi	sp,sp,-16
    80008124:	00813023          	sd	s0,0(sp)
    80008128:	00113423          	sd	ra,8(sp)
    8000812c:	01010413          	addi	s0,sp,16
    80008130:	ffffe097          	auipc	ra,0xffffe
    80008134:	5c4080e7          	jalr	1476(ra) # 800066f4 <mycpu>
    80008138:	100027f3          	csrr	a5,sstatus
    8000813c:	0027f793          	andi	a5,a5,2
    80008140:	04078463          	beqz	a5,80008188 <pop_on+0x68>
    80008144:	07852783          	lw	a5,120(a0)
    80008148:	02f05863          	blez	a5,80008178 <pop_on+0x58>
    8000814c:	fff7879b          	addiw	a5,a5,-1
    80008150:	06f52c23          	sw	a5,120(a0)
    80008154:	07853783          	ld	a5,120(a0)
    80008158:	00079863          	bnez	a5,80008168 <pop_on+0x48>
    8000815c:	100027f3          	csrr	a5,sstatus
    80008160:	ffd7f793          	andi	a5,a5,-3
    80008164:	10079073          	csrw	sstatus,a5
    80008168:	00813083          	ld	ra,8(sp)
    8000816c:	00013403          	ld	s0,0(sp)
    80008170:	01010113          	addi	sp,sp,16
    80008174:	00008067          	ret
    80008178:	00001517          	auipc	a0,0x1
    8000817c:	63050513          	addi	a0,a0,1584 # 800097a8 <digits+0x70>
    80008180:	fffff097          	auipc	ra,0xfffff
    80008184:	f2c080e7          	jalr	-212(ra) # 800070ac <panic>
    80008188:	00001517          	auipc	a0,0x1
    8000818c:	60050513          	addi	a0,a0,1536 # 80009788 <digits+0x50>
    80008190:	fffff097          	auipc	ra,0xfffff
    80008194:	f1c080e7          	jalr	-228(ra) # 800070ac <panic>

0000000080008198 <__memset>:
    80008198:	ff010113          	addi	sp,sp,-16
    8000819c:	00813423          	sd	s0,8(sp)
    800081a0:	01010413          	addi	s0,sp,16
    800081a4:	1a060e63          	beqz	a2,80008360 <__memset+0x1c8>
    800081a8:	40a007b3          	neg	a5,a0
    800081ac:	0077f793          	andi	a5,a5,7
    800081b0:	00778693          	addi	a3,a5,7
    800081b4:	00b00813          	li	a6,11
    800081b8:	0ff5f593          	andi	a1,a1,255
    800081bc:	fff6071b          	addiw	a4,a2,-1
    800081c0:	1b06e663          	bltu	a3,a6,8000836c <__memset+0x1d4>
    800081c4:	1cd76463          	bltu	a4,a3,8000838c <__memset+0x1f4>
    800081c8:	1a078e63          	beqz	a5,80008384 <__memset+0x1ec>
    800081cc:	00b50023          	sb	a1,0(a0)
    800081d0:	00100713          	li	a4,1
    800081d4:	1ae78463          	beq	a5,a4,8000837c <__memset+0x1e4>
    800081d8:	00b500a3          	sb	a1,1(a0)
    800081dc:	00200713          	li	a4,2
    800081e0:	1ae78a63          	beq	a5,a4,80008394 <__memset+0x1fc>
    800081e4:	00b50123          	sb	a1,2(a0)
    800081e8:	00300713          	li	a4,3
    800081ec:	18e78463          	beq	a5,a4,80008374 <__memset+0x1dc>
    800081f0:	00b501a3          	sb	a1,3(a0)
    800081f4:	00400713          	li	a4,4
    800081f8:	1ae78263          	beq	a5,a4,8000839c <__memset+0x204>
    800081fc:	00b50223          	sb	a1,4(a0)
    80008200:	00500713          	li	a4,5
    80008204:	1ae78063          	beq	a5,a4,800083a4 <__memset+0x20c>
    80008208:	00b502a3          	sb	a1,5(a0)
    8000820c:	00700713          	li	a4,7
    80008210:	18e79e63          	bne	a5,a4,800083ac <__memset+0x214>
    80008214:	00b50323          	sb	a1,6(a0)
    80008218:	00700e93          	li	t4,7
    8000821c:	00859713          	slli	a4,a1,0x8
    80008220:	00e5e733          	or	a4,a1,a4
    80008224:	01059e13          	slli	t3,a1,0x10
    80008228:	01c76e33          	or	t3,a4,t3
    8000822c:	01859313          	slli	t1,a1,0x18
    80008230:	006e6333          	or	t1,t3,t1
    80008234:	02059893          	slli	a7,a1,0x20
    80008238:	40f60e3b          	subw	t3,a2,a5
    8000823c:	011368b3          	or	a7,t1,a7
    80008240:	02859813          	slli	a6,a1,0x28
    80008244:	0108e833          	or	a6,a7,a6
    80008248:	03059693          	slli	a3,a1,0x30
    8000824c:	003e589b          	srliw	a7,t3,0x3
    80008250:	00d866b3          	or	a3,a6,a3
    80008254:	03859713          	slli	a4,a1,0x38
    80008258:	00389813          	slli	a6,a7,0x3
    8000825c:	00f507b3          	add	a5,a0,a5
    80008260:	00e6e733          	or	a4,a3,a4
    80008264:	000e089b          	sext.w	a7,t3
    80008268:	00f806b3          	add	a3,a6,a5
    8000826c:	00e7b023          	sd	a4,0(a5)
    80008270:	00878793          	addi	a5,a5,8
    80008274:	fed79ce3          	bne	a5,a3,8000826c <__memset+0xd4>
    80008278:	ff8e7793          	andi	a5,t3,-8
    8000827c:	0007871b          	sext.w	a4,a5
    80008280:	01d787bb          	addw	a5,a5,t4
    80008284:	0ce88e63          	beq	a7,a4,80008360 <__memset+0x1c8>
    80008288:	00f50733          	add	a4,a0,a5
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0017871b          	addiw	a4,a5,1
    80008294:	0cc77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0027871b          	addiw	a4,a5,2
    800082a4:	0ac77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0037871b          	addiw	a4,a5,3
    800082b4:	0ac77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0047871b          	addiw	a4,a5,4
    800082c4:	08c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0057871b          	addiw	a4,a5,5
    800082d4:	08c77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0067871b          	addiw	a4,a5,6
    800082e4:	06c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0077871b          	addiw	a4,a5,7
    800082f4:	06c77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0087871b          	addiw	a4,a5,8
    80008304:	04c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0097871b          	addiw	a4,a5,9
    80008314:	04c77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00a7871b          	addiw	a4,a5,10
    80008324:	02c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	00b7871b          	addiw	a4,a5,11
    80008334:	02c77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	00c7871b          	addiw	a4,a5,12
    80008344:	00c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	00d7879b          	addiw	a5,a5,13
    80008354:	00c7f663          	bgeu	a5,a2,80008360 <__memset+0x1c8>
    80008358:	00f507b3          	add	a5,a0,a5
    8000835c:	00b78023          	sb	a1,0(a5)
    80008360:	00813403          	ld	s0,8(sp)
    80008364:	01010113          	addi	sp,sp,16
    80008368:	00008067          	ret
    8000836c:	00b00693          	li	a3,11
    80008370:	e55ff06f          	j	800081c4 <__memset+0x2c>
    80008374:	00300e93          	li	t4,3
    80008378:	ea5ff06f          	j	8000821c <__memset+0x84>
    8000837c:	00100e93          	li	t4,1
    80008380:	e9dff06f          	j	8000821c <__memset+0x84>
    80008384:	00000e93          	li	t4,0
    80008388:	e95ff06f          	j	8000821c <__memset+0x84>
    8000838c:	00000793          	li	a5,0
    80008390:	ef9ff06f          	j	80008288 <__memset+0xf0>
    80008394:	00200e93          	li	t4,2
    80008398:	e85ff06f          	j	8000821c <__memset+0x84>
    8000839c:	00400e93          	li	t4,4
    800083a0:	e7dff06f          	j	8000821c <__memset+0x84>
    800083a4:	00500e93          	li	t4,5
    800083a8:	e75ff06f          	j	8000821c <__memset+0x84>
    800083ac:	00600e93          	li	t4,6
    800083b0:	e6dff06f          	j	8000821c <__memset+0x84>

00000000800083b4 <__memmove>:
    800083b4:	ff010113          	addi	sp,sp,-16
    800083b8:	00813423          	sd	s0,8(sp)
    800083bc:	01010413          	addi	s0,sp,16
    800083c0:	0e060863          	beqz	a2,800084b0 <__memmove+0xfc>
    800083c4:	fff6069b          	addiw	a3,a2,-1
    800083c8:	0006881b          	sext.w	a6,a3
    800083cc:	0ea5e863          	bltu	a1,a0,800084bc <__memmove+0x108>
    800083d0:	00758713          	addi	a4,a1,7
    800083d4:	00a5e7b3          	or	a5,a1,a0
    800083d8:	40a70733          	sub	a4,a4,a0
    800083dc:	0077f793          	andi	a5,a5,7
    800083e0:	00f73713          	sltiu	a4,a4,15
    800083e4:	00174713          	xori	a4,a4,1
    800083e8:	0017b793          	seqz	a5,a5
    800083ec:	00e7f7b3          	and	a5,a5,a4
    800083f0:	10078863          	beqz	a5,80008500 <__memmove+0x14c>
    800083f4:	00900793          	li	a5,9
    800083f8:	1107f463          	bgeu	a5,a6,80008500 <__memmove+0x14c>
    800083fc:	0036581b          	srliw	a6,a2,0x3
    80008400:	fff8081b          	addiw	a6,a6,-1
    80008404:	02081813          	slli	a6,a6,0x20
    80008408:	01d85893          	srli	a7,a6,0x1d
    8000840c:	00858813          	addi	a6,a1,8
    80008410:	00058793          	mv	a5,a1
    80008414:	00050713          	mv	a4,a0
    80008418:	01088833          	add	a6,a7,a6
    8000841c:	0007b883          	ld	a7,0(a5)
    80008420:	00878793          	addi	a5,a5,8
    80008424:	00870713          	addi	a4,a4,8
    80008428:	ff173c23          	sd	a7,-8(a4)
    8000842c:	ff0798e3          	bne	a5,a6,8000841c <__memmove+0x68>
    80008430:	ff867713          	andi	a4,a2,-8
    80008434:	02071793          	slli	a5,a4,0x20
    80008438:	0207d793          	srli	a5,a5,0x20
    8000843c:	00f585b3          	add	a1,a1,a5
    80008440:	40e686bb          	subw	a3,a3,a4
    80008444:	00f507b3          	add	a5,a0,a5
    80008448:	06e60463          	beq	a2,a4,800084b0 <__memmove+0xfc>
    8000844c:	0005c703          	lbu	a4,0(a1)
    80008450:	00e78023          	sb	a4,0(a5)
    80008454:	04068e63          	beqz	a3,800084b0 <__memmove+0xfc>
    80008458:	0015c603          	lbu	a2,1(a1)
    8000845c:	00100713          	li	a4,1
    80008460:	00c780a3          	sb	a2,1(a5)
    80008464:	04e68663          	beq	a3,a4,800084b0 <__memmove+0xfc>
    80008468:	0025c603          	lbu	a2,2(a1)
    8000846c:	00200713          	li	a4,2
    80008470:	00c78123          	sb	a2,2(a5)
    80008474:	02e68e63          	beq	a3,a4,800084b0 <__memmove+0xfc>
    80008478:	0035c603          	lbu	a2,3(a1)
    8000847c:	00300713          	li	a4,3
    80008480:	00c781a3          	sb	a2,3(a5)
    80008484:	02e68663          	beq	a3,a4,800084b0 <__memmove+0xfc>
    80008488:	0045c603          	lbu	a2,4(a1)
    8000848c:	00400713          	li	a4,4
    80008490:	00c78223          	sb	a2,4(a5)
    80008494:	00e68e63          	beq	a3,a4,800084b0 <__memmove+0xfc>
    80008498:	0055c603          	lbu	a2,5(a1)
    8000849c:	00500713          	li	a4,5
    800084a0:	00c782a3          	sb	a2,5(a5)
    800084a4:	00e68663          	beq	a3,a4,800084b0 <__memmove+0xfc>
    800084a8:	0065c703          	lbu	a4,6(a1)
    800084ac:	00e78323          	sb	a4,6(a5)
    800084b0:	00813403          	ld	s0,8(sp)
    800084b4:	01010113          	addi	sp,sp,16
    800084b8:	00008067          	ret
    800084bc:	02061713          	slli	a4,a2,0x20
    800084c0:	02075713          	srli	a4,a4,0x20
    800084c4:	00e587b3          	add	a5,a1,a4
    800084c8:	f0f574e3          	bgeu	a0,a5,800083d0 <__memmove+0x1c>
    800084cc:	02069613          	slli	a2,a3,0x20
    800084d0:	02065613          	srli	a2,a2,0x20
    800084d4:	fff64613          	not	a2,a2
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00c78633          	add	a2,a5,a2
    800084e0:	fff7c683          	lbu	a3,-1(a5)
    800084e4:	fff78793          	addi	a5,a5,-1
    800084e8:	fff70713          	addi	a4,a4,-1
    800084ec:	00d70023          	sb	a3,0(a4)
    800084f0:	fec798e3          	bne	a5,a2,800084e0 <__memmove+0x12c>
    800084f4:	00813403          	ld	s0,8(sp)
    800084f8:	01010113          	addi	sp,sp,16
    800084fc:	00008067          	ret
    80008500:	02069713          	slli	a4,a3,0x20
    80008504:	02075713          	srli	a4,a4,0x20
    80008508:	00170713          	addi	a4,a4,1
    8000850c:	00e50733          	add	a4,a0,a4
    80008510:	00050793          	mv	a5,a0
    80008514:	0005c683          	lbu	a3,0(a1)
    80008518:	00178793          	addi	a5,a5,1
    8000851c:	00158593          	addi	a1,a1,1
    80008520:	fed78fa3          	sb	a3,-1(a5)
    80008524:	fee798e3          	bne	a5,a4,80008514 <__memmove+0x160>
    80008528:	f89ff06f          	j	800084b0 <__memmove+0xfc>

000000008000852c <__putc>:
    8000852c:	fe010113          	addi	sp,sp,-32
    80008530:	00813823          	sd	s0,16(sp)
    80008534:	00113c23          	sd	ra,24(sp)
    80008538:	02010413          	addi	s0,sp,32
    8000853c:	00050793          	mv	a5,a0
    80008540:	fef40593          	addi	a1,s0,-17
    80008544:	00100613          	li	a2,1
    80008548:	00000513          	li	a0,0
    8000854c:	fef407a3          	sb	a5,-17(s0)
    80008550:	fffff097          	auipc	ra,0xfffff
    80008554:	b3c080e7          	jalr	-1220(ra) # 8000708c <console_write>
    80008558:	01813083          	ld	ra,24(sp)
    8000855c:	01013403          	ld	s0,16(sp)
    80008560:	02010113          	addi	sp,sp,32
    80008564:	00008067          	ret

0000000080008568 <__getc>:
    80008568:	fe010113          	addi	sp,sp,-32
    8000856c:	00813823          	sd	s0,16(sp)
    80008570:	00113c23          	sd	ra,24(sp)
    80008574:	02010413          	addi	s0,sp,32
    80008578:	fe840593          	addi	a1,s0,-24
    8000857c:	00100613          	li	a2,1
    80008580:	00000513          	li	a0,0
    80008584:	fffff097          	auipc	ra,0xfffff
    80008588:	ae8080e7          	jalr	-1304(ra) # 8000706c <console_read>
    8000858c:	fe844503          	lbu	a0,-24(s0)
    80008590:	01813083          	ld	ra,24(sp)
    80008594:	01013403          	ld	s0,16(sp)
    80008598:	02010113          	addi	sp,sp,32
    8000859c:	00008067          	ret

00000000800085a0 <console_handler>:
    800085a0:	fe010113          	addi	sp,sp,-32
    800085a4:	00813823          	sd	s0,16(sp)
    800085a8:	00113c23          	sd	ra,24(sp)
    800085ac:	00913423          	sd	s1,8(sp)
    800085b0:	02010413          	addi	s0,sp,32
    800085b4:	14202773          	csrr	a4,scause
    800085b8:	100027f3          	csrr	a5,sstatus
    800085bc:	0027f793          	andi	a5,a5,2
    800085c0:	06079e63          	bnez	a5,8000863c <console_handler+0x9c>
    800085c4:	00074c63          	bltz	a4,800085dc <console_handler+0x3c>
    800085c8:	01813083          	ld	ra,24(sp)
    800085cc:	01013403          	ld	s0,16(sp)
    800085d0:	00813483          	ld	s1,8(sp)
    800085d4:	02010113          	addi	sp,sp,32
    800085d8:	00008067          	ret
    800085dc:	0ff77713          	andi	a4,a4,255
    800085e0:	00900793          	li	a5,9
    800085e4:	fef712e3          	bne	a4,a5,800085c8 <console_handler+0x28>
    800085e8:	ffffe097          	auipc	ra,0xffffe
    800085ec:	6dc080e7          	jalr	1756(ra) # 80006cc4 <plic_claim>
    800085f0:	00a00793          	li	a5,10
    800085f4:	00050493          	mv	s1,a0
    800085f8:	02f50c63          	beq	a0,a5,80008630 <console_handler+0x90>
    800085fc:	fc0506e3          	beqz	a0,800085c8 <console_handler+0x28>
    80008600:	00050593          	mv	a1,a0
    80008604:	00001517          	auipc	a0,0x1
    80008608:	0ac50513          	addi	a0,a0,172 # 800096b0 <CONSOLE_STATUS+0x6a0>
    8000860c:	fffff097          	auipc	ra,0xfffff
    80008610:	afc080e7          	jalr	-1284(ra) # 80007108 <__printf>
    80008614:	01013403          	ld	s0,16(sp)
    80008618:	01813083          	ld	ra,24(sp)
    8000861c:	00048513          	mv	a0,s1
    80008620:	00813483          	ld	s1,8(sp)
    80008624:	02010113          	addi	sp,sp,32
    80008628:	ffffe317          	auipc	t1,0xffffe
    8000862c:	6d430067          	jr	1748(t1) # 80006cfc <plic_complete>
    80008630:	fffff097          	auipc	ra,0xfffff
    80008634:	3e0080e7          	jalr	992(ra) # 80007a10 <uartintr>
    80008638:	fddff06f          	j	80008614 <console_handler+0x74>
    8000863c:	00001517          	auipc	a0,0x1
    80008640:	17450513          	addi	a0,a0,372 # 800097b0 <digits+0x78>
    80008644:	fffff097          	auipc	ra,0xfffff
    80008648:	a68080e7          	jalr	-1432(ra) # 800070ac <panic>
	...
