
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	4f813103          	ld	sp,1272(sp) # 8000b4f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2f8060ef          	jal	ra,80006314 <start>

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
    80001084:	3d4010ef          	jal	ra,80002458 <_ZN5Riscv14handleSyscallsEv>

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

    __asm__ volatile("li a0, 0x01");
    80001260:	00100513          	li	a0,1
    __asm__ volatile("mv a1, %0" : : "r" (paddedSize));
    80001264:	00050593          	mv	a1,a0
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
    __asm__ volatile("li a0, 0x02");
    80001288:	00200513          	li	a0,2
    __asm__ volatile("mv a1, %0" : : "r" (p));
    8000128c:	00050593          	mv	a1,a0
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
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00813423          	sd	s0,8(sp)
    800012f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x11");
    800012fc:	01100513          	li	a0,17
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001300:	00050593          	mv	a1,a0
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001304:	00058613          	mv	a2,a1
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    80001308:	00060693          	mv	a3,a2
    __asm__ volatile("ecall");
    8000130c:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001310:	00050513          	mv	a0,a0
    return result;
}
    80001314:	0005051b          	sext.w	a0,a0
    80001318:	00813403          	ld	s0,8(sp)
    8000131c:	01010113          	addi	sp,sp,16
    80001320:	00008067          	ret

0000000080001324 <_Z12thread_startPP3CCB>:

int thread_start(thread_t* handle) {
    if (!handle) return -1;
    80001324:	02050a63          	beqz	a0,80001358 <_Z12thread_startPP3CCB+0x34>
int thread_start(thread_t* handle) {
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00113423          	sd	ra,8(sp)
    80001330:	00813023          	sd	s0,0(sp)
    80001334:	01010413          	addi	s0,sp,16
    static void yield();

    static CCB *running;

    static void startThread(CCB* tcbToStart) {
        Scheduler::put(tcbToStart);
    80001338:	00053503          	ld	a0,0(a0)
    8000133c:	00001097          	auipc	ra,0x1
    80001340:	58c080e7          	jalr	1420(ra) # 800028c8 <_ZN9Scheduler3putEP3CCB>
    CCB::startThread(*handle);
    return 0;
    80001344:	00000513          	li	a0,0
}
    80001348:	00813083          	ld	ra,8(sp)
    8000134c:	00013403          	ld	s0,0(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret
    if (!handle) return -1;
    80001358:	fff00513          	li	a0,-1
}
    8000135c:	00008067          	ret

0000000080001360 <_Z11thread_exitv>:

int thread_exit() {
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00813423          	sd	s0,8(sp)
    80001368:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000136c:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    80001370:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001374:	00050513          	mv	a0,a0
    return result;
}
    80001378:	0005051b          	sext.w	a0,a0
    8000137c:	00813403          	ld	s0,8(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00813423          	sd	s0,8(sp)
    80001390:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001394:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80001398:	00000073          	ecall
}
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z8sem_openPPN3ABI9SemaphoreEj>:

int sem_open(sem_t* handle, unsigned init) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x21");
    800013b4:	02100513          	li	a0,33
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800013b8:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    800013bc:	00058613          	mv	a2,a1
    __asm__ volatile ("ecall");
    800013c0:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800013c4:	00050513          	mv	a0,a0
    return result;
}
    800013c8:	0005051b          	sext.w	a0,a0
    800013cc:	00813403          	ld	s0,8(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_Z9sem_closePN3ABI9SemaphoreE>:

int sem_close(sem_t handle) {
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x22");
    800013e4:	02200513          	li	a0,34
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800013e8:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    800013ec:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800013f0:	00050513          	mv	a0,a0
    return result;
}
    800013f4:	0005051b          	sext.w	a0,a0
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_Z8sem_waitPN3ABI9SemaphoreE>:

int sem_wait(sem_t id) {
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x23");
    80001410:	02300513          	li	a0,35
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001414:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    80001418:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000141c:	00050513          	mv	a0,a0
    return result;
}
    80001420:	0005051b          	sext.w	a0,a0
    80001424:	00813403          	ld	s0,8(sp)
    80001428:	01010113          	addi	sp,sp,16
    8000142c:	00008067          	ret

0000000080001430 <_Z10sem_signalPN3ABI9SemaphoreE>:

int sem_signal(sem_t id) {
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x24");
    8000143c:	02400513          	li	a0,36
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001440:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    80001444:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001448:	00050513          	mv	a0,a0
    return result;
}
    8000144c:	0005051b          	sext.w	a0,a0
    80001450:	00813403          	ld	s0,8(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <_Z10time_sleepm>:

int time_sleep(time_t time) {
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00813423          	sd	s0,8(sp)
    80001464:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x31");
    80001468:	03100513          	li	a0,49
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    8000146c:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    80001470:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001474:	00050513          	mv	a0,a0
    return result;
}
    80001478:	0005051b          	sext.w	a0,a0
    8000147c:	00813403          	ld	s0,8(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z4getcv>:

char getc() {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00813423          	sd	s0,8(sp)
    80001490:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001494:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    80001498:	00000073          	ecall

    char result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000149c:	00050513          	mv	a0,a0
    return result;
}
    800014a0:	0ff57513          	andi	a0,a0,255
    800014a4:	00813403          	ld	s0,8(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_Z4putcc>:

void putc(char c) {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00813423          	sd	s0,8(sp)
    800014b8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    800014bc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800014c0:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    800014c4:	00000073          	ecall
    800014c8:	00813403          	ld	s0,8(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_ZL9fibonaccim>:
#include "../h/ccb.hpp"
#include "../h/Semaphore.hpp"
#include "../test/printing.hpp"

static uint64 fibonacci(uint64 n)
{
    800014d4:	fe010113          	addi	sp,sp,-32
    800014d8:	00113c23          	sd	ra,24(sp)
    800014dc:	00813823          	sd	s0,16(sp)
    800014e0:	00913423          	sd	s1,8(sp)
    800014e4:	01213023          	sd	s2,0(sp)
    800014e8:	02010413          	addi	s0,sp,32
    800014ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800014f0:	00100793          	li	a5,1
    800014f4:	02a7f663          	bgeu	a5,a0,80001520 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) CCB::yield();
    800014f8:	00357793          	andi	a5,a0,3
    800014fc:	02078e63          	beqz	a5,80001538 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001500:	fff48513          	addi	a0,s1,-1
    80001504:	00000097          	auipc	ra,0x0
    80001508:	fd0080e7          	jalr	-48(ra) # 800014d4 <_ZL9fibonaccim>
    8000150c:	00050913          	mv	s2,a0
    80001510:	ffe48513          	addi	a0,s1,-2
    80001514:	00000097          	auipc	ra,0x0
    80001518:	fc0080e7          	jalr	-64(ra) # 800014d4 <_ZL9fibonaccim>
    8000151c:	00a90533          	add	a0,s2,a0
}
    80001520:	01813083          	ld	ra,24(sp)
    80001524:	01013403          	ld	s0,16(sp)
    80001528:	00813483          	ld	s1,8(sp)
    8000152c:	00013903          	ld	s2,0(sp)
    80001530:	02010113          	addi	sp,sp,32
    80001534:	00008067          	ret
    if (n % 4 == 0) CCB::yield();
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	b40080e7          	jalr	-1216(ra) # 80002078 <_ZN3CCB5yieldEv>
    80001540:	fc1ff06f          	j	80001500 <_ZL9fibonaccim+0x2c>

0000000080001544 <_Z11workerBodyAPv>:

void workerBodyA(void*)
{
    80001544:	fe010113          	addi	sp,sp,-32
    80001548:	00113c23          	sd	ra,24(sp)
    8000154c:	00813823          	sd	s0,16(sp)
    80001550:	00913423          	sd	s1,8(sp)
    80001554:	01213023          	sd	s2,0(sp)
    80001558:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000155c:	00000493          	li	s1,0
    80001560:	0400006f          	j	800015a0 <_Z11workerBodyAPv+0x5c>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001564:	00008517          	auipc	a0,0x8
    80001568:	abc50513          	addi	a0,a0,-1348 # 80009020 <CONSOLE_STATUS+0x10>
    8000156c:	00004097          	auipc	ra,0x4
    80001570:	b64080e7          	jalr	-1180(ra) # 800050d0 <_Z11printStringPKc>
        printInt(i);
    80001574:	00000613          	li	a2,0
    80001578:	00a00593          	li	a1,10
    8000157c:	00048513          	mv	a0,s1
    80001580:	00004097          	auipc	ra,0x4
    80001584:	d00080e7          	jalr	-768(ra) # 80005280 <_Z8printIntiii>
        printString("\n");
    80001588:	00008517          	auipc	a0,0x8
    8000158c:	f5850513          	addi	a0,a0,-168 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80001590:	00004097          	auipc	ra,0x4
    80001594:	b40080e7          	jalr	-1216(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001598:	0014849b          	addiw	s1,s1,1
    8000159c:	0ff4f493          	andi	s1,s1,255
    800015a0:	00200793          	li	a5,2
    800015a4:	fc97f0e3          	bgeu	a5,s1,80001564 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800015a8:	00008517          	auipc	a0,0x8
    800015ac:	a8050513          	addi	a0,a0,-1408 # 80009028 <CONSOLE_STATUS+0x18>
    800015b0:	00004097          	auipc	ra,0x4
    800015b4:	b20080e7          	jalr	-1248(ra) # 800050d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800015b8:	00700313          	li	t1,7
    CCB::yield();
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	abc080e7          	jalr	-1348(ra) # 80002078 <_ZN3CCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800015c4:	00030913          	mv	s2,t1

    printString("A: t1=");
    800015c8:	00008517          	auipc	a0,0x8
    800015cc:	a7050513          	addi	a0,a0,-1424 # 80009038 <CONSOLE_STATUS+0x28>
    800015d0:	00004097          	auipc	ra,0x4
    800015d4:	b00080e7          	jalr	-1280(ra) # 800050d0 <_Z11printStringPKc>
    printInt(t1);
    800015d8:	00000613          	li	a2,0
    800015dc:	00a00593          	li	a1,10
    800015e0:	0009051b          	sext.w	a0,s2
    800015e4:	00004097          	auipc	ra,0x4
    800015e8:	c9c080e7          	jalr	-868(ra) # 80005280 <_Z8printIntiii>
    printString("\n");
    800015ec:	00008517          	auipc	a0,0x8
    800015f0:	ef450513          	addi	a0,a0,-268 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800015f4:	00004097          	auipc	ra,0x4
    800015f8:	adc080e7          	jalr	-1316(ra) # 800050d0 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800015fc:	01400513          	li	a0,20
    80001600:	00000097          	auipc	ra,0x0
    80001604:	ed4080e7          	jalr	-300(ra) # 800014d4 <_ZL9fibonaccim>
    80001608:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    8000160c:	00008517          	auipc	a0,0x8
    80001610:	a3450513          	addi	a0,a0,-1484 # 80009040 <CONSOLE_STATUS+0x30>
    80001614:	00004097          	auipc	ra,0x4
    80001618:	abc080e7          	jalr	-1348(ra) # 800050d0 <_Z11printStringPKc>
    printInt(result);
    8000161c:	00000613          	li	a2,0
    80001620:	00a00593          	li	a1,10
    80001624:	0009051b          	sext.w	a0,s2
    80001628:	00004097          	auipc	ra,0x4
    8000162c:	c58080e7          	jalr	-936(ra) # 80005280 <_Z8printIntiii>
    printString("\n");
    80001630:	00008517          	auipc	a0,0x8
    80001634:	eb050513          	addi	a0,a0,-336 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80001638:	00004097          	auipc	ra,0x4
    8000163c:	a98080e7          	jalr	-1384(ra) # 800050d0 <_Z11printStringPKc>
    80001640:	0400006f          	j	80001680 <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001644:	00008517          	auipc	a0,0x8
    80001648:	9dc50513          	addi	a0,a0,-1572 # 80009020 <CONSOLE_STATUS+0x10>
    8000164c:	00004097          	auipc	ra,0x4
    80001650:	a84080e7          	jalr	-1404(ra) # 800050d0 <_Z11printStringPKc>
        printInt(i);
    80001654:	00000613          	li	a2,0
    80001658:	00a00593          	li	a1,10
    8000165c:	00048513          	mv	a0,s1
    80001660:	00004097          	auipc	ra,0x4
    80001664:	c20080e7          	jalr	-992(ra) # 80005280 <_Z8printIntiii>
        printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	e7850513          	addi	a0,a0,-392 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80001670:	00004097          	auipc	ra,0x4
    80001674:	a60080e7          	jalr	-1440(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001678:	0014849b          	addiw	s1,s1,1
    8000167c:	0ff4f493          	andi	s1,s1,255
    80001680:	00500793          	li	a5,5
    80001684:	fc97f0e3          	bgeu	a5,s1,80001644 <_Z11workerBodyAPv+0x100>
    }

    CCB::running->setFinished(true);
    80001688:	0000a797          	auipc	a5,0xa
    8000168c:	e787b783          	ld	a5,-392(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001690:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001694:	00100713          	li	a4,1
    80001698:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    8000169c:	00001097          	auipc	ra,0x1
    800016a0:	9dc080e7          	jalr	-1572(ra) # 80002078 <_ZN3CCB5yieldEv>
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	00013903          	ld	s2,0(sp)
    800016b4:	02010113          	addi	sp,sp,32
    800016b8:	00008067          	ret

00000000800016bc <_Z11workerBodyBPv>:

void workerBodyB(void*)
{
    800016bc:	fe010113          	addi	sp,sp,-32
    800016c0:	00113c23          	sd	ra,24(sp)
    800016c4:	00813823          	sd	s0,16(sp)
    800016c8:	00913423          	sd	s1,8(sp)
    800016cc:	01213023          	sd	s2,0(sp)
    800016d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800016d4:	00a00493          	li	s1,10
    800016d8:	0400006f          	j	80001718 <_Z11workerBodyBPv+0x5c>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800016dc:	00008517          	auipc	a0,0x8
    800016e0:	97450513          	addi	a0,a0,-1676 # 80009050 <CONSOLE_STATUS+0x40>
    800016e4:	00004097          	auipc	ra,0x4
    800016e8:	9ec080e7          	jalr	-1556(ra) # 800050d0 <_Z11printStringPKc>
        printInt(i);
    800016ec:	00000613          	li	a2,0
    800016f0:	00a00593          	li	a1,10
    800016f4:	00048513          	mv	a0,s1
    800016f8:	00004097          	auipc	ra,0x4
    800016fc:	b88080e7          	jalr	-1144(ra) # 80005280 <_Z8printIntiii>
        printString("\n");
    80001700:	00008517          	auipc	a0,0x8
    80001704:	de050513          	addi	a0,a0,-544 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80001708:	00004097          	auipc	ra,0x4
    8000170c:	9c8080e7          	jalr	-1592(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001710:	0014849b          	addiw	s1,s1,1
    80001714:	0ff4f493          	andi	s1,s1,255
    80001718:	00c00793          	li	a5,12
    8000171c:	fc97f0e3          	bgeu	a5,s1,800016dc <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001720:	00008517          	auipc	a0,0x8
    80001724:	93850513          	addi	a0,a0,-1736 # 80009058 <CONSOLE_STATUS+0x48>
    80001728:	00004097          	auipc	ra,0x4
    8000172c:	9a8080e7          	jalr	-1624(ra) # 800050d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001730:	00500313          	li	t1,5
    CCB::yield();
    80001734:	00001097          	auipc	ra,0x1
    80001738:	944080e7          	jalr	-1724(ra) # 80002078 <_ZN3CCB5yieldEv>

    uint64 result = fibonacci(23);
    8000173c:	01700513          	li	a0,23
    80001740:	00000097          	auipc	ra,0x0
    80001744:	d94080e7          	jalr	-620(ra) # 800014d4 <_ZL9fibonaccim>
    80001748:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    8000174c:	00008517          	auipc	a0,0x8
    80001750:	8f450513          	addi	a0,a0,-1804 # 80009040 <CONSOLE_STATUS+0x30>
    80001754:	00004097          	auipc	ra,0x4
    80001758:	97c080e7          	jalr	-1668(ra) # 800050d0 <_Z11printStringPKc>
    printInt(result);
    8000175c:	00000613          	li	a2,0
    80001760:	00a00593          	li	a1,10
    80001764:	0009051b          	sext.w	a0,s2
    80001768:	00004097          	auipc	ra,0x4
    8000176c:	b18080e7          	jalr	-1256(ra) # 80005280 <_Z8printIntiii>
    printString("\n");
    80001770:	00008517          	auipc	a0,0x8
    80001774:	d7050513          	addi	a0,a0,-656 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80001778:	00004097          	auipc	ra,0x4
    8000177c:	958080e7          	jalr	-1704(ra) # 800050d0 <_Z11printStringPKc>
    80001780:	0400006f          	j	800017c0 <_Z11workerBodyBPv+0x104>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001784:	00008517          	auipc	a0,0x8
    80001788:	8cc50513          	addi	a0,a0,-1844 # 80009050 <CONSOLE_STATUS+0x40>
    8000178c:	00004097          	auipc	ra,0x4
    80001790:	944080e7          	jalr	-1724(ra) # 800050d0 <_Z11printStringPKc>
        printInt(i);
    80001794:	00000613          	li	a2,0
    80001798:	00a00593          	li	a1,10
    8000179c:	00048513          	mv	a0,s1
    800017a0:	00004097          	auipc	ra,0x4
    800017a4:	ae0080e7          	jalr	-1312(ra) # 80005280 <_Z8printIntiii>
        printString("\n");
    800017a8:	00008517          	auipc	a0,0x8
    800017ac:	d3850513          	addi	a0,a0,-712 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800017b0:	00004097          	auipc	ra,0x4
    800017b4:	920080e7          	jalr	-1760(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 16; i++)
    800017b8:	0014849b          	addiw	s1,s1,1
    800017bc:	0ff4f493          	andi	s1,s1,255
    800017c0:	00f00793          	li	a5,15
    800017c4:	fc97f0e3          	bgeu	a5,s1,80001784 <_Z11workerBodyBPv+0xc8>
    }

    CCB::running->setFinished(true);
    800017c8:	0000a797          	auipc	a5,0xa
    800017cc:	d387b783          	ld	a5,-712(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017d0:	0007b783          	ld	a5,0(a5)
    800017d4:	00100713          	li	a4,1
    800017d8:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	89c080e7          	jalr	-1892(ra) # 80002078 <_ZN3CCB5yieldEv>
}
    800017e4:	01813083          	ld	ra,24(sp)
    800017e8:	01013403          	ld	s0,16(sp)
    800017ec:	00813483          	ld	s1,8(sp)
    800017f0:	00013903          	ld	s2,0(sp)
    800017f4:	02010113          	addi	sp,sp,32
    800017f8:	00008067          	ret

00000000800017fc <_Z11workerBodyCPv>:

static int a = 0;

void workerBodyC(void*) {
    800017fc:	fe010113          	addi	sp,sp,-32
    80001800:	00113c23          	sd	ra,24(sp)
    80001804:	00813823          	sd	s0,16(sp)
    80001808:	00913423          	sd	s1,8(sp)
    8000180c:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80001810:	00000493          	li	s1,0
    80001814:	00900793          	li	a5,9
    80001818:	0497c663          	blt	a5,s1,80001864 <_Z11workerBodyCPv+0x68>
        a += 1000;
    8000181c:	0000a797          	auipc	a5,0xa
    80001820:	d4478793          	addi	a5,a5,-700 # 8000b560 <_ZL1a>
    80001824:	0007a503          	lw	a0,0(a5)
    80001828:	3e85051b          	addiw	a0,a0,1000
    8000182c:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    80001830:	00000613          	li	a2,0
    80001834:	00a00593          	li	a1,10
    80001838:	0005051b          	sext.w	a0,a0
    8000183c:	00004097          	auipc	ra,0x4
    80001840:	a44080e7          	jalr	-1468(ra) # 80005280 <_Z8printIntiii>
        printString("\n");
    80001844:	00008517          	auipc	a0,0x8
    80001848:	c9c50513          	addi	a0,a0,-868 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000184c:	00004097          	auipc	ra,0x4
    80001850:	884080e7          	jalr	-1916(ra) # 800050d0 <_Z11printStringPKc>
        CCB::yield();
    80001854:	00001097          	auipc	ra,0x1
    80001858:	824080e7          	jalr	-2012(ra) # 80002078 <_ZN3CCB5yieldEv>
    for (int i = 0; i < 10; i++) {
    8000185c:	0014849b          	addiw	s1,s1,1
    80001860:	fb5ff06f          	j	80001814 <_Z11workerBodyCPv+0x18>
    }
    CCB::running->setFinished(true);
    80001864:	0000a797          	auipc	a5,0xa
    80001868:	c9c7b783          	ld	a5,-868(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000186c:	0007b783          	ld	a5,0(a5)
    80001870:	00100713          	li	a4,1
    80001874:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	800080e7          	jalr	-2048(ra) # 80002078 <_ZN3CCB5yieldEv>
}
    80001880:	01813083          	ld	ra,24(sp)
    80001884:	01013403          	ld	s0,16(sp)
    80001888:	00813483          	ld	s1,8(sp)
    8000188c:	02010113          	addi	sp,sp,32
    80001890:	00008067          	ret

0000000080001894 <_Z11workerBodyDPv>:

void workerBodyD(void*) {
    80001894:	fe010113          	addi	sp,sp,-32
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00813823          	sd	s0,16(sp)
    800018a0:	00913423          	sd	s1,8(sp)
    800018a4:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    800018a8:	00000493          	li	s1,0
    800018ac:	00900793          	li	a5,9
    800018b0:	0497c663          	blt	a5,s1,800018fc <_Z11workerBodyDPv+0x68>
        a -= 1000;
    800018b4:	0000a797          	auipc	a5,0xa
    800018b8:	cac78793          	addi	a5,a5,-852 # 8000b560 <_ZL1a>
    800018bc:	0007a503          	lw	a0,0(a5)
    800018c0:	c185051b          	addiw	a0,a0,-1000
    800018c4:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    800018c8:	00000613          	li	a2,0
    800018cc:	00a00593          	li	a1,10
    800018d0:	0005051b          	sext.w	a0,a0
    800018d4:	00004097          	auipc	ra,0x4
    800018d8:	9ac080e7          	jalr	-1620(ra) # 80005280 <_Z8printIntiii>
        printString("\n");
    800018dc:	00008517          	auipc	a0,0x8
    800018e0:	c0450513          	addi	a0,a0,-1020 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800018e4:	00003097          	auipc	ra,0x3
    800018e8:	7ec080e7          	jalr	2028(ra) # 800050d0 <_Z11printStringPKc>
        CCB::yield();
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	78c080e7          	jalr	1932(ra) # 80002078 <_ZN3CCB5yieldEv>
    for (int i = 0; i < 10; i++) {
    800018f4:	0014849b          	addiw	s1,s1,1
    800018f8:	fb5ff06f          	j	800018ac <_Z11workerBodyDPv+0x18>
    }
    CCB::running->setFinished(true);
    800018fc:	0000a797          	auipc	a5,0xa
    80001900:	c047b783          	ld	a5,-1020(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001904:	0007b783          	ld	a5,0(a5)
    80001908:	00100713          	li	a4,1
    8000190c:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80001910:	00000097          	auipc	ra,0x0
    80001914:	768080e7          	jalr	1896(ra) # 80002078 <_ZN3CCB5yieldEv>
    80001918:	01813083          	ld	ra,24(sp)
    8000191c:	01013403          	ld	s0,16(sp)
    80001920:	00813483          	ld	s1,8(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret

000000008000192c <_ZN3ABI9Semaphore15createSemaphoreEj>:

#include "../h/Semaphore.hpp"
#include "../h/ccb.hpp"

namespace ABI {
    Semaphore *Semaphore::createSemaphore(unsigned int init) {
    8000192c:	fe010113          	addi	sp,sp,-32
    80001930:	00113c23          	sd	ra,24(sp)
    80001934:	00813823          	sd	s0,16(sp)
    80001938:	00913423          	sd	s1,8(sp)
    8000193c:	02010413          	addi	s0,sp,32
    80001940:	00050493          	mv	s1,a0

class MemoryAllocator {
public:

    static MemoryAllocator* Instance() {
        static MemoryAllocator memoryAllocator;
    80001944:	0000a797          	auipc	a5,0xa
    80001948:	c247c783          	lbu	a5,-988(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000194c:	04079263          	bnez	a5,80001990 <_ZN3ABI9Semaphore15createSemaphoreEj+0x64>
private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001950:	0000a797          	auipc	a5,0xa
    80001954:	ba07b783          	ld	a5,-1120(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001958:	0007b783          	ld	a5,0(a5)
    8000195c:	0000a717          	auipc	a4,0xa
    80001960:	c1470713          	addi	a4,a4,-1004 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001964:	00f73023          	sd	a5,0(a4)
    80001968:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000196c:	0000a717          	auipc	a4,0xa
    80001970:	b9c73703          	ld	a4,-1124(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001974:	00073703          	ld	a4,0(a4)
    80001978:	40f70733          	sub	a4,a4,a5
    8000197c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001980:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001984:	00100793          	li	a5,1
    80001988:	0000a717          	auipc	a4,0xa
    8000198c:	bef70023          	sb	a5,-1056(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        int close();

        unsigned int getValue() const { return val; }

        void *operator new(size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
    80001990:	02000593          	li	a1,32
    80001994:	0000a517          	auipc	a0,0xa
    80001998:	bdc50513          	addi	a0,a0,-1060 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	010080e7          	jalr	16(ra) # 800029ac <_ZN15MemoryAllocator9mem_allocEm>
        void operator delete[](void *ptr) {
            MemoryAllocator::Instance()->mem_free(ptr);
        }

    protected:
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    800019a4:	0000a717          	auipc	a4,0xa
    800019a8:	93c70713          	addi	a4,a4,-1732 # 8000b2e0 <_ZTVN3ABI9SemaphoreE+0x10>
    800019ac:	00e53023          	sd	a4,0(a0)
    800019b0:	00952423          	sw	s1,8(a0)
    800019b4:	00050623          	sb	zero,12(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800019b8:	00053823          	sd	zero,16(a0)
    800019bc:	00053c23          	sd	zero,24(a0)
        return new Semaphore(init);
    }
    800019c0:	01813083          	ld	ra,24(sp)
    800019c4:	01013403          	ld	s0,16(sp)
    800019c8:	00813483          	ld	s1,8(sp)
    800019cc:	02010113          	addi	sp,sp,32
    800019d0:	00008067          	ret

00000000800019d4 <_ZN3ABI9Semaphore4waitEv>:

    int Semaphore::wait() {
    800019d4:	ff010113          	addi	sp,sp,-16
    800019d8:	00813423          	sd	s0,8(sp)
    800019dc:	01010413          	addi	s0,sp,16
        if (closed) return -1;
    800019e0:	00c54783          	lbu	a5,12(a0)
    800019e4:	02079063          	bnez	a5,80001a04 <_ZN3ABI9Semaphore4waitEv+0x30>

        if (--val < 0) {
    800019e8:	00852783          	lw	a5,8(a0)
    800019ec:	fff7879b          	addiw	a5,a5,-1
    800019f0:	00f52423          	sw	a5,8(a0)
            blocked.addLast(CCB::running);
            CCB::running = Scheduler::get();
            CCB::dispatch();
        }
        return 0;
    800019f4:	00000513          	li	a0,0
    }
    800019f8:	00813403          	ld	s0,8(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        if (closed) return -1;
    80001a04:	fff00513          	li	a0,-1
    80001a08:	ff1ff06f          	j	800019f8 <_ZN3ABI9Semaphore4waitEv+0x24>

0000000080001a0c <_ZN3ABI9Semaphore6signalEv>:

    int Semaphore::signal() {
        if (closed) return -1;
    80001a0c:	00c54703          	lbu	a4,12(a0)
    80001a10:	08071263          	bnez	a4,80001a94 <_ZN3ABI9Semaphore6signalEv+0x88>
    80001a14:	00050793          	mv	a5,a0

        if (++val <= 0) {
    80001a18:	00852703          	lw	a4,8(a0)
    80001a1c:	0017071b          	addiw	a4,a4,1
    80001a20:	0007069b          	sext.w	a3,a4
    80001a24:	00e52423          	sw	a4,8(a0)
    80001a28:	06069a63          	bnez	a3,80001a9c <_ZN3ABI9Semaphore6signalEv+0x90>
    int Semaphore::signal() {
    80001a2c:	fe010113          	addi	sp,sp,-32
    80001a30:	00113c23          	sd	ra,24(sp)
    80001a34:	00813823          	sd	s0,16(sp)
    80001a38:	00913423          	sd	s1,8(sp)
    80001a3c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001a40:	01053503          	ld	a0,16(a0)
    80001a44:	04050463          	beqz	a0,80001a8c <_ZN3ABI9Semaphore6signalEv+0x80>

        Elem *elem = head;
        head = head->next;
    80001a48:	00853703          	ld	a4,8(a0)
    80001a4c:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80001a50:	02070a63          	beqz	a4,80001a84 <_ZN3ABI9Semaphore6signalEv+0x78>

        T *ret = elem->data;
    80001a54:	00053483          	ld	s1,0(a0)
        delete elem;
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	338080e7          	jalr	824(ra) # 80001d90 <_ZdlPv>
            CCB *thread = blocked.removeFirst();
            Scheduler::put(thread);
    80001a60:	00048513          	mv	a0,s1
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	e64080e7          	jalr	-412(ra) # 800028c8 <_ZN9Scheduler3putEP3CCB>
        }
        return 0;
    80001a6c:	00000513          	li	a0,0
    }
    80001a70:	01813083          	ld	ra,24(sp)
    80001a74:	01013403          	ld	s0,16(sp)
    80001a78:	00813483          	ld	s1,8(sp)
    80001a7c:	02010113          	addi	sp,sp,32
    80001a80:	00008067          	ret
        if (!head) { tail = 0; }
    80001a84:	0007bc23          	sd	zero,24(a5)
    80001a88:	fcdff06f          	j	80001a54 <_ZN3ABI9Semaphore6signalEv+0x48>
        if (!head) { return 0; }
    80001a8c:	00050493          	mv	s1,a0
    80001a90:	fd1ff06f          	j	80001a60 <_ZN3ABI9Semaphore6signalEv+0x54>
        if (closed) return -1;
    80001a94:	fff00513          	li	a0,-1
    80001a98:	00008067          	ret
        return 0;
    80001a9c:	00000513          	li	a0,0
    }
    80001aa0:	00008067          	ret

0000000080001aa4 <_ZN3ABI9Semaphore5blockEv>:
        while (!blocked.empty()) unblock();

        return 0;
    }

    void Semaphore::block() {
    80001aa4:	fe010113          	addi	sp,sp,-32
    80001aa8:	00113c23          	sd	ra,24(sp)
    80001aac:	00813823          	sd	s0,16(sp)
    80001ab0:	00913423          	sd	s1,8(sp)
    80001ab4:	01213023          	sd	s2,0(sp)
    80001ab8:	02010413          	addi	s0,sp,32
    80001abc:	00050493          	mv	s1,a0
        blocked.addLast(CCB::running);
    80001ac0:	0000a797          	auipc	a5,0xa
    80001ac4:	a407b783          	ld	a5,-1472(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ac8:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    80001acc:	01000513          	li	a0,16
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	1c0080e7          	jalr	448(ra) # 80001c90 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ad8:	01253023          	sd	s2,0(a0)
    80001adc:	00053423          	sd	zero,8(a0)
        if (tail)
    80001ae0:	0184b783          	ld	a5,24(s1)
    80001ae4:	04078063          	beqz	a5,80001b24 <_ZN3ABI9Semaphore5blockEv+0x80>
            tail->next = elem;
    80001ae8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001aec:	00a4bc23          	sd	a0,24(s1)
        CCB::running = Scheduler::get();
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	d70080e7          	jalr	-656(ra) # 80002860 <_ZN9Scheduler3getEv>
    80001af8:	0000a797          	auipc	a5,0xa
    80001afc:	a087b783          	ld	a5,-1528(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b00:	00a7b023          	sd	a0,0(a5)
        CCB::dispatch();
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	50c080e7          	jalr	1292(ra) # 80002010 <_ZN3CCB8dispatchEv>
    }
    80001b0c:	01813083          	ld	ra,24(sp)
    80001b10:	01013403          	ld	s0,16(sp)
    80001b14:	00813483          	ld	s1,8(sp)
    80001b18:	00013903          	ld	s2,0(sp)
    80001b1c:	02010113          	addi	sp,sp,32
    80001b20:	00008067          	ret
            head = tail = elem;
    80001b24:	00a4bc23          	sd	a0,24(s1)
    80001b28:	00a4b823          	sd	a0,16(s1)
    80001b2c:	fc5ff06f          	j	80001af0 <_ZN3ABI9Semaphore5blockEv+0x4c>

0000000080001b30 <_ZN3ABI9Semaphore7unblockEv>:

    void Semaphore::unblock() {
    80001b30:	fe010113          	addi	sp,sp,-32
    80001b34:	00113c23          	sd	ra,24(sp)
    80001b38:	00813823          	sd	s0,16(sp)
    80001b3c:	00913423          	sd	s1,8(sp)
    80001b40:	02010413          	addi	s0,sp,32
    80001b44:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001b48:	01053503          	ld	a0,16(a0)
    80001b4c:	04050263          	beqz	a0,80001b90 <_ZN3ABI9Semaphore7unblockEv+0x60>
        head = head->next;
    80001b50:	00853703          	ld	a4,8(a0)
    80001b54:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80001b58:	02070863          	beqz	a4,80001b88 <_ZN3ABI9Semaphore7unblockEv+0x58>
        T *ret = elem->data;
    80001b5c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	230080e7          	jalr	560(ra) # 80001d90 <_ZdlPv>
        CCB *thread = blocked.removeFirst();
        Scheduler::put(thread);
    80001b68:	00048513          	mv	a0,s1
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	d5c080e7          	jalr	-676(ra) # 800028c8 <_ZN9Scheduler3putEP3CCB>
    }
    80001b74:	01813083          	ld	ra,24(sp)
    80001b78:	01013403          	ld	s0,16(sp)
    80001b7c:	00813483          	ld	s1,8(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret
        if (!head) { tail = 0; }
    80001b88:	0007bc23          	sd	zero,24(a5)
    80001b8c:	fd1ff06f          	j	80001b5c <_ZN3ABI9Semaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001b90:	00050493          	mv	s1,a0
    80001b94:	fd5ff06f          	j	80001b68 <_ZN3ABI9Semaphore7unblockEv+0x38>

0000000080001b98 <_ZN3ABI9Semaphore5closeEv>:
        if (closed) return -1;
    80001b98:	00c54783          	lbu	a5,12(a0)
    80001b9c:	04079a63          	bnez	a5,80001bf0 <_ZN3ABI9Semaphore5closeEv+0x58>
    int Semaphore::close() {
    80001ba0:	fe010113          	addi	sp,sp,-32
    80001ba4:	00113c23          	sd	ra,24(sp)
    80001ba8:	00813823          	sd	s0,16(sp)
    80001bac:	00913423          	sd	s1,8(sp)
    80001bb0:	02010413          	addi	s0,sp,32
    80001bb4:	00050493          	mv	s1,a0
        closed = true;
    80001bb8:	00100793          	li	a5,1
    80001bbc:	00f50623          	sb	a5,12(a0)
    80001bc0:	0100006f          	j	80001bd0 <_ZN3ABI9Semaphore5closeEv+0x38>
        while (!blocked.empty()) unblock();
    80001bc4:	00048513          	mv	a0,s1
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	f68080e7          	jalr	-152(ra) # 80001b30 <_ZN3ABI9Semaphore7unblockEv>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    bool empty() { return head == nullptr; }
    80001bd0:	0104b783          	ld	a5,16(s1)
    80001bd4:	fe0798e3          	bnez	a5,80001bc4 <_ZN3ABI9Semaphore5closeEv+0x2c>
        return 0;
    80001bd8:	00000513          	li	a0,0
    }
    80001bdc:	01813083          	ld	ra,24(sp)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	00813483          	ld	s1,8(sp)
    80001be8:	02010113          	addi	sp,sp,32
    80001bec:	00008067          	ret
        if (closed) return -1;
    80001bf0:	fff00513          	li	a0,-1
    }
    80001bf4:	00008067          	ret

0000000080001bf8 <_ZN3ABI9SemaphoreD1Ev>:
        virtual ~Semaphore() = default;
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00813423          	sd	s0,8(sp)
    80001c00:	01010413          	addi	s0,sp,16
    80001c04:	00813403          	ld	s0,8(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN3ABI9SemaphoreD0Ev>:
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00113423          	sd	ra,8(sp)
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    80001c20:	00050593          	mv	a1,a0
    80001c24:	0000a797          	auipc	a5,0xa
    80001c28:	9447c783          	lbu	a5,-1724(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c2c:	04079263          	bnez	a5,80001c70 <_ZN3ABI9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001c30:	0000a797          	auipc	a5,0xa
    80001c34:	8c07b783          	ld	a5,-1856(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c38:	0007b783          	ld	a5,0(a5)
    80001c3c:	0000a717          	auipc	a4,0xa
    80001c40:	93470713          	addi	a4,a4,-1740 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c44:	00f73023          	sd	a5,0(a4)
    80001c48:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001c4c:	0000a717          	auipc	a4,0xa
    80001c50:	8bc73703          	ld	a4,-1860(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c54:	00073703          	ld	a4,0(a4)
    80001c58:	40f70733          	sub	a4,a4,a5
    80001c5c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001c60:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001c64:	00100793          	li	a5,1
    80001c68:	0000a717          	auipc	a4,0xa
    80001c6c:	90f70023          	sb	a5,-1792(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            MemoryAllocator::Instance()->mem_free(ptr);
    80001c70:	0000a517          	auipc	a0,0xa
    80001c74:	90050513          	addi	a0,a0,-1792 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c78:	00001097          	auipc	ra,0x1
    80001c7c:	e84080e7          	jalr	-380(ra) # 80002afc <_ZN15MemoryAllocator8mem_freeEPv>
        virtual ~Semaphore() = default;
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00113423          	sd	ra,8(sp)
    80001c98:	00813023          	sd	s0,0(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    80001ca0:	00050593          	mv	a1,a0
    80001ca4:	0000a797          	auipc	a5,0xa
    80001ca8:	8c47c783          	lbu	a5,-1852(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cac:	04079263          	bnez	a5,80001cf0 <_Znwm+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001cb0:	0000a797          	auipc	a5,0xa
    80001cb4:	8407b783          	ld	a5,-1984(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001cb8:	0007b783          	ld	a5,0(a5)
    80001cbc:	0000a717          	auipc	a4,0xa
    80001cc0:	8b470713          	addi	a4,a4,-1868 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cc4:	00f73023          	sd	a5,0(a4)
    80001cc8:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001ccc:	0000a717          	auipc	a4,0xa
    80001cd0:	83c73703          	ld	a4,-1988(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001cd4:	00073703          	ld	a4,0(a4)
    80001cd8:	40f70733          	sub	a4,a4,a5
    80001cdc:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ce0:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ce4:	00100793          	li	a5,1
    80001ce8:	0000a717          	auipc	a4,0xa
    80001cec:	88f70023          	sb	a5,-1920(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001cf0:	0000a517          	auipc	a0,0xa
    80001cf4:	88050513          	addi	a0,a0,-1920 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	cb4080e7          	jalr	-844(ra) # 800029ac <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d00:	00813083          	ld	ra,8(sp)
    80001d04:	00013403          	ld	s0,0(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_Znam>:

void *operator new[](size_t n)
{
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00113423          	sd	ra,8(sp)
    80001d18:	00813023          	sd	s0,0(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    80001d20:	00050593          	mv	a1,a0
    80001d24:	0000a797          	auipc	a5,0xa
    80001d28:	8447c783          	lbu	a5,-1980(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d2c:	04079263          	bnez	a5,80001d70 <_Znam+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001d30:	00009797          	auipc	a5,0x9
    80001d34:	7c07b783          	ld	a5,1984(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d38:	0007b783          	ld	a5,0(a5)
    80001d3c:	0000a717          	auipc	a4,0xa
    80001d40:	83470713          	addi	a4,a4,-1996 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d44:	00f73023          	sd	a5,0(a4)
    80001d48:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001d4c:	00009717          	auipc	a4,0x9
    80001d50:	7bc73703          	ld	a4,1980(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d54:	00073703          	ld	a4,0(a4)
    80001d58:	40f70733          	sub	a4,a4,a5
    80001d5c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001d60:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001d64:	00100793          	li	a5,1
    80001d68:	0000a717          	auipc	a4,0xa
    80001d6c:	80f70023          	sb	a5,-2048(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001d70:	0000a517          	auipc	a0,0xa
    80001d74:	80050513          	addi	a0,a0,-2048 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d78:	00001097          	auipc	ra,0x1
    80001d7c:	c34080e7          	jalr	-972(ra) # 800029ac <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d80:	00813083          	ld	ra,8(sp)
    80001d84:	00013403          	ld	s0,0(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret

0000000080001d90 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00113423          	sd	ra,8(sp)
    80001d98:	00813023          	sd	s0,0(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    80001da0:	00050593          	mv	a1,a0
    80001da4:	00009797          	auipc	a5,0x9
    80001da8:	7c47c783          	lbu	a5,1988(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001dac:	04079263          	bnez	a5,80001df0 <_ZdlPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001db0:	00009797          	auipc	a5,0x9
    80001db4:	7407b783          	ld	a5,1856(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001db8:	0007b783          	ld	a5,0(a5)
    80001dbc:	00009717          	auipc	a4,0x9
    80001dc0:	7b470713          	addi	a4,a4,1972 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001dc4:	00f73023          	sd	a5,0(a4)
    80001dc8:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001dcc:	00009717          	auipc	a4,0x9
    80001dd0:	73c73703          	ld	a4,1852(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001dd4:	00073703          	ld	a4,0(a4)
    80001dd8:	40f70733          	sub	a4,a4,a5
    80001ddc:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001de0:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001de4:	00100793          	li	a5,1
    80001de8:	00009717          	auipc	a4,0x9
    80001dec:	78f70023          	sb	a5,1920(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80001df0:	00009517          	auipc	a0,0x9
    80001df4:	78050513          	addi	a0,a0,1920 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001df8:	00001097          	auipc	ra,0x1
    80001dfc:	d04080e7          	jalr	-764(ra) # 80002afc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e00:	00813083          	ld	ra,8(sp)
    80001e04:	00013403          	ld	s0,0(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret

0000000080001e10 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00113423          	sd	ra,8(sp)
    80001e18:	00813023          	sd	s0,0(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    80001e20:	00050593          	mv	a1,a0
    80001e24:	00009797          	auipc	a5,0x9
    80001e28:	7447c783          	lbu	a5,1860(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e2c:	04079263          	bnez	a5,80001e70 <_ZdaPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001e30:	00009797          	auipc	a5,0x9
    80001e34:	6c07b783          	ld	a5,1728(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e38:	0007b783          	ld	a5,0(a5)
    80001e3c:	00009717          	auipc	a4,0x9
    80001e40:	73470713          	addi	a4,a4,1844 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e44:	00f73023          	sd	a5,0(a4)
    80001e48:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001e4c:	00009717          	auipc	a4,0x9
    80001e50:	6bc73703          	ld	a4,1724(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e54:	00073703          	ld	a4,0(a4)
    80001e58:	40f70733          	sub	a4,a4,a5
    80001e5c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001e60:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001e64:	00100793          	li	a5,1
    80001e68:	00009717          	auipc	a4,0x9
    80001e6c:	70f70023          	sb	a5,1792(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80001e70:	00009517          	auipc	a0,0x9
    80001e74:	70050513          	addi	a0,a0,1792 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e78:	00001097          	auipc	ra,0x1
    80001e7c:	c84080e7          	jalr	-892(ra) # 80002afc <_ZN15MemoryAllocator8mem_freeEPv>
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN3CCB15createCoroutineEPFvPvES0_>:
#include "../h/riscv.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body, void* arg)
{
    80001e90:	fd010113          	addi	sp,sp,-48
    80001e94:	02113423          	sd	ra,40(sp)
    80001e98:	02813023          	sd	s0,32(sp)
    80001e9c:	00913c23          	sd	s1,24(sp)
    80001ea0:	01213823          	sd	s2,16(sp)
    80001ea4:	01313423          	sd	s3,8(sp)
    80001ea8:	03010413          	addi	s0,sp,48
    80001eac:	00050913          	mv	s2,a0
    80001eb0:	00058993          	mv	s3,a1
    80001eb4:	00009797          	auipc	a5,0x9
    80001eb8:	6b47c783          	lbu	a5,1716(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ebc:	04079263          	bnez	a5,80001f00 <_ZN3CCB15createCoroutineEPFvPvES0_+0x70>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001ec0:	00009797          	auipc	a5,0x9
    80001ec4:	6307b783          	ld	a5,1584(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ec8:	0007b783          	ld	a5,0(a5)
    80001ecc:	00009717          	auipc	a4,0x9
    80001ed0:	6a470713          	addi	a4,a4,1700 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ed4:	00f73023          	sd	a5,0(a4)
    80001ed8:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001edc:	00009717          	auipc	a4,0x9
    80001ee0:	62c73703          	ld	a4,1580(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ee4:	00073703          	ld	a4,0(a4)
    80001ee8:	40f70733          	sub	a4,a4,a5
    80001eec:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ef0:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ef4:	00100793          	li	a5,1
    80001ef8:	00009717          	auipc	a4,0x9
    80001efc:	66f70823          	sb	a5,1648(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    }

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001f00:	03000593          	li	a1,48
    80001f04:	00009517          	auipc	a0,0x9
    80001f08:	66c50513          	addi	a0,a0,1644 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	aa0080e7          	jalr	-1376(ra) # 800029ac <_ZN15MemoryAllocator9mem_allocEm>
    80001f14:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({body != nullptr ? (uint64) body : 0,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg)
    80001f18:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001f1c:	00090a63          	beqz	s2,80001f30 <_ZN3CCB15createCoroutineEPFvPvES0_+0xa0>
    80001f20:	00002537          	lui	a0,0x2
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	dec080e7          	jalr	-532(ra) # 80001d10 <_Znam>
    80001f2c:	0080006f          	j	80001f34 <_ZN3CCB15createCoroutineEPFvPvES0_+0xa4>
    80001f30:	00000513          	li	a0,0
            arg(arg)
    80001f34:	00a4b423          	sd	a0,8(s1)
            context({body != nullptr ? (uint64) body : 0,
    80001f38:	02090c63          	beqz	s2,80001f70 <_ZN3CCB15createCoroutineEPFvPvES0_+0xe0>
    80001f3c:	00090793          	mv	a5,s2
            arg(arg)
    80001f40:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f44:	02050a63          	beqz	a0,80001f78 <_ZN3CCB15createCoroutineEPFvPvES0_+0xe8>
    80001f48:	000027b7          	lui	a5,0x2
    80001f4c:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001f50:	00f4bc23          	sd	a5,24(s1)
    80001f54:	02048023          	sb	zero,32(s1)
    80001f58:	0334b423          	sd	s3,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001f5c:	08090a63          	beqz	s2,80001ff0 <_ZN3CCB15createCoroutineEPFvPvES0_+0x160>
    80001f60:	00048513          	mv	a0,s1
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	964080e7          	jalr	-1692(ra) # 800028c8 <_ZN9Scheduler3putEP3CCB>
    80001f6c:	0840006f          	j	80001ff0 <_ZN3CCB15createCoroutineEPFvPvES0_+0x160>
            context({body != nullptr ? (uint64) body : 0,
    80001f70:	00000793          	li	a5,0
    80001f74:	fcdff06f          	j	80001f40 <_ZN3CCB15createCoroutineEPFvPvES0_+0xb0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f78:	00000793          	li	a5,0
    80001f7c:	fd5ff06f          	j	80001f50 <_ZN3CCB15createCoroutineEPFvPvES0_+0xc0>
    80001f80:	00050913          	mv	s2,a0
    80001f84:	00009797          	auipc	a5,0x9
    80001f88:	5e47c783          	lbu	a5,1508(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f8c:	04079263          	bnez	a5,80001fd0 <_ZN3CCB15createCoroutineEPFvPvES0_+0x140>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001f90:	00009797          	auipc	a5,0x9
    80001f94:	5607b783          	ld	a5,1376(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001f98:	0007b783          	ld	a5,0(a5)
    80001f9c:	00009717          	auipc	a4,0x9
    80001fa0:	5d470713          	addi	a4,a4,1492 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fa4:	00f73023          	sd	a5,0(a4)
    80001fa8:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001fac:	00009717          	auipc	a4,0x9
    80001fb0:	55c73703          	ld	a4,1372(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001fb4:	00073703          	ld	a4,0(a4)
    80001fb8:	40f70733          	sub	a4,a4,a5
    80001fbc:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001fc0:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001fc4:	00100793          	li	a5,1
    80001fc8:	00009717          	auipc	a4,0x9
    80001fcc:	5af70023          	sb	a5,1440(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001fd0:	00048593          	mv	a1,s1
    80001fd4:	00009517          	auipc	a0,0x9
    80001fd8:	59c50513          	addi	a0,a0,1436 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	b20080e7          	jalr	-1248(ra) # 80002afc <_ZN15MemoryAllocator8mem_freeEPv>
    80001fe4:	00090513          	mv	a0,s2
    80001fe8:	0000a097          	auipc	ra,0xa
    80001fec:	6d0080e7          	jalr	1744(ra) # 8000c6b8 <_Unwind_Resume>
    return new CCB(body, arg);
}
    80001ff0:	00048513          	mv	a0,s1
    80001ff4:	02813083          	ld	ra,40(sp)
    80001ff8:	02013403          	ld	s0,32(sp)
    80001ffc:	01813483          	ld	s1,24(sp)
    80002000:	01013903          	ld	s2,16(sp)
    80002004:	00813983          	ld	s3,8(sp)
    80002008:	03010113          	addi	sp,sp,48
    8000200c:	00008067          	ret

0000000080002010 <_ZN3CCB8dispatchEv>:

    Riscv::popRegisters();
}

void CCB::dispatch()
{
    80002010:	fe010113          	addi	sp,sp,-32
    80002014:	00113c23          	sd	ra,24(sp)
    80002018:	00813823          	sd	s0,16(sp)
    8000201c:	00913423          	sd	s1,8(sp)
    80002020:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80002024:	00009497          	auipc	s1,0x9
    80002028:	55c4b483          	ld	s1,1372(s1) # 8000b580 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    8000202c:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80002030:	02078c63          	beqz	a5,80002068 <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002034:	00001097          	auipc	ra,0x1
    80002038:	82c080e7          	jalr	-2004(ra) # 80002860 <_ZN9Scheduler3getEv>
    8000203c:	00009797          	auipc	a5,0x9
    80002040:	54a7b223          	sd	a0,1348(a5) # 8000b580 <_ZN3CCB7runningE>

    CCB::contextSwitch(&old->context, &running->context);
    80002044:	01050593          	addi	a1,a0,16
    80002048:	01048513          	addi	a0,s1,16
    8000204c:	fffff097          	auipc	ra,0xfffff
    80002050:	1bc080e7          	jalr	444(ra) # 80001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80002054:	01813083          	ld	ra,24(sp)
    80002058:	01013403          	ld	s0,16(sp)
    8000205c:	00813483          	ld	s1,8(sp)
    80002060:	02010113          	addi	sp,sp,32
    80002064:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80002068:	00048513          	mv	a0,s1
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	85c080e7          	jalr	-1956(ra) # 800028c8 <_ZN9Scheduler3putEP3CCB>
    80002074:	fc1ff06f          	j	80002034 <_ZN3CCB8dispatchEv+0x24>

0000000080002078 <_ZN3CCB5yieldEv>:
{
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00113423          	sd	ra,8(sp)
    80002080:	00813023          	sd	s0,0(sp)
    80002084:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	088080e7          	jalr	136(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    80002090:	00000097          	auipc	ra,0x0
    80002094:	f80080e7          	jalr	-128(ra) # 80002010 <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    80002098:	fffff097          	auipc	ra,0xfffff
    8000209c:	0f4080e7          	jalr	244(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00113423          	sd	ra,8(sp)
    800020b8:	00813023          	sd	s0,0(sp)
    800020bc:	01010413          	addi	s0,sp,16
    800020c0:	00009797          	auipc	a5,0x9
    800020c4:	24878793          	addi	a5,a5,584 # 8000b308 <_ZTV9Semaphore+0x10>
    800020c8:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    800020cc:	00853503          	ld	a0,8(a0)
    800020d0:	fffff097          	auipc	ra,0xfffff
    800020d4:	308080e7          	jalr	776(ra) # 800013d8 <_Z9sem_closePN3ABI9SemaphoreE>
}
    800020d8:	00813083          	ld	ra,8(sp)
    800020dc:	00013403          	ld	s0,0(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020e8:	fe010113          	addi	sp,sp,-32
    800020ec:	00113c23          	sd	ra,24(sp)
    800020f0:	00813823          	sd	s0,16(sp)
    800020f4:	00913423          	sd	s1,8(sp)
    800020f8:	02010413          	addi	s0,sp,32
    800020fc:	00050493          	mv	s1,a0
}
    80002100:	00000097          	auipc	ra,0x0
    80002104:	fb0080e7          	jalr	-80(ra) # 800020b0 <_ZN9SemaphoreD1Ev>
    80002108:	00048513          	mv	a0,s1
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	c84080e7          	jalr	-892(ra) # 80001d90 <_ZdlPv>
    80002114:	01813083          	ld	ra,24(sp)
    80002118:	01013403          	ld	s0,16(sp)
    8000211c:	00813483          	ld	s1,8(sp)
    80002120:	02010113          	addi	sp,sp,32
    80002124:	00008067          	ret

0000000080002128 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::~Thread() {
    80002128:	fe010113          	addi	sp,sp,-32
    8000212c:	00113c23          	sd	ra,24(sp)
    80002130:	00813823          	sd	s0,16(sp)
    80002134:	00913423          	sd	s1,8(sp)
    80002138:	02010413          	addi	s0,sp,32
    8000213c:	00009797          	auipc	a5,0x9
    80002140:	1ec78793          	addi	a5,a5,492 # 8000b328 <_ZTV6Thread+0x10>
    80002144:	00f53023          	sd	a5,0(a0)
    delete this->myHandle;
    80002148:	00853483          	ld	s1,8(a0)
    8000214c:	06048a63          	beqz	s1,800021c0 <_ZN6ThreadD1Ev+0x98>
    ~CCB() { delete[] stack; }
    80002150:	0084b503          	ld	a0,8(s1)
    80002154:	00050663          	beqz	a0,80002160 <_ZN6ThreadD1Ev+0x38>
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	cb8080e7          	jalr	-840(ra) # 80001e10 <_ZdaPv>
    80002160:	00009797          	auipc	a5,0x9
    80002164:	4087c783          	lbu	a5,1032(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002168:	04079263          	bnez	a5,800021ac <_ZN6ThreadD1Ev+0x84>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000216c:	00009797          	auipc	a5,0x9
    80002170:	3847b783          	ld	a5,900(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002174:	0007b783          	ld	a5,0(a5)
    80002178:	00009717          	auipc	a4,0x9
    8000217c:	3f870713          	addi	a4,a4,1016 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002180:	00f73023          	sd	a5,0(a4)
    80002184:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002188:	00009717          	auipc	a4,0x9
    8000218c:	38073703          	ld	a4,896(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002190:	00073703          	ld	a4,0(a4)
    80002194:	40f70733          	sub	a4,a4,a5
    80002198:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000219c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800021a0:	00100793          	li	a5,1
    800021a4:	00009717          	auipc	a4,0x9
    800021a8:	3cf70223          	sb	a5,964(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    800021ac:	00048593          	mv	a1,s1
    800021b0:	00009517          	auipc	a0,0x9
    800021b4:	3c050513          	addi	a0,a0,960 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	944080e7          	jalr	-1724(ra) # 80002afc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800021c0:	01813083          	ld	ra,24(sp)
    800021c4:	01013403          	ld	s0,16(sp)
    800021c8:	00813483          	ld	s1,8(sp)
    800021cc:	02010113          	addi	sp,sp,32
    800021d0:	00008067          	ret

00000000800021d4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800021d4:	fe010113          	addi	sp,sp,-32
    800021d8:	00113c23          	sd	ra,24(sp)
    800021dc:	00813823          	sd	s0,16(sp)
    800021e0:	00913423          	sd	s1,8(sp)
    800021e4:	02010413          	addi	s0,sp,32
    800021e8:	00050493          	mv	s1,a0
}
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	f3c080e7          	jalr	-196(ra) # 80002128 <_ZN6ThreadD1Ev>
    800021f4:	00048513          	mv	a0,s1
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	b98080e7          	jalr	-1128(ra) # 80001d90 <_ZdlPv>
    80002200:	01813083          	ld	ra,24(sp)
    80002204:	01013403          	ld	s0,16(sp)
    80002208:	00813483          	ld	s1,8(sp)
    8000220c:	02010113          	addi	sp,sp,32
    80002210:	00008067          	ret

0000000080002214 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002214:	ff010113          	addi	sp,sp,-16
    80002218:	00113423          	sd	ra,8(sp)
    8000221c:	00813023          	sd	s0,0(sp)
    80002220:	01010413          	addi	s0,sp,16
    80002224:	00009797          	auipc	a5,0x9
    80002228:	0e478793          	addi	a5,a5,228 # 8000b308 <_ZTV9Semaphore+0x10>
    8000222c:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    80002230:	00850513          	addi	a0,a0,8
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	174080e7          	jalr	372(ra) # 800013a8 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    8000223c:	00813083          	ld	ra,8(sp)
    80002240:	00013403          	ld	s0,0(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret

000000008000224c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00113423          	sd	ra,8(sp)
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    8000225c:	00853503          	ld	a0,8(a0)
    80002260:	fffff097          	auipc	ra,0xfffff
    80002264:	1a4080e7          	jalr	420(ra) # 80001404 <_Z8sem_waitPN3ABI9SemaphoreE>
}
    80002268:	00813083          	ld	ra,8(sp)
    8000226c:	00013403          	ld	s0,0(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret

0000000080002278 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00113423          	sd	ra,8(sp)
    80002280:	00813023          	sd	s0,0(sp)
    80002284:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002288:	00853503          	ld	a0,8(a0)
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	1a4080e7          	jalr	420(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00113423          	sd	ra,8(sp)
    800022ac:	00813023          	sd	s0,0(sp)
    800022b0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	0d4080e7          	jalr	212(ra) # 80001388 <_Z15thread_dispatchv>
}
    800022bc:	00813083          	ld	ra,8(sp)
    800022c0:	00013403          	ld	s0,0(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00113423          	sd	ra,8(sp)
    800022d4:	00813023          	sd	s0,0(sp)
    800022d8:	01010413          	addi	s0,sp,16
    800022dc:	00009797          	auipc	a5,0x9
    800022e0:	04c78793          	addi	a5,a5,76 # 8000b328 <_ZTV6Thread+0x10>
    800022e4:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    800022e8:	00850513          	addi	a0,a0,8
    800022ec:	fffff097          	auipc	ra,0xfffff
    800022f0:	004080e7          	jalr	4(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
}
    800022f4:	00813083          	ld	ra,8(sp)
    800022f8:	00013403          	ld	s0,0(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00113423          	sd	ra,8(sp)
    8000230c:	00813023          	sd	s0,0(sp)
    80002310:	01010413          	addi	s0,sp,16
    80002314:	00009797          	auipc	a5,0x9
    80002318:	01478793          	addi	a5,a5,20 # 8000b328 <_ZTV6Thread+0x10>
    8000231c:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, runWrapper, this);
    80002320:	00050613          	mv	a2,a0
    80002324:	00000597          	auipc	a1,0x0
    80002328:	0e058593          	addi	a1,a1,224 # 80002404 <_ZN6Thread10runWrapperEPv>
    8000232c:	00850513          	addi	a0,a0,8
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	fc0080e7          	jalr	-64(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
}
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZN6Thread5startEv>:

int Thread::start() {
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00113423          	sd	ra,8(sp)
    80002350:	00813023          	sd	s0,0(sp)
    80002354:	01010413          	addi	s0,sp,16
    return thread_start(&this->myHandle);
    80002358:	00850513          	addi	a0,a0,8
    8000235c:	fffff097          	auipc	ra,0xfffff
    80002360:	fc8080e7          	jalr	-56(ra) # 80001324 <_Z12thread_startPP3CCB>
}
    80002364:	00813083          	ld	ra,8(sp)
    80002368:	00013403          	ld	s0,0(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t time) {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00113423          	sd	ra,8(sp)
    8000237c:	00813023          	sd	s0,0(sp)
    80002380:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002384:	fffff097          	auipc	ra,0xfffff
    80002388:	0d8080e7          	jalr	216(ra) # 8000145c <_Z10time_sleepm>
}
    8000238c:	00813083          	ld	ra,8(sp)
    80002390:	00013403          	ld	s0,0(sp)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00113423          	sd	ra,8(sp)
    800023a4:	00813023          	sd	s0,0(sp)
    800023a8:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    800023ac:	fffff097          	auipc	ra,0xfffff
    800023b0:	104080e7          	jalr	260(ra) # 800014b0 <_Z4putcc>
}
    800023b4:	00813083          	ld	ra,8(sp)
    800023b8:	00013403          	ld	s0,0(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <_ZN7Console4getcEv>:

char Console::getc() {
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00113423          	sd	ra,8(sp)
    800023cc:	00813023          	sd	s0,0(sp)
    800023d0:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	0b4080e7          	jalr	180(ra) # 80001488 <_Z4getcv>
}
    800023dc:	00813083          	ld	ra,8(sp)
    800023e0:	00013403          	ld	s0,0(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret

00000000800023ec <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {}
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00813423          	sd	s0,8(sp)
    800023f4:	01010413          	addi	s0,sp,16
    800023f8:	00813403          	ld	s0,8(sp)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret

0000000080002404 <_ZN6Thread10runWrapperEPv>:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void runWrapper(void* thread) {
        if (thread) {
    80002404:	02050863          	beqz	a0,80002434 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    80002408:	ff010113          	addi	sp,sp,-16
    8000240c:	00113423          	sd	ra,8(sp)
    80002410:	00813023          	sd	s0,0(sp)
    80002414:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    80002418:	00053783          	ld	a5,0(a0)
    8000241c:	0107b783          	ld	a5,16(a5)
    80002420:	000780e7          	jalr	a5
        }
    }
    80002424:	00813083          	ld	ra,8(sp)
    80002428:	00013403          	ld	s0,0(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret
    80002434:	00008067          	ret

0000000080002438 <_ZN5Riscv10popSppSpieEv>:
#include "../h/ccb.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void Riscv::popSppSpie()
{
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00813423          	sd	s0,8(sp)
    80002440:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002444:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002448:	10200073          	sret
}
    8000244c:	00813403          	ld	s0,8(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZN5Riscv14handleSyscallsEv>:

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    80002458:	fb010113          	addi	sp,sp,-80
    8000245c:	04113423          	sd	ra,72(sp)
    80002460:	04813023          	sd	s0,64(sp)
    80002464:	02913c23          	sd	s1,56(sp)
    80002468:	05010413          	addi	s0,sp,80
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000246c:	142027f3          	csrr	a5,scause
    80002470:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002474:	fb043483          	ld	s1,-80(s0)
    uint64 scause = r_scause();
    if (scause == 1) {
    80002478:	00100793          	li	a5,1
    8000247c:	06f48263          	beq	s1,a5,800024e0 <_ZN5Riscv14handleSyscallsEv+0x88>
        console_handler();
        return;
    }

    if (scause != 8 && scause != 9) {
    80002480:	ff848793          	addi	a5,s1,-8
    80002484:	00100713          	li	a4,1
    80002488:	06f76263          	bltu	a4,a5,800024ec <_ZN5Riscv14handleSyscallsEv+0x94>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000248c:	141027f3          	csrr	a5,sepc
    80002490:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002494:	fc843783          	ld	a5,-56(s0)
        printInt(scause);
        printString("\n");
        return;
    }

    uint64 volatile sepc = r_sepc() + 4;
    80002498:	00478793          	addi	a5,a5,4
    8000249c:	fcf43c23          	sd	a5,-40(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024a0:	100027f3          	csrr	a5,sstatus
    800024a4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800024a8:	fc043783          	ld	a5,-64(s0)
    uint64 volatile sstatus = r_sstatus();
    800024ac:	fcf43823          	sd	a5,-48(s0)
}

inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800024b0:	00050793          	mv	a5,a0
    800024b4:	faf43c23          	sd	a5,-72(s0)
    return a0;
    800024b8:	fb843783          	ld	a5,-72(s0)

    uint64 codeOperation = Riscv::r_a0();
    int returnValue;
    ABI::Semaphore* semHandlePtr;
    switch (codeOperation) {
    800024bc:	04200713          	li	a4,66
    800024c0:	0cf76863          	bltu	a4,a5,80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
    800024c4:	00279793          	slli	a5,a5,0x2
    800024c8:	00007717          	auipc	a4,0x7
    800024cc:	bb070713          	addi	a4,a4,-1104 # 80009078 <CONSOLE_STATUS+0x68>
    800024d0:	00e787b3          	add	a5,a5,a4
    800024d4:	0007a783          	lw	a5,0(a5)
    800024d8:	00e787b3          	add	a5,a5,a4
    800024dc:	00078067          	jr	a5
        console_handler();
    800024e0:	00006097          	auipc	ra,0x6
    800024e4:	f70080e7          	jalr	-144(ra) # 80008450 <console_handler>
        return;
    800024e8:	0b80006f          	j	800025a0 <_ZN5Riscv14handleSyscallsEv+0x148>
        printString("ERROR! SCAUSE: ");
    800024ec:	00007517          	auipc	a0,0x7
    800024f0:	b7c50513          	addi	a0,a0,-1156 # 80009068 <CONSOLE_STATUS+0x58>
    800024f4:	00003097          	auipc	ra,0x3
    800024f8:	bdc080e7          	jalr	-1060(ra) # 800050d0 <_Z11printStringPKc>
        printInt(scause);
    800024fc:	00000613          	li	a2,0
    80002500:	00a00593          	li	a1,10
    80002504:	0004851b          	sext.w	a0,s1
    80002508:	00003097          	auipc	ra,0x3
    8000250c:	d78080e7          	jalr	-648(ra) # 80005280 <_Z8printIntiii>
        printString("\n");
    80002510:	00007517          	auipc	a0,0x7
    80002514:	fd050513          	addi	a0,a0,-48 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80002518:	00003097          	auipc	ra,0x3
    8000251c:	bb8080e7          	jalr	-1096(ra) # 800050d0 <_Z11printStringPKc>
        return;
    80002520:	0800006f          	j	800025a0 <_ZN5Riscv14handleSyscallsEv+0x148>
        case 0x01:
            // mem_alloc(size)

            size_t size;
            void *ptr;
            __asm__ volatile("mv %0, a1" : "=r" (size));
    80002524:	00058593          	mv	a1,a1
    80002528:	00009797          	auipc	a5,0x9
    8000252c:	0407c783          	lbu	a5,64(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002530:	04079263          	bnez	a5,80002574 <_ZN5Riscv14handleSyscallsEv+0x11c>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002534:	00009797          	auipc	a5,0x9
    80002538:	fbc7b783          	ld	a5,-68(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000253c:	0007b783          	ld	a5,0(a5)
    80002540:	00009717          	auipc	a4,0x9
    80002544:	03070713          	addi	a4,a4,48 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002548:	00f73023          	sd	a5,0(a4)
    8000254c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002550:	00009717          	auipc	a4,0x9
    80002554:	fb873703          	ld	a4,-72(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002558:	00073703          	ld	a4,0(a4)
    8000255c:	40f70733          	sub	a4,a4,a5
    80002560:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002564:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002568:	00100793          	li	a5,1
    8000256c:	00009717          	auipc	a4,0x9
    80002570:	fef70e23          	sb	a5,-4(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            ptr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);
    80002574:	00659593          	slli	a1,a1,0x6
    80002578:	00009517          	auipc	a0,0x9
    8000257c:	ff850513          	addi	a0,a0,-8 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002580:	00000097          	auipc	ra,0x0
    80002584:	42c080e7          	jalr	1068(ra) # 800029ac <_ZN15MemoryAllocator9mem_allocEm>

            __asm__ volatile("mv t0, %0" : : "r"(ptr));
    80002588:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    8000258c:	04542823          	sw	t0,80(s0)
            __asm__ volatile ("mv %0, a1" : "=r" (c));
            __putc(c);
            break;
    }

    w_sstatus(sstatus);
    80002590:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002594:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    80002598:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000259c:	14179073          	csrw	sepc,a5
    800025a0:	04813083          	ld	ra,72(sp)
    800025a4:	04013403          	ld	s0,64(sp)
    800025a8:	03813483          	ld	s1,56(sp)
    800025ac:	05010113          	addi	sp,sp,80
    800025b0:	00008067          	ret
            __asm__ volatile("mv %0, a1" : "=r" (memptr));
    800025b4:	00058593          	mv	a1,a1
    800025b8:	00009797          	auipc	a5,0x9
    800025bc:	fb07c783          	lbu	a5,-80(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800025c0:	04079263          	bnez	a5,80002604 <_ZN5Riscv14handleSyscallsEv+0x1ac>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800025c4:	00009797          	auipc	a5,0x9
    800025c8:	f2c7b783          	ld	a5,-212(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025cc:	0007b783          	ld	a5,0(a5)
    800025d0:	00009717          	auipc	a4,0x9
    800025d4:	fa070713          	addi	a4,a4,-96 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800025d8:	00f73023          	sd	a5,0(a4)
    800025dc:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800025e0:	00009717          	auipc	a4,0x9
    800025e4:	f2873703          	ld	a4,-216(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    800025e8:	00073703          	ld	a4,0(a4)
    800025ec:	40f70733          	sub	a4,a4,a5
    800025f0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800025f4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800025f8:	00100793          	li	a5,1
    800025fc:	00009717          	auipc	a4,0x9
    80002600:	f6f70623          	sb	a5,-148(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_free(memptr);
    80002604:	00009517          	auipc	a0,0x9
    80002608:	f6c50513          	addi	a0,a0,-148 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	4f0080e7          	jalr	1264(ra) # 80002afc <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    80002614:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002618:	04542823          	sw	t0,80(s0)
            break;
    8000261c:	f75ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
    80002620:	00009797          	auipc	a5,0x9
    80002624:	f487c783          	lbu	a5,-184(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002628:	04079263          	bnez	a5,8000266c <_ZN5Riscv14handleSyscallsEv+0x214>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000262c:	00009797          	auipc	a5,0x9
    80002630:	ec47b783          	ld	a5,-316(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002634:	0007b783          	ld	a5,0(a5)
    80002638:	00009717          	auipc	a4,0x9
    8000263c:	f3870713          	addi	a4,a4,-200 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002640:	00f73023          	sd	a5,0(a4)
    80002644:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002648:	00009717          	auipc	a4,0x9
    8000264c:	ec073703          	ld	a4,-320(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002650:	00073703          	ld	a4,0(a4)
    80002654:	40f70733          	sub	a4,a4,a5
    80002658:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000265c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002660:	00100793          	li	a5,1
    80002664:	00009717          	auipc	a4,0x9
    80002668:	f0f70223          	sb	a5,-252(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_get_free_space();
    8000266c:	00009517          	auipc	a0,0x9
    80002670:	f0450513          	addi	a0,a0,-252 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002674:	00000097          	auipc	ra,0x0
    80002678:	574080e7          	jalr	1396(ra) # 80002be8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
            __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    8000267c:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002680:	04542823          	sw	t0,80(s0)
            break;
    80002684:	f0dff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
    80002688:	00009797          	auipc	a5,0x9
    8000268c:	ee07c783          	lbu	a5,-288(a5) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002690:	04079263          	bnez	a5,800026d4 <_ZN5Riscv14handleSyscallsEv+0x27c>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002694:	00009797          	auipc	a5,0x9
    80002698:	e5c7b783          	ld	a5,-420(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000269c:	0007b783          	ld	a5,0(a5)
    800026a0:	00009717          	auipc	a4,0x9
    800026a4:	ed070713          	addi	a4,a4,-304 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026a8:	00f73023          	sd	a5,0(a4)
    800026ac:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800026b0:	00009717          	auipc	a4,0x9
    800026b4:	e5873703          	ld	a4,-424(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x20>
    800026b8:	00073703          	ld	a4,0(a4)
    800026bc:	40f70733          	sub	a4,a4,a5
    800026c0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800026c4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800026c8:	00100793          	li	a5,1
    800026cc:	00009717          	auipc	a4,0x9
    800026d0:	e8f70e23          	sb	a5,-356(a4) # 8000b568 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_get_largest_free_block();
    800026d4:	00009517          	auipc	a0,0x9
    800026d8:	e9c50513          	addi	a0,a0,-356 # 8000b570 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	540080e7          	jalr	1344(ra) # 80002c1c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
            __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    800026e4:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800026e8:	04542823          	sw	t0,80(s0)
            break;
    800026ec:	ea5ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
            __asm__ volatile ("mv %0, a1" : "=r" (thread));
    800026f0:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    800026f4:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %0, a7" : "=r" (arg));
    800026f8:	00088593          	mv	a1,a7
            *thread = CCB::createCoroutine(body, arg);
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	794080e7          	jalr	1940(ra) # 80001e90 <_ZN3CCB15createCoroutineEPFvPvES0_>
    80002704:	00a4b023          	sd	a0,0(s1)
            if (*thread != nullptr) {
    80002708:	00050863          	beqz	a0,80002718 <_ZN5Riscv14handleSyscallsEv+0x2c0>
                __asm__ volatile ("li t0, 0");
    8000270c:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002710:	04542823          	sw	t0,80(s0)
    80002714:	e7dff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
                __asm__ volatile ("li t0, -1");
    80002718:	fff00293          	li	t0,-1
                __asm__ volatile ("sw t0, 80(x8)");
    8000271c:	04542823          	sw	t0,80(s0)
    80002720:	e71ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
            CCB::running->setFinished(true);
    80002724:	00009797          	auipc	a5,0x9
    80002728:	ddc7b783          	ld	a5,-548(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000272c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002730:	00100713          	li	a4,1
    80002734:	02e78023          	sb	a4,32(a5)
            CCB::dispatch();
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	8d8080e7          	jalr	-1832(ra) # 80002010 <_ZN3CCB8dispatchEv>
            __asm__ volatile ("li t0, 0");
    80002740:	00000293          	li	t0,0
            __asm__ volatile ("sw t0, 80(x8)");
    80002744:	04542823          	sw	t0,80(s0)
            break;
    80002748:	e49ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
            CCB::dispatch();
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	8c4080e7          	jalr	-1852(ra) # 80002010 <_ZN3CCB8dispatchEv>
            break;
    80002754:	e3dff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
            __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002758:	00060513          	mv	a0,a2
    8000275c:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002760:	00058493          	mv	s1,a1
            *semHandle = ABI::Semaphore::createSemaphore(init);
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	1c8080e7          	jalr	456(ra) # 8000192c <_ZN3ABI9Semaphore15createSemaphoreEj>
    8000276c:	00a4b023          	sd	a0,0(s1)
            if (*semHandle != nullptr) {
    80002770:	00050863          	beqz	a0,80002780 <_ZN5Riscv14handleSyscallsEv+0x328>
                __asm__ volatile ("li t0, 0");
    80002774:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002778:	04542823          	sw	t0,80(s0)
    8000277c:	e15ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
                __asm__ volatile ("li t0, -1");
    80002780:	fff00293          	li	t0,-1
                __asm__ volatile ("sw t0, 80(x8)");
    80002784:	04542823          	sw	t0,80(s0)
    80002788:	e09ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    8000278c:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr) {
    80002790:	00050c63          	beqz	a0,800027a8 <_ZN5Riscv14handleSyscallsEv+0x350>
                returnValue = semHandlePtr->close();
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	404080e7          	jalr	1028(ra) # 80001b98 <_ZN3ABI9Semaphore5closeEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    8000279c:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800027a0:	04542823          	sw	t0,80(s0)
            break;
    800027a4:	dedff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
            } else returnValue = -2;
    800027a8:	ffe00513          	li	a0,-2
    800027ac:	ff1ff06f          	j	8000279c <_ZN5Riscv14handleSyscallsEv+0x344>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800027b0:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr) {
    800027b4:	00050c63          	beqz	a0,800027cc <_ZN5Riscv14handleSyscallsEv+0x374>
                returnValue = semHandlePtr->wait();
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	21c080e7          	jalr	540(ra) # 800019d4 <_ZN3ABI9Semaphore4waitEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800027c0:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800027c4:	04542823          	sw	t0,80(s0)
            break;
    800027c8:	dc9ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
            } else returnValue = -2;
    800027cc:	ffe00513          	li	a0,-2
    800027d0:	ff1ff06f          	j	800027c0 <_ZN5Riscv14handleSyscallsEv+0x368>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800027d4:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr)
    800027d8:	00050c63          	beqz	a0,800027f0 <_ZN5Riscv14handleSyscallsEv+0x398>
                returnValue = semHandlePtr->signal();
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	230080e7          	jalr	560(ra) # 80001a0c <_ZN3ABI9Semaphore6signalEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800027e4:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800027e8:	04542823          	sw	t0,80(s0)
            break;
    800027ec:	da5ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
                returnValue = -2;
    800027f0:	ffe00513          	li	a0,-2
    800027f4:	ff1ff06f          	j	800027e4 <_ZN5Riscv14handleSyscallsEv+0x38c>
            returnValue = __getc();
    800027f8:	00006097          	auipc	ra,0x6
    800027fc:	c20080e7          	jalr	-992(ra) # 80008418 <__getc>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002800:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002804:	04542823          	sw	t0,80(s0)
            break;
    80002808:	d89ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>
            __asm__ volatile ("mv %0, a1" : "=r" (c));
    8000280c:	00058513          	mv	a0,a1
            __putc(c);
    80002810:	0ff57513          	andi	a0,a0,255
    80002814:	00006097          	auipc	ra,0x6
    80002818:	bc8080e7          	jalr	-1080(ra) # 800083dc <__putc>
            break;
    8000281c:	d75ff06f          	j	80002590 <_ZN5Riscv14handleSyscallsEv+0x138>

0000000080002820 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00813423          	sd	s0,8(sp)
    80002828:	01010413          	addi	s0,sp,16
    8000282c:	00100793          	li	a5,1
    80002830:	00f50863          	beq	a0,a5,80002840 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002834:	00813403          	ld	s0,8(sp)
    80002838:	01010113          	addi	sp,sp,16
    8000283c:	00008067          	ret
    80002840:	000107b7          	lui	a5,0x10
    80002844:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002848:	fef596e3          	bne	a1,a5,80002834 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    8000284c:	00009797          	auipc	a5,0x9
    80002850:	d3c78793          	addi	a5,a5,-708 # 8000b588 <_ZN9Scheduler19readyCoroutineQueueE>
    80002854:	0007b023          	sd	zero,0(a5)
    80002858:	0007b423          	sd	zero,8(a5)
    8000285c:	fd9ff06f          	j	80002834 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002860 <_ZN9Scheduler3getEv>:
{
    80002860:	fe010113          	addi	sp,sp,-32
    80002864:	00113c23          	sd	ra,24(sp)
    80002868:	00813823          	sd	s0,16(sp)
    8000286c:	00913423          	sd	s1,8(sp)
    80002870:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002874:	00009517          	auipc	a0,0x9
    80002878:	d1453503          	ld	a0,-748(a0) # 8000b588 <_ZN9Scheduler19readyCoroutineQueueE>
    8000287c:	04050263          	beqz	a0,800028c0 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002880:	00853783          	ld	a5,8(a0)
    80002884:	00009717          	auipc	a4,0x9
    80002888:	d0f73223          	sd	a5,-764(a4) # 8000b588 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    8000288c:	02078463          	beqz	a5,800028b4 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002890:	00053483          	ld	s1,0(a0)
        delete elem;
    80002894:	fffff097          	auipc	ra,0xfffff
    80002898:	4fc080e7          	jalr	1276(ra) # 80001d90 <_ZdlPv>
}
    8000289c:	00048513          	mv	a0,s1
    800028a0:	01813083          	ld	ra,24(sp)
    800028a4:	01013403          	ld	s0,16(sp)
    800028a8:	00813483          	ld	s1,8(sp)
    800028ac:	02010113          	addi	sp,sp,32
    800028b0:	00008067          	ret
        if (!head) { tail = 0; }
    800028b4:	00009797          	auipc	a5,0x9
    800028b8:	cc07be23          	sd	zero,-804(a5) # 8000b590 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800028bc:	fd5ff06f          	j	80002890 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800028c0:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800028c4:	fd9ff06f          	j	8000289c <_ZN9Scheduler3getEv+0x3c>

00000000800028c8 <_ZN9Scheduler3putEP3CCB>:
{
    800028c8:	fe010113          	addi	sp,sp,-32
    800028cc:	00113c23          	sd	ra,24(sp)
    800028d0:	00813823          	sd	s0,16(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	02010413          	addi	s0,sp,32
    800028dc:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800028e0:	01000513          	li	a0,16
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	3ac080e7          	jalr	940(ra) # 80001c90 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800028ec:	00953023          	sd	s1,0(a0)
    800028f0:	00053423          	sd	zero,8(a0)
        if (tail)
    800028f4:	00009797          	auipc	a5,0x9
    800028f8:	c9c7b783          	ld	a5,-868(a5) # 8000b590 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800028fc:	02078263          	beqz	a5,80002920 <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    80002900:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002904:	00009797          	auipc	a5,0x9
    80002908:	c8a7b623          	sd	a0,-884(a5) # 8000b590 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000290c:	01813083          	ld	ra,24(sp)
    80002910:	01013403          	ld	s0,16(sp)
    80002914:	00813483          	ld	s1,8(sp)
    80002918:	02010113          	addi	sp,sp,32
    8000291c:	00008067          	ret
            head = tail = elem;
    80002920:	00009797          	auipc	a5,0x9
    80002924:	c6878793          	addi	a5,a5,-920 # 8000b588 <_ZN9Scheduler19readyCoroutineQueueE>
    80002928:	00a7b423          	sd	a0,8(a5)
    8000292c:	00a7b023          	sd	a0,0(a5)
    80002930:	fddff06f          	j	8000290c <_ZN9Scheduler3putEP3CCB+0x44>

0000000080002934 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00113423          	sd	ra,8(sp)
    8000293c:	00813023          	sd	s0,0(sp)
    80002940:	01010413          	addi	s0,sp,16
    80002944:	000105b7          	lui	a1,0x10
    80002948:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000294c:	00100513          	li	a0,1
    80002950:	00000097          	auipc	ra,0x0
    80002954:	ed0080e7          	jalr	-304(ra) # 80002820 <_Z41__static_initialization_and_destruction_0ii>
    80002958:	00813083          	ld	ra,8(sp)
    8000295c:	00013403          	ld	s0,0(sp)
    80002960:	01010113          	addi	sp,sp,16
    80002964:	00008067          	ret

0000000080002968 <main>:
#include "../lib/console.h"

extern void userMain();

int main()
{
    80002968:	ff010113          	addi	sp,sp,-16
    8000296c:	00113423          	sd	ra,8(sp)
    80002970:	00813023          	sd	s0,0(sp)
    80002974:	01010413          	addi	s0,sp,16
    Riscv::w_stvec((uint64) &Riscv::stvecTrap | 0b01);
    80002978:	00009797          	auipc	a5,0x9
    8000297c:	b987b783          	ld	a5,-1128(a5) # 8000b510 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002980:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002984:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002988:	00200793          	li	a5,2
    8000298c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    //userMain();
    __getc();
    80002990:	00006097          	auipc	ra,0x6
    80002994:	a88080e7          	jalr	-1400(ra) # 80008418 <__getc>
    return 0;
    80002998:	00000513          	li	a0,0
    8000299c:	00813083          	ld	ra,8(sp)
    800029a0:	00013403          	ld	s0,0(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00813423          	sd	s0,8(sp)
    800029b4:	01010413          	addi	s0,sp,16
    800029b8:	00050613          	mv	a2,a0
    size += sizeof(Header);
    800029bc:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    800029c0:	fc05f713          	andi	a4,a1,-64
    800029c4:	03f5f593          	andi	a1,a1,63
    800029c8:	00058463          	beqz	a1,800029d0 <_ZN15MemoryAllocator9mem_allocEm+0x24>
    800029cc:	04000593          	li	a1,64
    800029d0:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    800029d4:	00063503          	ld	a0,0(a2)
    Header *cur, *prev = nullptr;
    800029d8:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    800029dc:	00050c63          	beqz	a0,800029f4 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    800029e0:	00853783          	ld	a5,8(a0)
    800029e4:	00e7f863          	bgeu	a5,a4,800029f4 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    800029e8:	00050693          	mv	a3,a0
    800029ec:	00053503          	ld	a0,0(a0)
    800029f0:	fedff06f          	j	800029dc <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    800029f4:	08050a63          	beqz	a0,80002a88 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    800029f8:	00853783          	ld	a5,8(a0)
    800029fc:	04e78a63          	beq	a5,a4,80002a50 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    80002a00:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    80002a04:	06068463          	beqz	a3,80002a6c <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002a08:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    80002a0c:	00053683          	ld	a3,0(a0)
    80002a10:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    80002a14:	00853683          	ld	a3,8(a0)
    80002a18:	40e686b3          	sub	a3,a3,a4
    80002a1c:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    80002a20:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    80002a24:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    80002a28:	00863683          	ld	a3,8(a2)
    80002a2c:	04068463          	beqz	a3,80002a74 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002a30:	00068793          	mv	a5,a3
    80002a34:	00078713          	mv	a4,a5
    80002a38:	0007b783          	ld	a5,0(a5)
    80002a3c:	00078463          	beqz	a5,80002a44 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80002a40:	fea7eae3          	bltu	a5,a0,80002a34 <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    80002a44:	02070a63          	beqz	a4,80002a78 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002a48:	00f53023          	sd	a5,0(a0)
    80002a4c:	0300006f          	j	80002a7c <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    80002a50:	00068863          	beqz	a3,80002a60 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002a54:	00053783          	ld	a5,0(a0)
    80002a58:	00f6b023          	sd	a5,0(a3)
    80002a5c:	fc5ff06f          	j	80002a20 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    80002a60:	00053783          	ld	a5,0(a0)
    80002a64:	00f63023          	sd	a5,0(a2)
    80002a68:	fb9ff06f          	j	80002a20 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002a6c:	00f63023          	sd	a5,0(a2)
    80002a70:	f9dff06f          	j	80002a0c <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002a74:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    80002a78:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002a7c:	00070c63          	beqz	a4,80002a94 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002a80:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002a84:	01050513          	addi	a0,a0,16
}
    80002a88:	00813403          	ld	s0,8(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret
    else alloc_head = target;
    80002a94:	00a63423          	sd	a0,8(a2)
    80002a98:	fedff06f          	j	80002a84 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002a9c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00813423          	sd	s0,8(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    80002aa8:	04050263          	beqz	a0,80002aec <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002aac:	00053783          	ld	a5,0(a0)
    80002ab0:	04078263          	beqz	a5,80002af4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002ab4:	00853703          	ld	a4,8(a0)
    80002ab8:	00e506b3          	add	a3,a0,a4
    80002abc:	00d78a63          	beq	a5,a3,80002ad0 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    80002ac0:	00000513          	li	a0,0
}
    80002ac4:	00813403          	ld	s0,8(sp)
    80002ac8:	01010113          	addi	sp,sp,16
    80002acc:	00008067          	ret
        cur->size += cur->next->size;
    80002ad0:	0087b683          	ld	a3,8(a5)
    80002ad4:	00d70733          	add	a4,a4,a3
    80002ad8:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    80002adc:	0007b783          	ld	a5,0(a5)
    80002ae0:	00f53023          	sd	a5,0(a0)
        return 1;
    80002ae4:	00100513          	li	a0,1
    80002ae8:	fddff06f          	j	80002ac4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    80002aec:	00000513          	li	a0,0
    80002af0:	fd5ff06f          	j	80002ac4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    80002af4:	00000513          	li	a0,0
    80002af8:	fcdff06f          	j	80002ac4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

0000000080002afc <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    80002afc:	0c058a63          	beqz	a1,80002bd0 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002b00:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    80002b04:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002b08:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    80002b0c:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002b10:	00078a63          	beqz	a5,80002b24 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002b14:	00a7f863          	bgeu	a5,a0,80002b24 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002b18:	00078713          	mv	a4,a5
    80002b1c:	0007b783          	ld	a5,0(a5)
    80002b20:	ff1ff06f          	j	80002b10 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002b24:	0a078a63          	beqz	a5,80002bd8 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002b28:	0aa79c63          	bne	a5,a0,80002be0 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    80002b2c:	fe010113          	addi	sp,sp,-32
    80002b30:	00113c23          	sd	ra,24(sp)
    80002b34:	00813823          	sd	s0,16(sp)
    80002b38:	00913423          	sd	s1,8(sp)
    80002b3c:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    80002b40:	02070c63          	beqz	a4,80002b78 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    80002b44:	0007b783          	ld	a5,0(a5)
    80002b48:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002b4c:	0006b703          	ld	a4,0(a3)
    80002b50:	02070a63          	beqz	a4,80002b84 <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    80002b54:	02e56c63          	bltu	a0,a4,80002b8c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002b58:	00070793          	mv	a5,a4
    80002b5c:	00078493          	mv	s1,a5
    80002b60:	0007b783          	ld	a5,0(a5)
    80002b64:	00078463          	beqz	a5,80002b6c <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002b68:	fea7eae3          	bltu	a5,a0,80002b5c <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002b6c:	02048263          	beqz	s1,80002b90 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002b70:	fef5b823          	sd	a5,-16(a1)
    80002b74:	0200006f          	j	80002b94 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    80002b78:	0007b783          	ld	a5,0(a5)
    80002b7c:	00f6b423          	sd	a5,8(a3)
    80002b80:	fcdff06f          	j	80002b4c <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002b84:	00070493          	mv	s1,a4
    80002b88:	0080006f          	j	80002b90 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002b8c:	00000493          	li	s1,0
    else target->next = free_head;
    80002b90:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002b94:	02048a63          	beqz	s1,80002bc8 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002b98:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	f00080e7          	jalr	-256(ra) # 80002a9c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002ba4:	00048513          	mv	a0,s1
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	ef4080e7          	jalr	-268(ra) # 80002a9c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    80002bb0:	00000513          	li	a0,0
}
    80002bb4:	01813083          	ld	ra,24(sp)
    80002bb8:	01013403          	ld	s0,16(sp)
    80002bbc:	00813483          	ld	s1,8(sp)
    80002bc0:	02010113          	addi	sp,sp,32
    80002bc4:	00008067          	ret
    else free_head = target;
    80002bc8:	00a6b023          	sd	a0,0(a3)
    80002bcc:	fd1ff06f          	j	80002b9c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    80002bd0:	fff00513          	li	a0,-1
    80002bd4:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002bd8:	ffe00513          	li	a0,-2
    80002bdc:	00008067          	ret
    80002be0:	ffe00513          	li	a0,-2
}
    80002be4:	00008067          	ret

0000000080002be8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00813423          	sd	s0,8(sp)
    80002bf0:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002bf4:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002bf8:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002bfc:	00078a63          	beqz	a5,80002c10 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    80002c00:	0087b703          	ld	a4,8(a5)
    80002c04:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002c08:	0007b783          	ld	a5,0(a5)
    80002c0c:	ff1ff06f          	j	80002bfc <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    80002c10:	00813403          	ld	s0,8(sp)
    80002c14:	01010113          	addi	sp,sp,16
    80002c18:	00008067          	ret

0000000080002c1c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002c1c:	ff010113          	addi	sp,sp,-16
    80002c20:	00813423          	sd	s0,8(sp)
    80002c24:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002c28:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002c2c:	00000513          	li	a0,0
    80002c30:	0080006f          	j	80002c38 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002c34:	0007b783          	ld	a5,0(a5)
    80002c38:	00078a63          	beqz	a5,80002c4c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    80002c3c:	0087b703          	ld	a4,8(a5)
    80002c40:	fee57ae3          	bgeu	a0,a4,80002c34 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    80002c44:	00070513          	mv	a0,a4
    80002c48:	fedff06f          	j	80002c34 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    80002c4c:	00813403          	ld	s0,8(sp)
    80002c50:	01010113          	addi	sp,sp,16
    80002c54:	00008067          	ret

0000000080002c58 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002c58:	fe010113          	addi	sp,sp,-32
    80002c5c:	00113c23          	sd	ra,24(sp)
    80002c60:	00813823          	sd	s0,16(sp)
    80002c64:	00913423          	sd	s1,8(sp)
    80002c68:	01213023          	sd	s2,0(sp)
    80002c6c:	02010413          	addi	s0,sp,32
    80002c70:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002c74:	00000913          	li	s2,0
    80002c78:	00c0006f          	j	80002c84 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002c7c:	ffffe097          	auipc	ra,0xffffe
    80002c80:	70c080e7          	jalr	1804(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	804080e7          	jalr	-2044(ra) # 80001488 <_Z4getcv>
    80002c8c:	0005059b          	sext.w	a1,a0
    80002c90:	01b00793          	li	a5,27
    80002c94:	02f58a63          	beq	a1,a5,80002cc8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002c98:	0084b503          	ld	a0,8(s1)
    80002c9c:	00003097          	auipc	ra,0x3
    80002ca0:	3f4080e7          	jalr	1012(ra) # 80006090 <_ZN6Buffer3putEi>
        i++;
    80002ca4:	0019071b          	addiw	a4,s2,1
    80002ca8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002cac:	0004a683          	lw	a3,0(s1)
    80002cb0:	0026979b          	slliw	a5,a3,0x2
    80002cb4:	00d787bb          	addw	a5,a5,a3
    80002cb8:	0017979b          	slliw	a5,a5,0x1
    80002cbc:	02f767bb          	remw	a5,a4,a5
    80002cc0:	fc0792e3          	bnez	a5,80002c84 <_ZL16producerKeyboardPv+0x2c>
    80002cc4:	fb9ff06f          	j	80002c7c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002cc8:	00100793          	li	a5,1
    80002ccc:	00009717          	auipc	a4,0x9
    80002cd0:	8cf72623          	sw	a5,-1844(a4) # 8000b598 <_ZL9threadEnd>
    data->buffer->put('!');
    80002cd4:	02100593          	li	a1,33
    80002cd8:	0084b503          	ld	a0,8(s1)
    80002cdc:	00003097          	auipc	ra,0x3
    80002ce0:	3b4080e7          	jalr	948(ra) # 80006090 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002ce4:	0104b503          	ld	a0,16(s1)
    80002ce8:	ffffe097          	auipc	ra,0xffffe
    80002cec:	748080e7          	jalr	1864(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002cf0:	01813083          	ld	ra,24(sp)
    80002cf4:	01013403          	ld	s0,16(sp)
    80002cf8:	00813483          	ld	s1,8(sp)
    80002cfc:	00013903          	ld	s2,0(sp)
    80002d00:	02010113          	addi	sp,sp,32
    80002d04:	00008067          	ret

0000000080002d08 <_ZL8producerPv>:

static void producer(void *arg) {
    80002d08:	fe010113          	addi	sp,sp,-32
    80002d0c:	00113c23          	sd	ra,24(sp)
    80002d10:	00813823          	sd	s0,16(sp)
    80002d14:	00913423          	sd	s1,8(sp)
    80002d18:	01213023          	sd	s2,0(sp)
    80002d1c:	02010413          	addi	s0,sp,32
    80002d20:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002d24:	00000913          	li	s2,0
    80002d28:	00c0006f          	j	80002d34 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002d2c:	ffffe097          	auipc	ra,0xffffe
    80002d30:	65c080e7          	jalr	1628(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002d34:	00009797          	auipc	a5,0x9
    80002d38:	8647a783          	lw	a5,-1948(a5) # 8000b598 <_ZL9threadEnd>
    80002d3c:	02079e63          	bnez	a5,80002d78 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002d40:	0004a583          	lw	a1,0(s1)
    80002d44:	0305859b          	addiw	a1,a1,48
    80002d48:	0084b503          	ld	a0,8(s1)
    80002d4c:	00003097          	auipc	ra,0x3
    80002d50:	344080e7          	jalr	836(ra) # 80006090 <_ZN6Buffer3putEi>
        i++;
    80002d54:	0019071b          	addiw	a4,s2,1
    80002d58:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d5c:	0004a683          	lw	a3,0(s1)
    80002d60:	0026979b          	slliw	a5,a3,0x2
    80002d64:	00d787bb          	addw	a5,a5,a3
    80002d68:	0017979b          	slliw	a5,a5,0x1
    80002d6c:	02f767bb          	remw	a5,a4,a5
    80002d70:	fc0792e3          	bnez	a5,80002d34 <_ZL8producerPv+0x2c>
    80002d74:	fb9ff06f          	j	80002d2c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002d78:	0104b503          	ld	a0,16(s1)
    80002d7c:	ffffe097          	auipc	ra,0xffffe
    80002d80:	6b4080e7          	jalr	1716(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002d84:	01813083          	ld	ra,24(sp)
    80002d88:	01013403          	ld	s0,16(sp)
    80002d8c:	00813483          	ld	s1,8(sp)
    80002d90:	00013903          	ld	s2,0(sp)
    80002d94:	02010113          	addi	sp,sp,32
    80002d98:	00008067          	ret

0000000080002d9c <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002d9c:	fd010113          	addi	sp,sp,-48
    80002da0:	02113423          	sd	ra,40(sp)
    80002da4:	02813023          	sd	s0,32(sp)
    80002da8:	00913c23          	sd	s1,24(sp)
    80002dac:	01213823          	sd	s2,16(sp)
    80002db0:	01313423          	sd	s3,8(sp)
    80002db4:	03010413          	addi	s0,sp,48
    80002db8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002dbc:	00000993          	li	s3,0
    80002dc0:	01c0006f          	j	80002ddc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002dc4:	ffffe097          	auipc	ra,0xffffe
    80002dc8:	5c4080e7          	jalr	1476(ra) # 80001388 <_Z15thread_dispatchv>
    80002dcc:	0500006f          	j	80002e1c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002dd0:	00a00513          	li	a0,10
    80002dd4:	ffffe097          	auipc	ra,0xffffe
    80002dd8:	6dc080e7          	jalr	1756(ra) # 800014b0 <_Z4putcc>
    while (!threadEnd) {
    80002ddc:	00008797          	auipc	a5,0x8
    80002de0:	7bc7a783          	lw	a5,1980(a5) # 8000b598 <_ZL9threadEnd>
    80002de4:	06079063          	bnez	a5,80002e44 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002de8:	00893503          	ld	a0,8(s2)
    80002dec:	00003097          	auipc	ra,0x3
    80002df0:	334080e7          	jalr	820(ra) # 80006120 <_ZN6Buffer3getEv>
        i++;
    80002df4:	0019849b          	addiw	s1,s3,1
    80002df8:	0004899b          	sext.w	s3,s1
        putc(key);
    80002dfc:	0ff57513          	andi	a0,a0,255
    80002e00:	ffffe097          	auipc	ra,0xffffe
    80002e04:	6b0080e7          	jalr	1712(ra) # 800014b0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002e08:	00092703          	lw	a4,0(s2)
    80002e0c:	0027179b          	slliw	a5,a4,0x2
    80002e10:	00e787bb          	addw	a5,a5,a4
    80002e14:	02f4e7bb          	remw	a5,s1,a5
    80002e18:	fa0786e3          	beqz	a5,80002dc4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002e1c:	05000793          	li	a5,80
    80002e20:	02f4e4bb          	remw	s1,s1,a5
    80002e24:	fa049ce3          	bnez	s1,80002ddc <_ZL8consumerPv+0x40>
    80002e28:	fa9ff06f          	j	80002dd0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002e2c:	00893503          	ld	a0,8(s2)
    80002e30:	00003097          	auipc	ra,0x3
    80002e34:	2f0080e7          	jalr	752(ra) # 80006120 <_ZN6Buffer3getEv>
        putc(key);
    80002e38:	0ff57513          	andi	a0,a0,255
    80002e3c:	ffffe097          	auipc	ra,0xffffe
    80002e40:	674080e7          	jalr	1652(ra) # 800014b0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002e44:	00893503          	ld	a0,8(s2)
    80002e48:	00003097          	auipc	ra,0x3
    80002e4c:	364080e7          	jalr	868(ra) # 800061ac <_ZN6Buffer6getCntEv>
    80002e50:	fca04ee3          	bgtz	a0,80002e2c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002e54:	01093503          	ld	a0,16(s2)
    80002e58:	ffffe097          	auipc	ra,0xffffe
    80002e5c:	5d8080e7          	jalr	1496(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002e60:	02813083          	ld	ra,40(sp)
    80002e64:	02013403          	ld	s0,32(sp)
    80002e68:	01813483          	ld	s1,24(sp)
    80002e6c:	01013903          	ld	s2,16(sp)
    80002e70:	00813983          	ld	s3,8(sp)
    80002e74:	03010113          	addi	sp,sp,48
    80002e78:	00008067          	ret

0000000080002e7c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002e7c:	f9010113          	addi	sp,sp,-112
    80002e80:	06113423          	sd	ra,104(sp)
    80002e84:	06813023          	sd	s0,96(sp)
    80002e88:	04913c23          	sd	s1,88(sp)
    80002e8c:	05213823          	sd	s2,80(sp)
    80002e90:	05313423          	sd	s3,72(sp)
    80002e94:	05413023          	sd	s4,64(sp)
    80002e98:	03513c23          	sd	s5,56(sp)
    80002e9c:	03613823          	sd	s6,48(sp)
    80002ea0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002ea4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002ea8:	00006517          	auipc	a0,0x6
    80002eac:	2e050513          	addi	a0,a0,736 # 80009188 <CONSOLE_STATUS+0x178>
    80002eb0:	00002097          	auipc	ra,0x2
    80002eb4:	220080e7          	jalr	544(ra) # 800050d0 <_Z11printStringPKc>
    getString(input, 30);
    80002eb8:	01e00593          	li	a1,30
    80002ebc:	fa040493          	addi	s1,s0,-96
    80002ec0:	00048513          	mv	a0,s1
    80002ec4:	00002097          	auipc	ra,0x2
    80002ec8:	294080e7          	jalr	660(ra) # 80005158 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002ecc:	00048513          	mv	a0,s1
    80002ed0:	00002097          	auipc	ra,0x2
    80002ed4:	360080e7          	jalr	864(ra) # 80005230 <_Z11stringToIntPKc>
    80002ed8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002edc:	00006517          	auipc	a0,0x6
    80002ee0:	2cc50513          	addi	a0,a0,716 # 800091a8 <CONSOLE_STATUS+0x198>
    80002ee4:	00002097          	auipc	ra,0x2
    80002ee8:	1ec080e7          	jalr	492(ra) # 800050d0 <_Z11printStringPKc>
    getString(input, 30);
    80002eec:	01e00593          	li	a1,30
    80002ef0:	00048513          	mv	a0,s1
    80002ef4:	00002097          	auipc	ra,0x2
    80002ef8:	264080e7          	jalr	612(ra) # 80005158 <_Z9getStringPci>
    n = stringToInt(input);
    80002efc:	00048513          	mv	a0,s1
    80002f00:	00002097          	auipc	ra,0x2
    80002f04:	330080e7          	jalr	816(ra) # 80005230 <_Z11stringToIntPKc>
    80002f08:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002f0c:	00006517          	auipc	a0,0x6
    80002f10:	2bc50513          	addi	a0,a0,700 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80002f14:	00002097          	auipc	ra,0x2
    80002f18:	1bc080e7          	jalr	444(ra) # 800050d0 <_Z11printStringPKc>
    80002f1c:	00000613          	li	a2,0
    80002f20:	00a00593          	li	a1,10
    80002f24:	00090513          	mv	a0,s2
    80002f28:	00002097          	auipc	ra,0x2
    80002f2c:	358080e7          	jalr	856(ra) # 80005280 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002f30:	00006517          	auipc	a0,0x6
    80002f34:	2b050513          	addi	a0,a0,688 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80002f38:	00002097          	auipc	ra,0x2
    80002f3c:	198080e7          	jalr	408(ra) # 800050d0 <_Z11printStringPKc>
    80002f40:	00000613          	li	a2,0
    80002f44:	00a00593          	li	a1,10
    80002f48:	00048513          	mv	a0,s1
    80002f4c:	00002097          	auipc	ra,0x2
    80002f50:	334080e7          	jalr	820(ra) # 80005280 <_Z8printIntiii>
    printString(".\n");
    80002f54:	00006517          	auipc	a0,0x6
    80002f58:	2a450513          	addi	a0,a0,676 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80002f5c:	00002097          	auipc	ra,0x2
    80002f60:	174080e7          	jalr	372(ra) # 800050d0 <_Z11printStringPKc>
    if(threadNum > n) {
    80002f64:	0324c463          	blt	s1,s2,80002f8c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002f68:	03205c63          	blez	s2,80002fa0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002f6c:	03800513          	li	a0,56
    80002f70:	fffff097          	auipc	ra,0xfffff
    80002f74:	d20080e7          	jalr	-736(ra) # 80001c90 <_Znwm>
    80002f78:	00050a13          	mv	s4,a0
    80002f7c:	00048593          	mv	a1,s1
    80002f80:	00003097          	auipc	ra,0x3
    80002f84:	074080e7          	jalr	116(ra) # 80005ff4 <_ZN6BufferC1Ei>
    80002f88:	0300006f          	j	80002fb8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002f8c:	00006517          	auipc	a0,0x6
    80002f90:	27450513          	addi	a0,a0,628 # 80009200 <CONSOLE_STATUS+0x1f0>
    80002f94:	00002097          	auipc	ra,0x2
    80002f98:	13c080e7          	jalr	316(ra) # 800050d0 <_Z11printStringPKc>
        return;
    80002f9c:	0140006f          	j	80002fb0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002fa0:	00006517          	auipc	a0,0x6
    80002fa4:	2a050513          	addi	a0,a0,672 # 80009240 <CONSOLE_STATUS+0x230>
    80002fa8:	00002097          	auipc	ra,0x2
    80002fac:	128080e7          	jalr	296(ra) # 800050d0 <_Z11printStringPKc>
        return;
    80002fb0:	000b0113          	mv	sp,s6
    80002fb4:	1500006f          	j	80003104 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002fb8:	00000593          	li	a1,0
    80002fbc:	00008517          	auipc	a0,0x8
    80002fc0:	5e450513          	addi	a0,a0,1508 # 8000b5a0 <_ZL10waitForAll>
    80002fc4:	ffffe097          	auipc	ra,0xffffe
    80002fc8:	3e4080e7          	jalr	996(ra) # 800013a8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    thread_t threads[threadNum];
    80002fcc:	00391793          	slli	a5,s2,0x3
    80002fd0:	00f78793          	addi	a5,a5,15
    80002fd4:	ff07f793          	andi	a5,a5,-16
    80002fd8:	40f10133          	sub	sp,sp,a5
    80002fdc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002fe0:	0019071b          	addiw	a4,s2,1
    80002fe4:	00171793          	slli	a5,a4,0x1
    80002fe8:	00e787b3          	add	a5,a5,a4
    80002fec:	00379793          	slli	a5,a5,0x3
    80002ff0:	00f78793          	addi	a5,a5,15
    80002ff4:	ff07f793          	andi	a5,a5,-16
    80002ff8:	40f10133          	sub	sp,sp,a5
    80002ffc:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003000:	00191613          	slli	a2,s2,0x1
    80003004:	012607b3          	add	a5,a2,s2
    80003008:	00379793          	slli	a5,a5,0x3
    8000300c:	00f987b3          	add	a5,s3,a5
    80003010:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003014:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003018:	00008717          	auipc	a4,0x8
    8000301c:	58873703          	ld	a4,1416(a4) # 8000b5a0 <_ZL10waitForAll>
    80003020:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003024:	00078613          	mv	a2,a5
    80003028:	00000597          	auipc	a1,0x0
    8000302c:	d7458593          	addi	a1,a1,-652 # 80002d9c <_ZL8consumerPv>
    80003030:	f9840513          	addi	a0,s0,-104
    80003034:	ffffe097          	auipc	ra,0xffffe
    80003038:	2bc080e7          	jalr	700(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000303c:	00000493          	li	s1,0
    80003040:	0280006f          	j	80003068 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003044:	00000597          	auipc	a1,0x0
    80003048:	c1458593          	addi	a1,a1,-1004 # 80002c58 <_ZL16producerKeyboardPv>
                      data + i);
    8000304c:	00179613          	slli	a2,a5,0x1
    80003050:	00f60633          	add	a2,a2,a5
    80003054:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003058:	00c98633          	add	a2,s3,a2
    8000305c:	ffffe097          	auipc	ra,0xffffe
    80003060:	294080e7          	jalr	660(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003064:	0014849b          	addiw	s1,s1,1
    80003068:	0524d263          	bge	s1,s2,800030ac <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000306c:	00149793          	slli	a5,s1,0x1
    80003070:	009787b3          	add	a5,a5,s1
    80003074:	00379793          	slli	a5,a5,0x3
    80003078:	00f987b3          	add	a5,s3,a5
    8000307c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003080:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003084:	00008717          	auipc	a4,0x8
    80003088:	51c73703          	ld	a4,1308(a4) # 8000b5a0 <_ZL10waitForAll>
    8000308c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003090:	00048793          	mv	a5,s1
    80003094:	00349513          	slli	a0,s1,0x3
    80003098:	00aa8533          	add	a0,s5,a0
    8000309c:	fa9054e3          	blez	s1,80003044 <_Z22producerConsumer_C_APIv+0x1c8>
    800030a0:	00000597          	auipc	a1,0x0
    800030a4:	c6858593          	addi	a1,a1,-920 # 80002d08 <_ZL8producerPv>
    800030a8:	fa5ff06f          	j	8000304c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	2dc080e7          	jalr	732(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800030b4:	00000493          	li	s1,0
    800030b8:	00994e63          	blt	s2,s1,800030d4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800030bc:	00008517          	auipc	a0,0x8
    800030c0:	4e453503          	ld	a0,1252(a0) # 8000b5a0 <_ZL10waitForAll>
    800030c4:	ffffe097          	auipc	ra,0xffffe
    800030c8:	340080e7          	jalr	832(ra) # 80001404 <_Z8sem_waitPN3ABI9SemaphoreE>
    for (int i = 0; i <= threadNum; i++) {
    800030cc:	0014849b          	addiw	s1,s1,1
    800030d0:	fe9ff06f          	j	800030b8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800030d4:	00008517          	auipc	a0,0x8
    800030d8:	4cc53503          	ld	a0,1228(a0) # 8000b5a0 <_ZL10waitForAll>
    800030dc:	ffffe097          	auipc	ra,0xffffe
    800030e0:	2fc080e7          	jalr	764(ra) # 800013d8 <_Z9sem_closePN3ABI9SemaphoreE>
    delete buffer;
    800030e4:	000a0e63          	beqz	s4,80003100 <_Z22producerConsumer_C_APIv+0x284>
    800030e8:	000a0513          	mv	a0,s4
    800030ec:	00003097          	auipc	ra,0x3
    800030f0:	148080e7          	jalr	328(ra) # 80006234 <_ZN6BufferD1Ev>
    800030f4:	000a0513          	mv	a0,s4
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	c98080e7          	jalr	-872(ra) # 80001d90 <_ZdlPv>
    80003100:	000b0113          	mv	sp,s6

}
    80003104:	f9040113          	addi	sp,s0,-112
    80003108:	06813083          	ld	ra,104(sp)
    8000310c:	06013403          	ld	s0,96(sp)
    80003110:	05813483          	ld	s1,88(sp)
    80003114:	05013903          	ld	s2,80(sp)
    80003118:	04813983          	ld	s3,72(sp)
    8000311c:	04013a03          	ld	s4,64(sp)
    80003120:	03813a83          	ld	s5,56(sp)
    80003124:	03013b03          	ld	s6,48(sp)
    80003128:	07010113          	addi	sp,sp,112
    8000312c:	00008067          	ret
    80003130:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003134:	000a0513          	mv	a0,s4
    80003138:	fffff097          	auipc	ra,0xfffff
    8000313c:	c58080e7          	jalr	-936(ra) # 80001d90 <_ZdlPv>
    80003140:	00048513          	mv	a0,s1
    80003144:	00009097          	auipc	ra,0x9
    80003148:	574080e7          	jalr	1396(ra) # 8000c6b8 <_Unwind_Resume>

000000008000314c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00113c23          	sd	ra,24(sp)
    80003154:	00813823          	sd	s0,16(sp)
    80003158:	00913423          	sd	s1,8(sp)
    8000315c:	01213023          	sd	s2,0(sp)
    80003160:	02010413          	addi	s0,sp,32
    80003164:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003168:	00100793          	li	a5,1
    8000316c:	02a7f863          	bgeu	a5,a0,8000319c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003170:	00a00793          	li	a5,10
    80003174:	02f577b3          	remu	a5,a0,a5
    80003178:	02078e63          	beqz	a5,800031b4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000317c:	fff48513          	addi	a0,s1,-1
    80003180:	00000097          	auipc	ra,0x0
    80003184:	fcc080e7          	jalr	-52(ra) # 8000314c <_ZL9fibonaccim>
    80003188:	00050913          	mv	s2,a0
    8000318c:	ffe48513          	addi	a0,s1,-2
    80003190:	00000097          	auipc	ra,0x0
    80003194:	fbc080e7          	jalr	-68(ra) # 8000314c <_ZL9fibonaccim>
    80003198:	00a90533          	add	a0,s2,a0
}
    8000319c:	01813083          	ld	ra,24(sp)
    800031a0:	01013403          	ld	s0,16(sp)
    800031a4:	00813483          	ld	s1,8(sp)
    800031a8:	00013903          	ld	s2,0(sp)
    800031ac:	02010113          	addi	sp,sp,32
    800031b0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800031b4:	ffffe097          	auipc	ra,0xffffe
    800031b8:	1d4080e7          	jalr	468(ra) # 80001388 <_Z15thread_dispatchv>
    800031bc:	fc1ff06f          	j	8000317c <_ZL9fibonaccim+0x30>

00000000800031c0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800031c0:	fe010113          	addi	sp,sp,-32
    800031c4:	00113c23          	sd	ra,24(sp)
    800031c8:	00813823          	sd	s0,16(sp)
    800031cc:	00913423          	sd	s1,8(sp)
    800031d0:	01213023          	sd	s2,0(sp)
    800031d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800031d8:	00000913          	li	s2,0
    800031dc:	0380006f          	j	80003214 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	1a8080e7          	jalr	424(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800031e8:	00148493          	addi	s1,s1,1
    800031ec:	000027b7          	lui	a5,0x2
    800031f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800031f4:	0097ee63          	bltu	a5,s1,80003210 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800031f8:	00000713          	li	a4,0
    800031fc:	000077b7          	lui	a5,0x7
    80003200:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003204:	fce7eee3          	bltu	a5,a4,800031e0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003208:	00170713          	addi	a4,a4,1
    8000320c:	ff1ff06f          	j	800031fc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003210:	00190913          	addi	s2,s2,1
    80003214:	00900793          	li	a5,9
    80003218:	0527e063          	bltu	a5,s2,80003258 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000321c:	00006517          	auipc	a0,0x6
    80003220:	e0450513          	addi	a0,a0,-508 # 80009020 <CONSOLE_STATUS+0x10>
    80003224:	00002097          	auipc	ra,0x2
    80003228:	eac080e7          	jalr	-340(ra) # 800050d0 <_Z11printStringPKc>
    8000322c:	00000613          	li	a2,0
    80003230:	00a00593          	li	a1,10
    80003234:	0009051b          	sext.w	a0,s2
    80003238:	00002097          	auipc	ra,0x2
    8000323c:	048080e7          	jalr	72(ra) # 80005280 <_Z8printIntiii>
    80003240:	00006517          	auipc	a0,0x6
    80003244:	2a050513          	addi	a0,a0,672 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003248:	00002097          	auipc	ra,0x2
    8000324c:	e88080e7          	jalr	-376(ra) # 800050d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003250:	00000493          	li	s1,0
    80003254:	f99ff06f          	j	800031ec <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003258:	00006517          	auipc	a0,0x6
    8000325c:	01850513          	addi	a0,a0,24 # 80009270 <CONSOLE_STATUS+0x260>
    80003260:	00002097          	auipc	ra,0x2
    80003264:	e70080e7          	jalr	-400(ra) # 800050d0 <_Z11printStringPKc>
    finishedA = true;
    80003268:	00100793          	li	a5,1
    8000326c:	00008717          	auipc	a4,0x8
    80003270:	32f70e23          	sb	a5,828(a4) # 8000b5a8 <_ZL9finishedA>
}
    80003274:	01813083          	ld	ra,24(sp)
    80003278:	01013403          	ld	s0,16(sp)
    8000327c:	00813483          	ld	s1,8(sp)
    80003280:	00013903          	ld	s2,0(sp)
    80003284:	02010113          	addi	sp,sp,32
    80003288:	00008067          	ret

000000008000328c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800032a4:	00000913          	li	s2,0
    800032a8:	0380006f          	j	800032e0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	0dc080e7          	jalr	220(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800032b4:	00148493          	addi	s1,s1,1
    800032b8:	000027b7          	lui	a5,0x2
    800032bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800032c0:	0097ee63          	bltu	a5,s1,800032dc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800032c4:	00000713          	li	a4,0
    800032c8:	000077b7          	lui	a5,0x7
    800032cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800032d0:	fce7eee3          	bltu	a5,a4,800032ac <_ZN7WorkerB11workerBodyBEPv+0x20>
    800032d4:	00170713          	addi	a4,a4,1
    800032d8:	ff1ff06f          	j	800032c8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800032dc:	00190913          	addi	s2,s2,1
    800032e0:	00f00793          	li	a5,15
    800032e4:	0527e063          	bltu	a5,s2,80003324 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800032e8:	00006517          	auipc	a0,0x6
    800032ec:	d6850513          	addi	a0,a0,-664 # 80009050 <CONSOLE_STATUS+0x40>
    800032f0:	00002097          	auipc	ra,0x2
    800032f4:	de0080e7          	jalr	-544(ra) # 800050d0 <_Z11printStringPKc>
    800032f8:	00000613          	li	a2,0
    800032fc:	00a00593          	li	a1,10
    80003300:	0009051b          	sext.w	a0,s2
    80003304:	00002097          	auipc	ra,0x2
    80003308:	f7c080e7          	jalr	-132(ra) # 80005280 <_Z8printIntiii>
    8000330c:	00006517          	auipc	a0,0x6
    80003310:	1d450513          	addi	a0,a0,468 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003314:	00002097          	auipc	ra,0x2
    80003318:	dbc080e7          	jalr	-580(ra) # 800050d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000331c:	00000493          	li	s1,0
    80003320:	f99ff06f          	j	800032b8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003324:	00006517          	auipc	a0,0x6
    80003328:	f5c50513          	addi	a0,a0,-164 # 80009280 <CONSOLE_STATUS+0x270>
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	da4080e7          	jalr	-604(ra) # 800050d0 <_Z11printStringPKc>
    finishedB = true;
    80003334:	00100793          	li	a5,1
    80003338:	00008717          	auipc	a4,0x8
    8000333c:	26f708a3          	sb	a5,625(a4) # 8000b5a9 <_ZL9finishedB>
    thread_dispatch();
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	048080e7          	jalr	72(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003348:	01813083          	ld	ra,24(sp)
    8000334c:	01013403          	ld	s0,16(sp)
    80003350:	00813483          	ld	s1,8(sp)
    80003354:	00013903          	ld	s2,0(sp)
    80003358:	02010113          	addi	sp,sp,32
    8000335c:	00008067          	ret

0000000080003360 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00113c23          	sd	ra,24(sp)
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	01213023          	sd	s2,0(sp)
    80003374:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003378:	00000493          	li	s1,0
    8000337c:	0400006f          	j	800033bc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003380:	00006517          	auipc	a0,0x6
    80003384:	f1050513          	addi	a0,a0,-240 # 80009290 <CONSOLE_STATUS+0x280>
    80003388:	00002097          	auipc	ra,0x2
    8000338c:	d48080e7          	jalr	-696(ra) # 800050d0 <_Z11printStringPKc>
    80003390:	00000613          	li	a2,0
    80003394:	00a00593          	li	a1,10
    80003398:	00048513          	mv	a0,s1
    8000339c:	00002097          	auipc	ra,0x2
    800033a0:	ee4080e7          	jalr	-284(ra) # 80005280 <_Z8printIntiii>
    800033a4:	00006517          	auipc	a0,0x6
    800033a8:	13c50513          	addi	a0,a0,316 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800033ac:	00002097          	auipc	ra,0x2
    800033b0:	d24080e7          	jalr	-732(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800033b4:	0014849b          	addiw	s1,s1,1
    800033b8:	0ff4f493          	andi	s1,s1,255
    800033bc:	00200793          	li	a5,2
    800033c0:	fc97f0e3          	bgeu	a5,s1,80003380 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800033c4:	00006517          	auipc	a0,0x6
    800033c8:	ed450513          	addi	a0,a0,-300 # 80009298 <CONSOLE_STATUS+0x288>
    800033cc:	00002097          	auipc	ra,0x2
    800033d0:	d04080e7          	jalr	-764(ra) # 800050d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800033d4:	00700313          	li	t1,7
    thread_dispatch();
    800033d8:	ffffe097          	auipc	ra,0xffffe
    800033dc:	fb0080e7          	jalr	-80(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800033e0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800033e4:	00006517          	auipc	a0,0x6
    800033e8:	ec450513          	addi	a0,a0,-316 # 800092a8 <CONSOLE_STATUS+0x298>
    800033ec:	00002097          	auipc	ra,0x2
    800033f0:	ce4080e7          	jalr	-796(ra) # 800050d0 <_Z11printStringPKc>
    800033f4:	00000613          	li	a2,0
    800033f8:	00a00593          	li	a1,10
    800033fc:	0009051b          	sext.w	a0,s2
    80003400:	00002097          	auipc	ra,0x2
    80003404:	e80080e7          	jalr	-384(ra) # 80005280 <_Z8printIntiii>
    80003408:	00006517          	auipc	a0,0x6
    8000340c:	0d850513          	addi	a0,a0,216 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003410:	00002097          	auipc	ra,0x2
    80003414:	cc0080e7          	jalr	-832(ra) # 800050d0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003418:	00c00513          	li	a0,12
    8000341c:	00000097          	auipc	ra,0x0
    80003420:	d30080e7          	jalr	-720(ra) # 8000314c <_ZL9fibonaccim>
    80003424:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003428:	00006517          	auipc	a0,0x6
    8000342c:	e8850513          	addi	a0,a0,-376 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003430:	00002097          	auipc	ra,0x2
    80003434:	ca0080e7          	jalr	-864(ra) # 800050d0 <_Z11printStringPKc>
    80003438:	00000613          	li	a2,0
    8000343c:	00a00593          	li	a1,10
    80003440:	0009051b          	sext.w	a0,s2
    80003444:	00002097          	auipc	ra,0x2
    80003448:	e3c080e7          	jalr	-452(ra) # 80005280 <_Z8printIntiii>
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	09450513          	addi	a0,a0,148 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	c7c080e7          	jalr	-900(ra) # 800050d0 <_Z11printStringPKc>
    8000345c:	0400006f          	j	8000349c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003460:	00006517          	auipc	a0,0x6
    80003464:	e3050513          	addi	a0,a0,-464 # 80009290 <CONSOLE_STATUS+0x280>
    80003468:	00002097          	auipc	ra,0x2
    8000346c:	c68080e7          	jalr	-920(ra) # 800050d0 <_Z11printStringPKc>
    80003470:	00000613          	li	a2,0
    80003474:	00a00593          	li	a1,10
    80003478:	00048513          	mv	a0,s1
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	e04080e7          	jalr	-508(ra) # 80005280 <_Z8printIntiii>
    80003484:	00006517          	auipc	a0,0x6
    80003488:	05c50513          	addi	a0,a0,92 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000348c:	00002097          	auipc	ra,0x2
    80003490:	c44080e7          	jalr	-956(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003494:	0014849b          	addiw	s1,s1,1
    80003498:	0ff4f493          	andi	s1,s1,255
    8000349c:	00500793          	li	a5,5
    800034a0:	fc97f0e3          	bgeu	a5,s1,80003460 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800034a4:	00006517          	auipc	a0,0x6
    800034a8:	dcc50513          	addi	a0,a0,-564 # 80009270 <CONSOLE_STATUS+0x260>
    800034ac:	00002097          	auipc	ra,0x2
    800034b0:	c24080e7          	jalr	-988(ra) # 800050d0 <_Z11printStringPKc>
    finishedC = true;
    800034b4:	00100793          	li	a5,1
    800034b8:	00008717          	auipc	a4,0x8
    800034bc:	0ef70923          	sb	a5,242(a4) # 8000b5aa <_ZL9finishedC>
    thread_dispatch();
    800034c0:	ffffe097          	auipc	ra,0xffffe
    800034c4:	ec8080e7          	jalr	-312(ra) # 80001388 <_Z15thread_dispatchv>
}
    800034c8:	01813083          	ld	ra,24(sp)
    800034cc:	01013403          	ld	s0,16(sp)
    800034d0:	00813483          	ld	s1,8(sp)
    800034d4:	00013903          	ld	s2,0(sp)
    800034d8:	02010113          	addi	sp,sp,32
    800034dc:	00008067          	ret

00000000800034e0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800034e0:	fe010113          	addi	sp,sp,-32
    800034e4:	00113c23          	sd	ra,24(sp)
    800034e8:	00813823          	sd	s0,16(sp)
    800034ec:	00913423          	sd	s1,8(sp)
    800034f0:	01213023          	sd	s2,0(sp)
    800034f4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800034f8:	00a00493          	li	s1,10
    800034fc:	0400006f          	j	8000353c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003500:	00006517          	auipc	a0,0x6
    80003504:	dc050513          	addi	a0,a0,-576 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003508:	00002097          	auipc	ra,0x2
    8000350c:	bc8080e7          	jalr	-1080(ra) # 800050d0 <_Z11printStringPKc>
    80003510:	00000613          	li	a2,0
    80003514:	00a00593          	li	a1,10
    80003518:	00048513          	mv	a0,s1
    8000351c:	00002097          	auipc	ra,0x2
    80003520:	d64080e7          	jalr	-668(ra) # 80005280 <_Z8printIntiii>
    80003524:	00006517          	auipc	a0,0x6
    80003528:	fbc50513          	addi	a0,a0,-68 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	ba4080e7          	jalr	-1116(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003534:	0014849b          	addiw	s1,s1,1
    80003538:	0ff4f493          	andi	s1,s1,255
    8000353c:	00c00793          	li	a5,12
    80003540:	fc97f0e3          	bgeu	a5,s1,80003500 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003544:	00006517          	auipc	a0,0x6
    80003548:	d8450513          	addi	a0,a0,-636 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	b84080e7          	jalr	-1148(ra) # 800050d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003554:	00500313          	li	t1,5
    thread_dispatch();
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	e30080e7          	jalr	-464(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003560:	01000513          	li	a0,16
    80003564:	00000097          	auipc	ra,0x0
    80003568:	be8080e7          	jalr	-1048(ra) # 8000314c <_ZL9fibonaccim>
    8000356c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003570:	00006517          	auipc	a0,0x6
    80003574:	d6850513          	addi	a0,a0,-664 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	b58080e7          	jalr	-1192(ra) # 800050d0 <_Z11printStringPKc>
    80003580:	00000613          	li	a2,0
    80003584:	00a00593          	li	a1,10
    80003588:	0009051b          	sext.w	a0,s2
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	cf4080e7          	jalr	-780(ra) # 80005280 <_Z8printIntiii>
    80003594:	00006517          	auipc	a0,0x6
    80003598:	f4c50513          	addi	a0,a0,-180 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000359c:	00002097          	auipc	ra,0x2
    800035a0:	b34080e7          	jalr	-1228(ra) # 800050d0 <_Z11printStringPKc>
    800035a4:	0400006f          	j	800035e4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800035a8:	00006517          	auipc	a0,0x6
    800035ac:	d1850513          	addi	a0,a0,-744 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	b20080e7          	jalr	-1248(ra) # 800050d0 <_Z11printStringPKc>
    800035b8:	00000613          	li	a2,0
    800035bc:	00a00593          	li	a1,10
    800035c0:	00048513          	mv	a0,s1
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	cbc080e7          	jalr	-836(ra) # 80005280 <_Z8printIntiii>
    800035cc:	00006517          	auipc	a0,0x6
    800035d0:	f1450513          	addi	a0,a0,-236 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800035d4:	00002097          	auipc	ra,0x2
    800035d8:	afc080e7          	jalr	-1284(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800035dc:	0014849b          	addiw	s1,s1,1
    800035e0:	0ff4f493          	andi	s1,s1,255
    800035e4:	00f00793          	li	a5,15
    800035e8:	fc97f0e3          	bgeu	a5,s1,800035a8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800035ec:	00006517          	auipc	a0,0x6
    800035f0:	cfc50513          	addi	a0,a0,-772 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	adc080e7          	jalr	-1316(ra) # 800050d0 <_Z11printStringPKc>
    finishedD = true;
    800035fc:	00100793          	li	a5,1
    80003600:	00008717          	auipc	a4,0x8
    80003604:	faf705a3          	sb	a5,-85(a4) # 8000b5ab <_ZL9finishedD>
    thread_dispatch();
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	d80080e7          	jalr	-640(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003610:	01813083          	ld	ra,24(sp)
    80003614:	01013403          	ld	s0,16(sp)
    80003618:	00813483          	ld	s1,8(sp)
    8000361c:	00013903          	ld	s2,0(sp)
    80003620:	02010113          	addi	sp,sp,32
    80003624:	00008067          	ret

0000000080003628 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003628:	fc010113          	addi	sp,sp,-64
    8000362c:	02113c23          	sd	ra,56(sp)
    80003630:	02813823          	sd	s0,48(sp)
    80003634:	02913423          	sd	s1,40(sp)
    80003638:	03213023          	sd	s2,32(sp)
    8000363c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003640:	02000513          	li	a0,32
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	64c080e7          	jalr	1612(ra) # 80001c90 <_Znwm>
    8000364c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	cb4080e7          	jalr	-844(ra) # 80002304 <_ZN6ThreadC1Ev>
    80003658:	00008797          	auipc	a5,0x8
    8000365c:	cf878793          	addi	a5,a5,-776 # 8000b350 <_ZTV7WorkerA+0x10>
    80003660:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003664:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003668:	00006517          	auipc	a0,0x6
    8000366c:	c9050513          	addi	a0,a0,-880 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003670:	00002097          	auipc	ra,0x2
    80003674:	a60080e7          	jalr	-1440(ra) # 800050d0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003678:	02000513          	li	a0,32
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	614080e7          	jalr	1556(ra) # 80001c90 <_Znwm>
    80003684:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	c7c080e7          	jalr	-900(ra) # 80002304 <_ZN6ThreadC1Ev>
    80003690:	00008797          	auipc	a5,0x8
    80003694:	ce878793          	addi	a5,a5,-792 # 8000b378 <_ZTV7WorkerB+0x10>
    80003698:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000369c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800036a0:	00006517          	auipc	a0,0x6
    800036a4:	c7050513          	addi	a0,a0,-912 # 80009310 <CONSOLE_STATUS+0x300>
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	a28080e7          	jalr	-1496(ra) # 800050d0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800036b0:	02000513          	li	a0,32
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	5dc080e7          	jalr	1500(ra) # 80001c90 <_Znwm>
    800036bc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	c44080e7          	jalr	-956(ra) # 80002304 <_ZN6ThreadC1Ev>
    800036c8:	00008797          	auipc	a5,0x8
    800036cc:	cd878793          	addi	a5,a5,-808 # 8000b3a0 <_ZTV7WorkerC+0x10>
    800036d0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800036d4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800036d8:	00006517          	auipc	a0,0x6
    800036dc:	c5050513          	addi	a0,a0,-944 # 80009328 <CONSOLE_STATUS+0x318>
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	9f0080e7          	jalr	-1552(ra) # 800050d0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800036e8:	02000513          	li	a0,32
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	5a4080e7          	jalr	1444(ra) # 80001c90 <_Znwm>
    800036f4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	c0c080e7          	jalr	-1012(ra) # 80002304 <_ZN6ThreadC1Ev>
    80003700:	00008797          	auipc	a5,0x8
    80003704:	cc878793          	addi	a5,a5,-824 # 8000b3c8 <_ZTV7WorkerD+0x10>
    80003708:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000370c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003710:	00006517          	auipc	a0,0x6
    80003714:	c3050513          	addi	a0,a0,-976 # 80009340 <CONSOLE_STATUS+0x330>
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	9b8080e7          	jalr	-1608(ra) # 800050d0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003720:	00000493          	li	s1,0
    80003724:	00300793          	li	a5,3
    80003728:	0297c663          	blt	a5,s1,80003754 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000372c:	00349793          	slli	a5,s1,0x3
    80003730:	fe040713          	addi	a4,s0,-32
    80003734:	00f707b3          	add	a5,a4,a5
    80003738:	fe07b503          	ld	a0,-32(a5)
    8000373c:	fffff097          	auipc	ra,0xfffff
    80003740:	c0c080e7          	jalr	-1012(ra) # 80002348 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003744:	0014849b          	addiw	s1,s1,1
    80003748:	fddff06f          	j	80003724 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000374c:	fffff097          	auipc	ra,0xfffff
    80003750:	b58080e7          	jalr	-1192(ra) # 800022a4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003754:	00008797          	auipc	a5,0x8
    80003758:	e547c783          	lbu	a5,-428(a5) # 8000b5a8 <_ZL9finishedA>
    8000375c:	fe0788e3          	beqz	a5,8000374c <_Z20Threads_CPP_API_testv+0x124>
    80003760:	00008797          	auipc	a5,0x8
    80003764:	e497c783          	lbu	a5,-439(a5) # 8000b5a9 <_ZL9finishedB>
    80003768:	fe0782e3          	beqz	a5,8000374c <_Z20Threads_CPP_API_testv+0x124>
    8000376c:	00008797          	auipc	a5,0x8
    80003770:	e3e7c783          	lbu	a5,-450(a5) # 8000b5aa <_ZL9finishedC>
    80003774:	fc078ce3          	beqz	a5,8000374c <_Z20Threads_CPP_API_testv+0x124>
    80003778:	00008797          	auipc	a5,0x8
    8000377c:	e337c783          	lbu	a5,-461(a5) # 8000b5ab <_ZL9finishedD>
    80003780:	fc0786e3          	beqz	a5,8000374c <_Z20Threads_CPP_API_testv+0x124>
    80003784:	fc040493          	addi	s1,s0,-64
    80003788:	0080006f          	j	80003790 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000378c:	00848493          	addi	s1,s1,8
    80003790:	fe040793          	addi	a5,s0,-32
    80003794:	08f48663          	beq	s1,a5,80003820 <_Z20Threads_CPP_API_testv+0x1f8>
    80003798:	0004b503          	ld	a0,0(s1)
    8000379c:	fe0508e3          	beqz	a0,8000378c <_Z20Threads_CPP_API_testv+0x164>
    800037a0:	00053783          	ld	a5,0(a0)
    800037a4:	0087b783          	ld	a5,8(a5)
    800037a8:	000780e7          	jalr	a5
    800037ac:	fe1ff06f          	j	8000378c <_Z20Threads_CPP_API_testv+0x164>
    800037b0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800037b4:	00048513          	mv	a0,s1
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	5d8080e7          	jalr	1496(ra) # 80001d90 <_ZdlPv>
    800037c0:	00090513          	mv	a0,s2
    800037c4:	00009097          	auipc	ra,0x9
    800037c8:	ef4080e7          	jalr	-268(ra) # 8000c6b8 <_Unwind_Resume>
    800037cc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800037d0:	00048513          	mv	a0,s1
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	5bc080e7          	jalr	1468(ra) # 80001d90 <_ZdlPv>
    800037dc:	00090513          	mv	a0,s2
    800037e0:	00009097          	auipc	ra,0x9
    800037e4:	ed8080e7          	jalr	-296(ra) # 8000c6b8 <_Unwind_Resume>
    800037e8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800037ec:	00048513          	mv	a0,s1
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	5a0080e7          	jalr	1440(ra) # 80001d90 <_ZdlPv>
    800037f8:	00090513          	mv	a0,s2
    800037fc:	00009097          	auipc	ra,0x9
    80003800:	ebc080e7          	jalr	-324(ra) # 8000c6b8 <_Unwind_Resume>
    80003804:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003808:	00048513          	mv	a0,s1
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	584080e7          	jalr	1412(ra) # 80001d90 <_ZdlPv>
    80003814:	00090513          	mv	a0,s2
    80003818:	00009097          	auipc	ra,0x9
    8000381c:	ea0080e7          	jalr	-352(ra) # 8000c6b8 <_Unwind_Resume>
}
    80003820:	03813083          	ld	ra,56(sp)
    80003824:	03013403          	ld	s0,48(sp)
    80003828:	02813483          	ld	s1,40(sp)
    8000382c:	02013903          	ld	s2,32(sp)
    80003830:	04010113          	addi	sp,sp,64
    80003834:	00008067          	ret

0000000080003838 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003838:	ff010113          	addi	sp,sp,-16
    8000383c:	00113423          	sd	ra,8(sp)
    80003840:	00813023          	sd	s0,0(sp)
    80003844:	01010413          	addi	s0,sp,16
    80003848:	00008797          	auipc	a5,0x8
    8000384c:	b0878793          	addi	a5,a5,-1272 # 8000b350 <_ZTV7WorkerA+0x10>
    80003850:	00f53023          	sd	a5,0(a0)
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	8d4080e7          	jalr	-1836(ra) # 80002128 <_ZN6ThreadD1Ev>
    8000385c:	00813083          	ld	ra,8(sp)
    80003860:	00013403          	ld	s0,0(sp)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret

000000008000386c <_ZN7WorkerAD0Ev>:
    8000386c:	fe010113          	addi	sp,sp,-32
    80003870:	00113c23          	sd	ra,24(sp)
    80003874:	00813823          	sd	s0,16(sp)
    80003878:	00913423          	sd	s1,8(sp)
    8000387c:	02010413          	addi	s0,sp,32
    80003880:	00050493          	mv	s1,a0
    80003884:	00008797          	auipc	a5,0x8
    80003888:	acc78793          	addi	a5,a5,-1332 # 8000b350 <_ZTV7WorkerA+0x10>
    8000388c:	00f53023          	sd	a5,0(a0)
    80003890:	fffff097          	auipc	ra,0xfffff
    80003894:	898080e7          	jalr	-1896(ra) # 80002128 <_ZN6ThreadD1Ev>
    80003898:	00048513          	mv	a0,s1
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	4f4080e7          	jalr	1268(ra) # 80001d90 <_ZdlPv>
    800038a4:	01813083          	ld	ra,24(sp)
    800038a8:	01013403          	ld	s0,16(sp)
    800038ac:	00813483          	ld	s1,8(sp)
    800038b0:	02010113          	addi	sp,sp,32
    800038b4:	00008067          	ret

00000000800038b8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800038b8:	ff010113          	addi	sp,sp,-16
    800038bc:	00113423          	sd	ra,8(sp)
    800038c0:	00813023          	sd	s0,0(sp)
    800038c4:	01010413          	addi	s0,sp,16
    800038c8:	00008797          	auipc	a5,0x8
    800038cc:	ab078793          	addi	a5,a5,-1360 # 8000b378 <_ZTV7WorkerB+0x10>
    800038d0:	00f53023          	sd	a5,0(a0)
    800038d4:	fffff097          	auipc	ra,0xfffff
    800038d8:	854080e7          	jalr	-1964(ra) # 80002128 <_ZN6ThreadD1Ev>
    800038dc:	00813083          	ld	ra,8(sp)
    800038e0:	00013403          	ld	s0,0(sp)
    800038e4:	01010113          	addi	sp,sp,16
    800038e8:	00008067          	ret

00000000800038ec <_ZN7WorkerBD0Ev>:
    800038ec:	fe010113          	addi	sp,sp,-32
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	00813823          	sd	s0,16(sp)
    800038f8:	00913423          	sd	s1,8(sp)
    800038fc:	02010413          	addi	s0,sp,32
    80003900:	00050493          	mv	s1,a0
    80003904:	00008797          	auipc	a5,0x8
    80003908:	a7478793          	addi	a5,a5,-1420 # 8000b378 <_ZTV7WorkerB+0x10>
    8000390c:	00f53023          	sd	a5,0(a0)
    80003910:	fffff097          	auipc	ra,0xfffff
    80003914:	818080e7          	jalr	-2024(ra) # 80002128 <_ZN6ThreadD1Ev>
    80003918:	00048513          	mv	a0,s1
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	474080e7          	jalr	1140(ra) # 80001d90 <_ZdlPv>
    80003924:	01813083          	ld	ra,24(sp)
    80003928:	01013403          	ld	s0,16(sp)
    8000392c:	00813483          	ld	s1,8(sp)
    80003930:	02010113          	addi	sp,sp,32
    80003934:	00008067          	ret

0000000080003938 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003938:	ff010113          	addi	sp,sp,-16
    8000393c:	00113423          	sd	ra,8(sp)
    80003940:	00813023          	sd	s0,0(sp)
    80003944:	01010413          	addi	s0,sp,16
    80003948:	00008797          	auipc	a5,0x8
    8000394c:	a5878793          	addi	a5,a5,-1448 # 8000b3a0 <_ZTV7WorkerC+0x10>
    80003950:	00f53023          	sd	a5,0(a0)
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	7d4080e7          	jalr	2004(ra) # 80002128 <_ZN6ThreadD1Ev>
    8000395c:	00813083          	ld	ra,8(sp)
    80003960:	00013403          	ld	s0,0(sp)
    80003964:	01010113          	addi	sp,sp,16
    80003968:	00008067          	ret

000000008000396c <_ZN7WorkerCD0Ev>:
    8000396c:	fe010113          	addi	sp,sp,-32
    80003970:	00113c23          	sd	ra,24(sp)
    80003974:	00813823          	sd	s0,16(sp)
    80003978:	00913423          	sd	s1,8(sp)
    8000397c:	02010413          	addi	s0,sp,32
    80003980:	00050493          	mv	s1,a0
    80003984:	00008797          	auipc	a5,0x8
    80003988:	a1c78793          	addi	a5,a5,-1508 # 8000b3a0 <_ZTV7WorkerC+0x10>
    8000398c:	00f53023          	sd	a5,0(a0)
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	798080e7          	jalr	1944(ra) # 80002128 <_ZN6ThreadD1Ev>
    80003998:	00048513          	mv	a0,s1
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	3f4080e7          	jalr	1012(ra) # 80001d90 <_ZdlPv>
    800039a4:	01813083          	ld	ra,24(sp)
    800039a8:	01013403          	ld	s0,16(sp)
    800039ac:	00813483          	ld	s1,8(sp)
    800039b0:	02010113          	addi	sp,sp,32
    800039b4:	00008067          	ret

00000000800039b8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800039b8:	ff010113          	addi	sp,sp,-16
    800039bc:	00113423          	sd	ra,8(sp)
    800039c0:	00813023          	sd	s0,0(sp)
    800039c4:	01010413          	addi	s0,sp,16
    800039c8:	00008797          	auipc	a5,0x8
    800039cc:	a0078793          	addi	a5,a5,-1536 # 8000b3c8 <_ZTV7WorkerD+0x10>
    800039d0:	00f53023          	sd	a5,0(a0)
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	754080e7          	jalr	1876(ra) # 80002128 <_ZN6ThreadD1Ev>
    800039dc:	00813083          	ld	ra,8(sp)
    800039e0:	00013403          	ld	s0,0(sp)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret

00000000800039ec <_ZN7WorkerDD0Ev>:
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00113c23          	sd	ra,24(sp)
    800039f4:	00813823          	sd	s0,16(sp)
    800039f8:	00913423          	sd	s1,8(sp)
    800039fc:	02010413          	addi	s0,sp,32
    80003a00:	00050493          	mv	s1,a0
    80003a04:	00008797          	auipc	a5,0x8
    80003a08:	9c478793          	addi	a5,a5,-1596 # 8000b3c8 <_ZTV7WorkerD+0x10>
    80003a0c:	00f53023          	sd	a5,0(a0)
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	718080e7          	jalr	1816(ra) # 80002128 <_ZN6ThreadD1Ev>
    80003a18:	00048513          	mv	a0,s1
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	374080e7          	jalr	884(ra) # 80001d90 <_ZdlPv>
    80003a24:	01813083          	ld	ra,24(sp)
    80003a28:	01013403          	ld	s0,16(sp)
    80003a2c:	00813483          	ld	s1,8(sp)
    80003a30:	02010113          	addi	sp,sp,32
    80003a34:	00008067          	ret

0000000080003a38 <_ZN7WorkerA3runEv>:
    void run() override {
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00113423          	sd	ra,8(sp)
    80003a40:	00813023          	sd	s0,0(sp)
    80003a44:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003a48:	00000593          	li	a1,0
    80003a4c:	fffff097          	auipc	ra,0xfffff
    80003a50:	774080e7          	jalr	1908(ra) # 800031c0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003a54:	00813083          	ld	ra,8(sp)
    80003a58:	00013403          	ld	s0,0(sp)
    80003a5c:	01010113          	addi	sp,sp,16
    80003a60:	00008067          	ret

0000000080003a64 <_ZN7WorkerB3runEv>:
    void run() override {
    80003a64:	ff010113          	addi	sp,sp,-16
    80003a68:	00113423          	sd	ra,8(sp)
    80003a6c:	00813023          	sd	s0,0(sp)
    80003a70:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003a74:	00000593          	li	a1,0
    80003a78:	00000097          	auipc	ra,0x0
    80003a7c:	814080e7          	jalr	-2028(ra) # 8000328c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003a80:	00813083          	ld	ra,8(sp)
    80003a84:	00013403          	ld	s0,0(sp)
    80003a88:	01010113          	addi	sp,sp,16
    80003a8c:	00008067          	ret

0000000080003a90 <_ZN7WorkerC3runEv>:
    void run() override {
    80003a90:	ff010113          	addi	sp,sp,-16
    80003a94:	00113423          	sd	ra,8(sp)
    80003a98:	00813023          	sd	s0,0(sp)
    80003a9c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003aa0:	00000593          	li	a1,0
    80003aa4:	00000097          	auipc	ra,0x0
    80003aa8:	8bc080e7          	jalr	-1860(ra) # 80003360 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003aac:	00813083          	ld	ra,8(sp)
    80003ab0:	00013403          	ld	s0,0(sp)
    80003ab4:	01010113          	addi	sp,sp,16
    80003ab8:	00008067          	ret

0000000080003abc <_ZN7WorkerD3runEv>:
    void run() override {
    80003abc:	ff010113          	addi	sp,sp,-16
    80003ac0:	00113423          	sd	ra,8(sp)
    80003ac4:	00813023          	sd	s0,0(sp)
    80003ac8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003acc:	00000593          	li	a1,0
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	a10080e7          	jalr	-1520(ra) # 800034e0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003ad8:	00813083          	ld	ra,8(sp)
    80003adc:	00013403          	ld	s0,0(sp)
    80003ae0:	01010113          	addi	sp,sp,16
    80003ae4:	00008067          	ret

0000000080003ae8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003ae8:	f8010113          	addi	sp,sp,-128
    80003aec:	06113c23          	sd	ra,120(sp)
    80003af0:	06813823          	sd	s0,112(sp)
    80003af4:	06913423          	sd	s1,104(sp)
    80003af8:	07213023          	sd	s2,96(sp)
    80003afc:	05313c23          	sd	s3,88(sp)
    80003b00:	05413823          	sd	s4,80(sp)
    80003b04:	05513423          	sd	s5,72(sp)
    80003b08:	05613023          	sd	s6,64(sp)
    80003b0c:	03713c23          	sd	s7,56(sp)
    80003b10:	03813823          	sd	s8,48(sp)
    80003b14:	03913423          	sd	s9,40(sp)
    80003b18:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003b1c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003b20:	00005517          	auipc	a0,0x5
    80003b24:	66850513          	addi	a0,a0,1640 # 80009188 <CONSOLE_STATUS+0x178>
    80003b28:	00001097          	auipc	ra,0x1
    80003b2c:	5a8080e7          	jalr	1448(ra) # 800050d0 <_Z11printStringPKc>
    getString(input, 30);
    80003b30:	01e00593          	li	a1,30
    80003b34:	f8040493          	addi	s1,s0,-128
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	00001097          	auipc	ra,0x1
    80003b40:	61c080e7          	jalr	1564(ra) # 80005158 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b44:	00048513          	mv	a0,s1
    80003b48:	00001097          	auipc	ra,0x1
    80003b4c:	6e8080e7          	jalr	1768(ra) # 80005230 <_Z11stringToIntPKc>
    80003b50:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003b54:	00005517          	auipc	a0,0x5
    80003b58:	65450513          	addi	a0,a0,1620 # 800091a8 <CONSOLE_STATUS+0x198>
    80003b5c:	00001097          	auipc	ra,0x1
    80003b60:	574080e7          	jalr	1396(ra) # 800050d0 <_Z11printStringPKc>
    getString(input, 30);
    80003b64:	01e00593          	li	a1,30
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	5ec080e7          	jalr	1516(ra) # 80005158 <_Z9getStringPci>
    n = stringToInt(input);
    80003b74:	00048513          	mv	a0,s1
    80003b78:	00001097          	auipc	ra,0x1
    80003b7c:	6b8080e7          	jalr	1720(ra) # 80005230 <_Z11stringToIntPKc>
    80003b80:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003b84:	00005517          	auipc	a0,0x5
    80003b88:	64450513          	addi	a0,a0,1604 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	544080e7          	jalr	1348(ra) # 800050d0 <_Z11printStringPKc>
    printInt(threadNum);
    80003b94:	00000613          	li	a2,0
    80003b98:	00a00593          	li	a1,10
    80003b9c:	00098513          	mv	a0,s3
    80003ba0:	00001097          	auipc	ra,0x1
    80003ba4:	6e0080e7          	jalr	1760(ra) # 80005280 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003ba8:	00005517          	auipc	a0,0x5
    80003bac:	63850513          	addi	a0,a0,1592 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003bb0:	00001097          	auipc	ra,0x1
    80003bb4:	520080e7          	jalr	1312(ra) # 800050d0 <_Z11printStringPKc>
    printInt(n);
    80003bb8:	00000613          	li	a2,0
    80003bbc:	00a00593          	li	a1,10
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	00001097          	auipc	ra,0x1
    80003bc8:	6bc080e7          	jalr	1724(ra) # 80005280 <_Z8printIntiii>
    printString(".\n");
    80003bcc:	00005517          	auipc	a0,0x5
    80003bd0:	62c50513          	addi	a0,a0,1580 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003bd4:	00001097          	auipc	ra,0x1
    80003bd8:	4fc080e7          	jalr	1276(ra) # 800050d0 <_Z11printStringPKc>
    if (threadNum > n) {
    80003bdc:	0334c463          	blt	s1,s3,80003c04 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003be0:	03305c63          	blez	s3,80003c18 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003be4:	03800513          	li	a0,56
    80003be8:	ffffe097          	auipc	ra,0xffffe
    80003bec:	0a8080e7          	jalr	168(ra) # 80001c90 <_Znwm>
    80003bf0:	00050a93          	mv	s5,a0
    80003bf4:	00048593          	mv	a1,s1
    80003bf8:	00001097          	auipc	ra,0x1
    80003bfc:	7a8080e7          	jalr	1960(ra) # 800053a0 <_ZN9BufferCPPC1Ei>
    80003c00:	0300006f          	j	80003c30 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003c04:	00005517          	auipc	a0,0x5
    80003c08:	5fc50513          	addi	a0,a0,1532 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	4c4080e7          	jalr	1220(ra) # 800050d0 <_Z11printStringPKc>
        return;
    80003c14:	0140006f          	j	80003c28 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003c18:	00005517          	auipc	a0,0x5
    80003c1c:	62850513          	addi	a0,a0,1576 # 80009240 <CONSOLE_STATUS+0x230>
    80003c20:	00001097          	auipc	ra,0x1
    80003c24:	4b0080e7          	jalr	1200(ra) # 800050d0 <_Z11printStringPKc>
        return;
    80003c28:	000c0113          	mv	sp,s8
    80003c2c:	2140006f          	j	80003e40 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003c30:	01000513          	li	a0,16
    80003c34:	ffffe097          	auipc	ra,0xffffe
    80003c38:	05c080e7          	jalr	92(ra) # 80001c90 <_Znwm>
    80003c3c:	00050913          	mv	s2,a0
    80003c40:	00000593          	li	a1,0
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	5d0080e7          	jalr	1488(ra) # 80002214 <_ZN9SemaphoreC1Ej>
    80003c4c:	00008797          	auipc	a5,0x8
    80003c50:	9727b623          	sd	s2,-1684(a5) # 8000b5b8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003c54:	00399793          	slli	a5,s3,0x3
    80003c58:	00f78793          	addi	a5,a5,15
    80003c5c:	ff07f793          	andi	a5,a5,-16
    80003c60:	40f10133          	sub	sp,sp,a5
    80003c64:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003c68:	0019871b          	addiw	a4,s3,1
    80003c6c:	00171793          	slli	a5,a4,0x1
    80003c70:	00e787b3          	add	a5,a5,a4
    80003c74:	00379793          	slli	a5,a5,0x3
    80003c78:	00f78793          	addi	a5,a5,15
    80003c7c:	ff07f793          	andi	a5,a5,-16
    80003c80:	40f10133          	sub	sp,sp,a5
    80003c84:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003c88:	00199493          	slli	s1,s3,0x1
    80003c8c:	013484b3          	add	s1,s1,s3
    80003c90:	00349493          	slli	s1,s1,0x3
    80003c94:	009b04b3          	add	s1,s6,s1
    80003c98:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003c9c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003ca0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ca4:	02800513          	li	a0,40
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	fe8080e7          	jalr	-24(ra) # 80001c90 <_Znwm>
    80003cb0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	650080e7          	jalr	1616(ra) # 80002304 <_ZN6ThreadC1Ev>
    80003cbc:	00007797          	auipc	a5,0x7
    80003cc0:	78478793          	addi	a5,a5,1924 # 8000b440 <_ZTV8Consumer+0x10>
    80003cc4:	00fbb023          	sd	a5,0(s7)
    80003cc8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003ccc:	000b8513          	mv	a0,s7
    80003cd0:	ffffe097          	auipc	ra,0xffffe
    80003cd4:	678080e7          	jalr	1656(ra) # 80002348 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003cd8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003cdc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003ce0:	00008797          	auipc	a5,0x8
    80003ce4:	8d87b783          	ld	a5,-1832(a5) # 8000b5b8 <_ZL10waitForAll>
    80003ce8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003cec:	02800513          	li	a0,40
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	fa0080e7          	jalr	-96(ra) # 80001c90 <_Znwm>
    80003cf8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	608080e7          	jalr	1544(ra) # 80002304 <_ZN6ThreadC1Ev>
    80003d04:	00007797          	auipc	a5,0x7
    80003d08:	6ec78793          	addi	a5,a5,1772 # 8000b3f0 <_ZTV16ProducerKeyborad+0x10>
    80003d0c:	00f4b023          	sd	a5,0(s1)
    80003d10:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003d14:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003d18:	00048513          	mv	a0,s1
    80003d1c:	ffffe097          	auipc	ra,0xffffe
    80003d20:	62c080e7          	jalr	1580(ra) # 80002348 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003d24:	00100913          	li	s2,1
    80003d28:	0300006f          	j	80003d58 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003d2c:	00007797          	auipc	a5,0x7
    80003d30:	6ec78793          	addi	a5,a5,1772 # 8000b418 <_ZTV8Producer+0x10>
    80003d34:	00fcb023          	sd	a5,0(s9)
    80003d38:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003d3c:	00391793          	slli	a5,s2,0x3
    80003d40:	00fa07b3          	add	a5,s4,a5
    80003d44:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003d48:	000c8513          	mv	a0,s9
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	5fc080e7          	jalr	1532(ra) # 80002348 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003d54:	0019091b          	addiw	s2,s2,1
    80003d58:	05395263          	bge	s2,s3,80003d9c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003d5c:	00191493          	slli	s1,s2,0x1
    80003d60:	012484b3          	add	s1,s1,s2
    80003d64:	00349493          	slli	s1,s1,0x3
    80003d68:	009b04b3          	add	s1,s6,s1
    80003d6c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003d70:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003d74:	00008797          	auipc	a5,0x8
    80003d78:	8447b783          	ld	a5,-1980(a5) # 8000b5b8 <_ZL10waitForAll>
    80003d7c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003d80:	02800513          	li	a0,40
    80003d84:	ffffe097          	auipc	ra,0xffffe
    80003d88:	f0c080e7          	jalr	-244(ra) # 80001c90 <_Znwm>
    80003d8c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	574080e7          	jalr	1396(ra) # 80002304 <_ZN6ThreadC1Ev>
    80003d98:	f95ff06f          	j	80003d2c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	508080e7          	jalr	1288(ra) # 800022a4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003da4:	00000493          	li	s1,0
    80003da8:	0099ce63          	blt	s3,s1,80003dc4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003dac:	00008517          	auipc	a0,0x8
    80003db0:	80c53503          	ld	a0,-2036(a0) # 8000b5b8 <_ZL10waitForAll>
    80003db4:	ffffe097          	auipc	ra,0xffffe
    80003db8:	498080e7          	jalr	1176(ra) # 8000224c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003dbc:	0014849b          	addiw	s1,s1,1
    80003dc0:	fe9ff06f          	j	80003da8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003dc4:	00007517          	auipc	a0,0x7
    80003dc8:	7f453503          	ld	a0,2036(a0) # 8000b5b8 <_ZL10waitForAll>
    80003dcc:	00050863          	beqz	a0,80003ddc <_Z20testConsumerProducerv+0x2f4>
    80003dd0:	00053783          	ld	a5,0(a0)
    80003dd4:	0087b783          	ld	a5,8(a5)
    80003dd8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003ddc:	00000493          	li	s1,0
    80003de0:	0080006f          	j	80003de8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003de4:	0014849b          	addiw	s1,s1,1
    80003de8:	0334d263          	bge	s1,s3,80003e0c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003dec:	00349793          	slli	a5,s1,0x3
    80003df0:	00fa07b3          	add	a5,s4,a5
    80003df4:	0007b503          	ld	a0,0(a5)
    80003df8:	fe0506e3          	beqz	a0,80003de4 <_Z20testConsumerProducerv+0x2fc>
    80003dfc:	00053783          	ld	a5,0(a0)
    80003e00:	0087b783          	ld	a5,8(a5)
    80003e04:	000780e7          	jalr	a5
    80003e08:	fddff06f          	j	80003de4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003e0c:	000b8a63          	beqz	s7,80003e20 <_Z20testConsumerProducerv+0x338>
    80003e10:	000bb783          	ld	a5,0(s7)
    80003e14:	0087b783          	ld	a5,8(a5)
    80003e18:	000b8513          	mv	a0,s7
    80003e1c:	000780e7          	jalr	a5
    delete buffer;
    80003e20:	000a8e63          	beqz	s5,80003e3c <_Z20testConsumerProducerv+0x354>
    80003e24:	000a8513          	mv	a0,s5
    80003e28:	00002097          	auipc	ra,0x2
    80003e2c:	870080e7          	jalr	-1936(ra) # 80005698 <_ZN9BufferCPPD1Ev>
    80003e30:	000a8513          	mv	a0,s5
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	f5c080e7          	jalr	-164(ra) # 80001d90 <_ZdlPv>
    80003e3c:	000c0113          	mv	sp,s8
}
    80003e40:	f8040113          	addi	sp,s0,-128
    80003e44:	07813083          	ld	ra,120(sp)
    80003e48:	07013403          	ld	s0,112(sp)
    80003e4c:	06813483          	ld	s1,104(sp)
    80003e50:	06013903          	ld	s2,96(sp)
    80003e54:	05813983          	ld	s3,88(sp)
    80003e58:	05013a03          	ld	s4,80(sp)
    80003e5c:	04813a83          	ld	s5,72(sp)
    80003e60:	04013b03          	ld	s6,64(sp)
    80003e64:	03813b83          	ld	s7,56(sp)
    80003e68:	03013c03          	ld	s8,48(sp)
    80003e6c:	02813c83          	ld	s9,40(sp)
    80003e70:	08010113          	addi	sp,sp,128
    80003e74:	00008067          	ret
    80003e78:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003e7c:	000a8513          	mv	a0,s5
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	f10080e7          	jalr	-240(ra) # 80001d90 <_ZdlPv>
    80003e88:	00048513          	mv	a0,s1
    80003e8c:	00009097          	auipc	ra,0x9
    80003e90:	82c080e7          	jalr	-2004(ra) # 8000c6b8 <_Unwind_Resume>
    80003e94:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003e98:	00090513          	mv	a0,s2
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	ef4080e7          	jalr	-268(ra) # 80001d90 <_ZdlPv>
    80003ea4:	00048513          	mv	a0,s1
    80003ea8:	00009097          	auipc	ra,0x9
    80003eac:	810080e7          	jalr	-2032(ra) # 8000c6b8 <_Unwind_Resume>
    80003eb0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003eb4:	000b8513          	mv	a0,s7
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	ed8080e7          	jalr	-296(ra) # 80001d90 <_ZdlPv>
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	00008097          	auipc	ra,0x8
    80003ec8:	7f4080e7          	jalr	2036(ra) # 8000c6b8 <_Unwind_Resume>
    80003ecc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003ed0:	00048513          	mv	a0,s1
    80003ed4:	ffffe097          	auipc	ra,0xffffe
    80003ed8:	ebc080e7          	jalr	-324(ra) # 80001d90 <_ZdlPv>
    80003edc:	00090513          	mv	a0,s2
    80003ee0:	00008097          	auipc	ra,0x8
    80003ee4:	7d8080e7          	jalr	2008(ra) # 8000c6b8 <_Unwind_Resume>
    80003ee8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003eec:	000c8513          	mv	a0,s9
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	ea0080e7          	jalr	-352(ra) # 80001d90 <_ZdlPv>
    80003ef8:	00048513          	mv	a0,s1
    80003efc:	00008097          	auipc	ra,0x8
    80003f00:	7bc080e7          	jalr	1980(ra) # 8000c6b8 <_Unwind_Resume>

0000000080003f04 <_ZN8Consumer3runEv>:
    void run() override {
    80003f04:	fd010113          	addi	sp,sp,-48
    80003f08:	02113423          	sd	ra,40(sp)
    80003f0c:	02813023          	sd	s0,32(sp)
    80003f10:	00913c23          	sd	s1,24(sp)
    80003f14:	01213823          	sd	s2,16(sp)
    80003f18:	01313423          	sd	s3,8(sp)
    80003f1c:	03010413          	addi	s0,sp,48
    80003f20:	00050913          	mv	s2,a0
        int i = 0;
    80003f24:	00000993          	li	s3,0
    80003f28:	0100006f          	j	80003f38 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003f2c:	00a00513          	li	a0,10
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	46c080e7          	jalr	1132(ra) # 8000239c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003f38:	00007797          	auipc	a5,0x7
    80003f3c:	6787a783          	lw	a5,1656(a5) # 8000b5b0 <_ZL9threadEnd>
    80003f40:	04079a63          	bnez	a5,80003f94 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003f44:	02093783          	ld	a5,32(s2)
    80003f48:	0087b503          	ld	a0,8(a5)
    80003f4c:	00001097          	auipc	ra,0x1
    80003f50:	638080e7          	jalr	1592(ra) # 80005584 <_ZN9BufferCPP3getEv>
            i++;
    80003f54:	0019849b          	addiw	s1,s3,1
    80003f58:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003f5c:	0ff57513          	andi	a0,a0,255
    80003f60:	ffffe097          	auipc	ra,0xffffe
    80003f64:	43c080e7          	jalr	1084(ra) # 8000239c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003f68:	05000793          	li	a5,80
    80003f6c:	02f4e4bb          	remw	s1,s1,a5
    80003f70:	fc0494e3          	bnez	s1,80003f38 <_ZN8Consumer3runEv+0x34>
    80003f74:	fb9ff06f          	j	80003f2c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003f78:	02093783          	ld	a5,32(s2)
    80003f7c:	0087b503          	ld	a0,8(a5)
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	604080e7          	jalr	1540(ra) # 80005584 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003f88:	0ff57513          	andi	a0,a0,255
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	410080e7          	jalr	1040(ra) # 8000239c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003f94:	02093783          	ld	a5,32(s2)
    80003f98:	0087b503          	ld	a0,8(a5)
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	674080e7          	jalr	1652(ra) # 80005610 <_ZN9BufferCPP6getCntEv>
    80003fa4:	fca04ae3          	bgtz	a0,80003f78 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003fa8:	02093783          	ld	a5,32(s2)
    80003fac:	0107b503          	ld	a0,16(a5)
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	2c8080e7          	jalr	712(ra) # 80002278 <_ZN9Semaphore6signalEv>
    }
    80003fb8:	02813083          	ld	ra,40(sp)
    80003fbc:	02013403          	ld	s0,32(sp)
    80003fc0:	01813483          	ld	s1,24(sp)
    80003fc4:	01013903          	ld	s2,16(sp)
    80003fc8:	00813983          	ld	s3,8(sp)
    80003fcc:	03010113          	addi	sp,sp,48
    80003fd0:	00008067          	ret

0000000080003fd4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003fd4:	ff010113          	addi	sp,sp,-16
    80003fd8:	00113423          	sd	ra,8(sp)
    80003fdc:	00813023          	sd	s0,0(sp)
    80003fe0:	01010413          	addi	s0,sp,16
    80003fe4:	00007797          	auipc	a5,0x7
    80003fe8:	45c78793          	addi	a5,a5,1116 # 8000b440 <_ZTV8Consumer+0x10>
    80003fec:	00f53023          	sd	a5,0(a0)
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	138080e7          	jalr	312(ra) # 80002128 <_ZN6ThreadD1Ev>
    80003ff8:	00813083          	ld	ra,8(sp)
    80003ffc:	00013403          	ld	s0,0(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN8ConsumerD0Ev>:
    80004008:	fe010113          	addi	sp,sp,-32
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	02010413          	addi	s0,sp,32
    8000401c:	00050493          	mv	s1,a0
    80004020:	00007797          	auipc	a5,0x7
    80004024:	42078793          	addi	a5,a5,1056 # 8000b440 <_ZTV8Consumer+0x10>
    80004028:	00f53023          	sd	a5,0(a0)
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	0fc080e7          	jalr	252(ra) # 80002128 <_ZN6ThreadD1Ev>
    80004034:	00048513          	mv	a0,s1
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	d58080e7          	jalr	-680(ra) # 80001d90 <_ZdlPv>
    80004040:	01813083          	ld	ra,24(sp)
    80004044:	01013403          	ld	s0,16(sp)
    80004048:	00813483          	ld	s1,8(sp)
    8000404c:	02010113          	addi	sp,sp,32
    80004050:	00008067          	ret

0000000080004054 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004054:	ff010113          	addi	sp,sp,-16
    80004058:	00113423          	sd	ra,8(sp)
    8000405c:	00813023          	sd	s0,0(sp)
    80004060:	01010413          	addi	s0,sp,16
    80004064:	00007797          	auipc	a5,0x7
    80004068:	38c78793          	addi	a5,a5,908 # 8000b3f0 <_ZTV16ProducerKeyborad+0x10>
    8000406c:	00f53023          	sd	a5,0(a0)
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	0b8080e7          	jalr	184(ra) # 80002128 <_ZN6ThreadD1Ev>
    80004078:	00813083          	ld	ra,8(sp)
    8000407c:	00013403          	ld	s0,0(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret

0000000080004088 <_ZN16ProducerKeyboradD0Ev>:
    80004088:	fe010113          	addi	sp,sp,-32
    8000408c:	00113c23          	sd	ra,24(sp)
    80004090:	00813823          	sd	s0,16(sp)
    80004094:	00913423          	sd	s1,8(sp)
    80004098:	02010413          	addi	s0,sp,32
    8000409c:	00050493          	mv	s1,a0
    800040a0:	00007797          	auipc	a5,0x7
    800040a4:	35078793          	addi	a5,a5,848 # 8000b3f0 <_ZTV16ProducerKeyborad+0x10>
    800040a8:	00f53023          	sd	a5,0(a0)
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	07c080e7          	jalr	124(ra) # 80002128 <_ZN6ThreadD1Ev>
    800040b4:	00048513          	mv	a0,s1
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	cd8080e7          	jalr	-808(ra) # 80001d90 <_ZdlPv>
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	00813483          	ld	s1,8(sp)
    800040cc:	02010113          	addi	sp,sp,32
    800040d0:	00008067          	ret

00000000800040d4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800040d4:	ff010113          	addi	sp,sp,-16
    800040d8:	00113423          	sd	ra,8(sp)
    800040dc:	00813023          	sd	s0,0(sp)
    800040e0:	01010413          	addi	s0,sp,16
    800040e4:	00007797          	auipc	a5,0x7
    800040e8:	33478793          	addi	a5,a5,820 # 8000b418 <_ZTV8Producer+0x10>
    800040ec:	00f53023          	sd	a5,0(a0)
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	038080e7          	jalr	56(ra) # 80002128 <_ZN6ThreadD1Ev>
    800040f8:	00813083          	ld	ra,8(sp)
    800040fc:	00013403          	ld	s0,0(sp)
    80004100:	01010113          	addi	sp,sp,16
    80004104:	00008067          	ret

0000000080004108 <_ZN8ProducerD0Ev>:
    80004108:	fe010113          	addi	sp,sp,-32
    8000410c:	00113c23          	sd	ra,24(sp)
    80004110:	00813823          	sd	s0,16(sp)
    80004114:	00913423          	sd	s1,8(sp)
    80004118:	02010413          	addi	s0,sp,32
    8000411c:	00050493          	mv	s1,a0
    80004120:	00007797          	auipc	a5,0x7
    80004124:	2f878793          	addi	a5,a5,760 # 8000b418 <_ZTV8Producer+0x10>
    80004128:	00f53023          	sd	a5,0(a0)
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	ffc080e7          	jalr	-4(ra) # 80002128 <_ZN6ThreadD1Ev>
    80004134:	00048513          	mv	a0,s1
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	c58080e7          	jalr	-936(ra) # 80001d90 <_ZdlPv>
    80004140:	01813083          	ld	ra,24(sp)
    80004144:	01013403          	ld	s0,16(sp)
    80004148:	00813483          	ld	s1,8(sp)
    8000414c:	02010113          	addi	sp,sp,32
    80004150:	00008067          	ret

0000000080004154 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004154:	fe010113          	addi	sp,sp,-32
    80004158:	00113c23          	sd	ra,24(sp)
    8000415c:	00813823          	sd	s0,16(sp)
    80004160:	00913423          	sd	s1,8(sp)
    80004164:	02010413          	addi	s0,sp,32
    80004168:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000416c:	ffffd097          	auipc	ra,0xffffd
    80004170:	31c080e7          	jalr	796(ra) # 80001488 <_Z4getcv>
    80004174:	0005059b          	sext.w	a1,a0
    80004178:	01b00793          	li	a5,27
    8000417c:	00f58c63          	beq	a1,a5,80004194 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004180:	0204b783          	ld	a5,32(s1)
    80004184:	0087b503          	ld	a0,8(a5)
    80004188:	00001097          	auipc	ra,0x1
    8000418c:	36c080e7          	jalr	876(ra) # 800054f4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004190:	fddff06f          	j	8000416c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004194:	00100793          	li	a5,1
    80004198:	00007717          	auipc	a4,0x7
    8000419c:	40f72c23          	sw	a5,1048(a4) # 8000b5b0 <_ZL9threadEnd>
        td->buffer->put('!');
    800041a0:	0204b783          	ld	a5,32(s1)
    800041a4:	02100593          	li	a1,33
    800041a8:	0087b503          	ld	a0,8(a5)
    800041ac:	00001097          	auipc	ra,0x1
    800041b0:	348080e7          	jalr	840(ra) # 800054f4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800041b4:	0204b783          	ld	a5,32(s1)
    800041b8:	0107b503          	ld	a0,16(a5)
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	0bc080e7          	jalr	188(ra) # 80002278 <_ZN9Semaphore6signalEv>
    }
    800041c4:	01813083          	ld	ra,24(sp)
    800041c8:	01013403          	ld	s0,16(sp)
    800041cc:	00813483          	ld	s1,8(sp)
    800041d0:	02010113          	addi	sp,sp,32
    800041d4:	00008067          	ret

00000000800041d8 <_ZN8Producer3runEv>:
    void run() override {
    800041d8:	fe010113          	addi	sp,sp,-32
    800041dc:	00113c23          	sd	ra,24(sp)
    800041e0:	00813823          	sd	s0,16(sp)
    800041e4:	00913423          	sd	s1,8(sp)
    800041e8:	01213023          	sd	s2,0(sp)
    800041ec:	02010413          	addi	s0,sp,32
    800041f0:	00050493          	mv	s1,a0
        int i = 0;
    800041f4:	00000913          	li	s2,0
        while (!threadEnd) {
    800041f8:	00007797          	auipc	a5,0x7
    800041fc:	3b87a783          	lw	a5,952(a5) # 8000b5b0 <_ZL9threadEnd>
    80004200:	04079263          	bnez	a5,80004244 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004204:	0204b783          	ld	a5,32(s1)
    80004208:	0007a583          	lw	a1,0(a5)
    8000420c:	0305859b          	addiw	a1,a1,48
    80004210:	0087b503          	ld	a0,8(a5)
    80004214:	00001097          	auipc	ra,0x1
    80004218:	2e0080e7          	jalr	736(ra) # 800054f4 <_ZN9BufferCPP3putEi>
            i++;
    8000421c:	0019071b          	addiw	a4,s2,1
    80004220:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004224:	0204b783          	ld	a5,32(s1)
    80004228:	0007a783          	lw	a5,0(a5)
    8000422c:	00e787bb          	addw	a5,a5,a4
    80004230:	00500513          	li	a0,5
    80004234:	02a7e53b          	remw	a0,a5,a0
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	13c080e7          	jalr	316(ra) # 80002374 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004240:	fb9ff06f          	j	800041f8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004244:	0204b783          	ld	a5,32(s1)
    80004248:	0107b503          	ld	a0,16(a5)
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	02c080e7          	jalr	44(ra) # 80002278 <_ZN9Semaphore6signalEv>
    }
    80004254:	01813083          	ld	ra,24(sp)
    80004258:	01013403          	ld	s0,16(sp)
    8000425c:	00813483          	ld	s1,8(sp)
    80004260:	00013903          	ld	s2,0(sp)
    80004264:	02010113          	addi	sp,sp,32
    80004268:	00008067          	ret

000000008000426c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000426c:	fe010113          	addi	sp,sp,-32
    80004270:	00113c23          	sd	ra,24(sp)
    80004274:	00813823          	sd	s0,16(sp)
    80004278:	00913423          	sd	s1,8(sp)
    8000427c:	01213023          	sd	s2,0(sp)
    80004280:	02010413          	addi	s0,sp,32
    80004284:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004288:	00100793          	li	a5,1
    8000428c:	02a7f863          	bgeu	a5,a0,800042bc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004290:	00a00793          	li	a5,10
    80004294:	02f577b3          	remu	a5,a0,a5
    80004298:	02078e63          	beqz	a5,800042d4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000429c:	fff48513          	addi	a0,s1,-1
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	fcc080e7          	jalr	-52(ra) # 8000426c <_ZL9fibonaccim>
    800042a8:	00050913          	mv	s2,a0
    800042ac:	ffe48513          	addi	a0,s1,-2
    800042b0:	00000097          	auipc	ra,0x0
    800042b4:	fbc080e7          	jalr	-68(ra) # 8000426c <_ZL9fibonaccim>
    800042b8:	00a90533          	add	a0,s2,a0
}
    800042bc:	01813083          	ld	ra,24(sp)
    800042c0:	01013403          	ld	s0,16(sp)
    800042c4:	00813483          	ld	s1,8(sp)
    800042c8:	00013903          	ld	s2,0(sp)
    800042cc:	02010113          	addi	sp,sp,32
    800042d0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800042d4:	ffffd097          	auipc	ra,0xffffd
    800042d8:	0b4080e7          	jalr	180(ra) # 80001388 <_Z15thread_dispatchv>
    800042dc:	fc1ff06f          	j	8000429c <_ZL9fibonaccim+0x30>

00000000800042e0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800042e0:	fe010113          	addi	sp,sp,-32
    800042e4:	00113c23          	sd	ra,24(sp)
    800042e8:	00813823          	sd	s0,16(sp)
    800042ec:	00913423          	sd	s1,8(sp)
    800042f0:	01213023          	sd	s2,0(sp)
    800042f4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800042f8:	00a00493          	li	s1,10
    800042fc:	0400006f          	j	8000433c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004300:	00005517          	auipc	a0,0x5
    80004304:	fc050513          	addi	a0,a0,-64 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80004308:	00001097          	auipc	ra,0x1
    8000430c:	dc8080e7          	jalr	-568(ra) # 800050d0 <_Z11printStringPKc>
    80004310:	00000613          	li	a2,0
    80004314:	00a00593          	li	a1,10
    80004318:	00048513          	mv	a0,s1
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	f64080e7          	jalr	-156(ra) # 80005280 <_Z8printIntiii>
    80004324:	00005517          	auipc	a0,0x5
    80004328:	1bc50513          	addi	a0,a0,444 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000432c:	00001097          	auipc	ra,0x1
    80004330:	da4080e7          	jalr	-604(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004334:	0014849b          	addiw	s1,s1,1
    80004338:	0ff4f493          	andi	s1,s1,255
    8000433c:	00c00793          	li	a5,12
    80004340:	fc97f0e3          	bgeu	a5,s1,80004300 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004344:	00005517          	auipc	a0,0x5
    80004348:	f8450513          	addi	a0,a0,-124 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	d84080e7          	jalr	-636(ra) # 800050d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004354:	00500313          	li	t1,5
    thread_dispatch();
    80004358:	ffffd097          	auipc	ra,0xffffd
    8000435c:	030080e7          	jalr	48(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004360:	01000513          	li	a0,16
    80004364:	00000097          	auipc	ra,0x0
    80004368:	f08080e7          	jalr	-248(ra) # 8000426c <_ZL9fibonaccim>
    8000436c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004370:	00005517          	auipc	a0,0x5
    80004374:	f6850513          	addi	a0,a0,-152 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80004378:	00001097          	auipc	ra,0x1
    8000437c:	d58080e7          	jalr	-680(ra) # 800050d0 <_Z11printStringPKc>
    80004380:	00000613          	li	a2,0
    80004384:	00a00593          	li	a1,10
    80004388:	0009051b          	sext.w	a0,s2
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	ef4080e7          	jalr	-268(ra) # 80005280 <_Z8printIntiii>
    80004394:	00005517          	auipc	a0,0x5
    80004398:	14c50513          	addi	a0,a0,332 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000439c:	00001097          	auipc	ra,0x1
    800043a0:	d34080e7          	jalr	-716(ra) # 800050d0 <_Z11printStringPKc>
    800043a4:	0400006f          	j	800043e4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800043a8:	00005517          	auipc	a0,0x5
    800043ac:	f1850513          	addi	a0,a0,-232 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800043b0:	00001097          	auipc	ra,0x1
    800043b4:	d20080e7          	jalr	-736(ra) # 800050d0 <_Z11printStringPKc>
    800043b8:	00000613          	li	a2,0
    800043bc:	00a00593          	li	a1,10
    800043c0:	00048513          	mv	a0,s1
    800043c4:	00001097          	auipc	ra,0x1
    800043c8:	ebc080e7          	jalr	-324(ra) # 80005280 <_Z8printIntiii>
    800043cc:	00005517          	auipc	a0,0x5
    800043d0:	11450513          	addi	a0,a0,276 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	cfc080e7          	jalr	-772(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800043dc:	0014849b          	addiw	s1,s1,1
    800043e0:	0ff4f493          	andi	s1,s1,255
    800043e4:	00f00793          	li	a5,15
    800043e8:	fc97f0e3          	bgeu	a5,s1,800043a8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800043ec:	00005517          	auipc	a0,0x5
    800043f0:	efc50513          	addi	a0,a0,-260 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	cdc080e7          	jalr	-804(ra) # 800050d0 <_Z11printStringPKc>
    finishedD = true;
    800043fc:	00100793          	li	a5,1
    80004400:	00007717          	auipc	a4,0x7
    80004404:	1cf70023          	sb	a5,448(a4) # 8000b5c0 <_ZL9finishedD>
    thread_dispatch();
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	f80080e7          	jalr	-128(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004410:	01813083          	ld	ra,24(sp)
    80004414:	01013403          	ld	s0,16(sp)
    80004418:	00813483          	ld	s1,8(sp)
    8000441c:	00013903          	ld	s2,0(sp)
    80004420:	02010113          	addi	sp,sp,32
    80004424:	00008067          	ret

0000000080004428 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004428:	fe010113          	addi	sp,sp,-32
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00913423          	sd	s1,8(sp)
    80004438:	01213023          	sd	s2,0(sp)
    8000443c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004440:	00000493          	li	s1,0
    80004444:	0400006f          	j	80004484 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004448:	00005517          	auipc	a0,0x5
    8000444c:	e4850513          	addi	a0,a0,-440 # 80009290 <CONSOLE_STATUS+0x280>
    80004450:	00001097          	auipc	ra,0x1
    80004454:	c80080e7          	jalr	-896(ra) # 800050d0 <_Z11printStringPKc>
    80004458:	00000613          	li	a2,0
    8000445c:	00a00593          	li	a1,10
    80004460:	00048513          	mv	a0,s1
    80004464:	00001097          	auipc	ra,0x1
    80004468:	e1c080e7          	jalr	-484(ra) # 80005280 <_Z8printIntiii>
    8000446c:	00005517          	auipc	a0,0x5
    80004470:	07450513          	addi	a0,a0,116 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004474:	00001097          	auipc	ra,0x1
    80004478:	c5c080e7          	jalr	-932(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000447c:	0014849b          	addiw	s1,s1,1
    80004480:	0ff4f493          	andi	s1,s1,255
    80004484:	00200793          	li	a5,2
    80004488:	fc97f0e3          	bgeu	a5,s1,80004448 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000448c:	00005517          	auipc	a0,0x5
    80004490:	e0c50513          	addi	a0,a0,-500 # 80009298 <CONSOLE_STATUS+0x288>
    80004494:	00001097          	auipc	ra,0x1
    80004498:	c3c080e7          	jalr	-964(ra) # 800050d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000449c:	00700313          	li	t1,7
    thread_dispatch();
    800044a0:	ffffd097          	auipc	ra,0xffffd
    800044a4:	ee8080e7          	jalr	-280(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800044a8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800044ac:	00005517          	auipc	a0,0x5
    800044b0:	dfc50513          	addi	a0,a0,-516 # 800092a8 <CONSOLE_STATUS+0x298>
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	c1c080e7          	jalr	-996(ra) # 800050d0 <_Z11printStringPKc>
    800044bc:	00000613          	li	a2,0
    800044c0:	00a00593          	li	a1,10
    800044c4:	0009051b          	sext.w	a0,s2
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	db8080e7          	jalr	-584(ra) # 80005280 <_Z8printIntiii>
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	01050513          	addi	a0,a0,16 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	bf8080e7          	jalr	-1032(ra) # 800050d0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800044e0:	00c00513          	li	a0,12
    800044e4:	00000097          	auipc	ra,0x0
    800044e8:	d88080e7          	jalr	-632(ra) # 8000426c <_ZL9fibonaccim>
    800044ec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800044f0:	00005517          	auipc	a0,0x5
    800044f4:	dc050513          	addi	a0,a0,-576 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	bd8080e7          	jalr	-1064(ra) # 800050d0 <_Z11printStringPKc>
    80004500:	00000613          	li	a2,0
    80004504:	00a00593          	li	a1,10
    80004508:	0009051b          	sext.w	a0,s2
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	d74080e7          	jalr	-652(ra) # 80005280 <_Z8printIntiii>
    80004514:	00005517          	auipc	a0,0x5
    80004518:	fcc50513          	addi	a0,a0,-52 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	bb4080e7          	jalr	-1100(ra) # 800050d0 <_Z11printStringPKc>
    80004524:	0400006f          	j	80004564 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004528:	00005517          	auipc	a0,0x5
    8000452c:	d6850513          	addi	a0,a0,-664 # 80009290 <CONSOLE_STATUS+0x280>
    80004530:	00001097          	auipc	ra,0x1
    80004534:	ba0080e7          	jalr	-1120(ra) # 800050d0 <_Z11printStringPKc>
    80004538:	00000613          	li	a2,0
    8000453c:	00a00593          	li	a1,10
    80004540:	00048513          	mv	a0,s1
    80004544:	00001097          	auipc	ra,0x1
    80004548:	d3c080e7          	jalr	-708(ra) # 80005280 <_Z8printIntiii>
    8000454c:	00005517          	auipc	a0,0x5
    80004550:	f9450513          	addi	a0,a0,-108 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004554:	00001097          	auipc	ra,0x1
    80004558:	b7c080e7          	jalr	-1156(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000455c:	0014849b          	addiw	s1,s1,1
    80004560:	0ff4f493          	andi	s1,s1,255
    80004564:	00500793          	li	a5,5
    80004568:	fc97f0e3          	bgeu	a5,s1,80004528 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000456c:	00005517          	auipc	a0,0x5
    80004570:	d0450513          	addi	a0,a0,-764 # 80009270 <CONSOLE_STATUS+0x260>
    80004574:	00001097          	auipc	ra,0x1
    80004578:	b5c080e7          	jalr	-1188(ra) # 800050d0 <_Z11printStringPKc>
    finishedC = true;
    8000457c:	00100793          	li	a5,1
    80004580:	00007717          	auipc	a4,0x7
    80004584:	04f700a3          	sb	a5,65(a4) # 8000b5c1 <_ZL9finishedC>
    thread_dispatch();
    80004588:	ffffd097          	auipc	ra,0xffffd
    8000458c:	e00080e7          	jalr	-512(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004590:	01813083          	ld	ra,24(sp)
    80004594:	01013403          	ld	s0,16(sp)
    80004598:	00813483          	ld	s1,8(sp)
    8000459c:	00013903          	ld	s2,0(sp)
    800045a0:	02010113          	addi	sp,sp,32
    800045a4:	00008067          	ret

00000000800045a8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800045a8:	fe010113          	addi	sp,sp,-32
    800045ac:	00113c23          	sd	ra,24(sp)
    800045b0:	00813823          	sd	s0,16(sp)
    800045b4:	00913423          	sd	s1,8(sp)
    800045b8:	01213023          	sd	s2,0(sp)
    800045bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800045c0:	00000913          	li	s2,0
    800045c4:	0380006f          	j	800045fc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800045c8:	ffffd097          	auipc	ra,0xffffd
    800045cc:	dc0080e7          	jalr	-576(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800045d0:	00148493          	addi	s1,s1,1
    800045d4:	000027b7          	lui	a5,0x2
    800045d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800045dc:	0097ee63          	bltu	a5,s1,800045f8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800045e0:	00000713          	li	a4,0
    800045e4:	000077b7          	lui	a5,0x7
    800045e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800045ec:	fce7eee3          	bltu	a5,a4,800045c8 <_ZL11workerBodyBPv+0x20>
    800045f0:	00170713          	addi	a4,a4,1
    800045f4:	ff1ff06f          	j	800045e4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800045f8:	00190913          	addi	s2,s2,1
    800045fc:	00f00793          	li	a5,15
    80004600:	0527e063          	bltu	a5,s2,80004640 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004604:	00005517          	auipc	a0,0x5
    80004608:	a4c50513          	addi	a0,a0,-1460 # 80009050 <CONSOLE_STATUS+0x40>
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	ac4080e7          	jalr	-1340(ra) # 800050d0 <_Z11printStringPKc>
    80004614:	00000613          	li	a2,0
    80004618:	00a00593          	li	a1,10
    8000461c:	0009051b          	sext.w	a0,s2
    80004620:	00001097          	auipc	ra,0x1
    80004624:	c60080e7          	jalr	-928(ra) # 80005280 <_Z8printIntiii>
    80004628:	00005517          	auipc	a0,0x5
    8000462c:	eb850513          	addi	a0,a0,-328 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004630:	00001097          	auipc	ra,0x1
    80004634:	aa0080e7          	jalr	-1376(ra) # 800050d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004638:	00000493          	li	s1,0
    8000463c:	f99ff06f          	j	800045d4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004640:	00005517          	auipc	a0,0x5
    80004644:	c4050513          	addi	a0,a0,-960 # 80009280 <CONSOLE_STATUS+0x270>
    80004648:	00001097          	auipc	ra,0x1
    8000464c:	a88080e7          	jalr	-1400(ra) # 800050d0 <_Z11printStringPKc>
    finishedB = true;
    80004650:	00100793          	li	a5,1
    80004654:	00007717          	auipc	a4,0x7
    80004658:	f6f70723          	sb	a5,-146(a4) # 8000b5c2 <_ZL9finishedB>
    thread_dispatch();
    8000465c:	ffffd097          	auipc	ra,0xffffd
    80004660:	d2c080e7          	jalr	-724(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004664:	01813083          	ld	ra,24(sp)
    80004668:	01013403          	ld	s0,16(sp)
    8000466c:	00813483          	ld	s1,8(sp)
    80004670:	00013903          	ld	s2,0(sp)
    80004674:	02010113          	addi	sp,sp,32
    80004678:	00008067          	ret

000000008000467c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00113c23          	sd	ra,24(sp)
    80004684:	00813823          	sd	s0,16(sp)
    80004688:	00913423          	sd	s1,8(sp)
    8000468c:	01213023          	sd	s2,0(sp)
    80004690:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004694:	00000913          	li	s2,0
    80004698:	0380006f          	j	800046d0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000469c:	ffffd097          	auipc	ra,0xffffd
    800046a0:	cec080e7          	jalr	-788(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800046a4:	00148493          	addi	s1,s1,1
    800046a8:	000027b7          	lui	a5,0x2
    800046ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800046b0:	0097ee63          	bltu	a5,s1,800046cc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800046b4:	00000713          	li	a4,0
    800046b8:	000077b7          	lui	a5,0x7
    800046bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800046c0:	fce7eee3          	bltu	a5,a4,8000469c <_ZL11workerBodyAPv+0x20>
    800046c4:	00170713          	addi	a4,a4,1
    800046c8:	ff1ff06f          	j	800046b8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800046cc:	00190913          	addi	s2,s2,1
    800046d0:	00900793          	li	a5,9
    800046d4:	0527e063          	bltu	a5,s2,80004714 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800046d8:	00005517          	auipc	a0,0x5
    800046dc:	94850513          	addi	a0,a0,-1720 # 80009020 <CONSOLE_STATUS+0x10>
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	9f0080e7          	jalr	-1552(ra) # 800050d0 <_Z11printStringPKc>
    800046e8:	00000613          	li	a2,0
    800046ec:	00a00593          	li	a1,10
    800046f0:	0009051b          	sext.w	a0,s2
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	b8c080e7          	jalr	-1140(ra) # 80005280 <_Z8printIntiii>
    800046fc:	00005517          	auipc	a0,0x5
    80004700:	de450513          	addi	a0,a0,-540 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004704:	00001097          	auipc	ra,0x1
    80004708:	9cc080e7          	jalr	-1588(ra) # 800050d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000470c:	00000493          	li	s1,0
    80004710:	f99ff06f          	j	800046a8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004714:	00005517          	auipc	a0,0x5
    80004718:	b5c50513          	addi	a0,a0,-1188 # 80009270 <CONSOLE_STATUS+0x260>
    8000471c:	00001097          	auipc	ra,0x1
    80004720:	9b4080e7          	jalr	-1612(ra) # 800050d0 <_Z11printStringPKc>
    finishedA = true;
    80004724:	00100793          	li	a5,1
    80004728:	00007717          	auipc	a4,0x7
    8000472c:	e8f70da3          	sb	a5,-357(a4) # 8000b5c3 <_ZL9finishedA>
}
    80004730:	01813083          	ld	ra,24(sp)
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	00813483          	ld	s1,8(sp)
    8000473c:	00013903          	ld	s2,0(sp)
    80004740:	02010113          	addi	sp,sp,32
    80004744:	00008067          	ret

0000000080004748 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004748:	fd010113          	addi	sp,sp,-48
    8000474c:	02113423          	sd	ra,40(sp)
    80004750:	02813023          	sd	s0,32(sp)
    80004754:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004758:	00000613          	li	a2,0
    8000475c:	00000597          	auipc	a1,0x0
    80004760:	f2058593          	addi	a1,a1,-224 # 8000467c <_ZL11workerBodyAPv>
    80004764:	fd040513          	addi	a0,s0,-48
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	b88080e7          	jalr	-1144(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    80004770:	00005517          	auipc	a0,0x5
    80004774:	b8850513          	addi	a0,a0,-1144 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004778:	00001097          	auipc	ra,0x1
    8000477c:	958080e7          	jalr	-1704(ra) # 800050d0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004780:	00000613          	li	a2,0
    80004784:	00000597          	auipc	a1,0x0
    80004788:	e2458593          	addi	a1,a1,-476 # 800045a8 <_ZL11workerBodyBPv>
    8000478c:	fd840513          	addi	a0,s0,-40
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	b60080e7          	jalr	-1184(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    80004798:	00005517          	auipc	a0,0x5
    8000479c:	b7850513          	addi	a0,a0,-1160 # 80009310 <CONSOLE_STATUS+0x300>
    800047a0:	00001097          	auipc	ra,0x1
    800047a4:	930080e7          	jalr	-1744(ra) # 800050d0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800047a8:	00000613          	li	a2,0
    800047ac:	00000597          	auipc	a1,0x0
    800047b0:	c7c58593          	addi	a1,a1,-900 # 80004428 <_ZL11workerBodyCPv>
    800047b4:	fe040513          	addi	a0,s0,-32
    800047b8:	ffffd097          	auipc	ra,0xffffd
    800047bc:	b38080e7          	jalr	-1224(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    800047c0:	00005517          	auipc	a0,0x5
    800047c4:	b6850513          	addi	a0,a0,-1176 # 80009328 <CONSOLE_STATUS+0x318>
    800047c8:	00001097          	auipc	ra,0x1
    800047cc:	908080e7          	jalr	-1784(ra) # 800050d0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800047d0:	00000613          	li	a2,0
    800047d4:	00000597          	auipc	a1,0x0
    800047d8:	b0c58593          	addi	a1,a1,-1268 # 800042e0 <_ZL11workerBodyDPv>
    800047dc:	fe840513          	addi	a0,s0,-24
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	b10080e7          	jalr	-1264(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    800047e8:	00005517          	auipc	a0,0x5
    800047ec:	b5850513          	addi	a0,a0,-1192 # 80009340 <CONSOLE_STATUS+0x330>
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	8e0080e7          	jalr	-1824(ra) # 800050d0 <_Z11printStringPKc>
    800047f8:	00c0006f          	j	80004804 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	b8c080e7          	jalr	-1140(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004804:	00007797          	auipc	a5,0x7
    80004808:	dbf7c783          	lbu	a5,-577(a5) # 8000b5c3 <_ZL9finishedA>
    8000480c:	fe0788e3          	beqz	a5,800047fc <_Z18Threads_C_API_testv+0xb4>
    80004810:	00007797          	auipc	a5,0x7
    80004814:	db27c783          	lbu	a5,-590(a5) # 8000b5c2 <_ZL9finishedB>
    80004818:	fe0782e3          	beqz	a5,800047fc <_Z18Threads_C_API_testv+0xb4>
    8000481c:	00007797          	auipc	a5,0x7
    80004820:	da57c783          	lbu	a5,-603(a5) # 8000b5c1 <_ZL9finishedC>
    80004824:	fc078ce3          	beqz	a5,800047fc <_Z18Threads_C_API_testv+0xb4>
    80004828:	00007797          	auipc	a5,0x7
    8000482c:	d987c783          	lbu	a5,-616(a5) # 8000b5c0 <_ZL9finishedD>
    80004830:	fc0786e3          	beqz	a5,800047fc <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004834:	02813083          	ld	ra,40(sp)
    80004838:	02013403          	ld	s0,32(sp)
    8000483c:	03010113          	addi	sp,sp,48
    80004840:	00008067          	ret

0000000080004844 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004844:	fd010113          	addi	sp,sp,-48
    80004848:	02113423          	sd	ra,40(sp)
    8000484c:	02813023          	sd	s0,32(sp)
    80004850:	00913c23          	sd	s1,24(sp)
    80004854:	01213823          	sd	s2,16(sp)
    80004858:	01313423          	sd	s3,8(sp)
    8000485c:	03010413          	addi	s0,sp,48
    80004860:	00050993          	mv	s3,a0
    80004864:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004868:	00000913          	li	s2,0
    8000486c:	00c0006f          	j	80004878 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	a34080e7          	jalr	-1484(ra) # 800022a4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	c10080e7          	jalr	-1008(ra) # 80001488 <_Z4getcv>
    80004880:	0005059b          	sext.w	a1,a0
    80004884:	01b00793          	li	a5,27
    80004888:	02f58a63          	beq	a1,a5,800048bc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000488c:	0084b503          	ld	a0,8(s1)
    80004890:	00001097          	auipc	ra,0x1
    80004894:	c64080e7          	jalr	-924(ra) # 800054f4 <_ZN9BufferCPP3putEi>
        i++;
    80004898:	0019071b          	addiw	a4,s2,1
    8000489c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048a0:	0004a683          	lw	a3,0(s1)
    800048a4:	0026979b          	slliw	a5,a3,0x2
    800048a8:	00d787bb          	addw	a5,a5,a3
    800048ac:	0017979b          	slliw	a5,a5,0x1
    800048b0:	02f767bb          	remw	a5,a4,a5
    800048b4:	fc0792e3          	bnez	a5,80004878 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800048b8:	fb9ff06f          	j	80004870 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800048bc:	00100793          	li	a5,1
    800048c0:	00007717          	auipc	a4,0x7
    800048c4:	d0f72423          	sw	a5,-760(a4) # 8000b5c8 <_ZL9threadEnd>
    td->buffer->put('!');
    800048c8:	0209b783          	ld	a5,32(s3)
    800048cc:	02100593          	li	a1,33
    800048d0:	0087b503          	ld	a0,8(a5)
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	c20080e7          	jalr	-992(ra) # 800054f4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800048dc:	0104b503          	ld	a0,16(s1)
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	998080e7          	jalr	-1640(ra) # 80002278 <_ZN9Semaphore6signalEv>
}
    800048e8:	02813083          	ld	ra,40(sp)
    800048ec:	02013403          	ld	s0,32(sp)
    800048f0:	01813483          	ld	s1,24(sp)
    800048f4:	01013903          	ld	s2,16(sp)
    800048f8:	00813983          	ld	s3,8(sp)
    800048fc:	03010113          	addi	sp,sp,48
    80004900:	00008067          	ret

0000000080004904 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004904:	fe010113          	addi	sp,sp,-32
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	00813823          	sd	s0,16(sp)
    80004910:	00913423          	sd	s1,8(sp)
    80004914:	01213023          	sd	s2,0(sp)
    80004918:	02010413          	addi	s0,sp,32
    8000491c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004920:	00000913          	li	s2,0
    80004924:	00c0006f          	j	80004930 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	97c080e7          	jalr	-1668(ra) # 800022a4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004930:	00007797          	auipc	a5,0x7
    80004934:	c987a783          	lw	a5,-872(a5) # 8000b5c8 <_ZL9threadEnd>
    80004938:	02079e63          	bnez	a5,80004974 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000493c:	0004a583          	lw	a1,0(s1)
    80004940:	0305859b          	addiw	a1,a1,48
    80004944:	0084b503          	ld	a0,8(s1)
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	bac080e7          	jalr	-1108(ra) # 800054f4 <_ZN9BufferCPP3putEi>
        i++;
    80004950:	0019071b          	addiw	a4,s2,1
    80004954:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004958:	0004a683          	lw	a3,0(s1)
    8000495c:	0026979b          	slliw	a5,a3,0x2
    80004960:	00d787bb          	addw	a5,a5,a3
    80004964:	0017979b          	slliw	a5,a5,0x1
    80004968:	02f767bb          	remw	a5,a4,a5
    8000496c:	fc0792e3          	bnez	a5,80004930 <_ZN12ProducerSync8producerEPv+0x2c>
    80004970:	fb9ff06f          	j	80004928 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004974:	0104b503          	ld	a0,16(s1)
    80004978:	ffffe097          	auipc	ra,0xffffe
    8000497c:	900080e7          	jalr	-1792(ra) # 80002278 <_ZN9Semaphore6signalEv>
}
    80004980:	01813083          	ld	ra,24(sp)
    80004984:	01013403          	ld	s0,16(sp)
    80004988:	00813483          	ld	s1,8(sp)
    8000498c:	00013903          	ld	s2,0(sp)
    80004990:	02010113          	addi	sp,sp,32
    80004994:	00008067          	ret

0000000080004998 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004998:	fd010113          	addi	sp,sp,-48
    8000499c:	02113423          	sd	ra,40(sp)
    800049a0:	02813023          	sd	s0,32(sp)
    800049a4:	00913c23          	sd	s1,24(sp)
    800049a8:	01213823          	sd	s2,16(sp)
    800049ac:	01313423          	sd	s3,8(sp)
    800049b0:	01413023          	sd	s4,0(sp)
    800049b4:	03010413          	addi	s0,sp,48
    800049b8:	00050993          	mv	s3,a0
    800049bc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800049c0:	00000a13          	li	s4,0
    800049c4:	01c0006f          	j	800049e0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800049c8:	ffffe097          	auipc	ra,0xffffe
    800049cc:	8dc080e7          	jalr	-1828(ra) # 800022a4 <_ZN6Thread8dispatchEv>
    800049d0:	0500006f          	j	80004a20 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800049d4:	00a00513          	li	a0,10
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	ad8080e7          	jalr	-1320(ra) # 800014b0 <_Z4putcc>
    while (!threadEnd) {
    800049e0:	00007797          	auipc	a5,0x7
    800049e4:	be87a783          	lw	a5,-1048(a5) # 8000b5c8 <_ZL9threadEnd>
    800049e8:	06079263          	bnez	a5,80004a4c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800049ec:	00893503          	ld	a0,8(s2)
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	b94080e7          	jalr	-1132(ra) # 80005584 <_ZN9BufferCPP3getEv>
        i++;
    800049f8:	001a049b          	addiw	s1,s4,1
    800049fc:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004a00:	0ff57513          	andi	a0,a0,255
    80004a04:	ffffd097          	auipc	ra,0xffffd
    80004a08:	aac080e7          	jalr	-1364(ra) # 800014b0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004a0c:	00092703          	lw	a4,0(s2)
    80004a10:	0027179b          	slliw	a5,a4,0x2
    80004a14:	00e787bb          	addw	a5,a5,a4
    80004a18:	02f4e7bb          	remw	a5,s1,a5
    80004a1c:	fa0786e3          	beqz	a5,800049c8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004a20:	05000793          	li	a5,80
    80004a24:	02f4e4bb          	remw	s1,s1,a5
    80004a28:	fa049ce3          	bnez	s1,800049e0 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004a2c:	fa9ff06f          	j	800049d4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004a30:	0209b783          	ld	a5,32(s3)
    80004a34:	0087b503          	ld	a0,8(a5)
    80004a38:	00001097          	auipc	ra,0x1
    80004a3c:	b4c080e7          	jalr	-1204(ra) # 80005584 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004a40:	0ff57513          	andi	a0,a0,255
    80004a44:	ffffe097          	auipc	ra,0xffffe
    80004a48:	958080e7          	jalr	-1704(ra) # 8000239c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004a4c:	0209b783          	ld	a5,32(s3)
    80004a50:	0087b503          	ld	a0,8(a5)
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	bbc080e7          	jalr	-1092(ra) # 80005610 <_ZN9BufferCPP6getCntEv>
    80004a5c:	fca04ae3          	bgtz	a0,80004a30 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004a60:	01093503          	ld	a0,16(s2)
    80004a64:	ffffe097          	auipc	ra,0xffffe
    80004a68:	814080e7          	jalr	-2028(ra) # 80002278 <_ZN9Semaphore6signalEv>
}
    80004a6c:	02813083          	ld	ra,40(sp)
    80004a70:	02013403          	ld	s0,32(sp)
    80004a74:	01813483          	ld	s1,24(sp)
    80004a78:	01013903          	ld	s2,16(sp)
    80004a7c:	00813983          	ld	s3,8(sp)
    80004a80:	00013a03          	ld	s4,0(sp)
    80004a84:	03010113          	addi	sp,sp,48
    80004a88:	00008067          	ret

0000000080004a8c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004a8c:	f8010113          	addi	sp,sp,-128
    80004a90:	06113c23          	sd	ra,120(sp)
    80004a94:	06813823          	sd	s0,112(sp)
    80004a98:	06913423          	sd	s1,104(sp)
    80004a9c:	07213023          	sd	s2,96(sp)
    80004aa0:	05313c23          	sd	s3,88(sp)
    80004aa4:	05413823          	sd	s4,80(sp)
    80004aa8:	05513423          	sd	s5,72(sp)
    80004aac:	05613023          	sd	s6,64(sp)
    80004ab0:	03713c23          	sd	s7,56(sp)
    80004ab4:	03813823          	sd	s8,48(sp)
    80004ab8:	03913423          	sd	s9,40(sp)
    80004abc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004ac0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004ac4:	00004517          	auipc	a0,0x4
    80004ac8:	6c450513          	addi	a0,a0,1732 # 80009188 <CONSOLE_STATUS+0x178>
    80004acc:	00000097          	auipc	ra,0x0
    80004ad0:	604080e7          	jalr	1540(ra) # 800050d0 <_Z11printStringPKc>
    getString(input, 30);
    80004ad4:	01e00593          	li	a1,30
    80004ad8:	f8040493          	addi	s1,s0,-128
    80004adc:	00048513          	mv	a0,s1
    80004ae0:	00000097          	auipc	ra,0x0
    80004ae4:	678080e7          	jalr	1656(ra) # 80005158 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ae8:	00048513          	mv	a0,s1
    80004aec:	00000097          	auipc	ra,0x0
    80004af0:	744080e7          	jalr	1860(ra) # 80005230 <_Z11stringToIntPKc>
    80004af4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004af8:	00004517          	auipc	a0,0x4
    80004afc:	6b050513          	addi	a0,a0,1712 # 800091a8 <CONSOLE_STATUS+0x198>
    80004b00:	00000097          	auipc	ra,0x0
    80004b04:	5d0080e7          	jalr	1488(ra) # 800050d0 <_Z11printStringPKc>
    getString(input, 30);
    80004b08:	01e00593          	li	a1,30
    80004b0c:	00048513          	mv	a0,s1
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	648080e7          	jalr	1608(ra) # 80005158 <_Z9getStringPci>
    n = stringToInt(input);
    80004b18:	00048513          	mv	a0,s1
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	714080e7          	jalr	1812(ra) # 80005230 <_Z11stringToIntPKc>
    80004b24:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004b28:	00004517          	auipc	a0,0x4
    80004b2c:	6a050513          	addi	a0,a0,1696 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80004b30:	00000097          	auipc	ra,0x0
    80004b34:	5a0080e7          	jalr	1440(ra) # 800050d0 <_Z11printStringPKc>
    80004b38:	00000613          	li	a2,0
    80004b3c:	00a00593          	li	a1,10
    80004b40:	00090513          	mv	a0,s2
    80004b44:	00000097          	auipc	ra,0x0
    80004b48:	73c080e7          	jalr	1852(ra) # 80005280 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004b4c:	00004517          	auipc	a0,0x4
    80004b50:	69450513          	addi	a0,a0,1684 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004b54:	00000097          	auipc	ra,0x0
    80004b58:	57c080e7          	jalr	1404(ra) # 800050d0 <_Z11printStringPKc>
    80004b5c:	00000613          	li	a2,0
    80004b60:	00a00593          	li	a1,10
    80004b64:	00048513          	mv	a0,s1
    80004b68:	00000097          	auipc	ra,0x0
    80004b6c:	718080e7          	jalr	1816(ra) # 80005280 <_Z8printIntiii>
    printString(".\n");
    80004b70:	00004517          	auipc	a0,0x4
    80004b74:	68850513          	addi	a0,a0,1672 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80004b78:	00000097          	auipc	ra,0x0
    80004b7c:	558080e7          	jalr	1368(ra) # 800050d0 <_Z11printStringPKc>
    if(threadNum > n) {
    80004b80:	0324c463          	blt	s1,s2,80004ba8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004b84:	03205c63          	blez	s2,80004bbc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004b88:	03800513          	li	a0,56
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	104080e7          	jalr	260(ra) # 80001c90 <_Znwm>
    80004b94:	00050a93          	mv	s5,a0
    80004b98:	00048593          	mv	a1,s1
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	804080e7          	jalr	-2044(ra) # 800053a0 <_ZN9BufferCPPC1Ei>
    80004ba4:	0300006f          	j	80004bd4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004ba8:	00004517          	auipc	a0,0x4
    80004bac:	65850513          	addi	a0,a0,1624 # 80009200 <CONSOLE_STATUS+0x1f0>
    80004bb0:	00000097          	auipc	ra,0x0
    80004bb4:	520080e7          	jalr	1312(ra) # 800050d0 <_Z11printStringPKc>
        return;
    80004bb8:	0140006f          	j	80004bcc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004bbc:	00004517          	auipc	a0,0x4
    80004bc0:	68450513          	addi	a0,a0,1668 # 80009240 <CONSOLE_STATUS+0x230>
    80004bc4:	00000097          	auipc	ra,0x0
    80004bc8:	50c080e7          	jalr	1292(ra) # 800050d0 <_Z11printStringPKc>
        return;
    80004bcc:	000b8113          	mv	sp,s7
    80004bd0:	2380006f          	j	80004e08 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004bd4:	01000513          	li	a0,16
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	0b8080e7          	jalr	184(ra) # 80001c90 <_Znwm>
    80004be0:	00050493          	mv	s1,a0
    80004be4:	00000593          	li	a1,0
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	62c080e7          	jalr	1580(ra) # 80002214 <_ZN9SemaphoreC1Ej>
    80004bf0:	00007797          	auipc	a5,0x7
    80004bf4:	9e97b023          	sd	s1,-1568(a5) # 8000b5d0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004bf8:	00391793          	slli	a5,s2,0x3
    80004bfc:	00f78793          	addi	a5,a5,15
    80004c00:	ff07f793          	andi	a5,a5,-16
    80004c04:	40f10133          	sub	sp,sp,a5
    80004c08:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004c0c:	0019071b          	addiw	a4,s2,1
    80004c10:	00171793          	slli	a5,a4,0x1
    80004c14:	00e787b3          	add	a5,a5,a4
    80004c18:	00379793          	slli	a5,a5,0x3
    80004c1c:	00f78793          	addi	a5,a5,15
    80004c20:	ff07f793          	andi	a5,a5,-16
    80004c24:	40f10133          	sub	sp,sp,a5
    80004c28:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004c2c:	00191c13          	slli	s8,s2,0x1
    80004c30:	012c07b3          	add	a5,s8,s2
    80004c34:	00379793          	slli	a5,a5,0x3
    80004c38:	00fa07b3          	add	a5,s4,a5
    80004c3c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004c40:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004c44:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004c48:	02800513          	li	a0,40
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	044080e7          	jalr	68(ra) # 80001c90 <_Znwm>
    80004c54:	00050b13          	mv	s6,a0
    80004c58:	012c0c33          	add	s8,s8,s2
    80004c5c:	003c1c13          	slli	s8,s8,0x3
    80004c60:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004c64:	ffffd097          	auipc	ra,0xffffd
    80004c68:	6a0080e7          	jalr	1696(ra) # 80002304 <_ZN6ThreadC1Ev>
    80004c6c:	00007797          	auipc	a5,0x7
    80004c70:	84c78793          	addi	a5,a5,-1972 # 8000b4b8 <_ZTV12ConsumerSync+0x10>
    80004c74:	00fb3023          	sd	a5,0(s6)
    80004c78:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004c7c:	000b0513          	mv	a0,s6
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	6c8080e7          	jalr	1736(ra) # 80002348 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004c88:	00000493          	li	s1,0
    80004c8c:	0380006f          	j	80004cc4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004c90:	00007797          	auipc	a5,0x7
    80004c94:	80078793          	addi	a5,a5,-2048 # 8000b490 <_ZTV12ProducerSync+0x10>
    80004c98:	00fcb023          	sd	a5,0(s9)
    80004c9c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004ca0:	00349793          	slli	a5,s1,0x3
    80004ca4:	00f987b3          	add	a5,s3,a5
    80004ca8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004cac:	00349793          	slli	a5,s1,0x3
    80004cb0:	00f987b3          	add	a5,s3,a5
    80004cb4:	0007b503          	ld	a0,0(a5)
    80004cb8:	ffffd097          	auipc	ra,0xffffd
    80004cbc:	690080e7          	jalr	1680(ra) # 80002348 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004cc0:	0014849b          	addiw	s1,s1,1
    80004cc4:	0b24d063          	bge	s1,s2,80004d64 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004cc8:	00149793          	slli	a5,s1,0x1
    80004ccc:	009787b3          	add	a5,a5,s1
    80004cd0:	00379793          	slli	a5,a5,0x3
    80004cd4:	00fa07b3          	add	a5,s4,a5
    80004cd8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004cdc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004ce0:	00007717          	auipc	a4,0x7
    80004ce4:	8f073703          	ld	a4,-1808(a4) # 8000b5d0 <_ZL10waitForAll>
    80004ce8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004cec:	02905863          	blez	s1,80004d1c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004cf0:	02800513          	li	a0,40
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	f9c080e7          	jalr	-100(ra) # 80001c90 <_Znwm>
    80004cfc:	00050c93          	mv	s9,a0
    80004d00:	00149c13          	slli	s8,s1,0x1
    80004d04:	009c0c33          	add	s8,s8,s1
    80004d08:	003c1c13          	slli	s8,s8,0x3
    80004d0c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004d10:	ffffd097          	auipc	ra,0xffffd
    80004d14:	5f4080e7          	jalr	1524(ra) # 80002304 <_ZN6ThreadC1Ev>
    80004d18:	f79ff06f          	j	80004c90 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004d1c:	02800513          	li	a0,40
    80004d20:	ffffd097          	auipc	ra,0xffffd
    80004d24:	f70080e7          	jalr	-144(ra) # 80001c90 <_Znwm>
    80004d28:	00050c93          	mv	s9,a0
    80004d2c:	00149c13          	slli	s8,s1,0x1
    80004d30:	009c0c33          	add	s8,s8,s1
    80004d34:	003c1c13          	slli	s8,s8,0x3
    80004d38:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	5c8080e7          	jalr	1480(ra) # 80002304 <_ZN6ThreadC1Ev>
    80004d44:	00006797          	auipc	a5,0x6
    80004d48:	72478793          	addi	a5,a5,1828 # 8000b468 <_ZTV16ProducerKeyboard+0x10>
    80004d4c:	00fcb023          	sd	a5,0(s9)
    80004d50:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004d54:	00349793          	slli	a5,s1,0x3
    80004d58:	00f987b3          	add	a5,s3,a5
    80004d5c:	0197b023          	sd	s9,0(a5)
    80004d60:	f4dff06f          	j	80004cac <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004d64:	ffffd097          	auipc	ra,0xffffd
    80004d68:	540080e7          	jalr	1344(ra) # 800022a4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d6c:	00000493          	li	s1,0
    80004d70:	00994e63          	blt	s2,s1,80004d8c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004d74:	00007517          	auipc	a0,0x7
    80004d78:	85c53503          	ld	a0,-1956(a0) # 8000b5d0 <_ZL10waitForAll>
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	4d0080e7          	jalr	1232(ra) # 8000224c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d84:	0014849b          	addiw	s1,s1,1
    80004d88:	fe9ff06f          	j	80004d70 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004d8c:	00000493          	li	s1,0
    80004d90:	0080006f          	j	80004d98 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004d94:	0014849b          	addiw	s1,s1,1
    80004d98:	0324d263          	bge	s1,s2,80004dbc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004d9c:	00349793          	slli	a5,s1,0x3
    80004da0:	00f987b3          	add	a5,s3,a5
    80004da4:	0007b503          	ld	a0,0(a5)
    80004da8:	fe0506e3          	beqz	a0,80004d94 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004dac:	00053783          	ld	a5,0(a0)
    80004db0:	0087b783          	ld	a5,8(a5)
    80004db4:	000780e7          	jalr	a5
    80004db8:	fddff06f          	j	80004d94 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004dbc:	000b0a63          	beqz	s6,80004dd0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004dc0:	000b3783          	ld	a5,0(s6)
    80004dc4:	0087b783          	ld	a5,8(a5)
    80004dc8:	000b0513          	mv	a0,s6
    80004dcc:	000780e7          	jalr	a5
    delete waitForAll;
    80004dd0:	00007517          	auipc	a0,0x7
    80004dd4:	80053503          	ld	a0,-2048(a0) # 8000b5d0 <_ZL10waitForAll>
    80004dd8:	00050863          	beqz	a0,80004de8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004ddc:	00053783          	ld	a5,0(a0)
    80004de0:	0087b783          	ld	a5,8(a5)
    80004de4:	000780e7          	jalr	a5
    delete buffer;
    80004de8:	000a8e63          	beqz	s5,80004e04 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004dec:	000a8513          	mv	a0,s5
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	8a8080e7          	jalr	-1880(ra) # 80005698 <_ZN9BufferCPPD1Ev>
    80004df8:	000a8513          	mv	a0,s5
    80004dfc:	ffffd097          	auipc	ra,0xffffd
    80004e00:	f94080e7          	jalr	-108(ra) # 80001d90 <_ZdlPv>
    80004e04:	000b8113          	mv	sp,s7

}
    80004e08:	f8040113          	addi	sp,s0,-128
    80004e0c:	07813083          	ld	ra,120(sp)
    80004e10:	07013403          	ld	s0,112(sp)
    80004e14:	06813483          	ld	s1,104(sp)
    80004e18:	06013903          	ld	s2,96(sp)
    80004e1c:	05813983          	ld	s3,88(sp)
    80004e20:	05013a03          	ld	s4,80(sp)
    80004e24:	04813a83          	ld	s5,72(sp)
    80004e28:	04013b03          	ld	s6,64(sp)
    80004e2c:	03813b83          	ld	s7,56(sp)
    80004e30:	03013c03          	ld	s8,48(sp)
    80004e34:	02813c83          	ld	s9,40(sp)
    80004e38:	08010113          	addi	sp,sp,128
    80004e3c:	00008067          	ret
    80004e40:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004e44:	000a8513          	mv	a0,s5
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	f48080e7          	jalr	-184(ra) # 80001d90 <_ZdlPv>
    80004e50:	00048513          	mv	a0,s1
    80004e54:	00008097          	auipc	ra,0x8
    80004e58:	864080e7          	jalr	-1948(ra) # 8000c6b8 <_Unwind_Resume>
    80004e5c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004e60:	00048513          	mv	a0,s1
    80004e64:	ffffd097          	auipc	ra,0xffffd
    80004e68:	f2c080e7          	jalr	-212(ra) # 80001d90 <_ZdlPv>
    80004e6c:	00090513          	mv	a0,s2
    80004e70:	00008097          	auipc	ra,0x8
    80004e74:	848080e7          	jalr	-1976(ra) # 8000c6b8 <_Unwind_Resume>
    80004e78:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004e7c:	000b0513          	mv	a0,s6
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	f10080e7          	jalr	-240(ra) # 80001d90 <_ZdlPv>
    80004e88:	00048513          	mv	a0,s1
    80004e8c:	00008097          	auipc	ra,0x8
    80004e90:	82c080e7          	jalr	-2004(ra) # 8000c6b8 <_Unwind_Resume>
    80004e94:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004e98:	000c8513          	mv	a0,s9
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	ef4080e7          	jalr	-268(ra) # 80001d90 <_ZdlPv>
    80004ea4:	00048513          	mv	a0,s1
    80004ea8:	00008097          	auipc	ra,0x8
    80004eac:	810080e7          	jalr	-2032(ra) # 8000c6b8 <_Unwind_Resume>
    80004eb0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004eb4:	000c8513          	mv	a0,s9
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	ed8080e7          	jalr	-296(ra) # 80001d90 <_ZdlPv>
    80004ec0:	00048513          	mv	a0,s1
    80004ec4:	00007097          	auipc	ra,0x7
    80004ec8:	7f4080e7          	jalr	2036(ra) # 8000c6b8 <_Unwind_Resume>

0000000080004ecc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004ecc:	ff010113          	addi	sp,sp,-16
    80004ed0:	00113423          	sd	ra,8(sp)
    80004ed4:	00813023          	sd	s0,0(sp)
    80004ed8:	01010413          	addi	s0,sp,16
    80004edc:	00006797          	auipc	a5,0x6
    80004ee0:	5dc78793          	addi	a5,a5,1500 # 8000b4b8 <_ZTV12ConsumerSync+0x10>
    80004ee4:	00f53023          	sd	a5,0(a0)
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	240080e7          	jalr	576(ra) # 80002128 <_ZN6ThreadD1Ev>
    80004ef0:	00813083          	ld	ra,8(sp)
    80004ef4:	00013403          	ld	s0,0(sp)
    80004ef8:	01010113          	addi	sp,sp,16
    80004efc:	00008067          	ret

0000000080004f00 <_ZN12ConsumerSyncD0Ev>:
    80004f00:	fe010113          	addi	sp,sp,-32
    80004f04:	00113c23          	sd	ra,24(sp)
    80004f08:	00813823          	sd	s0,16(sp)
    80004f0c:	00913423          	sd	s1,8(sp)
    80004f10:	02010413          	addi	s0,sp,32
    80004f14:	00050493          	mv	s1,a0
    80004f18:	00006797          	auipc	a5,0x6
    80004f1c:	5a078793          	addi	a5,a5,1440 # 8000b4b8 <_ZTV12ConsumerSync+0x10>
    80004f20:	00f53023          	sd	a5,0(a0)
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	204080e7          	jalr	516(ra) # 80002128 <_ZN6ThreadD1Ev>
    80004f2c:	00048513          	mv	a0,s1
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	e60080e7          	jalr	-416(ra) # 80001d90 <_ZdlPv>
    80004f38:	01813083          	ld	ra,24(sp)
    80004f3c:	01013403          	ld	s0,16(sp)
    80004f40:	00813483          	ld	s1,8(sp)
    80004f44:	02010113          	addi	sp,sp,32
    80004f48:	00008067          	ret

0000000080004f4c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004f4c:	ff010113          	addi	sp,sp,-16
    80004f50:	00113423          	sd	ra,8(sp)
    80004f54:	00813023          	sd	s0,0(sp)
    80004f58:	01010413          	addi	s0,sp,16
    80004f5c:	00006797          	auipc	a5,0x6
    80004f60:	53478793          	addi	a5,a5,1332 # 8000b490 <_ZTV12ProducerSync+0x10>
    80004f64:	00f53023          	sd	a5,0(a0)
    80004f68:	ffffd097          	auipc	ra,0xffffd
    80004f6c:	1c0080e7          	jalr	448(ra) # 80002128 <_ZN6ThreadD1Ev>
    80004f70:	00813083          	ld	ra,8(sp)
    80004f74:	00013403          	ld	s0,0(sp)
    80004f78:	01010113          	addi	sp,sp,16
    80004f7c:	00008067          	ret

0000000080004f80 <_ZN12ProducerSyncD0Ev>:
    80004f80:	fe010113          	addi	sp,sp,-32
    80004f84:	00113c23          	sd	ra,24(sp)
    80004f88:	00813823          	sd	s0,16(sp)
    80004f8c:	00913423          	sd	s1,8(sp)
    80004f90:	02010413          	addi	s0,sp,32
    80004f94:	00050493          	mv	s1,a0
    80004f98:	00006797          	auipc	a5,0x6
    80004f9c:	4f878793          	addi	a5,a5,1272 # 8000b490 <_ZTV12ProducerSync+0x10>
    80004fa0:	00f53023          	sd	a5,0(a0)
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	184080e7          	jalr	388(ra) # 80002128 <_ZN6ThreadD1Ev>
    80004fac:	00048513          	mv	a0,s1
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	de0080e7          	jalr	-544(ra) # 80001d90 <_ZdlPv>
    80004fb8:	01813083          	ld	ra,24(sp)
    80004fbc:	01013403          	ld	s0,16(sp)
    80004fc0:	00813483          	ld	s1,8(sp)
    80004fc4:	02010113          	addi	sp,sp,32
    80004fc8:	00008067          	ret

0000000080004fcc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004fcc:	ff010113          	addi	sp,sp,-16
    80004fd0:	00113423          	sd	ra,8(sp)
    80004fd4:	00813023          	sd	s0,0(sp)
    80004fd8:	01010413          	addi	s0,sp,16
    80004fdc:	00006797          	auipc	a5,0x6
    80004fe0:	48c78793          	addi	a5,a5,1164 # 8000b468 <_ZTV16ProducerKeyboard+0x10>
    80004fe4:	00f53023          	sd	a5,0(a0)
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	140080e7          	jalr	320(ra) # 80002128 <_ZN6ThreadD1Ev>
    80004ff0:	00813083          	ld	ra,8(sp)
    80004ff4:	00013403          	ld	s0,0(sp)
    80004ff8:	01010113          	addi	sp,sp,16
    80004ffc:	00008067          	ret

0000000080005000 <_ZN16ProducerKeyboardD0Ev>:
    80005000:	fe010113          	addi	sp,sp,-32
    80005004:	00113c23          	sd	ra,24(sp)
    80005008:	00813823          	sd	s0,16(sp)
    8000500c:	00913423          	sd	s1,8(sp)
    80005010:	02010413          	addi	s0,sp,32
    80005014:	00050493          	mv	s1,a0
    80005018:	00006797          	auipc	a5,0x6
    8000501c:	45078793          	addi	a5,a5,1104 # 8000b468 <_ZTV16ProducerKeyboard+0x10>
    80005020:	00f53023          	sd	a5,0(a0)
    80005024:	ffffd097          	auipc	ra,0xffffd
    80005028:	104080e7          	jalr	260(ra) # 80002128 <_ZN6ThreadD1Ev>
    8000502c:	00048513          	mv	a0,s1
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	d60080e7          	jalr	-672(ra) # 80001d90 <_ZdlPv>
    80005038:	01813083          	ld	ra,24(sp)
    8000503c:	01013403          	ld	s0,16(sp)
    80005040:	00813483          	ld	s1,8(sp)
    80005044:	02010113          	addi	sp,sp,32
    80005048:	00008067          	ret

000000008000504c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000504c:	ff010113          	addi	sp,sp,-16
    80005050:	00113423          	sd	ra,8(sp)
    80005054:	00813023          	sd	s0,0(sp)
    80005058:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000505c:	02053583          	ld	a1,32(a0)
    80005060:	fffff097          	auipc	ra,0xfffff
    80005064:	7e4080e7          	jalr	2020(ra) # 80004844 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005068:	00813083          	ld	ra,8(sp)
    8000506c:	00013403          	ld	s0,0(sp)
    80005070:	01010113          	addi	sp,sp,16
    80005074:	00008067          	ret

0000000080005078 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005078:	ff010113          	addi	sp,sp,-16
    8000507c:	00113423          	sd	ra,8(sp)
    80005080:	00813023          	sd	s0,0(sp)
    80005084:	01010413          	addi	s0,sp,16
        producer(td);
    80005088:	02053583          	ld	a1,32(a0)
    8000508c:	00000097          	auipc	ra,0x0
    80005090:	878080e7          	jalr	-1928(ra) # 80004904 <_ZN12ProducerSync8producerEPv>
    }
    80005094:	00813083          	ld	ra,8(sp)
    80005098:	00013403          	ld	s0,0(sp)
    8000509c:	01010113          	addi	sp,sp,16
    800050a0:	00008067          	ret

00000000800050a4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800050a4:	ff010113          	addi	sp,sp,-16
    800050a8:	00113423          	sd	ra,8(sp)
    800050ac:	00813023          	sd	s0,0(sp)
    800050b0:	01010413          	addi	s0,sp,16
        consumer(td);
    800050b4:	02053583          	ld	a1,32(a0)
    800050b8:	00000097          	auipc	ra,0x0
    800050bc:	8e0080e7          	jalr	-1824(ra) # 80004998 <_ZN12ConsumerSync8consumerEPv>
    }
    800050c0:	00813083          	ld	ra,8(sp)
    800050c4:	00013403          	ld	s0,0(sp)
    800050c8:	01010113          	addi	sp,sp,16
    800050cc:	00008067          	ret

00000000800050d0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800050d0:	fe010113          	addi	sp,sp,-32
    800050d4:	00113c23          	sd	ra,24(sp)
    800050d8:	00813823          	sd	s0,16(sp)
    800050dc:	00913423          	sd	s1,8(sp)
    800050e0:	02010413          	addi	s0,sp,32
    800050e4:	00050493          	mv	s1,a0
    LOCK();
    800050e8:	00100613          	li	a2,1
    800050ec:	00000593          	li	a1,0
    800050f0:	00006517          	auipc	a0,0x6
    800050f4:	4e850513          	addi	a0,a0,1256 # 8000b5d8 <lockPrint>
    800050f8:	ffffc097          	auipc	ra,0xffffc
    800050fc:	124080e7          	jalr	292(ra) # 8000121c <copy_and_swap>
    80005100:	00050863          	beqz	a0,80005110 <_Z11printStringPKc+0x40>
    80005104:	ffffc097          	auipc	ra,0xffffc
    80005108:	284080e7          	jalr	644(ra) # 80001388 <_Z15thread_dispatchv>
    8000510c:	fddff06f          	j	800050e8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005110:	0004c503          	lbu	a0,0(s1)
    80005114:	00050a63          	beqz	a0,80005128 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	398080e7          	jalr	920(ra) # 800014b0 <_Z4putcc>
        string++;
    80005120:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005124:	fedff06f          	j	80005110 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005128:	00000613          	li	a2,0
    8000512c:	00100593          	li	a1,1
    80005130:	00006517          	auipc	a0,0x6
    80005134:	4a850513          	addi	a0,a0,1192 # 8000b5d8 <lockPrint>
    80005138:	ffffc097          	auipc	ra,0xffffc
    8000513c:	0e4080e7          	jalr	228(ra) # 8000121c <copy_and_swap>
    80005140:	fe0514e3          	bnez	a0,80005128 <_Z11printStringPKc+0x58>
}
    80005144:	01813083          	ld	ra,24(sp)
    80005148:	01013403          	ld	s0,16(sp)
    8000514c:	00813483          	ld	s1,8(sp)
    80005150:	02010113          	addi	sp,sp,32
    80005154:	00008067          	ret

0000000080005158 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005158:	fd010113          	addi	sp,sp,-48
    8000515c:	02113423          	sd	ra,40(sp)
    80005160:	02813023          	sd	s0,32(sp)
    80005164:	00913c23          	sd	s1,24(sp)
    80005168:	01213823          	sd	s2,16(sp)
    8000516c:	01313423          	sd	s3,8(sp)
    80005170:	01413023          	sd	s4,0(sp)
    80005174:	03010413          	addi	s0,sp,48
    80005178:	00050993          	mv	s3,a0
    8000517c:	00058a13          	mv	s4,a1
    LOCK();
    80005180:	00100613          	li	a2,1
    80005184:	00000593          	li	a1,0
    80005188:	00006517          	auipc	a0,0x6
    8000518c:	45050513          	addi	a0,a0,1104 # 8000b5d8 <lockPrint>
    80005190:	ffffc097          	auipc	ra,0xffffc
    80005194:	08c080e7          	jalr	140(ra) # 8000121c <copy_and_swap>
    80005198:	00050863          	beqz	a0,800051a8 <_Z9getStringPci+0x50>
    8000519c:	ffffc097          	auipc	ra,0xffffc
    800051a0:	1ec080e7          	jalr	492(ra) # 80001388 <_Z15thread_dispatchv>
    800051a4:	fddff06f          	j	80005180 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800051a8:	00000913          	li	s2,0
    800051ac:	00090493          	mv	s1,s2
    800051b0:	0019091b          	addiw	s2,s2,1
    800051b4:	03495a63          	bge	s2,s4,800051e8 <_Z9getStringPci+0x90>
        cc = getc();
    800051b8:	ffffc097          	auipc	ra,0xffffc
    800051bc:	2d0080e7          	jalr	720(ra) # 80001488 <_Z4getcv>
        if(cc < 1)
    800051c0:	02050463          	beqz	a0,800051e8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800051c4:	009984b3          	add	s1,s3,s1
    800051c8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800051cc:	00a00793          	li	a5,10
    800051d0:	00f50a63          	beq	a0,a5,800051e4 <_Z9getStringPci+0x8c>
    800051d4:	00d00793          	li	a5,13
    800051d8:	fcf51ae3          	bne	a0,a5,800051ac <_Z9getStringPci+0x54>
        buf[i++] = c;
    800051dc:	00090493          	mv	s1,s2
    800051e0:	0080006f          	j	800051e8 <_Z9getStringPci+0x90>
    800051e4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800051e8:	009984b3          	add	s1,s3,s1
    800051ec:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800051f0:	00000613          	li	a2,0
    800051f4:	00100593          	li	a1,1
    800051f8:	00006517          	auipc	a0,0x6
    800051fc:	3e050513          	addi	a0,a0,992 # 8000b5d8 <lockPrint>
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	01c080e7          	jalr	28(ra) # 8000121c <copy_and_swap>
    80005208:	fe0514e3          	bnez	a0,800051f0 <_Z9getStringPci+0x98>
    return buf;
}
    8000520c:	00098513          	mv	a0,s3
    80005210:	02813083          	ld	ra,40(sp)
    80005214:	02013403          	ld	s0,32(sp)
    80005218:	01813483          	ld	s1,24(sp)
    8000521c:	01013903          	ld	s2,16(sp)
    80005220:	00813983          	ld	s3,8(sp)
    80005224:	00013a03          	ld	s4,0(sp)
    80005228:	03010113          	addi	sp,sp,48
    8000522c:	00008067          	ret

0000000080005230 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005230:	ff010113          	addi	sp,sp,-16
    80005234:	00813423          	sd	s0,8(sp)
    80005238:	01010413          	addi	s0,sp,16
    8000523c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005240:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005244:	0006c603          	lbu	a2,0(a3)
    80005248:	fd06071b          	addiw	a4,a2,-48
    8000524c:	0ff77713          	andi	a4,a4,255
    80005250:	00900793          	li	a5,9
    80005254:	02e7e063          	bltu	a5,a4,80005274 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005258:	0025179b          	slliw	a5,a0,0x2
    8000525c:	00a787bb          	addw	a5,a5,a0
    80005260:	0017979b          	slliw	a5,a5,0x1
    80005264:	00168693          	addi	a3,a3,1
    80005268:	00c787bb          	addw	a5,a5,a2
    8000526c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005270:	fd5ff06f          	j	80005244 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005274:	00813403          	ld	s0,8(sp)
    80005278:	01010113          	addi	sp,sp,16
    8000527c:	00008067          	ret

0000000080005280 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005280:	fc010113          	addi	sp,sp,-64
    80005284:	02113c23          	sd	ra,56(sp)
    80005288:	02813823          	sd	s0,48(sp)
    8000528c:	02913423          	sd	s1,40(sp)
    80005290:	03213023          	sd	s2,32(sp)
    80005294:	01313c23          	sd	s3,24(sp)
    80005298:	04010413          	addi	s0,sp,64
    8000529c:	00050493          	mv	s1,a0
    800052a0:	00058913          	mv	s2,a1
    800052a4:	00060993          	mv	s3,a2
    LOCK();
    800052a8:	00100613          	li	a2,1
    800052ac:	00000593          	li	a1,0
    800052b0:	00006517          	auipc	a0,0x6
    800052b4:	32850513          	addi	a0,a0,808 # 8000b5d8 <lockPrint>
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	f64080e7          	jalr	-156(ra) # 8000121c <copy_and_swap>
    800052c0:	00050863          	beqz	a0,800052d0 <_Z8printIntiii+0x50>
    800052c4:	ffffc097          	auipc	ra,0xffffc
    800052c8:	0c4080e7          	jalr	196(ra) # 80001388 <_Z15thread_dispatchv>
    800052cc:	fddff06f          	j	800052a8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800052d0:	00098463          	beqz	s3,800052d8 <_Z8printIntiii+0x58>
    800052d4:	0804c463          	bltz	s1,8000535c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800052d8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800052dc:	00000593          	li	a1,0
    }

    i = 0;
    800052e0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800052e4:	0009079b          	sext.w	a5,s2
    800052e8:	0325773b          	remuw	a4,a0,s2
    800052ec:	00048613          	mv	a2,s1
    800052f0:	0014849b          	addiw	s1,s1,1
    800052f4:	02071693          	slli	a3,a4,0x20
    800052f8:	0206d693          	srli	a3,a3,0x20
    800052fc:	00006717          	auipc	a4,0x6
    80005300:	1d470713          	addi	a4,a4,468 # 8000b4d0 <digits>
    80005304:	00d70733          	add	a4,a4,a3
    80005308:	00074683          	lbu	a3,0(a4)
    8000530c:	fd040713          	addi	a4,s0,-48
    80005310:	00c70733          	add	a4,a4,a2
    80005314:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005318:	0005071b          	sext.w	a4,a0
    8000531c:	0325553b          	divuw	a0,a0,s2
    80005320:	fcf772e3          	bgeu	a4,a5,800052e4 <_Z8printIntiii+0x64>
    if(neg)
    80005324:	00058c63          	beqz	a1,8000533c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005328:	fd040793          	addi	a5,s0,-48
    8000532c:	009784b3          	add	s1,a5,s1
    80005330:	02d00793          	li	a5,45
    80005334:	fef48823          	sb	a5,-16(s1)
    80005338:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000533c:	fff4849b          	addiw	s1,s1,-1
    80005340:	0204c463          	bltz	s1,80005368 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005344:	fd040793          	addi	a5,s0,-48
    80005348:	009787b3          	add	a5,a5,s1
    8000534c:	ff07c503          	lbu	a0,-16(a5)
    80005350:	ffffc097          	auipc	ra,0xffffc
    80005354:	160080e7          	jalr	352(ra) # 800014b0 <_Z4putcc>
    80005358:	fe5ff06f          	j	8000533c <_Z8printIntiii+0xbc>
        x = -xx;
    8000535c:	4090053b          	negw	a0,s1
        neg = 1;
    80005360:	00100593          	li	a1,1
        x = -xx;
    80005364:	f7dff06f          	j	800052e0 <_Z8printIntiii+0x60>

    UNLOCK();
    80005368:	00000613          	li	a2,0
    8000536c:	00100593          	li	a1,1
    80005370:	00006517          	auipc	a0,0x6
    80005374:	26850513          	addi	a0,a0,616 # 8000b5d8 <lockPrint>
    80005378:	ffffc097          	auipc	ra,0xffffc
    8000537c:	ea4080e7          	jalr	-348(ra) # 8000121c <copy_and_swap>
    80005380:	fe0514e3          	bnez	a0,80005368 <_Z8printIntiii+0xe8>
    80005384:	03813083          	ld	ra,56(sp)
    80005388:	03013403          	ld	s0,48(sp)
    8000538c:	02813483          	ld	s1,40(sp)
    80005390:	02013903          	ld	s2,32(sp)
    80005394:	01813983          	ld	s3,24(sp)
    80005398:	04010113          	addi	sp,sp,64
    8000539c:	00008067          	ret

00000000800053a0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800053a0:	fd010113          	addi	sp,sp,-48
    800053a4:	02113423          	sd	ra,40(sp)
    800053a8:	02813023          	sd	s0,32(sp)
    800053ac:	00913c23          	sd	s1,24(sp)
    800053b0:	01213823          	sd	s2,16(sp)
    800053b4:	01313423          	sd	s3,8(sp)
    800053b8:	03010413          	addi	s0,sp,48
    800053bc:	00050493          	mv	s1,a0
    800053c0:	00058913          	mv	s2,a1
    800053c4:	0015879b          	addiw	a5,a1,1
    800053c8:	0007851b          	sext.w	a0,a5
    800053cc:	00f4a023          	sw	a5,0(s1)
    800053d0:	0004a823          	sw	zero,16(s1)
    800053d4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800053d8:	00251513          	slli	a0,a0,0x2
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	e60080e7          	jalr	-416(ra) # 8000123c <_Z9mem_allocm>
    800053e4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800053e8:	01000513          	li	a0,16
    800053ec:	ffffd097          	auipc	ra,0xffffd
    800053f0:	8a4080e7          	jalr	-1884(ra) # 80001c90 <_Znwm>
    800053f4:	00050993          	mv	s3,a0
    800053f8:	00000593          	li	a1,0
    800053fc:	ffffd097          	auipc	ra,0xffffd
    80005400:	e18080e7          	jalr	-488(ra) # 80002214 <_ZN9SemaphoreC1Ej>
    80005404:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005408:	01000513          	li	a0,16
    8000540c:	ffffd097          	auipc	ra,0xffffd
    80005410:	884080e7          	jalr	-1916(ra) # 80001c90 <_Znwm>
    80005414:	00050993          	mv	s3,a0
    80005418:	00090593          	mv	a1,s2
    8000541c:	ffffd097          	auipc	ra,0xffffd
    80005420:	df8080e7          	jalr	-520(ra) # 80002214 <_ZN9SemaphoreC1Ej>
    80005424:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005428:	01000513          	li	a0,16
    8000542c:	ffffd097          	auipc	ra,0xffffd
    80005430:	864080e7          	jalr	-1948(ra) # 80001c90 <_Znwm>
    80005434:	00050913          	mv	s2,a0
    80005438:	00100593          	li	a1,1
    8000543c:	ffffd097          	auipc	ra,0xffffd
    80005440:	dd8080e7          	jalr	-552(ra) # 80002214 <_ZN9SemaphoreC1Ej>
    80005444:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005448:	01000513          	li	a0,16
    8000544c:	ffffd097          	auipc	ra,0xffffd
    80005450:	844080e7          	jalr	-1980(ra) # 80001c90 <_Znwm>
    80005454:	00050913          	mv	s2,a0
    80005458:	00100593          	li	a1,1
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	db8080e7          	jalr	-584(ra) # 80002214 <_ZN9SemaphoreC1Ej>
    80005464:	0324b823          	sd	s2,48(s1)
}
    80005468:	02813083          	ld	ra,40(sp)
    8000546c:	02013403          	ld	s0,32(sp)
    80005470:	01813483          	ld	s1,24(sp)
    80005474:	01013903          	ld	s2,16(sp)
    80005478:	00813983          	ld	s3,8(sp)
    8000547c:	03010113          	addi	sp,sp,48
    80005480:	00008067          	ret
    80005484:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005488:	00098513          	mv	a0,s3
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	904080e7          	jalr	-1788(ra) # 80001d90 <_ZdlPv>
    80005494:	00048513          	mv	a0,s1
    80005498:	00007097          	auipc	ra,0x7
    8000549c:	220080e7          	jalr	544(ra) # 8000c6b8 <_Unwind_Resume>
    800054a0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800054a4:	00098513          	mv	a0,s3
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	8e8080e7          	jalr	-1816(ra) # 80001d90 <_ZdlPv>
    800054b0:	00048513          	mv	a0,s1
    800054b4:	00007097          	auipc	ra,0x7
    800054b8:	204080e7          	jalr	516(ra) # 8000c6b8 <_Unwind_Resume>
    800054bc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800054c0:	00090513          	mv	a0,s2
    800054c4:	ffffd097          	auipc	ra,0xffffd
    800054c8:	8cc080e7          	jalr	-1844(ra) # 80001d90 <_ZdlPv>
    800054cc:	00048513          	mv	a0,s1
    800054d0:	00007097          	auipc	ra,0x7
    800054d4:	1e8080e7          	jalr	488(ra) # 8000c6b8 <_Unwind_Resume>
    800054d8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800054dc:	00090513          	mv	a0,s2
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	8b0080e7          	jalr	-1872(ra) # 80001d90 <_ZdlPv>
    800054e8:	00048513          	mv	a0,s1
    800054ec:	00007097          	auipc	ra,0x7
    800054f0:	1cc080e7          	jalr	460(ra) # 8000c6b8 <_Unwind_Resume>

00000000800054f4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800054f4:	fe010113          	addi	sp,sp,-32
    800054f8:	00113c23          	sd	ra,24(sp)
    800054fc:	00813823          	sd	s0,16(sp)
    80005500:	00913423          	sd	s1,8(sp)
    80005504:	01213023          	sd	s2,0(sp)
    80005508:	02010413          	addi	s0,sp,32
    8000550c:	00050493          	mv	s1,a0
    80005510:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005514:	01853503          	ld	a0,24(a0)
    80005518:	ffffd097          	auipc	ra,0xffffd
    8000551c:	d34080e7          	jalr	-716(ra) # 8000224c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005520:	0304b503          	ld	a0,48(s1)
    80005524:	ffffd097          	auipc	ra,0xffffd
    80005528:	d28080e7          	jalr	-728(ra) # 8000224c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000552c:	0084b783          	ld	a5,8(s1)
    80005530:	0144a703          	lw	a4,20(s1)
    80005534:	00271713          	slli	a4,a4,0x2
    80005538:	00e787b3          	add	a5,a5,a4
    8000553c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005540:	0144a783          	lw	a5,20(s1)
    80005544:	0017879b          	addiw	a5,a5,1
    80005548:	0004a703          	lw	a4,0(s1)
    8000554c:	02e7e7bb          	remw	a5,a5,a4
    80005550:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005554:	0304b503          	ld	a0,48(s1)
    80005558:	ffffd097          	auipc	ra,0xffffd
    8000555c:	d20080e7          	jalr	-736(ra) # 80002278 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005560:	0204b503          	ld	a0,32(s1)
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	d14080e7          	jalr	-748(ra) # 80002278 <_ZN9Semaphore6signalEv>

}
    8000556c:	01813083          	ld	ra,24(sp)
    80005570:	01013403          	ld	s0,16(sp)
    80005574:	00813483          	ld	s1,8(sp)
    80005578:	00013903          	ld	s2,0(sp)
    8000557c:	02010113          	addi	sp,sp,32
    80005580:	00008067          	ret

0000000080005584 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005584:	fe010113          	addi	sp,sp,-32
    80005588:	00113c23          	sd	ra,24(sp)
    8000558c:	00813823          	sd	s0,16(sp)
    80005590:	00913423          	sd	s1,8(sp)
    80005594:	01213023          	sd	s2,0(sp)
    80005598:	02010413          	addi	s0,sp,32
    8000559c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800055a0:	02053503          	ld	a0,32(a0)
    800055a4:	ffffd097          	auipc	ra,0xffffd
    800055a8:	ca8080e7          	jalr	-856(ra) # 8000224c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800055ac:	0284b503          	ld	a0,40(s1)
    800055b0:	ffffd097          	auipc	ra,0xffffd
    800055b4:	c9c080e7          	jalr	-868(ra) # 8000224c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800055b8:	0084b703          	ld	a4,8(s1)
    800055bc:	0104a783          	lw	a5,16(s1)
    800055c0:	00279693          	slli	a3,a5,0x2
    800055c4:	00d70733          	add	a4,a4,a3
    800055c8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800055cc:	0017879b          	addiw	a5,a5,1
    800055d0:	0004a703          	lw	a4,0(s1)
    800055d4:	02e7e7bb          	remw	a5,a5,a4
    800055d8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800055dc:	0284b503          	ld	a0,40(s1)
    800055e0:	ffffd097          	auipc	ra,0xffffd
    800055e4:	c98080e7          	jalr	-872(ra) # 80002278 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800055e8:	0184b503          	ld	a0,24(s1)
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	c8c080e7          	jalr	-884(ra) # 80002278 <_ZN9Semaphore6signalEv>

    return ret;
}
    800055f4:	00090513          	mv	a0,s2
    800055f8:	01813083          	ld	ra,24(sp)
    800055fc:	01013403          	ld	s0,16(sp)
    80005600:	00813483          	ld	s1,8(sp)
    80005604:	00013903          	ld	s2,0(sp)
    80005608:	02010113          	addi	sp,sp,32
    8000560c:	00008067          	ret

0000000080005610 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005610:	fe010113          	addi	sp,sp,-32
    80005614:	00113c23          	sd	ra,24(sp)
    80005618:	00813823          	sd	s0,16(sp)
    8000561c:	00913423          	sd	s1,8(sp)
    80005620:	01213023          	sd	s2,0(sp)
    80005624:	02010413          	addi	s0,sp,32
    80005628:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000562c:	02853503          	ld	a0,40(a0)
    80005630:	ffffd097          	auipc	ra,0xffffd
    80005634:	c1c080e7          	jalr	-996(ra) # 8000224c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005638:	0304b503          	ld	a0,48(s1)
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	c10080e7          	jalr	-1008(ra) # 8000224c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005644:	0144a783          	lw	a5,20(s1)
    80005648:	0104a903          	lw	s2,16(s1)
    8000564c:	0327ce63          	blt	a5,s2,80005688 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005650:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005654:	0304b503          	ld	a0,48(s1)
    80005658:	ffffd097          	auipc	ra,0xffffd
    8000565c:	c20080e7          	jalr	-992(ra) # 80002278 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005660:	0284b503          	ld	a0,40(s1)
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	c14080e7          	jalr	-1004(ra) # 80002278 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000566c:	00090513          	mv	a0,s2
    80005670:	01813083          	ld	ra,24(sp)
    80005674:	01013403          	ld	s0,16(sp)
    80005678:	00813483          	ld	s1,8(sp)
    8000567c:	00013903          	ld	s2,0(sp)
    80005680:	02010113          	addi	sp,sp,32
    80005684:	00008067          	ret
        ret = cap - head + tail;
    80005688:	0004a703          	lw	a4,0(s1)
    8000568c:	4127093b          	subw	s2,a4,s2
    80005690:	00f9093b          	addw	s2,s2,a5
    80005694:	fc1ff06f          	j	80005654 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005698 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005698:	fe010113          	addi	sp,sp,-32
    8000569c:	00113c23          	sd	ra,24(sp)
    800056a0:	00813823          	sd	s0,16(sp)
    800056a4:	00913423          	sd	s1,8(sp)
    800056a8:	02010413          	addi	s0,sp,32
    800056ac:	00050493          	mv	s1,a0
    Console::putc('\n');
    800056b0:	00a00513          	li	a0,10
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	ce8080e7          	jalr	-792(ra) # 8000239c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800056bc:	00004517          	auipc	a0,0x4
    800056c0:	c9c50513          	addi	a0,a0,-868 # 80009358 <CONSOLE_STATUS+0x348>
    800056c4:	00000097          	auipc	ra,0x0
    800056c8:	a0c080e7          	jalr	-1524(ra) # 800050d0 <_Z11printStringPKc>
    while (getCnt()) {
    800056cc:	00048513          	mv	a0,s1
    800056d0:	00000097          	auipc	ra,0x0
    800056d4:	f40080e7          	jalr	-192(ra) # 80005610 <_ZN9BufferCPP6getCntEv>
    800056d8:	02050c63          	beqz	a0,80005710 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800056dc:	0084b783          	ld	a5,8(s1)
    800056e0:	0104a703          	lw	a4,16(s1)
    800056e4:	00271713          	slli	a4,a4,0x2
    800056e8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800056ec:	0007c503          	lbu	a0,0(a5)
    800056f0:	ffffd097          	auipc	ra,0xffffd
    800056f4:	cac080e7          	jalr	-852(ra) # 8000239c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800056f8:	0104a783          	lw	a5,16(s1)
    800056fc:	0017879b          	addiw	a5,a5,1
    80005700:	0004a703          	lw	a4,0(s1)
    80005704:	02e7e7bb          	remw	a5,a5,a4
    80005708:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000570c:	fc1ff06f          	j	800056cc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005710:	02100513          	li	a0,33
    80005714:	ffffd097          	auipc	ra,0xffffd
    80005718:	c88080e7          	jalr	-888(ra) # 8000239c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000571c:	00a00513          	li	a0,10
    80005720:	ffffd097          	auipc	ra,0xffffd
    80005724:	c7c080e7          	jalr	-900(ra) # 8000239c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005728:	0084b503          	ld	a0,8(s1)
    8000572c:	ffffc097          	auipc	ra,0xffffc
    80005730:	b50080e7          	jalr	-1200(ra) # 8000127c <_Z8mem_freePv>
    delete itemAvailable;
    80005734:	0204b503          	ld	a0,32(s1)
    80005738:	00050863          	beqz	a0,80005748 <_ZN9BufferCPPD1Ev+0xb0>
    8000573c:	00053783          	ld	a5,0(a0)
    80005740:	0087b783          	ld	a5,8(a5)
    80005744:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005748:	0184b503          	ld	a0,24(s1)
    8000574c:	00050863          	beqz	a0,8000575c <_ZN9BufferCPPD1Ev+0xc4>
    80005750:	00053783          	ld	a5,0(a0)
    80005754:	0087b783          	ld	a5,8(a5)
    80005758:	000780e7          	jalr	a5
    delete mutexTail;
    8000575c:	0304b503          	ld	a0,48(s1)
    80005760:	00050863          	beqz	a0,80005770 <_ZN9BufferCPPD1Ev+0xd8>
    80005764:	00053783          	ld	a5,0(a0)
    80005768:	0087b783          	ld	a5,8(a5)
    8000576c:	000780e7          	jalr	a5
    delete mutexHead;
    80005770:	0284b503          	ld	a0,40(s1)
    80005774:	00050863          	beqz	a0,80005784 <_ZN9BufferCPPD1Ev+0xec>
    80005778:	00053783          	ld	a5,0(a0)
    8000577c:	0087b783          	ld	a5,8(a5)
    80005780:	000780e7          	jalr	a5
}
    80005784:	01813083          	ld	ra,24(sp)
    80005788:	01013403          	ld	s0,16(sp)
    8000578c:	00813483          	ld	s1,8(sp)
    80005790:	02010113          	addi	sp,sp,32
    80005794:	00008067          	ret

0000000080005798 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005798:	fe010113          	addi	sp,sp,-32
    8000579c:	00113c23          	sd	ra,24(sp)
    800057a0:	00813823          	sd	s0,16(sp)
    800057a4:	00913423          	sd	s1,8(sp)
    800057a8:	01213023          	sd	s2,0(sp)
    800057ac:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800057b0:	00004517          	auipc	a0,0x4
    800057b4:	bc050513          	addi	a0,a0,-1088 # 80009370 <CONSOLE_STATUS+0x360>
    800057b8:	00000097          	auipc	ra,0x0
    800057bc:	918080e7          	jalr	-1768(ra) # 800050d0 <_Z11printStringPKc>
    int test = getc() - '0';
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	cc8080e7          	jalr	-824(ra) # 80001488 <_Z4getcv>
    800057c8:	00050913          	mv	s2,a0
    800057cc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	cb8080e7          	jalr	-840(ra) # 80001488 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800057d8:	fcb9091b          	addiw	s2,s2,-53
    800057dc:	00100793          	li	a5,1
    800057e0:	0327f463          	bgeu	a5,s2,80005808 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800057e4:	00700793          	li	a5,7
    800057e8:	0e97e263          	bltu	a5,s1,800058cc <_Z8userMainv+0x134>
    800057ec:	00249493          	slli	s1,s1,0x2
    800057f0:	00004717          	auipc	a4,0x4
    800057f4:	d9870713          	addi	a4,a4,-616 # 80009588 <CONSOLE_STATUS+0x578>
    800057f8:	00e484b3          	add	s1,s1,a4
    800057fc:	0004a783          	lw	a5,0(s1)
    80005800:	00e787b3          	add	a5,a5,a4
    80005804:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005808:	00004517          	auipc	a0,0x4
    8000580c:	b8850513          	addi	a0,a0,-1144 # 80009390 <CONSOLE_STATUS+0x380>
    80005810:	00000097          	auipc	ra,0x0
    80005814:	8c0080e7          	jalr	-1856(ra) # 800050d0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005818:	01813083          	ld	ra,24(sp)
    8000581c:	01013403          	ld	s0,16(sp)
    80005820:	00813483          	ld	s1,8(sp)
    80005824:	00013903          	ld	s2,0(sp)
    80005828:	02010113          	addi	sp,sp,32
    8000582c:	00008067          	ret
            Threads_C_API_test();
    80005830:	fffff097          	auipc	ra,0xfffff
    80005834:	f18080e7          	jalr	-232(ra) # 80004748 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005838:	00004517          	auipc	a0,0x4
    8000583c:	b8850513          	addi	a0,a0,-1144 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005840:	00000097          	auipc	ra,0x0
    80005844:	890080e7          	jalr	-1904(ra) # 800050d0 <_Z11printStringPKc>
            break;
    80005848:	fd1ff06f          	j	80005818 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    8000584c:	ffffe097          	auipc	ra,0xffffe
    80005850:	ddc080e7          	jalr	-548(ra) # 80003628 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005854:	00004517          	auipc	a0,0x4
    80005858:	bac50513          	addi	a0,a0,-1108 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	874080e7          	jalr	-1932(ra) # 800050d0 <_Z11printStringPKc>
            break;
    80005864:	fb5ff06f          	j	80005818 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005868:	ffffd097          	auipc	ra,0xffffd
    8000586c:	614080e7          	jalr	1556(ra) # 80002e7c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005870:	00004517          	auipc	a0,0x4
    80005874:	bd050513          	addi	a0,a0,-1072 # 80009440 <CONSOLE_STATUS+0x430>
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	858080e7          	jalr	-1960(ra) # 800050d0 <_Z11printStringPKc>
            break;
    80005880:	f99ff06f          	j	80005818 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005884:	fffff097          	auipc	ra,0xfffff
    80005888:	208080e7          	jalr	520(ra) # 80004a8c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000588c:	00004517          	auipc	a0,0x4
    80005890:	c0450513          	addi	a0,a0,-1020 # 80009490 <CONSOLE_STATUS+0x480>
    80005894:	00000097          	auipc	ra,0x0
    80005898:	83c080e7          	jalr	-1988(ra) # 800050d0 <_Z11printStringPKc>
            break;
    8000589c:	f7dff06f          	j	80005818 <_Z8userMainv+0x80>
            System_Mode_test();
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	658080e7          	jalr	1624(ra) # 80005ef8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800058a8:	00004517          	auipc	a0,0x4
    800058ac:	c4050513          	addi	a0,a0,-960 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800058b0:	00000097          	auipc	ra,0x0
    800058b4:	820080e7          	jalr	-2016(ra) # 800050d0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800058b8:	00004517          	auipc	a0,0x4
    800058bc:	c5050513          	addi	a0,a0,-944 # 80009508 <CONSOLE_STATUS+0x4f8>
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	810080e7          	jalr	-2032(ra) # 800050d0 <_Z11printStringPKc>
            break;
    800058c8:	f51ff06f          	j	80005818 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800058cc:	00004517          	auipc	a0,0x4
    800058d0:	c9450513          	addi	a0,a0,-876 # 80009560 <CONSOLE_STATUS+0x550>
    800058d4:	fffff097          	auipc	ra,0xfffff
    800058d8:	7fc080e7          	jalr	2044(ra) # 800050d0 <_Z11printStringPKc>
    800058dc:	f3dff06f          	j	80005818 <_Z8userMainv+0x80>

00000000800058e0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800058e0:	fe010113          	addi	sp,sp,-32
    800058e4:	00113c23          	sd	ra,24(sp)
    800058e8:	00813823          	sd	s0,16(sp)
    800058ec:	00913423          	sd	s1,8(sp)
    800058f0:	01213023          	sd	s2,0(sp)
    800058f4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800058f8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800058fc:	00600493          	li	s1,6
    while (--i > 0) {
    80005900:	fff4849b          	addiw	s1,s1,-1
    80005904:	04905463          	blez	s1,8000594c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005908:	00004517          	auipc	a0,0x4
    8000590c:	ca050513          	addi	a0,a0,-864 # 800095a8 <CONSOLE_STATUS+0x598>
    80005910:	fffff097          	auipc	ra,0xfffff
    80005914:	7c0080e7          	jalr	1984(ra) # 800050d0 <_Z11printStringPKc>
        printInt(sleep_time);
    80005918:	00000613          	li	a2,0
    8000591c:	00a00593          	li	a1,10
    80005920:	0009051b          	sext.w	a0,s2
    80005924:	00000097          	auipc	ra,0x0
    80005928:	95c080e7          	jalr	-1700(ra) # 80005280 <_Z8printIntiii>
        printString(" !\n");
    8000592c:	00004517          	auipc	a0,0x4
    80005930:	c8450513          	addi	a0,a0,-892 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80005934:	fffff097          	auipc	ra,0xfffff
    80005938:	79c080e7          	jalr	1948(ra) # 800050d0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000593c:	00090513          	mv	a0,s2
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	b1c080e7          	jalr	-1252(ra) # 8000145c <_Z10time_sleepm>
    while (--i > 0) {
    80005948:	fb9ff06f          	j	80005900 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000594c:	00a00793          	li	a5,10
    80005950:	02f95933          	divu	s2,s2,a5
    80005954:	fff90913          	addi	s2,s2,-1
    80005958:	00006797          	auipc	a5,0x6
    8000595c:	c8878793          	addi	a5,a5,-888 # 8000b5e0 <_ZL8finished>
    80005960:	01278933          	add	s2,a5,s2
    80005964:	00100793          	li	a5,1
    80005968:	00f90023          	sb	a5,0(s2)
}
    8000596c:	01813083          	ld	ra,24(sp)
    80005970:	01013403          	ld	s0,16(sp)
    80005974:	00813483          	ld	s1,8(sp)
    80005978:	00013903          	ld	s2,0(sp)
    8000597c:	02010113          	addi	sp,sp,32
    80005980:	00008067          	ret

0000000080005984 <_Z12testSleepingv>:

void testSleeping() {
    80005984:	fc010113          	addi	sp,sp,-64
    80005988:	02113c23          	sd	ra,56(sp)
    8000598c:	02813823          	sd	s0,48(sp)
    80005990:	02913423          	sd	s1,40(sp)
    80005994:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005998:	00a00793          	li	a5,10
    8000599c:	fcf43823          	sd	a5,-48(s0)
    800059a0:	01400793          	li	a5,20
    800059a4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800059a8:	00000493          	li	s1,0
    800059ac:	02c0006f          	j	800059d8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800059b0:	00349793          	slli	a5,s1,0x3
    800059b4:	fd040613          	addi	a2,s0,-48
    800059b8:	00f60633          	add	a2,a2,a5
    800059bc:	00000597          	auipc	a1,0x0
    800059c0:	f2458593          	addi	a1,a1,-220 # 800058e0 <_ZL9sleepyRunPv>
    800059c4:	fc040513          	addi	a0,s0,-64
    800059c8:	00f50533          	add	a0,a0,a5
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	924080e7          	jalr	-1756(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800059d4:	0014849b          	addiw	s1,s1,1
    800059d8:	00100793          	li	a5,1
    800059dc:	fc97dae3          	bge	a5,s1,800059b0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800059e0:	00006797          	auipc	a5,0x6
    800059e4:	c007c783          	lbu	a5,-1024(a5) # 8000b5e0 <_ZL8finished>
    800059e8:	fe078ce3          	beqz	a5,800059e0 <_Z12testSleepingv+0x5c>
    800059ec:	00006797          	auipc	a5,0x6
    800059f0:	bf57c783          	lbu	a5,-1035(a5) # 8000b5e1 <_ZL8finished+0x1>
    800059f4:	fe0786e3          	beqz	a5,800059e0 <_Z12testSleepingv+0x5c>
}
    800059f8:	03813083          	ld	ra,56(sp)
    800059fc:	03013403          	ld	s0,48(sp)
    80005a00:	02813483          	ld	s1,40(sp)
    80005a04:	04010113          	addi	sp,sp,64
    80005a08:	00008067          	ret

0000000080005a0c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005a0c:	fe010113          	addi	sp,sp,-32
    80005a10:	00113c23          	sd	ra,24(sp)
    80005a14:	00813823          	sd	s0,16(sp)
    80005a18:	00913423          	sd	s1,8(sp)
    80005a1c:	01213023          	sd	s2,0(sp)
    80005a20:	02010413          	addi	s0,sp,32
    80005a24:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005a28:	00100793          	li	a5,1
    80005a2c:	02a7f863          	bgeu	a5,a0,80005a5c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005a30:	00a00793          	li	a5,10
    80005a34:	02f577b3          	remu	a5,a0,a5
    80005a38:	02078e63          	beqz	a5,80005a74 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005a3c:	fff48513          	addi	a0,s1,-1
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	fcc080e7          	jalr	-52(ra) # 80005a0c <_ZL9fibonaccim>
    80005a48:	00050913          	mv	s2,a0
    80005a4c:	ffe48513          	addi	a0,s1,-2
    80005a50:	00000097          	auipc	ra,0x0
    80005a54:	fbc080e7          	jalr	-68(ra) # 80005a0c <_ZL9fibonaccim>
    80005a58:	00a90533          	add	a0,s2,a0
}
    80005a5c:	01813083          	ld	ra,24(sp)
    80005a60:	01013403          	ld	s0,16(sp)
    80005a64:	00813483          	ld	s1,8(sp)
    80005a68:	00013903          	ld	s2,0(sp)
    80005a6c:	02010113          	addi	sp,sp,32
    80005a70:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	914080e7          	jalr	-1772(ra) # 80001388 <_Z15thread_dispatchv>
    80005a7c:	fc1ff06f          	j	80005a3c <_ZL9fibonaccim+0x30>

0000000080005a80 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005a80:	fe010113          	addi	sp,sp,-32
    80005a84:	00113c23          	sd	ra,24(sp)
    80005a88:	00813823          	sd	s0,16(sp)
    80005a8c:	00913423          	sd	s1,8(sp)
    80005a90:	01213023          	sd	s2,0(sp)
    80005a94:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005a98:	00a00493          	li	s1,10
    80005a9c:	0400006f          	j	80005adc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005aa0:	00004517          	auipc	a0,0x4
    80005aa4:	82050513          	addi	a0,a0,-2016 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005aa8:	fffff097          	auipc	ra,0xfffff
    80005aac:	628080e7          	jalr	1576(ra) # 800050d0 <_Z11printStringPKc>
    80005ab0:	00000613          	li	a2,0
    80005ab4:	00a00593          	li	a1,10
    80005ab8:	00048513          	mv	a0,s1
    80005abc:	fffff097          	auipc	ra,0xfffff
    80005ac0:	7c4080e7          	jalr	1988(ra) # 80005280 <_Z8printIntiii>
    80005ac4:	00004517          	auipc	a0,0x4
    80005ac8:	a1c50513          	addi	a0,a0,-1508 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005acc:	fffff097          	auipc	ra,0xfffff
    80005ad0:	604080e7          	jalr	1540(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005ad4:	0014849b          	addiw	s1,s1,1
    80005ad8:	0ff4f493          	andi	s1,s1,255
    80005adc:	00c00793          	li	a5,12
    80005ae0:	fc97f0e3          	bgeu	a5,s1,80005aa0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005ae4:	00003517          	auipc	a0,0x3
    80005ae8:	7e450513          	addi	a0,a0,2020 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005aec:	fffff097          	auipc	ra,0xfffff
    80005af0:	5e4080e7          	jalr	1508(ra) # 800050d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005af4:	00500313          	li	t1,5
    thread_dispatch();
    80005af8:	ffffc097          	auipc	ra,0xffffc
    80005afc:	890080e7          	jalr	-1904(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005b00:	01000513          	li	a0,16
    80005b04:	00000097          	auipc	ra,0x0
    80005b08:	f08080e7          	jalr	-248(ra) # 80005a0c <_ZL9fibonaccim>
    80005b0c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005b10:	00003517          	auipc	a0,0x3
    80005b14:	7c850513          	addi	a0,a0,1992 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005b18:	fffff097          	auipc	ra,0xfffff
    80005b1c:	5b8080e7          	jalr	1464(ra) # 800050d0 <_Z11printStringPKc>
    80005b20:	00000613          	li	a2,0
    80005b24:	00a00593          	li	a1,10
    80005b28:	0009051b          	sext.w	a0,s2
    80005b2c:	fffff097          	auipc	ra,0xfffff
    80005b30:	754080e7          	jalr	1876(ra) # 80005280 <_Z8printIntiii>
    80005b34:	00004517          	auipc	a0,0x4
    80005b38:	9ac50513          	addi	a0,a0,-1620 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005b3c:	fffff097          	auipc	ra,0xfffff
    80005b40:	594080e7          	jalr	1428(ra) # 800050d0 <_Z11printStringPKc>
    80005b44:	0400006f          	j	80005b84 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b48:	00003517          	auipc	a0,0x3
    80005b4c:	77850513          	addi	a0,a0,1912 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005b50:	fffff097          	auipc	ra,0xfffff
    80005b54:	580080e7          	jalr	1408(ra) # 800050d0 <_Z11printStringPKc>
    80005b58:	00000613          	li	a2,0
    80005b5c:	00a00593          	li	a1,10
    80005b60:	00048513          	mv	a0,s1
    80005b64:	fffff097          	auipc	ra,0xfffff
    80005b68:	71c080e7          	jalr	1820(ra) # 80005280 <_Z8printIntiii>
    80005b6c:	00004517          	auipc	a0,0x4
    80005b70:	97450513          	addi	a0,a0,-1676 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005b74:	fffff097          	auipc	ra,0xfffff
    80005b78:	55c080e7          	jalr	1372(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005b7c:	0014849b          	addiw	s1,s1,1
    80005b80:	0ff4f493          	andi	s1,s1,255
    80005b84:	00f00793          	li	a5,15
    80005b88:	fc97f0e3          	bgeu	a5,s1,80005b48 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005b8c:	00003517          	auipc	a0,0x3
    80005b90:	75c50513          	addi	a0,a0,1884 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005b94:	fffff097          	auipc	ra,0xfffff
    80005b98:	53c080e7          	jalr	1340(ra) # 800050d0 <_Z11printStringPKc>
    finishedD = true;
    80005b9c:	00100793          	li	a5,1
    80005ba0:	00006717          	auipc	a4,0x6
    80005ba4:	a4f70123          	sb	a5,-1470(a4) # 8000b5e2 <_ZL9finishedD>
    thread_dispatch();
    80005ba8:	ffffb097          	auipc	ra,0xffffb
    80005bac:	7e0080e7          	jalr	2016(ra) # 80001388 <_Z15thread_dispatchv>
}
    80005bb0:	01813083          	ld	ra,24(sp)
    80005bb4:	01013403          	ld	s0,16(sp)
    80005bb8:	00813483          	ld	s1,8(sp)
    80005bbc:	00013903          	ld	s2,0(sp)
    80005bc0:	02010113          	addi	sp,sp,32
    80005bc4:	00008067          	ret

0000000080005bc8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005bc8:	fe010113          	addi	sp,sp,-32
    80005bcc:	00113c23          	sd	ra,24(sp)
    80005bd0:	00813823          	sd	s0,16(sp)
    80005bd4:	00913423          	sd	s1,8(sp)
    80005bd8:	01213023          	sd	s2,0(sp)
    80005bdc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005be0:	00000493          	li	s1,0
    80005be4:	0400006f          	j	80005c24 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005be8:	00003517          	auipc	a0,0x3
    80005bec:	6a850513          	addi	a0,a0,1704 # 80009290 <CONSOLE_STATUS+0x280>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	4e0080e7          	jalr	1248(ra) # 800050d0 <_Z11printStringPKc>
    80005bf8:	00000613          	li	a2,0
    80005bfc:	00a00593          	li	a1,10
    80005c00:	00048513          	mv	a0,s1
    80005c04:	fffff097          	auipc	ra,0xfffff
    80005c08:	67c080e7          	jalr	1660(ra) # 80005280 <_Z8printIntiii>
    80005c0c:	00004517          	auipc	a0,0x4
    80005c10:	8d450513          	addi	a0,a0,-1836 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	4bc080e7          	jalr	1212(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005c1c:	0014849b          	addiw	s1,s1,1
    80005c20:	0ff4f493          	andi	s1,s1,255
    80005c24:	00200793          	li	a5,2
    80005c28:	fc97f0e3          	bgeu	a5,s1,80005be8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005c2c:	00003517          	auipc	a0,0x3
    80005c30:	66c50513          	addi	a0,a0,1644 # 80009298 <CONSOLE_STATUS+0x288>
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	49c080e7          	jalr	1180(ra) # 800050d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005c3c:	00700313          	li	t1,7
    thread_dispatch();
    80005c40:	ffffb097          	auipc	ra,0xffffb
    80005c44:	748080e7          	jalr	1864(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005c48:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005c4c:	00003517          	auipc	a0,0x3
    80005c50:	65c50513          	addi	a0,a0,1628 # 800092a8 <CONSOLE_STATUS+0x298>
    80005c54:	fffff097          	auipc	ra,0xfffff
    80005c58:	47c080e7          	jalr	1148(ra) # 800050d0 <_Z11printStringPKc>
    80005c5c:	00000613          	li	a2,0
    80005c60:	00a00593          	li	a1,10
    80005c64:	0009051b          	sext.w	a0,s2
    80005c68:	fffff097          	auipc	ra,0xfffff
    80005c6c:	618080e7          	jalr	1560(ra) # 80005280 <_Z8printIntiii>
    80005c70:	00004517          	auipc	a0,0x4
    80005c74:	87050513          	addi	a0,a0,-1936 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005c78:	fffff097          	auipc	ra,0xfffff
    80005c7c:	458080e7          	jalr	1112(ra) # 800050d0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005c80:	00c00513          	li	a0,12
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	d88080e7          	jalr	-632(ra) # 80005a0c <_ZL9fibonaccim>
    80005c8c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005c90:	00003517          	auipc	a0,0x3
    80005c94:	62050513          	addi	a0,a0,1568 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005c98:	fffff097          	auipc	ra,0xfffff
    80005c9c:	438080e7          	jalr	1080(ra) # 800050d0 <_Z11printStringPKc>
    80005ca0:	00000613          	li	a2,0
    80005ca4:	00a00593          	li	a1,10
    80005ca8:	0009051b          	sext.w	a0,s2
    80005cac:	fffff097          	auipc	ra,0xfffff
    80005cb0:	5d4080e7          	jalr	1492(ra) # 80005280 <_Z8printIntiii>
    80005cb4:	00004517          	auipc	a0,0x4
    80005cb8:	82c50513          	addi	a0,a0,-2004 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005cbc:	fffff097          	auipc	ra,0xfffff
    80005cc0:	414080e7          	jalr	1044(ra) # 800050d0 <_Z11printStringPKc>
    80005cc4:	0400006f          	j	80005d04 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005cc8:	00003517          	auipc	a0,0x3
    80005ccc:	5c850513          	addi	a0,a0,1480 # 80009290 <CONSOLE_STATUS+0x280>
    80005cd0:	fffff097          	auipc	ra,0xfffff
    80005cd4:	400080e7          	jalr	1024(ra) # 800050d0 <_Z11printStringPKc>
    80005cd8:	00000613          	li	a2,0
    80005cdc:	00a00593          	li	a1,10
    80005ce0:	00048513          	mv	a0,s1
    80005ce4:	fffff097          	auipc	ra,0xfffff
    80005ce8:	59c080e7          	jalr	1436(ra) # 80005280 <_Z8printIntiii>
    80005cec:	00003517          	auipc	a0,0x3
    80005cf0:	7f450513          	addi	a0,a0,2036 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005cf4:	fffff097          	auipc	ra,0xfffff
    80005cf8:	3dc080e7          	jalr	988(ra) # 800050d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005cfc:	0014849b          	addiw	s1,s1,1
    80005d00:	0ff4f493          	andi	s1,s1,255
    80005d04:	00500793          	li	a5,5
    80005d08:	fc97f0e3          	bgeu	a5,s1,80005cc8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005d0c:	00003517          	auipc	a0,0x3
    80005d10:	56450513          	addi	a0,a0,1380 # 80009270 <CONSOLE_STATUS+0x260>
    80005d14:	fffff097          	auipc	ra,0xfffff
    80005d18:	3bc080e7          	jalr	956(ra) # 800050d0 <_Z11printStringPKc>
    finishedC = true;
    80005d1c:	00100793          	li	a5,1
    80005d20:	00006717          	auipc	a4,0x6
    80005d24:	8cf701a3          	sb	a5,-1853(a4) # 8000b5e3 <_ZL9finishedC>
    thread_dispatch();
    80005d28:	ffffb097          	auipc	ra,0xffffb
    80005d2c:	660080e7          	jalr	1632(ra) # 80001388 <_Z15thread_dispatchv>
}
    80005d30:	01813083          	ld	ra,24(sp)
    80005d34:	01013403          	ld	s0,16(sp)
    80005d38:	00813483          	ld	s1,8(sp)
    80005d3c:	00013903          	ld	s2,0(sp)
    80005d40:	02010113          	addi	sp,sp,32
    80005d44:	00008067          	ret

0000000080005d48 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005d48:	fe010113          	addi	sp,sp,-32
    80005d4c:	00113c23          	sd	ra,24(sp)
    80005d50:	00813823          	sd	s0,16(sp)
    80005d54:	00913423          	sd	s1,8(sp)
    80005d58:	01213023          	sd	s2,0(sp)
    80005d5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005d60:	00000913          	li	s2,0
    80005d64:	0400006f          	j	80005da4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	620080e7          	jalr	1568(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005d70:	00148493          	addi	s1,s1,1
    80005d74:	000027b7          	lui	a5,0x2
    80005d78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005d7c:	0097ee63          	bltu	a5,s1,80005d98 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005d80:	00000713          	li	a4,0
    80005d84:	000077b7          	lui	a5,0x7
    80005d88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005d8c:	fce7eee3          	bltu	a5,a4,80005d68 <_ZL11workerBodyBPv+0x20>
    80005d90:	00170713          	addi	a4,a4,1
    80005d94:	ff1ff06f          	j	80005d84 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005d98:	00a00793          	li	a5,10
    80005d9c:	04f90663          	beq	s2,a5,80005de8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005da0:	00190913          	addi	s2,s2,1
    80005da4:	00f00793          	li	a5,15
    80005da8:	0527e463          	bltu	a5,s2,80005df0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005dac:	00003517          	auipc	a0,0x3
    80005db0:	2a450513          	addi	a0,a0,676 # 80009050 <CONSOLE_STATUS+0x40>
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	31c080e7          	jalr	796(ra) # 800050d0 <_Z11printStringPKc>
    80005dbc:	00000613          	li	a2,0
    80005dc0:	00a00593          	li	a1,10
    80005dc4:	0009051b          	sext.w	a0,s2
    80005dc8:	fffff097          	auipc	ra,0xfffff
    80005dcc:	4b8080e7          	jalr	1208(ra) # 80005280 <_Z8printIntiii>
    80005dd0:	00003517          	auipc	a0,0x3
    80005dd4:	71050513          	addi	a0,a0,1808 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005dd8:	fffff097          	auipc	ra,0xfffff
    80005ddc:	2f8080e7          	jalr	760(ra) # 800050d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005de0:	00000493          	li	s1,0
    80005de4:	f91ff06f          	j	80005d74 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005de8:	14102ff3          	csrr	t6,sepc
    80005dec:	fb5ff06f          	j	80005da0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005df0:	00003517          	auipc	a0,0x3
    80005df4:	49050513          	addi	a0,a0,1168 # 80009280 <CONSOLE_STATUS+0x270>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	2d8080e7          	jalr	728(ra) # 800050d0 <_Z11printStringPKc>
    finishedB = true;
    80005e00:	00100793          	li	a5,1
    80005e04:	00005717          	auipc	a4,0x5
    80005e08:	7ef70023          	sb	a5,2016(a4) # 8000b5e4 <_ZL9finishedB>
    thread_dispatch();
    80005e0c:	ffffb097          	auipc	ra,0xffffb
    80005e10:	57c080e7          	jalr	1404(ra) # 80001388 <_Z15thread_dispatchv>
}
    80005e14:	01813083          	ld	ra,24(sp)
    80005e18:	01013403          	ld	s0,16(sp)
    80005e1c:	00813483          	ld	s1,8(sp)
    80005e20:	00013903          	ld	s2,0(sp)
    80005e24:	02010113          	addi	sp,sp,32
    80005e28:	00008067          	ret

0000000080005e2c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005e2c:	fe010113          	addi	sp,sp,-32
    80005e30:	00113c23          	sd	ra,24(sp)
    80005e34:	00813823          	sd	s0,16(sp)
    80005e38:	00913423          	sd	s1,8(sp)
    80005e3c:	01213023          	sd	s2,0(sp)
    80005e40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005e44:	00000913          	li	s2,0
    80005e48:	0380006f          	j	80005e80 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005e4c:	ffffb097          	auipc	ra,0xffffb
    80005e50:	53c080e7          	jalr	1340(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e54:	00148493          	addi	s1,s1,1
    80005e58:	000027b7          	lui	a5,0x2
    80005e5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e60:	0097ee63          	bltu	a5,s1,80005e7c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e64:	00000713          	li	a4,0
    80005e68:	000077b7          	lui	a5,0x7
    80005e6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e70:	fce7eee3          	bltu	a5,a4,80005e4c <_ZL11workerBodyAPv+0x20>
    80005e74:	00170713          	addi	a4,a4,1
    80005e78:	ff1ff06f          	j	80005e68 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005e7c:	00190913          	addi	s2,s2,1
    80005e80:	00900793          	li	a5,9
    80005e84:	0527e063          	bltu	a5,s2,80005ec4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005e88:	00003517          	auipc	a0,0x3
    80005e8c:	19850513          	addi	a0,a0,408 # 80009020 <CONSOLE_STATUS+0x10>
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	240080e7          	jalr	576(ra) # 800050d0 <_Z11printStringPKc>
    80005e98:	00000613          	li	a2,0
    80005e9c:	00a00593          	li	a1,10
    80005ea0:	0009051b          	sext.w	a0,s2
    80005ea4:	fffff097          	auipc	ra,0xfffff
    80005ea8:	3dc080e7          	jalr	988(ra) # 80005280 <_Z8printIntiii>
    80005eac:	00003517          	auipc	a0,0x3
    80005eb0:	63450513          	addi	a0,a0,1588 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005eb4:	fffff097          	auipc	ra,0xfffff
    80005eb8:	21c080e7          	jalr	540(ra) # 800050d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ebc:	00000493          	li	s1,0
    80005ec0:	f99ff06f          	j	80005e58 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005ec4:	00003517          	auipc	a0,0x3
    80005ec8:	3ac50513          	addi	a0,a0,940 # 80009270 <CONSOLE_STATUS+0x260>
    80005ecc:	fffff097          	auipc	ra,0xfffff
    80005ed0:	204080e7          	jalr	516(ra) # 800050d0 <_Z11printStringPKc>
    finishedA = true;
    80005ed4:	00100793          	li	a5,1
    80005ed8:	00005717          	auipc	a4,0x5
    80005edc:	70f706a3          	sb	a5,1805(a4) # 8000b5e5 <_ZL9finishedA>
}
    80005ee0:	01813083          	ld	ra,24(sp)
    80005ee4:	01013403          	ld	s0,16(sp)
    80005ee8:	00813483          	ld	s1,8(sp)
    80005eec:	00013903          	ld	s2,0(sp)
    80005ef0:	02010113          	addi	sp,sp,32
    80005ef4:	00008067          	ret

0000000080005ef8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005ef8:	fd010113          	addi	sp,sp,-48
    80005efc:	02113423          	sd	ra,40(sp)
    80005f00:	02813023          	sd	s0,32(sp)
    80005f04:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005f08:	00000613          	li	a2,0
    80005f0c:	00000597          	auipc	a1,0x0
    80005f10:	f2058593          	addi	a1,a1,-224 # 80005e2c <_ZL11workerBodyAPv>
    80005f14:	fd040513          	addi	a0,s0,-48
    80005f18:	ffffb097          	auipc	ra,0xffffb
    80005f1c:	3d8080e7          	jalr	984(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    80005f20:	00003517          	auipc	a0,0x3
    80005f24:	3d850513          	addi	a0,a0,984 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005f28:	fffff097          	auipc	ra,0xfffff
    80005f2c:	1a8080e7          	jalr	424(ra) # 800050d0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005f30:	00000613          	li	a2,0
    80005f34:	00000597          	auipc	a1,0x0
    80005f38:	e1458593          	addi	a1,a1,-492 # 80005d48 <_ZL11workerBodyBPv>
    80005f3c:	fd840513          	addi	a0,s0,-40
    80005f40:	ffffb097          	auipc	ra,0xffffb
    80005f44:	3b0080e7          	jalr	944(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	3c850513          	addi	a0,a0,968 # 80009310 <CONSOLE_STATUS+0x300>
    80005f50:	fffff097          	auipc	ra,0xfffff
    80005f54:	180080e7          	jalr	384(ra) # 800050d0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005f58:	00000613          	li	a2,0
    80005f5c:	00000597          	auipc	a1,0x0
    80005f60:	c6c58593          	addi	a1,a1,-916 # 80005bc8 <_ZL11workerBodyCPv>
    80005f64:	fe040513          	addi	a0,s0,-32
    80005f68:	ffffb097          	auipc	ra,0xffffb
    80005f6c:	388080e7          	jalr	904(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    80005f70:	00003517          	auipc	a0,0x3
    80005f74:	3b850513          	addi	a0,a0,952 # 80009328 <CONSOLE_STATUS+0x318>
    80005f78:	fffff097          	auipc	ra,0xfffff
    80005f7c:	158080e7          	jalr	344(ra) # 800050d0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005f80:	00000613          	li	a2,0
    80005f84:	00000597          	auipc	a1,0x0
    80005f88:	afc58593          	addi	a1,a1,-1284 # 80005a80 <_ZL11workerBodyDPv>
    80005f8c:	fe840513          	addi	a0,s0,-24
    80005f90:	ffffb097          	auipc	ra,0xffffb
    80005f94:	360080e7          	jalr	864(ra) # 800012f0 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    80005f98:	00003517          	auipc	a0,0x3
    80005f9c:	3a850513          	addi	a0,a0,936 # 80009340 <CONSOLE_STATUS+0x330>
    80005fa0:	fffff097          	auipc	ra,0xfffff
    80005fa4:	130080e7          	jalr	304(ra) # 800050d0 <_Z11printStringPKc>
    80005fa8:	00c0006f          	j	80005fb4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	3dc080e7          	jalr	988(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005fb4:	00005797          	auipc	a5,0x5
    80005fb8:	6317c783          	lbu	a5,1585(a5) # 8000b5e5 <_ZL9finishedA>
    80005fbc:	fe0788e3          	beqz	a5,80005fac <_Z16System_Mode_testv+0xb4>
    80005fc0:	00005797          	auipc	a5,0x5
    80005fc4:	6247c783          	lbu	a5,1572(a5) # 8000b5e4 <_ZL9finishedB>
    80005fc8:	fe0782e3          	beqz	a5,80005fac <_Z16System_Mode_testv+0xb4>
    80005fcc:	00005797          	auipc	a5,0x5
    80005fd0:	6177c783          	lbu	a5,1559(a5) # 8000b5e3 <_ZL9finishedC>
    80005fd4:	fc078ce3          	beqz	a5,80005fac <_Z16System_Mode_testv+0xb4>
    80005fd8:	00005797          	auipc	a5,0x5
    80005fdc:	60a7c783          	lbu	a5,1546(a5) # 8000b5e2 <_ZL9finishedD>
    80005fe0:	fc0786e3          	beqz	a5,80005fac <_Z16System_Mode_testv+0xb4>
    }

}
    80005fe4:	02813083          	ld	ra,40(sp)
    80005fe8:	02013403          	ld	s0,32(sp)
    80005fec:	03010113          	addi	sp,sp,48
    80005ff0:	00008067          	ret

0000000080005ff4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ff4:	fe010113          	addi	sp,sp,-32
    80005ff8:	00113c23          	sd	ra,24(sp)
    80005ffc:	00813823          	sd	s0,16(sp)
    80006000:	00913423          	sd	s1,8(sp)
    80006004:	01213023          	sd	s2,0(sp)
    80006008:	02010413          	addi	s0,sp,32
    8000600c:	00050493          	mv	s1,a0
    80006010:	00058913          	mv	s2,a1
    80006014:	0015879b          	addiw	a5,a1,1
    80006018:	0007851b          	sext.w	a0,a5
    8000601c:	00f4a023          	sw	a5,0(s1)
    80006020:	0004a823          	sw	zero,16(s1)
    80006024:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006028:	00251513          	slli	a0,a0,0x2
    8000602c:	ffffb097          	auipc	ra,0xffffb
    80006030:	210080e7          	jalr	528(ra) # 8000123c <_Z9mem_allocm>
    80006034:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006038:	00000593          	li	a1,0
    8000603c:	02048513          	addi	a0,s1,32
    80006040:	ffffb097          	auipc	ra,0xffffb
    80006044:	368080e7          	jalr	872(ra) # 800013a8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&spaceAvailable, _cap);
    80006048:	00090593          	mv	a1,s2
    8000604c:	01848513          	addi	a0,s1,24
    80006050:	ffffb097          	auipc	ra,0xffffb
    80006054:	358080e7          	jalr	856(ra) # 800013a8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexHead, 1);
    80006058:	00100593          	li	a1,1
    8000605c:	02848513          	addi	a0,s1,40
    80006060:	ffffb097          	auipc	ra,0xffffb
    80006064:	348080e7          	jalr	840(ra) # 800013a8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexTail, 1);
    80006068:	00100593          	li	a1,1
    8000606c:	03048513          	addi	a0,s1,48
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	338080e7          	jalr	824(ra) # 800013a8 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    80006078:	01813083          	ld	ra,24(sp)
    8000607c:	01013403          	ld	s0,16(sp)
    80006080:	00813483          	ld	s1,8(sp)
    80006084:	00013903          	ld	s2,0(sp)
    80006088:	02010113          	addi	sp,sp,32
    8000608c:	00008067          	ret

0000000080006090 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006090:	fe010113          	addi	sp,sp,-32
    80006094:	00113c23          	sd	ra,24(sp)
    80006098:	00813823          	sd	s0,16(sp)
    8000609c:	00913423          	sd	s1,8(sp)
    800060a0:	01213023          	sd	s2,0(sp)
    800060a4:	02010413          	addi	s0,sp,32
    800060a8:	00050493          	mv	s1,a0
    800060ac:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800060b0:	01853503          	ld	a0,24(a0)
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	350080e7          	jalr	848(ra) # 80001404 <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexTail);
    800060bc:	0304b503          	ld	a0,48(s1)
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	344080e7          	jalr	836(ra) # 80001404 <_Z8sem_waitPN3ABI9SemaphoreE>
    buffer[tail] = val;
    800060c8:	0084b783          	ld	a5,8(s1)
    800060cc:	0144a703          	lw	a4,20(s1)
    800060d0:	00271713          	slli	a4,a4,0x2
    800060d4:	00e787b3          	add	a5,a5,a4
    800060d8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800060dc:	0144a783          	lw	a5,20(s1)
    800060e0:	0017879b          	addiw	a5,a5,1
    800060e4:	0004a703          	lw	a4,0(s1)
    800060e8:	02e7e7bb          	remw	a5,a5,a4
    800060ec:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800060f0:	0304b503          	ld	a0,48(s1)
    800060f4:	ffffb097          	auipc	ra,0xffffb
    800060f8:	33c080e7          	jalr	828(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(itemAvailable);
    800060fc:	0204b503          	ld	a0,32(s1)
    80006100:	ffffb097          	auipc	ra,0xffffb
    80006104:	330080e7          	jalr	816(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>

}
    80006108:	01813083          	ld	ra,24(sp)
    8000610c:	01013403          	ld	s0,16(sp)
    80006110:	00813483          	ld	s1,8(sp)
    80006114:	00013903          	ld	s2,0(sp)
    80006118:	02010113          	addi	sp,sp,32
    8000611c:	00008067          	ret

0000000080006120 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006120:	fe010113          	addi	sp,sp,-32
    80006124:	00113c23          	sd	ra,24(sp)
    80006128:	00813823          	sd	s0,16(sp)
    8000612c:	00913423          	sd	s1,8(sp)
    80006130:	01213023          	sd	s2,0(sp)
    80006134:	02010413          	addi	s0,sp,32
    80006138:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000613c:	02053503          	ld	a0,32(a0)
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	2c4080e7          	jalr	708(ra) # 80001404 <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexHead);
    80006148:	0284b503          	ld	a0,40(s1)
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	2b8080e7          	jalr	696(ra) # 80001404 <_Z8sem_waitPN3ABI9SemaphoreE>

    int ret = buffer[head];
    80006154:	0084b703          	ld	a4,8(s1)
    80006158:	0104a783          	lw	a5,16(s1)
    8000615c:	00279693          	slli	a3,a5,0x2
    80006160:	00d70733          	add	a4,a4,a3
    80006164:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006168:	0017879b          	addiw	a5,a5,1
    8000616c:	0004a703          	lw	a4,0(s1)
    80006170:	02e7e7bb          	remw	a5,a5,a4
    80006174:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006178:	0284b503          	ld	a0,40(s1)
    8000617c:	ffffb097          	auipc	ra,0xffffb
    80006180:	2b4080e7          	jalr	692(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(spaceAvailable);
    80006184:	0184b503          	ld	a0,24(s1)
    80006188:	ffffb097          	auipc	ra,0xffffb
    8000618c:	2a8080e7          	jalr	680(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    80006190:	00090513          	mv	a0,s2
    80006194:	01813083          	ld	ra,24(sp)
    80006198:	01013403          	ld	s0,16(sp)
    8000619c:	00813483          	ld	s1,8(sp)
    800061a0:	00013903          	ld	s2,0(sp)
    800061a4:	02010113          	addi	sp,sp,32
    800061a8:	00008067          	ret

00000000800061ac <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800061ac:	fe010113          	addi	sp,sp,-32
    800061b0:	00113c23          	sd	ra,24(sp)
    800061b4:	00813823          	sd	s0,16(sp)
    800061b8:	00913423          	sd	s1,8(sp)
    800061bc:	01213023          	sd	s2,0(sp)
    800061c0:	02010413          	addi	s0,sp,32
    800061c4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800061c8:	02853503          	ld	a0,40(a0)
    800061cc:	ffffb097          	auipc	ra,0xffffb
    800061d0:	238080e7          	jalr	568(ra) # 80001404 <_Z8sem_waitPN3ABI9SemaphoreE>
    sem_wait(mutexTail);
    800061d4:	0304b503          	ld	a0,48(s1)
    800061d8:	ffffb097          	auipc	ra,0xffffb
    800061dc:	22c080e7          	jalr	556(ra) # 80001404 <_Z8sem_waitPN3ABI9SemaphoreE>

    if (tail >= head) {
    800061e0:	0144a783          	lw	a5,20(s1)
    800061e4:	0104a903          	lw	s2,16(s1)
    800061e8:	0327ce63          	blt	a5,s2,80006224 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800061ec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800061f0:	0304b503          	ld	a0,48(s1)
    800061f4:	ffffb097          	auipc	ra,0xffffb
    800061f8:	23c080e7          	jalr	572(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>
    sem_signal(mutexHead);
    800061fc:	0284b503          	ld	a0,40(s1)
    80006200:	ffffb097          	auipc	ra,0xffffb
    80006204:	230080e7          	jalr	560(ra) # 80001430 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    80006208:	00090513          	mv	a0,s2
    8000620c:	01813083          	ld	ra,24(sp)
    80006210:	01013403          	ld	s0,16(sp)
    80006214:	00813483          	ld	s1,8(sp)
    80006218:	00013903          	ld	s2,0(sp)
    8000621c:	02010113          	addi	sp,sp,32
    80006220:	00008067          	ret
        ret = cap - head + tail;
    80006224:	0004a703          	lw	a4,0(s1)
    80006228:	4127093b          	subw	s2,a4,s2
    8000622c:	00f9093b          	addw	s2,s2,a5
    80006230:	fc1ff06f          	j	800061f0 <_ZN6Buffer6getCntEv+0x44>

0000000080006234 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006234:	fe010113          	addi	sp,sp,-32
    80006238:	00113c23          	sd	ra,24(sp)
    8000623c:	00813823          	sd	s0,16(sp)
    80006240:	00913423          	sd	s1,8(sp)
    80006244:	02010413          	addi	s0,sp,32
    80006248:	00050493          	mv	s1,a0
    putc('\n');
    8000624c:	00a00513          	li	a0,10
    80006250:	ffffb097          	auipc	ra,0xffffb
    80006254:	260080e7          	jalr	608(ra) # 800014b0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006258:	00003517          	auipc	a0,0x3
    8000625c:	10050513          	addi	a0,a0,256 # 80009358 <CONSOLE_STATUS+0x348>
    80006260:	fffff097          	auipc	ra,0xfffff
    80006264:	e70080e7          	jalr	-400(ra) # 800050d0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006268:	00048513          	mv	a0,s1
    8000626c:	00000097          	auipc	ra,0x0
    80006270:	f40080e7          	jalr	-192(ra) # 800061ac <_ZN6Buffer6getCntEv>
    80006274:	02a05c63          	blez	a0,800062ac <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006278:	0084b783          	ld	a5,8(s1)
    8000627c:	0104a703          	lw	a4,16(s1)
    80006280:	00271713          	slli	a4,a4,0x2
    80006284:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006288:	0007c503          	lbu	a0,0(a5)
    8000628c:	ffffb097          	auipc	ra,0xffffb
    80006290:	224080e7          	jalr	548(ra) # 800014b0 <_Z4putcc>
        head = (head + 1) % cap;
    80006294:	0104a783          	lw	a5,16(s1)
    80006298:	0017879b          	addiw	a5,a5,1
    8000629c:	0004a703          	lw	a4,0(s1)
    800062a0:	02e7e7bb          	remw	a5,a5,a4
    800062a4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800062a8:	fc1ff06f          	j	80006268 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800062ac:	02100513          	li	a0,33
    800062b0:	ffffb097          	auipc	ra,0xffffb
    800062b4:	200080e7          	jalr	512(ra) # 800014b0 <_Z4putcc>
    putc('\n');
    800062b8:	00a00513          	li	a0,10
    800062bc:	ffffb097          	auipc	ra,0xffffb
    800062c0:	1f4080e7          	jalr	500(ra) # 800014b0 <_Z4putcc>
    mem_free(buffer);
    800062c4:	0084b503          	ld	a0,8(s1)
    800062c8:	ffffb097          	auipc	ra,0xffffb
    800062cc:	fb4080e7          	jalr	-76(ra) # 8000127c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800062d0:	0204b503          	ld	a0,32(s1)
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	104080e7          	jalr	260(ra) # 800013d8 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(spaceAvailable);
    800062dc:	0184b503          	ld	a0,24(s1)
    800062e0:	ffffb097          	auipc	ra,0xffffb
    800062e4:	0f8080e7          	jalr	248(ra) # 800013d8 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexTail);
    800062e8:	0304b503          	ld	a0,48(s1)
    800062ec:	ffffb097          	auipc	ra,0xffffb
    800062f0:	0ec080e7          	jalr	236(ra) # 800013d8 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexHead);
    800062f4:	0284b503          	ld	a0,40(s1)
    800062f8:	ffffb097          	auipc	ra,0xffffb
    800062fc:	0e0080e7          	jalr	224(ra) # 800013d8 <_Z9sem_closePN3ABI9SemaphoreE>
}
    80006300:	01813083          	ld	ra,24(sp)
    80006304:	01013403          	ld	s0,16(sp)
    80006308:	00813483          	ld	s1,8(sp)
    8000630c:	02010113          	addi	sp,sp,32
    80006310:	00008067          	ret

0000000080006314 <start>:
    80006314:	ff010113          	addi	sp,sp,-16
    80006318:	00813423          	sd	s0,8(sp)
    8000631c:	01010413          	addi	s0,sp,16
    80006320:	300027f3          	csrr	a5,mstatus
    80006324:	ffffe737          	lui	a4,0xffffe
    80006328:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1faf>
    8000632c:	00e7f7b3          	and	a5,a5,a4
    80006330:	00001737          	lui	a4,0x1
    80006334:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006338:	00e7e7b3          	or	a5,a5,a4
    8000633c:	30079073          	csrw	mstatus,a5
    80006340:	00000797          	auipc	a5,0x0
    80006344:	16078793          	addi	a5,a5,352 # 800064a0 <system_main>
    80006348:	34179073          	csrw	mepc,a5
    8000634c:	00000793          	li	a5,0
    80006350:	18079073          	csrw	satp,a5
    80006354:	000107b7          	lui	a5,0x10
    80006358:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000635c:	30279073          	csrw	medeleg,a5
    80006360:	30379073          	csrw	mideleg,a5
    80006364:	104027f3          	csrr	a5,sie
    80006368:	2227e793          	ori	a5,a5,546
    8000636c:	10479073          	csrw	sie,a5
    80006370:	fff00793          	li	a5,-1
    80006374:	00a7d793          	srli	a5,a5,0xa
    80006378:	3b079073          	csrw	pmpaddr0,a5
    8000637c:	00f00793          	li	a5,15
    80006380:	3a079073          	csrw	pmpcfg0,a5
    80006384:	f14027f3          	csrr	a5,mhartid
    80006388:	0200c737          	lui	a4,0x200c
    8000638c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006390:	0007869b          	sext.w	a3,a5
    80006394:	00269713          	slli	a4,a3,0x2
    80006398:	000f4637          	lui	a2,0xf4
    8000639c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063a0:	00d70733          	add	a4,a4,a3
    800063a4:	0037979b          	slliw	a5,a5,0x3
    800063a8:	020046b7          	lui	a3,0x2004
    800063ac:	00d787b3          	add	a5,a5,a3
    800063b0:	00c585b3          	add	a1,a1,a2
    800063b4:	00371693          	slli	a3,a4,0x3
    800063b8:	00005717          	auipc	a4,0x5
    800063bc:	23870713          	addi	a4,a4,568 # 8000b5f0 <timer_scratch>
    800063c0:	00b7b023          	sd	a1,0(a5)
    800063c4:	00d70733          	add	a4,a4,a3
    800063c8:	00f73c23          	sd	a5,24(a4)
    800063cc:	02c73023          	sd	a2,32(a4)
    800063d0:	34071073          	csrw	mscratch,a4
    800063d4:	00000797          	auipc	a5,0x0
    800063d8:	6ec78793          	addi	a5,a5,1772 # 80006ac0 <timervec>
    800063dc:	30579073          	csrw	mtvec,a5
    800063e0:	300027f3          	csrr	a5,mstatus
    800063e4:	0087e793          	ori	a5,a5,8
    800063e8:	30079073          	csrw	mstatus,a5
    800063ec:	304027f3          	csrr	a5,mie
    800063f0:	0807e793          	ori	a5,a5,128
    800063f4:	30479073          	csrw	mie,a5
    800063f8:	f14027f3          	csrr	a5,mhartid
    800063fc:	0007879b          	sext.w	a5,a5
    80006400:	00078213          	mv	tp,a5
    80006404:	30200073          	mret
    80006408:	00813403          	ld	s0,8(sp)
    8000640c:	01010113          	addi	sp,sp,16
    80006410:	00008067          	ret

0000000080006414 <timerinit>:
    80006414:	ff010113          	addi	sp,sp,-16
    80006418:	00813423          	sd	s0,8(sp)
    8000641c:	01010413          	addi	s0,sp,16
    80006420:	f14027f3          	csrr	a5,mhartid
    80006424:	0200c737          	lui	a4,0x200c
    80006428:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000642c:	0007869b          	sext.w	a3,a5
    80006430:	00269713          	slli	a4,a3,0x2
    80006434:	000f4637          	lui	a2,0xf4
    80006438:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000643c:	00d70733          	add	a4,a4,a3
    80006440:	0037979b          	slliw	a5,a5,0x3
    80006444:	020046b7          	lui	a3,0x2004
    80006448:	00d787b3          	add	a5,a5,a3
    8000644c:	00c585b3          	add	a1,a1,a2
    80006450:	00371693          	slli	a3,a4,0x3
    80006454:	00005717          	auipc	a4,0x5
    80006458:	19c70713          	addi	a4,a4,412 # 8000b5f0 <timer_scratch>
    8000645c:	00b7b023          	sd	a1,0(a5)
    80006460:	00d70733          	add	a4,a4,a3
    80006464:	00f73c23          	sd	a5,24(a4)
    80006468:	02c73023          	sd	a2,32(a4)
    8000646c:	34071073          	csrw	mscratch,a4
    80006470:	00000797          	auipc	a5,0x0
    80006474:	65078793          	addi	a5,a5,1616 # 80006ac0 <timervec>
    80006478:	30579073          	csrw	mtvec,a5
    8000647c:	300027f3          	csrr	a5,mstatus
    80006480:	0087e793          	ori	a5,a5,8
    80006484:	30079073          	csrw	mstatus,a5
    80006488:	304027f3          	csrr	a5,mie
    8000648c:	0807e793          	ori	a5,a5,128
    80006490:	30479073          	csrw	mie,a5
    80006494:	00813403          	ld	s0,8(sp)
    80006498:	01010113          	addi	sp,sp,16
    8000649c:	00008067          	ret

00000000800064a0 <system_main>:
    800064a0:	fe010113          	addi	sp,sp,-32
    800064a4:	00813823          	sd	s0,16(sp)
    800064a8:	00913423          	sd	s1,8(sp)
    800064ac:	00113c23          	sd	ra,24(sp)
    800064b0:	02010413          	addi	s0,sp,32
    800064b4:	00000097          	auipc	ra,0x0
    800064b8:	0c4080e7          	jalr	196(ra) # 80006578 <cpuid>
    800064bc:	00005497          	auipc	s1,0x5
    800064c0:	07448493          	addi	s1,s1,116 # 8000b530 <started>
    800064c4:	02050263          	beqz	a0,800064e8 <system_main+0x48>
    800064c8:	0004a783          	lw	a5,0(s1)
    800064cc:	0007879b          	sext.w	a5,a5
    800064d0:	fe078ce3          	beqz	a5,800064c8 <system_main+0x28>
    800064d4:	0ff0000f          	fence
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	11050513          	addi	a0,a0,272 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800064e0:	00001097          	auipc	ra,0x1
    800064e4:	a7c080e7          	jalr	-1412(ra) # 80006f5c <panic>
    800064e8:	00001097          	auipc	ra,0x1
    800064ec:	9d0080e7          	jalr	-1584(ra) # 80006eb8 <consoleinit>
    800064f0:	00001097          	auipc	ra,0x1
    800064f4:	15c080e7          	jalr	348(ra) # 8000764c <printfinit>
    800064f8:	00003517          	auipc	a0,0x3
    800064fc:	fe850513          	addi	a0,a0,-24 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006500:	00001097          	auipc	ra,0x1
    80006504:	ab8080e7          	jalr	-1352(ra) # 80006fb8 <__printf>
    80006508:	00003517          	auipc	a0,0x3
    8000650c:	0b050513          	addi	a0,a0,176 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006510:	00001097          	auipc	ra,0x1
    80006514:	aa8080e7          	jalr	-1368(ra) # 80006fb8 <__printf>
    80006518:	00003517          	auipc	a0,0x3
    8000651c:	fc850513          	addi	a0,a0,-56 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006520:	00001097          	auipc	ra,0x1
    80006524:	a98080e7          	jalr	-1384(ra) # 80006fb8 <__printf>
    80006528:	00001097          	auipc	ra,0x1
    8000652c:	4b0080e7          	jalr	1200(ra) # 800079d8 <kinit>
    80006530:	00000097          	auipc	ra,0x0
    80006534:	148080e7          	jalr	328(ra) # 80006678 <trapinit>
    80006538:	00000097          	auipc	ra,0x0
    8000653c:	16c080e7          	jalr	364(ra) # 800066a4 <trapinithart>
    80006540:	00000097          	auipc	ra,0x0
    80006544:	5c0080e7          	jalr	1472(ra) # 80006b00 <plicinit>
    80006548:	00000097          	auipc	ra,0x0
    8000654c:	5e0080e7          	jalr	1504(ra) # 80006b28 <plicinithart>
    80006550:	00000097          	auipc	ra,0x0
    80006554:	078080e7          	jalr	120(ra) # 800065c8 <userinit>
    80006558:	0ff0000f          	fence
    8000655c:	00100793          	li	a5,1
    80006560:	00003517          	auipc	a0,0x3
    80006564:	07050513          	addi	a0,a0,112 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80006568:	00f4a023          	sw	a5,0(s1)
    8000656c:	00001097          	auipc	ra,0x1
    80006570:	a4c080e7          	jalr	-1460(ra) # 80006fb8 <__printf>
    80006574:	0000006f          	j	80006574 <system_main+0xd4>

0000000080006578 <cpuid>:
    80006578:	ff010113          	addi	sp,sp,-16
    8000657c:	00813423          	sd	s0,8(sp)
    80006580:	01010413          	addi	s0,sp,16
    80006584:	00020513          	mv	a0,tp
    80006588:	00813403          	ld	s0,8(sp)
    8000658c:	0005051b          	sext.w	a0,a0
    80006590:	01010113          	addi	sp,sp,16
    80006594:	00008067          	ret

0000000080006598 <mycpu>:
    80006598:	ff010113          	addi	sp,sp,-16
    8000659c:	00813423          	sd	s0,8(sp)
    800065a0:	01010413          	addi	s0,sp,16
    800065a4:	00020793          	mv	a5,tp
    800065a8:	00813403          	ld	s0,8(sp)
    800065ac:	0007879b          	sext.w	a5,a5
    800065b0:	00779793          	slli	a5,a5,0x7
    800065b4:	00006517          	auipc	a0,0x6
    800065b8:	06c50513          	addi	a0,a0,108 # 8000c620 <cpus>
    800065bc:	00f50533          	add	a0,a0,a5
    800065c0:	01010113          	addi	sp,sp,16
    800065c4:	00008067          	ret

00000000800065c8 <userinit>:
    800065c8:	ff010113          	addi	sp,sp,-16
    800065cc:	00813423          	sd	s0,8(sp)
    800065d0:	01010413          	addi	s0,sp,16
    800065d4:	00813403          	ld	s0,8(sp)
    800065d8:	01010113          	addi	sp,sp,16
    800065dc:	ffffc317          	auipc	t1,0xffffc
    800065e0:	38c30067          	jr	908(t1) # 80002968 <main>

00000000800065e4 <either_copyout>:
    800065e4:	ff010113          	addi	sp,sp,-16
    800065e8:	00813023          	sd	s0,0(sp)
    800065ec:	00113423          	sd	ra,8(sp)
    800065f0:	01010413          	addi	s0,sp,16
    800065f4:	02051663          	bnez	a0,80006620 <either_copyout+0x3c>
    800065f8:	00058513          	mv	a0,a1
    800065fc:	00060593          	mv	a1,a2
    80006600:	0006861b          	sext.w	a2,a3
    80006604:	00002097          	auipc	ra,0x2
    80006608:	c60080e7          	jalr	-928(ra) # 80008264 <__memmove>
    8000660c:	00813083          	ld	ra,8(sp)
    80006610:	00013403          	ld	s0,0(sp)
    80006614:	00000513          	li	a0,0
    80006618:	01010113          	addi	sp,sp,16
    8000661c:	00008067          	ret
    80006620:	00003517          	auipc	a0,0x3
    80006624:	ff050513          	addi	a0,a0,-16 # 80009610 <CONSOLE_STATUS+0x600>
    80006628:	00001097          	auipc	ra,0x1
    8000662c:	934080e7          	jalr	-1740(ra) # 80006f5c <panic>

0000000080006630 <either_copyin>:
    80006630:	ff010113          	addi	sp,sp,-16
    80006634:	00813023          	sd	s0,0(sp)
    80006638:	00113423          	sd	ra,8(sp)
    8000663c:	01010413          	addi	s0,sp,16
    80006640:	02059463          	bnez	a1,80006668 <either_copyin+0x38>
    80006644:	00060593          	mv	a1,a2
    80006648:	0006861b          	sext.w	a2,a3
    8000664c:	00002097          	auipc	ra,0x2
    80006650:	c18080e7          	jalr	-1000(ra) # 80008264 <__memmove>
    80006654:	00813083          	ld	ra,8(sp)
    80006658:	00013403          	ld	s0,0(sp)
    8000665c:	00000513          	li	a0,0
    80006660:	01010113          	addi	sp,sp,16
    80006664:	00008067          	ret
    80006668:	00003517          	auipc	a0,0x3
    8000666c:	fd050513          	addi	a0,a0,-48 # 80009638 <CONSOLE_STATUS+0x628>
    80006670:	00001097          	auipc	ra,0x1
    80006674:	8ec080e7          	jalr	-1812(ra) # 80006f5c <panic>

0000000080006678 <trapinit>:
    80006678:	ff010113          	addi	sp,sp,-16
    8000667c:	00813423          	sd	s0,8(sp)
    80006680:	01010413          	addi	s0,sp,16
    80006684:	00813403          	ld	s0,8(sp)
    80006688:	00003597          	auipc	a1,0x3
    8000668c:	fd858593          	addi	a1,a1,-40 # 80009660 <CONSOLE_STATUS+0x650>
    80006690:	00006517          	auipc	a0,0x6
    80006694:	01050513          	addi	a0,a0,16 # 8000c6a0 <tickslock>
    80006698:	01010113          	addi	sp,sp,16
    8000669c:	00001317          	auipc	t1,0x1
    800066a0:	5cc30067          	jr	1484(t1) # 80007c68 <initlock>

00000000800066a4 <trapinithart>:
    800066a4:	ff010113          	addi	sp,sp,-16
    800066a8:	00813423          	sd	s0,8(sp)
    800066ac:	01010413          	addi	s0,sp,16
    800066b0:	00000797          	auipc	a5,0x0
    800066b4:	30078793          	addi	a5,a5,768 # 800069b0 <kernelvec>
    800066b8:	10579073          	csrw	stvec,a5
    800066bc:	00813403          	ld	s0,8(sp)
    800066c0:	01010113          	addi	sp,sp,16
    800066c4:	00008067          	ret

00000000800066c8 <usertrap>:
    800066c8:	ff010113          	addi	sp,sp,-16
    800066cc:	00813423          	sd	s0,8(sp)
    800066d0:	01010413          	addi	s0,sp,16
    800066d4:	00813403          	ld	s0,8(sp)
    800066d8:	01010113          	addi	sp,sp,16
    800066dc:	00008067          	ret

00000000800066e0 <usertrapret>:
    800066e0:	ff010113          	addi	sp,sp,-16
    800066e4:	00813423          	sd	s0,8(sp)
    800066e8:	01010413          	addi	s0,sp,16
    800066ec:	00813403          	ld	s0,8(sp)
    800066f0:	01010113          	addi	sp,sp,16
    800066f4:	00008067          	ret

00000000800066f8 <kerneltrap>:
    800066f8:	fe010113          	addi	sp,sp,-32
    800066fc:	00813823          	sd	s0,16(sp)
    80006700:	00113c23          	sd	ra,24(sp)
    80006704:	00913423          	sd	s1,8(sp)
    80006708:	02010413          	addi	s0,sp,32
    8000670c:	142025f3          	csrr	a1,scause
    80006710:	100027f3          	csrr	a5,sstatus
    80006714:	0027f793          	andi	a5,a5,2
    80006718:	10079c63          	bnez	a5,80006830 <kerneltrap+0x138>
    8000671c:	142027f3          	csrr	a5,scause
    80006720:	0207ce63          	bltz	a5,8000675c <kerneltrap+0x64>
    80006724:	00003517          	auipc	a0,0x3
    80006728:	f8450513          	addi	a0,a0,-124 # 800096a8 <CONSOLE_STATUS+0x698>
    8000672c:	00001097          	auipc	ra,0x1
    80006730:	88c080e7          	jalr	-1908(ra) # 80006fb8 <__printf>
    80006734:	141025f3          	csrr	a1,sepc
    80006738:	14302673          	csrr	a2,stval
    8000673c:	00003517          	auipc	a0,0x3
    80006740:	f7c50513          	addi	a0,a0,-132 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006744:	00001097          	auipc	ra,0x1
    80006748:	874080e7          	jalr	-1932(ra) # 80006fb8 <__printf>
    8000674c:	00003517          	auipc	a0,0x3
    80006750:	f8450513          	addi	a0,a0,-124 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006754:	00001097          	auipc	ra,0x1
    80006758:	808080e7          	jalr	-2040(ra) # 80006f5c <panic>
    8000675c:	0ff7f713          	andi	a4,a5,255
    80006760:	00900693          	li	a3,9
    80006764:	04d70063          	beq	a4,a3,800067a4 <kerneltrap+0xac>
    80006768:	fff00713          	li	a4,-1
    8000676c:	03f71713          	slli	a4,a4,0x3f
    80006770:	00170713          	addi	a4,a4,1
    80006774:	fae798e3          	bne	a5,a4,80006724 <kerneltrap+0x2c>
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	e00080e7          	jalr	-512(ra) # 80006578 <cpuid>
    80006780:	06050663          	beqz	a0,800067ec <kerneltrap+0xf4>
    80006784:	144027f3          	csrr	a5,sip
    80006788:	ffd7f793          	andi	a5,a5,-3
    8000678c:	14479073          	csrw	sip,a5
    80006790:	01813083          	ld	ra,24(sp)
    80006794:	01013403          	ld	s0,16(sp)
    80006798:	00813483          	ld	s1,8(sp)
    8000679c:	02010113          	addi	sp,sp,32
    800067a0:	00008067          	ret
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	3d0080e7          	jalr	976(ra) # 80006b74 <plic_claim>
    800067ac:	00a00793          	li	a5,10
    800067b0:	00050493          	mv	s1,a0
    800067b4:	06f50863          	beq	a0,a5,80006824 <kerneltrap+0x12c>
    800067b8:	fc050ce3          	beqz	a0,80006790 <kerneltrap+0x98>
    800067bc:	00050593          	mv	a1,a0
    800067c0:	00003517          	auipc	a0,0x3
    800067c4:	ec850513          	addi	a0,a0,-312 # 80009688 <CONSOLE_STATUS+0x678>
    800067c8:	00000097          	auipc	ra,0x0
    800067cc:	7f0080e7          	jalr	2032(ra) # 80006fb8 <__printf>
    800067d0:	01013403          	ld	s0,16(sp)
    800067d4:	01813083          	ld	ra,24(sp)
    800067d8:	00048513          	mv	a0,s1
    800067dc:	00813483          	ld	s1,8(sp)
    800067e0:	02010113          	addi	sp,sp,32
    800067e4:	00000317          	auipc	t1,0x0
    800067e8:	3c830067          	jr	968(t1) # 80006bac <plic_complete>
    800067ec:	00006517          	auipc	a0,0x6
    800067f0:	eb450513          	addi	a0,a0,-332 # 8000c6a0 <tickslock>
    800067f4:	00001097          	auipc	ra,0x1
    800067f8:	498080e7          	jalr	1176(ra) # 80007c8c <acquire>
    800067fc:	00005717          	auipc	a4,0x5
    80006800:	d3870713          	addi	a4,a4,-712 # 8000b534 <ticks>
    80006804:	00072783          	lw	a5,0(a4)
    80006808:	00006517          	auipc	a0,0x6
    8000680c:	e9850513          	addi	a0,a0,-360 # 8000c6a0 <tickslock>
    80006810:	0017879b          	addiw	a5,a5,1
    80006814:	00f72023          	sw	a5,0(a4)
    80006818:	00001097          	auipc	ra,0x1
    8000681c:	540080e7          	jalr	1344(ra) # 80007d58 <release>
    80006820:	f65ff06f          	j	80006784 <kerneltrap+0x8c>
    80006824:	00001097          	auipc	ra,0x1
    80006828:	09c080e7          	jalr	156(ra) # 800078c0 <uartintr>
    8000682c:	fa5ff06f          	j	800067d0 <kerneltrap+0xd8>
    80006830:	00003517          	auipc	a0,0x3
    80006834:	e3850513          	addi	a0,a0,-456 # 80009668 <CONSOLE_STATUS+0x658>
    80006838:	00000097          	auipc	ra,0x0
    8000683c:	724080e7          	jalr	1828(ra) # 80006f5c <panic>

0000000080006840 <clockintr>:
    80006840:	fe010113          	addi	sp,sp,-32
    80006844:	00813823          	sd	s0,16(sp)
    80006848:	00913423          	sd	s1,8(sp)
    8000684c:	00113c23          	sd	ra,24(sp)
    80006850:	02010413          	addi	s0,sp,32
    80006854:	00006497          	auipc	s1,0x6
    80006858:	e4c48493          	addi	s1,s1,-436 # 8000c6a0 <tickslock>
    8000685c:	00048513          	mv	a0,s1
    80006860:	00001097          	auipc	ra,0x1
    80006864:	42c080e7          	jalr	1068(ra) # 80007c8c <acquire>
    80006868:	00005717          	auipc	a4,0x5
    8000686c:	ccc70713          	addi	a4,a4,-820 # 8000b534 <ticks>
    80006870:	00072783          	lw	a5,0(a4)
    80006874:	01013403          	ld	s0,16(sp)
    80006878:	01813083          	ld	ra,24(sp)
    8000687c:	00048513          	mv	a0,s1
    80006880:	0017879b          	addiw	a5,a5,1
    80006884:	00813483          	ld	s1,8(sp)
    80006888:	00f72023          	sw	a5,0(a4)
    8000688c:	02010113          	addi	sp,sp,32
    80006890:	00001317          	auipc	t1,0x1
    80006894:	4c830067          	jr	1224(t1) # 80007d58 <release>

0000000080006898 <devintr>:
    80006898:	142027f3          	csrr	a5,scause
    8000689c:	00000513          	li	a0,0
    800068a0:	0007c463          	bltz	a5,800068a8 <devintr+0x10>
    800068a4:	00008067          	ret
    800068a8:	fe010113          	addi	sp,sp,-32
    800068ac:	00813823          	sd	s0,16(sp)
    800068b0:	00113c23          	sd	ra,24(sp)
    800068b4:	00913423          	sd	s1,8(sp)
    800068b8:	02010413          	addi	s0,sp,32
    800068bc:	0ff7f713          	andi	a4,a5,255
    800068c0:	00900693          	li	a3,9
    800068c4:	04d70c63          	beq	a4,a3,8000691c <devintr+0x84>
    800068c8:	fff00713          	li	a4,-1
    800068cc:	03f71713          	slli	a4,a4,0x3f
    800068d0:	00170713          	addi	a4,a4,1
    800068d4:	00e78c63          	beq	a5,a4,800068ec <devintr+0x54>
    800068d8:	01813083          	ld	ra,24(sp)
    800068dc:	01013403          	ld	s0,16(sp)
    800068e0:	00813483          	ld	s1,8(sp)
    800068e4:	02010113          	addi	sp,sp,32
    800068e8:	00008067          	ret
    800068ec:	00000097          	auipc	ra,0x0
    800068f0:	c8c080e7          	jalr	-884(ra) # 80006578 <cpuid>
    800068f4:	06050663          	beqz	a0,80006960 <devintr+0xc8>
    800068f8:	144027f3          	csrr	a5,sip
    800068fc:	ffd7f793          	andi	a5,a5,-3
    80006900:	14479073          	csrw	sip,a5
    80006904:	01813083          	ld	ra,24(sp)
    80006908:	01013403          	ld	s0,16(sp)
    8000690c:	00813483          	ld	s1,8(sp)
    80006910:	00200513          	li	a0,2
    80006914:	02010113          	addi	sp,sp,32
    80006918:	00008067          	ret
    8000691c:	00000097          	auipc	ra,0x0
    80006920:	258080e7          	jalr	600(ra) # 80006b74 <plic_claim>
    80006924:	00a00793          	li	a5,10
    80006928:	00050493          	mv	s1,a0
    8000692c:	06f50663          	beq	a0,a5,80006998 <devintr+0x100>
    80006930:	00100513          	li	a0,1
    80006934:	fa0482e3          	beqz	s1,800068d8 <devintr+0x40>
    80006938:	00048593          	mv	a1,s1
    8000693c:	00003517          	auipc	a0,0x3
    80006940:	d4c50513          	addi	a0,a0,-692 # 80009688 <CONSOLE_STATUS+0x678>
    80006944:	00000097          	auipc	ra,0x0
    80006948:	674080e7          	jalr	1652(ra) # 80006fb8 <__printf>
    8000694c:	00048513          	mv	a0,s1
    80006950:	00000097          	auipc	ra,0x0
    80006954:	25c080e7          	jalr	604(ra) # 80006bac <plic_complete>
    80006958:	00100513          	li	a0,1
    8000695c:	f7dff06f          	j	800068d8 <devintr+0x40>
    80006960:	00006517          	auipc	a0,0x6
    80006964:	d4050513          	addi	a0,a0,-704 # 8000c6a0 <tickslock>
    80006968:	00001097          	auipc	ra,0x1
    8000696c:	324080e7          	jalr	804(ra) # 80007c8c <acquire>
    80006970:	00005717          	auipc	a4,0x5
    80006974:	bc470713          	addi	a4,a4,-1084 # 8000b534 <ticks>
    80006978:	00072783          	lw	a5,0(a4)
    8000697c:	00006517          	auipc	a0,0x6
    80006980:	d2450513          	addi	a0,a0,-732 # 8000c6a0 <tickslock>
    80006984:	0017879b          	addiw	a5,a5,1
    80006988:	00f72023          	sw	a5,0(a4)
    8000698c:	00001097          	auipc	ra,0x1
    80006990:	3cc080e7          	jalr	972(ra) # 80007d58 <release>
    80006994:	f65ff06f          	j	800068f8 <devintr+0x60>
    80006998:	00001097          	auipc	ra,0x1
    8000699c:	f28080e7          	jalr	-216(ra) # 800078c0 <uartintr>
    800069a0:	fadff06f          	j	8000694c <devintr+0xb4>
	...

00000000800069b0 <kernelvec>:
    800069b0:	f0010113          	addi	sp,sp,-256
    800069b4:	00113023          	sd	ra,0(sp)
    800069b8:	00213423          	sd	sp,8(sp)
    800069bc:	00313823          	sd	gp,16(sp)
    800069c0:	00413c23          	sd	tp,24(sp)
    800069c4:	02513023          	sd	t0,32(sp)
    800069c8:	02613423          	sd	t1,40(sp)
    800069cc:	02713823          	sd	t2,48(sp)
    800069d0:	02813c23          	sd	s0,56(sp)
    800069d4:	04913023          	sd	s1,64(sp)
    800069d8:	04a13423          	sd	a0,72(sp)
    800069dc:	04b13823          	sd	a1,80(sp)
    800069e0:	04c13c23          	sd	a2,88(sp)
    800069e4:	06d13023          	sd	a3,96(sp)
    800069e8:	06e13423          	sd	a4,104(sp)
    800069ec:	06f13823          	sd	a5,112(sp)
    800069f0:	07013c23          	sd	a6,120(sp)
    800069f4:	09113023          	sd	a7,128(sp)
    800069f8:	09213423          	sd	s2,136(sp)
    800069fc:	09313823          	sd	s3,144(sp)
    80006a00:	09413c23          	sd	s4,152(sp)
    80006a04:	0b513023          	sd	s5,160(sp)
    80006a08:	0b613423          	sd	s6,168(sp)
    80006a0c:	0b713823          	sd	s7,176(sp)
    80006a10:	0b813c23          	sd	s8,184(sp)
    80006a14:	0d913023          	sd	s9,192(sp)
    80006a18:	0da13423          	sd	s10,200(sp)
    80006a1c:	0db13823          	sd	s11,208(sp)
    80006a20:	0dc13c23          	sd	t3,216(sp)
    80006a24:	0fd13023          	sd	t4,224(sp)
    80006a28:	0fe13423          	sd	t5,232(sp)
    80006a2c:	0ff13823          	sd	t6,240(sp)
    80006a30:	cc9ff0ef          	jal	ra,800066f8 <kerneltrap>
    80006a34:	00013083          	ld	ra,0(sp)
    80006a38:	00813103          	ld	sp,8(sp)
    80006a3c:	01013183          	ld	gp,16(sp)
    80006a40:	02013283          	ld	t0,32(sp)
    80006a44:	02813303          	ld	t1,40(sp)
    80006a48:	03013383          	ld	t2,48(sp)
    80006a4c:	03813403          	ld	s0,56(sp)
    80006a50:	04013483          	ld	s1,64(sp)
    80006a54:	04813503          	ld	a0,72(sp)
    80006a58:	05013583          	ld	a1,80(sp)
    80006a5c:	05813603          	ld	a2,88(sp)
    80006a60:	06013683          	ld	a3,96(sp)
    80006a64:	06813703          	ld	a4,104(sp)
    80006a68:	07013783          	ld	a5,112(sp)
    80006a6c:	07813803          	ld	a6,120(sp)
    80006a70:	08013883          	ld	a7,128(sp)
    80006a74:	08813903          	ld	s2,136(sp)
    80006a78:	09013983          	ld	s3,144(sp)
    80006a7c:	09813a03          	ld	s4,152(sp)
    80006a80:	0a013a83          	ld	s5,160(sp)
    80006a84:	0a813b03          	ld	s6,168(sp)
    80006a88:	0b013b83          	ld	s7,176(sp)
    80006a8c:	0b813c03          	ld	s8,184(sp)
    80006a90:	0c013c83          	ld	s9,192(sp)
    80006a94:	0c813d03          	ld	s10,200(sp)
    80006a98:	0d013d83          	ld	s11,208(sp)
    80006a9c:	0d813e03          	ld	t3,216(sp)
    80006aa0:	0e013e83          	ld	t4,224(sp)
    80006aa4:	0e813f03          	ld	t5,232(sp)
    80006aa8:	0f013f83          	ld	t6,240(sp)
    80006aac:	10010113          	addi	sp,sp,256
    80006ab0:	10200073          	sret
    80006ab4:	00000013          	nop
    80006ab8:	00000013          	nop
    80006abc:	00000013          	nop

0000000080006ac0 <timervec>:
    80006ac0:	34051573          	csrrw	a0,mscratch,a0
    80006ac4:	00b53023          	sd	a1,0(a0)
    80006ac8:	00c53423          	sd	a2,8(a0)
    80006acc:	00d53823          	sd	a3,16(a0)
    80006ad0:	01853583          	ld	a1,24(a0)
    80006ad4:	02053603          	ld	a2,32(a0)
    80006ad8:	0005b683          	ld	a3,0(a1)
    80006adc:	00c686b3          	add	a3,a3,a2
    80006ae0:	00d5b023          	sd	a3,0(a1)
    80006ae4:	00200593          	li	a1,2
    80006ae8:	14459073          	csrw	sip,a1
    80006aec:	01053683          	ld	a3,16(a0)
    80006af0:	00853603          	ld	a2,8(a0)
    80006af4:	00053583          	ld	a1,0(a0)
    80006af8:	34051573          	csrrw	a0,mscratch,a0
    80006afc:	30200073          	mret

0000000080006b00 <plicinit>:
    80006b00:	ff010113          	addi	sp,sp,-16
    80006b04:	00813423          	sd	s0,8(sp)
    80006b08:	01010413          	addi	s0,sp,16
    80006b0c:	00813403          	ld	s0,8(sp)
    80006b10:	0c0007b7          	lui	a5,0xc000
    80006b14:	00100713          	li	a4,1
    80006b18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006b1c:	00e7a223          	sw	a4,4(a5)
    80006b20:	01010113          	addi	sp,sp,16
    80006b24:	00008067          	ret

0000000080006b28 <plicinithart>:
    80006b28:	ff010113          	addi	sp,sp,-16
    80006b2c:	00813023          	sd	s0,0(sp)
    80006b30:	00113423          	sd	ra,8(sp)
    80006b34:	01010413          	addi	s0,sp,16
    80006b38:	00000097          	auipc	ra,0x0
    80006b3c:	a40080e7          	jalr	-1472(ra) # 80006578 <cpuid>
    80006b40:	0085171b          	slliw	a4,a0,0x8
    80006b44:	0c0027b7          	lui	a5,0xc002
    80006b48:	00e787b3          	add	a5,a5,a4
    80006b4c:	40200713          	li	a4,1026
    80006b50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006b54:	00813083          	ld	ra,8(sp)
    80006b58:	00013403          	ld	s0,0(sp)
    80006b5c:	00d5151b          	slliw	a0,a0,0xd
    80006b60:	0c2017b7          	lui	a5,0xc201
    80006b64:	00a78533          	add	a0,a5,a0
    80006b68:	00052023          	sw	zero,0(a0)
    80006b6c:	01010113          	addi	sp,sp,16
    80006b70:	00008067          	ret

0000000080006b74 <plic_claim>:
    80006b74:	ff010113          	addi	sp,sp,-16
    80006b78:	00813023          	sd	s0,0(sp)
    80006b7c:	00113423          	sd	ra,8(sp)
    80006b80:	01010413          	addi	s0,sp,16
    80006b84:	00000097          	auipc	ra,0x0
    80006b88:	9f4080e7          	jalr	-1548(ra) # 80006578 <cpuid>
    80006b8c:	00813083          	ld	ra,8(sp)
    80006b90:	00013403          	ld	s0,0(sp)
    80006b94:	00d5151b          	slliw	a0,a0,0xd
    80006b98:	0c2017b7          	lui	a5,0xc201
    80006b9c:	00a78533          	add	a0,a5,a0
    80006ba0:	00452503          	lw	a0,4(a0)
    80006ba4:	01010113          	addi	sp,sp,16
    80006ba8:	00008067          	ret

0000000080006bac <plic_complete>:
    80006bac:	fe010113          	addi	sp,sp,-32
    80006bb0:	00813823          	sd	s0,16(sp)
    80006bb4:	00913423          	sd	s1,8(sp)
    80006bb8:	00113c23          	sd	ra,24(sp)
    80006bbc:	02010413          	addi	s0,sp,32
    80006bc0:	00050493          	mv	s1,a0
    80006bc4:	00000097          	auipc	ra,0x0
    80006bc8:	9b4080e7          	jalr	-1612(ra) # 80006578 <cpuid>
    80006bcc:	01813083          	ld	ra,24(sp)
    80006bd0:	01013403          	ld	s0,16(sp)
    80006bd4:	00d5179b          	slliw	a5,a0,0xd
    80006bd8:	0c201737          	lui	a4,0xc201
    80006bdc:	00f707b3          	add	a5,a4,a5
    80006be0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006be4:	00813483          	ld	s1,8(sp)
    80006be8:	02010113          	addi	sp,sp,32
    80006bec:	00008067          	ret

0000000080006bf0 <consolewrite>:
    80006bf0:	fb010113          	addi	sp,sp,-80
    80006bf4:	04813023          	sd	s0,64(sp)
    80006bf8:	04113423          	sd	ra,72(sp)
    80006bfc:	02913c23          	sd	s1,56(sp)
    80006c00:	03213823          	sd	s2,48(sp)
    80006c04:	03313423          	sd	s3,40(sp)
    80006c08:	03413023          	sd	s4,32(sp)
    80006c0c:	01513c23          	sd	s5,24(sp)
    80006c10:	05010413          	addi	s0,sp,80
    80006c14:	06c05c63          	blez	a2,80006c8c <consolewrite+0x9c>
    80006c18:	00060993          	mv	s3,a2
    80006c1c:	00050a13          	mv	s4,a0
    80006c20:	00058493          	mv	s1,a1
    80006c24:	00000913          	li	s2,0
    80006c28:	fff00a93          	li	s5,-1
    80006c2c:	01c0006f          	j	80006c48 <consolewrite+0x58>
    80006c30:	fbf44503          	lbu	a0,-65(s0)
    80006c34:	0019091b          	addiw	s2,s2,1
    80006c38:	00148493          	addi	s1,s1,1
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	a9c080e7          	jalr	-1380(ra) # 800076d8 <uartputc>
    80006c44:	03298063          	beq	s3,s2,80006c64 <consolewrite+0x74>
    80006c48:	00048613          	mv	a2,s1
    80006c4c:	00100693          	li	a3,1
    80006c50:	000a0593          	mv	a1,s4
    80006c54:	fbf40513          	addi	a0,s0,-65
    80006c58:	00000097          	auipc	ra,0x0
    80006c5c:	9d8080e7          	jalr	-1576(ra) # 80006630 <either_copyin>
    80006c60:	fd5518e3          	bne	a0,s5,80006c30 <consolewrite+0x40>
    80006c64:	04813083          	ld	ra,72(sp)
    80006c68:	04013403          	ld	s0,64(sp)
    80006c6c:	03813483          	ld	s1,56(sp)
    80006c70:	02813983          	ld	s3,40(sp)
    80006c74:	02013a03          	ld	s4,32(sp)
    80006c78:	01813a83          	ld	s5,24(sp)
    80006c7c:	00090513          	mv	a0,s2
    80006c80:	03013903          	ld	s2,48(sp)
    80006c84:	05010113          	addi	sp,sp,80
    80006c88:	00008067          	ret
    80006c8c:	00000913          	li	s2,0
    80006c90:	fd5ff06f          	j	80006c64 <consolewrite+0x74>

0000000080006c94 <consoleread>:
    80006c94:	f9010113          	addi	sp,sp,-112
    80006c98:	06813023          	sd	s0,96(sp)
    80006c9c:	04913c23          	sd	s1,88(sp)
    80006ca0:	05213823          	sd	s2,80(sp)
    80006ca4:	05313423          	sd	s3,72(sp)
    80006ca8:	05413023          	sd	s4,64(sp)
    80006cac:	03513c23          	sd	s5,56(sp)
    80006cb0:	03613823          	sd	s6,48(sp)
    80006cb4:	03713423          	sd	s7,40(sp)
    80006cb8:	03813023          	sd	s8,32(sp)
    80006cbc:	06113423          	sd	ra,104(sp)
    80006cc0:	01913c23          	sd	s9,24(sp)
    80006cc4:	07010413          	addi	s0,sp,112
    80006cc8:	00060b93          	mv	s7,a2
    80006ccc:	00050913          	mv	s2,a0
    80006cd0:	00058c13          	mv	s8,a1
    80006cd4:	00060b1b          	sext.w	s6,a2
    80006cd8:	00006497          	auipc	s1,0x6
    80006cdc:	9f048493          	addi	s1,s1,-1552 # 8000c6c8 <cons>
    80006ce0:	00400993          	li	s3,4
    80006ce4:	fff00a13          	li	s4,-1
    80006ce8:	00a00a93          	li	s5,10
    80006cec:	05705e63          	blez	s7,80006d48 <consoleread+0xb4>
    80006cf0:	09c4a703          	lw	a4,156(s1)
    80006cf4:	0984a783          	lw	a5,152(s1)
    80006cf8:	0007071b          	sext.w	a4,a4
    80006cfc:	08e78463          	beq	a5,a4,80006d84 <consoleread+0xf0>
    80006d00:	07f7f713          	andi	a4,a5,127
    80006d04:	00e48733          	add	a4,s1,a4
    80006d08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006d0c:	0017869b          	addiw	a3,a5,1
    80006d10:	08d4ac23          	sw	a3,152(s1)
    80006d14:	00070c9b          	sext.w	s9,a4
    80006d18:	0b370663          	beq	a4,s3,80006dc4 <consoleread+0x130>
    80006d1c:	00100693          	li	a3,1
    80006d20:	f9f40613          	addi	a2,s0,-97
    80006d24:	000c0593          	mv	a1,s8
    80006d28:	00090513          	mv	a0,s2
    80006d2c:	f8e40fa3          	sb	a4,-97(s0)
    80006d30:	00000097          	auipc	ra,0x0
    80006d34:	8b4080e7          	jalr	-1868(ra) # 800065e4 <either_copyout>
    80006d38:	01450863          	beq	a0,s4,80006d48 <consoleread+0xb4>
    80006d3c:	001c0c13          	addi	s8,s8,1
    80006d40:	fffb8b9b          	addiw	s7,s7,-1
    80006d44:	fb5c94e3          	bne	s9,s5,80006cec <consoleread+0x58>
    80006d48:	000b851b          	sext.w	a0,s7
    80006d4c:	06813083          	ld	ra,104(sp)
    80006d50:	06013403          	ld	s0,96(sp)
    80006d54:	05813483          	ld	s1,88(sp)
    80006d58:	05013903          	ld	s2,80(sp)
    80006d5c:	04813983          	ld	s3,72(sp)
    80006d60:	04013a03          	ld	s4,64(sp)
    80006d64:	03813a83          	ld	s5,56(sp)
    80006d68:	02813b83          	ld	s7,40(sp)
    80006d6c:	02013c03          	ld	s8,32(sp)
    80006d70:	01813c83          	ld	s9,24(sp)
    80006d74:	40ab053b          	subw	a0,s6,a0
    80006d78:	03013b03          	ld	s6,48(sp)
    80006d7c:	07010113          	addi	sp,sp,112
    80006d80:	00008067          	ret
    80006d84:	00001097          	auipc	ra,0x1
    80006d88:	1d8080e7          	jalr	472(ra) # 80007f5c <push_on>
    80006d8c:	0984a703          	lw	a4,152(s1)
    80006d90:	09c4a783          	lw	a5,156(s1)
    80006d94:	0007879b          	sext.w	a5,a5
    80006d98:	fef70ce3          	beq	a4,a5,80006d90 <consoleread+0xfc>
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	234080e7          	jalr	564(ra) # 80007fd0 <pop_on>
    80006da4:	0984a783          	lw	a5,152(s1)
    80006da8:	07f7f713          	andi	a4,a5,127
    80006dac:	00e48733          	add	a4,s1,a4
    80006db0:	01874703          	lbu	a4,24(a4)
    80006db4:	0017869b          	addiw	a3,a5,1
    80006db8:	08d4ac23          	sw	a3,152(s1)
    80006dbc:	00070c9b          	sext.w	s9,a4
    80006dc0:	f5371ee3          	bne	a4,s3,80006d1c <consoleread+0x88>
    80006dc4:	000b851b          	sext.w	a0,s7
    80006dc8:	f96bf2e3          	bgeu	s7,s6,80006d4c <consoleread+0xb8>
    80006dcc:	08f4ac23          	sw	a5,152(s1)
    80006dd0:	f7dff06f          	j	80006d4c <consoleread+0xb8>

0000000080006dd4 <consputc>:
    80006dd4:	10000793          	li	a5,256
    80006dd8:	00f50663          	beq	a0,a5,80006de4 <consputc+0x10>
    80006ddc:	00001317          	auipc	t1,0x1
    80006de0:	9f430067          	jr	-1548(t1) # 800077d0 <uartputc_sync>
    80006de4:	ff010113          	addi	sp,sp,-16
    80006de8:	00113423          	sd	ra,8(sp)
    80006dec:	00813023          	sd	s0,0(sp)
    80006df0:	01010413          	addi	s0,sp,16
    80006df4:	00800513          	li	a0,8
    80006df8:	00001097          	auipc	ra,0x1
    80006dfc:	9d8080e7          	jalr	-1576(ra) # 800077d0 <uartputc_sync>
    80006e00:	02000513          	li	a0,32
    80006e04:	00001097          	auipc	ra,0x1
    80006e08:	9cc080e7          	jalr	-1588(ra) # 800077d0 <uartputc_sync>
    80006e0c:	00013403          	ld	s0,0(sp)
    80006e10:	00813083          	ld	ra,8(sp)
    80006e14:	00800513          	li	a0,8
    80006e18:	01010113          	addi	sp,sp,16
    80006e1c:	00001317          	auipc	t1,0x1
    80006e20:	9b430067          	jr	-1612(t1) # 800077d0 <uartputc_sync>

0000000080006e24 <consoleintr>:
    80006e24:	fe010113          	addi	sp,sp,-32
    80006e28:	00813823          	sd	s0,16(sp)
    80006e2c:	00913423          	sd	s1,8(sp)
    80006e30:	01213023          	sd	s2,0(sp)
    80006e34:	00113c23          	sd	ra,24(sp)
    80006e38:	02010413          	addi	s0,sp,32
    80006e3c:	00006917          	auipc	s2,0x6
    80006e40:	88c90913          	addi	s2,s2,-1908 # 8000c6c8 <cons>
    80006e44:	00050493          	mv	s1,a0
    80006e48:	00090513          	mv	a0,s2
    80006e4c:	00001097          	auipc	ra,0x1
    80006e50:	e40080e7          	jalr	-448(ra) # 80007c8c <acquire>
    80006e54:	02048c63          	beqz	s1,80006e8c <consoleintr+0x68>
    80006e58:	0a092783          	lw	a5,160(s2)
    80006e5c:	09892703          	lw	a4,152(s2)
    80006e60:	07f00693          	li	a3,127
    80006e64:	40e7873b          	subw	a4,a5,a4
    80006e68:	02e6e263          	bltu	a3,a4,80006e8c <consoleintr+0x68>
    80006e6c:	00d00713          	li	a4,13
    80006e70:	04e48063          	beq	s1,a4,80006eb0 <consoleintr+0x8c>
    80006e74:	07f7f713          	andi	a4,a5,127
    80006e78:	00e90733          	add	a4,s2,a4
    80006e7c:	0017879b          	addiw	a5,a5,1
    80006e80:	0af92023          	sw	a5,160(s2)
    80006e84:	00970c23          	sb	s1,24(a4)
    80006e88:	08f92e23          	sw	a5,156(s2)
    80006e8c:	01013403          	ld	s0,16(sp)
    80006e90:	01813083          	ld	ra,24(sp)
    80006e94:	00813483          	ld	s1,8(sp)
    80006e98:	00013903          	ld	s2,0(sp)
    80006e9c:	00006517          	auipc	a0,0x6
    80006ea0:	82c50513          	addi	a0,a0,-2004 # 8000c6c8 <cons>
    80006ea4:	02010113          	addi	sp,sp,32
    80006ea8:	00001317          	auipc	t1,0x1
    80006eac:	eb030067          	jr	-336(t1) # 80007d58 <release>
    80006eb0:	00a00493          	li	s1,10
    80006eb4:	fc1ff06f          	j	80006e74 <consoleintr+0x50>

0000000080006eb8 <consoleinit>:
    80006eb8:	fe010113          	addi	sp,sp,-32
    80006ebc:	00113c23          	sd	ra,24(sp)
    80006ec0:	00813823          	sd	s0,16(sp)
    80006ec4:	00913423          	sd	s1,8(sp)
    80006ec8:	02010413          	addi	s0,sp,32
    80006ecc:	00005497          	auipc	s1,0x5
    80006ed0:	7fc48493          	addi	s1,s1,2044 # 8000c6c8 <cons>
    80006ed4:	00048513          	mv	a0,s1
    80006ed8:	00003597          	auipc	a1,0x3
    80006edc:	80858593          	addi	a1,a1,-2040 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80006ee0:	00001097          	auipc	ra,0x1
    80006ee4:	d88080e7          	jalr	-632(ra) # 80007c68 <initlock>
    80006ee8:	00000097          	auipc	ra,0x0
    80006eec:	7ac080e7          	jalr	1964(ra) # 80007694 <uartinit>
    80006ef0:	01813083          	ld	ra,24(sp)
    80006ef4:	01013403          	ld	s0,16(sp)
    80006ef8:	00000797          	auipc	a5,0x0
    80006efc:	d9c78793          	addi	a5,a5,-612 # 80006c94 <consoleread>
    80006f00:	0af4bc23          	sd	a5,184(s1)
    80006f04:	00000797          	auipc	a5,0x0
    80006f08:	cec78793          	addi	a5,a5,-788 # 80006bf0 <consolewrite>
    80006f0c:	0cf4b023          	sd	a5,192(s1)
    80006f10:	00813483          	ld	s1,8(sp)
    80006f14:	02010113          	addi	sp,sp,32
    80006f18:	00008067          	ret

0000000080006f1c <console_read>:
    80006f1c:	ff010113          	addi	sp,sp,-16
    80006f20:	00813423          	sd	s0,8(sp)
    80006f24:	01010413          	addi	s0,sp,16
    80006f28:	00813403          	ld	s0,8(sp)
    80006f2c:	00006317          	auipc	t1,0x6
    80006f30:	85433303          	ld	t1,-1964(t1) # 8000c780 <devsw+0x10>
    80006f34:	01010113          	addi	sp,sp,16
    80006f38:	00030067          	jr	t1

0000000080006f3c <console_write>:
    80006f3c:	ff010113          	addi	sp,sp,-16
    80006f40:	00813423          	sd	s0,8(sp)
    80006f44:	01010413          	addi	s0,sp,16
    80006f48:	00813403          	ld	s0,8(sp)
    80006f4c:	00006317          	auipc	t1,0x6
    80006f50:	83c33303          	ld	t1,-1988(t1) # 8000c788 <devsw+0x18>
    80006f54:	01010113          	addi	sp,sp,16
    80006f58:	00030067          	jr	t1

0000000080006f5c <panic>:
    80006f5c:	fe010113          	addi	sp,sp,-32
    80006f60:	00113c23          	sd	ra,24(sp)
    80006f64:	00813823          	sd	s0,16(sp)
    80006f68:	00913423          	sd	s1,8(sp)
    80006f6c:	02010413          	addi	s0,sp,32
    80006f70:	00050493          	mv	s1,a0
    80006f74:	00002517          	auipc	a0,0x2
    80006f78:	77450513          	addi	a0,a0,1908 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80006f7c:	00006797          	auipc	a5,0x6
    80006f80:	8a07a623          	sw	zero,-1876(a5) # 8000c828 <pr+0x18>
    80006f84:	00000097          	auipc	ra,0x0
    80006f88:	034080e7          	jalr	52(ra) # 80006fb8 <__printf>
    80006f8c:	00048513          	mv	a0,s1
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	028080e7          	jalr	40(ra) # 80006fb8 <__printf>
    80006f98:	00002517          	auipc	a0,0x2
    80006f9c:	54850513          	addi	a0,a0,1352 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006fa0:	00000097          	auipc	ra,0x0
    80006fa4:	018080e7          	jalr	24(ra) # 80006fb8 <__printf>
    80006fa8:	00100793          	li	a5,1
    80006fac:	00004717          	auipc	a4,0x4
    80006fb0:	58f72623          	sw	a5,1420(a4) # 8000b538 <panicked>
    80006fb4:	0000006f          	j	80006fb4 <panic+0x58>

0000000080006fb8 <__printf>:
    80006fb8:	f3010113          	addi	sp,sp,-208
    80006fbc:	08813023          	sd	s0,128(sp)
    80006fc0:	07313423          	sd	s3,104(sp)
    80006fc4:	09010413          	addi	s0,sp,144
    80006fc8:	05813023          	sd	s8,64(sp)
    80006fcc:	08113423          	sd	ra,136(sp)
    80006fd0:	06913c23          	sd	s1,120(sp)
    80006fd4:	07213823          	sd	s2,112(sp)
    80006fd8:	07413023          	sd	s4,96(sp)
    80006fdc:	05513c23          	sd	s5,88(sp)
    80006fe0:	05613823          	sd	s6,80(sp)
    80006fe4:	05713423          	sd	s7,72(sp)
    80006fe8:	03913c23          	sd	s9,56(sp)
    80006fec:	03a13823          	sd	s10,48(sp)
    80006ff0:	03b13423          	sd	s11,40(sp)
    80006ff4:	00006317          	auipc	t1,0x6
    80006ff8:	81c30313          	addi	t1,t1,-2020 # 8000c810 <pr>
    80006ffc:	01832c03          	lw	s8,24(t1)
    80007000:	00b43423          	sd	a1,8(s0)
    80007004:	00c43823          	sd	a2,16(s0)
    80007008:	00d43c23          	sd	a3,24(s0)
    8000700c:	02e43023          	sd	a4,32(s0)
    80007010:	02f43423          	sd	a5,40(s0)
    80007014:	03043823          	sd	a6,48(s0)
    80007018:	03143c23          	sd	a7,56(s0)
    8000701c:	00050993          	mv	s3,a0
    80007020:	4a0c1663          	bnez	s8,800074cc <__printf+0x514>
    80007024:	60098c63          	beqz	s3,8000763c <__printf+0x684>
    80007028:	0009c503          	lbu	a0,0(s3)
    8000702c:	00840793          	addi	a5,s0,8
    80007030:	f6f43c23          	sd	a5,-136(s0)
    80007034:	00000493          	li	s1,0
    80007038:	22050063          	beqz	a0,80007258 <__printf+0x2a0>
    8000703c:	00002a37          	lui	s4,0x2
    80007040:	00018ab7          	lui	s5,0x18
    80007044:	000f4b37          	lui	s6,0xf4
    80007048:	00989bb7          	lui	s7,0x989
    8000704c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007050:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007054:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007058:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000705c:	00148c9b          	addiw	s9,s1,1
    80007060:	02500793          	li	a5,37
    80007064:	01998933          	add	s2,s3,s9
    80007068:	38f51263          	bne	a0,a5,800073ec <__printf+0x434>
    8000706c:	00094783          	lbu	a5,0(s2)
    80007070:	00078c9b          	sext.w	s9,a5
    80007074:	1e078263          	beqz	a5,80007258 <__printf+0x2a0>
    80007078:	0024849b          	addiw	s1,s1,2
    8000707c:	07000713          	li	a4,112
    80007080:	00998933          	add	s2,s3,s1
    80007084:	38e78a63          	beq	a5,a4,80007418 <__printf+0x460>
    80007088:	20f76863          	bltu	a4,a5,80007298 <__printf+0x2e0>
    8000708c:	42a78863          	beq	a5,a0,800074bc <__printf+0x504>
    80007090:	06400713          	li	a4,100
    80007094:	40e79663          	bne	a5,a4,800074a0 <__printf+0x4e8>
    80007098:	f7843783          	ld	a5,-136(s0)
    8000709c:	0007a603          	lw	a2,0(a5)
    800070a0:	00878793          	addi	a5,a5,8
    800070a4:	f6f43c23          	sd	a5,-136(s0)
    800070a8:	42064a63          	bltz	a2,800074dc <__printf+0x524>
    800070ac:	00a00713          	li	a4,10
    800070b0:	02e677bb          	remuw	a5,a2,a4
    800070b4:	00002d97          	auipc	s11,0x2
    800070b8:	65cd8d93          	addi	s11,s11,1628 # 80009710 <digits>
    800070bc:	00900593          	li	a1,9
    800070c0:	0006051b          	sext.w	a0,a2
    800070c4:	00000c93          	li	s9,0
    800070c8:	02079793          	slli	a5,a5,0x20
    800070cc:	0207d793          	srli	a5,a5,0x20
    800070d0:	00fd87b3          	add	a5,s11,a5
    800070d4:	0007c783          	lbu	a5,0(a5)
    800070d8:	02e656bb          	divuw	a3,a2,a4
    800070dc:	f8f40023          	sb	a5,-128(s0)
    800070e0:	14c5d863          	bge	a1,a2,80007230 <__printf+0x278>
    800070e4:	06300593          	li	a1,99
    800070e8:	00100c93          	li	s9,1
    800070ec:	02e6f7bb          	remuw	a5,a3,a4
    800070f0:	02079793          	slli	a5,a5,0x20
    800070f4:	0207d793          	srli	a5,a5,0x20
    800070f8:	00fd87b3          	add	a5,s11,a5
    800070fc:	0007c783          	lbu	a5,0(a5)
    80007100:	02e6d73b          	divuw	a4,a3,a4
    80007104:	f8f400a3          	sb	a5,-127(s0)
    80007108:	12a5f463          	bgeu	a1,a0,80007230 <__printf+0x278>
    8000710c:	00a00693          	li	a3,10
    80007110:	00900593          	li	a1,9
    80007114:	02d777bb          	remuw	a5,a4,a3
    80007118:	02079793          	slli	a5,a5,0x20
    8000711c:	0207d793          	srli	a5,a5,0x20
    80007120:	00fd87b3          	add	a5,s11,a5
    80007124:	0007c503          	lbu	a0,0(a5)
    80007128:	02d757bb          	divuw	a5,a4,a3
    8000712c:	f8a40123          	sb	a0,-126(s0)
    80007130:	48e5f263          	bgeu	a1,a4,800075b4 <__printf+0x5fc>
    80007134:	06300513          	li	a0,99
    80007138:	02d7f5bb          	remuw	a1,a5,a3
    8000713c:	02059593          	slli	a1,a1,0x20
    80007140:	0205d593          	srli	a1,a1,0x20
    80007144:	00bd85b3          	add	a1,s11,a1
    80007148:	0005c583          	lbu	a1,0(a1)
    8000714c:	02d7d7bb          	divuw	a5,a5,a3
    80007150:	f8b401a3          	sb	a1,-125(s0)
    80007154:	48e57263          	bgeu	a0,a4,800075d8 <__printf+0x620>
    80007158:	3e700513          	li	a0,999
    8000715c:	02d7f5bb          	remuw	a1,a5,a3
    80007160:	02059593          	slli	a1,a1,0x20
    80007164:	0205d593          	srli	a1,a1,0x20
    80007168:	00bd85b3          	add	a1,s11,a1
    8000716c:	0005c583          	lbu	a1,0(a1)
    80007170:	02d7d7bb          	divuw	a5,a5,a3
    80007174:	f8b40223          	sb	a1,-124(s0)
    80007178:	46e57663          	bgeu	a0,a4,800075e4 <__printf+0x62c>
    8000717c:	02d7f5bb          	remuw	a1,a5,a3
    80007180:	02059593          	slli	a1,a1,0x20
    80007184:	0205d593          	srli	a1,a1,0x20
    80007188:	00bd85b3          	add	a1,s11,a1
    8000718c:	0005c583          	lbu	a1,0(a1)
    80007190:	02d7d7bb          	divuw	a5,a5,a3
    80007194:	f8b402a3          	sb	a1,-123(s0)
    80007198:	46ea7863          	bgeu	s4,a4,80007608 <__printf+0x650>
    8000719c:	02d7f5bb          	remuw	a1,a5,a3
    800071a0:	02059593          	slli	a1,a1,0x20
    800071a4:	0205d593          	srli	a1,a1,0x20
    800071a8:	00bd85b3          	add	a1,s11,a1
    800071ac:	0005c583          	lbu	a1,0(a1)
    800071b0:	02d7d7bb          	divuw	a5,a5,a3
    800071b4:	f8b40323          	sb	a1,-122(s0)
    800071b8:	3eeaf863          	bgeu	s5,a4,800075a8 <__printf+0x5f0>
    800071bc:	02d7f5bb          	remuw	a1,a5,a3
    800071c0:	02059593          	slli	a1,a1,0x20
    800071c4:	0205d593          	srli	a1,a1,0x20
    800071c8:	00bd85b3          	add	a1,s11,a1
    800071cc:	0005c583          	lbu	a1,0(a1)
    800071d0:	02d7d7bb          	divuw	a5,a5,a3
    800071d4:	f8b403a3          	sb	a1,-121(s0)
    800071d8:	42eb7e63          	bgeu	s6,a4,80007614 <__printf+0x65c>
    800071dc:	02d7f5bb          	remuw	a1,a5,a3
    800071e0:	02059593          	slli	a1,a1,0x20
    800071e4:	0205d593          	srli	a1,a1,0x20
    800071e8:	00bd85b3          	add	a1,s11,a1
    800071ec:	0005c583          	lbu	a1,0(a1)
    800071f0:	02d7d7bb          	divuw	a5,a5,a3
    800071f4:	f8b40423          	sb	a1,-120(s0)
    800071f8:	42ebfc63          	bgeu	s7,a4,80007630 <__printf+0x678>
    800071fc:	02079793          	slli	a5,a5,0x20
    80007200:	0207d793          	srli	a5,a5,0x20
    80007204:	00fd8db3          	add	s11,s11,a5
    80007208:	000dc703          	lbu	a4,0(s11)
    8000720c:	00a00793          	li	a5,10
    80007210:	00900c93          	li	s9,9
    80007214:	f8e404a3          	sb	a4,-119(s0)
    80007218:	00065c63          	bgez	a2,80007230 <__printf+0x278>
    8000721c:	f9040713          	addi	a4,s0,-112
    80007220:	00f70733          	add	a4,a4,a5
    80007224:	02d00693          	li	a3,45
    80007228:	fed70823          	sb	a3,-16(a4)
    8000722c:	00078c93          	mv	s9,a5
    80007230:	f8040793          	addi	a5,s0,-128
    80007234:	01978cb3          	add	s9,a5,s9
    80007238:	f7f40d13          	addi	s10,s0,-129
    8000723c:	000cc503          	lbu	a0,0(s9)
    80007240:	fffc8c93          	addi	s9,s9,-1
    80007244:	00000097          	auipc	ra,0x0
    80007248:	b90080e7          	jalr	-1136(ra) # 80006dd4 <consputc>
    8000724c:	ffac98e3          	bne	s9,s10,8000723c <__printf+0x284>
    80007250:	00094503          	lbu	a0,0(s2)
    80007254:	e00514e3          	bnez	a0,8000705c <__printf+0xa4>
    80007258:	1a0c1663          	bnez	s8,80007404 <__printf+0x44c>
    8000725c:	08813083          	ld	ra,136(sp)
    80007260:	08013403          	ld	s0,128(sp)
    80007264:	07813483          	ld	s1,120(sp)
    80007268:	07013903          	ld	s2,112(sp)
    8000726c:	06813983          	ld	s3,104(sp)
    80007270:	06013a03          	ld	s4,96(sp)
    80007274:	05813a83          	ld	s5,88(sp)
    80007278:	05013b03          	ld	s6,80(sp)
    8000727c:	04813b83          	ld	s7,72(sp)
    80007280:	04013c03          	ld	s8,64(sp)
    80007284:	03813c83          	ld	s9,56(sp)
    80007288:	03013d03          	ld	s10,48(sp)
    8000728c:	02813d83          	ld	s11,40(sp)
    80007290:	0d010113          	addi	sp,sp,208
    80007294:	00008067          	ret
    80007298:	07300713          	li	a4,115
    8000729c:	1ce78a63          	beq	a5,a4,80007470 <__printf+0x4b8>
    800072a0:	07800713          	li	a4,120
    800072a4:	1ee79e63          	bne	a5,a4,800074a0 <__printf+0x4e8>
    800072a8:	f7843783          	ld	a5,-136(s0)
    800072ac:	0007a703          	lw	a4,0(a5)
    800072b0:	00878793          	addi	a5,a5,8
    800072b4:	f6f43c23          	sd	a5,-136(s0)
    800072b8:	28074263          	bltz	a4,8000753c <__printf+0x584>
    800072bc:	00002d97          	auipc	s11,0x2
    800072c0:	454d8d93          	addi	s11,s11,1108 # 80009710 <digits>
    800072c4:	00f77793          	andi	a5,a4,15
    800072c8:	00fd87b3          	add	a5,s11,a5
    800072cc:	0007c683          	lbu	a3,0(a5)
    800072d0:	00f00613          	li	a2,15
    800072d4:	0007079b          	sext.w	a5,a4
    800072d8:	f8d40023          	sb	a3,-128(s0)
    800072dc:	0047559b          	srliw	a1,a4,0x4
    800072e0:	0047569b          	srliw	a3,a4,0x4
    800072e4:	00000c93          	li	s9,0
    800072e8:	0ee65063          	bge	a2,a4,800073c8 <__printf+0x410>
    800072ec:	00f6f693          	andi	a3,a3,15
    800072f0:	00dd86b3          	add	a3,s11,a3
    800072f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800072f8:	0087d79b          	srliw	a5,a5,0x8
    800072fc:	00100c93          	li	s9,1
    80007300:	f8d400a3          	sb	a3,-127(s0)
    80007304:	0cb67263          	bgeu	a2,a1,800073c8 <__printf+0x410>
    80007308:	00f7f693          	andi	a3,a5,15
    8000730c:	00dd86b3          	add	a3,s11,a3
    80007310:	0006c583          	lbu	a1,0(a3)
    80007314:	00f00613          	li	a2,15
    80007318:	0047d69b          	srliw	a3,a5,0x4
    8000731c:	f8b40123          	sb	a1,-126(s0)
    80007320:	0047d593          	srli	a1,a5,0x4
    80007324:	28f67e63          	bgeu	a2,a5,800075c0 <__printf+0x608>
    80007328:	00f6f693          	andi	a3,a3,15
    8000732c:	00dd86b3          	add	a3,s11,a3
    80007330:	0006c503          	lbu	a0,0(a3)
    80007334:	0087d813          	srli	a6,a5,0x8
    80007338:	0087d69b          	srliw	a3,a5,0x8
    8000733c:	f8a401a3          	sb	a0,-125(s0)
    80007340:	28b67663          	bgeu	a2,a1,800075cc <__printf+0x614>
    80007344:	00f6f693          	andi	a3,a3,15
    80007348:	00dd86b3          	add	a3,s11,a3
    8000734c:	0006c583          	lbu	a1,0(a3)
    80007350:	00c7d513          	srli	a0,a5,0xc
    80007354:	00c7d69b          	srliw	a3,a5,0xc
    80007358:	f8b40223          	sb	a1,-124(s0)
    8000735c:	29067a63          	bgeu	a2,a6,800075f0 <__printf+0x638>
    80007360:	00f6f693          	andi	a3,a3,15
    80007364:	00dd86b3          	add	a3,s11,a3
    80007368:	0006c583          	lbu	a1,0(a3)
    8000736c:	0107d813          	srli	a6,a5,0x10
    80007370:	0107d69b          	srliw	a3,a5,0x10
    80007374:	f8b402a3          	sb	a1,-123(s0)
    80007378:	28a67263          	bgeu	a2,a0,800075fc <__printf+0x644>
    8000737c:	00f6f693          	andi	a3,a3,15
    80007380:	00dd86b3          	add	a3,s11,a3
    80007384:	0006c683          	lbu	a3,0(a3)
    80007388:	0147d79b          	srliw	a5,a5,0x14
    8000738c:	f8d40323          	sb	a3,-122(s0)
    80007390:	21067663          	bgeu	a2,a6,8000759c <__printf+0x5e4>
    80007394:	02079793          	slli	a5,a5,0x20
    80007398:	0207d793          	srli	a5,a5,0x20
    8000739c:	00fd8db3          	add	s11,s11,a5
    800073a0:	000dc683          	lbu	a3,0(s11)
    800073a4:	00800793          	li	a5,8
    800073a8:	00700c93          	li	s9,7
    800073ac:	f8d403a3          	sb	a3,-121(s0)
    800073b0:	00075c63          	bgez	a4,800073c8 <__printf+0x410>
    800073b4:	f9040713          	addi	a4,s0,-112
    800073b8:	00f70733          	add	a4,a4,a5
    800073bc:	02d00693          	li	a3,45
    800073c0:	fed70823          	sb	a3,-16(a4)
    800073c4:	00078c93          	mv	s9,a5
    800073c8:	f8040793          	addi	a5,s0,-128
    800073cc:	01978cb3          	add	s9,a5,s9
    800073d0:	f7f40d13          	addi	s10,s0,-129
    800073d4:	000cc503          	lbu	a0,0(s9)
    800073d8:	fffc8c93          	addi	s9,s9,-1
    800073dc:	00000097          	auipc	ra,0x0
    800073e0:	9f8080e7          	jalr	-1544(ra) # 80006dd4 <consputc>
    800073e4:	ff9d18e3          	bne	s10,s9,800073d4 <__printf+0x41c>
    800073e8:	0100006f          	j	800073f8 <__printf+0x440>
    800073ec:	00000097          	auipc	ra,0x0
    800073f0:	9e8080e7          	jalr	-1560(ra) # 80006dd4 <consputc>
    800073f4:	000c8493          	mv	s1,s9
    800073f8:	00094503          	lbu	a0,0(s2)
    800073fc:	c60510e3          	bnez	a0,8000705c <__printf+0xa4>
    80007400:	e40c0ee3          	beqz	s8,8000725c <__printf+0x2a4>
    80007404:	00005517          	auipc	a0,0x5
    80007408:	40c50513          	addi	a0,a0,1036 # 8000c810 <pr>
    8000740c:	00001097          	auipc	ra,0x1
    80007410:	94c080e7          	jalr	-1716(ra) # 80007d58 <release>
    80007414:	e49ff06f          	j	8000725c <__printf+0x2a4>
    80007418:	f7843783          	ld	a5,-136(s0)
    8000741c:	03000513          	li	a0,48
    80007420:	01000d13          	li	s10,16
    80007424:	00878713          	addi	a4,a5,8
    80007428:	0007bc83          	ld	s9,0(a5)
    8000742c:	f6e43c23          	sd	a4,-136(s0)
    80007430:	00000097          	auipc	ra,0x0
    80007434:	9a4080e7          	jalr	-1628(ra) # 80006dd4 <consputc>
    80007438:	07800513          	li	a0,120
    8000743c:	00000097          	auipc	ra,0x0
    80007440:	998080e7          	jalr	-1640(ra) # 80006dd4 <consputc>
    80007444:	00002d97          	auipc	s11,0x2
    80007448:	2ccd8d93          	addi	s11,s11,716 # 80009710 <digits>
    8000744c:	03ccd793          	srli	a5,s9,0x3c
    80007450:	00fd87b3          	add	a5,s11,a5
    80007454:	0007c503          	lbu	a0,0(a5)
    80007458:	fffd0d1b          	addiw	s10,s10,-1
    8000745c:	004c9c93          	slli	s9,s9,0x4
    80007460:	00000097          	auipc	ra,0x0
    80007464:	974080e7          	jalr	-1676(ra) # 80006dd4 <consputc>
    80007468:	fe0d12e3          	bnez	s10,8000744c <__printf+0x494>
    8000746c:	f8dff06f          	j	800073f8 <__printf+0x440>
    80007470:	f7843783          	ld	a5,-136(s0)
    80007474:	0007bc83          	ld	s9,0(a5)
    80007478:	00878793          	addi	a5,a5,8
    8000747c:	f6f43c23          	sd	a5,-136(s0)
    80007480:	000c9a63          	bnez	s9,80007494 <__printf+0x4dc>
    80007484:	1080006f          	j	8000758c <__printf+0x5d4>
    80007488:	001c8c93          	addi	s9,s9,1
    8000748c:	00000097          	auipc	ra,0x0
    80007490:	948080e7          	jalr	-1720(ra) # 80006dd4 <consputc>
    80007494:	000cc503          	lbu	a0,0(s9)
    80007498:	fe0518e3          	bnez	a0,80007488 <__printf+0x4d0>
    8000749c:	f5dff06f          	j	800073f8 <__printf+0x440>
    800074a0:	02500513          	li	a0,37
    800074a4:	00000097          	auipc	ra,0x0
    800074a8:	930080e7          	jalr	-1744(ra) # 80006dd4 <consputc>
    800074ac:	000c8513          	mv	a0,s9
    800074b0:	00000097          	auipc	ra,0x0
    800074b4:	924080e7          	jalr	-1756(ra) # 80006dd4 <consputc>
    800074b8:	f41ff06f          	j	800073f8 <__printf+0x440>
    800074bc:	02500513          	li	a0,37
    800074c0:	00000097          	auipc	ra,0x0
    800074c4:	914080e7          	jalr	-1772(ra) # 80006dd4 <consputc>
    800074c8:	f31ff06f          	j	800073f8 <__printf+0x440>
    800074cc:	00030513          	mv	a0,t1
    800074d0:	00000097          	auipc	ra,0x0
    800074d4:	7bc080e7          	jalr	1980(ra) # 80007c8c <acquire>
    800074d8:	b4dff06f          	j	80007024 <__printf+0x6c>
    800074dc:	40c0053b          	negw	a0,a2
    800074e0:	00a00713          	li	a4,10
    800074e4:	02e576bb          	remuw	a3,a0,a4
    800074e8:	00002d97          	auipc	s11,0x2
    800074ec:	228d8d93          	addi	s11,s11,552 # 80009710 <digits>
    800074f0:	ff700593          	li	a1,-9
    800074f4:	02069693          	slli	a3,a3,0x20
    800074f8:	0206d693          	srli	a3,a3,0x20
    800074fc:	00dd86b3          	add	a3,s11,a3
    80007500:	0006c683          	lbu	a3,0(a3)
    80007504:	02e557bb          	divuw	a5,a0,a4
    80007508:	f8d40023          	sb	a3,-128(s0)
    8000750c:	10b65e63          	bge	a2,a1,80007628 <__printf+0x670>
    80007510:	06300593          	li	a1,99
    80007514:	02e7f6bb          	remuw	a3,a5,a4
    80007518:	02069693          	slli	a3,a3,0x20
    8000751c:	0206d693          	srli	a3,a3,0x20
    80007520:	00dd86b3          	add	a3,s11,a3
    80007524:	0006c683          	lbu	a3,0(a3)
    80007528:	02e7d73b          	divuw	a4,a5,a4
    8000752c:	00200793          	li	a5,2
    80007530:	f8d400a3          	sb	a3,-127(s0)
    80007534:	bca5ece3          	bltu	a1,a0,8000710c <__printf+0x154>
    80007538:	ce5ff06f          	j	8000721c <__printf+0x264>
    8000753c:	40e007bb          	negw	a5,a4
    80007540:	00002d97          	auipc	s11,0x2
    80007544:	1d0d8d93          	addi	s11,s11,464 # 80009710 <digits>
    80007548:	00f7f693          	andi	a3,a5,15
    8000754c:	00dd86b3          	add	a3,s11,a3
    80007550:	0006c583          	lbu	a1,0(a3)
    80007554:	ff100613          	li	a2,-15
    80007558:	0047d69b          	srliw	a3,a5,0x4
    8000755c:	f8b40023          	sb	a1,-128(s0)
    80007560:	0047d59b          	srliw	a1,a5,0x4
    80007564:	0ac75e63          	bge	a4,a2,80007620 <__printf+0x668>
    80007568:	00f6f693          	andi	a3,a3,15
    8000756c:	00dd86b3          	add	a3,s11,a3
    80007570:	0006c603          	lbu	a2,0(a3)
    80007574:	00f00693          	li	a3,15
    80007578:	0087d79b          	srliw	a5,a5,0x8
    8000757c:	f8c400a3          	sb	a2,-127(s0)
    80007580:	d8b6e4e3          	bltu	a3,a1,80007308 <__printf+0x350>
    80007584:	00200793          	li	a5,2
    80007588:	e2dff06f          	j	800073b4 <__printf+0x3fc>
    8000758c:	00002c97          	auipc	s9,0x2
    80007590:	164c8c93          	addi	s9,s9,356 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007594:	02800513          	li	a0,40
    80007598:	ef1ff06f          	j	80007488 <__printf+0x4d0>
    8000759c:	00700793          	li	a5,7
    800075a0:	00600c93          	li	s9,6
    800075a4:	e0dff06f          	j	800073b0 <__printf+0x3f8>
    800075a8:	00700793          	li	a5,7
    800075ac:	00600c93          	li	s9,6
    800075b0:	c69ff06f          	j	80007218 <__printf+0x260>
    800075b4:	00300793          	li	a5,3
    800075b8:	00200c93          	li	s9,2
    800075bc:	c5dff06f          	j	80007218 <__printf+0x260>
    800075c0:	00300793          	li	a5,3
    800075c4:	00200c93          	li	s9,2
    800075c8:	de9ff06f          	j	800073b0 <__printf+0x3f8>
    800075cc:	00400793          	li	a5,4
    800075d0:	00300c93          	li	s9,3
    800075d4:	dddff06f          	j	800073b0 <__printf+0x3f8>
    800075d8:	00400793          	li	a5,4
    800075dc:	00300c93          	li	s9,3
    800075e0:	c39ff06f          	j	80007218 <__printf+0x260>
    800075e4:	00500793          	li	a5,5
    800075e8:	00400c93          	li	s9,4
    800075ec:	c2dff06f          	j	80007218 <__printf+0x260>
    800075f0:	00500793          	li	a5,5
    800075f4:	00400c93          	li	s9,4
    800075f8:	db9ff06f          	j	800073b0 <__printf+0x3f8>
    800075fc:	00600793          	li	a5,6
    80007600:	00500c93          	li	s9,5
    80007604:	dadff06f          	j	800073b0 <__printf+0x3f8>
    80007608:	00600793          	li	a5,6
    8000760c:	00500c93          	li	s9,5
    80007610:	c09ff06f          	j	80007218 <__printf+0x260>
    80007614:	00800793          	li	a5,8
    80007618:	00700c93          	li	s9,7
    8000761c:	bfdff06f          	j	80007218 <__printf+0x260>
    80007620:	00100793          	li	a5,1
    80007624:	d91ff06f          	j	800073b4 <__printf+0x3fc>
    80007628:	00100793          	li	a5,1
    8000762c:	bf1ff06f          	j	8000721c <__printf+0x264>
    80007630:	00900793          	li	a5,9
    80007634:	00800c93          	li	s9,8
    80007638:	be1ff06f          	j	80007218 <__printf+0x260>
    8000763c:	00002517          	auipc	a0,0x2
    80007640:	0bc50513          	addi	a0,a0,188 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007644:	00000097          	auipc	ra,0x0
    80007648:	918080e7          	jalr	-1768(ra) # 80006f5c <panic>

000000008000764c <printfinit>:
    8000764c:	fe010113          	addi	sp,sp,-32
    80007650:	00813823          	sd	s0,16(sp)
    80007654:	00913423          	sd	s1,8(sp)
    80007658:	00113c23          	sd	ra,24(sp)
    8000765c:	02010413          	addi	s0,sp,32
    80007660:	00005497          	auipc	s1,0x5
    80007664:	1b048493          	addi	s1,s1,432 # 8000c810 <pr>
    80007668:	00048513          	mv	a0,s1
    8000766c:	00002597          	auipc	a1,0x2
    80007670:	09c58593          	addi	a1,a1,156 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007674:	00000097          	auipc	ra,0x0
    80007678:	5f4080e7          	jalr	1524(ra) # 80007c68 <initlock>
    8000767c:	01813083          	ld	ra,24(sp)
    80007680:	01013403          	ld	s0,16(sp)
    80007684:	0004ac23          	sw	zero,24(s1)
    80007688:	00813483          	ld	s1,8(sp)
    8000768c:	02010113          	addi	sp,sp,32
    80007690:	00008067          	ret

0000000080007694 <uartinit>:
    80007694:	ff010113          	addi	sp,sp,-16
    80007698:	00813423          	sd	s0,8(sp)
    8000769c:	01010413          	addi	s0,sp,16
    800076a0:	100007b7          	lui	a5,0x10000
    800076a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800076a8:	f8000713          	li	a4,-128
    800076ac:	00e781a3          	sb	a4,3(a5)
    800076b0:	00300713          	li	a4,3
    800076b4:	00e78023          	sb	a4,0(a5)
    800076b8:	000780a3          	sb	zero,1(a5)
    800076bc:	00e781a3          	sb	a4,3(a5)
    800076c0:	00700693          	li	a3,7
    800076c4:	00d78123          	sb	a3,2(a5)
    800076c8:	00e780a3          	sb	a4,1(a5)
    800076cc:	00813403          	ld	s0,8(sp)
    800076d0:	01010113          	addi	sp,sp,16
    800076d4:	00008067          	ret

00000000800076d8 <uartputc>:
    800076d8:	00004797          	auipc	a5,0x4
    800076dc:	e607a783          	lw	a5,-416(a5) # 8000b538 <panicked>
    800076e0:	00078463          	beqz	a5,800076e8 <uartputc+0x10>
    800076e4:	0000006f          	j	800076e4 <uartputc+0xc>
    800076e8:	fd010113          	addi	sp,sp,-48
    800076ec:	02813023          	sd	s0,32(sp)
    800076f0:	00913c23          	sd	s1,24(sp)
    800076f4:	01213823          	sd	s2,16(sp)
    800076f8:	01313423          	sd	s3,8(sp)
    800076fc:	02113423          	sd	ra,40(sp)
    80007700:	03010413          	addi	s0,sp,48
    80007704:	00004917          	auipc	s2,0x4
    80007708:	e3c90913          	addi	s2,s2,-452 # 8000b540 <uart_tx_r>
    8000770c:	00093783          	ld	a5,0(s2)
    80007710:	00004497          	auipc	s1,0x4
    80007714:	e3848493          	addi	s1,s1,-456 # 8000b548 <uart_tx_w>
    80007718:	0004b703          	ld	a4,0(s1)
    8000771c:	02078693          	addi	a3,a5,32
    80007720:	00050993          	mv	s3,a0
    80007724:	02e69c63          	bne	a3,a4,8000775c <uartputc+0x84>
    80007728:	00001097          	auipc	ra,0x1
    8000772c:	834080e7          	jalr	-1996(ra) # 80007f5c <push_on>
    80007730:	00093783          	ld	a5,0(s2)
    80007734:	0004b703          	ld	a4,0(s1)
    80007738:	02078793          	addi	a5,a5,32
    8000773c:	00e79463          	bne	a5,a4,80007744 <uartputc+0x6c>
    80007740:	0000006f          	j	80007740 <uartputc+0x68>
    80007744:	00001097          	auipc	ra,0x1
    80007748:	88c080e7          	jalr	-1908(ra) # 80007fd0 <pop_on>
    8000774c:	00093783          	ld	a5,0(s2)
    80007750:	0004b703          	ld	a4,0(s1)
    80007754:	02078693          	addi	a3,a5,32
    80007758:	fce688e3          	beq	a3,a4,80007728 <uartputc+0x50>
    8000775c:	01f77693          	andi	a3,a4,31
    80007760:	00005597          	auipc	a1,0x5
    80007764:	0d058593          	addi	a1,a1,208 # 8000c830 <uart_tx_buf>
    80007768:	00d586b3          	add	a3,a1,a3
    8000776c:	00170713          	addi	a4,a4,1
    80007770:	01368023          	sb	s3,0(a3)
    80007774:	00e4b023          	sd	a4,0(s1)
    80007778:	10000637          	lui	a2,0x10000
    8000777c:	02f71063          	bne	a4,a5,8000779c <uartputc+0xc4>
    80007780:	0340006f          	j	800077b4 <uartputc+0xdc>
    80007784:	00074703          	lbu	a4,0(a4)
    80007788:	00f93023          	sd	a5,0(s2)
    8000778c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007790:	00093783          	ld	a5,0(s2)
    80007794:	0004b703          	ld	a4,0(s1)
    80007798:	00f70e63          	beq	a4,a5,800077b4 <uartputc+0xdc>
    8000779c:	00564683          	lbu	a3,5(a2)
    800077a0:	01f7f713          	andi	a4,a5,31
    800077a4:	00e58733          	add	a4,a1,a4
    800077a8:	0206f693          	andi	a3,a3,32
    800077ac:	00178793          	addi	a5,a5,1
    800077b0:	fc069ae3          	bnez	a3,80007784 <uartputc+0xac>
    800077b4:	02813083          	ld	ra,40(sp)
    800077b8:	02013403          	ld	s0,32(sp)
    800077bc:	01813483          	ld	s1,24(sp)
    800077c0:	01013903          	ld	s2,16(sp)
    800077c4:	00813983          	ld	s3,8(sp)
    800077c8:	03010113          	addi	sp,sp,48
    800077cc:	00008067          	ret

00000000800077d0 <uartputc_sync>:
    800077d0:	ff010113          	addi	sp,sp,-16
    800077d4:	00813423          	sd	s0,8(sp)
    800077d8:	01010413          	addi	s0,sp,16
    800077dc:	00004717          	auipc	a4,0x4
    800077e0:	d5c72703          	lw	a4,-676(a4) # 8000b538 <panicked>
    800077e4:	02071663          	bnez	a4,80007810 <uartputc_sync+0x40>
    800077e8:	00050793          	mv	a5,a0
    800077ec:	100006b7          	lui	a3,0x10000
    800077f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800077f4:	02077713          	andi	a4,a4,32
    800077f8:	fe070ce3          	beqz	a4,800077f0 <uartputc_sync+0x20>
    800077fc:	0ff7f793          	andi	a5,a5,255
    80007800:	00f68023          	sb	a5,0(a3)
    80007804:	00813403          	ld	s0,8(sp)
    80007808:	01010113          	addi	sp,sp,16
    8000780c:	00008067          	ret
    80007810:	0000006f          	j	80007810 <uartputc_sync+0x40>

0000000080007814 <uartstart>:
    80007814:	ff010113          	addi	sp,sp,-16
    80007818:	00813423          	sd	s0,8(sp)
    8000781c:	01010413          	addi	s0,sp,16
    80007820:	00004617          	auipc	a2,0x4
    80007824:	d2060613          	addi	a2,a2,-736 # 8000b540 <uart_tx_r>
    80007828:	00004517          	auipc	a0,0x4
    8000782c:	d2050513          	addi	a0,a0,-736 # 8000b548 <uart_tx_w>
    80007830:	00063783          	ld	a5,0(a2)
    80007834:	00053703          	ld	a4,0(a0)
    80007838:	04f70263          	beq	a4,a5,8000787c <uartstart+0x68>
    8000783c:	100005b7          	lui	a1,0x10000
    80007840:	00005817          	auipc	a6,0x5
    80007844:	ff080813          	addi	a6,a6,-16 # 8000c830 <uart_tx_buf>
    80007848:	01c0006f          	j	80007864 <uartstart+0x50>
    8000784c:	0006c703          	lbu	a4,0(a3)
    80007850:	00f63023          	sd	a5,0(a2)
    80007854:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007858:	00063783          	ld	a5,0(a2)
    8000785c:	00053703          	ld	a4,0(a0)
    80007860:	00f70e63          	beq	a4,a5,8000787c <uartstart+0x68>
    80007864:	01f7f713          	andi	a4,a5,31
    80007868:	00e806b3          	add	a3,a6,a4
    8000786c:	0055c703          	lbu	a4,5(a1)
    80007870:	00178793          	addi	a5,a5,1
    80007874:	02077713          	andi	a4,a4,32
    80007878:	fc071ae3          	bnez	a4,8000784c <uartstart+0x38>
    8000787c:	00813403          	ld	s0,8(sp)
    80007880:	01010113          	addi	sp,sp,16
    80007884:	00008067          	ret

0000000080007888 <uartgetc>:
    80007888:	ff010113          	addi	sp,sp,-16
    8000788c:	00813423          	sd	s0,8(sp)
    80007890:	01010413          	addi	s0,sp,16
    80007894:	10000737          	lui	a4,0x10000
    80007898:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000789c:	0017f793          	andi	a5,a5,1
    800078a0:	00078c63          	beqz	a5,800078b8 <uartgetc+0x30>
    800078a4:	00074503          	lbu	a0,0(a4)
    800078a8:	0ff57513          	andi	a0,a0,255
    800078ac:	00813403          	ld	s0,8(sp)
    800078b0:	01010113          	addi	sp,sp,16
    800078b4:	00008067          	ret
    800078b8:	fff00513          	li	a0,-1
    800078bc:	ff1ff06f          	j	800078ac <uartgetc+0x24>

00000000800078c0 <uartintr>:
    800078c0:	100007b7          	lui	a5,0x10000
    800078c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800078c8:	0017f793          	andi	a5,a5,1
    800078cc:	0a078463          	beqz	a5,80007974 <uartintr+0xb4>
    800078d0:	fe010113          	addi	sp,sp,-32
    800078d4:	00813823          	sd	s0,16(sp)
    800078d8:	00913423          	sd	s1,8(sp)
    800078dc:	00113c23          	sd	ra,24(sp)
    800078e0:	02010413          	addi	s0,sp,32
    800078e4:	100004b7          	lui	s1,0x10000
    800078e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800078ec:	0ff57513          	andi	a0,a0,255
    800078f0:	fffff097          	auipc	ra,0xfffff
    800078f4:	534080e7          	jalr	1332(ra) # 80006e24 <consoleintr>
    800078f8:	0054c783          	lbu	a5,5(s1)
    800078fc:	0017f793          	andi	a5,a5,1
    80007900:	fe0794e3          	bnez	a5,800078e8 <uartintr+0x28>
    80007904:	00004617          	auipc	a2,0x4
    80007908:	c3c60613          	addi	a2,a2,-964 # 8000b540 <uart_tx_r>
    8000790c:	00004517          	auipc	a0,0x4
    80007910:	c3c50513          	addi	a0,a0,-964 # 8000b548 <uart_tx_w>
    80007914:	00063783          	ld	a5,0(a2)
    80007918:	00053703          	ld	a4,0(a0)
    8000791c:	04f70263          	beq	a4,a5,80007960 <uartintr+0xa0>
    80007920:	100005b7          	lui	a1,0x10000
    80007924:	00005817          	auipc	a6,0x5
    80007928:	f0c80813          	addi	a6,a6,-244 # 8000c830 <uart_tx_buf>
    8000792c:	01c0006f          	j	80007948 <uartintr+0x88>
    80007930:	0006c703          	lbu	a4,0(a3)
    80007934:	00f63023          	sd	a5,0(a2)
    80007938:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000793c:	00063783          	ld	a5,0(a2)
    80007940:	00053703          	ld	a4,0(a0)
    80007944:	00f70e63          	beq	a4,a5,80007960 <uartintr+0xa0>
    80007948:	01f7f713          	andi	a4,a5,31
    8000794c:	00e806b3          	add	a3,a6,a4
    80007950:	0055c703          	lbu	a4,5(a1)
    80007954:	00178793          	addi	a5,a5,1
    80007958:	02077713          	andi	a4,a4,32
    8000795c:	fc071ae3          	bnez	a4,80007930 <uartintr+0x70>
    80007960:	01813083          	ld	ra,24(sp)
    80007964:	01013403          	ld	s0,16(sp)
    80007968:	00813483          	ld	s1,8(sp)
    8000796c:	02010113          	addi	sp,sp,32
    80007970:	00008067          	ret
    80007974:	00004617          	auipc	a2,0x4
    80007978:	bcc60613          	addi	a2,a2,-1076 # 8000b540 <uart_tx_r>
    8000797c:	00004517          	auipc	a0,0x4
    80007980:	bcc50513          	addi	a0,a0,-1076 # 8000b548 <uart_tx_w>
    80007984:	00063783          	ld	a5,0(a2)
    80007988:	00053703          	ld	a4,0(a0)
    8000798c:	04f70263          	beq	a4,a5,800079d0 <uartintr+0x110>
    80007990:	100005b7          	lui	a1,0x10000
    80007994:	00005817          	auipc	a6,0x5
    80007998:	e9c80813          	addi	a6,a6,-356 # 8000c830 <uart_tx_buf>
    8000799c:	01c0006f          	j	800079b8 <uartintr+0xf8>
    800079a0:	0006c703          	lbu	a4,0(a3)
    800079a4:	00f63023          	sd	a5,0(a2)
    800079a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079ac:	00063783          	ld	a5,0(a2)
    800079b0:	00053703          	ld	a4,0(a0)
    800079b4:	02f70063          	beq	a4,a5,800079d4 <uartintr+0x114>
    800079b8:	01f7f713          	andi	a4,a5,31
    800079bc:	00e806b3          	add	a3,a6,a4
    800079c0:	0055c703          	lbu	a4,5(a1)
    800079c4:	00178793          	addi	a5,a5,1
    800079c8:	02077713          	andi	a4,a4,32
    800079cc:	fc071ae3          	bnez	a4,800079a0 <uartintr+0xe0>
    800079d0:	00008067          	ret
    800079d4:	00008067          	ret

00000000800079d8 <kinit>:
    800079d8:	fc010113          	addi	sp,sp,-64
    800079dc:	02913423          	sd	s1,40(sp)
    800079e0:	fffff7b7          	lui	a5,0xfffff
    800079e4:	00006497          	auipc	s1,0x6
    800079e8:	e6b48493          	addi	s1,s1,-405 # 8000d84f <end+0xfff>
    800079ec:	02813823          	sd	s0,48(sp)
    800079f0:	01313c23          	sd	s3,24(sp)
    800079f4:	00f4f4b3          	and	s1,s1,a5
    800079f8:	02113c23          	sd	ra,56(sp)
    800079fc:	03213023          	sd	s2,32(sp)
    80007a00:	01413823          	sd	s4,16(sp)
    80007a04:	01513423          	sd	s5,8(sp)
    80007a08:	04010413          	addi	s0,sp,64
    80007a0c:	000017b7          	lui	a5,0x1
    80007a10:	01100993          	li	s3,17
    80007a14:	00f487b3          	add	a5,s1,a5
    80007a18:	01b99993          	slli	s3,s3,0x1b
    80007a1c:	06f9e063          	bltu	s3,a5,80007a7c <kinit+0xa4>
    80007a20:	00005a97          	auipc	s5,0x5
    80007a24:	e30a8a93          	addi	s5,s5,-464 # 8000c850 <end>
    80007a28:	0754ec63          	bltu	s1,s5,80007aa0 <kinit+0xc8>
    80007a2c:	0734fa63          	bgeu	s1,s3,80007aa0 <kinit+0xc8>
    80007a30:	00088a37          	lui	s4,0x88
    80007a34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007a38:	00004917          	auipc	s2,0x4
    80007a3c:	b1890913          	addi	s2,s2,-1256 # 8000b550 <kmem>
    80007a40:	00ca1a13          	slli	s4,s4,0xc
    80007a44:	0140006f          	j	80007a58 <kinit+0x80>
    80007a48:	000017b7          	lui	a5,0x1
    80007a4c:	00f484b3          	add	s1,s1,a5
    80007a50:	0554e863          	bltu	s1,s5,80007aa0 <kinit+0xc8>
    80007a54:	0534f663          	bgeu	s1,s3,80007aa0 <kinit+0xc8>
    80007a58:	00001637          	lui	a2,0x1
    80007a5c:	00100593          	li	a1,1
    80007a60:	00048513          	mv	a0,s1
    80007a64:	00000097          	auipc	ra,0x0
    80007a68:	5e4080e7          	jalr	1508(ra) # 80008048 <__memset>
    80007a6c:	00093783          	ld	a5,0(s2)
    80007a70:	00f4b023          	sd	a5,0(s1)
    80007a74:	00993023          	sd	s1,0(s2)
    80007a78:	fd4498e3          	bne	s1,s4,80007a48 <kinit+0x70>
    80007a7c:	03813083          	ld	ra,56(sp)
    80007a80:	03013403          	ld	s0,48(sp)
    80007a84:	02813483          	ld	s1,40(sp)
    80007a88:	02013903          	ld	s2,32(sp)
    80007a8c:	01813983          	ld	s3,24(sp)
    80007a90:	01013a03          	ld	s4,16(sp)
    80007a94:	00813a83          	ld	s5,8(sp)
    80007a98:	04010113          	addi	sp,sp,64
    80007a9c:	00008067          	ret
    80007aa0:	00002517          	auipc	a0,0x2
    80007aa4:	c8850513          	addi	a0,a0,-888 # 80009728 <digits+0x18>
    80007aa8:	fffff097          	auipc	ra,0xfffff
    80007aac:	4b4080e7          	jalr	1204(ra) # 80006f5c <panic>

0000000080007ab0 <freerange>:
    80007ab0:	fc010113          	addi	sp,sp,-64
    80007ab4:	000017b7          	lui	a5,0x1
    80007ab8:	02913423          	sd	s1,40(sp)
    80007abc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ac0:	009504b3          	add	s1,a0,s1
    80007ac4:	fffff537          	lui	a0,0xfffff
    80007ac8:	02813823          	sd	s0,48(sp)
    80007acc:	02113c23          	sd	ra,56(sp)
    80007ad0:	03213023          	sd	s2,32(sp)
    80007ad4:	01313c23          	sd	s3,24(sp)
    80007ad8:	01413823          	sd	s4,16(sp)
    80007adc:	01513423          	sd	s5,8(sp)
    80007ae0:	01613023          	sd	s6,0(sp)
    80007ae4:	04010413          	addi	s0,sp,64
    80007ae8:	00a4f4b3          	and	s1,s1,a0
    80007aec:	00f487b3          	add	a5,s1,a5
    80007af0:	06f5e463          	bltu	a1,a5,80007b58 <freerange+0xa8>
    80007af4:	00005a97          	auipc	s5,0x5
    80007af8:	d5ca8a93          	addi	s5,s5,-676 # 8000c850 <end>
    80007afc:	0954e263          	bltu	s1,s5,80007b80 <freerange+0xd0>
    80007b00:	01100993          	li	s3,17
    80007b04:	01b99993          	slli	s3,s3,0x1b
    80007b08:	0734fc63          	bgeu	s1,s3,80007b80 <freerange+0xd0>
    80007b0c:	00058a13          	mv	s4,a1
    80007b10:	00004917          	auipc	s2,0x4
    80007b14:	a4090913          	addi	s2,s2,-1472 # 8000b550 <kmem>
    80007b18:	00002b37          	lui	s6,0x2
    80007b1c:	0140006f          	j	80007b30 <freerange+0x80>
    80007b20:	000017b7          	lui	a5,0x1
    80007b24:	00f484b3          	add	s1,s1,a5
    80007b28:	0554ec63          	bltu	s1,s5,80007b80 <freerange+0xd0>
    80007b2c:	0534fa63          	bgeu	s1,s3,80007b80 <freerange+0xd0>
    80007b30:	00001637          	lui	a2,0x1
    80007b34:	00100593          	li	a1,1
    80007b38:	00048513          	mv	a0,s1
    80007b3c:	00000097          	auipc	ra,0x0
    80007b40:	50c080e7          	jalr	1292(ra) # 80008048 <__memset>
    80007b44:	00093703          	ld	a4,0(s2)
    80007b48:	016487b3          	add	a5,s1,s6
    80007b4c:	00e4b023          	sd	a4,0(s1)
    80007b50:	00993023          	sd	s1,0(s2)
    80007b54:	fcfa76e3          	bgeu	s4,a5,80007b20 <freerange+0x70>
    80007b58:	03813083          	ld	ra,56(sp)
    80007b5c:	03013403          	ld	s0,48(sp)
    80007b60:	02813483          	ld	s1,40(sp)
    80007b64:	02013903          	ld	s2,32(sp)
    80007b68:	01813983          	ld	s3,24(sp)
    80007b6c:	01013a03          	ld	s4,16(sp)
    80007b70:	00813a83          	ld	s5,8(sp)
    80007b74:	00013b03          	ld	s6,0(sp)
    80007b78:	04010113          	addi	sp,sp,64
    80007b7c:	00008067          	ret
    80007b80:	00002517          	auipc	a0,0x2
    80007b84:	ba850513          	addi	a0,a0,-1112 # 80009728 <digits+0x18>
    80007b88:	fffff097          	auipc	ra,0xfffff
    80007b8c:	3d4080e7          	jalr	980(ra) # 80006f5c <panic>

0000000080007b90 <kfree>:
    80007b90:	fe010113          	addi	sp,sp,-32
    80007b94:	00813823          	sd	s0,16(sp)
    80007b98:	00113c23          	sd	ra,24(sp)
    80007b9c:	00913423          	sd	s1,8(sp)
    80007ba0:	02010413          	addi	s0,sp,32
    80007ba4:	03451793          	slli	a5,a0,0x34
    80007ba8:	04079c63          	bnez	a5,80007c00 <kfree+0x70>
    80007bac:	00005797          	auipc	a5,0x5
    80007bb0:	ca478793          	addi	a5,a5,-860 # 8000c850 <end>
    80007bb4:	00050493          	mv	s1,a0
    80007bb8:	04f56463          	bltu	a0,a5,80007c00 <kfree+0x70>
    80007bbc:	01100793          	li	a5,17
    80007bc0:	01b79793          	slli	a5,a5,0x1b
    80007bc4:	02f57e63          	bgeu	a0,a5,80007c00 <kfree+0x70>
    80007bc8:	00001637          	lui	a2,0x1
    80007bcc:	00100593          	li	a1,1
    80007bd0:	00000097          	auipc	ra,0x0
    80007bd4:	478080e7          	jalr	1144(ra) # 80008048 <__memset>
    80007bd8:	00004797          	auipc	a5,0x4
    80007bdc:	97878793          	addi	a5,a5,-1672 # 8000b550 <kmem>
    80007be0:	0007b703          	ld	a4,0(a5)
    80007be4:	01813083          	ld	ra,24(sp)
    80007be8:	01013403          	ld	s0,16(sp)
    80007bec:	00e4b023          	sd	a4,0(s1)
    80007bf0:	0097b023          	sd	s1,0(a5)
    80007bf4:	00813483          	ld	s1,8(sp)
    80007bf8:	02010113          	addi	sp,sp,32
    80007bfc:	00008067          	ret
    80007c00:	00002517          	auipc	a0,0x2
    80007c04:	b2850513          	addi	a0,a0,-1240 # 80009728 <digits+0x18>
    80007c08:	fffff097          	auipc	ra,0xfffff
    80007c0c:	354080e7          	jalr	852(ra) # 80006f5c <panic>

0000000080007c10 <kalloc>:
    80007c10:	fe010113          	addi	sp,sp,-32
    80007c14:	00813823          	sd	s0,16(sp)
    80007c18:	00913423          	sd	s1,8(sp)
    80007c1c:	00113c23          	sd	ra,24(sp)
    80007c20:	02010413          	addi	s0,sp,32
    80007c24:	00004797          	auipc	a5,0x4
    80007c28:	92c78793          	addi	a5,a5,-1748 # 8000b550 <kmem>
    80007c2c:	0007b483          	ld	s1,0(a5)
    80007c30:	02048063          	beqz	s1,80007c50 <kalloc+0x40>
    80007c34:	0004b703          	ld	a4,0(s1)
    80007c38:	00001637          	lui	a2,0x1
    80007c3c:	00500593          	li	a1,5
    80007c40:	00048513          	mv	a0,s1
    80007c44:	00e7b023          	sd	a4,0(a5)
    80007c48:	00000097          	auipc	ra,0x0
    80007c4c:	400080e7          	jalr	1024(ra) # 80008048 <__memset>
    80007c50:	01813083          	ld	ra,24(sp)
    80007c54:	01013403          	ld	s0,16(sp)
    80007c58:	00048513          	mv	a0,s1
    80007c5c:	00813483          	ld	s1,8(sp)
    80007c60:	02010113          	addi	sp,sp,32
    80007c64:	00008067          	ret

0000000080007c68 <initlock>:
    80007c68:	ff010113          	addi	sp,sp,-16
    80007c6c:	00813423          	sd	s0,8(sp)
    80007c70:	01010413          	addi	s0,sp,16
    80007c74:	00813403          	ld	s0,8(sp)
    80007c78:	00b53423          	sd	a1,8(a0)
    80007c7c:	00052023          	sw	zero,0(a0)
    80007c80:	00053823          	sd	zero,16(a0)
    80007c84:	01010113          	addi	sp,sp,16
    80007c88:	00008067          	ret

0000000080007c8c <acquire>:
    80007c8c:	fe010113          	addi	sp,sp,-32
    80007c90:	00813823          	sd	s0,16(sp)
    80007c94:	00913423          	sd	s1,8(sp)
    80007c98:	00113c23          	sd	ra,24(sp)
    80007c9c:	01213023          	sd	s2,0(sp)
    80007ca0:	02010413          	addi	s0,sp,32
    80007ca4:	00050493          	mv	s1,a0
    80007ca8:	10002973          	csrr	s2,sstatus
    80007cac:	100027f3          	csrr	a5,sstatus
    80007cb0:	ffd7f793          	andi	a5,a5,-3
    80007cb4:	10079073          	csrw	sstatus,a5
    80007cb8:	fffff097          	auipc	ra,0xfffff
    80007cbc:	8e0080e7          	jalr	-1824(ra) # 80006598 <mycpu>
    80007cc0:	07852783          	lw	a5,120(a0)
    80007cc4:	06078e63          	beqz	a5,80007d40 <acquire+0xb4>
    80007cc8:	fffff097          	auipc	ra,0xfffff
    80007ccc:	8d0080e7          	jalr	-1840(ra) # 80006598 <mycpu>
    80007cd0:	07852783          	lw	a5,120(a0)
    80007cd4:	0004a703          	lw	a4,0(s1)
    80007cd8:	0017879b          	addiw	a5,a5,1
    80007cdc:	06f52c23          	sw	a5,120(a0)
    80007ce0:	04071063          	bnez	a4,80007d20 <acquire+0x94>
    80007ce4:	00100713          	li	a4,1
    80007ce8:	00070793          	mv	a5,a4
    80007cec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007cf0:	0007879b          	sext.w	a5,a5
    80007cf4:	fe079ae3          	bnez	a5,80007ce8 <acquire+0x5c>
    80007cf8:	0ff0000f          	fence
    80007cfc:	fffff097          	auipc	ra,0xfffff
    80007d00:	89c080e7          	jalr	-1892(ra) # 80006598 <mycpu>
    80007d04:	01813083          	ld	ra,24(sp)
    80007d08:	01013403          	ld	s0,16(sp)
    80007d0c:	00a4b823          	sd	a0,16(s1)
    80007d10:	00013903          	ld	s2,0(sp)
    80007d14:	00813483          	ld	s1,8(sp)
    80007d18:	02010113          	addi	sp,sp,32
    80007d1c:	00008067          	ret
    80007d20:	0104b903          	ld	s2,16(s1)
    80007d24:	fffff097          	auipc	ra,0xfffff
    80007d28:	874080e7          	jalr	-1932(ra) # 80006598 <mycpu>
    80007d2c:	faa91ce3          	bne	s2,a0,80007ce4 <acquire+0x58>
    80007d30:	00002517          	auipc	a0,0x2
    80007d34:	a0050513          	addi	a0,a0,-1536 # 80009730 <digits+0x20>
    80007d38:	fffff097          	auipc	ra,0xfffff
    80007d3c:	224080e7          	jalr	548(ra) # 80006f5c <panic>
    80007d40:	00195913          	srli	s2,s2,0x1
    80007d44:	fffff097          	auipc	ra,0xfffff
    80007d48:	854080e7          	jalr	-1964(ra) # 80006598 <mycpu>
    80007d4c:	00197913          	andi	s2,s2,1
    80007d50:	07252e23          	sw	s2,124(a0)
    80007d54:	f75ff06f          	j	80007cc8 <acquire+0x3c>

0000000080007d58 <release>:
    80007d58:	fe010113          	addi	sp,sp,-32
    80007d5c:	00813823          	sd	s0,16(sp)
    80007d60:	00113c23          	sd	ra,24(sp)
    80007d64:	00913423          	sd	s1,8(sp)
    80007d68:	01213023          	sd	s2,0(sp)
    80007d6c:	02010413          	addi	s0,sp,32
    80007d70:	00052783          	lw	a5,0(a0)
    80007d74:	00079a63          	bnez	a5,80007d88 <release+0x30>
    80007d78:	00002517          	auipc	a0,0x2
    80007d7c:	9c050513          	addi	a0,a0,-1600 # 80009738 <digits+0x28>
    80007d80:	fffff097          	auipc	ra,0xfffff
    80007d84:	1dc080e7          	jalr	476(ra) # 80006f5c <panic>
    80007d88:	01053903          	ld	s2,16(a0)
    80007d8c:	00050493          	mv	s1,a0
    80007d90:	fffff097          	auipc	ra,0xfffff
    80007d94:	808080e7          	jalr	-2040(ra) # 80006598 <mycpu>
    80007d98:	fea910e3          	bne	s2,a0,80007d78 <release+0x20>
    80007d9c:	0004b823          	sd	zero,16(s1)
    80007da0:	0ff0000f          	fence
    80007da4:	0f50000f          	fence	iorw,ow
    80007da8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007dac:	ffffe097          	auipc	ra,0xffffe
    80007db0:	7ec080e7          	jalr	2028(ra) # 80006598 <mycpu>
    80007db4:	100027f3          	csrr	a5,sstatus
    80007db8:	0027f793          	andi	a5,a5,2
    80007dbc:	04079a63          	bnez	a5,80007e10 <release+0xb8>
    80007dc0:	07852783          	lw	a5,120(a0)
    80007dc4:	02f05e63          	blez	a5,80007e00 <release+0xa8>
    80007dc8:	fff7871b          	addiw	a4,a5,-1
    80007dcc:	06e52c23          	sw	a4,120(a0)
    80007dd0:	00071c63          	bnez	a4,80007de8 <release+0x90>
    80007dd4:	07c52783          	lw	a5,124(a0)
    80007dd8:	00078863          	beqz	a5,80007de8 <release+0x90>
    80007ddc:	100027f3          	csrr	a5,sstatus
    80007de0:	0027e793          	ori	a5,a5,2
    80007de4:	10079073          	csrw	sstatus,a5
    80007de8:	01813083          	ld	ra,24(sp)
    80007dec:	01013403          	ld	s0,16(sp)
    80007df0:	00813483          	ld	s1,8(sp)
    80007df4:	00013903          	ld	s2,0(sp)
    80007df8:	02010113          	addi	sp,sp,32
    80007dfc:	00008067          	ret
    80007e00:	00002517          	auipc	a0,0x2
    80007e04:	95850513          	addi	a0,a0,-1704 # 80009758 <digits+0x48>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	154080e7          	jalr	340(ra) # 80006f5c <panic>
    80007e10:	00002517          	auipc	a0,0x2
    80007e14:	93050513          	addi	a0,a0,-1744 # 80009740 <digits+0x30>
    80007e18:	fffff097          	auipc	ra,0xfffff
    80007e1c:	144080e7          	jalr	324(ra) # 80006f5c <panic>

0000000080007e20 <holding>:
    80007e20:	00052783          	lw	a5,0(a0)
    80007e24:	00079663          	bnez	a5,80007e30 <holding+0x10>
    80007e28:	00000513          	li	a0,0
    80007e2c:	00008067          	ret
    80007e30:	fe010113          	addi	sp,sp,-32
    80007e34:	00813823          	sd	s0,16(sp)
    80007e38:	00913423          	sd	s1,8(sp)
    80007e3c:	00113c23          	sd	ra,24(sp)
    80007e40:	02010413          	addi	s0,sp,32
    80007e44:	01053483          	ld	s1,16(a0)
    80007e48:	ffffe097          	auipc	ra,0xffffe
    80007e4c:	750080e7          	jalr	1872(ra) # 80006598 <mycpu>
    80007e50:	01813083          	ld	ra,24(sp)
    80007e54:	01013403          	ld	s0,16(sp)
    80007e58:	40a48533          	sub	a0,s1,a0
    80007e5c:	00153513          	seqz	a0,a0
    80007e60:	00813483          	ld	s1,8(sp)
    80007e64:	02010113          	addi	sp,sp,32
    80007e68:	00008067          	ret

0000000080007e6c <push_off>:
    80007e6c:	fe010113          	addi	sp,sp,-32
    80007e70:	00813823          	sd	s0,16(sp)
    80007e74:	00113c23          	sd	ra,24(sp)
    80007e78:	00913423          	sd	s1,8(sp)
    80007e7c:	02010413          	addi	s0,sp,32
    80007e80:	100024f3          	csrr	s1,sstatus
    80007e84:	100027f3          	csrr	a5,sstatus
    80007e88:	ffd7f793          	andi	a5,a5,-3
    80007e8c:	10079073          	csrw	sstatus,a5
    80007e90:	ffffe097          	auipc	ra,0xffffe
    80007e94:	708080e7          	jalr	1800(ra) # 80006598 <mycpu>
    80007e98:	07852783          	lw	a5,120(a0)
    80007e9c:	02078663          	beqz	a5,80007ec8 <push_off+0x5c>
    80007ea0:	ffffe097          	auipc	ra,0xffffe
    80007ea4:	6f8080e7          	jalr	1784(ra) # 80006598 <mycpu>
    80007ea8:	07852783          	lw	a5,120(a0)
    80007eac:	01813083          	ld	ra,24(sp)
    80007eb0:	01013403          	ld	s0,16(sp)
    80007eb4:	0017879b          	addiw	a5,a5,1
    80007eb8:	06f52c23          	sw	a5,120(a0)
    80007ebc:	00813483          	ld	s1,8(sp)
    80007ec0:	02010113          	addi	sp,sp,32
    80007ec4:	00008067          	ret
    80007ec8:	0014d493          	srli	s1,s1,0x1
    80007ecc:	ffffe097          	auipc	ra,0xffffe
    80007ed0:	6cc080e7          	jalr	1740(ra) # 80006598 <mycpu>
    80007ed4:	0014f493          	andi	s1,s1,1
    80007ed8:	06952e23          	sw	s1,124(a0)
    80007edc:	fc5ff06f          	j	80007ea0 <push_off+0x34>

0000000080007ee0 <pop_off>:
    80007ee0:	ff010113          	addi	sp,sp,-16
    80007ee4:	00813023          	sd	s0,0(sp)
    80007ee8:	00113423          	sd	ra,8(sp)
    80007eec:	01010413          	addi	s0,sp,16
    80007ef0:	ffffe097          	auipc	ra,0xffffe
    80007ef4:	6a8080e7          	jalr	1704(ra) # 80006598 <mycpu>
    80007ef8:	100027f3          	csrr	a5,sstatus
    80007efc:	0027f793          	andi	a5,a5,2
    80007f00:	04079663          	bnez	a5,80007f4c <pop_off+0x6c>
    80007f04:	07852783          	lw	a5,120(a0)
    80007f08:	02f05a63          	blez	a5,80007f3c <pop_off+0x5c>
    80007f0c:	fff7871b          	addiw	a4,a5,-1
    80007f10:	06e52c23          	sw	a4,120(a0)
    80007f14:	00071c63          	bnez	a4,80007f2c <pop_off+0x4c>
    80007f18:	07c52783          	lw	a5,124(a0)
    80007f1c:	00078863          	beqz	a5,80007f2c <pop_off+0x4c>
    80007f20:	100027f3          	csrr	a5,sstatus
    80007f24:	0027e793          	ori	a5,a5,2
    80007f28:	10079073          	csrw	sstatus,a5
    80007f2c:	00813083          	ld	ra,8(sp)
    80007f30:	00013403          	ld	s0,0(sp)
    80007f34:	01010113          	addi	sp,sp,16
    80007f38:	00008067          	ret
    80007f3c:	00002517          	auipc	a0,0x2
    80007f40:	81c50513          	addi	a0,a0,-2020 # 80009758 <digits+0x48>
    80007f44:	fffff097          	auipc	ra,0xfffff
    80007f48:	018080e7          	jalr	24(ra) # 80006f5c <panic>
    80007f4c:	00001517          	auipc	a0,0x1
    80007f50:	7f450513          	addi	a0,a0,2036 # 80009740 <digits+0x30>
    80007f54:	fffff097          	auipc	ra,0xfffff
    80007f58:	008080e7          	jalr	8(ra) # 80006f5c <panic>

0000000080007f5c <push_on>:
    80007f5c:	fe010113          	addi	sp,sp,-32
    80007f60:	00813823          	sd	s0,16(sp)
    80007f64:	00113c23          	sd	ra,24(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	02010413          	addi	s0,sp,32
    80007f70:	100024f3          	csrr	s1,sstatus
    80007f74:	100027f3          	csrr	a5,sstatus
    80007f78:	0027e793          	ori	a5,a5,2
    80007f7c:	10079073          	csrw	sstatus,a5
    80007f80:	ffffe097          	auipc	ra,0xffffe
    80007f84:	618080e7          	jalr	1560(ra) # 80006598 <mycpu>
    80007f88:	07852783          	lw	a5,120(a0)
    80007f8c:	02078663          	beqz	a5,80007fb8 <push_on+0x5c>
    80007f90:	ffffe097          	auipc	ra,0xffffe
    80007f94:	608080e7          	jalr	1544(ra) # 80006598 <mycpu>
    80007f98:	07852783          	lw	a5,120(a0)
    80007f9c:	01813083          	ld	ra,24(sp)
    80007fa0:	01013403          	ld	s0,16(sp)
    80007fa4:	0017879b          	addiw	a5,a5,1
    80007fa8:	06f52c23          	sw	a5,120(a0)
    80007fac:	00813483          	ld	s1,8(sp)
    80007fb0:	02010113          	addi	sp,sp,32
    80007fb4:	00008067          	ret
    80007fb8:	0014d493          	srli	s1,s1,0x1
    80007fbc:	ffffe097          	auipc	ra,0xffffe
    80007fc0:	5dc080e7          	jalr	1500(ra) # 80006598 <mycpu>
    80007fc4:	0014f493          	andi	s1,s1,1
    80007fc8:	06952e23          	sw	s1,124(a0)
    80007fcc:	fc5ff06f          	j	80007f90 <push_on+0x34>

0000000080007fd0 <pop_on>:
    80007fd0:	ff010113          	addi	sp,sp,-16
    80007fd4:	00813023          	sd	s0,0(sp)
    80007fd8:	00113423          	sd	ra,8(sp)
    80007fdc:	01010413          	addi	s0,sp,16
    80007fe0:	ffffe097          	auipc	ra,0xffffe
    80007fe4:	5b8080e7          	jalr	1464(ra) # 80006598 <mycpu>
    80007fe8:	100027f3          	csrr	a5,sstatus
    80007fec:	0027f793          	andi	a5,a5,2
    80007ff0:	04078463          	beqz	a5,80008038 <pop_on+0x68>
    80007ff4:	07852783          	lw	a5,120(a0)
    80007ff8:	02f05863          	blez	a5,80008028 <pop_on+0x58>
    80007ffc:	fff7879b          	addiw	a5,a5,-1
    80008000:	06f52c23          	sw	a5,120(a0)
    80008004:	07853783          	ld	a5,120(a0)
    80008008:	00079863          	bnez	a5,80008018 <pop_on+0x48>
    8000800c:	100027f3          	csrr	a5,sstatus
    80008010:	ffd7f793          	andi	a5,a5,-3
    80008014:	10079073          	csrw	sstatus,a5
    80008018:	00813083          	ld	ra,8(sp)
    8000801c:	00013403          	ld	s0,0(sp)
    80008020:	01010113          	addi	sp,sp,16
    80008024:	00008067          	ret
    80008028:	00001517          	auipc	a0,0x1
    8000802c:	75850513          	addi	a0,a0,1880 # 80009780 <digits+0x70>
    80008030:	fffff097          	auipc	ra,0xfffff
    80008034:	f2c080e7          	jalr	-212(ra) # 80006f5c <panic>
    80008038:	00001517          	auipc	a0,0x1
    8000803c:	72850513          	addi	a0,a0,1832 # 80009760 <digits+0x50>
    80008040:	fffff097          	auipc	ra,0xfffff
    80008044:	f1c080e7          	jalr	-228(ra) # 80006f5c <panic>

0000000080008048 <__memset>:
    80008048:	ff010113          	addi	sp,sp,-16
    8000804c:	00813423          	sd	s0,8(sp)
    80008050:	01010413          	addi	s0,sp,16
    80008054:	1a060e63          	beqz	a2,80008210 <__memset+0x1c8>
    80008058:	40a007b3          	neg	a5,a0
    8000805c:	0077f793          	andi	a5,a5,7
    80008060:	00778693          	addi	a3,a5,7
    80008064:	00b00813          	li	a6,11
    80008068:	0ff5f593          	andi	a1,a1,255
    8000806c:	fff6071b          	addiw	a4,a2,-1
    80008070:	1b06e663          	bltu	a3,a6,8000821c <__memset+0x1d4>
    80008074:	1cd76463          	bltu	a4,a3,8000823c <__memset+0x1f4>
    80008078:	1a078e63          	beqz	a5,80008234 <__memset+0x1ec>
    8000807c:	00b50023          	sb	a1,0(a0)
    80008080:	00100713          	li	a4,1
    80008084:	1ae78463          	beq	a5,a4,8000822c <__memset+0x1e4>
    80008088:	00b500a3          	sb	a1,1(a0)
    8000808c:	00200713          	li	a4,2
    80008090:	1ae78a63          	beq	a5,a4,80008244 <__memset+0x1fc>
    80008094:	00b50123          	sb	a1,2(a0)
    80008098:	00300713          	li	a4,3
    8000809c:	18e78463          	beq	a5,a4,80008224 <__memset+0x1dc>
    800080a0:	00b501a3          	sb	a1,3(a0)
    800080a4:	00400713          	li	a4,4
    800080a8:	1ae78263          	beq	a5,a4,8000824c <__memset+0x204>
    800080ac:	00b50223          	sb	a1,4(a0)
    800080b0:	00500713          	li	a4,5
    800080b4:	1ae78063          	beq	a5,a4,80008254 <__memset+0x20c>
    800080b8:	00b502a3          	sb	a1,5(a0)
    800080bc:	00700713          	li	a4,7
    800080c0:	18e79e63          	bne	a5,a4,8000825c <__memset+0x214>
    800080c4:	00b50323          	sb	a1,6(a0)
    800080c8:	00700e93          	li	t4,7
    800080cc:	00859713          	slli	a4,a1,0x8
    800080d0:	00e5e733          	or	a4,a1,a4
    800080d4:	01059e13          	slli	t3,a1,0x10
    800080d8:	01c76e33          	or	t3,a4,t3
    800080dc:	01859313          	slli	t1,a1,0x18
    800080e0:	006e6333          	or	t1,t3,t1
    800080e4:	02059893          	slli	a7,a1,0x20
    800080e8:	40f60e3b          	subw	t3,a2,a5
    800080ec:	011368b3          	or	a7,t1,a7
    800080f0:	02859813          	slli	a6,a1,0x28
    800080f4:	0108e833          	or	a6,a7,a6
    800080f8:	03059693          	slli	a3,a1,0x30
    800080fc:	003e589b          	srliw	a7,t3,0x3
    80008100:	00d866b3          	or	a3,a6,a3
    80008104:	03859713          	slli	a4,a1,0x38
    80008108:	00389813          	slli	a6,a7,0x3
    8000810c:	00f507b3          	add	a5,a0,a5
    80008110:	00e6e733          	or	a4,a3,a4
    80008114:	000e089b          	sext.w	a7,t3
    80008118:	00f806b3          	add	a3,a6,a5
    8000811c:	00e7b023          	sd	a4,0(a5)
    80008120:	00878793          	addi	a5,a5,8
    80008124:	fed79ce3          	bne	a5,a3,8000811c <__memset+0xd4>
    80008128:	ff8e7793          	andi	a5,t3,-8
    8000812c:	0007871b          	sext.w	a4,a5
    80008130:	01d787bb          	addw	a5,a5,t4
    80008134:	0ce88e63          	beq	a7,a4,80008210 <__memset+0x1c8>
    80008138:	00f50733          	add	a4,a0,a5
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	0017871b          	addiw	a4,a5,1
    80008144:	0cc77663          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	0027871b          	addiw	a4,a5,2
    80008154:	0ac77e63          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	0037871b          	addiw	a4,a5,3
    80008164:	0ac77663          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    80008168:	00e50733          	add	a4,a0,a4
    8000816c:	00b70023          	sb	a1,0(a4)
    80008170:	0047871b          	addiw	a4,a5,4
    80008174:	08c77e63          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    80008178:	00e50733          	add	a4,a0,a4
    8000817c:	00b70023          	sb	a1,0(a4)
    80008180:	0057871b          	addiw	a4,a5,5
    80008184:	08c77663          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    80008188:	00e50733          	add	a4,a0,a4
    8000818c:	00b70023          	sb	a1,0(a4)
    80008190:	0067871b          	addiw	a4,a5,6
    80008194:	06c77e63          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    80008198:	00e50733          	add	a4,a0,a4
    8000819c:	00b70023          	sb	a1,0(a4)
    800081a0:	0077871b          	addiw	a4,a5,7
    800081a4:	06c77663          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    800081a8:	00e50733          	add	a4,a0,a4
    800081ac:	00b70023          	sb	a1,0(a4)
    800081b0:	0087871b          	addiw	a4,a5,8
    800081b4:	04c77e63          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    800081b8:	00e50733          	add	a4,a0,a4
    800081bc:	00b70023          	sb	a1,0(a4)
    800081c0:	0097871b          	addiw	a4,a5,9
    800081c4:	04c77663          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    800081c8:	00e50733          	add	a4,a0,a4
    800081cc:	00b70023          	sb	a1,0(a4)
    800081d0:	00a7871b          	addiw	a4,a5,10
    800081d4:	02c77e63          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    800081d8:	00e50733          	add	a4,a0,a4
    800081dc:	00b70023          	sb	a1,0(a4)
    800081e0:	00b7871b          	addiw	a4,a5,11
    800081e4:	02c77663          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    800081e8:	00e50733          	add	a4,a0,a4
    800081ec:	00b70023          	sb	a1,0(a4)
    800081f0:	00c7871b          	addiw	a4,a5,12
    800081f4:	00c77e63          	bgeu	a4,a2,80008210 <__memset+0x1c8>
    800081f8:	00e50733          	add	a4,a0,a4
    800081fc:	00b70023          	sb	a1,0(a4)
    80008200:	00d7879b          	addiw	a5,a5,13
    80008204:	00c7f663          	bgeu	a5,a2,80008210 <__memset+0x1c8>
    80008208:	00f507b3          	add	a5,a0,a5
    8000820c:	00b78023          	sb	a1,0(a5)
    80008210:	00813403          	ld	s0,8(sp)
    80008214:	01010113          	addi	sp,sp,16
    80008218:	00008067          	ret
    8000821c:	00b00693          	li	a3,11
    80008220:	e55ff06f          	j	80008074 <__memset+0x2c>
    80008224:	00300e93          	li	t4,3
    80008228:	ea5ff06f          	j	800080cc <__memset+0x84>
    8000822c:	00100e93          	li	t4,1
    80008230:	e9dff06f          	j	800080cc <__memset+0x84>
    80008234:	00000e93          	li	t4,0
    80008238:	e95ff06f          	j	800080cc <__memset+0x84>
    8000823c:	00000793          	li	a5,0
    80008240:	ef9ff06f          	j	80008138 <__memset+0xf0>
    80008244:	00200e93          	li	t4,2
    80008248:	e85ff06f          	j	800080cc <__memset+0x84>
    8000824c:	00400e93          	li	t4,4
    80008250:	e7dff06f          	j	800080cc <__memset+0x84>
    80008254:	00500e93          	li	t4,5
    80008258:	e75ff06f          	j	800080cc <__memset+0x84>
    8000825c:	00600e93          	li	t4,6
    80008260:	e6dff06f          	j	800080cc <__memset+0x84>

0000000080008264 <__memmove>:
    80008264:	ff010113          	addi	sp,sp,-16
    80008268:	00813423          	sd	s0,8(sp)
    8000826c:	01010413          	addi	s0,sp,16
    80008270:	0e060863          	beqz	a2,80008360 <__memmove+0xfc>
    80008274:	fff6069b          	addiw	a3,a2,-1
    80008278:	0006881b          	sext.w	a6,a3
    8000827c:	0ea5e863          	bltu	a1,a0,8000836c <__memmove+0x108>
    80008280:	00758713          	addi	a4,a1,7
    80008284:	00a5e7b3          	or	a5,a1,a0
    80008288:	40a70733          	sub	a4,a4,a0
    8000828c:	0077f793          	andi	a5,a5,7
    80008290:	00f73713          	sltiu	a4,a4,15
    80008294:	00174713          	xori	a4,a4,1
    80008298:	0017b793          	seqz	a5,a5
    8000829c:	00e7f7b3          	and	a5,a5,a4
    800082a0:	10078863          	beqz	a5,800083b0 <__memmove+0x14c>
    800082a4:	00900793          	li	a5,9
    800082a8:	1107f463          	bgeu	a5,a6,800083b0 <__memmove+0x14c>
    800082ac:	0036581b          	srliw	a6,a2,0x3
    800082b0:	fff8081b          	addiw	a6,a6,-1
    800082b4:	02081813          	slli	a6,a6,0x20
    800082b8:	01d85893          	srli	a7,a6,0x1d
    800082bc:	00858813          	addi	a6,a1,8
    800082c0:	00058793          	mv	a5,a1
    800082c4:	00050713          	mv	a4,a0
    800082c8:	01088833          	add	a6,a7,a6
    800082cc:	0007b883          	ld	a7,0(a5)
    800082d0:	00878793          	addi	a5,a5,8
    800082d4:	00870713          	addi	a4,a4,8
    800082d8:	ff173c23          	sd	a7,-8(a4)
    800082dc:	ff0798e3          	bne	a5,a6,800082cc <__memmove+0x68>
    800082e0:	ff867713          	andi	a4,a2,-8
    800082e4:	02071793          	slli	a5,a4,0x20
    800082e8:	0207d793          	srli	a5,a5,0x20
    800082ec:	00f585b3          	add	a1,a1,a5
    800082f0:	40e686bb          	subw	a3,a3,a4
    800082f4:	00f507b3          	add	a5,a0,a5
    800082f8:	06e60463          	beq	a2,a4,80008360 <__memmove+0xfc>
    800082fc:	0005c703          	lbu	a4,0(a1)
    80008300:	00e78023          	sb	a4,0(a5)
    80008304:	04068e63          	beqz	a3,80008360 <__memmove+0xfc>
    80008308:	0015c603          	lbu	a2,1(a1)
    8000830c:	00100713          	li	a4,1
    80008310:	00c780a3          	sb	a2,1(a5)
    80008314:	04e68663          	beq	a3,a4,80008360 <__memmove+0xfc>
    80008318:	0025c603          	lbu	a2,2(a1)
    8000831c:	00200713          	li	a4,2
    80008320:	00c78123          	sb	a2,2(a5)
    80008324:	02e68e63          	beq	a3,a4,80008360 <__memmove+0xfc>
    80008328:	0035c603          	lbu	a2,3(a1)
    8000832c:	00300713          	li	a4,3
    80008330:	00c781a3          	sb	a2,3(a5)
    80008334:	02e68663          	beq	a3,a4,80008360 <__memmove+0xfc>
    80008338:	0045c603          	lbu	a2,4(a1)
    8000833c:	00400713          	li	a4,4
    80008340:	00c78223          	sb	a2,4(a5)
    80008344:	00e68e63          	beq	a3,a4,80008360 <__memmove+0xfc>
    80008348:	0055c603          	lbu	a2,5(a1)
    8000834c:	00500713          	li	a4,5
    80008350:	00c782a3          	sb	a2,5(a5)
    80008354:	00e68663          	beq	a3,a4,80008360 <__memmove+0xfc>
    80008358:	0065c703          	lbu	a4,6(a1)
    8000835c:	00e78323          	sb	a4,6(a5)
    80008360:	00813403          	ld	s0,8(sp)
    80008364:	01010113          	addi	sp,sp,16
    80008368:	00008067          	ret
    8000836c:	02061713          	slli	a4,a2,0x20
    80008370:	02075713          	srli	a4,a4,0x20
    80008374:	00e587b3          	add	a5,a1,a4
    80008378:	f0f574e3          	bgeu	a0,a5,80008280 <__memmove+0x1c>
    8000837c:	02069613          	slli	a2,a3,0x20
    80008380:	02065613          	srli	a2,a2,0x20
    80008384:	fff64613          	not	a2,a2
    80008388:	00e50733          	add	a4,a0,a4
    8000838c:	00c78633          	add	a2,a5,a2
    80008390:	fff7c683          	lbu	a3,-1(a5)
    80008394:	fff78793          	addi	a5,a5,-1
    80008398:	fff70713          	addi	a4,a4,-1
    8000839c:	00d70023          	sb	a3,0(a4)
    800083a0:	fec798e3          	bne	a5,a2,80008390 <__memmove+0x12c>
    800083a4:	00813403          	ld	s0,8(sp)
    800083a8:	01010113          	addi	sp,sp,16
    800083ac:	00008067          	ret
    800083b0:	02069713          	slli	a4,a3,0x20
    800083b4:	02075713          	srli	a4,a4,0x20
    800083b8:	00170713          	addi	a4,a4,1
    800083bc:	00e50733          	add	a4,a0,a4
    800083c0:	00050793          	mv	a5,a0
    800083c4:	0005c683          	lbu	a3,0(a1)
    800083c8:	00178793          	addi	a5,a5,1
    800083cc:	00158593          	addi	a1,a1,1
    800083d0:	fed78fa3          	sb	a3,-1(a5)
    800083d4:	fee798e3          	bne	a5,a4,800083c4 <__memmove+0x160>
    800083d8:	f89ff06f          	j	80008360 <__memmove+0xfc>

00000000800083dc <__putc>:
    800083dc:	fe010113          	addi	sp,sp,-32
    800083e0:	00813823          	sd	s0,16(sp)
    800083e4:	00113c23          	sd	ra,24(sp)
    800083e8:	02010413          	addi	s0,sp,32
    800083ec:	00050793          	mv	a5,a0
    800083f0:	fef40593          	addi	a1,s0,-17
    800083f4:	00100613          	li	a2,1
    800083f8:	00000513          	li	a0,0
    800083fc:	fef407a3          	sb	a5,-17(s0)
    80008400:	fffff097          	auipc	ra,0xfffff
    80008404:	b3c080e7          	jalr	-1220(ra) # 80006f3c <console_write>
    80008408:	01813083          	ld	ra,24(sp)
    8000840c:	01013403          	ld	s0,16(sp)
    80008410:	02010113          	addi	sp,sp,32
    80008414:	00008067          	ret

0000000080008418 <__getc>:
    80008418:	fe010113          	addi	sp,sp,-32
    8000841c:	00813823          	sd	s0,16(sp)
    80008420:	00113c23          	sd	ra,24(sp)
    80008424:	02010413          	addi	s0,sp,32
    80008428:	fe840593          	addi	a1,s0,-24
    8000842c:	00100613          	li	a2,1
    80008430:	00000513          	li	a0,0
    80008434:	fffff097          	auipc	ra,0xfffff
    80008438:	ae8080e7          	jalr	-1304(ra) # 80006f1c <console_read>
    8000843c:	fe844503          	lbu	a0,-24(s0)
    80008440:	01813083          	ld	ra,24(sp)
    80008444:	01013403          	ld	s0,16(sp)
    80008448:	02010113          	addi	sp,sp,32
    8000844c:	00008067          	ret

0000000080008450 <console_handler>:
    80008450:	fe010113          	addi	sp,sp,-32
    80008454:	00813823          	sd	s0,16(sp)
    80008458:	00113c23          	sd	ra,24(sp)
    8000845c:	00913423          	sd	s1,8(sp)
    80008460:	02010413          	addi	s0,sp,32
    80008464:	14202773          	csrr	a4,scause
    80008468:	100027f3          	csrr	a5,sstatus
    8000846c:	0027f793          	andi	a5,a5,2
    80008470:	06079e63          	bnez	a5,800084ec <console_handler+0x9c>
    80008474:	00074c63          	bltz	a4,8000848c <console_handler+0x3c>
    80008478:	01813083          	ld	ra,24(sp)
    8000847c:	01013403          	ld	s0,16(sp)
    80008480:	00813483          	ld	s1,8(sp)
    80008484:	02010113          	addi	sp,sp,32
    80008488:	00008067          	ret
    8000848c:	0ff77713          	andi	a4,a4,255
    80008490:	00900793          	li	a5,9
    80008494:	fef712e3          	bne	a4,a5,80008478 <console_handler+0x28>
    80008498:	ffffe097          	auipc	ra,0xffffe
    8000849c:	6dc080e7          	jalr	1756(ra) # 80006b74 <plic_claim>
    800084a0:	00a00793          	li	a5,10
    800084a4:	00050493          	mv	s1,a0
    800084a8:	02f50c63          	beq	a0,a5,800084e0 <console_handler+0x90>
    800084ac:	fc0506e3          	beqz	a0,80008478 <console_handler+0x28>
    800084b0:	00050593          	mv	a1,a0
    800084b4:	00001517          	auipc	a0,0x1
    800084b8:	1d450513          	addi	a0,a0,468 # 80009688 <CONSOLE_STATUS+0x678>
    800084bc:	fffff097          	auipc	ra,0xfffff
    800084c0:	afc080e7          	jalr	-1284(ra) # 80006fb8 <__printf>
    800084c4:	01013403          	ld	s0,16(sp)
    800084c8:	01813083          	ld	ra,24(sp)
    800084cc:	00048513          	mv	a0,s1
    800084d0:	00813483          	ld	s1,8(sp)
    800084d4:	02010113          	addi	sp,sp,32
    800084d8:	ffffe317          	auipc	t1,0xffffe
    800084dc:	6d430067          	jr	1748(t1) # 80006bac <plic_complete>
    800084e0:	fffff097          	auipc	ra,0xfffff
    800084e4:	3e0080e7          	jalr	992(ra) # 800078c0 <uartintr>
    800084e8:	fddff06f          	j	800084c4 <console_handler+0x74>
    800084ec:	00001517          	auipc	a0,0x1
    800084f0:	29c50513          	addi	a0,a0,668 # 80009788 <digits+0x78>
    800084f4:	fffff097          	auipc	ra,0xfffff
    800084f8:	a68080e7          	jalr	-1432(ra) # 80006f5c <panic>
	...
