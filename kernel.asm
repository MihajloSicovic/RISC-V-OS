
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	56013103          	ld	sp,1376(sp) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	438060ef          	jal	ra,80006454 <start>

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
    80001084:	4c4010ef          	jal	ra,80002548 <_ZN5Riscv14handleSyscallsEv>

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
    size += sizeof(MemoryAllocator::Header);
    80001248:	01050513          	addi	a0,a0,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    8000124c:	fc057793          	andi	a5,a0,-64
    80001250:	03f57513          	andi	a0,a0,63
    80001254:	00050463          	beqz	a0,8000125c <_Z9mem_allocm+0x20>
    80001258:	04000513          	li	a0,64
    8000125c:	00a78533          	add	a0,a5,a0

    __asm__ volatile("mv a1, %0" : : "r" (paddedSize));
    80001260:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001264:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    void* result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000126c:	00050513          	mv	a0,a0
    return result;
}
    80001270:	00813403          	ld	s0,8(sp)
    80001274:	01010113          	addi	sp,sp,16
    80001278:	00008067          	ret

000000008000127c <_Z8mem_freePv>:

int mem_free(void* p) {
    8000127c:	ff010113          	addi	sp,sp,-16
    80001280:	00813423          	sd	s0,8(sp)
    80001284:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (p));
    80001288:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    8000128c:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001294:	00050513          	mv	a0,a0
    return result;
}
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x03");
    800012b4:	00300513          	li	a0,3
    __asm__ volatile("ecall");
    800012b8:	00000073          	ecall

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800012bc:	00050513          	mv	a0,a0
    return result;
}
    800012c0:	00813403          	ld	s0,8(sp)
    800012c4:	01010113          	addi	sp,sp,16
    800012c8:	00008067          	ret

00000000800012cc <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800012cc:	ff010113          	addi	sp,sp,-16
    800012d0:	00813423          	sd	s0,8(sp)
    800012d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x04");
    800012d8:	00400513          	li	a0,4
    __asm__ volatile("ecall");
    800012dc:	00000073          	ecall

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800012e0:	00050513          	mv	a0,a0
    return result;
}
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_Z13thread_createPP3CCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800012f0:	fd010113          	addi	sp,sp,-48
    800012f4:	02113423          	sd	ra,40(sp)
    800012f8:	02813023          	sd	s0,32(sp)
    800012fc:	00913c23          	sd	s1,24(sp)
    80001300:	01213823          	sd	s2,16(sp)
    80001304:	01313423          	sd	s3,8(sp)
    80001308:	03010413          	addi	s0,sp,48
    8000130c:	00050493          	mv	s1,a0
    80001310:	00058913          	mv	s2,a1
    80001314:	00060993          	mv	s3,a2

class MemoryAllocator {
public:

    static MemoryAllocator* Instance() {
        static MemoryAllocator memoryAllocator;
    80001318:	0000a797          	auipc	a5,0xa
    8000131c:	2b87c783          	lbu	a5,696(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001320:	04079263          	bnez	a5,80001364 <_Z13thread_createPP3CCBPFvPvES2_+0x74>
private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001324:	0000a797          	auipc	a5,0xa
    80001328:	2347b783          	ld	a5,564(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000132c:	0007b783          	ld	a5,0(a5)
    80001330:	0000a717          	auipc	a4,0xa
    80001334:	2a870713          	addi	a4,a4,680 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001338:	00f73023          	sd	a5,0(a4)
    8000133c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001340:	0000a717          	auipc	a4,0xa
    80001344:	23073703          	ld	a4,560(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001348:	00073703          	ld	a4,0(a4)
    8000134c:	40f70733          	sub	a4,a4,a5
    80001350:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001354:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001358:	00100793          	li	a5,1
    8000135c:	0000a717          	auipc	a4,0xa
    80001360:	26f70a23          	sb	a5,628(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    void* sp = MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    80001364:	000085b7          	lui	a1,0x8
    80001368:	0000a517          	auipc	a0,0xa
    8000136c:	27050513          	addi	a0,a0,624 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001370:	00001097          	auipc	ra,0x1
    80001374:	77c080e7          	jalr	1916(ra) # 80002aec <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("mv a6, %0" : : "r"((uint64)sp));
    80001378:	00050813          	mv	a6,a0
    __asm__ volatile ("mv a7, %0" : : "r"((uint64)arg));
    8000137c:	00098893          	mv	a7,s3
    __asm__ volatile ("mv a2, %0" : : "r"((uint64)start_routine));
    80001380:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)handle));
    80001384:	00048593          	mv	a1,s1
    __asm__ volatile("li a0, 0x11");
    80001388:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    8000138c:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001390:	00050513          	mv	a0,a0
    return result;
}
    80001394:	0005051b          	sext.w	a0,a0
    80001398:	02813083          	ld	ra,40(sp)
    8000139c:	02013403          	ld	s0,32(sp)
    800013a0:	01813483          	ld	s1,24(sp)
    800013a4:	01013903          	ld	s2,16(sp)
    800013a8:	00813983          	ld	s3,8(sp)
    800013ac:	03010113          	addi	sp,sp,48
    800013b0:	00008067          	ret

00000000800013b4 <_Z12thread_startPP3CCB>:

int thread_start(thread_t* handle) {
    if (!handle) return -1;
    800013b4:	02050a63          	beqz	a0,800013e8 <_Z12thread_startPP3CCB+0x34>
int thread_start(thread_t* handle) {
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00113423          	sd	ra,8(sp)
    800013c0:	00813023          	sd	s0,0(sp)
    800013c4:	01010413          	addi	s0,sp,16
    static void yield();

    static CCB *running;

    static void startThread(CCB* tcbToStart) {
        Scheduler::put(tcbToStart);
    800013c8:	00053503          	ld	a0,0(a0)
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	5e4080e7          	jalr	1508(ra) # 800029b0 <_ZN9Scheduler3putEP3CCB>
    CCB::startThread(*handle);
    return 0;
    800013d4:	00000513          	li	a0,0
}
    800013d8:	00813083          	ld	ra,8(sp)
    800013dc:	00013403          	ld	s0,0(sp)
    800013e0:	01010113          	addi	sp,sp,16
    800013e4:	00008067          	ret
    if (!handle) return -1;
    800013e8:	fff00513          	li	a0,-1
}
    800013ec:	00008067          	ret

00000000800013f0 <_Z11thread_exitv>:

int thread_exit() {
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00813423          	sd	s0,8(sp)
    800013f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800013fc:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    80001400:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001404:	00050513          	mv	a0,a0
    return result;
}
    80001408:	0005051b          	sext.w	a0,a0
    8000140c:	00813403          	ld	s0,8(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001418:	ff010113          	addi	sp,sp,-16
    8000141c:	00813423          	sd	s0,8(sp)
    80001420:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001424:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80001428:	00000073          	ecall
}
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_Z8sem_openPPN3ABI9SemaphoreEj>:

int sem_open(sem_t* handle, unsigned init) {
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" ((uint64)init));
    80001444:	02059593          	slli	a1,a1,0x20
    80001448:	0205d593          	srli	a1,a1,0x20
    8000144c:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" ((uint64)handle));
    80001450:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001454:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    80001458:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000145c:	00050513          	mv	a0,a0
    return result;
}
    80001460:	0005051b          	sext.w	a0,a0
    80001464:	00813403          	ld	s0,8(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_Z9sem_closePN3ABI9SemaphoreE>:

int sem_close(sem_t handle) {
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000147c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001480:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    80001484:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001488:	00050513          	mv	a0,a0
    return result;
}
    8000148c:	0005051b          	sext.w	a0,a0
    80001490:	00813403          	ld	s0,8(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_Z8sem_waitPN3ABI9SemaphoreE>:

int sem_wait(sem_t id) {
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00813423          	sd	s0,8(sp)
    800014a4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800014a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800014ac:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    800014b0:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800014b4:	00050513          	mv	a0,a0
    return result;
}
    800014b8:	0005051b          	sext.w	a0,a0
    800014bc:	00813403          	ld	s0,8(sp)
    800014c0:	01010113          	addi	sp,sp,16
    800014c4:	00008067          	ret

00000000800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>:

int sem_signal(sem_t id) {
    800014c8:	ff010113          	addi	sp,sp,-16
    800014cc:	00813423          	sd	s0,8(sp)
    800014d0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800014d4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800014d8:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    800014dc:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800014e0:	00050513          	mv	a0,a0
    return result;
}
    800014e4:	0005051b          	sext.w	a0,a0
    800014e8:	00813403          	ld	s0,8(sp)
    800014ec:	01010113          	addi	sp,sp,16
    800014f0:	00008067          	ret

00000000800014f4 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    800014f4:	ff010113          	addi	sp,sp,-16
    800014f8:	00813423          	sd	s0,8(sp)
    800014fc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    80001500:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001504:	03100513          	li	a0,49
    __asm__ volatile ("ecall");
    80001508:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000150c:	00050513          	mv	a0,a0
    return result;
}
    80001510:	0005051b          	sext.w	a0,a0
    80001514:	00813403          	ld	s0,8(sp)
    80001518:	01010113          	addi	sp,sp,16
    8000151c:	00008067          	ret

0000000080001520 <_Z4getcv>:

char getc() {
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00813423          	sd	s0,8(sp)
    80001528:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000152c:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    80001530:	00000073          	ecall

    char result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001534:	00050513          	mv	a0,a0
    return result;
}
    80001538:	0ff57513          	andi	a0,a0,255
    8000153c:	00813403          	ld	s0,8(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret

0000000080001548 <_Z4putcc>:

void putc(char c) {
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00813423          	sd	s0,8(sp)
    80001550:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    80001554:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001558:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    8000155c:	00000073          	ecall
    80001560:	00813403          	ld	s0,8(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_ZL9fibonaccim>:
#include "../h/ccb.hpp"
#include "../h/Semaphore.hpp"
#include "../test/printing.hpp"

static uint64 fibonacci(uint64 n)
{
    8000156c:	fe010113          	addi	sp,sp,-32
    80001570:	00113c23          	sd	ra,24(sp)
    80001574:	00813823          	sd	s0,16(sp)
    80001578:	00913423          	sd	s1,8(sp)
    8000157c:	01213023          	sd	s2,0(sp)
    80001580:	02010413          	addi	s0,sp,32
    80001584:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001588:	00100793          	li	a5,1
    8000158c:	02a7f663          	bgeu	a5,a0,800015b8 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001590:	00357793          	andi	a5,a0,3
    80001594:	02078e63          	beqz	a5,800015d0 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001598:	fff48513          	addi	a0,s1,-1
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	fd0080e7          	jalr	-48(ra) # 8000156c <_ZL9fibonaccim>
    800015a4:	00050913          	mv	s2,a0
    800015a8:	ffe48513          	addi	a0,s1,-2
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	fc0080e7          	jalr	-64(ra) # 8000156c <_ZL9fibonaccim>
    800015b4:	00a90533          	add	a0,s2,a0
}
    800015b8:	01813083          	ld	ra,24(sp)
    800015bc:	01013403          	ld	s0,16(sp)
    800015c0:	00813483          	ld	s1,8(sp)
    800015c4:	00013903          	ld	s2,0(sp)
    800015c8:	02010113          	addi	sp,sp,32
    800015cc:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	e48080e7          	jalr	-440(ra) # 80001418 <_Z15thread_dispatchv>
    800015d8:	fc1ff06f          	j	80001598 <_ZL9fibonaccim+0x2c>

00000000800015dc <_Z11workerBodyAPv>:

void workerBodyA(void*)
{
    800015dc:	fe010113          	addi	sp,sp,-32
    800015e0:	00113c23          	sd	ra,24(sp)
    800015e4:	00813823          	sd	s0,16(sp)
    800015e8:	00913423          	sd	s1,8(sp)
    800015ec:	01213023          	sd	s2,0(sp)
    800015f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800015f4:	00000493          	li	s1,0
    800015f8:	0400006f          	j	80001638 <_Z11workerBodyAPv+0x5c>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800015fc:	00008517          	auipc	a0,0x8
    80001600:	a2450513          	addi	a0,a0,-1500 # 80009020 <CONSOLE_STATUS+0x10>
    80001604:	00004097          	auipc	ra,0x4
    80001608:	c0c080e7          	jalr	-1012(ra) # 80005210 <_Z11printStringPKc>
        printInt(i);
    8000160c:	00000613          	li	a2,0
    80001610:	00a00593          	li	a1,10
    80001614:	00048513          	mv	a0,s1
    80001618:	00004097          	auipc	ra,0x4
    8000161c:	da8080e7          	jalr	-600(ra) # 800053c0 <_Z8printIntiii>
        printString("\n");
    80001620:	00008517          	auipc	a0,0x8
    80001624:	ee850513          	addi	a0,a0,-280 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001628:	00004097          	auipc	ra,0x4
    8000162c:	be8080e7          	jalr	-1048(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001630:	0014849b          	addiw	s1,s1,1
    80001634:	0ff4f493          	andi	s1,s1,255
    80001638:	00200793          	li	a5,2
    8000163c:	fc97f0e3          	bgeu	a5,s1,800015fc <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001640:	00008517          	auipc	a0,0x8
    80001644:	9e850513          	addi	a0,a0,-1560 # 80009028 <CONSOLE_STATUS+0x18>
    80001648:	00004097          	auipc	ra,0x4
    8000164c:	bc8080e7          	jalr	-1080(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001650:	00700313          	li	t1,7
    thread_dispatch();
    80001654:	00000097          	auipc	ra,0x0
    80001658:	dc4080e7          	jalr	-572(ra) # 80001418 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000165c:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001660:	00008517          	auipc	a0,0x8
    80001664:	9d850513          	addi	a0,a0,-1576 # 80009038 <CONSOLE_STATUS+0x28>
    80001668:	00004097          	auipc	ra,0x4
    8000166c:	ba8080e7          	jalr	-1112(ra) # 80005210 <_Z11printStringPKc>
    printInt(t1);
    80001670:	00000613          	li	a2,0
    80001674:	00a00593          	li	a1,10
    80001678:	0009051b          	sext.w	a0,s2
    8000167c:	00004097          	auipc	ra,0x4
    80001680:	d44080e7          	jalr	-700(ra) # 800053c0 <_Z8printIntiii>
    printString("\n");
    80001684:	00008517          	auipc	a0,0x8
    80001688:	e8450513          	addi	a0,a0,-380 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000168c:	00004097          	auipc	ra,0x4
    80001690:	b84080e7          	jalr	-1148(ra) # 80005210 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001694:	01400513          	li	a0,20
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	ed4080e7          	jalr	-300(ra) # 8000156c <_ZL9fibonaccim>
    800016a0:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800016a4:	00008517          	auipc	a0,0x8
    800016a8:	99c50513          	addi	a0,a0,-1636 # 80009040 <CONSOLE_STATUS+0x30>
    800016ac:	00004097          	auipc	ra,0x4
    800016b0:	b64080e7          	jalr	-1180(ra) # 80005210 <_Z11printStringPKc>
    printInt(result);
    800016b4:	00000613          	li	a2,0
    800016b8:	00a00593          	li	a1,10
    800016bc:	0009051b          	sext.w	a0,s2
    800016c0:	00004097          	auipc	ra,0x4
    800016c4:	d00080e7          	jalr	-768(ra) # 800053c0 <_Z8printIntiii>
    printString("\n");
    800016c8:	00008517          	auipc	a0,0x8
    800016cc:	e4050513          	addi	a0,a0,-448 # 80009508 <CONSOLE_STATUS+0x4f8>
    800016d0:	00004097          	auipc	ra,0x4
    800016d4:	b40080e7          	jalr	-1216(ra) # 80005210 <_Z11printStringPKc>
    800016d8:	0400006f          	j	80001718 <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800016dc:	00008517          	auipc	a0,0x8
    800016e0:	94450513          	addi	a0,a0,-1724 # 80009020 <CONSOLE_STATUS+0x10>
    800016e4:	00004097          	auipc	ra,0x4
    800016e8:	b2c080e7          	jalr	-1236(ra) # 80005210 <_Z11printStringPKc>
        printInt(i);
    800016ec:	00000613          	li	a2,0
    800016f0:	00a00593          	li	a1,10
    800016f4:	00048513          	mv	a0,s1
    800016f8:	00004097          	auipc	ra,0x4
    800016fc:	cc8080e7          	jalr	-824(ra) # 800053c0 <_Z8printIntiii>
        printString("\n");
    80001700:	00008517          	auipc	a0,0x8
    80001704:	e0850513          	addi	a0,a0,-504 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001708:	00004097          	auipc	ra,0x4
    8000170c:	b08080e7          	jalr	-1272(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001710:	0014849b          	addiw	s1,s1,1
    80001714:	0ff4f493          	andi	s1,s1,255
    80001718:	00500793          	li	a5,5
    8000171c:	fc97f0e3          	bgeu	a5,s1,800016dc <_Z11workerBodyAPv+0x100>
    }

    CCB::running->setFinished(true);
    80001720:	0000a797          	auipc	a5,0xa
    80001724:	e487b783          	ld	a5,-440(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001728:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    8000172c:	00100713          	li	a4,1
    80001730:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001734:	00000097          	auipc	ra,0x0
    80001738:	ce4080e7          	jalr	-796(ra) # 80001418 <_Z15thread_dispatchv>
}
    8000173c:	01813083          	ld	ra,24(sp)
    80001740:	01013403          	ld	s0,16(sp)
    80001744:	00813483          	ld	s1,8(sp)
    80001748:	00013903          	ld	s2,0(sp)
    8000174c:	02010113          	addi	sp,sp,32
    80001750:	00008067          	ret

0000000080001754 <_Z11workerBodyBPv>:

void workerBodyB(void*)
{
    80001754:	fe010113          	addi	sp,sp,-32
    80001758:	00113c23          	sd	ra,24(sp)
    8000175c:	00813823          	sd	s0,16(sp)
    80001760:	00913423          	sd	s1,8(sp)
    80001764:	01213023          	sd	s2,0(sp)
    80001768:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000176c:	00a00493          	li	s1,10
    80001770:	0400006f          	j	800017b0 <_Z11workerBodyBPv+0x5c>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001774:	00008517          	auipc	a0,0x8
    80001778:	8dc50513          	addi	a0,a0,-1828 # 80009050 <CONSOLE_STATUS+0x40>
    8000177c:	00004097          	auipc	ra,0x4
    80001780:	a94080e7          	jalr	-1388(ra) # 80005210 <_Z11printStringPKc>
        printInt(i);
    80001784:	00000613          	li	a2,0
    80001788:	00a00593          	li	a1,10
    8000178c:	00048513          	mv	a0,s1
    80001790:	00004097          	auipc	ra,0x4
    80001794:	c30080e7          	jalr	-976(ra) # 800053c0 <_Z8printIntiii>
        printString("\n");
    80001798:	00008517          	auipc	a0,0x8
    8000179c:	d7050513          	addi	a0,a0,-656 # 80009508 <CONSOLE_STATUS+0x4f8>
    800017a0:	00004097          	auipc	ra,0x4
    800017a4:	a70080e7          	jalr	-1424(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 13; i++)
    800017a8:	0014849b          	addiw	s1,s1,1
    800017ac:	0ff4f493          	andi	s1,s1,255
    800017b0:	00c00793          	li	a5,12
    800017b4:	fc97f0e3          	bgeu	a5,s1,80001774 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	8a050513          	addi	a0,a0,-1888 # 80009058 <CONSOLE_STATUS+0x48>
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	a50080e7          	jalr	-1456(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800017c8:	00500313          	li	t1,5
    thread_dispatch();
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	c4c080e7          	jalr	-948(ra) # 80001418 <_Z15thread_dispatchv>

    uint64 result = fibonacci(23);
    800017d4:	01700513          	li	a0,23
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	d94080e7          	jalr	-620(ra) # 8000156c <_ZL9fibonaccim>
    800017e0:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800017e4:	00008517          	auipc	a0,0x8
    800017e8:	85c50513          	addi	a0,a0,-1956 # 80009040 <CONSOLE_STATUS+0x30>
    800017ec:	00004097          	auipc	ra,0x4
    800017f0:	a24080e7          	jalr	-1500(ra) # 80005210 <_Z11printStringPKc>
    printInt(result);
    800017f4:	00000613          	li	a2,0
    800017f8:	00a00593          	li	a1,10
    800017fc:	0009051b          	sext.w	a0,s2
    80001800:	00004097          	auipc	ra,0x4
    80001804:	bc0080e7          	jalr	-1088(ra) # 800053c0 <_Z8printIntiii>
    printString("\n");
    80001808:	00008517          	auipc	a0,0x8
    8000180c:	d0050513          	addi	a0,a0,-768 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001810:	00004097          	auipc	ra,0x4
    80001814:	a00080e7          	jalr	-1536(ra) # 80005210 <_Z11printStringPKc>
    80001818:	0400006f          	j	80001858 <_Z11workerBodyBPv+0x104>

    for (; i < 16; i++)
    {
        printString("B: i=");
    8000181c:	00008517          	auipc	a0,0x8
    80001820:	83450513          	addi	a0,a0,-1996 # 80009050 <CONSOLE_STATUS+0x40>
    80001824:	00004097          	auipc	ra,0x4
    80001828:	9ec080e7          	jalr	-1556(ra) # 80005210 <_Z11printStringPKc>
        printInt(i);
    8000182c:	00000613          	li	a2,0
    80001830:	00a00593          	li	a1,10
    80001834:	00048513          	mv	a0,s1
    80001838:	00004097          	auipc	ra,0x4
    8000183c:	b88080e7          	jalr	-1144(ra) # 800053c0 <_Z8printIntiii>
        printString("\n");
    80001840:	00008517          	auipc	a0,0x8
    80001844:	cc850513          	addi	a0,a0,-824 # 80009508 <CONSOLE_STATUS+0x4f8>
    80001848:	00004097          	auipc	ra,0x4
    8000184c:	9c8080e7          	jalr	-1592(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001850:	0014849b          	addiw	s1,s1,1
    80001854:	0ff4f493          	andi	s1,s1,255
    80001858:	00f00793          	li	a5,15
    8000185c:	fc97f0e3          	bgeu	a5,s1,8000181c <_Z11workerBodyBPv+0xc8>
    }

    CCB::running->setFinished(true);
    80001860:	0000a797          	auipc	a5,0xa
    80001864:	d087b783          	ld	a5,-760(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001868:	0007b783          	ld	a5,0(a5)
    8000186c:	00100713          	li	a4,1
    80001870:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001874:	00000097          	auipc	ra,0x0
    80001878:	ba4080e7          	jalr	-1116(ra) # 80001418 <_Z15thread_dispatchv>
}
    8000187c:	01813083          	ld	ra,24(sp)
    80001880:	01013403          	ld	s0,16(sp)
    80001884:	00813483          	ld	s1,8(sp)
    80001888:	00013903          	ld	s2,0(sp)
    8000188c:	02010113          	addi	sp,sp,32
    80001890:	00008067          	ret

0000000080001894 <_Z11workerBodyCPv>:

static int a = 0;

void workerBodyC(void*) {
    80001894:	fe010113          	addi	sp,sp,-32
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00813823          	sd	s0,16(sp)
    800018a0:	00913423          	sd	s1,8(sp)
    800018a4:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    800018a8:	00000493          	li	s1,0
    800018ac:	00900793          	li	a5,9
    800018b0:	0497c663          	blt	a5,s1,800018fc <_Z11workerBodyCPv+0x68>
        a += 1000;
    800018b4:	0000a797          	auipc	a5,0xa
    800018b8:	d3478793          	addi	a5,a5,-716 # 8000b5e8 <_ZL1a>
    800018bc:	0007a503          	lw	a0,0(a5)
    800018c0:	3e85051b          	addiw	a0,a0,1000
    800018c4:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    800018c8:	00000613          	li	a2,0
    800018cc:	00a00593          	li	a1,10
    800018d0:	0005051b          	sext.w	a0,a0
    800018d4:	00004097          	auipc	ra,0x4
    800018d8:	aec080e7          	jalr	-1300(ra) # 800053c0 <_Z8printIntiii>
        printString("\n");
    800018dc:	00008517          	auipc	a0,0x8
    800018e0:	c2c50513          	addi	a0,a0,-980 # 80009508 <CONSOLE_STATUS+0x4f8>
    800018e4:	00004097          	auipc	ra,0x4
    800018e8:	92c080e7          	jalr	-1748(ra) # 80005210 <_Z11printStringPKc>
        thread_dispatch();
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	b2c080e7          	jalr	-1236(ra) # 80001418 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    800018f4:	0014849b          	addiw	s1,s1,1
    800018f8:	fb5ff06f          	j	800018ac <_Z11workerBodyCPv+0x18>
    }
    CCB::running->setFinished(true);
    800018fc:	0000a797          	auipc	a5,0xa
    80001900:	c6c7b783          	ld	a5,-916(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001904:	0007b783          	ld	a5,0(a5)
    80001908:	00100713          	li	a4,1
    8000190c:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001910:	00000097          	auipc	ra,0x0
    80001914:	b08080e7          	jalr	-1272(ra) # 80001418 <_Z15thread_dispatchv>
}
    80001918:	01813083          	ld	ra,24(sp)
    8000191c:	01013403          	ld	s0,16(sp)
    80001920:	00813483          	ld	s1,8(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret

000000008000192c <_Z11workerBodyDPv>:

void workerBodyD(void*) {
    8000192c:	fe010113          	addi	sp,sp,-32
    80001930:	00113c23          	sd	ra,24(sp)
    80001934:	00813823          	sd	s0,16(sp)
    80001938:	00913423          	sd	s1,8(sp)
    8000193c:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80001940:	00000493          	li	s1,0
    80001944:	00900793          	li	a5,9
    80001948:	0497c663          	blt	a5,s1,80001994 <_Z11workerBodyDPv+0x68>
        a -= 1000;
    8000194c:	0000a797          	auipc	a5,0xa
    80001950:	c9c78793          	addi	a5,a5,-868 # 8000b5e8 <_ZL1a>
    80001954:	0007a503          	lw	a0,0(a5)
    80001958:	c185051b          	addiw	a0,a0,-1000
    8000195c:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    80001960:	00000613          	li	a2,0
    80001964:	00a00593          	li	a1,10
    80001968:	0005051b          	sext.w	a0,a0
    8000196c:	00004097          	auipc	ra,0x4
    80001970:	a54080e7          	jalr	-1452(ra) # 800053c0 <_Z8printIntiii>
        printString("\n");
    80001974:	00008517          	auipc	a0,0x8
    80001978:	b9450513          	addi	a0,a0,-1132 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000197c:	00004097          	auipc	ra,0x4
    80001980:	894080e7          	jalr	-1900(ra) # 80005210 <_Z11printStringPKc>
        thread_dispatch();
    80001984:	00000097          	auipc	ra,0x0
    80001988:	a94080e7          	jalr	-1388(ra) # 80001418 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    8000198c:	0014849b          	addiw	s1,s1,1
    80001990:	fb5ff06f          	j	80001944 <_Z11workerBodyDPv+0x18>
    }
    CCB::running->setFinished(true);
    80001994:	0000a797          	auipc	a5,0xa
    80001998:	bd47b783          	ld	a5,-1068(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000199c:	0007b783          	ld	a5,0(a5)
    800019a0:	00100713          	li	a4,1
    800019a4:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	a70080e7          	jalr	-1424(ra) # 80001418 <_Z15thread_dispatchv>
    800019b0:	01813083          	ld	ra,24(sp)
    800019b4:	01013403          	ld	s0,16(sp)
    800019b8:	00813483          	ld	s1,8(sp)
    800019bc:	02010113          	addi	sp,sp,32
    800019c0:	00008067          	ret

00000000800019c4 <_ZN3ABI9Semaphore15createSemaphoreEj>:

#include "../h/Semaphore.hpp"
#include "../h/ccb.hpp"

namespace ABI {
    Semaphore *Semaphore::createSemaphore(unsigned int init) {
    800019c4:	fe010113          	addi	sp,sp,-32
    800019c8:	00113c23          	sd	ra,24(sp)
    800019cc:	00813823          	sd	s0,16(sp)
    800019d0:	00913423          	sd	s1,8(sp)
    800019d4:	02010413          	addi	s0,sp,32
    800019d8:	00050493          	mv	s1,a0
    800019dc:	0000a797          	auipc	a5,0xa
    800019e0:	bf47c783          	lbu	a5,-1036(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019e4:	04079263          	bnez	a5,80001a28 <_ZN3ABI9Semaphore15createSemaphoreEj+0x64>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800019e8:	0000a797          	auipc	a5,0xa
    800019ec:	b707b783          	ld	a5,-1168(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019f0:	0007b783          	ld	a5,0(a5)
    800019f4:	0000a717          	auipc	a4,0xa
    800019f8:	be470713          	addi	a4,a4,-1052 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019fc:	00f73023          	sd	a5,0(a4)
    80001a00:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001a04:	0000a717          	auipc	a4,0xa
    80001a08:	b6c73703          	ld	a4,-1172(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a0c:	00073703          	ld	a4,0(a4)
    80001a10:	40f70733          	sub	a4,a4,a5
    80001a14:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001a18:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001a1c:	00100793          	li	a5,1
    80001a20:	0000a717          	auipc	a4,0xa
    80001a24:	baf70823          	sb	a5,-1104(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        int close();

        unsigned int getValue() const { return val; }

        void *operator new(size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
    80001a28:	02000593          	li	a1,32
    80001a2c:	0000a517          	auipc	a0,0xa
    80001a30:	bac50513          	addi	a0,a0,-1108 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	0b8080e7          	jalr	184(ra) # 80002aec <_ZN15MemoryAllocator9mem_allocEm>
        void operator delete[](void *ptr) {
            MemoryAllocator::Instance()->mem_free(ptr);
        }

    protected:
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    80001a3c:	0000a717          	auipc	a4,0xa
    80001a40:	90470713          	addi	a4,a4,-1788 # 8000b340 <_ZTVN3ABI9SemaphoreE+0x10>
    80001a44:	00e53023          	sd	a4,0(a0)
    80001a48:	00952423          	sw	s1,8(a0)
    80001a4c:	00050623          	sb	zero,12(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001a50:	00053823          	sd	zero,16(a0)
    80001a54:	00053c23          	sd	zero,24(a0)
        return new Semaphore(init);
    }
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	02010113          	addi	sp,sp,32
    80001a68:	00008067          	ret

0000000080001a6c <_ZN3ABI9Semaphore4waitEv>:

    int Semaphore::wait() {
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00813423          	sd	s0,8(sp)
    80001a74:	01010413          	addi	s0,sp,16
        if (closed) return -1;
    80001a78:	00c54783          	lbu	a5,12(a0)
    80001a7c:	02079063          	bnez	a5,80001a9c <_ZN3ABI9Semaphore4waitEv+0x30>

        if (--val < 0) {
    80001a80:	00852783          	lw	a5,8(a0)
    80001a84:	fff7879b          	addiw	a5,a5,-1
    80001a88:	00f52423          	sw	a5,8(a0)
            blocked.addLast(CCB::running);
            CCB::running = Scheduler::get();
            CCB::dispatch();
        }
        return 0;
    80001a8c:	00000513          	li	a0,0
    }
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret
        if (closed) return -1;
    80001a9c:	fff00513          	li	a0,-1
    80001aa0:	ff1ff06f          	j	80001a90 <_ZN3ABI9Semaphore4waitEv+0x24>

0000000080001aa4 <_ZN3ABI9Semaphore6signalEv>:

    int Semaphore::signal() {
        if (closed) return -1;
    80001aa4:	00c54703          	lbu	a4,12(a0)
    80001aa8:	08071263          	bnez	a4,80001b2c <_ZN3ABI9Semaphore6signalEv+0x88>
    80001aac:	00050793          	mv	a5,a0

        if (++val <= 0) {
    80001ab0:	00852703          	lw	a4,8(a0)
    80001ab4:	0017071b          	addiw	a4,a4,1
    80001ab8:	0007069b          	sext.w	a3,a4
    80001abc:	00e52423          	sw	a4,8(a0)
    80001ac0:	06069a63          	bnez	a3,80001b34 <_ZN3ABI9Semaphore6signalEv+0x90>
    int Semaphore::signal() {
    80001ac4:	fe010113          	addi	sp,sp,-32
    80001ac8:	00113c23          	sd	ra,24(sp)
    80001acc:	00813823          	sd	s0,16(sp)
    80001ad0:	00913423          	sd	s1,8(sp)
    80001ad4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001ad8:	01053503          	ld	a0,16(a0)
    80001adc:	04050463          	beqz	a0,80001b24 <_ZN3ABI9Semaphore6signalEv+0x80>

        Elem *elem = head;
        head = head->next;
    80001ae0:	00853703          	ld	a4,8(a0)
    80001ae4:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80001ae8:	02070a63          	beqz	a4,80001b1c <_ZN3ABI9Semaphore6signalEv+0x78>

        T *ret = elem->data;
    80001aec:	00053483          	ld	s1,0(a0)
        delete elem;
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	338080e7          	jalr	824(ra) # 80001e28 <_ZdlPv>
            CCB *thread = blocked.removeFirst();
            Scheduler::put(thread);
    80001af8:	00048513          	mv	a0,s1
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	eb4080e7          	jalr	-332(ra) # 800029b0 <_ZN9Scheduler3putEP3CCB>
        }
        return 0;
    80001b04:	00000513          	li	a0,0
    }
    80001b08:	01813083          	ld	ra,24(sp)
    80001b0c:	01013403          	ld	s0,16(sp)
    80001b10:	00813483          	ld	s1,8(sp)
    80001b14:	02010113          	addi	sp,sp,32
    80001b18:	00008067          	ret
        if (!head) { tail = 0; }
    80001b1c:	0007bc23          	sd	zero,24(a5)
    80001b20:	fcdff06f          	j	80001aec <_ZN3ABI9Semaphore6signalEv+0x48>
        if (!head) { return 0; }
    80001b24:	00050493          	mv	s1,a0
    80001b28:	fd1ff06f          	j	80001af8 <_ZN3ABI9Semaphore6signalEv+0x54>
        if (closed) return -1;
    80001b2c:	fff00513          	li	a0,-1
    80001b30:	00008067          	ret
        return 0;
    80001b34:	00000513          	li	a0,0
    }
    80001b38:	00008067          	ret

0000000080001b3c <_ZN3ABI9Semaphore5blockEv>:
        while (!blocked.empty()) unblock();

        return 0;
    }

    void Semaphore::block() {
    80001b3c:	fe010113          	addi	sp,sp,-32
    80001b40:	00113c23          	sd	ra,24(sp)
    80001b44:	00813823          	sd	s0,16(sp)
    80001b48:	00913423          	sd	s1,8(sp)
    80001b4c:	01213023          	sd	s2,0(sp)
    80001b50:	02010413          	addi	s0,sp,32
    80001b54:	00050493          	mv	s1,a0
        blocked.addLast(CCB::running);
    80001b58:	0000a797          	auipc	a5,0xa
    80001b5c:	a107b783          	ld	a5,-1520(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b60:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    80001b64:	01000513          	li	a0,16
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	1c0080e7          	jalr	448(ra) # 80001d28 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001b70:	01253023          	sd	s2,0(a0)
    80001b74:	00053423          	sd	zero,8(a0)
        if (tail)
    80001b78:	0184b783          	ld	a5,24(s1)
    80001b7c:	04078063          	beqz	a5,80001bbc <_ZN3ABI9Semaphore5blockEv+0x80>
            tail->next = elem;
    80001b80:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001b84:	00a4bc23          	sd	a0,24(s1)
        CCB::running = Scheduler::get();
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	dc0080e7          	jalr	-576(ra) # 80002948 <_ZN9Scheduler3getEv>
    80001b90:	0000a797          	auipc	a5,0xa
    80001b94:	9d87b783          	ld	a5,-1576(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b98:	00a7b023          	sd	a0,0(a5)
        CCB::dispatch();
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	514080e7          	jalr	1300(ra) # 800020b0 <_ZN3CCB8dispatchEv>
    }
    80001ba4:	01813083          	ld	ra,24(sp)
    80001ba8:	01013403          	ld	s0,16(sp)
    80001bac:	00813483          	ld	s1,8(sp)
    80001bb0:	00013903          	ld	s2,0(sp)
    80001bb4:	02010113          	addi	sp,sp,32
    80001bb8:	00008067          	ret
            head = tail = elem;
    80001bbc:	00a4bc23          	sd	a0,24(s1)
    80001bc0:	00a4b823          	sd	a0,16(s1)
    80001bc4:	fc5ff06f          	j	80001b88 <_ZN3ABI9Semaphore5blockEv+0x4c>

0000000080001bc8 <_ZN3ABI9Semaphore7unblockEv>:

    void Semaphore::unblock() {
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00113c23          	sd	ra,24(sp)
    80001bd0:	00813823          	sd	s0,16(sp)
    80001bd4:	00913423          	sd	s1,8(sp)
    80001bd8:	02010413          	addi	s0,sp,32
    80001bdc:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001be0:	01053503          	ld	a0,16(a0)
    80001be4:	04050263          	beqz	a0,80001c28 <_ZN3ABI9Semaphore7unblockEv+0x60>
        head = head->next;
    80001be8:	00853703          	ld	a4,8(a0)
    80001bec:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80001bf0:	02070863          	beqz	a4,80001c20 <_ZN3ABI9Semaphore7unblockEv+0x58>
        T *ret = elem->data;
    80001bf4:	00053483          	ld	s1,0(a0)
        delete elem;
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	230080e7          	jalr	560(ra) # 80001e28 <_ZdlPv>
        CCB *thread = blocked.removeFirst();
        Scheduler::put(thread);
    80001c00:	00048513          	mv	a0,s1
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	dac080e7          	jalr	-596(ra) # 800029b0 <_ZN9Scheduler3putEP3CCB>
    }
    80001c0c:	01813083          	ld	ra,24(sp)
    80001c10:	01013403          	ld	s0,16(sp)
    80001c14:	00813483          	ld	s1,8(sp)
    80001c18:	02010113          	addi	sp,sp,32
    80001c1c:	00008067          	ret
        if (!head) { tail = 0; }
    80001c20:	0007bc23          	sd	zero,24(a5)
    80001c24:	fd1ff06f          	j	80001bf4 <_ZN3ABI9Semaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001c28:	00050493          	mv	s1,a0
    80001c2c:	fd5ff06f          	j	80001c00 <_ZN3ABI9Semaphore7unblockEv+0x38>

0000000080001c30 <_ZN3ABI9Semaphore5closeEv>:
        if (closed) return -1;
    80001c30:	00c54783          	lbu	a5,12(a0)
    80001c34:	04079a63          	bnez	a5,80001c88 <_ZN3ABI9Semaphore5closeEv+0x58>
    int Semaphore::close() {
    80001c38:	fe010113          	addi	sp,sp,-32
    80001c3c:	00113c23          	sd	ra,24(sp)
    80001c40:	00813823          	sd	s0,16(sp)
    80001c44:	00913423          	sd	s1,8(sp)
    80001c48:	02010413          	addi	s0,sp,32
    80001c4c:	00050493          	mv	s1,a0
        closed = true;
    80001c50:	00100793          	li	a5,1
    80001c54:	00f50623          	sb	a5,12(a0)
    80001c58:	0100006f          	j	80001c68 <_ZN3ABI9Semaphore5closeEv+0x38>
        while (!blocked.empty()) unblock();
    80001c5c:	00048513          	mv	a0,s1
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	f68080e7          	jalr	-152(ra) # 80001bc8 <_ZN3ABI9Semaphore7unblockEv>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    bool empty() { return head == nullptr; }
    80001c68:	0104b783          	ld	a5,16(s1)
    80001c6c:	fe0798e3          	bnez	a5,80001c5c <_ZN3ABI9Semaphore5closeEv+0x2c>
        return 0;
    80001c70:	00000513          	li	a0,0
    }
    80001c74:	01813083          	ld	ra,24(sp)
    80001c78:	01013403          	ld	s0,16(sp)
    80001c7c:	00813483          	ld	s1,8(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret
        if (closed) return -1;
    80001c88:	fff00513          	li	a0,-1
    }
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN3ABI9SemaphoreD1Ev>:
        virtual ~Semaphore() = default;
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00813423          	sd	s0,8(sp)
    80001c98:	01010413          	addi	s0,sp,16
    80001c9c:	00813403          	ld	s0,8(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN3ABI9SemaphoreD0Ev>:
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00113423          	sd	ra,8(sp)
    80001cb0:	00813023          	sd	s0,0(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    80001cb8:	00050593          	mv	a1,a0
    80001cbc:	0000a797          	auipc	a5,0xa
    80001cc0:	9147c783          	lbu	a5,-1772(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cc4:	04079263          	bnez	a5,80001d08 <_ZN3ABI9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001cc8:	0000a797          	auipc	a5,0xa
    80001ccc:	8907b783          	ld	a5,-1904(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001cd0:	0007b783          	ld	a5,0(a5)
    80001cd4:	0000a717          	auipc	a4,0xa
    80001cd8:	90470713          	addi	a4,a4,-1788 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cdc:	00f73023          	sd	a5,0(a4)
    80001ce0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001ce4:	0000a717          	auipc	a4,0xa
    80001ce8:	88c73703          	ld	a4,-1908(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cec:	00073703          	ld	a4,0(a4)
    80001cf0:	40f70733          	sub	a4,a4,a5
    80001cf4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001cf8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001cfc:	00100793          	li	a5,1
    80001d00:	0000a717          	auipc	a4,0xa
    80001d04:	8cf70823          	sb	a5,-1840(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            MemoryAllocator::Instance()->mem_free(ptr);
    80001d08:	0000a517          	auipc	a0,0xa
    80001d0c:	8d050513          	addi	a0,a0,-1840 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	f2c080e7          	jalr	-212(ra) # 80002c3c <_ZN15MemoryAllocator8mem_freeEPv>
        virtual ~Semaphore() = default;
    80001d18:	00813083          	ld	ra,8(sp)
    80001d1c:	00013403          	ld	s0,0(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00113423          	sd	ra,8(sp)
    80001d30:	00813023          	sd	s0,0(sp)
    80001d34:	01010413          	addi	s0,sp,16
    80001d38:	00050593          	mv	a1,a0
    80001d3c:	0000a797          	auipc	a5,0xa
    80001d40:	8947c783          	lbu	a5,-1900(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d44:	04079263          	bnez	a5,80001d88 <_Znwm+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001d48:	0000a797          	auipc	a5,0xa
    80001d4c:	8107b783          	ld	a5,-2032(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d50:	0007b783          	ld	a5,0(a5)
    80001d54:	0000a717          	auipc	a4,0xa
    80001d58:	88470713          	addi	a4,a4,-1916 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d5c:	00f73023          	sd	a5,0(a4)
    80001d60:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001d64:	0000a717          	auipc	a4,0xa
    80001d68:	80c73703          	ld	a4,-2036(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d6c:	00073703          	ld	a4,0(a4)
    80001d70:	40f70733          	sub	a4,a4,a5
    80001d74:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001d78:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001d7c:	00100793          	li	a5,1
    80001d80:	0000a717          	auipc	a4,0xa
    80001d84:	84f70823          	sb	a5,-1968(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001d88:	0000a517          	auipc	a0,0xa
    80001d8c:	85050513          	addi	a0,a0,-1968 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	d5c080e7          	jalr	-676(ra) # 80002aec <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d98:	00813083          	ld	ra,8(sp)
    80001d9c:	00013403          	ld	s0,0(sp)
    80001da0:	01010113          	addi	sp,sp,16
    80001da4:	00008067          	ret

0000000080001da8 <_Znam>:

void *operator new[](size_t n)
{
    80001da8:	ff010113          	addi	sp,sp,-16
    80001dac:	00113423          	sd	ra,8(sp)
    80001db0:	00813023          	sd	s0,0(sp)
    80001db4:	01010413          	addi	s0,sp,16
    80001db8:	00050593          	mv	a1,a0
    80001dbc:	0000a797          	auipc	a5,0xa
    80001dc0:	8147c783          	lbu	a5,-2028(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001dc4:	04079263          	bnez	a5,80001e08 <_Znam+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001dc8:	00009797          	auipc	a5,0x9
    80001dcc:	7907b783          	ld	a5,1936(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001dd0:	0007b783          	ld	a5,0(a5)
    80001dd4:	0000a717          	auipc	a4,0xa
    80001dd8:	80470713          	addi	a4,a4,-2044 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ddc:	00f73023          	sd	a5,0(a4)
    80001de0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001de4:	00009717          	auipc	a4,0x9
    80001de8:	78c73703          	ld	a4,1932(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001dec:	00073703          	ld	a4,0(a4)
    80001df0:	40f70733          	sub	a4,a4,a5
    80001df4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001df8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001dfc:	00100793          	li	a5,1
    80001e00:	00009717          	auipc	a4,0x9
    80001e04:	7cf70823          	sb	a5,2000(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001e08:	00009517          	auipc	a0,0x9
    80001e0c:	7d050513          	addi	a0,a0,2000 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	cdc080e7          	jalr	-804(ra) # 80002aec <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e18:	00813083          	ld	ra,8(sp)
    80001e1c:	00013403          	ld	s0,0(sp)
    80001e20:	01010113          	addi	sp,sp,16
    80001e24:	00008067          	ret

0000000080001e28 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00113423          	sd	ra,8(sp)
    80001e30:	00813023          	sd	s0,0(sp)
    80001e34:	01010413          	addi	s0,sp,16
    80001e38:	00050593          	mv	a1,a0
    80001e3c:	00009797          	auipc	a5,0x9
    80001e40:	7947c783          	lbu	a5,1940(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e44:	04079263          	bnez	a5,80001e88 <_ZdlPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001e48:	00009797          	auipc	a5,0x9
    80001e4c:	7107b783          	ld	a5,1808(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e50:	0007b783          	ld	a5,0(a5)
    80001e54:	00009717          	auipc	a4,0x9
    80001e58:	78470713          	addi	a4,a4,1924 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e5c:	00f73023          	sd	a5,0(a4)
    80001e60:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001e64:	00009717          	auipc	a4,0x9
    80001e68:	70c73703          	ld	a4,1804(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e6c:	00073703          	ld	a4,0(a4)
    80001e70:	40f70733          	sub	a4,a4,a5
    80001e74:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001e78:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001e7c:	00100793          	li	a5,1
    80001e80:	00009717          	auipc	a4,0x9
    80001e84:	74f70823          	sb	a5,1872(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80001e88:	00009517          	auipc	a0,0x9
    80001e8c:	75050513          	addi	a0,a0,1872 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	dac080e7          	jalr	-596(ra) # 80002c3c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e98:	00813083          	ld	ra,8(sp)
    80001e9c:	00013403          	ld	s0,0(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    80001eb8:	00050593          	mv	a1,a0
    80001ebc:	00009797          	auipc	a5,0x9
    80001ec0:	7147c783          	lbu	a5,1812(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ec4:	04079263          	bnez	a5,80001f08 <_ZdaPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001ec8:	00009797          	auipc	a5,0x9
    80001ecc:	6907b783          	ld	a5,1680(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001ed0:	0007b783          	ld	a5,0(a5)
    80001ed4:	00009717          	auipc	a4,0x9
    80001ed8:	70470713          	addi	a4,a4,1796 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001edc:	00f73023          	sd	a5,0(a4)
    80001ee0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001ee4:	00009717          	auipc	a4,0x9
    80001ee8:	68c73703          	ld	a4,1676(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001eec:	00073703          	ld	a4,0(a4)
    80001ef0:	40f70733          	sub	a4,a4,a5
    80001ef4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ef8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001efc:	00100793          	li	a5,1
    80001f00:	00009717          	auipc	a4,0x9
    80001f04:	6cf70823          	sb	a5,1744(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80001f08:	00009517          	auipc	a0,0x9
    80001f0c:	6d050513          	addi	a0,a0,1744 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	d2c080e7          	jalr	-724(ra) # 80002c3c <_ZN15MemoryAllocator8mem_freeEPv>
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_ZN3CCB15createCoroutineEPFvPvES0_Pm>:
#include "../h/riscv.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body, void* arg, uint64* stack)
{
    80001f28:	fd010113          	addi	sp,sp,-48
    80001f2c:	02113423          	sd	ra,40(sp)
    80001f30:	02813023          	sd	s0,32(sp)
    80001f34:	00913c23          	sd	s1,24(sp)
    80001f38:	01213823          	sd	s2,16(sp)
    80001f3c:	01313423          	sd	s3,8(sp)
    80001f40:	01413023          	sd	s4,0(sp)
    80001f44:	03010413          	addi	s0,sp,48
    80001f48:	00050993          	mv	s3,a0
    80001f4c:	00058a13          	mv	s4,a1
    80001f50:	00060913          	mv	s2,a2
    80001f54:	00009797          	auipc	a5,0x9
    80001f58:	67c7c783          	lbu	a5,1660(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f5c:	04079263          	bnez	a5,80001fa0 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x78>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001f60:	00009797          	auipc	a5,0x9
    80001f64:	5f87b783          	ld	a5,1528(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001f68:	0007b783          	ld	a5,0(a5)
    80001f6c:	00009717          	auipc	a4,0x9
    80001f70:	66c70713          	addi	a4,a4,1644 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f74:	00f73023          	sd	a5,0(a4)
    80001f78:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001f7c:	00009717          	auipc	a4,0x9
    80001f80:	5f473703          	ld	a4,1524(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f84:	00073703          	ld	a4,0(a4)
    80001f88:	40f70733          	sub	a4,a4,a5
    80001f8c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001f90:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001f94:	00100793          	li	a5,1
    80001f98:	00009717          	auipc	a4,0x9
    80001f9c:	62f70c23          	sb	a5,1592(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    }

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001fa0:	03000593          	li	a1,48
    80001fa4:	00009517          	auipc	a0,0x9
    80001fa8:	63450513          	addi	a0,a0,1588 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	b40080e7          	jalr	-1216(ra) # 80002aec <_ZN15MemoryAllocator9mem_allocEm>
    80001fb4:	00050493          	mv	s1,a0
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg)
    80001fb8:	01353023          	sd	s3,0(a0)
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
    80001fbc:	04090263          	beqz	s2,80002000 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xd8>
    80001fc0:	00090793          	mv	a5,s2
            arg(arg)
    80001fc4:	00f4b423          	sd	a5,8(s1)
    80001fc8:	00000797          	auipc	a5,0x0
    80001fcc:	18878793          	addi	a5,a5,392 # 80002150 <_ZN3CCB13threadWrapperEv>
    80001fd0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001fd4:	04090063          	beqz	s2,80002014 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xec>
    80001fd8:	00002637          	lui	a2,0x2
    80001fdc:	00c90633          	add	a2,s2,a2
            arg(arg)
    80001fe0:	00c4bc23          	sd	a2,24(s1)
    80001fe4:	02048023          	sb	zero,32(s1)
    80001fe8:	0344b423          	sd	s4,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001fec:	0a098063          	beqz	s3,8000208c <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x164>
    80001ff0:	00048513          	mv	a0,s1
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	9bc080e7          	jalr	-1604(ra) # 800029b0 <_ZN9Scheduler3putEP3CCB>
    80001ffc:	0900006f          	j	8000208c <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x164>
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
    80002000:	00002537          	lui	a0,0x2
    80002004:	00000097          	auipc	ra,0x0
    80002008:	da4080e7          	jalr	-604(ra) # 80001da8 <_Znam>
    8000200c:	00050793          	mv	a5,a0
    80002010:	fb5ff06f          	j	80001fc4 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x9c>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002014:	00000613          	li	a2,0
    80002018:	fc9ff06f          	j	80001fe0 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xb8>
    8000201c:	00050913          	mv	s2,a0
    80002020:	00009797          	auipc	a5,0x9
    80002024:	5b07c783          	lbu	a5,1456(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002028:	04079263          	bnez	a5,8000206c <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x144>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000202c:	00009797          	auipc	a5,0x9
    80002030:	52c7b783          	ld	a5,1324(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002034:	0007b783          	ld	a5,0(a5)
    80002038:	00009717          	auipc	a4,0x9
    8000203c:	5a070713          	addi	a4,a4,1440 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002040:	00f73023          	sd	a5,0(a4)
    80002044:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002048:	00009717          	auipc	a4,0x9
    8000204c:	52873703          	ld	a4,1320(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002050:	00073703          	ld	a4,0(a4)
    80002054:	40f70733          	sub	a4,a4,a5
    80002058:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000205c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002060:	00100793          	li	a5,1
    80002064:	00009717          	auipc	a4,0x9
    80002068:	56f70623          	sb	a5,1388(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    8000206c:	00048593          	mv	a1,s1
    80002070:	00009517          	auipc	a0,0x9
    80002074:	56850513          	addi	a0,a0,1384 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	bc4080e7          	jalr	-1084(ra) # 80002c3c <_ZN15MemoryAllocator8mem_freeEPv>
    80002080:	00090513          	mv	a0,s2
    80002084:	0000a097          	auipc	ra,0xa
    80002088:	6a4080e7          	jalr	1700(ra) # 8000c728 <_Unwind_Resume>
    return new CCB(body, arg, stack);
}
    8000208c:	00048513          	mv	a0,s1
    80002090:	02813083          	ld	ra,40(sp)
    80002094:	02013403          	ld	s0,32(sp)
    80002098:	01813483          	ld	s1,24(sp)
    8000209c:	01013903          	ld	s2,16(sp)
    800020a0:	00813983          	ld	s3,8(sp)
    800020a4:	00013a03          	ld	s4,0(sp)
    800020a8:	03010113          	addi	sp,sp,48
    800020ac:	00008067          	ret

00000000800020b0 <_ZN3CCB8dispatchEv>:

    Riscv::popRegisters();
}

void CCB::dispatch()
{
    800020b0:	fe010113          	addi	sp,sp,-32
    800020b4:	00113c23          	sd	ra,24(sp)
    800020b8:	00813823          	sd	s0,16(sp)
    800020bc:	00913423          	sd	s1,8(sp)
    800020c0:	02010413          	addi	s0,sp,32
    CCB *old = running;
    800020c4:	00009497          	auipc	s1,0x9
    800020c8:	52c4b483          	ld	s1,1324(s1) # 8000b5f0 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    800020cc:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800020d0:	02078c63          	beqz	a5,80002108 <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	874080e7          	jalr	-1932(ra) # 80002948 <_ZN9Scheduler3getEv>
    800020dc:	00009797          	auipc	a5,0x9
    800020e0:	50a7ba23          	sd	a0,1300(a5) # 8000b5f0 <_ZN3CCB7runningE>

    CCB::contextSwitch(&old->context, &running->context);
    800020e4:	01050593          	addi	a1,a0,16
    800020e8:	01048513          	addi	a0,s1,16
    800020ec:	fffff097          	auipc	ra,0xfffff
    800020f0:	11c080e7          	jalr	284(ra) # 80001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    800020f4:	01813083          	ld	ra,24(sp)
    800020f8:	01013403          	ld	s0,16(sp)
    800020fc:	00813483          	ld	s1,8(sp)
    80002100:	02010113          	addi	sp,sp,32
    80002104:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80002108:	00048513          	mv	a0,s1
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	8a4080e7          	jalr	-1884(ra) # 800029b0 <_ZN9Scheduler3putEP3CCB>
    80002114:	fc1ff06f          	j	800020d4 <_ZN3CCB8dispatchEv+0x24>

0000000080002118 <_ZN3CCB5yieldEv>:
{
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00113423          	sd	ra,8(sp)
    80002120:	00813023          	sd	s0,0(sp)
    80002124:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002128:	fffff097          	auipc	ra,0xfffff
    8000212c:	fe8080e7          	jalr	-24(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    80002130:	00000097          	auipc	ra,0x0
    80002134:	f80080e7          	jalr	-128(ra) # 800020b0 <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	054080e7          	jalr	84(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    80002140:	00813083          	ld	ra,8(sp)
    80002144:	00013403          	ld	s0,0(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_ZN3CCB13threadWrapperEv>:
{
    80002150:	fe010113          	addi	sp,sp,-32
    80002154:	00113c23          	sd	ra,24(sp)
    80002158:	00813823          	sd	s0,16(sp)
    8000215c:	00913423          	sd	s1,8(sp)
    80002160:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002164:	00000097          	auipc	ra,0x0
    80002168:	3c4080e7          	jalr	964(ra) # 80002528 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    8000216c:	00009497          	auipc	s1,0x9
    80002170:	48448493          	addi	s1,s1,1156 # 8000b5f0 <_ZN3CCB7runningE>
    80002174:	0004b783          	ld	a5,0(s1)
    80002178:	0007b703          	ld	a4,0(a5)
    8000217c:	0287b503          	ld	a0,40(a5)
    80002180:	000700e7          	jalr	a4
    running->setFinished(true);
    80002184:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80002188:	00100713          	li	a4,1
    8000218c:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80002190:	00000097          	auipc	ra,0x0
    80002194:	f88080e7          	jalr	-120(ra) # 80002118 <_ZN3CCB5yieldEv>
}
    80002198:	01813083          	ld	ra,24(sp)
    8000219c:	01013403          	ld	s0,16(sp)
    800021a0:	00813483          	ld	s1,8(sp)
    800021a4:	02010113          	addi	sp,sp,32
    800021a8:	00008067          	ret

00000000800021ac <_ZN6ThreadD1Ev>:
}

Thread::Thread(void (*body)(void *), void *arg) :
    myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    800021ac:	fe010113          	addi	sp,sp,-32
    800021b0:	00113c23          	sd	ra,24(sp)
    800021b4:	00813823          	sd	s0,16(sp)
    800021b8:	00913423          	sd	s1,8(sp)
    800021bc:	02010413          	addi	s0,sp,32
    800021c0:	00009797          	auipc	a5,0x9
    800021c4:	1a878793          	addi	a5,a5,424 # 8000b368 <_ZTV6Thread+0x10>
    800021c8:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    800021cc:	00853483          	ld	s1,8(a0)
    800021d0:	06048a63          	beqz	s1,80002244 <_ZN6ThreadD1Ev+0x98>
    ~CCB() { delete[] stack; }
    800021d4:	0084b503          	ld	a0,8(s1)
    800021d8:	00050663          	beqz	a0,800021e4 <_ZN6ThreadD1Ev+0x38>
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	ccc080e7          	jalr	-820(ra) # 80001ea8 <_ZdaPv>
    800021e4:	00009797          	auipc	a5,0x9
    800021e8:	3ec7c783          	lbu	a5,1004(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021ec:	04079263          	bnez	a5,80002230 <_ZN6ThreadD1Ev+0x84>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800021f0:	00009797          	auipc	a5,0x9
    800021f4:	3687b783          	ld	a5,872(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    800021f8:	0007b783          	ld	a5,0(a5)
    800021fc:	00009717          	auipc	a4,0x9
    80002200:	3dc70713          	addi	a4,a4,988 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002204:	00f73023          	sd	a5,0(a4)
    80002208:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000220c:	00009717          	auipc	a4,0x9
    80002210:	36473703          	ld	a4,868(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002214:	00073703          	ld	a4,0(a4)
    80002218:	40f70733          	sub	a4,a4,a5
    8000221c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002220:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002224:	00100793          	li	a5,1
    80002228:	00009717          	auipc	a4,0x9
    8000222c:	3af70423          	sb	a5,936(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80002230:	00048593          	mv	a1,s1
    80002234:	00009517          	auipc	a0,0x9
    80002238:	3a450513          	addi	a0,a0,932 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	a00080e7          	jalr	-1536(ra) # 80002c3c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002244:	01813083          	ld	ra,24(sp)
    80002248:	01013403          	ld	s0,16(sp)
    8000224c:	00813483          	ld	s1,8(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret

0000000080002258 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	00813823          	sd	s0,16(sp)
    80002264:	00913423          	sd	s1,8(sp)
    80002268:	02010413          	addi	s0,sp,32
    8000226c:	00050493          	mv	s1,a0
}
    80002270:	00000097          	auipc	ra,0x0
    80002274:	f3c080e7          	jalr	-196(ra) # 800021ac <_ZN6ThreadD1Ev>
    80002278:	00048513          	mv	a0,s1
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	bac080e7          	jalr	-1108(ra) # 80001e28 <_ZdlPv>
    80002284:	01813083          	ld	ra,24(sp)
    80002288:	01013403          	ld	s0,16(sp)
    8000228c:	00813483          	ld	s1,8(sp)
    80002290:	02010113          	addi	sp,sp,32
    80002294:	00008067          	ret

0000000080002298 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00113423          	sd	ra,8(sp)
    800022a0:	00813023          	sd	s0,0(sp)
    800022a4:	01010413          	addi	s0,sp,16
    800022a8:	00009797          	auipc	a5,0x9
    800022ac:	0e878793          	addi	a5,a5,232 # 8000b390 <_ZTV9Semaphore+0x10>
    800022b0:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800022b4:	00853503          	ld	a0,8(a0)
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	1b8080e7          	jalr	440(ra) # 80001470 <_Z9sem_closePN3ABI9SemaphoreE>
}
    800022c0:	00813083          	ld	ra,8(sp)
    800022c4:	00013403          	ld	s0,0(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800022d0:	fe010113          	addi	sp,sp,-32
    800022d4:	00113c23          	sd	ra,24(sp)
    800022d8:	00813823          	sd	s0,16(sp)
    800022dc:	00913423          	sd	s1,8(sp)
    800022e0:	02010413          	addi	s0,sp,32
    800022e4:	00050493          	mv	s1,a0
}
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	fb0080e7          	jalr	-80(ra) # 80002298 <_ZN9SemaphoreD1Ev>
    800022f0:	00048513          	mv	a0,s1
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	b34080e7          	jalr	-1228(ra) # 80001e28 <_ZdlPv>
    800022fc:	01813083          	ld	ra,24(sp)
    80002300:	01013403          	ld	s0,16(sp)
    80002304:	00813483          	ld	s1,8(sp)
    80002308:	02010113          	addi	sp,sp,32
    8000230c:	00008067          	ret

0000000080002310 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002320:	fffff097          	auipc	ra,0xfffff
    80002324:	0f8080e7          	jalr	248(ra) # 80001418 <_Z15thread_dispatchv>
}
    80002328:	00813083          	ld	ra,8(sp)
    8000232c:	00013403          	ld	s0,0(sp)
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret

0000000080002338 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :
    80002338:	ff010113          	addi	sp,sp,-16
    8000233c:	00813423          	sd	s0,8(sp)
    80002340:	01010413          	addi	s0,sp,16
    myHandle(nullptr), body(body), arg(arg) {}
    80002344:	00009797          	auipc	a5,0x9
    80002348:	02478793          	addi	a5,a5,36 # 8000b368 <_ZTV6Thread+0x10>
    8000234c:	00f53023          	sd	a5,0(a0)
    80002350:	00053423          	sd	zero,8(a0)
    80002354:	00b53823          	sd	a1,16(a0)
    80002358:	00c53c23          	sd	a2,24(a0)
    8000235c:	00813403          	ld	s0,8(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_ZN6ThreadC1Ev>:
Thread::Thread() :
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00813423          	sd	s0,8(sp)
    80002370:	01010413          	addi	s0,sp,16
        myHandle(nullptr), body(runWrapper), arg(this) {}
    80002374:	00009797          	auipc	a5,0x9
    80002378:	ff478793          	addi	a5,a5,-12 # 8000b368 <_ZTV6Thread+0x10>
    8000237c:	00f53023          	sd	a5,0(a0)
    80002380:	00053423          	sd	zero,8(a0)
    80002384:	00000797          	auipc	a5,0x0
    80002388:	17078793          	addi	a5,a5,368 # 800024f4 <_ZN6Thread10runWrapperEPv>
    8000238c:	00f53823          	sd	a5,16(a0)
    80002390:	00a53c23          	sd	a0,24(a0)
    80002394:	00813403          	ld	s0,8(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <_ZN6Thread5startEv>:
int Thread::start() {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00113423          	sd	ra,8(sp)
    800023a8:	00813023          	sd	s0,0(sp)
    800023ac:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    800023b0:	01853603          	ld	a2,24(a0)
    800023b4:	01053583          	ld	a1,16(a0)
    800023b8:	00850513          	addi	a0,a0,8
    800023bc:	fffff097          	auipc	ra,0xfffff
    800023c0:	f34080e7          	jalr	-204(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
}
    800023c4:	00813083          	ld	ra,8(sp)
    800023c8:	00013403          	ld	s0,0(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00113423          	sd	ra,8(sp)
    800023dc:	00813023          	sd	s0,0(sp)
    800023e0:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800023e4:	fffff097          	auipc	ra,0xfffff
    800023e8:	110080e7          	jalr	272(ra) # 800014f4 <_Z10time_sleepm>
}
    800023ec:	00813083          	ld	ra,8(sp)
    800023f0:	00013403          	ld	s0,0(sp)
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00008067          	ret

00000000800023fc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00113423          	sd	ra,8(sp)
    80002404:	00813023          	sd	s0,0(sp)
    80002408:	01010413          	addi	s0,sp,16
    8000240c:	00009797          	auipc	a5,0x9
    80002410:	f8478793          	addi	a5,a5,-124 # 8000b390 <_ZTV9Semaphore+0x10>
    80002414:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002418:	00850513          	addi	a0,a0,8
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	01c080e7          	jalr	28(ra) # 80001438 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    80002424:	00813083          	ld	ra,8(sp)
    80002428:	00013403          	ld	s0,0(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00113423          	sd	ra,8(sp)
    8000243c:	00813023          	sd	s0,0(sp)
    80002440:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002444:	00853503          	ld	a0,8(a0)
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	054080e7          	jalr	84(ra) # 8000149c <_Z8sem_waitPN3ABI9SemaphoreE>
}
    80002450:	00813083          	ld	ra,8(sp)
    80002454:	00013403          	ld	s0,0(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret

0000000080002460 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00113423          	sd	ra,8(sp)
    80002468:	00813023          	sd	s0,0(sp)
    8000246c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002470:	00853503          	ld	a0,8(a0)
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	054080e7          	jalr	84(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    8000247c:	00813083          	ld	ra,8(sp)
    80002480:	00013403          	ld	s0,0(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	0ac080e7          	jalr	172(ra) # 80001548 <_Z4putcc>
}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN7Console4getcEv>:

char Console::getc() {
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00113423          	sd	ra,8(sp)
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	05c080e7          	jalr	92(ra) # 80001520 <_Z4getcv>
}
    800024cc:	00813083          	ld	ra,8(sp)
    800024d0:	00013403          	ld	s0,0(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {}
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN6Thread10runWrapperEPv>:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void runWrapper(void* thread) {
        if (thread) {
    800024f4:	02050863          	beqz	a0,80002524 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00113423          	sd	ra,8(sp)
    80002500:	00813023          	sd	s0,0(sp)
    80002504:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    80002508:	00053783          	ld	a5,0(a0)
    8000250c:	0107b783          	ld	a5,16(a5)
    80002510:	000780e7          	jalr	a5
        }
    }
    80002514:	00813083          	ld	ra,8(sp)
    80002518:	00013403          	ld	s0,0(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret
    80002524:	00008067          	ret

0000000080002528 <_ZN5Riscv10popSppSpieEv>:

#define CONSOLE_INTERRUPT 0x8000000000000009UL
#define SOFTWARE_INTERRUPT 0x8000000000000001UL

void Riscv::popSppSpie()
{
    80002528:	ff010113          	addi	sp,sp,-16
    8000252c:	00813423          	sd	s0,8(sp)
    80002530:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002534:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002538:	10200073          	sret
}
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_ZN5Riscv14handleSyscallsEv>:

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    80002548:	fb010113          	addi	sp,sp,-80
    8000254c:	04113423          	sd	ra,72(sp)
    80002550:	04813023          	sd	s0,64(sp)
    80002554:	02913c23          	sd	s1,56(sp)
    80002558:	05010413          	addi	s0,sp,80
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000255c:	142027f3          	csrr	a5,scause
    80002560:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002564:	fb843483          	ld	s1,-72(s0)
}

inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002568:	00050793          	mv	a5,a0
    8000256c:	faf43823          	sd	a5,-80(s0)
    return a0;
    80002570:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();
    uint64 codeOperation = Riscv::r_a0();

    if (scause == CONSOLE_INTERRUPT) {
    80002574:	fff00793          	li	a5,-1
    80002578:	03f79793          	slli	a5,a5,0x3f
    8000257c:	00978793          	addi	a5,a5,9
    80002580:	06f48463          	beq	s1,a5,800025e8 <_ZN5Riscv14handleSyscallsEv+0xa0>
        console_handler();
        return;
    }

    if (scause == SOFTWARE_INTERRUPT) {
    80002584:	fff00793          	li	a5,-1
    80002588:	03f79793          	slli	a5,a5,0x3f
    8000258c:	00178793          	addi	a5,a5,1
    80002590:	06f48263          	beq	s1,a5,800025f4 <_ZN5Riscv14handleSyscallsEv+0xac>
        mc_sip(SIP_SSIE);
        return;
    }

    if (scause != 8 && scause != 9) {
    80002594:	ff848793          	addi	a5,s1,-8
    80002598:	00100693          	li	a3,1
    8000259c:	06f6e263          	bltu	a3,a5,80002600 <_ZN5Riscv14handleSyscallsEv+0xb8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800025a0:	141027f3          	csrr	a5,sepc
    800025a4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800025a8:	fc843783          	ld	a5,-56(s0)
        printInt(scause);
        printString("\n");
        return;
    }

    uint64 volatile sepc = r_sepc() + 4;
    800025ac:	00478793          	addi	a5,a5,4
    800025b0:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025b4:	100027f3          	csrr	a5,sstatus
    800025b8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800025bc:	fc043783          	ld	a5,-64(s0)
    uint64 volatile sstatus = r_sstatus();
    800025c0:	fcf43823          	sd	a5,-48(s0)

    int returnValue;
    ABI::Semaphore *semHandlePtr;
    switch (codeOperation) {
    800025c4:	04200793          	li	a5,66
    800025c8:	0ce7ec63          	bltu	a5,a4,800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
    800025cc:	00271713          	slli	a4,a4,0x2
    800025d0:	00007697          	auipc	a3,0x7
    800025d4:	aa868693          	addi	a3,a3,-1368 # 80009078 <CONSOLE_STATUS+0x68>
    800025d8:	00d70733          	add	a4,a4,a3
    800025dc:	00072783          	lw	a5,0(a4)
    800025e0:	00d787b3          	add	a5,a5,a3
    800025e4:	00078067          	jr	a5
        console_handler();
    800025e8:	00006097          	auipc	ra,0x6
    800025ec:	fa8080e7          	jalr	-88(ra) # 80008590 <console_handler>
        return;
    800025f0:	0c00006f          	j	800026b0 <_ZN5Riscv14handleSyscallsEv+0x168>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800025f4:	00200793          	li	a5,2
    800025f8:	1447b073          	csrc	sip,a5
        return;
    800025fc:	0b40006f          	j	800026b0 <_ZN5Riscv14handleSyscallsEv+0x168>
        printString("Error code: ");
    80002600:	00007517          	auipc	a0,0x7
    80002604:	a6850513          	addi	a0,a0,-1432 # 80009068 <CONSOLE_STATUS+0x58>
    80002608:	00003097          	auipc	ra,0x3
    8000260c:	c08080e7          	jalr	-1016(ra) # 80005210 <_Z11printStringPKc>
        printInt(scause);
    80002610:	00000613          	li	a2,0
    80002614:	00a00593          	li	a1,10
    80002618:	0004851b          	sext.w	a0,s1
    8000261c:	00003097          	auipc	ra,0x3
    80002620:	da4080e7          	jalr	-604(ra) # 800053c0 <_Z8printIntiii>
        printString("\n");
    80002624:	00007517          	auipc	a0,0x7
    80002628:	ee450513          	addi	a0,a0,-284 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000262c:	00003097          	auipc	ra,0x3
    80002630:	be4080e7          	jalr	-1052(ra) # 80005210 <_Z11printStringPKc>
        return;
    80002634:	07c0006f          	j	800026b0 <_ZN5Riscv14handleSyscallsEv+0x168>
        case 0x01:
            // mem_alloc(size)

            size_t size;
            void *ptr;
            __asm__ volatile("mv %0, a1" : "=r" (size));
    80002638:	00058593          	mv	a1,a1
    8000263c:	00009797          	auipc	a5,0x9
    80002640:	f947c783          	lbu	a5,-108(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002644:	04079263          	bnez	a5,80002688 <_ZN5Riscv14handleSyscallsEv+0x140>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002648:	00009797          	auipc	a5,0x9
    8000264c:	f107b783          	ld	a5,-240(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002650:	0007b783          	ld	a5,0(a5)
    80002654:	00009717          	auipc	a4,0x9
    80002658:	f8470713          	addi	a4,a4,-124 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000265c:	00f73023          	sd	a5,0(a4)
    80002660:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002664:	00009717          	auipc	a4,0x9
    80002668:	f0c73703          	ld	a4,-244(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000266c:	00073703          	ld	a4,0(a4)
    80002670:	40f70733          	sub	a4,a4,a5
    80002674:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002678:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000267c:	00100793          	li	a5,1
    80002680:	00009717          	auipc	a4,0x9
    80002684:	f4f70823          	sb	a5,-176(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            ptr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);
    80002688:	00659593          	slli	a1,a1,0x6
    8000268c:	00009517          	auipc	a0,0x9
    80002690:	f4c50513          	addi	a0,a0,-180 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002694:	00000097          	auipc	ra,0x0
    80002698:	458080e7          	jalr	1112(ra) # 80002aec <_ZN15MemoryAllocator9mem_allocEm>

            __asm__ volatile("mv a0, %0" : : "r"(ptr));
    8000269c:	00050513          	mv	a0,a0
            __asm__ volatile ("mv %0, a1" : "=r" (c));
            __putc(c);
            break;
    }

    w_sstatus(sstatus);
    800026a0:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800026a4:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    800026a8:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800026ac:	14179073          	csrw	sepc,a5
}
    800026b0:	04813083          	ld	ra,72(sp)
    800026b4:	04013403          	ld	s0,64(sp)
    800026b8:	03813483          	ld	s1,56(sp)
    800026bc:	05010113          	addi	sp,sp,80
    800026c0:	00008067          	ret
            __asm__ volatile("mv %0, a1" : "=r" (memptr));
    800026c4:	00058593          	mv	a1,a1
    800026c8:	00009797          	auipc	a5,0x9
    800026cc:	f087c783          	lbu	a5,-248(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026d0:	04079263          	bnez	a5,80002714 <_ZN5Riscv14handleSyscallsEv+0x1cc>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800026d4:	00009797          	auipc	a5,0x9
    800026d8:	e847b783          	ld	a5,-380(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026dc:	0007b783          	ld	a5,0(a5)
    800026e0:	00009717          	auipc	a4,0x9
    800026e4:	ef870713          	addi	a4,a4,-264 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026e8:	00f73023          	sd	a5,0(a4)
    800026ec:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800026f0:	00009717          	auipc	a4,0x9
    800026f4:	e8073703          	ld	a4,-384(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026f8:	00073703          	ld	a4,0(a4)
    800026fc:	40f70733          	sub	a4,a4,a5
    80002700:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002704:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002708:	00100793          	li	a5,1
    8000270c:	00009717          	auipc	a4,0x9
    80002710:	ecf70223          	sb	a5,-316(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_free(memptr);
    80002714:	00009517          	auipc	a0,0x9
    80002718:	ec450513          	addi	a0,a0,-316 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	520080e7          	jalr	1312(ra) # 80002c3c <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile("mv a0, %0" : : "r"(returnValue));
    80002724:	00050513          	mv	a0,a0
            break;
    80002728:	f79ff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
    8000272c:	00009797          	auipc	a5,0x9
    80002730:	ea47c783          	lbu	a5,-348(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002734:	04079263          	bnez	a5,80002778 <_ZN5Riscv14handleSyscallsEv+0x230>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002738:	00009797          	auipc	a5,0x9
    8000273c:	e207b783          	ld	a5,-480(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002740:	0007b783          	ld	a5,0(a5)
    80002744:	00009717          	auipc	a4,0x9
    80002748:	e9470713          	addi	a4,a4,-364 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000274c:	00f73023          	sd	a5,0(a4)
    80002750:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002754:	00009717          	auipc	a4,0x9
    80002758:	e1c73703          	ld	a4,-484(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000275c:	00073703          	ld	a4,0(a4)
    80002760:	40f70733          	sub	a4,a4,a5
    80002764:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002768:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000276c:	00100793          	li	a5,1
    80002770:	00009717          	auipc	a4,0x9
    80002774:	e6f70023          	sb	a5,-416(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_get_free_space();
    80002778:	00009517          	auipc	a0,0x9
    8000277c:	e6050513          	addi	a0,a0,-416 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002780:	00000097          	auipc	ra,0x0
    80002784:	5a8080e7          	jalr	1448(ra) # 80002d28 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
            __asm__ volatile("mv a0, %0" : : "r"(returnValue));
    80002788:	00050513          	mv	a0,a0
            break;
    8000278c:	f15ff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
    80002790:	00009797          	auipc	a5,0x9
    80002794:	e407c783          	lbu	a5,-448(a5) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002798:	04079263          	bnez	a5,800027dc <_ZN5Riscv14handleSyscallsEv+0x294>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000279c:	00009797          	auipc	a5,0x9
    800027a0:	dbc7b783          	ld	a5,-580(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027a4:	0007b783          	ld	a5,0(a5)
    800027a8:	00009717          	auipc	a4,0x9
    800027ac:	e3070713          	addi	a4,a4,-464 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027b0:	00f73023          	sd	a5,0(a4)
    800027b4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800027b8:	00009717          	auipc	a4,0x9
    800027bc:	db873703          	ld	a4,-584(a4) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027c0:	00073703          	ld	a4,0(a4)
    800027c4:	40f70733          	sub	a4,a4,a5
    800027c8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800027cc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800027d0:	00100793          	li	a5,1
    800027d4:	00009717          	auipc	a4,0x9
    800027d8:	def70e23          	sb	a5,-516(a4) # 8000b5d0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_get_largest_free_block();
    800027dc:	00009517          	auipc	a0,0x9
    800027e0:	dfc50513          	addi	a0,a0,-516 # 8000b5d8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	578080e7          	jalr	1400(ra) # 80002d5c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
            __asm__ volatile("mv a0, %0" : : "r"(returnValue));
    800027ec:	00050513          	mv	a0,a0
            break;
    800027f0:	eb1ff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
            __asm__ volatile ("mv %0, a1" : "=r" (thread));
    800027f4:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    800027f8:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %0, a6" : "=r" (stack));
    800027fc:	00080613          	mv	a2,a6
            __asm__ volatile ("mv %0, a7" : "=r" (arg));
    80002800:	00088593          	mv	a1,a7
            *thread = CCB::createCoroutine(body, arg, stack);
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	724080e7          	jalr	1828(ra) # 80001f28 <_ZN3CCB15createCoroutineEPFvPvES0_Pm>
    8000280c:	00a4b023          	sd	a0,0(s1)
            if (*thread != nullptr) {
    80002810:	00050663          	beqz	a0,8000281c <_ZN5Riscv14handleSyscallsEv+0x2d4>
                __asm__ volatile ("li a0, 0");
    80002814:	00000513          	li	a0,0
    80002818:	e89ff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
                __asm__ volatile ("li a0, -1");
    8000281c:	fff00513          	li	a0,-1
    80002820:	e81ff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
            CCB::running->setFinished(true);
    80002824:	00009797          	auipc	a5,0x9
    80002828:	d447b783          	ld	a5,-700(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000282c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002830:	00100713          	li	a4,1
    80002834:	02e78023          	sb	a4,32(a5)
            CCB::dispatch();
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	878080e7          	jalr	-1928(ra) # 800020b0 <_ZN3CCB8dispatchEv>
            __asm__ volatile ("li a0, 0");
    80002840:	00000513          	li	a0,0
            break;
    80002844:	e5dff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
            CCB::dispatch();
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	868080e7          	jalr	-1944(ra) # 800020b0 <_ZN3CCB8dispatchEv>
            break;
    80002850:	e51ff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
            __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002854:	00060513          	mv	a0,a2
    80002858:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    8000285c:	00058493          	mv	s1,a1
            *semHandle = ABI::Semaphore::createSemaphore(init);
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	164080e7          	jalr	356(ra) # 800019c4 <_ZN3ABI9Semaphore15createSemaphoreEj>
    80002868:	00a4b023          	sd	a0,0(s1)
            if (*semHandle != nullptr) {
    8000286c:	00050663          	beqz	a0,80002878 <_ZN5Riscv14handleSyscallsEv+0x330>
                __asm__ volatile ("li a0, 0");
    80002870:	00000513          	li	a0,0
    80002874:	e2dff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
                __asm__ volatile ("li a0, -1");
    80002878:	fff00513          	li	a0,-1
    8000287c:	e25ff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002880:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr) {
    80002884:	00050a63          	beqz	a0,80002898 <_ZN5Riscv14handleSyscallsEv+0x350>
                returnValue = semHandlePtr->close();
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	3a8080e7          	jalr	936(ra) # 80001c30 <_ZN3ABI9Semaphore5closeEv>
            __asm__ volatile ("mv a0, %0" : : "r"(returnValue));
    80002890:	00050513          	mv	a0,a0
            break;
    80002894:	e0dff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
            } else returnValue = -2;
    80002898:	ffe00513          	li	a0,-2
    8000289c:	ff5ff06f          	j	80002890 <_ZN5Riscv14handleSyscallsEv+0x348>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028a0:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr) {
    800028a4:	00050a63          	beqz	a0,800028b8 <_ZN5Riscv14handleSyscallsEv+0x370>
                returnValue = semHandlePtr->wait();
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	1c4080e7          	jalr	452(ra) # 80001a6c <_ZN3ABI9Semaphore4waitEv>
            __asm__ volatile ("mv a0, %0" : : "r"(returnValue));
    800028b0:	00050513          	mv	a0,a0
            break;
    800028b4:	dedff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
            } else returnValue = -2;
    800028b8:	ffe00513          	li	a0,-2
    800028bc:	ff5ff06f          	j	800028b0 <_ZN5Riscv14handleSyscallsEv+0x368>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028c0:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr)
    800028c4:	00050a63          	beqz	a0,800028d8 <_ZN5Riscv14handleSyscallsEv+0x390>
                returnValue = semHandlePtr->signal();
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	1dc080e7          	jalr	476(ra) # 80001aa4 <_ZN3ABI9Semaphore6signalEv>
            __asm__ volatile ("mv a0, %0" : : "r"(returnValue));
    800028d0:	00050513          	mv	a0,a0
            break;
    800028d4:	dcdff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
                returnValue = -2;
    800028d8:	ffe00513          	li	a0,-2
    800028dc:	ff5ff06f          	j	800028d0 <_ZN5Riscv14handleSyscallsEv+0x388>
            returnValue = __getc();
    800028e0:	00006097          	auipc	ra,0x6
    800028e4:	c78080e7          	jalr	-904(ra) # 80008558 <__getc>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800028e8:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800028ec:	04542823          	sw	t0,80(s0)
            break;
    800028f0:	db1ff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>
            __asm__ volatile ("mv %0, a1" : "=r" (c));
    800028f4:	00058513          	mv	a0,a1
            __putc(c);
    800028f8:	0ff57513          	andi	a0,a0,255
    800028fc:	00006097          	auipc	ra,0x6
    80002900:	c20080e7          	jalr	-992(ra) # 8000851c <__putc>
            break;
    80002904:	d9dff06f          	j	800026a0 <_ZN5Riscv14handleSyscallsEv+0x158>

0000000080002908 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00813423          	sd	s0,8(sp)
    80002910:	01010413          	addi	s0,sp,16
    80002914:	00100793          	li	a5,1
    80002918:	00f50863          	beq	a0,a5,80002928 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000291c:	00813403          	ld	s0,8(sp)
    80002920:	01010113          	addi	sp,sp,16
    80002924:	00008067          	ret
    80002928:	000107b7          	lui	a5,0x10
    8000292c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002930:	fef596e3          	bne	a1,a5,8000291c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002934:	00009797          	auipc	a5,0x9
    80002938:	cc478793          	addi	a5,a5,-828 # 8000b5f8 <_ZN9Scheduler19readyCoroutineQueueE>
    8000293c:	0007b023          	sd	zero,0(a5)
    80002940:	0007b423          	sd	zero,8(a5)
    80002944:	fd9ff06f          	j	8000291c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002948 <_ZN9Scheduler3getEv>:
{
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    8000295c:	00009517          	auipc	a0,0x9
    80002960:	c9c53503          	ld	a0,-868(a0) # 8000b5f8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002964:	04050263          	beqz	a0,800029a8 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002968:	00853783          	ld	a5,8(a0)
    8000296c:	00009717          	auipc	a4,0x9
    80002970:	c8f73623          	sd	a5,-884(a4) # 8000b5f8 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002974:	02078463          	beqz	a5,8000299c <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002978:	00053483          	ld	s1,0(a0)
        delete elem;
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	4ac080e7          	jalr	1196(ra) # 80001e28 <_ZdlPv>
}
    80002984:	00048513          	mv	a0,s1
    80002988:	01813083          	ld	ra,24(sp)
    8000298c:	01013403          	ld	s0,16(sp)
    80002990:	00813483          	ld	s1,8(sp)
    80002994:	02010113          	addi	sp,sp,32
    80002998:	00008067          	ret
        if (!head) { tail = 0; }
    8000299c:	00009797          	auipc	a5,0x9
    800029a0:	c607b223          	sd	zero,-924(a5) # 8000b600 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029a4:	fd5ff06f          	j	80002978 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029a8:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800029ac:	fd9ff06f          	j	80002984 <_ZN9Scheduler3getEv+0x3c>

00000000800029b0 <_ZN9Scheduler3putEP3CCB>:
{
    800029b0:	fe010113          	addi	sp,sp,-32
    800029b4:	00113c23          	sd	ra,24(sp)
    800029b8:	00813823          	sd	s0,16(sp)
    800029bc:	00913423          	sd	s1,8(sp)
    800029c0:	02010413          	addi	s0,sp,32
    800029c4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800029c8:	01000513          	li	a0,16
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	35c080e7          	jalr	860(ra) # 80001d28 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800029d4:	00953023          	sd	s1,0(a0)
    800029d8:	00053423          	sd	zero,8(a0)
        if (tail)
    800029dc:	00009797          	auipc	a5,0x9
    800029e0:	c247b783          	ld	a5,-988(a5) # 8000b600 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029e4:	02078263          	beqz	a5,80002a08 <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    800029e8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800029ec:	00009797          	auipc	a5,0x9
    800029f0:	c0a7ba23          	sd	a0,-1004(a5) # 8000b600 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029f4:	01813083          	ld	ra,24(sp)
    800029f8:	01013403          	ld	s0,16(sp)
    800029fc:	00813483          	ld	s1,8(sp)
    80002a00:	02010113          	addi	sp,sp,32
    80002a04:	00008067          	ret
            head = tail = elem;
    80002a08:	00009797          	auipc	a5,0x9
    80002a0c:	bf078793          	addi	a5,a5,-1040 # 8000b5f8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a10:	00a7b423          	sd	a0,8(a5)
    80002a14:	00a7b023          	sd	a0,0(a5)
    80002a18:	fddff06f          	j	800029f4 <_ZN9Scheduler3putEP3CCB+0x44>

0000000080002a1c <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002a1c:	ff010113          	addi	sp,sp,-16
    80002a20:	00113423          	sd	ra,8(sp)
    80002a24:	00813023          	sd	s0,0(sp)
    80002a28:	01010413          	addi	s0,sp,16
    80002a2c:	000105b7          	lui	a1,0x10
    80002a30:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a34:	00100513          	li	a0,1
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	ed0080e7          	jalr	-304(ra) # 80002908 <_Z41__static_initialization_and_destruction_0ii>
    80002a40:	00813083          	ld	ra,8(sp)
    80002a44:	00013403          	ld	s0,0(sp)
    80002a48:	01010113          	addi	sp,sp,16
    80002a4c:	00008067          	ret

0000000080002a50 <main>:
#include "../test/printing.hpp"

extern void userMain();

int main()
{
    80002a50:	fc010113          	addi	sp,sp,-64
    80002a54:	02113c23          	sd	ra,56(sp)
    80002a58:	02813823          	sd	s0,48(sp)
    80002a5c:	04010413          	addi	s0,sp,64
    CCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::stvecTrap);
    80002a60:	00009797          	auipc	a5,0x9
    80002a64:	b187b783          	ld	a5,-1256(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002a68:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a6c:	00200793          	li	a5,2
    80002a70:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    threads[0] = CCB::createCoroutine(nullptr, nullptr, nullptr);
    80002a74:	00000613          	li	a2,0
    80002a78:	00000593          	li	a1,0
    80002a7c:	00000513          	li	a0,0
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	4a8080e7          	jalr	1192(ra) # 80001f28 <_ZN3CCB15createCoroutineEPFvPvES0_Pm>
    80002a88:	fca43423          	sd	a0,-56(s0)
    CCB::running = threads[0];
    80002a8c:	00009797          	auipc	a5,0x9
    80002a90:	adc7b783          	ld	a5,-1316(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002a94:	00a7b023          	sd	a0,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80002a98:	00000613          	li	a2,0
    80002a9c:	00009597          	auipc	a1,0x9
    80002aa0:	ab45b583          	ld	a1,-1356(a1) # 8000b550 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002aa4:	fd040513          	addi	a0,s0,-48
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	848080e7          	jalr	-1976(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>

    while(!threads[1]->isFinished()) {
    80002ab0:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    80002ab4:	0207c783          	lbu	a5,32(a5)
    80002ab8:	00079863          	bnez	a5,80002ac8 <main+0x78>
        thread_dispatch();
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	95c080e7          	jalr	-1700(ra) # 80001418 <_Z15thread_dispatchv>
    80002ac4:	fedff06f          	j	80002ab0 <main+0x60>
    }

    printString("Vratio sam se u main\n");
    80002ac8:	00006517          	auipc	a0,0x6
    80002acc:	6c050513          	addi	a0,a0,1728 # 80009188 <CONSOLE_STATUS+0x178>
    80002ad0:	00002097          	auipc	ra,0x2
    80002ad4:	740080e7          	jalr	1856(ra) # 80005210 <_Z11printStringPKc>

    return 0;
    80002ad8:	00000513          	li	a0,0
    80002adc:	03813083          	ld	ra,56(sp)
    80002ae0:	03013403          	ld	s0,48(sp)
    80002ae4:	04010113          	addi	sp,sp,64
    80002ae8:	00008067          	ret

0000000080002aec <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00813423          	sd	s0,8(sp)
    80002af4:	01010413          	addi	s0,sp,16
    80002af8:	00050613          	mv	a2,a0
    size += sizeof(Header);
    80002afc:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    80002b00:	fc05f713          	andi	a4,a1,-64
    80002b04:	03f5f593          	andi	a1,a1,63
    80002b08:	00058463          	beqz	a1,80002b10 <_ZN15MemoryAllocator9mem_allocEm+0x24>
    80002b0c:	04000593          	li	a1,64
    80002b10:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002b14:	00063503          	ld	a0,0(a2) # 2000 <_entry-0x7fffe000>
    Header *cur, *prev = nullptr;
    80002b18:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002b1c:	00050c63          	beqz	a0,80002b34 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002b20:	00853783          	ld	a5,8(a0)
    80002b24:	00e7f863          	bgeu	a5,a4,80002b34 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002b28:	00050693          	mv	a3,a0
    80002b2c:	00053503          	ld	a0,0(a0)
    80002b30:	fedff06f          	j	80002b1c <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    80002b34:	08050a63          	beqz	a0,80002bc8 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    80002b38:	00853783          	ld	a5,8(a0)
    80002b3c:	04e78a63          	beq	a5,a4,80002b90 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    80002b40:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    80002b44:	06068463          	beqz	a3,80002bac <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002b48:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    80002b4c:	00053683          	ld	a3,0(a0)
    80002b50:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    80002b54:	00853683          	ld	a3,8(a0)
    80002b58:	40e686b3          	sub	a3,a3,a4
    80002b5c:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    80002b60:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    80002b64:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    80002b68:	00863683          	ld	a3,8(a2)
    80002b6c:	04068463          	beqz	a3,80002bb4 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002b70:	00068793          	mv	a5,a3
    80002b74:	00078713          	mv	a4,a5
    80002b78:	0007b783          	ld	a5,0(a5)
    80002b7c:	00078463          	beqz	a5,80002b84 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80002b80:	fea7eae3          	bltu	a5,a0,80002b74 <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    80002b84:	02070a63          	beqz	a4,80002bb8 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002b88:	00f53023          	sd	a5,0(a0)
    80002b8c:	0300006f          	j	80002bbc <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    80002b90:	00068863          	beqz	a3,80002ba0 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002b94:	00053783          	ld	a5,0(a0)
    80002b98:	00f6b023          	sd	a5,0(a3)
    80002b9c:	fc5ff06f          	j	80002b60 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    80002ba0:	00053783          	ld	a5,0(a0)
    80002ba4:	00f63023          	sd	a5,0(a2)
    80002ba8:	fb9ff06f          	j	80002b60 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002bac:	00f63023          	sd	a5,0(a2)
    80002bb0:	f9dff06f          	j	80002b4c <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002bb4:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    80002bb8:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002bbc:	00070c63          	beqz	a4,80002bd4 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002bc0:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002bc4:	01050513          	addi	a0,a0,16
}
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret
    else alloc_head = target;
    80002bd4:	00a63423          	sd	a0,8(a2)
    80002bd8:	fedff06f          	j	80002bc4 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002bdc <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00813423          	sd	s0,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    80002be8:	04050263          	beqz	a0,80002c2c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002bec:	00053783          	ld	a5,0(a0)
    80002bf0:	04078263          	beqz	a5,80002c34 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002bf4:	00853703          	ld	a4,8(a0)
    80002bf8:	00e506b3          	add	a3,a0,a4
    80002bfc:	00d78a63          	beq	a5,a3,80002c10 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    80002c00:	00000513          	li	a0,0
}
    80002c04:	00813403          	ld	s0,8(sp)
    80002c08:	01010113          	addi	sp,sp,16
    80002c0c:	00008067          	ret
        cur->size += cur->next->size;
    80002c10:	0087b683          	ld	a3,8(a5)
    80002c14:	00d70733          	add	a4,a4,a3
    80002c18:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    80002c1c:	0007b783          	ld	a5,0(a5)
    80002c20:	00f53023          	sd	a5,0(a0)
        return 1;
    80002c24:	00100513          	li	a0,1
    80002c28:	fddff06f          	j	80002c04 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    80002c2c:	00000513          	li	a0,0
    80002c30:	fd5ff06f          	j	80002c04 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    80002c34:	00000513          	li	a0,0
    80002c38:	fcdff06f          	j	80002c04 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

0000000080002c3c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    80002c3c:	0c058a63          	beqz	a1,80002d10 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002c40:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    80002c44:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002c48:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    80002c4c:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002c50:	00078a63          	beqz	a5,80002c64 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002c54:	00a7f863          	bgeu	a5,a0,80002c64 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002c58:	00078713          	mv	a4,a5
    80002c5c:	0007b783          	ld	a5,0(a5)
    80002c60:	ff1ff06f          	j	80002c50 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002c64:	0a078a63          	beqz	a5,80002d18 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002c68:	0aa79c63          	bne	a5,a0,80002d20 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    80002c6c:	fe010113          	addi	sp,sp,-32
    80002c70:	00113c23          	sd	ra,24(sp)
    80002c74:	00813823          	sd	s0,16(sp)
    80002c78:	00913423          	sd	s1,8(sp)
    80002c7c:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    80002c80:	02070c63          	beqz	a4,80002cb8 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    80002c84:	0007b783          	ld	a5,0(a5)
    80002c88:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002c8c:	0006b703          	ld	a4,0(a3)
    80002c90:	02070a63          	beqz	a4,80002cc4 <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    80002c94:	02e56c63          	bltu	a0,a4,80002ccc <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002c98:	00070793          	mv	a5,a4
    80002c9c:	00078493          	mv	s1,a5
    80002ca0:	0007b783          	ld	a5,0(a5)
    80002ca4:	00078463          	beqz	a5,80002cac <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002ca8:	fea7eae3          	bltu	a5,a0,80002c9c <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002cac:	02048263          	beqz	s1,80002cd0 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002cb0:	fef5b823          	sd	a5,-16(a1)
    80002cb4:	0200006f          	j	80002cd4 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    80002cb8:	0007b783          	ld	a5,0(a5)
    80002cbc:	00f6b423          	sd	a5,8(a3)
    80002cc0:	fcdff06f          	j	80002c8c <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002cc4:	00070493          	mv	s1,a4
    80002cc8:	0080006f          	j	80002cd0 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002ccc:	00000493          	li	s1,0
    else target->next = free_head;
    80002cd0:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002cd4:	02048a63          	beqz	s1,80002d08 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002cd8:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	f00080e7          	jalr	-256(ra) # 80002bdc <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002ce4:	00048513          	mv	a0,s1
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	ef4080e7          	jalr	-268(ra) # 80002bdc <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    80002cf0:	00000513          	li	a0,0
}
    80002cf4:	01813083          	ld	ra,24(sp)
    80002cf8:	01013403          	ld	s0,16(sp)
    80002cfc:	00813483          	ld	s1,8(sp)
    80002d00:	02010113          	addi	sp,sp,32
    80002d04:	00008067          	ret
    else free_head = target;
    80002d08:	00a6b023          	sd	a0,0(a3)
    80002d0c:	fd1ff06f          	j	80002cdc <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    80002d10:	fff00513          	li	a0,-1
    80002d14:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002d18:	ffe00513          	li	a0,-2
    80002d1c:	00008067          	ret
    80002d20:	ffe00513          	li	a0,-2
}
    80002d24:	00008067          	ret

0000000080002d28 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002d28:	ff010113          	addi	sp,sp,-16
    80002d2c:	00813423          	sd	s0,8(sp)
    80002d30:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d34:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002d38:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d3c:	00078a63          	beqz	a5,80002d50 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    80002d40:	0087b703          	ld	a4,8(a5)
    80002d44:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d48:	0007b783          	ld	a5,0(a5)
    80002d4c:	ff1ff06f          	j	80002d3c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    80002d50:	00813403          	ld	s0,8(sp)
    80002d54:	01010113          	addi	sp,sp,16
    80002d58:	00008067          	ret

0000000080002d5c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002d5c:	ff010113          	addi	sp,sp,-16
    80002d60:	00813423          	sd	s0,8(sp)
    80002d64:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d68:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002d6c:	00000513          	li	a0,0
    80002d70:	0080006f          	j	80002d78 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002d74:	0007b783          	ld	a5,0(a5)
    80002d78:	00078a63          	beqz	a5,80002d8c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    80002d7c:	0087b703          	ld	a4,8(a5)
    80002d80:	fee57ae3          	bgeu	a0,a4,80002d74 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    80002d84:	00070513          	mv	a0,a4
    80002d88:	fedff06f          	j	80002d74 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    80002d8c:	00813403          	ld	s0,8(sp)
    80002d90:	01010113          	addi	sp,sp,16
    80002d94:	00008067          	ret

0000000080002d98 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d98:	fe010113          	addi	sp,sp,-32
    80002d9c:	00113c23          	sd	ra,24(sp)
    80002da0:	00813823          	sd	s0,16(sp)
    80002da4:	00913423          	sd	s1,8(sp)
    80002da8:	01213023          	sd	s2,0(sp)
    80002dac:	02010413          	addi	s0,sp,32
    80002db0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002db4:	00000913          	li	s2,0
    80002db8:	00c0006f          	j	80002dc4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002dbc:	ffffe097          	auipc	ra,0xffffe
    80002dc0:	65c080e7          	jalr	1628(ra) # 80001418 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002dc4:	ffffe097          	auipc	ra,0xffffe
    80002dc8:	75c080e7          	jalr	1884(ra) # 80001520 <_Z4getcv>
    80002dcc:	0005059b          	sext.w	a1,a0
    80002dd0:	01b00793          	li	a5,27
    80002dd4:	02f58a63          	beq	a1,a5,80002e08 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002dd8:	0084b503          	ld	a0,8(s1)
    80002ddc:	00003097          	auipc	ra,0x3
    80002de0:	3f4080e7          	jalr	1012(ra) # 800061d0 <_ZN6Buffer3putEi>
        i++;
    80002de4:	0019071b          	addiw	a4,s2,1
    80002de8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002dec:	0004a683          	lw	a3,0(s1)
    80002df0:	0026979b          	slliw	a5,a3,0x2
    80002df4:	00d787bb          	addw	a5,a5,a3
    80002df8:	0017979b          	slliw	a5,a5,0x1
    80002dfc:	02f767bb          	remw	a5,a4,a5
    80002e00:	fc0792e3          	bnez	a5,80002dc4 <_ZL16producerKeyboardPv+0x2c>
    80002e04:	fb9ff06f          	j	80002dbc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e08:	00100793          	li	a5,1
    80002e0c:	00008717          	auipc	a4,0x8
    80002e10:	7ef72e23          	sw	a5,2044(a4) # 8000b608 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e14:	02100593          	li	a1,33
    80002e18:	0084b503          	ld	a0,8(s1)
    80002e1c:	00003097          	auipc	ra,0x3
    80002e20:	3b4080e7          	jalr	948(ra) # 800061d0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e24:	0104b503          	ld	a0,16(s1)
    80002e28:	ffffe097          	auipc	ra,0xffffe
    80002e2c:	6a0080e7          	jalr	1696(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002e30:	01813083          	ld	ra,24(sp)
    80002e34:	01013403          	ld	s0,16(sp)
    80002e38:	00813483          	ld	s1,8(sp)
    80002e3c:	00013903          	ld	s2,0(sp)
    80002e40:	02010113          	addi	sp,sp,32
    80002e44:	00008067          	ret

0000000080002e48 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e48:	fe010113          	addi	sp,sp,-32
    80002e4c:	00113c23          	sd	ra,24(sp)
    80002e50:	00813823          	sd	s0,16(sp)
    80002e54:	00913423          	sd	s1,8(sp)
    80002e58:	01213023          	sd	s2,0(sp)
    80002e5c:	02010413          	addi	s0,sp,32
    80002e60:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e64:	00000913          	li	s2,0
    80002e68:	00c0006f          	j	80002e74 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e6c:	ffffe097          	auipc	ra,0xffffe
    80002e70:	5ac080e7          	jalr	1452(ra) # 80001418 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e74:	00008797          	auipc	a5,0x8
    80002e78:	7947a783          	lw	a5,1940(a5) # 8000b608 <_ZL9threadEnd>
    80002e7c:	02079e63          	bnez	a5,80002eb8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e80:	0004a583          	lw	a1,0(s1)
    80002e84:	0305859b          	addiw	a1,a1,48
    80002e88:	0084b503          	ld	a0,8(s1)
    80002e8c:	00003097          	auipc	ra,0x3
    80002e90:	344080e7          	jalr	836(ra) # 800061d0 <_ZN6Buffer3putEi>
        i++;
    80002e94:	0019071b          	addiw	a4,s2,1
    80002e98:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e9c:	0004a683          	lw	a3,0(s1)
    80002ea0:	0026979b          	slliw	a5,a3,0x2
    80002ea4:	00d787bb          	addw	a5,a5,a3
    80002ea8:	0017979b          	slliw	a5,a5,0x1
    80002eac:	02f767bb          	remw	a5,a4,a5
    80002eb0:	fc0792e3          	bnez	a5,80002e74 <_ZL8producerPv+0x2c>
    80002eb4:	fb9ff06f          	j	80002e6c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002eb8:	0104b503          	ld	a0,16(s1)
    80002ebc:	ffffe097          	auipc	ra,0xffffe
    80002ec0:	60c080e7          	jalr	1548(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002ec4:	01813083          	ld	ra,24(sp)
    80002ec8:	01013403          	ld	s0,16(sp)
    80002ecc:	00813483          	ld	s1,8(sp)
    80002ed0:	00013903          	ld	s2,0(sp)
    80002ed4:	02010113          	addi	sp,sp,32
    80002ed8:	00008067          	ret

0000000080002edc <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002edc:	fd010113          	addi	sp,sp,-48
    80002ee0:	02113423          	sd	ra,40(sp)
    80002ee4:	02813023          	sd	s0,32(sp)
    80002ee8:	00913c23          	sd	s1,24(sp)
    80002eec:	01213823          	sd	s2,16(sp)
    80002ef0:	01313423          	sd	s3,8(sp)
    80002ef4:	03010413          	addi	s0,sp,48
    80002ef8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002efc:	00000993          	li	s3,0
    80002f00:	01c0006f          	j	80002f1c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f04:	ffffe097          	auipc	ra,0xffffe
    80002f08:	514080e7          	jalr	1300(ra) # 80001418 <_Z15thread_dispatchv>
    80002f0c:	0500006f          	j	80002f5c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f10:	00a00513          	li	a0,10
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	634080e7          	jalr	1588(ra) # 80001548 <_Z4putcc>
    while (!threadEnd) {
    80002f1c:	00008797          	auipc	a5,0x8
    80002f20:	6ec7a783          	lw	a5,1772(a5) # 8000b608 <_ZL9threadEnd>
    80002f24:	06079063          	bnez	a5,80002f84 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f28:	00893503          	ld	a0,8(s2)
    80002f2c:	00003097          	auipc	ra,0x3
    80002f30:	334080e7          	jalr	820(ra) # 80006260 <_ZN6Buffer3getEv>
        i++;
    80002f34:	0019849b          	addiw	s1,s3,1
    80002f38:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f3c:	0ff57513          	andi	a0,a0,255
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	608080e7          	jalr	1544(ra) # 80001548 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f48:	00092703          	lw	a4,0(s2)
    80002f4c:	0027179b          	slliw	a5,a4,0x2
    80002f50:	00e787bb          	addw	a5,a5,a4
    80002f54:	02f4e7bb          	remw	a5,s1,a5
    80002f58:	fa0786e3          	beqz	a5,80002f04 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f5c:	05000793          	li	a5,80
    80002f60:	02f4e4bb          	remw	s1,s1,a5
    80002f64:	fa049ce3          	bnez	s1,80002f1c <_ZL8consumerPv+0x40>
    80002f68:	fa9ff06f          	j	80002f10 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f6c:	00893503          	ld	a0,8(s2)
    80002f70:	00003097          	auipc	ra,0x3
    80002f74:	2f0080e7          	jalr	752(ra) # 80006260 <_ZN6Buffer3getEv>
        putc(key);
    80002f78:	0ff57513          	andi	a0,a0,255
    80002f7c:	ffffe097          	auipc	ra,0xffffe
    80002f80:	5cc080e7          	jalr	1484(ra) # 80001548 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002f84:	00893503          	ld	a0,8(s2)
    80002f88:	00003097          	auipc	ra,0x3
    80002f8c:	364080e7          	jalr	868(ra) # 800062ec <_ZN6Buffer6getCntEv>
    80002f90:	fca04ee3          	bgtz	a0,80002f6c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002f94:	01093503          	ld	a0,16(s2)
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	530080e7          	jalr	1328(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002fa0:	02813083          	ld	ra,40(sp)
    80002fa4:	02013403          	ld	s0,32(sp)
    80002fa8:	01813483          	ld	s1,24(sp)
    80002fac:	01013903          	ld	s2,16(sp)
    80002fb0:	00813983          	ld	s3,8(sp)
    80002fb4:	03010113          	addi	sp,sp,48
    80002fb8:	00008067          	ret

0000000080002fbc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002fbc:	f9010113          	addi	sp,sp,-112
    80002fc0:	06113423          	sd	ra,104(sp)
    80002fc4:	06813023          	sd	s0,96(sp)
    80002fc8:	04913c23          	sd	s1,88(sp)
    80002fcc:	05213823          	sd	s2,80(sp)
    80002fd0:	05313423          	sd	s3,72(sp)
    80002fd4:	05413023          	sd	s4,64(sp)
    80002fd8:	03513c23          	sd	s5,56(sp)
    80002fdc:	03613823          	sd	s6,48(sp)
    80002fe0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002fe4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002fe8:	00006517          	auipc	a0,0x6
    80002fec:	1b850513          	addi	a0,a0,440 # 800091a0 <CONSOLE_STATUS+0x190>
    80002ff0:	00002097          	auipc	ra,0x2
    80002ff4:	220080e7          	jalr	544(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80002ff8:	01e00593          	li	a1,30
    80002ffc:	fa040493          	addi	s1,s0,-96
    80003000:	00048513          	mv	a0,s1
    80003004:	00002097          	auipc	ra,0x2
    80003008:	294080e7          	jalr	660(ra) # 80005298 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000300c:	00048513          	mv	a0,s1
    80003010:	00002097          	auipc	ra,0x2
    80003014:	360080e7          	jalr	864(ra) # 80005370 <_Z11stringToIntPKc>
    80003018:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000301c:	00006517          	auipc	a0,0x6
    80003020:	1a450513          	addi	a0,a0,420 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003024:	00002097          	auipc	ra,0x2
    80003028:	1ec080e7          	jalr	492(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    8000302c:	01e00593          	li	a1,30
    80003030:	00048513          	mv	a0,s1
    80003034:	00002097          	auipc	ra,0x2
    80003038:	264080e7          	jalr	612(ra) # 80005298 <_Z9getStringPci>
    n = stringToInt(input);
    8000303c:	00048513          	mv	a0,s1
    80003040:	00002097          	auipc	ra,0x2
    80003044:	330080e7          	jalr	816(ra) # 80005370 <_Z11stringToIntPKc>
    80003048:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000304c:	00006517          	auipc	a0,0x6
    80003050:	19450513          	addi	a0,a0,404 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003054:	00002097          	auipc	ra,0x2
    80003058:	1bc080e7          	jalr	444(ra) # 80005210 <_Z11printStringPKc>
    8000305c:	00000613          	li	a2,0
    80003060:	00a00593          	li	a1,10
    80003064:	00090513          	mv	a0,s2
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	358080e7          	jalr	856(ra) # 800053c0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003070:	00006517          	auipc	a0,0x6
    80003074:	18850513          	addi	a0,a0,392 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003078:	00002097          	auipc	ra,0x2
    8000307c:	198080e7          	jalr	408(ra) # 80005210 <_Z11printStringPKc>
    80003080:	00000613          	li	a2,0
    80003084:	00a00593          	li	a1,10
    80003088:	00048513          	mv	a0,s1
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	334080e7          	jalr	820(ra) # 800053c0 <_Z8printIntiii>
    printString(".\n");
    80003094:	00006517          	auipc	a0,0x6
    80003098:	17c50513          	addi	a0,a0,380 # 80009210 <CONSOLE_STATUS+0x200>
    8000309c:	00002097          	auipc	ra,0x2
    800030a0:	174080e7          	jalr	372(ra) # 80005210 <_Z11printStringPKc>
    if(threadNum > n) {
    800030a4:	0324c463          	blt	s1,s2,800030cc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800030a8:	03205c63          	blez	s2,800030e0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800030ac:	03800513          	li	a0,56
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	c78080e7          	jalr	-904(ra) # 80001d28 <_Znwm>
    800030b8:	00050a13          	mv	s4,a0
    800030bc:	00048593          	mv	a1,s1
    800030c0:	00003097          	auipc	ra,0x3
    800030c4:	074080e7          	jalr	116(ra) # 80006134 <_ZN6BufferC1Ei>
    800030c8:	0300006f          	j	800030f8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800030cc:	00006517          	auipc	a0,0x6
    800030d0:	14c50513          	addi	a0,a0,332 # 80009218 <CONSOLE_STATUS+0x208>
    800030d4:	00002097          	auipc	ra,0x2
    800030d8:	13c080e7          	jalr	316(ra) # 80005210 <_Z11printStringPKc>
        return;
    800030dc:	0140006f          	j	800030f0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800030e0:	00006517          	auipc	a0,0x6
    800030e4:	17850513          	addi	a0,a0,376 # 80009258 <CONSOLE_STATUS+0x248>
    800030e8:	00002097          	auipc	ra,0x2
    800030ec:	128080e7          	jalr	296(ra) # 80005210 <_Z11printStringPKc>
        return;
    800030f0:	000b0113          	mv	sp,s6
    800030f4:	1500006f          	j	80003244 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800030f8:	00000593          	li	a1,0
    800030fc:	00008517          	auipc	a0,0x8
    80003100:	51450513          	addi	a0,a0,1300 # 8000b610 <_ZL10waitForAll>
    80003104:	ffffe097          	auipc	ra,0xffffe
    80003108:	334080e7          	jalr	820(ra) # 80001438 <_Z8sem_openPPN3ABI9SemaphoreEj>
    thread_t threads[threadNum];
    8000310c:	00391793          	slli	a5,s2,0x3
    80003110:	00f78793          	addi	a5,a5,15
    80003114:	ff07f793          	andi	a5,a5,-16
    80003118:	40f10133          	sub	sp,sp,a5
    8000311c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003120:	0019071b          	addiw	a4,s2,1
    80003124:	00171793          	slli	a5,a4,0x1
    80003128:	00e787b3          	add	a5,a5,a4
    8000312c:	00379793          	slli	a5,a5,0x3
    80003130:	00f78793          	addi	a5,a5,15
    80003134:	ff07f793          	andi	a5,a5,-16
    80003138:	40f10133          	sub	sp,sp,a5
    8000313c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003140:	00191613          	slli	a2,s2,0x1
    80003144:	012607b3          	add	a5,a2,s2
    80003148:	00379793          	slli	a5,a5,0x3
    8000314c:	00f987b3          	add	a5,s3,a5
    80003150:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003154:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003158:	00008717          	auipc	a4,0x8
    8000315c:	4b873703          	ld	a4,1208(a4) # 8000b610 <_ZL10waitForAll>
    80003160:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003164:	00078613          	mv	a2,a5
    80003168:	00000597          	auipc	a1,0x0
    8000316c:	d7458593          	addi	a1,a1,-652 # 80002edc <_ZL8consumerPv>
    80003170:	f9840513          	addi	a0,s0,-104
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	17c080e7          	jalr	380(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000317c:	00000493          	li	s1,0
    80003180:	0280006f          	j	800031a8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003184:	00000597          	auipc	a1,0x0
    80003188:	c1458593          	addi	a1,a1,-1004 # 80002d98 <_ZL16producerKeyboardPv>
                      data + i);
    8000318c:	00179613          	slli	a2,a5,0x1
    80003190:	00f60633          	add	a2,a2,a5
    80003194:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003198:	00c98633          	add	a2,s3,a2
    8000319c:	ffffe097          	auipc	ra,0xffffe
    800031a0:	154080e7          	jalr	340(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031a4:	0014849b          	addiw	s1,s1,1
    800031a8:	0524d263          	bge	s1,s2,800031ec <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800031ac:	00149793          	slli	a5,s1,0x1
    800031b0:	009787b3          	add	a5,a5,s1
    800031b4:	00379793          	slli	a5,a5,0x3
    800031b8:	00f987b3          	add	a5,s3,a5
    800031bc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031c0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031c4:	00008717          	auipc	a4,0x8
    800031c8:	44c73703          	ld	a4,1100(a4) # 8000b610 <_ZL10waitForAll>
    800031cc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031d0:	00048793          	mv	a5,s1
    800031d4:	00349513          	slli	a0,s1,0x3
    800031d8:	00aa8533          	add	a0,s5,a0
    800031dc:	fa9054e3          	blez	s1,80003184 <_Z22producerConsumer_C_APIv+0x1c8>
    800031e0:	00000597          	auipc	a1,0x0
    800031e4:	c6858593          	addi	a1,a1,-920 # 80002e48 <_ZL8producerPv>
    800031e8:	fa5ff06f          	j	8000318c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	22c080e7          	jalr	556(ra) # 80001418 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800031f4:	00000493          	li	s1,0
    800031f8:	00994e63          	blt	s2,s1,80003214 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800031fc:	00008517          	auipc	a0,0x8
    80003200:	41453503          	ld	a0,1044(a0) # 8000b610 <_ZL10waitForAll>
    80003204:	ffffe097          	auipc	ra,0xffffe
    80003208:	298080e7          	jalr	664(ra) # 8000149c <_Z8sem_waitPN3ABI9SemaphoreE>
    for (int i = 0; i <= threadNum; i++) {
    8000320c:	0014849b          	addiw	s1,s1,1
    80003210:	fe9ff06f          	j	800031f8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003214:	00008517          	auipc	a0,0x8
    80003218:	3fc53503          	ld	a0,1020(a0) # 8000b610 <_ZL10waitForAll>
    8000321c:	ffffe097          	auipc	ra,0xffffe
    80003220:	254080e7          	jalr	596(ra) # 80001470 <_Z9sem_closePN3ABI9SemaphoreE>
    delete buffer;
    80003224:	000a0e63          	beqz	s4,80003240 <_Z22producerConsumer_C_APIv+0x284>
    80003228:	000a0513          	mv	a0,s4
    8000322c:	00003097          	auipc	ra,0x3
    80003230:	148080e7          	jalr	328(ra) # 80006374 <_ZN6BufferD1Ev>
    80003234:	000a0513          	mv	a0,s4
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	bf0080e7          	jalr	-1040(ra) # 80001e28 <_ZdlPv>
    80003240:	000b0113          	mv	sp,s6

}
    80003244:	f9040113          	addi	sp,s0,-112
    80003248:	06813083          	ld	ra,104(sp)
    8000324c:	06013403          	ld	s0,96(sp)
    80003250:	05813483          	ld	s1,88(sp)
    80003254:	05013903          	ld	s2,80(sp)
    80003258:	04813983          	ld	s3,72(sp)
    8000325c:	04013a03          	ld	s4,64(sp)
    80003260:	03813a83          	ld	s5,56(sp)
    80003264:	03013b03          	ld	s6,48(sp)
    80003268:	07010113          	addi	sp,sp,112
    8000326c:	00008067          	ret
    80003270:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003274:	000a0513          	mv	a0,s4
    80003278:	fffff097          	auipc	ra,0xfffff
    8000327c:	bb0080e7          	jalr	-1104(ra) # 80001e28 <_ZdlPv>
    80003280:	00048513          	mv	a0,s1
    80003284:	00009097          	auipc	ra,0x9
    80003288:	4a4080e7          	jalr	1188(ra) # 8000c728 <_Unwind_Resume>

000000008000328c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    800032a4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032a8:	00100793          	li	a5,1
    800032ac:	02a7f863          	bgeu	a5,a0,800032dc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032b0:	00a00793          	li	a5,10
    800032b4:	02f577b3          	remu	a5,a0,a5
    800032b8:	02078e63          	beqz	a5,800032f4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032bc:	fff48513          	addi	a0,s1,-1
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	fcc080e7          	jalr	-52(ra) # 8000328c <_ZL9fibonaccim>
    800032c8:	00050913          	mv	s2,a0
    800032cc:	ffe48513          	addi	a0,s1,-2
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	fbc080e7          	jalr	-68(ra) # 8000328c <_ZL9fibonaccim>
    800032d8:	00a90533          	add	a0,s2,a0
}
    800032dc:	01813083          	ld	ra,24(sp)
    800032e0:	01013403          	ld	s0,16(sp)
    800032e4:	00813483          	ld	s1,8(sp)
    800032e8:	00013903          	ld	s2,0(sp)
    800032ec:	02010113          	addi	sp,sp,32
    800032f0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032f4:	ffffe097          	auipc	ra,0xffffe
    800032f8:	124080e7          	jalr	292(ra) # 80001418 <_Z15thread_dispatchv>
    800032fc:	fc1ff06f          	j	800032bc <_ZL9fibonaccim+0x30>

0000000080003300 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003300:	fe010113          	addi	sp,sp,-32
    80003304:	00113c23          	sd	ra,24(sp)
    80003308:	00813823          	sd	s0,16(sp)
    8000330c:	00913423          	sd	s1,8(sp)
    80003310:	01213023          	sd	s2,0(sp)
    80003314:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003318:	00000913          	li	s2,0
    8000331c:	0380006f          	j	80003354 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003320:	ffffe097          	auipc	ra,0xffffe
    80003324:	0f8080e7          	jalr	248(ra) # 80001418 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003328:	00148493          	addi	s1,s1,1
    8000332c:	000027b7          	lui	a5,0x2
    80003330:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003334:	0097ee63          	bltu	a5,s1,80003350 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003338:	00000713          	li	a4,0
    8000333c:	000077b7          	lui	a5,0x7
    80003340:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003344:	fce7eee3          	bltu	a5,a4,80003320 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003348:	00170713          	addi	a4,a4,1
    8000334c:	ff1ff06f          	j	8000333c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003350:	00190913          	addi	s2,s2,1
    80003354:	00900793          	li	a5,9
    80003358:	0527e063          	bltu	a5,s2,80003398 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000335c:	00006517          	auipc	a0,0x6
    80003360:	cc450513          	addi	a0,a0,-828 # 80009020 <CONSOLE_STATUS+0x10>
    80003364:	00002097          	auipc	ra,0x2
    80003368:	eac080e7          	jalr	-340(ra) # 80005210 <_Z11printStringPKc>
    8000336c:	00000613          	li	a2,0
    80003370:	00a00593          	li	a1,10
    80003374:	0009051b          	sext.w	a0,s2
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	048080e7          	jalr	72(ra) # 800053c0 <_Z8printIntiii>
    80003380:	00006517          	auipc	a0,0x6
    80003384:	18850513          	addi	a0,a0,392 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003388:	00002097          	auipc	ra,0x2
    8000338c:	e88080e7          	jalr	-376(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003390:	00000493          	li	s1,0
    80003394:	f99ff06f          	j	8000332c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003398:	00006517          	auipc	a0,0x6
    8000339c:	ef050513          	addi	a0,a0,-272 # 80009288 <CONSOLE_STATUS+0x278>
    800033a0:	00002097          	auipc	ra,0x2
    800033a4:	e70080e7          	jalr	-400(ra) # 80005210 <_Z11printStringPKc>
    finishedA = true;
    800033a8:	00100793          	li	a5,1
    800033ac:	00008717          	auipc	a4,0x8
    800033b0:	26f70623          	sb	a5,620(a4) # 8000b618 <_ZL9finishedA>
}
    800033b4:	01813083          	ld	ra,24(sp)
    800033b8:	01013403          	ld	s0,16(sp)
    800033bc:	00813483          	ld	s1,8(sp)
    800033c0:	00013903          	ld	s2,0(sp)
    800033c4:	02010113          	addi	sp,sp,32
    800033c8:	00008067          	ret

00000000800033cc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800033cc:	fe010113          	addi	sp,sp,-32
    800033d0:	00113c23          	sd	ra,24(sp)
    800033d4:	00813823          	sd	s0,16(sp)
    800033d8:	00913423          	sd	s1,8(sp)
    800033dc:	01213023          	sd	s2,0(sp)
    800033e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800033e4:	00000913          	li	s2,0
    800033e8:	0380006f          	j	80003420 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	02c080e7          	jalr	44(ra) # 80001418 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800033f4:	00148493          	addi	s1,s1,1
    800033f8:	000027b7          	lui	a5,0x2
    800033fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003400:	0097ee63          	bltu	a5,s1,8000341c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003404:	00000713          	li	a4,0
    80003408:	000077b7          	lui	a5,0x7
    8000340c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003410:	fce7eee3          	bltu	a5,a4,800033ec <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003414:	00170713          	addi	a4,a4,1
    80003418:	ff1ff06f          	j	80003408 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000341c:	00190913          	addi	s2,s2,1
    80003420:	00f00793          	li	a5,15
    80003424:	0527e063          	bltu	a5,s2,80003464 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003428:	00006517          	auipc	a0,0x6
    8000342c:	c2850513          	addi	a0,a0,-984 # 80009050 <CONSOLE_STATUS+0x40>
    80003430:	00002097          	auipc	ra,0x2
    80003434:	de0080e7          	jalr	-544(ra) # 80005210 <_Z11printStringPKc>
    80003438:	00000613          	li	a2,0
    8000343c:	00a00593          	li	a1,10
    80003440:	0009051b          	sext.w	a0,s2
    80003444:	00002097          	auipc	ra,0x2
    80003448:	f7c080e7          	jalr	-132(ra) # 800053c0 <_Z8printIntiii>
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	0bc50513          	addi	a0,a0,188 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	dbc080e7          	jalr	-580(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000345c:	00000493          	li	s1,0
    80003460:	f99ff06f          	j	800033f8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003464:	00006517          	auipc	a0,0x6
    80003468:	e3450513          	addi	a0,a0,-460 # 80009298 <CONSOLE_STATUS+0x288>
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	da4080e7          	jalr	-604(ra) # 80005210 <_Z11printStringPKc>
    finishedB = true;
    80003474:	00100793          	li	a5,1
    80003478:	00008717          	auipc	a4,0x8
    8000347c:	1af700a3          	sb	a5,417(a4) # 8000b619 <_ZL9finishedB>
    thread_dispatch();
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	f98080e7          	jalr	-104(ra) # 80001418 <_Z15thread_dispatchv>
}
    80003488:	01813083          	ld	ra,24(sp)
    8000348c:	01013403          	ld	s0,16(sp)
    80003490:	00813483          	ld	s1,8(sp)
    80003494:	00013903          	ld	s2,0(sp)
    80003498:	02010113          	addi	sp,sp,32
    8000349c:	00008067          	ret

00000000800034a0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034a0:	fe010113          	addi	sp,sp,-32
    800034a4:	00113c23          	sd	ra,24(sp)
    800034a8:	00813823          	sd	s0,16(sp)
    800034ac:	00913423          	sd	s1,8(sp)
    800034b0:	01213023          	sd	s2,0(sp)
    800034b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034b8:	00000493          	li	s1,0
    800034bc:	0400006f          	j	800034fc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800034c0:	00006517          	auipc	a0,0x6
    800034c4:	de850513          	addi	a0,a0,-536 # 800092a8 <CONSOLE_STATUS+0x298>
    800034c8:	00002097          	auipc	ra,0x2
    800034cc:	d48080e7          	jalr	-696(ra) # 80005210 <_Z11printStringPKc>
    800034d0:	00000613          	li	a2,0
    800034d4:	00a00593          	li	a1,10
    800034d8:	00048513          	mv	a0,s1
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	ee4080e7          	jalr	-284(ra) # 800053c0 <_Z8printIntiii>
    800034e4:	00006517          	auipc	a0,0x6
    800034e8:	02450513          	addi	a0,a0,36 # 80009508 <CONSOLE_STATUS+0x4f8>
    800034ec:	00002097          	auipc	ra,0x2
    800034f0:	d24080e7          	jalr	-732(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034f4:	0014849b          	addiw	s1,s1,1
    800034f8:	0ff4f493          	andi	s1,s1,255
    800034fc:	00200793          	li	a5,2
    80003500:	fc97f0e3          	bgeu	a5,s1,800034c0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003504:	00006517          	auipc	a0,0x6
    80003508:	dac50513          	addi	a0,a0,-596 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000350c:	00002097          	auipc	ra,0x2
    80003510:	d04080e7          	jalr	-764(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003514:	00700313          	li	t1,7
    thread_dispatch();
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	f00080e7          	jalr	-256(ra) # 80001418 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003520:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003524:	00006517          	auipc	a0,0x6
    80003528:	d9c50513          	addi	a0,a0,-612 # 800092c0 <CONSOLE_STATUS+0x2b0>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	ce4080e7          	jalr	-796(ra) # 80005210 <_Z11printStringPKc>
    80003534:	00000613          	li	a2,0
    80003538:	00a00593          	li	a1,10
    8000353c:	0009051b          	sext.w	a0,s2
    80003540:	00002097          	auipc	ra,0x2
    80003544:	e80080e7          	jalr	-384(ra) # 800053c0 <_Z8printIntiii>
    80003548:	00006517          	auipc	a0,0x6
    8000354c:	fc050513          	addi	a0,a0,-64 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003550:	00002097          	auipc	ra,0x2
    80003554:	cc0080e7          	jalr	-832(ra) # 80005210 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003558:	00c00513          	li	a0,12
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	d30080e7          	jalr	-720(ra) # 8000328c <_ZL9fibonaccim>
    80003564:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	d6050513          	addi	a0,a0,-672 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003570:	00002097          	auipc	ra,0x2
    80003574:	ca0080e7          	jalr	-864(ra) # 80005210 <_Z11printStringPKc>
    80003578:	00000613          	li	a2,0
    8000357c:	00a00593          	li	a1,10
    80003580:	0009051b          	sext.w	a0,s2
    80003584:	00002097          	auipc	ra,0x2
    80003588:	e3c080e7          	jalr	-452(ra) # 800053c0 <_Z8printIntiii>
    8000358c:	00006517          	auipc	a0,0x6
    80003590:	f7c50513          	addi	a0,a0,-132 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003594:	00002097          	auipc	ra,0x2
    80003598:	c7c080e7          	jalr	-900(ra) # 80005210 <_Z11printStringPKc>
    8000359c:	0400006f          	j	800035dc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	d0850513          	addi	a0,a0,-760 # 800092a8 <CONSOLE_STATUS+0x298>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	c68080e7          	jalr	-920(ra) # 80005210 <_Z11printStringPKc>
    800035b0:	00000613          	li	a2,0
    800035b4:	00a00593          	li	a1,10
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	e04080e7          	jalr	-508(ra) # 800053c0 <_Z8printIntiii>
    800035c4:	00006517          	auipc	a0,0x6
    800035c8:	f4450513          	addi	a0,a0,-188 # 80009508 <CONSOLE_STATUS+0x4f8>
    800035cc:	00002097          	auipc	ra,0x2
    800035d0:	c44080e7          	jalr	-956(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035d4:	0014849b          	addiw	s1,s1,1
    800035d8:	0ff4f493          	andi	s1,s1,255
    800035dc:	00500793          	li	a5,5
    800035e0:	fc97f0e3          	bgeu	a5,s1,800035a0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800035e4:	00006517          	auipc	a0,0x6
    800035e8:	ca450513          	addi	a0,a0,-860 # 80009288 <CONSOLE_STATUS+0x278>
    800035ec:	00002097          	auipc	ra,0x2
    800035f0:	c24080e7          	jalr	-988(ra) # 80005210 <_Z11printStringPKc>
    finishedC = true;
    800035f4:	00100793          	li	a5,1
    800035f8:	00008717          	auipc	a4,0x8
    800035fc:	02f70123          	sb	a5,34(a4) # 8000b61a <_ZL9finishedC>
    thread_dispatch();
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	e18080e7          	jalr	-488(ra) # 80001418 <_Z15thread_dispatchv>
}
    80003608:	01813083          	ld	ra,24(sp)
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	00813483          	ld	s1,8(sp)
    80003614:	00013903          	ld	s2,0(sp)
    80003618:	02010113          	addi	sp,sp,32
    8000361c:	00008067          	ret

0000000080003620 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003620:	fe010113          	addi	sp,sp,-32
    80003624:	00113c23          	sd	ra,24(sp)
    80003628:	00813823          	sd	s0,16(sp)
    8000362c:	00913423          	sd	s1,8(sp)
    80003630:	01213023          	sd	s2,0(sp)
    80003634:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003638:	00a00493          	li	s1,10
    8000363c:	0400006f          	j	8000367c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003640:	00006517          	auipc	a0,0x6
    80003644:	c9850513          	addi	a0,a0,-872 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80003648:	00002097          	auipc	ra,0x2
    8000364c:	bc8080e7          	jalr	-1080(ra) # 80005210 <_Z11printStringPKc>
    80003650:	00000613          	li	a2,0
    80003654:	00a00593          	li	a1,10
    80003658:	00048513          	mv	a0,s1
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	d64080e7          	jalr	-668(ra) # 800053c0 <_Z8printIntiii>
    80003664:	00006517          	auipc	a0,0x6
    80003668:	ea450513          	addi	a0,a0,-348 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	ba4080e7          	jalr	-1116(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003674:	0014849b          	addiw	s1,s1,1
    80003678:	0ff4f493          	andi	s1,s1,255
    8000367c:	00c00793          	li	a5,12
    80003680:	fc97f0e3          	bgeu	a5,s1,80003640 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003684:	00006517          	auipc	a0,0x6
    80003688:	c5c50513          	addi	a0,a0,-932 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000368c:	00002097          	auipc	ra,0x2
    80003690:	b84080e7          	jalr	-1148(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003694:	00500313          	li	t1,5
    thread_dispatch();
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	d80080e7          	jalr	-640(ra) # 80001418 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036a0:	01000513          	li	a0,16
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	be8080e7          	jalr	-1048(ra) # 8000328c <_ZL9fibonaccim>
    800036ac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036b0:	00006517          	auipc	a0,0x6
    800036b4:	c4050513          	addi	a0,a0,-960 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800036b8:	00002097          	auipc	ra,0x2
    800036bc:	b58080e7          	jalr	-1192(ra) # 80005210 <_Z11printStringPKc>
    800036c0:	00000613          	li	a2,0
    800036c4:	00a00593          	li	a1,10
    800036c8:	0009051b          	sext.w	a0,s2
    800036cc:	00002097          	auipc	ra,0x2
    800036d0:	cf4080e7          	jalr	-780(ra) # 800053c0 <_Z8printIntiii>
    800036d4:	00006517          	auipc	a0,0x6
    800036d8:	e3450513          	addi	a0,a0,-460 # 80009508 <CONSOLE_STATUS+0x4f8>
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	b34080e7          	jalr	-1228(ra) # 80005210 <_Z11printStringPKc>
    800036e4:	0400006f          	j	80003724 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800036e8:	00006517          	auipc	a0,0x6
    800036ec:	bf050513          	addi	a0,a0,-1040 # 800092d8 <CONSOLE_STATUS+0x2c8>
    800036f0:	00002097          	auipc	ra,0x2
    800036f4:	b20080e7          	jalr	-1248(ra) # 80005210 <_Z11printStringPKc>
    800036f8:	00000613          	li	a2,0
    800036fc:	00a00593          	li	a1,10
    80003700:	00048513          	mv	a0,s1
    80003704:	00002097          	auipc	ra,0x2
    80003708:	cbc080e7          	jalr	-836(ra) # 800053c0 <_Z8printIntiii>
    8000370c:	00006517          	auipc	a0,0x6
    80003710:	dfc50513          	addi	a0,a0,-516 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003714:	00002097          	auipc	ra,0x2
    80003718:	afc080e7          	jalr	-1284(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000371c:	0014849b          	addiw	s1,s1,1
    80003720:	0ff4f493          	andi	s1,s1,255
    80003724:	00f00793          	li	a5,15
    80003728:	fc97f0e3          	bgeu	a5,s1,800036e8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000372c:	00006517          	auipc	a0,0x6
    80003730:	bd450513          	addi	a0,a0,-1068 # 80009300 <CONSOLE_STATUS+0x2f0>
    80003734:	00002097          	auipc	ra,0x2
    80003738:	adc080e7          	jalr	-1316(ra) # 80005210 <_Z11printStringPKc>
    finishedD = true;
    8000373c:	00100793          	li	a5,1
    80003740:	00008717          	auipc	a4,0x8
    80003744:	ecf70da3          	sb	a5,-293(a4) # 8000b61b <_ZL9finishedD>
    thread_dispatch();
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	cd0080e7          	jalr	-816(ra) # 80001418 <_Z15thread_dispatchv>
}
    80003750:	01813083          	ld	ra,24(sp)
    80003754:	01013403          	ld	s0,16(sp)
    80003758:	00813483          	ld	s1,8(sp)
    8000375c:	00013903          	ld	s2,0(sp)
    80003760:	02010113          	addi	sp,sp,32
    80003764:	00008067          	ret

0000000080003768 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003768:	fc010113          	addi	sp,sp,-64
    8000376c:	02113c23          	sd	ra,56(sp)
    80003770:	02813823          	sd	s0,48(sp)
    80003774:	02913423          	sd	s1,40(sp)
    80003778:	03213023          	sd	s2,32(sp)
    8000377c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003780:	02000513          	li	a0,32
    80003784:	ffffe097          	auipc	ra,0xffffe
    80003788:	5a4080e7          	jalr	1444(ra) # 80001d28 <_Znwm>
    8000378c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003790:	fffff097          	auipc	ra,0xfffff
    80003794:	bd8080e7          	jalr	-1064(ra) # 80002368 <_ZN6ThreadC1Ev>
    80003798:	00008797          	auipc	a5,0x8
    8000379c:	c1878793          	addi	a5,a5,-1000 # 8000b3b0 <_ZTV7WorkerA+0x10>
    800037a0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037a4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800037a8:	00006517          	auipc	a0,0x6
    800037ac:	b6850513          	addi	a0,a0,-1176 # 80009310 <CONSOLE_STATUS+0x300>
    800037b0:	00002097          	auipc	ra,0x2
    800037b4:	a60080e7          	jalr	-1440(ra) # 80005210 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800037b8:	02000513          	li	a0,32
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	56c080e7          	jalr	1388(ra) # 80001d28 <_Znwm>
    800037c4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	ba0080e7          	jalr	-1120(ra) # 80002368 <_ZN6ThreadC1Ev>
    800037d0:	00008797          	auipc	a5,0x8
    800037d4:	c0878793          	addi	a5,a5,-1016 # 8000b3d8 <_ZTV7WorkerB+0x10>
    800037d8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800037dc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800037e0:	00006517          	auipc	a0,0x6
    800037e4:	b4850513          	addi	a0,a0,-1208 # 80009328 <CONSOLE_STATUS+0x318>
    800037e8:	00002097          	auipc	ra,0x2
    800037ec:	a28080e7          	jalr	-1496(ra) # 80005210 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800037f0:	02000513          	li	a0,32
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	534080e7          	jalr	1332(ra) # 80001d28 <_Znwm>
    800037fc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	b68080e7          	jalr	-1176(ra) # 80002368 <_ZN6ThreadC1Ev>
    80003808:	00008797          	auipc	a5,0x8
    8000380c:	bf878793          	addi	a5,a5,-1032 # 8000b400 <_ZTV7WorkerC+0x10>
    80003810:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003814:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003818:	00006517          	auipc	a0,0x6
    8000381c:	b2850513          	addi	a0,a0,-1240 # 80009340 <CONSOLE_STATUS+0x330>
    80003820:	00002097          	auipc	ra,0x2
    80003824:	9f0080e7          	jalr	-1552(ra) # 80005210 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003828:	02000513          	li	a0,32
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	4fc080e7          	jalr	1276(ra) # 80001d28 <_Znwm>
    80003834:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	b30080e7          	jalr	-1232(ra) # 80002368 <_ZN6ThreadC1Ev>
    80003840:	00008797          	auipc	a5,0x8
    80003844:	be878793          	addi	a5,a5,-1048 # 8000b428 <_ZTV7WorkerD+0x10>
    80003848:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000384c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003850:	00006517          	auipc	a0,0x6
    80003854:	b0850513          	addi	a0,a0,-1272 # 80009358 <CONSOLE_STATUS+0x348>
    80003858:	00002097          	auipc	ra,0x2
    8000385c:	9b8080e7          	jalr	-1608(ra) # 80005210 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003860:	00000493          	li	s1,0
    80003864:	00300793          	li	a5,3
    80003868:	0297c663          	blt	a5,s1,80003894 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000386c:	00349793          	slli	a5,s1,0x3
    80003870:	fe040713          	addi	a4,s0,-32
    80003874:	00f707b3          	add	a5,a4,a5
    80003878:	fe07b503          	ld	a0,-32(a5)
    8000387c:	fffff097          	auipc	ra,0xfffff
    80003880:	b24080e7          	jalr	-1244(ra) # 800023a0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003884:	0014849b          	addiw	s1,s1,1
    80003888:	fddff06f          	j	80003864 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	a84080e7          	jalr	-1404(ra) # 80002310 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003894:	00008797          	auipc	a5,0x8
    80003898:	d847c783          	lbu	a5,-636(a5) # 8000b618 <_ZL9finishedA>
    8000389c:	fe0788e3          	beqz	a5,8000388c <_Z20Threads_CPP_API_testv+0x124>
    800038a0:	00008797          	auipc	a5,0x8
    800038a4:	d797c783          	lbu	a5,-647(a5) # 8000b619 <_ZL9finishedB>
    800038a8:	fe0782e3          	beqz	a5,8000388c <_Z20Threads_CPP_API_testv+0x124>
    800038ac:	00008797          	auipc	a5,0x8
    800038b0:	d6e7c783          	lbu	a5,-658(a5) # 8000b61a <_ZL9finishedC>
    800038b4:	fc078ce3          	beqz	a5,8000388c <_Z20Threads_CPP_API_testv+0x124>
    800038b8:	00008797          	auipc	a5,0x8
    800038bc:	d637c783          	lbu	a5,-669(a5) # 8000b61b <_ZL9finishedD>
    800038c0:	fc0786e3          	beqz	a5,8000388c <_Z20Threads_CPP_API_testv+0x124>
    800038c4:	fc040493          	addi	s1,s0,-64
    800038c8:	0080006f          	j	800038d0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800038cc:	00848493          	addi	s1,s1,8
    800038d0:	fe040793          	addi	a5,s0,-32
    800038d4:	08f48663          	beq	s1,a5,80003960 <_Z20Threads_CPP_API_testv+0x1f8>
    800038d8:	0004b503          	ld	a0,0(s1)
    800038dc:	fe0508e3          	beqz	a0,800038cc <_Z20Threads_CPP_API_testv+0x164>
    800038e0:	00053783          	ld	a5,0(a0)
    800038e4:	0087b783          	ld	a5,8(a5)
    800038e8:	000780e7          	jalr	a5
    800038ec:	fe1ff06f          	j	800038cc <_Z20Threads_CPP_API_testv+0x164>
    800038f0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800038f4:	00048513          	mv	a0,s1
    800038f8:	ffffe097          	auipc	ra,0xffffe
    800038fc:	530080e7          	jalr	1328(ra) # 80001e28 <_ZdlPv>
    80003900:	00090513          	mv	a0,s2
    80003904:	00009097          	auipc	ra,0x9
    80003908:	e24080e7          	jalr	-476(ra) # 8000c728 <_Unwind_Resume>
    8000390c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003910:	00048513          	mv	a0,s1
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	514080e7          	jalr	1300(ra) # 80001e28 <_ZdlPv>
    8000391c:	00090513          	mv	a0,s2
    80003920:	00009097          	auipc	ra,0x9
    80003924:	e08080e7          	jalr	-504(ra) # 8000c728 <_Unwind_Resume>
    80003928:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000392c:	00048513          	mv	a0,s1
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	4f8080e7          	jalr	1272(ra) # 80001e28 <_ZdlPv>
    80003938:	00090513          	mv	a0,s2
    8000393c:	00009097          	auipc	ra,0x9
    80003940:	dec080e7          	jalr	-532(ra) # 8000c728 <_Unwind_Resume>
    80003944:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003948:	00048513          	mv	a0,s1
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	4dc080e7          	jalr	1244(ra) # 80001e28 <_ZdlPv>
    80003954:	00090513          	mv	a0,s2
    80003958:	00009097          	auipc	ra,0x9
    8000395c:	dd0080e7          	jalr	-560(ra) # 8000c728 <_Unwind_Resume>
}
    80003960:	03813083          	ld	ra,56(sp)
    80003964:	03013403          	ld	s0,48(sp)
    80003968:	02813483          	ld	s1,40(sp)
    8000396c:	02013903          	ld	s2,32(sp)
    80003970:	04010113          	addi	sp,sp,64
    80003974:	00008067          	ret

0000000080003978 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00113423          	sd	ra,8(sp)
    80003980:	00813023          	sd	s0,0(sp)
    80003984:	01010413          	addi	s0,sp,16
    80003988:	00008797          	auipc	a5,0x8
    8000398c:	a2878793          	addi	a5,a5,-1496 # 8000b3b0 <_ZTV7WorkerA+0x10>
    80003990:	00f53023          	sd	a5,0(a0)
    80003994:	fffff097          	auipc	ra,0xfffff
    80003998:	818080e7          	jalr	-2024(ra) # 800021ac <_ZN6ThreadD1Ev>
    8000399c:	00813083          	ld	ra,8(sp)
    800039a0:	00013403          	ld	s0,0(sp)
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00008067          	ret

00000000800039ac <_ZN7WorkerAD0Ev>:
    800039ac:	fe010113          	addi	sp,sp,-32
    800039b0:	00113c23          	sd	ra,24(sp)
    800039b4:	00813823          	sd	s0,16(sp)
    800039b8:	00913423          	sd	s1,8(sp)
    800039bc:	02010413          	addi	s0,sp,32
    800039c0:	00050493          	mv	s1,a0
    800039c4:	00008797          	auipc	a5,0x8
    800039c8:	9ec78793          	addi	a5,a5,-1556 # 8000b3b0 <_ZTV7WorkerA+0x10>
    800039cc:	00f53023          	sd	a5,0(a0)
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	7dc080e7          	jalr	2012(ra) # 800021ac <_ZN6ThreadD1Ev>
    800039d8:	00048513          	mv	a0,s1
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	44c080e7          	jalr	1100(ra) # 80001e28 <_ZdlPv>
    800039e4:	01813083          	ld	ra,24(sp)
    800039e8:	01013403          	ld	s0,16(sp)
    800039ec:	00813483          	ld	s1,8(sp)
    800039f0:	02010113          	addi	sp,sp,32
    800039f4:	00008067          	ret

00000000800039f8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800039f8:	ff010113          	addi	sp,sp,-16
    800039fc:	00113423          	sd	ra,8(sp)
    80003a00:	00813023          	sd	s0,0(sp)
    80003a04:	01010413          	addi	s0,sp,16
    80003a08:	00008797          	auipc	a5,0x8
    80003a0c:	9d078793          	addi	a5,a5,-1584 # 8000b3d8 <_ZTV7WorkerB+0x10>
    80003a10:	00f53023          	sd	a5,0(a0)
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	798080e7          	jalr	1944(ra) # 800021ac <_ZN6ThreadD1Ev>
    80003a1c:	00813083          	ld	ra,8(sp)
    80003a20:	00013403          	ld	s0,0(sp)
    80003a24:	01010113          	addi	sp,sp,16
    80003a28:	00008067          	ret

0000000080003a2c <_ZN7WorkerBD0Ev>:
    80003a2c:	fe010113          	addi	sp,sp,-32
    80003a30:	00113c23          	sd	ra,24(sp)
    80003a34:	00813823          	sd	s0,16(sp)
    80003a38:	00913423          	sd	s1,8(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    80003a40:	00050493          	mv	s1,a0
    80003a44:	00008797          	auipc	a5,0x8
    80003a48:	99478793          	addi	a5,a5,-1644 # 8000b3d8 <_ZTV7WorkerB+0x10>
    80003a4c:	00f53023          	sd	a5,0(a0)
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	75c080e7          	jalr	1884(ra) # 800021ac <_ZN6ThreadD1Ev>
    80003a58:	00048513          	mv	a0,s1
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	3cc080e7          	jalr	972(ra) # 80001e28 <_ZdlPv>
    80003a64:	01813083          	ld	ra,24(sp)
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	00813483          	ld	s1,8(sp)
    80003a70:	02010113          	addi	sp,sp,32
    80003a74:	00008067          	ret

0000000080003a78 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00113423          	sd	ra,8(sp)
    80003a80:	00813023          	sd	s0,0(sp)
    80003a84:	01010413          	addi	s0,sp,16
    80003a88:	00008797          	auipc	a5,0x8
    80003a8c:	97878793          	addi	a5,a5,-1672 # 8000b400 <_ZTV7WorkerC+0x10>
    80003a90:	00f53023          	sd	a5,0(a0)
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	718080e7          	jalr	1816(ra) # 800021ac <_ZN6ThreadD1Ev>
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret

0000000080003aac <_ZN7WorkerCD0Ev>:
    80003aac:	fe010113          	addi	sp,sp,-32
    80003ab0:	00113c23          	sd	ra,24(sp)
    80003ab4:	00813823          	sd	s0,16(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	02010413          	addi	s0,sp,32
    80003ac0:	00050493          	mv	s1,a0
    80003ac4:	00008797          	auipc	a5,0x8
    80003ac8:	93c78793          	addi	a5,a5,-1732 # 8000b400 <_ZTV7WorkerC+0x10>
    80003acc:	00f53023          	sd	a5,0(a0)
    80003ad0:	ffffe097          	auipc	ra,0xffffe
    80003ad4:	6dc080e7          	jalr	1756(ra) # 800021ac <_ZN6ThreadD1Ev>
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	34c080e7          	jalr	844(ra) # 80001e28 <_ZdlPv>
    80003ae4:	01813083          	ld	ra,24(sp)
    80003ae8:	01013403          	ld	s0,16(sp)
    80003aec:	00813483          	ld	s1,8(sp)
    80003af0:	02010113          	addi	sp,sp,32
    80003af4:	00008067          	ret

0000000080003af8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003af8:	ff010113          	addi	sp,sp,-16
    80003afc:	00113423          	sd	ra,8(sp)
    80003b00:	00813023          	sd	s0,0(sp)
    80003b04:	01010413          	addi	s0,sp,16
    80003b08:	00008797          	auipc	a5,0x8
    80003b0c:	92078793          	addi	a5,a5,-1760 # 8000b428 <_ZTV7WorkerD+0x10>
    80003b10:	00f53023          	sd	a5,0(a0)
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	698080e7          	jalr	1688(ra) # 800021ac <_ZN6ThreadD1Ev>
    80003b1c:	00813083          	ld	ra,8(sp)
    80003b20:	00013403          	ld	s0,0(sp)
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret

0000000080003b2c <_ZN7WorkerDD0Ev>:
    80003b2c:	fe010113          	addi	sp,sp,-32
    80003b30:	00113c23          	sd	ra,24(sp)
    80003b34:	00813823          	sd	s0,16(sp)
    80003b38:	00913423          	sd	s1,8(sp)
    80003b3c:	02010413          	addi	s0,sp,32
    80003b40:	00050493          	mv	s1,a0
    80003b44:	00008797          	auipc	a5,0x8
    80003b48:	8e478793          	addi	a5,a5,-1820 # 8000b428 <_ZTV7WorkerD+0x10>
    80003b4c:	00f53023          	sd	a5,0(a0)
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	65c080e7          	jalr	1628(ra) # 800021ac <_ZN6ThreadD1Ev>
    80003b58:	00048513          	mv	a0,s1
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	2cc080e7          	jalr	716(ra) # 80001e28 <_ZdlPv>
    80003b64:	01813083          	ld	ra,24(sp)
    80003b68:	01013403          	ld	s0,16(sp)
    80003b6c:	00813483          	ld	s1,8(sp)
    80003b70:	02010113          	addi	sp,sp,32
    80003b74:	00008067          	ret

0000000080003b78 <_ZN7WorkerA3runEv>:
    void run() override {
    80003b78:	ff010113          	addi	sp,sp,-16
    80003b7c:	00113423          	sd	ra,8(sp)
    80003b80:	00813023          	sd	s0,0(sp)
    80003b84:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003b88:	00000593          	li	a1,0
    80003b8c:	fffff097          	auipc	ra,0xfffff
    80003b90:	774080e7          	jalr	1908(ra) # 80003300 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003b94:	00813083          	ld	ra,8(sp)
    80003b98:	00013403          	ld	s0,0(sp)
    80003b9c:	01010113          	addi	sp,sp,16
    80003ba0:	00008067          	ret

0000000080003ba4 <_ZN7WorkerB3runEv>:
    void run() override {
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00113423          	sd	ra,8(sp)
    80003bac:	00813023          	sd	s0,0(sp)
    80003bb0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003bb4:	00000593          	li	a1,0
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	814080e7          	jalr	-2028(ra) # 800033cc <_ZN7WorkerB11workerBodyBEPv>
    }
    80003bc0:	00813083          	ld	ra,8(sp)
    80003bc4:	00013403          	ld	s0,0(sp)
    80003bc8:	01010113          	addi	sp,sp,16
    80003bcc:	00008067          	ret

0000000080003bd0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00113423          	sd	ra,8(sp)
    80003bd8:	00813023          	sd	s0,0(sp)
    80003bdc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003be0:	00000593          	li	a1,0
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	8bc080e7          	jalr	-1860(ra) # 800034a0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003bec:	00813083          	ld	ra,8(sp)
    80003bf0:	00013403          	ld	s0,0(sp)
    80003bf4:	01010113          	addi	sp,sp,16
    80003bf8:	00008067          	ret

0000000080003bfc <_ZN7WorkerD3runEv>:
    void run() override {
    80003bfc:	ff010113          	addi	sp,sp,-16
    80003c00:	00113423          	sd	ra,8(sp)
    80003c04:	00813023          	sd	s0,0(sp)
    80003c08:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c0c:	00000593          	li	a1,0
    80003c10:	00000097          	auipc	ra,0x0
    80003c14:	a10080e7          	jalr	-1520(ra) # 80003620 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c18:	00813083          	ld	ra,8(sp)
    80003c1c:	00013403          	ld	s0,0(sp)
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret

0000000080003c28 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c28:	f8010113          	addi	sp,sp,-128
    80003c2c:	06113c23          	sd	ra,120(sp)
    80003c30:	06813823          	sd	s0,112(sp)
    80003c34:	06913423          	sd	s1,104(sp)
    80003c38:	07213023          	sd	s2,96(sp)
    80003c3c:	05313c23          	sd	s3,88(sp)
    80003c40:	05413823          	sd	s4,80(sp)
    80003c44:	05513423          	sd	s5,72(sp)
    80003c48:	05613023          	sd	s6,64(sp)
    80003c4c:	03713c23          	sd	s7,56(sp)
    80003c50:	03813823          	sd	s8,48(sp)
    80003c54:	03913423          	sd	s9,40(sp)
    80003c58:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c5c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c60:	00005517          	auipc	a0,0x5
    80003c64:	54050513          	addi	a0,a0,1344 # 800091a0 <CONSOLE_STATUS+0x190>
    80003c68:	00001097          	auipc	ra,0x1
    80003c6c:	5a8080e7          	jalr	1448(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80003c70:	01e00593          	li	a1,30
    80003c74:	f8040493          	addi	s1,s0,-128
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	61c080e7          	jalr	1564(ra) # 80005298 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00001097          	auipc	ra,0x1
    80003c8c:	6e8080e7          	jalr	1768(ra) # 80005370 <_Z11stringToIntPKc>
    80003c90:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003c94:	00005517          	auipc	a0,0x5
    80003c98:	52c50513          	addi	a0,a0,1324 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003c9c:	00001097          	auipc	ra,0x1
    80003ca0:	574080e7          	jalr	1396(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80003ca4:	01e00593          	li	a1,30
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	5ec080e7          	jalr	1516(ra) # 80005298 <_Z9getStringPci>
    n = stringToInt(input);
    80003cb4:	00048513          	mv	a0,s1
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	6b8080e7          	jalr	1720(ra) # 80005370 <_Z11stringToIntPKc>
    80003cc0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003cc4:	00005517          	auipc	a0,0x5
    80003cc8:	51c50513          	addi	a0,a0,1308 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	544080e7          	jalr	1348(ra) # 80005210 <_Z11printStringPKc>
    printInt(threadNum);
    80003cd4:	00000613          	li	a2,0
    80003cd8:	00a00593          	li	a1,10
    80003cdc:	00098513          	mv	a0,s3
    80003ce0:	00001097          	auipc	ra,0x1
    80003ce4:	6e0080e7          	jalr	1760(ra) # 800053c0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003ce8:	00005517          	auipc	a0,0x5
    80003cec:	51050513          	addi	a0,a0,1296 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	520080e7          	jalr	1312(ra) # 80005210 <_Z11printStringPKc>
    printInt(n);
    80003cf8:	00000613          	li	a2,0
    80003cfc:	00a00593          	li	a1,10
    80003d00:	00048513          	mv	a0,s1
    80003d04:	00001097          	auipc	ra,0x1
    80003d08:	6bc080e7          	jalr	1724(ra) # 800053c0 <_Z8printIntiii>
    printString(".\n");
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	50450513          	addi	a0,a0,1284 # 80009210 <CONSOLE_STATUS+0x200>
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	4fc080e7          	jalr	1276(ra) # 80005210 <_Z11printStringPKc>
    if (threadNum > n) {
    80003d1c:	0334c463          	blt	s1,s3,80003d44 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d20:	03305c63          	blez	s3,80003d58 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d24:	03800513          	li	a0,56
    80003d28:	ffffe097          	auipc	ra,0xffffe
    80003d2c:	000080e7          	jalr	ra # 80001d28 <_Znwm>
    80003d30:	00050a93          	mv	s5,a0
    80003d34:	00048593          	mv	a1,s1
    80003d38:	00001097          	auipc	ra,0x1
    80003d3c:	7a8080e7          	jalr	1960(ra) # 800054e0 <_ZN9BufferCPPC1Ei>
    80003d40:	0300006f          	j	80003d70 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d44:	00005517          	auipc	a0,0x5
    80003d48:	4d450513          	addi	a0,a0,1236 # 80009218 <CONSOLE_STATUS+0x208>
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	4c4080e7          	jalr	1220(ra) # 80005210 <_Z11printStringPKc>
        return;
    80003d54:	0140006f          	j	80003d68 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d58:	00005517          	auipc	a0,0x5
    80003d5c:	50050513          	addi	a0,a0,1280 # 80009258 <CONSOLE_STATUS+0x248>
    80003d60:	00001097          	auipc	ra,0x1
    80003d64:	4b0080e7          	jalr	1200(ra) # 80005210 <_Z11printStringPKc>
        return;
    80003d68:	000c0113          	mv	sp,s8
    80003d6c:	2140006f          	j	80003f80 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d70:	01000513          	li	a0,16
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	fb4080e7          	jalr	-76(ra) # 80001d28 <_Znwm>
    80003d7c:	00050913          	mv	s2,a0
    80003d80:	00000593          	li	a1,0
    80003d84:	ffffe097          	auipc	ra,0xffffe
    80003d88:	678080e7          	jalr	1656(ra) # 800023fc <_ZN9SemaphoreC1Ej>
    80003d8c:	00008797          	auipc	a5,0x8
    80003d90:	8927be23          	sd	s2,-1892(a5) # 8000b628 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003d94:	00399793          	slli	a5,s3,0x3
    80003d98:	00f78793          	addi	a5,a5,15
    80003d9c:	ff07f793          	andi	a5,a5,-16
    80003da0:	40f10133          	sub	sp,sp,a5
    80003da4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003da8:	0019871b          	addiw	a4,s3,1
    80003dac:	00171793          	slli	a5,a4,0x1
    80003db0:	00e787b3          	add	a5,a5,a4
    80003db4:	00379793          	slli	a5,a5,0x3
    80003db8:	00f78793          	addi	a5,a5,15
    80003dbc:	ff07f793          	andi	a5,a5,-16
    80003dc0:	40f10133          	sub	sp,sp,a5
    80003dc4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003dc8:	00199493          	slli	s1,s3,0x1
    80003dcc:	013484b3          	add	s1,s1,s3
    80003dd0:	00349493          	slli	s1,s1,0x3
    80003dd4:	009b04b3          	add	s1,s6,s1
    80003dd8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003ddc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003de0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003de4:	02800513          	li	a0,40
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	f40080e7          	jalr	-192(ra) # 80001d28 <_Znwm>
    80003df0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	574080e7          	jalr	1396(ra) # 80002368 <_ZN6ThreadC1Ev>
    80003dfc:	00007797          	auipc	a5,0x7
    80003e00:	6a478793          	addi	a5,a5,1700 # 8000b4a0 <_ZTV8Consumer+0x10>
    80003e04:	00fbb023          	sd	a5,0(s7)
    80003e08:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e0c:	000b8513          	mv	a0,s7
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	590080e7          	jalr	1424(ra) # 800023a0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e18:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e1c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e20:	00008797          	auipc	a5,0x8
    80003e24:	8087b783          	ld	a5,-2040(a5) # 8000b628 <_ZL10waitForAll>
    80003e28:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e2c:	02800513          	li	a0,40
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	ef8080e7          	jalr	-264(ra) # 80001d28 <_Znwm>
    80003e38:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e3c:	ffffe097          	auipc	ra,0xffffe
    80003e40:	52c080e7          	jalr	1324(ra) # 80002368 <_ZN6ThreadC1Ev>
    80003e44:	00007797          	auipc	a5,0x7
    80003e48:	60c78793          	addi	a5,a5,1548 # 8000b450 <_ZTV16ProducerKeyborad+0x10>
    80003e4c:	00f4b023          	sd	a5,0(s1)
    80003e50:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e54:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e58:	00048513          	mv	a0,s1
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	544080e7          	jalr	1348(ra) # 800023a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e64:	00100913          	li	s2,1
    80003e68:	0300006f          	j	80003e98 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e6c:	00007797          	auipc	a5,0x7
    80003e70:	60c78793          	addi	a5,a5,1548 # 8000b478 <_ZTV8Producer+0x10>
    80003e74:	00fcb023          	sd	a5,0(s9)
    80003e78:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e7c:	00391793          	slli	a5,s2,0x3
    80003e80:	00fa07b3          	add	a5,s4,a5
    80003e84:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003e88:	000c8513          	mv	a0,s9
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	514080e7          	jalr	1300(ra) # 800023a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e94:	0019091b          	addiw	s2,s2,1
    80003e98:	05395263          	bge	s2,s3,80003edc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003e9c:	00191493          	slli	s1,s2,0x1
    80003ea0:	012484b3          	add	s1,s1,s2
    80003ea4:	00349493          	slli	s1,s1,0x3
    80003ea8:	009b04b3          	add	s1,s6,s1
    80003eac:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003eb0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003eb4:	00007797          	auipc	a5,0x7
    80003eb8:	7747b783          	ld	a5,1908(a5) # 8000b628 <_ZL10waitForAll>
    80003ebc:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003ec0:	02800513          	li	a0,40
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	e64080e7          	jalr	-412(ra) # 80001d28 <_Znwm>
    80003ecc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	498080e7          	jalr	1176(ra) # 80002368 <_ZN6ThreadC1Ev>
    80003ed8:	f95ff06f          	j	80003e6c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003edc:	ffffe097          	auipc	ra,0xffffe
    80003ee0:	434080e7          	jalr	1076(ra) # 80002310 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ee4:	00000493          	li	s1,0
    80003ee8:	0099ce63          	blt	s3,s1,80003f04 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003eec:	00007517          	auipc	a0,0x7
    80003ef0:	73c53503          	ld	a0,1852(a0) # 8000b628 <_ZL10waitForAll>
    80003ef4:	ffffe097          	auipc	ra,0xffffe
    80003ef8:	540080e7          	jalr	1344(ra) # 80002434 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003efc:	0014849b          	addiw	s1,s1,1
    80003f00:	fe9ff06f          	j	80003ee8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f04:	00007517          	auipc	a0,0x7
    80003f08:	72453503          	ld	a0,1828(a0) # 8000b628 <_ZL10waitForAll>
    80003f0c:	00050863          	beqz	a0,80003f1c <_Z20testConsumerProducerv+0x2f4>
    80003f10:	00053783          	ld	a5,0(a0)
    80003f14:	0087b783          	ld	a5,8(a5)
    80003f18:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f1c:	00000493          	li	s1,0
    80003f20:	0080006f          	j	80003f28 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f24:	0014849b          	addiw	s1,s1,1
    80003f28:	0334d263          	bge	s1,s3,80003f4c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f2c:	00349793          	slli	a5,s1,0x3
    80003f30:	00fa07b3          	add	a5,s4,a5
    80003f34:	0007b503          	ld	a0,0(a5)
    80003f38:	fe0506e3          	beqz	a0,80003f24 <_Z20testConsumerProducerv+0x2fc>
    80003f3c:	00053783          	ld	a5,0(a0)
    80003f40:	0087b783          	ld	a5,8(a5)
    80003f44:	000780e7          	jalr	a5
    80003f48:	fddff06f          	j	80003f24 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f4c:	000b8a63          	beqz	s7,80003f60 <_Z20testConsumerProducerv+0x338>
    80003f50:	000bb783          	ld	a5,0(s7)
    80003f54:	0087b783          	ld	a5,8(a5)
    80003f58:	000b8513          	mv	a0,s7
    80003f5c:	000780e7          	jalr	a5
    delete buffer;
    80003f60:	000a8e63          	beqz	s5,80003f7c <_Z20testConsumerProducerv+0x354>
    80003f64:	000a8513          	mv	a0,s5
    80003f68:	00002097          	auipc	ra,0x2
    80003f6c:	870080e7          	jalr	-1936(ra) # 800057d8 <_ZN9BufferCPPD1Ev>
    80003f70:	000a8513          	mv	a0,s5
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	eb4080e7          	jalr	-332(ra) # 80001e28 <_ZdlPv>
    80003f7c:	000c0113          	mv	sp,s8
}
    80003f80:	f8040113          	addi	sp,s0,-128
    80003f84:	07813083          	ld	ra,120(sp)
    80003f88:	07013403          	ld	s0,112(sp)
    80003f8c:	06813483          	ld	s1,104(sp)
    80003f90:	06013903          	ld	s2,96(sp)
    80003f94:	05813983          	ld	s3,88(sp)
    80003f98:	05013a03          	ld	s4,80(sp)
    80003f9c:	04813a83          	ld	s5,72(sp)
    80003fa0:	04013b03          	ld	s6,64(sp)
    80003fa4:	03813b83          	ld	s7,56(sp)
    80003fa8:	03013c03          	ld	s8,48(sp)
    80003fac:	02813c83          	ld	s9,40(sp)
    80003fb0:	08010113          	addi	sp,sp,128
    80003fb4:	00008067          	ret
    80003fb8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003fbc:	000a8513          	mv	a0,s5
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	e68080e7          	jalr	-408(ra) # 80001e28 <_ZdlPv>
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	00008097          	auipc	ra,0x8
    80003fd0:	75c080e7          	jalr	1884(ra) # 8000c728 <_Unwind_Resume>
    80003fd4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003fd8:	00090513          	mv	a0,s2
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	e4c080e7          	jalr	-436(ra) # 80001e28 <_ZdlPv>
    80003fe4:	00048513          	mv	a0,s1
    80003fe8:	00008097          	auipc	ra,0x8
    80003fec:	740080e7          	jalr	1856(ra) # 8000c728 <_Unwind_Resume>
    80003ff0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ff4:	000b8513          	mv	a0,s7
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	e30080e7          	jalr	-464(ra) # 80001e28 <_ZdlPv>
    80004000:	00048513          	mv	a0,s1
    80004004:	00008097          	auipc	ra,0x8
    80004008:	724080e7          	jalr	1828(ra) # 8000c728 <_Unwind_Resume>
    8000400c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004010:	00048513          	mv	a0,s1
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	e14080e7          	jalr	-492(ra) # 80001e28 <_ZdlPv>
    8000401c:	00090513          	mv	a0,s2
    80004020:	00008097          	auipc	ra,0x8
    80004024:	708080e7          	jalr	1800(ra) # 8000c728 <_Unwind_Resume>
    80004028:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000402c:	000c8513          	mv	a0,s9
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	df8080e7          	jalr	-520(ra) # 80001e28 <_ZdlPv>
    80004038:	00048513          	mv	a0,s1
    8000403c:	00008097          	auipc	ra,0x8
    80004040:	6ec080e7          	jalr	1772(ra) # 8000c728 <_Unwind_Resume>

0000000080004044 <_ZN8Consumer3runEv>:
    void run() override {
    80004044:	fd010113          	addi	sp,sp,-48
    80004048:	02113423          	sd	ra,40(sp)
    8000404c:	02813023          	sd	s0,32(sp)
    80004050:	00913c23          	sd	s1,24(sp)
    80004054:	01213823          	sd	s2,16(sp)
    80004058:	01313423          	sd	s3,8(sp)
    8000405c:	03010413          	addi	s0,sp,48
    80004060:	00050913          	mv	s2,a0
        int i = 0;
    80004064:	00000993          	li	s3,0
    80004068:	0100006f          	j	80004078 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000406c:	00a00513          	li	a0,10
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	41c080e7          	jalr	1052(ra) # 8000248c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004078:	00007797          	auipc	a5,0x7
    8000407c:	5a87a783          	lw	a5,1448(a5) # 8000b620 <_ZL9threadEnd>
    80004080:	04079a63          	bnez	a5,800040d4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004084:	02093783          	ld	a5,32(s2)
    80004088:	0087b503          	ld	a0,8(a5)
    8000408c:	00001097          	auipc	ra,0x1
    80004090:	638080e7          	jalr	1592(ra) # 800056c4 <_ZN9BufferCPP3getEv>
            i++;
    80004094:	0019849b          	addiw	s1,s3,1
    80004098:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000409c:	0ff57513          	andi	a0,a0,255
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	3ec080e7          	jalr	1004(ra) # 8000248c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800040a8:	05000793          	li	a5,80
    800040ac:	02f4e4bb          	remw	s1,s1,a5
    800040b0:	fc0494e3          	bnez	s1,80004078 <_ZN8Consumer3runEv+0x34>
    800040b4:	fb9ff06f          	j	8000406c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800040b8:	02093783          	ld	a5,32(s2)
    800040bc:	0087b503          	ld	a0,8(a5)
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	604080e7          	jalr	1540(ra) # 800056c4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800040c8:	0ff57513          	andi	a0,a0,255
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	3c0080e7          	jalr	960(ra) # 8000248c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800040d4:	02093783          	ld	a5,32(s2)
    800040d8:	0087b503          	ld	a0,8(a5)
    800040dc:	00001097          	auipc	ra,0x1
    800040e0:	674080e7          	jalr	1652(ra) # 80005750 <_ZN9BufferCPP6getCntEv>
    800040e4:	fca04ae3          	bgtz	a0,800040b8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800040e8:	02093783          	ld	a5,32(s2)
    800040ec:	0107b503          	ld	a0,16(a5)
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	370080e7          	jalr	880(ra) # 80002460 <_ZN9Semaphore6signalEv>
    }
    800040f8:	02813083          	ld	ra,40(sp)
    800040fc:	02013403          	ld	s0,32(sp)
    80004100:	01813483          	ld	s1,24(sp)
    80004104:	01013903          	ld	s2,16(sp)
    80004108:	00813983          	ld	s3,8(sp)
    8000410c:	03010113          	addi	sp,sp,48
    80004110:	00008067          	ret

0000000080004114 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004114:	ff010113          	addi	sp,sp,-16
    80004118:	00113423          	sd	ra,8(sp)
    8000411c:	00813023          	sd	s0,0(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	00007797          	auipc	a5,0x7
    80004128:	37c78793          	addi	a5,a5,892 # 8000b4a0 <_ZTV8Consumer+0x10>
    8000412c:	00f53023          	sd	a5,0(a0)
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	07c080e7          	jalr	124(ra) # 800021ac <_ZN6ThreadD1Ev>
    80004138:	00813083          	ld	ra,8(sp)
    8000413c:	00013403          	ld	s0,0(sp)
    80004140:	01010113          	addi	sp,sp,16
    80004144:	00008067          	ret

0000000080004148 <_ZN8ConsumerD0Ev>:
    80004148:	fe010113          	addi	sp,sp,-32
    8000414c:	00113c23          	sd	ra,24(sp)
    80004150:	00813823          	sd	s0,16(sp)
    80004154:	00913423          	sd	s1,8(sp)
    80004158:	02010413          	addi	s0,sp,32
    8000415c:	00050493          	mv	s1,a0
    80004160:	00007797          	auipc	a5,0x7
    80004164:	34078793          	addi	a5,a5,832 # 8000b4a0 <_ZTV8Consumer+0x10>
    80004168:	00f53023          	sd	a5,0(a0)
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	040080e7          	jalr	64(ra) # 800021ac <_ZN6ThreadD1Ev>
    80004174:	00048513          	mv	a0,s1
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	cb0080e7          	jalr	-848(ra) # 80001e28 <_ZdlPv>
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	00813483          	ld	s1,8(sp)
    8000418c:	02010113          	addi	sp,sp,32
    80004190:	00008067          	ret

0000000080004194 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004194:	ff010113          	addi	sp,sp,-16
    80004198:	00113423          	sd	ra,8(sp)
    8000419c:	00813023          	sd	s0,0(sp)
    800041a0:	01010413          	addi	s0,sp,16
    800041a4:	00007797          	auipc	a5,0x7
    800041a8:	2ac78793          	addi	a5,a5,684 # 8000b450 <_ZTV16ProducerKeyborad+0x10>
    800041ac:	00f53023          	sd	a5,0(a0)
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	ffc080e7          	jalr	-4(ra) # 800021ac <_ZN6ThreadD1Ev>
    800041b8:	00813083          	ld	ra,8(sp)
    800041bc:	00013403          	ld	s0,0(sp)
    800041c0:	01010113          	addi	sp,sp,16
    800041c4:	00008067          	ret

00000000800041c8 <_ZN16ProducerKeyboradD0Ev>:
    800041c8:	fe010113          	addi	sp,sp,-32
    800041cc:	00113c23          	sd	ra,24(sp)
    800041d0:	00813823          	sd	s0,16(sp)
    800041d4:	00913423          	sd	s1,8(sp)
    800041d8:	02010413          	addi	s0,sp,32
    800041dc:	00050493          	mv	s1,a0
    800041e0:	00007797          	auipc	a5,0x7
    800041e4:	27078793          	addi	a5,a5,624 # 8000b450 <_ZTV16ProducerKeyborad+0x10>
    800041e8:	00f53023          	sd	a5,0(a0)
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	fc0080e7          	jalr	-64(ra) # 800021ac <_ZN6ThreadD1Ev>
    800041f4:	00048513          	mv	a0,s1
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	c30080e7          	jalr	-976(ra) # 80001e28 <_ZdlPv>
    80004200:	01813083          	ld	ra,24(sp)
    80004204:	01013403          	ld	s0,16(sp)
    80004208:	00813483          	ld	s1,8(sp)
    8000420c:	02010113          	addi	sp,sp,32
    80004210:	00008067          	ret

0000000080004214 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004214:	ff010113          	addi	sp,sp,-16
    80004218:	00113423          	sd	ra,8(sp)
    8000421c:	00813023          	sd	s0,0(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	00007797          	auipc	a5,0x7
    80004228:	25478793          	addi	a5,a5,596 # 8000b478 <_ZTV8Producer+0x10>
    8000422c:	00f53023          	sd	a5,0(a0)
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	f7c080e7          	jalr	-132(ra) # 800021ac <_ZN6ThreadD1Ev>
    80004238:	00813083          	ld	ra,8(sp)
    8000423c:	00013403          	ld	s0,0(sp)
    80004240:	01010113          	addi	sp,sp,16
    80004244:	00008067          	ret

0000000080004248 <_ZN8ProducerD0Ev>:
    80004248:	fe010113          	addi	sp,sp,-32
    8000424c:	00113c23          	sd	ra,24(sp)
    80004250:	00813823          	sd	s0,16(sp)
    80004254:	00913423          	sd	s1,8(sp)
    80004258:	02010413          	addi	s0,sp,32
    8000425c:	00050493          	mv	s1,a0
    80004260:	00007797          	auipc	a5,0x7
    80004264:	21878793          	addi	a5,a5,536 # 8000b478 <_ZTV8Producer+0x10>
    80004268:	00f53023          	sd	a5,0(a0)
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	f40080e7          	jalr	-192(ra) # 800021ac <_ZN6ThreadD1Ev>
    80004274:	00048513          	mv	a0,s1
    80004278:	ffffe097          	auipc	ra,0xffffe
    8000427c:	bb0080e7          	jalr	-1104(ra) # 80001e28 <_ZdlPv>
    80004280:	01813083          	ld	ra,24(sp)
    80004284:	01013403          	ld	s0,16(sp)
    80004288:	00813483          	ld	s1,8(sp)
    8000428c:	02010113          	addi	sp,sp,32
    80004290:	00008067          	ret

0000000080004294 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004294:	fe010113          	addi	sp,sp,-32
    80004298:	00113c23          	sd	ra,24(sp)
    8000429c:	00813823          	sd	s0,16(sp)
    800042a0:	00913423          	sd	s1,8(sp)
    800042a4:	02010413          	addi	s0,sp,32
    800042a8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800042ac:	ffffd097          	auipc	ra,0xffffd
    800042b0:	274080e7          	jalr	628(ra) # 80001520 <_Z4getcv>
    800042b4:	0005059b          	sext.w	a1,a0
    800042b8:	01b00793          	li	a5,27
    800042bc:	00f58c63          	beq	a1,a5,800042d4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800042c0:	0204b783          	ld	a5,32(s1)
    800042c4:	0087b503          	ld	a0,8(a5)
    800042c8:	00001097          	auipc	ra,0x1
    800042cc:	36c080e7          	jalr	876(ra) # 80005634 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800042d0:	fddff06f          	j	800042ac <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800042d4:	00100793          	li	a5,1
    800042d8:	00007717          	auipc	a4,0x7
    800042dc:	34f72423          	sw	a5,840(a4) # 8000b620 <_ZL9threadEnd>
        td->buffer->put('!');
    800042e0:	0204b783          	ld	a5,32(s1)
    800042e4:	02100593          	li	a1,33
    800042e8:	0087b503          	ld	a0,8(a5)
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	348080e7          	jalr	840(ra) # 80005634 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800042f4:	0204b783          	ld	a5,32(s1)
    800042f8:	0107b503          	ld	a0,16(a5)
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	164080e7          	jalr	356(ra) # 80002460 <_ZN9Semaphore6signalEv>
    }
    80004304:	01813083          	ld	ra,24(sp)
    80004308:	01013403          	ld	s0,16(sp)
    8000430c:	00813483          	ld	s1,8(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret

0000000080004318 <_ZN8Producer3runEv>:
    void run() override {
    80004318:	fe010113          	addi	sp,sp,-32
    8000431c:	00113c23          	sd	ra,24(sp)
    80004320:	00813823          	sd	s0,16(sp)
    80004324:	00913423          	sd	s1,8(sp)
    80004328:	01213023          	sd	s2,0(sp)
    8000432c:	02010413          	addi	s0,sp,32
    80004330:	00050493          	mv	s1,a0
        int i = 0;
    80004334:	00000913          	li	s2,0
        while (!threadEnd) {
    80004338:	00007797          	auipc	a5,0x7
    8000433c:	2e87a783          	lw	a5,744(a5) # 8000b620 <_ZL9threadEnd>
    80004340:	04079263          	bnez	a5,80004384 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004344:	0204b783          	ld	a5,32(s1)
    80004348:	0007a583          	lw	a1,0(a5)
    8000434c:	0305859b          	addiw	a1,a1,48
    80004350:	0087b503          	ld	a0,8(a5)
    80004354:	00001097          	auipc	ra,0x1
    80004358:	2e0080e7          	jalr	736(ra) # 80005634 <_ZN9BufferCPP3putEi>
            i++;
    8000435c:	0019071b          	addiw	a4,s2,1
    80004360:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004364:	0204b783          	ld	a5,32(s1)
    80004368:	0007a783          	lw	a5,0(a5)
    8000436c:	00e787bb          	addw	a5,a5,a4
    80004370:	00500513          	li	a0,5
    80004374:	02a7e53b          	remw	a0,a5,a0
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	05c080e7          	jalr	92(ra) # 800023d4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004380:	fb9ff06f          	j	80004338 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004384:	0204b783          	ld	a5,32(s1)
    80004388:	0107b503          	ld	a0,16(a5)
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	0d4080e7          	jalr	212(ra) # 80002460 <_ZN9Semaphore6signalEv>
    }
    80004394:	01813083          	ld	ra,24(sp)
    80004398:	01013403          	ld	s0,16(sp)
    8000439c:	00813483          	ld	s1,8(sp)
    800043a0:	00013903          	ld	s2,0(sp)
    800043a4:	02010113          	addi	sp,sp,32
    800043a8:	00008067          	ret

00000000800043ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800043ac:	fe010113          	addi	sp,sp,-32
    800043b0:	00113c23          	sd	ra,24(sp)
    800043b4:	00813823          	sd	s0,16(sp)
    800043b8:	00913423          	sd	s1,8(sp)
    800043bc:	01213023          	sd	s2,0(sp)
    800043c0:	02010413          	addi	s0,sp,32
    800043c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800043c8:	00100793          	li	a5,1
    800043cc:	02a7f863          	bgeu	a5,a0,800043fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043d0:	00a00793          	li	a5,10
    800043d4:	02f577b3          	remu	a5,a0,a5
    800043d8:	02078e63          	beqz	a5,80004414 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043dc:	fff48513          	addi	a0,s1,-1
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	fcc080e7          	jalr	-52(ra) # 800043ac <_ZL9fibonaccim>
    800043e8:	00050913          	mv	s2,a0
    800043ec:	ffe48513          	addi	a0,s1,-2
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	fbc080e7          	jalr	-68(ra) # 800043ac <_ZL9fibonaccim>
    800043f8:	00a90533          	add	a0,s2,a0
}
    800043fc:	01813083          	ld	ra,24(sp)
    80004400:	01013403          	ld	s0,16(sp)
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	00013903          	ld	s2,0(sp)
    8000440c:	02010113          	addi	sp,sp,32
    80004410:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004414:	ffffd097          	auipc	ra,0xffffd
    80004418:	004080e7          	jalr	4(ra) # 80001418 <_Z15thread_dispatchv>
    8000441c:	fc1ff06f          	j	800043dc <_ZL9fibonaccim+0x30>

0000000080004420 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00113c23          	sd	ra,24(sp)
    80004428:	00813823          	sd	s0,16(sp)
    8000442c:	00913423          	sd	s1,8(sp)
    80004430:	01213023          	sd	s2,0(sp)
    80004434:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004438:	00a00493          	li	s1,10
    8000443c:	0400006f          	j	8000447c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004440:	00005517          	auipc	a0,0x5
    80004444:	e9850513          	addi	a0,a0,-360 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80004448:	00001097          	auipc	ra,0x1
    8000444c:	dc8080e7          	jalr	-568(ra) # 80005210 <_Z11printStringPKc>
    80004450:	00000613          	li	a2,0
    80004454:	00a00593          	li	a1,10
    80004458:	00048513          	mv	a0,s1
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	f64080e7          	jalr	-156(ra) # 800053c0 <_Z8printIntiii>
    80004464:	00005517          	auipc	a0,0x5
    80004468:	0a450513          	addi	a0,a0,164 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	da4080e7          	jalr	-604(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004474:	0014849b          	addiw	s1,s1,1
    80004478:	0ff4f493          	andi	s1,s1,255
    8000447c:	00c00793          	li	a5,12
    80004480:	fc97f0e3          	bgeu	a5,s1,80004440 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004484:	00005517          	auipc	a0,0x5
    80004488:	e5c50513          	addi	a0,a0,-420 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000448c:	00001097          	auipc	ra,0x1
    80004490:	d84080e7          	jalr	-636(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004494:	00500313          	li	t1,5
    thread_dispatch();
    80004498:	ffffd097          	auipc	ra,0xffffd
    8000449c:	f80080e7          	jalr	-128(ra) # 80001418 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800044a0:	01000513          	li	a0,16
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	f08080e7          	jalr	-248(ra) # 800043ac <_ZL9fibonaccim>
    800044ac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	e4050513          	addi	a0,a0,-448 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	d58080e7          	jalr	-680(ra) # 80005210 <_Z11printStringPKc>
    800044c0:	00000613          	li	a2,0
    800044c4:	00a00593          	li	a1,10
    800044c8:	0009051b          	sext.w	a0,s2
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	ef4080e7          	jalr	-268(ra) # 800053c0 <_Z8printIntiii>
    800044d4:	00005517          	auipc	a0,0x5
    800044d8:	03450513          	addi	a0,a0,52 # 80009508 <CONSOLE_STATUS+0x4f8>
    800044dc:	00001097          	auipc	ra,0x1
    800044e0:	d34080e7          	jalr	-716(ra) # 80005210 <_Z11printStringPKc>
    800044e4:	0400006f          	j	80004524 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044e8:	00005517          	auipc	a0,0x5
    800044ec:	df050513          	addi	a0,a0,-528 # 800092d8 <CONSOLE_STATUS+0x2c8>
    800044f0:	00001097          	auipc	ra,0x1
    800044f4:	d20080e7          	jalr	-736(ra) # 80005210 <_Z11printStringPKc>
    800044f8:	00000613          	li	a2,0
    800044fc:	00a00593          	li	a1,10
    80004500:	00048513          	mv	a0,s1
    80004504:	00001097          	auipc	ra,0x1
    80004508:	ebc080e7          	jalr	-324(ra) # 800053c0 <_Z8printIntiii>
    8000450c:	00005517          	auipc	a0,0x5
    80004510:	ffc50513          	addi	a0,a0,-4 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	cfc080e7          	jalr	-772(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000451c:	0014849b          	addiw	s1,s1,1
    80004520:	0ff4f493          	andi	s1,s1,255
    80004524:	00f00793          	li	a5,15
    80004528:	fc97f0e3          	bgeu	a5,s1,800044e8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000452c:	00005517          	auipc	a0,0x5
    80004530:	dd450513          	addi	a0,a0,-556 # 80009300 <CONSOLE_STATUS+0x2f0>
    80004534:	00001097          	auipc	ra,0x1
    80004538:	cdc080e7          	jalr	-804(ra) # 80005210 <_Z11printStringPKc>
    finishedD = true;
    8000453c:	00100793          	li	a5,1
    80004540:	00007717          	auipc	a4,0x7
    80004544:	0ef70823          	sb	a5,240(a4) # 8000b630 <_ZL9finishedD>
    thread_dispatch();
    80004548:	ffffd097          	auipc	ra,0xffffd
    8000454c:	ed0080e7          	jalr	-304(ra) # 80001418 <_Z15thread_dispatchv>
}
    80004550:	01813083          	ld	ra,24(sp)
    80004554:	01013403          	ld	s0,16(sp)
    80004558:	00813483          	ld	s1,8(sp)
    8000455c:	00013903          	ld	s2,0(sp)
    80004560:	02010113          	addi	sp,sp,32
    80004564:	00008067          	ret

0000000080004568 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004568:	fe010113          	addi	sp,sp,-32
    8000456c:	00113c23          	sd	ra,24(sp)
    80004570:	00813823          	sd	s0,16(sp)
    80004574:	00913423          	sd	s1,8(sp)
    80004578:	01213023          	sd	s2,0(sp)
    8000457c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004580:	00000493          	li	s1,0
    80004584:	0400006f          	j	800045c4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004588:	00005517          	auipc	a0,0x5
    8000458c:	d2050513          	addi	a0,a0,-736 # 800092a8 <CONSOLE_STATUS+0x298>
    80004590:	00001097          	auipc	ra,0x1
    80004594:	c80080e7          	jalr	-896(ra) # 80005210 <_Z11printStringPKc>
    80004598:	00000613          	li	a2,0
    8000459c:	00a00593          	li	a1,10
    800045a0:	00048513          	mv	a0,s1
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	e1c080e7          	jalr	-484(ra) # 800053c0 <_Z8printIntiii>
    800045ac:	00005517          	auipc	a0,0x5
    800045b0:	f5c50513          	addi	a0,a0,-164 # 80009508 <CONSOLE_STATUS+0x4f8>
    800045b4:	00001097          	auipc	ra,0x1
    800045b8:	c5c080e7          	jalr	-932(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045bc:	0014849b          	addiw	s1,s1,1
    800045c0:	0ff4f493          	andi	s1,s1,255
    800045c4:	00200793          	li	a5,2
    800045c8:	fc97f0e3          	bgeu	a5,s1,80004588 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800045cc:	00005517          	auipc	a0,0x5
    800045d0:	ce450513          	addi	a0,a0,-796 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800045d4:	00001097          	auipc	ra,0x1
    800045d8:	c3c080e7          	jalr	-964(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800045dc:	00700313          	li	t1,7
    thread_dispatch();
    800045e0:	ffffd097          	auipc	ra,0xffffd
    800045e4:	e38080e7          	jalr	-456(ra) # 80001418 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800045e8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800045ec:	00005517          	auipc	a0,0x5
    800045f0:	cd450513          	addi	a0,a0,-812 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	c1c080e7          	jalr	-996(ra) # 80005210 <_Z11printStringPKc>
    800045fc:	00000613          	li	a2,0
    80004600:	00a00593          	li	a1,10
    80004604:	0009051b          	sext.w	a0,s2
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	db8080e7          	jalr	-584(ra) # 800053c0 <_Z8printIntiii>
    80004610:	00005517          	auipc	a0,0x5
    80004614:	ef850513          	addi	a0,a0,-264 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004618:	00001097          	auipc	ra,0x1
    8000461c:	bf8080e7          	jalr	-1032(ra) # 80005210 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004620:	00c00513          	li	a0,12
    80004624:	00000097          	auipc	ra,0x0
    80004628:	d88080e7          	jalr	-632(ra) # 800043ac <_ZL9fibonaccim>
    8000462c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004630:	00005517          	auipc	a0,0x5
    80004634:	c9850513          	addi	a0,a0,-872 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	bd8080e7          	jalr	-1064(ra) # 80005210 <_Z11printStringPKc>
    80004640:	00000613          	li	a2,0
    80004644:	00a00593          	li	a1,10
    80004648:	0009051b          	sext.w	a0,s2
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	d74080e7          	jalr	-652(ra) # 800053c0 <_Z8printIntiii>
    80004654:	00005517          	auipc	a0,0x5
    80004658:	eb450513          	addi	a0,a0,-332 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000465c:	00001097          	auipc	ra,0x1
    80004660:	bb4080e7          	jalr	-1100(ra) # 80005210 <_Z11printStringPKc>
    80004664:	0400006f          	j	800046a4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004668:	00005517          	auipc	a0,0x5
    8000466c:	c4050513          	addi	a0,a0,-960 # 800092a8 <CONSOLE_STATUS+0x298>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	ba0080e7          	jalr	-1120(ra) # 80005210 <_Z11printStringPKc>
    80004678:	00000613          	li	a2,0
    8000467c:	00a00593          	li	a1,10
    80004680:	00048513          	mv	a0,s1
    80004684:	00001097          	auipc	ra,0x1
    80004688:	d3c080e7          	jalr	-708(ra) # 800053c0 <_Z8printIntiii>
    8000468c:	00005517          	auipc	a0,0x5
    80004690:	e7c50513          	addi	a0,a0,-388 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004694:	00001097          	auipc	ra,0x1
    80004698:	b7c080e7          	jalr	-1156(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000469c:	0014849b          	addiw	s1,s1,1
    800046a0:	0ff4f493          	andi	s1,s1,255
    800046a4:	00500793          	li	a5,5
    800046a8:	fc97f0e3          	bgeu	a5,s1,80004668 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800046ac:	00005517          	auipc	a0,0x5
    800046b0:	cc450513          	addi	a0,a0,-828 # 80009370 <CONSOLE_STATUS+0x360>
    800046b4:	00001097          	auipc	ra,0x1
    800046b8:	b5c080e7          	jalr	-1188(ra) # 80005210 <_Z11printStringPKc>
    finishedC = true;
    800046bc:	00100793          	li	a5,1
    800046c0:	00007717          	auipc	a4,0x7
    800046c4:	f6f708a3          	sb	a5,-143(a4) # 8000b631 <_ZL9finishedC>
    thread_dispatch();
    800046c8:	ffffd097          	auipc	ra,0xffffd
    800046cc:	d50080e7          	jalr	-688(ra) # 80001418 <_Z15thread_dispatchv>
}
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00813483          	ld	s1,8(sp)
    800046dc:	00013903          	ld	s2,0(sp)
    800046e0:	02010113          	addi	sp,sp,32
    800046e4:	00008067          	ret

00000000800046e8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800046e8:	fe010113          	addi	sp,sp,-32
    800046ec:	00113c23          	sd	ra,24(sp)
    800046f0:	00813823          	sd	s0,16(sp)
    800046f4:	00913423          	sd	s1,8(sp)
    800046f8:	01213023          	sd	s2,0(sp)
    800046fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004700:	00000913          	li	s2,0
    80004704:	0380006f          	j	8000473c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004708:	ffffd097          	auipc	ra,0xffffd
    8000470c:	d10080e7          	jalr	-752(ra) # 80001418 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004710:	00148493          	addi	s1,s1,1
    80004714:	000027b7          	lui	a5,0x2
    80004718:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000471c:	0097ee63          	bltu	a5,s1,80004738 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004720:	00000713          	li	a4,0
    80004724:	000077b7          	lui	a5,0x7
    80004728:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000472c:	fce7eee3          	bltu	a5,a4,80004708 <_ZL11workerBodyBPv+0x20>
    80004730:	00170713          	addi	a4,a4,1
    80004734:	ff1ff06f          	j	80004724 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004738:	00190913          	addi	s2,s2,1
    8000473c:	00f00793          	li	a5,15
    80004740:	0527e063          	bltu	a5,s2,80004780 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004744:	00005517          	auipc	a0,0x5
    80004748:	90c50513          	addi	a0,a0,-1780 # 80009050 <CONSOLE_STATUS+0x40>
    8000474c:	00001097          	auipc	ra,0x1
    80004750:	ac4080e7          	jalr	-1340(ra) # 80005210 <_Z11printStringPKc>
    80004754:	00000613          	li	a2,0
    80004758:	00a00593          	li	a1,10
    8000475c:	0009051b          	sext.w	a0,s2
    80004760:	00001097          	auipc	ra,0x1
    80004764:	c60080e7          	jalr	-928(ra) # 800053c0 <_Z8printIntiii>
    80004768:	00005517          	auipc	a0,0x5
    8000476c:	da050513          	addi	a0,a0,-608 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004770:	00001097          	auipc	ra,0x1
    80004774:	aa0080e7          	jalr	-1376(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004778:	00000493          	li	s1,0
    8000477c:	f99ff06f          	j	80004714 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004780:	00005517          	auipc	a0,0x5
    80004784:	b1850513          	addi	a0,a0,-1256 # 80009298 <CONSOLE_STATUS+0x288>
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	a88080e7          	jalr	-1400(ra) # 80005210 <_Z11printStringPKc>
    finishedB = true;
    80004790:	00100793          	li	a5,1
    80004794:	00007717          	auipc	a4,0x7
    80004798:	e8f70f23          	sb	a5,-354(a4) # 8000b632 <_ZL9finishedB>
    thread_dispatch();
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	c7c080e7          	jalr	-900(ra) # 80001418 <_Z15thread_dispatchv>
}
    800047a4:	01813083          	ld	ra,24(sp)
    800047a8:	01013403          	ld	s0,16(sp)
    800047ac:	00813483          	ld	s1,8(sp)
    800047b0:	00013903          	ld	s2,0(sp)
    800047b4:	02010113          	addi	sp,sp,32
    800047b8:	00008067          	ret

00000000800047bc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800047bc:	fe010113          	addi	sp,sp,-32
    800047c0:	00113c23          	sd	ra,24(sp)
    800047c4:	00813823          	sd	s0,16(sp)
    800047c8:	00913423          	sd	s1,8(sp)
    800047cc:	01213023          	sd	s2,0(sp)
    800047d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047d4:	00000913          	li	s2,0
    800047d8:	0380006f          	j	80004810 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	c3c080e7          	jalr	-964(ra) # 80001418 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800047e4:	00148493          	addi	s1,s1,1
    800047e8:	000027b7          	lui	a5,0x2
    800047ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800047f0:	0097ee63          	bltu	a5,s1,8000480c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800047f4:	00000713          	li	a4,0
    800047f8:	000077b7          	lui	a5,0x7
    800047fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004800:	fce7eee3          	bltu	a5,a4,800047dc <_ZL11workerBodyAPv+0x20>
    80004804:	00170713          	addi	a4,a4,1
    80004808:	ff1ff06f          	j	800047f8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000480c:	00190913          	addi	s2,s2,1
    80004810:	00900793          	li	a5,9
    80004814:	0527e063          	bltu	a5,s2,80004854 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004818:	00005517          	auipc	a0,0x5
    8000481c:	80850513          	addi	a0,a0,-2040 # 80009020 <CONSOLE_STATUS+0x10>
    80004820:	00001097          	auipc	ra,0x1
    80004824:	9f0080e7          	jalr	-1552(ra) # 80005210 <_Z11printStringPKc>
    80004828:	00000613          	li	a2,0
    8000482c:	00a00593          	li	a1,10
    80004830:	0009051b          	sext.w	a0,s2
    80004834:	00001097          	auipc	ra,0x1
    80004838:	b8c080e7          	jalr	-1140(ra) # 800053c0 <_Z8printIntiii>
    8000483c:	00005517          	auipc	a0,0x5
    80004840:	ccc50513          	addi	a0,a0,-820 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004844:	00001097          	auipc	ra,0x1
    80004848:	9cc080e7          	jalr	-1588(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000484c:	00000493          	li	s1,0
    80004850:	f99ff06f          	j	800047e8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004854:	00005517          	auipc	a0,0x5
    80004858:	a3450513          	addi	a0,a0,-1484 # 80009288 <CONSOLE_STATUS+0x278>
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	9b4080e7          	jalr	-1612(ra) # 80005210 <_Z11printStringPKc>
    finishedA = true;
    80004864:	00100793          	li	a5,1
    80004868:	00007717          	auipc	a4,0x7
    8000486c:	dcf705a3          	sb	a5,-565(a4) # 8000b633 <_ZL9finishedA>
}
    80004870:	01813083          	ld	ra,24(sp)
    80004874:	01013403          	ld	s0,16(sp)
    80004878:	00813483          	ld	s1,8(sp)
    8000487c:	00013903          	ld	s2,0(sp)
    80004880:	02010113          	addi	sp,sp,32
    80004884:	00008067          	ret

0000000080004888 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004888:	fd010113          	addi	sp,sp,-48
    8000488c:	02113423          	sd	ra,40(sp)
    80004890:	02813023          	sd	s0,32(sp)
    80004894:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004898:	00000613          	li	a2,0
    8000489c:	00000597          	auipc	a1,0x0
    800048a0:	f2058593          	addi	a1,a1,-224 # 800047bc <_ZL11workerBodyAPv>
    800048a4:	fd040513          	addi	a0,s0,-48
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	a48080e7          	jalr	-1464(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    800048b0:	00005517          	auipc	a0,0x5
    800048b4:	a6050513          	addi	a0,a0,-1440 # 80009310 <CONSOLE_STATUS+0x300>
    800048b8:	00001097          	auipc	ra,0x1
    800048bc:	958080e7          	jalr	-1704(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800048c0:	00000613          	li	a2,0
    800048c4:	00000597          	auipc	a1,0x0
    800048c8:	e2458593          	addi	a1,a1,-476 # 800046e8 <_ZL11workerBodyBPv>
    800048cc:	fd840513          	addi	a0,s0,-40
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	a20080e7          	jalr	-1504(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    800048d8:	00005517          	auipc	a0,0x5
    800048dc:	a5050513          	addi	a0,a0,-1456 # 80009328 <CONSOLE_STATUS+0x318>
    800048e0:	00001097          	auipc	ra,0x1
    800048e4:	930080e7          	jalr	-1744(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800048e8:	00000613          	li	a2,0
    800048ec:	00000597          	auipc	a1,0x0
    800048f0:	c7c58593          	addi	a1,a1,-900 # 80004568 <_ZL11workerBodyCPv>
    800048f4:	fe040513          	addi	a0,s0,-32
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	9f8080e7          	jalr	-1544(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    80004900:	00005517          	auipc	a0,0x5
    80004904:	a4050513          	addi	a0,a0,-1472 # 80009340 <CONSOLE_STATUS+0x330>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	908080e7          	jalr	-1784(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004910:	00000613          	li	a2,0
    80004914:	00000597          	auipc	a1,0x0
    80004918:	b0c58593          	addi	a1,a1,-1268 # 80004420 <_ZL11workerBodyDPv>
    8000491c:	fe840513          	addi	a0,s0,-24
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	9d0080e7          	jalr	-1584(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    80004928:	00005517          	auipc	a0,0x5
    8000492c:	a3050513          	addi	a0,a0,-1488 # 80009358 <CONSOLE_STATUS+0x348>
    80004930:	00001097          	auipc	ra,0x1
    80004934:	8e0080e7          	jalr	-1824(ra) # 80005210 <_Z11printStringPKc>
    80004938:	00c0006f          	j	80004944 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	adc080e7          	jalr	-1316(ra) # 80001418 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004944:	00007797          	auipc	a5,0x7
    80004948:	cef7c783          	lbu	a5,-785(a5) # 8000b633 <_ZL9finishedA>
    8000494c:	fe0788e3          	beqz	a5,8000493c <_Z18Threads_C_API_testv+0xb4>
    80004950:	00007797          	auipc	a5,0x7
    80004954:	ce27c783          	lbu	a5,-798(a5) # 8000b632 <_ZL9finishedB>
    80004958:	fe0782e3          	beqz	a5,8000493c <_Z18Threads_C_API_testv+0xb4>
    8000495c:	00007797          	auipc	a5,0x7
    80004960:	cd57c783          	lbu	a5,-811(a5) # 8000b631 <_ZL9finishedC>
    80004964:	fc078ce3          	beqz	a5,8000493c <_Z18Threads_C_API_testv+0xb4>
    80004968:	00007797          	auipc	a5,0x7
    8000496c:	cc87c783          	lbu	a5,-824(a5) # 8000b630 <_ZL9finishedD>
    80004970:	fc0786e3          	beqz	a5,8000493c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004974:	02813083          	ld	ra,40(sp)
    80004978:	02013403          	ld	s0,32(sp)
    8000497c:	03010113          	addi	sp,sp,48
    80004980:	00008067          	ret

0000000080004984 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004984:	fd010113          	addi	sp,sp,-48
    80004988:	02113423          	sd	ra,40(sp)
    8000498c:	02813023          	sd	s0,32(sp)
    80004990:	00913c23          	sd	s1,24(sp)
    80004994:	01213823          	sd	s2,16(sp)
    80004998:	01313423          	sd	s3,8(sp)
    8000499c:	03010413          	addi	s0,sp,48
    800049a0:	00050993          	mv	s3,a0
    800049a4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800049a8:	00000913          	li	s2,0
    800049ac:	00c0006f          	j	800049b8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800049b0:	ffffe097          	auipc	ra,0xffffe
    800049b4:	960080e7          	jalr	-1696(ra) # 80002310 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	b68080e7          	jalr	-1176(ra) # 80001520 <_Z4getcv>
    800049c0:	0005059b          	sext.w	a1,a0
    800049c4:	01b00793          	li	a5,27
    800049c8:	02f58a63          	beq	a1,a5,800049fc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800049cc:	0084b503          	ld	a0,8(s1)
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	c64080e7          	jalr	-924(ra) # 80005634 <_ZN9BufferCPP3putEi>
        i++;
    800049d8:	0019071b          	addiw	a4,s2,1
    800049dc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800049e0:	0004a683          	lw	a3,0(s1)
    800049e4:	0026979b          	slliw	a5,a3,0x2
    800049e8:	00d787bb          	addw	a5,a5,a3
    800049ec:	0017979b          	slliw	a5,a5,0x1
    800049f0:	02f767bb          	remw	a5,a4,a5
    800049f4:	fc0792e3          	bnez	a5,800049b8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800049f8:	fb9ff06f          	j	800049b0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800049fc:	00100793          	li	a5,1
    80004a00:	00007717          	auipc	a4,0x7
    80004a04:	c2f72c23          	sw	a5,-968(a4) # 8000b638 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a08:	0209b783          	ld	a5,32(s3)
    80004a0c:	02100593          	li	a1,33
    80004a10:	0087b503          	ld	a0,8(a5)
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	c20080e7          	jalr	-992(ra) # 80005634 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a1c:	0104b503          	ld	a0,16(s1)
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	a40080e7          	jalr	-1472(ra) # 80002460 <_ZN9Semaphore6signalEv>
}
    80004a28:	02813083          	ld	ra,40(sp)
    80004a2c:	02013403          	ld	s0,32(sp)
    80004a30:	01813483          	ld	s1,24(sp)
    80004a34:	01013903          	ld	s2,16(sp)
    80004a38:	00813983          	ld	s3,8(sp)
    80004a3c:	03010113          	addi	sp,sp,48
    80004a40:	00008067          	ret

0000000080004a44 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a44:	fe010113          	addi	sp,sp,-32
    80004a48:	00113c23          	sd	ra,24(sp)
    80004a4c:	00813823          	sd	s0,16(sp)
    80004a50:	00913423          	sd	s1,8(sp)
    80004a54:	01213023          	sd	s2,0(sp)
    80004a58:	02010413          	addi	s0,sp,32
    80004a5c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a60:	00000913          	li	s2,0
    80004a64:	00c0006f          	j	80004a70 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a68:	ffffe097          	auipc	ra,0xffffe
    80004a6c:	8a8080e7          	jalr	-1880(ra) # 80002310 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a70:	00007797          	auipc	a5,0x7
    80004a74:	bc87a783          	lw	a5,-1080(a5) # 8000b638 <_ZL9threadEnd>
    80004a78:	02079e63          	bnez	a5,80004ab4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a7c:	0004a583          	lw	a1,0(s1)
    80004a80:	0305859b          	addiw	a1,a1,48
    80004a84:	0084b503          	ld	a0,8(s1)
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	bac080e7          	jalr	-1108(ra) # 80005634 <_ZN9BufferCPP3putEi>
        i++;
    80004a90:	0019071b          	addiw	a4,s2,1
    80004a94:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a98:	0004a683          	lw	a3,0(s1)
    80004a9c:	0026979b          	slliw	a5,a3,0x2
    80004aa0:	00d787bb          	addw	a5,a5,a3
    80004aa4:	0017979b          	slliw	a5,a5,0x1
    80004aa8:	02f767bb          	remw	a5,a4,a5
    80004aac:	fc0792e3          	bnez	a5,80004a70 <_ZN12ProducerSync8producerEPv+0x2c>
    80004ab0:	fb9ff06f          	j	80004a68 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004ab4:	0104b503          	ld	a0,16(s1)
    80004ab8:	ffffe097          	auipc	ra,0xffffe
    80004abc:	9a8080e7          	jalr	-1624(ra) # 80002460 <_ZN9Semaphore6signalEv>
}
    80004ac0:	01813083          	ld	ra,24(sp)
    80004ac4:	01013403          	ld	s0,16(sp)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	00013903          	ld	s2,0(sp)
    80004ad0:	02010113          	addi	sp,sp,32
    80004ad4:	00008067          	ret

0000000080004ad8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004ad8:	fd010113          	addi	sp,sp,-48
    80004adc:	02113423          	sd	ra,40(sp)
    80004ae0:	02813023          	sd	s0,32(sp)
    80004ae4:	00913c23          	sd	s1,24(sp)
    80004ae8:	01213823          	sd	s2,16(sp)
    80004aec:	01313423          	sd	s3,8(sp)
    80004af0:	01413023          	sd	s4,0(sp)
    80004af4:	03010413          	addi	s0,sp,48
    80004af8:	00050993          	mv	s3,a0
    80004afc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b00:	00000a13          	li	s4,0
    80004b04:	01c0006f          	j	80004b20 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b08:	ffffe097          	auipc	ra,0xffffe
    80004b0c:	808080e7          	jalr	-2040(ra) # 80002310 <_ZN6Thread8dispatchEv>
    80004b10:	0500006f          	j	80004b60 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b14:	00a00513          	li	a0,10
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	a30080e7          	jalr	-1488(ra) # 80001548 <_Z4putcc>
    while (!threadEnd) {
    80004b20:	00007797          	auipc	a5,0x7
    80004b24:	b187a783          	lw	a5,-1256(a5) # 8000b638 <_ZL9threadEnd>
    80004b28:	06079263          	bnez	a5,80004b8c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b2c:	00893503          	ld	a0,8(s2)
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	b94080e7          	jalr	-1132(ra) # 800056c4 <_ZN9BufferCPP3getEv>
        i++;
    80004b38:	001a049b          	addiw	s1,s4,1
    80004b3c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b40:	0ff57513          	andi	a0,a0,255
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	a04080e7          	jalr	-1532(ra) # 80001548 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b4c:	00092703          	lw	a4,0(s2)
    80004b50:	0027179b          	slliw	a5,a4,0x2
    80004b54:	00e787bb          	addw	a5,a5,a4
    80004b58:	02f4e7bb          	remw	a5,s1,a5
    80004b5c:	fa0786e3          	beqz	a5,80004b08 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b60:	05000793          	li	a5,80
    80004b64:	02f4e4bb          	remw	s1,s1,a5
    80004b68:	fa049ce3          	bnez	s1,80004b20 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b6c:	fa9ff06f          	j	80004b14 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b70:	0209b783          	ld	a5,32(s3)
    80004b74:	0087b503          	ld	a0,8(a5)
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	b4c080e7          	jalr	-1204(ra) # 800056c4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b80:	0ff57513          	andi	a0,a0,255
    80004b84:	ffffe097          	auipc	ra,0xffffe
    80004b88:	908080e7          	jalr	-1784(ra) # 8000248c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004b8c:	0209b783          	ld	a5,32(s3)
    80004b90:	0087b503          	ld	a0,8(a5)
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	bbc080e7          	jalr	-1092(ra) # 80005750 <_ZN9BufferCPP6getCntEv>
    80004b9c:	fca04ae3          	bgtz	a0,80004b70 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004ba0:	01093503          	ld	a0,16(s2)
    80004ba4:	ffffe097          	auipc	ra,0xffffe
    80004ba8:	8bc080e7          	jalr	-1860(ra) # 80002460 <_ZN9Semaphore6signalEv>
}
    80004bac:	02813083          	ld	ra,40(sp)
    80004bb0:	02013403          	ld	s0,32(sp)
    80004bb4:	01813483          	ld	s1,24(sp)
    80004bb8:	01013903          	ld	s2,16(sp)
    80004bbc:	00813983          	ld	s3,8(sp)
    80004bc0:	00013a03          	ld	s4,0(sp)
    80004bc4:	03010113          	addi	sp,sp,48
    80004bc8:	00008067          	ret

0000000080004bcc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004bcc:	f8010113          	addi	sp,sp,-128
    80004bd0:	06113c23          	sd	ra,120(sp)
    80004bd4:	06813823          	sd	s0,112(sp)
    80004bd8:	06913423          	sd	s1,104(sp)
    80004bdc:	07213023          	sd	s2,96(sp)
    80004be0:	05313c23          	sd	s3,88(sp)
    80004be4:	05413823          	sd	s4,80(sp)
    80004be8:	05513423          	sd	s5,72(sp)
    80004bec:	05613023          	sd	s6,64(sp)
    80004bf0:	03713c23          	sd	s7,56(sp)
    80004bf4:	03813823          	sd	s8,48(sp)
    80004bf8:	03913423          	sd	s9,40(sp)
    80004bfc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c00:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c04:	00004517          	auipc	a0,0x4
    80004c08:	59c50513          	addi	a0,a0,1436 # 800091a0 <CONSOLE_STATUS+0x190>
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	604080e7          	jalr	1540(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80004c14:	01e00593          	li	a1,30
    80004c18:	f8040493          	addi	s1,s0,-128
    80004c1c:	00048513          	mv	a0,s1
    80004c20:	00000097          	auipc	ra,0x0
    80004c24:	678080e7          	jalr	1656(ra) # 80005298 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c28:	00048513          	mv	a0,s1
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	744080e7          	jalr	1860(ra) # 80005370 <_Z11stringToIntPKc>
    80004c34:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c38:	00004517          	auipc	a0,0x4
    80004c3c:	58850513          	addi	a0,a0,1416 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	5d0080e7          	jalr	1488(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80004c48:	01e00593          	li	a1,30
    80004c4c:	00048513          	mv	a0,s1
    80004c50:	00000097          	auipc	ra,0x0
    80004c54:	648080e7          	jalr	1608(ra) # 80005298 <_Z9getStringPci>
    n = stringToInt(input);
    80004c58:	00048513          	mv	a0,s1
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	714080e7          	jalr	1812(ra) # 80005370 <_Z11stringToIntPKc>
    80004c64:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c68:	00004517          	auipc	a0,0x4
    80004c6c:	57850513          	addi	a0,a0,1400 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	5a0080e7          	jalr	1440(ra) # 80005210 <_Z11printStringPKc>
    80004c78:	00000613          	li	a2,0
    80004c7c:	00a00593          	li	a1,10
    80004c80:	00090513          	mv	a0,s2
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	73c080e7          	jalr	1852(ra) # 800053c0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004c8c:	00004517          	auipc	a0,0x4
    80004c90:	56c50513          	addi	a0,a0,1388 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	57c080e7          	jalr	1404(ra) # 80005210 <_Z11printStringPKc>
    80004c9c:	00000613          	li	a2,0
    80004ca0:	00a00593          	li	a1,10
    80004ca4:	00048513          	mv	a0,s1
    80004ca8:	00000097          	auipc	ra,0x0
    80004cac:	718080e7          	jalr	1816(ra) # 800053c0 <_Z8printIntiii>
    printString(".\n");
    80004cb0:	00004517          	auipc	a0,0x4
    80004cb4:	56050513          	addi	a0,a0,1376 # 80009210 <CONSOLE_STATUS+0x200>
    80004cb8:	00000097          	auipc	ra,0x0
    80004cbc:	558080e7          	jalr	1368(ra) # 80005210 <_Z11printStringPKc>
    if(threadNum > n) {
    80004cc0:	0324c463          	blt	s1,s2,80004ce8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004cc4:	03205c63          	blez	s2,80004cfc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004cc8:	03800513          	li	a0,56
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	05c080e7          	jalr	92(ra) # 80001d28 <_Znwm>
    80004cd4:	00050a93          	mv	s5,a0
    80004cd8:	00048593          	mv	a1,s1
    80004cdc:	00001097          	auipc	ra,0x1
    80004ce0:	804080e7          	jalr	-2044(ra) # 800054e0 <_ZN9BufferCPPC1Ei>
    80004ce4:	0300006f          	j	80004d14 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004ce8:	00004517          	auipc	a0,0x4
    80004cec:	53050513          	addi	a0,a0,1328 # 80009218 <CONSOLE_STATUS+0x208>
    80004cf0:	00000097          	auipc	ra,0x0
    80004cf4:	520080e7          	jalr	1312(ra) # 80005210 <_Z11printStringPKc>
        return;
    80004cf8:	0140006f          	j	80004d0c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004cfc:	00004517          	auipc	a0,0x4
    80004d00:	55c50513          	addi	a0,a0,1372 # 80009258 <CONSOLE_STATUS+0x248>
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	50c080e7          	jalr	1292(ra) # 80005210 <_Z11printStringPKc>
        return;
    80004d0c:	000b8113          	mv	sp,s7
    80004d10:	2380006f          	j	80004f48 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d14:	01000513          	li	a0,16
    80004d18:	ffffd097          	auipc	ra,0xffffd
    80004d1c:	010080e7          	jalr	16(ra) # 80001d28 <_Znwm>
    80004d20:	00050493          	mv	s1,a0
    80004d24:	00000593          	li	a1,0
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	6d4080e7          	jalr	1748(ra) # 800023fc <_ZN9SemaphoreC1Ej>
    80004d30:	00007797          	auipc	a5,0x7
    80004d34:	9097b823          	sd	s1,-1776(a5) # 8000b640 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d38:	00391793          	slli	a5,s2,0x3
    80004d3c:	00f78793          	addi	a5,a5,15
    80004d40:	ff07f793          	andi	a5,a5,-16
    80004d44:	40f10133          	sub	sp,sp,a5
    80004d48:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d4c:	0019071b          	addiw	a4,s2,1
    80004d50:	00171793          	slli	a5,a4,0x1
    80004d54:	00e787b3          	add	a5,a5,a4
    80004d58:	00379793          	slli	a5,a5,0x3
    80004d5c:	00f78793          	addi	a5,a5,15
    80004d60:	ff07f793          	andi	a5,a5,-16
    80004d64:	40f10133          	sub	sp,sp,a5
    80004d68:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d6c:	00191c13          	slli	s8,s2,0x1
    80004d70:	012c07b3          	add	a5,s8,s2
    80004d74:	00379793          	slli	a5,a5,0x3
    80004d78:	00fa07b3          	add	a5,s4,a5
    80004d7c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d80:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004d84:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004d88:	02800513          	li	a0,40
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	f9c080e7          	jalr	-100(ra) # 80001d28 <_Znwm>
    80004d94:	00050b13          	mv	s6,a0
    80004d98:	012c0c33          	add	s8,s8,s2
    80004d9c:	003c1c13          	slli	s8,s8,0x3
    80004da0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	5c4080e7          	jalr	1476(ra) # 80002368 <_ZN6ThreadC1Ev>
    80004dac:	00006797          	auipc	a5,0x6
    80004db0:	76c78793          	addi	a5,a5,1900 # 8000b518 <_ZTV12ConsumerSync+0x10>
    80004db4:	00fb3023          	sd	a5,0(s6)
    80004db8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004dbc:	000b0513          	mv	a0,s6
    80004dc0:	ffffd097          	auipc	ra,0xffffd
    80004dc4:	5e0080e7          	jalr	1504(ra) # 800023a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004dc8:	00000493          	li	s1,0
    80004dcc:	0380006f          	j	80004e04 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004dd0:	00006797          	auipc	a5,0x6
    80004dd4:	72078793          	addi	a5,a5,1824 # 8000b4f0 <_ZTV12ProducerSync+0x10>
    80004dd8:	00fcb023          	sd	a5,0(s9)
    80004ddc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004de0:	00349793          	slli	a5,s1,0x3
    80004de4:	00f987b3          	add	a5,s3,a5
    80004de8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004dec:	00349793          	slli	a5,s1,0x3
    80004df0:	00f987b3          	add	a5,s3,a5
    80004df4:	0007b503          	ld	a0,0(a5)
    80004df8:	ffffd097          	auipc	ra,0xffffd
    80004dfc:	5a8080e7          	jalr	1448(ra) # 800023a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e00:	0014849b          	addiw	s1,s1,1
    80004e04:	0b24d063          	bge	s1,s2,80004ea4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e08:	00149793          	slli	a5,s1,0x1
    80004e0c:	009787b3          	add	a5,a5,s1
    80004e10:	00379793          	slli	a5,a5,0x3
    80004e14:	00fa07b3          	add	a5,s4,a5
    80004e18:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e1c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e20:	00007717          	auipc	a4,0x7
    80004e24:	82073703          	ld	a4,-2016(a4) # 8000b640 <_ZL10waitForAll>
    80004e28:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e2c:	02905863          	blez	s1,80004e5c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e30:	02800513          	li	a0,40
    80004e34:	ffffd097          	auipc	ra,0xffffd
    80004e38:	ef4080e7          	jalr	-268(ra) # 80001d28 <_Znwm>
    80004e3c:	00050c93          	mv	s9,a0
    80004e40:	00149c13          	slli	s8,s1,0x1
    80004e44:	009c0c33          	add	s8,s8,s1
    80004e48:	003c1c13          	slli	s8,s8,0x3
    80004e4c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	518080e7          	jalr	1304(ra) # 80002368 <_ZN6ThreadC1Ev>
    80004e58:	f79ff06f          	j	80004dd0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e5c:	02800513          	li	a0,40
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	ec8080e7          	jalr	-312(ra) # 80001d28 <_Znwm>
    80004e68:	00050c93          	mv	s9,a0
    80004e6c:	00149c13          	slli	s8,s1,0x1
    80004e70:	009c0c33          	add	s8,s8,s1
    80004e74:	003c1c13          	slli	s8,s8,0x3
    80004e78:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	4ec080e7          	jalr	1260(ra) # 80002368 <_ZN6ThreadC1Ev>
    80004e84:	00006797          	auipc	a5,0x6
    80004e88:	64478793          	addi	a5,a5,1604 # 8000b4c8 <_ZTV16ProducerKeyboard+0x10>
    80004e8c:	00fcb023          	sd	a5,0(s9)
    80004e90:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004e94:	00349793          	slli	a5,s1,0x3
    80004e98:	00f987b3          	add	a5,s3,a5
    80004e9c:	0197b023          	sd	s9,0(a5)
    80004ea0:	f4dff06f          	j	80004dec <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004ea4:	ffffd097          	auipc	ra,0xffffd
    80004ea8:	46c080e7          	jalr	1132(ra) # 80002310 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004eac:	00000493          	li	s1,0
    80004eb0:	00994e63          	blt	s2,s1,80004ecc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004eb4:	00006517          	auipc	a0,0x6
    80004eb8:	78c53503          	ld	a0,1932(a0) # 8000b640 <_ZL10waitForAll>
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	578080e7          	jalr	1400(ra) # 80002434 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ec4:	0014849b          	addiw	s1,s1,1
    80004ec8:	fe9ff06f          	j	80004eb0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004ecc:	00000493          	li	s1,0
    80004ed0:	0080006f          	j	80004ed8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004ed4:	0014849b          	addiw	s1,s1,1
    80004ed8:	0324d263          	bge	s1,s2,80004efc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004edc:	00349793          	slli	a5,s1,0x3
    80004ee0:	00f987b3          	add	a5,s3,a5
    80004ee4:	0007b503          	ld	a0,0(a5)
    80004ee8:	fe0506e3          	beqz	a0,80004ed4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004eec:	00053783          	ld	a5,0(a0)
    80004ef0:	0087b783          	ld	a5,8(a5)
    80004ef4:	000780e7          	jalr	a5
    80004ef8:	fddff06f          	j	80004ed4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004efc:	000b0a63          	beqz	s6,80004f10 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f00:	000b3783          	ld	a5,0(s6)
    80004f04:	0087b783          	ld	a5,8(a5)
    80004f08:	000b0513          	mv	a0,s6
    80004f0c:	000780e7          	jalr	a5
    delete waitForAll;
    80004f10:	00006517          	auipc	a0,0x6
    80004f14:	73053503          	ld	a0,1840(a0) # 8000b640 <_ZL10waitForAll>
    80004f18:	00050863          	beqz	a0,80004f28 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f1c:	00053783          	ld	a5,0(a0)
    80004f20:	0087b783          	ld	a5,8(a5)
    80004f24:	000780e7          	jalr	a5
    delete buffer;
    80004f28:	000a8e63          	beqz	s5,80004f44 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f2c:	000a8513          	mv	a0,s5
    80004f30:	00001097          	auipc	ra,0x1
    80004f34:	8a8080e7          	jalr	-1880(ra) # 800057d8 <_ZN9BufferCPPD1Ev>
    80004f38:	000a8513          	mv	a0,s5
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	eec080e7          	jalr	-276(ra) # 80001e28 <_ZdlPv>
    80004f44:	000b8113          	mv	sp,s7

}
    80004f48:	f8040113          	addi	sp,s0,-128
    80004f4c:	07813083          	ld	ra,120(sp)
    80004f50:	07013403          	ld	s0,112(sp)
    80004f54:	06813483          	ld	s1,104(sp)
    80004f58:	06013903          	ld	s2,96(sp)
    80004f5c:	05813983          	ld	s3,88(sp)
    80004f60:	05013a03          	ld	s4,80(sp)
    80004f64:	04813a83          	ld	s5,72(sp)
    80004f68:	04013b03          	ld	s6,64(sp)
    80004f6c:	03813b83          	ld	s7,56(sp)
    80004f70:	03013c03          	ld	s8,48(sp)
    80004f74:	02813c83          	ld	s9,40(sp)
    80004f78:	08010113          	addi	sp,sp,128
    80004f7c:	00008067          	ret
    80004f80:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f84:	000a8513          	mv	a0,s5
    80004f88:	ffffd097          	auipc	ra,0xffffd
    80004f8c:	ea0080e7          	jalr	-352(ra) # 80001e28 <_ZdlPv>
    80004f90:	00048513          	mv	a0,s1
    80004f94:	00007097          	auipc	ra,0x7
    80004f98:	794080e7          	jalr	1940(ra) # 8000c728 <_Unwind_Resume>
    80004f9c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004fa0:	00048513          	mv	a0,s1
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	e84080e7          	jalr	-380(ra) # 80001e28 <_ZdlPv>
    80004fac:	00090513          	mv	a0,s2
    80004fb0:	00007097          	auipc	ra,0x7
    80004fb4:	778080e7          	jalr	1912(ra) # 8000c728 <_Unwind_Resume>
    80004fb8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004fbc:	000b0513          	mv	a0,s6
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	e68080e7          	jalr	-408(ra) # 80001e28 <_ZdlPv>
    80004fc8:	00048513          	mv	a0,s1
    80004fcc:	00007097          	auipc	ra,0x7
    80004fd0:	75c080e7          	jalr	1884(ra) # 8000c728 <_Unwind_Resume>
    80004fd4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004fd8:	000c8513          	mv	a0,s9
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	e4c080e7          	jalr	-436(ra) # 80001e28 <_ZdlPv>
    80004fe4:	00048513          	mv	a0,s1
    80004fe8:	00007097          	auipc	ra,0x7
    80004fec:	740080e7          	jalr	1856(ra) # 8000c728 <_Unwind_Resume>
    80004ff0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004ff4:	000c8513          	mv	a0,s9
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	e30080e7          	jalr	-464(ra) # 80001e28 <_ZdlPv>
    80005000:	00048513          	mv	a0,s1
    80005004:	00007097          	auipc	ra,0x7
    80005008:	724080e7          	jalr	1828(ra) # 8000c728 <_Unwind_Resume>

000000008000500c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000500c:	ff010113          	addi	sp,sp,-16
    80005010:	00113423          	sd	ra,8(sp)
    80005014:	00813023          	sd	s0,0(sp)
    80005018:	01010413          	addi	s0,sp,16
    8000501c:	00006797          	auipc	a5,0x6
    80005020:	4fc78793          	addi	a5,a5,1276 # 8000b518 <_ZTV12ConsumerSync+0x10>
    80005024:	00f53023          	sd	a5,0(a0)
    80005028:	ffffd097          	auipc	ra,0xffffd
    8000502c:	184080e7          	jalr	388(ra) # 800021ac <_ZN6ThreadD1Ev>
    80005030:	00813083          	ld	ra,8(sp)
    80005034:	00013403          	ld	s0,0(sp)
    80005038:	01010113          	addi	sp,sp,16
    8000503c:	00008067          	ret

0000000080005040 <_ZN12ConsumerSyncD0Ev>:
    80005040:	fe010113          	addi	sp,sp,-32
    80005044:	00113c23          	sd	ra,24(sp)
    80005048:	00813823          	sd	s0,16(sp)
    8000504c:	00913423          	sd	s1,8(sp)
    80005050:	02010413          	addi	s0,sp,32
    80005054:	00050493          	mv	s1,a0
    80005058:	00006797          	auipc	a5,0x6
    8000505c:	4c078793          	addi	a5,a5,1216 # 8000b518 <_ZTV12ConsumerSync+0x10>
    80005060:	00f53023          	sd	a5,0(a0)
    80005064:	ffffd097          	auipc	ra,0xffffd
    80005068:	148080e7          	jalr	328(ra) # 800021ac <_ZN6ThreadD1Ev>
    8000506c:	00048513          	mv	a0,s1
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	db8080e7          	jalr	-584(ra) # 80001e28 <_ZdlPv>
    80005078:	01813083          	ld	ra,24(sp)
    8000507c:	01013403          	ld	s0,16(sp)
    80005080:	00813483          	ld	s1,8(sp)
    80005084:	02010113          	addi	sp,sp,32
    80005088:	00008067          	ret

000000008000508c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000508c:	ff010113          	addi	sp,sp,-16
    80005090:	00113423          	sd	ra,8(sp)
    80005094:	00813023          	sd	s0,0(sp)
    80005098:	01010413          	addi	s0,sp,16
    8000509c:	00006797          	auipc	a5,0x6
    800050a0:	45478793          	addi	a5,a5,1108 # 8000b4f0 <_ZTV12ProducerSync+0x10>
    800050a4:	00f53023          	sd	a5,0(a0)
    800050a8:	ffffd097          	auipc	ra,0xffffd
    800050ac:	104080e7          	jalr	260(ra) # 800021ac <_ZN6ThreadD1Ev>
    800050b0:	00813083          	ld	ra,8(sp)
    800050b4:	00013403          	ld	s0,0(sp)
    800050b8:	01010113          	addi	sp,sp,16
    800050bc:	00008067          	ret

00000000800050c0 <_ZN12ProducerSyncD0Ev>:
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	02010413          	addi	s0,sp,32
    800050d4:	00050493          	mv	s1,a0
    800050d8:	00006797          	auipc	a5,0x6
    800050dc:	41878793          	addi	a5,a5,1048 # 8000b4f0 <_ZTV12ProducerSync+0x10>
    800050e0:	00f53023          	sd	a5,0(a0)
    800050e4:	ffffd097          	auipc	ra,0xffffd
    800050e8:	0c8080e7          	jalr	200(ra) # 800021ac <_ZN6ThreadD1Ev>
    800050ec:	00048513          	mv	a0,s1
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	d38080e7          	jalr	-712(ra) # 80001e28 <_ZdlPv>
    800050f8:	01813083          	ld	ra,24(sp)
    800050fc:	01013403          	ld	s0,16(sp)
    80005100:	00813483          	ld	s1,8(sp)
    80005104:	02010113          	addi	sp,sp,32
    80005108:	00008067          	ret

000000008000510c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000510c:	ff010113          	addi	sp,sp,-16
    80005110:	00113423          	sd	ra,8(sp)
    80005114:	00813023          	sd	s0,0(sp)
    80005118:	01010413          	addi	s0,sp,16
    8000511c:	00006797          	auipc	a5,0x6
    80005120:	3ac78793          	addi	a5,a5,940 # 8000b4c8 <_ZTV16ProducerKeyboard+0x10>
    80005124:	00f53023          	sd	a5,0(a0)
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	084080e7          	jalr	132(ra) # 800021ac <_ZN6ThreadD1Ev>
    80005130:	00813083          	ld	ra,8(sp)
    80005134:	00013403          	ld	s0,0(sp)
    80005138:	01010113          	addi	sp,sp,16
    8000513c:	00008067          	ret

0000000080005140 <_ZN16ProducerKeyboardD0Ev>:
    80005140:	fe010113          	addi	sp,sp,-32
    80005144:	00113c23          	sd	ra,24(sp)
    80005148:	00813823          	sd	s0,16(sp)
    8000514c:	00913423          	sd	s1,8(sp)
    80005150:	02010413          	addi	s0,sp,32
    80005154:	00050493          	mv	s1,a0
    80005158:	00006797          	auipc	a5,0x6
    8000515c:	37078793          	addi	a5,a5,880 # 8000b4c8 <_ZTV16ProducerKeyboard+0x10>
    80005160:	00f53023          	sd	a5,0(a0)
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	048080e7          	jalr	72(ra) # 800021ac <_ZN6ThreadD1Ev>
    8000516c:	00048513          	mv	a0,s1
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	cb8080e7          	jalr	-840(ra) # 80001e28 <_ZdlPv>
    80005178:	01813083          	ld	ra,24(sp)
    8000517c:	01013403          	ld	s0,16(sp)
    80005180:	00813483          	ld	s1,8(sp)
    80005184:	02010113          	addi	sp,sp,32
    80005188:	00008067          	ret

000000008000518c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000518c:	ff010113          	addi	sp,sp,-16
    80005190:	00113423          	sd	ra,8(sp)
    80005194:	00813023          	sd	s0,0(sp)
    80005198:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000519c:	02053583          	ld	a1,32(a0)
    800051a0:	fffff097          	auipc	ra,0xfffff
    800051a4:	7e4080e7          	jalr	2020(ra) # 80004984 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800051a8:	00813083          	ld	ra,8(sp)
    800051ac:	00013403          	ld	s0,0(sp)
    800051b0:	01010113          	addi	sp,sp,16
    800051b4:	00008067          	ret

00000000800051b8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800051b8:	ff010113          	addi	sp,sp,-16
    800051bc:	00113423          	sd	ra,8(sp)
    800051c0:	00813023          	sd	s0,0(sp)
    800051c4:	01010413          	addi	s0,sp,16
        producer(td);
    800051c8:	02053583          	ld	a1,32(a0)
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	878080e7          	jalr	-1928(ra) # 80004a44 <_ZN12ProducerSync8producerEPv>
    }
    800051d4:	00813083          	ld	ra,8(sp)
    800051d8:	00013403          	ld	s0,0(sp)
    800051dc:	01010113          	addi	sp,sp,16
    800051e0:	00008067          	ret

00000000800051e4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800051e4:	ff010113          	addi	sp,sp,-16
    800051e8:	00113423          	sd	ra,8(sp)
    800051ec:	00813023          	sd	s0,0(sp)
    800051f0:	01010413          	addi	s0,sp,16
        consumer(td);
    800051f4:	02053583          	ld	a1,32(a0)
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	8e0080e7          	jalr	-1824(ra) # 80004ad8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005200:	00813083          	ld	ra,8(sp)
    80005204:	00013403          	ld	s0,0(sp)
    80005208:	01010113          	addi	sp,sp,16
    8000520c:	00008067          	ret

0000000080005210 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005210:	fe010113          	addi	sp,sp,-32
    80005214:	00113c23          	sd	ra,24(sp)
    80005218:	00813823          	sd	s0,16(sp)
    8000521c:	00913423          	sd	s1,8(sp)
    80005220:	02010413          	addi	s0,sp,32
    80005224:	00050493          	mv	s1,a0
    LOCK();
    80005228:	00100613          	li	a2,1
    8000522c:	00000593          	li	a1,0
    80005230:	00006517          	auipc	a0,0x6
    80005234:	41850513          	addi	a0,a0,1048 # 8000b648 <lockPrint>
    80005238:	ffffc097          	auipc	ra,0xffffc
    8000523c:	fe4080e7          	jalr	-28(ra) # 8000121c <copy_and_swap>
    80005240:	00050863          	beqz	a0,80005250 <_Z11printStringPKc+0x40>
    80005244:	ffffc097          	auipc	ra,0xffffc
    80005248:	1d4080e7          	jalr	468(ra) # 80001418 <_Z15thread_dispatchv>
    8000524c:	fddff06f          	j	80005228 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005250:	0004c503          	lbu	a0,0(s1)
    80005254:	00050a63          	beqz	a0,80005268 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005258:	ffffc097          	auipc	ra,0xffffc
    8000525c:	2f0080e7          	jalr	752(ra) # 80001548 <_Z4putcc>
        string++;
    80005260:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005264:	fedff06f          	j	80005250 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005268:	00000613          	li	a2,0
    8000526c:	00100593          	li	a1,1
    80005270:	00006517          	auipc	a0,0x6
    80005274:	3d850513          	addi	a0,a0,984 # 8000b648 <lockPrint>
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	fa4080e7          	jalr	-92(ra) # 8000121c <copy_and_swap>
    80005280:	fe0514e3          	bnez	a0,80005268 <_Z11printStringPKc+0x58>
}
    80005284:	01813083          	ld	ra,24(sp)
    80005288:	01013403          	ld	s0,16(sp)
    8000528c:	00813483          	ld	s1,8(sp)
    80005290:	02010113          	addi	sp,sp,32
    80005294:	00008067          	ret

0000000080005298 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005298:	fd010113          	addi	sp,sp,-48
    8000529c:	02113423          	sd	ra,40(sp)
    800052a0:	02813023          	sd	s0,32(sp)
    800052a4:	00913c23          	sd	s1,24(sp)
    800052a8:	01213823          	sd	s2,16(sp)
    800052ac:	01313423          	sd	s3,8(sp)
    800052b0:	01413023          	sd	s4,0(sp)
    800052b4:	03010413          	addi	s0,sp,48
    800052b8:	00050993          	mv	s3,a0
    800052bc:	00058a13          	mv	s4,a1
    LOCK();
    800052c0:	00100613          	li	a2,1
    800052c4:	00000593          	li	a1,0
    800052c8:	00006517          	auipc	a0,0x6
    800052cc:	38050513          	addi	a0,a0,896 # 8000b648 <lockPrint>
    800052d0:	ffffc097          	auipc	ra,0xffffc
    800052d4:	f4c080e7          	jalr	-180(ra) # 8000121c <copy_and_swap>
    800052d8:	00050863          	beqz	a0,800052e8 <_Z9getStringPci+0x50>
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	13c080e7          	jalr	316(ra) # 80001418 <_Z15thread_dispatchv>
    800052e4:	fddff06f          	j	800052c0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800052e8:	00000913          	li	s2,0
    800052ec:	00090493          	mv	s1,s2
    800052f0:	0019091b          	addiw	s2,s2,1
    800052f4:	03495a63          	bge	s2,s4,80005328 <_Z9getStringPci+0x90>
        cc = getc();
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	228080e7          	jalr	552(ra) # 80001520 <_Z4getcv>
        if(cc < 1)
    80005300:	02050463          	beqz	a0,80005328 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005304:	009984b3          	add	s1,s3,s1
    80005308:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000530c:	00a00793          	li	a5,10
    80005310:	00f50a63          	beq	a0,a5,80005324 <_Z9getStringPci+0x8c>
    80005314:	00d00793          	li	a5,13
    80005318:	fcf51ae3          	bne	a0,a5,800052ec <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000531c:	00090493          	mv	s1,s2
    80005320:	0080006f          	j	80005328 <_Z9getStringPci+0x90>
    80005324:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005328:	009984b3          	add	s1,s3,s1
    8000532c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005330:	00000613          	li	a2,0
    80005334:	00100593          	li	a1,1
    80005338:	00006517          	auipc	a0,0x6
    8000533c:	31050513          	addi	a0,a0,784 # 8000b648 <lockPrint>
    80005340:	ffffc097          	auipc	ra,0xffffc
    80005344:	edc080e7          	jalr	-292(ra) # 8000121c <copy_and_swap>
    80005348:	fe0514e3          	bnez	a0,80005330 <_Z9getStringPci+0x98>
    return buf;
}
    8000534c:	00098513          	mv	a0,s3
    80005350:	02813083          	ld	ra,40(sp)
    80005354:	02013403          	ld	s0,32(sp)
    80005358:	01813483          	ld	s1,24(sp)
    8000535c:	01013903          	ld	s2,16(sp)
    80005360:	00813983          	ld	s3,8(sp)
    80005364:	00013a03          	ld	s4,0(sp)
    80005368:	03010113          	addi	sp,sp,48
    8000536c:	00008067          	ret

0000000080005370 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005370:	ff010113          	addi	sp,sp,-16
    80005374:	00813423          	sd	s0,8(sp)
    80005378:	01010413          	addi	s0,sp,16
    8000537c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005380:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005384:	0006c603          	lbu	a2,0(a3)
    80005388:	fd06071b          	addiw	a4,a2,-48
    8000538c:	0ff77713          	andi	a4,a4,255
    80005390:	00900793          	li	a5,9
    80005394:	02e7e063          	bltu	a5,a4,800053b4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005398:	0025179b          	slliw	a5,a0,0x2
    8000539c:	00a787bb          	addw	a5,a5,a0
    800053a0:	0017979b          	slliw	a5,a5,0x1
    800053a4:	00168693          	addi	a3,a3,1
    800053a8:	00c787bb          	addw	a5,a5,a2
    800053ac:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800053b0:	fd5ff06f          	j	80005384 <_Z11stringToIntPKc+0x14>
    return n;
}
    800053b4:	00813403          	ld	s0,8(sp)
    800053b8:	01010113          	addi	sp,sp,16
    800053bc:	00008067          	ret

00000000800053c0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800053c0:	fc010113          	addi	sp,sp,-64
    800053c4:	02113c23          	sd	ra,56(sp)
    800053c8:	02813823          	sd	s0,48(sp)
    800053cc:	02913423          	sd	s1,40(sp)
    800053d0:	03213023          	sd	s2,32(sp)
    800053d4:	01313c23          	sd	s3,24(sp)
    800053d8:	04010413          	addi	s0,sp,64
    800053dc:	00050493          	mv	s1,a0
    800053e0:	00058913          	mv	s2,a1
    800053e4:	00060993          	mv	s3,a2
    LOCK();
    800053e8:	00100613          	li	a2,1
    800053ec:	00000593          	li	a1,0
    800053f0:	00006517          	auipc	a0,0x6
    800053f4:	25850513          	addi	a0,a0,600 # 8000b648 <lockPrint>
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	e24080e7          	jalr	-476(ra) # 8000121c <copy_and_swap>
    80005400:	00050863          	beqz	a0,80005410 <_Z8printIntiii+0x50>
    80005404:	ffffc097          	auipc	ra,0xffffc
    80005408:	014080e7          	jalr	20(ra) # 80001418 <_Z15thread_dispatchv>
    8000540c:	fddff06f          	j	800053e8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005410:	00098463          	beqz	s3,80005418 <_Z8printIntiii+0x58>
    80005414:	0804c463          	bltz	s1,8000549c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005418:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000541c:	00000593          	li	a1,0
    }

    i = 0;
    80005420:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005424:	0009079b          	sext.w	a5,s2
    80005428:	0325773b          	remuw	a4,a0,s2
    8000542c:	00048613          	mv	a2,s1
    80005430:	0014849b          	addiw	s1,s1,1
    80005434:	02071693          	slli	a3,a4,0x20
    80005438:	0206d693          	srli	a3,a3,0x20
    8000543c:	00006717          	auipc	a4,0x6
    80005440:	0f470713          	addi	a4,a4,244 # 8000b530 <digits>
    80005444:	00d70733          	add	a4,a4,a3
    80005448:	00074683          	lbu	a3,0(a4)
    8000544c:	fd040713          	addi	a4,s0,-48
    80005450:	00c70733          	add	a4,a4,a2
    80005454:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005458:	0005071b          	sext.w	a4,a0
    8000545c:	0325553b          	divuw	a0,a0,s2
    80005460:	fcf772e3          	bgeu	a4,a5,80005424 <_Z8printIntiii+0x64>
    if(neg)
    80005464:	00058c63          	beqz	a1,8000547c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005468:	fd040793          	addi	a5,s0,-48
    8000546c:	009784b3          	add	s1,a5,s1
    80005470:	02d00793          	li	a5,45
    80005474:	fef48823          	sb	a5,-16(s1)
    80005478:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000547c:	fff4849b          	addiw	s1,s1,-1
    80005480:	0204c463          	bltz	s1,800054a8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005484:	fd040793          	addi	a5,s0,-48
    80005488:	009787b3          	add	a5,a5,s1
    8000548c:	ff07c503          	lbu	a0,-16(a5)
    80005490:	ffffc097          	auipc	ra,0xffffc
    80005494:	0b8080e7          	jalr	184(ra) # 80001548 <_Z4putcc>
    80005498:	fe5ff06f          	j	8000547c <_Z8printIntiii+0xbc>
        x = -xx;
    8000549c:	4090053b          	negw	a0,s1
        neg = 1;
    800054a0:	00100593          	li	a1,1
        x = -xx;
    800054a4:	f7dff06f          	j	80005420 <_Z8printIntiii+0x60>

    UNLOCK();
    800054a8:	00000613          	li	a2,0
    800054ac:	00100593          	li	a1,1
    800054b0:	00006517          	auipc	a0,0x6
    800054b4:	19850513          	addi	a0,a0,408 # 8000b648 <lockPrint>
    800054b8:	ffffc097          	auipc	ra,0xffffc
    800054bc:	d64080e7          	jalr	-668(ra) # 8000121c <copy_and_swap>
    800054c0:	fe0514e3          	bnez	a0,800054a8 <_Z8printIntiii+0xe8>
    800054c4:	03813083          	ld	ra,56(sp)
    800054c8:	03013403          	ld	s0,48(sp)
    800054cc:	02813483          	ld	s1,40(sp)
    800054d0:	02013903          	ld	s2,32(sp)
    800054d4:	01813983          	ld	s3,24(sp)
    800054d8:	04010113          	addi	sp,sp,64
    800054dc:	00008067          	ret

00000000800054e0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054e0:	fd010113          	addi	sp,sp,-48
    800054e4:	02113423          	sd	ra,40(sp)
    800054e8:	02813023          	sd	s0,32(sp)
    800054ec:	00913c23          	sd	s1,24(sp)
    800054f0:	01213823          	sd	s2,16(sp)
    800054f4:	01313423          	sd	s3,8(sp)
    800054f8:	03010413          	addi	s0,sp,48
    800054fc:	00050493          	mv	s1,a0
    80005500:	00058913          	mv	s2,a1
    80005504:	0015879b          	addiw	a5,a1,1
    80005508:	0007851b          	sext.w	a0,a5
    8000550c:	00f4a023          	sw	a5,0(s1)
    80005510:	0004a823          	sw	zero,16(s1)
    80005514:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005518:	00251513          	slli	a0,a0,0x2
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	d20080e7          	jalr	-736(ra) # 8000123c <_Z9mem_allocm>
    80005524:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005528:	01000513          	li	a0,16
    8000552c:	ffffc097          	auipc	ra,0xffffc
    80005530:	7fc080e7          	jalr	2044(ra) # 80001d28 <_Znwm>
    80005534:	00050993          	mv	s3,a0
    80005538:	00000593          	li	a1,0
    8000553c:	ffffd097          	auipc	ra,0xffffd
    80005540:	ec0080e7          	jalr	-320(ra) # 800023fc <_ZN9SemaphoreC1Ej>
    80005544:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005548:	01000513          	li	a0,16
    8000554c:	ffffc097          	auipc	ra,0xffffc
    80005550:	7dc080e7          	jalr	2012(ra) # 80001d28 <_Znwm>
    80005554:	00050993          	mv	s3,a0
    80005558:	00090593          	mv	a1,s2
    8000555c:	ffffd097          	auipc	ra,0xffffd
    80005560:	ea0080e7          	jalr	-352(ra) # 800023fc <_ZN9SemaphoreC1Ej>
    80005564:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005568:	01000513          	li	a0,16
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	7bc080e7          	jalr	1980(ra) # 80001d28 <_Znwm>
    80005574:	00050913          	mv	s2,a0
    80005578:	00100593          	li	a1,1
    8000557c:	ffffd097          	auipc	ra,0xffffd
    80005580:	e80080e7          	jalr	-384(ra) # 800023fc <_ZN9SemaphoreC1Ej>
    80005584:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005588:	01000513          	li	a0,16
    8000558c:	ffffc097          	auipc	ra,0xffffc
    80005590:	79c080e7          	jalr	1948(ra) # 80001d28 <_Znwm>
    80005594:	00050913          	mv	s2,a0
    80005598:	00100593          	li	a1,1
    8000559c:	ffffd097          	auipc	ra,0xffffd
    800055a0:	e60080e7          	jalr	-416(ra) # 800023fc <_ZN9SemaphoreC1Ej>
    800055a4:	0324b823          	sd	s2,48(s1)
}
    800055a8:	02813083          	ld	ra,40(sp)
    800055ac:	02013403          	ld	s0,32(sp)
    800055b0:	01813483          	ld	s1,24(sp)
    800055b4:	01013903          	ld	s2,16(sp)
    800055b8:	00813983          	ld	s3,8(sp)
    800055bc:	03010113          	addi	sp,sp,48
    800055c0:	00008067          	ret
    800055c4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800055c8:	00098513          	mv	a0,s3
    800055cc:	ffffd097          	auipc	ra,0xffffd
    800055d0:	85c080e7          	jalr	-1956(ra) # 80001e28 <_ZdlPv>
    800055d4:	00048513          	mv	a0,s1
    800055d8:	00007097          	auipc	ra,0x7
    800055dc:	150080e7          	jalr	336(ra) # 8000c728 <_Unwind_Resume>
    800055e0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800055e4:	00098513          	mv	a0,s3
    800055e8:	ffffd097          	auipc	ra,0xffffd
    800055ec:	840080e7          	jalr	-1984(ra) # 80001e28 <_ZdlPv>
    800055f0:	00048513          	mv	a0,s1
    800055f4:	00007097          	auipc	ra,0x7
    800055f8:	134080e7          	jalr	308(ra) # 8000c728 <_Unwind_Resume>
    800055fc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005600:	00090513          	mv	a0,s2
    80005604:	ffffd097          	auipc	ra,0xffffd
    80005608:	824080e7          	jalr	-2012(ra) # 80001e28 <_ZdlPv>
    8000560c:	00048513          	mv	a0,s1
    80005610:	00007097          	auipc	ra,0x7
    80005614:	118080e7          	jalr	280(ra) # 8000c728 <_Unwind_Resume>
    80005618:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000561c:	00090513          	mv	a0,s2
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	808080e7          	jalr	-2040(ra) # 80001e28 <_ZdlPv>
    80005628:	00048513          	mv	a0,s1
    8000562c:	00007097          	auipc	ra,0x7
    80005630:	0fc080e7          	jalr	252(ra) # 8000c728 <_Unwind_Resume>

0000000080005634 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005634:	fe010113          	addi	sp,sp,-32
    80005638:	00113c23          	sd	ra,24(sp)
    8000563c:	00813823          	sd	s0,16(sp)
    80005640:	00913423          	sd	s1,8(sp)
    80005644:	01213023          	sd	s2,0(sp)
    80005648:	02010413          	addi	s0,sp,32
    8000564c:	00050493          	mv	s1,a0
    80005650:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005654:	01853503          	ld	a0,24(a0)
    80005658:	ffffd097          	auipc	ra,0xffffd
    8000565c:	ddc080e7          	jalr	-548(ra) # 80002434 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005660:	0304b503          	ld	a0,48(s1)
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	dd0080e7          	jalr	-560(ra) # 80002434 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000566c:	0084b783          	ld	a5,8(s1)
    80005670:	0144a703          	lw	a4,20(s1)
    80005674:	00271713          	slli	a4,a4,0x2
    80005678:	00e787b3          	add	a5,a5,a4
    8000567c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005680:	0144a783          	lw	a5,20(s1)
    80005684:	0017879b          	addiw	a5,a5,1
    80005688:	0004a703          	lw	a4,0(s1)
    8000568c:	02e7e7bb          	remw	a5,a5,a4
    80005690:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005694:	0304b503          	ld	a0,48(s1)
    80005698:	ffffd097          	auipc	ra,0xffffd
    8000569c:	dc8080e7          	jalr	-568(ra) # 80002460 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056a0:	0204b503          	ld	a0,32(s1)
    800056a4:	ffffd097          	auipc	ra,0xffffd
    800056a8:	dbc080e7          	jalr	-580(ra) # 80002460 <_ZN9Semaphore6signalEv>

}
    800056ac:	01813083          	ld	ra,24(sp)
    800056b0:	01013403          	ld	s0,16(sp)
    800056b4:	00813483          	ld	s1,8(sp)
    800056b8:	00013903          	ld	s2,0(sp)
    800056bc:	02010113          	addi	sp,sp,32
    800056c0:	00008067          	ret

00000000800056c4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800056c4:	fe010113          	addi	sp,sp,-32
    800056c8:	00113c23          	sd	ra,24(sp)
    800056cc:	00813823          	sd	s0,16(sp)
    800056d0:	00913423          	sd	s1,8(sp)
    800056d4:	01213023          	sd	s2,0(sp)
    800056d8:	02010413          	addi	s0,sp,32
    800056dc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800056e0:	02053503          	ld	a0,32(a0)
    800056e4:	ffffd097          	auipc	ra,0xffffd
    800056e8:	d50080e7          	jalr	-688(ra) # 80002434 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800056ec:	0284b503          	ld	a0,40(s1)
    800056f0:	ffffd097          	auipc	ra,0xffffd
    800056f4:	d44080e7          	jalr	-700(ra) # 80002434 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800056f8:	0084b703          	ld	a4,8(s1)
    800056fc:	0104a783          	lw	a5,16(s1)
    80005700:	00279693          	slli	a3,a5,0x2
    80005704:	00d70733          	add	a4,a4,a3
    80005708:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000570c:	0017879b          	addiw	a5,a5,1
    80005710:	0004a703          	lw	a4,0(s1)
    80005714:	02e7e7bb          	remw	a5,a5,a4
    80005718:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000571c:	0284b503          	ld	a0,40(s1)
    80005720:	ffffd097          	auipc	ra,0xffffd
    80005724:	d40080e7          	jalr	-704(ra) # 80002460 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005728:	0184b503          	ld	a0,24(s1)
    8000572c:	ffffd097          	auipc	ra,0xffffd
    80005730:	d34080e7          	jalr	-716(ra) # 80002460 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005734:	00090513          	mv	a0,s2
    80005738:	01813083          	ld	ra,24(sp)
    8000573c:	01013403          	ld	s0,16(sp)
    80005740:	00813483          	ld	s1,8(sp)
    80005744:	00013903          	ld	s2,0(sp)
    80005748:	02010113          	addi	sp,sp,32
    8000574c:	00008067          	ret

0000000080005750 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005750:	fe010113          	addi	sp,sp,-32
    80005754:	00113c23          	sd	ra,24(sp)
    80005758:	00813823          	sd	s0,16(sp)
    8000575c:	00913423          	sd	s1,8(sp)
    80005760:	01213023          	sd	s2,0(sp)
    80005764:	02010413          	addi	s0,sp,32
    80005768:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000576c:	02853503          	ld	a0,40(a0)
    80005770:	ffffd097          	auipc	ra,0xffffd
    80005774:	cc4080e7          	jalr	-828(ra) # 80002434 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005778:	0304b503          	ld	a0,48(s1)
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	cb8080e7          	jalr	-840(ra) # 80002434 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005784:	0144a783          	lw	a5,20(s1)
    80005788:	0104a903          	lw	s2,16(s1)
    8000578c:	0327ce63          	blt	a5,s2,800057c8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005790:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005794:	0304b503          	ld	a0,48(s1)
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	cc8080e7          	jalr	-824(ra) # 80002460 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800057a0:	0284b503          	ld	a0,40(s1)
    800057a4:	ffffd097          	auipc	ra,0xffffd
    800057a8:	cbc080e7          	jalr	-836(ra) # 80002460 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057ac:	00090513          	mv	a0,s2
    800057b0:	01813083          	ld	ra,24(sp)
    800057b4:	01013403          	ld	s0,16(sp)
    800057b8:	00813483          	ld	s1,8(sp)
    800057bc:	00013903          	ld	s2,0(sp)
    800057c0:	02010113          	addi	sp,sp,32
    800057c4:	00008067          	ret
        ret = cap - head + tail;
    800057c8:	0004a703          	lw	a4,0(s1)
    800057cc:	4127093b          	subw	s2,a4,s2
    800057d0:	00f9093b          	addw	s2,s2,a5
    800057d4:	fc1ff06f          	j	80005794 <_ZN9BufferCPP6getCntEv+0x44>

00000000800057d8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800057d8:	fe010113          	addi	sp,sp,-32
    800057dc:	00113c23          	sd	ra,24(sp)
    800057e0:	00813823          	sd	s0,16(sp)
    800057e4:	00913423          	sd	s1,8(sp)
    800057e8:	02010413          	addi	s0,sp,32
    800057ec:	00050493          	mv	s1,a0
    Console::putc('\n');
    800057f0:	00a00513          	li	a0,10
    800057f4:	ffffd097          	auipc	ra,0xffffd
    800057f8:	c98080e7          	jalr	-872(ra) # 8000248c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800057fc:	00004517          	auipc	a0,0x4
    80005800:	b8450513          	addi	a0,a0,-1148 # 80009380 <CONSOLE_STATUS+0x370>
    80005804:	00000097          	auipc	ra,0x0
    80005808:	a0c080e7          	jalr	-1524(ra) # 80005210 <_Z11printStringPKc>
    while (getCnt()) {
    8000580c:	00048513          	mv	a0,s1
    80005810:	00000097          	auipc	ra,0x0
    80005814:	f40080e7          	jalr	-192(ra) # 80005750 <_ZN9BufferCPP6getCntEv>
    80005818:	02050c63          	beqz	a0,80005850 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000581c:	0084b783          	ld	a5,8(s1)
    80005820:	0104a703          	lw	a4,16(s1)
    80005824:	00271713          	slli	a4,a4,0x2
    80005828:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000582c:	0007c503          	lbu	a0,0(a5)
    80005830:	ffffd097          	auipc	ra,0xffffd
    80005834:	c5c080e7          	jalr	-932(ra) # 8000248c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005838:	0104a783          	lw	a5,16(s1)
    8000583c:	0017879b          	addiw	a5,a5,1
    80005840:	0004a703          	lw	a4,0(s1)
    80005844:	02e7e7bb          	remw	a5,a5,a4
    80005848:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000584c:	fc1ff06f          	j	8000580c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005850:	02100513          	li	a0,33
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	c38080e7          	jalr	-968(ra) # 8000248c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000585c:	00a00513          	li	a0,10
    80005860:	ffffd097          	auipc	ra,0xffffd
    80005864:	c2c080e7          	jalr	-980(ra) # 8000248c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005868:	0084b503          	ld	a0,8(s1)
    8000586c:	ffffc097          	auipc	ra,0xffffc
    80005870:	a10080e7          	jalr	-1520(ra) # 8000127c <_Z8mem_freePv>
    delete itemAvailable;
    80005874:	0204b503          	ld	a0,32(s1)
    80005878:	00050863          	beqz	a0,80005888 <_ZN9BufferCPPD1Ev+0xb0>
    8000587c:	00053783          	ld	a5,0(a0)
    80005880:	0087b783          	ld	a5,8(a5)
    80005884:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005888:	0184b503          	ld	a0,24(s1)
    8000588c:	00050863          	beqz	a0,8000589c <_ZN9BufferCPPD1Ev+0xc4>
    80005890:	00053783          	ld	a5,0(a0)
    80005894:	0087b783          	ld	a5,8(a5)
    80005898:	000780e7          	jalr	a5
    delete mutexTail;
    8000589c:	0304b503          	ld	a0,48(s1)
    800058a0:	00050863          	beqz	a0,800058b0 <_ZN9BufferCPPD1Ev+0xd8>
    800058a4:	00053783          	ld	a5,0(a0)
    800058a8:	0087b783          	ld	a5,8(a5)
    800058ac:	000780e7          	jalr	a5
    delete mutexHead;
    800058b0:	0284b503          	ld	a0,40(s1)
    800058b4:	00050863          	beqz	a0,800058c4 <_ZN9BufferCPPD1Ev+0xec>
    800058b8:	00053783          	ld	a5,0(a0)
    800058bc:	0087b783          	ld	a5,8(a5)
    800058c0:	000780e7          	jalr	a5
}
    800058c4:	01813083          	ld	ra,24(sp)
    800058c8:	01013403          	ld	s0,16(sp)
    800058cc:	00813483          	ld	s1,8(sp)
    800058d0:	02010113          	addi	sp,sp,32
    800058d4:	00008067          	ret

00000000800058d8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800058d8:	fe010113          	addi	sp,sp,-32
    800058dc:	00113c23          	sd	ra,24(sp)
    800058e0:	00813823          	sd	s0,16(sp)
    800058e4:	00913423          	sd	s1,8(sp)
    800058e8:	01213023          	sd	s2,0(sp)
    800058ec:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800058f0:	00004517          	auipc	a0,0x4
    800058f4:	aa850513          	addi	a0,a0,-1368 # 80009398 <CONSOLE_STATUS+0x388>
    800058f8:	00000097          	auipc	ra,0x0
    800058fc:	918080e7          	jalr	-1768(ra) # 80005210 <_Z11printStringPKc>
    int test = getc() - '0';
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	c20080e7          	jalr	-992(ra) # 80001520 <_Z4getcv>
    80005908:	00050913          	mv	s2,a0
    8000590c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	c10080e7          	jalr	-1008(ra) # 80001520 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005918:	fcb9091b          	addiw	s2,s2,-53
    8000591c:	00100793          	li	a5,1
    80005920:	0327f463          	bgeu	a5,s2,80005948 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005924:	00700793          	li	a5,7
    80005928:	0e97e263          	bltu	a5,s1,80005a0c <_Z8userMainv+0x134>
    8000592c:	00249493          	slli	s1,s1,0x2
    80005930:	00004717          	auipc	a4,0x4
    80005934:	c8070713          	addi	a4,a4,-896 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80005938:	00e484b3          	add	s1,s1,a4
    8000593c:	0004a783          	lw	a5,0(s1)
    80005940:	00e787b3          	add	a5,a5,a4
    80005944:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005948:	00004517          	auipc	a0,0x4
    8000594c:	a7050513          	addi	a0,a0,-1424 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80005950:	00000097          	auipc	ra,0x0
    80005954:	8c0080e7          	jalr	-1856(ra) # 80005210 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005958:	01813083          	ld	ra,24(sp)
    8000595c:	01013403          	ld	s0,16(sp)
    80005960:	00813483          	ld	s1,8(sp)
    80005964:	00013903          	ld	s2,0(sp)
    80005968:	02010113          	addi	sp,sp,32
    8000596c:	00008067          	ret
            Threads_C_API_test();
    80005970:	fffff097          	auipc	ra,0xfffff
    80005974:	f18080e7          	jalr	-232(ra) # 80004888 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005978:	00004517          	auipc	a0,0x4
    8000597c:	a7050513          	addi	a0,a0,-1424 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005980:	00000097          	auipc	ra,0x0
    80005984:	890080e7          	jalr	-1904(ra) # 80005210 <_Z11printStringPKc>
            break;
    80005988:	fd1ff06f          	j	80005958 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    8000598c:	ffffe097          	auipc	ra,0xffffe
    80005990:	ddc080e7          	jalr	-548(ra) # 80003768 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005994:	00004517          	auipc	a0,0x4
    80005998:	a9450513          	addi	a0,a0,-1388 # 80009428 <CONSOLE_STATUS+0x418>
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	874080e7          	jalr	-1932(ra) # 80005210 <_Z11printStringPKc>
            break;
    800059a4:	fb5ff06f          	j	80005958 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800059a8:	ffffd097          	auipc	ra,0xffffd
    800059ac:	614080e7          	jalr	1556(ra) # 80002fbc <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800059b0:	00004517          	auipc	a0,0x4
    800059b4:	ab850513          	addi	a0,a0,-1352 # 80009468 <CONSOLE_STATUS+0x458>
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	858080e7          	jalr	-1960(ra) # 80005210 <_Z11printStringPKc>
            break;
    800059c0:	f99ff06f          	j	80005958 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800059c4:	fffff097          	auipc	ra,0xfffff
    800059c8:	208080e7          	jalr	520(ra) # 80004bcc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800059cc:	00004517          	auipc	a0,0x4
    800059d0:	aec50513          	addi	a0,a0,-1300 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800059d4:	00000097          	auipc	ra,0x0
    800059d8:	83c080e7          	jalr	-1988(ra) # 80005210 <_Z11printStringPKc>
            break;
    800059dc:	f7dff06f          	j	80005958 <_Z8userMainv+0x80>
            System_Mode_test();
    800059e0:	00000097          	auipc	ra,0x0
    800059e4:	658080e7          	jalr	1624(ra) # 80006038 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800059e8:	00004517          	auipc	a0,0x4
    800059ec:	b2850513          	addi	a0,a0,-1240 # 80009510 <CONSOLE_STATUS+0x500>
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	820080e7          	jalr	-2016(ra) # 80005210 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800059f8:	00004517          	auipc	a0,0x4
    800059fc:	b3850513          	addi	a0,a0,-1224 # 80009530 <CONSOLE_STATUS+0x520>
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	810080e7          	jalr	-2032(ra) # 80005210 <_Z11printStringPKc>
            break;
    80005a08:	f51ff06f          	j	80005958 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005a0c:	00004517          	auipc	a0,0x4
    80005a10:	b7c50513          	addi	a0,a0,-1156 # 80009588 <CONSOLE_STATUS+0x578>
    80005a14:	fffff097          	auipc	ra,0xfffff
    80005a18:	7fc080e7          	jalr	2044(ra) # 80005210 <_Z11printStringPKc>
    80005a1c:	f3dff06f          	j	80005958 <_Z8userMainv+0x80>

0000000080005a20 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a20:	fe010113          	addi	sp,sp,-32
    80005a24:	00113c23          	sd	ra,24(sp)
    80005a28:	00813823          	sd	s0,16(sp)
    80005a2c:	00913423          	sd	s1,8(sp)
    80005a30:	01213023          	sd	s2,0(sp)
    80005a34:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a38:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a3c:	00600493          	li	s1,6
    while (--i > 0) {
    80005a40:	fff4849b          	addiw	s1,s1,-1
    80005a44:	04905463          	blez	s1,80005a8c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a48:	00004517          	auipc	a0,0x4
    80005a4c:	b8850513          	addi	a0,a0,-1144 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005a50:	fffff097          	auipc	ra,0xfffff
    80005a54:	7c0080e7          	jalr	1984(ra) # 80005210 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a58:	00000613          	li	a2,0
    80005a5c:	00a00593          	li	a1,10
    80005a60:	0009051b          	sext.w	a0,s2
    80005a64:	00000097          	auipc	ra,0x0
    80005a68:	95c080e7          	jalr	-1700(ra) # 800053c0 <_Z8printIntiii>
        printString(" !\n");
    80005a6c:	00004517          	auipc	a0,0x4
    80005a70:	b6c50513          	addi	a0,a0,-1172 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005a74:	fffff097          	auipc	ra,0xfffff
    80005a78:	79c080e7          	jalr	1948(ra) # 80005210 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a7c:	00090513          	mv	a0,s2
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	a74080e7          	jalr	-1420(ra) # 800014f4 <_Z10time_sleepm>
    while (--i > 0) {
    80005a88:	fb9ff06f          	j	80005a40 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a8c:	00a00793          	li	a5,10
    80005a90:	02f95933          	divu	s2,s2,a5
    80005a94:	fff90913          	addi	s2,s2,-1
    80005a98:	00006797          	auipc	a5,0x6
    80005a9c:	bb878793          	addi	a5,a5,-1096 # 8000b650 <_ZL8finished>
    80005aa0:	01278933          	add	s2,a5,s2
    80005aa4:	00100793          	li	a5,1
    80005aa8:	00f90023          	sb	a5,0(s2)
}
    80005aac:	01813083          	ld	ra,24(sp)
    80005ab0:	01013403          	ld	s0,16(sp)
    80005ab4:	00813483          	ld	s1,8(sp)
    80005ab8:	00013903          	ld	s2,0(sp)
    80005abc:	02010113          	addi	sp,sp,32
    80005ac0:	00008067          	ret

0000000080005ac4 <_Z12testSleepingv>:

void testSleeping() {
    80005ac4:	fc010113          	addi	sp,sp,-64
    80005ac8:	02113c23          	sd	ra,56(sp)
    80005acc:	02813823          	sd	s0,48(sp)
    80005ad0:	02913423          	sd	s1,40(sp)
    80005ad4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ad8:	00a00793          	li	a5,10
    80005adc:	fcf43823          	sd	a5,-48(s0)
    80005ae0:	01400793          	li	a5,20
    80005ae4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ae8:	00000493          	li	s1,0
    80005aec:	02c0006f          	j	80005b18 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005af0:	00349793          	slli	a5,s1,0x3
    80005af4:	fd040613          	addi	a2,s0,-48
    80005af8:	00f60633          	add	a2,a2,a5
    80005afc:	00000597          	auipc	a1,0x0
    80005b00:	f2458593          	addi	a1,a1,-220 # 80005a20 <_ZL9sleepyRunPv>
    80005b04:	fc040513          	addi	a0,s0,-64
    80005b08:	00f50533          	add	a0,a0,a5
    80005b0c:	ffffb097          	auipc	ra,0xffffb
    80005b10:	7e4080e7          	jalr	2020(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b14:	0014849b          	addiw	s1,s1,1
    80005b18:	00100793          	li	a5,1
    80005b1c:	fc97dae3          	bge	a5,s1,80005af0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b20:	00006797          	auipc	a5,0x6
    80005b24:	b307c783          	lbu	a5,-1232(a5) # 8000b650 <_ZL8finished>
    80005b28:	fe078ce3          	beqz	a5,80005b20 <_Z12testSleepingv+0x5c>
    80005b2c:	00006797          	auipc	a5,0x6
    80005b30:	b257c783          	lbu	a5,-1243(a5) # 8000b651 <_ZL8finished+0x1>
    80005b34:	fe0786e3          	beqz	a5,80005b20 <_Z12testSleepingv+0x5c>
}
    80005b38:	03813083          	ld	ra,56(sp)
    80005b3c:	03013403          	ld	s0,48(sp)
    80005b40:	02813483          	ld	s1,40(sp)
    80005b44:	04010113          	addi	sp,sp,64
    80005b48:	00008067          	ret

0000000080005b4c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b4c:	fe010113          	addi	sp,sp,-32
    80005b50:	00113c23          	sd	ra,24(sp)
    80005b54:	00813823          	sd	s0,16(sp)
    80005b58:	00913423          	sd	s1,8(sp)
    80005b5c:	01213023          	sd	s2,0(sp)
    80005b60:	02010413          	addi	s0,sp,32
    80005b64:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b68:	00100793          	li	a5,1
    80005b6c:	02a7f863          	bgeu	a5,a0,80005b9c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b70:	00a00793          	li	a5,10
    80005b74:	02f577b3          	remu	a5,a0,a5
    80005b78:	02078e63          	beqz	a5,80005bb4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b7c:	fff48513          	addi	a0,s1,-1
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	fcc080e7          	jalr	-52(ra) # 80005b4c <_ZL9fibonaccim>
    80005b88:	00050913          	mv	s2,a0
    80005b8c:	ffe48513          	addi	a0,s1,-2
    80005b90:	00000097          	auipc	ra,0x0
    80005b94:	fbc080e7          	jalr	-68(ra) # 80005b4c <_ZL9fibonaccim>
    80005b98:	00a90533          	add	a0,s2,a0
}
    80005b9c:	01813083          	ld	ra,24(sp)
    80005ba0:	01013403          	ld	s0,16(sp)
    80005ba4:	00813483          	ld	s1,8(sp)
    80005ba8:	00013903          	ld	s2,0(sp)
    80005bac:	02010113          	addi	sp,sp,32
    80005bb0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	864080e7          	jalr	-1948(ra) # 80001418 <_Z15thread_dispatchv>
    80005bbc:	fc1ff06f          	j	80005b7c <_ZL9fibonaccim+0x30>

0000000080005bc0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005bc0:	fe010113          	addi	sp,sp,-32
    80005bc4:	00113c23          	sd	ra,24(sp)
    80005bc8:	00813823          	sd	s0,16(sp)
    80005bcc:	00913423          	sd	s1,8(sp)
    80005bd0:	01213023          	sd	s2,0(sp)
    80005bd4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bd8:	00a00493          	li	s1,10
    80005bdc:	0400006f          	j	80005c1c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005be0:	00003517          	auipc	a0,0x3
    80005be4:	6f850513          	addi	a0,a0,1784 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005be8:	fffff097          	auipc	ra,0xfffff
    80005bec:	628080e7          	jalr	1576(ra) # 80005210 <_Z11printStringPKc>
    80005bf0:	00000613          	li	a2,0
    80005bf4:	00a00593          	li	a1,10
    80005bf8:	00048513          	mv	a0,s1
    80005bfc:	fffff097          	auipc	ra,0xfffff
    80005c00:	7c4080e7          	jalr	1988(ra) # 800053c0 <_Z8printIntiii>
    80005c04:	00004517          	auipc	a0,0x4
    80005c08:	90450513          	addi	a0,a0,-1788 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005c0c:	fffff097          	auipc	ra,0xfffff
    80005c10:	604080e7          	jalr	1540(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c14:	0014849b          	addiw	s1,s1,1
    80005c18:	0ff4f493          	andi	s1,s1,255
    80005c1c:	00c00793          	li	a5,12
    80005c20:	fc97f0e3          	bgeu	a5,s1,80005be0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c24:	00003517          	auipc	a0,0x3
    80005c28:	6bc50513          	addi	a0,a0,1724 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005c2c:	fffff097          	auipc	ra,0xfffff
    80005c30:	5e4080e7          	jalr	1508(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c34:	00500313          	li	t1,5
    thread_dispatch();
    80005c38:	ffffb097          	auipc	ra,0xffffb
    80005c3c:	7e0080e7          	jalr	2016(ra) # 80001418 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c40:	01000513          	li	a0,16
    80005c44:	00000097          	auipc	ra,0x0
    80005c48:	f08080e7          	jalr	-248(ra) # 80005b4c <_ZL9fibonaccim>
    80005c4c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c50:	00003517          	auipc	a0,0x3
    80005c54:	6a050513          	addi	a0,a0,1696 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005c58:	fffff097          	auipc	ra,0xfffff
    80005c5c:	5b8080e7          	jalr	1464(ra) # 80005210 <_Z11printStringPKc>
    80005c60:	00000613          	li	a2,0
    80005c64:	00a00593          	li	a1,10
    80005c68:	0009051b          	sext.w	a0,s2
    80005c6c:	fffff097          	auipc	ra,0xfffff
    80005c70:	754080e7          	jalr	1876(ra) # 800053c0 <_Z8printIntiii>
    80005c74:	00004517          	auipc	a0,0x4
    80005c78:	89450513          	addi	a0,a0,-1900 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005c7c:	fffff097          	auipc	ra,0xfffff
    80005c80:	594080e7          	jalr	1428(ra) # 80005210 <_Z11printStringPKc>
    80005c84:	0400006f          	j	80005cc4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c88:	00003517          	auipc	a0,0x3
    80005c8c:	65050513          	addi	a0,a0,1616 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005c90:	fffff097          	auipc	ra,0xfffff
    80005c94:	580080e7          	jalr	1408(ra) # 80005210 <_Z11printStringPKc>
    80005c98:	00000613          	li	a2,0
    80005c9c:	00a00593          	li	a1,10
    80005ca0:	00048513          	mv	a0,s1
    80005ca4:	fffff097          	auipc	ra,0xfffff
    80005ca8:	71c080e7          	jalr	1820(ra) # 800053c0 <_Z8printIntiii>
    80005cac:	00004517          	auipc	a0,0x4
    80005cb0:	85c50513          	addi	a0,a0,-1956 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005cb4:	fffff097          	auipc	ra,0xfffff
    80005cb8:	55c080e7          	jalr	1372(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005cbc:	0014849b          	addiw	s1,s1,1
    80005cc0:	0ff4f493          	andi	s1,s1,255
    80005cc4:	00f00793          	li	a5,15
    80005cc8:	fc97f0e3          	bgeu	a5,s1,80005c88 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ccc:	00003517          	auipc	a0,0x3
    80005cd0:	63450513          	addi	a0,a0,1588 # 80009300 <CONSOLE_STATUS+0x2f0>
    80005cd4:	fffff097          	auipc	ra,0xfffff
    80005cd8:	53c080e7          	jalr	1340(ra) # 80005210 <_Z11printStringPKc>
    finishedD = true;
    80005cdc:	00100793          	li	a5,1
    80005ce0:	00006717          	auipc	a4,0x6
    80005ce4:	96f70923          	sb	a5,-1678(a4) # 8000b652 <_ZL9finishedD>
    thread_dispatch();
    80005ce8:	ffffb097          	auipc	ra,0xffffb
    80005cec:	730080e7          	jalr	1840(ra) # 80001418 <_Z15thread_dispatchv>
}
    80005cf0:	01813083          	ld	ra,24(sp)
    80005cf4:	01013403          	ld	s0,16(sp)
    80005cf8:	00813483          	ld	s1,8(sp)
    80005cfc:	00013903          	ld	s2,0(sp)
    80005d00:	02010113          	addi	sp,sp,32
    80005d04:	00008067          	ret

0000000080005d08 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005d08:	fe010113          	addi	sp,sp,-32
    80005d0c:	00113c23          	sd	ra,24(sp)
    80005d10:	00813823          	sd	s0,16(sp)
    80005d14:	00913423          	sd	s1,8(sp)
    80005d18:	01213023          	sd	s2,0(sp)
    80005d1c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d20:	00000493          	li	s1,0
    80005d24:	0400006f          	j	80005d64 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	58050513          	addi	a0,a0,1408 # 800092a8 <CONSOLE_STATUS+0x298>
    80005d30:	fffff097          	auipc	ra,0xfffff
    80005d34:	4e0080e7          	jalr	1248(ra) # 80005210 <_Z11printStringPKc>
    80005d38:	00000613          	li	a2,0
    80005d3c:	00a00593          	li	a1,10
    80005d40:	00048513          	mv	a0,s1
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	67c080e7          	jalr	1660(ra) # 800053c0 <_Z8printIntiii>
    80005d4c:	00003517          	auipc	a0,0x3
    80005d50:	7bc50513          	addi	a0,a0,1980 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	4bc080e7          	jalr	1212(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d5c:	0014849b          	addiw	s1,s1,1
    80005d60:	0ff4f493          	andi	s1,s1,255
    80005d64:	00200793          	li	a5,2
    80005d68:	fc97f0e3          	bgeu	a5,s1,80005d28 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d6c:	00003517          	auipc	a0,0x3
    80005d70:	54450513          	addi	a0,a0,1348 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005d74:	fffff097          	auipc	ra,0xfffff
    80005d78:	49c080e7          	jalr	1180(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d7c:	00700313          	li	t1,7
    thread_dispatch();
    80005d80:	ffffb097          	auipc	ra,0xffffb
    80005d84:	698080e7          	jalr	1688(ra) # 80001418 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d88:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d8c:	00003517          	auipc	a0,0x3
    80005d90:	53450513          	addi	a0,a0,1332 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005d94:	fffff097          	auipc	ra,0xfffff
    80005d98:	47c080e7          	jalr	1148(ra) # 80005210 <_Z11printStringPKc>
    80005d9c:	00000613          	li	a2,0
    80005da0:	00a00593          	li	a1,10
    80005da4:	0009051b          	sext.w	a0,s2
    80005da8:	fffff097          	auipc	ra,0xfffff
    80005dac:	618080e7          	jalr	1560(ra) # 800053c0 <_Z8printIntiii>
    80005db0:	00003517          	auipc	a0,0x3
    80005db4:	75850513          	addi	a0,a0,1880 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005db8:	fffff097          	auipc	ra,0xfffff
    80005dbc:	458080e7          	jalr	1112(ra) # 80005210 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005dc0:	00c00513          	li	a0,12
    80005dc4:	00000097          	auipc	ra,0x0
    80005dc8:	d88080e7          	jalr	-632(ra) # 80005b4c <_ZL9fibonaccim>
    80005dcc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005dd0:	00003517          	auipc	a0,0x3
    80005dd4:	4f850513          	addi	a0,a0,1272 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005dd8:	fffff097          	auipc	ra,0xfffff
    80005ddc:	438080e7          	jalr	1080(ra) # 80005210 <_Z11printStringPKc>
    80005de0:	00000613          	li	a2,0
    80005de4:	00a00593          	li	a1,10
    80005de8:	0009051b          	sext.w	a0,s2
    80005dec:	fffff097          	auipc	ra,0xfffff
    80005df0:	5d4080e7          	jalr	1492(ra) # 800053c0 <_Z8printIntiii>
    80005df4:	00003517          	auipc	a0,0x3
    80005df8:	71450513          	addi	a0,a0,1812 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005dfc:	fffff097          	auipc	ra,0xfffff
    80005e00:	414080e7          	jalr	1044(ra) # 80005210 <_Z11printStringPKc>
    80005e04:	0400006f          	j	80005e44 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005e08:	00003517          	auipc	a0,0x3
    80005e0c:	4a050513          	addi	a0,a0,1184 # 800092a8 <CONSOLE_STATUS+0x298>
    80005e10:	fffff097          	auipc	ra,0xfffff
    80005e14:	400080e7          	jalr	1024(ra) # 80005210 <_Z11printStringPKc>
    80005e18:	00000613          	li	a2,0
    80005e1c:	00a00593          	li	a1,10
    80005e20:	00048513          	mv	a0,s1
    80005e24:	fffff097          	auipc	ra,0xfffff
    80005e28:	59c080e7          	jalr	1436(ra) # 800053c0 <_Z8printIntiii>
    80005e2c:	00003517          	auipc	a0,0x3
    80005e30:	6dc50513          	addi	a0,a0,1756 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005e34:	fffff097          	auipc	ra,0xfffff
    80005e38:	3dc080e7          	jalr	988(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e3c:	0014849b          	addiw	s1,s1,1
    80005e40:	0ff4f493          	andi	s1,s1,255
    80005e44:	00500793          	li	a5,5
    80005e48:	fc97f0e3          	bgeu	a5,s1,80005e08 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e4c:	00003517          	auipc	a0,0x3
    80005e50:	43c50513          	addi	a0,a0,1084 # 80009288 <CONSOLE_STATUS+0x278>
    80005e54:	fffff097          	auipc	ra,0xfffff
    80005e58:	3bc080e7          	jalr	956(ra) # 80005210 <_Z11printStringPKc>
    finishedC = true;
    80005e5c:	00100793          	li	a5,1
    80005e60:	00005717          	auipc	a4,0x5
    80005e64:	7ef709a3          	sb	a5,2035(a4) # 8000b653 <_ZL9finishedC>
    thread_dispatch();
    80005e68:	ffffb097          	auipc	ra,0xffffb
    80005e6c:	5b0080e7          	jalr	1456(ra) # 80001418 <_Z15thread_dispatchv>
}
    80005e70:	01813083          	ld	ra,24(sp)
    80005e74:	01013403          	ld	s0,16(sp)
    80005e78:	00813483          	ld	s1,8(sp)
    80005e7c:	00013903          	ld	s2,0(sp)
    80005e80:	02010113          	addi	sp,sp,32
    80005e84:	00008067          	ret

0000000080005e88 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e88:	fe010113          	addi	sp,sp,-32
    80005e8c:	00113c23          	sd	ra,24(sp)
    80005e90:	00813823          	sd	s0,16(sp)
    80005e94:	00913423          	sd	s1,8(sp)
    80005e98:	01213023          	sd	s2,0(sp)
    80005e9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005ea0:	00000913          	li	s2,0
    80005ea4:	0400006f          	j	80005ee4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005ea8:	ffffb097          	auipc	ra,0xffffb
    80005eac:	570080e7          	jalr	1392(ra) # 80001418 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005eb0:	00148493          	addi	s1,s1,1
    80005eb4:	000027b7          	lui	a5,0x2
    80005eb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005ebc:	0097ee63          	bltu	a5,s1,80005ed8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ec0:	00000713          	li	a4,0
    80005ec4:	000077b7          	lui	a5,0x7
    80005ec8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ecc:	fce7eee3          	bltu	a5,a4,80005ea8 <_ZL11workerBodyBPv+0x20>
    80005ed0:	00170713          	addi	a4,a4,1
    80005ed4:	ff1ff06f          	j	80005ec4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ed8:	00a00793          	li	a5,10
    80005edc:	04f90663          	beq	s2,a5,80005f28 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005ee0:	00190913          	addi	s2,s2,1
    80005ee4:	00f00793          	li	a5,15
    80005ee8:	0527e463          	bltu	a5,s2,80005f30 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005eec:	00003517          	auipc	a0,0x3
    80005ef0:	16450513          	addi	a0,a0,356 # 80009050 <CONSOLE_STATUS+0x40>
    80005ef4:	fffff097          	auipc	ra,0xfffff
    80005ef8:	31c080e7          	jalr	796(ra) # 80005210 <_Z11printStringPKc>
    80005efc:	00000613          	li	a2,0
    80005f00:	00a00593          	li	a1,10
    80005f04:	0009051b          	sext.w	a0,s2
    80005f08:	fffff097          	auipc	ra,0xfffff
    80005f0c:	4b8080e7          	jalr	1208(ra) # 800053c0 <_Z8printIntiii>
    80005f10:	00003517          	auipc	a0,0x3
    80005f14:	5f850513          	addi	a0,a0,1528 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005f18:	fffff097          	auipc	ra,0xfffff
    80005f1c:	2f8080e7          	jalr	760(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f20:	00000493          	li	s1,0
    80005f24:	f91ff06f          	j	80005eb4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f28:	14102ff3          	csrr	t6,sepc
    80005f2c:	fb5ff06f          	j	80005ee0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f30:	00003517          	auipc	a0,0x3
    80005f34:	36850513          	addi	a0,a0,872 # 80009298 <CONSOLE_STATUS+0x288>
    80005f38:	fffff097          	auipc	ra,0xfffff
    80005f3c:	2d8080e7          	jalr	728(ra) # 80005210 <_Z11printStringPKc>
    finishedB = true;
    80005f40:	00100793          	li	a5,1
    80005f44:	00005717          	auipc	a4,0x5
    80005f48:	70f70823          	sb	a5,1808(a4) # 8000b654 <_ZL9finishedB>
    thread_dispatch();
    80005f4c:	ffffb097          	auipc	ra,0xffffb
    80005f50:	4cc080e7          	jalr	1228(ra) # 80001418 <_Z15thread_dispatchv>
}
    80005f54:	01813083          	ld	ra,24(sp)
    80005f58:	01013403          	ld	s0,16(sp)
    80005f5c:	00813483          	ld	s1,8(sp)
    80005f60:	00013903          	ld	s2,0(sp)
    80005f64:	02010113          	addi	sp,sp,32
    80005f68:	00008067          	ret

0000000080005f6c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f6c:	fe010113          	addi	sp,sp,-32
    80005f70:	00113c23          	sd	ra,24(sp)
    80005f74:	00813823          	sd	s0,16(sp)
    80005f78:	00913423          	sd	s1,8(sp)
    80005f7c:	01213023          	sd	s2,0(sp)
    80005f80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f84:	00000913          	li	s2,0
    80005f88:	0380006f          	j	80005fc0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f8c:	ffffb097          	auipc	ra,0xffffb
    80005f90:	48c080e7          	jalr	1164(ra) # 80001418 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f94:	00148493          	addi	s1,s1,1
    80005f98:	000027b7          	lui	a5,0x2
    80005f9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fa0:	0097ee63          	bltu	a5,s1,80005fbc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fa4:	00000713          	li	a4,0
    80005fa8:	000077b7          	lui	a5,0x7
    80005fac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fb0:	fce7eee3          	bltu	a5,a4,80005f8c <_ZL11workerBodyAPv+0x20>
    80005fb4:	00170713          	addi	a4,a4,1
    80005fb8:	ff1ff06f          	j	80005fa8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005fbc:	00190913          	addi	s2,s2,1
    80005fc0:	00900793          	li	a5,9
    80005fc4:	0527e063          	bltu	a5,s2,80006004 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005fc8:	00003517          	auipc	a0,0x3
    80005fcc:	05850513          	addi	a0,a0,88 # 80009020 <CONSOLE_STATUS+0x10>
    80005fd0:	fffff097          	auipc	ra,0xfffff
    80005fd4:	240080e7          	jalr	576(ra) # 80005210 <_Z11printStringPKc>
    80005fd8:	00000613          	li	a2,0
    80005fdc:	00a00593          	li	a1,10
    80005fe0:	0009051b          	sext.w	a0,s2
    80005fe4:	fffff097          	auipc	ra,0xfffff
    80005fe8:	3dc080e7          	jalr	988(ra) # 800053c0 <_Z8printIntiii>
    80005fec:	00003517          	auipc	a0,0x3
    80005ff0:	51c50513          	addi	a0,a0,1308 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005ff4:	fffff097          	auipc	ra,0xfffff
    80005ff8:	21c080e7          	jalr	540(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ffc:	00000493          	li	s1,0
    80006000:	f99ff06f          	j	80005f98 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006004:	00003517          	auipc	a0,0x3
    80006008:	28450513          	addi	a0,a0,644 # 80009288 <CONSOLE_STATUS+0x278>
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	204080e7          	jalr	516(ra) # 80005210 <_Z11printStringPKc>
    finishedA = true;
    80006014:	00100793          	li	a5,1
    80006018:	00005717          	auipc	a4,0x5
    8000601c:	62f70ea3          	sb	a5,1597(a4) # 8000b655 <_ZL9finishedA>
}
    80006020:	01813083          	ld	ra,24(sp)
    80006024:	01013403          	ld	s0,16(sp)
    80006028:	00813483          	ld	s1,8(sp)
    8000602c:	00013903          	ld	s2,0(sp)
    80006030:	02010113          	addi	sp,sp,32
    80006034:	00008067          	ret

0000000080006038 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006038:	fd010113          	addi	sp,sp,-48
    8000603c:	02113423          	sd	ra,40(sp)
    80006040:	02813023          	sd	s0,32(sp)
    80006044:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006048:	00000613          	li	a2,0
    8000604c:	00000597          	auipc	a1,0x0
    80006050:	f2058593          	addi	a1,a1,-224 # 80005f6c <_ZL11workerBodyAPv>
    80006054:	fd040513          	addi	a0,s0,-48
    80006058:	ffffb097          	auipc	ra,0xffffb
    8000605c:	298080e7          	jalr	664(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    80006060:	00003517          	auipc	a0,0x3
    80006064:	2b050513          	addi	a0,a0,688 # 80009310 <CONSOLE_STATUS+0x300>
    80006068:	fffff097          	auipc	ra,0xfffff
    8000606c:	1a8080e7          	jalr	424(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006070:	00000613          	li	a2,0
    80006074:	00000597          	auipc	a1,0x0
    80006078:	e1458593          	addi	a1,a1,-492 # 80005e88 <_ZL11workerBodyBPv>
    8000607c:	fd840513          	addi	a0,s0,-40
    80006080:	ffffb097          	auipc	ra,0xffffb
    80006084:	270080e7          	jalr	624(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    80006088:	00003517          	auipc	a0,0x3
    8000608c:	2a050513          	addi	a0,a0,672 # 80009328 <CONSOLE_STATUS+0x318>
    80006090:	fffff097          	auipc	ra,0xfffff
    80006094:	180080e7          	jalr	384(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006098:	00000613          	li	a2,0
    8000609c:	00000597          	auipc	a1,0x0
    800060a0:	c6c58593          	addi	a1,a1,-916 # 80005d08 <_ZL11workerBodyCPv>
    800060a4:	fe040513          	addi	a0,s0,-32
    800060a8:	ffffb097          	auipc	ra,0xffffb
    800060ac:	248080e7          	jalr	584(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    800060b0:	00003517          	auipc	a0,0x3
    800060b4:	29050513          	addi	a0,a0,656 # 80009340 <CONSOLE_STATUS+0x330>
    800060b8:	fffff097          	auipc	ra,0xfffff
    800060bc:	158080e7          	jalr	344(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060c0:	00000613          	li	a2,0
    800060c4:	00000597          	auipc	a1,0x0
    800060c8:	afc58593          	addi	a1,a1,-1284 # 80005bc0 <_ZL11workerBodyDPv>
    800060cc:	fe840513          	addi	a0,s0,-24
    800060d0:	ffffb097          	auipc	ra,0xffffb
    800060d4:	220080e7          	jalr	544(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    800060d8:	00003517          	auipc	a0,0x3
    800060dc:	28050513          	addi	a0,a0,640 # 80009358 <CONSOLE_STATUS+0x348>
    800060e0:	fffff097          	auipc	ra,0xfffff
    800060e4:	130080e7          	jalr	304(ra) # 80005210 <_Z11printStringPKc>
    800060e8:	00c0006f          	j	800060f4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	32c080e7          	jalr	812(ra) # 80001418 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060f4:	00005797          	auipc	a5,0x5
    800060f8:	5617c783          	lbu	a5,1377(a5) # 8000b655 <_ZL9finishedA>
    800060fc:	fe0788e3          	beqz	a5,800060ec <_Z16System_Mode_testv+0xb4>
    80006100:	00005797          	auipc	a5,0x5
    80006104:	5547c783          	lbu	a5,1364(a5) # 8000b654 <_ZL9finishedB>
    80006108:	fe0782e3          	beqz	a5,800060ec <_Z16System_Mode_testv+0xb4>
    8000610c:	00005797          	auipc	a5,0x5
    80006110:	5477c783          	lbu	a5,1351(a5) # 8000b653 <_ZL9finishedC>
    80006114:	fc078ce3          	beqz	a5,800060ec <_Z16System_Mode_testv+0xb4>
    80006118:	00005797          	auipc	a5,0x5
    8000611c:	53a7c783          	lbu	a5,1338(a5) # 8000b652 <_ZL9finishedD>
    80006120:	fc0786e3          	beqz	a5,800060ec <_Z16System_Mode_testv+0xb4>
    }

}
    80006124:	02813083          	ld	ra,40(sp)
    80006128:	02013403          	ld	s0,32(sp)
    8000612c:	03010113          	addi	sp,sp,48
    80006130:	00008067          	ret

0000000080006134 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006134:	fe010113          	addi	sp,sp,-32
    80006138:	00113c23          	sd	ra,24(sp)
    8000613c:	00813823          	sd	s0,16(sp)
    80006140:	00913423          	sd	s1,8(sp)
    80006144:	01213023          	sd	s2,0(sp)
    80006148:	02010413          	addi	s0,sp,32
    8000614c:	00050493          	mv	s1,a0
    80006150:	00058913          	mv	s2,a1
    80006154:	0015879b          	addiw	a5,a1,1
    80006158:	0007851b          	sext.w	a0,a5
    8000615c:	00f4a023          	sw	a5,0(s1)
    80006160:	0004a823          	sw	zero,16(s1)
    80006164:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006168:	00251513          	slli	a0,a0,0x2
    8000616c:	ffffb097          	auipc	ra,0xffffb
    80006170:	0d0080e7          	jalr	208(ra) # 8000123c <_Z9mem_allocm>
    80006174:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006178:	00000593          	li	a1,0
    8000617c:	02048513          	addi	a0,s1,32
    80006180:	ffffb097          	auipc	ra,0xffffb
    80006184:	2b8080e7          	jalr	696(ra) # 80001438 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&spaceAvailable, _cap);
    80006188:	00090593          	mv	a1,s2
    8000618c:	01848513          	addi	a0,s1,24
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	2a8080e7          	jalr	680(ra) # 80001438 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexHead, 1);
    80006198:	00100593          	li	a1,1
    8000619c:	02848513          	addi	a0,s1,40
    800061a0:	ffffb097          	auipc	ra,0xffffb
    800061a4:	298080e7          	jalr	664(ra) # 80001438 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexTail, 1);
    800061a8:	00100593          	li	a1,1
    800061ac:	03048513          	addi	a0,s1,48
    800061b0:	ffffb097          	auipc	ra,0xffffb
    800061b4:	288080e7          	jalr	648(ra) # 80001438 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    800061b8:	01813083          	ld	ra,24(sp)
    800061bc:	01013403          	ld	s0,16(sp)
    800061c0:	00813483          	ld	s1,8(sp)
    800061c4:	00013903          	ld	s2,0(sp)
    800061c8:	02010113          	addi	sp,sp,32
    800061cc:	00008067          	ret

00000000800061d0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061d0:	fe010113          	addi	sp,sp,-32
    800061d4:	00113c23          	sd	ra,24(sp)
    800061d8:	00813823          	sd	s0,16(sp)
    800061dc:	00913423          	sd	s1,8(sp)
    800061e0:	01213023          	sd	s2,0(sp)
    800061e4:	02010413          	addi	s0,sp,32
    800061e8:	00050493          	mv	s1,a0
    800061ec:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061f0:	01853503          	ld	a0,24(a0)
    800061f4:	ffffb097          	auipc	ra,0xffffb
    800061f8:	2a8080e7          	jalr	680(ra) # 8000149c <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexTail);
    800061fc:	0304b503          	ld	a0,48(s1)
    80006200:	ffffb097          	auipc	ra,0xffffb
    80006204:	29c080e7          	jalr	668(ra) # 8000149c <_Z8sem_waitPN3ABI9SemaphoreE>
    buffer[tail] = val;
    80006208:	0084b783          	ld	a5,8(s1)
    8000620c:	0144a703          	lw	a4,20(s1)
    80006210:	00271713          	slli	a4,a4,0x2
    80006214:	00e787b3          	add	a5,a5,a4
    80006218:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000621c:	0144a783          	lw	a5,20(s1)
    80006220:	0017879b          	addiw	a5,a5,1
    80006224:	0004a703          	lw	a4,0(s1)
    80006228:	02e7e7bb          	remw	a5,a5,a4
    8000622c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006230:	0304b503          	ld	a0,48(s1)
    80006234:	ffffb097          	auipc	ra,0xffffb
    80006238:	294080e7          	jalr	660(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(itemAvailable);
    8000623c:	0204b503          	ld	a0,32(s1)
    80006240:	ffffb097          	auipc	ra,0xffffb
    80006244:	288080e7          	jalr	648(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>

}
    80006248:	01813083          	ld	ra,24(sp)
    8000624c:	01013403          	ld	s0,16(sp)
    80006250:	00813483          	ld	s1,8(sp)
    80006254:	00013903          	ld	s2,0(sp)
    80006258:	02010113          	addi	sp,sp,32
    8000625c:	00008067          	ret

0000000080006260 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006260:	fe010113          	addi	sp,sp,-32
    80006264:	00113c23          	sd	ra,24(sp)
    80006268:	00813823          	sd	s0,16(sp)
    8000626c:	00913423          	sd	s1,8(sp)
    80006270:	01213023          	sd	s2,0(sp)
    80006274:	02010413          	addi	s0,sp,32
    80006278:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000627c:	02053503          	ld	a0,32(a0)
    80006280:	ffffb097          	auipc	ra,0xffffb
    80006284:	21c080e7          	jalr	540(ra) # 8000149c <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexHead);
    80006288:	0284b503          	ld	a0,40(s1)
    8000628c:	ffffb097          	auipc	ra,0xffffb
    80006290:	210080e7          	jalr	528(ra) # 8000149c <_Z8sem_waitPN3ABI9SemaphoreE>

    int ret = buffer[head];
    80006294:	0084b703          	ld	a4,8(s1)
    80006298:	0104a783          	lw	a5,16(s1)
    8000629c:	00279693          	slli	a3,a5,0x2
    800062a0:	00d70733          	add	a4,a4,a3
    800062a4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062a8:	0017879b          	addiw	a5,a5,1
    800062ac:	0004a703          	lw	a4,0(s1)
    800062b0:	02e7e7bb          	remw	a5,a5,a4
    800062b4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062b8:	0284b503          	ld	a0,40(s1)
    800062bc:	ffffb097          	auipc	ra,0xffffb
    800062c0:	20c080e7          	jalr	524(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(spaceAvailable);
    800062c4:	0184b503          	ld	a0,24(s1)
    800062c8:	ffffb097          	auipc	ra,0xffffb
    800062cc:	200080e7          	jalr	512(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    800062d0:	00090513          	mv	a0,s2
    800062d4:	01813083          	ld	ra,24(sp)
    800062d8:	01013403          	ld	s0,16(sp)
    800062dc:	00813483          	ld	s1,8(sp)
    800062e0:	00013903          	ld	s2,0(sp)
    800062e4:	02010113          	addi	sp,sp,32
    800062e8:	00008067          	ret

00000000800062ec <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800062ec:	fe010113          	addi	sp,sp,-32
    800062f0:	00113c23          	sd	ra,24(sp)
    800062f4:	00813823          	sd	s0,16(sp)
    800062f8:	00913423          	sd	s1,8(sp)
    800062fc:	01213023          	sd	s2,0(sp)
    80006300:	02010413          	addi	s0,sp,32
    80006304:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006308:	02853503          	ld	a0,40(a0)
    8000630c:	ffffb097          	auipc	ra,0xffffb
    80006310:	190080e7          	jalr	400(ra) # 8000149c <_Z8sem_waitPN3ABI9SemaphoreE>
    sem_wait(mutexTail);
    80006314:	0304b503          	ld	a0,48(s1)
    80006318:	ffffb097          	auipc	ra,0xffffb
    8000631c:	184080e7          	jalr	388(ra) # 8000149c <_Z8sem_waitPN3ABI9SemaphoreE>

    if (tail >= head) {
    80006320:	0144a783          	lw	a5,20(s1)
    80006324:	0104a903          	lw	s2,16(s1)
    80006328:	0327ce63          	blt	a5,s2,80006364 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000632c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006330:	0304b503          	ld	a0,48(s1)
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	194080e7          	jalr	404(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>
    sem_signal(mutexHead);
    8000633c:	0284b503          	ld	a0,40(s1)
    80006340:	ffffb097          	auipc	ra,0xffffb
    80006344:	188080e7          	jalr	392(ra) # 800014c8 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    80006348:	00090513          	mv	a0,s2
    8000634c:	01813083          	ld	ra,24(sp)
    80006350:	01013403          	ld	s0,16(sp)
    80006354:	00813483          	ld	s1,8(sp)
    80006358:	00013903          	ld	s2,0(sp)
    8000635c:	02010113          	addi	sp,sp,32
    80006360:	00008067          	ret
        ret = cap - head + tail;
    80006364:	0004a703          	lw	a4,0(s1)
    80006368:	4127093b          	subw	s2,a4,s2
    8000636c:	00f9093b          	addw	s2,s2,a5
    80006370:	fc1ff06f          	j	80006330 <_ZN6Buffer6getCntEv+0x44>

0000000080006374 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006374:	fe010113          	addi	sp,sp,-32
    80006378:	00113c23          	sd	ra,24(sp)
    8000637c:	00813823          	sd	s0,16(sp)
    80006380:	00913423          	sd	s1,8(sp)
    80006384:	02010413          	addi	s0,sp,32
    80006388:	00050493          	mv	s1,a0
    putc('\n');
    8000638c:	00a00513          	li	a0,10
    80006390:	ffffb097          	auipc	ra,0xffffb
    80006394:	1b8080e7          	jalr	440(ra) # 80001548 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006398:	00003517          	auipc	a0,0x3
    8000639c:	fe850513          	addi	a0,a0,-24 # 80009380 <CONSOLE_STATUS+0x370>
    800063a0:	fffff097          	auipc	ra,0xfffff
    800063a4:	e70080e7          	jalr	-400(ra) # 80005210 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800063a8:	00048513          	mv	a0,s1
    800063ac:	00000097          	auipc	ra,0x0
    800063b0:	f40080e7          	jalr	-192(ra) # 800062ec <_ZN6Buffer6getCntEv>
    800063b4:	02a05c63          	blez	a0,800063ec <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063b8:	0084b783          	ld	a5,8(s1)
    800063bc:	0104a703          	lw	a4,16(s1)
    800063c0:	00271713          	slli	a4,a4,0x2
    800063c4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063c8:	0007c503          	lbu	a0,0(a5)
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	17c080e7          	jalr	380(ra) # 80001548 <_Z4putcc>
        head = (head + 1) % cap;
    800063d4:	0104a783          	lw	a5,16(s1)
    800063d8:	0017879b          	addiw	a5,a5,1
    800063dc:	0004a703          	lw	a4,0(s1)
    800063e0:	02e7e7bb          	remw	a5,a5,a4
    800063e4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063e8:	fc1ff06f          	j	800063a8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063ec:	02100513          	li	a0,33
    800063f0:	ffffb097          	auipc	ra,0xffffb
    800063f4:	158080e7          	jalr	344(ra) # 80001548 <_Z4putcc>
    putc('\n');
    800063f8:	00a00513          	li	a0,10
    800063fc:	ffffb097          	auipc	ra,0xffffb
    80006400:	14c080e7          	jalr	332(ra) # 80001548 <_Z4putcc>
    mem_free(buffer);
    80006404:	0084b503          	ld	a0,8(s1)
    80006408:	ffffb097          	auipc	ra,0xffffb
    8000640c:	e74080e7          	jalr	-396(ra) # 8000127c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006410:	0204b503          	ld	a0,32(s1)
    80006414:	ffffb097          	auipc	ra,0xffffb
    80006418:	05c080e7          	jalr	92(ra) # 80001470 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(spaceAvailable);
    8000641c:	0184b503          	ld	a0,24(s1)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	050080e7          	jalr	80(ra) # 80001470 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexTail);
    80006428:	0304b503          	ld	a0,48(s1)
    8000642c:	ffffb097          	auipc	ra,0xffffb
    80006430:	044080e7          	jalr	68(ra) # 80001470 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexHead);
    80006434:	0284b503          	ld	a0,40(s1)
    80006438:	ffffb097          	auipc	ra,0xffffb
    8000643c:	038080e7          	jalr	56(ra) # 80001470 <_Z9sem_closePN3ABI9SemaphoreE>
}
    80006440:	01813083          	ld	ra,24(sp)
    80006444:	01013403          	ld	s0,16(sp)
    80006448:	00813483          	ld	s1,8(sp)
    8000644c:	02010113          	addi	sp,sp,32
    80006450:	00008067          	ret

0000000080006454 <start>:
    80006454:	ff010113          	addi	sp,sp,-16
    80006458:	00813423          	sd	s0,8(sp)
    8000645c:	01010413          	addi	s0,sp,16
    80006460:	300027f3          	csrr	a5,mstatus
    80006464:	ffffe737          	lui	a4,0xffffe
    80006468:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1f3f>
    8000646c:	00e7f7b3          	and	a5,a5,a4
    80006470:	00001737          	lui	a4,0x1
    80006474:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006478:	00e7e7b3          	or	a5,a5,a4
    8000647c:	30079073          	csrw	mstatus,a5
    80006480:	00000797          	auipc	a5,0x0
    80006484:	16078793          	addi	a5,a5,352 # 800065e0 <system_main>
    80006488:	34179073          	csrw	mepc,a5
    8000648c:	00000793          	li	a5,0
    80006490:	18079073          	csrw	satp,a5
    80006494:	000107b7          	lui	a5,0x10
    80006498:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000649c:	30279073          	csrw	medeleg,a5
    800064a0:	30379073          	csrw	mideleg,a5
    800064a4:	104027f3          	csrr	a5,sie
    800064a8:	2227e793          	ori	a5,a5,546
    800064ac:	10479073          	csrw	sie,a5
    800064b0:	fff00793          	li	a5,-1
    800064b4:	00a7d793          	srli	a5,a5,0xa
    800064b8:	3b079073          	csrw	pmpaddr0,a5
    800064bc:	00f00793          	li	a5,15
    800064c0:	3a079073          	csrw	pmpcfg0,a5
    800064c4:	f14027f3          	csrr	a5,mhartid
    800064c8:	0200c737          	lui	a4,0x200c
    800064cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064d0:	0007869b          	sext.w	a3,a5
    800064d4:	00269713          	slli	a4,a3,0x2
    800064d8:	000f4637          	lui	a2,0xf4
    800064dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064e0:	00d70733          	add	a4,a4,a3
    800064e4:	0037979b          	slliw	a5,a5,0x3
    800064e8:	020046b7          	lui	a3,0x2004
    800064ec:	00d787b3          	add	a5,a5,a3
    800064f0:	00c585b3          	add	a1,a1,a2
    800064f4:	00371693          	slli	a3,a4,0x3
    800064f8:	00005717          	auipc	a4,0x5
    800064fc:	16870713          	addi	a4,a4,360 # 8000b660 <timer_scratch>
    80006500:	00b7b023          	sd	a1,0(a5)
    80006504:	00d70733          	add	a4,a4,a3
    80006508:	00f73c23          	sd	a5,24(a4)
    8000650c:	02c73023          	sd	a2,32(a4)
    80006510:	34071073          	csrw	mscratch,a4
    80006514:	00000797          	auipc	a5,0x0
    80006518:	6ec78793          	addi	a5,a5,1772 # 80006c00 <timervec>
    8000651c:	30579073          	csrw	mtvec,a5
    80006520:	300027f3          	csrr	a5,mstatus
    80006524:	0087e793          	ori	a5,a5,8
    80006528:	30079073          	csrw	mstatus,a5
    8000652c:	304027f3          	csrr	a5,mie
    80006530:	0807e793          	ori	a5,a5,128
    80006534:	30479073          	csrw	mie,a5
    80006538:	f14027f3          	csrr	a5,mhartid
    8000653c:	0007879b          	sext.w	a5,a5
    80006540:	00078213          	mv	tp,a5
    80006544:	30200073          	mret
    80006548:	00813403          	ld	s0,8(sp)
    8000654c:	01010113          	addi	sp,sp,16
    80006550:	00008067          	ret

0000000080006554 <timerinit>:
    80006554:	ff010113          	addi	sp,sp,-16
    80006558:	00813423          	sd	s0,8(sp)
    8000655c:	01010413          	addi	s0,sp,16
    80006560:	f14027f3          	csrr	a5,mhartid
    80006564:	0200c737          	lui	a4,0x200c
    80006568:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000656c:	0007869b          	sext.w	a3,a5
    80006570:	00269713          	slli	a4,a3,0x2
    80006574:	000f4637          	lui	a2,0xf4
    80006578:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000657c:	00d70733          	add	a4,a4,a3
    80006580:	0037979b          	slliw	a5,a5,0x3
    80006584:	020046b7          	lui	a3,0x2004
    80006588:	00d787b3          	add	a5,a5,a3
    8000658c:	00c585b3          	add	a1,a1,a2
    80006590:	00371693          	slli	a3,a4,0x3
    80006594:	00005717          	auipc	a4,0x5
    80006598:	0cc70713          	addi	a4,a4,204 # 8000b660 <timer_scratch>
    8000659c:	00b7b023          	sd	a1,0(a5)
    800065a0:	00d70733          	add	a4,a4,a3
    800065a4:	00f73c23          	sd	a5,24(a4)
    800065a8:	02c73023          	sd	a2,32(a4)
    800065ac:	34071073          	csrw	mscratch,a4
    800065b0:	00000797          	auipc	a5,0x0
    800065b4:	65078793          	addi	a5,a5,1616 # 80006c00 <timervec>
    800065b8:	30579073          	csrw	mtvec,a5
    800065bc:	300027f3          	csrr	a5,mstatus
    800065c0:	0087e793          	ori	a5,a5,8
    800065c4:	30079073          	csrw	mstatus,a5
    800065c8:	304027f3          	csrr	a5,mie
    800065cc:	0807e793          	ori	a5,a5,128
    800065d0:	30479073          	csrw	mie,a5
    800065d4:	00813403          	ld	s0,8(sp)
    800065d8:	01010113          	addi	sp,sp,16
    800065dc:	00008067          	ret

00000000800065e0 <system_main>:
    800065e0:	fe010113          	addi	sp,sp,-32
    800065e4:	00813823          	sd	s0,16(sp)
    800065e8:	00913423          	sd	s1,8(sp)
    800065ec:	00113c23          	sd	ra,24(sp)
    800065f0:	02010413          	addi	s0,sp,32
    800065f4:	00000097          	auipc	ra,0x0
    800065f8:	0c4080e7          	jalr	196(ra) # 800066b8 <cpuid>
    800065fc:	00005497          	auipc	s1,0x5
    80006600:	fa448493          	addi	s1,s1,-92 # 8000b5a0 <started>
    80006604:	02050263          	beqz	a0,80006628 <system_main+0x48>
    80006608:	0004a783          	lw	a5,0(s1)
    8000660c:	0007879b          	sext.w	a5,a5
    80006610:	fe078ce3          	beqz	a5,80006608 <system_main+0x28>
    80006614:	0ff0000f          	fence
    80006618:	00003517          	auipc	a0,0x3
    8000661c:	ff850513          	addi	a0,a0,-8 # 80009610 <CONSOLE_STATUS+0x600>
    80006620:	00001097          	auipc	ra,0x1
    80006624:	a7c080e7          	jalr	-1412(ra) # 8000709c <panic>
    80006628:	00001097          	auipc	ra,0x1
    8000662c:	9d0080e7          	jalr	-1584(ra) # 80006ff8 <consoleinit>
    80006630:	00001097          	auipc	ra,0x1
    80006634:	15c080e7          	jalr	348(ra) # 8000778c <printfinit>
    80006638:	00003517          	auipc	a0,0x3
    8000663c:	ed050513          	addi	a0,a0,-304 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006640:	00001097          	auipc	ra,0x1
    80006644:	ab8080e7          	jalr	-1352(ra) # 800070f8 <__printf>
    80006648:	00003517          	auipc	a0,0x3
    8000664c:	f9850513          	addi	a0,a0,-104 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006650:	00001097          	auipc	ra,0x1
    80006654:	aa8080e7          	jalr	-1368(ra) # 800070f8 <__printf>
    80006658:	00003517          	auipc	a0,0x3
    8000665c:	eb050513          	addi	a0,a0,-336 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006660:	00001097          	auipc	ra,0x1
    80006664:	a98080e7          	jalr	-1384(ra) # 800070f8 <__printf>
    80006668:	00001097          	auipc	ra,0x1
    8000666c:	4b0080e7          	jalr	1200(ra) # 80007b18 <kinit>
    80006670:	00000097          	auipc	ra,0x0
    80006674:	148080e7          	jalr	328(ra) # 800067b8 <trapinit>
    80006678:	00000097          	auipc	ra,0x0
    8000667c:	16c080e7          	jalr	364(ra) # 800067e4 <trapinithart>
    80006680:	00000097          	auipc	ra,0x0
    80006684:	5c0080e7          	jalr	1472(ra) # 80006c40 <plicinit>
    80006688:	00000097          	auipc	ra,0x0
    8000668c:	5e0080e7          	jalr	1504(ra) # 80006c68 <plicinithart>
    80006690:	00000097          	auipc	ra,0x0
    80006694:	078080e7          	jalr	120(ra) # 80006708 <userinit>
    80006698:	0ff0000f          	fence
    8000669c:	00100793          	li	a5,1
    800066a0:	00003517          	auipc	a0,0x3
    800066a4:	f5850513          	addi	a0,a0,-168 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800066a8:	00f4a023          	sw	a5,0(s1)
    800066ac:	00001097          	auipc	ra,0x1
    800066b0:	a4c080e7          	jalr	-1460(ra) # 800070f8 <__printf>
    800066b4:	0000006f          	j	800066b4 <system_main+0xd4>

00000000800066b8 <cpuid>:
    800066b8:	ff010113          	addi	sp,sp,-16
    800066bc:	00813423          	sd	s0,8(sp)
    800066c0:	01010413          	addi	s0,sp,16
    800066c4:	00020513          	mv	a0,tp
    800066c8:	00813403          	ld	s0,8(sp)
    800066cc:	0005051b          	sext.w	a0,a0
    800066d0:	01010113          	addi	sp,sp,16
    800066d4:	00008067          	ret

00000000800066d8 <mycpu>:
    800066d8:	ff010113          	addi	sp,sp,-16
    800066dc:	00813423          	sd	s0,8(sp)
    800066e0:	01010413          	addi	s0,sp,16
    800066e4:	00020793          	mv	a5,tp
    800066e8:	00813403          	ld	s0,8(sp)
    800066ec:	0007879b          	sext.w	a5,a5
    800066f0:	00779793          	slli	a5,a5,0x7
    800066f4:	00006517          	auipc	a0,0x6
    800066f8:	f9c50513          	addi	a0,a0,-100 # 8000c690 <cpus>
    800066fc:	00f50533          	add	a0,a0,a5
    80006700:	01010113          	addi	sp,sp,16
    80006704:	00008067          	ret

0000000080006708 <userinit>:
    80006708:	ff010113          	addi	sp,sp,-16
    8000670c:	00813423          	sd	s0,8(sp)
    80006710:	01010413          	addi	s0,sp,16
    80006714:	00813403          	ld	s0,8(sp)
    80006718:	01010113          	addi	sp,sp,16
    8000671c:	ffffc317          	auipc	t1,0xffffc
    80006720:	33430067          	jr	820(t1) # 80002a50 <main>

0000000080006724 <either_copyout>:
    80006724:	ff010113          	addi	sp,sp,-16
    80006728:	00813023          	sd	s0,0(sp)
    8000672c:	00113423          	sd	ra,8(sp)
    80006730:	01010413          	addi	s0,sp,16
    80006734:	02051663          	bnez	a0,80006760 <either_copyout+0x3c>
    80006738:	00058513          	mv	a0,a1
    8000673c:	00060593          	mv	a1,a2
    80006740:	0006861b          	sext.w	a2,a3
    80006744:	00002097          	auipc	ra,0x2
    80006748:	c60080e7          	jalr	-928(ra) # 800083a4 <__memmove>
    8000674c:	00813083          	ld	ra,8(sp)
    80006750:	00013403          	ld	s0,0(sp)
    80006754:	00000513          	li	a0,0
    80006758:	01010113          	addi	sp,sp,16
    8000675c:	00008067          	ret
    80006760:	00003517          	auipc	a0,0x3
    80006764:	ed850513          	addi	a0,a0,-296 # 80009638 <CONSOLE_STATUS+0x628>
    80006768:	00001097          	auipc	ra,0x1
    8000676c:	934080e7          	jalr	-1740(ra) # 8000709c <panic>

0000000080006770 <either_copyin>:
    80006770:	ff010113          	addi	sp,sp,-16
    80006774:	00813023          	sd	s0,0(sp)
    80006778:	00113423          	sd	ra,8(sp)
    8000677c:	01010413          	addi	s0,sp,16
    80006780:	02059463          	bnez	a1,800067a8 <either_copyin+0x38>
    80006784:	00060593          	mv	a1,a2
    80006788:	0006861b          	sext.w	a2,a3
    8000678c:	00002097          	auipc	ra,0x2
    80006790:	c18080e7          	jalr	-1000(ra) # 800083a4 <__memmove>
    80006794:	00813083          	ld	ra,8(sp)
    80006798:	00013403          	ld	s0,0(sp)
    8000679c:	00000513          	li	a0,0
    800067a0:	01010113          	addi	sp,sp,16
    800067a4:	00008067          	ret
    800067a8:	00003517          	auipc	a0,0x3
    800067ac:	eb850513          	addi	a0,a0,-328 # 80009660 <CONSOLE_STATUS+0x650>
    800067b0:	00001097          	auipc	ra,0x1
    800067b4:	8ec080e7          	jalr	-1812(ra) # 8000709c <panic>

00000000800067b8 <trapinit>:
    800067b8:	ff010113          	addi	sp,sp,-16
    800067bc:	00813423          	sd	s0,8(sp)
    800067c0:	01010413          	addi	s0,sp,16
    800067c4:	00813403          	ld	s0,8(sp)
    800067c8:	00003597          	auipc	a1,0x3
    800067cc:	ec058593          	addi	a1,a1,-320 # 80009688 <CONSOLE_STATUS+0x678>
    800067d0:	00006517          	auipc	a0,0x6
    800067d4:	f4050513          	addi	a0,a0,-192 # 8000c710 <tickslock>
    800067d8:	01010113          	addi	sp,sp,16
    800067dc:	00001317          	auipc	t1,0x1
    800067e0:	5cc30067          	jr	1484(t1) # 80007da8 <initlock>

00000000800067e4 <trapinithart>:
    800067e4:	ff010113          	addi	sp,sp,-16
    800067e8:	00813423          	sd	s0,8(sp)
    800067ec:	01010413          	addi	s0,sp,16
    800067f0:	00000797          	auipc	a5,0x0
    800067f4:	30078793          	addi	a5,a5,768 # 80006af0 <kernelvec>
    800067f8:	10579073          	csrw	stvec,a5
    800067fc:	00813403          	ld	s0,8(sp)
    80006800:	01010113          	addi	sp,sp,16
    80006804:	00008067          	ret

0000000080006808 <usertrap>:
    80006808:	ff010113          	addi	sp,sp,-16
    8000680c:	00813423          	sd	s0,8(sp)
    80006810:	01010413          	addi	s0,sp,16
    80006814:	00813403          	ld	s0,8(sp)
    80006818:	01010113          	addi	sp,sp,16
    8000681c:	00008067          	ret

0000000080006820 <usertrapret>:
    80006820:	ff010113          	addi	sp,sp,-16
    80006824:	00813423          	sd	s0,8(sp)
    80006828:	01010413          	addi	s0,sp,16
    8000682c:	00813403          	ld	s0,8(sp)
    80006830:	01010113          	addi	sp,sp,16
    80006834:	00008067          	ret

0000000080006838 <kerneltrap>:
    80006838:	fe010113          	addi	sp,sp,-32
    8000683c:	00813823          	sd	s0,16(sp)
    80006840:	00113c23          	sd	ra,24(sp)
    80006844:	00913423          	sd	s1,8(sp)
    80006848:	02010413          	addi	s0,sp,32
    8000684c:	142025f3          	csrr	a1,scause
    80006850:	100027f3          	csrr	a5,sstatus
    80006854:	0027f793          	andi	a5,a5,2
    80006858:	10079c63          	bnez	a5,80006970 <kerneltrap+0x138>
    8000685c:	142027f3          	csrr	a5,scause
    80006860:	0207ce63          	bltz	a5,8000689c <kerneltrap+0x64>
    80006864:	00003517          	auipc	a0,0x3
    80006868:	e6c50513          	addi	a0,a0,-404 # 800096d0 <CONSOLE_STATUS+0x6c0>
    8000686c:	00001097          	auipc	ra,0x1
    80006870:	88c080e7          	jalr	-1908(ra) # 800070f8 <__printf>
    80006874:	141025f3          	csrr	a1,sepc
    80006878:	14302673          	csrr	a2,stval
    8000687c:	00003517          	auipc	a0,0x3
    80006880:	e6450513          	addi	a0,a0,-412 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80006884:	00001097          	auipc	ra,0x1
    80006888:	874080e7          	jalr	-1932(ra) # 800070f8 <__printf>
    8000688c:	00003517          	auipc	a0,0x3
    80006890:	e6c50513          	addi	a0,a0,-404 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006894:	00001097          	auipc	ra,0x1
    80006898:	808080e7          	jalr	-2040(ra) # 8000709c <panic>
    8000689c:	0ff7f713          	andi	a4,a5,255
    800068a0:	00900693          	li	a3,9
    800068a4:	04d70063          	beq	a4,a3,800068e4 <kerneltrap+0xac>
    800068a8:	fff00713          	li	a4,-1
    800068ac:	03f71713          	slli	a4,a4,0x3f
    800068b0:	00170713          	addi	a4,a4,1
    800068b4:	fae798e3          	bne	a5,a4,80006864 <kerneltrap+0x2c>
    800068b8:	00000097          	auipc	ra,0x0
    800068bc:	e00080e7          	jalr	-512(ra) # 800066b8 <cpuid>
    800068c0:	06050663          	beqz	a0,8000692c <kerneltrap+0xf4>
    800068c4:	144027f3          	csrr	a5,sip
    800068c8:	ffd7f793          	andi	a5,a5,-3
    800068cc:	14479073          	csrw	sip,a5
    800068d0:	01813083          	ld	ra,24(sp)
    800068d4:	01013403          	ld	s0,16(sp)
    800068d8:	00813483          	ld	s1,8(sp)
    800068dc:	02010113          	addi	sp,sp,32
    800068e0:	00008067          	ret
    800068e4:	00000097          	auipc	ra,0x0
    800068e8:	3d0080e7          	jalr	976(ra) # 80006cb4 <plic_claim>
    800068ec:	00a00793          	li	a5,10
    800068f0:	00050493          	mv	s1,a0
    800068f4:	06f50863          	beq	a0,a5,80006964 <kerneltrap+0x12c>
    800068f8:	fc050ce3          	beqz	a0,800068d0 <kerneltrap+0x98>
    800068fc:	00050593          	mv	a1,a0
    80006900:	00003517          	auipc	a0,0x3
    80006904:	db050513          	addi	a0,a0,-592 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006908:	00000097          	auipc	ra,0x0
    8000690c:	7f0080e7          	jalr	2032(ra) # 800070f8 <__printf>
    80006910:	01013403          	ld	s0,16(sp)
    80006914:	01813083          	ld	ra,24(sp)
    80006918:	00048513          	mv	a0,s1
    8000691c:	00813483          	ld	s1,8(sp)
    80006920:	02010113          	addi	sp,sp,32
    80006924:	00000317          	auipc	t1,0x0
    80006928:	3c830067          	jr	968(t1) # 80006cec <plic_complete>
    8000692c:	00006517          	auipc	a0,0x6
    80006930:	de450513          	addi	a0,a0,-540 # 8000c710 <tickslock>
    80006934:	00001097          	auipc	ra,0x1
    80006938:	498080e7          	jalr	1176(ra) # 80007dcc <acquire>
    8000693c:	00005717          	auipc	a4,0x5
    80006940:	c6870713          	addi	a4,a4,-920 # 8000b5a4 <ticks>
    80006944:	00072783          	lw	a5,0(a4)
    80006948:	00006517          	auipc	a0,0x6
    8000694c:	dc850513          	addi	a0,a0,-568 # 8000c710 <tickslock>
    80006950:	0017879b          	addiw	a5,a5,1
    80006954:	00f72023          	sw	a5,0(a4)
    80006958:	00001097          	auipc	ra,0x1
    8000695c:	540080e7          	jalr	1344(ra) # 80007e98 <release>
    80006960:	f65ff06f          	j	800068c4 <kerneltrap+0x8c>
    80006964:	00001097          	auipc	ra,0x1
    80006968:	09c080e7          	jalr	156(ra) # 80007a00 <uartintr>
    8000696c:	fa5ff06f          	j	80006910 <kerneltrap+0xd8>
    80006970:	00003517          	auipc	a0,0x3
    80006974:	d2050513          	addi	a0,a0,-736 # 80009690 <CONSOLE_STATUS+0x680>
    80006978:	00000097          	auipc	ra,0x0
    8000697c:	724080e7          	jalr	1828(ra) # 8000709c <panic>

0000000080006980 <clockintr>:
    80006980:	fe010113          	addi	sp,sp,-32
    80006984:	00813823          	sd	s0,16(sp)
    80006988:	00913423          	sd	s1,8(sp)
    8000698c:	00113c23          	sd	ra,24(sp)
    80006990:	02010413          	addi	s0,sp,32
    80006994:	00006497          	auipc	s1,0x6
    80006998:	d7c48493          	addi	s1,s1,-644 # 8000c710 <tickslock>
    8000699c:	00048513          	mv	a0,s1
    800069a0:	00001097          	auipc	ra,0x1
    800069a4:	42c080e7          	jalr	1068(ra) # 80007dcc <acquire>
    800069a8:	00005717          	auipc	a4,0x5
    800069ac:	bfc70713          	addi	a4,a4,-1028 # 8000b5a4 <ticks>
    800069b0:	00072783          	lw	a5,0(a4)
    800069b4:	01013403          	ld	s0,16(sp)
    800069b8:	01813083          	ld	ra,24(sp)
    800069bc:	00048513          	mv	a0,s1
    800069c0:	0017879b          	addiw	a5,a5,1
    800069c4:	00813483          	ld	s1,8(sp)
    800069c8:	00f72023          	sw	a5,0(a4)
    800069cc:	02010113          	addi	sp,sp,32
    800069d0:	00001317          	auipc	t1,0x1
    800069d4:	4c830067          	jr	1224(t1) # 80007e98 <release>

00000000800069d8 <devintr>:
    800069d8:	142027f3          	csrr	a5,scause
    800069dc:	00000513          	li	a0,0
    800069e0:	0007c463          	bltz	a5,800069e8 <devintr+0x10>
    800069e4:	00008067          	ret
    800069e8:	fe010113          	addi	sp,sp,-32
    800069ec:	00813823          	sd	s0,16(sp)
    800069f0:	00113c23          	sd	ra,24(sp)
    800069f4:	00913423          	sd	s1,8(sp)
    800069f8:	02010413          	addi	s0,sp,32
    800069fc:	0ff7f713          	andi	a4,a5,255
    80006a00:	00900693          	li	a3,9
    80006a04:	04d70c63          	beq	a4,a3,80006a5c <devintr+0x84>
    80006a08:	fff00713          	li	a4,-1
    80006a0c:	03f71713          	slli	a4,a4,0x3f
    80006a10:	00170713          	addi	a4,a4,1
    80006a14:	00e78c63          	beq	a5,a4,80006a2c <devintr+0x54>
    80006a18:	01813083          	ld	ra,24(sp)
    80006a1c:	01013403          	ld	s0,16(sp)
    80006a20:	00813483          	ld	s1,8(sp)
    80006a24:	02010113          	addi	sp,sp,32
    80006a28:	00008067          	ret
    80006a2c:	00000097          	auipc	ra,0x0
    80006a30:	c8c080e7          	jalr	-884(ra) # 800066b8 <cpuid>
    80006a34:	06050663          	beqz	a0,80006aa0 <devintr+0xc8>
    80006a38:	144027f3          	csrr	a5,sip
    80006a3c:	ffd7f793          	andi	a5,a5,-3
    80006a40:	14479073          	csrw	sip,a5
    80006a44:	01813083          	ld	ra,24(sp)
    80006a48:	01013403          	ld	s0,16(sp)
    80006a4c:	00813483          	ld	s1,8(sp)
    80006a50:	00200513          	li	a0,2
    80006a54:	02010113          	addi	sp,sp,32
    80006a58:	00008067          	ret
    80006a5c:	00000097          	auipc	ra,0x0
    80006a60:	258080e7          	jalr	600(ra) # 80006cb4 <plic_claim>
    80006a64:	00a00793          	li	a5,10
    80006a68:	00050493          	mv	s1,a0
    80006a6c:	06f50663          	beq	a0,a5,80006ad8 <devintr+0x100>
    80006a70:	00100513          	li	a0,1
    80006a74:	fa0482e3          	beqz	s1,80006a18 <devintr+0x40>
    80006a78:	00048593          	mv	a1,s1
    80006a7c:	00003517          	auipc	a0,0x3
    80006a80:	c3450513          	addi	a0,a0,-972 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	674080e7          	jalr	1652(ra) # 800070f8 <__printf>
    80006a8c:	00048513          	mv	a0,s1
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	25c080e7          	jalr	604(ra) # 80006cec <plic_complete>
    80006a98:	00100513          	li	a0,1
    80006a9c:	f7dff06f          	j	80006a18 <devintr+0x40>
    80006aa0:	00006517          	auipc	a0,0x6
    80006aa4:	c7050513          	addi	a0,a0,-912 # 8000c710 <tickslock>
    80006aa8:	00001097          	auipc	ra,0x1
    80006aac:	324080e7          	jalr	804(ra) # 80007dcc <acquire>
    80006ab0:	00005717          	auipc	a4,0x5
    80006ab4:	af470713          	addi	a4,a4,-1292 # 8000b5a4 <ticks>
    80006ab8:	00072783          	lw	a5,0(a4)
    80006abc:	00006517          	auipc	a0,0x6
    80006ac0:	c5450513          	addi	a0,a0,-940 # 8000c710 <tickslock>
    80006ac4:	0017879b          	addiw	a5,a5,1
    80006ac8:	00f72023          	sw	a5,0(a4)
    80006acc:	00001097          	auipc	ra,0x1
    80006ad0:	3cc080e7          	jalr	972(ra) # 80007e98 <release>
    80006ad4:	f65ff06f          	j	80006a38 <devintr+0x60>
    80006ad8:	00001097          	auipc	ra,0x1
    80006adc:	f28080e7          	jalr	-216(ra) # 80007a00 <uartintr>
    80006ae0:	fadff06f          	j	80006a8c <devintr+0xb4>
	...

0000000080006af0 <kernelvec>:
    80006af0:	f0010113          	addi	sp,sp,-256
    80006af4:	00113023          	sd	ra,0(sp)
    80006af8:	00213423          	sd	sp,8(sp)
    80006afc:	00313823          	sd	gp,16(sp)
    80006b00:	00413c23          	sd	tp,24(sp)
    80006b04:	02513023          	sd	t0,32(sp)
    80006b08:	02613423          	sd	t1,40(sp)
    80006b0c:	02713823          	sd	t2,48(sp)
    80006b10:	02813c23          	sd	s0,56(sp)
    80006b14:	04913023          	sd	s1,64(sp)
    80006b18:	04a13423          	sd	a0,72(sp)
    80006b1c:	04b13823          	sd	a1,80(sp)
    80006b20:	04c13c23          	sd	a2,88(sp)
    80006b24:	06d13023          	sd	a3,96(sp)
    80006b28:	06e13423          	sd	a4,104(sp)
    80006b2c:	06f13823          	sd	a5,112(sp)
    80006b30:	07013c23          	sd	a6,120(sp)
    80006b34:	09113023          	sd	a7,128(sp)
    80006b38:	09213423          	sd	s2,136(sp)
    80006b3c:	09313823          	sd	s3,144(sp)
    80006b40:	09413c23          	sd	s4,152(sp)
    80006b44:	0b513023          	sd	s5,160(sp)
    80006b48:	0b613423          	sd	s6,168(sp)
    80006b4c:	0b713823          	sd	s7,176(sp)
    80006b50:	0b813c23          	sd	s8,184(sp)
    80006b54:	0d913023          	sd	s9,192(sp)
    80006b58:	0da13423          	sd	s10,200(sp)
    80006b5c:	0db13823          	sd	s11,208(sp)
    80006b60:	0dc13c23          	sd	t3,216(sp)
    80006b64:	0fd13023          	sd	t4,224(sp)
    80006b68:	0fe13423          	sd	t5,232(sp)
    80006b6c:	0ff13823          	sd	t6,240(sp)
    80006b70:	cc9ff0ef          	jal	ra,80006838 <kerneltrap>
    80006b74:	00013083          	ld	ra,0(sp)
    80006b78:	00813103          	ld	sp,8(sp)
    80006b7c:	01013183          	ld	gp,16(sp)
    80006b80:	02013283          	ld	t0,32(sp)
    80006b84:	02813303          	ld	t1,40(sp)
    80006b88:	03013383          	ld	t2,48(sp)
    80006b8c:	03813403          	ld	s0,56(sp)
    80006b90:	04013483          	ld	s1,64(sp)
    80006b94:	04813503          	ld	a0,72(sp)
    80006b98:	05013583          	ld	a1,80(sp)
    80006b9c:	05813603          	ld	a2,88(sp)
    80006ba0:	06013683          	ld	a3,96(sp)
    80006ba4:	06813703          	ld	a4,104(sp)
    80006ba8:	07013783          	ld	a5,112(sp)
    80006bac:	07813803          	ld	a6,120(sp)
    80006bb0:	08013883          	ld	a7,128(sp)
    80006bb4:	08813903          	ld	s2,136(sp)
    80006bb8:	09013983          	ld	s3,144(sp)
    80006bbc:	09813a03          	ld	s4,152(sp)
    80006bc0:	0a013a83          	ld	s5,160(sp)
    80006bc4:	0a813b03          	ld	s6,168(sp)
    80006bc8:	0b013b83          	ld	s7,176(sp)
    80006bcc:	0b813c03          	ld	s8,184(sp)
    80006bd0:	0c013c83          	ld	s9,192(sp)
    80006bd4:	0c813d03          	ld	s10,200(sp)
    80006bd8:	0d013d83          	ld	s11,208(sp)
    80006bdc:	0d813e03          	ld	t3,216(sp)
    80006be0:	0e013e83          	ld	t4,224(sp)
    80006be4:	0e813f03          	ld	t5,232(sp)
    80006be8:	0f013f83          	ld	t6,240(sp)
    80006bec:	10010113          	addi	sp,sp,256
    80006bf0:	10200073          	sret
    80006bf4:	00000013          	nop
    80006bf8:	00000013          	nop
    80006bfc:	00000013          	nop

0000000080006c00 <timervec>:
    80006c00:	34051573          	csrrw	a0,mscratch,a0
    80006c04:	00b53023          	sd	a1,0(a0)
    80006c08:	00c53423          	sd	a2,8(a0)
    80006c0c:	00d53823          	sd	a3,16(a0)
    80006c10:	01853583          	ld	a1,24(a0)
    80006c14:	02053603          	ld	a2,32(a0)
    80006c18:	0005b683          	ld	a3,0(a1)
    80006c1c:	00c686b3          	add	a3,a3,a2
    80006c20:	00d5b023          	sd	a3,0(a1)
    80006c24:	00200593          	li	a1,2
    80006c28:	14459073          	csrw	sip,a1
    80006c2c:	01053683          	ld	a3,16(a0)
    80006c30:	00853603          	ld	a2,8(a0)
    80006c34:	00053583          	ld	a1,0(a0)
    80006c38:	34051573          	csrrw	a0,mscratch,a0
    80006c3c:	30200073          	mret

0000000080006c40 <plicinit>:
    80006c40:	ff010113          	addi	sp,sp,-16
    80006c44:	00813423          	sd	s0,8(sp)
    80006c48:	01010413          	addi	s0,sp,16
    80006c4c:	00813403          	ld	s0,8(sp)
    80006c50:	0c0007b7          	lui	a5,0xc000
    80006c54:	00100713          	li	a4,1
    80006c58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c5c:	00e7a223          	sw	a4,4(a5)
    80006c60:	01010113          	addi	sp,sp,16
    80006c64:	00008067          	ret

0000000080006c68 <plicinithart>:
    80006c68:	ff010113          	addi	sp,sp,-16
    80006c6c:	00813023          	sd	s0,0(sp)
    80006c70:	00113423          	sd	ra,8(sp)
    80006c74:	01010413          	addi	s0,sp,16
    80006c78:	00000097          	auipc	ra,0x0
    80006c7c:	a40080e7          	jalr	-1472(ra) # 800066b8 <cpuid>
    80006c80:	0085171b          	slliw	a4,a0,0x8
    80006c84:	0c0027b7          	lui	a5,0xc002
    80006c88:	00e787b3          	add	a5,a5,a4
    80006c8c:	40200713          	li	a4,1026
    80006c90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c94:	00813083          	ld	ra,8(sp)
    80006c98:	00013403          	ld	s0,0(sp)
    80006c9c:	00d5151b          	slliw	a0,a0,0xd
    80006ca0:	0c2017b7          	lui	a5,0xc201
    80006ca4:	00a78533          	add	a0,a5,a0
    80006ca8:	00052023          	sw	zero,0(a0)
    80006cac:	01010113          	addi	sp,sp,16
    80006cb0:	00008067          	ret

0000000080006cb4 <plic_claim>:
    80006cb4:	ff010113          	addi	sp,sp,-16
    80006cb8:	00813023          	sd	s0,0(sp)
    80006cbc:	00113423          	sd	ra,8(sp)
    80006cc0:	01010413          	addi	s0,sp,16
    80006cc4:	00000097          	auipc	ra,0x0
    80006cc8:	9f4080e7          	jalr	-1548(ra) # 800066b8 <cpuid>
    80006ccc:	00813083          	ld	ra,8(sp)
    80006cd0:	00013403          	ld	s0,0(sp)
    80006cd4:	00d5151b          	slliw	a0,a0,0xd
    80006cd8:	0c2017b7          	lui	a5,0xc201
    80006cdc:	00a78533          	add	a0,a5,a0
    80006ce0:	00452503          	lw	a0,4(a0)
    80006ce4:	01010113          	addi	sp,sp,16
    80006ce8:	00008067          	ret

0000000080006cec <plic_complete>:
    80006cec:	fe010113          	addi	sp,sp,-32
    80006cf0:	00813823          	sd	s0,16(sp)
    80006cf4:	00913423          	sd	s1,8(sp)
    80006cf8:	00113c23          	sd	ra,24(sp)
    80006cfc:	02010413          	addi	s0,sp,32
    80006d00:	00050493          	mv	s1,a0
    80006d04:	00000097          	auipc	ra,0x0
    80006d08:	9b4080e7          	jalr	-1612(ra) # 800066b8 <cpuid>
    80006d0c:	01813083          	ld	ra,24(sp)
    80006d10:	01013403          	ld	s0,16(sp)
    80006d14:	00d5179b          	slliw	a5,a0,0xd
    80006d18:	0c201737          	lui	a4,0xc201
    80006d1c:	00f707b3          	add	a5,a4,a5
    80006d20:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d24:	00813483          	ld	s1,8(sp)
    80006d28:	02010113          	addi	sp,sp,32
    80006d2c:	00008067          	ret

0000000080006d30 <consolewrite>:
    80006d30:	fb010113          	addi	sp,sp,-80
    80006d34:	04813023          	sd	s0,64(sp)
    80006d38:	04113423          	sd	ra,72(sp)
    80006d3c:	02913c23          	sd	s1,56(sp)
    80006d40:	03213823          	sd	s2,48(sp)
    80006d44:	03313423          	sd	s3,40(sp)
    80006d48:	03413023          	sd	s4,32(sp)
    80006d4c:	01513c23          	sd	s5,24(sp)
    80006d50:	05010413          	addi	s0,sp,80
    80006d54:	06c05c63          	blez	a2,80006dcc <consolewrite+0x9c>
    80006d58:	00060993          	mv	s3,a2
    80006d5c:	00050a13          	mv	s4,a0
    80006d60:	00058493          	mv	s1,a1
    80006d64:	00000913          	li	s2,0
    80006d68:	fff00a93          	li	s5,-1
    80006d6c:	01c0006f          	j	80006d88 <consolewrite+0x58>
    80006d70:	fbf44503          	lbu	a0,-65(s0)
    80006d74:	0019091b          	addiw	s2,s2,1
    80006d78:	00148493          	addi	s1,s1,1
    80006d7c:	00001097          	auipc	ra,0x1
    80006d80:	a9c080e7          	jalr	-1380(ra) # 80007818 <uartputc>
    80006d84:	03298063          	beq	s3,s2,80006da4 <consolewrite+0x74>
    80006d88:	00048613          	mv	a2,s1
    80006d8c:	00100693          	li	a3,1
    80006d90:	000a0593          	mv	a1,s4
    80006d94:	fbf40513          	addi	a0,s0,-65
    80006d98:	00000097          	auipc	ra,0x0
    80006d9c:	9d8080e7          	jalr	-1576(ra) # 80006770 <either_copyin>
    80006da0:	fd5518e3          	bne	a0,s5,80006d70 <consolewrite+0x40>
    80006da4:	04813083          	ld	ra,72(sp)
    80006da8:	04013403          	ld	s0,64(sp)
    80006dac:	03813483          	ld	s1,56(sp)
    80006db0:	02813983          	ld	s3,40(sp)
    80006db4:	02013a03          	ld	s4,32(sp)
    80006db8:	01813a83          	ld	s5,24(sp)
    80006dbc:	00090513          	mv	a0,s2
    80006dc0:	03013903          	ld	s2,48(sp)
    80006dc4:	05010113          	addi	sp,sp,80
    80006dc8:	00008067          	ret
    80006dcc:	00000913          	li	s2,0
    80006dd0:	fd5ff06f          	j	80006da4 <consolewrite+0x74>

0000000080006dd4 <consoleread>:
    80006dd4:	f9010113          	addi	sp,sp,-112
    80006dd8:	06813023          	sd	s0,96(sp)
    80006ddc:	04913c23          	sd	s1,88(sp)
    80006de0:	05213823          	sd	s2,80(sp)
    80006de4:	05313423          	sd	s3,72(sp)
    80006de8:	05413023          	sd	s4,64(sp)
    80006dec:	03513c23          	sd	s5,56(sp)
    80006df0:	03613823          	sd	s6,48(sp)
    80006df4:	03713423          	sd	s7,40(sp)
    80006df8:	03813023          	sd	s8,32(sp)
    80006dfc:	06113423          	sd	ra,104(sp)
    80006e00:	01913c23          	sd	s9,24(sp)
    80006e04:	07010413          	addi	s0,sp,112
    80006e08:	00060b93          	mv	s7,a2
    80006e0c:	00050913          	mv	s2,a0
    80006e10:	00058c13          	mv	s8,a1
    80006e14:	00060b1b          	sext.w	s6,a2
    80006e18:	00006497          	auipc	s1,0x6
    80006e1c:	92048493          	addi	s1,s1,-1760 # 8000c738 <cons>
    80006e20:	00400993          	li	s3,4
    80006e24:	fff00a13          	li	s4,-1
    80006e28:	00a00a93          	li	s5,10
    80006e2c:	05705e63          	blez	s7,80006e88 <consoleread+0xb4>
    80006e30:	09c4a703          	lw	a4,156(s1)
    80006e34:	0984a783          	lw	a5,152(s1)
    80006e38:	0007071b          	sext.w	a4,a4
    80006e3c:	08e78463          	beq	a5,a4,80006ec4 <consoleread+0xf0>
    80006e40:	07f7f713          	andi	a4,a5,127
    80006e44:	00e48733          	add	a4,s1,a4
    80006e48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e4c:	0017869b          	addiw	a3,a5,1
    80006e50:	08d4ac23          	sw	a3,152(s1)
    80006e54:	00070c9b          	sext.w	s9,a4
    80006e58:	0b370663          	beq	a4,s3,80006f04 <consoleread+0x130>
    80006e5c:	00100693          	li	a3,1
    80006e60:	f9f40613          	addi	a2,s0,-97
    80006e64:	000c0593          	mv	a1,s8
    80006e68:	00090513          	mv	a0,s2
    80006e6c:	f8e40fa3          	sb	a4,-97(s0)
    80006e70:	00000097          	auipc	ra,0x0
    80006e74:	8b4080e7          	jalr	-1868(ra) # 80006724 <either_copyout>
    80006e78:	01450863          	beq	a0,s4,80006e88 <consoleread+0xb4>
    80006e7c:	001c0c13          	addi	s8,s8,1
    80006e80:	fffb8b9b          	addiw	s7,s7,-1
    80006e84:	fb5c94e3          	bne	s9,s5,80006e2c <consoleread+0x58>
    80006e88:	000b851b          	sext.w	a0,s7
    80006e8c:	06813083          	ld	ra,104(sp)
    80006e90:	06013403          	ld	s0,96(sp)
    80006e94:	05813483          	ld	s1,88(sp)
    80006e98:	05013903          	ld	s2,80(sp)
    80006e9c:	04813983          	ld	s3,72(sp)
    80006ea0:	04013a03          	ld	s4,64(sp)
    80006ea4:	03813a83          	ld	s5,56(sp)
    80006ea8:	02813b83          	ld	s7,40(sp)
    80006eac:	02013c03          	ld	s8,32(sp)
    80006eb0:	01813c83          	ld	s9,24(sp)
    80006eb4:	40ab053b          	subw	a0,s6,a0
    80006eb8:	03013b03          	ld	s6,48(sp)
    80006ebc:	07010113          	addi	sp,sp,112
    80006ec0:	00008067          	ret
    80006ec4:	00001097          	auipc	ra,0x1
    80006ec8:	1d8080e7          	jalr	472(ra) # 8000809c <push_on>
    80006ecc:	0984a703          	lw	a4,152(s1)
    80006ed0:	09c4a783          	lw	a5,156(s1)
    80006ed4:	0007879b          	sext.w	a5,a5
    80006ed8:	fef70ce3          	beq	a4,a5,80006ed0 <consoleread+0xfc>
    80006edc:	00001097          	auipc	ra,0x1
    80006ee0:	234080e7          	jalr	564(ra) # 80008110 <pop_on>
    80006ee4:	0984a783          	lw	a5,152(s1)
    80006ee8:	07f7f713          	andi	a4,a5,127
    80006eec:	00e48733          	add	a4,s1,a4
    80006ef0:	01874703          	lbu	a4,24(a4)
    80006ef4:	0017869b          	addiw	a3,a5,1
    80006ef8:	08d4ac23          	sw	a3,152(s1)
    80006efc:	00070c9b          	sext.w	s9,a4
    80006f00:	f5371ee3          	bne	a4,s3,80006e5c <consoleread+0x88>
    80006f04:	000b851b          	sext.w	a0,s7
    80006f08:	f96bf2e3          	bgeu	s7,s6,80006e8c <consoleread+0xb8>
    80006f0c:	08f4ac23          	sw	a5,152(s1)
    80006f10:	f7dff06f          	j	80006e8c <consoleread+0xb8>

0000000080006f14 <consputc>:
    80006f14:	10000793          	li	a5,256
    80006f18:	00f50663          	beq	a0,a5,80006f24 <consputc+0x10>
    80006f1c:	00001317          	auipc	t1,0x1
    80006f20:	9f430067          	jr	-1548(t1) # 80007910 <uartputc_sync>
    80006f24:	ff010113          	addi	sp,sp,-16
    80006f28:	00113423          	sd	ra,8(sp)
    80006f2c:	00813023          	sd	s0,0(sp)
    80006f30:	01010413          	addi	s0,sp,16
    80006f34:	00800513          	li	a0,8
    80006f38:	00001097          	auipc	ra,0x1
    80006f3c:	9d8080e7          	jalr	-1576(ra) # 80007910 <uartputc_sync>
    80006f40:	02000513          	li	a0,32
    80006f44:	00001097          	auipc	ra,0x1
    80006f48:	9cc080e7          	jalr	-1588(ra) # 80007910 <uartputc_sync>
    80006f4c:	00013403          	ld	s0,0(sp)
    80006f50:	00813083          	ld	ra,8(sp)
    80006f54:	00800513          	li	a0,8
    80006f58:	01010113          	addi	sp,sp,16
    80006f5c:	00001317          	auipc	t1,0x1
    80006f60:	9b430067          	jr	-1612(t1) # 80007910 <uartputc_sync>

0000000080006f64 <consoleintr>:
    80006f64:	fe010113          	addi	sp,sp,-32
    80006f68:	00813823          	sd	s0,16(sp)
    80006f6c:	00913423          	sd	s1,8(sp)
    80006f70:	01213023          	sd	s2,0(sp)
    80006f74:	00113c23          	sd	ra,24(sp)
    80006f78:	02010413          	addi	s0,sp,32
    80006f7c:	00005917          	auipc	s2,0x5
    80006f80:	7bc90913          	addi	s2,s2,1980 # 8000c738 <cons>
    80006f84:	00050493          	mv	s1,a0
    80006f88:	00090513          	mv	a0,s2
    80006f8c:	00001097          	auipc	ra,0x1
    80006f90:	e40080e7          	jalr	-448(ra) # 80007dcc <acquire>
    80006f94:	02048c63          	beqz	s1,80006fcc <consoleintr+0x68>
    80006f98:	0a092783          	lw	a5,160(s2)
    80006f9c:	09892703          	lw	a4,152(s2)
    80006fa0:	07f00693          	li	a3,127
    80006fa4:	40e7873b          	subw	a4,a5,a4
    80006fa8:	02e6e263          	bltu	a3,a4,80006fcc <consoleintr+0x68>
    80006fac:	00d00713          	li	a4,13
    80006fb0:	04e48063          	beq	s1,a4,80006ff0 <consoleintr+0x8c>
    80006fb4:	07f7f713          	andi	a4,a5,127
    80006fb8:	00e90733          	add	a4,s2,a4
    80006fbc:	0017879b          	addiw	a5,a5,1
    80006fc0:	0af92023          	sw	a5,160(s2)
    80006fc4:	00970c23          	sb	s1,24(a4)
    80006fc8:	08f92e23          	sw	a5,156(s2)
    80006fcc:	01013403          	ld	s0,16(sp)
    80006fd0:	01813083          	ld	ra,24(sp)
    80006fd4:	00813483          	ld	s1,8(sp)
    80006fd8:	00013903          	ld	s2,0(sp)
    80006fdc:	00005517          	auipc	a0,0x5
    80006fe0:	75c50513          	addi	a0,a0,1884 # 8000c738 <cons>
    80006fe4:	02010113          	addi	sp,sp,32
    80006fe8:	00001317          	auipc	t1,0x1
    80006fec:	eb030067          	jr	-336(t1) # 80007e98 <release>
    80006ff0:	00a00493          	li	s1,10
    80006ff4:	fc1ff06f          	j	80006fb4 <consoleintr+0x50>

0000000080006ff8 <consoleinit>:
    80006ff8:	fe010113          	addi	sp,sp,-32
    80006ffc:	00113c23          	sd	ra,24(sp)
    80007000:	00813823          	sd	s0,16(sp)
    80007004:	00913423          	sd	s1,8(sp)
    80007008:	02010413          	addi	s0,sp,32
    8000700c:	00005497          	auipc	s1,0x5
    80007010:	72c48493          	addi	s1,s1,1836 # 8000c738 <cons>
    80007014:	00048513          	mv	a0,s1
    80007018:	00002597          	auipc	a1,0x2
    8000701c:	6f058593          	addi	a1,a1,1776 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007020:	00001097          	auipc	ra,0x1
    80007024:	d88080e7          	jalr	-632(ra) # 80007da8 <initlock>
    80007028:	00000097          	auipc	ra,0x0
    8000702c:	7ac080e7          	jalr	1964(ra) # 800077d4 <uartinit>
    80007030:	01813083          	ld	ra,24(sp)
    80007034:	01013403          	ld	s0,16(sp)
    80007038:	00000797          	auipc	a5,0x0
    8000703c:	d9c78793          	addi	a5,a5,-612 # 80006dd4 <consoleread>
    80007040:	0af4bc23          	sd	a5,184(s1)
    80007044:	00000797          	auipc	a5,0x0
    80007048:	cec78793          	addi	a5,a5,-788 # 80006d30 <consolewrite>
    8000704c:	0cf4b023          	sd	a5,192(s1)
    80007050:	00813483          	ld	s1,8(sp)
    80007054:	02010113          	addi	sp,sp,32
    80007058:	00008067          	ret

000000008000705c <console_read>:
    8000705c:	ff010113          	addi	sp,sp,-16
    80007060:	00813423          	sd	s0,8(sp)
    80007064:	01010413          	addi	s0,sp,16
    80007068:	00813403          	ld	s0,8(sp)
    8000706c:	00005317          	auipc	t1,0x5
    80007070:	78433303          	ld	t1,1924(t1) # 8000c7f0 <devsw+0x10>
    80007074:	01010113          	addi	sp,sp,16
    80007078:	00030067          	jr	t1

000000008000707c <console_write>:
    8000707c:	ff010113          	addi	sp,sp,-16
    80007080:	00813423          	sd	s0,8(sp)
    80007084:	01010413          	addi	s0,sp,16
    80007088:	00813403          	ld	s0,8(sp)
    8000708c:	00005317          	auipc	t1,0x5
    80007090:	76c33303          	ld	t1,1900(t1) # 8000c7f8 <devsw+0x18>
    80007094:	01010113          	addi	sp,sp,16
    80007098:	00030067          	jr	t1

000000008000709c <panic>:
    8000709c:	fe010113          	addi	sp,sp,-32
    800070a0:	00113c23          	sd	ra,24(sp)
    800070a4:	00813823          	sd	s0,16(sp)
    800070a8:	00913423          	sd	s1,8(sp)
    800070ac:	02010413          	addi	s0,sp,32
    800070b0:	00050493          	mv	s1,a0
    800070b4:	00002517          	auipc	a0,0x2
    800070b8:	65c50513          	addi	a0,a0,1628 # 80009710 <CONSOLE_STATUS+0x700>
    800070bc:	00005797          	auipc	a5,0x5
    800070c0:	7c07ae23          	sw	zero,2012(a5) # 8000c898 <pr+0x18>
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	034080e7          	jalr	52(ra) # 800070f8 <__printf>
    800070cc:	00048513          	mv	a0,s1
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	028080e7          	jalr	40(ra) # 800070f8 <__printf>
    800070d8:	00002517          	auipc	a0,0x2
    800070dc:	43050513          	addi	a0,a0,1072 # 80009508 <CONSOLE_STATUS+0x4f8>
    800070e0:	00000097          	auipc	ra,0x0
    800070e4:	018080e7          	jalr	24(ra) # 800070f8 <__printf>
    800070e8:	00100793          	li	a5,1
    800070ec:	00004717          	auipc	a4,0x4
    800070f0:	4af72e23          	sw	a5,1212(a4) # 8000b5a8 <panicked>
    800070f4:	0000006f          	j	800070f4 <panic+0x58>

00000000800070f8 <__printf>:
    800070f8:	f3010113          	addi	sp,sp,-208
    800070fc:	08813023          	sd	s0,128(sp)
    80007100:	07313423          	sd	s3,104(sp)
    80007104:	09010413          	addi	s0,sp,144
    80007108:	05813023          	sd	s8,64(sp)
    8000710c:	08113423          	sd	ra,136(sp)
    80007110:	06913c23          	sd	s1,120(sp)
    80007114:	07213823          	sd	s2,112(sp)
    80007118:	07413023          	sd	s4,96(sp)
    8000711c:	05513c23          	sd	s5,88(sp)
    80007120:	05613823          	sd	s6,80(sp)
    80007124:	05713423          	sd	s7,72(sp)
    80007128:	03913c23          	sd	s9,56(sp)
    8000712c:	03a13823          	sd	s10,48(sp)
    80007130:	03b13423          	sd	s11,40(sp)
    80007134:	00005317          	auipc	t1,0x5
    80007138:	74c30313          	addi	t1,t1,1868 # 8000c880 <pr>
    8000713c:	01832c03          	lw	s8,24(t1)
    80007140:	00b43423          	sd	a1,8(s0)
    80007144:	00c43823          	sd	a2,16(s0)
    80007148:	00d43c23          	sd	a3,24(s0)
    8000714c:	02e43023          	sd	a4,32(s0)
    80007150:	02f43423          	sd	a5,40(s0)
    80007154:	03043823          	sd	a6,48(s0)
    80007158:	03143c23          	sd	a7,56(s0)
    8000715c:	00050993          	mv	s3,a0
    80007160:	4a0c1663          	bnez	s8,8000760c <__printf+0x514>
    80007164:	60098c63          	beqz	s3,8000777c <__printf+0x684>
    80007168:	0009c503          	lbu	a0,0(s3)
    8000716c:	00840793          	addi	a5,s0,8
    80007170:	f6f43c23          	sd	a5,-136(s0)
    80007174:	00000493          	li	s1,0
    80007178:	22050063          	beqz	a0,80007398 <__printf+0x2a0>
    8000717c:	00002a37          	lui	s4,0x2
    80007180:	00018ab7          	lui	s5,0x18
    80007184:	000f4b37          	lui	s6,0xf4
    80007188:	00989bb7          	lui	s7,0x989
    8000718c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007190:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007194:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007198:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000719c:	00148c9b          	addiw	s9,s1,1
    800071a0:	02500793          	li	a5,37
    800071a4:	01998933          	add	s2,s3,s9
    800071a8:	38f51263          	bne	a0,a5,8000752c <__printf+0x434>
    800071ac:	00094783          	lbu	a5,0(s2)
    800071b0:	00078c9b          	sext.w	s9,a5
    800071b4:	1e078263          	beqz	a5,80007398 <__printf+0x2a0>
    800071b8:	0024849b          	addiw	s1,s1,2
    800071bc:	07000713          	li	a4,112
    800071c0:	00998933          	add	s2,s3,s1
    800071c4:	38e78a63          	beq	a5,a4,80007558 <__printf+0x460>
    800071c8:	20f76863          	bltu	a4,a5,800073d8 <__printf+0x2e0>
    800071cc:	42a78863          	beq	a5,a0,800075fc <__printf+0x504>
    800071d0:	06400713          	li	a4,100
    800071d4:	40e79663          	bne	a5,a4,800075e0 <__printf+0x4e8>
    800071d8:	f7843783          	ld	a5,-136(s0)
    800071dc:	0007a603          	lw	a2,0(a5)
    800071e0:	00878793          	addi	a5,a5,8
    800071e4:	f6f43c23          	sd	a5,-136(s0)
    800071e8:	42064a63          	bltz	a2,8000761c <__printf+0x524>
    800071ec:	00a00713          	li	a4,10
    800071f0:	02e677bb          	remuw	a5,a2,a4
    800071f4:	00002d97          	auipc	s11,0x2
    800071f8:	544d8d93          	addi	s11,s11,1348 # 80009738 <digits>
    800071fc:	00900593          	li	a1,9
    80007200:	0006051b          	sext.w	a0,a2
    80007204:	00000c93          	li	s9,0
    80007208:	02079793          	slli	a5,a5,0x20
    8000720c:	0207d793          	srli	a5,a5,0x20
    80007210:	00fd87b3          	add	a5,s11,a5
    80007214:	0007c783          	lbu	a5,0(a5)
    80007218:	02e656bb          	divuw	a3,a2,a4
    8000721c:	f8f40023          	sb	a5,-128(s0)
    80007220:	14c5d863          	bge	a1,a2,80007370 <__printf+0x278>
    80007224:	06300593          	li	a1,99
    80007228:	00100c93          	li	s9,1
    8000722c:	02e6f7bb          	remuw	a5,a3,a4
    80007230:	02079793          	slli	a5,a5,0x20
    80007234:	0207d793          	srli	a5,a5,0x20
    80007238:	00fd87b3          	add	a5,s11,a5
    8000723c:	0007c783          	lbu	a5,0(a5)
    80007240:	02e6d73b          	divuw	a4,a3,a4
    80007244:	f8f400a3          	sb	a5,-127(s0)
    80007248:	12a5f463          	bgeu	a1,a0,80007370 <__printf+0x278>
    8000724c:	00a00693          	li	a3,10
    80007250:	00900593          	li	a1,9
    80007254:	02d777bb          	remuw	a5,a4,a3
    80007258:	02079793          	slli	a5,a5,0x20
    8000725c:	0207d793          	srli	a5,a5,0x20
    80007260:	00fd87b3          	add	a5,s11,a5
    80007264:	0007c503          	lbu	a0,0(a5)
    80007268:	02d757bb          	divuw	a5,a4,a3
    8000726c:	f8a40123          	sb	a0,-126(s0)
    80007270:	48e5f263          	bgeu	a1,a4,800076f4 <__printf+0x5fc>
    80007274:	06300513          	li	a0,99
    80007278:	02d7f5bb          	remuw	a1,a5,a3
    8000727c:	02059593          	slli	a1,a1,0x20
    80007280:	0205d593          	srli	a1,a1,0x20
    80007284:	00bd85b3          	add	a1,s11,a1
    80007288:	0005c583          	lbu	a1,0(a1)
    8000728c:	02d7d7bb          	divuw	a5,a5,a3
    80007290:	f8b401a3          	sb	a1,-125(s0)
    80007294:	48e57263          	bgeu	a0,a4,80007718 <__printf+0x620>
    80007298:	3e700513          	li	a0,999
    8000729c:	02d7f5bb          	remuw	a1,a5,a3
    800072a0:	02059593          	slli	a1,a1,0x20
    800072a4:	0205d593          	srli	a1,a1,0x20
    800072a8:	00bd85b3          	add	a1,s11,a1
    800072ac:	0005c583          	lbu	a1,0(a1)
    800072b0:	02d7d7bb          	divuw	a5,a5,a3
    800072b4:	f8b40223          	sb	a1,-124(s0)
    800072b8:	46e57663          	bgeu	a0,a4,80007724 <__printf+0x62c>
    800072bc:	02d7f5bb          	remuw	a1,a5,a3
    800072c0:	02059593          	slli	a1,a1,0x20
    800072c4:	0205d593          	srli	a1,a1,0x20
    800072c8:	00bd85b3          	add	a1,s11,a1
    800072cc:	0005c583          	lbu	a1,0(a1)
    800072d0:	02d7d7bb          	divuw	a5,a5,a3
    800072d4:	f8b402a3          	sb	a1,-123(s0)
    800072d8:	46ea7863          	bgeu	s4,a4,80007748 <__printf+0x650>
    800072dc:	02d7f5bb          	remuw	a1,a5,a3
    800072e0:	02059593          	slli	a1,a1,0x20
    800072e4:	0205d593          	srli	a1,a1,0x20
    800072e8:	00bd85b3          	add	a1,s11,a1
    800072ec:	0005c583          	lbu	a1,0(a1)
    800072f0:	02d7d7bb          	divuw	a5,a5,a3
    800072f4:	f8b40323          	sb	a1,-122(s0)
    800072f8:	3eeaf863          	bgeu	s5,a4,800076e8 <__printf+0x5f0>
    800072fc:	02d7f5bb          	remuw	a1,a5,a3
    80007300:	02059593          	slli	a1,a1,0x20
    80007304:	0205d593          	srli	a1,a1,0x20
    80007308:	00bd85b3          	add	a1,s11,a1
    8000730c:	0005c583          	lbu	a1,0(a1)
    80007310:	02d7d7bb          	divuw	a5,a5,a3
    80007314:	f8b403a3          	sb	a1,-121(s0)
    80007318:	42eb7e63          	bgeu	s6,a4,80007754 <__printf+0x65c>
    8000731c:	02d7f5bb          	remuw	a1,a5,a3
    80007320:	02059593          	slli	a1,a1,0x20
    80007324:	0205d593          	srli	a1,a1,0x20
    80007328:	00bd85b3          	add	a1,s11,a1
    8000732c:	0005c583          	lbu	a1,0(a1)
    80007330:	02d7d7bb          	divuw	a5,a5,a3
    80007334:	f8b40423          	sb	a1,-120(s0)
    80007338:	42ebfc63          	bgeu	s7,a4,80007770 <__printf+0x678>
    8000733c:	02079793          	slli	a5,a5,0x20
    80007340:	0207d793          	srli	a5,a5,0x20
    80007344:	00fd8db3          	add	s11,s11,a5
    80007348:	000dc703          	lbu	a4,0(s11)
    8000734c:	00a00793          	li	a5,10
    80007350:	00900c93          	li	s9,9
    80007354:	f8e404a3          	sb	a4,-119(s0)
    80007358:	00065c63          	bgez	a2,80007370 <__printf+0x278>
    8000735c:	f9040713          	addi	a4,s0,-112
    80007360:	00f70733          	add	a4,a4,a5
    80007364:	02d00693          	li	a3,45
    80007368:	fed70823          	sb	a3,-16(a4)
    8000736c:	00078c93          	mv	s9,a5
    80007370:	f8040793          	addi	a5,s0,-128
    80007374:	01978cb3          	add	s9,a5,s9
    80007378:	f7f40d13          	addi	s10,s0,-129
    8000737c:	000cc503          	lbu	a0,0(s9)
    80007380:	fffc8c93          	addi	s9,s9,-1
    80007384:	00000097          	auipc	ra,0x0
    80007388:	b90080e7          	jalr	-1136(ra) # 80006f14 <consputc>
    8000738c:	ffac98e3          	bne	s9,s10,8000737c <__printf+0x284>
    80007390:	00094503          	lbu	a0,0(s2)
    80007394:	e00514e3          	bnez	a0,8000719c <__printf+0xa4>
    80007398:	1a0c1663          	bnez	s8,80007544 <__printf+0x44c>
    8000739c:	08813083          	ld	ra,136(sp)
    800073a0:	08013403          	ld	s0,128(sp)
    800073a4:	07813483          	ld	s1,120(sp)
    800073a8:	07013903          	ld	s2,112(sp)
    800073ac:	06813983          	ld	s3,104(sp)
    800073b0:	06013a03          	ld	s4,96(sp)
    800073b4:	05813a83          	ld	s5,88(sp)
    800073b8:	05013b03          	ld	s6,80(sp)
    800073bc:	04813b83          	ld	s7,72(sp)
    800073c0:	04013c03          	ld	s8,64(sp)
    800073c4:	03813c83          	ld	s9,56(sp)
    800073c8:	03013d03          	ld	s10,48(sp)
    800073cc:	02813d83          	ld	s11,40(sp)
    800073d0:	0d010113          	addi	sp,sp,208
    800073d4:	00008067          	ret
    800073d8:	07300713          	li	a4,115
    800073dc:	1ce78a63          	beq	a5,a4,800075b0 <__printf+0x4b8>
    800073e0:	07800713          	li	a4,120
    800073e4:	1ee79e63          	bne	a5,a4,800075e0 <__printf+0x4e8>
    800073e8:	f7843783          	ld	a5,-136(s0)
    800073ec:	0007a703          	lw	a4,0(a5)
    800073f0:	00878793          	addi	a5,a5,8
    800073f4:	f6f43c23          	sd	a5,-136(s0)
    800073f8:	28074263          	bltz	a4,8000767c <__printf+0x584>
    800073fc:	00002d97          	auipc	s11,0x2
    80007400:	33cd8d93          	addi	s11,s11,828 # 80009738 <digits>
    80007404:	00f77793          	andi	a5,a4,15
    80007408:	00fd87b3          	add	a5,s11,a5
    8000740c:	0007c683          	lbu	a3,0(a5)
    80007410:	00f00613          	li	a2,15
    80007414:	0007079b          	sext.w	a5,a4
    80007418:	f8d40023          	sb	a3,-128(s0)
    8000741c:	0047559b          	srliw	a1,a4,0x4
    80007420:	0047569b          	srliw	a3,a4,0x4
    80007424:	00000c93          	li	s9,0
    80007428:	0ee65063          	bge	a2,a4,80007508 <__printf+0x410>
    8000742c:	00f6f693          	andi	a3,a3,15
    80007430:	00dd86b3          	add	a3,s11,a3
    80007434:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007438:	0087d79b          	srliw	a5,a5,0x8
    8000743c:	00100c93          	li	s9,1
    80007440:	f8d400a3          	sb	a3,-127(s0)
    80007444:	0cb67263          	bgeu	a2,a1,80007508 <__printf+0x410>
    80007448:	00f7f693          	andi	a3,a5,15
    8000744c:	00dd86b3          	add	a3,s11,a3
    80007450:	0006c583          	lbu	a1,0(a3)
    80007454:	00f00613          	li	a2,15
    80007458:	0047d69b          	srliw	a3,a5,0x4
    8000745c:	f8b40123          	sb	a1,-126(s0)
    80007460:	0047d593          	srli	a1,a5,0x4
    80007464:	28f67e63          	bgeu	a2,a5,80007700 <__printf+0x608>
    80007468:	00f6f693          	andi	a3,a3,15
    8000746c:	00dd86b3          	add	a3,s11,a3
    80007470:	0006c503          	lbu	a0,0(a3)
    80007474:	0087d813          	srli	a6,a5,0x8
    80007478:	0087d69b          	srliw	a3,a5,0x8
    8000747c:	f8a401a3          	sb	a0,-125(s0)
    80007480:	28b67663          	bgeu	a2,a1,8000770c <__printf+0x614>
    80007484:	00f6f693          	andi	a3,a3,15
    80007488:	00dd86b3          	add	a3,s11,a3
    8000748c:	0006c583          	lbu	a1,0(a3)
    80007490:	00c7d513          	srli	a0,a5,0xc
    80007494:	00c7d69b          	srliw	a3,a5,0xc
    80007498:	f8b40223          	sb	a1,-124(s0)
    8000749c:	29067a63          	bgeu	a2,a6,80007730 <__printf+0x638>
    800074a0:	00f6f693          	andi	a3,a3,15
    800074a4:	00dd86b3          	add	a3,s11,a3
    800074a8:	0006c583          	lbu	a1,0(a3)
    800074ac:	0107d813          	srli	a6,a5,0x10
    800074b0:	0107d69b          	srliw	a3,a5,0x10
    800074b4:	f8b402a3          	sb	a1,-123(s0)
    800074b8:	28a67263          	bgeu	a2,a0,8000773c <__printf+0x644>
    800074bc:	00f6f693          	andi	a3,a3,15
    800074c0:	00dd86b3          	add	a3,s11,a3
    800074c4:	0006c683          	lbu	a3,0(a3)
    800074c8:	0147d79b          	srliw	a5,a5,0x14
    800074cc:	f8d40323          	sb	a3,-122(s0)
    800074d0:	21067663          	bgeu	a2,a6,800076dc <__printf+0x5e4>
    800074d4:	02079793          	slli	a5,a5,0x20
    800074d8:	0207d793          	srli	a5,a5,0x20
    800074dc:	00fd8db3          	add	s11,s11,a5
    800074e0:	000dc683          	lbu	a3,0(s11)
    800074e4:	00800793          	li	a5,8
    800074e8:	00700c93          	li	s9,7
    800074ec:	f8d403a3          	sb	a3,-121(s0)
    800074f0:	00075c63          	bgez	a4,80007508 <__printf+0x410>
    800074f4:	f9040713          	addi	a4,s0,-112
    800074f8:	00f70733          	add	a4,a4,a5
    800074fc:	02d00693          	li	a3,45
    80007500:	fed70823          	sb	a3,-16(a4)
    80007504:	00078c93          	mv	s9,a5
    80007508:	f8040793          	addi	a5,s0,-128
    8000750c:	01978cb3          	add	s9,a5,s9
    80007510:	f7f40d13          	addi	s10,s0,-129
    80007514:	000cc503          	lbu	a0,0(s9)
    80007518:	fffc8c93          	addi	s9,s9,-1
    8000751c:	00000097          	auipc	ra,0x0
    80007520:	9f8080e7          	jalr	-1544(ra) # 80006f14 <consputc>
    80007524:	ff9d18e3          	bne	s10,s9,80007514 <__printf+0x41c>
    80007528:	0100006f          	j	80007538 <__printf+0x440>
    8000752c:	00000097          	auipc	ra,0x0
    80007530:	9e8080e7          	jalr	-1560(ra) # 80006f14 <consputc>
    80007534:	000c8493          	mv	s1,s9
    80007538:	00094503          	lbu	a0,0(s2)
    8000753c:	c60510e3          	bnez	a0,8000719c <__printf+0xa4>
    80007540:	e40c0ee3          	beqz	s8,8000739c <__printf+0x2a4>
    80007544:	00005517          	auipc	a0,0x5
    80007548:	33c50513          	addi	a0,a0,828 # 8000c880 <pr>
    8000754c:	00001097          	auipc	ra,0x1
    80007550:	94c080e7          	jalr	-1716(ra) # 80007e98 <release>
    80007554:	e49ff06f          	j	8000739c <__printf+0x2a4>
    80007558:	f7843783          	ld	a5,-136(s0)
    8000755c:	03000513          	li	a0,48
    80007560:	01000d13          	li	s10,16
    80007564:	00878713          	addi	a4,a5,8
    80007568:	0007bc83          	ld	s9,0(a5)
    8000756c:	f6e43c23          	sd	a4,-136(s0)
    80007570:	00000097          	auipc	ra,0x0
    80007574:	9a4080e7          	jalr	-1628(ra) # 80006f14 <consputc>
    80007578:	07800513          	li	a0,120
    8000757c:	00000097          	auipc	ra,0x0
    80007580:	998080e7          	jalr	-1640(ra) # 80006f14 <consputc>
    80007584:	00002d97          	auipc	s11,0x2
    80007588:	1b4d8d93          	addi	s11,s11,436 # 80009738 <digits>
    8000758c:	03ccd793          	srli	a5,s9,0x3c
    80007590:	00fd87b3          	add	a5,s11,a5
    80007594:	0007c503          	lbu	a0,0(a5)
    80007598:	fffd0d1b          	addiw	s10,s10,-1
    8000759c:	004c9c93          	slli	s9,s9,0x4
    800075a0:	00000097          	auipc	ra,0x0
    800075a4:	974080e7          	jalr	-1676(ra) # 80006f14 <consputc>
    800075a8:	fe0d12e3          	bnez	s10,8000758c <__printf+0x494>
    800075ac:	f8dff06f          	j	80007538 <__printf+0x440>
    800075b0:	f7843783          	ld	a5,-136(s0)
    800075b4:	0007bc83          	ld	s9,0(a5)
    800075b8:	00878793          	addi	a5,a5,8
    800075bc:	f6f43c23          	sd	a5,-136(s0)
    800075c0:	000c9a63          	bnez	s9,800075d4 <__printf+0x4dc>
    800075c4:	1080006f          	j	800076cc <__printf+0x5d4>
    800075c8:	001c8c93          	addi	s9,s9,1
    800075cc:	00000097          	auipc	ra,0x0
    800075d0:	948080e7          	jalr	-1720(ra) # 80006f14 <consputc>
    800075d4:	000cc503          	lbu	a0,0(s9)
    800075d8:	fe0518e3          	bnez	a0,800075c8 <__printf+0x4d0>
    800075dc:	f5dff06f          	j	80007538 <__printf+0x440>
    800075e0:	02500513          	li	a0,37
    800075e4:	00000097          	auipc	ra,0x0
    800075e8:	930080e7          	jalr	-1744(ra) # 80006f14 <consputc>
    800075ec:	000c8513          	mv	a0,s9
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	924080e7          	jalr	-1756(ra) # 80006f14 <consputc>
    800075f8:	f41ff06f          	j	80007538 <__printf+0x440>
    800075fc:	02500513          	li	a0,37
    80007600:	00000097          	auipc	ra,0x0
    80007604:	914080e7          	jalr	-1772(ra) # 80006f14 <consputc>
    80007608:	f31ff06f          	j	80007538 <__printf+0x440>
    8000760c:	00030513          	mv	a0,t1
    80007610:	00000097          	auipc	ra,0x0
    80007614:	7bc080e7          	jalr	1980(ra) # 80007dcc <acquire>
    80007618:	b4dff06f          	j	80007164 <__printf+0x6c>
    8000761c:	40c0053b          	negw	a0,a2
    80007620:	00a00713          	li	a4,10
    80007624:	02e576bb          	remuw	a3,a0,a4
    80007628:	00002d97          	auipc	s11,0x2
    8000762c:	110d8d93          	addi	s11,s11,272 # 80009738 <digits>
    80007630:	ff700593          	li	a1,-9
    80007634:	02069693          	slli	a3,a3,0x20
    80007638:	0206d693          	srli	a3,a3,0x20
    8000763c:	00dd86b3          	add	a3,s11,a3
    80007640:	0006c683          	lbu	a3,0(a3)
    80007644:	02e557bb          	divuw	a5,a0,a4
    80007648:	f8d40023          	sb	a3,-128(s0)
    8000764c:	10b65e63          	bge	a2,a1,80007768 <__printf+0x670>
    80007650:	06300593          	li	a1,99
    80007654:	02e7f6bb          	remuw	a3,a5,a4
    80007658:	02069693          	slli	a3,a3,0x20
    8000765c:	0206d693          	srli	a3,a3,0x20
    80007660:	00dd86b3          	add	a3,s11,a3
    80007664:	0006c683          	lbu	a3,0(a3)
    80007668:	02e7d73b          	divuw	a4,a5,a4
    8000766c:	00200793          	li	a5,2
    80007670:	f8d400a3          	sb	a3,-127(s0)
    80007674:	bca5ece3          	bltu	a1,a0,8000724c <__printf+0x154>
    80007678:	ce5ff06f          	j	8000735c <__printf+0x264>
    8000767c:	40e007bb          	negw	a5,a4
    80007680:	00002d97          	auipc	s11,0x2
    80007684:	0b8d8d93          	addi	s11,s11,184 # 80009738 <digits>
    80007688:	00f7f693          	andi	a3,a5,15
    8000768c:	00dd86b3          	add	a3,s11,a3
    80007690:	0006c583          	lbu	a1,0(a3)
    80007694:	ff100613          	li	a2,-15
    80007698:	0047d69b          	srliw	a3,a5,0x4
    8000769c:	f8b40023          	sb	a1,-128(s0)
    800076a0:	0047d59b          	srliw	a1,a5,0x4
    800076a4:	0ac75e63          	bge	a4,a2,80007760 <__printf+0x668>
    800076a8:	00f6f693          	andi	a3,a3,15
    800076ac:	00dd86b3          	add	a3,s11,a3
    800076b0:	0006c603          	lbu	a2,0(a3)
    800076b4:	00f00693          	li	a3,15
    800076b8:	0087d79b          	srliw	a5,a5,0x8
    800076bc:	f8c400a3          	sb	a2,-127(s0)
    800076c0:	d8b6e4e3          	bltu	a3,a1,80007448 <__printf+0x350>
    800076c4:	00200793          	li	a5,2
    800076c8:	e2dff06f          	j	800074f4 <__printf+0x3fc>
    800076cc:	00002c97          	auipc	s9,0x2
    800076d0:	04cc8c93          	addi	s9,s9,76 # 80009718 <CONSOLE_STATUS+0x708>
    800076d4:	02800513          	li	a0,40
    800076d8:	ef1ff06f          	j	800075c8 <__printf+0x4d0>
    800076dc:	00700793          	li	a5,7
    800076e0:	00600c93          	li	s9,6
    800076e4:	e0dff06f          	j	800074f0 <__printf+0x3f8>
    800076e8:	00700793          	li	a5,7
    800076ec:	00600c93          	li	s9,6
    800076f0:	c69ff06f          	j	80007358 <__printf+0x260>
    800076f4:	00300793          	li	a5,3
    800076f8:	00200c93          	li	s9,2
    800076fc:	c5dff06f          	j	80007358 <__printf+0x260>
    80007700:	00300793          	li	a5,3
    80007704:	00200c93          	li	s9,2
    80007708:	de9ff06f          	j	800074f0 <__printf+0x3f8>
    8000770c:	00400793          	li	a5,4
    80007710:	00300c93          	li	s9,3
    80007714:	dddff06f          	j	800074f0 <__printf+0x3f8>
    80007718:	00400793          	li	a5,4
    8000771c:	00300c93          	li	s9,3
    80007720:	c39ff06f          	j	80007358 <__printf+0x260>
    80007724:	00500793          	li	a5,5
    80007728:	00400c93          	li	s9,4
    8000772c:	c2dff06f          	j	80007358 <__printf+0x260>
    80007730:	00500793          	li	a5,5
    80007734:	00400c93          	li	s9,4
    80007738:	db9ff06f          	j	800074f0 <__printf+0x3f8>
    8000773c:	00600793          	li	a5,6
    80007740:	00500c93          	li	s9,5
    80007744:	dadff06f          	j	800074f0 <__printf+0x3f8>
    80007748:	00600793          	li	a5,6
    8000774c:	00500c93          	li	s9,5
    80007750:	c09ff06f          	j	80007358 <__printf+0x260>
    80007754:	00800793          	li	a5,8
    80007758:	00700c93          	li	s9,7
    8000775c:	bfdff06f          	j	80007358 <__printf+0x260>
    80007760:	00100793          	li	a5,1
    80007764:	d91ff06f          	j	800074f4 <__printf+0x3fc>
    80007768:	00100793          	li	a5,1
    8000776c:	bf1ff06f          	j	8000735c <__printf+0x264>
    80007770:	00900793          	li	a5,9
    80007774:	00800c93          	li	s9,8
    80007778:	be1ff06f          	j	80007358 <__printf+0x260>
    8000777c:	00002517          	auipc	a0,0x2
    80007780:	fa450513          	addi	a0,a0,-92 # 80009720 <CONSOLE_STATUS+0x710>
    80007784:	00000097          	auipc	ra,0x0
    80007788:	918080e7          	jalr	-1768(ra) # 8000709c <panic>

000000008000778c <printfinit>:
    8000778c:	fe010113          	addi	sp,sp,-32
    80007790:	00813823          	sd	s0,16(sp)
    80007794:	00913423          	sd	s1,8(sp)
    80007798:	00113c23          	sd	ra,24(sp)
    8000779c:	02010413          	addi	s0,sp,32
    800077a0:	00005497          	auipc	s1,0x5
    800077a4:	0e048493          	addi	s1,s1,224 # 8000c880 <pr>
    800077a8:	00048513          	mv	a0,s1
    800077ac:	00002597          	auipc	a1,0x2
    800077b0:	f8458593          	addi	a1,a1,-124 # 80009730 <CONSOLE_STATUS+0x720>
    800077b4:	00000097          	auipc	ra,0x0
    800077b8:	5f4080e7          	jalr	1524(ra) # 80007da8 <initlock>
    800077bc:	01813083          	ld	ra,24(sp)
    800077c0:	01013403          	ld	s0,16(sp)
    800077c4:	0004ac23          	sw	zero,24(s1)
    800077c8:	00813483          	ld	s1,8(sp)
    800077cc:	02010113          	addi	sp,sp,32
    800077d0:	00008067          	ret

00000000800077d4 <uartinit>:
    800077d4:	ff010113          	addi	sp,sp,-16
    800077d8:	00813423          	sd	s0,8(sp)
    800077dc:	01010413          	addi	s0,sp,16
    800077e0:	100007b7          	lui	a5,0x10000
    800077e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077e8:	f8000713          	li	a4,-128
    800077ec:	00e781a3          	sb	a4,3(a5)
    800077f0:	00300713          	li	a4,3
    800077f4:	00e78023          	sb	a4,0(a5)
    800077f8:	000780a3          	sb	zero,1(a5)
    800077fc:	00e781a3          	sb	a4,3(a5)
    80007800:	00700693          	li	a3,7
    80007804:	00d78123          	sb	a3,2(a5)
    80007808:	00e780a3          	sb	a4,1(a5)
    8000780c:	00813403          	ld	s0,8(sp)
    80007810:	01010113          	addi	sp,sp,16
    80007814:	00008067          	ret

0000000080007818 <uartputc>:
    80007818:	00004797          	auipc	a5,0x4
    8000781c:	d907a783          	lw	a5,-624(a5) # 8000b5a8 <panicked>
    80007820:	00078463          	beqz	a5,80007828 <uartputc+0x10>
    80007824:	0000006f          	j	80007824 <uartputc+0xc>
    80007828:	fd010113          	addi	sp,sp,-48
    8000782c:	02813023          	sd	s0,32(sp)
    80007830:	00913c23          	sd	s1,24(sp)
    80007834:	01213823          	sd	s2,16(sp)
    80007838:	01313423          	sd	s3,8(sp)
    8000783c:	02113423          	sd	ra,40(sp)
    80007840:	03010413          	addi	s0,sp,48
    80007844:	00004917          	auipc	s2,0x4
    80007848:	d6c90913          	addi	s2,s2,-660 # 8000b5b0 <uart_tx_r>
    8000784c:	00093783          	ld	a5,0(s2)
    80007850:	00004497          	auipc	s1,0x4
    80007854:	d6848493          	addi	s1,s1,-664 # 8000b5b8 <uart_tx_w>
    80007858:	0004b703          	ld	a4,0(s1)
    8000785c:	02078693          	addi	a3,a5,32
    80007860:	00050993          	mv	s3,a0
    80007864:	02e69c63          	bne	a3,a4,8000789c <uartputc+0x84>
    80007868:	00001097          	auipc	ra,0x1
    8000786c:	834080e7          	jalr	-1996(ra) # 8000809c <push_on>
    80007870:	00093783          	ld	a5,0(s2)
    80007874:	0004b703          	ld	a4,0(s1)
    80007878:	02078793          	addi	a5,a5,32
    8000787c:	00e79463          	bne	a5,a4,80007884 <uartputc+0x6c>
    80007880:	0000006f          	j	80007880 <uartputc+0x68>
    80007884:	00001097          	auipc	ra,0x1
    80007888:	88c080e7          	jalr	-1908(ra) # 80008110 <pop_on>
    8000788c:	00093783          	ld	a5,0(s2)
    80007890:	0004b703          	ld	a4,0(s1)
    80007894:	02078693          	addi	a3,a5,32
    80007898:	fce688e3          	beq	a3,a4,80007868 <uartputc+0x50>
    8000789c:	01f77693          	andi	a3,a4,31
    800078a0:	00005597          	auipc	a1,0x5
    800078a4:	00058593          	mv	a1,a1
    800078a8:	00d586b3          	add	a3,a1,a3
    800078ac:	00170713          	addi	a4,a4,1
    800078b0:	01368023          	sb	s3,0(a3)
    800078b4:	00e4b023          	sd	a4,0(s1)
    800078b8:	10000637          	lui	a2,0x10000
    800078bc:	02f71063          	bne	a4,a5,800078dc <uartputc+0xc4>
    800078c0:	0340006f          	j	800078f4 <uartputc+0xdc>
    800078c4:	00074703          	lbu	a4,0(a4)
    800078c8:	00f93023          	sd	a5,0(s2)
    800078cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078d0:	00093783          	ld	a5,0(s2)
    800078d4:	0004b703          	ld	a4,0(s1)
    800078d8:	00f70e63          	beq	a4,a5,800078f4 <uartputc+0xdc>
    800078dc:	00564683          	lbu	a3,5(a2)
    800078e0:	01f7f713          	andi	a4,a5,31
    800078e4:	00e58733          	add	a4,a1,a4
    800078e8:	0206f693          	andi	a3,a3,32
    800078ec:	00178793          	addi	a5,a5,1
    800078f0:	fc069ae3          	bnez	a3,800078c4 <uartputc+0xac>
    800078f4:	02813083          	ld	ra,40(sp)
    800078f8:	02013403          	ld	s0,32(sp)
    800078fc:	01813483          	ld	s1,24(sp)
    80007900:	01013903          	ld	s2,16(sp)
    80007904:	00813983          	ld	s3,8(sp)
    80007908:	03010113          	addi	sp,sp,48
    8000790c:	00008067          	ret

0000000080007910 <uartputc_sync>:
    80007910:	ff010113          	addi	sp,sp,-16
    80007914:	00813423          	sd	s0,8(sp)
    80007918:	01010413          	addi	s0,sp,16
    8000791c:	00004717          	auipc	a4,0x4
    80007920:	c8c72703          	lw	a4,-884(a4) # 8000b5a8 <panicked>
    80007924:	02071663          	bnez	a4,80007950 <uartputc_sync+0x40>
    80007928:	00050793          	mv	a5,a0
    8000792c:	100006b7          	lui	a3,0x10000
    80007930:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007934:	02077713          	andi	a4,a4,32
    80007938:	fe070ce3          	beqz	a4,80007930 <uartputc_sync+0x20>
    8000793c:	0ff7f793          	andi	a5,a5,255
    80007940:	00f68023          	sb	a5,0(a3)
    80007944:	00813403          	ld	s0,8(sp)
    80007948:	01010113          	addi	sp,sp,16
    8000794c:	00008067          	ret
    80007950:	0000006f          	j	80007950 <uartputc_sync+0x40>

0000000080007954 <uartstart>:
    80007954:	ff010113          	addi	sp,sp,-16
    80007958:	00813423          	sd	s0,8(sp)
    8000795c:	01010413          	addi	s0,sp,16
    80007960:	00004617          	auipc	a2,0x4
    80007964:	c5060613          	addi	a2,a2,-944 # 8000b5b0 <uart_tx_r>
    80007968:	00004517          	auipc	a0,0x4
    8000796c:	c5050513          	addi	a0,a0,-944 # 8000b5b8 <uart_tx_w>
    80007970:	00063783          	ld	a5,0(a2)
    80007974:	00053703          	ld	a4,0(a0)
    80007978:	04f70263          	beq	a4,a5,800079bc <uartstart+0x68>
    8000797c:	100005b7          	lui	a1,0x10000
    80007980:	00005817          	auipc	a6,0x5
    80007984:	f2080813          	addi	a6,a6,-224 # 8000c8a0 <uart_tx_buf>
    80007988:	01c0006f          	j	800079a4 <uartstart+0x50>
    8000798c:	0006c703          	lbu	a4,0(a3)
    80007990:	00f63023          	sd	a5,0(a2)
    80007994:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007998:	00063783          	ld	a5,0(a2)
    8000799c:	00053703          	ld	a4,0(a0)
    800079a0:	00f70e63          	beq	a4,a5,800079bc <uartstart+0x68>
    800079a4:	01f7f713          	andi	a4,a5,31
    800079a8:	00e806b3          	add	a3,a6,a4
    800079ac:	0055c703          	lbu	a4,5(a1)
    800079b0:	00178793          	addi	a5,a5,1
    800079b4:	02077713          	andi	a4,a4,32
    800079b8:	fc071ae3          	bnez	a4,8000798c <uartstart+0x38>
    800079bc:	00813403          	ld	s0,8(sp)
    800079c0:	01010113          	addi	sp,sp,16
    800079c4:	00008067          	ret

00000000800079c8 <uartgetc>:
    800079c8:	ff010113          	addi	sp,sp,-16
    800079cc:	00813423          	sd	s0,8(sp)
    800079d0:	01010413          	addi	s0,sp,16
    800079d4:	10000737          	lui	a4,0x10000
    800079d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079dc:	0017f793          	andi	a5,a5,1
    800079e0:	00078c63          	beqz	a5,800079f8 <uartgetc+0x30>
    800079e4:	00074503          	lbu	a0,0(a4)
    800079e8:	0ff57513          	andi	a0,a0,255
    800079ec:	00813403          	ld	s0,8(sp)
    800079f0:	01010113          	addi	sp,sp,16
    800079f4:	00008067          	ret
    800079f8:	fff00513          	li	a0,-1
    800079fc:	ff1ff06f          	j	800079ec <uartgetc+0x24>

0000000080007a00 <uartintr>:
    80007a00:	100007b7          	lui	a5,0x10000
    80007a04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a08:	0017f793          	andi	a5,a5,1
    80007a0c:	0a078463          	beqz	a5,80007ab4 <uartintr+0xb4>
    80007a10:	fe010113          	addi	sp,sp,-32
    80007a14:	00813823          	sd	s0,16(sp)
    80007a18:	00913423          	sd	s1,8(sp)
    80007a1c:	00113c23          	sd	ra,24(sp)
    80007a20:	02010413          	addi	s0,sp,32
    80007a24:	100004b7          	lui	s1,0x10000
    80007a28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a2c:	0ff57513          	andi	a0,a0,255
    80007a30:	fffff097          	auipc	ra,0xfffff
    80007a34:	534080e7          	jalr	1332(ra) # 80006f64 <consoleintr>
    80007a38:	0054c783          	lbu	a5,5(s1)
    80007a3c:	0017f793          	andi	a5,a5,1
    80007a40:	fe0794e3          	bnez	a5,80007a28 <uartintr+0x28>
    80007a44:	00004617          	auipc	a2,0x4
    80007a48:	b6c60613          	addi	a2,a2,-1172 # 8000b5b0 <uart_tx_r>
    80007a4c:	00004517          	auipc	a0,0x4
    80007a50:	b6c50513          	addi	a0,a0,-1172 # 8000b5b8 <uart_tx_w>
    80007a54:	00063783          	ld	a5,0(a2)
    80007a58:	00053703          	ld	a4,0(a0)
    80007a5c:	04f70263          	beq	a4,a5,80007aa0 <uartintr+0xa0>
    80007a60:	100005b7          	lui	a1,0x10000
    80007a64:	00005817          	auipc	a6,0x5
    80007a68:	e3c80813          	addi	a6,a6,-452 # 8000c8a0 <uart_tx_buf>
    80007a6c:	01c0006f          	j	80007a88 <uartintr+0x88>
    80007a70:	0006c703          	lbu	a4,0(a3)
    80007a74:	00f63023          	sd	a5,0(a2)
    80007a78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a7c:	00063783          	ld	a5,0(a2)
    80007a80:	00053703          	ld	a4,0(a0)
    80007a84:	00f70e63          	beq	a4,a5,80007aa0 <uartintr+0xa0>
    80007a88:	01f7f713          	andi	a4,a5,31
    80007a8c:	00e806b3          	add	a3,a6,a4
    80007a90:	0055c703          	lbu	a4,5(a1)
    80007a94:	00178793          	addi	a5,a5,1
    80007a98:	02077713          	andi	a4,a4,32
    80007a9c:	fc071ae3          	bnez	a4,80007a70 <uartintr+0x70>
    80007aa0:	01813083          	ld	ra,24(sp)
    80007aa4:	01013403          	ld	s0,16(sp)
    80007aa8:	00813483          	ld	s1,8(sp)
    80007aac:	02010113          	addi	sp,sp,32
    80007ab0:	00008067          	ret
    80007ab4:	00004617          	auipc	a2,0x4
    80007ab8:	afc60613          	addi	a2,a2,-1284 # 8000b5b0 <uart_tx_r>
    80007abc:	00004517          	auipc	a0,0x4
    80007ac0:	afc50513          	addi	a0,a0,-1284 # 8000b5b8 <uart_tx_w>
    80007ac4:	00063783          	ld	a5,0(a2)
    80007ac8:	00053703          	ld	a4,0(a0)
    80007acc:	04f70263          	beq	a4,a5,80007b10 <uartintr+0x110>
    80007ad0:	100005b7          	lui	a1,0x10000
    80007ad4:	00005817          	auipc	a6,0x5
    80007ad8:	dcc80813          	addi	a6,a6,-564 # 8000c8a0 <uart_tx_buf>
    80007adc:	01c0006f          	j	80007af8 <uartintr+0xf8>
    80007ae0:	0006c703          	lbu	a4,0(a3)
    80007ae4:	00f63023          	sd	a5,0(a2)
    80007ae8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007aec:	00063783          	ld	a5,0(a2)
    80007af0:	00053703          	ld	a4,0(a0)
    80007af4:	02f70063          	beq	a4,a5,80007b14 <uartintr+0x114>
    80007af8:	01f7f713          	andi	a4,a5,31
    80007afc:	00e806b3          	add	a3,a6,a4
    80007b00:	0055c703          	lbu	a4,5(a1)
    80007b04:	00178793          	addi	a5,a5,1
    80007b08:	02077713          	andi	a4,a4,32
    80007b0c:	fc071ae3          	bnez	a4,80007ae0 <uartintr+0xe0>
    80007b10:	00008067          	ret
    80007b14:	00008067          	ret

0000000080007b18 <kinit>:
    80007b18:	fc010113          	addi	sp,sp,-64
    80007b1c:	02913423          	sd	s1,40(sp)
    80007b20:	fffff7b7          	lui	a5,0xfffff
    80007b24:	00006497          	auipc	s1,0x6
    80007b28:	d9b48493          	addi	s1,s1,-613 # 8000d8bf <end+0xfff>
    80007b2c:	02813823          	sd	s0,48(sp)
    80007b30:	01313c23          	sd	s3,24(sp)
    80007b34:	00f4f4b3          	and	s1,s1,a5
    80007b38:	02113c23          	sd	ra,56(sp)
    80007b3c:	03213023          	sd	s2,32(sp)
    80007b40:	01413823          	sd	s4,16(sp)
    80007b44:	01513423          	sd	s5,8(sp)
    80007b48:	04010413          	addi	s0,sp,64
    80007b4c:	000017b7          	lui	a5,0x1
    80007b50:	01100993          	li	s3,17
    80007b54:	00f487b3          	add	a5,s1,a5
    80007b58:	01b99993          	slli	s3,s3,0x1b
    80007b5c:	06f9e063          	bltu	s3,a5,80007bbc <kinit+0xa4>
    80007b60:	00005a97          	auipc	s5,0x5
    80007b64:	d60a8a93          	addi	s5,s5,-672 # 8000c8c0 <end>
    80007b68:	0754ec63          	bltu	s1,s5,80007be0 <kinit+0xc8>
    80007b6c:	0734fa63          	bgeu	s1,s3,80007be0 <kinit+0xc8>
    80007b70:	00088a37          	lui	s4,0x88
    80007b74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b78:	00004917          	auipc	s2,0x4
    80007b7c:	a4890913          	addi	s2,s2,-1464 # 8000b5c0 <kmem>
    80007b80:	00ca1a13          	slli	s4,s4,0xc
    80007b84:	0140006f          	j	80007b98 <kinit+0x80>
    80007b88:	000017b7          	lui	a5,0x1
    80007b8c:	00f484b3          	add	s1,s1,a5
    80007b90:	0554e863          	bltu	s1,s5,80007be0 <kinit+0xc8>
    80007b94:	0534f663          	bgeu	s1,s3,80007be0 <kinit+0xc8>
    80007b98:	00001637          	lui	a2,0x1
    80007b9c:	00100593          	li	a1,1
    80007ba0:	00048513          	mv	a0,s1
    80007ba4:	00000097          	auipc	ra,0x0
    80007ba8:	5e4080e7          	jalr	1508(ra) # 80008188 <__memset>
    80007bac:	00093783          	ld	a5,0(s2)
    80007bb0:	00f4b023          	sd	a5,0(s1)
    80007bb4:	00993023          	sd	s1,0(s2)
    80007bb8:	fd4498e3          	bne	s1,s4,80007b88 <kinit+0x70>
    80007bbc:	03813083          	ld	ra,56(sp)
    80007bc0:	03013403          	ld	s0,48(sp)
    80007bc4:	02813483          	ld	s1,40(sp)
    80007bc8:	02013903          	ld	s2,32(sp)
    80007bcc:	01813983          	ld	s3,24(sp)
    80007bd0:	01013a03          	ld	s4,16(sp)
    80007bd4:	00813a83          	ld	s5,8(sp)
    80007bd8:	04010113          	addi	sp,sp,64
    80007bdc:	00008067          	ret
    80007be0:	00002517          	auipc	a0,0x2
    80007be4:	b7050513          	addi	a0,a0,-1168 # 80009750 <digits+0x18>
    80007be8:	fffff097          	auipc	ra,0xfffff
    80007bec:	4b4080e7          	jalr	1204(ra) # 8000709c <panic>

0000000080007bf0 <freerange>:
    80007bf0:	fc010113          	addi	sp,sp,-64
    80007bf4:	000017b7          	lui	a5,0x1
    80007bf8:	02913423          	sd	s1,40(sp)
    80007bfc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c00:	009504b3          	add	s1,a0,s1
    80007c04:	fffff537          	lui	a0,0xfffff
    80007c08:	02813823          	sd	s0,48(sp)
    80007c0c:	02113c23          	sd	ra,56(sp)
    80007c10:	03213023          	sd	s2,32(sp)
    80007c14:	01313c23          	sd	s3,24(sp)
    80007c18:	01413823          	sd	s4,16(sp)
    80007c1c:	01513423          	sd	s5,8(sp)
    80007c20:	01613023          	sd	s6,0(sp)
    80007c24:	04010413          	addi	s0,sp,64
    80007c28:	00a4f4b3          	and	s1,s1,a0
    80007c2c:	00f487b3          	add	a5,s1,a5
    80007c30:	06f5e463          	bltu	a1,a5,80007c98 <freerange+0xa8>
    80007c34:	00005a97          	auipc	s5,0x5
    80007c38:	c8ca8a93          	addi	s5,s5,-884 # 8000c8c0 <end>
    80007c3c:	0954e263          	bltu	s1,s5,80007cc0 <freerange+0xd0>
    80007c40:	01100993          	li	s3,17
    80007c44:	01b99993          	slli	s3,s3,0x1b
    80007c48:	0734fc63          	bgeu	s1,s3,80007cc0 <freerange+0xd0>
    80007c4c:	00058a13          	mv	s4,a1
    80007c50:	00004917          	auipc	s2,0x4
    80007c54:	97090913          	addi	s2,s2,-1680 # 8000b5c0 <kmem>
    80007c58:	00002b37          	lui	s6,0x2
    80007c5c:	0140006f          	j	80007c70 <freerange+0x80>
    80007c60:	000017b7          	lui	a5,0x1
    80007c64:	00f484b3          	add	s1,s1,a5
    80007c68:	0554ec63          	bltu	s1,s5,80007cc0 <freerange+0xd0>
    80007c6c:	0534fa63          	bgeu	s1,s3,80007cc0 <freerange+0xd0>
    80007c70:	00001637          	lui	a2,0x1
    80007c74:	00100593          	li	a1,1
    80007c78:	00048513          	mv	a0,s1
    80007c7c:	00000097          	auipc	ra,0x0
    80007c80:	50c080e7          	jalr	1292(ra) # 80008188 <__memset>
    80007c84:	00093703          	ld	a4,0(s2)
    80007c88:	016487b3          	add	a5,s1,s6
    80007c8c:	00e4b023          	sd	a4,0(s1)
    80007c90:	00993023          	sd	s1,0(s2)
    80007c94:	fcfa76e3          	bgeu	s4,a5,80007c60 <freerange+0x70>
    80007c98:	03813083          	ld	ra,56(sp)
    80007c9c:	03013403          	ld	s0,48(sp)
    80007ca0:	02813483          	ld	s1,40(sp)
    80007ca4:	02013903          	ld	s2,32(sp)
    80007ca8:	01813983          	ld	s3,24(sp)
    80007cac:	01013a03          	ld	s4,16(sp)
    80007cb0:	00813a83          	ld	s5,8(sp)
    80007cb4:	00013b03          	ld	s6,0(sp)
    80007cb8:	04010113          	addi	sp,sp,64
    80007cbc:	00008067          	ret
    80007cc0:	00002517          	auipc	a0,0x2
    80007cc4:	a9050513          	addi	a0,a0,-1392 # 80009750 <digits+0x18>
    80007cc8:	fffff097          	auipc	ra,0xfffff
    80007ccc:	3d4080e7          	jalr	980(ra) # 8000709c <panic>

0000000080007cd0 <kfree>:
    80007cd0:	fe010113          	addi	sp,sp,-32
    80007cd4:	00813823          	sd	s0,16(sp)
    80007cd8:	00113c23          	sd	ra,24(sp)
    80007cdc:	00913423          	sd	s1,8(sp)
    80007ce0:	02010413          	addi	s0,sp,32
    80007ce4:	03451793          	slli	a5,a0,0x34
    80007ce8:	04079c63          	bnez	a5,80007d40 <kfree+0x70>
    80007cec:	00005797          	auipc	a5,0x5
    80007cf0:	bd478793          	addi	a5,a5,-1068 # 8000c8c0 <end>
    80007cf4:	00050493          	mv	s1,a0
    80007cf8:	04f56463          	bltu	a0,a5,80007d40 <kfree+0x70>
    80007cfc:	01100793          	li	a5,17
    80007d00:	01b79793          	slli	a5,a5,0x1b
    80007d04:	02f57e63          	bgeu	a0,a5,80007d40 <kfree+0x70>
    80007d08:	00001637          	lui	a2,0x1
    80007d0c:	00100593          	li	a1,1
    80007d10:	00000097          	auipc	ra,0x0
    80007d14:	478080e7          	jalr	1144(ra) # 80008188 <__memset>
    80007d18:	00004797          	auipc	a5,0x4
    80007d1c:	8a878793          	addi	a5,a5,-1880 # 8000b5c0 <kmem>
    80007d20:	0007b703          	ld	a4,0(a5)
    80007d24:	01813083          	ld	ra,24(sp)
    80007d28:	01013403          	ld	s0,16(sp)
    80007d2c:	00e4b023          	sd	a4,0(s1)
    80007d30:	0097b023          	sd	s1,0(a5)
    80007d34:	00813483          	ld	s1,8(sp)
    80007d38:	02010113          	addi	sp,sp,32
    80007d3c:	00008067          	ret
    80007d40:	00002517          	auipc	a0,0x2
    80007d44:	a1050513          	addi	a0,a0,-1520 # 80009750 <digits+0x18>
    80007d48:	fffff097          	auipc	ra,0xfffff
    80007d4c:	354080e7          	jalr	852(ra) # 8000709c <panic>

0000000080007d50 <kalloc>:
    80007d50:	fe010113          	addi	sp,sp,-32
    80007d54:	00813823          	sd	s0,16(sp)
    80007d58:	00913423          	sd	s1,8(sp)
    80007d5c:	00113c23          	sd	ra,24(sp)
    80007d60:	02010413          	addi	s0,sp,32
    80007d64:	00004797          	auipc	a5,0x4
    80007d68:	85c78793          	addi	a5,a5,-1956 # 8000b5c0 <kmem>
    80007d6c:	0007b483          	ld	s1,0(a5)
    80007d70:	02048063          	beqz	s1,80007d90 <kalloc+0x40>
    80007d74:	0004b703          	ld	a4,0(s1)
    80007d78:	00001637          	lui	a2,0x1
    80007d7c:	00500593          	li	a1,5
    80007d80:	00048513          	mv	a0,s1
    80007d84:	00e7b023          	sd	a4,0(a5)
    80007d88:	00000097          	auipc	ra,0x0
    80007d8c:	400080e7          	jalr	1024(ra) # 80008188 <__memset>
    80007d90:	01813083          	ld	ra,24(sp)
    80007d94:	01013403          	ld	s0,16(sp)
    80007d98:	00048513          	mv	a0,s1
    80007d9c:	00813483          	ld	s1,8(sp)
    80007da0:	02010113          	addi	sp,sp,32
    80007da4:	00008067          	ret

0000000080007da8 <initlock>:
    80007da8:	ff010113          	addi	sp,sp,-16
    80007dac:	00813423          	sd	s0,8(sp)
    80007db0:	01010413          	addi	s0,sp,16
    80007db4:	00813403          	ld	s0,8(sp)
    80007db8:	00b53423          	sd	a1,8(a0)
    80007dbc:	00052023          	sw	zero,0(a0)
    80007dc0:	00053823          	sd	zero,16(a0)
    80007dc4:	01010113          	addi	sp,sp,16
    80007dc8:	00008067          	ret

0000000080007dcc <acquire>:
    80007dcc:	fe010113          	addi	sp,sp,-32
    80007dd0:	00813823          	sd	s0,16(sp)
    80007dd4:	00913423          	sd	s1,8(sp)
    80007dd8:	00113c23          	sd	ra,24(sp)
    80007ddc:	01213023          	sd	s2,0(sp)
    80007de0:	02010413          	addi	s0,sp,32
    80007de4:	00050493          	mv	s1,a0
    80007de8:	10002973          	csrr	s2,sstatus
    80007dec:	100027f3          	csrr	a5,sstatus
    80007df0:	ffd7f793          	andi	a5,a5,-3
    80007df4:	10079073          	csrw	sstatus,a5
    80007df8:	fffff097          	auipc	ra,0xfffff
    80007dfc:	8e0080e7          	jalr	-1824(ra) # 800066d8 <mycpu>
    80007e00:	07852783          	lw	a5,120(a0)
    80007e04:	06078e63          	beqz	a5,80007e80 <acquire+0xb4>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	8d0080e7          	jalr	-1840(ra) # 800066d8 <mycpu>
    80007e10:	07852783          	lw	a5,120(a0)
    80007e14:	0004a703          	lw	a4,0(s1)
    80007e18:	0017879b          	addiw	a5,a5,1
    80007e1c:	06f52c23          	sw	a5,120(a0)
    80007e20:	04071063          	bnez	a4,80007e60 <acquire+0x94>
    80007e24:	00100713          	li	a4,1
    80007e28:	00070793          	mv	a5,a4
    80007e2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e30:	0007879b          	sext.w	a5,a5
    80007e34:	fe079ae3          	bnez	a5,80007e28 <acquire+0x5c>
    80007e38:	0ff0000f          	fence
    80007e3c:	fffff097          	auipc	ra,0xfffff
    80007e40:	89c080e7          	jalr	-1892(ra) # 800066d8 <mycpu>
    80007e44:	01813083          	ld	ra,24(sp)
    80007e48:	01013403          	ld	s0,16(sp)
    80007e4c:	00a4b823          	sd	a0,16(s1)
    80007e50:	00013903          	ld	s2,0(sp)
    80007e54:	00813483          	ld	s1,8(sp)
    80007e58:	02010113          	addi	sp,sp,32
    80007e5c:	00008067          	ret
    80007e60:	0104b903          	ld	s2,16(s1)
    80007e64:	fffff097          	auipc	ra,0xfffff
    80007e68:	874080e7          	jalr	-1932(ra) # 800066d8 <mycpu>
    80007e6c:	faa91ce3          	bne	s2,a0,80007e24 <acquire+0x58>
    80007e70:	00002517          	auipc	a0,0x2
    80007e74:	8e850513          	addi	a0,a0,-1816 # 80009758 <digits+0x20>
    80007e78:	fffff097          	auipc	ra,0xfffff
    80007e7c:	224080e7          	jalr	548(ra) # 8000709c <panic>
    80007e80:	00195913          	srli	s2,s2,0x1
    80007e84:	fffff097          	auipc	ra,0xfffff
    80007e88:	854080e7          	jalr	-1964(ra) # 800066d8 <mycpu>
    80007e8c:	00197913          	andi	s2,s2,1
    80007e90:	07252e23          	sw	s2,124(a0)
    80007e94:	f75ff06f          	j	80007e08 <acquire+0x3c>

0000000080007e98 <release>:
    80007e98:	fe010113          	addi	sp,sp,-32
    80007e9c:	00813823          	sd	s0,16(sp)
    80007ea0:	00113c23          	sd	ra,24(sp)
    80007ea4:	00913423          	sd	s1,8(sp)
    80007ea8:	01213023          	sd	s2,0(sp)
    80007eac:	02010413          	addi	s0,sp,32
    80007eb0:	00052783          	lw	a5,0(a0)
    80007eb4:	00079a63          	bnez	a5,80007ec8 <release+0x30>
    80007eb8:	00002517          	auipc	a0,0x2
    80007ebc:	8a850513          	addi	a0,a0,-1880 # 80009760 <digits+0x28>
    80007ec0:	fffff097          	auipc	ra,0xfffff
    80007ec4:	1dc080e7          	jalr	476(ra) # 8000709c <panic>
    80007ec8:	01053903          	ld	s2,16(a0)
    80007ecc:	00050493          	mv	s1,a0
    80007ed0:	fffff097          	auipc	ra,0xfffff
    80007ed4:	808080e7          	jalr	-2040(ra) # 800066d8 <mycpu>
    80007ed8:	fea910e3          	bne	s2,a0,80007eb8 <release+0x20>
    80007edc:	0004b823          	sd	zero,16(s1)
    80007ee0:	0ff0000f          	fence
    80007ee4:	0f50000f          	fence	iorw,ow
    80007ee8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007eec:	ffffe097          	auipc	ra,0xffffe
    80007ef0:	7ec080e7          	jalr	2028(ra) # 800066d8 <mycpu>
    80007ef4:	100027f3          	csrr	a5,sstatus
    80007ef8:	0027f793          	andi	a5,a5,2
    80007efc:	04079a63          	bnez	a5,80007f50 <release+0xb8>
    80007f00:	07852783          	lw	a5,120(a0)
    80007f04:	02f05e63          	blez	a5,80007f40 <release+0xa8>
    80007f08:	fff7871b          	addiw	a4,a5,-1
    80007f0c:	06e52c23          	sw	a4,120(a0)
    80007f10:	00071c63          	bnez	a4,80007f28 <release+0x90>
    80007f14:	07c52783          	lw	a5,124(a0)
    80007f18:	00078863          	beqz	a5,80007f28 <release+0x90>
    80007f1c:	100027f3          	csrr	a5,sstatus
    80007f20:	0027e793          	ori	a5,a5,2
    80007f24:	10079073          	csrw	sstatus,a5
    80007f28:	01813083          	ld	ra,24(sp)
    80007f2c:	01013403          	ld	s0,16(sp)
    80007f30:	00813483          	ld	s1,8(sp)
    80007f34:	00013903          	ld	s2,0(sp)
    80007f38:	02010113          	addi	sp,sp,32
    80007f3c:	00008067          	ret
    80007f40:	00002517          	auipc	a0,0x2
    80007f44:	84050513          	addi	a0,a0,-1984 # 80009780 <digits+0x48>
    80007f48:	fffff097          	auipc	ra,0xfffff
    80007f4c:	154080e7          	jalr	340(ra) # 8000709c <panic>
    80007f50:	00002517          	auipc	a0,0x2
    80007f54:	81850513          	addi	a0,a0,-2024 # 80009768 <digits+0x30>
    80007f58:	fffff097          	auipc	ra,0xfffff
    80007f5c:	144080e7          	jalr	324(ra) # 8000709c <panic>

0000000080007f60 <holding>:
    80007f60:	00052783          	lw	a5,0(a0)
    80007f64:	00079663          	bnez	a5,80007f70 <holding+0x10>
    80007f68:	00000513          	li	a0,0
    80007f6c:	00008067          	ret
    80007f70:	fe010113          	addi	sp,sp,-32
    80007f74:	00813823          	sd	s0,16(sp)
    80007f78:	00913423          	sd	s1,8(sp)
    80007f7c:	00113c23          	sd	ra,24(sp)
    80007f80:	02010413          	addi	s0,sp,32
    80007f84:	01053483          	ld	s1,16(a0)
    80007f88:	ffffe097          	auipc	ra,0xffffe
    80007f8c:	750080e7          	jalr	1872(ra) # 800066d8 <mycpu>
    80007f90:	01813083          	ld	ra,24(sp)
    80007f94:	01013403          	ld	s0,16(sp)
    80007f98:	40a48533          	sub	a0,s1,a0
    80007f9c:	00153513          	seqz	a0,a0
    80007fa0:	00813483          	ld	s1,8(sp)
    80007fa4:	02010113          	addi	sp,sp,32
    80007fa8:	00008067          	ret

0000000080007fac <push_off>:
    80007fac:	fe010113          	addi	sp,sp,-32
    80007fb0:	00813823          	sd	s0,16(sp)
    80007fb4:	00113c23          	sd	ra,24(sp)
    80007fb8:	00913423          	sd	s1,8(sp)
    80007fbc:	02010413          	addi	s0,sp,32
    80007fc0:	100024f3          	csrr	s1,sstatus
    80007fc4:	100027f3          	csrr	a5,sstatus
    80007fc8:	ffd7f793          	andi	a5,a5,-3
    80007fcc:	10079073          	csrw	sstatus,a5
    80007fd0:	ffffe097          	auipc	ra,0xffffe
    80007fd4:	708080e7          	jalr	1800(ra) # 800066d8 <mycpu>
    80007fd8:	07852783          	lw	a5,120(a0)
    80007fdc:	02078663          	beqz	a5,80008008 <push_off+0x5c>
    80007fe0:	ffffe097          	auipc	ra,0xffffe
    80007fe4:	6f8080e7          	jalr	1784(ra) # 800066d8 <mycpu>
    80007fe8:	07852783          	lw	a5,120(a0)
    80007fec:	01813083          	ld	ra,24(sp)
    80007ff0:	01013403          	ld	s0,16(sp)
    80007ff4:	0017879b          	addiw	a5,a5,1
    80007ff8:	06f52c23          	sw	a5,120(a0)
    80007ffc:	00813483          	ld	s1,8(sp)
    80008000:	02010113          	addi	sp,sp,32
    80008004:	00008067          	ret
    80008008:	0014d493          	srli	s1,s1,0x1
    8000800c:	ffffe097          	auipc	ra,0xffffe
    80008010:	6cc080e7          	jalr	1740(ra) # 800066d8 <mycpu>
    80008014:	0014f493          	andi	s1,s1,1
    80008018:	06952e23          	sw	s1,124(a0)
    8000801c:	fc5ff06f          	j	80007fe0 <push_off+0x34>

0000000080008020 <pop_off>:
    80008020:	ff010113          	addi	sp,sp,-16
    80008024:	00813023          	sd	s0,0(sp)
    80008028:	00113423          	sd	ra,8(sp)
    8000802c:	01010413          	addi	s0,sp,16
    80008030:	ffffe097          	auipc	ra,0xffffe
    80008034:	6a8080e7          	jalr	1704(ra) # 800066d8 <mycpu>
    80008038:	100027f3          	csrr	a5,sstatus
    8000803c:	0027f793          	andi	a5,a5,2
    80008040:	04079663          	bnez	a5,8000808c <pop_off+0x6c>
    80008044:	07852783          	lw	a5,120(a0)
    80008048:	02f05a63          	blez	a5,8000807c <pop_off+0x5c>
    8000804c:	fff7871b          	addiw	a4,a5,-1
    80008050:	06e52c23          	sw	a4,120(a0)
    80008054:	00071c63          	bnez	a4,8000806c <pop_off+0x4c>
    80008058:	07c52783          	lw	a5,124(a0)
    8000805c:	00078863          	beqz	a5,8000806c <pop_off+0x4c>
    80008060:	100027f3          	csrr	a5,sstatus
    80008064:	0027e793          	ori	a5,a5,2
    80008068:	10079073          	csrw	sstatus,a5
    8000806c:	00813083          	ld	ra,8(sp)
    80008070:	00013403          	ld	s0,0(sp)
    80008074:	01010113          	addi	sp,sp,16
    80008078:	00008067          	ret
    8000807c:	00001517          	auipc	a0,0x1
    80008080:	70450513          	addi	a0,a0,1796 # 80009780 <digits+0x48>
    80008084:	fffff097          	auipc	ra,0xfffff
    80008088:	018080e7          	jalr	24(ra) # 8000709c <panic>
    8000808c:	00001517          	auipc	a0,0x1
    80008090:	6dc50513          	addi	a0,a0,1756 # 80009768 <digits+0x30>
    80008094:	fffff097          	auipc	ra,0xfffff
    80008098:	008080e7          	jalr	8(ra) # 8000709c <panic>

000000008000809c <push_on>:
    8000809c:	fe010113          	addi	sp,sp,-32
    800080a0:	00813823          	sd	s0,16(sp)
    800080a4:	00113c23          	sd	ra,24(sp)
    800080a8:	00913423          	sd	s1,8(sp)
    800080ac:	02010413          	addi	s0,sp,32
    800080b0:	100024f3          	csrr	s1,sstatus
    800080b4:	100027f3          	csrr	a5,sstatus
    800080b8:	0027e793          	ori	a5,a5,2
    800080bc:	10079073          	csrw	sstatus,a5
    800080c0:	ffffe097          	auipc	ra,0xffffe
    800080c4:	618080e7          	jalr	1560(ra) # 800066d8 <mycpu>
    800080c8:	07852783          	lw	a5,120(a0)
    800080cc:	02078663          	beqz	a5,800080f8 <push_on+0x5c>
    800080d0:	ffffe097          	auipc	ra,0xffffe
    800080d4:	608080e7          	jalr	1544(ra) # 800066d8 <mycpu>
    800080d8:	07852783          	lw	a5,120(a0)
    800080dc:	01813083          	ld	ra,24(sp)
    800080e0:	01013403          	ld	s0,16(sp)
    800080e4:	0017879b          	addiw	a5,a5,1
    800080e8:	06f52c23          	sw	a5,120(a0)
    800080ec:	00813483          	ld	s1,8(sp)
    800080f0:	02010113          	addi	sp,sp,32
    800080f4:	00008067          	ret
    800080f8:	0014d493          	srli	s1,s1,0x1
    800080fc:	ffffe097          	auipc	ra,0xffffe
    80008100:	5dc080e7          	jalr	1500(ra) # 800066d8 <mycpu>
    80008104:	0014f493          	andi	s1,s1,1
    80008108:	06952e23          	sw	s1,124(a0)
    8000810c:	fc5ff06f          	j	800080d0 <push_on+0x34>

0000000080008110 <pop_on>:
    80008110:	ff010113          	addi	sp,sp,-16
    80008114:	00813023          	sd	s0,0(sp)
    80008118:	00113423          	sd	ra,8(sp)
    8000811c:	01010413          	addi	s0,sp,16
    80008120:	ffffe097          	auipc	ra,0xffffe
    80008124:	5b8080e7          	jalr	1464(ra) # 800066d8 <mycpu>
    80008128:	100027f3          	csrr	a5,sstatus
    8000812c:	0027f793          	andi	a5,a5,2
    80008130:	04078463          	beqz	a5,80008178 <pop_on+0x68>
    80008134:	07852783          	lw	a5,120(a0)
    80008138:	02f05863          	blez	a5,80008168 <pop_on+0x58>
    8000813c:	fff7879b          	addiw	a5,a5,-1
    80008140:	06f52c23          	sw	a5,120(a0)
    80008144:	07853783          	ld	a5,120(a0)
    80008148:	00079863          	bnez	a5,80008158 <pop_on+0x48>
    8000814c:	100027f3          	csrr	a5,sstatus
    80008150:	ffd7f793          	andi	a5,a5,-3
    80008154:	10079073          	csrw	sstatus,a5
    80008158:	00813083          	ld	ra,8(sp)
    8000815c:	00013403          	ld	s0,0(sp)
    80008160:	01010113          	addi	sp,sp,16
    80008164:	00008067          	ret
    80008168:	00001517          	auipc	a0,0x1
    8000816c:	64050513          	addi	a0,a0,1600 # 800097a8 <digits+0x70>
    80008170:	fffff097          	auipc	ra,0xfffff
    80008174:	f2c080e7          	jalr	-212(ra) # 8000709c <panic>
    80008178:	00001517          	auipc	a0,0x1
    8000817c:	61050513          	addi	a0,a0,1552 # 80009788 <digits+0x50>
    80008180:	fffff097          	auipc	ra,0xfffff
    80008184:	f1c080e7          	jalr	-228(ra) # 8000709c <panic>

0000000080008188 <__memset>:
    80008188:	ff010113          	addi	sp,sp,-16
    8000818c:	00813423          	sd	s0,8(sp)
    80008190:	01010413          	addi	s0,sp,16
    80008194:	1a060e63          	beqz	a2,80008350 <__memset+0x1c8>
    80008198:	40a007b3          	neg	a5,a0
    8000819c:	0077f793          	andi	a5,a5,7
    800081a0:	00778693          	addi	a3,a5,7
    800081a4:	00b00813          	li	a6,11
    800081a8:	0ff5f593          	andi	a1,a1,255
    800081ac:	fff6071b          	addiw	a4,a2,-1
    800081b0:	1b06e663          	bltu	a3,a6,8000835c <__memset+0x1d4>
    800081b4:	1cd76463          	bltu	a4,a3,8000837c <__memset+0x1f4>
    800081b8:	1a078e63          	beqz	a5,80008374 <__memset+0x1ec>
    800081bc:	00b50023          	sb	a1,0(a0)
    800081c0:	00100713          	li	a4,1
    800081c4:	1ae78463          	beq	a5,a4,8000836c <__memset+0x1e4>
    800081c8:	00b500a3          	sb	a1,1(a0)
    800081cc:	00200713          	li	a4,2
    800081d0:	1ae78a63          	beq	a5,a4,80008384 <__memset+0x1fc>
    800081d4:	00b50123          	sb	a1,2(a0)
    800081d8:	00300713          	li	a4,3
    800081dc:	18e78463          	beq	a5,a4,80008364 <__memset+0x1dc>
    800081e0:	00b501a3          	sb	a1,3(a0)
    800081e4:	00400713          	li	a4,4
    800081e8:	1ae78263          	beq	a5,a4,8000838c <__memset+0x204>
    800081ec:	00b50223          	sb	a1,4(a0)
    800081f0:	00500713          	li	a4,5
    800081f4:	1ae78063          	beq	a5,a4,80008394 <__memset+0x20c>
    800081f8:	00b502a3          	sb	a1,5(a0)
    800081fc:	00700713          	li	a4,7
    80008200:	18e79e63          	bne	a5,a4,8000839c <__memset+0x214>
    80008204:	00b50323          	sb	a1,6(a0)
    80008208:	00700e93          	li	t4,7
    8000820c:	00859713          	slli	a4,a1,0x8
    80008210:	00e5e733          	or	a4,a1,a4
    80008214:	01059e13          	slli	t3,a1,0x10
    80008218:	01c76e33          	or	t3,a4,t3
    8000821c:	01859313          	slli	t1,a1,0x18
    80008220:	006e6333          	or	t1,t3,t1
    80008224:	02059893          	slli	a7,a1,0x20
    80008228:	40f60e3b          	subw	t3,a2,a5
    8000822c:	011368b3          	or	a7,t1,a7
    80008230:	02859813          	slli	a6,a1,0x28
    80008234:	0108e833          	or	a6,a7,a6
    80008238:	03059693          	slli	a3,a1,0x30
    8000823c:	003e589b          	srliw	a7,t3,0x3
    80008240:	00d866b3          	or	a3,a6,a3
    80008244:	03859713          	slli	a4,a1,0x38
    80008248:	00389813          	slli	a6,a7,0x3
    8000824c:	00f507b3          	add	a5,a0,a5
    80008250:	00e6e733          	or	a4,a3,a4
    80008254:	000e089b          	sext.w	a7,t3
    80008258:	00f806b3          	add	a3,a6,a5
    8000825c:	00e7b023          	sd	a4,0(a5)
    80008260:	00878793          	addi	a5,a5,8
    80008264:	fed79ce3          	bne	a5,a3,8000825c <__memset+0xd4>
    80008268:	ff8e7793          	andi	a5,t3,-8
    8000826c:	0007871b          	sext.w	a4,a5
    80008270:	01d787bb          	addw	a5,a5,t4
    80008274:	0ce88e63          	beq	a7,a4,80008350 <__memset+0x1c8>
    80008278:	00f50733          	add	a4,a0,a5
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0017871b          	addiw	a4,a5,1
    80008284:	0cc77663          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0027871b          	addiw	a4,a5,2
    80008294:	0ac77e63          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0037871b          	addiw	a4,a5,3
    800082a4:	0ac77663          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0047871b          	addiw	a4,a5,4
    800082b4:	08c77e63          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0057871b          	addiw	a4,a5,5
    800082c4:	08c77663          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0067871b          	addiw	a4,a5,6
    800082d4:	06c77e63          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0077871b          	addiw	a4,a5,7
    800082e4:	06c77663          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0087871b          	addiw	a4,a5,8
    800082f4:	04c77e63          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0097871b          	addiw	a4,a5,9
    80008304:	04c77663          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	00a7871b          	addiw	a4,a5,10
    80008314:	02c77e63          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00b7871b          	addiw	a4,a5,11
    80008324:	02c77663          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	00c7871b          	addiw	a4,a5,12
    80008334:	00c77e63          	bgeu	a4,a2,80008350 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	00d7879b          	addiw	a5,a5,13
    80008344:	00c7f663          	bgeu	a5,a2,80008350 <__memset+0x1c8>
    80008348:	00f507b3          	add	a5,a0,a5
    8000834c:	00b78023          	sb	a1,0(a5)
    80008350:	00813403          	ld	s0,8(sp)
    80008354:	01010113          	addi	sp,sp,16
    80008358:	00008067          	ret
    8000835c:	00b00693          	li	a3,11
    80008360:	e55ff06f          	j	800081b4 <__memset+0x2c>
    80008364:	00300e93          	li	t4,3
    80008368:	ea5ff06f          	j	8000820c <__memset+0x84>
    8000836c:	00100e93          	li	t4,1
    80008370:	e9dff06f          	j	8000820c <__memset+0x84>
    80008374:	00000e93          	li	t4,0
    80008378:	e95ff06f          	j	8000820c <__memset+0x84>
    8000837c:	00000793          	li	a5,0
    80008380:	ef9ff06f          	j	80008278 <__memset+0xf0>
    80008384:	00200e93          	li	t4,2
    80008388:	e85ff06f          	j	8000820c <__memset+0x84>
    8000838c:	00400e93          	li	t4,4
    80008390:	e7dff06f          	j	8000820c <__memset+0x84>
    80008394:	00500e93          	li	t4,5
    80008398:	e75ff06f          	j	8000820c <__memset+0x84>
    8000839c:	00600e93          	li	t4,6
    800083a0:	e6dff06f          	j	8000820c <__memset+0x84>

00000000800083a4 <__memmove>:
    800083a4:	ff010113          	addi	sp,sp,-16
    800083a8:	00813423          	sd	s0,8(sp)
    800083ac:	01010413          	addi	s0,sp,16
    800083b0:	0e060863          	beqz	a2,800084a0 <__memmove+0xfc>
    800083b4:	fff6069b          	addiw	a3,a2,-1
    800083b8:	0006881b          	sext.w	a6,a3
    800083bc:	0ea5e863          	bltu	a1,a0,800084ac <__memmove+0x108>
    800083c0:	00758713          	addi	a4,a1,7
    800083c4:	00a5e7b3          	or	a5,a1,a0
    800083c8:	40a70733          	sub	a4,a4,a0
    800083cc:	0077f793          	andi	a5,a5,7
    800083d0:	00f73713          	sltiu	a4,a4,15
    800083d4:	00174713          	xori	a4,a4,1
    800083d8:	0017b793          	seqz	a5,a5
    800083dc:	00e7f7b3          	and	a5,a5,a4
    800083e0:	10078863          	beqz	a5,800084f0 <__memmove+0x14c>
    800083e4:	00900793          	li	a5,9
    800083e8:	1107f463          	bgeu	a5,a6,800084f0 <__memmove+0x14c>
    800083ec:	0036581b          	srliw	a6,a2,0x3
    800083f0:	fff8081b          	addiw	a6,a6,-1
    800083f4:	02081813          	slli	a6,a6,0x20
    800083f8:	01d85893          	srli	a7,a6,0x1d
    800083fc:	00858813          	addi	a6,a1,8
    80008400:	00058793          	mv	a5,a1
    80008404:	00050713          	mv	a4,a0
    80008408:	01088833          	add	a6,a7,a6
    8000840c:	0007b883          	ld	a7,0(a5)
    80008410:	00878793          	addi	a5,a5,8
    80008414:	00870713          	addi	a4,a4,8
    80008418:	ff173c23          	sd	a7,-8(a4)
    8000841c:	ff0798e3          	bne	a5,a6,8000840c <__memmove+0x68>
    80008420:	ff867713          	andi	a4,a2,-8
    80008424:	02071793          	slli	a5,a4,0x20
    80008428:	0207d793          	srli	a5,a5,0x20
    8000842c:	00f585b3          	add	a1,a1,a5
    80008430:	40e686bb          	subw	a3,a3,a4
    80008434:	00f507b3          	add	a5,a0,a5
    80008438:	06e60463          	beq	a2,a4,800084a0 <__memmove+0xfc>
    8000843c:	0005c703          	lbu	a4,0(a1)
    80008440:	00e78023          	sb	a4,0(a5)
    80008444:	04068e63          	beqz	a3,800084a0 <__memmove+0xfc>
    80008448:	0015c603          	lbu	a2,1(a1)
    8000844c:	00100713          	li	a4,1
    80008450:	00c780a3          	sb	a2,1(a5)
    80008454:	04e68663          	beq	a3,a4,800084a0 <__memmove+0xfc>
    80008458:	0025c603          	lbu	a2,2(a1)
    8000845c:	00200713          	li	a4,2
    80008460:	00c78123          	sb	a2,2(a5)
    80008464:	02e68e63          	beq	a3,a4,800084a0 <__memmove+0xfc>
    80008468:	0035c603          	lbu	a2,3(a1)
    8000846c:	00300713          	li	a4,3
    80008470:	00c781a3          	sb	a2,3(a5)
    80008474:	02e68663          	beq	a3,a4,800084a0 <__memmove+0xfc>
    80008478:	0045c603          	lbu	a2,4(a1)
    8000847c:	00400713          	li	a4,4
    80008480:	00c78223          	sb	a2,4(a5)
    80008484:	00e68e63          	beq	a3,a4,800084a0 <__memmove+0xfc>
    80008488:	0055c603          	lbu	a2,5(a1)
    8000848c:	00500713          	li	a4,5
    80008490:	00c782a3          	sb	a2,5(a5)
    80008494:	00e68663          	beq	a3,a4,800084a0 <__memmove+0xfc>
    80008498:	0065c703          	lbu	a4,6(a1)
    8000849c:	00e78323          	sb	a4,6(a5)
    800084a0:	00813403          	ld	s0,8(sp)
    800084a4:	01010113          	addi	sp,sp,16
    800084a8:	00008067          	ret
    800084ac:	02061713          	slli	a4,a2,0x20
    800084b0:	02075713          	srli	a4,a4,0x20
    800084b4:	00e587b3          	add	a5,a1,a4
    800084b8:	f0f574e3          	bgeu	a0,a5,800083c0 <__memmove+0x1c>
    800084bc:	02069613          	slli	a2,a3,0x20
    800084c0:	02065613          	srli	a2,a2,0x20
    800084c4:	fff64613          	not	a2,a2
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00c78633          	add	a2,a5,a2
    800084d0:	fff7c683          	lbu	a3,-1(a5)
    800084d4:	fff78793          	addi	a5,a5,-1
    800084d8:	fff70713          	addi	a4,a4,-1
    800084dc:	00d70023          	sb	a3,0(a4)
    800084e0:	fec798e3          	bne	a5,a2,800084d0 <__memmove+0x12c>
    800084e4:	00813403          	ld	s0,8(sp)
    800084e8:	01010113          	addi	sp,sp,16
    800084ec:	00008067          	ret
    800084f0:	02069713          	slli	a4,a3,0x20
    800084f4:	02075713          	srli	a4,a4,0x20
    800084f8:	00170713          	addi	a4,a4,1
    800084fc:	00e50733          	add	a4,a0,a4
    80008500:	00050793          	mv	a5,a0
    80008504:	0005c683          	lbu	a3,0(a1)
    80008508:	00178793          	addi	a5,a5,1
    8000850c:	00158593          	addi	a1,a1,1
    80008510:	fed78fa3          	sb	a3,-1(a5)
    80008514:	fee798e3          	bne	a5,a4,80008504 <__memmove+0x160>
    80008518:	f89ff06f          	j	800084a0 <__memmove+0xfc>

000000008000851c <__putc>:
    8000851c:	fe010113          	addi	sp,sp,-32
    80008520:	00813823          	sd	s0,16(sp)
    80008524:	00113c23          	sd	ra,24(sp)
    80008528:	02010413          	addi	s0,sp,32
    8000852c:	00050793          	mv	a5,a0
    80008530:	fef40593          	addi	a1,s0,-17
    80008534:	00100613          	li	a2,1
    80008538:	00000513          	li	a0,0
    8000853c:	fef407a3          	sb	a5,-17(s0)
    80008540:	fffff097          	auipc	ra,0xfffff
    80008544:	b3c080e7          	jalr	-1220(ra) # 8000707c <console_write>
    80008548:	01813083          	ld	ra,24(sp)
    8000854c:	01013403          	ld	s0,16(sp)
    80008550:	02010113          	addi	sp,sp,32
    80008554:	00008067          	ret

0000000080008558 <__getc>:
    80008558:	fe010113          	addi	sp,sp,-32
    8000855c:	00813823          	sd	s0,16(sp)
    80008560:	00113c23          	sd	ra,24(sp)
    80008564:	02010413          	addi	s0,sp,32
    80008568:	fe840593          	addi	a1,s0,-24
    8000856c:	00100613          	li	a2,1
    80008570:	00000513          	li	a0,0
    80008574:	fffff097          	auipc	ra,0xfffff
    80008578:	ae8080e7          	jalr	-1304(ra) # 8000705c <console_read>
    8000857c:	fe844503          	lbu	a0,-24(s0)
    80008580:	01813083          	ld	ra,24(sp)
    80008584:	01013403          	ld	s0,16(sp)
    80008588:	02010113          	addi	sp,sp,32
    8000858c:	00008067          	ret

0000000080008590 <console_handler>:
    80008590:	fe010113          	addi	sp,sp,-32
    80008594:	00813823          	sd	s0,16(sp)
    80008598:	00113c23          	sd	ra,24(sp)
    8000859c:	00913423          	sd	s1,8(sp)
    800085a0:	02010413          	addi	s0,sp,32
    800085a4:	14202773          	csrr	a4,scause
    800085a8:	100027f3          	csrr	a5,sstatus
    800085ac:	0027f793          	andi	a5,a5,2
    800085b0:	06079e63          	bnez	a5,8000862c <console_handler+0x9c>
    800085b4:	00074c63          	bltz	a4,800085cc <console_handler+0x3c>
    800085b8:	01813083          	ld	ra,24(sp)
    800085bc:	01013403          	ld	s0,16(sp)
    800085c0:	00813483          	ld	s1,8(sp)
    800085c4:	02010113          	addi	sp,sp,32
    800085c8:	00008067          	ret
    800085cc:	0ff77713          	andi	a4,a4,255
    800085d0:	00900793          	li	a5,9
    800085d4:	fef712e3          	bne	a4,a5,800085b8 <console_handler+0x28>
    800085d8:	ffffe097          	auipc	ra,0xffffe
    800085dc:	6dc080e7          	jalr	1756(ra) # 80006cb4 <plic_claim>
    800085e0:	00a00793          	li	a5,10
    800085e4:	00050493          	mv	s1,a0
    800085e8:	02f50c63          	beq	a0,a5,80008620 <console_handler+0x90>
    800085ec:	fc0506e3          	beqz	a0,800085b8 <console_handler+0x28>
    800085f0:	00050593          	mv	a1,a0
    800085f4:	00001517          	auipc	a0,0x1
    800085f8:	0bc50513          	addi	a0,a0,188 # 800096b0 <CONSOLE_STATUS+0x6a0>
    800085fc:	fffff097          	auipc	ra,0xfffff
    80008600:	afc080e7          	jalr	-1284(ra) # 800070f8 <__printf>
    80008604:	01013403          	ld	s0,16(sp)
    80008608:	01813083          	ld	ra,24(sp)
    8000860c:	00048513          	mv	a0,s1
    80008610:	00813483          	ld	s1,8(sp)
    80008614:	02010113          	addi	sp,sp,32
    80008618:	ffffe317          	auipc	t1,0xffffe
    8000861c:	6d430067          	jr	1748(t1) # 80006cec <plic_complete>
    80008620:	fffff097          	auipc	ra,0xfffff
    80008624:	3e0080e7          	jalr	992(ra) # 80007a00 <uartintr>
    80008628:	fddff06f          	j	80008604 <console_handler+0x74>
    8000862c:	00001517          	auipc	a0,0x1
    80008630:	18450513          	addi	a0,a0,388 # 800097b0 <digits+0x78>
    80008634:	fffff097          	auipc	ra,0xfffff
    80008638:	a68080e7          	jalr	-1432(ra) # 8000709c <panic>
	...
