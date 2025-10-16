
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	b2813103          	ld	sp,-1240(sp) # 80005b28 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3b4020ef          	jal	ra,800023d0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret

00000000800010f8 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    800010f8:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    800010fc:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001100:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001104:	0085b103          	ld	sp,8(a1)

    80001108:	00008067          	ret

000000008000110c <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"

void* mem_alloc(size_t size) {
    8000110c:	ff010113          	addi	sp,sp,-16
    80001110:	00813423          	sd	s0,8(sp)
    80001114:	01010413          	addi	s0,sp,16
    size += sizeof(MemoryAllocator::Header);
    80001118:	01050513          	addi	a0,a0,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    8000111c:	fc057793          	andi	a5,a0,-64
    80001120:	03f57513          	andi	a0,a0,63
    80001124:	00050463          	beqz	a0,8000112c <_Z9mem_allocm+0x20>
    80001128:	04000513          	li	a0,64
    8000112c:	00a78533          	add	a0,a5,a0

    __asm__ volatile("li a0, 0x01");
    80001130:	00100513          	li	a0,1
    __asm__ volatile("mv a1, %0" : : "r" (paddedSize));
    80001134:	00050593          	mv	a1,a0
    __asm__ volatile("ecall");
    80001138:	00000073          	ecall

    void* result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000113c:	00050513          	mv	a0,a0
    return result;
}
    80001140:	00813403          	ld	s0,8(sp)
    80001144:	01010113          	addi	sp,sp,16
    80001148:	00008067          	ret

000000008000114c <_Z8mem_freePv>:

int mem_free(void* p) {
    8000114c:	ff010113          	addi	sp,sp,-16
    80001150:	00813423          	sd	s0,8(sp)
    80001154:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x02");
    80001158:	00200513          	li	a0,2
    __asm__ volatile("mv a1, %0" : : "r" (p));
    8000115c:	00050593          	mv	a1,a0
    __asm__ volatile("ecall");
    80001160:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001164:	00050513          	mv	a0,a0
    return result;
}
    80001168:	0005051b          	sext.w	a0,a0
    8000116c:	00813403          	ld	s0,8(sp)
    80001170:	01010113          	addi	sp,sp,16
    80001174:	00008067          	ret

0000000080001178 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001178:	ff010113          	addi	sp,sp,-16
    8000117c:	00813423          	sd	s0,8(sp)
    80001180:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x03");
    80001184:	00300513          	li	a0,3
    __asm__ volatile("ecall");
    80001188:	00000073          	ecall

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    8000118c:	00050513          	mv	a0,a0
    return result;
}
    80001190:	00813403          	ld	s0,8(sp)
    80001194:	01010113          	addi	sp,sp,16
    80001198:	00008067          	ret

000000008000119c <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    8000119c:	ff010113          	addi	sp,sp,-16
    800011a0:	00813423          	sd	s0,8(sp)
    800011a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x04");
    800011a8:	00400513          	li	a0,4
    __asm__ volatile("ecall");
    800011ac:	00000073          	ecall

    size_t result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800011b0:	00050513          	mv	a0,a0
    return result;
}
    800011b4:	00813403          	ld	s0,8(sp)
    800011b8:	01010113          	addi	sp,sp,16
    800011bc:	00008067          	ret

00000000800011c0 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800011c0:	ff010113          	addi	sp,sp,-16
    800011c4:	00813423          	sd	s0,8(sp)
    800011c8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x11");
    800011cc:	01100513          	li	a0,17
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800011d0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800011d4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    800011d8:	00060693          	mv	a3,a2
    __asm__ volatile("ecall");
    800011dc:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800011e0:	00050513          	mv	a0,a0
    return result;
}
    800011e4:	0005051b          	sext.w	a0,a0
    800011e8:	00813403          	ld	s0,8(sp)
    800011ec:	01010113          	addi	sp,sp,16
    800011f0:	00008067          	ret

00000000800011f4 <_Z11thread_exitv>:

int thread_exit() {
    800011f4:	ff010113          	addi	sp,sp,-16
    800011f8:	00813423          	sd	s0,8(sp)
    800011fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001200:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    80001204:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001208:	00050513          	mv	a0,a0
    return result;
}
    8000120c:	0005051b          	sext.w	a0,a0
    80001210:	00813403          	ld	s0,8(sp)
    80001214:	01010113          	addi	sp,sp,16
    80001218:	00008067          	ret

000000008000121c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000121c:	ff010113          	addi	sp,sp,-16
    80001220:	00813423          	sd	s0,8(sp)
    80001224:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001228:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    8000122c:	00000073          	ecall
}
    80001230:	00813403          	ld	s0,8(sp)
    80001234:	01010113          	addi	sp,sp,16
    80001238:	00008067          	ret

000000008000123c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init) {
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x21");
    80001248:	02100513          	li	a0,33
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000124c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    80001250:	00058613          	mv	a2,a1
    __asm__ volatile ("ecall");
    80001254:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001258:	00050513          	mv	a0,a0
    return result;
}
    8000125c:	0005051b          	sext.w	a0,a0
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00813423          	sd	s0,8(sp)
    80001274:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x22");
    80001278:	02200513          	li	a0,34
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000127c:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    80001280:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001284:	00050513          	mv	a0,a0
    return result;
}
    80001288:	0005051b          	sext.w	a0,a0
    8000128c:	00813403          	ld	s0,8(sp)
    80001290:	01010113          	addi	sp,sp,16
    80001294:	00008067          	ret

0000000080001298 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001298:	ff010113          	addi	sp,sp,-16
    8000129c:	00813423          	sd	s0,8(sp)
    800012a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x23");
    800012a4:	02300513          	li	a0,35
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800012a8:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    800012ac:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800012b0:	00050513          	mv	a0,a0
    return result;
}
    800012b4:	0005051b          	sext.w	a0,a0
    800012b8:	00813403          	ld	s0,8(sp)
    800012bc:	01010113          	addi	sp,sp,16
    800012c0:	00008067          	ret

00000000800012c4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800012c4:	ff010113          	addi	sp,sp,-16
    800012c8:	00813423          	sd	s0,8(sp)
    800012cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x24");
    800012d0:	02400513          	li	a0,36
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800012d4:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    800012d8:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800012dc:	00050513          	mv	a0,a0
    return result;
}
    800012e0:	0005051b          	sext.w	a0,a0
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00813423          	sd	s0,8(sp)
    800012f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x31");
    800012fc:	03100513          	li	a0,49
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    80001300:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    80001304:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001308:	00050513          	mv	a0,a0
    return result;
}
    8000130c:	0005051b          	sext.w	a0,a0
    80001310:	00813403          	ld	s0,8(sp)
    80001314:	01010113          	addi	sp,sp,16
    80001318:	00008067          	ret

000000008000131c <_Z4getcv>:

