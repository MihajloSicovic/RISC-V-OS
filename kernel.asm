
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	de813103          	ld	sp,-536(sp) # 80005de8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4a9020ef          	jal	ra,80002cc4 <start>

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
    80001084:	214010ef          	jal	ra,80002298 <_ZN5Riscv14handleSyscallsEv>

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

000000008000121c <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"

void* mem_alloc(size_t size) {
    8000121c:	ff010113          	addi	sp,sp,-16
    80001220:	00813423          	sd	s0,8(sp)
    80001224:	01010413          	addi	s0,sp,16
    size += sizeof(MemoryAllocator::Header);
    80001228:	01050513          	addi	a0,a0,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    8000122c:	fc057793          	andi	a5,a0,-64
    80001230:	03f57513          	andi	a0,a0,63
    80001234:	00050463          	beqz	a0,8000123c <_Z9mem_allocm+0x20>
    80001238:	04000513          	li	a0,64
    8000123c:	00a78533          	add	a0,a5,a0

    __asm__ volatile("li a0, 0x01");
    80001240:	00100513          	li	a0,1
    __asm__ volatile("mv a1, %0" : : "r" (paddedSize));
    80001244:	00050593          	mv	a1,a0
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall

    void* result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000124c:	00050513          	mv	a0,a0
    return result;
}
    80001250:	00813403          	ld	s0,8(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_Z8mem_freePv>:

int mem_free(void* p) {
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00813423          	sd	s0,8(sp)
    80001264:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x02");
    80001268:	00200513          	li	a0,2
    __asm__ volatile("mv a1, %0" : : "r" (p));
    8000126c:	00050593          	mv	a1,a0
    __asm__ volatile("ecall");
    80001270:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001274:	00050513          	mv	a0,a0
    return result;
}
    80001278:	0005051b          	sext.w	a0,a0
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x03");
    80001294:	00300513          	li	a0,3
    __asm__ volatile("ecall");
    80001298:	00000073          	ecall

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000129c:	00050513          	mv	a0,a0
    return result;
}
    800012a0:	00813403          	ld	s0,8(sp)
    800012a4:	01010113          	addi	sp,sp,16
    800012a8:	00008067          	ret

00000000800012ac <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800012ac:	ff010113          	addi	sp,sp,-16
    800012b0:	00813423          	sd	s0,8(sp)
    800012b4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x04");
    800012b8:	00400513          	li	a0,4
    __asm__ volatile("ecall");
    800012bc:	00000073          	ecall

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800012c0:	00050513          	mv	a0,a0
    return result;
}
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_Z13thread_createPP3CCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00813423          	sd	s0,8(sp)
    800012d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x11");
    800012dc:	01100513          	li	a0,17
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800012e0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800012e4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    800012e8:	00060693          	mv	a3,a2
    __asm__ volatile("ecall");
    800012ec:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800012f0:	00050513          	mv	a0,a0
    return result;
}
    800012f4:	0005051b          	sext.w	a0,a0
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_Z11thread_exitv>:

int thread_exit() {
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001310:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    80001314:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001318:	00050513          	mv	a0,a0
    return result;
}
    8000131c:	0005051b          	sext.w	a0,a0
    80001320:	00813403          	ld	s0,8(sp)
    80001324:	01010113          	addi	sp,sp,16
    80001328:	00008067          	ret

000000008000132c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00813423          	sd	s0,8(sp)
    80001334:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001338:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    8000133c:	00000073          	ecall
}
    80001340:	00813403          	ld	s0,8(sp)
    80001344:	01010113          	addi	sp,sp,16
    80001348:	00008067          	ret

000000008000134c <_Z8sem_openPPN3ABI9SemaphoreEj>:

int sem_open(sem_t* handle, unsigned init) {
    8000134c:	ff010113          	addi	sp,sp,-16
    80001350:	00813423          	sd	s0,8(sp)
    80001354:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x21");
    80001358:	02100513          	li	a0,33
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000135c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    80001360:	00058613          	mv	a2,a1
    __asm__ volatile ("ecall");
    80001364:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001368:	00050513          	mv	a0,a0
    return result;
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z9sem_closePN3ABI9SemaphoreE>:

int sem_close(sem_t handle) {
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x22");
    80001388:	02200513          	li	a0,34
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000138c:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    80001390:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001394:	00050513          	mv	a0,a0
    return result;
}
    80001398:	0005051b          	sext.w	a0,a0
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z8sem_waitPN3ABI9SemaphoreE>:

int sem_wait(sem_t id) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x23");
    800013b4:	02300513          	li	a0,35
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800013b8:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    800013bc:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800013c0:	00050513          	mv	a0,a0
    return result;
}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	00813403          	ld	s0,8(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z10sem_signalPN3ABI9SemaphoreE>:

int sem_signal(sem_t id) {
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00813423          	sd	s0,8(sp)
    800013dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x24");
    800013e0:	02400513          	li	a0,36
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800013e4:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    800013e8:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800013ec:	00050513          	mv	a0,a0
    return result;
    800013f0:	0005051b          	sext.w	a0,a0
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_ZL9fibonaccim>:
#include "../h/ccb.hpp"
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"

static uint64 fibonacci(uint64 n)
{
    80001400:	fe010113          	addi	sp,sp,-32
    80001404:	00113c23          	sd	ra,24(sp)
    80001408:	00813823          	sd	s0,16(sp)
    8000140c:	00913423          	sd	s1,8(sp)
    80001410:	01213023          	sd	s2,0(sp)
    80001414:	02010413          	addi	s0,sp,32
    80001418:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000141c:	00100793          	li	a5,1
    80001420:	02a7f663          	bgeu	a5,a0,8000144c <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) CCB::yield();
    80001424:	00357793          	andi	a5,a0,3
    80001428:	02078e63          	beqz	a5,80001464 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000142c:	fff48513          	addi	a0,s1,-1
    80001430:	00000097          	auipc	ra,0x0
    80001434:	fd0080e7          	jalr	-48(ra) # 80001400 <_ZL9fibonaccim>
    80001438:	00050913          	mv	s2,a0
    8000143c:	ffe48513          	addi	a0,s1,-2
    80001440:	00000097          	auipc	ra,0x0
    80001444:	fc0080e7          	jalr	-64(ra) # 80001400 <_ZL9fibonaccim>
    80001448:	00a90533          	add	a0,s2,a0
}
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	00013903          	ld	s2,0(sp)
    8000145c:	02010113          	addi	sp,sp,32
    80001460:	00008067          	ret
    if (n % 4 == 0) CCB::yield();
    80001464:	00001097          	auipc	ra,0x1
    80001468:	af8080e7          	jalr	-1288(ra) # 80001f5c <_ZN3CCB5yieldEv>
    8000146c:	fc1ff06f          	j	8000142c <_ZL9fibonaccim+0x2c>

0000000080001470 <_Z11workerBodyAPv>:

void workerBodyA(void*)
{
    80001470:	fe010113          	addi	sp,sp,-32
    80001474:	00113c23          	sd	ra,24(sp)
    80001478:	00813823          	sd	s0,16(sp)
    8000147c:	00913423          	sd	s1,8(sp)
    80001480:	01213023          	sd	s2,0(sp)
    80001484:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001488:	00000493          	li	s1,0
    8000148c:	0380006f          	j	800014c4 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001490:	00004517          	auipc	a0,0x4
    80001494:	b9050513          	addi	a0,a0,-1136 # 80005020 <CONSOLE_STATUS+0x10>
    80001498:	00001097          	auipc	ra,0x1
    8000149c:	758080e7          	jalr	1880(ra) # 80002bf0 <_Z11printStringPKc>
        printInteger(i);
    800014a0:	00048513          	mv	a0,s1
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	790080e7          	jalr	1936(ra) # 80002c34 <_Z12printIntegerm>
        printString("\n");
    800014ac:	00004517          	auipc	a0,0x4
    800014b0:	c9c50513          	addi	a0,a0,-868 # 80005148 <CONSOLE_STATUS+0x138>
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	73c080e7          	jalr	1852(ra) # 80002bf0 <_Z11printStringPKc>
    for (; i < 3; i++)
    800014bc:	0014849b          	addiw	s1,s1,1
    800014c0:	0ff4f493          	andi	s1,s1,255
    800014c4:	00200793          	li	a5,2
    800014c8:	fc97f4e3          	bgeu	a5,s1,80001490 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800014cc:	00004517          	auipc	a0,0x4
    800014d0:	b5c50513          	addi	a0,a0,-1188 # 80005028 <CONSOLE_STATUS+0x18>
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	71c080e7          	jalr	1820(ra) # 80002bf0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014dc:	00700313          	li	t1,7
    CCB::yield();
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	a7c080e7          	jalr	-1412(ra) # 80001f5c <_ZN3CCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014e8:	00030913          	mv	s2,t1

    printString("A: t1=");
    800014ec:	00004517          	auipc	a0,0x4
    800014f0:	b4c50513          	addi	a0,a0,-1204 # 80005038 <CONSOLE_STATUS+0x28>
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	6fc080e7          	jalr	1788(ra) # 80002bf0 <_Z11printStringPKc>
    printInteger(t1);
    800014fc:	00090513          	mv	a0,s2
    80001500:	00001097          	auipc	ra,0x1
    80001504:	734080e7          	jalr	1844(ra) # 80002c34 <_Z12printIntegerm>
    printString("\n");
    80001508:	00004517          	auipc	a0,0x4
    8000150c:	c4050513          	addi	a0,a0,-960 # 80005148 <CONSOLE_STATUS+0x138>
    80001510:	00001097          	auipc	ra,0x1
    80001514:	6e0080e7          	jalr	1760(ra) # 80002bf0 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001518:	01400513          	li	a0,20
    8000151c:	00000097          	auipc	ra,0x0
    80001520:	ee4080e7          	jalr	-284(ra) # 80001400 <_ZL9fibonaccim>
    80001524:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001528:	00004517          	auipc	a0,0x4
    8000152c:	b1850513          	addi	a0,a0,-1256 # 80005040 <CONSOLE_STATUS+0x30>
    80001530:	00001097          	auipc	ra,0x1
    80001534:	6c0080e7          	jalr	1728(ra) # 80002bf0 <_Z11printStringPKc>
    printInteger(result);
    80001538:	00090513          	mv	a0,s2
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	6f8080e7          	jalr	1784(ra) # 80002c34 <_Z12printIntegerm>
    printString("\n");
    80001544:	00004517          	auipc	a0,0x4
    80001548:	c0450513          	addi	a0,a0,-1020 # 80005148 <CONSOLE_STATUS+0x138>
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	6a4080e7          	jalr	1700(ra) # 80002bf0 <_Z11printStringPKc>
    80001554:	0380006f          	j	8000158c <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001558:	00004517          	auipc	a0,0x4
    8000155c:	ac850513          	addi	a0,a0,-1336 # 80005020 <CONSOLE_STATUS+0x10>
    80001560:	00001097          	auipc	ra,0x1
    80001564:	690080e7          	jalr	1680(ra) # 80002bf0 <_Z11printStringPKc>
        printInteger(i);
    80001568:	00048513          	mv	a0,s1
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	6c8080e7          	jalr	1736(ra) # 80002c34 <_Z12printIntegerm>
        printString("\n");
    80001574:	00004517          	auipc	a0,0x4
    80001578:	bd450513          	addi	a0,a0,-1068 # 80005148 <CONSOLE_STATUS+0x138>
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	674080e7          	jalr	1652(ra) # 80002bf0 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001584:	0014849b          	addiw	s1,s1,1
    80001588:	0ff4f493          	andi	s1,s1,255
    8000158c:	00500793          	li	a5,5
    80001590:	fc97f4e3          	bgeu	a5,s1,80001558 <_Z11workerBodyAPv+0xe8>
    }

    CCB::running->setFinished(true);
    80001594:	00005797          	auipc	a5,0x5
    80001598:	85c7b783          	ld	a5,-1956(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000159c:	0007b783          	ld	a5,0(a5)
public:
    ~CCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    800015a0:	00100713          	li	a4,1
    800015a4:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	9b4080e7          	jalr	-1612(ra) # 80001f5c <_ZN3CCB5yieldEv>
}
    800015b0:	01813083          	ld	ra,24(sp)
    800015b4:	01013403          	ld	s0,16(sp)
    800015b8:	00813483          	ld	s1,8(sp)
    800015bc:	00013903          	ld	s2,0(sp)
    800015c0:	02010113          	addi	sp,sp,32
    800015c4:	00008067          	ret

00000000800015c8 <_Z11workerBodyBPv>:

void workerBodyB(void*)
{
    800015c8:	fe010113          	addi	sp,sp,-32
    800015cc:	00113c23          	sd	ra,24(sp)
    800015d0:	00813823          	sd	s0,16(sp)
    800015d4:	00913423          	sd	s1,8(sp)
    800015d8:	01213023          	sd	s2,0(sp)
    800015dc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800015e0:	00a00493          	li	s1,10
    800015e4:	0380006f          	j	8000161c <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800015e8:	00004517          	auipc	a0,0x4
    800015ec:	a6850513          	addi	a0,a0,-1432 # 80005050 <CONSOLE_STATUS+0x40>
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	600080e7          	jalr	1536(ra) # 80002bf0 <_Z11printStringPKc>
        printInteger(i);
    800015f8:	00048513          	mv	a0,s1
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	638080e7          	jalr	1592(ra) # 80002c34 <_Z12printIntegerm>
        printString("\n");
    80001604:	00004517          	auipc	a0,0x4
    80001608:	b4450513          	addi	a0,a0,-1212 # 80005148 <CONSOLE_STATUS+0x138>
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	5e4080e7          	jalr	1508(ra) # 80002bf0 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001614:	0014849b          	addiw	s1,s1,1
    80001618:	0ff4f493          	andi	s1,s1,255
    8000161c:	00c00793          	li	a5,12
    80001620:	fc97f4e3          	bgeu	a5,s1,800015e8 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001624:	00004517          	auipc	a0,0x4
    80001628:	a3450513          	addi	a0,a0,-1484 # 80005058 <CONSOLE_STATUS+0x48>
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	5c4080e7          	jalr	1476(ra) # 80002bf0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001634:	00500313          	li	t1,5
    CCB::yield();
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	924080e7          	jalr	-1756(ra) # 80001f5c <_ZN3CCB5yieldEv>

    uint64 result = fibonacci(23);
    80001640:	01700513          	li	a0,23
    80001644:	00000097          	auipc	ra,0x0
    80001648:	dbc080e7          	jalr	-580(ra) # 80001400 <_ZL9fibonaccim>
    8000164c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001650:	00004517          	auipc	a0,0x4
    80001654:	9f050513          	addi	a0,a0,-1552 # 80005040 <CONSOLE_STATUS+0x30>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	598080e7          	jalr	1432(ra) # 80002bf0 <_Z11printStringPKc>
    printInteger(result);
    80001660:	00090513          	mv	a0,s2
    80001664:	00001097          	auipc	ra,0x1
    80001668:	5d0080e7          	jalr	1488(ra) # 80002c34 <_Z12printIntegerm>
    printString("\n");
    8000166c:	00004517          	auipc	a0,0x4
    80001670:	adc50513          	addi	a0,a0,-1316 # 80005148 <CONSOLE_STATUS+0x138>
    80001674:	00001097          	auipc	ra,0x1
    80001678:	57c080e7          	jalr	1404(ra) # 80002bf0 <_Z11printStringPKc>
    8000167c:	0380006f          	j	800016b4 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001680:	00004517          	auipc	a0,0x4
    80001684:	9d050513          	addi	a0,a0,-1584 # 80005050 <CONSOLE_STATUS+0x40>
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	568080e7          	jalr	1384(ra) # 80002bf0 <_Z11printStringPKc>
        printInteger(i);
    80001690:	00048513          	mv	a0,s1
    80001694:	00001097          	auipc	ra,0x1
    80001698:	5a0080e7          	jalr	1440(ra) # 80002c34 <_Z12printIntegerm>
        printString("\n");
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	aac50513          	addi	a0,a0,-1364 # 80005148 <CONSOLE_STATUS+0x138>
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	54c080e7          	jalr	1356(ra) # 80002bf0 <_Z11printStringPKc>
    for (; i < 16; i++)
    800016ac:	0014849b          	addiw	s1,s1,1
    800016b0:	0ff4f493          	andi	s1,s1,255
    800016b4:	00f00793          	li	a5,15
    800016b8:	fc97f4e3          	bgeu	a5,s1,80001680 <_Z11workerBodyBPv+0xb8>
    }

    CCB::running->setFinished(true);
    800016bc:	00004797          	auipc	a5,0x4
    800016c0:	7347b783          	ld	a5,1844(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016c4:	0007b783          	ld	a5,0(a5)
    800016c8:	00100713          	li	a4,1
    800016cc:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	88c080e7          	jalr	-1908(ra) # 80001f5c <_ZN3CCB5yieldEv>
}
    800016d8:	01813083          	ld	ra,24(sp)
    800016dc:	01013403          	ld	s0,16(sp)
    800016e0:	00813483          	ld	s1,8(sp)
    800016e4:	00013903          	ld	s2,0(sp)
    800016e8:	02010113          	addi	sp,sp,32
    800016ec:	00008067          	ret

00000000800016f0 <_Z11workerBodyCPv>:

static int a = 0;

void workerBodyC(void*) {
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	00913423          	sd	s1,8(sp)
    80001700:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80001704:	00000493          	li	s1,0
    80001708:	00900793          	li	a5,9
    8000170c:	0497c263          	blt	a5,s1,80001750 <_Z11workerBodyCPv+0x60>
        a += 1000;
    80001710:	00004797          	auipc	a5,0x4
    80001714:	75078793          	addi	a5,a5,1872 # 80005e60 <_ZL1a>
    80001718:	0007a503          	lw	a0,0(a5)
    8000171c:	3e85051b          	addiw	a0,a0,1000
    80001720:	00a7a023          	sw	a0,0(a5)
        printInteger(a);
    80001724:	0005051b          	sext.w	a0,a0
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	50c080e7          	jalr	1292(ra) # 80002c34 <_Z12printIntegerm>
        printString("\n");
    80001730:	00004517          	auipc	a0,0x4
    80001734:	a1850513          	addi	a0,a0,-1512 # 80005148 <CONSOLE_STATUS+0x138>
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	4b8080e7          	jalr	1208(ra) # 80002bf0 <_Z11printStringPKc>
        CCB::yield();
    80001740:	00001097          	auipc	ra,0x1
    80001744:	81c080e7          	jalr	-2020(ra) # 80001f5c <_ZN3CCB5yieldEv>
    for (int i = 0; i < 10; i++) {
    80001748:	0014849b          	addiw	s1,s1,1
    8000174c:	fbdff06f          	j	80001708 <_Z11workerBodyCPv+0x18>
    }
    CCB::running->setFinished(true);
    80001750:	00004797          	auipc	a5,0x4
    80001754:	6a07b783          	ld	a5,1696(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001758:	0007b783          	ld	a5,0(a5)
    8000175c:	00100713          	li	a4,1
    80001760:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	7f8080e7          	jalr	2040(ra) # 80001f5c <_ZN3CCB5yieldEv>
}
    8000176c:	01813083          	ld	ra,24(sp)
    80001770:	01013403          	ld	s0,16(sp)
    80001774:	00813483          	ld	s1,8(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z11workerBodyDPv>:

void workerBodyD(void*) {
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80001794:	00000493          	li	s1,0
    80001798:	00900793          	li	a5,9
    8000179c:	0497c263          	blt	a5,s1,800017e0 <_Z11workerBodyDPv+0x60>
        a -= 1000;
    800017a0:	00004797          	auipc	a5,0x4
    800017a4:	6c078793          	addi	a5,a5,1728 # 80005e60 <_ZL1a>
    800017a8:	0007a503          	lw	a0,0(a5)
    800017ac:	c185051b          	addiw	a0,a0,-1000
    800017b0:	00a7a023          	sw	a0,0(a5)
        printInteger(a);
    800017b4:	0005051b          	sext.w	a0,a0
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	47c080e7          	jalr	1148(ra) # 80002c34 <_Z12printIntegerm>
        printString("\n");
    800017c0:	00004517          	auipc	a0,0x4
    800017c4:	98850513          	addi	a0,a0,-1656 # 80005148 <CONSOLE_STATUS+0x138>
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	428080e7          	jalr	1064(ra) # 80002bf0 <_Z11printStringPKc>
        CCB::yield();
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	78c080e7          	jalr	1932(ra) # 80001f5c <_ZN3CCB5yieldEv>
    for (int i = 0; i < 10; i++) {
    800017d8:	0014849b          	addiw	s1,s1,1
    800017dc:	fbdff06f          	j	80001798 <_Z11workerBodyDPv+0x18>
    }
    CCB::running->setFinished(true);
    800017e0:	00004797          	auipc	a5,0x4
    800017e4:	6107b783          	ld	a5,1552(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017e8:	0007b783          	ld	a5,0(a5)
    800017ec:	00100713          	li	a4,1
    800017f0:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	768080e7          	jalr	1896(ra) # 80001f5c <_ZN3CCB5yieldEv>
    800017fc:	01813083          	ld	ra,24(sp)
    80001800:	01013403          	ld	s0,16(sp)
    80001804:	00813483          	ld	s1,8(sp)
    80001808:	02010113          	addi	sp,sp,32
    8000180c:	00008067          	ret

0000000080001810 <_ZN3ABI9Semaphore15createSemaphoreEj>:

#include "../h/Semaphore.hpp"
#include "../h/ccb.hpp"

namespace ABI {
    Semaphore *Semaphore::createSemaphore(unsigned int init) {
    80001810:	fe010113          	addi	sp,sp,-32
    80001814:	00113c23          	sd	ra,24(sp)
    80001818:	00813823          	sd	s0,16(sp)
    8000181c:	00913423          	sd	s1,8(sp)
    80001820:	02010413          	addi	s0,sp,32
    80001824:	00050493          	mv	s1,a0

class MemoryAllocator {
public:

    static MemoryAllocator* Instance() {
        static MemoryAllocator memoryAllocator;
    80001828:	00004797          	auipc	a5,0x4
    8000182c:	6407c783          	lbu	a5,1600(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001830:	04079263          	bnez	a5,80001874 <_ZN3ABI9Semaphore15createSemaphoreEj+0x64>
private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001834:	00004797          	auipc	a5,0x4
    80001838:	5a47b783          	ld	a5,1444(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000183c:	0007b783          	ld	a5,0(a5)
    80001840:	00004717          	auipc	a4,0x4
    80001844:	63070713          	addi	a4,a4,1584 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001848:	00f73023          	sd	a5,0(a4)
    8000184c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001850:	00004717          	auipc	a4,0x4
    80001854:	5a873703          	ld	a4,1448(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001858:	00073703          	ld	a4,0(a4)
    8000185c:	40f70733          	sub	a4,a4,a5
    80001860:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001864:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001868:	00100793          	li	a5,1
    8000186c:	00004717          	auipc	a4,0x4
    80001870:	5ef70e23          	sb	a5,1532(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        int close();

        unsigned int getValue() const { return val; }

        void *operator new(size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
    80001874:	02000593          	li	a1,32
    80001878:	00004517          	auipc	a0,0x4
    8000187c:	5f850513          	addi	a0,a0,1528 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001880:	00001097          	auipc	ra,0x1
    80001884:	0c4080e7          	jalr	196(ra) # 80002944 <_ZN15MemoryAllocator9mem_allocEm>
        void operator delete[](void *ptr) {
            MemoryAllocator::Instance()->mem_free(ptr);
        }

    protected:
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    80001888:	00004717          	auipc	a4,0x4
    8000188c:	4e870713          	addi	a4,a4,1256 # 80005d70 <_ZTVN3ABI9SemaphoreE+0x10>
    80001890:	00e53023          	sd	a4,0(a0)
    80001894:	00952423          	sw	s1,8(a0)
    80001898:	00050623          	sb	zero,12(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    8000189c:	00053823          	sd	zero,16(a0)
    800018a0:	00053c23          	sd	zero,24(a0)
        return new Semaphore(init);
    }
    800018a4:	01813083          	ld	ra,24(sp)
    800018a8:	01013403          	ld	s0,16(sp)
    800018ac:	00813483          	ld	s1,8(sp)
    800018b0:	02010113          	addi	sp,sp,32
    800018b4:	00008067          	ret

00000000800018b8 <_ZN3ABI9Semaphore4waitEv>:

    int Semaphore::wait() {
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00813423          	sd	s0,8(sp)
    800018c0:	01010413          	addi	s0,sp,16
        if (closed) return -1;
    800018c4:	00c54783          	lbu	a5,12(a0)
    800018c8:	02079063          	bnez	a5,800018e8 <_ZN3ABI9Semaphore4waitEv+0x30>

        if (--val < 0) {
    800018cc:	00852783          	lw	a5,8(a0)
    800018d0:	fff7879b          	addiw	a5,a5,-1
    800018d4:	00f52423          	sw	a5,8(a0)
            blocked.addLast(CCB::running);
            CCB::running = Scheduler::get();
            CCB::dispatch();
        }
        return 0;
    800018d8:	00000513          	li	a0,0
    }
    800018dc:	00813403          	ld	s0,8(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret
        if (closed) return -1;
    800018e8:	fff00513          	li	a0,-1
    800018ec:	ff1ff06f          	j	800018dc <_ZN3ABI9Semaphore4waitEv+0x24>

00000000800018f0 <_ZN3ABI9Semaphore6signalEv>:

    int Semaphore::signal() {
        if (closed) return -1;
    800018f0:	00c54703          	lbu	a4,12(a0)
    800018f4:	08071263          	bnez	a4,80001978 <_ZN3ABI9Semaphore6signalEv+0x88>
    800018f8:	00050793          	mv	a5,a0

        if (++val <= 0) {
    800018fc:	00852703          	lw	a4,8(a0)
    80001900:	0017071b          	addiw	a4,a4,1
    80001904:	0007069b          	sext.w	a3,a4
    80001908:	00e52423          	sw	a4,8(a0)
    8000190c:	06069a63          	bnez	a3,80001980 <_ZN3ABI9Semaphore6signalEv+0x90>
    int Semaphore::signal() {
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	00913423          	sd	s1,8(sp)
    80001920:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001924:	01053503          	ld	a0,16(a0)
    80001928:	04050463          	beqz	a0,80001970 <_ZN3ABI9Semaphore6signalEv+0x80>

        Elem *elem = head;
        head = head->next;
    8000192c:	00853703          	ld	a4,8(a0)
    80001930:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80001934:	02070a63          	beqz	a4,80001968 <_ZN3ABI9Semaphore6signalEv+0x78>

        T *ret = elem->data;
    80001938:	00053483          	ld	s1,0(a0)
        delete elem;
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	338080e7          	jalr	824(ra) # 80001c74 <_ZdlPv>
            CCB *thread = blocked.removeFirst();
            Scheduler::put(thread);
    80001944:	00048513          	mv	a0,s1
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	d7c080e7          	jalr	-644(ra) # 800026c4 <_ZN9Scheduler3putEP3CCB>
        }
        return 0;
    80001950:	00000513          	li	a0,0
    }
    80001954:	01813083          	ld	ra,24(sp)
    80001958:	01013403          	ld	s0,16(sp)
    8000195c:	00813483          	ld	s1,8(sp)
    80001960:	02010113          	addi	sp,sp,32
    80001964:	00008067          	ret
        if (!head) { tail = 0; }
    80001968:	0007bc23          	sd	zero,24(a5)
    8000196c:	fcdff06f          	j	80001938 <_ZN3ABI9Semaphore6signalEv+0x48>
        if (!head) { return 0; }
    80001970:	00050493          	mv	s1,a0
    80001974:	fd1ff06f          	j	80001944 <_ZN3ABI9Semaphore6signalEv+0x54>
        if (closed) return -1;
    80001978:	fff00513          	li	a0,-1
    8000197c:	00008067          	ret
        return 0;
    80001980:	00000513          	li	a0,0
    }
    80001984:	00008067          	ret

0000000080001988 <_ZN3ABI9Semaphore5blockEv>:
        while (!blocked.empty()) unblock();

        return 0;
    }

    void Semaphore::block() {
    80001988:	fe010113          	addi	sp,sp,-32
    8000198c:	00113c23          	sd	ra,24(sp)
    80001990:	00813823          	sd	s0,16(sp)
    80001994:	00913423          	sd	s1,8(sp)
    80001998:	01213023          	sd	s2,0(sp)
    8000199c:	02010413          	addi	s0,sp,32
    800019a0:	00050493          	mv	s1,a0
        blocked.addLast(CCB::running);
    800019a4:	00004797          	auipc	a5,0x4
    800019a8:	44c7b783          	ld	a5,1100(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019ac:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    800019b0:	01000513          	li	a0,16
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	1c0080e7          	jalr	448(ra) # 80001b74 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800019bc:	01253023          	sd	s2,0(a0)
    800019c0:	00053423          	sd	zero,8(a0)
        if (tail)
    800019c4:	0184b783          	ld	a5,24(s1)
    800019c8:	04078063          	beqz	a5,80001a08 <_ZN3ABI9Semaphore5blockEv+0x80>
            tail->next = elem;
    800019cc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800019d0:	00a4bc23          	sd	a0,24(s1)
        CCB::running = Scheduler::get();
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	c88080e7          	jalr	-888(ra) # 8000265c <_ZN9Scheduler3getEv>
    800019dc:	00004797          	auipc	a5,0x4
    800019e0:	4147b783          	ld	a5,1044(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019e4:	00a7b023          	sd	a0,0(a5)
        CCB::dispatch();
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	50c080e7          	jalr	1292(ra) # 80001ef4 <_ZN3CCB8dispatchEv>
    }
    800019f0:	01813083          	ld	ra,24(sp)
    800019f4:	01013403          	ld	s0,16(sp)
    800019f8:	00813483          	ld	s1,8(sp)
    800019fc:	00013903          	ld	s2,0(sp)
    80001a00:	02010113          	addi	sp,sp,32
    80001a04:	00008067          	ret
            head = tail = elem;
    80001a08:	00a4bc23          	sd	a0,24(s1)
    80001a0c:	00a4b823          	sd	a0,16(s1)
    80001a10:	fc5ff06f          	j	800019d4 <_ZN3ABI9Semaphore5blockEv+0x4c>

0000000080001a14 <_ZN3ABI9Semaphore7unblockEv>:

    void Semaphore::unblock() {
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	02010413          	addi	s0,sp,32
    80001a28:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001a2c:	01053503          	ld	a0,16(a0)
    80001a30:	04050263          	beqz	a0,80001a74 <_ZN3ABI9Semaphore7unblockEv+0x60>
        head = head->next;
    80001a34:	00853703          	ld	a4,8(a0)
    80001a38:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80001a3c:	02070863          	beqz	a4,80001a6c <_ZN3ABI9Semaphore7unblockEv+0x58>
        T *ret = elem->data;
    80001a40:	00053483          	ld	s1,0(a0)
        delete elem;
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	230080e7          	jalr	560(ra) # 80001c74 <_ZdlPv>
        CCB *thread = blocked.removeFirst();
        Scheduler::put(thread);
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	c74080e7          	jalr	-908(ra) # 800026c4 <_ZN9Scheduler3putEP3CCB>
    }
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	02010113          	addi	sp,sp,32
    80001a68:	00008067          	ret
        if (!head) { tail = 0; }
    80001a6c:	0007bc23          	sd	zero,24(a5)
    80001a70:	fd1ff06f          	j	80001a40 <_ZN3ABI9Semaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001a74:	00050493          	mv	s1,a0
    80001a78:	fd5ff06f          	j	80001a4c <_ZN3ABI9Semaphore7unblockEv+0x38>

0000000080001a7c <_ZN3ABI9Semaphore5closeEv>:
        if (closed) return -1;
    80001a7c:	00c54783          	lbu	a5,12(a0)
    80001a80:	04079a63          	bnez	a5,80001ad4 <_ZN3ABI9Semaphore5closeEv+0x58>
    int Semaphore::close() {
    80001a84:	fe010113          	addi	sp,sp,-32
    80001a88:	00113c23          	sd	ra,24(sp)
    80001a8c:	00813823          	sd	s0,16(sp)
    80001a90:	00913423          	sd	s1,8(sp)
    80001a94:	02010413          	addi	s0,sp,32
    80001a98:	00050493          	mv	s1,a0
        closed = true;
    80001a9c:	00100793          	li	a5,1
    80001aa0:	00f50623          	sb	a5,12(a0)
    80001aa4:	0100006f          	j	80001ab4 <_ZN3ABI9Semaphore5closeEv+0x38>
        while (!blocked.empty()) unblock();
    80001aa8:	00048513          	mv	a0,s1
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	f68080e7          	jalr	-152(ra) # 80001a14 <_ZN3ABI9Semaphore7unblockEv>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    bool empty() { return head == nullptr; }
    80001ab4:	0104b783          	ld	a5,16(s1)
    80001ab8:	fe0798e3          	bnez	a5,80001aa8 <_ZN3ABI9Semaphore5closeEv+0x2c>
        return 0;
    80001abc:	00000513          	li	a0,0
    }
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	02010113          	addi	sp,sp,32
    80001ad0:	00008067          	ret
        if (closed) return -1;
    80001ad4:	fff00513          	li	a0,-1
    }
    80001ad8:	00008067          	ret

0000000080001adc <_ZN3ABI9SemaphoreD1Ev>:
        virtual ~Semaphore() = default;
    80001adc:	ff010113          	addi	sp,sp,-16
    80001ae0:	00813423          	sd	s0,8(sp)
    80001ae4:	01010413          	addi	s0,sp,16
    80001ae8:	00813403          	ld	s0,8(sp)
    80001aec:	01010113          	addi	sp,sp,16
    80001af0:	00008067          	ret

0000000080001af4 <_ZN3ABI9SemaphoreD0Ev>:
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00113423          	sd	ra,8(sp)
    80001afc:	00813023          	sd	s0,0(sp)
    80001b00:	01010413          	addi	s0,sp,16
    80001b04:	00050593          	mv	a1,a0
    80001b08:	00004797          	auipc	a5,0x4
    80001b0c:	3607c783          	lbu	a5,864(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001b10:	04079263          	bnez	a5,80001b54 <_ZN3ABI9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001b14:	00004797          	auipc	a5,0x4
    80001b18:	2c47b783          	ld	a5,708(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b1c:	0007b783          	ld	a5,0(a5)
    80001b20:	00004717          	auipc	a4,0x4
    80001b24:	35070713          	addi	a4,a4,848 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001b28:	00f73023          	sd	a5,0(a4)
    80001b2c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001b30:	00004717          	auipc	a4,0x4
    80001b34:	2c873703          	ld	a4,712(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b38:	00073703          	ld	a4,0(a4)
    80001b3c:	40f70733          	sub	a4,a4,a5
    80001b40:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001b44:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001b48:	00100793          	li	a5,1
    80001b4c:	00004717          	auipc	a4,0x4
    80001b50:	30f70e23          	sb	a5,796(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            MemoryAllocator::Instance()->mem_free(ptr);
    80001b54:	00004517          	auipc	a0,0x4
    80001b58:	31c50513          	addi	a0,a0,796 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	f38080e7          	jalr	-200(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
        virtual ~Semaphore() = default;
    80001b64:	00813083          	ld	ra,8(sp)
    80001b68:	00013403          	ld	s0,0(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    80001b84:	00050593          	mv	a1,a0
    80001b88:	00004797          	auipc	a5,0x4
    80001b8c:	2e07c783          	lbu	a5,736(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001b90:	04079263          	bnez	a5,80001bd4 <_Znwm+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001b94:	00004797          	auipc	a5,0x4
    80001b98:	2447b783          	ld	a5,580(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b9c:	0007b783          	ld	a5,0(a5)
    80001ba0:	00004717          	auipc	a4,0x4
    80001ba4:	2d070713          	addi	a4,a4,720 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ba8:	00f73023          	sd	a5,0(a4)
    80001bac:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001bb0:	00004717          	auipc	a4,0x4
    80001bb4:	24873703          	ld	a4,584(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bb8:	00073703          	ld	a4,0(a4)
    80001bbc:	40f70733          	sub	a4,a4,a5
    80001bc0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001bc4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001bc8:	00100793          	li	a5,1
    80001bcc:	00004717          	auipc	a4,0x4
    80001bd0:	28f70e23          	sb	a5,668(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001bd4:	00004517          	auipc	a0,0x4
    80001bd8:	29c50513          	addi	a0,a0,668 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	d68080e7          	jalr	-664(ra) # 80002944 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001be4:	00813083          	ld	ra,8(sp)
    80001be8:	00013403          	ld	s0,0(sp)
    80001bec:	01010113          	addi	sp,sp,16
    80001bf0:	00008067          	ret

0000000080001bf4 <_Znam>:

void *operator new[](size_t n)
{
    80001bf4:	ff010113          	addi	sp,sp,-16
    80001bf8:	00113423          	sd	ra,8(sp)
    80001bfc:	00813023          	sd	s0,0(sp)
    80001c00:	01010413          	addi	s0,sp,16
    80001c04:	00050593          	mv	a1,a0
    80001c08:	00004797          	auipc	a5,0x4
    80001c0c:	2607c783          	lbu	a5,608(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c10:	04079263          	bnez	a5,80001c54 <_Znam+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001c14:	00004797          	auipc	a5,0x4
    80001c18:	1c47b783          	ld	a5,452(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c1c:	0007b783          	ld	a5,0(a5)
    80001c20:	00004717          	auipc	a4,0x4
    80001c24:	25070713          	addi	a4,a4,592 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c28:	00f73023          	sd	a5,0(a4)
    80001c2c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001c30:	00004717          	auipc	a4,0x4
    80001c34:	1c873703          	ld	a4,456(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c38:	00073703          	ld	a4,0(a4)
    80001c3c:	40f70733          	sub	a4,a4,a5
    80001c40:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001c44:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001c48:	00100793          	li	a5,1
    80001c4c:	00004717          	auipc	a4,0x4
    80001c50:	20f70e23          	sb	a5,540(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001c54:	00004517          	auipc	a0,0x4
    80001c58:	21c50513          	addi	a0,a0,540 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c5c:	00001097          	auipc	ra,0x1
    80001c60:	ce8080e7          	jalr	-792(ra) # 80002944 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001c64:	00813083          	ld	ra,8(sp)
    80001c68:	00013403          	ld	s0,0(sp)
    80001c6c:	01010113          	addi	sp,sp,16
    80001c70:	00008067          	ret

0000000080001c74 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    80001c84:	00050593          	mv	a1,a0
    80001c88:	00004797          	auipc	a5,0x4
    80001c8c:	1e07c783          	lbu	a5,480(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c90:	04079263          	bnez	a5,80001cd4 <_ZdlPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001c94:	00004797          	auipc	a5,0x4
    80001c98:	1447b783          	ld	a5,324(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c9c:	0007b783          	ld	a5,0(a5)
    80001ca0:	00004717          	auipc	a4,0x4
    80001ca4:	1d070713          	addi	a4,a4,464 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ca8:	00f73023          	sd	a5,0(a4)
    80001cac:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001cb0:	00004717          	auipc	a4,0x4
    80001cb4:	14873703          	ld	a4,328(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cb8:	00073703          	ld	a4,0(a4)
    80001cbc:	40f70733          	sub	a4,a4,a5
    80001cc0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001cc4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001cc8:	00100793          	li	a5,1
    80001ccc:	00004717          	auipc	a4,0x4
    80001cd0:	18f70e23          	sb	a5,412(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80001cd4:	00004517          	auipc	a0,0x4
    80001cd8:	19c50513          	addi	a0,a0,412 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	db8080e7          	jalr	-584(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001ce4:	00813083          	ld	ra,8(sp)
    80001ce8:	00013403          	ld	s0,0(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00113423          	sd	ra,8(sp)
    80001cfc:	00813023          	sd	s0,0(sp)
    80001d00:	01010413          	addi	s0,sp,16
    80001d04:	00050593          	mv	a1,a0
    80001d08:	00004797          	auipc	a5,0x4
    80001d0c:	1607c783          	lbu	a5,352(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d10:	04079263          	bnez	a5,80001d54 <_ZdaPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001d14:	00004797          	auipc	a5,0x4
    80001d18:	0c47b783          	ld	a5,196(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d1c:	0007b783          	ld	a5,0(a5)
    80001d20:	00004717          	auipc	a4,0x4
    80001d24:	15070713          	addi	a4,a4,336 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d28:	00f73023          	sd	a5,0(a4)
    80001d2c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001d30:	00004717          	auipc	a4,0x4
    80001d34:	0c873703          	ld	a4,200(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d38:	00073703          	ld	a4,0(a4)
    80001d3c:	40f70733          	sub	a4,a4,a5
    80001d40:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001d44:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001d48:	00100793          	li	a5,1
    80001d4c:	00004717          	auipc	a4,0x4
    80001d50:	10f70e23          	sb	a5,284(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80001d54:	00004517          	auipc	a0,0x4
    80001d58:	11c50513          	addi	a0,a0,284 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	d38080e7          	jalr	-712(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
    80001d64:	00813083          	ld	ra,8(sp)
    80001d68:	00013403          	ld	s0,0(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <_ZN3CCB15createCoroutineEPFvPvES0_>:
#include "../h/riscv.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body, void* arg)
{
    80001d74:	fd010113          	addi	sp,sp,-48
    80001d78:	02113423          	sd	ra,40(sp)
    80001d7c:	02813023          	sd	s0,32(sp)
    80001d80:	00913c23          	sd	s1,24(sp)
    80001d84:	01213823          	sd	s2,16(sp)
    80001d88:	01313423          	sd	s3,8(sp)
    80001d8c:	03010413          	addi	s0,sp,48
    80001d90:	00050913          	mv	s2,a0
    80001d94:	00058993          	mv	s3,a1
    80001d98:	00004797          	auipc	a5,0x4
    80001d9c:	0d07c783          	lbu	a5,208(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001da0:	04079263          	bnez	a5,80001de4 <_ZN3CCB15createCoroutineEPFvPvES0_+0x70>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001da4:	00004797          	auipc	a5,0x4
    80001da8:	0347b783          	ld	a5,52(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001dac:	0007b783          	ld	a5,0(a5)
    80001db0:	00004717          	auipc	a4,0x4
    80001db4:	0c070713          	addi	a4,a4,192 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001db8:	00f73023          	sd	a5,0(a4)
    80001dbc:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001dc0:	00004717          	auipc	a4,0x4
    80001dc4:	03873703          	ld	a4,56(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001dc8:	00073703          	ld	a4,0(a4)
    80001dcc:	40f70733          	sub	a4,a4,a5
    80001dd0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001dd4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001dd8:	00100793          	li	a5,1
    80001ddc:	00004717          	auipc	a4,0x4
    80001de0:	08f70623          	sb	a5,140(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    static void yield();

    static CCB *running;

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001de4:	03000593          	li	a1,48
    80001de8:	00004517          	auipc	a0,0x4
    80001dec:	08850513          	addi	a0,a0,136 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	b54080e7          	jalr	-1196(ra) # 80002944 <_ZN15MemoryAllocator9mem_allocEm>
    80001df8:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({body != nullptr ? (uint64) body : 0,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg)
    80001dfc:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001e00:	00090a63          	beqz	s2,80001e14 <_ZN3CCB15createCoroutineEPFvPvES0_+0xa0>
    80001e04:	00002537          	lui	a0,0x2
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	dec080e7          	jalr	-532(ra) # 80001bf4 <_Znam>
    80001e10:	0080006f          	j	80001e18 <_ZN3CCB15createCoroutineEPFvPvES0_+0xa4>
    80001e14:	00000513          	li	a0,0
            arg(arg)
    80001e18:	00a4b423          	sd	a0,8(s1)
            context({body != nullptr ? (uint64) body : 0,
    80001e1c:	02090c63          	beqz	s2,80001e54 <_ZN3CCB15createCoroutineEPFvPvES0_+0xe0>
    80001e20:	00090793          	mv	a5,s2
            arg(arg)
    80001e24:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001e28:	02050a63          	beqz	a0,80001e5c <_ZN3CCB15createCoroutineEPFvPvES0_+0xe8>
    80001e2c:	000027b7          	lui	a5,0x2
    80001e30:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001e34:	00f4bc23          	sd	a5,24(s1)
    80001e38:	02048023          	sb	zero,32(s1)
    80001e3c:	0334b423          	sd	s3,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001e40:	08090a63          	beqz	s2,80001ed4 <_ZN3CCB15createCoroutineEPFvPvES0_+0x160>
    80001e44:	00048513          	mv	a0,s1
    80001e48:	00001097          	auipc	ra,0x1
    80001e4c:	87c080e7          	jalr	-1924(ra) # 800026c4 <_ZN9Scheduler3putEP3CCB>
    80001e50:	0840006f          	j	80001ed4 <_ZN3CCB15createCoroutineEPFvPvES0_+0x160>
            context({body != nullptr ? (uint64) body : 0,
    80001e54:	00000793          	li	a5,0
    80001e58:	fcdff06f          	j	80001e24 <_ZN3CCB15createCoroutineEPFvPvES0_+0xb0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001e5c:	00000793          	li	a5,0
    80001e60:	fd5ff06f          	j	80001e34 <_ZN3CCB15createCoroutineEPFvPvES0_+0xc0>
    80001e64:	00050913          	mv	s2,a0
    80001e68:	00004797          	auipc	a5,0x4
    80001e6c:	0007c783          	lbu	a5,0(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e70:	04079263          	bnez	a5,80001eb4 <_ZN3CCB15createCoroutineEPFvPvES0_+0x140>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001e74:	00004797          	auipc	a5,0x4
    80001e78:	f647b783          	ld	a5,-156(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e7c:	0007b783          	ld	a5,0(a5)
    80001e80:	00004717          	auipc	a4,0x4
    80001e84:	ff070713          	addi	a4,a4,-16 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e88:	00f73023          	sd	a5,0(a4)
    80001e8c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001e90:	00004717          	auipc	a4,0x4
    80001e94:	f6873703          	ld	a4,-152(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e98:	00073703          	ld	a4,0(a4)
    80001e9c:	40f70733          	sub	a4,a4,a5
    80001ea0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ea4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ea8:	00100793          	li	a5,1
    80001eac:	00004717          	auipc	a4,0x4
    80001eb0:	faf70e23          	sb	a5,-68(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001eb4:	00048593          	mv	a1,s1
    80001eb8:	00004517          	auipc	a0,0x4
    80001ebc:	fb850513          	addi	a0,a0,-72 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	bd4080e7          	jalr	-1068(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
    80001ec8:	00090513          	mv	a0,s2
    80001ecc:	00005097          	auipc	ra,0x5
    80001ed0:	09c080e7          	jalr	156(ra) # 80006f68 <_Unwind_Resume>
    return new CCB(body, arg);
}
    80001ed4:	00048513          	mv	a0,s1
    80001ed8:	02813083          	ld	ra,40(sp)
    80001edc:	02013403          	ld	s0,32(sp)
    80001ee0:	01813483          	ld	s1,24(sp)
    80001ee4:	01013903          	ld	s2,16(sp)
    80001ee8:	00813983          	ld	s3,8(sp)
    80001eec:	03010113          	addi	sp,sp,48
    80001ef0:	00008067          	ret

0000000080001ef4 <_ZN3CCB8dispatchEv>:

    Riscv::popRegisters();
}

void CCB::dispatch()
{
    80001ef4:	fe010113          	addi	sp,sp,-32
    80001ef8:	00113c23          	sd	ra,24(sp)
    80001efc:	00813823          	sd	s0,16(sp)
    80001f00:	00913423          	sd	s1,8(sp)
    80001f04:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80001f08:	00004497          	auipc	s1,0x4
    80001f0c:	f784b483          	ld	s1,-136(s1) # 80005e80 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80001f10:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001f14:	02078c63          	beqz	a5,80001f4c <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	744080e7          	jalr	1860(ra) # 8000265c <_ZN9Scheduler3getEv>
    80001f20:	00004797          	auipc	a5,0x4
    80001f24:	f6a7b023          	sd	a0,-160(a5) # 80005e80 <_ZN3CCB7runningE>

    CCB::contextSwitch(&old->context, &running->context);
    80001f28:	01050593          	addi	a1,a0,16
    80001f2c:	01048513          	addi	a0,s1,16
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	2d8080e7          	jalr	728(ra) # 80001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80001f38:	01813083          	ld	ra,24(sp)
    80001f3c:	01013403          	ld	s0,16(sp)
    80001f40:	00813483          	ld	s1,8(sp)
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	774080e7          	jalr	1908(ra) # 800026c4 <_ZN9Scheduler3putEP3CCB>
    80001f58:	fc1ff06f          	j	80001f18 <_ZN3CCB8dispatchEv+0x24>

0000000080001f5c <_ZN3CCB5yieldEv>:
{
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	1a4080e7          	jalr	420(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	f80080e7          	jalr	-128(ra) # 80001ef4 <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	210080e7          	jalr	528(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    80001f84:	00813083          	ld	ra,8(sp)
    80001f88:	00013403          	ld	s0,0(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00113423          	sd	ra,8(sp)
    80001f9c:	00813023          	sd	s0,0(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    80001fa4:	00004797          	auipc	a5,0x4
    80001fa8:	df478793          	addi	a5,a5,-524 # 80005d98 <_ZTV9Semaphore+0x10>
    80001fac:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    80001fb0:	00853503          	ld	a0,8(a0)
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	3c8080e7          	jalr	968(ra) # 8000137c <_Z9sem_closePN3ABI9SemaphoreE>
}
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00013403          	ld	s0,0(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001fcc:	fe010113          	addi	sp,sp,-32
    80001fd0:	00113c23          	sd	ra,24(sp)
    80001fd4:	00813823          	sd	s0,16(sp)
    80001fd8:	00913423          	sd	s1,8(sp)
    80001fdc:	02010413          	addi	s0,sp,32
    80001fe0:	00050493          	mv	s1,a0
}
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	fb0080e7          	jalr	-80(ra) # 80001f94 <_ZN9SemaphoreD1Ev>
    80001fec:	00048513          	mv	a0,s1
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	c84080e7          	jalr	-892(ra) # 80001c74 <_ZdlPv>
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	01013403          	ld	s0,16(sp)
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret

000000008000200c <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::~Thread() {
    8000200c:	fe010113          	addi	sp,sp,-32
    80002010:	00113c23          	sd	ra,24(sp)
    80002014:	00813823          	sd	s0,16(sp)
    80002018:	00913423          	sd	s1,8(sp)
    8000201c:	02010413          	addi	s0,sp,32
    80002020:	00004797          	auipc	a5,0x4
    80002024:	d9878793          	addi	a5,a5,-616 # 80005db8 <_ZTV6Thread+0x10>
    80002028:	00f53023          	sd	a5,0(a0)
    delete this->myHandle;
    8000202c:	00853483          	ld	s1,8(a0)
    80002030:	06048a63          	beqz	s1,800020a4 <_ZN6ThreadD1Ev+0x98>
    ~CCB() { delete[] stack; }
    80002034:	0084b503          	ld	a0,8(s1)
    80002038:	00050663          	beqz	a0,80002044 <_ZN6ThreadD1Ev+0x38>
    8000203c:	00000097          	auipc	ra,0x0
    80002040:	cb8080e7          	jalr	-840(ra) # 80001cf4 <_ZdaPv>
    80002044:	00004797          	auipc	a5,0x4
    80002048:	e247c783          	lbu	a5,-476(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000204c:	04079263          	bnez	a5,80002090 <_ZN6ThreadD1Ev+0x84>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002050:	00004797          	auipc	a5,0x4
    80002054:	d887b783          	ld	a5,-632(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002058:	0007b783          	ld	a5,0(a5)
    8000205c:	00004717          	auipc	a4,0x4
    80002060:	e1470713          	addi	a4,a4,-492 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002064:	00f73023          	sd	a5,0(a4)
    80002068:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000206c:	00004717          	auipc	a4,0x4
    80002070:	d8c73703          	ld	a4,-628(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002074:	00073703          	ld	a4,0(a4)
    80002078:	40f70733          	sub	a4,a4,a5
    8000207c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002080:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002084:	00100793          	li	a5,1
    80002088:	00004717          	auipc	a4,0x4
    8000208c:	def70023          	sb	a5,-544(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80002090:	00048593          	mv	a1,s1
    80002094:	00004517          	auipc	a0,0x4
    80002098:	ddc50513          	addi	a0,a0,-548 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000209c:	00001097          	auipc	ra,0x1
    800020a0:	9f8080e7          	jalr	-1544(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800020a4:	01813083          	ld	ra,24(sp)
    800020a8:	01013403          	ld	s0,16(sp)
    800020ac:	00813483          	ld	s1,8(sp)
    800020b0:	02010113          	addi	sp,sp,32
    800020b4:	00008067          	ret

00000000800020b8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020b8:	fe010113          	addi	sp,sp,-32
    800020bc:	00113c23          	sd	ra,24(sp)
    800020c0:	00813823          	sd	s0,16(sp)
    800020c4:	00913423          	sd	s1,8(sp)
    800020c8:	02010413          	addi	s0,sp,32
    800020cc:	00050493          	mv	s1,a0
}
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	f3c080e7          	jalr	-196(ra) # 8000200c <_ZN6ThreadD1Ev>
    800020d8:	00048513          	mv	a0,s1
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	b98080e7          	jalr	-1128(ra) # 80001c74 <_ZdlPv>
    800020e4:	01813083          	ld	ra,24(sp)
    800020e8:	01013403          	ld	s0,16(sp)
    800020ec:	00813483          	ld	s1,8(sp)
    800020f0:	02010113          	addi	sp,sp,32
    800020f4:	00008067          	ret

00000000800020f8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00113423          	sd	ra,8(sp)
    80002100:	00813023          	sd	s0,0(sp)
    80002104:	01010413          	addi	s0,sp,16
    80002108:	00004797          	auipc	a5,0x4
    8000210c:	c9078793          	addi	a5,a5,-880 # 80005d98 <_ZTV9Semaphore+0x10>
    80002110:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    80002114:	00850513          	addi	a0,a0,8
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	234080e7          	jalr	564(ra) # 8000134c <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    80002120:	00813083          	ld	ra,8(sp)
    80002124:	00013403          	ld	s0,0(sp)
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00008067          	ret

0000000080002130 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00113423          	sd	ra,8(sp)
    80002138:	00813023          	sd	s0,0(sp)
    8000213c:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002140:	00853503          	ld	a0,8(a0)
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	264080e7          	jalr	612(ra) # 800013a8 <_Z8sem_waitPN3ABI9SemaphoreE>
}
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    8000216c:	00853503          	ld	a0,8(a0)
    80002170:	fffff097          	auipc	ra,0xfffff
    80002174:	264080e7          	jalr	612(ra) # 800013d4 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002178:	00813083          	ld	ra,8(sp)
    8000217c:	00013403          	ld	s0,0(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00113423          	sd	ra,8(sp)
    80002190:	00813023          	sd	s0,0(sp)
    80002194:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	194080e7          	jalr	404(ra) # 8000132c <_Z15thread_dispatchv>
}
    800021a0:	00813083          	ld	ra,8(sp)
    800021a4:	00013403          	ld	s0,0(sp)
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00008067          	ret

00000000800021b0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00113423          	sd	ra,8(sp)
    800021b8:	00813023          	sd	s0,0(sp)
    800021bc:	01010413          	addi	s0,sp,16
    800021c0:	00004797          	auipc	a5,0x4
    800021c4:	bf878793          	addi	a5,a5,-1032 # 80005db8 <_ZTV6Thread+0x10>
    800021c8:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    800021cc:	00850513          	addi	a0,a0,8
    800021d0:	fffff097          	auipc	ra,0xfffff
    800021d4:	100080e7          	jalr	256(ra) # 800012d0 <_Z13thread_createPP3CCBPFvPvES2_>
}
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00113423          	sd	ra,8(sp)
    800021f0:	00813023          	sd	s0,0(sp)
    800021f4:	01010413          	addi	s0,sp,16
    800021f8:	00004797          	auipc	a5,0x4
    800021fc:	bc078793          	addi	a5,a5,-1088 # 80005db8 <_ZTV6Thread+0x10>
    80002200:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, runWrapper, this);
    80002204:	00050613          	mv	a2,a0
    80002208:	00000597          	auipc	a1,0x0
    8000220c:	03c58593          	addi	a1,a1,60 # 80002244 <_ZN6Thread10runWrapperEPv>
    80002210:	00850513          	addi	a0,a0,8
    80002214:	fffff097          	auipc	ra,0xfffff
    80002218:	0bc080e7          	jalr	188(ra) # 800012d0 <_Z13thread_createPP3CCBPFvPvES2_>
}
    8000221c:	00813083          	ld	ra,8(sp)
    80002220:	00013403          	ld	s0,0(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret

000000008000222c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {}
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00813423          	sd	s0,8(sp)
    80002234:	01010413          	addi	s0,sp,16
    80002238:	00813403          	ld	s0,8(sp)
    8000223c:	01010113          	addi	sp,sp,16
    80002240:	00008067          	ret

0000000080002244 <_ZN6Thread10runWrapperEPv>:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void runWrapper(void* thread) {
        if (thread) {
    80002244:	02050863          	beqz	a0,80002274 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00113423          	sd	ra,8(sp)
    80002250:	00813023          	sd	s0,0(sp)
    80002254:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    80002258:	00053783          	ld	a5,0(a0)
    8000225c:	0107b783          	ld	a5,16(a5)
    80002260:	000780e7          	jalr	a5
        }
    }
    80002264:	00813083          	ld	ra,8(sp)
    80002268:	00013403          	ld	s0,0(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret
    80002274:	00008067          	ret

0000000080002278 <_ZN5Riscv10popSppSpieEv>:
#include "../h/ccb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00813423          	sd	s0,8(sp)
    80002280:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002284:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002288:	10200073          	sret
}
    8000228c:	00813403          	ld	s0,8(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZN5Riscv14handleSyscallsEv>:

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    80002298:	fb010113          	addi	sp,sp,-80
    8000229c:	04113423          	sd	ra,72(sp)
    800022a0:	04813023          	sd	s0,64(sp)
    800022a4:	02913c23          	sd	s1,56(sp)
    800022a8:	05010413          	addi	s0,sp,80
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800022ac:	142027f3          	csrr	a5,scause
    800022b0:	faf43823          	sd	a5,-80(s0)
    return scause;
    800022b4:	fb043483          	ld	s1,-80(s0)
    uint64 scause = r_scause();
    if (scause != 8 && scause != 9) {
    800022b8:	ff848713          	addi	a4,s1,-8
    800022bc:	00100793          	li	a5,1
    800022c0:	04e7ec63          	bltu	a5,a4,80002318 <_ZN5Riscv14handleSyscallsEv+0x80>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022c4:	141027f3          	csrr	a5,sepc
    800022c8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800022cc:	fc843783          	ld	a5,-56(s0)
        printInteger(scause);
        printString("\n");
        return;
    }

    uint64 volatile sepc = r_sepc() + 4;
    800022d0:	00478793          	addi	a5,a5,4
    800022d4:	fcf43c23          	sd	a5,-40(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022d8:	100027f3          	csrr	a5,sstatus
    800022dc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800022e0:	fc043783          	ld	a5,-64(s0)
    uint64 volatile sstatus = r_sstatus();
    800022e4:	fcf43823          	sd	a5,-48(s0)
}

inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800022e8:	00050793          	mv	a5,a0
    800022ec:	faf43c23          	sd	a5,-72(s0)
    return a0;
    800022f0:	fb843783          	ld	a5,-72(s0)

    uint64 codeOperation = Riscv::r_a0();
    int returnValue;
    ABI::Semaphore* semHandlePtr;
    switch (codeOperation) {
    800022f4:	02400713          	li	a4,36
    800022f8:	0af76e63          	bltu	a4,a5,800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
    800022fc:	00279793          	slli	a5,a5,0x2
    80002300:	00003717          	auipc	a4,0x3
    80002304:	d7870713          	addi	a4,a4,-648 # 80005078 <CONSOLE_STATUS+0x68>
    80002308:	00e787b3          	add	a5,a5,a4
    8000230c:	0007a783          	lw	a5,0(a5)
    80002310:	00e787b3          	add	a5,a5,a4
    80002314:	00078067          	jr	a5
        printString("ERROR! SCAUSE: ");
    80002318:	00003517          	auipc	a0,0x3
    8000231c:	d5050513          	addi	a0,a0,-688 # 80005068 <CONSOLE_STATUS+0x58>
    80002320:	00001097          	auipc	ra,0x1
    80002324:	8d0080e7          	jalr	-1840(ra) # 80002bf0 <_Z11printStringPKc>
        printInteger(scause);
    80002328:	00048513          	mv	a0,s1
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	908080e7          	jalr	-1784(ra) # 80002c34 <_Z12printIntegerm>
        printString("\n");
    80002334:	00003517          	auipc	a0,0x3
    80002338:	e1450513          	addi	a0,a0,-492 # 80005148 <CONSOLE_STATUS+0x138>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	8b4080e7          	jalr	-1868(ra) # 80002bf0 <_Z11printStringPKc>
        return;
    80002344:	0800006f          	j	800023c4 <_ZN5Riscv14handleSyscallsEv+0x12c>
        case 0x01:
            // mem_alloc(size)

            size_t size;
            void *ptr;
            __asm__ volatile("mv %0, a1" : "=r" (size));
    80002348:	00058593          	mv	a1,a1
    8000234c:	00004797          	auipc	a5,0x4
    80002350:	b1c7c783          	lbu	a5,-1252(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002354:	04079263          	bnez	a5,80002398 <_ZN5Riscv14handleSyscallsEv+0x100>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002358:	00004797          	auipc	a5,0x4
    8000235c:	a807b783          	ld	a5,-1408(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002360:	0007b783          	ld	a5,0(a5)
    80002364:	00004717          	auipc	a4,0x4
    80002368:	b0c70713          	addi	a4,a4,-1268 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000236c:	00f73023          	sd	a5,0(a4)
    80002370:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002374:	00004717          	auipc	a4,0x4
    80002378:	a8473703          	ld	a4,-1404(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000237c:	00073703          	ld	a4,0(a4)
    80002380:	40f70733          	sub	a4,a4,a5
    80002384:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002388:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000238c:	00100793          	li	a5,1
    80002390:	00004717          	auipc	a4,0x4
    80002394:	acf70c23          	sb	a5,-1320(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            ptr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);
    80002398:	00659593          	slli	a1,a1,0x6
    8000239c:	00004517          	auipc	a0,0x4
    800023a0:	ad450513          	addi	a0,a0,-1324 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	5a0080e7          	jalr	1440(ra) # 80002944 <_ZN15MemoryAllocator9mem_allocEm>

            __asm__ volatile("mv t0, %0" : : "r"(ptr));
    800023ac:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800023b0:	04542823          	sw	t0,80(s0)
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
            __asm__ volatile ("sw t0, 80(x8)");
            break;
    }

    w_sstatus(sstatus);
    800023b4:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023b8:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    800023bc:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023c0:	14179073          	csrw	sepc,a5
    800023c4:	04813083          	ld	ra,72(sp)
    800023c8:	04013403          	ld	s0,64(sp)
    800023cc:	03813483          	ld	s1,56(sp)
    800023d0:	05010113          	addi	sp,sp,80
    800023d4:	00008067          	ret
            __asm__ volatile("mv %0, a1" : "=r" (memptr));
    800023d8:	00058593          	mv	a1,a1
    800023dc:	00004797          	auipc	a5,0x4
    800023e0:	a8c7c783          	lbu	a5,-1396(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800023e4:	04079263          	bnez	a5,80002428 <_ZN5Riscv14handleSyscallsEv+0x190>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800023e8:	00004797          	auipc	a5,0x4
    800023ec:	9f07b783          	ld	a5,-1552(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800023f0:	0007b783          	ld	a5,0(a5)
    800023f4:	00004717          	auipc	a4,0x4
    800023f8:	a7c70713          	addi	a4,a4,-1412 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800023fc:	00f73023          	sd	a5,0(a4)
    80002400:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002404:	00004717          	auipc	a4,0x4
    80002408:	9f473703          	ld	a4,-1548(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000240c:	00073703          	ld	a4,0(a4)
    80002410:	40f70733          	sub	a4,a4,a5
    80002414:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002418:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000241c:	00100793          	li	a5,1
    80002420:	00004717          	auipc	a4,0x4
    80002424:	a4f70423          	sb	a5,-1464(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_free(memptr);
    80002428:	00004517          	auipc	a0,0x4
    8000242c:	a4850513          	addi	a0,a0,-1464 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002430:	00000097          	auipc	ra,0x0
    80002434:	664080e7          	jalr	1636(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    80002438:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    8000243c:	04542823          	sw	t0,80(s0)
            break;
    80002440:	f75ff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
    80002444:	00004797          	auipc	a5,0x4
    80002448:	a247c783          	lbu	a5,-1500(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000244c:	04079263          	bnez	a5,80002490 <_ZN5Riscv14handleSyscallsEv+0x1f8>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002450:	00004797          	auipc	a5,0x4
    80002454:	9887b783          	ld	a5,-1656(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002458:	0007b783          	ld	a5,0(a5)
    8000245c:	00004717          	auipc	a4,0x4
    80002460:	a1470713          	addi	a4,a4,-1516 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002464:	00f73023          	sd	a5,0(a4)
    80002468:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000246c:	00004717          	auipc	a4,0x4
    80002470:	98c73703          	ld	a4,-1652(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002474:	00073703          	ld	a4,0(a4)
    80002478:	40f70733          	sub	a4,a4,a5
    8000247c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002480:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002484:	00100793          	li	a5,1
    80002488:	00004717          	auipc	a4,0x4
    8000248c:	9ef70023          	sb	a5,-1568(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_get_free_space();
    80002490:	00004517          	auipc	a0,0x4
    80002494:	9e050513          	addi	a0,a0,-1568 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	6e8080e7          	jalr	1768(ra) # 80002b80 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
            __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    800024a0:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800024a4:	04542823          	sw	t0,80(s0)
            break;
    800024a8:	f0dff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
    800024ac:	00004797          	auipc	a5,0x4
    800024b0:	9bc7c783          	lbu	a5,-1604(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800024b4:	04079263          	bnez	a5,800024f8 <_ZN5Riscv14handleSyscallsEv+0x260>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800024b8:	00004797          	auipc	a5,0x4
    800024bc:	9207b783          	ld	a5,-1760(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800024c0:	0007b783          	ld	a5,0(a5)
    800024c4:	00004717          	auipc	a4,0x4
    800024c8:	9ac70713          	addi	a4,a4,-1620 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800024cc:	00f73023          	sd	a5,0(a4)
    800024d0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800024d4:	00004717          	auipc	a4,0x4
    800024d8:	92473703          	ld	a4,-1756(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024dc:	00073703          	ld	a4,0(a4)
    800024e0:	40f70733          	sub	a4,a4,a5
    800024e4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800024e8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800024ec:	00100793          	li	a5,1
    800024f0:	00004717          	auipc	a4,0x4
    800024f4:	96f70c23          	sb	a5,-1672(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_get_largest_free_block();
    800024f8:	00004517          	auipc	a0,0x4
    800024fc:	97850513          	addi	a0,a0,-1672 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002500:	00000097          	auipc	ra,0x0
    80002504:	6b4080e7          	jalr	1716(ra) # 80002bb4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
            __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    80002508:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    8000250c:	04542823          	sw	t0,80(s0)
            break;
    80002510:	ea5ff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
            __asm__ volatile ("mv %0, a1" : "=r" (thread));
    80002514:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002518:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %0, a7" : "=r" (arg));
    8000251c:	00088593          	mv	a1,a7
            *thread = CCB::createCoroutine(body, arg);
    80002520:	00000097          	auipc	ra,0x0
    80002524:	854080e7          	jalr	-1964(ra) # 80001d74 <_ZN3CCB15createCoroutineEPFvPvES0_>
    80002528:	00a4b023          	sd	a0,0(s1)
            if (*thread != nullptr) {
    8000252c:	00050863          	beqz	a0,8000253c <_ZN5Riscv14handleSyscallsEv+0x2a4>
                __asm__ volatile ("li t0, 0");
    80002530:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002534:	04542823          	sw	t0,80(s0)
    80002538:	e7dff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
                __asm__ volatile ("li t0, -1");
    8000253c:	fff00293          	li	t0,-1
                __asm__ volatile ("sw t0, 80(x8)");
    80002540:	04542823          	sw	t0,80(s0)
    80002544:	e71ff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
            CCB::running->setFinished(true);
    80002548:	00004797          	auipc	a5,0x4
    8000254c:	8a87b783          	ld	a5,-1880(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002550:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002554:	00100713          	li	a4,1
    80002558:	02e78023          	sb	a4,32(a5)
            CCB::dispatch();
    8000255c:	00000097          	auipc	ra,0x0
    80002560:	998080e7          	jalr	-1640(ra) # 80001ef4 <_ZN3CCB8dispatchEv>
            __asm__ volatile ("li t0, 0");
    80002564:	00000293          	li	t0,0
            __asm__ volatile ("sw t0, 80(x8)");
    80002568:	04542823          	sw	t0,80(s0)
            break;
    8000256c:	e49ff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
            CCB::dispatch();
    80002570:	00000097          	auipc	ra,0x0
    80002574:	984080e7          	jalr	-1660(ra) # 80001ef4 <_ZN3CCB8dispatchEv>
            break;
    80002578:	e3dff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
            __asm__ volatile ("mv %0, a2" : "=r" (init));
    8000257c:	00060513          	mv	a0,a2
    80002580:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002584:	00058493          	mv	s1,a1
            *semHandle = ABI::Semaphore::createSemaphore(init);
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	288080e7          	jalr	648(ra) # 80001810 <_ZN3ABI9Semaphore15createSemaphoreEj>
    80002590:	00a4b023          	sd	a0,0(s1)
            if (*semHandle != nullptr) {
    80002594:	00050863          	beqz	a0,800025a4 <_ZN5Riscv14handleSyscallsEv+0x30c>
                __asm__ volatile ("li t0, 0");
    80002598:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    8000259c:	04542823          	sw	t0,80(s0)
    800025a0:	e15ff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
                __asm__ volatile ("li t0, -1");
    800025a4:	fff00293          	li	t0,-1
                __asm__ volatile ("sw t0, 80(x8)");
    800025a8:	04542823          	sw	t0,80(s0)
    800025ac:	e09ff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800025b0:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr) {
    800025b4:	00050c63          	beqz	a0,800025cc <_ZN5Riscv14handleSyscallsEv+0x334>
                returnValue = semHandlePtr->close();
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	4c4080e7          	jalr	1220(ra) # 80001a7c <_ZN3ABI9Semaphore5closeEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800025c0:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800025c4:	04542823          	sw	t0,80(s0)
            break;
    800025c8:	dedff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
            } else returnValue = -2;
    800025cc:	ffe00513          	li	a0,-2
    800025d0:	ff1ff06f          	j	800025c0 <_ZN5Riscv14handleSyscallsEv+0x328>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800025d4:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr) {
    800025d8:	00050c63          	beqz	a0,800025f0 <_ZN5Riscv14handleSyscallsEv+0x358>
                returnValue = semHandlePtr->wait();
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	2dc080e7          	jalr	732(ra) # 800018b8 <_ZN3ABI9Semaphore4waitEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800025e4:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800025e8:	04542823          	sw	t0,80(s0)
            break;
    800025ec:	dc9ff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
            } else returnValue = -2;
    800025f0:	ffe00513          	li	a0,-2
    800025f4:	ff1ff06f          	j	800025e4 <_ZN5Riscv14handleSyscallsEv+0x34c>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800025f8:	00058513          	mv	a0,a1
            if (semHandlePtr != nullptr)
    800025fc:	00050c63          	beqz	a0,80002614 <_ZN5Riscv14handleSyscallsEv+0x37c>
                returnValue = semHandlePtr->signal();
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	2f0080e7          	jalr	752(ra) # 800018f0 <_ZN3ABI9Semaphore6signalEv>
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002608:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    8000260c:	04542823          	sw	t0,80(s0)
            break;
    80002610:	da5ff06f          	j	800023b4 <_ZN5Riscv14handleSyscallsEv+0x11c>
                returnValue = -2;
    80002614:	ffe00513          	li	a0,-2
    80002618:	ff1ff06f          	j	80002608 <_ZN5Riscv14handleSyscallsEv+0x370>

000000008000261c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00813423          	sd	s0,8(sp)
    80002624:	01010413          	addi	s0,sp,16
    80002628:	00100793          	li	a5,1
    8000262c:	00f50863          	beq	a0,a5,8000263c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002630:	00813403          	ld	s0,8(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret
    8000263c:	000107b7          	lui	a5,0x10
    80002640:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002644:	fef596e3          	bne	a1,a5,80002630 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002648:	00004797          	auipc	a5,0x4
    8000264c:	84078793          	addi	a5,a5,-1984 # 80005e88 <_ZN9Scheduler19readyCoroutineQueueE>
    80002650:	0007b023          	sd	zero,0(a5)
    80002654:	0007b423          	sd	zero,8(a5)
    80002658:	fd9ff06f          	j	80002630 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000265c <_ZN9Scheduler3getEv>:
{
    8000265c:	fe010113          	addi	sp,sp,-32
    80002660:	00113c23          	sd	ra,24(sp)
    80002664:	00813823          	sd	s0,16(sp)
    80002668:	00913423          	sd	s1,8(sp)
    8000266c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002670:	00004517          	auipc	a0,0x4
    80002674:	81853503          	ld	a0,-2024(a0) # 80005e88 <_ZN9Scheduler19readyCoroutineQueueE>
    80002678:	04050263          	beqz	a0,800026bc <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    8000267c:	00853783          	ld	a5,8(a0)
    80002680:	00004717          	auipc	a4,0x4
    80002684:	80f73423          	sd	a5,-2040(a4) # 80005e88 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002688:	02078463          	beqz	a5,800026b0 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    8000268c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	5e4080e7          	jalr	1508(ra) # 80001c74 <_ZdlPv>
}
    80002698:	00048513          	mv	a0,s1
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret
        if (!head) { tail = 0; }
    800026b0:	00003797          	auipc	a5,0x3
    800026b4:	7e07b023          	sd	zero,2016(a5) # 80005e90 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800026b8:	fd5ff06f          	j	8000268c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800026bc:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800026c0:	fd9ff06f          	j	80002698 <_ZN9Scheduler3getEv+0x3c>

00000000800026c4 <_ZN9Scheduler3putEP3CCB>:
{
    800026c4:	fe010113          	addi	sp,sp,-32
    800026c8:	00113c23          	sd	ra,24(sp)
    800026cc:	00813823          	sd	s0,16(sp)
    800026d0:	00913423          	sd	s1,8(sp)
    800026d4:	02010413          	addi	s0,sp,32
    800026d8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800026dc:	01000513          	li	a0,16
    800026e0:	fffff097          	auipc	ra,0xfffff
    800026e4:	494080e7          	jalr	1172(ra) # 80001b74 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800026e8:	00953023          	sd	s1,0(a0)
    800026ec:	00053423          	sd	zero,8(a0)
        if (tail)
    800026f0:	00003797          	auipc	a5,0x3
    800026f4:	7a07b783          	ld	a5,1952(a5) # 80005e90 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800026f8:	02078263          	beqz	a5,8000271c <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    800026fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002700:	00003797          	auipc	a5,0x3
    80002704:	78a7b823          	sd	a0,1936(a5) # 80005e90 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002708:	01813083          	ld	ra,24(sp)
    8000270c:	01013403          	ld	s0,16(sp)
    80002710:	00813483          	ld	s1,8(sp)
    80002714:	02010113          	addi	sp,sp,32
    80002718:	00008067          	ret
            head = tail = elem;
    8000271c:	00003797          	auipc	a5,0x3
    80002720:	76c78793          	addi	a5,a5,1900 # 80005e88 <_ZN9Scheduler19readyCoroutineQueueE>
    80002724:	00a7b423          	sd	a0,8(a5)
    80002728:	00a7b023          	sd	a0,0(a5)
    8000272c:	fddff06f          	j	80002708 <_ZN9Scheduler3putEP3CCB+0x44>

0000000080002730 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    80002740:	000105b7          	lui	a1,0x10
    80002744:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002748:	00100513          	li	a0,1
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	ed0080e7          	jalr	-304(ra) # 8000261c <_Z41__static_initialization_and_destruction_0ii>
    80002754:	00813083          	ld	ra,8(sp)
    80002758:	00013403          	ld	s0,0(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <main>:
#include "../h/Semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"

int main()
{
    80002764:	fc010113          	addi	sp,sp,-64
    80002768:	02113c23          	sd	ra,56(sp)
    8000276c:	02813823          	sd	s0,48(sp)
    80002770:	02913423          	sd	s1,40(sp)
    80002774:	03213023          	sd	s2,32(sp)
    80002778:	04010413          	addi	s0,sp,64
    Riscv::w_stvec((uint64) &Riscv::stvecTrap);
    8000277c:	00003797          	auipc	a5,0x3
    80002780:	6847b783          	ld	a5,1668(a5) # 80005e00 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002784:	10579073          	csrw	stvec,a5
    80002788:	00003797          	auipc	a5,0x3
    8000278c:	6e07c783          	lbu	a5,1760(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002790:	04079263          	bnez	a5,800027d4 <main+0x70>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002794:	00003797          	auipc	a5,0x3
    80002798:	6447b783          	ld	a5,1604(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000279c:	0007b783          	ld	a5,0(a5)
    800027a0:	00003717          	auipc	a4,0x3
    800027a4:	6d070713          	addi	a4,a4,1744 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027a8:	00f73023          	sd	a5,0(a4)
    800027ac:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800027b0:	00003717          	auipc	a4,0x3
    800027b4:	64873703          	ld	a4,1608(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027b8:	00073703          	ld	a4,0(a4)
    800027bc:	40f70733          	sub	a4,a4,a5
    800027c0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800027c4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800027c8:	00100793          	li	a5,1
    800027cc:	00003717          	auipc	a4,0x3
    800027d0:	68f70e23          	sb	a5,1692(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

    MemoryAllocator* m = MemoryAllocator::Instance();
    void* res = mem_alloc(100);
    800027d4:	06400513          	li	a0,100
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	a44080e7          	jalr	-1468(ra) # 8000121c <_Z9mem_allocm>
    800027e0:	00050593          	mv	a1,a0
    CCB *coroutines[3];

    m->mem_free(res);
    800027e4:	00003517          	auipc	a0,0x3
    800027e8:	68c50513          	addi	a0,a0,1676 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	2a8080e7          	jalr	680(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
    coroutines[0] = CCB::createCoroutine(nullptr, nullptr);
    800027f4:	00000593          	li	a1,0
    800027f8:	00000513          	li	a0,0
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	578080e7          	jalr	1400(ra) # 80001d74 <_ZN3CCB15createCoroutineEPFvPvES0_>
    80002804:	fca43423          	sd	a0,-56(s0)
    CCB::running = coroutines[0];
    80002808:	00003797          	auipc	a5,0x3
    8000280c:	5e87b783          	ld	a5,1512(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002810:	00a7b023          	sd	a0,0(a5)

    coroutines[1] = CCB::createCoroutine(workerBodyC, nullptr);
    80002814:	00000593          	li	a1,0
    80002818:	00003517          	auipc	a0,0x3
    8000281c:	5c853503          	ld	a0,1480(a0) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	554080e7          	jalr	1364(ra) # 80001d74 <_ZN3CCB15createCoroutineEPFvPvES0_>
    80002828:	fca43823          	sd	a0,-48(s0)
    printString("CoroutineC created\n");
    8000282c:	00003517          	auipc	a0,0x3
    80002830:	8e450513          	addi	a0,a0,-1820 # 80005110 <CONSOLE_STATUS+0x100>
    80002834:	00000097          	auipc	ra,0x0
    80002838:	3bc080e7          	jalr	956(ra) # 80002bf0 <_Z11printStringPKc>
    coroutines[2] = CCB::createCoroutine(workerBodyD, nullptr);
    8000283c:	00000593          	li	a1,0
    80002840:	00003517          	auipc	a0,0x3
    80002844:	5c853503          	ld	a0,1480(a0) # 80005e08 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002848:	fffff097          	auipc	ra,0xfffff
    8000284c:	52c080e7          	jalr	1324(ra) # 80001d74 <_ZN3CCB15createCoroutineEPFvPvES0_>
    80002850:	fca43c23          	sd	a0,-40(s0)
    printString("CoroutineD created\n");
    80002854:	00003517          	auipc	a0,0x3
    80002858:	8d450513          	addi	a0,a0,-1836 # 80005128 <CONSOLE_STATUS+0x118>
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	394080e7          	jalr	916(ra) # 80002bf0 <_Z11printStringPKc>
    80002864:	00c0006f          	j	80002870 <main+0x10c>

    while (!(coroutines[1]->isFinished() &&
             coroutines[2]->isFinished()))
    {
        CCB::yield();
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	6f4080e7          	jalr	1780(ra) # 80001f5c <_ZN3CCB5yieldEv>
    while (!(coroutines[1]->isFinished() &&
    80002870:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    80002874:	0207c783          	lbu	a5,32(a5)
    80002878:	fe0788e3          	beqz	a5,80002868 <main+0x104>
             coroutines[2]->isFinished()))
    8000287c:	fd843783          	ld	a5,-40(s0)
    80002880:	0207c783          	lbu	a5,32(a5)
    while (!(coroutines[1]->isFinished() &&
    80002884:	fe0782e3          	beqz	a5,80002868 <main+0x104>
    80002888:	fc840493          	addi	s1,s0,-56
    8000288c:	01c0006f          	j	800028a8 <main+0x144>
        MemoryAllocator::Instance()->mem_free(ptr);
    80002890:	00090593          	mv	a1,s2
    80002894:	00003517          	auipc	a0,0x3
    80002898:	5dc50513          	addi	a0,a0,1500 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	1f8080e7          	jalr	504(ra) # 80002a94 <_ZN15MemoryAllocator8mem_freeEPv>
    }

    for (auto &coroutine: coroutines)
    800028a4:	00848493          	addi	s1,s1,8
    800028a8:	fe040793          	addi	a5,s0,-32
    800028ac:	06f48663          	beq	s1,a5,80002918 <main+0x1b4>
    {
        delete coroutine;
    800028b0:	0004b903          	ld	s2,0(s1)
    800028b4:	fe0908e3          	beqz	s2,800028a4 <main+0x140>
    ~CCB() { delete[] stack; }
    800028b8:	00893503          	ld	a0,8(s2)
    800028bc:	00050663          	beqz	a0,800028c8 <main+0x164>
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	434080e7          	jalr	1076(ra) # 80001cf4 <_ZdaPv>
    800028c8:	00003797          	auipc	a5,0x3
    800028cc:	5a07c783          	lbu	a5,1440(a5) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800028d0:	fc0790e3          	bnez	a5,80002890 <main+0x12c>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800028d4:	00003797          	auipc	a5,0x3
    800028d8:	5047b783          	ld	a5,1284(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800028dc:	0007b783          	ld	a5,0(a5)
    800028e0:	00003717          	auipc	a4,0x3
    800028e4:	59070713          	addi	a4,a4,1424 # 80005e70 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800028e8:	00f73023          	sd	a5,0(a4)
    800028ec:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800028f0:	00003717          	auipc	a4,0x3
    800028f4:	50873703          	ld	a4,1288(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800028f8:	00073703          	ld	a4,0(a4)
    800028fc:	40f70733          	sub	a4,a4,a5
    80002900:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002904:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002908:	00100793          	li	a5,1
    8000290c:	00003717          	auipc	a4,0x3
    80002910:	54f70e23          	sb	a5,1372(a4) # 80005e68 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002914:	f7dff06f          	j	80002890 <main+0x12c>
    }
    printString("Finished\n");
    80002918:	00003517          	auipc	a0,0x3
    8000291c:	82850513          	addi	a0,a0,-2008 # 80005140 <CONSOLE_STATUS+0x130>
    80002920:	00000097          	auipc	ra,0x0
    80002924:	2d0080e7          	jalr	720(ra) # 80002bf0 <_Z11printStringPKc>

    return 0;
    80002928:	00000513          	li	a0,0
    8000292c:	03813083          	ld	ra,56(sp)
    80002930:	03013403          	ld	s0,48(sp)
    80002934:	02813483          	ld	s1,40(sp)
    80002938:	02013903          	ld	s2,32(sp)
    8000293c:	04010113          	addi	sp,sp,64
    80002940:	00008067          	ret

0000000080002944 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    80002944:	ff010113          	addi	sp,sp,-16
    80002948:	00813423          	sd	s0,8(sp)
    8000294c:	01010413          	addi	s0,sp,16
    80002950:	00050613          	mv	a2,a0
    size += sizeof(Header);
    80002954:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    80002958:	fc05f713          	andi	a4,a1,-64
    8000295c:	03f5f593          	andi	a1,a1,63
    80002960:	00058463          	beqz	a1,80002968 <_ZN15MemoryAllocator9mem_allocEm+0x24>
    80002964:	04000593          	li	a1,64
    80002968:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    8000296c:	00063503          	ld	a0,0(a2)
    Header *cur, *prev = nullptr;
    80002970:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002974:	00050c63          	beqz	a0,8000298c <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002978:	00853783          	ld	a5,8(a0)
    8000297c:	00e7f863          	bgeu	a5,a4,8000298c <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002980:	00050693          	mv	a3,a0
    80002984:	00053503          	ld	a0,0(a0)
    80002988:	fedff06f          	j	80002974 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    8000298c:	08050a63          	beqz	a0,80002a20 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    80002990:	00853783          	ld	a5,8(a0)
    80002994:	04e78a63          	beq	a5,a4,800029e8 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    80002998:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    8000299c:	06068463          	beqz	a3,80002a04 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800029a0:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    800029a4:	00053683          	ld	a3,0(a0)
    800029a8:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    800029ac:	00853683          	ld	a3,8(a0)
    800029b0:	40e686b3          	sub	a3,a3,a4
    800029b4:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    800029b8:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    800029bc:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    800029c0:	00863683          	ld	a3,8(a2)
    800029c4:	04068463          	beqz	a3,80002a0c <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    800029c8:	00068793          	mv	a5,a3
    800029cc:	00078713          	mv	a4,a5
    800029d0:	0007b783          	ld	a5,0(a5)
    800029d4:	00078463          	beqz	a5,800029dc <_ZN15MemoryAllocator9mem_allocEm+0x98>
    800029d8:	fea7eae3          	bltu	a5,a0,800029cc <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    800029dc:	02070a63          	beqz	a4,80002a10 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    800029e0:	00f53023          	sd	a5,0(a0)
    800029e4:	0300006f          	j	80002a14 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    800029e8:	00068863          	beqz	a3,800029f8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800029ec:	00053783          	ld	a5,0(a0)
    800029f0:	00f6b023          	sd	a5,0(a3)
    800029f4:	fc5ff06f          	j	800029b8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    800029f8:	00053783          	ld	a5,0(a0)
    800029fc:	00f63023          	sd	a5,0(a2)
    80002a00:	fb9ff06f          	j	800029b8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002a04:	00f63023          	sd	a5,0(a2)
    80002a08:	f9dff06f          	j	800029a4 <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002a0c:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    80002a10:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002a14:	00070c63          	beqz	a4,80002a2c <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002a18:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002a1c:	01050513          	addi	a0,a0,16
}
    80002a20:	00813403          	ld	s0,8(sp)
    80002a24:	01010113          	addi	sp,sp,16
    80002a28:	00008067          	ret
    else alloc_head = target;
    80002a2c:	00a63423          	sd	a0,8(a2)
    80002a30:	fedff06f          	j	80002a1c <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002a34 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00813423          	sd	s0,8(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    80002a40:	04050263          	beqz	a0,80002a84 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002a44:	00053783          	ld	a5,0(a0)
    80002a48:	04078263          	beqz	a5,80002a8c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002a4c:	00853703          	ld	a4,8(a0)
    80002a50:	00e506b3          	add	a3,a0,a4
    80002a54:	00d78a63          	beq	a5,a3,80002a68 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    80002a58:	00000513          	li	a0,0
}
    80002a5c:	00813403          	ld	s0,8(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret
        cur->size += cur->next->size;
    80002a68:	0087b683          	ld	a3,8(a5)
    80002a6c:	00d70733          	add	a4,a4,a3
    80002a70:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    80002a74:	0007b783          	ld	a5,0(a5)
    80002a78:	00f53023          	sd	a5,0(a0)
        return 1;
    80002a7c:	00100513          	li	a0,1
    80002a80:	fddff06f          	j	80002a5c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    80002a84:	00000513          	li	a0,0
    80002a88:	fd5ff06f          	j	80002a5c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    80002a8c:	00000513          	li	a0,0
    80002a90:	fcdff06f          	j	80002a5c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

0000000080002a94 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    80002a94:	0c058a63          	beqz	a1,80002b68 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002a98:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    80002a9c:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002aa0:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    80002aa4:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002aa8:	00078a63          	beqz	a5,80002abc <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002aac:	00a7f863          	bgeu	a5,a0,80002abc <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002ab0:	00078713          	mv	a4,a5
    80002ab4:	0007b783          	ld	a5,0(a5)
    80002ab8:	ff1ff06f          	j	80002aa8 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002abc:	0a078a63          	beqz	a5,80002b70 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002ac0:	0aa79c63          	bne	a5,a0,80002b78 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    80002ad8:	02070c63          	beqz	a4,80002b10 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    80002adc:	0007b783          	ld	a5,0(a5)
    80002ae0:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002ae4:	0006b703          	ld	a4,0(a3)
    80002ae8:	02070a63          	beqz	a4,80002b1c <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    80002aec:	02e56c63          	bltu	a0,a4,80002b24 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002af0:	00070793          	mv	a5,a4
    80002af4:	00078493          	mv	s1,a5
    80002af8:	0007b783          	ld	a5,0(a5)
    80002afc:	00078463          	beqz	a5,80002b04 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002b00:	fea7eae3          	bltu	a5,a0,80002af4 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002b04:	02048263          	beqz	s1,80002b28 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002b08:	fef5b823          	sd	a5,-16(a1)
    80002b0c:	0200006f          	j	80002b2c <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    80002b10:	0007b783          	ld	a5,0(a5)
    80002b14:	00f6b423          	sd	a5,8(a3)
    80002b18:	fcdff06f          	j	80002ae4 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002b1c:	00070493          	mv	s1,a4
    80002b20:	0080006f          	j	80002b28 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002b24:	00000493          	li	s1,0
    else target->next = free_head;
    80002b28:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002b2c:	02048a63          	beqz	s1,80002b60 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002b30:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	f00080e7          	jalr	-256(ra) # 80002a34 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002b3c:	00048513          	mv	a0,s1
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	ef4080e7          	jalr	-268(ra) # 80002a34 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    80002b48:	00000513          	li	a0,0
}
    80002b4c:	01813083          	ld	ra,24(sp)
    80002b50:	01013403          	ld	s0,16(sp)
    80002b54:	00813483          	ld	s1,8(sp)
    80002b58:	02010113          	addi	sp,sp,32
    80002b5c:	00008067          	ret
    else free_head = target;
    80002b60:	00a6b023          	sd	a0,0(a3)
    80002b64:	fd1ff06f          	j	80002b34 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    80002b68:	fff00513          	li	a0,-1
    80002b6c:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002b70:	ffe00513          	li	a0,-2
    80002b74:	00008067          	ret
    80002b78:	ffe00513          	li	a0,-2
}
    80002b7c:	00008067          	ret

0000000080002b80 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00813423          	sd	s0,8(sp)
    80002b88:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002b8c:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002b90:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002b94:	00078a63          	beqz	a5,80002ba8 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    80002b98:	0087b703          	ld	a4,8(a5)
    80002b9c:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002ba0:	0007b783          	ld	a5,0(a5)
    80002ba4:	ff1ff06f          	j	80002b94 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    80002ba8:	00813403          	ld	s0,8(sp)
    80002bac:	01010113          	addi	sp,sp,16
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002bb4:	ff010113          	addi	sp,sp,-16
    80002bb8:	00813423          	sd	s0,8(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002bc0:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002bc4:	00000513          	li	a0,0
    80002bc8:	0080006f          	j	80002bd0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002bcc:	0007b783          	ld	a5,0(a5)
    80002bd0:	00078a63          	beqz	a5,80002be4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    80002bd4:	0087b703          	ld	a4,8(a5)
    80002bd8:	fee57ae3          	bgeu	a0,a4,80002bcc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    80002bdc:	00070513          	mv	a0,a4
    80002be0:	fedff06f          	j	80002bcc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    80002be4:	00813403          	ld	s0,8(sp)
    80002be8:	01010113          	addi	sp,sp,16
    80002bec:	00008067          	ret

0000000080002bf0 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002bf0:	fe010113          	addi	sp,sp,-32
    80002bf4:	00113c23          	sd	ra,24(sp)
    80002bf8:	00813823          	sd	s0,16(sp)
    80002bfc:	00913423          	sd	s1,8(sp)
    80002c00:	02010413          	addi	s0,sp,32
    80002c04:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002c08:	0004c503          	lbu	a0,0(s1)
    80002c0c:	00050a63          	beqz	a0,80002c20 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80002c10:	00002097          	auipc	ra,0x2
    80002c14:	17c080e7          	jalr	380(ra) # 80004d8c <__putc>
        string++;
    80002c18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002c1c:	fedff06f          	j	80002c08 <_Z11printStringPKc+0x18>
    }
}
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	01013403          	ld	s0,16(sp)
    80002c28:	00813483          	ld	s1,8(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret

0000000080002c34 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002c34:	fd010113          	addi	sp,sp,-48
    80002c38:	02113423          	sd	ra,40(sp)
    80002c3c:	02813023          	sd	s0,32(sp)
    80002c40:	00913c23          	sd	s1,24(sp)
    80002c44:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002c48:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002c4c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002c50:	00a00613          	li	a2,10
    80002c54:	02c5773b          	remuw	a4,a0,a2
    80002c58:	02071693          	slli	a3,a4,0x20
    80002c5c:	0206d693          	srli	a3,a3,0x20
    80002c60:	00002717          	auipc	a4,0x2
    80002c64:	4f070713          	addi	a4,a4,1264 # 80005150 <_ZZ12printIntegermE6digits>
    80002c68:	00d70733          	add	a4,a4,a3
    80002c6c:	00074703          	lbu	a4,0(a4)
    80002c70:	fe040693          	addi	a3,s0,-32
    80002c74:	009687b3          	add	a5,a3,s1
    80002c78:	0014849b          	addiw	s1,s1,1
    80002c7c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002c80:	0005071b          	sext.w	a4,a0
    80002c84:	02c5553b          	divuw	a0,a0,a2
    80002c88:	00900793          	li	a5,9
    80002c8c:	fce7e2e3          	bltu	a5,a4,80002c50 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002c90:	fff4849b          	addiw	s1,s1,-1
    80002c94:	0004ce63          	bltz	s1,80002cb0 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002c98:	fe040793          	addi	a5,s0,-32
    80002c9c:	009787b3          	add	a5,a5,s1
    80002ca0:	ff07c503          	lbu	a0,-16(a5)
    80002ca4:	00002097          	auipc	ra,0x2
    80002ca8:	0e8080e7          	jalr	232(ra) # 80004d8c <__putc>
    80002cac:	fe5ff06f          	j	80002c90 <_Z12printIntegerm+0x5c>
    80002cb0:	02813083          	ld	ra,40(sp)
    80002cb4:	02013403          	ld	s0,32(sp)
    80002cb8:	01813483          	ld	s1,24(sp)
    80002cbc:	03010113          	addi	sp,sp,48
    80002cc0:	00008067          	ret

0000000080002cc4 <start>:
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    80002cd0:	300027f3          	csrr	a5,mstatus
    80002cd4:	ffffe737          	lui	a4,0xffffe
    80002cd8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff76ff>
    80002cdc:	00e7f7b3          	and	a5,a5,a4
    80002ce0:	00001737          	lui	a4,0x1
    80002ce4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002ce8:	00e7e7b3          	or	a5,a5,a4
    80002cec:	30079073          	csrw	mstatus,a5
    80002cf0:	00000797          	auipc	a5,0x0
    80002cf4:	16078793          	addi	a5,a5,352 # 80002e50 <system_main>
    80002cf8:	34179073          	csrw	mepc,a5
    80002cfc:	00000793          	li	a5,0
    80002d00:	18079073          	csrw	satp,a5
    80002d04:	000107b7          	lui	a5,0x10
    80002d08:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002d0c:	30279073          	csrw	medeleg,a5
    80002d10:	30379073          	csrw	mideleg,a5
    80002d14:	104027f3          	csrr	a5,sie
    80002d18:	2227e793          	ori	a5,a5,546
    80002d1c:	10479073          	csrw	sie,a5
    80002d20:	fff00793          	li	a5,-1
    80002d24:	00a7d793          	srli	a5,a5,0xa
    80002d28:	3b079073          	csrw	pmpaddr0,a5
    80002d2c:	00f00793          	li	a5,15
    80002d30:	3a079073          	csrw	pmpcfg0,a5
    80002d34:	f14027f3          	csrr	a5,mhartid
    80002d38:	0200c737          	lui	a4,0x200c
    80002d3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002d40:	0007869b          	sext.w	a3,a5
    80002d44:	00269713          	slli	a4,a3,0x2
    80002d48:	000f4637          	lui	a2,0xf4
    80002d4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002d50:	00d70733          	add	a4,a4,a3
    80002d54:	0037979b          	slliw	a5,a5,0x3
    80002d58:	020046b7          	lui	a3,0x2004
    80002d5c:	00d787b3          	add	a5,a5,a3
    80002d60:	00c585b3          	add	a1,a1,a2
    80002d64:	00371693          	slli	a3,a4,0x3
    80002d68:	00003717          	auipc	a4,0x3
    80002d6c:	13870713          	addi	a4,a4,312 # 80005ea0 <timer_scratch>
    80002d70:	00b7b023          	sd	a1,0(a5)
    80002d74:	00d70733          	add	a4,a4,a3
    80002d78:	00f73c23          	sd	a5,24(a4)
    80002d7c:	02c73023          	sd	a2,32(a4)
    80002d80:	34071073          	csrw	mscratch,a4
    80002d84:	00000797          	auipc	a5,0x0
    80002d88:	6ec78793          	addi	a5,a5,1772 # 80003470 <timervec>
    80002d8c:	30579073          	csrw	mtvec,a5
    80002d90:	300027f3          	csrr	a5,mstatus
    80002d94:	0087e793          	ori	a5,a5,8
    80002d98:	30079073          	csrw	mstatus,a5
    80002d9c:	304027f3          	csrr	a5,mie
    80002da0:	0807e793          	ori	a5,a5,128
    80002da4:	30479073          	csrw	mie,a5
    80002da8:	f14027f3          	csrr	a5,mhartid
    80002dac:	0007879b          	sext.w	a5,a5
    80002db0:	00078213          	mv	tp,a5
    80002db4:	30200073          	mret
    80002db8:	00813403          	ld	s0,8(sp)
    80002dbc:	01010113          	addi	sp,sp,16
    80002dc0:	00008067          	ret

0000000080002dc4 <timerinit>:
    80002dc4:	ff010113          	addi	sp,sp,-16
    80002dc8:	00813423          	sd	s0,8(sp)
    80002dcc:	01010413          	addi	s0,sp,16
    80002dd0:	f14027f3          	csrr	a5,mhartid
    80002dd4:	0200c737          	lui	a4,0x200c
    80002dd8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002ddc:	0007869b          	sext.w	a3,a5
    80002de0:	00269713          	slli	a4,a3,0x2
    80002de4:	000f4637          	lui	a2,0xf4
    80002de8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002dec:	00d70733          	add	a4,a4,a3
    80002df0:	0037979b          	slliw	a5,a5,0x3
    80002df4:	020046b7          	lui	a3,0x2004
    80002df8:	00d787b3          	add	a5,a5,a3
    80002dfc:	00c585b3          	add	a1,a1,a2
    80002e00:	00371693          	slli	a3,a4,0x3
    80002e04:	00003717          	auipc	a4,0x3
    80002e08:	09c70713          	addi	a4,a4,156 # 80005ea0 <timer_scratch>
    80002e0c:	00b7b023          	sd	a1,0(a5)
    80002e10:	00d70733          	add	a4,a4,a3
    80002e14:	00f73c23          	sd	a5,24(a4)
    80002e18:	02c73023          	sd	a2,32(a4)
    80002e1c:	34071073          	csrw	mscratch,a4
    80002e20:	00000797          	auipc	a5,0x0
    80002e24:	65078793          	addi	a5,a5,1616 # 80003470 <timervec>
    80002e28:	30579073          	csrw	mtvec,a5
    80002e2c:	300027f3          	csrr	a5,mstatus
    80002e30:	0087e793          	ori	a5,a5,8
    80002e34:	30079073          	csrw	mstatus,a5
    80002e38:	304027f3          	csrr	a5,mie
    80002e3c:	0807e793          	ori	a5,a5,128
    80002e40:	30479073          	csrw	mie,a5
    80002e44:	00813403          	ld	s0,8(sp)
    80002e48:	01010113          	addi	sp,sp,16
    80002e4c:	00008067          	ret

0000000080002e50 <system_main>:
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00813823          	sd	s0,16(sp)
    80002e58:	00913423          	sd	s1,8(sp)
    80002e5c:	00113c23          	sd	ra,24(sp)
    80002e60:	02010413          	addi	s0,sp,32
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	0c4080e7          	jalr	196(ra) # 80002f28 <cpuid>
    80002e6c:	00003497          	auipc	s1,0x3
    80002e70:	fc448493          	addi	s1,s1,-60 # 80005e30 <started>
    80002e74:	02050263          	beqz	a0,80002e98 <system_main+0x48>
    80002e78:	0004a783          	lw	a5,0(s1)
    80002e7c:	0007879b          	sext.w	a5,a5
    80002e80:	fe078ce3          	beqz	a5,80002e78 <system_main+0x28>
    80002e84:	0ff0000f          	fence
    80002e88:	00002517          	auipc	a0,0x2
    80002e8c:	30850513          	addi	a0,a0,776 # 80005190 <_ZZ12printIntegermE6digits+0x40>
    80002e90:	00001097          	auipc	ra,0x1
    80002e94:	a7c080e7          	jalr	-1412(ra) # 8000390c <panic>
    80002e98:	00001097          	auipc	ra,0x1
    80002e9c:	9d0080e7          	jalr	-1584(ra) # 80003868 <consoleinit>
    80002ea0:	00001097          	auipc	ra,0x1
    80002ea4:	15c080e7          	jalr	348(ra) # 80003ffc <printfinit>
    80002ea8:	00002517          	auipc	a0,0x2
    80002eac:	2a050513          	addi	a0,a0,672 # 80005148 <CONSOLE_STATUS+0x138>
    80002eb0:	00001097          	auipc	ra,0x1
    80002eb4:	ab8080e7          	jalr	-1352(ra) # 80003968 <__printf>
    80002eb8:	00002517          	auipc	a0,0x2
    80002ebc:	2a850513          	addi	a0,a0,680 # 80005160 <_ZZ12printIntegermE6digits+0x10>
    80002ec0:	00001097          	auipc	ra,0x1
    80002ec4:	aa8080e7          	jalr	-1368(ra) # 80003968 <__printf>
    80002ec8:	00002517          	auipc	a0,0x2
    80002ecc:	28050513          	addi	a0,a0,640 # 80005148 <CONSOLE_STATUS+0x138>
    80002ed0:	00001097          	auipc	ra,0x1
    80002ed4:	a98080e7          	jalr	-1384(ra) # 80003968 <__printf>
    80002ed8:	00001097          	auipc	ra,0x1
    80002edc:	4b0080e7          	jalr	1200(ra) # 80004388 <kinit>
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	148080e7          	jalr	328(ra) # 80003028 <trapinit>
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	16c080e7          	jalr	364(ra) # 80003054 <trapinithart>
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	5c0080e7          	jalr	1472(ra) # 800034b0 <plicinit>
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	5e0080e7          	jalr	1504(ra) # 800034d8 <plicinithart>
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	078080e7          	jalr	120(ra) # 80002f78 <userinit>
    80002f08:	0ff0000f          	fence
    80002f0c:	00100793          	li	a5,1
    80002f10:	00002517          	auipc	a0,0x2
    80002f14:	26850513          	addi	a0,a0,616 # 80005178 <_ZZ12printIntegermE6digits+0x28>
    80002f18:	00f4a023          	sw	a5,0(s1)
    80002f1c:	00001097          	auipc	ra,0x1
    80002f20:	a4c080e7          	jalr	-1460(ra) # 80003968 <__printf>
    80002f24:	0000006f          	j	80002f24 <system_main+0xd4>

0000000080002f28 <cpuid>:
    80002f28:	ff010113          	addi	sp,sp,-16
    80002f2c:	00813423          	sd	s0,8(sp)
    80002f30:	01010413          	addi	s0,sp,16
    80002f34:	00020513          	mv	a0,tp
    80002f38:	00813403          	ld	s0,8(sp)
    80002f3c:	0005051b          	sext.w	a0,a0
    80002f40:	01010113          	addi	sp,sp,16
    80002f44:	00008067          	ret

0000000080002f48 <mycpu>:
    80002f48:	ff010113          	addi	sp,sp,-16
    80002f4c:	00813423          	sd	s0,8(sp)
    80002f50:	01010413          	addi	s0,sp,16
    80002f54:	00020793          	mv	a5,tp
    80002f58:	00813403          	ld	s0,8(sp)
    80002f5c:	0007879b          	sext.w	a5,a5
    80002f60:	00779793          	slli	a5,a5,0x7
    80002f64:	00004517          	auipc	a0,0x4
    80002f68:	f6c50513          	addi	a0,a0,-148 # 80006ed0 <cpus>
    80002f6c:	00f50533          	add	a0,a0,a5
    80002f70:	01010113          	addi	sp,sp,16
    80002f74:	00008067          	ret

0000000080002f78 <userinit>:
    80002f78:	ff010113          	addi	sp,sp,-16
    80002f7c:	00813423          	sd	s0,8(sp)
    80002f80:	01010413          	addi	s0,sp,16
    80002f84:	00813403          	ld	s0,8(sp)
    80002f88:	01010113          	addi	sp,sp,16
    80002f8c:	fffff317          	auipc	t1,0xfffff
    80002f90:	7d830067          	jr	2008(t1) # 80002764 <main>

0000000080002f94 <either_copyout>:
    80002f94:	ff010113          	addi	sp,sp,-16
    80002f98:	00813023          	sd	s0,0(sp)
    80002f9c:	00113423          	sd	ra,8(sp)
    80002fa0:	01010413          	addi	s0,sp,16
    80002fa4:	02051663          	bnez	a0,80002fd0 <either_copyout+0x3c>
    80002fa8:	00058513          	mv	a0,a1
    80002fac:	00060593          	mv	a1,a2
    80002fb0:	0006861b          	sext.w	a2,a3
    80002fb4:	00002097          	auipc	ra,0x2
    80002fb8:	c60080e7          	jalr	-928(ra) # 80004c14 <__memmove>
    80002fbc:	00813083          	ld	ra,8(sp)
    80002fc0:	00013403          	ld	s0,0(sp)
    80002fc4:	00000513          	li	a0,0
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	00008067          	ret
    80002fd0:	00002517          	auipc	a0,0x2
    80002fd4:	1e850513          	addi	a0,a0,488 # 800051b8 <_ZZ12printIntegermE6digits+0x68>
    80002fd8:	00001097          	auipc	ra,0x1
    80002fdc:	934080e7          	jalr	-1740(ra) # 8000390c <panic>

0000000080002fe0 <either_copyin>:
    80002fe0:	ff010113          	addi	sp,sp,-16
    80002fe4:	00813023          	sd	s0,0(sp)
    80002fe8:	00113423          	sd	ra,8(sp)
    80002fec:	01010413          	addi	s0,sp,16
    80002ff0:	02059463          	bnez	a1,80003018 <either_copyin+0x38>
    80002ff4:	00060593          	mv	a1,a2
    80002ff8:	0006861b          	sext.w	a2,a3
    80002ffc:	00002097          	auipc	ra,0x2
    80003000:	c18080e7          	jalr	-1000(ra) # 80004c14 <__memmove>
    80003004:	00813083          	ld	ra,8(sp)
    80003008:	00013403          	ld	s0,0(sp)
    8000300c:	00000513          	li	a0,0
    80003010:	01010113          	addi	sp,sp,16
    80003014:	00008067          	ret
    80003018:	00002517          	auipc	a0,0x2
    8000301c:	1c850513          	addi	a0,a0,456 # 800051e0 <_ZZ12printIntegermE6digits+0x90>
    80003020:	00001097          	auipc	ra,0x1
    80003024:	8ec080e7          	jalr	-1812(ra) # 8000390c <panic>

0000000080003028 <trapinit>:
    80003028:	ff010113          	addi	sp,sp,-16
    8000302c:	00813423          	sd	s0,8(sp)
    80003030:	01010413          	addi	s0,sp,16
    80003034:	00813403          	ld	s0,8(sp)
    80003038:	00002597          	auipc	a1,0x2
    8000303c:	1d058593          	addi	a1,a1,464 # 80005208 <_ZZ12printIntegermE6digits+0xb8>
    80003040:	00004517          	auipc	a0,0x4
    80003044:	f1050513          	addi	a0,a0,-240 # 80006f50 <tickslock>
    80003048:	01010113          	addi	sp,sp,16
    8000304c:	00001317          	auipc	t1,0x1
    80003050:	5cc30067          	jr	1484(t1) # 80004618 <initlock>

0000000080003054 <trapinithart>:
    80003054:	ff010113          	addi	sp,sp,-16
    80003058:	00813423          	sd	s0,8(sp)
    8000305c:	01010413          	addi	s0,sp,16
    80003060:	00000797          	auipc	a5,0x0
    80003064:	30078793          	addi	a5,a5,768 # 80003360 <kernelvec>
    80003068:	10579073          	csrw	stvec,a5
    8000306c:	00813403          	ld	s0,8(sp)
    80003070:	01010113          	addi	sp,sp,16
    80003074:	00008067          	ret

0000000080003078 <usertrap>:
    80003078:	ff010113          	addi	sp,sp,-16
    8000307c:	00813423          	sd	s0,8(sp)
    80003080:	01010413          	addi	s0,sp,16
    80003084:	00813403          	ld	s0,8(sp)
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00008067          	ret

0000000080003090 <usertrapret>:
    80003090:	ff010113          	addi	sp,sp,-16
    80003094:	00813423          	sd	s0,8(sp)
    80003098:	01010413          	addi	s0,sp,16
    8000309c:	00813403          	ld	s0,8(sp)
    800030a0:	01010113          	addi	sp,sp,16
    800030a4:	00008067          	ret

00000000800030a8 <kerneltrap>:
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00813823          	sd	s0,16(sp)
    800030b0:	00113c23          	sd	ra,24(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    800030bc:	142025f3          	csrr	a1,scause
    800030c0:	100027f3          	csrr	a5,sstatus
    800030c4:	0027f793          	andi	a5,a5,2
    800030c8:	10079c63          	bnez	a5,800031e0 <kerneltrap+0x138>
    800030cc:	142027f3          	csrr	a5,scause
    800030d0:	0207ce63          	bltz	a5,8000310c <kerneltrap+0x64>
    800030d4:	00002517          	auipc	a0,0x2
    800030d8:	17c50513          	addi	a0,a0,380 # 80005250 <_ZZ12printIntegermE6digits+0x100>
    800030dc:	00001097          	auipc	ra,0x1
    800030e0:	88c080e7          	jalr	-1908(ra) # 80003968 <__printf>
    800030e4:	141025f3          	csrr	a1,sepc
    800030e8:	14302673          	csrr	a2,stval
    800030ec:	00002517          	auipc	a0,0x2
    800030f0:	17450513          	addi	a0,a0,372 # 80005260 <_ZZ12printIntegermE6digits+0x110>
    800030f4:	00001097          	auipc	ra,0x1
    800030f8:	874080e7          	jalr	-1932(ra) # 80003968 <__printf>
    800030fc:	00002517          	auipc	a0,0x2
    80003100:	17c50513          	addi	a0,a0,380 # 80005278 <_ZZ12printIntegermE6digits+0x128>
    80003104:	00001097          	auipc	ra,0x1
    80003108:	808080e7          	jalr	-2040(ra) # 8000390c <panic>
    8000310c:	0ff7f713          	andi	a4,a5,255
    80003110:	00900693          	li	a3,9
    80003114:	04d70063          	beq	a4,a3,80003154 <kerneltrap+0xac>
    80003118:	fff00713          	li	a4,-1
    8000311c:	03f71713          	slli	a4,a4,0x3f
    80003120:	00170713          	addi	a4,a4,1
    80003124:	fae798e3          	bne	a5,a4,800030d4 <kerneltrap+0x2c>
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	e00080e7          	jalr	-512(ra) # 80002f28 <cpuid>
    80003130:	06050663          	beqz	a0,8000319c <kerneltrap+0xf4>
    80003134:	144027f3          	csrr	a5,sip
    80003138:	ffd7f793          	andi	a5,a5,-3
    8000313c:	14479073          	csrw	sip,a5
    80003140:	01813083          	ld	ra,24(sp)
    80003144:	01013403          	ld	s0,16(sp)
    80003148:	00813483          	ld	s1,8(sp)
    8000314c:	02010113          	addi	sp,sp,32
    80003150:	00008067          	ret
    80003154:	00000097          	auipc	ra,0x0
    80003158:	3d0080e7          	jalr	976(ra) # 80003524 <plic_claim>
    8000315c:	00a00793          	li	a5,10
    80003160:	00050493          	mv	s1,a0
    80003164:	06f50863          	beq	a0,a5,800031d4 <kerneltrap+0x12c>
    80003168:	fc050ce3          	beqz	a0,80003140 <kerneltrap+0x98>
    8000316c:	00050593          	mv	a1,a0
    80003170:	00002517          	auipc	a0,0x2
    80003174:	0c050513          	addi	a0,a0,192 # 80005230 <_ZZ12printIntegermE6digits+0xe0>
    80003178:	00000097          	auipc	ra,0x0
    8000317c:	7f0080e7          	jalr	2032(ra) # 80003968 <__printf>
    80003180:	01013403          	ld	s0,16(sp)
    80003184:	01813083          	ld	ra,24(sp)
    80003188:	00048513          	mv	a0,s1
    8000318c:	00813483          	ld	s1,8(sp)
    80003190:	02010113          	addi	sp,sp,32
    80003194:	00000317          	auipc	t1,0x0
    80003198:	3c830067          	jr	968(t1) # 8000355c <plic_complete>
    8000319c:	00004517          	auipc	a0,0x4
    800031a0:	db450513          	addi	a0,a0,-588 # 80006f50 <tickslock>
    800031a4:	00001097          	auipc	ra,0x1
    800031a8:	498080e7          	jalr	1176(ra) # 8000463c <acquire>
    800031ac:	00003717          	auipc	a4,0x3
    800031b0:	c8870713          	addi	a4,a4,-888 # 80005e34 <ticks>
    800031b4:	00072783          	lw	a5,0(a4)
    800031b8:	00004517          	auipc	a0,0x4
    800031bc:	d9850513          	addi	a0,a0,-616 # 80006f50 <tickslock>
    800031c0:	0017879b          	addiw	a5,a5,1
    800031c4:	00f72023          	sw	a5,0(a4)
    800031c8:	00001097          	auipc	ra,0x1
    800031cc:	540080e7          	jalr	1344(ra) # 80004708 <release>
    800031d0:	f65ff06f          	j	80003134 <kerneltrap+0x8c>
    800031d4:	00001097          	auipc	ra,0x1
    800031d8:	09c080e7          	jalr	156(ra) # 80004270 <uartintr>
    800031dc:	fa5ff06f          	j	80003180 <kerneltrap+0xd8>
    800031e0:	00002517          	auipc	a0,0x2
    800031e4:	03050513          	addi	a0,a0,48 # 80005210 <_ZZ12printIntegermE6digits+0xc0>
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	724080e7          	jalr	1828(ra) # 8000390c <panic>

00000000800031f0 <clockintr>:
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00813823          	sd	s0,16(sp)
    800031f8:	00913423          	sd	s1,8(sp)
    800031fc:	00113c23          	sd	ra,24(sp)
    80003200:	02010413          	addi	s0,sp,32
    80003204:	00004497          	auipc	s1,0x4
    80003208:	d4c48493          	addi	s1,s1,-692 # 80006f50 <tickslock>
    8000320c:	00048513          	mv	a0,s1
    80003210:	00001097          	auipc	ra,0x1
    80003214:	42c080e7          	jalr	1068(ra) # 8000463c <acquire>
    80003218:	00003717          	auipc	a4,0x3
    8000321c:	c1c70713          	addi	a4,a4,-996 # 80005e34 <ticks>
    80003220:	00072783          	lw	a5,0(a4)
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	01813083          	ld	ra,24(sp)
    8000322c:	00048513          	mv	a0,s1
    80003230:	0017879b          	addiw	a5,a5,1
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	00f72023          	sw	a5,0(a4)
    8000323c:	02010113          	addi	sp,sp,32
    80003240:	00001317          	auipc	t1,0x1
    80003244:	4c830067          	jr	1224(t1) # 80004708 <release>

0000000080003248 <devintr>:
    80003248:	142027f3          	csrr	a5,scause
    8000324c:	00000513          	li	a0,0
    80003250:	0007c463          	bltz	a5,80003258 <devintr+0x10>
    80003254:	00008067          	ret
    80003258:	fe010113          	addi	sp,sp,-32
    8000325c:	00813823          	sd	s0,16(sp)
    80003260:	00113c23          	sd	ra,24(sp)
    80003264:	00913423          	sd	s1,8(sp)
    80003268:	02010413          	addi	s0,sp,32
    8000326c:	0ff7f713          	andi	a4,a5,255
    80003270:	00900693          	li	a3,9
    80003274:	04d70c63          	beq	a4,a3,800032cc <devintr+0x84>
    80003278:	fff00713          	li	a4,-1
    8000327c:	03f71713          	slli	a4,a4,0x3f
    80003280:	00170713          	addi	a4,a4,1
    80003284:	00e78c63          	beq	a5,a4,8000329c <devintr+0x54>
    80003288:	01813083          	ld	ra,24(sp)
    8000328c:	01013403          	ld	s0,16(sp)
    80003290:	00813483          	ld	s1,8(sp)
    80003294:	02010113          	addi	sp,sp,32
    80003298:	00008067          	ret
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	c8c080e7          	jalr	-884(ra) # 80002f28 <cpuid>
    800032a4:	06050663          	beqz	a0,80003310 <devintr+0xc8>
    800032a8:	144027f3          	csrr	a5,sip
    800032ac:	ffd7f793          	andi	a5,a5,-3
    800032b0:	14479073          	csrw	sip,a5
    800032b4:	01813083          	ld	ra,24(sp)
    800032b8:	01013403          	ld	s0,16(sp)
    800032bc:	00813483          	ld	s1,8(sp)
    800032c0:	00200513          	li	a0,2
    800032c4:	02010113          	addi	sp,sp,32
    800032c8:	00008067          	ret
    800032cc:	00000097          	auipc	ra,0x0
    800032d0:	258080e7          	jalr	600(ra) # 80003524 <plic_claim>
    800032d4:	00a00793          	li	a5,10
    800032d8:	00050493          	mv	s1,a0
    800032dc:	06f50663          	beq	a0,a5,80003348 <devintr+0x100>
    800032e0:	00100513          	li	a0,1
    800032e4:	fa0482e3          	beqz	s1,80003288 <devintr+0x40>
    800032e8:	00048593          	mv	a1,s1
    800032ec:	00002517          	auipc	a0,0x2
    800032f0:	f4450513          	addi	a0,a0,-188 # 80005230 <_ZZ12printIntegermE6digits+0xe0>
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	674080e7          	jalr	1652(ra) # 80003968 <__printf>
    800032fc:	00048513          	mv	a0,s1
    80003300:	00000097          	auipc	ra,0x0
    80003304:	25c080e7          	jalr	604(ra) # 8000355c <plic_complete>
    80003308:	00100513          	li	a0,1
    8000330c:	f7dff06f          	j	80003288 <devintr+0x40>
    80003310:	00004517          	auipc	a0,0x4
    80003314:	c4050513          	addi	a0,a0,-960 # 80006f50 <tickslock>
    80003318:	00001097          	auipc	ra,0x1
    8000331c:	324080e7          	jalr	804(ra) # 8000463c <acquire>
    80003320:	00003717          	auipc	a4,0x3
    80003324:	b1470713          	addi	a4,a4,-1260 # 80005e34 <ticks>
    80003328:	00072783          	lw	a5,0(a4)
    8000332c:	00004517          	auipc	a0,0x4
    80003330:	c2450513          	addi	a0,a0,-988 # 80006f50 <tickslock>
    80003334:	0017879b          	addiw	a5,a5,1
    80003338:	00f72023          	sw	a5,0(a4)
    8000333c:	00001097          	auipc	ra,0x1
    80003340:	3cc080e7          	jalr	972(ra) # 80004708 <release>
    80003344:	f65ff06f          	j	800032a8 <devintr+0x60>
    80003348:	00001097          	auipc	ra,0x1
    8000334c:	f28080e7          	jalr	-216(ra) # 80004270 <uartintr>
    80003350:	fadff06f          	j	800032fc <devintr+0xb4>
	...

0000000080003360 <kernelvec>:
    80003360:	f0010113          	addi	sp,sp,-256
    80003364:	00113023          	sd	ra,0(sp)
    80003368:	00213423          	sd	sp,8(sp)
    8000336c:	00313823          	sd	gp,16(sp)
    80003370:	00413c23          	sd	tp,24(sp)
    80003374:	02513023          	sd	t0,32(sp)
    80003378:	02613423          	sd	t1,40(sp)
    8000337c:	02713823          	sd	t2,48(sp)
    80003380:	02813c23          	sd	s0,56(sp)
    80003384:	04913023          	sd	s1,64(sp)
    80003388:	04a13423          	sd	a0,72(sp)
    8000338c:	04b13823          	sd	a1,80(sp)
    80003390:	04c13c23          	sd	a2,88(sp)
    80003394:	06d13023          	sd	a3,96(sp)
    80003398:	06e13423          	sd	a4,104(sp)
    8000339c:	06f13823          	sd	a5,112(sp)
    800033a0:	07013c23          	sd	a6,120(sp)
    800033a4:	09113023          	sd	a7,128(sp)
    800033a8:	09213423          	sd	s2,136(sp)
    800033ac:	09313823          	sd	s3,144(sp)
    800033b0:	09413c23          	sd	s4,152(sp)
    800033b4:	0b513023          	sd	s5,160(sp)
    800033b8:	0b613423          	sd	s6,168(sp)
    800033bc:	0b713823          	sd	s7,176(sp)
    800033c0:	0b813c23          	sd	s8,184(sp)
    800033c4:	0d913023          	sd	s9,192(sp)
    800033c8:	0da13423          	sd	s10,200(sp)
    800033cc:	0db13823          	sd	s11,208(sp)
    800033d0:	0dc13c23          	sd	t3,216(sp)
    800033d4:	0fd13023          	sd	t4,224(sp)
    800033d8:	0fe13423          	sd	t5,232(sp)
    800033dc:	0ff13823          	sd	t6,240(sp)
    800033e0:	cc9ff0ef          	jal	ra,800030a8 <kerneltrap>
    800033e4:	00013083          	ld	ra,0(sp)
    800033e8:	00813103          	ld	sp,8(sp)
    800033ec:	01013183          	ld	gp,16(sp)
    800033f0:	02013283          	ld	t0,32(sp)
    800033f4:	02813303          	ld	t1,40(sp)
    800033f8:	03013383          	ld	t2,48(sp)
    800033fc:	03813403          	ld	s0,56(sp)
    80003400:	04013483          	ld	s1,64(sp)
    80003404:	04813503          	ld	a0,72(sp)
    80003408:	05013583          	ld	a1,80(sp)
    8000340c:	05813603          	ld	a2,88(sp)
    80003410:	06013683          	ld	a3,96(sp)
    80003414:	06813703          	ld	a4,104(sp)
    80003418:	07013783          	ld	a5,112(sp)
    8000341c:	07813803          	ld	a6,120(sp)
    80003420:	08013883          	ld	a7,128(sp)
    80003424:	08813903          	ld	s2,136(sp)
    80003428:	09013983          	ld	s3,144(sp)
    8000342c:	09813a03          	ld	s4,152(sp)
    80003430:	0a013a83          	ld	s5,160(sp)
    80003434:	0a813b03          	ld	s6,168(sp)
    80003438:	0b013b83          	ld	s7,176(sp)
    8000343c:	0b813c03          	ld	s8,184(sp)
    80003440:	0c013c83          	ld	s9,192(sp)
    80003444:	0c813d03          	ld	s10,200(sp)
    80003448:	0d013d83          	ld	s11,208(sp)
    8000344c:	0d813e03          	ld	t3,216(sp)
    80003450:	0e013e83          	ld	t4,224(sp)
    80003454:	0e813f03          	ld	t5,232(sp)
    80003458:	0f013f83          	ld	t6,240(sp)
    8000345c:	10010113          	addi	sp,sp,256
    80003460:	10200073          	sret
    80003464:	00000013          	nop
    80003468:	00000013          	nop
    8000346c:	00000013          	nop

0000000080003470 <timervec>:
    80003470:	34051573          	csrrw	a0,mscratch,a0
    80003474:	00b53023          	sd	a1,0(a0)
    80003478:	00c53423          	sd	a2,8(a0)
    8000347c:	00d53823          	sd	a3,16(a0)
    80003480:	01853583          	ld	a1,24(a0)
    80003484:	02053603          	ld	a2,32(a0)
    80003488:	0005b683          	ld	a3,0(a1)
    8000348c:	00c686b3          	add	a3,a3,a2
    80003490:	00d5b023          	sd	a3,0(a1)
    80003494:	00200593          	li	a1,2
    80003498:	14459073          	csrw	sip,a1
    8000349c:	01053683          	ld	a3,16(a0)
    800034a0:	00853603          	ld	a2,8(a0)
    800034a4:	00053583          	ld	a1,0(a0)
    800034a8:	34051573          	csrrw	a0,mscratch,a0
    800034ac:	30200073          	mret

00000000800034b0 <plicinit>:
    800034b0:	ff010113          	addi	sp,sp,-16
    800034b4:	00813423          	sd	s0,8(sp)
    800034b8:	01010413          	addi	s0,sp,16
    800034bc:	00813403          	ld	s0,8(sp)
    800034c0:	0c0007b7          	lui	a5,0xc000
    800034c4:	00100713          	li	a4,1
    800034c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800034cc:	00e7a223          	sw	a4,4(a5)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret

00000000800034d8 <plicinithart>:
    800034d8:	ff010113          	addi	sp,sp,-16
    800034dc:	00813023          	sd	s0,0(sp)
    800034e0:	00113423          	sd	ra,8(sp)
    800034e4:	01010413          	addi	s0,sp,16
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	a40080e7          	jalr	-1472(ra) # 80002f28 <cpuid>
    800034f0:	0085171b          	slliw	a4,a0,0x8
    800034f4:	0c0027b7          	lui	a5,0xc002
    800034f8:	00e787b3          	add	a5,a5,a4
    800034fc:	40200713          	li	a4,1026
    80003500:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003504:	00813083          	ld	ra,8(sp)
    80003508:	00013403          	ld	s0,0(sp)
    8000350c:	00d5151b          	slliw	a0,a0,0xd
    80003510:	0c2017b7          	lui	a5,0xc201
    80003514:	00a78533          	add	a0,a5,a0
    80003518:	00052023          	sw	zero,0(a0)
    8000351c:	01010113          	addi	sp,sp,16
    80003520:	00008067          	ret

0000000080003524 <plic_claim>:
    80003524:	ff010113          	addi	sp,sp,-16
    80003528:	00813023          	sd	s0,0(sp)
    8000352c:	00113423          	sd	ra,8(sp)
    80003530:	01010413          	addi	s0,sp,16
    80003534:	00000097          	auipc	ra,0x0
    80003538:	9f4080e7          	jalr	-1548(ra) # 80002f28 <cpuid>
    8000353c:	00813083          	ld	ra,8(sp)
    80003540:	00013403          	ld	s0,0(sp)
    80003544:	00d5151b          	slliw	a0,a0,0xd
    80003548:	0c2017b7          	lui	a5,0xc201
    8000354c:	00a78533          	add	a0,a5,a0
    80003550:	00452503          	lw	a0,4(a0)
    80003554:	01010113          	addi	sp,sp,16
    80003558:	00008067          	ret

000000008000355c <plic_complete>:
    8000355c:	fe010113          	addi	sp,sp,-32
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	00113c23          	sd	ra,24(sp)
    8000356c:	02010413          	addi	s0,sp,32
    80003570:	00050493          	mv	s1,a0
    80003574:	00000097          	auipc	ra,0x0
    80003578:	9b4080e7          	jalr	-1612(ra) # 80002f28 <cpuid>
    8000357c:	01813083          	ld	ra,24(sp)
    80003580:	01013403          	ld	s0,16(sp)
    80003584:	00d5179b          	slliw	a5,a0,0xd
    80003588:	0c201737          	lui	a4,0xc201
    8000358c:	00f707b3          	add	a5,a4,a5
    80003590:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003594:	00813483          	ld	s1,8(sp)
    80003598:	02010113          	addi	sp,sp,32
    8000359c:	00008067          	ret

00000000800035a0 <consolewrite>:
    800035a0:	fb010113          	addi	sp,sp,-80
    800035a4:	04813023          	sd	s0,64(sp)
    800035a8:	04113423          	sd	ra,72(sp)
    800035ac:	02913c23          	sd	s1,56(sp)
    800035b0:	03213823          	sd	s2,48(sp)
    800035b4:	03313423          	sd	s3,40(sp)
    800035b8:	03413023          	sd	s4,32(sp)
    800035bc:	01513c23          	sd	s5,24(sp)
    800035c0:	05010413          	addi	s0,sp,80
    800035c4:	06c05c63          	blez	a2,8000363c <consolewrite+0x9c>
    800035c8:	00060993          	mv	s3,a2
    800035cc:	00050a13          	mv	s4,a0
    800035d0:	00058493          	mv	s1,a1
    800035d4:	00000913          	li	s2,0
    800035d8:	fff00a93          	li	s5,-1
    800035dc:	01c0006f          	j	800035f8 <consolewrite+0x58>
    800035e0:	fbf44503          	lbu	a0,-65(s0)
    800035e4:	0019091b          	addiw	s2,s2,1
    800035e8:	00148493          	addi	s1,s1,1
    800035ec:	00001097          	auipc	ra,0x1
    800035f0:	a9c080e7          	jalr	-1380(ra) # 80004088 <uartputc>
    800035f4:	03298063          	beq	s3,s2,80003614 <consolewrite+0x74>
    800035f8:	00048613          	mv	a2,s1
    800035fc:	00100693          	li	a3,1
    80003600:	000a0593          	mv	a1,s4
    80003604:	fbf40513          	addi	a0,s0,-65
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	9d8080e7          	jalr	-1576(ra) # 80002fe0 <either_copyin>
    80003610:	fd5518e3          	bne	a0,s5,800035e0 <consolewrite+0x40>
    80003614:	04813083          	ld	ra,72(sp)
    80003618:	04013403          	ld	s0,64(sp)
    8000361c:	03813483          	ld	s1,56(sp)
    80003620:	02813983          	ld	s3,40(sp)
    80003624:	02013a03          	ld	s4,32(sp)
    80003628:	01813a83          	ld	s5,24(sp)
    8000362c:	00090513          	mv	a0,s2
    80003630:	03013903          	ld	s2,48(sp)
    80003634:	05010113          	addi	sp,sp,80
    80003638:	00008067          	ret
    8000363c:	00000913          	li	s2,0
    80003640:	fd5ff06f          	j	80003614 <consolewrite+0x74>

0000000080003644 <consoleread>:
    80003644:	f9010113          	addi	sp,sp,-112
    80003648:	06813023          	sd	s0,96(sp)
    8000364c:	04913c23          	sd	s1,88(sp)
    80003650:	05213823          	sd	s2,80(sp)
    80003654:	05313423          	sd	s3,72(sp)
    80003658:	05413023          	sd	s4,64(sp)
    8000365c:	03513c23          	sd	s5,56(sp)
    80003660:	03613823          	sd	s6,48(sp)
    80003664:	03713423          	sd	s7,40(sp)
    80003668:	03813023          	sd	s8,32(sp)
    8000366c:	06113423          	sd	ra,104(sp)
    80003670:	01913c23          	sd	s9,24(sp)
    80003674:	07010413          	addi	s0,sp,112
    80003678:	00060b93          	mv	s7,a2
    8000367c:	00050913          	mv	s2,a0
    80003680:	00058c13          	mv	s8,a1
    80003684:	00060b1b          	sext.w	s6,a2
    80003688:	00004497          	auipc	s1,0x4
    8000368c:	8f048493          	addi	s1,s1,-1808 # 80006f78 <cons>
    80003690:	00400993          	li	s3,4
    80003694:	fff00a13          	li	s4,-1
    80003698:	00a00a93          	li	s5,10
    8000369c:	05705e63          	blez	s7,800036f8 <consoleread+0xb4>
    800036a0:	09c4a703          	lw	a4,156(s1)
    800036a4:	0984a783          	lw	a5,152(s1)
    800036a8:	0007071b          	sext.w	a4,a4
    800036ac:	08e78463          	beq	a5,a4,80003734 <consoleread+0xf0>
    800036b0:	07f7f713          	andi	a4,a5,127
    800036b4:	00e48733          	add	a4,s1,a4
    800036b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800036bc:	0017869b          	addiw	a3,a5,1
    800036c0:	08d4ac23          	sw	a3,152(s1)
    800036c4:	00070c9b          	sext.w	s9,a4
    800036c8:	0b370663          	beq	a4,s3,80003774 <consoleread+0x130>
    800036cc:	00100693          	li	a3,1
    800036d0:	f9f40613          	addi	a2,s0,-97
    800036d4:	000c0593          	mv	a1,s8
    800036d8:	00090513          	mv	a0,s2
    800036dc:	f8e40fa3          	sb	a4,-97(s0)
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	8b4080e7          	jalr	-1868(ra) # 80002f94 <either_copyout>
    800036e8:	01450863          	beq	a0,s4,800036f8 <consoleread+0xb4>
    800036ec:	001c0c13          	addi	s8,s8,1
    800036f0:	fffb8b9b          	addiw	s7,s7,-1
    800036f4:	fb5c94e3          	bne	s9,s5,8000369c <consoleread+0x58>
    800036f8:	000b851b          	sext.w	a0,s7
    800036fc:	06813083          	ld	ra,104(sp)
    80003700:	06013403          	ld	s0,96(sp)
    80003704:	05813483          	ld	s1,88(sp)
    80003708:	05013903          	ld	s2,80(sp)
    8000370c:	04813983          	ld	s3,72(sp)
    80003710:	04013a03          	ld	s4,64(sp)
    80003714:	03813a83          	ld	s5,56(sp)
    80003718:	02813b83          	ld	s7,40(sp)
    8000371c:	02013c03          	ld	s8,32(sp)
    80003720:	01813c83          	ld	s9,24(sp)
    80003724:	40ab053b          	subw	a0,s6,a0
    80003728:	03013b03          	ld	s6,48(sp)
    8000372c:	07010113          	addi	sp,sp,112
    80003730:	00008067          	ret
    80003734:	00001097          	auipc	ra,0x1
    80003738:	1d8080e7          	jalr	472(ra) # 8000490c <push_on>
    8000373c:	0984a703          	lw	a4,152(s1)
    80003740:	09c4a783          	lw	a5,156(s1)
    80003744:	0007879b          	sext.w	a5,a5
    80003748:	fef70ce3          	beq	a4,a5,80003740 <consoleread+0xfc>
    8000374c:	00001097          	auipc	ra,0x1
    80003750:	234080e7          	jalr	564(ra) # 80004980 <pop_on>
    80003754:	0984a783          	lw	a5,152(s1)
    80003758:	07f7f713          	andi	a4,a5,127
    8000375c:	00e48733          	add	a4,s1,a4
    80003760:	01874703          	lbu	a4,24(a4)
    80003764:	0017869b          	addiw	a3,a5,1
    80003768:	08d4ac23          	sw	a3,152(s1)
    8000376c:	00070c9b          	sext.w	s9,a4
    80003770:	f5371ee3          	bne	a4,s3,800036cc <consoleread+0x88>
    80003774:	000b851b          	sext.w	a0,s7
    80003778:	f96bf2e3          	bgeu	s7,s6,800036fc <consoleread+0xb8>
    8000377c:	08f4ac23          	sw	a5,152(s1)
    80003780:	f7dff06f          	j	800036fc <consoleread+0xb8>

0000000080003784 <consputc>:
    80003784:	10000793          	li	a5,256
    80003788:	00f50663          	beq	a0,a5,80003794 <consputc+0x10>
    8000378c:	00001317          	auipc	t1,0x1
    80003790:	9f430067          	jr	-1548(t1) # 80004180 <uartputc_sync>
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	00813023          	sd	s0,0(sp)
    800037a0:	01010413          	addi	s0,sp,16
    800037a4:	00800513          	li	a0,8
    800037a8:	00001097          	auipc	ra,0x1
    800037ac:	9d8080e7          	jalr	-1576(ra) # 80004180 <uartputc_sync>
    800037b0:	02000513          	li	a0,32
    800037b4:	00001097          	auipc	ra,0x1
    800037b8:	9cc080e7          	jalr	-1588(ra) # 80004180 <uartputc_sync>
    800037bc:	00013403          	ld	s0,0(sp)
    800037c0:	00813083          	ld	ra,8(sp)
    800037c4:	00800513          	li	a0,8
    800037c8:	01010113          	addi	sp,sp,16
    800037cc:	00001317          	auipc	t1,0x1
    800037d0:	9b430067          	jr	-1612(t1) # 80004180 <uartputc_sync>

00000000800037d4 <consoleintr>:
    800037d4:	fe010113          	addi	sp,sp,-32
    800037d8:	00813823          	sd	s0,16(sp)
    800037dc:	00913423          	sd	s1,8(sp)
    800037e0:	01213023          	sd	s2,0(sp)
    800037e4:	00113c23          	sd	ra,24(sp)
    800037e8:	02010413          	addi	s0,sp,32
    800037ec:	00003917          	auipc	s2,0x3
    800037f0:	78c90913          	addi	s2,s2,1932 # 80006f78 <cons>
    800037f4:	00050493          	mv	s1,a0
    800037f8:	00090513          	mv	a0,s2
    800037fc:	00001097          	auipc	ra,0x1
    80003800:	e40080e7          	jalr	-448(ra) # 8000463c <acquire>
    80003804:	02048c63          	beqz	s1,8000383c <consoleintr+0x68>
    80003808:	0a092783          	lw	a5,160(s2)
    8000380c:	09892703          	lw	a4,152(s2)
    80003810:	07f00693          	li	a3,127
    80003814:	40e7873b          	subw	a4,a5,a4
    80003818:	02e6e263          	bltu	a3,a4,8000383c <consoleintr+0x68>
    8000381c:	00d00713          	li	a4,13
    80003820:	04e48063          	beq	s1,a4,80003860 <consoleintr+0x8c>
    80003824:	07f7f713          	andi	a4,a5,127
    80003828:	00e90733          	add	a4,s2,a4
    8000382c:	0017879b          	addiw	a5,a5,1
    80003830:	0af92023          	sw	a5,160(s2)
    80003834:	00970c23          	sb	s1,24(a4)
    80003838:	08f92e23          	sw	a5,156(s2)
    8000383c:	01013403          	ld	s0,16(sp)
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	00813483          	ld	s1,8(sp)
    80003848:	00013903          	ld	s2,0(sp)
    8000384c:	00003517          	auipc	a0,0x3
    80003850:	72c50513          	addi	a0,a0,1836 # 80006f78 <cons>
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00001317          	auipc	t1,0x1
    8000385c:	eb030067          	jr	-336(t1) # 80004708 <release>
    80003860:	00a00493          	li	s1,10
    80003864:	fc1ff06f          	j	80003824 <consoleintr+0x50>

0000000080003868 <consoleinit>:
    80003868:	fe010113          	addi	sp,sp,-32
    8000386c:	00113c23          	sd	ra,24(sp)
    80003870:	00813823          	sd	s0,16(sp)
    80003874:	00913423          	sd	s1,8(sp)
    80003878:	02010413          	addi	s0,sp,32
    8000387c:	00003497          	auipc	s1,0x3
    80003880:	6fc48493          	addi	s1,s1,1788 # 80006f78 <cons>
    80003884:	00048513          	mv	a0,s1
    80003888:	00002597          	auipc	a1,0x2
    8000388c:	a0058593          	addi	a1,a1,-1536 # 80005288 <_ZZ12printIntegermE6digits+0x138>
    80003890:	00001097          	auipc	ra,0x1
    80003894:	d88080e7          	jalr	-632(ra) # 80004618 <initlock>
    80003898:	00000097          	auipc	ra,0x0
    8000389c:	7ac080e7          	jalr	1964(ra) # 80004044 <uartinit>
    800038a0:	01813083          	ld	ra,24(sp)
    800038a4:	01013403          	ld	s0,16(sp)
    800038a8:	00000797          	auipc	a5,0x0
    800038ac:	d9c78793          	addi	a5,a5,-612 # 80003644 <consoleread>
    800038b0:	0af4bc23          	sd	a5,184(s1)
    800038b4:	00000797          	auipc	a5,0x0
    800038b8:	cec78793          	addi	a5,a5,-788 # 800035a0 <consolewrite>
    800038bc:	0cf4b023          	sd	a5,192(s1)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret

00000000800038cc <console_read>:
    800038cc:	ff010113          	addi	sp,sp,-16
    800038d0:	00813423          	sd	s0,8(sp)
    800038d4:	01010413          	addi	s0,sp,16
    800038d8:	00813403          	ld	s0,8(sp)
    800038dc:	00003317          	auipc	t1,0x3
    800038e0:	75433303          	ld	t1,1876(t1) # 80007030 <devsw+0x10>
    800038e4:	01010113          	addi	sp,sp,16
    800038e8:	00030067          	jr	t1

00000000800038ec <console_write>:
    800038ec:	ff010113          	addi	sp,sp,-16
    800038f0:	00813423          	sd	s0,8(sp)
    800038f4:	01010413          	addi	s0,sp,16
    800038f8:	00813403          	ld	s0,8(sp)
    800038fc:	00003317          	auipc	t1,0x3
    80003900:	73c33303          	ld	t1,1852(t1) # 80007038 <devsw+0x18>
    80003904:	01010113          	addi	sp,sp,16
    80003908:	00030067          	jr	t1

000000008000390c <panic>:
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00113c23          	sd	ra,24(sp)
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00913423          	sd	s1,8(sp)
    8000391c:	02010413          	addi	s0,sp,32
    80003920:	00050493          	mv	s1,a0
    80003924:	00002517          	auipc	a0,0x2
    80003928:	96c50513          	addi	a0,a0,-1684 # 80005290 <_ZZ12printIntegermE6digits+0x140>
    8000392c:	00003797          	auipc	a5,0x3
    80003930:	7a07a623          	sw	zero,1964(a5) # 800070d8 <pr+0x18>
    80003934:	00000097          	auipc	ra,0x0
    80003938:	034080e7          	jalr	52(ra) # 80003968 <__printf>
    8000393c:	00048513          	mv	a0,s1
    80003940:	00000097          	auipc	ra,0x0
    80003944:	028080e7          	jalr	40(ra) # 80003968 <__printf>
    80003948:	00002517          	auipc	a0,0x2
    8000394c:	80050513          	addi	a0,a0,-2048 # 80005148 <CONSOLE_STATUS+0x138>
    80003950:	00000097          	auipc	ra,0x0
    80003954:	018080e7          	jalr	24(ra) # 80003968 <__printf>
    80003958:	00100793          	li	a5,1
    8000395c:	00002717          	auipc	a4,0x2
    80003960:	4cf72e23          	sw	a5,1244(a4) # 80005e38 <panicked>
    80003964:	0000006f          	j	80003964 <panic+0x58>

0000000080003968 <__printf>:
    80003968:	f3010113          	addi	sp,sp,-208
    8000396c:	08813023          	sd	s0,128(sp)
    80003970:	07313423          	sd	s3,104(sp)
    80003974:	09010413          	addi	s0,sp,144
    80003978:	05813023          	sd	s8,64(sp)
    8000397c:	08113423          	sd	ra,136(sp)
    80003980:	06913c23          	sd	s1,120(sp)
    80003984:	07213823          	sd	s2,112(sp)
    80003988:	07413023          	sd	s4,96(sp)
    8000398c:	05513c23          	sd	s5,88(sp)
    80003990:	05613823          	sd	s6,80(sp)
    80003994:	05713423          	sd	s7,72(sp)
    80003998:	03913c23          	sd	s9,56(sp)
    8000399c:	03a13823          	sd	s10,48(sp)
    800039a0:	03b13423          	sd	s11,40(sp)
    800039a4:	00003317          	auipc	t1,0x3
    800039a8:	71c30313          	addi	t1,t1,1820 # 800070c0 <pr>
    800039ac:	01832c03          	lw	s8,24(t1)
    800039b0:	00b43423          	sd	a1,8(s0)
    800039b4:	00c43823          	sd	a2,16(s0)
    800039b8:	00d43c23          	sd	a3,24(s0)
    800039bc:	02e43023          	sd	a4,32(s0)
    800039c0:	02f43423          	sd	a5,40(s0)
    800039c4:	03043823          	sd	a6,48(s0)
    800039c8:	03143c23          	sd	a7,56(s0)
    800039cc:	00050993          	mv	s3,a0
    800039d0:	4a0c1663          	bnez	s8,80003e7c <__printf+0x514>
    800039d4:	60098c63          	beqz	s3,80003fec <__printf+0x684>
    800039d8:	0009c503          	lbu	a0,0(s3)
    800039dc:	00840793          	addi	a5,s0,8
    800039e0:	f6f43c23          	sd	a5,-136(s0)
    800039e4:	00000493          	li	s1,0
    800039e8:	22050063          	beqz	a0,80003c08 <__printf+0x2a0>
    800039ec:	00002a37          	lui	s4,0x2
    800039f0:	00018ab7          	lui	s5,0x18
    800039f4:	000f4b37          	lui	s6,0xf4
    800039f8:	00989bb7          	lui	s7,0x989
    800039fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003a00:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003a04:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003a08:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003a0c:	00148c9b          	addiw	s9,s1,1
    80003a10:	02500793          	li	a5,37
    80003a14:	01998933          	add	s2,s3,s9
    80003a18:	38f51263          	bne	a0,a5,80003d9c <__printf+0x434>
    80003a1c:	00094783          	lbu	a5,0(s2)
    80003a20:	00078c9b          	sext.w	s9,a5
    80003a24:	1e078263          	beqz	a5,80003c08 <__printf+0x2a0>
    80003a28:	0024849b          	addiw	s1,s1,2
    80003a2c:	07000713          	li	a4,112
    80003a30:	00998933          	add	s2,s3,s1
    80003a34:	38e78a63          	beq	a5,a4,80003dc8 <__printf+0x460>
    80003a38:	20f76863          	bltu	a4,a5,80003c48 <__printf+0x2e0>
    80003a3c:	42a78863          	beq	a5,a0,80003e6c <__printf+0x504>
    80003a40:	06400713          	li	a4,100
    80003a44:	40e79663          	bne	a5,a4,80003e50 <__printf+0x4e8>
    80003a48:	f7843783          	ld	a5,-136(s0)
    80003a4c:	0007a603          	lw	a2,0(a5)
    80003a50:	00878793          	addi	a5,a5,8
    80003a54:	f6f43c23          	sd	a5,-136(s0)
    80003a58:	42064a63          	bltz	a2,80003e8c <__printf+0x524>
    80003a5c:	00a00713          	li	a4,10
    80003a60:	02e677bb          	remuw	a5,a2,a4
    80003a64:	00002d97          	auipc	s11,0x2
    80003a68:	854d8d93          	addi	s11,s11,-1964 # 800052b8 <digits>
    80003a6c:	00900593          	li	a1,9
    80003a70:	0006051b          	sext.w	a0,a2
    80003a74:	00000c93          	li	s9,0
    80003a78:	02079793          	slli	a5,a5,0x20
    80003a7c:	0207d793          	srli	a5,a5,0x20
    80003a80:	00fd87b3          	add	a5,s11,a5
    80003a84:	0007c783          	lbu	a5,0(a5)
    80003a88:	02e656bb          	divuw	a3,a2,a4
    80003a8c:	f8f40023          	sb	a5,-128(s0)
    80003a90:	14c5d863          	bge	a1,a2,80003be0 <__printf+0x278>
    80003a94:	06300593          	li	a1,99
    80003a98:	00100c93          	li	s9,1
    80003a9c:	02e6f7bb          	remuw	a5,a3,a4
    80003aa0:	02079793          	slli	a5,a5,0x20
    80003aa4:	0207d793          	srli	a5,a5,0x20
    80003aa8:	00fd87b3          	add	a5,s11,a5
    80003aac:	0007c783          	lbu	a5,0(a5)
    80003ab0:	02e6d73b          	divuw	a4,a3,a4
    80003ab4:	f8f400a3          	sb	a5,-127(s0)
    80003ab8:	12a5f463          	bgeu	a1,a0,80003be0 <__printf+0x278>
    80003abc:	00a00693          	li	a3,10
    80003ac0:	00900593          	li	a1,9
    80003ac4:	02d777bb          	remuw	a5,a4,a3
    80003ac8:	02079793          	slli	a5,a5,0x20
    80003acc:	0207d793          	srli	a5,a5,0x20
    80003ad0:	00fd87b3          	add	a5,s11,a5
    80003ad4:	0007c503          	lbu	a0,0(a5)
    80003ad8:	02d757bb          	divuw	a5,a4,a3
    80003adc:	f8a40123          	sb	a0,-126(s0)
    80003ae0:	48e5f263          	bgeu	a1,a4,80003f64 <__printf+0x5fc>
    80003ae4:	06300513          	li	a0,99
    80003ae8:	02d7f5bb          	remuw	a1,a5,a3
    80003aec:	02059593          	slli	a1,a1,0x20
    80003af0:	0205d593          	srli	a1,a1,0x20
    80003af4:	00bd85b3          	add	a1,s11,a1
    80003af8:	0005c583          	lbu	a1,0(a1)
    80003afc:	02d7d7bb          	divuw	a5,a5,a3
    80003b00:	f8b401a3          	sb	a1,-125(s0)
    80003b04:	48e57263          	bgeu	a0,a4,80003f88 <__printf+0x620>
    80003b08:	3e700513          	li	a0,999
    80003b0c:	02d7f5bb          	remuw	a1,a5,a3
    80003b10:	02059593          	slli	a1,a1,0x20
    80003b14:	0205d593          	srli	a1,a1,0x20
    80003b18:	00bd85b3          	add	a1,s11,a1
    80003b1c:	0005c583          	lbu	a1,0(a1)
    80003b20:	02d7d7bb          	divuw	a5,a5,a3
    80003b24:	f8b40223          	sb	a1,-124(s0)
    80003b28:	46e57663          	bgeu	a0,a4,80003f94 <__printf+0x62c>
    80003b2c:	02d7f5bb          	remuw	a1,a5,a3
    80003b30:	02059593          	slli	a1,a1,0x20
    80003b34:	0205d593          	srli	a1,a1,0x20
    80003b38:	00bd85b3          	add	a1,s11,a1
    80003b3c:	0005c583          	lbu	a1,0(a1)
    80003b40:	02d7d7bb          	divuw	a5,a5,a3
    80003b44:	f8b402a3          	sb	a1,-123(s0)
    80003b48:	46ea7863          	bgeu	s4,a4,80003fb8 <__printf+0x650>
    80003b4c:	02d7f5bb          	remuw	a1,a5,a3
    80003b50:	02059593          	slli	a1,a1,0x20
    80003b54:	0205d593          	srli	a1,a1,0x20
    80003b58:	00bd85b3          	add	a1,s11,a1
    80003b5c:	0005c583          	lbu	a1,0(a1)
    80003b60:	02d7d7bb          	divuw	a5,a5,a3
    80003b64:	f8b40323          	sb	a1,-122(s0)
    80003b68:	3eeaf863          	bgeu	s5,a4,80003f58 <__printf+0x5f0>
    80003b6c:	02d7f5bb          	remuw	a1,a5,a3
    80003b70:	02059593          	slli	a1,a1,0x20
    80003b74:	0205d593          	srli	a1,a1,0x20
    80003b78:	00bd85b3          	add	a1,s11,a1
    80003b7c:	0005c583          	lbu	a1,0(a1)
    80003b80:	02d7d7bb          	divuw	a5,a5,a3
    80003b84:	f8b403a3          	sb	a1,-121(s0)
    80003b88:	42eb7e63          	bgeu	s6,a4,80003fc4 <__printf+0x65c>
    80003b8c:	02d7f5bb          	remuw	a1,a5,a3
    80003b90:	02059593          	slli	a1,a1,0x20
    80003b94:	0205d593          	srli	a1,a1,0x20
    80003b98:	00bd85b3          	add	a1,s11,a1
    80003b9c:	0005c583          	lbu	a1,0(a1)
    80003ba0:	02d7d7bb          	divuw	a5,a5,a3
    80003ba4:	f8b40423          	sb	a1,-120(s0)
    80003ba8:	42ebfc63          	bgeu	s7,a4,80003fe0 <__printf+0x678>
    80003bac:	02079793          	slli	a5,a5,0x20
    80003bb0:	0207d793          	srli	a5,a5,0x20
    80003bb4:	00fd8db3          	add	s11,s11,a5
    80003bb8:	000dc703          	lbu	a4,0(s11)
    80003bbc:	00a00793          	li	a5,10
    80003bc0:	00900c93          	li	s9,9
    80003bc4:	f8e404a3          	sb	a4,-119(s0)
    80003bc8:	00065c63          	bgez	a2,80003be0 <__printf+0x278>
    80003bcc:	f9040713          	addi	a4,s0,-112
    80003bd0:	00f70733          	add	a4,a4,a5
    80003bd4:	02d00693          	li	a3,45
    80003bd8:	fed70823          	sb	a3,-16(a4)
    80003bdc:	00078c93          	mv	s9,a5
    80003be0:	f8040793          	addi	a5,s0,-128
    80003be4:	01978cb3          	add	s9,a5,s9
    80003be8:	f7f40d13          	addi	s10,s0,-129
    80003bec:	000cc503          	lbu	a0,0(s9)
    80003bf0:	fffc8c93          	addi	s9,s9,-1
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	b90080e7          	jalr	-1136(ra) # 80003784 <consputc>
    80003bfc:	ffac98e3          	bne	s9,s10,80003bec <__printf+0x284>
    80003c00:	00094503          	lbu	a0,0(s2)
    80003c04:	e00514e3          	bnez	a0,80003a0c <__printf+0xa4>
    80003c08:	1a0c1663          	bnez	s8,80003db4 <__printf+0x44c>
    80003c0c:	08813083          	ld	ra,136(sp)
    80003c10:	08013403          	ld	s0,128(sp)
    80003c14:	07813483          	ld	s1,120(sp)
    80003c18:	07013903          	ld	s2,112(sp)
    80003c1c:	06813983          	ld	s3,104(sp)
    80003c20:	06013a03          	ld	s4,96(sp)
    80003c24:	05813a83          	ld	s5,88(sp)
    80003c28:	05013b03          	ld	s6,80(sp)
    80003c2c:	04813b83          	ld	s7,72(sp)
    80003c30:	04013c03          	ld	s8,64(sp)
    80003c34:	03813c83          	ld	s9,56(sp)
    80003c38:	03013d03          	ld	s10,48(sp)
    80003c3c:	02813d83          	ld	s11,40(sp)
    80003c40:	0d010113          	addi	sp,sp,208
    80003c44:	00008067          	ret
    80003c48:	07300713          	li	a4,115
    80003c4c:	1ce78a63          	beq	a5,a4,80003e20 <__printf+0x4b8>
    80003c50:	07800713          	li	a4,120
    80003c54:	1ee79e63          	bne	a5,a4,80003e50 <__printf+0x4e8>
    80003c58:	f7843783          	ld	a5,-136(s0)
    80003c5c:	0007a703          	lw	a4,0(a5)
    80003c60:	00878793          	addi	a5,a5,8
    80003c64:	f6f43c23          	sd	a5,-136(s0)
    80003c68:	28074263          	bltz	a4,80003eec <__printf+0x584>
    80003c6c:	00001d97          	auipc	s11,0x1
    80003c70:	64cd8d93          	addi	s11,s11,1612 # 800052b8 <digits>
    80003c74:	00f77793          	andi	a5,a4,15
    80003c78:	00fd87b3          	add	a5,s11,a5
    80003c7c:	0007c683          	lbu	a3,0(a5)
    80003c80:	00f00613          	li	a2,15
    80003c84:	0007079b          	sext.w	a5,a4
    80003c88:	f8d40023          	sb	a3,-128(s0)
    80003c8c:	0047559b          	srliw	a1,a4,0x4
    80003c90:	0047569b          	srliw	a3,a4,0x4
    80003c94:	00000c93          	li	s9,0
    80003c98:	0ee65063          	bge	a2,a4,80003d78 <__printf+0x410>
    80003c9c:	00f6f693          	andi	a3,a3,15
    80003ca0:	00dd86b3          	add	a3,s11,a3
    80003ca4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003ca8:	0087d79b          	srliw	a5,a5,0x8
    80003cac:	00100c93          	li	s9,1
    80003cb0:	f8d400a3          	sb	a3,-127(s0)
    80003cb4:	0cb67263          	bgeu	a2,a1,80003d78 <__printf+0x410>
    80003cb8:	00f7f693          	andi	a3,a5,15
    80003cbc:	00dd86b3          	add	a3,s11,a3
    80003cc0:	0006c583          	lbu	a1,0(a3)
    80003cc4:	00f00613          	li	a2,15
    80003cc8:	0047d69b          	srliw	a3,a5,0x4
    80003ccc:	f8b40123          	sb	a1,-126(s0)
    80003cd0:	0047d593          	srli	a1,a5,0x4
    80003cd4:	28f67e63          	bgeu	a2,a5,80003f70 <__printf+0x608>
    80003cd8:	00f6f693          	andi	a3,a3,15
    80003cdc:	00dd86b3          	add	a3,s11,a3
    80003ce0:	0006c503          	lbu	a0,0(a3)
    80003ce4:	0087d813          	srli	a6,a5,0x8
    80003ce8:	0087d69b          	srliw	a3,a5,0x8
    80003cec:	f8a401a3          	sb	a0,-125(s0)
    80003cf0:	28b67663          	bgeu	a2,a1,80003f7c <__printf+0x614>
    80003cf4:	00f6f693          	andi	a3,a3,15
    80003cf8:	00dd86b3          	add	a3,s11,a3
    80003cfc:	0006c583          	lbu	a1,0(a3)
    80003d00:	00c7d513          	srli	a0,a5,0xc
    80003d04:	00c7d69b          	srliw	a3,a5,0xc
    80003d08:	f8b40223          	sb	a1,-124(s0)
    80003d0c:	29067a63          	bgeu	a2,a6,80003fa0 <__printf+0x638>
    80003d10:	00f6f693          	andi	a3,a3,15
    80003d14:	00dd86b3          	add	a3,s11,a3
    80003d18:	0006c583          	lbu	a1,0(a3)
    80003d1c:	0107d813          	srli	a6,a5,0x10
    80003d20:	0107d69b          	srliw	a3,a5,0x10
    80003d24:	f8b402a3          	sb	a1,-123(s0)
    80003d28:	28a67263          	bgeu	a2,a0,80003fac <__printf+0x644>
    80003d2c:	00f6f693          	andi	a3,a3,15
    80003d30:	00dd86b3          	add	a3,s11,a3
    80003d34:	0006c683          	lbu	a3,0(a3)
    80003d38:	0147d79b          	srliw	a5,a5,0x14
    80003d3c:	f8d40323          	sb	a3,-122(s0)
    80003d40:	21067663          	bgeu	a2,a6,80003f4c <__printf+0x5e4>
    80003d44:	02079793          	slli	a5,a5,0x20
    80003d48:	0207d793          	srli	a5,a5,0x20
    80003d4c:	00fd8db3          	add	s11,s11,a5
    80003d50:	000dc683          	lbu	a3,0(s11)
    80003d54:	00800793          	li	a5,8
    80003d58:	00700c93          	li	s9,7
    80003d5c:	f8d403a3          	sb	a3,-121(s0)
    80003d60:	00075c63          	bgez	a4,80003d78 <__printf+0x410>
    80003d64:	f9040713          	addi	a4,s0,-112
    80003d68:	00f70733          	add	a4,a4,a5
    80003d6c:	02d00693          	li	a3,45
    80003d70:	fed70823          	sb	a3,-16(a4)
    80003d74:	00078c93          	mv	s9,a5
    80003d78:	f8040793          	addi	a5,s0,-128
    80003d7c:	01978cb3          	add	s9,a5,s9
    80003d80:	f7f40d13          	addi	s10,s0,-129
    80003d84:	000cc503          	lbu	a0,0(s9)
    80003d88:	fffc8c93          	addi	s9,s9,-1
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	9f8080e7          	jalr	-1544(ra) # 80003784 <consputc>
    80003d94:	ff9d18e3          	bne	s10,s9,80003d84 <__printf+0x41c>
    80003d98:	0100006f          	j	80003da8 <__printf+0x440>
    80003d9c:	00000097          	auipc	ra,0x0
    80003da0:	9e8080e7          	jalr	-1560(ra) # 80003784 <consputc>
    80003da4:	000c8493          	mv	s1,s9
    80003da8:	00094503          	lbu	a0,0(s2)
    80003dac:	c60510e3          	bnez	a0,80003a0c <__printf+0xa4>
    80003db0:	e40c0ee3          	beqz	s8,80003c0c <__printf+0x2a4>
    80003db4:	00003517          	auipc	a0,0x3
    80003db8:	30c50513          	addi	a0,a0,780 # 800070c0 <pr>
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	94c080e7          	jalr	-1716(ra) # 80004708 <release>
    80003dc4:	e49ff06f          	j	80003c0c <__printf+0x2a4>
    80003dc8:	f7843783          	ld	a5,-136(s0)
    80003dcc:	03000513          	li	a0,48
    80003dd0:	01000d13          	li	s10,16
    80003dd4:	00878713          	addi	a4,a5,8
    80003dd8:	0007bc83          	ld	s9,0(a5)
    80003ddc:	f6e43c23          	sd	a4,-136(s0)
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	9a4080e7          	jalr	-1628(ra) # 80003784 <consputc>
    80003de8:	07800513          	li	a0,120
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	998080e7          	jalr	-1640(ra) # 80003784 <consputc>
    80003df4:	00001d97          	auipc	s11,0x1
    80003df8:	4c4d8d93          	addi	s11,s11,1220 # 800052b8 <digits>
    80003dfc:	03ccd793          	srli	a5,s9,0x3c
    80003e00:	00fd87b3          	add	a5,s11,a5
    80003e04:	0007c503          	lbu	a0,0(a5)
    80003e08:	fffd0d1b          	addiw	s10,s10,-1
    80003e0c:	004c9c93          	slli	s9,s9,0x4
    80003e10:	00000097          	auipc	ra,0x0
    80003e14:	974080e7          	jalr	-1676(ra) # 80003784 <consputc>
    80003e18:	fe0d12e3          	bnez	s10,80003dfc <__printf+0x494>
    80003e1c:	f8dff06f          	j	80003da8 <__printf+0x440>
    80003e20:	f7843783          	ld	a5,-136(s0)
    80003e24:	0007bc83          	ld	s9,0(a5)
    80003e28:	00878793          	addi	a5,a5,8
    80003e2c:	f6f43c23          	sd	a5,-136(s0)
    80003e30:	000c9a63          	bnez	s9,80003e44 <__printf+0x4dc>
    80003e34:	1080006f          	j	80003f3c <__printf+0x5d4>
    80003e38:	001c8c93          	addi	s9,s9,1
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	948080e7          	jalr	-1720(ra) # 80003784 <consputc>
    80003e44:	000cc503          	lbu	a0,0(s9)
    80003e48:	fe0518e3          	bnez	a0,80003e38 <__printf+0x4d0>
    80003e4c:	f5dff06f          	j	80003da8 <__printf+0x440>
    80003e50:	02500513          	li	a0,37
    80003e54:	00000097          	auipc	ra,0x0
    80003e58:	930080e7          	jalr	-1744(ra) # 80003784 <consputc>
    80003e5c:	000c8513          	mv	a0,s9
    80003e60:	00000097          	auipc	ra,0x0
    80003e64:	924080e7          	jalr	-1756(ra) # 80003784 <consputc>
    80003e68:	f41ff06f          	j	80003da8 <__printf+0x440>
    80003e6c:	02500513          	li	a0,37
    80003e70:	00000097          	auipc	ra,0x0
    80003e74:	914080e7          	jalr	-1772(ra) # 80003784 <consputc>
    80003e78:	f31ff06f          	j	80003da8 <__printf+0x440>
    80003e7c:	00030513          	mv	a0,t1
    80003e80:	00000097          	auipc	ra,0x0
    80003e84:	7bc080e7          	jalr	1980(ra) # 8000463c <acquire>
    80003e88:	b4dff06f          	j	800039d4 <__printf+0x6c>
    80003e8c:	40c0053b          	negw	a0,a2
    80003e90:	00a00713          	li	a4,10
    80003e94:	02e576bb          	remuw	a3,a0,a4
    80003e98:	00001d97          	auipc	s11,0x1
    80003e9c:	420d8d93          	addi	s11,s11,1056 # 800052b8 <digits>
    80003ea0:	ff700593          	li	a1,-9
    80003ea4:	02069693          	slli	a3,a3,0x20
    80003ea8:	0206d693          	srli	a3,a3,0x20
    80003eac:	00dd86b3          	add	a3,s11,a3
    80003eb0:	0006c683          	lbu	a3,0(a3)
    80003eb4:	02e557bb          	divuw	a5,a0,a4
    80003eb8:	f8d40023          	sb	a3,-128(s0)
    80003ebc:	10b65e63          	bge	a2,a1,80003fd8 <__printf+0x670>
    80003ec0:	06300593          	li	a1,99
    80003ec4:	02e7f6bb          	remuw	a3,a5,a4
    80003ec8:	02069693          	slli	a3,a3,0x20
    80003ecc:	0206d693          	srli	a3,a3,0x20
    80003ed0:	00dd86b3          	add	a3,s11,a3
    80003ed4:	0006c683          	lbu	a3,0(a3)
    80003ed8:	02e7d73b          	divuw	a4,a5,a4
    80003edc:	00200793          	li	a5,2
    80003ee0:	f8d400a3          	sb	a3,-127(s0)
    80003ee4:	bca5ece3          	bltu	a1,a0,80003abc <__printf+0x154>
    80003ee8:	ce5ff06f          	j	80003bcc <__printf+0x264>
    80003eec:	40e007bb          	negw	a5,a4
    80003ef0:	00001d97          	auipc	s11,0x1
    80003ef4:	3c8d8d93          	addi	s11,s11,968 # 800052b8 <digits>
    80003ef8:	00f7f693          	andi	a3,a5,15
    80003efc:	00dd86b3          	add	a3,s11,a3
    80003f00:	0006c583          	lbu	a1,0(a3)
    80003f04:	ff100613          	li	a2,-15
    80003f08:	0047d69b          	srliw	a3,a5,0x4
    80003f0c:	f8b40023          	sb	a1,-128(s0)
    80003f10:	0047d59b          	srliw	a1,a5,0x4
    80003f14:	0ac75e63          	bge	a4,a2,80003fd0 <__printf+0x668>
    80003f18:	00f6f693          	andi	a3,a3,15
    80003f1c:	00dd86b3          	add	a3,s11,a3
    80003f20:	0006c603          	lbu	a2,0(a3)
    80003f24:	00f00693          	li	a3,15
    80003f28:	0087d79b          	srliw	a5,a5,0x8
    80003f2c:	f8c400a3          	sb	a2,-127(s0)
    80003f30:	d8b6e4e3          	bltu	a3,a1,80003cb8 <__printf+0x350>
    80003f34:	00200793          	li	a5,2
    80003f38:	e2dff06f          	j	80003d64 <__printf+0x3fc>
    80003f3c:	00001c97          	auipc	s9,0x1
    80003f40:	35cc8c93          	addi	s9,s9,860 # 80005298 <_ZZ12printIntegermE6digits+0x148>
    80003f44:	02800513          	li	a0,40
    80003f48:	ef1ff06f          	j	80003e38 <__printf+0x4d0>
    80003f4c:	00700793          	li	a5,7
    80003f50:	00600c93          	li	s9,6
    80003f54:	e0dff06f          	j	80003d60 <__printf+0x3f8>
    80003f58:	00700793          	li	a5,7
    80003f5c:	00600c93          	li	s9,6
    80003f60:	c69ff06f          	j	80003bc8 <__printf+0x260>
    80003f64:	00300793          	li	a5,3
    80003f68:	00200c93          	li	s9,2
    80003f6c:	c5dff06f          	j	80003bc8 <__printf+0x260>
    80003f70:	00300793          	li	a5,3
    80003f74:	00200c93          	li	s9,2
    80003f78:	de9ff06f          	j	80003d60 <__printf+0x3f8>
    80003f7c:	00400793          	li	a5,4
    80003f80:	00300c93          	li	s9,3
    80003f84:	dddff06f          	j	80003d60 <__printf+0x3f8>
    80003f88:	00400793          	li	a5,4
    80003f8c:	00300c93          	li	s9,3
    80003f90:	c39ff06f          	j	80003bc8 <__printf+0x260>
    80003f94:	00500793          	li	a5,5
    80003f98:	00400c93          	li	s9,4
    80003f9c:	c2dff06f          	j	80003bc8 <__printf+0x260>
    80003fa0:	00500793          	li	a5,5
    80003fa4:	00400c93          	li	s9,4
    80003fa8:	db9ff06f          	j	80003d60 <__printf+0x3f8>
    80003fac:	00600793          	li	a5,6
    80003fb0:	00500c93          	li	s9,5
    80003fb4:	dadff06f          	j	80003d60 <__printf+0x3f8>
    80003fb8:	00600793          	li	a5,6
    80003fbc:	00500c93          	li	s9,5
    80003fc0:	c09ff06f          	j	80003bc8 <__printf+0x260>
    80003fc4:	00800793          	li	a5,8
    80003fc8:	00700c93          	li	s9,7
    80003fcc:	bfdff06f          	j	80003bc8 <__printf+0x260>
    80003fd0:	00100793          	li	a5,1
    80003fd4:	d91ff06f          	j	80003d64 <__printf+0x3fc>
    80003fd8:	00100793          	li	a5,1
    80003fdc:	bf1ff06f          	j	80003bcc <__printf+0x264>
    80003fe0:	00900793          	li	a5,9
    80003fe4:	00800c93          	li	s9,8
    80003fe8:	be1ff06f          	j	80003bc8 <__printf+0x260>
    80003fec:	00001517          	auipc	a0,0x1
    80003ff0:	2b450513          	addi	a0,a0,692 # 800052a0 <_ZZ12printIntegermE6digits+0x150>
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	918080e7          	jalr	-1768(ra) # 8000390c <panic>

0000000080003ffc <printfinit>:
    80003ffc:	fe010113          	addi	sp,sp,-32
    80004000:	00813823          	sd	s0,16(sp)
    80004004:	00913423          	sd	s1,8(sp)
    80004008:	00113c23          	sd	ra,24(sp)
    8000400c:	02010413          	addi	s0,sp,32
    80004010:	00003497          	auipc	s1,0x3
    80004014:	0b048493          	addi	s1,s1,176 # 800070c0 <pr>
    80004018:	00048513          	mv	a0,s1
    8000401c:	00001597          	auipc	a1,0x1
    80004020:	29458593          	addi	a1,a1,660 # 800052b0 <_ZZ12printIntegermE6digits+0x160>
    80004024:	00000097          	auipc	ra,0x0
    80004028:	5f4080e7          	jalr	1524(ra) # 80004618 <initlock>
    8000402c:	01813083          	ld	ra,24(sp)
    80004030:	01013403          	ld	s0,16(sp)
    80004034:	0004ac23          	sw	zero,24(s1)
    80004038:	00813483          	ld	s1,8(sp)
    8000403c:	02010113          	addi	sp,sp,32
    80004040:	00008067          	ret

0000000080004044 <uartinit>:
    80004044:	ff010113          	addi	sp,sp,-16
    80004048:	00813423          	sd	s0,8(sp)
    8000404c:	01010413          	addi	s0,sp,16
    80004050:	100007b7          	lui	a5,0x10000
    80004054:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004058:	f8000713          	li	a4,-128
    8000405c:	00e781a3          	sb	a4,3(a5)
    80004060:	00300713          	li	a4,3
    80004064:	00e78023          	sb	a4,0(a5)
    80004068:	000780a3          	sb	zero,1(a5)
    8000406c:	00e781a3          	sb	a4,3(a5)
    80004070:	00700693          	li	a3,7
    80004074:	00d78123          	sb	a3,2(a5)
    80004078:	00e780a3          	sb	a4,1(a5)
    8000407c:	00813403          	ld	s0,8(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret

0000000080004088 <uartputc>:
    80004088:	00002797          	auipc	a5,0x2
    8000408c:	db07a783          	lw	a5,-592(a5) # 80005e38 <panicked>
    80004090:	00078463          	beqz	a5,80004098 <uartputc+0x10>
    80004094:	0000006f          	j	80004094 <uartputc+0xc>
    80004098:	fd010113          	addi	sp,sp,-48
    8000409c:	02813023          	sd	s0,32(sp)
    800040a0:	00913c23          	sd	s1,24(sp)
    800040a4:	01213823          	sd	s2,16(sp)
    800040a8:	01313423          	sd	s3,8(sp)
    800040ac:	02113423          	sd	ra,40(sp)
    800040b0:	03010413          	addi	s0,sp,48
    800040b4:	00002917          	auipc	s2,0x2
    800040b8:	d8c90913          	addi	s2,s2,-628 # 80005e40 <uart_tx_r>
    800040bc:	00093783          	ld	a5,0(s2)
    800040c0:	00002497          	auipc	s1,0x2
    800040c4:	d8848493          	addi	s1,s1,-632 # 80005e48 <uart_tx_w>
    800040c8:	0004b703          	ld	a4,0(s1)
    800040cc:	02078693          	addi	a3,a5,32
    800040d0:	00050993          	mv	s3,a0
    800040d4:	02e69c63          	bne	a3,a4,8000410c <uartputc+0x84>
    800040d8:	00001097          	auipc	ra,0x1
    800040dc:	834080e7          	jalr	-1996(ra) # 8000490c <push_on>
    800040e0:	00093783          	ld	a5,0(s2)
    800040e4:	0004b703          	ld	a4,0(s1)
    800040e8:	02078793          	addi	a5,a5,32
    800040ec:	00e79463          	bne	a5,a4,800040f4 <uartputc+0x6c>
    800040f0:	0000006f          	j	800040f0 <uartputc+0x68>
    800040f4:	00001097          	auipc	ra,0x1
    800040f8:	88c080e7          	jalr	-1908(ra) # 80004980 <pop_on>
    800040fc:	00093783          	ld	a5,0(s2)
    80004100:	0004b703          	ld	a4,0(s1)
    80004104:	02078693          	addi	a3,a5,32
    80004108:	fce688e3          	beq	a3,a4,800040d8 <uartputc+0x50>
    8000410c:	01f77693          	andi	a3,a4,31
    80004110:	00003597          	auipc	a1,0x3
    80004114:	fd058593          	addi	a1,a1,-48 # 800070e0 <uart_tx_buf>
    80004118:	00d586b3          	add	a3,a1,a3
    8000411c:	00170713          	addi	a4,a4,1
    80004120:	01368023          	sb	s3,0(a3)
    80004124:	00e4b023          	sd	a4,0(s1)
    80004128:	10000637          	lui	a2,0x10000
    8000412c:	02f71063          	bne	a4,a5,8000414c <uartputc+0xc4>
    80004130:	0340006f          	j	80004164 <uartputc+0xdc>
    80004134:	00074703          	lbu	a4,0(a4)
    80004138:	00f93023          	sd	a5,0(s2)
    8000413c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004140:	00093783          	ld	a5,0(s2)
    80004144:	0004b703          	ld	a4,0(s1)
    80004148:	00f70e63          	beq	a4,a5,80004164 <uartputc+0xdc>
    8000414c:	00564683          	lbu	a3,5(a2)
    80004150:	01f7f713          	andi	a4,a5,31
    80004154:	00e58733          	add	a4,a1,a4
    80004158:	0206f693          	andi	a3,a3,32
    8000415c:	00178793          	addi	a5,a5,1
    80004160:	fc069ae3          	bnez	a3,80004134 <uartputc+0xac>
    80004164:	02813083          	ld	ra,40(sp)
    80004168:	02013403          	ld	s0,32(sp)
    8000416c:	01813483          	ld	s1,24(sp)
    80004170:	01013903          	ld	s2,16(sp)
    80004174:	00813983          	ld	s3,8(sp)
    80004178:	03010113          	addi	sp,sp,48
    8000417c:	00008067          	ret

0000000080004180 <uartputc_sync>:
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00813423          	sd	s0,8(sp)
    80004188:	01010413          	addi	s0,sp,16
    8000418c:	00002717          	auipc	a4,0x2
    80004190:	cac72703          	lw	a4,-852(a4) # 80005e38 <panicked>
    80004194:	02071663          	bnez	a4,800041c0 <uartputc_sync+0x40>
    80004198:	00050793          	mv	a5,a0
    8000419c:	100006b7          	lui	a3,0x10000
    800041a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800041a4:	02077713          	andi	a4,a4,32
    800041a8:	fe070ce3          	beqz	a4,800041a0 <uartputc_sync+0x20>
    800041ac:	0ff7f793          	andi	a5,a5,255
    800041b0:	00f68023          	sb	a5,0(a3)
    800041b4:	00813403          	ld	s0,8(sp)
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret
    800041c0:	0000006f          	j	800041c0 <uartputc_sync+0x40>

00000000800041c4 <uartstart>:
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00813423          	sd	s0,8(sp)
    800041cc:	01010413          	addi	s0,sp,16
    800041d0:	00002617          	auipc	a2,0x2
    800041d4:	c7060613          	addi	a2,a2,-912 # 80005e40 <uart_tx_r>
    800041d8:	00002517          	auipc	a0,0x2
    800041dc:	c7050513          	addi	a0,a0,-912 # 80005e48 <uart_tx_w>
    800041e0:	00063783          	ld	a5,0(a2)
    800041e4:	00053703          	ld	a4,0(a0)
    800041e8:	04f70263          	beq	a4,a5,8000422c <uartstart+0x68>
    800041ec:	100005b7          	lui	a1,0x10000
    800041f0:	00003817          	auipc	a6,0x3
    800041f4:	ef080813          	addi	a6,a6,-272 # 800070e0 <uart_tx_buf>
    800041f8:	01c0006f          	j	80004214 <uartstart+0x50>
    800041fc:	0006c703          	lbu	a4,0(a3)
    80004200:	00f63023          	sd	a5,0(a2)
    80004204:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004208:	00063783          	ld	a5,0(a2)
    8000420c:	00053703          	ld	a4,0(a0)
    80004210:	00f70e63          	beq	a4,a5,8000422c <uartstart+0x68>
    80004214:	01f7f713          	andi	a4,a5,31
    80004218:	00e806b3          	add	a3,a6,a4
    8000421c:	0055c703          	lbu	a4,5(a1)
    80004220:	00178793          	addi	a5,a5,1
    80004224:	02077713          	andi	a4,a4,32
    80004228:	fc071ae3          	bnez	a4,800041fc <uartstart+0x38>
    8000422c:	00813403          	ld	s0,8(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <uartgetc>:
    80004238:	ff010113          	addi	sp,sp,-16
    8000423c:	00813423          	sd	s0,8(sp)
    80004240:	01010413          	addi	s0,sp,16
    80004244:	10000737          	lui	a4,0x10000
    80004248:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000424c:	0017f793          	andi	a5,a5,1
    80004250:	00078c63          	beqz	a5,80004268 <uartgetc+0x30>
    80004254:	00074503          	lbu	a0,0(a4)
    80004258:	0ff57513          	andi	a0,a0,255
    8000425c:	00813403          	ld	s0,8(sp)
    80004260:	01010113          	addi	sp,sp,16
    80004264:	00008067          	ret
    80004268:	fff00513          	li	a0,-1
    8000426c:	ff1ff06f          	j	8000425c <uartgetc+0x24>

0000000080004270 <uartintr>:
    80004270:	100007b7          	lui	a5,0x10000
    80004274:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004278:	0017f793          	andi	a5,a5,1
    8000427c:	0a078463          	beqz	a5,80004324 <uartintr+0xb4>
    80004280:	fe010113          	addi	sp,sp,-32
    80004284:	00813823          	sd	s0,16(sp)
    80004288:	00913423          	sd	s1,8(sp)
    8000428c:	00113c23          	sd	ra,24(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	100004b7          	lui	s1,0x10000
    80004298:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000429c:	0ff57513          	andi	a0,a0,255
    800042a0:	fffff097          	auipc	ra,0xfffff
    800042a4:	534080e7          	jalr	1332(ra) # 800037d4 <consoleintr>
    800042a8:	0054c783          	lbu	a5,5(s1)
    800042ac:	0017f793          	andi	a5,a5,1
    800042b0:	fe0794e3          	bnez	a5,80004298 <uartintr+0x28>
    800042b4:	00002617          	auipc	a2,0x2
    800042b8:	b8c60613          	addi	a2,a2,-1140 # 80005e40 <uart_tx_r>
    800042bc:	00002517          	auipc	a0,0x2
    800042c0:	b8c50513          	addi	a0,a0,-1140 # 80005e48 <uart_tx_w>
    800042c4:	00063783          	ld	a5,0(a2)
    800042c8:	00053703          	ld	a4,0(a0)
    800042cc:	04f70263          	beq	a4,a5,80004310 <uartintr+0xa0>
    800042d0:	100005b7          	lui	a1,0x10000
    800042d4:	00003817          	auipc	a6,0x3
    800042d8:	e0c80813          	addi	a6,a6,-500 # 800070e0 <uart_tx_buf>
    800042dc:	01c0006f          	j	800042f8 <uartintr+0x88>
    800042e0:	0006c703          	lbu	a4,0(a3)
    800042e4:	00f63023          	sd	a5,0(a2)
    800042e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800042ec:	00063783          	ld	a5,0(a2)
    800042f0:	00053703          	ld	a4,0(a0)
    800042f4:	00f70e63          	beq	a4,a5,80004310 <uartintr+0xa0>
    800042f8:	01f7f713          	andi	a4,a5,31
    800042fc:	00e806b3          	add	a3,a6,a4
    80004300:	0055c703          	lbu	a4,5(a1)
    80004304:	00178793          	addi	a5,a5,1
    80004308:	02077713          	andi	a4,a4,32
    8000430c:	fc071ae3          	bnez	a4,800042e0 <uartintr+0x70>
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	02010113          	addi	sp,sp,32
    80004320:	00008067          	ret
    80004324:	00002617          	auipc	a2,0x2
    80004328:	b1c60613          	addi	a2,a2,-1252 # 80005e40 <uart_tx_r>
    8000432c:	00002517          	auipc	a0,0x2
    80004330:	b1c50513          	addi	a0,a0,-1252 # 80005e48 <uart_tx_w>
    80004334:	00063783          	ld	a5,0(a2)
    80004338:	00053703          	ld	a4,0(a0)
    8000433c:	04f70263          	beq	a4,a5,80004380 <uartintr+0x110>
    80004340:	100005b7          	lui	a1,0x10000
    80004344:	00003817          	auipc	a6,0x3
    80004348:	d9c80813          	addi	a6,a6,-612 # 800070e0 <uart_tx_buf>
    8000434c:	01c0006f          	j	80004368 <uartintr+0xf8>
    80004350:	0006c703          	lbu	a4,0(a3)
    80004354:	00f63023          	sd	a5,0(a2)
    80004358:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000435c:	00063783          	ld	a5,0(a2)
    80004360:	00053703          	ld	a4,0(a0)
    80004364:	02f70063          	beq	a4,a5,80004384 <uartintr+0x114>
    80004368:	01f7f713          	andi	a4,a5,31
    8000436c:	00e806b3          	add	a3,a6,a4
    80004370:	0055c703          	lbu	a4,5(a1)
    80004374:	00178793          	addi	a5,a5,1
    80004378:	02077713          	andi	a4,a4,32
    8000437c:	fc071ae3          	bnez	a4,80004350 <uartintr+0xe0>
    80004380:	00008067          	ret
    80004384:	00008067          	ret

0000000080004388 <kinit>:
    80004388:	fc010113          	addi	sp,sp,-64
    8000438c:	02913423          	sd	s1,40(sp)
    80004390:	fffff7b7          	lui	a5,0xfffff
    80004394:	00004497          	auipc	s1,0x4
    80004398:	d6b48493          	addi	s1,s1,-661 # 800080ff <end+0xfff>
    8000439c:	02813823          	sd	s0,48(sp)
    800043a0:	01313c23          	sd	s3,24(sp)
    800043a4:	00f4f4b3          	and	s1,s1,a5
    800043a8:	02113c23          	sd	ra,56(sp)
    800043ac:	03213023          	sd	s2,32(sp)
    800043b0:	01413823          	sd	s4,16(sp)
    800043b4:	01513423          	sd	s5,8(sp)
    800043b8:	04010413          	addi	s0,sp,64
    800043bc:	000017b7          	lui	a5,0x1
    800043c0:	01100993          	li	s3,17
    800043c4:	00f487b3          	add	a5,s1,a5
    800043c8:	01b99993          	slli	s3,s3,0x1b
    800043cc:	06f9e063          	bltu	s3,a5,8000442c <kinit+0xa4>
    800043d0:	00003a97          	auipc	s5,0x3
    800043d4:	d30a8a93          	addi	s5,s5,-720 # 80007100 <end>
    800043d8:	0754ec63          	bltu	s1,s5,80004450 <kinit+0xc8>
    800043dc:	0734fa63          	bgeu	s1,s3,80004450 <kinit+0xc8>
    800043e0:	00088a37          	lui	s4,0x88
    800043e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800043e8:	00002917          	auipc	s2,0x2
    800043ec:	a6890913          	addi	s2,s2,-1432 # 80005e50 <kmem>
    800043f0:	00ca1a13          	slli	s4,s4,0xc
    800043f4:	0140006f          	j	80004408 <kinit+0x80>
    800043f8:	000017b7          	lui	a5,0x1
    800043fc:	00f484b3          	add	s1,s1,a5
    80004400:	0554e863          	bltu	s1,s5,80004450 <kinit+0xc8>
    80004404:	0534f663          	bgeu	s1,s3,80004450 <kinit+0xc8>
    80004408:	00001637          	lui	a2,0x1
    8000440c:	00100593          	li	a1,1
    80004410:	00048513          	mv	a0,s1
    80004414:	00000097          	auipc	ra,0x0
    80004418:	5e4080e7          	jalr	1508(ra) # 800049f8 <__memset>
    8000441c:	00093783          	ld	a5,0(s2)
    80004420:	00f4b023          	sd	a5,0(s1)
    80004424:	00993023          	sd	s1,0(s2)
    80004428:	fd4498e3          	bne	s1,s4,800043f8 <kinit+0x70>
    8000442c:	03813083          	ld	ra,56(sp)
    80004430:	03013403          	ld	s0,48(sp)
    80004434:	02813483          	ld	s1,40(sp)
    80004438:	02013903          	ld	s2,32(sp)
    8000443c:	01813983          	ld	s3,24(sp)
    80004440:	01013a03          	ld	s4,16(sp)
    80004444:	00813a83          	ld	s5,8(sp)
    80004448:	04010113          	addi	sp,sp,64
    8000444c:	00008067          	ret
    80004450:	00001517          	auipc	a0,0x1
    80004454:	e8050513          	addi	a0,a0,-384 # 800052d0 <digits+0x18>
    80004458:	fffff097          	auipc	ra,0xfffff
    8000445c:	4b4080e7          	jalr	1204(ra) # 8000390c <panic>

0000000080004460 <freerange>:
    80004460:	fc010113          	addi	sp,sp,-64
    80004464:	000017b7          	lui	a5,0x1
    80004468:	02913423          	sd	s1,40(sp)
    8000446c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004470:	009504b3          	add	s1,a0,s1
    80004474:	fffff537          	lui	a0,0xfffff
    80004478:	02813823          	sd	s0,48(sp)
    8000447c:	02113c23          	sd	ra,56(sp)
    80004480:	03213023          	sd	s2,32(sp)
    80004484:	01313c23          	sd	s3,24(sp)
    80004488:	01413823          	sd	s4,16(sp)
    8000448c:	01513423          	sd	s5,8(sp)
    80004490:	01613023          	sd	s6,0(sp)
    80004494:	04010413          	addi	s0,sp,64
    80004498:	00a4f4b3          	and	s1,s1,a0
    8000449c:	00f487b3          	add	a5,s1,a5
    800044a0:	06f5e463          	bltu	a1,a5,80004508 <freerange+0xa8>
    800044a4:	00003a97          	auipc	s5,0x3
    800044a8:	c5ca8a93          	addi	s5,s5,-932 # 80007100 <end>
    800044ac:	0954e263          	bltu	s1,s5,80004530 <freerange+0xd0>
    800044b0:	01100993          	li	s3,17
    800044b4:	01b99993          	slli	s3,s3,0x1b
    800044b8:	0734fc63          	bgeu	s1,s3,80004530 <freerange+0xd0>
    800044bc:	00058a13          	mv	s4,a1
    800044c0:	00002917          	auipc	s2,0x2
    800044c4:	99090913          	addi	s2,s2,-1648 # 80005e50 <kmem>
    800044c8:	00002b37          	lui	s6,0x2
    800044cc:	0140006f          	j	800044e0 <freerange+0x80>
    800044d0:	000017b7          	lui	a5,0x1
    800044d4:	00f484b3          	add	s1,s1,a5
    800044d8:	0554ec63          	bltu	s1,s5,80004530 <freerange+0xd0>
    800044dc:	0534fa63          	bgeu	s1,s3,80004530 <freerange+0xd0>
    800044e0:	00001637          	lui	a2,0x1
    800044e4:	00100593          	li	a1,1
    800044e8:	00048513          	mv	a0,s1
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	50c080e7          	jalr	1292(ra) # 800049f8 <__memset>
    800044f4:	00093703          	ld	a4,0(s2)
    800044f8:	016487b3          	add	a5,s1,s6
    800044fc:	00e4b023          	sd	a4,0(s1)
    80004500:	00993023          	sd	s1,0(s2)
    80004504:	fcfa76e3          	bgeu	s4,a5,800044d0 <freerange+0x70>
    80004508:	03813083          	ld	ra,56(sp)
    8000450c:	03013403          	ld	s0,48(sp)
    80004510:	02813483          	ld	s1,40(sp)
    80004514:	02013903          	ld	s2,32(sp)
    80004518:	01813983          	ld	s3,24(sp)
    8000451c:	01013a03          	ld	s4,16(sp)
    80004520:	00813a83          	ld	s5,8(sp)
    80004524:	00013b03          	ld	s6,0(sp)
    80004528:	04010113          	addi	sp,sp,64
    8000452c:	00008067          	ret
    80004530:	00001517          	auipc	a0,0x1
    80004534:	da050513          	addi	a0,a0,-608 # 800052d0 <digits+0x18>
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	3d4080e7          	jalr	980(ra) # 8000390c <panic>

0000000080004540 <kfree>:
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00813823          	sd	s0,16(sp)
    80004548:	00113c23          	sd	ra,24(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	02010413          	addi	s0,sp,32
    80004554:	03451793          	slli	a5,a0,0x34
    80004558:	04079c63          	bnez	a5,800045b0 <kfree+0x70>
    8000455c:	00003797          	auipc	a5,0x3
    80004560:	ba478793          	addi	a5,a5,-1116 # 80007100 <end>
    80004564:	00050493          	mv	s1,a0
    80004568:	04f56463          	bltu	a0,a5,800045b0 <kfree+0x70>
    8000456c:	01100793          	li	a5,17
    80004570:	01b79793          	slli	a5,a5,0x1b
    80004574:	02f57e63          	bgeu	a0,a5,800045b0 <kfree+0x70>
    80004578:	00001637          	lui	a2,0x1
    8000457c:	00100593          	li	a1,1
    80004580:	00000097          	auipc	ra,0x0
    80004584:	478080e7          	jalr	1144(ra) # 800049f8 <__memset>
    80004588:	00002797          	auipc	a5,0x2
    8000458c:	8c878793          	addi	a5,a5,-1848 # 80005e50 <kmem>
    80004590:	0007b703          	ld	a4,0(a5)
    80004594:	01813083          	ld	ra,24(sp)
    80004598:	01013403          	ld	s0,16(sp)
    8000459c:	00e4b023          	sd	a4,0(s1)
    800045a0:	0097b023          	sd	s1,0(a5)
    800045a4:	00813483          	ld	s1,8(sp)
    800045a8:	02010113          	addi	sp,sp,32
    800045ac:	00008067          	ret
    800045b0:	00001517          	auipc	a0,0x1
    800045b4:	d2050513          	addi	a0,a0,-736 # 800052d0 <digits+0x18>
    800045b8:	fffff097          	auipc	ra,0xfffff
    800045bc:	354080e7          	jalr	852(ra) # 8000390c <panic>

00000000800045c0 <kalloc>:
    800045c0:	fe010113          	addi	sp,sp,-32
    800045c4:	00813823          	sd	s0,16(sp)
    800045c8:	00913423          	sd	s1,8(sp)
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	02010413          	addi	s0,sp,32
    800045d4:	00002797          	auipc	a5,0x2
    800045d8:	87c78793          	addi	a5,a5,-1924 # 80005e50 <kmem>
    800045dc:	0007b483          	ld	s1,0(a5)
    800045e0:	02048063          	beqz	s1,80004600 <kalloc+0x40>
    800045e4:	0004b703          	ld	a4,0(s1)
    800045e8:	00001637          	lui	a2,0x1
    800045ec:	00500593          	li	a1,5
    800045f0:	00048513          	mv	a0,s1
    800045f4:	00e7b023          	sd	a4,0(a5)
    800045f8:	00000097          	auipc	ra,0x0
    800045fc:	400080e7          	jalr	1024(ra) # 800049f8 <__memset>
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	00048513          	mv	a0,s1
    8000460c:	00813483          	ld	s1,8(sp)
    80004610:	02010113          	addi	sp,sp,32
    80004614:	00008067          	ret

0000000080004618 <initlock>:
    80004618:	ff010113          	addi	sp,sp,-16
    8000461c:	00813423          	sd	s0,8(sp)
    80004620:	01010413          	addi	s0,sp,16
    80004624:	00813403          	ld	s0,8(sp)
    80004628:	00b53423          	sd	a1,8(a0)
    8000462c:	00052023          	sw	zero,0(a0)
    80004630:	00053823          	sd	zero,16(a0)
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00008067          	ret

000000008000463c <acquire>:
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00813823          	sd	s0,16(sp)
    80004644:	00913423          	sd	s1,8(sp)
    80004648:	00113c23          	sd	ra,24(sp)
    8000464c:	01213023          	sd	s2,0(sp)
    80004650:	02010413          	addi	s0,sp,32
    80004654:	00050493          	mv	s1,a0
    80004658:	10002973          	csrr	s2,sstatus
    8000465c:	100027f3          	csrr	a5,sstatus
    80004660:	ffd7f793          	andi	a5,a5,-3
    80004664:	10079073          	csrw	sstatus,a5
    80004668:	fffff097          	auipc	ra,0xfffff
    8000466c:	8e0080e7          	jalr	-1824(ra) # 80002f48 <mycpu>
    80004670:	07852783          	lw	a5,120(a0)
    80004674:	06078e63          	beqz	a5,800046f0 <acquire+0xb4>
    80004678:	fffff097          	auipc	ra,0xfffff
    8000467c:	8d0080e7          	jalr	-1840(ra) # 80002f48 <mycpu>
    80004680:	07852783          	lw	a5,120(a0)
    80004684:	0004a703          	lw	a4,0(s1)
    80004688:	0017879b          	addiw	a5,a5,1
    8000468c:	06f52c23          	sw	a5,120(a0)
    80004690:	04071063          	bnez	a4,800046d0 <acquire+0x94>
    80004694:	00100713          	li	a4,1
    80004698:	00070793          	mv	a5,a4
    8000469c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800046a0:	0007879b          	sext.w	a5,a5
    800046a4:	fe079ae3          	bnez	a5,80004698 <acquire+0x5c>
    800046a8:	0ff0000f          	fence
    800046ac:	fffff097          	auipc	ra,0xfffff
    800046b0:	89c080e7          	jalr	-1892(ra) # 80002f48 <mycpu>
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00a4b823          	sd	a0,16(s1)
    800046c0:	00013903          	ld	s2,0(sp)
    800046c4:	00813483          	ld	s1,8(sp)
    800046c8:	02010113          	addi	sp,sp,32
    800046cc:	00008067          	ret
    800046d0:	0104b903          	ld	s2,16(s1)
    800046d4:	fffff097          	auipc	ra,0xfffff
    800046d8:	874080e7          	jalr	-1932(ra) # 80002f48 <mycpu>
    800046dc:	faa91ce3          	bne	s2,a0,80004694 <acquire+0x58>
    800046e0:	00001517          	auipc	a0,0x1
    800046e4:	bf850513          	addi	a0,a0,-1032 # 800052d8 <digits+0x20>
    800046e8:	fffff097          	auipc	ra,0xfffff
    800046ec:	224080e7          	jalr	548(ra) # 8000390c <panic>
    800046f0:	00195913          	srli	s2,s2,0x1
    800046f4:	fffff097          	auipc	ra,0xfffff
    800046f8:	854080e7          	jalr	-1964(ra) # 80002f48 <mycpu>
    800046fc:	00197913          	andi	s2,s2,1
    80004700:	07252e23          	sw	s2,124(a0)
    80004704:	f75ff06f          	j	80004678 <acquire+0x3c>

0000000080004708 <release>:
    80004708:	fe010113          	addi	sp,sp,-32
    8000470c:	00813823          	sd	s0,16(sp)
    80004710:	00113c23          	sd	ra,24(sp)
    80004714:	00913423          	sd	s1,8(sp)
    80004718:	01213023          	sd	s2,0(sp)
    8000471c:	02010413          	addi	s0,sp,32
    80004720:	00052783          	lw	a5,0(a0)
    80004724:	00079a63          	bnez	a5,80004738 <release+0x30>
    80004728:	00001517          	auipc	a0,0x1
    8000472c:	bb850513          	addi	a0,a0,-1096 # 800052e0 <digits+0x28>
    80004730:	fffff097          	auipc	ra,0xfffff
    80004734:	1dc080e7          	jalr	476(ra) # 8000390c <panic>
    80004738:	01053903          	ld	s2,16(a0)
    8000473c:	00050493          	mv	s1,a0
    80004740:	fffff097          	auipc	ra,0xfffff
    80004744:	808080e7          	jalr	-2040(ra) # 80002f48 <mycpu>
    80004748:	fea910e3          	bne	s2,a0,80004728 <release+0x20>
    8000474c:	0004b823          	sd	zero,16(s1)
    80004750:	0ff0000f          	fence
    80004754:	0f50000f          	fence	iorw,ow
    80004758:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	7ec080e7          	jalr	2028(ra) # 80002f48 <mycpu>
    80004764:	100027f3          	csrr	a5,sstatus
    80004768:	0027f793          	andi	a5,a5,2
    8000476c:	04079a63          	bnez	a5,800047c0 <release+0xb8>
    80004770:	07852783          	lw	a5,120(a0)
    80004774:	02f05e63          	blez	a5,800047b0 <release+0xa8>
    80004778:	fff7871b          	addiw	a4,a5,-1
    8000477c:	06e52c23          	sw	a4,120(a0)
    80004780:	00071c63          	bnez	a4,80004798 <release+0x90>
    80004784:	07c52783          	lw	a5,124(a0)
    80004788:	00078863          	beqz	a5,80004798 <release+0x90>
    8000478c:	100027f3          	csrr	a5,sstatus
    80004790:	0027e793          	ori	a5,a5,2
    80004794:	10079073          	csrw	sstatus,a5
    80004798:	01813083          	ld	ra,24(sp)
    8000479c:	01013403          	ld	s0,16(sp)
    800047a0:	00813483          	ld	s1,8(sp)
    800047a4:	00013903          	ld	s2,0(sp)
    800047a8:	02010113          	addi	sp,sp,32
    800047ac:	00008067          	ret
    800047b0:	00001517          	auipc	a0,0x1
    800047b4:	b5050513          	addi	a0,a0,-1200 # 80005300 <digits+0x48>
    800047b8:	fffff097          	auipc	ra,0xfffff
    800047bc:	154080e7          	jalr	340(ra) # 8000390c <panic>
    800047c0:	00001517          	auipc	a0,0x1
    800047c4:	b2850513          	addi	a0,a0,-1240 # 800052e8 <digits+0x30>
    800047c8:	fffff097          	auipc	ra,0xfffff
    800047cc:	144080e7          	jalr	324(ra) # 8000390c <panic>

00000000800047d0 <holding>:
    800047d0:	00052783          	lw	a5,0(a0)
    800047d4:	00079663          	bnez	a5,800047e0 <holding+0x10>
    800047d8:	00000513          	li	a0,0
    800047dc:	00008067          	ret
    800047e0:	fe010113          	addi	sp,sp,-32
    800047e4:	00813823          	sd	s0,16(sp)
    800047e8:	00913423          	sd	s1,8(sp)
    800047ec:	00113c23          	sd	ra,24(sp)
    800047f0:	02010413          	addi	s0,sp,32
    800047f4:	01053483          	ld	s1,16(a0)
    800047f8:	ffffe097          	auipc	ra,0xffffe
    800047fc:	750080e7          	jalr	1872(ra) # 80002f48 <mycpu>
    80004800:	01813083          	ld	ra,24(sp)
    80004804:	01013403          	ld	s0,16(sp)
    80004808:	40a48533          	sub	a0,s1,a0
    8000480c:	00153513          	seqz	a0,a0
    80004810:	00813483          	ld	s1,8(sp)
    80004814:	02010113          	addi	sp,sp,32
    80004818:	00008067          	ret

000000008000481c <push_off>:
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00813823          	sd	s0,16(sp)
    80004824:	00113c23          	sd	ra,24(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	02010413          	addi	s0,sp,32
    80004830:	100024f3          	csrr	s1,sstatus
    80004834:	100027f3          	csrr	a5,sstatus
    80004838:	ffd7f793          	andi	a5,a5,-3
    8000483c:	10079073          	csrw	sstatus,a5
    80004840:	ffffe097          	auipc	ra,0xffffe
    80004844:	708080e7          	jalr	1800(ra) # 80002f48 <mycpu>
    80004848:	07852783          	lw	a5,120(a0)
    8000484c:	02078663          	beqz	a5,80004878 <push_off+0x5c>
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	6f8080e7          	jalr	1784(ra) # 80002f48 <mycpu>
    80004858:	07852783          	lw	a5,120(a0)
    8000485c:	01813083          	ld	ra,24(sp)
    80004860:	01013403          	ld	s0,16(sp)
    80004864:	0017879b          	addiw	a5,a5,1
    80004868:	06f52c23          	sw	a5,120(a0)
    8000486c:	00813483          	ld	s1,8(sp)
    80004870:	02010113          	addi	sp,sp,32
    80004874:	00008067          	ret
    80004878:	0014d493          	srli	s1,s1,0x1
    8000487c:	ffffe097          	auipc	ra,0xffffe
    80004880:	6cc080e7          	jalr	1740(ra) # 80002f48 <mycpu>
    80004884:	0014f493          	andi	s1,s1,1
    80004888:	06952e23          	sw	s1,124(a0)
    8000488c:	fc5ff06f          	j	80004850 <push_off+0x34>

0000000080004890 <pop_off>:
    80004890:	ff010113          	addi	sp,sp,-16
    80004894:	00813023          	sd	s0,0(sp)
    80004898:	00113423          	sd	ra,8(sp)
    8000489c:	01010413          	addi	s0,sp,16
    800048a0:	ffffe097          	auipc	ra,0xffffe
    800048a4:	6a8080e7          	jalr	1704(ra) # 80002f48 <mycpu>
    800048a8:	100027f3          	csrr	a5,sstatus
    800048ac:	0027f793          	andi	a5,a5,2
    800048b0:	04079663          	bnez	a5,800048fc <pop_off+0x6c>
    800048b4:	07852783          	lw	a5,120(a0)
    800048b8:	02f05a63          	blez	a5,800048ec <pop_off+0x5c>
    800048bc:	fff7871b          	addiw	a4,a5,-1
    800048c0:	06e52c23          	sw	a4,120(a0)
    800048c4:	00071c63          	bnez	a4,800048dc <pop_off+0x4c>
    800048c8:	07c52783          	lw	a5,124(a0)
    800048cc:	00078863          	beqz	a5,800048dc <pop_off+0x4c>
    800048d0:	100027f3          	csrr	a5,sstatus
    800048d4:	0027e793          	ori	a5,a5,2
    800048d8:	10079073          	csrw	sstatus,a5
    800048dc:	00813083          	ld	ra,8(sp)
    800048e0:	00013403          	ld	s0,0(sp)
    800048e4:	01010113          	addi	sp,sp,16
    800048e8:	00008067          	ret
    800048ec:	00001517          	auipc	a0,0x1
    800048f0:	a1450513          	addi	a0,a0,-1516 # 80005300 <digits+0x48>
    800048f4:	fffff097          	auipc	ra,0xfffff
    800048f8:	018080e7          	jalr	24(ra) # 8000390c <panic>
    800048fc:	00001517          	auipc	a0,0x1
    80004900:	9ec50513          	addi	a0,a0,-1556 # 800052e8 <digits+0x30>
    80004904:	fffff097          	auipc	ra,0xfffff
    80004908:	008080e7          	jalr	8(ra) # 8000390c <panic>

000000008000490c <push_on>:
    8000490c:	fe010113          	addi	sp,sp,-32
    80004910:	00813823          	sd	s0,16(sp)
    80004914:	00113c23          	sd	ra,24(sp)
    80004918:	00913423          	sd	s1,8(sp)
    8000491c:	02010413          	addi	s0,sp,32
    80004920:	100024f3          	csrr	s1,sstatus
    80004924:	100027f3          	csrr	a5,sstatus
    80004928:	0027e793          	ori	a5,a5,2
    8000492c:	10079073          	csrw	sstatus,a5
    80004930:	ffffe097          	auipc	ra,0xffffe
    80004934:	618080e7          	jalr	1560(ra) # 80002f48 <mycpu>
    80004938:	07852783          	lw	a5,120(a0)
    8000493c:	02078663          	beqz	a5,80004968 <push_on+0x5c>
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	608080e7          	jalr	1544(ra) # 80002f48 <mycpu>
    80004948:	07852783          	lw	a5,120(a0)
    8000494c:	01813083          	ld	ra,24(sp)
    80004950:	01013403          	ld	s0,16(sp)
    80004954:	0017879b          	addiw	a5,a5,1
    80004958:	06f52c23          	sw	a5,120(a0)
    8000495c:	00813483          	ld	s1,8(sp)
    80004960:	02010113          	addi	sp,sp,32
    80004964:	00008067          	ret
    80004968:	0014d493          	srli	s1,s1,0x1
    8000496c:	ffffe097          	auipc	ra,0xffffe
    80004970:	5dc080e7          	jalr	1500(ra) # 80002f48 <mycpu>
    80004974:	0014f493          	andi	s1,s1,1
    80004978:	06952e23          	sw	s1,124(a0)
    8000497c:	fc5ff06f          	j	80004940 <push_on+0x34>

0000000080004980 <pop_on>:
    80004980:	ff010113          	addi	sp,sp,-16
    80004984:	00813023          	sd	s0,0(sp)
    80004988:	00113423          	sd	ra,8(sp)
    8000498c:	01010413          	addi	s0,sp,16
    80004990:	ffffe097          	auipc	ra,0xffffe
    80004994:	5b8080e7          	jalr	1464(ra) # 80002f48 <mycpu>
    80004998:	100027f3          	csrr	a5,sstatus
    8000499c:	0027f793          	andi	a5,a5,2
    800049a0:	04078463          	beqz	a5,800049e8 <pop_on+0x68>
    800049a4:	07852783          	lw	a5,120(a0)
    800049a8:	02f05863          	blez	a5,800049d8 <pop_on+0x58>
    800049ac:	fff7879b          	addiw	a5,a5,-1
    800049b0:	06f52c23          	sw	a5,120(a0)
    800049b4:	07853783          	ld	a5,120(a0)
    800049b8:	00079863          	bnez	a5,800049c8 <pop_on+0x48>
    800049bc:	100027f3          	csrr	a5,sstatus
    800049c0:	ffd7f793          	andi	a5,a5,-3
    800049c4:	10079073          	csrw	sstatus,a5
    800049c8:	00813083          	ld	ra,8(sp)
    800049cc:	00013403          	ld	s0,0(sp)
    800049d0:	01010113          	addi	sp,sp,16
    800049d4:	00008067          	ret
    800049d8:	00001517          	auipc	a0,0x1
    800049dc:	95050513          	addi	a0,a0,-1712 # 80005328 <digits+0x70>
    800049e0:	fffff097          	auipc	ra,0xfffff
    800049e4:	f2c080e7          	jalr	-212(ra) # 8000390c <panic>
    800049e8:	00001517          	auipc	a0,0x1
    800049ec:	92050513          	addi	a0,a0,-1760 # 80005308 <digits+0x50>
    800049f0:	fffff097          	auipc	ra,0xfffff
    800049f4:	f1c080e7          	jalr	-228(ra) # 8000390c <panic>

00000000800049f8 <__memset>:
    800049f8:	ff010113          	addi	sp,sp,-16
    800049fc:	00813423          	sd	s0,8(sp)
    80004a00:	01010413          	addi	s0,sp,16
    80004a04:	1a060e63          	beqz	a2,80004bc0 <__memset+0x1c8>
    80004a08:	40a007b3          	neg	a5,a0
    80004a0c:	0077f793          	andi	a5,a5,7
    80004a10:	00778693          	addi	a3,a5,7
    80004a14:	00b00813          	li	a6,11
    80004a18:	0ff5f593          	andi	a1,a1,255
    80004a1c:	fff6071b          	addiw	a4,a2,-1
    80004a20:	1b06e663          	bltu	a3,a6,80004bcc <__memset+0x1d4>
    80004a24:	1cd76463          	bltu	a4,a3,80004bec <__memset+0x1f4>
    80004a28:	1a078e63          	beqz	a5,80004be4 <__memset+0x1ec>
    80004a2c:	00b50023          	sb	a1,0(a0)
    80004a30:	00100713          	li	a4,1
    80004a34:	1ae78463          	beq	a5,a4,80004bdc <__memset+0x1e4>
    80004a38:	00b500a3          	sb	a1,1(a0)
    80004a3c:	00200713          	li	a4,2
    80004a40:	1ae78a63          	beq	a5,a4,80004bf4 <__memset+0x1fc>
    80004a44:	00b50123          	sb	a1,2(a0)
    80004a48:	00300713          	li	a4,3
    80004a4c:	18e78463          	beq	a5,a4,80004bd4 <__memset+0x1dc>
    80004a50:	00b501a3          	sb	a1,3(a0)
    80004a54:	00400713          	li	a4,4
    80004a58:	1ae78263          	beq	a5,a4,80004bfc <__memset+0x204>
    80004a5c:	00b50223          	sb	a1,4(a0)
    80004a60:	00500713          	li	a4,5
    80004a64:	1ae78063          	beq	a5,a4,80004c04 <__memset+0x20c>
    80004a68:	00b502a3          	sb	a1,5(a0)
    80004a6c:	00700713          	li	a4,7
    80004a70:	18e79e63          	bne	a5,a4,80004c0c <__memset+0x214>
    80004a74:	00b50323          	sb	a1,6(a0)
    80004a78:	00700e93          	li	t4,7
    80004a7c:	00859713          	slli	a4,a1,0x8
    80004a80:	00e5e733          	or	a4,a1,a4
    80004a84:	01059e13          	slli	t3,a1,0x10
    80004a88:	01c76e33          	or	t3,a4,t3
    80004a8c:	01859313          	slli	t1,a1,0x18
    80004a90:	006e6333          	or	t1,t3,t1
    80004a94:	02059893          	slli	a7,a1,0x20
    80004a98:	40f60e3b          	subw	t3,a2,a5
    80004a9c:	011368b3          	or	a7,t1,a7
    80004aa0:	02859813          	slli	a6,a1,0x28
    80004aa4:	0108e833          	or	a6,a7,a6
    80004aa8:	03059693          	slli	a3,a1,0x30
    80004aac:	003e589b          	srliw	a7,t3,0x3
    80004ab0:	00d866b3          	or	a3,a6,a3
    80004ab4:	03859713          	slli	a4,a1,0x38
    80004ab8:	00389813          	slli	a6,a7,0x3
    80004abc:	00f507b3          	add	a5,a0,a5
    80004ac0:	00e6e733          	or	a4,a3,a4
    80004ac4:	000e089b          	sext.w	a7,t3
    80004ac8:	00f806b3          	add	a3,a6,a5
    80004acc:	00e7b023          	sd	a4,0(a5)
    80004ad0:	00878793          	addi	a5,a5,8
    80004ad4:	fed79ce3          	bne	a5,a3,80004acc <__memset+0xd4>
    80004ad8:	ff8e7793          	andi	a5,t3,-8
    80004adc:	0007871b          	sext.w	a4,a5
    80004ae0:	01d787bb          	addw	a5,a5,t4
    80004ae4:	0ce88e63          	beq	a7,a4,80004bc0 <__memset+0x1c8>
    80004ae8:	00f50733          	add	a4,a0,a5
    80004aec:	00b70023          	sb	a1,0(a4)
    80004af0:	0017871b          	addiw	a4,a5,1
    80004af4:	0cc77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004af8:	00e50733          	add	a4,a0,a4
    80004afc:	00b70023          	sb	a1,0(a4)
    80004b00:	0027871b          	addiw	a4,a5,2
    80004b04:	0ac77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b08:	00e50733          	add	a4,a0,a4
    80004b0c:	00b70023          	sb	a1,0(a4)
    80004b10:	0037871b          	addiw	a4,a5,3
    80004b14:	0ac77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b18:	00e50733          	add	a4,a0,a4
    80004b1c:	00b70023          	sb	a1,0(a4)
    80004b20:	0047871b          	addiw	a4,a5,4
    80004b24:	08c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b28:	00e50733          	add	a4,a0,a4
    80004b2c:	00b70023          	sb	a1,0(a4)
    80004b30:	0057871b          	addiw	a4,a5,5
    80004b34:	08c77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b38:	00e50733          	add	a4,a0,a4
    80004b3c:	00b70023          	sb	a1,0(a4)
    80004b40:	0067871b          	addiw	a4,a5,6
    80004b44:	06c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b48:	00e50733          	add	a4,a0,a4
    80004b4c:	00b70023          	sb	a1,0(a4)
    80004b50:	0077871b          	addiw	a4,a5,7
    80004b54:	06c77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b58:	00e50733          	add	a4,a0,a4
    80004b5c:	00b70023          	sb	a1,0(a4)
    80004b60:	0087871b          	addiw	a4,a5,8
    80004b64:	04c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b68:	00e50733          	add	a4,a0,a4
    80004b6c:	00b70023          	sb	a1,0(a4)
    80004b70:	0097871b          	addiw	a4,a5,9
    80004b74:	04c77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b78:	00e50733          	add	a4,a0,a4
    80004b7c:	00b70023          	sb	a1,0(a4)
    80004b80:	00a7871b          	addiw	a4,a5,10
    80004b84:	02c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b88:	00e50733          	add	a4,a0,a4
    80004b8c:	00b70023          	sb	a1,0(a4)
    80004b90:	00b7871b          	addiw	a4,a5,11
    80004b94:	02c77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b98:	00e50733          	add	a4,a0,a4
    80004b9c:	00b70023          	sb	a1,0(a4)
    80004ba0:	00c7871b          	addiw	a4,a5,12
    80004ba4:	00c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004ba8:	00e50733          	add	a4,a0,a4
    80004bac:	00b70023          	sb	a1,0(a4)
    80004bb0:	00d7879b          	addiw	a5,a5,13
    80004bb4:	00c7f663          	bgeu	a5,a2,80004bc0 <__memset+0x1c8>
    80004bb8:	00f507b3          	add	a5,a0,a5
    80004bbc:	00b78023          	sb	a1,0(a5)
    80004bc0:	00813403          	ld	s0,8(sp)
    80004bc4:	01010113          	addi	sp,sp,16
    80004bc8:	00008067          	ret
    80004bcc:	00b00693          	li	a3,11
    80004bd0:	e55ff06f          	j	80004a24 <__memset+0x2c>
    80004bd4:	00300e93          	li	t4,3
    80004bd8:	ea5ff06f          	j	80004a7c <__memset+0x84>
    80004bdc:	00100e93          	li	t4,1
    80004be0:	e9dff06f          	j	80004a7c <__memset+0x84>
    80004be4:	00000e93          	li	t4,0
    80004be8:	e95ff06f          	j	80004a7c <__memset+0x84>
    80004bec:	00000793          	li	a5,0
    80004bf0:	ef9ff06f          	j	80004ae8 <__memset+0xf0>
    80004bf4:	00200e93          	li	t4,2
    80004bf8:	e85ff06f          	j	80004a7c <__memset+0x84>
    80004bfc:	00400e93          	li	t4,4
    80004c00:	e7dff06f          	j	80004a7c <__memset+0x84>
    80004c04:	00500e93          	li	t4,5
    80004c08:	e75ff06f          	j	80004a7c <__memset+0x84>
    80004c0c:	00600e93          	li	t4,6
    80004c10:	e6dff06f          	j	80004a7c <__memset+0x84>

0000000080004c14 <__memmove>:
    80004c14:	ff010113          	addi	sp,sp,-16
    80004c18:	00813423          	sd	s0,8(sp)
    80004c1c:	01010413          	addi	s0,sp,16
    80004c20:	0e060863          	beqz	a2,80004d10 <__memmove+0xfc>
    80004c24:	fff6069b          	addiw	a3,a2,-1
    80004c28:	0006881b          	sext.w	a6,a3
    80004c2c:	0ea5e863          	bltu	a1,a0,80004d1c <__memmove+0x108>
    80004c30:	00758713          	addi	a4,a1,7
    80004c34:	00a5e7b3          	or	a5,a1,a0
    80004c38:	40a70733          	sub	a4,a4,a0
    80004c3c:	0077f793          	andi	a5,a5,7
    80004c40:	00f73713          	sltiu	a4,a4,15
    80004c44:	00174713          	xori	a4,a4,1
    80004c48:	0017b793          	seqz	a5,a5
    80004c4c:	00e7f7b3          	and	a5,a5,a4
    80004c50:	10078863          	beqz	a5,80004d60 <__memmove+0x14c>
    80004c54:	00900793          	li	a5,9
    80004c58:	1107f463          	bgeu	a5,a6,80004d60 <__memmove+0x14c>
    80004c5c:	0036581b          	srliw	a6,a2,0x3
    80004c60:	fff8081b          	addiw	a6,a6,-1
    80004c64:	02081813          	slli	a6,a6,0x20
    80004c68:	01d85893          	srli	a7,a6,0x1d
    80004c6c:	00858813          	addi	a6,a1,8
    80004c70:	00058793          	mv	a5,a1
    80004c74:	00050713          	mv	a4,a0
    80004c78:	01088833          	add	a6,a7,a6
    80004c7c:	0007b883          	ld	a7,0(a5)
    80004c80:	00878793          	addi	a5,a5,8
    80004c84:	00870713          	addi	a4,a4,8
    80004c88:	ff173c23          	sd	a7,-8(a4)
    80004c8c:	ff0798e3          	bne	a5,a6,80004c7c <__memmove+0x68>
    80004c90:	ff867713          	andi	a4,a2,-8
    80004c94:	02071793          	slli	a5,a4,0x20
    80004c98:	0207d793          	srli	a5,a5,0x20
    80004c9c:	00f585b3          	add	a1,a1,a5
    80004ca0:	40e686bb          	subw	a3,a3,a4
    80004ca4:	00f507b3          	add	a5,a0,a5
    80004ca8:	06e60463          	beq	a2,a4,80004d10 <__memmove+0xfc>
    80004cac:	0005c703          	lbu	a4,0(a1)
    80004cb0:	00e78023          	sb	a4,0(a5)
    80004cb4:	04068e63          	beqz	a3,80004d10 <__memmove+0xfc>
    80004cb8:	0015c603          	lbu	a2,1(a1)
    80004cbc:	00100713          	li	a4,1
    80004cc0:	00c780a3          	sb	a2,1(a5)
    80004cc4:	04e68663          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004cc8:	0025c603          	lbu	a2,2(a1)
    80004ccc:	00200713          	li	a4,2
    80004cd0:	00c78123          	sb	a2,2(a5)
    80004cd4:	02e68e63          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004cd8:	0035c603          	lbu	a2,3(a1)
    80004cdc:	00300713          	li	a4,3
    80004ce0:	00c781a3          	sb	a2,3(a5)
    80004ce4:	02e68663          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004ce8:	0045c603          	lbu	a2,4(a1)
    80004cec:	00400713          	li	a4,4
    80004cf0:	00c78223          	sb	a2,4(a5)
    80004cf4:	00e68e63          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004cf8:	0055c603          	lbu	a2,5(a1)
    80004cfc:	00500713          	li	a4,5
    80004d00:	00c782a3          	sb	a2,5(a5)
    80004d04:	00e68663          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004d08:	0065c703          	lbu	a4,6(a1)
    80004d0c:	00e78323          	sb	a4,6(a5)
    80004d10:	00813403          	ld	s0,8(sp)
    80004d14:	01010113          	addi	sp,sp,16
    80004d18:	00008067          	ret
    80004d1c:	02061713          	slli	a4,a2,0x20
    80004d20:	02075713          	srli	a4,a4,0x20
    80004d24:	00e587b3          	add	a5,a1,a4
    80004d28:	f0f574e3          	bgeu	a0,a5,80004c30 <__memmove+0x1c>
    80004d2c:	02069613          	slli	a2,a3,0x20
    80004d30:	02065613          	srli	a2,a2,0x20
    80004d34:	fff64613          	not	a2,a2
    80004d38:	00e50733          	add	a4,a0,a4
    80004d3c:	00c78633          	add	a2,a5,a2
    80004d40:	fff7c683          	lbu	a3,-1(a5)
    80004d44:	fff78793          	addi	a5,a5,-1
    80004d48:	fff70713          	addi	a4,a4,-1
    80004d4c:	00d70023          	sb	a3,0(a4)
    80004d50:	fec798e3          	bne	a5,a2,80004d40 <__memmove+0x12c>
    80004d54:	00813403          	ld	s0,8(sp)
    80004d58:	01010113          	addi	sp,sp,16
    80004d5c:	00008067          	ret
    80004d60:	02069713          	slli	a4,a3,0x20
    80004d64:	02075713          	srli	a4,a4,0x20
    80004d68:	00170713          	addi	a4,a4,1
    80004d6c:	00e50733          	add	a4,a0,a4
    80004d70:	00050793          	mv	a5,a0
    80004d74:	0005c683          	lbu	a3,0(a1)
    80004d78:	00178793          	addi	a5,a5,1
    80004d7c:	00158593          	addi	a1,a1,1
    80004d80:	fed78fa3          	sb	a3,-1(a5)
    80004d84:	fee798e3          	bne	a5,a4,80004d74 <__memmove+0x160>
    80004d88:	f89ff06f          	j	80004d10 <__memmove+0xfc>

0000000080004d8c <__putc>:
    80004d8c:	fe010113          	addi	sp,sp,-32
    80004d90:	00813823          	sd	s0,16(sp)
    80004d94:	00113c23          	sd	ra,24(sp)
    80004d98:	02010413          	addi	s0,sp,32
    80004d9c:	00050793          	mv	a5,a0
    80004da0:	fef40593          	addi	a1,s0,-17
    80004da4:	00100613          	li	a2,1
    80004da8:	00000513          	li	a0,0
    80004dac:	fef407a3          	sb	a5,-17(s0)
    80004db0:	fffff097          	auipc	ra,0xfffff
    80004db4:	b3c080e7          	jalr	-1220(ra) # 800038ec <console_write>
    80004db8:	01813083          	ld	ra,24(sp)
    80004dbc:	01013403          	ld	s0,16(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret

0000000080004dc8 <__getc>:
    80004dc8:	fe010113          	addi	sp,sp,-32
    80004dcc:	00813823          	sd	s0,16(sp)
    80004dd0:	00113c23          	sd	ra,24(sp)
    80004dd4:	02010413          	addi	s0,sp,32
    80004dd8:	fe840593          	addi	a1,s0,-24
    80004ddc:	00100613          	li	a2,1
    80004de0:	00000513          	li	a0,0
    80004de4:	fffff097          	auipc	ra,0xfffff
    80004de8:	ae8080e7          	jalr	-1304(ra) # 800038cc <console_read>
    80004dec:	fe844503          	lbu	a0,-24(s0)
    80004df0:	01813083          	ld	ra,24(sp)
    80004df4:	01013403          	ld	s0,16(sp)
    80004df8:	02010113          	addi	sp,sp,32
    80004dfc:	00008067          	ret

0000000080004e00 <console_handler>:
    80004e00:	fe010113          	addi	sp,sp,-32
    80004e04:	00813823          	sd	s0,16(sp)
    80004e08:	00113c23          	sd	ra,24(sp)
    80004e0c:	00913423          	sd	s1,8(sp)
    80004e10:	02010413          	addi	s0,sp,32
    80004e14:	14202773          	csrr	a4,scause
    80004e18:	100027f3          	csrr	a5,sstatus
    80004e1c:	0027f793          	andi	a5,a5,2
    80004e20:	06079e63          	bnez	a5,80004e9c <console_handler+0x9c>
    80004e24:	00074c63          	bltz	a4,80004e3c <console_handler+0x3c>
    80004e28:	01813083          	ld	ra,24(sp)
    80004e2c:	01013403          	ld	s0,16(sp)
    80004e30:	00813483          	ld	s1,8(sp)
    80004e34:	02010113          	addi	sp,sp,32
    80004e38:	00008067          	ret
    80004e3c:	0ff77713          	andi	a4,a4,255
    80004e40:	00900793          	li	a5,9
    80004e44:	fef712e3          	bne	a4,a5,80004e28 <console_handler+0x28>
    80004e48:	ffffe097          	auipc	ra,0xffffe
    80004e4c:	6dc080e7          	jalr	1756(ra) # 80003524 <plic_claim>
    80004e50:	00a00793          	li	a5,10
    80004e54:	00050493          	mv	s1,a0
    80004e58:	02f50c63          	beq	a0,a5,80004e90 <console_handler+0x90>
    80004e5c:	fc0506e3          	beqz	a0,80004e28 <console_handler+0x28>
    80004e60:	00050593          	mv	a1,a0
    80004e64:	00000517          	auipc	a0,0x0
    80004e68:	3cc50513          	addi	a0,a0,972 # 80005230 <_ZZ12printIntegermE6digits+0xe0>
    80004e6c:	fffff097          	auipc	ra,0xfffff
    80004e70:	afc080e7          	jalr	-1284(ra) # 80003968 <__printf>
    80004e74:	01013403          	ld	s0,16(sp)
    80004e78:	01813083          	ld	ra,24(sp)
    80004e7c:	00048513          	mv	a0,s1
    80004e80:	00813483          	ld	s1,8(sp)
    80004e84:	02010113          	addi	sp,sp,32
    80004e88:	ffffe317          	auipc	t1,0xffffe
    80004e8c:	6d430067          	jr	1748(t1) # 8000355c <plic_complete>
    80004e90:	fffff097          	auipc	ra,0xfffff
    80004e94:	3e0080e7          	jalr	992(ra) # 80004270 <uartintr>
    80004e98:	fddff06f          	j	80004e74 <console_handler+0x74>
    80004e9c:	00000517          	auipc	a0,0x0
    80004ea0:	49450513          	addi	a0,a0,1172 # 80005330 <digits+0x78>
    80004ea4:	fffff097          	auipc	ra,0xfffff
    80004ea8:	a68080e7          	jalr	-1432(ra) # 8000390c <panic>
	...