char getc() {
    8000131c:	ff010113          	addi	sp,sp,-16
    80001320:	00813423          	sd	s0,8(sp)
    80001324:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001328:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    8000132c:	00000073          	ecall

    char result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001330:	00050513          	mv	a0,a0
    return result;
}
    80001334:	0ff57513          	andi	a0,a0,255
    80001338:	00813403          	ld	s0,8(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <_Z4putcc>:

void putc(char c) {
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    80001350:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001354:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    80001358:	00000073          	ecall
    8000135c:	00813403          	ld	s0,8(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_ZL9fibonaccim>:
#include "../h/ccb.hpp"
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"

static uint64 fibonacci(uint64 n)
{
    80001368:	fe010113          	addi	sp,sp,-32
    8000136c:	00113c23          	sd	ra,24(sp)
    80001370:	00813823          	sd	s0,16(sp)
    80001374:	00913423          	sd	s1,8(sp)
    80001378:	01213023          	sd	s2,0(sp)
    8000137c:	02010413          	addi	s0,sp,32
    80001380:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001384:	00100793          	li	a5,1
    80001388:	02a7f663          	bgeu	a5,a0,800013b4 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) CCB::yield();
    8000138c:	00357793          	andi	a5,a0,3
    80001390:	02078e63          	beqz	a5,800013cc <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001394:	fff48513          	addi	a0,s1,-1
    80001398:	00000097          	auipc	ra,0x0
    8000139c:	fd0080e7          	jalr	-48(ra) # 80001368 <_ZL9fibonaccim>
    800013a0:	00050913          	mv	s2,a0
    800013a4:	ffe48513          	addi	a0,s1,-2
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	fc0080e7          	jalr	-64(ra) # 80001368 <_ZL9fibonaccim>
    800013b0:	00a90533          	add	a0,s2,a0
}
    800013b4:	01813083          	ld	ra,24(sp)
    800013b8:	01013403          	ld	s0,16(sp)
    800013bc:	00813483          	ld	s1,8(sp)
    800013c0:	00013903          	ld	s2,0(sp)
    800013c4:	02010113          	addi	sp,sp,32
    800013c8:	00008067          	ret
    if (n % 4 == 0) CCB::yield();
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	988080e7          	jalr	-1656(ra) # 80001d54 <_ZN3CCB5yieldEv>
    800013d4:	fc1ff06f          	j	80001394 <_ZL9fibonaccim+0x2c>

00000000800013d8 <_Z11workerBodyAv>:

void workerBodyA()
{
    800013d8:	fe010113          	addi	sp,sp,-32
    800013dc:	00113c23          	sd	ra,24(sp)
    800013e0:	00813823          	sd	s0,16(sp)
    800013e4:	00913423          	sd	s1,8(sp)
    800013e8:	01213023          	sd	s2,0(sp)
    800013ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800013f0:	00000493          	li	s1,0
    800013f4:	0380006f          	j	8000142c <_Z11workerBodyAv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800013f8:	00004517          	auipc	a0,0x4
    800013fc:	c2850513          	addi	a0,a0,-984 # 80005020 <CONSOLE_STATUS+0x10>
    80001400:	00001097          	auipc	ra,0x1
    80001404:	efc080e7          	jalr	-260(ra) # 800022fc <_Z11printStringPKc>
        printInteger(i);
    80001408:	00048513          	mv	a0,s1
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	f34080e7          	jalr	-204(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001414:	00004517          	auipc	a0,0x4
    80001418:	c8c50513          	addi	a0,a0,-884 # 800050a0 <CONSOLE_STATUS+0x90>
    8000141c:	00001097          	auipc	ra,0x1
    80001420:	ee0080e7          	jalr	-288(ra) # 800022fc <_Z11printStringPKc>
    for (; i < 3; i++)
    80001424:	0014849b          	addiw	s1,s1,1
    80001428:	0ff4f493          	andi	s1,s1,255
    8000142c:	00200793          	li	a5,2
    80001430:	fc97f4e3          	bgeu	a5,s1,800013f8 <_Z11workerBodyAv+0x20>
    }

    printString("A: yield\n");
    80001434:	00004517          	auipc	a0,0x4
    80001438:	bf450513          	addi	a0,a0,-1036 # 80005028 <CONSOLE_STATUS+0x18>
    8000143c:	00001097          	auipc	ra,0x1
    80001440:	ec0080e7          	jalr	-320(ra) # 800022fc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001444:	00700313          	li	t1,7
    CCB::yield();
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	90c080e7          	jalr	-1780(ra) # 80001d54 <_ZN3CCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001450:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001454:	00004517          	auipc	a0,0x4
    80001458:	be450513          	addi	a0,a0,-1052 # 80005038 <CONSOLE_STATUS+0x28>
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	ea0080e7          	jalr	-352(ra) # 800022fc <_Z11printStringPKc>
    printInteger(t1);
    80001464:	00090513          	mv	a0,s2
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	ed8080e7          	jalr	-296(ra) # 80002340 <_Z12printIntegerm>
    printString("\n");
    80001470:	00004517          	auipc	a0,0x4
    80001474:	c3050513          	addi	a0,a0,-976 # 800050a0 <CONSOLE_STATUS+0x90>
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	e84080e7          	jalr	-380(ra) # 800022fc <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001480:	01400513          	li	a0,20
    80001484:	00000097          	auipc	ra,0x0
    80001488:	ee4080e7          	jalr	-284(ra) # 80001368 <_ZL9fibonaccim>
    8000148c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001490:	00004517          	auipc	a0,0x4
    80001494:	bb050513          	addi	a0,a0,-1104 # 80005040 <CONSOLE_STATUS+0x30>
    80001498:	00001097          	auipc	ra,0x1
    8000149c:	e64080e7          	jalr	-412(ra) # 800022fc <_Z11printStringPKc>
    printInteger(result);
    800014a0:	00090513          	mv	a0,s2
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	e9c080e7          	jalr	-356(ra) # 80002340 <_Z12printIntegerm>
    printString("\n");
    800014ac:	00004517          	auipc	a0,0x4
    800014b0:	bf450513          	addi	a0,a0,-1036 # 800050a0 <CONSOLE_STATUS+0x90>
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	e48080e7          	jalr	-440(ra) # 800022fc <_Z11printStringPKc>
    800014bc:	0380006f          	j	800014f4 <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800014c0:	00004517          	auipc	a0,0x4
    800014c4:	b6050513          	addi	a0,a0,-1184 # 80005020 <CONSOLE_STATUS+0x10>
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	e34080e7          	jalr	-460(ra) # 800022fc <_Z11printStringPKc>
        printInteger(i);
    800014d0:	00048513          	mv	a0,s1
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	e6c080e7          	jalr	-404(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    800014dc:	00004517          	auipc	a0,0x4
    800014e0:	bc450513          	addi	a0,a0,-1084 # 800050a0 <CONSOLE_STATUS+0x90>
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	e18080e7          	jalr	-488(ra) # 800022fc <_Z11printStringPKc>
    for (; i < 6; i++)
    800014ec:	0014849b          	addiw	s1,s1,1
    800014f0:	0ff4f493          	andi	s1,s1,255
    800014f4:	00500793          	li	a5,5
    800014f8:	fc97f4e3          	bgeu	a5,s1,800014c0 <_Z11workerBodyAv+0xe8>
    }

    CCB::running->setFinished(true);
    800014fc:	00004797          	auipc	a5,0x4
    80001500:	6347b783          	ld	a5,1588(a5) # 80005b30 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001504:	0007b783          	ld	a5,0(a5)
public:
    ~CCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001508:	00100713          	li	a4,1
    8000150c:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80001510:	00001097          	auipc	ra,0x1
    80001514:	844080e7          	jalr	-1980(ra) # 80001d54 <_ZN3CCB5yieldEv>
}
    80001518:	01813083          	ld	ra,24(sp)
    8000151c:	01013403          	ld	s0,16(sp)
    80001520:	00813483          	ld	s1,8(sp)
    80001524:	00013903          	ld	s2,0(sp)
    80001528:	02010113          	addi	sp,sp,32
    8000152c:	00008067          	ret

0000000080001530 <_Z11workerBodyBv>:

void workerBodyB()
{
    80001530:	fe010113          	addi	sp,sp,-32
    80001534:	00113c23          	sd	ra,24(sp)
    80001538:	00813823          	sd	s0,16(sp)
    8000153c:	00913423          	sd	s1,8(sp)
    80001540:	01213023          	sd	s2,0(sp)
    80001544:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001548:	00a00493          	li	s1,10
    8000154c:	0380006f          	j	80001584 <_Z11workerBodyBv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001550:	00004517          	auipc	a0,0x4
    80001554:	b0050513          	addi	a0,a0,-1280 # 80005050 <CONSOLE_STATUS+0x40>
    80001558:	00001097          	auipc	ra,0x1
    8000155c:	da4080e7          	jalr	-604(ra) # 800022fc <_Z11printStringPKc>
        printInteger(i);
    80001560:	00048513          	mv	a0,s1
    80001564:	00001097          	auipc	ra,0x1
    80001568:	ddc080e7          	jalr	-548(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    8000156c:	00004517          	auipc	a0,0x4
    80001570:	b3450513          	addi	a0,a0,-1228 # 800050a0 <CONSOLE_STATUS+0x90>
    80001574:	00001097          	auipc	ra,0x1
    80001578:	d88080e7          	jalr	-632(ra) # 800022fc <_Z11printStringPKc>
    for (; i < 13; i++)
    8000157c:	0014849b          	addiw	s1,s1,1
    80001580:	0ff4f493          	andi	s1,s1,255
    80001584:	00c00793          	li	a5,12
    80001588:	fc97f4e3          	bgeu	a5,s1,80001550 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	acc50513          	addi	a0,a0,-1332 # 80005058 <CONSOLE_STATUS+0x48>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	d68080e7          	jalr	-664(ra) # 800022fc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000159c:	00500313          	li	t1,5
    CCB::yield();
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	7b4080e7          	jalr	1972(ra) # 80001d54 <_ZN3CCB5yieldEv>

    uint64 result = fibonacci(23);
    800015a8:	01700513          	li	a0,23
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	dbc080e7          	jalr	-580(ra) # 80001368 <_ZL9fibonaccim>
    800015b4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800015b8:	00004517          	auipc	a0,0x4
    800015bc:	a8850513          	addi	a0,a0,-1400 # 80005040 <CONSOLE_STATUS+0x30>
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	d3c080e7          	jalr	-708(ra) # 800022fc <_Z11printStringPKc>
    printInteger(result);
    800015c8:	00090513          	mv	a0,s2
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	d74080e7          	jalr	-652(ra) # 80002340 <_Z12printIntegerm>
    printString("\n");
    800015d4:	00004517          	auipc	a0,0x4
    800015d8:	acc50513          	addi	a0,a0,-1332 # 800050a0 <CONSOLE_STATUS+0x90>
    800015dc:	00001097          	auipc	ra,0x1
    800015e0:	d20080e7          	jalr	-736(ra) # 800022fc <_Z11printStringPKc>
    800015e4:	0380006f          	j	8000161c <_Z11workerBodyBv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800015e8:	00004517          	auipc	a0,0x4
    800015ec:	a6850513          	addi	a0,a0,-1432 # 80005050 <CONSOLE_STATUS+0x40>
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	d0c080e7          	jalr	-756(ra) # 800022fc <_Z11printStringPKc>
        printInteger(i);
    800015f8:	00048513          	mv	a0,s1
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	d44080e7          	jalr	-700(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001604:	00004517          	auipc	a0,0x4
    80001608:	a9c50513          	addi	a0,a0,-1380 # 800050a0 <CONSOLE_STATUS+0x90>
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	cf0080e7          	jalr	-784(ra) # 800022fc <_Z11printStringPKc>
    for (; i < 16; i++)
    80001614:	0014849b          	addiw	s1,s1,1
    80001618:	0ff4f493          	andi	s1,s1,255
    8000161c:	00f00793          	li	a5,15
    80001620:	fc97f4e3          	bgeu	a5,s1,800015e8 <_Z11workerBodyBv+0xb8>
    }

    CCB::running->setFinished(true);
    80001624:	00004797          	auipc	a5,0x4
    80001628:	50c7b783          	ld	a5,1292(a5) # 80005b30 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000162c:	0007b783          	ld	a5,0(a5)
    80001630:	00100713          	li	a4,1
    80001634:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	71c080e7          	jalr	1820(ra) # 80001d54 <_ZN3CCB5yieldEv>
}
    80001640:	01813083          	ld	ra,24(sp)
    80001644:	01013403          	ld	s0,16(sp)
    80001648:	00813483          	ld	s1,8(sp)
    8000164c:	00013903          	ld	s2,0(sp)
    80001650:	02010113          	addi	sp,sp,32
    80001654:	00008067          	ret

0000000080001658 <_Z11workerBodyCv>:

static int a = 0;

void workerBodyC() {
    80001658:	fe010113          	addi	sp,sp,-32
    8000165c:	00113c23          	sd	ra,24(sp)
    80001660:	00813823          	sd	s0,16(sp)
    80001664:	00913423          	sd	s1,8(sp)
    80001668:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    8000166c:	00000493          	li	s1,0
    80001670:	00900793          	li	a5,9
    80001674:	0497c263          	blt	a5,s1,800016b8 <_Z11workerBodyCv+0x60>
        a += 1000;
    80001678:	00004797          	auipc	a5,0x4
    8000167c:	52878793          	addi	a5,a5,1320 # 80005ba0 <_ZL1a>
    80001680:	0007a503          	lw	a0,0(a5)
    80001684:	3e85051b          	addiw	a0,a0,1000
    80001688:	00a7a023          	sw	a0,0(a5)
        printInteger(a);
    8000168c:	0005051b          	sext.w	a0,a0
    80001690:	00001097          	auipc	ra,0x1
    80001694:	cb0080e7          	jalr	-848(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001698:	00004517          	auipc	a0,0x4
    8000169c:	a0850513          	addi	a0,a0,-1528 # 800050a0 <CONSOLE_STATUS+0x90>
    800016a0:	00001097          	auipc	ra,0x1
    800016a4:	c5c080e7          	jalr	-932(ra) # 800022fc <_Z11printStringPKc>
        CCB::yield();
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	6ac080e7          	jalr	1708(ra) # 80001d54 <_ZN3CCB5yieldEv>
    for (int i = 0; i < 10; i++) {
    800016b0:	0014849b          	addiw	s1,s1,1
    800016b4:	fbdff06f          	j	80001670 <_Z11workerBodyCv+0x18>
    }
    CCB::running->setFinished(true);
    800016b8:	00004797          	auipc	a5,0x4
    800016bc:	4787b783          	ld	a5,1144(a5) # 80005b30 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016c0:	0007b783          	ld	a5,0(a5)
    800016c4:	00100713          	li	a4,1
    800016c8:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	688080e7          	jalr	1672(ra) # 80001d54 <_ZN3CCB5yieldEv>
}
    800016d4:	01813083          	ld	ra,24(sp)
    800016d8:	01013403          	ld	s0,16(sp)
    800016dc:	00813483          	ld	s1,8(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret

00000000800016e8 <_Z11workerBodyDv>:

void workerBodyD() {
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    800016fc:	00000493          	li	s1,0
    80001700:	00900793          	li	a5,9
    80001704:	0497c263          	blt	a5,s1,80001748 <_Z11workerBodyDv+0x60>
        a -= 1000;
    80001708:	00004797          	auipc	a5,0x4
    8000170c:	49878793          	addi	a5,a5,1176 # 80005ba0 <_ZL1a>
    80001710:	0007a503          	lw	a0,0(a5)
    80001714:	c185051b          	addiw	a0,a0,-1000
    80001718:	00a7a023          	sw	a0,0(a5)
        printInteger(a);
    8000171c:	0005051b          	sext.w	a0,a0
    80001720:	00001097          	auipc	ra,0x1
    80001724:	c20080e7          	jalr	-992(ra) # 80002340 <_Z12printIntegerm>
        printString("\n");
    80001728:	00004517          	auipc	a0,0x4
    8000172c:	97850513          	addi	a0,a0,-1672 # 800050a0 <CONSOLE_STATUS+0x90>
    80001730:	00001097          	auipc	ra,0x1
    80001734:	bcc080e7          	jalr	-1076(ra) # 800022fc <_Z11printStringPKc>
        CCB::yield();
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	61c080e7          	jalr	1564(ra) # 80001d54 <_ZN3CCB5yieldEv>
    for (int i = 0; i < 10; i++) {
    80001740:	0014849b          	addiw	s1,s1,1
    80001744:	fbdff06f          	j	80001700 <_Z11workerBodyDv+0x18>
    }
    CCB::running->setFinished(true);
    80001748:	00004797          	auipc	a5,0x4
    8000174c:	3e87b783          	ld	a5,1000(a5) # 80005b30 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001750:	0007b783          	ld	a5,0(a5)
    80001754:	00100713          	li	a4,1
    80001758:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	5f8080e7          	jalr	1528(ra) # 80001d54 <_ZN3CCB5yieldEv>
    80001764:	01813083          	ld	ra,24(sp)
    80001768:	01013403          	ld	s0,16(sp)
    8000176c:	00813483          	ld	s1,8(sp)
    80001770:	02010113          	addi	sp,sp,32
    80001774:	00008067          	ret

0000000080001778 <_ZN9Semaphore15createSemaphoreEj>:
//
// Created by os on 10/16/25.
//

#include "../h/Semaphore.hpp"
Semaphore* Semaphore::createSemaphore(unsigned int init) {
    80001778:	fe010113          	addi	sp,sp,-32
    8000177c:	00113c23          	sd	ra,24(sp)
    80001780:	00813823          	sd	s0,16(sp)
    80001784:	00913423          	sd	s1,8(sp)
    80001788:	02010413          	addi	s0,sp,32
    8000178c:	00050493          	mv	s1,a0

class MemoryAllocator {
public:

    static MemoryAllocator* Instance() {
        static MemoryAllocator memoryAllocator;
    80001790:	00004797          	auipc	a5,0x4
    80001794:	4187c783          	lbu	a5,1048(a5) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001798:	04079263          	bnez	a5,800017dc <_ZN9Semaphore15createSemaphoreEj+0x64>
private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000179c:	00004797          	auipc	a5,0x4
    800017a0:	3847b783          	ld	a5,900(a5) # 80005b20 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017a4:	0007b783          	ld	a5,0(a5)
    800017a8:	00004717          	auipc	a4,0x4
    800017ac:	40870713          	addi	a4,a4,1032 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800017b0:	00f73023          	sd	a5,0(a4)
    800017b4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800017b8:	00004717          	auipc	a4,0x4
    800017bc:	38073703          	ld	a4,896(a4) # 80005b38 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017c0:	00073703          	ld	a4,0(a4)
    800017c4:	40f70733          	sub	a4,a4,a5
    800017c8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800017cc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800017d0:	00100793          	li	a5,1
    800017d4:	00004717          	auipc	a4,0x4
    800017d8:	3cf70a23          	sb	a5,980(a4) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    int close();

    unsigned int getValue() const { return val; }

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    800017dc:	02000593          	li	a1,32
    800017e0:	00004517          	auipc	a0,0x4
    800017e4:	3d050513          	addi	a0,a0,976 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	868080e7          	jalr	-1944(ra) # 80002050 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void *ptr) {
        MemoryAllocator::Instance()->mem_free(ptr);
    }

protected:
    explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    800017f0:	00004717          	auipc	a4,0x4
    800017f4:	31070713          	addi	a4,a4,784 # 80005b00 <_ZTV9Semaphore+0x10>
    800017f8:	00e53023          	sd	a4,0(a0)
    800017fc:	00952423          	sw	s1,8(a0)
    80001800:	00050623          	sb	zero,12(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001804:	00053823          	sd	zero,16(a0)
    80001808:	00053c23          	sd	zero,24(a0)
    return new Semaphore(init);
}
    8000180c:	01813083          	ld	ra,24(sp)
    80001810:	01013403          	ld	s0,16(sp)
    80001814:	00813483          	ld	s1,8(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret

0000000080001820 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
    if (closed) return -1;
    8000182c:	00c54783          	lbu	a5,12(a0)
    80001830:	02079063          	bnez	a5,80001850 <_ZN9Semaphore4waitEv+0x30>

    if (--val < 0) {
    80001834:	00852783          	lw	a5,8(a0)
    80001838:	fff7879b          	addiw	a5,a5,-1
    8000183c:	00f52423          	sw	a5,8(a0)
        blocked.addLast(CCB::running);
        CCB::running = Scheduler::get();
        CCB::dispatch();
    }
    return 0;
    80001840:	00000513          	li	a0,0
}
    80001844:	00813403          	ld	s0,8(sp)
    80001848:	01010113          	addi	sp,sp,16
    8000184c:	00008067          	ret
    if (closed) return -1;
    80001850:	fff00513          	li	a0,-1
    80001854:	ff1ff06f          	j	80001844 <_ZN9Semaphore4waitEv+0x24>

0000000080001858 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (closed) return -1;
    80001858:	00c54703          	lbu	a4,12(a0)
    8000185c:	08071263          	bnez	a4,800018e0 <_ZN9Semaphore6signalEv+0x88>
    80001860:	00050793          	mv	a5,a0

    if (++val <= 0) {
    80001864:	00852703          	lw	a4,8(a0)
    80001868:	0017071b          	addiw	a4,a4,1
    8000186c:	0007069b          	sext.w	a3,a4
    80001870:	00e52423          	sw	a4,8(a0)
    80001874:	06069a63          	bnez	a3,800018e8 <_ZN9Semaphore6signalEv+0x90>
int Semaphore::signal() {
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	00913423          	sd	s1,8(sp)
    80001888:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000188c:	01053503          	ld	a0,16(a0)
    80001890:	04050463          	beqz	a0,800018d8 <_ZN9Semaphore6signalEv+0x80>

        Elem *elem = head;
        head = head->next;
    80001894:	00853703          	ld	a4,8(a0)
    80001898:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    8000189c:	02070a63          	beqz	a4,800018d0 <_ZN9Semaphore6signalEv+0x78>

        T *ret = elem->data;
    800018a0:	00053483          	ld	s1,0(a0)
        delete elem;
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	288080e7          	jalr	648(ra) # 80001b2c <_ZdlPv>
        CCB* thread = blocked.removeFirst();
        Scheduler::put(thread);
    800018ac:	00048513          	mv	a0,s1
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	5a4080e7          	jalr	1444(ra) # 80001e54 <_ZN9Scheduler3putEP3CCB>
    }
    return 0;
    800018b8:	00000513          	li	a0,0
}
    800018bc:	01813083          	ld	ra,24(sp)
    800018c0:	01013403          	ld	s0,16(sp)
    800018c4:	00813483          	ld	s1,8(sp)
    800018c8:	02010113          	addi	sp,sp,32
    800018cc:	00008067          	ret
        if (!head) { tail = 0; }
    800018d0:	0007bc23          	sd	zero,24(a5)
    800018d4:	fcdff06f          	j	800018a0 <_ZN9Semaphore6signalEv+0x48>
        if (!head) { return 0; }
    800018d8:	00050493          	mv	s1,a0
    800018dc:	fd1ff06f          	j	800018ac <_ZN9Semaphore6signalEv+0x54>
    if (closed) return -1;
    800018e0:	fff00513          	li	a0,-1
    800018e4:	00008067          	ret
    return 0;
    800018e8:	00000513          	li	a0,0
}
    800018ec:	00008067          	ret

00000000800018f0 <_ZN9Semaphore5blockEv>:
    while (!blocked.empty()) unblock();

    return 0;
}

void Semaphore::block() {
    800018f0:	fe010113          	addi	sp,sp,-32
    800018f4:	00113c23          	sd	ra,24(sp)
    800018f8:	00813823          	sd	s0,16(sp)
    800018fc:	00913423          	sd	s1,8(sp)
    80001900:	01213023          	sd	s2,0(sp)
    80001904:	02010413          	addi	s0,sp,32
    80001908:	00050493          	mv	s1,a0
    blocked.addLast(CCB::running);
    8000190c:	00004797          	auipc	a5,0x4
    80001910:	2247b783          	ld	a5,548(a5) # 80005b30 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001914:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    80001918:	01000513          	li	a0,16
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	1c0080e7          	jalr	448(ra) # 80001adc <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001924:	01253023          	sd	s2,0(a0)
    80001928:	00053423          	sd	zero,8(a0)
        if (tail)
    8000192c:	0184b783          	ld	a5,24(s1)
    80001930:	04078063          	beqz	a5,80001970 <_ZN9Semaphore5blockEv+0x80>
            tail->next = elem;
    80001934:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001938:	00a4bc23          	sd	a0,24(s1)
    CCB::running = Scheduler::get();
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	4b0080e7          	jalr	1200(ra) # 80001dec <_ZN9Scheduler3getEv>
    80001944:	00004797          	auipc	a5,0x4
    80001948:	1ec7b783          	ld	a5,492(a5) # 80005b30 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000194c:	00a7b023          	sd	a0,0(a5)
    CCB::dispatch();
    80001950:	00000097          	auipc	ra,0x0
    80001954:	39c080e7          	jalr	924(ra) # 80001cec <_ZN3CCB8dispatchEv>
}
    80001958:	01813083          	ld	ra,24(sp)
    8000195c:	01013403          	ld	s0,16(sp)
    80001960:	00813483          	ld	s1,8(sp)
    80001964:	00013903          	ld	s2,0(sp)
    80001968:	02010113          	addi	sp,sp,32
    8000196c:	00008067          	ret
            head = tail = elem;
    80001970:	00a4bc23          	sd	a0,24(s1)
    80001974:	00a4b823          	sd	a0,16(s1)
    80001978:	fc5ff06f          	j	8000193c <_ZN9Semaphore5blockEv+0x4c>

000000008000197c <_ZN9Semaphore7unblockEv>:

void Semaphore::unblock() {
    8000197c:	fe010113          	addi	sp,sp,-32
    80001980:	00113c23          	sd	ra,24(sp)
    80001984:	00813823          	sd	s0,16(sp)
    80001988:	00913423          	sd	s1,8(sp)
    8000198c:	02010413          	addi	s0,sp,32
    80001990:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001994:	01053503          	ld	a0,16(a0)
    80001998:	04050263          	beqz	a0,800019dc <_ZN9Semaphore7unblockEv+0x60>
        head = head->next;
    8000199c:	00853703          	ld	a4,8(a0)
    800019a0:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    800019a4:	02070863          	beqz	a4,800019d4 <_ZN9Semaphore7unblockEv+0x58>
        T *ret = elem->data;
    800019a8:	00053483          	ld	s1,0(a0)
        delete elem;
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	180080e7          	jalr	384(ra) # 80001b2c <_ZdlPv>
    CCB* thread = blocked.removeFirst();
    Scheduler::put(thread);
    800019b4:	00048513          	mv	a0,s1
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	49c080e7          	jalr	1180(ra) # 80001e54 <_ZN9Scheduler3putEP3CCB>
}
    800019c0:	01813083          	ld	ra,24(sp)
    800019c4:	01013403          	ld	s0,16(sp)
    800019c8:	00813483          	ld	s1,8(sp)
    800019cc:	02010113          	addi	sp,sp,32
    800019d0:	00008067          	ret
        if (!head) { tail = 0; }
    800019d4:	0007bc23          	sd	zero,24(a5)
    800019d8:	fd1ff06f          	j	800019a8 <_ZN9Semaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    800019dc:	00050493          	mv	s1,a0
    800019e0:	fd5ff06f          	j	800019b4 <_ZN9Semaphore7unblockEv+0x38>

00000000800019e4 <_ZN9Semaphore5closeEv>:
    if (closed) return -1;
    800019e4:	00c54783          	lbu	a5,12(a0)
    800019e8:	04079a63          	bnez	a5,80001a3c <_ZN9Semaphore5closeEv+0x58>
int Semaphore::close() {
    800019ec:	fe010113          	addi	sp,sp,-32
    800019f0:	00113c23          	sd	ra,24(sp)
    800019f4:	00813823          	sd	s0,16(sp)
    800019f8:	00913423          	sd	s1,8(sp)
    800019fc:	02010413          	addi	s0,sp,32
    80001a00:	00050493          	mv	s1,a0
    closed = true;
    80001a04:	00100793          	li	a5,1
    80001a08:	00f50623          	sb	a5,12(a0)
    80001a0c:	0100006f          	j	80001a1c <_ZN9Semaphore5closeEv+0x38>
    while (!blocked.empty()) unblock();
    80001a10:	00048513          	mv	a0,s1
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	f68080e7          	jalr	-152(ra) # 8000197c <_ZN9Semaphore7unblockEv>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    bool empty() { return head == nullptr; }
    80001a1c:	0104b783          	ld	a5,16(s1)
    80001a20:	fe0798e3          	bnez	a5,80001a10 <_ZN9Semaphore5closeEv+0x2c>
    return 0;
    80001a24:	00000513          	li	a0,0
}
    80001a28:	01813083          	ld	ra,24(sp)
    80001a2c:	01013403          	ld	s0,16(sp)
    80001a30:	00813483          	ld	s1,8(sp)
    80001a34:	02010113          	addi	sp,sp,32
    80001a38:	00008067          	ret
    if (closed) return -1;
    80001a3c:	fff00513          	li	a0,-1
}
    80001a40:	00008067          	ret

0000000080001a44 <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() = default;
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00813423          	sd	s0,8(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    80001a50:	00813403          	ld	s0,8(sp)
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00008067          	ret

0000000080001a5c <_ZN9SemaphoreD0Ev>:
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00113423          	sd	ra,8(sp)
    80001a64:	00813023          	sd	s0,0(sp)
    80001a68:	01010413          	addi	s0,sp,16
    80001a6c:	00050593          	mv	a1,a0
    80001a70:	00004797          	auipc	a5,0x4
    80001a74:	1387c783          	lbu	a5,312(a5) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001a78:	04079263          	bnez	a5,80001abc <_ZN9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001a7c:	00004797          	auipc	a5,0x4
    80001a80:	0a47b783          	ld	a5,164(a5) # 80005b20 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a84:	0007b783          	ld	a5,0(a5)
    80001a88:	00004717          	auipc	a4,0x4
    80001a8c:	12870713          	addi	a4,a4,296 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001a90:	00f73023          	sd	a5,0(a4)
    80001a94:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001a98:	00004717          	auipc	a4,0x4
    80001a9c:	0a073703          	ld	a4,160(a4) # 80005b38 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001aa0:	00073703          	ld	a4,0(a4)
    80001aa4:	40f70733          	sub	a4,a4,a5
    80001aa8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001aac:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ab0:	00100793          	li	a5,1
    80001ab4:	00004717          	auipc	a4,0x4
    80001ab8:	0ef70a23          	sb	a5,244(a4) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001abc:	00004517          	auipc	a0,0x4
    80001ac0:	0f450513          	addi	a0,a0,244 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	6dc080e7          	jalr	1756(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
    virtual ~Semaphore() = default;
    80001acc:	00813083          	ld	ra,8(sp)
    80001ad0:	00013403          	ld	s0,0(sp)
    80001ad4:	01010113          	addi	sp,sp,16
    80001ad8:	00008067          	ret

0000000080001adc <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001adc:	ff010113          	addi	sp,sp,-16
    80001ae0:	00113423          	sd	ra,8(sp)
    80001ae4:	00813023          	sd	s0,0(sp)
    80001ae8:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001aec:	00003097          	auipc	ra,0x3
    80001af0:	a6c080e7          	jalr	-1428(ra) # 80004558 <__mem_alloc>
}
    80001af4:	00813083          	ld	ra,8(sp)
    80001af8:	00013403          	ld	s0,0(sp)
    80001afc:	01010113          	addi	sp,sp,16
    80001b00:	00008067          	ret

0000000080001b04 <_Znam>:

void *operator new[](size_t n)
{
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001b14:	00003097          	auipc	ra,0x3
    80001b18:	a44080e7          	jalr	-1468(ra) # 80004558 <__mem_alloc>
}
    80001b1c:	00813083          	ld	ra,8(sp)
    80001b20:	00013403          	ld	s0,0(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret

0000000080001b2c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001b3c:	00003097          	auipc	ra,0x3
    80001b40:	950080e7          	jalr	-1712(ra) # 8000448c <__mem_free>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret

0000000080001b54 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001b54:	ff010113          	addi	sp,sp,-16
    80001b58:	00113423          	sd	ra,8(sp)
    80001b5c:	00813023          	sd	s0,0(sp)
    80001b60:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001b64:	00003097          	auipc	ra,0x3
    80001b68:	928080e7          	jalr	-1752(ra) # 8000448c <__mem_free>
    80001b6c:	00813083          	ld	ra,8(sp)
    80001b70:	00013403          	ld	s0,0(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret

0000000080001b7c <_ZN3CCB15createCoroutineEPFvvE>:
#include "../h/riscv.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body)
{
    80001b7c:	fe010113          	addi	sp,sp,-32
    80001b80:	00113c23          	sd	ra,24(sp)
    80001b84:	00813823          	sd	s0,16(sp)
    80001b88:	00913423          	sd	s1,8(sp)
    80001b8c:	01213023          	sd	s2,0(sp)
    80001b90:	02010413          	addi	s0,sp,32
    80001b94:	00050913          	mv	s2,a0
    80001b98:	00004797          	auipc	a5,0x4
    80001b9c:	0107c783          	lbu	a5,16(a5) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ba0:	04079263          	bnez	a5,80001be4 <_ZN3CCB15createCoroutineEPFvvE+0x68>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001ba4:	00004797          	auipc	a5,0x4
    80001ba8:	f7c7b783          	ld	a5,-132(a5) # 80005b20 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bac:	0007b783          	ld	a5,0(a5)
    80001bb0:	00004717          	auipc	a4,0x4
    80001bb4:	00070713          	mv	a4,a4
    80001bb8:	00f73023          	sd	a5,0(a4) # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001bbc:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001bc0:	00004717          	auipc	a4,0x4
    80001bc4:	f7873703          	ld	a4,-136(a4) # 80005b38 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001bc8:	00073703          	ld	a4,0(a4)
    80001bcc:	40f70733          	sub	a4,a4,a5
    80001bd0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001bd4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001bd8:	00100793          	li	a5,1
    80001bdc:	00004717          	auipc	a4,0x4
    80001be0:	fcf70623          	sb	a5,-52(a4) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    static void yield();

    static CCB *running;

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001be4:	02800593          	li	a1,40
    80001be8:	00004517          	auipc	a0,0x4
    80001bec:	fc850513          	addi	a0,a0,-56 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	460080e7          	jalr	1120(ra) # 80002050 <_ZN15MemoryAllocator9mem_allocEm>
    80001bf8:	00050493          	mv	s1,a0
            body(body),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({body != nullptr ? (uint64) body : 0,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false)
    80001bfc:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001c00:	00090a63          	beqz	s2,80001c14 <_ZN3CCB15createCoroutineEPFvvE+0x98>
    80001c04:	00002537          	lui	a0,0x2
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	efc080e7          	jalr	-260(ra) # 80001b04 <_Znam>
    80001c10:	0080006f          	j	80001c18 <_ZN3CCB15createCoroutineEPFvvE+0x9c>
    80001c14:	00000513          	li	a0,0
            finished(false)
    80001c18:	00a4b423          	sd	a0,8(s1)
            context({body != nullptr ? (uint64) body : 0,
    80001c1c:	02090a63          	beqz	s2,80001c50 <_ZN3CCB15createCoroutineEPFvvE+0xd4>
    80001c20:	00090793          	mv	a5,s2
            finished(false)
    80001c24:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001c28:	02050863          	beqz	a0,80001c58 <_ZN3CCB15createCoroutineEPFvvE+0xdc>
    80001c2c:	000027b7          	lui	a5,0x2
    80001c30:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001c34:	00f4bc23          	sd	a5,24(s1)
    80001c38:	02048023          	sb	zero,32(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001c3c:	08090a63          	beqz	s2,80001cd0 <_ZN3CCB15createCoroutineEPFvvE+0x154>
    80001c40:	00048513          	mv	a0,s1
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	210080e7          	jalr	528(ra) # 80001e54 <_ZN9Scheduler3putEP3CCB>
    80001c4c:	0840006f          	j	80001cd0 <_ZN3CCB15createCoroutineEPFvvE+0x154>
            context({body != nullptr ? (uint64) body : 0,
    80001c50:	00000793          	li	a5,0
    80001c54:	fd1ff06f          	j	80001c24 <_ZN3CCB15createCoroutineEPFvvE+0xa8>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001c58:	00000793          	li	a5,0
    80001c5c:	fd9ff06f          	j	80001c34 <_ZN3CCB15createCoroutineEPFvvE+0xb8>
    80001c60:	00050913          	mv	s2,a0
    80001c64:	00004797          	auipc	a5,0x4
    80001c68:	f447c783          	lbu	a5,-188(a5) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c6c:	04079263          	bnez	a5,80001cb0 <_ZN3CCB15createCoroutineEPFvvE+0x134>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001c70:	00004797          	auipc	a5,0x4
    80001c74:	eb07b783          	ld	a5,-336(a5) # 80005b20 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c78:	0007b783          	ld	a5,0(a5)
    80001c7c:	00004717          	auipc	a4,0x4
    80001c80:	f3470713          	addi	a4,a4,-204 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c84:	00f73023          	sd	a5,0(a4)
    80001c88:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001c8c:	00004717          	auipc	a4,0x4
    80001c90:	eac73703          	ld	a4,-340(a4) # 80005b38 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c94:	00073703          	ld	a4,0(a4)
    80001c98:	40f70733          	sub	a4,a4,a5
    80001c9c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ca0:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ca4:	00100793          	li	a5,1
    80001ca8:	00004717          	auipc	a4,0x4
    80001cac:	f0f70023          	sb	a5,-256(a4) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001cb0:	00048593          	mv	a1,s1
    80001cb4:	00004517          	auipc	a0,0x4
    80001cb8:	efc50513          	addi	a0,a0,-260 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	4e4080e7          	jalr	1252(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001cc4:	00090513          	mv	a0,s2
    80001cc8:	00005097          	auipc	ra,0x5
    80001ccc:	fe0080e7          	jalr	-32(ra) # 80006ca8 <_Unwind_Resume>
    return new CCB(body);
}
    80001cd0:	00048513          	mv	a0,s1
    80001cd4:	01813083          	ld	ra,24(sp)
    80001cd8:	01013403          	ld	s0,16(sp)
    80001cdc:	00813483          	ld	s1,8(sp)
    80001ce0:	00013903          	ld	s2,0(sp)
    80001ce4:	02010113          	addi	sp,sp,32
    80001ce8:	00008067          	ret

0000000080001cec <_ZN3CCB8dispatchEv>:

    Riscv::popRegisters();
}

void CCB::dispatch()
{
    80001cec:	fe010113          	addi	sp,sp,-32
    80001cf0:	00113c23          	sd	ra,24(sp)
    80001cf4:	00813823          	sd	s0,16(sp)
    80001cf8:	00913423          	sd	s1,8(sp)
    80001cfc:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80001d00:	00004497          	auipc	s1,0x4
    80001d04:	ec04b483          	ld	s1,-320(s1) # 80005bc0 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80001d08:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001d0c:	02078c63          	beqz	a5,80001d44 <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	0dc080e7          	jalr	220(ra) # 80001dec <_ZN9Scheduler3getEv>
    80001d18:	00004797          	auipc	a5,0x4
    80001d1c:	eaa7b423          	sd	a0,-344(a5) # 80005bc0 <_ZN3CCB7runningE>

    CCB::contextSwitch(&old->context, &running->context);
    80001d20:	01050593          	addi	a1,a0,16
    80001d24:	01048513          	addi	a0,s1,16
    80001d28:	fffff097          	auipc	ra,0xfffff
    80001d2c:	3d0080e7          	jalr	976(ra) # 800010f8 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80001d30:	01813083          	ld	ra,24(sp)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	00813483          	ld	s1,8(sp)
    80001d3c:	02010113          	addi	sp,sp,32
    80001d40:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001d44:	00048513          	mv	a0,s1
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	10c080e7          	jalr	268(ra) # 80001e54 <_ZN9Scheduler3putEP3CCB>
    80001d50:	fc1ff06f          	j	80001d10 <_ZN3CCB8dispatchEv+0x24>

0000000080001d54 <_ZN3CCB5yieldEv>:
{
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	29c080e7          	jalr	668(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	f80080e7          	jalr	-128(ra) # 80001cec <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    80001d74:	fffff097          	auipc	ra,0xfffff
    80001d78:	308080e7          	jalr	776(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_ZN5Riscv10popSppSpieEv>:
//

#include "../h/riscv.hpp"

void Riscv::popSppSpie()
{
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00813423          	sd	s0,8(sp)
    80001d94:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001d98:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001d9c:	10200073          	sret
}
    80001da0:	00813403          	ld	s0,8(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00813423          	sd	s0,8(sp)
    80001db4:	01010413          	addi	s0,sp,16
    80001db8:	00100793          	li	a5,1
    80001dbc:	00f50863          	beq	a0,a5,80001dcc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001dc0:	00813403          	ld	s0,8(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret
    80001dcc:	000107b7          	lui	a5,0x10
    80001dd0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001dd4:	fef596e3          	bne	a1,a5,80001dc0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001dd8:	00004797          	auipc	a5,0x4
    80001ddc:	df078793          	addi	a5,a5,-528 # 80005bc8 <_ZN9Scheduler19readyCoroutineQueueE>
    80001de0:	0007b023          	sd	zero,0(a5)
    80001de4:	0007b423          	sd	zero,8(a5)
    80001de8:	fd9ff06f          	j	80001dc0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001dec <_ZN9Scheduler3getEv>:
{
    80001dec:	fe010113          	addi	sp,sp,-32
    80001df0:	00113c23          	sd	ra,24(sp)
    80001df4:	00813823          	sd	s0,16(sp)
    80001df8:	00913423          	sd	s1,8(sp)
    80001dfc:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001e00:	00004517          	auipc	a0,0x4
    80001e04:	dc853503          	ld	a0,-568(a0) # 80005bc8 <_ZN9Scheduler19readyCoroutineQueueE>
    80001e08:	04050263          	beqz	a0,80001e4c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001e0c:	00853783          	ld	a5,8(a0)
    80001e10:	00004717          	auipc	a4,0x4
    80001e14:	daf73c23          	sd	a5,-584(a4) # 80005bc8 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80001e18:	02078463          	beqz	a5,80001e40 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80001e1c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	d0c080e7          	jalr	-756(ra) # 80001b2c <_ZdlPv>
}
    80001e28:	00048513          	mv	a0,s1
    80001e2c:	01813083          	ld	ra,24(sp)
    80001e30:	01013403          	ld	s0,16(sp)
    80001e34:	00813483          	ld	s1,8(sp)
    80001e38:	02010113          	addi	sp,sp,32
    80001e3c:	00008067          	ret
        if (!head) { tail = 0; }
    80001e40:	00004797          	auipc	a5,0x4
    80001e44:	d807b823          	sd	zero,-624(a5) # 80005bd0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001e48:	fd5ff06f          	j	80001e1c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001e4c:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001e50:	fd9ff06f          	j	80001e28 <_ZN9Scheduler3getEv+0x3c>

0000000080001e54 <_ZN9Scheduler3putEP3CCB>:
{
    80001e54:	fe010113          	addi	sp,sp,-32
    80001e58:	00113c23          	sd	ra,24(sp)
    80001e5c:	00813823          	sd	s0,16(sp)
    80001e60:	00913423          	sd	s1,8(sp)
    80001e64:	02010413          	addi	s0,sp,32
    80001e68:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001e6c:	01000513          	li	a0,16
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	c6c080e7          	jalr	-916(ra) # 80001adc <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001e78:	00953023          	sd	s1,0(a0)
    80001e7c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001e80:	00004797          	auipc	a5,0x4
    80001e84:	d507b783          	ld	a5,-688(a5) # 80005bd0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001e88:	02078263          	beqz	a5,80001eac <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    80001e8c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001e90:	00004797          	auipc	a5,0x4
    80001e94:	d4a7b023          	sd	a0,-704(a5) # 80005bd0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001e98:	01813083          	ld	ra,24(sp)
    80001e9c:	01013403          	ld	s0,16(sp)
    80001ea0:	00813483          	ld	s1,8(sp)
    80001ea4:	02010113          	addi	sp,sp,32
    80001ea8:	00008067          	ret
            head = tail = elem;
    80001eac:	00004797          	auipc	a5,0x4
    80001eb0:	d1c78793          	addi	a5,a5,-740 # 80005bc8 <_ZN9Scheduler19readyCoroutineQueueE>
    80001eb4:	00a7b423          	sd	a0,8(a5)
    80001eb8:	00a7b023          	sd	a0,0(a5)
    80001ebc:	fddff06f          	j	80001e98 <_ZN9Scheduler3putEP3CCB+0x44>

0000000080001ec0 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00113423          	sd	ra,8(sp)
    80001ec8:	00813023          	sd	s0,0(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    80001ed0:	000105b7          	lui	a1,0x10
    80001ed4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ed8:	00100513          	li	a0,1
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	ed0080e7          	jalr	-304(ra) # 80001dac <_Z41__static_initialization_and_destruction_0ii>
    80001ee4:	00813083          	ld	ra,8(sp)
    80001ee8:	00013403          	ld	s0,0(sp)
    80001eec:	01010113          	addi	sp,sp,16
    80001ef0:	00008067          	ret

0000000080001ef4 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"

int main()
{
    80001ef4:	fc010113          	addi	sp,sp,-64
    80001ef8:	02113c23          	sd	ra,56(sp)
    80001efc:	02813823          	sd	s0,48(sp)
    80001f00:	02913423          	sd	s1,40(sp)
    80001f04:	03213023          	sd	s2,32(sp)
    80001f08:	04010413          	addi	s0,sp,64
    CCB *coroutines[3];

    coroutines[0] = CCB::createCoroutine(nullptr);
    80001f0c:	00000513          	li	a0,0
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	c6c080e7          	jalr	-916(ra) # 80001b7c <_ZN3CCB15createCoroutineEPFvvE>
    80001f18:	fca43423          	sd	a0,-56(s0)
    CCB::running = coroutines[0];
    80001f1c:	00004797          	auipc	a5,0x4
    80001f20:	c147b783          	ld	a5,-1004(a5) # 80005b30 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001f24:	00a7b023          	sd	a0,0(a5)

    coroutines[1] = CCB::createCoroutine(workerBodyC);
    80001f28:	00004517          	auipc	a0,0x4
    80001f2c:	c1853503          	ld	a0,-1000(a0) # 80005b40 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	c4c080e7          	jalr	-948(ra) # 80001b7c <_ZN3CCB15createCoroutineEPFvvE>
    80001f38:	fca43823          	sd	a0,-48(s0)
    printString("CoroutineC created\n");
    80001f3c:	00003517          	auipc	a0,0x3
    80001f40:	12c50513          	addi	a0,a0,300 # 80005068 <CONSOLE_STATUS+0x58>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	3b8080e7          	jalr	952(ra) # 800022fc <_Z11printStringPKc>
    coroutines[2] = CCB::createCoroutine(workerBodyD);
    80001f4c:	00004517          	auipc	a0,0x4
    80001f50:	bfc53503          	ld	a0,-1028(a0) # 80005b48 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	c28080e7          	jalr	-984(ra) # 80001b7c <_ZN3CCB15createCoroutineEPFvvE>
    80001f5c:	fca43c23          	sd	a0,-40(s0)
    printString("CoroutineD created\n");
    80001f60:	00003517          	auipc	a0,0x3
    80001f64:	12050513          	addi	a0,a0,288 # 80005080 <CONSOLE_STATUS+0x70>
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	394080e7          	jalr	916(ra) # 800022fc <_Z11printStringPKc>
    80001f70:	00c0006f          	j	80001f7c <main+0x88>

    while (!(coroutines[1]->isFinished() &&
             coroutines[2]->isFinished()))
    {
        CCB::yield();
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	de0080e7          	jalr	-544(ra) # 80001d54 <_ZN3CCB5yieldEv>
    while (!(coroutines[1]->isFinished() &&
    80001f7c:	fd043783          	ld	a5,-48(s0)
    80001f80:	0207c783          	lbu	a5,32(a5)
    80001f84:	fe0788e3          	beqz	a5,80001f74 <main+0x80>
             coroutines[2]->isFinished()))
    80001f88:	fd843783          	ld	a5,-40(s0)
    80001f8c:	0207c783          	lbu	a5,32(a5)
    while (!(coroutines[1]->isFinished() &&
    80001f90:	fe0782e3          	beqz	a5,80001f74 <main+0x80>
    80001f94:	fc840493          	addi	s1,s0,-56
    80001f98:	01c0006f          	j	80001fb4 <main+0xc0>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001f9c:	00090593          	mv	a1,s2
    80001fa0:	00004517          	auipc	a0,0x4
    80001fa4:	c1050513          	addi	a0,a0,-1008 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	1f8080e7          	jalr	504(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
    }

    for (auto &coroutine: coroutines)
    80001fb0:	00848493          	addi	s1,s1,8
    80001fb4:	fe040793          	addi	a5,s0,-32
    80001fb8:	06f48663          	beq	s1,a5,80002024 <main+0x130>
    {
        delete coroutine;
    80001fbc:	0004b903          	ld	s2,0(s1)
    80001fc0:	fe0908e3          	beqz	s2,80001fb0 <main+0xbc>
    ~CCB() { delete[] stack; }
    80001fc4:	00893503          	ld	a0,8(s2)
    80001fc8:	00050663          	beqz	a0,80001fd4 <main+0xe0>
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	b88080e7          	jalr	-1144(ra) # 80001b54 <_ZdaPv>
    80001fd4:	00004797          	auipc	a5,0x4
    80001fd8:	bd47c783          	lbu	a5,-1068(a5) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fdc:	fc0790e3          	bnez	a5,80001f9c <main+0xa8>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001fe0:	00004797          	auipc	a5,0x4
    80001fe4:	b407b783          	ld	a5,-1216(a5) # 80005b20 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001fe8:	0007b783          	ld	a5,0(a5)
    80001fec:	00004717          	auipc	a4,0x4
    80001ff0:	bc470713          	addi	a4,a4,-1084 # 80005bb0 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ff4:	00f73023          	sd	a5,0(a4)
    80001ff8:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001ffc:	00004717          	auipc	a4,0x4
    80002000:	b3c73703          	ld	a4,-1220(a4) # 80005b38 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002004:	00073703          	ld	a4,0(a4)
    80002008:	40f70733          	sub	a4,a4,a5
    8000200c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002010:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002014:	00100793          	li	a5,1
    80002018:	00004717          	auipc	a4,0x4
    8000201c:	b8f70823          	sb	a5,-1136(a4) # 80005ba8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002020:	f7dff06f          	j	80001f9c <main+0xa8>
    }
    printString("Finished\n");
    80002024:	00003517          	auipc	a0,0x3
    80002028:	07450513          	addi	a0,a0,116 # 80005098 <CONSOLE_STATUS+0x88>
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	2d0080e7          	jalr	720(ra) # 800022fc <_Z11printStringPKc>

    return 0;
    80002034:	00000513          	li	a0,0
    80002038:	03813083          	ld	ra,56(sp)
    8000203c:	03013403          	ld	s0,48(sp)
    80002040:	02813483          	ld	s1,40(sp)
    80002044:	02013903          	ld	s2,32(sp)
    80002048:	04010113          	addi	sp,sp,64
    8000204c:	00008067          	ret

0000000080002050 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    80002050:	ff010113          	addi	sp,sp,-16
    80002054:	00813423          	sd	s0,8(sp)
    80002058:	01010413          	addi	s0,sp,16
    8000205c:	00050613          	mv	a2,a0
    size += sizeof(Header);
    80002060:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    80002064:	fc05f713          	andi	a4,a1,-64
    80002068:	03f5f593          	andi	a1,a1,63
    8000206c:	00058463          	beqz	a1,80002074 <_ZN15MemoryAllocator9mem_allocEm+0x24>
    80002070:	04000593          	li	a1,64
    80002074:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002078:	00063503          	ld	a0,0(a2)
    Header *cur, *prev = nullptr;
    8000207c:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002080:	00050c63          	beqz	a0,80002098 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002084:	00853783          	ld	a5,8(a0)
    80002088:	00e7f863          	bgeu	a5,a4,80002098 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    8000208c:	00050693          	mv	a3,a0
    80002090:	00053503          	ld	a0,0(a0)
    80002094:	fedff06f          	j	80002080 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    80002098:	08050a63          	beqz	a0,8000212c <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    8000209c:	00853783          	ld	a5,8(a0)
    800020a0:	04e78a63          	beq	a5,a4,800020f4 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    800020a4:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    800020a8:	06068463          	beqz	a3,80002110 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800020ac:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    800020b0:	00053683          	ld	a3,0(a0)
    800020b4:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    800020b8:	00853683          	ld	a3,8(a0)
    800020bc:	40e686b3          	sub	a3,a3,a4
    800020c0:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    800020c4:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    800020c8:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    800020cc:	00863683          	ld	a3,8(a2)
    800020d0:	04068463          	beqz	a3,80002118 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    800020d4:	00068793          	mv	a5,a3
    800020d8:	00078713          	mv	a4,a5
    800020dc:	0007b783          	ld	a5,0(a5)
    800020e0:	00078463          	beqz	a5,800020e8 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    800020e4:	fea7eae3          	bltu	a5,a0,800020d8 <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    800020e8:	02070a63          	beqz	a4,8000211c <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    800020ec:	00f53023          	sd	a5,0(a0)
    800020f0:	0300006f          	j	80002120 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    800020f4:	00068863          	beqz	a3,80002104 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800020f8:	00053783          	ld	a5,0(a0)
    800020fc:	00f6b023          	sd	a5,0(a3)
    80002100:	fc5ff06f          	j	800020c4 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    80002104:	00053783          	ld	a5,0(a0)
    80002108:	00f63023          	sd	a5,0(a2)
    8000210c:	fb9ff06f          	j	800020c4 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002110:	00f63023          	sd	a5,0(a2)
    80002114:	f9dff06f          	j	800020b0 <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002118:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    8000211c:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002120:	00070c63          	beqz	a4,80002138 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002124:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002128:	01050513          	addi	a0,a0,16
}
    8000212c:	00813403          	ld	s0,8(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret
    else alloc_head = target;
    80002138:	00a63423          	sd	a0,8(a2)
    8000213c:	fedff06f          	j	80002128 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002140 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00813423          	sd	s0,8(sp)
    80002148:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    8000214c:	04050263          	beqz	a0,80002190 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002150:	00053783          	ld	a5,0(a0)
    80002154:	04078263          	beqz	a5,80002198 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002158:	00853703          	ld	a4,8(a0)
    8000215c:	00e506b3          	add	a3,a0,a4
    80002160:	00d78a63          	beq	a5,a3,80002174 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    80002164:	00000513          	li	a0,0
}
    80002168:	00813403          	ld	s0,8(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret
        cur->size += cur->next->size;
    80002174:	0087b683          	ld	a3,8(a5)
    80002178:	00d70733          	add	a4,a4,a3
    8000217c:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    80002180:	0007b783          	ld	a5,0(a5)
    80002184:	00f53023          	sd	a5,0(a0)
        return 1;
    80002188:	00100513          	li	a0,1
    8000218c:	fddff06f          	j	80002168 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    80002190:	00000513          	li	a0,0
    80002194:	fd5ff06f          	j	80002168 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    80002198:	00000513          	li	a0,0
    8000219c:	fcdff06f          	j	80002168 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

00000000800021a0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    800021a0:	0c058a63          	beqz	a1,80002274 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    800021a4:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    800021a8:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    800021ac:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    800021b0:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    800021b4:	00078a63          	beqz	a5,800021c8 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    800021b8:	00a7f863          	bgeu	a5,a0,800021c8 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    800021bc:	00078713          	mv	a4,a5
    800021c0:	0007b783          	ld	a5,0(a5)
    800021c4:	ff1ff06f          	j	800021b4 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    800021c8:	0a078a63          	beqz	a5,8000227c <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    800021cc:	0aa79c63          	bne	a5,a0,80002284 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    800021d0:	fe010113          	addi	sp,sp,-32
    800021d4:	00113c23          	sd	ra,24(sp)
    800021d8:	00813823          	sd	s0,16(sp)
    800021dc:	00913423          	sd	s1,8(sp)
    800021e0:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    800021e4:	02070c63          	beqz	a4,8000221c <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    800021e8:	0007b783          	ld	a5,0(a5)
    800021ec:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    800021f0:	0006b703          	ld	a4,0(a3)
    800021f4:	02070a63          	beqz	a4,80002228 <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    800021f8:	02e56c63          	bltu	a0,a4,80002230 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    800021fc:	00070793          	mv	a5,a4
    80002200:	00078493          	mv	s1,a5
    80002204:	0007b783          	ld	a5,0(a5)
    80002208:	00078463          	beqz	a5,80002210 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    8000220c:	fea7eae3          	bltu	a5,a0,80002200 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002210:	02048263          	beqz	s1,80002234 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002214:	fef5b823          	sd	a5,-16(a1)
    80002218:	0200006f          	j	80002238 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    8000221c:	0007b783          	ld	a5,0(a5)
    80002220:	00f6b423          	sd	a5,8(a3)
    80002224:	fcdff06f          	j	800021f0 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002228:	00070493          	mv	s1,a4
    8000222c:	0080006f          	j	80002234 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002230:	00000493          	li	s1,0
    else target->next = free_head;
    80002234:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002238:	02048a63          	beqz	s1,8000226c <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    8000223c:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002240:	00000097          	auipc	ra,0x0
    80002244:	f00080e7          	jalr	-256(ra) # 80002140 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002248:	00048513          	mv	a0,s1
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	ef4080e7          	jalr	-268(ra) # 80002140 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    80002254:	00000513          	li	a0,0
}
    80002258:	01813083          	ld	ra,24(sp)
    8000225c:	01013403          	ld	s0,16(sp)
    80002260:	00813483          	ld	s1,8(sp)
    80002264:	02010113          	addi	sp,sp,32
    80002268:	00008067          	ret
    else free_head = target;
    8000226c:	00a6b023          	sd	a0,0(a3)
    80002270:	fd1ff06f          	j	80002240 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    80002274:	fff00513          	li	a0,-1
    80002278:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    8000227c:	ffe00513          	li	a0,-2
    80002280:	00008067          	ret
    80002284:	ffe00513          	li	a0,-2
}
    80002288:	00008067          	ret

000000008000228c <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813423          	sd	s0,8(sp)
    80002294:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002298:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    8000229c:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    800022a0:	00078a63          	beqz	a5,800022b4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    800022a4:	0087b703          	ld	a4,8(a5)
    800022a8:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    800022ac:	0007b783          	ld	a5,0(a5)
    800022b0:	ff1ff06f          	j	800022a0 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    800022b4:	00813403          	ld	s0,8(sp)
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00008067          	ret

00000000800022c0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00813423          	sd	s0,8(sp)
    800022c8:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    800022cc:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    800022d0:	00000513          	li	a0,0
    800022d4:	0080006f          	j	800022dc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    800022d8:	0007b783          	ld	a5,0(a5)
    800022dc:	00078a63          	beqz	a5,800022f0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    800022e0:	0087b703          	ld	a4,8(a5)
    800022e4:	fee57ae3          	bgeu	a0,a4,800022d8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    800022e8:	00070513          	mv	a0,a4
    800022ec:	fedff06f          	j	800022d8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    800022f0:	00813403          	ld	s0,8(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800022fc:	fe010113          	addi	sp,sp,-32
    80002300:	00113c23          	sd	ra,24(sp)
    80002304:	00813823          	sd	s0,16(sp)
    80002308:	00913423          	sd	s1,8(sp)
    8000230c:	02010413          	addi	s0,sp,32
    80002310:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002314:	0004c503          	lbu	a0,0(s1)
    80002318:	00050a63          	beqz	a0,8000232c <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    8000231c:	00002097          	auipc	ra,0x2
    80002320:	394080e7          	jalr	916(ra) # 800046b0 <__putc>
        string++;
    80002324:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002328:	fedff06f          	j	80002314 <_Z11printStringPKc+0x18>
    }
}
    8000232c:	01813083          	ld	ra,24(sp)
    80002330:	01013403          	ld	s0,16(sp)
    80002334:	00813483          	ld	s1,8(sp)
    80002338:	02010113          	addi	sp,sp,32
    8000233c:	00008067          	ret

0000000080002340 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002340:	fd010113          	addi	sp,sp,-48
    80002344:	02113423          	sd	ra,40(sp)
    80002348:	02813023          	sd	s0,32(sp)
    8000234c:	00913c23          	sd	s1,24(sp)
    80002350:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002354:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002358:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000235c:	00a00613          	li	a2,10
    80002360:	02c5773b          	remuw	a4,a0,a2
    80002364:	02071693          	slli	a3,a4,0x20
    80002368:	0206d693          	srli	a3,a3,0x20
    8000236c:	00003717          	auipc	a4,0x3
    80002370:	d3c70713          	addi	a4,a4,-708 # 800050a8 <_ZZ12printIntegermE6digits>
    80002374:	00d70733          	add	a4,a4,a3
    80002378:	00074703          	lbu	a4,0(a4)
    8000237c:	fe040693          	addi	a3,s0,-32
    80002380:	009687b3          	add	a5,a3,s1
    80002384:	0014849b          	addiw	s1,s1,1
    80002388:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000238c:	0005071b          	sext.w	a4,a0
    80002390:	02c5553b          	divuw	a0,a0,a2
    80002394:	00900793          	li	a5,9
    80002398:	fce7e2e3          	bltu	a5,a4,8000235c <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    8000239c:	fff4849b          	addiw	s1,s1,-1
    800023a0:	0004ce63          	bltz	s1,800023bc <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    800023a4:	fe040793          	addi	a5,s0,-32
    800023a8:	009787b3          	add	a5,a5,s1
    800023ac:	ff07c503          	lbu	a0,-16(a5)
    800023b0:	00002097          	auipc	ra,0x2
    800023b4:	300080e7          	jalr	768(ra) # 800046b0 <__putc>
    800023b8:	fe5ff06f          	j	8000239c <_Z12printIntegerm+0x5c>
    800023bc:	02813083          	ld	ra,40(sp)
    800023c0:	02013403          	ld	s0,32(sp)
    800023c4:	01813483          	ld	s1,24(sp)
    800023c8:	03010113          	addi	sp,sp,48
    800023cc:	00008067          	ret

00000000800023d0 <start>:
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00813423          	sd	s0,8(sp)
    800023d8:	01010413          	addi	s0,sp,16
    800023dc:	300027f3          	csrr	a5,mstatus
    800023e0:	ffffe737          	lui	a4,0xffffe
    800023e4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff79af>
    800023e8:	00e7f7b3          	and	a5,a5,a4
    800023ec:	00001737          	lui	a4,0x1
    800023f0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800023f4:	00e7e7b3          	or	a5,a5,a4
    800023f8:	30079073          	csrw	mstatus,a5
    800023fc:	00000797          	auipc	a5,0x0
    80002400:	16078793          	addi	a5,a5,352 # 8000255c <system_main>
    80002404:	34179073          	csrw	mepc,a5
    80002408:	00000793          	li	a5,0
    8000240c:	18079073          	csrw	satp,a5
    80002410:	000107b7          	lui	a5,0x10
    80002414:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002418:	30279073          	csrw	medeleg,a5
    8000241c:	30379073          	csrw	mideleg,a5
    80002420:	104027f3          	csrr	a5,sie
    80002424:	2227e793          	ori	a5,a5,546
    80002428:	10479073          	csrw	sie,a5
    8000242c:	fff00793          	li	a5,-1
    80002430:	00a7d793          	srli	a5,a5,0xa
    80002434:	3b079073          	csrw	pmpaddr0,a5
    80002438:	00f00793          	li	a5,15
    8000243c:	3a079073          	csrw	pmpcfg0,a5
    80002440:	f14027f3          	csrr	a5,mhartid
    80002444:	0200c737          	lui	a4,0x200c
    80002448:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000244c:	0007869b          	sext.w	a3,a5
    80002450:	00269713          	slli	a4,a3,0x2
    80002454:	000f4637          	lui	a2,0xf4
    80002458:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000245c:	00d70733          	add	a4,a4,a3
    80002460:	0037979b          	slliw	a5,a5,0x3
    80002464:	020046b7          	lui	a3,0x2004
    80002468:	00d787b3          	add	a5,a5,a3
    8000246c:	00c585b3          	add	a1,a1,a2
    80002470:	00371693          	slli	a3,a4,0x3
    80002474:	00003717          	auipc	a4,0x3
    80002478:	76c70713          	addi	a4,a4,1900 # 80005be0 <timer_scratch>
    8000247c:	00b7b023          	sd	a1,0(a5)
    80002480:	00d70733          	add	a4,a4,a3
    80002484:	00f73c23          	sd	a5,24(a4)
    80002488:	02c73023          	sd	a2,32(a4)
    8000248c:	34071073          	csrw	mscratch,a4
    80002490:	00000797          	auipc	a5,0x0
    80002494:	6e078793          	addi	a5,a5,1760 # 80002b70 <timervec>
    80002498:	30579073          	csrw	mtvec,a5
    8000249c:	300027f3          	csrr	a5,mstatus
    800024a0:	0087e793          	ori	a5,a5,8
    800024a4:	30079073          	csrw	mstatus,a5
    800024a8:	304027f3          	csrr	a5,mie
    800024ac:	0807e793          	ori	a5,a5,128
    800024b0:	30479073          	csrw	mie,a5
    800024b4:	f14027f3          	csrr	a5,mhartid
    800024b8:	0007879b          	sext.w	a5,a5
    800024bc:	00078213          	mv	tp,a5
    800024c0:	30200073          	mret
    800024c4:	00813403          	ld	s0,8(sp)
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret

00000000800024d0 <timerinit>:
    800024d0:	ff010113          	addi	sp,sp,-16
    800024d4:	00813423          	sd	s0,8(sp)
    800024d8:	01010413          	addi	s0,sp,16
    800024dc:	f14027f3          	csrr	a5,mhartid
    800024e0:	0200c737          	lui	a4,0x200c
    800024e4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800024e8:	0007869b          	sext.w	a3,a5
    800024ec:	00269713          	slli	a4,a3,0x2
    800024f0:	000f4637          	lui	a2,0xf4
    800024f4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800024f8:	00d70733          	add	a4,a4,a3
    800024fc:	0037979b          	slliw	a5,a5,0x3
    80002500:	020046b7          	lui	a3,0x2004
    80002504:	00d787b3          	add	a5,a5,a3
    80002508:	00c585b3          	add	a1,a1,a2
    8000250c:	00371693          	slli	a3,a4,0x3
    80002510:	00003717          	auipc	a4,0x3
    80002514:	6d070713          	addi	a4,a4,1744 # 80005be0 <timer_scratch>
    80002518:	00b7b023          	sd	a1,0(a5)
    8000251c:	00d70733          	add	a4,a4,a3
    80002520:	00f73c23          	sd	a5,24(a4)
    80002524:	02c73023          	sd	a2,32(a4)
    80002528:	34071073          	csrw	mscratch,a4
    8000252c:	00000797          	auipc	a5,0x0
    80002530:	64478793          	addi	a5,a5,1604 # 80002b70 <timervec>
    80002534:	30579073          	csrw	mtvec,a5
    80002538:	300027f3          	csrr	a5,mstatus
    8000253c:	0087e793          	ori	a5,a5,8
    80002540:	30079073          	csrw	mstatus,a5
    80002544:	304027f3          	csrr	a5,mie
    80002548:	0807e793          	ori	a5,a5,128
    8000254c:	30479073          	csrw	mie,a5
    80002550:	00813403          	ld	s0,8(sp)
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret

000000008000255c <system_main>:
    8000255c:	fe010113          	addi	sp,sp,-32
    80002560:	00813823          	sd	s0,16(sp)
    80002564:	00913423          	sd	s1,8(sp)
    80002568:	00113c23          	sd	ra,24(sp)
    8000256c:	02010413          	addi	s0,sp,32
    80002570:	00000097          	auipc	ra,0x0
    80002574:	0c4080e7          	jalr	196(ra) # 80002634 <cpuid>
    80002578:	00003497          	auipc	s1,0x3
    8000257c:	5f848493          	addi	s1,s1,1528 # 80005b70 <started>
    80002580:	02050263          	beqz	a0,800025a4 <system_main+0x48>
    80002584:	0004a783          	lw	a5,0(s1)
    80002588:	0007879b          	sext.w	a5,a5
    8000258c:	fe078ce3          	beqz	a5,80002584 <system_main+0x28>
    80002590:	0ff0000f          	fence
    80002594:	00003517          	auipc	a0,0x3
    80002598:	b5450513          	addi	a0,a0,-1196 # 800050e8 <_ZZ12printIntegermE6digits+0x40>
    8000259c:	00001097          	auipc	ra,0x1
    800025a0:	a70080e7          	jalr	-1424(ra) # 8000300c <panic>
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	9c4080e7          	jalr	-1596(ra) # 80002f68 <consoleinit>
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	150080e7          	jalr	336(ra) # 800036fc <printfinit>
    800025b4:	00003517          	auipc	a0,0x3
    800025b8:	aec50513          	addi	a0,a0,-1300 # 800050a0 <CONSOLE_STATUS+0x90>
    800025bc:	00001097          	auipc	ra,0x1
    800025c0:	aac080e7          	jalr	-1364(ra) # 80003068 <__printf>
    800025c4:	00003517          	auipc	a0,0x3
    800025c8:	af450513          	addi	a0,a0,-1292 # 800050b8 <_ZZ12printIntegermE6digits+0x10>
    800025cc:	00001097          	auipc	ra,0x1
    800025d0:	a9c080e7          	jalr	-1380(ra) # 80003068 <__printf>
    800025d4:	00003517          	auipc	a0,0x3
    800025d8:	acc50513          	addi	a0,a0,-1332 # 800050a0 <CONSOLE_STATUS+0x90>
    800025dc:	00001097          	auipc	ra,0x1
    800025e0:	a8c080e7          	jalr	-1396(ra) # 80003068 <__printf>
    800025e4:	00001097          	auipc	ra,0x1
    800025e8:	4a4080e7          	jalr	1188(ra) # 80003a88 <kinit>
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	148080e7          	jalr	328(ra) # 80002734 <trapinit>
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	16c080e7          	jalr	364(ra) # 80002760 <trapinithart>
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	5b4080e7          	jalr	1460(ra) # 80002bb0 <plicinit>
    80002604:	00000097          	auipc	ra,0x0
    80002608:	5d4080e7          	jalr	1492(ra) # 80002bd8 <plicinithart>
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	078080e7          	jalr	120(ra) # 80002684 <userinit>
    80002614:	0ff0000f          	fence
    80002618:	00100793          	li	a5,1
    8000261c:	00003517          	auipc	a0,0x3
    80002620:	ab450513          	addi	a0,a0,-1356 # 800050d0 <_ZZ12printIntegermE6digits+0x28>
    80002624:	00f4a023          	sw	a5,0(s1)
    80002628:	00001097          	auipc	ra,0x1
    8000262c:	a40080e7          	jalr	-1472(ra) # 80003068 <__printf>
    80002630:	0000006f          	j	80002630 <system_main+0xd4>

0000000080002634 <cpuid>:
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00020513          	mv	a0,tp
    80002644:	00813403          	ld	s0,8(sp)
    80002648:	0005051b          	sext.w	a0,a0
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret

0000000080002654 <mycpu>:
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00813423          	sd	s0,8(sp)
    8000265c:	01010413          	addi	s0,sp,16
    80002660:	00020793          	mv	a5,tp
    80002664:	00813403          	ld	s0,8(sp)
    80002668:	0007879b          	sext.w	a5,a5
    8000266c:	00779793          	slli	a5,a5,0x7
    80002670:	00004517          	auipc	a0,0x4
    80002674:	5a050513          	addi	a0,a0,1440 # 80006c10 <cpus>
    80002678:	00f50533          	add	a0,a0,a5
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <userinit>:
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00813423          	sd	s0,8(sp)
    8000268c:	01010413          	addi	s0,sp,16
    80002690:	00813403          	ld	s0,8(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00000317          	auipc	t1,0x0
    8000269c:	85c30067          	jr	-1956(t1) # 80001ef4 <main>

00000000800026a0 <either_copyout>:
    800026a0:	ff010113          	addi	sp,sp,-16
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	00113423          	sd	ra,8(sp)
    800026ac:	01010413          	addi	s0,sp,16
    800026b0:	02051663          	bnez	a0,800026dc <either_copyout+0x3c>
    800026b4:	00058513          	mv	a0,a1
    800026b8:	00060593          	mv	a1,a2
    800026bc:	0006861b          	sext.w	a2,a3
    800026c0:	00002097          	auipc	ra,0x2
    800026c4:	c54080e7          	jalr	-940(ra) # 80004314 <__memmove>
    800026c8:	00813083          	ld	ra,8(sp)
    800026cc:	00013403          	ld	s0,0(sp)
    800026d0:	00000513          	li	a0,0
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00008067          	ret
    800026dc:	00003517          	auipc	a0,0x3
    800026e0:	a3450513          	addi	a0,a0,-1484 # 80005110 <_ZZ12printIntegermE6digits+0x68>
    800026e4:	00001097          	auipc	ra,0x1
    800026e8:	928080e7          	jalr	-1752(ra) # 8000300c <panic>

00000000800026ec <either_copyin>:
    800026ec:	ff010113          	addi	sp,sp,-16
    800026f0:	00813023          	sd	s0,0(sp)
    800026f4:	00113423          	sd	ra,8(sp)
    800026f8:	01010413          	addi	s0,sp,16
    800026fc:	02059463          	bnez	a1,80002724 <either_copyin+0x38>
    80002700:	00060593          	mv	a1,a2
    80002704:	0006861b          	sext.w	a2,a3
    80002708:	00002097          	auipc	ra,0x2
    8000270c:	c0c080e7          	jalr	-1012(ra) # 80004314 <__memmove>
    80002710:	00813083          	ld	ra,8(sp)
    80002714:	00013403          	ld	s0,0(sp)
    80002718:	00000513          	li	a0,0
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret
    80002724:	00003517          	auipc	a0,0x3
    80002728:	a1450513          	addi	a0,a0,-1516 # 80005138 <_ZZ12printIntegermE6digits+0x90>
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	8e0080e7          	jalr	-1824(ra) # 8000300c <panic>

0000000080002734 <trapinit>:
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00813423          	sd	s0,8(sp)
    8000273c:	01010413          	addi	s0,sp,16
    80002740:	00813403          	ld	s0,8(sp)
    80002744:	00003597          	auipc	a1,0x3
    80002748:	a1c58593          	addi	a1,a1,-1508 # 80005160 <_ZZ12printIntegermE6digits+0xb8>
    8000274c:	00004517          	auipc	a0,0x4
    80002750:	54450513          	addi	a0,a0,1348 # 80006c90 <tickslock>
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00001317          	auipc	t1,0x1
    8000275c:	5c030067          	jr	1472(t1) # 80003d18 <initlock>

0000000080002760 <trapinithart>:
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00813423          	sd	s0,8(sp)
    80002768:	01010413          	addi	s0,sp,16
    8000276c:	00000797          	auipc	a5,0x0
    80002770:	2f478793          	addi	a5,a5,756 # 80002a60 <kernelvec>
    80002774:	10579073          	csrw	stvec,a5
    80002778:	00813403          	ld	s0,8(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <usertrap>:
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00813423          	sd	s0,8(sp)
    8000278c:	01010413          	addi	s0,sp,16
    80002790:	00813403          	ld	s0,8(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <usertrapret>:
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00813423          	sd	s0,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    800027a8:	00813403          	ld	s0,8(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <kerneltrap>:
    800027b4:	fe010113          	addi	sp,sp,-32
    800027b8:	00813823          	sd	s0,16(sp)
    800027bc:	00113c23          	sd	ra,24(sp)
    800027c0:	00913423          	sd	s1,8(sp)
    800027c4:	02010413          	addi	s0,sp,32
    800027c8:	142025f3          	csrr	a1,scause
    800027cc:	100027f3          	csrr	a5,sstatus
    800027d0:	0027f793          	andi	a5,a5,2
    800027d4:	10079c63          	bnez	a5,800028ec <kerneltrap+0x138>
    800027d8:	142027f3          	csrr	a5,scause
    800027dc:	0207ce63          	bltz	a5,80002818 <kerneltrap+0x64>
    800027e0:	00003517          	auipc	a0,0x3
    800027e4:	9c850513          	addi	a0,a0,-1592 # 800051a8 <_ZZ12printIntegermE6digits+0x100>
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	880080e7          	jalr	-1920(ra) # 80003068 <__printf>
    800027f0:	141025f3          	csrr	a1,sepc
    800027f4:	14302673          	csrr	a2,stval
    800027f8:	00003517          	auipc	a0,0x3
    800027fc:	9c050513          	addi	a0,a0,-1600 # 800051b8 <_ZZ12printIntegermE6digits+0x110>
    80002800:	00001097          	auipc	ra,0x1
    80002804:	868080e7          	jalr	-1944(ra) # 80003068 <__printf>
    80002808:	00003517          	auipc	a0,0x3
    8000280c:	9c850513          	addi	a0,a0,-1592 # 800051d0 <_ZZ12printIntegermE6digits+0x128>
    80002810:	00000097          	auipc	ra,0x0
    80002814:	7fc080e7          	jalr	2044(ra) # 8000300c <panic>
    80002818:	0ff7f713          	andi	a4,a5,255
    8000281c:	00900693          	li	a3,9
    80002820:	04d70063          	beq	a4,a3,80002860 <kerneltrap+0xac>
    80002824:	fff00713          	li	a4,-1
    80002828:	03f71713          	slli	a4,a4,0x3f
    8000282c:	00170713          	addi	a4,a4,1
    80002830:	fae798e3          	bne	a5,a4,800027e0 <kerneltrap+0x2c>
    80002834:	00000097          	auipc	ra,0x0
    80002838:	e00080e7          	jalr	-512(ra) # 80002634 <cpuid>
    8000283c:	06050663          	beqz	a0,800028a8 <kerneltrap+0xf4>
    80002840:	144027f3          	csrr	a5,sip
    80002844:	ffd7f793          	andi	a5,a5,-3
    80002848:	14479073          	csrw	sip,a5
    8000284c:	01813083          	ld	ra,24(sp)
    80002850:	01013403          	ld	s0,16(sp)
    80002854:	00813483          	ld	s1,8(sp)
    80002858:	02010113          	addi	sp,sp,32
    8000285c:	00008067          	ret
    80002860:	00000097          	auipc	ra,0x0
    80002864:	3c4080e7          	jalr	964(ra) # 80002c24 <plic_claim>
    80002868:	00a00793          	li	a5,10
    8000286c:	00050493          	mv	s1,a0
    80002870:	06f50863          	beq	a0,a5,800028e0 <kerneltrap+0x12c>
    80002874:	fc050ce3          	beqz	a0,8000284c <kerneltrap+0x98>
    80002878:	00050593          	mv	a1,a0
    8000287c:	00003517          	auipc	a0,0x3
    80002880:	90c50513          	addi	a0,a0,-1780 # 80005188 <_ZZ12printIntegermE6digits+0xe0>
    80002884:	00000097          	auipc	ra,0x0
    80002888:	7e4080e7          	jalr	2020(ra) # 80003068 <__printf>
    8000288c:	01013403          	ld	s0,16(sp)
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	00048513          	mv	a0,s1
    80002898:	00813483          	ld	s1,8(sp)
    8000289c:	02010113          	addi	sp,sp,32
    800028a0:	00000317          	auipc	t1,0x0
    800028a4:	3bc30067          	jr	956(t1) # 80002c5c <plic_complete>
    800028a8:	00004517          	auipc	a0,0x4
    800028ac:	3e850513          	addi	a0,a0,1000 # 80006c90 <tickslock>
    800028b0:	00001097          	auipc	ra,0x1
    800028b4:	48c080e7          	jalr	1164(ra) # 80003d3c <acquire>
    800028b8:	00003717          	auipc	a4,0x3
    800028bc:	2bc70713          	addi	a4,a4,700 # 80005b74 <ticks>
    800028c0:	00072783          	lw	a5,0(a4)
    800028c4:	00004517          	auipc	a0,0x4
    800028c8:	3cc50513          	addi	a0,a0,972 # 80006c90 <tickslock>
    800028cc:	0017879b          	addiw	a5,a5,1
    800028d0:	00f72023          	sw	a5,0(a4)
    800028d4:	00001097          	auipc	ra,0x1
    800028d8:	534080e7          	jalr	1332(ra) # 80003e08 <release>
    800028dc:	f65ff06f          	j	80002840 <kerneltrap+0x8c>
    800028e0:	00001097          	auipc	ra,0x1
    800028e4:	090080e7          	jalr	144(ra) # 80003970 <uartintr>
    800028e8:	fa5ff06f          	j	8000288c <kerneltrap+0xd8>
    800028ec:	00003517          	auipc	a0,0x3
    800028f0:	87c50513          	addi	a0,a0,-1924 # 80005168 <_ZZ12printIntegermE6digits+0xc0>
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	718080e7          	jalr	1816(ra) # 8000300c <panic>

00000000800028fc <clockintr>:
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	00113c23          	sd	ra,24(sp)
    8000290c:	02010413          	addi	s0,sp,32
    80002910:	00004497          	auipc	s1,0x4
    80002914:	38048493          	addi	s1,s1,896 # 80006c90 <tickslock>
    80002918:	00048513          	mv	a0,s1
    8000291c:	00001097          	auipc	ra,0x1
    80002920:	420080e7          	jalr	1056(ra) # 80003d3c <acquire>
    80002924:	00003717          	auipc	a4,0x3
    80002928:	25070713          	addi	a4,a4,592 # 80005b74 <ticks>
    8000292c:	00072783          	lw	a5,0(a4)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	01813083          	ld	ra,24(sp)
    80002938:	00048513          	mv	a0,s1
    8000293c:	0017879b          	addiw	a5,a5,1
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	00f72023          	sw	a5,0(a4)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00001317          	auipc	t1,0x1
    80002950:	4bc30067          	jr	1212(t1) # 80003e08 <release>

0000000080002954 <devintr>:
    80002954:	142027f3          	csrr	a5,scause
    80002958:	00000513          	li	a0,0
    8000295c:	0007c463          	bltz	a5,80002964 <devintr+0x10>
    80002960:	00008067          	ret
    80002964:	fe010113          	addi	sp,sp,-32
    80002968:	00813823          	sd	s0,16(sp)
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00913423          	sd	s1,8(sp)
    80002974:	02010413          	addi	s0,sp,32
    80002978:	0ff7f713          	andi	a4,a5,255
    8000297c:	00900693          	li	a3,9
    80002980:	04d70c63          	beq	a4,a3,800029d8 <devintr+0x84>
    80002984:	fff00713          	li	a4,-1
    80002988:	03f71713          	slli	a4,a4,0x3f
    8000298c:	00170713          	addi	a4,a4,1
    80002990:	00e78c63          	beq	a5,a4,800029a8 <devintr+0x54>
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	01013403          	ld	s0,16(sp)
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	02010113          	addi	sp,sp,32
    800029a4:	00008067          	ret
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	c8c080e7          	jalr	-884(ra) # 80002634 <cpuid>
    800029b0:	06050663          	beqz	a0,80002a1c <devintr+0xc8>
    800029b4:	144027f3          	csrr	a5,sip
    800029b8:	ffd7f793          	andi	a5,a5,-3
    800029bc:	14479073          	csrw	sip,a5
    800029c0:	01813083          	ld	ra,24(sp)
    800029c4:	01013403          	ld	s0,16(sp)
    800029c8:	00813483          	ld	s1,8(sp)
    800029cc:	00200513          	li	a0,2
    800029d0:	02010113          	addi	sp,sp,32
    800029d4:	00008067          	ret
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	24c080e7          	jalr	588(ra) # 80002c24 <plic_claim>
    800029e0:	00a00793          	li	a5,10
    800029e4:	00050493          	mv	s1,a0
    800029e8:	06f50663          	beq	a0,a5,80002a54 <devintr+0x100>
    800029ec:	00100513          	li	a0,1
    800029f0:	fa0482e3          	beqz	s1,80002994 <devintr+0x40>
    800029f4:	00048593          	mv	a1,s1
    800029f8:	00002517          	auipc	a0,0x2
    800029fc:	79050513          	addi	a0,a0,1936 # 80005188 <_ZZ12printIntegermE6digits+0xe0>
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	668080e7          	jalr	1640(ra) # 80003068 <__printf>
    80002a08:	00048513          	mv	a0,s1
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	250080e7          	jalr	592(ra) # 80002c5c <plic_complete>
    80002a14:	00100513          	li	a0,1
    80002a18:	f7dff06f          	j	80002994 <devintr+0x40>
    80002a1c:	00004517          	auipc	a0,0x4
    80002a20:	27450513          	addi	a0,a0,628 # 80006c90 <tickslock>
    80002a24:	00001097          	auipc	ra,0x1
    80002a28:	318080e7          	jalr	792(ra) # 80003d3c <acquire>
    80002a2c:	00003717          	auipc	a4,0x3
    80002a30:	14870713          	addi	a4,a4,328 # 80005b74 <ticks>
    80002a34:	00072783          	lw	a5,0(a4)
    80002a38:	00004517          	auipc	a0,0x4
    80002a3c:	25850513          	addi	a0,a0,600 # 80006c90 <tickslock>
    80002a40:	0017879b          	addiw	a5,a5,1
    80002a44:	00f72023          	sw	a5,0(a4)
    80002a48:	00001097          	auipc	ra,0x1
    80002a4c:	3c0080e7          	jalr	960(ra) # 80003e08 <release>
    80002a50:	f65ff06f          	j	800029b4 <devintr+0x60>
    80002a54:	00001097          	auipc	ra,0x1
    80002a58:	f1c080e7          	jalr	-228(ra) # 80003970 <uartintr>
    80002a5c:	fadff06f          	j	80002a08 <devintr+0xb4>

0000000080002a60 <kernelvec>:
    80002a60:	f0010113          	addi	sp,sp,-256
    80002a64:	00113023          	sd	ra,0(sp)
    80002a68:	00213423          	sd	sp,8(sp)
    80002a6c:	00313823          	sd	gp,16(sp)
    80002a70:	00413c23          	sd	tp,24(sp)
    80002a74:	02513023          	sd	t0,32(sp)
    80002a78:	02613423          	sd	t1,40(sp)
    80002a7c:	02713823          	sd	t2,48(sp)
    80002a80:	02813c23          	sd	s0,56(sp)
    80002a84:	04913023          	sd	s1,64(sp)
    80002a88:	04a13423          	sd	a0,72(sp)
    80002a8c:	04b13823          	sd	a1,80(sp)
    80002a90:	04c13c23          	sd	a2,88(sp)
    80002a94:	06d13023          	sd	a3,96(sp)
    80002a98:	06e13423          	sd	a4,104(sp)
    80002a9c:	06f13823          	sd	a5,112(sp)
    80002aa0:	07013c23          	sd	a6,120(sp)
    80002aa4:	09113023          	sd	a7,128(sp)
    80002aa8:	09213423          	sd	s2,136(sp)
    80002aac:	09313823          	sd	s3,144(sp)
    80002ab0:	09413c23          	sd	s4,152(sp)
    80002ab4:	0b513023          	sd	s5,160(sp)
    80002ab8:	0b613423          	sd	s6,168(sp)
    80002abc:	0b713823          	sd	s7,176(sp)
    80002ac0:	0b813c23          	sd	s8,184(sp)
    80002ac4:	0d913023          	sd	s9,192(sp)
    80002ac8:	0da13423          	sd	s10,200(sp)
    80002acc:	0db13823          	sd	s11,208(sp)
    80002ad0:	0dc13c23          	sd	t3,216(sp)
    80002ad4:	0fd13023          	sd	t4,224(sp)
    80002ad8:	0fe13423          	sd	t5,232(sp)
    80002adc:	0ff13823          	sd	t6,240(sp)
    80002ae0:	cd5ff0ef          	jal	ra,800027b4 <kerneltrap>
    80002ae4:	00013083          	ld	ra,0(sp)
    80002ae8:	00813103          	ld	sp,8(sp)
    80002aec:	01013183          	ld	gp,16(sp)
    80002af0:	02013283          	ld	t0,32(sp)
    80002af4:	02813303          	ld	t1,40(sp)
    80002af8:	03013383          	ld	t2,48(sp)
    80002afc:	03813403          	ld	s0,56(sp)
    80002b00:	04013483          	ld	s1,64(sp)
    80002b04:	04813503          	ld	a0,72(sp)
    80002b08:	05013583          	ld	a1,80(sp)
    80002b0c:	05813603          	ld	a2,88(sp)
    80002b10:	06013683          	ld	a3,96(sp)
    80002b14:	06813703          	ld	a4,104(sp)
    80002b18:	07013783          	ld	a5,112(sp)
    80002b1c:	07813803          	ld	a6,120(sp)
    80002b20:	08013883          	ld	a7,128(sp)
    80002b24:	08813903          	ld	s2,136(sp)
    80002b28:	09013983          	ld	s3,144(sp)
    80002b2c:	09813a03          	ld	s4,152(sp)
    80002b30:	0a013a83          	ld	s5,160(sp)
    80002b34:	0a813b03          	ld	s6,168(sp)
    80002b38:	0b013b83          	ld	s7,176(sp)
    80002b3c:	0b813c03          	ld	s8,184(sp)
    80002b40:	0c013c83          	ld	s9,192(sp)
    80002b44:	0c813d03          	ld	s10,200(sp)
    80002b48:	0d013d83          	ld	s11,208(sp)
    80002b4c:	0d813e03          	ld	t3,216(sp)
    80002b50:	0e013e83          	ld	t4,224(sp)
    80002b54:	0e813f03          	ld	t5,232(sp)
    80002b58:	0f013f83          	ld	t6,240(sp)
    80002b5c:	10010113          	addi	sp,sp,256
    80002b60:	10200073          	sret
    80002b64:	00000013          	nop
    80002b68:	00000013          	nop
    80002b6c:	00000013          	nop

0000000080002b70 <timervec>:
    80002b70:	34051573          	csrrw	a0,mscratch,a0
    80002b74:	00b53023          	sd	a1,0(a0)
    80002b78:	00c53423          	sd	a2,8(a0)
    80002b7c:	00d53823          	sd	a3,16(a0)
    80002b80:	01853583          	ld	a1,24(a0)
    80002b84:	02053603          	ld	a2,32(a0)
    80002b88:	0005b683          	ld	a3,0(a1)
    80002b8c:	00c686b3          	add	a3,a3,a2
    80002b90:	00d5b023          	sd	a3,0(a1)
    80002b94:	00200593          	li	a1,2
    80002b98:	14459073          	csrw	sip,a1
    80002b9c:	01053683          	ld	a3,16(a0)
    80002ba0:	00853603          	ld	a2,8(a0)
    80002ba4:	00053583          	ld	a1,0(a0)
    80002ba8:	34051573          	csrrw	a0,mscratch,a0
    80002bac:	30200073          	mret

0000000080002bb0 <plicinit>:
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00813423          	sd	s0,8(sp)
    80002bb8:	01010413          	addi	s0,sp,16
    80002bbc:	00813403          	ld	s0,8(sp)
    80002bc0:	0c0007b7          	lui	a5,0xc000
    80002bc4:	00100713          	li	a4,1
    80002bc8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002bcc:	00e7a223          	sw	a4,4(a5)
    80002bd0:	01010113          	addi	sp,sp,16
    80002bd4:	00008067          	ret

0000000080002bd8 <plicinithart>:
    80002bd8:	ff010113          	addi	sp,sp,-16
    80002bdc:	00813023          	sd	s0,0(sp)
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	a4c080e7          	jalr	-1460(ra) # 80002634 <cpuid>
    80002bf0:	0085171b          	slliw	a4,a0,0x8
    80002bf4:	0c0027b7          	lui	a5,0xc002
    80002bf8:	00e787b3          	add	a5,a5,a4
    80002bfc:	40200713          	li	a4,1026
    80002c00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002c04:	00813083          	ld	ra,8(sp)
    80002c08:	00013403          	ld	s0,0(sp)
    80002c0c:	00d5151b          	slliw	a0,a0,0xd
    80002c10:	0c2017b7          	lui	a5,0xc201
    80002c14:	00a78533          	add	a0,a5,a0
    80002c18:	00052023          	sw	zero,0(a0)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	00008067          	ret

0000000080002c24 <plic_claim>:
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00813023          	sd	s0,0(sp)
    80002c2c:	00113423          	sd	ra,8(sp)
    80002c30:	01010413          	addi	s0,sp,16
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	a00080e7          	jalr	-1536(ra) # 80002634 <cpuid>
    80002c3c:	00813083          	ld	ra,8(sp)
    80002c40:	00013403          	ld	s0,0(sp)
    80002c44:	00d5151b          	slliw	a0,a0,0xd
    80002c48:	0c2017b7          	lui	a5,0xc201
    80002c4c:	00a78533          	add	a0,a5,a0
    80002c50:	00452503          	lw	a0,4(a0)
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret

0000000080002c5c <plic_complete>:
    80002c5c:	fe010113          	addi	sp,sp,-32
    80002c60:	00813823          	sd	s0,16(sp)
    80002c64:	00913423          	sd	s1,8(sp)
    80002c68:	00113c23          	sd	ra,24(sp)
    80002c6c:	02010413          	addi	s0,sp,32
    80002c70:	00050493          	mv	s1,a0
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	9c0080e7          	jalr	-1600(ra) # 80002634 <cpuid>
    80002c7c:	01813083          	ld	ra,24(sp)
    80002c80:	01013403          	ld	s0,16(sp)
    80002c84:	00d5179b          	slliw	a5,a0,0xd
    80002c88:	0c201737          	lui	a4,0xc201
    80002c8c:	00f707b3          	add	a5,a4,a5
    80002c90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002c94:	00813483          	ld	s1,8(sp)
    80002c98:	02010113          	addi	sp,sp,32
    80002c9c:	00008067          	ret

0000000080002ca0 <consolewrite>:
    80002ca0:	fb010113          	addi	sp,sp,-80
    80002ca4:	04813023          	sd	s0,64(sp)
    80002ca8:	04113423          	sd	ra,72(sp)
    80002cac:	02913c23          	sd	s1,56(sp)
    80002cb0:	03213823          	sd	s2,48(sp)
    80002cb4:	03313423          	sd	s3,40(sp)
    80002cb8:	03413023          	sd	s4,32(sp)
    80002cbc:	01513c23          	sd	s5,24(sp)
    80002cc0:	05010413          	addi	s0,sp,80
    80002cc4:	06c05c63          	blez	a2,80002d3c <consolewrite+0x9c>
    80002cc8:	00060993          	mv	s3,a2
    80002ccc:	00050a13          	mv	s4,a0
    80002cd0:	00058493          	mv	s1,a1
    80002cd4:	00000913          	li	s2,0
    80002cd8:	fff00a93          	li	s5,-1
    80002cdc:	01c0006f          	j	80002cf8 <consolewrite+0x58>
    80002ce0:	fbf44503          	lbu	a0,-65(s0)
    80002ce4:	0019091b          	addiw	s2,s2,1
    80002ce8:	00148493          	addi	s1,s1,1
    80002cec:	00001097          	auipc	ra,0x1
    80002cf0:	a9c080e7          	jalr	-1380(ra) # 80003788 <uartputc>
    80002cf4:	03298063          	beq	s3,s2,80002d14 <consolewrite+0x74>
    80002cf8:	00048613          	mv	a2,s1
    80002cfc:	00100693          	li	a3,1
    80002d00:	000a0593          	mv	a1,s4
    80002d04:	fbf40513          	addi	a0,s0,-65
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	9e4080e7          	jalr	-1564(ra) # 800026ec <either_copyin>
    80002d10:	fd5518e3          	bne	a0,s5,80002ce0 <consolewrite+0x40>
    80002d14:	04813083          	ld	ra,72(sp)
    80002d18:	04013403          	ld	s0,64(sp)
    80002d1c:	03813483          	ld	s1,56(sp)
    80002d20:	02813983          	ld	s3,40(sp)
    80002d24:	02013a03          	ld	s4,32(sp)
    80002d28:	01813a83          	ld	s5,24(sp)
    80002d2c:	00090513          	mv	a0,s2
    80002d30:	03013903          	ld	s2,48(sp)
    80002d34:	05010113          	addi	sp,sp,80
    80002d38:	00008067          	ret
    80002d3c:	00000913          	li	s2,0
    80002d40:	fd5ff06f          	j	80002d14 <consolewrite+0x74>

0000000080002d44 <consoleread>:
    80002d44:	f9010113          	addi	sp,sp,-112
    80002d48:	06813023          	sd	s0,96(sp)
    80002d4c:	04913c23          	sd	s1,88(sp)
    80002d50:	05213823          	sd	s2,80(sp)
    80002d54:	05313423          	sd	s3,72(sp)
    80002d58:	05413023          	sd	s4,64(sp)
    80002d5c:	03513c23          	sd	s5,56(sp)
    80002d60:	03613823          	sd	s6,48(sp)
    80002d64:	03713423          	sd	s7,40(sp)
    80002d68:	03813023          	sd	s8,32(sp)
    80002d6c:	06113423          	sd	ra,104(sp)
    80002d70:	01913c23          	sd	s9,24(sp)
    80002d74:	07010413          	addi	s0,sp,112
    80002d78:	00060b93          	mv	s7,a2
    80002d7c:	00050913          	mv	s2,a0
    80002d80:	00058c13          	mv	s8,a1
    80002d84:	00060b1b          	sext.w	s6,a2
    80002d88:	00004497          	auipc	s1,0x4
    80002d8c:	f3048493          	addi	s1,s1,-208 # 80006cb8 <cons>
    80002d90:	00400993          	li	s3,4
    80002d94:	fff00a13          	li	s4,-1
    80002d98:	00a00a93          	li	s5,10
    80002d9c:	05705e63          	blez	s7,80002df8 <consoleread+0xb4>
    80002da0:	09c4a703          	lw	a4,156(s1)
    80002da4:	0984a783          	lw	a5,152(s1)
    80002da8:	0007071b          	sext.w	a4,a4
    80002dac:	08e78463          	beq	a5,a4,80002e34 <consoleread+0xf0>
    80002db0:	07f7f713          	andi	a4,a5,127
    80002db4:	00e48733          	add	a4,s1,a4
    80002db8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002dbc:	0017869b          	addiw	a3,a5,1
    80002dc0:	08d4ac23          	sw	a3,152(s1)
    80002dc4:	00070c9b          	sext.w	s9,a4
    80002dc8:	0b370663          	beq	a4,s3,80002e74 <consoleread+0x130>
    80002dcc:	00100693          	li	a3,1
    80002dd0:	f9f40613          	addi	a2,s0,-97
    80002dd4:	000c0593          	mv	a1,s8
    80002dd8:	00090513          	mv	a0,s2
    80002ddc:	f8e40fa3          	sb	a4,-97(s0)
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	8c0080e7          	jalr	-1856(ra) # 800026a0 <either_copyout>
    80002de8:	01450863          	beq	a0,s4,80002df8 <consoleread+0xb4>
    80002dec:	001c0c13          	addi	s8,s8,1
    80002df0:	fffb8b9b          	addiw	s7,s7,-1
    80002df4:	fb5c94e3          	bne	s9,s5,80002d9c <consoleread+0x58>
    80002df8:	000b851b          	sext.w	a0,s7
    80002dfc:	06813083          	ld	ra,104(sp)
    80002e00:	06013403          	ld	s0,96(sp)
    80002e04:	05813483          	ld	s1,88(sp)
    80002e08:	05013903          	ld	s2,80(sp)
    80002e0c:	04813983          	ld	s3,72(sp)
    80002e10:	04013a03          	ld	s4,64(sp)
    80002e14:	03813a83          	ld	s5,56(sp)
    80002e18:	02813b83          	ld	s7,40(sp)
    80002e1c:	02013c03          	ld	s8,32(sp)
    80002e20:	01813c83          	ld	s9,24(sp)
    80002e24:	40ab053b          	subw	a0,s6,a0
    80002e28:	03013b03          	ld	s6,48(sp)
    80002e2c:	07010113          	addi	sp,sp,112
    80002e30:	00008067          	ret
    80002e34:	00001097          	auipc	ra,0x1
    80002e38:	1d8080e7          	jalr	472(ra) # 8000400c <push_on>
    80002e3c:	0984a703          	lw	a4,152(s1)
    80002e40:	09c4a783          	lw	a5,156(s1)
    80002e44:	0007879b          	sext.w	a5,a5
    80002e48:	fef70ce3          	beq	a4,a5,80002e40 <consoleread+0xfc>
    80002e4c:	00001097          	auipc	ra,0x1
    80002e50:	234080e7          	jalr	564(ra) # 80004080 <pop_on>
    80002e54:	0984a783          	lw	a5,152(s1)
    80002e58:	07f7f713          	andi	a4,a5,127
    80002e5c:	00e48733          	add	a4,s1,a4
    80002e60:	01874703          	lbu	a4,24(a4)
    80002e64:	0017869b          	addiw	a3,a5,1
    80002e68:	08d4ac23          	sw	a3,152(s1)
    80002e6c:	00070c9b          	sext.w	s9,a4
    80002e70:	f5371ee3          	bne	a4,s3,80002dcc <consoleread+0x88>
    80002e74:	000b851b          	sext.w	a0,s7
    80002e78:	f96bf2e3          	bgeu	s7,s6,80002dfc <consoleread+0xb8>
    80002e7c:	08f4ac23          	sw	a5,152(s1)
    80002e80:	f7dff06f          	j	80002dfc <consoleread+0xb8>

0000000080002e84 <consputc>:
    80002e84:	10000793          	li	a5,256
    80002e88:	00f50663          	beq	a0,a5,80002e94 <consputc+0x10>
    80002e8c:	00001317          	auipc	t1,0x1
    80002e90:	9f430067          	jr	-1548(t1) # 80003880 <uartputc_sync>
    80002e94:	ff010113          	addi	sp,sp,-16
    80002e98:	00113423          	sd	ra,8(sp)
    80002e9c:	00813023          	sd	s0,0(sp)
    80002ea0:	01010413          	addi	s0,sp,16
    80002ea4:	00800513          	li	a0,8
    80002ea8:	00001097          	auipc	ra,0x1
    80002eac:	9d8080e7          	jalr	-1576(ra) # 80003880 <uartputc_sync>
    80002eb0:	02000513          	li	a0,32
    80002eb4:	00001097          	auipc	ra,0x1
    80002eb8:	9cc080e7          	jalr	-1588(ra) # 80003880 <uartputc_sync>
    80002ebc:	00013403          	ld	s0,0(sp)
    80002ec0:	00813083          	ld	ra,8(sp)
    80002ec4:	00800513          	li	a0,8
    80002ec8:	01010113          	addi	sp,sp,16
    80002ecc:	00001317          	auipc	t1,0x1
    80002ed0:	9b430067          	jr	-1612(t1) # 80003880 <uartputc_sync>

0000000080002ed4 <consoleintr>:
    80002ed4:	fe010113          	addi	sp,sp,-32
    80002ed8:	00813823          	sd	s0,16(sp)
    80002edc:	00913423          	sd	s1,8(sp)
    80002ee0:	01213023          	sd	s2,0(sp)
    80002ee4:	00113c23          	sd	ra,24(sp)
    80002ee8:	02010413          	addi	s0,sp,32
    80002eec:	00004917          	auipc	s2,0x4
    80002ef0:	dcc90913          	addi	s2,s2,-564 # 80006cb8 <cons>
    80002ef4:	00050493          	mv	s1,a0
    80002ef8:	00090513          	mv	a0,s2
    80002efc:	00001097          	auipc	ra,0x1
    80002f00:	e40080e7          	jalr	-448(ra) # 80003d3c <acquire>
    80002f04:	02048c63          	beqz	s1,80002f3c <consoleintr+0x68>
    80002f08:	0a092783          	lw	a5,160(s2)
    80002f0c:	09892703          	lw	a4,152(s2)
    80002f10:	07f00693          	li	a3,127
    80002f14:	40e7873b          	subw	a4,a5,a4
    80002f18:	02e6e263          	bltu	a3,a4,80002f3c <consoleintr+0x68>
    80002f1c:	00d00713          	li	a4,13
    80002f20:	04e48063          	beq	s1,a4,80002f60 <consoleintr+0x8c>
    80002f24:	07f7f713          	andi	a4,a5,127
    80002f28:	00e90733          	add	a4,s2,a4
    80002f2c:	0017879b          	addiw	a5,a5,1
    80002f30:	0af92023          	sw	a5,160(s2)
    80002f34:	00970c23          	sb	s1,24(a4)
    80002f38:	08f92e23          	sw	a5,156(s2)
    80002f3c:	01013403          	ld	s0,16(sp)
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	00813483          	ld	s1,8(sp)
    80002f48:	00013903          	ld	s2,0(sp)
    80002f4c:	00004517          	auipc	a0,0x4
    80002f50:	d6c50513          	addi	a0,a0,-660 # 80006cb8 <cons>
    80002f54:	02010113          	addi	sp,sp,32
    80002f58:	00001317          	auipc	t1,0x1
    80002f5c:	eb030067          	jr	-336(t1) # 80003e08 <release>
    80002f60:	00a00493          	li	s1,10
    80002f64:	fc1ff06f          	j	80002f24 <consoleintr+0x50>

0000000080002f68 <consoleinit>:
    80002f68:	fe010113          	addi	sp,sp,-32
    80002f6c:	00113c23          	sd	ra,24(sp)
    80002f70:	00813823          	sd	s0,16(sp)
    80002f74:	00913423          	sd	s1,8(sp)
    80002f78:	02010413          	addi	s0,sp,32
    80002f7c:	00004497          	auipc	s1,0x4
    80002f80:	d3c48493          	addi	s1,s1,-708 # 80006cb8 <cons>
    80002f84:	00048513          	mv	a0,s1
    80002f88:	00002597          	auipc	a1,0x2
    80002f8c:	25858593          	addi	a1,a1,600 # 800051e0 <_ZZ12printIntegermE6digits+0x138>
    80002f90:	00001097          	auipc	ra,0x1
    80002f94:	d88080e7          	jalr	-632(ra) # 80003d18 <initlock>
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	7ac080e7          	jalr	1964(ra) # 80003744 <uartinit>
    80002fa0:	01813083          	ld	ra,24(sp)
    80002fa4:	01013403          	ld	s0,16(sp)
    80002fa8:	00000797          	auipc	a5,0x0
    80002fac:	d9c78793          	addi	a5,a5,-612 # 80002d44 <consoleread>
    80002fb0:	0af4bc23          	sd	a5,184(s1)
    80002fb4:	00000797          	auipc	a5,0x0
    80002fb8:	cec78793          	addi	a5,a5,-788 # 80002ca0 <consolewrite>
    80002fbc:	0cf4b023          	sd	a5,192(s1)
    80002fc0:	00813483          	ld	s1,8(sp)
    80002fc4:	02010113          	addi	sp,sp,32
    80002fc8:	00008067          	ret

0000000080002fcc <console_read>:
    80002fcc:	ff010113          	addi	sp,sp,-16
    80002fd0:	00813423          	sd	s0,8(sp)
    80002fd4:	01010413          	addi	s0,sp,16
    80002fd8:	00813403          	ld	s0,8(sp)
    80002fdc:	00004317          	auipc	t1,0x4
    80002fe0:	d9433303          	ld	t1,-620(t1) # 80006d70 <devsw+0x10>
    80002fe4:	01010113          	addi	sp,sp,16
    80002fe8:	00030067          	jr	t1

0000000080002fec <console_write>:
    80002fec:	ff010113          	addi	sp,sp,-16
    80002ff0:	00813423          	sd	s0,8(sp)
    80002ff4:	01010413          	addi	s0,sp,16
    80002ff8:	00813403          	ld	s0,8(sp)
    80002ffc:	00004317          	auipc	t1,0x4
    80003000:	d7c33303          	ld	t1,-644(t1) # 80006d78 <devsw+0x18>
    80003004:	01010113          	addi	sp,sp,16
    80003008:	00030067          	jr	t1

000000008000300c <panic>:
    8000300c:	fe010113          	addi	sp,sp,-32
    80003010:	00113c23          	sd	ra,24(sp)
    80003014:	00813823          	sd	s0,16(sp)
    80003018:	00913423          	sd	s1,8(sp)
    8000301c:	02010413          	addi	s0,sp,32
    80003020:	00050493          	mv	s1,a0
    80003024:	00002517          	auipc	a0,0x2
    80003028:	1c450513          	addi	a0,a0,452 # 800051e8 <_ZZ12printIntegermE6digits+0x140>
    8000302c:	00004797          	auipc	a5,0x4
    80003030:	de07a623          	sw	zero,-532(a5) # 80006e18 <pr+0x18>
    80003034:	00000097          	auipc	ra,0x0
    80003038:	034080e7          	jalr	52(ra) # 80003068 <__printf>
    8000303c:	00048513          	mv	a0,s1
    80003040:	00000097          	auipc	ra,0x0
    80003044:	028080e7          	jalr	40(ra) # 80003068 <__printf>
    80003048:	00002517          	auipc	a0,0x2
    8000304c:	05850513          	addi	a0,a0,88 # 800050a0 <CONSOLE_STATUS+0x90>
    80003050:	00000097          	auipc	ra,0x0
    80003054:	018080e7          	jalr	24(ra) # 80003068 <__printf>
    80003058:	00100793          	li	a5,1
    8000305c:	00003717          	auipc	a4,0x3
    80003060:	b0f72e23          	sw	a5,-1252(a4) # 80005b78 <panicked>
    80003064:	0000006f          	j	80003064 <panic+0x58>

0000000080003068 <__printf>:
    80003068:	f3010113          	addi	sp,sp,-208
    8000306c:	08813023          	sd	s0,128(sp)
    80003070:	07313423          	sd	s3,104(sp)
    80003074:	09010413          	addi	s0,sp,144
    80003078:	05813023          	sd	s8,64(sp)
    8000307c:	08113423          	sd	ra,136(sp)
    80003080:	06913c23          	sd	s1,120(sp)
    80003084:	07213823          	sd	s2,112(sp)
    80003088:	07413023          	sd	s4,96(sp)
    8000308c:	05513c23          	sd	s5,88(sp)
    80003090:	05613823          	sd	s6,80(sp)
    80003094:	05713423          	sd	s7,72(sp)
    80003098:	03913c23          	sd	s9,56(sp)
    8000309c:	03a13823          	sd	s10,48(sp)
    800030a0:	03b13423          	sd	s11,40(sp)
    800030a4:	00004317          	auipc	t1,0x4
    800030a8:	d5c30313          	addi	t1,t1,-676 # 80006e00 <pr>
    800030ac:	01832c03          	lw	s8,24(t1)
    800030b0:	00b43423          	sd	a1,8(s0)
    800030b4:	00c43823          	sd	a2,16(s0)
    800030b8:	00d43c23          	sd	a3,24(s0)
    800030bc:	02e43023          	sd	a4,32(s0)
    800030c0:	02f43423          	sd	a5,40(s0)
    800030c4:	03043823          	sd	a6,48(s0)
    800030c8:	03143c23          	sd	a7,56(s0)
    800030cc:	00050993          	mv	s3,a0
    800030d0:	4a0c1663          	bnez	s8,8000357c <__printf+0x514>
    800030d4:	60098c63          	beqz	s3,800036ec <__printf+0x684>
    800030d8:	0009c503          	lbu	a0,0(s3)
    800030dc:	00840793          	addi	a5,s0,8
    800030e0:	f6f43c23          	sd	a5,-136(s0)
    800030e4:	00000493          	li	s1,0
    800030e8:	22050063          	beqz	a0,80003308 <__printf+0x2a0>
    800030ec:	00002a37          	lui	s4,0x2
    800030f0:	00018ab7          	lui	s5,0x18
    800030f4:	000f4b37          	lui	s6,0xf4
    800030f8:	00989bb7          	lui	s7,0x989
    800030fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003100:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003104:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003108:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000310c:	00148c9b          	addiw	s9,s1,1
    80003110:	02500793          	li	a5,37
    80003114:	01998933          	add	s2,s3,s9
    80003118:	38f51263          	bne	a0,a5,8000349c <__printf+0x434>
    8000311c:	00094783          	lbu	a5,0(s2)
    80003120:	00078c9b          	sext.w	s9,a5
    80003124:	1e078263          	beqz	a5,80003308 <__printf+0x2a0>
    80003128:	0024849b          	addiw	s1,s1,2
    8000312c:	07000713          	li	a4,112
    80003130:	00998933          	add	s2,s3,s1
    80003134:	38e78a63          	beq	a5,a4,800034c8 <__printf+0x460>
    80003138:	20f76863          	bltu	a4,a5,80003348 <__printf+0x2e0>
    8000313c:	42a78863          	beq	a5,a0,8000356c <__printf+0x504>
    80003140:	06400713          	li	a4,100
    80003144:	40e79663          	bne	a5,a4,80003550 <__printf+0x4e8>
    80003148:	f7843783          	ld	a5,-136(s0)
    8000314c:	0007a603          	lw	a2,0(a5)
    80003150:	00878793          	addi	a5,a5,8
    80003154:	f6f43c23          	sd	a5,-136(s0)
    80003158:	42064a63          	bltz	a2,8000358c <__printf+0x524>
    8000315c:	00a00713          	li	a4,10
    80003160:	02e677bb          	remuw	a5,a2,a4
    80003164:	00002d97          	auipc	s11,0x2
    80003168:	0acd8d93          	addi	s11,s11,172 # 80005210 <digits>
    8000316c:	00900593          	li	a1,9
    80003170:	0006051b          	sext.w	a0,a2
    80003174:	00000c93          	li	s9,0
    80003178:	02079793          	slli	a5,a5,0x20
    8000317c:	0207d793          	srli	a5,a5,0x20
    80003180:	00fd87b3          	add	a5,s11,a5
    80003184:	0007c783          	lbu	a5,0(a5)
    80003188:	02e656bb          	divuw	a3,a2,a4
    8000318c:	f8f40023          	sb	a5,-128(s0)
    80003190:	14c5d863          	bge	a1,a2,800032e0 <__printf+0x278>
    80003194:	06300593          	li	a1,99
    80003198:	00100c93          	li	s9,1
    8000319c:	02e6f7bb          	remuw	a5,a3,a4
    800031a0:	02079793          	slli	a5,a5,0x20
    800031a4:	0207d793          	srli	a5,a5,0x20
    800031a8:	00fd87b3          	add	a5,s11,a5
    800031ac:	0007c783          	lbu	a5,0(a5)
    800031b0:	02e6d73b          	divuw	a4,a3,a4
    800031b4:	f8f400a3          	sb	a5,-127(s0)
    800031b8:	12a5f463          	bgeu	a1,a0,800032e0 <__printf+0x278>
    800031bc:	00a00693          	li	a3,10
    800031c0:	00900593          	li	a1,9
    800031c4:	02d777bb          	remuw	a5,a4,a3
    800031c8:	02079793          	slli	a5,a5,0x20
    800031cc:	0207d793          	srli	a5,a5,0x20
    800031d0:	00fd87b3          	add	a5,s11,a5
    800031d4:	0007c503          	lbu	a0,0(a5)
    800031d8:	02d757bb          	divuw	a5,a4,a3
    800031dc:	f8a40123          	sb	a0,-126(s0)
    800031e0:	48e5f263          	bgeu	a1,a4,80003664 <__printf+0x5fc>
    800031e4:	06300513          	li	a0,99
    800031e8:	02d7f5bb          	remuw	a1,a5,a3
    800031ec:	02059593          	slli	a1,a1,0x20
    800031f0:	0205d593          	srli	a1,a1,0x20
    800031f4:	00bd85b3          	add	a1,s11,a1
    800031f8:	0005c583          	lbu	a1,0(a1)
    800031fc:	02d7d7bb          	divuw	a5,a5,a3
    80003200:	f8b401a3          	sb	a1,-125(s0)
    80003204:	48e57263          	bgeu	a0,a4,80003688 <__printf+0x620>
    80003208:	3e700513          	li	a0,999
    8000320c:	02d7f5bb          	remuw	a1,a5,a3
    80003210:	02059593          	slli	a1,a1,0x20
    80003214:	0205d593          	srli	a1,a1,0x20
    80003218:	00bd85b3          	add	a1,s11,a1
    8000321c:	0005c583          	lbu	a1,0(a1)
    80003220:	02d7d7bb          	divuw	a5,a5,a3
    80003224:	f8b40223          	sb	a1,-124(s0)
    80003228:	46e57663          	bgeu	a0,a4,80003694 <__printf+0x62c>
    8000322c:	02d7f5bb          	remuw	a1,a5,a3
    80003230:	02059593          	slli	a1,a1,0x20
    80003234:	0205d593          	srli	a1,a1,0x20
    80003238:	00bd85b3          	add	a1,s11,a1
    8000323c:	0005c583          	lbu	a1,0(a1)
    80003240:	02d7d7bb          	divuw	a5,a5,a3
    80003244:	f8b402a3          	sb	a1,-123(s0)
    80003248:	46ea7863          	bgeu	s4,a4,800036b8 <__printf+0x650>
    8000324c:	02d7f5bb          	remuw	a1,a5,a3
    80003250:	02059593          	slli	a1,a1,0x20
    80003254:	0205d593          	srli	a1,a1,0x20
    80003258:	00bd85b3          	add	a1,s11,a1
    8000325c:	0005c583          	lbu	a1,0(a1)
    80003260:	02d7d7bb          	divuw	a5,a5,a3
    80003264:	f8b40323          	sb	a1,-122(s0)
    80003268:	3eeaf863          	bgeu	s5,a4,80003658 <__printf+0x5f0>
    8000326c:	02d7f5bb          	remuw	a1,a5,a3
    80003270:	02059593          	slli	a1,a1,0x20
    80003274:	0205d593          	srli	a1,a1,0x20
    80003278:	00bd85b3          	add	a1,s11,a1
    8000327c:	0005c583          	lbu	a1,0(a1)
    80003280:	02d7d7bb          	divuw	a5,a5,a3
    80003284:	f8b403a3          	sb	a1,-121(s0)
    80003288:	42eb7e63          	bgeu	s6,a4,800036c4 <__printf+0x65c>
    8000328c:	02d7f5bb          	remuw	a1,a5,a3
    80003290:	02059593          	slli	a1,a1,0x20
    80003294:	0205d593          	srli	a1,a1,0x20
    80003298:	00bd85b3          	add	a1,s11,a1
    8000329c:	0005c583          	lbu	a1,0(a1)
    800032a0:	02d7d7bb          	divuw	a5,a5,a3
    800032a4:	f8b40423          	sb	a1,-120(s0)
    800032a8:	42ebfc63          	bgeu	s7,a4,800036e0 <__printf+0x678>
    800032ac:	02079793          	slli	a5,a5,0x20
    800032b0:	0207d793          	srli	a5,a5,0x20
    800032b4:	00fd8db3          	add	s11,s11,a5
    800032b8:	000dc703          	lbu	a4,0(s11)
    800032bc:	00a00793          	li	a5,10
    800032c0:	00900c93          	li	s9,9
    800032c4:	f8e404a3          	sb	a4,-119(s0)
    800032c8:	00065c63          	bgez	a2,800032e0 <__printf+0x278>
    800032cc:	f9040713          	addi	a4,s0,-112
    800032d0:	00f70733          	add	a4,a4,a5
    800032d4:	02d00693          	li	a3,45
    800032d8:	fed70823          	sb	a3,-16(a4)
    800032dc:	00078c93          	mv	s9,a5
    800032e0:	f8040793          	addi	a5,s0,-128
    800032e4:	01978cb3          	add	s9,a5,s9
    800032e8:	f7f40d13          	addi	s10,s0,-129
    800032ec:	000cc503          	lbu	a0,0(s9)
    800032f0:	fffc8c93          	addi	s9,s9,-1
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	b90080e7          	jalr	-1136(ra) # 80002e84 <consputc>
    800032fc:	ffac98e3          	bne	s9,s10,800032ec <__printf+0x284>
    80003300:	00094503          	lbu	a0,0(s2)
    80003304:	e00514e3          	bnez	a0,8000310c <__printf+0xa4>
    80003308:	1a0c1663          	bnez	s8,800034b4 <__printf+0x44c>
    8000330c:	08813083          	ld	ra,136(sp)
    80003310:	08013403          	ld	s0,128(sp)
    80003314:	07813483          	ld	s1,120(sp)
    80003318:	07013903          	ld	s2,112(sp)
    8000331c:	06813983          	ld	s3,104(sp)
    80003320:	06013a03          	ld	s4,96(sp)
    80003324:	05813a83          	ld	s5,88(sp)
    80003328:	05013b03          	ld	s6,80(sp)
    8000332c:	04813b83          	ld	s7,72(sp)
    80003330:	04013c03          	ld	s8,64(sp)
    80003334:	03813c83          	ld	s9,56(sp)
    80003338:	03013d03          	ld	s10,48(sp)
    8000333c:	02813d83          	ld	s11,40(sp)
    80003340:	0d010113          	addi	sp,sp,208
    80003344:	00008067          	ret
    80003348:	07300713          	li	a4,115
    8000334c:	1ce78a63          	beq	a5,a4,80003520 <__printf+0x4b8>
    80003350:	07800713          	li	a4,120
    80003354:	1ee79e63          	bne	a5,a4,80003550 <__printf+0x4e8>
    80003358:	f7843783          	ld	a5,-136(s0)
    8000335c:	0007a703          	lw	a4,0(a5)
    80003360:	00878793          	addi	a5,a5,8
    80003364:	f6f43c23          	sd	a5,-136(s0)
    80003368:	28074263          	bltz	a4,800035ec <__printf+0x584>
    8000336c:	00002d97          	auipc	s11,0x2
    80003370:	ea4d8d93          	addi	s11,s11,-348 # 80005210 <digits>
    80003374:	00f77793          	andi	a5,a4,15
    80003378:	00fd87b3          	add	a5,s11,a5
    8000337c:	0007c683          	lbu	a3,0(a5)
    80003380:	00f00613          	li	a2,15
    80003384:	0007079b          	sext.w	a5,a4
    80003388:	f8d40023          	sb	a3,-128(s0)
    8000338c:	0047559b          	srliw	a1,a4,0x4
    80003390:	0047569b          	srliw	a3,a4,0x4
    80003394:	00000c93          	li	s9,0
    80003398:	0ee65063          	bge	a2,a4,80003478 <__printf+0x410>
    8000339c:	00f6f693          	andi	a3,a3,15
    800033a0:	00dd86b3          	add	a3,s11,a3
    800033a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800033a8:	0087d79b          	srliw	a5,a5,0x8
    800033ac:	00100c93          	li	s9,1
    800033b0:	f8d400a3          	sb	a3,-127(s0)
    800033b4:	0cb67263          	bgeu	a2,a1,80003478 <__printf+0x410>
    800033b8:	00f7f693          	andi	a3,a5,15
    800033bc:	00dd86b3          	add	a3,s11,a3
    800033c0:	0006c583          	lbu	a1,0(a3)
    800033c4:	00f00613          	li	a2,15
    800033c8:	0047d69b          	srliw	a3,a5,0x4
    800033cc:	f8b40123          	sb	a1,-126(s0)
    800033d0:	0047d593          	srli	a1,a5,0x4
    800033d4:	28f67e63          	bgeu	a2,a5,80003670 <__printf+0x608>
    800033d8:	00f6f693          	andi	a3,a3,15
    800033dc:	00dd86b3          	add	a3,s11,a3
    800033e0:	0006c503          	lbu	a0,0(a3)
    800033e4:	0087d813          	srli	a6,a5,0x8
    800033e8:	0087d69b          	srliw	a3,a5,0x8
    800033ec:	f8a401a3          	sb	a0,-125(s0)
    800033f0:	28b67663          	bgeu	a2,a1,8000367c <__printf+0x614>
    800033f4:	00f6f693          	andi	a3,a3,15
    800033f8:	00dd86b3          	add	a3,s11,a3
    800033fc:	0006c583          	lbu	a1,0(a3)
    80003400:	00c7d513          	srli	a0,a5,0xc
    80003404:	00c7d69b          	srliw	a3,a5,0xc
    80003408:	f8b40223          	sb	a1,-124(s0)
    8000340c:	29067a63          	bgeu	a2,a6,800036a0 <__printf+0x638>
    80003410:	00f6f693          	andi	a3,a3,15
    80003414:	00dd86b3          	add	a3,s11,a3
    80003418:	0006c583          	lbu	a1,0(a3)
    8000341c:	0107d813          	srli	a6,a5,0x10
    80003420:	0107d69b          	srliw	a3,a5,0x10
    80003424:	f8b402a3          	sb	a1,-123(s0)
    80003428:	28a67263          	bgeu	a2,a0,800036ac <__printf+0x644>
    8000342c:	00f6f693          	andi	a3,a3,15
    80003430:	00dd86b3          	add	a3,s11,a3
    80003434:	0006c683          	lbu	a3,0(a3)
    80003438:	0147d79b          	srliw	a5,a5,0x14
    8000343c:	f8d40323          	sb	a3,-122(s0)
    80003440:	21067663          	bgeu	a2,a6,8000364c <__printf+0x5e4>
    80003444:	02079793          	slli	a5,a5,0x20
    80003448:	0207d793          	srli	a5,a5,0x20
    8000344c:	00fd8db3          	add	s11,s11,a5
    80003450:	000dc683          	lbu	a3,0(s11)
    80003454:	00800793          	li	a5,8
    80003458:	00700c93          	li	s9,7
    8000345c:	f8d403a3          	sb	a3,-121(s0)
    80003460:	00075c63          	bgez	a4,80003478 <__printf+0x410>
    80003464:	f9040713          	addi	a4,s0,-112
    80003468:	00f70733          	add	a4,a4,a5
    8000346c:	02d00693          	li	a3,45
    80003470:	fed70823          	sb	a3,-16(a4)
    80003474:	00078c93          	mv	s9,a5
    80003478:	f8040793          	addi	a5,s0,-128
    8000347c:	01978cb3          	add	s9,a5,s9
    80003480:	f7f40d13          	addi	s10,s0,-129
    80003484:	000cc503          	lbu	a0,0(s9)
    80003488:	fffc8c93          	addi	s9,s9,-1
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	9f8080e7          	jalr	-1544(ra) # 80002e84 <consputc>
    80003494:	ff9d18e3          	bne	s10,s9,80003484 <__printf+0x41c>
    80003498:	0100006f          	j	800034a8 <__printf+0x440>
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	9e8080e7          	jalr	-1560(ra) # 80002e84 <consputc>
    800034a4:	000c8493          	mv	s1,s9
    800034a8:	00094503          	lbu	a0,0(s2)
    800034ac:	c60510e3          	bnez	a0,8000310c <__printf+0xa4>
    800034b0:	e40c0ee3          	beqz	s8,8000330c <__printf+0x2a4>
    800034b4:	00004517          	auipc	a0,0x4
    800034b8:	94c50513          	addi	a0,a0,-1716 # 80006e00 <pr>
    800034bc:	00001097          	auipc	ra,0x1
    800034c0:	94c080e7          	jalr	-1716(ra) # 80003e08 <release>
    800034c4:	e49ff06f          	j	8000330c <__printf+0x2a4>
    800034c8:	f7843783          	ld	a5,-136(s0)
    800034cc:	03000513          	li	a0,48
    800034d0:	01000d13          	li	s10,16
    800034d4:	00878713          	addi	a4,a5,8
    800034d8:	0007bc83          	ld	s9,0(a5)
    800034dc:	f6e43c23          	sd	a4,-136(s0)
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	9a4080e7          	jalr	-1628(ra) # 80002e84 <consputc>
    800034e8:	07800513          	li	a0,120
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	998080e7          	jalr	-1640(ra) # 80002e84 <consputc>
    800034f4:	00002d97          	auipc	s11,0x2
    800034f8:	d1cd8d93          	addi	s11,s11,-740 # 80005210 <digits>
    800034fc:	03ccd793          	srli	a5,s9,0x3c
    80003500:	00fd87b3          	add	a5,s11,a5
    80003504:	0007c503          	lbu	a0,0(a5)
    80003508:	fffd0d1b          	addiw	s10,s10,-1
    8000350c:	004c9c93          	slli	s9,s9,0x4
    80003510:	00000097          	auipc	ra,0x0
    80003514:	974080e7          	jalr	-1676(ra) # 80002e84 <consputc>
    80003518:	fe0d12e3          	bnez	s10,800034fc <__printf+0x494>
    8000351c:	f8dff06f          	j	800034a8 <__printf+0x440>
    80003520:	f7843783          	ld	a5,-136(s0)
    80003524:	0007bc83          	ld	s9,0(a5)
    80003528:	00878793          	addi	a5,a5,8
    8000352c:	f6f43c23          	sd	a5,-136(s0)
    80003530:	000c9a63          	bnez	s9,80003544 <__printf+0x4dc>
    80003534:	1080006f          	j	8000363c <__printf+0x5d4>
    80003538:	001c8c93          	addi	s9,s9,1
    8000353c:	00000097          	auipc	ra,0x0
    80003540:	948080e7          	jalr	-1720(ra) # 80002e84 <consputc>
    80003544:	000cc503          	lbu	a0,0(s9)
    80003548:	fe0518e3          	bnez	a0,80003538 <__printf+0x4d0>
    8000354c:	f5dff06f          	j	800034a8 <__printf+0x440>
    80003550:	02500513          	li	a0,37
    80003554:	00000097          	auipc	ra,0x0
    80003558:	930080e7          	jalr	-1744(ra) # 80002e84 <consputc>
    8000355c:	000c8513          	mv	a0,s9
    80003560:	00000097          	auipc	ra,0x0
    80003564:	924080e7          	jalr	-1756(ra) # 80002e84 <consputc>
    80003568:	f41ff06f          	j	800034a8 <__printf+0x440>
    8000356c:	02500513          	li	a0,37
    80003570:	00000097          	auipc	ra,0x0
    80003574:	914080e7          	jalr	-1772(ra) # 80002e84 <consputc>
    80003578:	f31ff06f          	j	800034a8 <__printf+0x440>
    8000357c:	00030513          	mv	a0,t1
    80003580:	00000097          	auipc	ra,0x0
    80003584:	7bc080e7          	jalr	1980(ra) # 80003d3c <acquire>
    80003588:	b4dff06f          	j	800030d4 <__printf+0x6c>
    8000358c:	40c0053b          	negw	a0,a2
    80003590:	00a00713          	li	a4,10
    80003594:	02e576bb          	remuw	a3,a0,a4
    80003598:	00002d97          	auipc	s11,0x2
    8000359c:	c78d8d93          	addi	s11,s11,-904 # 80005210 <digits>
    800035a0:	ff700593          	li	a1,-9
    800035a4:	02069693          	slli	a3,a3,0x20
    800035a8:	0206d693          	srli	a3,a3,0x20
    800035ac:	00dd86b3          	add	a3,s11,a3
    800035b0:	0006c683          	lbu	a3,0(a3)
    800035b4:	02e557bb          	divuw	a5,a0,a4
    800035b8:	f8d40023          	sb	a3,-128(s0)
    800035bc:	10b65e63          	bge	a2,a1,800036d8 <__printf+0x670>
    800035c0:	06300593          	li	a1,99
    800035c4:	02e7f6bb          	remuw	a3,a5,a4
    800035c8:	02069693          	slli	a3,a3,0x20
    800035cc:	0206d693          	srli	a3,a3,0x20
    800035d0:	00dd86b3          	add	a3,s11,a3
    800035d4:	0006c683          	lbu	a3,0(a3)
    800035d8:	02e7d73b          	divuw	a4,a5,a4
    800035dc:	00200793          	li	a5,2
    800035e0:	f8d400a3          	sb	a3,-127(s0)
    800035e4:	bca5ece3          	bltu	a1,a0,800031bc <__printf+0x154>
    800035e8:	ce5ff06f          	j	800032cc <__printf+0x264>
    800035ec:	40e007bb          	negw	a5,a4
    800035f0:	00002d97          	auipc	s11,0x2
    800035f4:	c20d8d93          	addi	s11,s11,-992 # 80005210 <digits>
    800035f8:	00f7f693          	andi	a3,a5,15
    800035fc:	00dd86b3          	add	a3,s11,a3
    80003600:	0006c583          	lbu	a1,0(a3)
    80003604:	ff100613          	li	a2,-15
    80003608:	0047d69b          	srliw	a3,a5,0x4
    8000360c:	f8b40023          	sb	a1,-128(s0)
    80003610:	0047d59b          	srliw	a1,a5,0x4
    80003614:	0ac75e63          	bge	a4,a2,800036d0 <__printf+0x668>
    80003618:	00f6f693          	andi	a3,a3,15
    8000361c:	00dd86b3          	add	a3,s11,a3
    80003620:	0006c603          	lbu	a2,0(a3)
    80003624:	00f00693          	li	a3,15
    80003628:	0087d79b          	srliw	a5,a5,0x8
    8000362c:	f8c400a3          	sb	a2,-127(s0)
    80003630:	d8b6e4e3          	bltu	a3,a1,800033b8 <__printf+0x350>
    80003634:	00200793          	li	a5,2
    80003638:	e2dff06f          	j	80003464 <__printf+0x3fc>
    8000363c:	00002c97          	auipc	s9,0x2
    80003640:	bb4c8c93          	addi	s9,s9,-1100 # 800051f0 <_ZZ12printIntegermE6digits+0x148>
    80003644:	02800513          	li	a0,40
    80003648:	ef1ff06f          	j	80003538 <__printf+0x4d0>
    8000364c:	00700793          	li	a5,7
    80003650:	00600c93          	li	s9,6
    80003654:	e0dff06f          	j	80003460 <__printf+0x3f8>
    80003658:	00700793          	li	a5,7
    8000365c:	00600c93          	li	s9,6
    80003660:	c69ff06f          	j	800032c8 <__printf+0x260>
    80003664:	00300793          	li	a5,3
    80003668:	00200c93          	li	s9,2
    8000366c:	c5dff06f          	j	800032c8 <__printf+0x260>
    80003670:	00300793          	li	a5,3
    80003674:	00200c93          	li	s9,2
    80003678:	de9ff06f          	j	80003460 <__printf+0x3f8>
    8000367c:	00400793          	li	a5,4
    80003680:	00300c93          	li	s9,3
    80003684:	dddff06f          	j	80003460 <__printf+0x3f8>
    80003688:	00400793          	li	a5,4
    8000368c:	00300c93          	li	s9,3
    80003690:	c39ff06f          	j	800032c8 <__printf+0x260>
    80003694:	00500793          	li	a5,5
    80003698:	00400c93          	li	s9,4
    8000369c:	c2dff06f          	j	800032c8 <__printf+0x260>
    800036a0:	00500793          	li	a5,5
    800036a4:	00400c93          	li	s9,4
    800036a8:	db9ff06f          	j	80003460 <__printf+0x3f8>
    800036ac:	00600793          	li	a5,6
    800036b0:	00500c93          	li	s9,5
    800036b4:	dadff06f          	j	80003460 <__printf+0x3f8>
    800036b8:	00600793          	li	a5,6
    800036bc:	00500c93          	li	s9,5
    800036c0:	c09ff06f          	j	800032c8 <__printf+0x260>
    800036c4:	00800793          	li	a5,8
    800036c8:	00700c93          	li	s9,7
    800036cc:	bfdff06f          	j	800032c8 <__printf+0x260>
    800036d0:	00100793          	li	a5,1
    800036d4:	d91ff06f          	j	80003464 <__printf+0x3fc>
    800036d8:	00100793          	li	a5,1
    800036dc:	bf1ff06f          	j	800032cc <__printf+0x264>
    800036e0:	00900793          	li	a5,9
    800036e4:	00800c93          	li	s9,8
    800036e8:	be1ff06f          	j	800032c8 <__printf+0x260>
    800036ec:	00002517          	auipc	a0,0x2
    800036f0:	b0c50513          	addi	a0,a0,-1268 # 800051f8 <_ZZ12printIntegermE6digits+0x150>
    800036f4:	00000097          	auipc	ra,0x0
    800036f8:	918080e7          	jalr	-1768(ra) # 8000300c <panic>

00000000800036fc <printfinit>:
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	00113c23          	sd	ra,24(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	00003497          	auipc	s1,0x3
    80003714:	6f048493          	addi	s1,s1,1776 # 80006e00 <pr>
    80003718:	00048513          	mv	a0,s1
    8000371c:	00002597          	auipc	a1,0x2
    80003720:	aec58593          	addi	a1,a1,-1300 # 80005208 <_ZZ12printIntegermE6digits+0x160>
    80003724:	00000097          	auipc	ra,0x0
    80003728:	5f4080e7          	jalr	1524(ra) # 80003d18 <initlock>
    8000372c:	01813083          	ld	ra,24(sp)
    80003730:	01013403          	ld	s0,16(sp)
    80003734:	0004ac23          	sw	zero,24(s1)
    80003738:	00813483          	ld	s1,8(sp)
    8000373c:	02010113          	addi	sp,sp,32
    80003740:	00008067          	ret

0000000080003744 <uartinit>:
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00813423          	sd	s0,8(sp)
    8000374c:	01010413          	addi	s0,sp,16
    80003750:	100007b7          	lui	a5,0x10000
    80003754:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003758:	f8000713          	li	a4,-128
    8000375c:	00e781a3          	sb	a4,3(a5)
    80003760:	00300713          	li	a4,3
    80003764:	00e78023          	sb	a4,0(a5)
    80003768:	000780a3          	sb	zero,1(a5)
    8000376c:	00e781a3          	sb	a4,3(a5)
    80003770:	00700693          	li	a3,7
    80003774:	00d78123          	sb	a3,2(a5)
    80003778:	00e780a3          	sb	a4,1(a5)
    8000377c:	00813403          	ld	s0,8(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret

0000000080003788 <uartputc>:
    80003788:	00002797          	auipc	a5,0x2
    8000378c:	3f07a783          	lw	a5,1008(a5) # 80005b78 <panicked>
    80003790:	00078463          	beqz	a5,80003798 <uartputc+0x10>
    80003794:	0000006f          	j	80003794 <uartputc+0xc>
    80003798:	fd010113          	addi	sp,sp,-48
    8000379c:	02813023          	sd	s0,32(sp)
    800037a0:	00913c23          	sd	s1,24(sp)
    800037a4:	01213823          	sd	s2,16(sp)
    800037a8:	01313423          	sd	s3,8(sp)
    800037ac:	02113423          	sd	ra,40(sp)
    800037b0:	03010413          	addi	s0,sp,48
    800037b4:	00002917          	auipc	s2,0x2
    800037b8:	3cc90913          	addi	s2,s2,972 # 80005b80 <uart_tx_r>
    800037bc:	00093783          	ld	a5,0(s2)
    800037c0:	00002497          	auipc	s1,0x2
    800037c4:	3c848493          	addi	s1,s1,968 # 80005b88 <uart_tx_w>
    800037c8:	0004b703          	ld	a4,0(s1)
    800037cc:	02078693          	addi	a3,a5,32
    800037d0:	00050993          	mv	s3,a0
    800037d4:	02e69c63          	bne	a3,a4,8000380c <uartputc+0x84>
    800037d8:	00001097          	auipc	ra,0x1
    800037dc:	834080e7          	jalr	-1996(ra) # 8000400c <push_on>
    800037e0:	00093783          	ld	a5,0(s2)
    800037e4:	0004b703          	ld	a4,0(s1)
    800037e8:	02078793          	addi	a5,a5,32
    800037ec:	00e79463          	bne	a5,a4,800037f4 <uartputc+0x6c>
    800037f0:	0000006f          	j	800037f0 <uartputc+0x68>
    800037f4:	00001097          	auipc	ra,0x1
    800037f8:	88c080e7          	jalr	-1908(ra) # 80004080 <pop_on>
    800037fc:	00093783          	ld	a5,0(s2)
    80003800:	0004b703          	ld	a4,0(s1)
    80003804:	02078693          	addi	a3,a5,32
    80003808:	fce688e3          	beq	a3,a4,800037d8 <uartputc+0x50>
    8000380c:	01f77693          	andi	a3,a4,31
    80003810:	00003597          	auipc	a1,0x3
    80003814:	61058593          	addi	a1,a1,1552 # 80006e20 <uart_tx_buf>
    80003818:	00d586b3          	add	a3,a1,a3
    8000381c:	00170713          	addi	a4,a4,1
    80003820:	01368023          	sb	s3,0(a3)
    80003824:	00e4b023          	sd	a4,0(s1)
    80003828:	10000637          	lui	a2,0x10000
    8000382c:	02f71063          	bne	a4,a5,8000384c <uartputc+0xc4>
    80003830:	0340006f          	j	80003864 <uartputc+0xdc>
    80003834:	00074703          	lbu	a4,0(a4)
    80003838:	00f93023          	sd	a5,0(s2)
    8000383c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003840:	00093783          	ld	a5,0(s2)
    80003844:	0004b703          	ld	a4,0(s1)
    80003848:	00f70e63          	beq	a4,a5,80003864 <uartputc+0xdc>
    8000384c:	00564683          	lbu	a3,5(a2)
    80003850:	01f7f713          	andi	a4,a5,31
    80003854:	00e58733          	add	a4,a1,a4
    80003858:	0206f693          	andi	a3,a3,32
    8000385c:	00178793          	addi	a5,a5,1
    80003860:	fc069ae3          	bnez	a3,80003834 <uartputc+0xac>
    80003864:	02813083          	ld	ra,40(sp)
    80003868:	02013403          	ld	s0,32(sp)
    8000386c:	01813483          	ld	s1,24(sp)
    80003870:	01013903          	ld	s2,16(sp)
    80003874:	00813983          	ld	s3,8(sp)
    80003878:	03010113          	addi	sp,sp,48
    8000387c:	00008067          	ret

0000000080003880 <uartputc_sync>:
    80003880:	ff010113          	addi	sp,sp,-16
    80003884:	00813423          	sd	s0,8(sp)
    80003888:	01010413          	addi	s0,sp,16
    8000388c:	00002717          	auipc	a4,0x2
    80003890:	2ec72703          	lw	a4,748(a4) # 80005b78 <panicked>
    80003894:	02071663          	bnez	a4,800038c0 <uartputc_sync+0x40>
    80003898:	00050793          	mv	a5,a0
    8000389c:	100006b7          	lui	a3,0x10000
    800038a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800038a4:	02077713          	andi	a4,a4,32
    800038a8:	fe070ce3          	beqz	a4,800038a0 <uartputc_sync+0x20>
    800038ac:	0ff7f793          	andi	a5,a5,255
    800038b0:	00f68023          	sb	a5,0(a3)
    800038b4:	00813403          	ld	s0,8(sp)
    800038b8:	01010113          	addi	sp,sp,16
    800038bc:	00008067          	ret
    800038c0:	0000006f          	j	800038c0 <uartputc_sync+0x40>

00000000800038c4 <uartstart>:
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00813423          	sd	s0,8(sp)
    800038cc:	01010413          	addi	s0,sp,16
    800038d0:	00002617          	auipc	a2,0x2
    800038d4:	2b060613          	addi	a2,a2,688 # 80005b80 <uart_tx_r>
    800038d8:	00002517          	auipc	a0,0x2
    800038dc:	2b050513          	addi	a0,a0,688 # 80005b88 <uart_tx_w>
    800038e0:	00063783          	ld	a5,0(a2)
    800038e4:	00053703          	ld	a4,0(a0)
    800038e8:	04f70263          	beq	a4,a5,8000392c <uartstart+0x68>
    800038ec:	100005b7          	lui	a1,0x10000
    800038f0:	00003817          	auipc	a6,0x3
    800038f4:	53080813          	addi	a6,a6,1328 # 80006e20 <uart_tx_buf>
    800038f8:	01c0006f          	j	80003914 <uartstart+0x50>
    800038fc:	0006c703          	lbu	a4,0(a3)
    80003900:	00f63023          	sd	a5,0(a2)
    80003904:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003908:	00063783          	ld	a5,0(a2)
    8000390c:	00053703          	ld	a4,0(a0)
    80003910:	00f70e63          	beq	a4,a5,8000392c <uartstart+0x68>
    80003914:	01f7f713          	andi	a4,a5,31
    80003918:	00e806b3          	add	a3,a6,a4
    8000391c:	0055c703          	lbu	a4,5(a1)
    80003920:	00178793          	addi	a5,a5,1
    80003924:	02077713          	andi	a4,a4,32
    80003928:	fc071ae3          	bnez	a4,800038fc <uartstart+0x38>
    8000392c:	00813403          	ld	s0,8(sp)
    80003930:	01010113          	addi	sp,sp,16
    80003934:	00008067          	ret

0000000080003938 <uartgetc>:
    80003938:	ff010113          	addi	sp,sp,-16
    8000393c:	00813423          	sd	s0,8(sp)
    80003940:	01010413          	addi	s0,sp,16
    80003944:	10000737          	lui	a4,0x10000
    80003948:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000394c:	0017f793          	andi	a5,a5,1
    80003950:	00078c63          	beqz	a5,80003968 <uartgetc+0x30>
    80003954:	00074503          	lbu	a0,0(a4)
    80003958:	0ff57513          	andi	a0,a0,255
    8000395c:	00813403          	ld	s0,8(sp)
    80003960:	01010113          	addi	sp,sp,16
    80003964:	00008067          	ret
    80003968:	fff00513          	li	a0,-1
    8000396c:	ff1ff06f          	j	8000395c <uartgetc+0x24>

0000000080003970 <uartintr>:
    80003970:	100007b7          	lui	a5,0x10000
    80003974:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003978:	0017f793          	andi	a5,a5,1
    8000397c:	0a078463          	beqz	a5,80003a24 <uartintr+0xb4>
    80003980:	fe010113          	addi	sp,sp,-32
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	00113c23          	sd	ra,24(sp)
    80003990:	02010413          	addi	s0,sp,32
    80003994:	100004b7          	lui	s1,0x10000
    80003998:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000399c:	0ff57513          	andi	a0,a0,255
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	534080e7          	jalr	1332(ra) # 80002ed4 <consoleintr>
    800039a8:	0054c783          	lbu	a5,5(s1)
    800039ac:	0017f793          	andi	a5,a5,1
    800039b0:	fe0794e3          	bnez	a5,80003998 <uartintr+0x28>
    800039b4:	00002617          	auipc	a2,0x2
    800039b8:	1cc60613          	addi	a2,a2,460 # 80005b80 <uart_tx_r>
    800039bc:	00002517          	auipc	a0,0x2
    800039c0:	1cc50513          	addi	a0,a0,460 # 80005b88 <uart_tx_w>
    800039c4:	00063783          	ld	a5,0(a2)
    800039c8:	00053703          	ld	a4,0(a0)
    800039cc:	04f70263          	beq	a4,a5,80003a10 <uartintr+0xa0>
    800039d0:	100005b7          	lui	a1,0x10000
    800039d4:	00003817          	auipc	a6,0x3
    800039d8:	44c80813          	addi	a6,a6,1100 # 80006e20 <uart_tx_buf>
    800039dc:	01c0006f          	j	800039f8 <uartintr+0x88>
    800039e0:	0006c703          	lbu	a4,0(a3)
    800039e4:	00f63023          	sd	a5,0(a2)
    800039e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800039ec:	00063783          	ld	a5,0(a2)
    800039f0:	00053703          	ld	a4,0(a0)
    800039f4:	00f70e63          	beq	a4,a5,80003a10 <uartintr+0xa0>
    800039f8:	01f7f713          	andi	a4,a5,31
    800039fc:	00e806b3          	add	a3,a6,a4
    80003a00:	0055c703          	lbu	a4,5(a1)
    80003a04:	00178793          	addi	a5,a5,1
    80003a08:	02077713          	andi	a4,a4,32
    80003a0c:	fc071ae3          	bnez	a4,800039e0 <uartintr+0x70>
    80003a10:	01813083          	ld	ra,24(sp)
    80003a14:	01013403          	ld	s0,16(sp)
    80003a18:	00813483          	ld	s1,8(sp)
    80003a1c:	02010113          	addi	sp,sp,32
    80003a20:	00008067          	ret
    80003a24:	00002617          	auipc	a2,0x2
    80003a28:	15c60613          	addi	a2,a2,348 # 80005b80 <uart_tx_r>
    80003a2c:	00002517          	auipc	a0,0x2
    80003a30:	15c50513          	addi	a0,a0,348 # 80005b88 <uart_tx_w>
    80003a34:	00063783          	ld	a5,0(a2)
    80003a38:	00053703          	ld	a4,0(a0)
    80003a3c:	04f70263          	beq	a4,a5,80003a80 <uartintr+0x110>
    80003a40:	100005b7          	lui	a1,0x10000
    80003a44:	00003817          	auipc	a6,0x3
    80003a48:	3dc80813          	addi	a6,a6,988 # 80006e20 <uart_tx_buf>
    80003a4c:	01c0006f          	j	80003a68 <uartintr+0xf8>
    80003a50:	0006c703          	lbu	a4,0(a3)
    80003a54:	00f63023          	sd	a5,0(a2)
    80003a58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a5c:	00063783          	ld	a5,0(a2)
    80003a60:	00053703          	ld	a4,0(a0)
    80003a64:	02f70063          	beq	a4,a5,80003a84 <uartintr+0x114>
    80003a68:	01f7f713          	andi	a4,a5,31
    80003a6c:	00e806b3          	add	a3,a6,a4
    80003a70:	0055c703          	lbu	a4,5(a1)
    80003a74:	00178793          	addi	a5,a5,1
    80003a78:	02077713          	andi	a4,a4,32
    80003a7c:	fc071ae3          	bnez	a4,80003a50 <uartintr+0xe0>
    80003a80:	00008067          	ret
    80003a84:	00008067          	ret

0000000080003a88 <kinit>:
    80003a88:	fc010113          	addi	sp,sp,-64
    80003a8c:	02913423          	sd	s1,40(sp)
    80003a90:	fffff7b7          	lui	a5,0xfffff
    80003a94:	00004497          	auipc	s1,0x4
    80003a98:	3bb48493          	addi	s1,s1,955 # 80007e4f <end+0xfff>
    80003a9c:	02813823          	sd	s0,48(sp)
    80003aa0:	01313c23          	sd	s3,24(sp)
    80003aa4:	00f4f4b3          	and	s1,s1,a5
    80003aa8:	02113c23          	sd	ra,56(sp)
    80003aac:	03213023          	sd	s2,32(sp)
    80003ab0:	01413823          	sd	s4,16(sp)
    80003ab4:	01513423          	sd	s5,8(sp)
    80003ab8:	04010413          	addi	s0,sp,64
    80003abc:	000017b7          	lui	a5,0x1
    80003ac0:	01100993          	li	s3,17
    80003ac4:	00f487b3          	add	a5,s1,a5
    80003ac8:	01b99993          	slli	s3,s3,0x1b
    80003acc:	06f9e063          	bltu	s3,a5,80003b2c <kinit+0xa4>
    80003ad0:	00003a97          	auipc	s5,0x3
    80003ad4:	380a8a93          	addi	s5,s5,896 # 80006e50 <end>
    80003ad8:	0754ec63          	bltu	s1,s5,80003b50 <kinit+0xc8>
    80003adc:	0734fa63          	bgeu	s1,s3,80003b50 <kinit+0xc8>
    80003ae0:	00088a37          	lui	s4,0x88
    80003ae4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003ae8:	00002917          	auipc	s2,0x2
    80003aec:	0a890913          	addi	s2,s2,168 # 80005b90 <kmem>
    80003af0:	00ca1a13          	slli	s4,s4,0xc
    80003af4:	0140006f          	j	80003b08 <kinit+0x80>
    80003af8:	000017b7          	lui	a5,0x1
    80003afc:	00f484b3          	add	s1,s1,a5
    80003b00:	0554e863          	bltu	s1,s5,80003b50 <kinit+0xc8>
    80003b04:	0534f663          	bgeu	s1,s3,80003b50 <kinit+0xc8>
    80003b08:	00001637          	lui	a2,0x1
    80003b0c:	00100593          	li	a1,1
    80003b10:	00048513          	mv	a0,s1
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	5e4080e7          	jalr	1508(ra) # 800040f8 <__memset>
    80003b1c:	00093783          	ld	a5,0(s2)
    80003b20:	00f4b023          	sd	a5,0(s1)
    80003b24:	00993023          	sd	s1,0(s2)
    80003b28:	fd4498e3          	bne	s1,s4,80003af8 <kinit+0x70>
    80003b2c:	03813083          	ld	ra,56(sp)
    80003b30:	03013403          	ld	s0,48(sp)
    80003b34:	02813483          	ld	s1,40(sp)
    80003b38:	02013903          	ld	s2,32(sp)
    80003b3c:	01813983          	ld	s3,24(sp)
    80003b40:	01013a03          	ld	s4,16(sp)
    80003b44:	00813a83          	ld	s5,8(sp)
    80003b48:	04010113          	addi	sp,sp,64
    80003b4c:	00008067          	ret
    80003b50:	00001517          	auipc	a0,0x1
    80003b54:	6d850513          	addi	a0,a0,1752 # 80005228 <digits+0x18>
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	4b4080e7          	jalr	1204(ra) # 8000300c <panic>

0000000080003b60 <freerange>:
    80003b60:	fc010113          	addi	sp,sp,-64
    80003b64:	000017b7          	lui	a5,0x1
    80003b68:	02913423          	sd	s1,40(sp)
    80003b6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003b70:	009504b3          	add	s1,a0,s1
    80003b74:	fffff537          	lui	a0,0xfffff
    80003b78:	02813823          	sd	s0,48(sp)
    80003b7c:	02113c23          	sd	ra,56(sp)
    80003b80:	03213023          	sd	s2,32(sp)
    80003b84:	01313c23          	sd	s3,24(sp)
    80003b88:	01413823          	sd	s4,16(sp)
    80003b8c:	01513423          	sd	s5,8(sp)
    80003b90:	01613023          	sd	s6,0(sp)
    80003b94:	04010413          	addi	s0,sp,64
    80003b98:	00a4f4b3          	and	s1,s1,a0
    80003b9c:	00f487b3          	add	a5,s1,a5
    80003ba0:	06f5e463          	bltu	a1,a5,80003c08 <freerange+0xa8>
    80003ba4:	00003a97          	auipc	s5,0x3
    80003ba8:	2aca8a93          	addi	s5,s5,684 # 80006e50 <end>
    80003bac:	0954e263          	bltu	s1,s5,80003c30 <freerange+0xd0>
    80003bb0:	01100993          	li	s3,17
    80003bb4:	01b99993          	slli	s3,s3,0x1b
    80003bb8:	0734fc63          	bgeu	s1,s3,80003c30 <freerange+0xd0>
    80003bbc:	00058a13          	mv	s4,a1
    80003bc0:	00002917          	auipc	s2,0x2
    80003bc4:	fd090913          	addi	s2,s2,-48 # 80005b90 <kmem>
    80003bc8:	00002b37          	lui	s6,0x2
    80003bcc:	0140006f          	j	80003be0 <freerange+0x80>
    80003bd0:	000017b7          	lui	a5,0x1
    80003bd4:	00f484b3          	add	s1,s1,a5
    80003bd8:	0554ec63          	bltu	s1,s5,80003c30 <freerange+0xd0>
    80003bdc:	0534fa63          	bgeu	s1,s3,80003c30 <freerange+0xd0>
    80003be0:	00001637          	lui	a2,0x1
    80003be4:	00100593          	li	a1,1
    80003be8:	00048513          	mv	a0,s1
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	50c080e7          	jalr	1292(ra) # 800040f8 <__memset>
    80003bf4:	00093703          	ld	a4,0(s2)
    80003bf8:	016487b3          	add	a5,s1,s6
    80003bfc:	00e4b023          	sd	a4,0(s1)
    80003c00:	00993023          	sd	s1,0(s2)
    80003c04:	fcfa76e3          	bgeu	s4,a5,80003bd0 <freerange+0x70>
    80003c08:	03813083          	ld	ra,56(sp)
    80003c0c:	03013403          	ld	s0,48(sp)
    80003c10:	02813483          	ld	s1,40(sp)
    80003c14:	02013903          	ld	s2,32(sp)
    80003c18:	01813983          	ld	s3,24(sp)
    80003c1c:	01013a03          	ld	s4,16(sp)
    80003c20:	00813a83          	ld	s5,8(sp)
    80003c24:	00013b03          	ld	s6,0(sp)
    80003c28:	04010113          	addi	sp,sp,64
    80003c2c:	00008067          	ret
    80003c30:	00001517          	auipc	a0,0x1
    80003c34:	5f850513          	addi	a0,a0,1528 # 80005228 <digits+0x18>
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	3d4080e7          	jalr	980(ra) # 8000300c <panic>

0000000080003c40 <kfree>:
    80003c40:	fe010113          	addi	sp,sp,-32
    80003c44:	00813823          	sd	s0,16(sp)
    80003c48:	00113c23          	sd	ra,24(sp)
    80003c4c:	00913423          	sd	s1,8(sp)
    80003c50:	02010413          	addi	s0,sp,32
    80003c54:	03451793          	slli	a5,a0,0x34
    80003c58:	04079c63          	bnez	a5,80003cb0 <kfree+0x70>
    80003c5c:	00003797          	auipc	a5,0x3
    80003c60:	1f478793          	addi	a5,a5,500 # 80006e50 <end>
    80003c64:	00050493          	mv	s1,a0
    80003c68:	04f56463          	bltu	a0,a5,80003cb0 <kfree+0x70>
    80003c6c:	01100793          	li	a5,17
    80003c70:	01b79793          	slli	a5,a5,0x1b
    80003c74:	02f57e63          	bgeu	a0,a5,80003cb0 <kfree+0x70>
    80003c78:	00001637          	lui	a2,0x1
    80003c7c:	00100593          	li	a1,1
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	478080e7          	jalr	1144(ra) # 800040f8 <__memset>
    80003c88:	00002797          	auipc	a5,0x2
    80003c8c:	f0878793          	addi	a5,a5,-248 # 80005b90 <kmem>
    80003c90:	0007b703          	ld	a4,0(a5)
    80003c94:	01813083          	ld	ra,24(sp)
    80003c98:	01013403          	ld	s0,16(sp)
    80003c9c:	00e4b023          	sd	a4,0(s1)
    80003ca0:	0097b023          	sd	s1,0(a5)
    80003ca4:	00813483          	ld	s1,8(sp)
    80003ca8:	02010113          	addi	sp,sp,32
    80003cac:	00008067          	ret
    80003cb0:	00001517          	auipc	a0,0x1
    80003cb4:	57850513          	addi	a0,a0,1400 # 80005228 <digits+0x18>
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	354080e7          	jalr	852(ra) # 8000300c <panic>

0000000080003cc0 <kalloc>:
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00813823          	sd	s0,16(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	00113c23          	sd	ra,24(sp)
    80003cd0:	02010413          	addi	s0,sp,32
    80003cd4:	00002797          	auipc	a5,0x2
    80003cd8:	ebc78793          	addi	a5,a5,-324 # 80005b90 <kmem>
    80003cdc:	0007b483          	ld	s1,0(a5)
    80003ce0:	02048063          	beqz	s1,80003d00 <kalloc+0x40>
    80003ce4:	0004b703          	ld	a4,0(s1)
    80003ce8:	00001637          	lui	a2,0x1
    80003cec:	00500593          	li	a1,5
    80003cf0:	00048513          	mv	a0,s1
    80003cf4:	00e7b023          	sd	a4,0(a5)
    80003cf8:	00000097          	auipc	ra,0x0
    80003cfc:	400080e7          	jalr	1024(ra) # 800040f8 <__memset>
    80003d00:	01813083          	ld	ra,24(sp)
    80003d04:	01013403          	ld	s0,16(sp)
    80003d08:	00048513          	mv	a0,s1
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret

0000000080003d18 <initlock>:
    80003d18:	ff010113          	addi	sp,sp,-16
    80003d1c:	00813423          	sd	s0,8(sp)
    80003d20:	01010413          	addi	s0,sp,16
    80003d24:	00813403          	ld	s0,8(sp)
    80003d28:	00b53423          	sd	a1,8(a0)
    80003d2c:	00052023          	sw	zero,0(a0)
    80003d30:	00053823          	sd	zero,16(a0)
    80003d34:	01010113          	addi	sp,sp,16
    80003d38:	00008067          	ret

0000000080003d3c <acquire>:
    80003d3c:	fe010113          	addi	sp,sp,-32
    80003d40:	00813823          	sd	s0,16(sp)
    80003d44:	00913423          	sd	s1,8(sp)
    80003d48:	00113c23          	sd	ra,24(sp)
    80003d4c:	01213023          	sd	s2,0(sp)
    80003d50:	02010413          	addi	s0,sp,32
    80003d54:	00050493          	mv	s1,a0
    80003d58:	10002973          	csrr	s2,sstatus
    80003d5c:	100027f3          	csrr	a5,sstatus
    80003d60:	ffd7f793          	andi	a5,a5,-3
    80003d64:	10079073          	csrw	sstatus,a5
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	8ec080e7          	jalr	-1812(ra) # 80002654 <mycpu>
    80003d70:	07852783          	lw	a5,120(a0)
    80003d74:	06078e63          	beqz	a5,80003df0 <acquire+0xb4>
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	8dc080e7          	jalr	-1828(ra) # 80002654 <mycpu>
    80003d80:	07852783          	lw	a5,120(a0)
    80003d84:	0004a703          	lw	a4,0(s1)
    80003d88:	0017879b          	addiw	a5,a5,1
    80003d8c:	06f52c23          	sw	a5,120(a0)
    80003d90:	04071063          	bnez	a4,80003dd0 <acquire+0x94>
    80003d94:	00100713          	li	a4,1
    80003d98:	00070793          	mv	a5,a4
    80003d9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003da0:	0007879b          	sext.w	a5,a5
    80003da4:	fe079ae3          	bnez	a5,80003d98 <acquire+0x5c>
    80003da8:	0ff0000f          	fence
    80003dac:	fffff097          	auipc	ra,0xfffff
    80003db0:	8a8080e7          	jalr	-1880(ra) # 80002654 <mycpu>
    80003db4:	01813083          	ld	ra,24(sp)
    80003db8:	01013403          	ld	s0,16(sp)
    80003dbc:	00a4b823          	sd	a0,16(s1)
    80003dc0:	00013903          	ld	s2,0(sp)
    80003dc4:	00813483          	ld	s1,8(sp)
    80003dc8:	02010113          	addi	sp,sp,32
    80003dcc:	00008067          	ret
    80003dd0:	0104b903          	ld	s2,16(s1)
    80003dd4:	fffff097          	auipc	ra,0xfffff
    80003dd8:	880080e7          	jalr	-1920(ra) # 80002654 <mycpu>
    80003ddc:	faa91ce3          	bne	s2,a0,80003d94 <acquire+0x58>
    80003de0:	00001517          	auipc	a0,0x1
    80003de4:	45050513          	addi	a0,a0,1104 # 80005230 <digits+0x20>
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	224080e7          	jalr	548(ra) # 8000300c <panic>
    80003df0:	00195913          	srli	s2,s2,0x1
    80003df4:	fffff097          	auipc	ra,0xfffff
    80003df8:	860080e7          	jalr	-1952(ra) # 80002654 <mycpu>
    80003dfc:	00197913          	andi	s2,s2,1
    80003e00:	07252e23          	sw	s2,124(a0)
    80003e04:	f75ff06f          	j	80003d78 <acquire+0x3c>

0000000080003e08 <release>:
    80003e08:	fe010113          	addi	sp,sp,-32
    80003e0c:	00813823          	sd	s0,16(sp)
    80003e10:	00113c23          	sd	ra,24(sp)
    80003e14:	00913423          	sd	s1,8(sp)
    80003e18:	01213023          	sd	s2,0(sp)
    80003e1c:	02010413          	addi	s0,sp,32
    80003e20:	00052783          	lw	a5,0(a0)
    80003e24:	00079a63          	bnez	a5,80003e38 <release+0x30>
    80003e28:	00001517          	auipc	a0,0x1
    80003e2c:	41050513          	addi	a0,a0,1040 # 80005238 <digits+0x28>
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	1dc080e7          	jalr	476(ra) # 8000300c <panic>
    80003e38:	01053903          	ld	s2,16(a0)
    80003e3c:	00050493          	mv	s1,a0
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	814080e7          	jalr	-2028(ra) # 80002654 <mycpu>
    80003e48:	fea910e3          	bne	s2,a0,80003e28 <release+0x20>
    80003e4c:	0004b823          	sd	zero,16(s1)
    80003e50:	0ff0000f          	fence
    80003e54:	0f50000f          	fence	iorw,ow
    80003e58:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	7f8080e7          	jalr	2040(ra) # 80002654 <mycpu>
    80003e64:	100027f3          	csrr	a5,sstatus
    80003e68:	0027f793          	andi	a5,a5,2
    80003e6c:	04079a63          	bnez	a5,80003ec0 <release+0xb8>
    80003e70:	07852783          	lw	a5,120(a0)
    80003e74:	02f05e63          	blez	a5,80003eb0 <release+0xa8>
    80003e78:	fff7871b          	addiw	a4,a5,-1
    80003e7c:	06e52c23          	sw	a4,120(a0)
    80003e80:	00071c63          	bnez	a4,80003e98 <release+0x90>
    80003e84:	07c52783          	lw	a5,124(a0)
    80003e88:	00078863          	beqz	a5,80003e98 <release+0x90>
    80003e8c:	100027f3          	csrr	a5,sstatus
    80003e90:	0027e793          	ori	a5,a5,2
    80003e94:	10079073          	csrw	sstatus,a5
    80003e98:	01813083          	ld	ra,24(sp)
    80003e9c:	01013403          	ld	s0,16(sp)
    80003ea0:	00813483          	ld	s1,8(sp)
    80003ea4:	00013903          	ld	s2,0(sp)
    80003ea8:	02010113          	addi	sp,sp,32
    80003eac:	00008067          	ret
    80003eb0:	00001517          	auipc	a0,0x1
    80003eb4:	3a850513          	addi	a0,a0,936 # 80005258 <digits+0x48>
    80003eb8:	fffff097          	auipc	ra,0xfffff
    80003ebc:	154080e7          	jalr	340(ra) # 8000300c <panic>
    80003ec0:	00001517          	auipc	a0,0x1
    80003ec4:	38050513          	addi	a0,a0,896 # 80005240 <digits+0x30>
    80003ec8:	fffff097          	auipc	ra,0xfffff
    80003ecc:	144080e7          	jalr	324(ra) # 8000300c <panic>

0000000080003ed0 <holding>:
    80003ed0:	00052783          	lw	a5,0(a0)
    80003ed4:	00079663          	bnez	a5,80003ee0 <holding+0x10>
    80003ed8:	00000513          	li	a0,0
    80003edc:	00008067          	ret
    80003ee0:	fe010113          	addi	sp,sp,-32
    80003ee4:	00813823          	sd	s0,16(sp)
    80003ee8:	00913423          	sd	s1,8(sp)
    80003eec:	00113c23          	sd	ra,24(sp)
    80003ef0:	02010413          	addi	s0,sp,32
    80003ef4:	01053483          	ld	s1,16(a0)
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	75c080e7          	jalr	1884(ra) # 80002654 <mycpu>
    80003f00:	01813083          	ld	ra,24(sp)
    80003f04:	01013403          	ld	s0,16(sp)
    80003f08:	40a48533          	sub	a0,s1,a0
    80003f0c:	00153513          	seqz	a0,a0
    80003f10:	00813483          	ld	s1,8(sp)
    80003f14:	02010113          	addi	sp,sp,32
    80003f18:	00008067          	ret

0000000080003f1c <push_off>:
    80003f1c:	fe010113          	addi	sp,sp,-32
    80003f20:	00813823          	sd	s0,16(sp)
    80003f24:	00113c23          	sd	ra,24(sp)
    80003f28:	00913423          	sd	s1,8(sp)
    80003f2c:	02010413          	addi	s0,sp,32
    80003f30:	100024f3          	csrr	s1,sstatus
    80003f34:	100027f3          	csrr	a5,sstatus
    80003f38:	ffd7f793          	andi	a5,a5,-3
    80003f3c:	10079073          	csrw	sstatus,a5
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	714080e7          	jalr	1812(ra) # 80002654 <mycpu>
    80003f48:	07852783          	lw	a5,120(a0)
    80003f4c:	02078663          	beqz	a5,80003f78 <push_off+0x5c>
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	704080e7          	jalr	1796(ra) # 80002654 <mycpu>
    80003f58:	07852783          	lw	a5,120(a0)
    80003f5c:	01813083          	ld	ra,24(sp)
    80003f60:	01013403          	ld	s0,16(sp)
    80003f64:	0017879b          	addiw	a5,a5,1
    80003f68:	06f52c23          	sw	a5,120(a0)
    80003f6c:	00813483          	ld	s1,8(sp)
    80003f70:	02010113          	addi	sp,sp,32
    80003f74:	00008067          	ret
    80003f78:	0014d493          	srli	s1,s1,0x1
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	6d8080e7          	jalr	1752(ra) # 80002654 <mycpu>
    80003f84:	0014f493          	andi	s1,s1,1
    80003f88:	06952e23          	sw	s1,124(a0)
    80003f8c:	fc5ff06f          	j	80003f50 <push_off+0x34>

0000000080003f90 <pop_off>:
    80003f90:	ff010113          	addi	sp,sp,-16
    80003f94:	00813023          	sd	s0,0(sp)
    80003f98:	00113423          	sd	ra,8(sp)
    80003f9c:	01010413          	addi	s0,sp,16
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	6b4080e7          	jalr	1716(ra) # 80002654 <mycpu>
    80003fa8:	100027f3          	csrr	a5,sstatus
    80003fac:	0027f793          	andi	a5,a5,2
    80003fb0:	04079663          	bnez	a5,80003ffc <pop_off+0x6c>
    80003fb4:	07852783          	lw	a5,120(a0)
    80003fb8:	02f05a63          	blez	a5,80003fec <pop_off+0x5c>
    80003fbc:	fff7871b          	addiw	a4,a5,-1
    80003fc0:	06e52c23          	sw	a4,120(a0)
    80003fc4:	00071c63          	bnez	a4,80003fdc <pop_off+0x4c>
    80003fc8:	07c52783          	lw	a5,124(a0)
    80003fcc:	00078863          	beqz	a5,80003fdc <pop_off+0x4c>
    80003fd0:	100027f3          	csrr	a5,sstatus
    80003fd4:	0027e793          	ori	a5,a5,2
    80003fd8:	10079073          	csrw	sstatus,a5
    80003fdc:	00813083          	ld	ra,8(sp)
    80003fe0:	00013403          	ld	s0,0(sp)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret
    80003fec:	00001517          	auipc	a0,0x1
    80003ff0:	26c50513          	addi	a0,a0,620 # 80005258 <digits+0x48>
    80003ff4:	fffff097          	auipc	ra,0xfffff
    80003ff8:	018080e7          	jalr	24(ra) # 8000300c <panic>
    80003ffc:	00001517          	auipc	a0,0x1
    80004000:	24450513          	addi	a0,a0,580 # 80005240 <digits+0x30>
    80004004:	fffff097          	auipc	ra,0xfffff
    80004008:	008080e7          	jalr	8(ra) # 8000300c <panic>

000000008000400c <push_on>:
    8000400c:	fe010113          	addi	sp,sp,-32
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00113c23          	sd	ra,24(sp)
    80004018:	00913423          	sd	s1,8(sp)
    8000401c:	02010413          	addi	s0,sp,32
    80004020:	100024f3          	csrr	s1,sstatus
    80004024:	100027f3          	csrr	a5,sstatus
    80004028:	0027e793          	ori	a5,a5,2
    8000402c:	10079073          	csrw	sstatus,a5
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	624080e7          	jalr	1572(ra) # 80002654 <mycpu>
    80004038:	07852783          	lw	a5,120(a0)
    8000403c:	02078663          	beqz	a5,80004068 <push_on+0x5c>
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	614080e7          	jalr	1556(ra) # 80002654 <mycpu>
    80004048:	07852783          	lw	a5,120(a0)
    8000404c:	01813083          	ld	ra,24(sp)
    80004050:	01013403          	ld	s0,16(sp)
    80004054:	0017879b          	addiw	a5,a5,1
    80004058:	06f52c23          	sw	a5,120(a0)
    8000405c:	00813483          	ld	s1,8(sp)
    80004060:	02010113          	addi	sp,sp,32
    80004064:	00008067          	ret
    80004068:	0014d493          	srli	s1,s1,0x1
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	5e8080e7          	jalr	1512(ra) # 80002654 <mycpu>
    80004074:	0014f493          	andi	s1,s1,1
    80004078:	06952e23          	sw	s1,124(a0)
    8000407c:	fc5ff06f          	j	80004040 <push_on+0x34>

0000000080004080 <pop_on>:
    80004080:	ff010113          	addi	sp,sp,-16
    80004084:	00813023          	sd	s0,0(sp)
    80004088:	00113423          	sd	ra,8(sp)
    8000408c:	01010413          	addi	s0,sp,16
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	5c4080e7          	jalr	1476(ra) # 80002654 <mycpu>
    80004098:	100027f3          	csrr	a5,sstatus
    8000409c:	0027f793          	andi	a5,a5,2
    800040a0:	04078463          	beqz	a5,800040e8 <pop_on+0x68>
    800040a4:	07852783          	lw	a5,120(a0)
    800040a8:	02f05863          	blez	a5,800040d8 <pop_on+0x58>
    800040ac:	fff7879b          	addiw	a5,a5,-1
    800040b0:	06f52c23          	sw	a5,120(a0)
    800040b4:	07853783          	ld	a5,120(a0)
    800040b8:	00079863          	bnez	a5,800040c8 <pop_on+0x48>
    800040bc:	100027f3          	csrr	a5,sstatus
    800040c0:	ffd7f793          	andi	a5,a5,-3
    800040c4:	10079073          	csrw	sstatus,a5
    800040c8:	00813083          	ld	ra,8(sp)
    800040cc:	00013403          	ld	s0,0(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret
    800040d8:	00001517          	auipc	a0,0x1
    800040dc:	1a850513          	addi	a0,a0,424 # 80005280 <digits+0x70>
    800040e0:	fffff097          	auipc	ra,0xfffff
    800040e4:	f2c080e7          	jalr	-212(ra) # 8000300c <panic>
    800040e8:	00001517          	auipc	a0,0x1
    800040ec:	17850513          	addi	a0,a0,376 # 80005260 <digits+0x50>
    800040f0:	fffff097          	auipc	ra,0xfffff
    800040f4:	f1c080e7          	jalr	-228(ra) # 8000300c <panic>

00000000800040f8 <__memset>:
    800040f8:	ff010113          	addi	sp,sp,-16
    800040fc:	00813423          	sd	s0,8(sp)
    80004100:	01010413          	addi	s0,sp,16
    80004104:	1a060e63          	beqz	a2,800042c0 <__memset+0x1c8>
    80004108:	40a007b3          	neg	a5,a0
    8000410c:	0077f793          	andi	a5,a5,7
    80004110:	00778693          	addi	a3,a5,7
    80004114:	00b00813          	li	a6,11
    80004118:	0ff5f593          	andi	a1,a1,255
    8000411c:	fff6071b          	addiw	a4,a2,-1
    80004120:	1b06e663          	bltu	a3,a6,800042cc <__memset+0x1d4>
    80004124:	1cd76463          	bltu	a4,a3,800042ec <__memset+0x1f4>
    80004128:	1a078e63          	beqz	a5,800042e4 <__memset+0x1ec>
    8000412c:	00b50023          	sb	a1,0(a0)
    80004130:	00100713          	li	a4,1
    80004134:	1ae78463          	beq	a5,a4,800042dc <__memset+0x1e4>
    80004138:	00b500a3          	sb	a1,1(a0)
    8000413c:	00200713          	li	a4,2
    80004140:	1ae78a63          	beq	a5,a4,800042f4 <__memset+0x1fc>
    80004144:	00b50123          	sb	a1,2(a0)
    80004148:	00300713          	li	a4,3
    8000414c:	18e78463          	beq	a5,a4,800042d4 <__memset+0x1dc>
    80004150:	00b501a3          	sb	a1,3(a0)
    80004154:	00400713          	li	a4,4
    80004158:	1ae78263          	beq	a5,a4,800042fc <__memset+0x204>
    8000415c:	00b50223          	sb	a1,4(a0)
    80004160:	00500713          	li	a4,5
    80004164:	1ae78063          	beq	a5,a4,80004304 <__memset+0x20c>
    80004168:	00b502a3          	sb	a1,5(a0)
    8000416c:	00700713          	li	a4,7
    80004170:	18e79e63          	bne	a5,a4,8000430c <__memset+0x214>
    80004174:	00b50323          	sb	a1,6(a0)
    80004178:	00700e93          	li	t4,7
    8000417c:	00859713          	slli	a4,a1,0x8
    80004180:	00e5e733          	or	a4,a1,a4
    80004184:	01059e13          	slli	t3,a1,0x10
    80004188:	01c76e33          	or	t3,a4,t3
    8000418c:	01859313          	slli	t1,a1,0x18
    80004190:	006e6333          	or	t1,t3,t1
    80004194:	02059893          	slli	a7,a1,0x20
    80004198:	40f60e3b          	subw	t3,a2,a5
    8000419c:	011368b3          	or	a7,t1,a7
    800041a0:	02859813          	slli	a6,a1,0x28
    800041a4:	0108e833          	or	a6,a7,a6
    800041a8:	03059693          	slli	a3,a1,0x30
    800041ac:	003e589b          	srliw	a7,t3,0x3
    800041b0:	00d866b3          	or	a3,a6,a3
    800041b4:	03859713          	slli	a4,a1,0x38
    800041b8:	00389813          	slli	a6,a7,0x3
    800041bc:	00f507b3          	add	a5,a0,a5
    800041c0:	00e6e733          	or	a4,a3,a4
    800041c4:	000e089b          	sext.w	a7,t3
    800041c8:	00f806b3          	add	a3,a6,a5
    800041cc:	00e7b023          	sd	a4,0(a5)
    800041d0:	00878793          	addi	a5,a5,8
    800041d4:	fed79ce3          	bne	a5,a3,800041cc <__memset+0xd4>
    800041d8:	ff8e7793          	andi	a5,t3,-8
    800041dc:	0007871b          	sext.w	a4,a5
    800041e0:	01d787bb          	addw	a5,a5,t4
    800041e4:	0ce88e63          	beq	a7,a4,800042c0 <__memset+0x1c8>
    800041e8:	00f50733          	add	a4,a0,a5
    800041ec:	00b70023          	sb	a1,0(a4)
    800041f0:	0017871b          	addiw	a4,a5,1
    800041f4:	0cc77663          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    800041f8:	00e50733          	add	a4,a0,a4
    800041fc:	00b70023          	sb	a1,0(a4)
    80004200:	0027871b          	addiw	a4,a5,2
    80004204:	0ac77e63          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004208:	00e50733          	add	a4,a0,a4
    8000420c:	00b70023          	sb	a1,0(a4)
    80004210:	0037871b          	addiw	a4,a5,3
    80004214:	0ac77663          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004218:	00e50733          	add	a4,a0,a4
    8000421c:	00b70023          	sb	a1,0(a4)
    80004220:	0047871b          	addiw	a4,a5,4
    80004224:	08c77e63          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004228:	00e50733          	add	a4,a0,a4
    8000422c:	00b70023          	sb	a1,0(a4)
    80004230:	0057871b          	addiw	a4,a5,5
    80004234:	08c77663          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004238:	00e50733          	add	a4,a0,a4
    8000423c:	00b70023          	sb	a1,0(a4)
    80004240:	0067871b          	addiw	a4,a5,6
    80004244:	06c77e63          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004248:	00e50733          	add	a4,a0,a4
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	0077871b          	addiw	a4,a5,7
    80004254:	06c77663          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00b70023          	sb	a1,0(a4)
    80004260:	0087871b          	addiw	a4,a5,8
    80004264:	04c77e63          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004268:	00e50733          	add	a4,a0,a4
    8000426c:	00b70023          	sb	a1,0(a4)
    80004270:	0097871b          	addiw	a4,a5,9
    80004274:	04c77663          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004278:	00e50733          	add	a4,a0,a4
    8000427c:	00b70023          	sb	a1,0(a4)
    80004280:	00a7871b          	addiw	a4,a5,10
    80004284:	02c77e63          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004288:	00e50733          	add	a4,a0,a4
    8000428c:	00b70023          	sb	a1,0(a4)
    80004290:	00b7871b          	addiw	a4,a5,11
    80004294:	02c77663          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    80004298:	00e50733          	add	a4,a0,a4
    8000429c:	00b70023          	sb	a1,0(a4)
    800042a0:	00c7871b          	addiw	a4,a5,12
    800042a4:	00c77e63          	bgeu	a4,a2,800042c0 <__memset+0x1c8>
    800042a8:	00e50733          	add	a4,a0,a4
    800042ac:	00b70023          	sb	a1,0(a4)
    800042b0:	00d7879b          	addiw	a5,a5,13
    800042b4:	00c7f663          	bgeu	a5,a2,800042c0 <__memset+0x1c8>
    800042b8:	00f507b3          	add	a5,a0,a5
    800042bc:	00b78023          	sb	a1,0(a5)
    800042c0:	00813403          	ld	s0,8(sp)
    800042c4:	01010113          	addi	sp,sp,16
    800042c8:	00008067          	ret
    800042cc:	00b00693          	li	a3,11
    800042d0:	e55ff06f          	j	80004124 <__memset+0x2c>
    800042d4:	00300e93          	li	t4,3
    800042d8:	ea5ff06f          	j	8000417c <__memset+0x84>
    800042dc:	00100e93          	li	t4,1
    800042e0:	e9dff06f          	j	8000417c <__memset+0x84>
    800042e4:	00000e93          	li	t4,0
    800042e8:	e95ff06f          	j	8000417c <__memset+0x84>
    800042ec:	00000793          	li	a5,0
    800042f0:	ef9ff06f          	j	800041e8 <__memset+0xf0>
    800042f4:	00200e93          	li	t4,2
    800042f8:	e85ff06f          	j	8000417c <__memset+0x84>
    800042fc:	00400e93          	li	t4,4
    80004300:	e7dff06f          	j	8000417c <__memset+0x84>
    80004304:	00500e93          	li	t4,5
    80004308:	e75ff06f          	j	8000417c <__memset+0x84>
    8000430c:	00600e93          	li	t4,6
    80004310:	e6dff06f          	j	8000417c <__memset+0x84>

0000000080004314 <__memmove>:
    80004314:	ff010113          	addi	sp,sp,-16
    80004318:	00813423          	sd	s0,8(sp)
    8000431c:	01010413          	addi	s0,sp,16
    80004320:	0e060863          	beqz	a2,80004410 <__memmove+0xfc>
    80004324:	fff6069b          	addiw	a3,a2,-1
    80004328:	0006881b          	sext.w	a6,a3
    8000432c:	0ea5e863          	bltu	a1,a0,8000441c <__memmove+0x108>
    80004330:	00758713          	addi	a4,a1,7
    80004334:	00a5e7b3          	or	a5,a1,a0
    80004338:	40a70733          	sub	a4,a4,a0
    8000433c:	0077f793          	andi	a5,a5,7
    80004340:	00f73713          	sltiu	a4,a4,15
    80004344:	00174713          	xori	a4,a4,1
    80004348:	0017b793          	seqz	a5,a5
    8000434c:	00e7f7b3          	and	a5,a5,a4
    80004350:	10078863          	beqz	a5,80004460 <__memmove+0x14c>
    80004354:	00900793          	li	a5,9
    80004358:	1107f463          	bgeu	a5,a6,80004460 <__memmove+0x14c>
    8000435c:	0036581b          	srliw	a6,a2,0x3
    80004360:	fff8081b          	addiw	a6,a6,-1
    80004364:	02081813          	slli	a6,a6,0x20
    80004368:	01d85893          	srli	a7,a6,0x1d
    8000436c:	00858813          	addi	a6,a1,8
    80004370:	00058793          	mv	a5,a1
    80004374:	00050713          	mv	a4,a0
    80004378:	01088833          	add	a6,a7,a6
    8000437c:	0007b883          	ld	a7,0(a5)
    80004380:	00878793          	addi	a5,a5,8
    80004384:	00870713          	addi	a4,a4,8
    80004388:	ff173c23          	sd	a7,-8(a4)
    8000438c:	ff0798e3          	bne	a5,a6,8000437c <__memmove+0x68>
    80004390:	ff867713          	andi	a4,a2,-8
    80004394:	02071793          	slli	a5,a4,0x20
    80004398:	0207d793          	srli	a5,a5,0x20
    8000439c:	00f585b3          	add	a1,a1,a5
    800043a0:	40e686bb          	subw	a3,a3,a4
    800043a4:	00f507b3          	add	a5,a0,a5
    800043a8:	06e60463          	beq	a2,a4,80004410 <__memmove+0xfc>
    800043ac:	0005c703          	lbu	a4,0(a1)
    800043b0:	00e78023          	sb	a4,0(a5)
    800043b4:	04068e63          	beqz	a3,80004410 <__memmove+0xfc>
    800043b8:	0015c603          	lbu	a2,1(a1)
    800043bc:	00100713          	li	a4,1
    800043c0:	00c780a3          	sb	a2,1(a5)
    800043c4:	04e68663          	beq	a3,a4,80004410 <__memmove+0xfc>
    800043c8:	0025c603          	lbu	a2,2(a1)
    800043cc:	00200713          	li	a4,2
    800043d0:	00c78123          	sb	a2,2(a5)
    800043d4:	02e68e63          	beq	a3,a4,80004410 <__memmove+0xfc>
    800043d8:	0035c603          	lbu	a2,3(a1)
    800043dc:	00300713          	li	a4,3
    800043e0:	00c781a3          	sb	a2,3(a5)
    800043e4:	02e68663          	beq	a3,a4,80004410 <__memmove+0xfc>
    800043e8:	0045c603          	lbu	a2,4(a1)
    800043ec:	00400713          	li	a4,4
    800043f0:	00c78223          	sb	a2,4(a5)
    800043f4:	00e68e63          	beq	a3,a4,80004410 <__memmove+0xfc>
    800043f8:	0055c603          	lbu	a2,5(a1)
    800043fc:	00500713          	li	a4,5
    80004400:	00c782a3          	sb	a2,5(a5)
    80004404:	00e68663          	beq	a3,a4,80004410 <__memmove+0xfc>
    80004408:	0065c703          	lbu	a4,6(a1)
    8000440c:	00e78323          	sb	a4,6(a5)
    80004410:	00813403          	ld	s0,8(sp)
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00008067          	ret
    8000441c:	02061713          	slli	a4,a2,0x20
    80004420:	02075713          	srli	a4,a4,0x20
    80004424:	00e587b3          	add	a5,a1,a4
    80004428:	f0f574e3          	bgeu	a0,a5,80004330 <__memmove+0x1c>
    8000442c:	02069613          	slli	a2,a3,0x20
    80004430:	02065613          	srli	a2,a2,0x20
    80004434:	fff64613          	not	a2,a2
    80004438:	00e50733          	add	a4,a0,a4
    8000443c:	00c78633          	add	a2,a5,a2
    80004440:	fff7c683          	lbu	a3,-1(a5)
    80004444:	fff78793          	addi	a5,a5,-1
    80004448:	fff70713          	addi	a4,a4,-1
    8000444c:	00d70023          	sb	a3,0(a4)
    80004450:	fec798e3          	bne	a5,a2,80004440 <__memmove+0x12c>
    80004454:	00813403          	ld	s0,8(sp)
    80004458:	01010113          	addi	sp,sp,16
    8000445c:	00008067          	ret
    80004460:	02069713          	slli	a4,a3,0x20
    80004464:	02075713          	srli	a4,a4,0x20
    80004468:	00170713          	addi	a4,a4,1
    8000446c:	00e50733          	add	a4,a0,a4
    80004470:	00050793          	mv	a5,a0
    80004474:	0005c683          	lbu	a3,0(a1)
    80004478:	00178793          	addi	a5,a5,1
    8000447c:	00158593          	addi	a1,a1,1
    80004480:	fed78fa3          	sb	a3,-1(a5)
    80004484:	fee798e3          	bne	a5,a4,80004474 <__memmove+0x160>
    80004488:	f89ff06f          	j	80004410 <__memmove+0xfc>

000000008000448c <__mem_free>:
    8000448c:	ff010113          	addi	sp,sp,-16
    80004490:	00813423          	sd	s0,8(sp)
    80004494:	01010413          	addi	s0,sp,16
    80004498:	00001597          	auipc	a1,0x1
    8000449c:	70058593          	addi	a1,a1,1792 # 80005b98 <freep>
    800044a0:	0005b783          	ld	a5,0(a1)
    800044a4:	ff050693          	addi	a3,a0,-16
    800044a8:	0007b703          	ld	a4,0(a5)
    800044ac:	00d7fc63          	bgeu	a5,a3,800044c4 <__mem_free+0x38>
    800044b0:	00e6ee63          	bltu	a3,a4,800044cc <__mem_free+0x40>
    800044b4:	00e7fc63          	bgeu	a5,a4,800044cc <__mem_free+0x40>
    800044b8:	00070793          	mv	a5,a4
    800044bc:	0007b703          	ld	a4,0(a5)
    800044c0:	fed7e8e3          	bltu	a5,a3,800044b0 <__mem_free+0x24>
    800044c4:	fee7eae3          	bltu	a5,a4,800044b8 <__mem_free+0x2c>
    800044c8:	fee6f8e3          	bgeu	a3,a4,800044b8 <__mem_free+0x2c>
    800044cc:	ff852803          	lw	a6,-8(a0)
    800044d0:	02081613          	slli	a2,a6,0x20
    800044d4:	01c65613          	srli	a2,a2,0x1c
    800044d8:	00c68633          	add	a2,a3,a2
    800044dc:	02c70a63          	beq	a4,a2,80004510 <__mem_free+0x84>
    800044e0:	fee53823          	sd	a4,-16(a0)
    800044e4:	0087a503          	lw	a0,8(a5)
    800044e8:	02051613          	slli	a2,a0,0x20
    800044ec:	01c65613          	srli	a2,a2,0x1c
    800044f0:	00c78633          	add	a2,a5,a2
    800044f4:	04c68263          	beq	a3,a2,80004538 <__mem_free+0xac>
    800044f8:	00813403          	ld	s0,8(sp)
    800044fc:	00d7b023          	sd	a3,0(a5)
    80004500:	00f5b023          	sd	a5,0(a1)
    80004504:	00000513          	li	a0,0
    80004508:	01010113          	addi	sp,sp,16
    8000450c:	00008067          	ret
    80004510:	00872603          	lw	a2,8(a4)
    80004514:	00073703          	ld	a4,0(a4)
    80004518:	0106083b          	addw	a6,a2,a6
    8000451c:	ff052c23          	sw	a6,-8(a0)
    80004520:	fee53823          	sd	a4,-16(a0)
    80004524:	0087a503          	lw	a0,8(a5)
    80004528:	02051613          	slli	a2,a0,0x20
    8000452c:	01c65613          	srli	a2,a2,0x1c
    80004530:	00c78633          	add	a2,a5,a2
    80004534:	fcc692e3          	bne	a3,a2,800044f8 <__mem_free+0x6c>
    80004538:	00813403          	ld	s0,8(sp)
    8000453c:	0105053b          	addw	a0,a0,a6
    80004540:	00a7a423          	sw	a0,8(a5)
    80004544:	00e7b023          	sd	a4,0(a5)
    80004548:	00f5b023          	sd	a5,0(a1)
    8000454c:	00000513          	li	a0,0
    80004550:	01010113          	addi	sp,sp,16
    80004554:	00008067          	ret

0000000080004558 <__mem_alloc>:
    80004558:	fc010113          	addi	sp,sp,-64
    8000455c:	02813823          	sd	s0,48(sp)
    80004560:	02913423          	sd	s1,40(sp)
    80004564:	03213023          	sd	s2,32(sp)
    80004568:	01513423          	sd	s5,8(sp)
    8000456c:	02113c23          	sd	ra,56(sp)
    80004570:	01313c23          	sd	s3,24(sp)
    80004574:	01413823          	sd	s4,16(sp)
    80004578:	01613023          	sd	s6,0(sp)
    8000457c:	04010413          	addi	s0,sp,64
    80004580:	00001a97          	auipc	s5,0x1
    80004584:	618a8a93          	addi	s5,s5,1560 # 80005b98 <freep>
    80004588:	00f50913          	addi	s2,a0,15
    8000458c:	000ab683          	ld	a3,0(s5)
    80004590:	00495913          	srli	s2,s2,0x4
    80004594:	0019049b          	addiw	s1,s2,1
    80004598:	00048913          	mv	s2,s1
    8000459c:	0c068c63          	beqz	a3,80004674 <__mem_alloc+0x11c>
    800045a0:	0006b503          	ld	a0,0(a3)
    800045a4:	00852703          	lw	a4,8(a0)
    800045a8:	10977063          	bgeu	a4,s1,800046a8 <__mem_alloc+0x150>
    800045ac:	000017b7          	lui	a5,0x1
    800045b0:	0009099b          	sext.w	s3,s2
    800045b4:	0af4e863          	bltu	s1,a5,80004664 <__mem_alloc+0x10c>
    800045b8:	02099a13          	slli	s4,s3,0x20
    800045bc:	01ca5a13          	srli	s4,s4,0x1c
    800045c0:	fff00b13          	li	s6,-1
    800045c4:	0100006f          	j	800045d4 <__mem_alloc+0x7c>
    800045c8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800045cc:	00852703          	lw	a4,8(a0)
    800045d0:	04977463          	bgeu	a4,s1,80004618 <__mem_alloc+0xc0>
    800045d4:	00050793          	mv	a5,a0
    800045d8:	fea698e3          	bne	a3,a0,800045c8 <__mem_alloc+0x70>
    800045dc:	000a0513          	mv	a0,s4
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	1f0080e7          	jalr	496(ra) # 800047d0 <kvmincrease>
    800045e8:	00050793          	mv	a5,a0
    800045ec:	01050513          	addi	a0,a0,16
    800045f0:	07678e63          	beq	a5,s6,8000466c <__mem_alloc+0x114>
    800045f4:	0137a423          	sw	s3,8(a5)
    800045f8:	00000097          	auipc	ra,0x0
    800045fc:	e94080e7          	jalr	-364(ra) # 8000448c <__mem_free>
    80004600:	000ab783          	ld	a5,0(s5)
    80004604:	06078463          	beqz	a5,8000466c <__mem_alloc+0x114>
    80004608:	0007b503          	ld	a0,0(a5)
    8000460c:	00078693          	mv	a3,a5
    80004610:	00852703          	lw	a4,8(a0)
    80004614:	fc9760e3          	bltu	a4,s1,800045d4 <__mem_alloc+0x7c>
    80004618:	08e48263          	beq	s1,a4,8000469c <__mem_alloc+0x144>
    8000461c:	4127073b          	subw	a4,a4,s2
    80004620:	02071693          	slli	a3,a4,0x20
    80004624:	01c6d693          	srli	a3,a3,0x1c
    80004628:	00e52423          	sw	a4,8(a0)
    8000462c:	00d50533          	add	a0,a0,a3
    80004630:	01252423          	sw	s2,8(a0)
    80004634:	00fab023          	sd	a5,0(s5)
    80004638:	01050513          	addi	a0,a0,16
    8000463c:	03813083          	ld	ra,56(sp)
    80004640:	03013403          	ld	s0,48(sp)
    80004644:	02813483          	ld	s1,40(sp)
    80004648:	02013903          	ld	s2,32(sp)
    8000464c:	01813983          	ld	s3,24(sp)
    80004650:	01013a03          	ld	s4,16(sp)
    80004654:	00813a83          	ld	s5,8(sp)
    80004658:	00013b03          	ld	s6,0(sp)
    8000465c:	04010113          	addi	sp,sp,64
    80004660:	00008067          	ret
    80004664:	000019b7          	lui	s3,0x1
    80004668:	f51ff06f          	j	800045b8 <__mem_alloc+0x60>
    8000466c:	00000513          	li	a0,0
    80004670:	fcdff06f          	j	8000463c <__mem_alloc+0xe4>
    80004674:	00002797          	auipc	a5,0x2
    80004678:	7cc78793          	addi	a5,a5,1996 # 80006e40 <base>
    8000467c:	00078513          	mv	a0,a5
    80004680:	00fab023          	sd	a5,0(s5)
    80004684:	00f7b023          	sd	a5,0(a5)
    80004688:	00000713          	li	a4,0
    8000468c:	00002797          	auipc	a5,0x2
    80004690:	7a07ae23          	sw	zero,1980(a5) # 80006e48 <base+0x8>
    80004694:	00050693          	mv	a3,a0
    80004698:	f11ff06f          	j	800045a8 <__mem_alloc+0x50>
    8000469c:	00053703          	ld	a4,0(a0)
    800046a0:	00e7b023          	sd	a4,0(a5)
    800046a4:	f91ff06f          	j	80004634 <__mem_alloc+0xdc>
    800046a8:	00068793          	mv	a5,a3
    800046ac:	f6dff06f          	j	80004618 <__mem_alloc+0xc0>

00000000800046b0 <__putc>:
    800046b0:	fe010113          	addi	sp,sp,-32
    800046b4:	00813823          	sd	s0,16(sp)
    800046b8:	00113c23          	sd	ra,24(sp)
    800046bc:	02010413          	addi	s0,sp,32
    800046c0:	00050793          	mv	a5,a0
    800046c4:	fef40593          	addi	a1,s0,-17
    800046c8:	00100613          	li	a2,1
    800046cc:	00000513          	li	a0,0
    800046d0:	fef407a3          	sb	a5,-17(s0)
    800046d4:	fffff097          	auipc	ra,0xfffff
    800046d8:	918080e7          	jalr	-1768(ra) # 80002fec <console_write>
    800046dc:	01813083          	ld	ra,24(sp)
    800046e0:	01013403          	ld	s0,16(sp)
    800046e4:	02010113          	addi	sp,sp,32
    800046e8:	00008067          	ret

00000000800046ec <__getc>:
    800046ec:	fe010113          	addi	sp,sp,-32
    800046f0:	00813823          	sd	s0,16(sp)
    800046f4:	00113c23          	sd	ra,24(sp)
    800046f8:	02010413          	addi	s0,sp,32
    800046fc:	fe840593          	addi	a1,s0,-24
    80004700:	00100613          	li	a2,1
    80004704:	00000513          	li	a0,0
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	8c4080e7          	jalr	-1852(ra) # 80002fcc <console_read>
    80004710:	fe844503          	lbu	a0,-24(s0)
    80004714:	01813083          	ld	ra,24(sp)
    80004718:	01013403          	ld	s0,16(sp)
    8000471c:	02010113          	addi	sp,sp,32
    80004720:	00008067          	ret

0000000080004724 <console_handler>:
    80004724:	fe010113          	addi	sp,sp,-32
    80004728:	00813823          	sd	s0,16(sp)
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	00913423          	sd	s1,8(sp)
    80004734:	02010413          	addi	s0,sp,32
    80004738:	14202773          	csrr	a4,scause
    8000473c:	100027f3          	csrr	a5,sstatus
    80004740:	0027f793          	andi	a5,a5,2
    80004744:	06079e63          	bnez	a5,800047c0 <console_handler+0x9c>
    80004748:	00074c63          	bltz	a4,80004760 <console_handler+0x3c>
    8000474c:	01813083          	ld	ra,24(sp)
    80004750:	01013403          	ld	s0,16(sp)
    80004754:	00813483          	ld	s1,8(sp)
    80004758:	02010113          	addi	sp,sp,32
    8000475c:	00008067          	ret
    80004760:	0ff77713          	andi	a4,a4,255
    80004764:	00900793          	li	a5,9
    80004768:	fef712e3          	bne	a4,a5,8000474c <console_handler+0x28>
    8000476c:	ffffe097          	auipc	ra,0xffffe
    80004770:	4b8080e7          	jalr	1208(ra) # 80002c24 <plic_claim>
    80004774:	00a00793          	li	a5,10
    80004778:	00050493          	mv	s1,a0
    8000477c:	02f50c63          	beq	a0,a5,800047b4 <console_handler+0x90>
    80004780:	fc0506e3          	beqz	a0,8000474c <console_handler+0x28>
    80004784:	00050593          	mv	a1,a0
    80004788:	00001517          	auipc	a0,0x1
    8000478c:	a0050513          	addi	a0,a0,-1536 # 80005188 <_ZZ12printIntegermE6digits+0xe0>
    80004790:	fffff097          	auipc	ra,0xfffff
    80004794:	8d8080e7          	jalr	-1832(ra) # 80003068 <__printf>
    80004798:	01013403          	ld	s0,16(sp)
    8000479c:	01813083          	ld	ra,24(sp)
    800047a0:	00048513          	mv	a0,s1
    800047a4:	00813483          	ld	s1,8(sp)
    800047a8:	02010113          	addi	sp,sp,32
    800047ac:	ffffe317          	auipc	t1,0xffffe
    800047b0:	4b030067          	jr	1200(t1) # 80002c5c <plic_complete>
    800047b4:	fffff097          	auipc	ra,0xfffff
    800047b8:	1bc080e7          	jalr	444(ra) # 80003970 <uartintr>
    800047bc:	fddff06f          	j	80004798 <console_handler+0x74>
    800047c0:	00001517          	auipc	a0,0x1
    800047c4:	ac850513          	addi	a0,a0,-1336 # 80005288 <digits+0x78>
    800047c8:	fffff097          	auipc	ra,0xfffff
    800047cc:	844080e7          	jalr	-1980(ra) # 8000300c <panic>

00000000800047d0 <kvmincrease>:
    800047d0:	fe010113          	addi	sp,sp,-32
    800047d4:	01213023          	sd	s2,0(sp)
    800047d8:	00001937          	lui	s2,0x1
    800047dc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00113c23          	sd	ra,24(sp)
    800047e8:	00913423          	sd	s1,8(sp)
    800047ec:	02010413          	addi	s0,sp,32
    800047f0:	01250933          	add	s2,a0,s2
    800047f4:	00c95913          	srli	s2,s2,0xc
    800047f8:	02090863          	beqz	s2,80004828 <kvmincrease+0x58>
    800047fc:	00000493          	li	s1,0
    80004800:	00148493          	addi	s1,s1,1
    80004804:	fffff097          	auipc	ra,0xfffff
    80004808:	4bc080e7          	jalr	1212(ra) # 80003cc0 <kalloc>
    8000480c:	fe991ae3          	bne	s2,s1,80004800 <kvmincrease+0x30>
    80004810:	01813083          	ld	ra,24(sp)
    80004814:	01013403          	ld	s0,16(sp)
    80004818:	00813483          	ld	s1,8(sp)
    8000481c:	00013903          	ld	s2,0(sp)
    80004820:	02010113          	addi	sp,sp,32
    80004824:	00008067          	ret
    80004828:	01813083          	ld	ra,24(sp)
    8000482c:	01013403          	ld	s0,16(sp)
    80004830:	00813483          	ld	s1,8(sp)
    80004834:	00013903          	ld	s2,0(sp)
    80004838:	00000513          	li	a0,0
    8000483c:	02010113          	addi	sp,sp,32
    80004840:	00008067          	ret
	...
