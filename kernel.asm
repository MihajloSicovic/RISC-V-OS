
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	c7813103          	ld	sp,-904(sp) # 80005c78 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0ed020ef          	jal	ra,80002908 <start>

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
    80001084:	639000ef          	jal	ra,80001ebc <_ZN5Riscv14handleSyscallsEv>

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

00000000800012d0 <_Z13thread_createPP7_threadPFvPvES2_>:

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

000000008000134c <_Z8sem_openPP4_semj>:

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

000000008000137c <_Z9sem_closeP4_sem>:

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

00000000800013a8 <_Z8sem_waitP4_sem>:

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

00000000800013d4 <_Z10sem_signalP4_sem>:

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
}
    800013f0:	0005051b          	sext.w	a0,a0
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x31");
    8000140c:	03100513          	li	a0,49
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    80001410:	00050593          	mv	a1,a0
    __asm__ volatile ("ecall");
    80001414:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001418:	00050513          	mv	a0,a0
    return result;
}
    8000141c:	0005051b          	sext.w	a0,a0
    80001420:	00813403          	ld	s0,8(sp)
    80001424:	01010113          	addi	sp,sp,16
    80001428:	00008067          	ret

000000008000142c <_Z4getcv>:

char getc() {
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001438:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    8000143c:	00000073          	ecall

    char result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    80001440:	00050513          	mv	a0,a0
    return result;
}
    80001444:	0ff57513          	andi	a0,a0,255
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z4putcc>:

void putc(char c) {
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    80001460:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001464:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    80001468:	00000073          	ecall
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <_ZL9fibonaccim>:
#include "../h/ccb.hpp"
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"

static uint64 fibonacci(uint64 n)
{
    80001478:	fe010113          	addi	sp,sp,-32
    8000147c:	00113c23          	sd	ra,24(sp)
    80001480:	00813823          	sd	s0,16(sp)
    80001484:	00913423          	sd	s1,8(sp)
    80001488:	01213023          	sd	s2,0(sp)
    8000148c:	02010413          	addi	s0,sp,32
    80001490:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001494:	00100793          	li	a5,1
    80001498:	02a7f663          	bgeu	a5,a0,800014c4 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) CCB::yield();
    8000149c:	00357793          	andi	a5,a0,3
    800014a0:	02078e63          	beqz	a5,800014dc <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800014a4:	fff48513          	addi	a0,s1,-1
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	fd0080e7          	jalr	-48(ra) # 80001478 <_ZL9fibonaccim>
    800014b0:	00050913          	mv	s2,a0
    800014b4:	ffe48513          	addi	a0,s1,-2
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	fc0080e7          	jalr	-64(ra) # 80001478 <_ZL9fibonaccim>
    800014c0:	00a90533          	add	a0,s2,a0
}
    800014c4:	01813083          	ld	ra,24(sp)
    800014c8:	01013403          	ld	s0,16(sp)
    800014cc:	00813483          	ld	s1,8(sp)
    800014d0:	00013903          	ld	s2,0(sp)
    800014d4:	02010113          	addi	sp,sp,32
    800014d8:	00008067          	ret
    if (n % 4 == 0) CCB::yield();
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	988080e7          	jalr	-1656(ra) # 80001e64 <_ZN3CCB5yieldEv>
    800014e4:	fc1ff06f          	j	800014a4 <_ZL9fibonaccim+0x2c>

00000000800014e8 <_Z11workerBodyAv>:

void workerBodyA()
{
    800014e8:	fe010113          	addi	sp,sp,-32
    800014ec:	00113c23          	sd	ra,24(sp)
    800014f0:	00813823          	sd	s0,16(sp)
    800014f4:	00913423          	sd	s1,8(sp)
    800014f8:	01213023          	sd	s2,0(sp)
    800014fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001500:	00000493          	li	s1,0
    80001504:	0380006f          	j	8000153c <_Z11workerBodyAv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001508:	00004517          	auipc	a0,0x4
    8000150c:	b1850513          	addi	a0,a0,-1256 # 80005020 <CONSOLE_STATUS+0x10>
    80001510:	00001097          	auipc	ra,0x1
    80001514:	324080e7          	jalr	804(ra) # 80002834 <_Z11printStringPKc>
        printInteger(i);
    80001518:	00048513          	mv	a0,s1
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	35c080e7          	jalr	860(ra) # 80002878 <_Z12printIntegerm>
        printString("\n");
    80001524:	00004517          	auipc	a0,0x4
    80001528:	c9c50513          	addi	a0,a0,-868 # 800051c0 <CONSOLE_STATUS+0x1b0>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	308080e7          	jalr	776(ra) # 80002834 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001534:	0014849b          	addiw	s1,s1,1
    80001538:	0ff4f493          	andi	s1,s1,255
    8000153c:	00200793          	li	a5,2
    80001540:	fc97f4e3          	bgeu	a5,s1,80001508 <_Z11workerBodyAv+0x20>
    }

    printString("A: yield\n");
    80001544:	00004517          	auipc	a0,0x4
    80001548:	ae450513          	addi	a0,a0,-1308 # 80005028 <CONSOLE_STATUS+0x18>
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	2e8080e7          	jalr	744(ra) # 80002834 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001554:	00700313          	li	t1,7
    CCB::yield();
    80001558:	00001097          	auipc	ra,0x1
    8000155c:	90c080e7          	jalr	-1780(ra) # 80001e64 <_ZN3CCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001560:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001564:	00004517          	auipc	a0,0x4
    80001568:	ad450513          	addi	a0,a0,-1324 # 80005038 <CONSOLE_STATUS+0x28>
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	2c8080e7          	jalr	712(ra) # 80002834 <_Z11printStringPKc>
    printInteger(t1);
    80001574:	00090513          	mv	a0,s2
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	300080e7          	jalr	768(ra) # 80002878 <_Z12printIntegerm>
    printString("\n");
    80001580:	00004517          	auipc	a0,0x4
    80001584:	c4050513          	addi	a0,a0,-960 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	2ac080e7          	jalr	684(ra) # 80002834 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001590:	01400513          	li	a0,20
    80001594:	00000097          	auipc	ra,0x0
    80001598:	ee4080e7          	jalr	-284(ra) # 80001478 <_ZL9fibonaccim>
    8000159c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	aa050513          	addi	a0,a0,-1376 # 80005040 <CONSOLE_STATUS+0x30>
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	28c080e7          	jalr	652(ra) # 80002834 <_Z11printStringPKc>
    printInteger(result);
    800015b0:	00090513          	mv	a0,s2
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	2c4080e7          	jalr	708(ra) # 80002878 <_Z12printIntegerm>
    printString("\n");
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	c0450513          	addi	a0,a0,-1020 # 800051c0 <CONSOLE_STATUS+0x1b0>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	270080e7          	jalr	624(ra) # 80002834 <_Z11printStringPKc>
    800015cc:	0380006f          	j	80001604 <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800015d0:	00004517          	auipc	a0,0x4
    800015d4:	a5050513          	addi	a0,a0,-1456 # 80005020 <CONSOLE_STATUS+0x10>
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	25c080e7          	jalr	604(ra) # 80002834 <_Z11printStringPKc>
        printInteger(i);
    800015e0:	00048513          	mv	a0,s1
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	294080e7          	jalr	660(ra) # 80002878 <_Z12printIntegerm>
        printString("\n");
    800015ec:	00004517          	auipc	a0,0x4
    800015f0:	bd450513          	addi	a0,a0,-1068 # 800051c0 <CONSOLE_STATUS+0x1b0>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	240080e7          	jalr	576(ra) # 80002834 <_Z11printStringPKc>
    for (; i < 6; i++)
    800015fc:	0014849b          	addiw	s1,s1,1
    80001600:	0ff4f493          	andi	s1,s1,255
    80001604:	00500793          	li	a5,5
    80001608:	fc97f4e3          	bgeu	a5,s1,800015d0 <_Z11workerBodyAv+0xe8>
    }

    CCB::running->setFinished(true);
    8000160c:	00004797          	auipc	a5,0x4
    80001610:	6747b783          	ld	a5,1652(a5) # 80005c80 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001614:	0007b783          	ld	a5,0(a5)
public:
    ~CCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001618:	00100713          	li	a4,1
    8000161c:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80001620:	00001097          	auipc	ra,0x1
    80001624:	844080e7          	jalr	-1980(ra) # 80001e64 <_ZN3CCB5yieldEv>
}
    80001628:	01813083          	ld	ra,24(sp)
    8000162c:	01013403          	ld	s0,16(sp)
    80001630:	00813483          	ld	s1,8(sp)
    80001634:	00013903          	ld	s2,0(sp)
    80001638:	02010113          	addi	sp,sp,32
    8000163c:	00008067          	ret

0000000080001640 <_Z11workerBodyBv>:

void workerBodyB()
{
    80001640:	fe010113          	addi	sp,sp,-32
    80001644:	00113c23          	sd	ra,24(sp)
    80001648:	00813823          	sd	s0,16(sp)
    8000164c:	00913423          	sd	s1,8(sp)
    80001650:	01213023          	sd	s2,0(sp)
    80001654:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001658:	00a00493          	li	s1,10
    8000165c:	0380006f          	j	80001694 <_Z11workerBodyBv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	9f050513          	addi	a0,a0,-1552 # 80005050 <CONSOLE_STATUS+0x40>
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	1cc080e7          	jalr	460(ra) # 80002834 <_Z11printStringPKc>
        printInteger(i);
    80001670:	00048513          	mv	a0,s1
    80001674:	00001097          	auipc	ra,0x1
    80001678:	204080e7          	jalr	516(ra) # 80002878 <_Z12printIntegerm>
        printString("\n");
    8000167c:	00004517          	auipc	a0,0x4
    80001680:	b4450513          	addi	a0,a0,-1212 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80001684:	00001097          	auipc	ra,0x1
    80001688:	1b0080e7          	jalr	432(ra) # 80002834 <_Z11printStringPKc>
    for (; i < 13; i++)
    8000168c:	0014849b          	addiw	s1,s1,1
    80001690:	0ff4f493          	andi	s1,s1,255
    80001694:	00c00793          	li	a5,12
    80001698:	fc97f4e3          	bgeu	a5,s1,80001660 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	9bc50513          	addi	a0,a0,-1604 # 80005058 <CONSOLE_STATUS+0x48>
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	190080e7          	jalr	400(ra) # 80002834 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800016ac:	00500313          	li	t1,5
    CCB::yield();
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	7b4080e7          	jalr	1972(ra) # 80001e64 <_ZN3CCB5yieldEv>

    uint64 result = fibonacci(23);
    800016b8:	01700513          	li	a0,23
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	dbc080e7          	jalr	-580(ra) # 80001478 <_ZL9fibonaccim>
    800016c4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	97850513          	addi	a0,a0,-1672 # 80005040 <CONSOLE_STATUS+0x30>
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	164080e7          	jalr	356(ra) # 80002834 <_Z11printStringPKc>
    printInteger(result);
    800016d8:	00090513          	mv	a0,s2
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	19c080e7          	jalr	412(ra) # 80002878 <_Z12printIntegerm>
    printString("\n");
    800016e4:	00004517          	auipc	a0,0x4
    800016e8:	adc50513          	addi	a0,a0,-1316 # 800051c0 <CONSOLE_STATUS+0x1b0>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	148080e7          	jalr	328(ra) # 80002834 <_Z11printStringPKc>
    800016f4:	0380006f          	j	8000172c <_Z11workerBodyBv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800016f8:	00004517          	auipc	a0,0x4
    800016fc:	95850513          	addi	a0,a0,-1704 # 80005050 <CONSOLE_STATUS+0x40>
    80001700:	00001097          	auipc	ra,0x1
    80001704:	134080e7          	jalr	308(ra) # 80002834 <_Z11printStringPKc>
        printInteger(i);
    80001708:	00048513          	mv	a0,s1
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	16c080e7          	jalr	364(ra) # 80002878 <_Z12printIntegerm>
        printString("\n");
    80001714:	00004517          	auipc	a0,0x4
    80001718:	aac50513          	addi	a0,a0,-1364 # 800051c0 <CONSOLE_STATUS+0x1b0>
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	118080e7          	jalr	280(ra) # 80002834 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001724:	0014849b          	addiw	s1,s1,1
    80001728:	0ff4f493          	andi	s1,s1,255
    8000172c:	00f00793          	li	a5,15
    80001730:	fc97f4e3          	bgeu	a5,s1,800016f8 <_Z11workerBodyBv+0xb8>
    }

    CCB::running->setFinished(true);
    80001734:	00004797          	auipc	a5,0x4
    80001738:	54c7b783          	ld	a5,1356(a5) # 80005c80 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000173c:	0007b783          	ld	a5,0(a5)
    80001740:	00100713          	li	a4,1
    80001744:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	71c080e7          	jalr	1820(ra) # 80001e64 <_ZN3CCB5yieldEv>
}
    80001750:	01813083          	ld	ra,24(sp)
    80001754:	01013403          	ld	s0,16(sp)
    80001758:	00813483          	ld	s1,8(sp)
    8000175c:	00013903          	ld	s2,0(sp)
    80001760:	02010113          	addi	sp,sp,32
    80001764:	00008067          	ret

0000000080001768 <_Z11workerBodyCv>:

static int a = 0;

void workerBodyC() {
    80001768:	fe010113          	addi	sp,sp,-32
    8000176c:	00113c23          	sd	ra,24(sp)
    80001770:	00813823          	sd	s0,16(sp)
    80001774:	00913423          	sd	s1,8(sp)
    80001778:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    8000177c:	00000493          	li	s1,0
    80001780:	00900793          	li	a5,9
    80001784:	0497c263          	blt	a5,s1,800017c8 <_Z11workerBodyCv+0x60>
        a += 1000;
    80001788:	00004797          	auipc	a5,0x4
    8000178c:	56878793          	addi	a5,a5,1384 # 80005cf0 <_ZL1a>
    80001790:	0007a503          	lw	a0,0(a5)
    80001794:	3e85051b          	addiw	a0,a0,1000
    80001798:	00a7a023          	sw	a0,0(a5)
        printInteger(a);
    8000179c:	0005051b          	sext.w	a0,a0
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	0d8080e7          	jalr	216(ra) # 80002878 <_Z12printIntegerm>
        printString("\n");
    800017a8:	00004517          	auipc	a0,0x4
    800017ac:	a1850513          	addi	a0,a0,-1512 # 800051c0 <CONSOLE_STATUS+0x1b0>
    800017b0:	00001097          	auipc	ra,0x1
    800017b4:	084080e7          	jalr	132(ra) # 80002834 <_Z11printStringPKc>
        CCB::yield();
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	6ac080e7          	jalr	1708(ra) # 80001e64 <_ZN3CCB5yieldEv>
    for (int i = 0; i < 10; i++) {
    800017c0:	0014849b          	addiw	s1,s1,1
    800017c4:	fbdff06f          	j	80001780 <_Z11workerBodyCv+0x18>
    }
    CCB::running->setFinished(true);
    800017c8:	00004797          	auipc	a5,0x4
    800017cc:	4b87b783          	ld	a5,1208(a5) # 80005c80 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017d0:	0007b783          	ld	a5,0(a5)
    800017d4:	00100713          	li	a4,1
    800017d8:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	688080e7          	jalr	1672(ra) # 80001e64 <_ZN3CCB5yieldEv>
}
    800017e4:	01813083          	ld	ra,24(sp)
    800017e8:	01013403          	ld	s0,16(sp)
    800017ec:	00813483          	ld	s1,8(sp)
    800017f0:	02010113          	addi	sp,sp,32
    800017f4:	00008067          	ret

00000000800017f8 <_Z11workerBodyDv>:

void workerBodyD() {
    800017f8:	fe010113          	addi	sp,sp,-32
    800017fc:	00113c23          	sd	ra,24(sp)
    80001800:	00813823          	sd	s0,16(sp)
    80001804:	00913423          	sd	s1,8(sp)
    80001808:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    8000180c:	00000493          	li	s1,0
    80001810:	00900793          	li	a5,9
    80001814:	0497c263          	blt	a5,s1,80001858 <_Z11workerBodyDv+0x60>
        a -= 1000;
    80001818:	00004797          	auipc	a5,0x4
    8000181c:	4d878793          	addi	a5,a5,1240 # 80005cf0 <_ZL1a>
    80001820:	0007a503          	lw	a0,0(a5)
    80001824:	c185051b          	addiw	a0,a0,-1000
    80001828:	00a7a023          	sw	a0,0(a5)
        printInteger(a);
    8000182c:	0005051b          	sext.w	a0,a0
    80001830:	00001097          	auipc	ra,0x1
    80001834:	048080e7          	jalr	72(ra) # 80002878 <_Z12printIntegerm>
        printString("\n");
    80001838:	00004517          	auipc	a0,0x4
    8000183c:	98850513          	addi	a0,a0,-1656 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80001840:	00001097          	auipc	ra,0x1
    80001844:	ff4080e7          	jalr	-12(ra) # 80002834 <_Z11printStringPKc>
        CCB::yield();
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	61c080e7          	jalr	1564(ra) # 80001e64 <_ZN3CCB5yieldEv>
    for (int i = 0; i < 10; i++) {
    80001850:	0014849b          	addiw	s1,s1,1
    80001854:	fbdff06f          	j	80001810 <_Z11workerBodyDv+0x18>
    }
    CCB::running->setFinished(true);
    80001858:	00004797          	auipc	a5,0x4
    8000185c:	4287b783          	ld	a5,1064(a5) # 80005c80 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001860:	0007b783          	ld	a5,0(a5)
    80001864:	00100713          	li	a4,1
    80001868:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	5f8080e7          	jalr	1528(ra) # 80001e64 <_ZN3CCB5yieldEv>
    80001874:	01813083          	ld	ra,24(sp)
    80001878:	01013403          	ld	s0,16(sp)
    8000187c:	00813483          	ld	s1,8(sp)
    80001880:	02010113          	addi	sp,sp,32
    80001884:	00008067          	ret

0000000080001888 <_ZN9Semaphore15createSemaphoreEj>:
//

#include "../h/Semaphore.hpp"
#include "../h/ccb.hpp"

Semaphore* Semaphore::createSemaphore(unsigned int init) {
    80001888:	fe010113          	addi	sp,sp,-32
    8000188c:	00113c23          	sd	ra,24(sp)
    80001890:	00813823          	sd	s0,16(sp)
    80001894:	00913423          	sd	s1,8(sp)
    80001898:	02010413          	addi	s0,sp,32
    8000189c:	00050493          	mv	s1,a0

class MemoryAllocator {
public:

    static MemoryAllocator* Instance() {
        static MemoryAllocator memoryAllocator;
    800018a0:	00004797          	auipc	a5,0x4
    800018a4:	4587c783          	lbu	a5,1112(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800018a8:	04079263          	bnez	a5,800018ec <_ZN9Semaphore15createSemaphoreEj+0x64>
private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800018ac:	00004797          	auipc	a5,0x4
    800018b0:	3c47b783          	ld	a5,964(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    800018b4:	0007b783          	ld	a5,0(a5)
    800018b8:	00004717          	auipc	a4,0x4
    800018bc:	44870713          	addi	a4,a4,1096 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800018c0:	00f73023          	sd	a5,0(a4)
    800018c4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800018c8:	00004717          	auipc	a4,0x4
    800018cc:	3c073703          	ld	a4,960(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018d0:	00073703          	ld	a4,0(a4)
    800018d4:	40f70733          	sub	a4,a4,a5
    800018d8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800018dc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800018e0:	00100793          	li	a5,1
    800018e4:	00004717          	auipc	a4,0x4
    800018e8:	40f70a23          	sb	a5,1044(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    int close();

    unsigned int getValue() const { return val; }

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    800018ec:	02000593          	li	a1,32
    800018f0:	00004517          	auipc	a0,0x4
    800018f4:	41050513          	addi	a0,a0,1040 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	c90080e7          	jalr	-880(ra) # 80002588 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void *ptr) {
        MemoryAllocator::Instance()->mem_free(ptr);
    }

protected:
    explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    80001900:	00004717          	auipc	a4,0x4
    80001904:	35070713          	addi	a4,a4,848 # 80005c50 <_ZTV9Semaphore+0x10>
    80001908:	00e53023          	sd	a4,0(a0)
    8000190c:	00952423          	sw	s1,8(a0)
    80001910:	00050623          	sb	zero,12(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001914:	00053823          	sd	zero,16(a0)
    80001918:	00053c23          	sd	zero,24(a0)
    return new Semaphore(init);
}
    8000191c:	01813083          	ld	ra,24(sp)
    80001920:	01013403          	ld	s0,16(sp)
    80001924:	00813483          	ld	s1,8(sp)
    80001928:	02010113          	addi	sp,sp,32
    8000192c:	00008067          	ret

0000000080001930 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00813423          	sd	s0,8(sp)
    80001938:	01010413          	addi	s0,sp,16
    if (closed) return -1;
    8000193c:	00c54783          	lbu	a5,12(a0)
    80001940:	02079063          	bnez	a5,80001960 <_ZN9Semaphore4waitEv+0x30>

    if (--val < 0) {
    80001944:	00852783          	lw	a5,8(a0)
    80001948:	fff7879b          	addiw	a5,a5,-1
    8000194c:	00f52423          	sw	a5,8(a0)
        blocked.addLast(CCB::running);
        CCB::running = Scheduler::get();
        CCB::dispatch();
    }
    return 0;
    80001950:	00000513          	li	a0,0
}
    80001954:	00813403          	ld	s0,8(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret
    if (closed) return -1;
    80001960:	fff00513          	li	a0,-1
    80001964:	ff1ff06f          	j	80001954 <_ZN9Semaphore4waitEv+0x24>

0000000080001968 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (closed) return -1;
    80001968:	00c54703          	lbu	a4,12(a0)
    8000196c:	08071263          	bnez	a4,800019f0 <_ZN9Semaphore6signalEv+0x88>
    80001970:	00050793          	mv	a5,a0

    if (++val <= 0) {
    80001974:	00852703          	lw	a4,8(a0)
    80001978:	0017071b          	addiw	a4,a4,1
    8000197c:	0007069b          	sext.w	a3,a4
    80001980:	00e52423          	sw	a4,8(a0)
    80001984:	06069a63          	bnez	a3,800019f8 <_ZN9Semaphore6signalEv+0x90>
int Semaphore::signal() {
    80001988:	fe010113          	addi	sp,sp,-32
    8000198c:	00113c23          	sd	ra,24(sp)
    80001990:	00813823          	sd	s0,16(sp)
    80001994:	00913423          	sd	s1,8(sp)
    80001998:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000199c:	01053503          	ld	a0,16(a0)
    800019a0:	04050463          	beqz	a0,800019e8 <_ZN9Semaphore6signalEv+0x80>

        Elem *elem = head;
        head = head->next;
    800019a4:	00853703          	ld	a4,8(a0)
    800019a8:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    800019ac:	02070a63          	beqz	a4,800019e0 <_ZN9Semaphore6signalEv+0x78>

        T *ret = elem->data;
    800019b0:	00053483          	ld	s1,0(a0)
        delete elem;
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	288080e7          	jalr	648(ra) # 80001c3c <_ZdlPv>
        CCB* thread = blocked.removeFirst();
        Scheduler::put(thread);
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	948080e7          	jalr	-1720(ra) # 80002308 <_ZN9Scheduler3putEP3CCB>
    }
    return 0;
    800019c8:	00000513          	li	a0,0
}
    800019cc:	01813083          	ld	ra,24(sp)
    800019d0:	01013403          	ld	s0,16(sp)
    800019d4:	00813483          	ld	s1,8(sp)
    800019d8:	02010113          	addi	sp,sp,32
    800019dc:	00008067          	ret
        if (!head) { tail = 0; }
    800019e0:	0007bc23          	sd	zero,24(a5)
    800019e4:	fcdff06f          	j	800019b0 <_ZN9Semaphore6signalEv+0x48>
        if (!head) { return 0; }
    800019e8:	00050493          	mv	s1,a0
    800019ec:	fd1ff06f          	j	800019bc <_ZN9Semaphore6signalEv+0x54>
    if (closed) return -1;
    800019f0:	fff00513          	li	a0,-1
    800019f4:	00008067          	ret
    return 0;
    800019f8:	00000513          	li	a0,0
}
    800019fc:	00008067          	ret

0000000080001a00 <_ZN9Semaphore5blockEv>:
    while (!blocked.empty()) unblock();

    return 0;
}

void Semaphore::block() {
    80001a00:	fe010113          	addi	sp,sp,-32
    80001a04:	00113c23          	sd	ra,24(sp)
    80001a08:	00813823          	sd	s0,16(sp)
    80001a0c:	00913423          	sd	s1,8(sp)
    80001a10:	01213023          	sd	s2,0(sp)
    80001a14:	02010413          	addi	s0,sp,32
    80001a18:	00050493          	mv	s1,a0
    blocked.addLast(CCB::running);
    80001a1c:	00004797          	auipc	a5,0x4
    80001a20:	2647b783          	ld	a5,612(a5) # 80005c80 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001a24:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    80001a28:	01000513          	li	a0,16
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	1c0080e7          	jalr	448(ra) # 80001bec <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001a34:	01253023          	sd	s2,0(a0)
    80001a38:	00053423          	sd	zero,8(a0)
        if (tail)
    80001a3c:	0184b783          	ld	a5,24(s1)
    80001a40:	04078063          	beqz	a5,80001a80 <_ZN9Semaphore5blockEv+0x80>
            tail->next = elem;
    80001a44:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001a48:	00a4bc23          	sd	a0,24(s1)
    CCB::running = Scheduler::get();
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	854080e7          	jalr	-1964(ra) # 800022a0 <_ZN9Scheduler3getEv>
    80001a54:	00004797          	auipc	a5,0x4
    80001a58:	22c7b783          	ld	a5,556(a5) # 80005c80 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001a5c:	00a7b023          	sd	a0,0(a5)
    CCB::dispatch();
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	39c080e7          	jalr	924(ra) # 80001dfc <_ZN3CCB8dispatchEv>
}
    80001a68:	01813083          	ld	ra,24(sp)
    80001a6c:	01013403          	ld	s0,16(sp)
    80001a70:	00813483          	ld	s1,8(sp)
    80001a74:	00013903          	ld	s2,0(sp)
    80001a78:	02010113          	addi	sp,sp,32
    80001a7c:	00008067          	ret
            head = tail = elem;
    80001a80:	00a4bc23          	sd	a0,24(s1)
    80001a84:	00a4b823          	sd	a0,16(s1)
    80001a88:	fc5ff06f          	j	80001a4c <_ZN9Semaphore5blockEv+0x4c>

0000000080001a8c <_ZN9Semaphore7unblockEv>:

void Semaphore::unblock() {
    80001a8c:	fe010113          	addi	sp,sp,-32
    80001a90:	00113c23          	sd	ra,24(sp)
    80001a94:	00813823          	sd	s0,16(sp)
    80001a98:	00913423          	sd	s1,8(sp)
    80001a9c:	02010413          	addi	s0,sp,32
    80001aa0:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001aa4:	01053503          	ld	a0,16(a0)
    80001aa8:	04050263          	beqz	a0,80001aec <_ZN9Semaphore7unblockEv+0x60>
        head = head->next;
    80001aac:	00853703          	ld	a4,8(a0)
    80001ab0:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80001ab4:	02070863          	beqz	a4,80001ae4 <_ZN9Semaphore7unblockEv+0x58>
        T *ret = elem->data;
    80001ab8:	00053483          	ld	s1,0(a0)
        delete elem;
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	180080e7          	jalr	384(ra) # 80001c3c <_ZdlPv>
    CCB* thread = blocked.removeFirst();
    Scheduler::put(thread);
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	840080e7          	jalr	-1984(ra) # 80002308 <_ZN9Scheduler3putEP3CCB>
}
    80001ad0:	01813083          	ld	ra,24(sp)
    80001ad4:	01013403          	ld	s0,16(sp)
    80001ad8:	00813483          	ld	s1,8(sp)
    80001adc:	02010113          	addi	sp,sp,32
    80001ae0:	00008067          	ret
        if (!head) { tail = 0; }
    80001ae4:	0007bc23          	sd	zero,24(a5)
    80001ae8:	fd1ff06f          	j	80001ab8 <_ZN9Semaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001aec:	00050493          	mv	s1,a0
    80001af0:	fd5ff06f          	j	80001ac4 <_ZN9Semaphore7unblockEv+0x38>

0000000080001af4 <_ZN9Semaphore5closeEv>:
    if (closed) return -1;
    80001af4:	00c54783          	lbu	a5,12(a0)
    80001af8:	04079a63          	bnez	a5,80001b4c <_ZN9Semaphore5closeEv+0x58>
int Semaphore::close() {
    80001afc:	fe010113          	addi	sp,sp,-32
    80001b00:	00113c23          	sd	ra,24(sp)
    80001b04:	00813823          	sd	s0,16(sp)
    80001b08:	00913423          	sd	s1,8(sp)
    80001b0c:	02010413          	addi	s0,sp,32
    80001b10:	00050493          	mv	s1,a0
    closed = true;
    80001b14:	00100793          	li	a5,1
    80001b18:	00f50623          	sb	a5,12(a0)
    80001b1c:	0100006f          	j	80001b2c <_ZN9Semaphore5closeEv+0x38>
    while (!blocked.empty()) unblock();
    80001b20:	00048513          	mv	a0,s1
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	f68080e7          	jalr	-152(ra) # 80001a8c <_ZN9Semaphore7unblockEv>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    bool empty() { return head == nullptr; }
    80001b2c:	0104b783          	ld	a5,16(s1)
    80001b30:	fe0798e3          	bnez	a5,80001b20 <_ZN9Semaphore5closeEv+0x2c>
    return 0;
    80001b34:	00000513          	li	a0,0
}
    80001b38:	01813083          	ld	ra,24(sp)
    80001b3c:	01013403          	ld	s0,16(sp)
    80001b40:	00813483          	ld	s1,8(sp)
    80001b44:	02010113          	addi	sp,sp,32
    80001b48:	00008067          	ret
    if (closed) return -1;
    80001b4c:	fff00513          	li	a0,-1
}
    80001b50:	00008067          	ret

0000000080001b54 <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() = default;
    80001b54:	ff010113          	addi	sp,sp,-16
    80001b58:	00813423          	sd	s0,8(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    80001b60:	00813403          	ld	s0,8(sp)
    80001b64:	01010113          	addi	sp,sp,16
    80001b68:	00008067          	ret

0000000080001b6c <_ZN9SemaphoreD0Ev>:
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    80001b7c:	00050593          	mv	a1,a0
    80001b80:	00004797          	auipc	a5,0x4
    80001b84:	1787c783          	lbu	a5,376(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001b88:	04079263          	bnez	a5,80001bcc <_ZN9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001b8c:	00004797          	auipc	a5,0x4
    80001b90:	0e47b783          	ld	a5,228(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b94:	0007b783          	ld	a5,0(a5)
    80001b98:	00004717          	auipc	a4,0x4
    80001b9c:	16870713          	addi	a4,a4,360 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ba0:	00f73023          	sd	a5,0(a4)
    80001ba4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001ba8:	00004717          	auipc	a4,0x4
    80001bac:	0e073703          	ld	a4,224(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001bb0:	00073703          	ld	a4,0(a4)
    80001bb4:	40f70733          	sub	a4,a4,a5
    80001bb8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001bbc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001bc0:	00100793          	li	a5,1
    80001bc4:	00004717          	auipc	a4,0x4
    80001bc8:	12f70a23          	sb	a5,308(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001bcc:	00004517          	auipc	a0,0x4
    80001bd0:	13450513          	addi	a0,a0,308 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	b04080e7          	jalr	-1276(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
    virtual ~Semaphore() = default;
    80001bdc:	00813083          	ld	ra,8(sp)
    80001be0:	00013403          	ld	s0,0(sp)
    80001be4:	01010113          	addi	sp,sp,16
    80001be8:	00008067          	ret

0000000080001bec <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001bec:	ff010113          	addi	sp,sp,-16
    80001bf0:	00113423          	sd	ra,8(sp)
    80001bf4:	00813023          	sd	s0,0(sp)
    80001bf8:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001bfc:	00003097          	auipc	ra,0x3
    80001c00:	e9c080e7          	jalr	-356(ra) # 80004a98 <__mem_alloc>
}
    80001c04:	00813083          	ld	ra,8(sp)
    80001c08:	00013403          	ld	s0,0(sp)
    80001c0c:	01010113          	addi	sp,sp,16
    80001c10:	00008067          	ret

0000000080001c14 <_Znam>:

void *operator new[](size_t n)
{
    80001c14:	ff010113          	addi	sp,sp,-16
    80001c18:	00113423          	sd	ra,8(sp)
    80001c1c:	00813023          	sd	s0,0(sp)
    80001c20:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c24:	00003097          	auipc	ra,0x3
    80001c28:	e74080e7          	jalr	-396(ra) # 80004a98 <__mem_alloc>
}
    80001c2c:	00813083          	ld	ra,8(sp)
    80001c30:	00013403          	ld	s0,0(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret

0000000080001c3c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00113423          	sd	ra,8(sp)
    80001c44:	00813023          	sd	s0,0(sp)
    80001c48:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001c4c:	00003097          	auipc	ra,0x3
    80001c50:	d80080e7          	jalr	-640(ra) # 800049cc <__mem_free>
}
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret

0000000080001c64 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00113423          	sd	ra,8(sp)
    80001c6c:	00813023          	sd	s0,0(sp)
    80001c70:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001c74:	00003097          	auipc	ra,0x3
    80001c78:	d58080e7          	jalr	-680(ra) # 800049cc <__mem_free>
    80001c7c:	00813083          	ld	ra,8(sp)
    80001c80:	00013403          	ld	s0,0(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZN3CCB15createCoroutineEPFvvE>:
#include "../h/riscv.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body)
{
    80001c8c:	fe010113          	addi	sp,sp,-32
    80001c90:	00113c23          	sd	ra,24(sp)
    80001c94:	00813823          	sd	s0,16(sp)
    80001c98:	00913423          	sd	s1,8(sp)
    80001c9c:	01213023          	sd	s2,0(sp)
    80001ca0:	02010413          	addi	s0,sp,32
    80001ca4:	00050913          	mv	s2,a0
    80001ca8:	00004797          	auipc	a5,0x4
    80001cac:	0507c783          	lbu	a5,80(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cb0:	04079263          	bnez	a5,80001cf4 <_ZN3CCB15createCoroutineEPFvvE+0x68>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001cb4:	00004797          	auipc	a5,0x4
    80001cb8:	fbc7b783          	ld	a5,-68(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001cbc:	0007b783          	ld	a5,0(a5)
    80001cc0:	00004717          	auipc	a4,0x4
    80001cc4:	04070713          	addi	a4,a4,64 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cc8:	00f73023          	sd	a5,0(a4)
    80001ccc:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001cd0:	00004717          	auipc	a4,0x4
    80001cd4:	fb873703          	ld	a4,-72(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001cd8:	00073703          	ld	a4,0(a4)
    80001cdc:	40f70733          	sub	a4,a4,a5
    80001ce0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ce4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ce8:	00100793          	li	a5,1
    80001cec:	00004717          	auipc	a4,0x4
    80001cf0:	00f70623          	sb	a5,12(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    static void yield();

    static CCB *running;

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001cf4:	02800593          	li	a1,40
    80001cf8:	00004517          	auipc	a0,0x4
    80001cfc:	00850513          	addi	a0,a0,8 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d00:	00001097          	auipc	ra,0x1
    80001d04:	888080e7          	jalr	-1912(ra) # 80002588 <_ZN15MemoryAllocator9mem_allocEm>
    80001d08:	00050493          	mv	s1,a0
            body(body),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({body != nullptr ? (uint64) body : 0,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false)
    80001d0c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001d10:	00090a63          	beqz	s2,80001d24 <_ZN3CCB15createCoroutineEPFvvE+0x98>
    80001d14:	00002537          	lui	a0,0x2
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	efc080e7          	jalr	-260(ra) # 80001c14 <_Znam>
    80001d20:	0080006f          	j	80001d28 <_ZN3CCB15createCoroutineEPFvvE+0x9c>
    80001d24:	00000513          	li	a0,0
            finished(false)
    80001d28:	00a4b423          	sd	a0,8(s1)
            context({body != nullptr ? (uint64) body : 0,
    80001d2c:	02090a63          	beqz	s2,80001d60 <_ZN3CCB15createCoroutineEPFvvE+0xd4>
    80001d30:	00090793          	mv	a5,s2
            finished(false)
    80001d34:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001d38:	02050863          	beqz	a0,80001d68 <_ZN3CCB15createCoroutineEPFvvE+0xdc>
    80001d3c:	000027b7          	lui	a5,0x2
    80001d40:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001d44:	00f4bc23          	sd	a5,24(s1)
    80001d48:	02048023          	sb	zero,32(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001d4c:	08090a63          	beqz	s2,80001de0 <_ZN3CCB15createCoroutineEPFvvE+0x154>
    80001d50:	00048513          	mv	a0,s1
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	5b4080e7          	jalr	1460(ra) # 80002308 <_ZN9Scheduler3putEP3CCB>
    80001d5c:	0840006f          	j	80001de0 <_ZN3CCB15createCoroutineEPFvvE+0x154>
            context({body != nullptr ? (uint64) body : 0,
    80001d60:	00000793          	li	a5,0
    80001d64:	fd1ff06f          	j	80001d34 <_ZN3CCB15createCoroutineEPFvvE+0xa8>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001d68:	00000793          	li	a5,0
    80001d6c:	fd9ff06f          	j	80001d44 <_ZN3CCB15createCoroutineEPFvvE+0xb8>
    80001d70:	00050913          	mv	s2,a0
    80001d74:	00004797          	auipc	a5,0x4
    80001d78:	f847c783          	lbu	a5,-124(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d7c:	04079263          	bnez	a5,80001dc0 <_ZN3CCB15createCoroutineEPFvvE+0x134>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001d80:	00004797          	auipc	a5,0x4
    80001d84:	ef07b783          	ld	a5,-272(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d88:	0007b783          	ld	a5,0(a5)
    80001d8c:	00004717          	auipc	a4,0x4
    80001d90:	f7470713          	addi	a4,a4,-140 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d94:	00f73023          	sd	a5,0(a4)
    80001d98:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001d9c:	00004717          	auipc	a4,0x4
    80001da0:	eec73703          	ld	a4,-276(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001da4:	00073703          	ld	a4,0(a4)
    80001da8:	40f70733          	sub	a4,a4,a5
    80001dac:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001db0:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001db4:	00100793          	li	a5,1
    80001db8:	00004717          	auipc	a4,0x4
    80001dbc:	f4f70023          	sb	a5,-192(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001dc0:	00048593          	mv	a1,s1
    80001dc4:	00004517          	auipc	a0,0x4
    80001dc8:	f3c50513          	addi	a0,a0,-196 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	90c080e7          	jalr	-1780(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
    80001dd4:	00090513          	mv	a0,s2
    80001dd8:	00005097          	auipc	ra,0x5
    80001ddc:	020080e7          	jalr	32(ra) # 80006df8 <_Unwind_Resume>
    return new CCB(body);
}
    80001de0:	00048513          	mv	a0,s1
    80001de4:	01813083          	ld	ra,24(sp)
    80001de8:	01013403          	ld	s0,16(sp)
    80001dec:	00813483          	ld	s1,8(sp)
    80001df0:	00013903          	ld	s2,0(sp)
    80001df4:	02010113          	addi	sp,sp,32
    80001df8:	00008067          	ret

0000000080001dfc <_ZN3CCB8dispatchEv>:

    Riscv::popRegisters();
}

void CCB::dispatch()
{
    80001dfc:	fe010113          	addi	sp,sp,-32
    80001e00:	00113c23          	sd	ra,24(sp)
    80001e04:	00813823          	sd	s0,16(sp)
    80001e08:	00913423          	sd	s1,8(sp)
    80001e0c:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80001e10:	00004497          	auipc	s1,0x4
    80001e14:	f004b483          	ld	s1,-256(s1) # 80005d10 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80001e18:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001e1c:	02078c63          	beqz	a5,80001e54 <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	480080e7          	jalr	1152(ra) # 800022a0 <_ZN9Scheduler3getEv>
    80001e28:	00004797          	auipc	a5,0x4
    80001e2c:	eea7b423          	sd	a0,-280(a5) # 80005d10 <_ZN3CCB7runningE>

    CCB::contextSwitch(&old->context, &running->context);
    80001e30:	01050593          	addi	a1,a0,16
    80001e34:	01048513          	addi	a0,s1,16
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	3d0080e7          	jalr	976(ra) # 80001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	02010113          	addi	sp,sp,32
    80001e50:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001e54:	00048513          	mv	a0,s1
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	4b0080e7          	jalr	1200(ra) # 80002308 <_ZN9Scheduler3putEP3CCB>
    80001e60:	fc1ff06f          	j	80001e20 <_ZN3CCB8dispatchEv+0x24>

0000000080001e64 <_ZN3CCB5yieldEv>:
{
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00113423          	sd	ra,8(sp)
    80001e6c:	00813023          	sd	s0,0(sp)
    80001e70:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	29c080e7          	jalr	668(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	f80080e7          	jalr	-128(ra) # 80001dfc <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	308080e7          	jalr	776(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    80001e8c:	00813083          	ld	ra,8(sp)
    80001e90:	00013403          	ld	s0,0(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret

0000000080001e9c <_ZN5Riscv10popSppSpieEv>:
#include "../h/ccb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    80001e9c:	ff010113          	addi	sp,sp,-16
    80001ea0:	00813423          	sd	s0,8(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001ea8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001eac:	10200073          	sret
}
    80001eb0:	00813403          	ld	s0,8(sp)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret

0000000080001ebc <_ZN5Riscv14handleSyscallsEv>:

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    80001ebc:	fb010113          	addi	sp,sp,-80
    80001ec0:	04113423          	sd	ra,72(sp)
    80001ec4:	04813023          	sd	s0,64(sp)
    80001ec8:	02913c23          	sd	s1,56(sp)
    80001ecc:	05010413          	addi	s0,sp,80
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ed0:	142027f3          	csrr	a5,scause
    80001ed4:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001ed8:	fc043483          	ld	s1,-64(s0)
    uint64 scause = r_scause();
    if (scause == 8 || scause == 9)
    80001edc:	ff848713          	addi	a4,s1,-8
    80001ee0:	00100793          	li	a5,1
    80001ee4:	34e7e663          	bltu	a5,a4,80002230 <_ZN5Riscv14handleSyscallsEv+0x374>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ee8:	141027f3          	csrr	a5,sepc
    80001eec:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001ef0:	fd843783          	ld	a5,-40(s0)
    {
        uint64 volatile sepc = r_sepc() + 4;
    80001ef4:	00478793          	addi	a5,a5,4
    80001ef8:	faf43823          	sd	a5,-80(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001efc:	100027f3          	csrr	a5,sstatus
    80001f00:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001f04:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001f08:	faf43c23          	sd	a5,-72(s0)
}

inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001f0c:	00050793          	mv	a5,a0
    80001f10:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80001f14:	fc843783          	ld	a5,-56(s0)

        uint64 codeOperation = Riscv::r_a0();
        int returnValue;
        Semaphore* semHandlePtr;
        switch (codeOperation) {
    80001f18:	04200713          	li	a4,66
    80001f1c:	08f76663          	bltu	a4,a5,80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
    80001f20:	00279793          	slli	a5,a5,0x2
    80001f24:	00003717          	auipc	a4,0x3
    80001f28:	15470713          	addi	a4,a4,340 # 80005078 <CONSOLE_STATUS+0x68>
    80001f2c:	00e787b3          	add	a5,a5,a4
    80001f30:	0007a783          	lw	a5,0(a5)
    80001f34:	00e787b3          	add	a5,a5,a4
    80001f38:	00078067          	jr	a5
            case 0x01:
                // mem_alloc(size)

                size_t size;
                void* ptr;
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80001f3c:	00058593          	mv	a1,a1
    80001f40:	00004797          	auipc	a5,0x4
    80001f44:	db87c783          	lbu	a5,-584(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f48:	04079263          	bnez	a5,80001f8c <_ZN5Riscv14handleSyscallsEv+0xd0>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001f4c:	00004797          	auipc	a5,0x4
    80001f50:	d247b783          	ld	a5,-732(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001f54:	0007b783          	ld	a5,0(a5)
    80001f58:	00004717          	auipc	a4,0x4
    80001f5c:	da870713          	addi	a4,a4,-600 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f60:	00f73023          	sd	a5,0(a4)
    80001f64:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001f68:	00004717          	auipc	a4,0x4
    80001f6c:	d2073703          	ld	a4,-736(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f70:	00073703          	ld	a4,0(a4)
    80001f74:	40f70733          	sub	a4,a4,a5
    80001f78:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001f7c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001f80:	00100793          	li	a5,1
    80001f84:	00004717          	auipc	a4,0x4
    80001f88:	d6f70a23          	sb	a5,-652(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
                ptr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);
    80001f8c:	00659593          	slli	a1,a1,0x6
    80001f90:	00004517          	auipc	a0,0x4
    80001f94:	d7050513          	addi	a0,a0,-656 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f98:	00000097          	auipc	ra,0x0
    80001f9c:	5f0080e7          	jalr	1520(ra) # 80002588 <_ZN15MemoryAllocator9mem_allocEm>

                __asm__ volatile("mv t0, %0" : : "r"(ptr));
    80001fa0:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80001fa4:	04542823          	sw	t0,80(s0)

            default:
                break;
        }

        w_sstatus(sstatus);
    80001fa8:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001fac:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001fb0:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001fb4:	14179073          	csrw	sepc,a5
        // unexpected trap cause
        printString("ERROR! SCAUSE:");
        printInteger(scause);
        printString("\n");
    }
    80001fb8:	04813083          	ld	ra,72(sp)
    80001fbc:	04013403          	ld	s0,64(sp)
    80001fc0:	03813483          	ld	s1,56(sp)
    80001fc4:	05010113          	addi	sp,sp,80
    80001fc8:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (memptr));
    80001fcc:	00058593          	mv	a1,a1
    80001fd0:	00004797          	auipc	a5,0x4
    80001fd4:	d287c783          	lbu	a5,-728(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fd8:	04079263          	bnez	a5,8000201c <_ZN5Riscv14handleSyscallsEv+0x160>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001fdc:	00004797          	auipc	a5,0x4
    80001fe0:	c947b783          	ld	a5,-876(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001fe4:	0007b783          	ld	a5,0(a5)
    80001fe8:	00004717          	auipc	a4,0x4
    80001fec:	d1870713          	addi	a4,a4,-744 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001ff0:	00f73023          	sd	a5,0(a4)
    80001ff4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001ff8:	00004717          	auipc	a4,0x4
    80001ffc:	c9073703          	ld	a4,-880(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002000:	00073703          	ld	a4,0(a4)
    80002004:	40f70733          	sub	a4,a4,a5
    80002008:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000200c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002010:	00100793          	li	a5,1
    80002014:	00004717          	auipc	a4,0x4
    80002018:	cef70223          	sb	a5,-796(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
                returnValue = MemoryAllocator::Instance()->mem_free(memptr);
    8000201c:	00004517          	auipc	a0,0x4
    80002020:	ce450513          	addi	a0,a0,-796 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002024:	00000097          	auipc	ra,0x0
    80002028:	6b4080e7          	jalr	1716(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    8000202c:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002030:	04542823          	sw	t0,80(s0)
                break;
    80002034:	f75ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
    80002038:	00004797          	auipc	a5,0x4
    8000203c:	cc07c783          	lbu	a5,-832(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002040:	04079263          	bnez	a5,80002084 <_ZN5Riscv14handleSyscallsEv+0x1c8>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002044:	00004797          	auipc	a5,0x4
    80002048:	c2c7b783          	ld	a5,-980(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000204c:	0007b783          	ld	a5,0(a5)
    80002050:	00004717          	auipc	a4,0x4
    80002054:	cb070713          	addi	a4,a4,-848 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002058:	00f73023          	sd	a5,0(a4)
    8000205c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002060:	00004717          	auipc	a4,0x4
    80002064:	c2873703          	ld	a4,-984(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002068:	00073703          	ld	a4,0(a4)
    8000206c:	40f70733          	sub	a4,a4,a5
    80002070:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002074:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002078:	00100793          	li	a5,1
    8000207c:	00004717          	auipc	a4,0x4
    80002080:	c6f70e23          	sb	a5,-900(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
                returnValue = MemoryAllocator::Instance()->mem_get_free_space();
    80002084:	00004517          	auipc	a0,0x4
    80002088:	c7c50513          	addi	a0,a0,-900 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	738080e7          	jalr	1848(ra) # 800027c4 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    80002094:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002098:	04542823          	sw	t0,80(s0)
                break;
    8000209c:	f0dff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
    800020a0:	00004797          	auipc	a5,0x4
    800020a4:	c587c783          	lbu	a5,-936(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020a8:	04079263          	bnez	a5,800020ec <_ZN5Riscv14handleSyscallsEv+0x230>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800020ac:	00004797          	auipc	a5,0x4
    800020b0:	bc47b783          	ld	a5,-1084(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    800020b4:	0007b783          	ld	a5,0(a5)
    800020b8:	00004717          	auipc	a4,0x4
    800020bc:	c4870713          	addi	a4,a4,-952 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020c0:	00f73023          	sd	a5,0(a4)
    800020c4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800020c8:	00004717          	auipc	a4,0x4
    800020cc:	bc073703          	ld	a4,-1088(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020d0:	00073703          	ld	a4,0(a4)
    800020d4:	40f70733          	sub	a4,a4,a5
    800020d8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800020dc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800020e0:	00100793          	li	a5,1
    800020e4:	00004717          	auipc	a4,0x4
    800020e8:	c0f70a23          	sb	a5,-1004(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
                returnValue = MemoryAllocator::Instance()->mem_get_largest_free_block();
    800020ec:	00004517          	auipc	a0,0x4
    800020f0:	c1450513          	addi	a0,a0,-1004 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	704080e7          	jalr	1796(ra) # 800027f8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    800020fc:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002100:	04542823          	sw	t0,80(s0)
                break;
    80002104:	ea5ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                __asm__ volatile ("mv %0, a1" : "=r" (thread));
    80002108:	00058793          	mv	a5,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    8000210c:	00060713          	mv	a4,a2
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
    80002110:	00088713          	mv	a4,a7
                if(*thread != nullptr) {
    80002114:	0007b783          	ld	a5,0(a5)
    80002118:	00078863          	beqz	a5,80002128 <_ZN5Riscv14handleSyscallsEv+0x26c>
                    __asm__ volatile ("li t0, 0");
    8000211c:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002120:	04542823          	sw	t0,80(s0)
    80002124:	e85ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                    __asm__ volatile ("li t0, -1");
    80002128:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    8000212c:	04542823          	sw	t0,80(s0)
    80002130:	e79ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                CCB::running->setFinished(true);
    80002134:	00004797          	auipc	a5,0x4
    80002138:	b4c7b783          	ld	a5,-1204(a5) # 80005c80 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000213c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002140:	00100713          	li	a4,1
    80002144:	02e78023          	sb	a4,32(a5)
                CCB::dispatch();
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	cb4080e7          	jalr	-844(ra) # 80001dfc <_ZN3CCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    80002150:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002154:	04542823          	sw	t0,80(s0)
                break;
    80002158:	e51ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                CCB::dispatch();
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	ca0080e7          	jalr	-864(ra) # 80001dfc <_ZN3CCB8dispatchEv>
                break;
    80002164:	e45ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002168:	00060513          	mv	a0,a2
    8000216c:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002170:	00058493          	mv	s1,a1
                *semHandle = Semaphore::createSemaphore(init);
    80002174:	fffff097          	auipc	ra,0xfffff
    80002178:	714080e7          	jalr	1812(ra) # 80001888 <_ZN9Semaphore15createSemaphoreEj>
    8000217c:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80002180:	00050863          	beqz	a0,80002190 <_ZN5Riscv14handleSyscallsEv+0x2d4>
                    __asm__ volatile ("li t0, 0");
    80002184:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002188:	04542823          	sw	t0,80(s0)
    8000218c:	e1dff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                    __asm__ volatile ("li t0, -1");
    80002190:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002194:	04542823          	sw	t0,80(s0)
    80002198:	e11ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    8000219c:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800021a0:	00050c63          	beqz	a0,800021b8 <_ZN5Riscv14handleSyscallsEv+0x2fc>
                    returnValue = semHandlePtr->close();
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	950080e7          	jalr	-1712(ra) # 80001af4 <_ZN9Semaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800021ac:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800021b0:	04542823          	sw	t0,80(s0)
                break;
    800021b4:	df5ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                else returnValue = -2;
    800021b8:	ffe00513          	li	a0,-2
    800021bc:	ff1ff06f          	j	800021ac <_ZN5Riscv14handleSyscallsEv+0x2f0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800021c0:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800021c4:	00050c63          	beqz	a0,800021dc <_ZN5Riscv14handleSyscallsEv+0x320>
                    returnValue = semHandlePtr->wait();
    800021c8:	fffff097          	auipc	ra,0xfffff
    800021cc:	768080e7          	jalr	1896(ra) # 80001930 <_ZN9Semaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800021d0:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800021d4:	04542823          	sw	t0,80(s0)
                break;
    800021d8:	dd1ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                else returnValue = -2;
    800021dc:	ffe00513          	li	a0,-2
    800021e0:	ff1ff06f          	j	800021d0 <_ZN5Riscv14handleSyscallsEv+0x314>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800021e4:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    800021e8:	00050c63          	beqz	a0,80002200 <_ZN5Riscv14handleSyscallsEv+0x344>
                    returnValue = semHandlePtr->signal();
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	77c080e7          	jalr	1916(ra) # 80001968 <_ZN9Semaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800021f4:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800021f8:	04542823          	sw	t0,80(s0)
                break;
    800021fc:	dadff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                    returnValue = -2;
    80002200:	ffe00513          	li	a0,-2
    80002204:	ff1ff06f          	j	800021f4 <_ZN5Riscv14handleSyscallsEv+0x338>
                returnValue = __getc();
    80002208:	00003097          	auipc	ra,0x3
    8000220c:	a24080e7          	jalr	-1500(ra) # 80004c2c <__getc>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002210:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002214:	04542823          	sw	t0,80(s0)
                break;
    80002218:	d91ff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
                __asm__ volatile ("mv %0, a1" : "=r" (c));
    8000221c:	00058513          	mv	a0,a1
                __putc(c);
    80002220:	0ff57513          	andi	a0,a0,255
    80002224:	00003097          	auipc	ra,0x3
    80002228:	9cc080e7          	jalr	-1588(ra) # 80004bf0 <__putc>
                break;
    8000222c:	d7dff06f          	j	80001fa8 <_ZN5Riscv14handleSyscallsEv+0xec>
        printString("ERROR! SCAUSE:");
    80002230:	00003517          	auipc	a0,0x3
    80002234:	e3850513          	addi	a0,a0,-456 # 80005068 <CONSOLE_STATUS+0x58>
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	5fc080e7          	jalr	1532(ra) # 80002834 <_Z11printStringPKc>
        printInteger(scause);
    80002240:	00048513          	mv	a0,s1
    80002244:	00000097          	auipc	ra,0x0
    80002248:	634080e7          	jalr	1588(ra) # 80002878 <_Z12printIntegerm>
        printString("\n");
    8000224c:	00003517          	auipc	a0,0x3
    80002250:	f7450513          	addi	a0,a0,-140 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80002254:	00000097          	auipc	ra,0x0
    80002258:	5e0080e7          	jalr	1504(ra) # 80002834 <_Z11printStringPKc>
    8000225c:	d5dff06f          	j	80001fb8 <_ZN5Riscv14handleSyscallsEv+0xfc>

0000000080002260 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00813423          	sd	s0,8(sp)
    80002268:	01010413          	addi	s0,sp,16
    8000226c:	00100793          	li	a5,1
    80002270:	00f50863          	beq	a0,a5,80002280 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002274:	00813403          	ld	s0,8(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret
    80002280:	000107b7          	lui	a5,0x10
    80002284:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002288:	fef596e3          	bne	a1,a5,80002274 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    8000228c:	00004797          	auipc	a5,0x4
    80002290:	a8c78793          	addi	a5,a5,-1396 # 80005d18 <_ZN9Scheduler19readyCoroutineQueueE>
    80002294:	0007b023          	sd	zero,0(a5)
    80002298:	0007b423          	sd	zero,8(a5)
    8000229c:	fd9ff06f          	j	80002274 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800022a0 <_ZN9Scheduler3getEv>:
{
    800022a0:	fe010113          	addi	sp,sp,-32
    800022a4:	00113c23          	sd	ra,24(sp)
    800022a8:	00813823          	sd	s0,16(sp)
    800022ac:	00913423          	sd	s1,8(sp)
    800022b0:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800022b4:	00004517          	auipc	a0,0x4
    800022b8:	a6453503          	ld	a0,-1436(a0) # 80005d18 <_ZN9Scheduler19readyCoroutineQueueE>
    800022bc:	04050263          	beqz	a0,80002300 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800022c0:	00853783          	ld	a5,8(a0)
    800022c4:	00004717          	auipc	a4,0x4
    800022c8:	a4f73a23          	sd	a5,-1452(a4) # 80005d18 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800022cc:	02078463          	beqz	a5,800022f4 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800022d0:	00053483          	ld	s1,0(a0)
        delete elem;
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	968080e7          	jalr	-1688(ra) # 80001c3c <_ZdlPv>
}
    800022dc:	00048513          	mv	a0,s1
    800022e0:	01813083          	ld	ra,24(sp)
    800022e4:	01013403          	ld	s0,16(sp)
    800022e8:	00813483          	ld	s1,8(sp)
    800022ec:	02010113          	addi	sp,sp,32
    800022f0:	00008067          	ret
        if (!head) { tail = 0; }
    800022f4:	00004797          	auipc	a5,0x4
    800022f8:	a207b623          	sd	zero,-1492(a5) # 80005d20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800022fc:	fd5ff06f          	j	800022d0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002300:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002304:	fd9ff06f          	j	800022dc <_ZN9Scheduler3getEv+0x3c>

0000000080002308 <_ZN9Scheduler3putEP3CCB>:
{
    80002308:	fe010113          	addi	sp,sp,-32
    8000230c:	00113c23          	sd	ra,24(sp)
    80002310:	00813823          	sd	s0,16(sp)
    80002314:	00913423          	sd	s1,8(sp)
    80002318:	02010413          	addi	s0,sp,32
    8000231c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002320:	01000513          	li	a0,16
    80002324:	00000097          	auipc	ra,0x0
    80002328:	8c8080e7          	jalr	-1848(ra) # 80001bec <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000232c:	00953023          	sd	s1,0(a0)
    80002330:	00053423          	sd	zero,8(a0)
        if (tail)
    80002334:	00004797          	auipc	a5,0x4
    80002338:	9ec7b783          	ld	a5,-1556(a5) # 80005d20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000233c:	02078263          	beqz	a5,80002360 <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    80002340:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002344:	00004797          	auipc	a5,0x4
    80002348:	9ca7be23          	sd	a0,-1572(a5) # 80005d20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000234c:	01813083          	ld	ra,24(sp)
    80002350:	01013403          	ld	s0,16(sp)
    80002354:	00813483          	ld	s1,8(sp)
    80002358:	02010113          	addi	sp,sp,32
    8000235c:	00008067          	ret
            head = tail = elem;
    80002360:	00004797          	auipc	a5,0x4
    80002364:	9b878793          	addi	a5,a5,-1608 # 80005d18 <_ZN9Scheduler19readyCoroutineQueueE>
    80002368:	00a7b423          	sd	a0,8(a5)
    8000236c:	00a7b023          	sd	a0,0(a5)
    80002370:	fddff06f          	j	8000234c <_ZN9Scheduler3putEP3CCB+0x44>

0000000080002374 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00113423          	sd	ra,8(sp)
    8000237c:	00813023          	sd	s0,0(sp)
    80002380:	01010413          	addi	s0,sp,16
    80002384:	000105b7          	lui	a1,0x10
    80002388:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000238c:	00100513          	li	a0,1
    80002390:	00000097          	auipc	ra,0x0
    80002394:	ed0080e7          	jalr	-304(ra) # 80002260 <_Z41__static_initialization_and_destruction_0ii>
    80002398:	00813083          	ld	ra,8(sp)
    8000239c:	00013403          	ld	s0,0(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <main>:
#include "../h/Semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"

int main()
{
    800023a8:	fc010113          	addi	sp,sp,-64
    800023ac:	02113c23          	sd	ra,56(sp)
    800023b0:	02813823          	sd	s0,48(sp)
    800023b4:	02913423          	sd	s1,40(sp)
    800023b8:	03213023          	sd	s2,32(sp)
    800023bc:	04010413          	addi	s0,sp,64
    Riscv::w_stvec((uint64) &Riscv::stvecTrap);
    800023c0:	00004797          	auipc	a5,0x4
    800023c4:	8d07b783          	ld	a5,-1840(a5) # 80005c90 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800023c8:	10579073          	csrw	stvec,a5
    800023cc:	00004797          	auipc	a5,0x4
    800023d0:	92c7c783          	lbu	a5,-1748(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800023d4:	04079263          	bnez	a5,80002418 <main+0x70>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800023d8:	00004797          	auipc	a5,0x4
    800023dc:	8987b783          	ld	a5,-1896(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    800023e0:	0007b783          	ld	a5,0(a5)
    800023e4:	00004717          	auipc	a4,0x4
    800023e8:	91c70713          	addi	a4,a4,-1764 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800023ec:	00f73023          	sd	a5,0(a4)
    800023f0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800023f4:	00004717          	auipc	a4,0x4
    800023f8:	89473703          	ld	a4,-1900(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    800023fc:	00073703          	ld	a4,0(a4)
    80002400:	40f70733          	sub	a4,a4,a5
    80002404:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002408:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000240c:	00100793          	li	a5,1
    80002410:	00004717          	auipc	a4,0x4
    80002414:	8ef70423          	sb	a5,-1816(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

    MemoryAllocator* m = MemoryAllocator::Instance();
    void* res = mem_alloc(100);
    80002418:	06400513          	li	a0,100
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	e00080e7          	jalr	-512(ra) # 8000121c <_Z9mem_allocm>
    80002424:	00050493          	mv	s1,a0
    printInteger((uint64)res);
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	450080e7          	jalr	1104(ra) # 80002878 <_Z12printIntegerm>
    CCB *coroutines[3];

    m->mem_free(res);
    80002430:	00048593          	mv	a1,s1
    80002434:	00004517          	auipc	a0,0x4
    80002438:	8cc50513          	addi	a0,a0,-1844 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	29c080e7          	jalr	668(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
    coroutines[0] = CCB::createCoroutine(nullptr);
    80002444:	00000513          	li	a0,0
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	844080e7          	jalr	-1980(ra) # 80001c8c <_ZN3CCB15createCoroutineEPFvvE>
    80002450:	fca43423          	sd	a0,-56(s0)
    CCB::running = coroutines[0];
    80002454:	00004797          	auipc	a5,0x4
    80002458:	82c7b783          	ld	a5,-2004(a5) # 80005c80 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000245c:	00a7b023          	sd	a0,0(a5)

    coroutines[1] = CCB::createCoroutine(workerBodyC);
    80002460:	00004517          	auipc	a0,0x4
    80002464:	83853503          	ld	a0,-1992(a0) # 80005c98 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	824080e7          	jalr	-2012(ra) # 80001c8c <_ZN3CCB15createCoroutineEPFvvE>
    80002470:	fca43823          	sd	a0,-48(s0)
    printString("CoroutineC created\n");
    80002474:	00003517          	auipc	a0,0x3
    80002478:	d1450513          	addi	a0,a0,-748 # 80005188 <CONSOLE_STATUS+0x178>
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	3b8080e7          	jalr	952(ra) # 80002834 <_Z11printStringPKc>
    coroutines[2] = CCB::createCoroutine(workerBodyD);
    80002484:	00004517          	auipc	a0,0x4
    80002488:	81c53503          	ld	a0,-2020(a0) # 80005ca0 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000248c:	00000097          	auipc	ra,0x0
    80002490:	800080e7          	jalr	-2048(ra) # 80001c8c <_ZN3CCB15createCoroutineEPFvvE>
    80002494:	fca43c23          	sd	a0,-40(s0)
    printString("CoroutineD created\n");
    80002498:	00003517          	auipc	a0,0x3
    8000249c:	d0850513          	addi	a0,a0,-760 # 800051a0 <CONSOLE_STATUS+0x190>
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	394080e7          	jalr	916(ra) # 80002834 <_Z11printStringPKc>
    800024a8:	00c0006f          	j	800024b4 <main+0x10c>

    while (!(coroutines[1]->isFinished() &&
             coroutines[2]->isFinished()))
    {
        CCB::yield();
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	9b8080e7          	jalr	-1608(ra) # 80001e64 <_ZN3CCB5yieldEv>
    while (!(coroutines[1]->isFinished() &&
    800024b4:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    800024b8:	0207c783          	lbu	a5,32(a5)
    800024bc:	fe0788e3          	beqz	a5,800024ac <main+0x104>
             coroutines[2]->isFinished()))
    800024c0:	fd843783          	ld	a5,-40(s0)
    800024c4:	0207c783          	lbu	a5,32(a5)
    while (!(coroutines[1]->isFinished() &&
    800024c8:	fe0782e3          	beqz	a5,800024ac <main+0x104>
    800024cc:	fc840493          	addi	s1,s0,-56
    800024d0:	01c0006f          	j	800024ec <main+0x144>
        MemoryAllocator::Instance()->mem_free(ptr);
    800024d4:	00090593          	mv	a1,s2
    800024d8:	00004517          	auipc	a0,0x4
    800024dc:	82850513          	addi	a0,a0,-2008 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	1f8080e7          	jalr	504(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
    }

    for (auto &coroutine: coroutines)
    800024e8:	00848493          	addi	s1,s1,8
    800024ec:	fe040793          	addi	a5,s0,-32
    800024f0:	06f48663          	beq	s1,a5,8000255c <main+0x1b4>
    {
        delete coroutine;
    800024f4:	0004b903          	ld	s2,0(s1)
    800024f8:	fe0908e3          	beqz	s2,800024e8 <main+0x140>
    ~CCB() { delete[] stack; }
    800024fc:	00893503          	ld	a0,8(s2)
    80002500:	00050663          	beqz	a0,8000250c <main+0x164>
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	760080e7          	jalr	1888(ra) # 80001c64 <_ZdaPv>
    8000250c:	00003797          	auipc	a5,0x3
    80002510:	7ec7c783          	lbu	a5,2028(a5) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002514:	fc0790e3          	bnez	a5,800024d4 <main+0x12c>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002518:	00003797          	auipc	a5,0x3
    8000251c:	7587b783          	ld	a5,1880(a5) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002520:	0007b783          	ld	a5,0(a5)
    80002524:	00003717          	auipc	a4,0x3
    80002528:	7dc70713          	addi	a4,a4,2012 # 80005d00 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000252c:	00f73023          	sd	a5,0(a4)
    80002530:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002534:	00003717          	auipc	a4,0x3
    80002538:	75473703          	ld	a4,1876(a4) # 80005c88 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000253c:	00073703          	ld	a4,0(a4)
    80002540:	40f70733          	sub	a4,a4,a5
    80002544:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002548:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000254c:	00100793          	li	a5,1
    80002550:	00003717          	auipc	a4,0x3
    80002554:	7af70423          	sb	a5,1960(a4) # 80005cf8 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002558:	f7dff06f          	j	800024d4 <main+0x12c>
    }
    printString("Finished\n");
    8000255c:	00003517          	auipc	a0,0x3
    80002560:	c5c50513          	addi	a0,a0,-932 # 800051b8 <CONSOLE_STATUS+0x1a8>
    80002564:	00000097          	auipc	ra,0x0
    80002568:	2d0080e7          	jalr	720(ra) # 80002834 <_Z11printStringPKc>

    return 0;
    8000256c:	00000513          	li	a0,0
    80002570:	03813083          	ld	ra,56(sp)
    80002574:	03013403          	ld	s0,48(sp)
    80002578:	02813483          	ld	s1,40(sp)
    8000257c:	02013903          	ld	s2,32(sp)
    80002580:	04010113          	addi	sp,sp,64
    80002584:	00008067          	ret

0000000080002588 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813423          	sd	s0,8(sp)
    80002590:	01010413          	addi	s0,sp,16
    80002594:	00050613          	mv	a2,a0
    size += sizeof(Header);
    80002598:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    8000259c:	fc05f713          	andi	a4,a1,-64
    800025a0:	03f5f593          	andi	a1,a1,63
    800025a4:	00058463          	beqz	a1,800025ac <_ZN15MemoryAllocator9mem_allocEm+0x24>
    800025a8:	04000593          	li	a1,64
    800025ac:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    800025b0:	00063503          	ld	a0,0(a2)
    Header *cur, *prev = nullptr;
    800025b4:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    800025b8:	00050c63          	beqz	a0,800025d0 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    800025bc:	00853783          	ld	a5,8(a0)
    800025c0:	00e7f863          	bgeu	a5,a4,800025d0 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    800025c4:	00050693          	mv	a3,a0
    800025c8:	00053503          	ld	a0,0(a0)
    800025cc:	fedff06f          	j	800025b8 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    800025d0:	08050a63          	beqz	a0,80002664 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    800025d4:	00853783          	ld	a5,8(a0)
    800025d8:	04e78a63          	beq	a5,a4,8000262c <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    800025dc:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    800025e0:	06068463          	beqz	a3,80002648 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800025e4:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    800025e8:	00053683          	ld	a3,0(a0)
    800025ec:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    800025f0:	00853683          	ld	a3,8(a0)
    800025f4:	40e686b3          	sub	a3,a3,a4
    800025f8:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    800025fc:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    80002600:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    80002604:	00863683          	ld	a3,8(a2)
    80002608:	04068463          	beqz	a3,80002650 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    8000260c:	00068793          	mv	a5,a3
    80002610:	00078713          	mv	a4,a5
    80002614:	0007b783          	ld	a5,0(a5)
    80002618:	00078463          	beqz	a5,80002620 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    8000261c:	fea7eae3          	bltu	a5,a0,80002610 <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    80002620:	02070a63          	beqz	a4,80002654 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002624:	00f53023          	sd	a5,0(a0)
    80002628:	0300006f          	j	80002658 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    8000262c:	00068863          	beqz	a3,8000263c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002630:	00053783          	ld	a5,0(a0)
    80002634:	00f6b023          	sd	a5,0(a3)
    80002638:	fc5ff06f          	j	800025fc <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    8000263c:	00053783          	ld	a5,0(a0)
    80002640:	00f63023          	sd	a5,0(a2)
    80002644:	fb9ff06f          	j	800025fc <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002648:	00f63023          	sd	a5,0(a2)
    8000264c:	f9dff06f          	j	800025e8 <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002650:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    80002654:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002658:	00070c63          	beqz	a4,80002670 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    8000265c:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002660:	01050513          	addi	a0,a0,16
}
    80002664:	00813403          	ld	s0,8(sp)
    80002668:	01010113          	addi	sp,sp,16
    8000266c:	00008067          	ret
    else alloc_head = target;
    80002670:	00a63423          	sd	a0,8(a2)
    80002674:	fedff06f          	j	80002660 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002678 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002678:	ff010113          	addi	sp,sp,-16
    8000267c:	00813423          	sd	s0,8(sp)
    80002680:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    80002684:	04050263          	beqz	a0,800026c8 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002688:	00053783          	ld	a5,0(a0)
    8000268c:	04078263          	beqz	a5,800026d0 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002690:	00853703          	ld	a4,8(a0)
    80002694:	00e506b3          	add	a3,a0,a4
    80002698:	00d78a63          	beq	a5,a3,800026ac <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    8000269c:	00000513          	li	a0,0
}
    800026a0:	00813403          	ld	s0,8(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret
        cur->size += cur->next->size;
    800026ac:	0087b683          	ld	a3,8(a5)
    800026b0:	00d70733          	add	a4,a4,a3
    800026b4:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    800026b8:	0007b783          	ld	a5,0(a5)
    800026bc:	00f53023          	sd	a5,0(a0)
        return 1;
    800026c0:	00100513          	li	a0,1
    800026c4:	fddff06f          	j	800026a0 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    800026c8:	00000513          	li	a0,0
    800026cc:	fd5ff06f          	j	800026a0 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    800026d0:	00000513          	li	a0,0
    800026d4:	fcdff06f          	j	800026a0 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

00000000800026d8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    800026d8:	0c058a63          	beqz	a1,800027ac <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    800026dc:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    800026e0:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    800026e4:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    800026e8:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    800026ec:	00078a63          	beqz	a5,80002700 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    800026f0:	00a7f863          	bgeu	a5,a0,80002700 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    800026f4:	00078713          	mv	a4,a5
    800026f8:	0007b783          	ld	a5,0(a5)
    800026fc:	ff1ff06f          	j	800026ec <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002700:	0a078a63          	beqz	a5,800027b4 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002704:	0aa79c63          	bne	a5,a0,800027bc <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    80002708:	fe010113          	addi	sp,sp,-32
    8000270c:	00113c23          	sd	ra,24(sp)
    80002710:	00813823          	sd	s0,16(sp)
    80002714:	00913423          	sd	s1,8(sp)
    80002718:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    8000271c:	02070c63          	beqz	a4,80002754 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    80002720:	0007b783          	ld	a5,0(a5)
    80002724:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002728:	0006b703          	ld	a4,0(a3)
    8000272c:	02070a63          	beqz	a4,80002760 <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    80002730:	02e56c63          	bltu	a0,a4,80002768 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002734:	00070793          	mv	a5,a4
    80002738:	00078493          	mv	s1,a5
    8000273c:	0007b783          	ld	a5,0(a5)
    80002740:	00078463          	beqz	a5,80002748 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002744:	fea7eae3          	bltu	a5,a0,80002738 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002748:	02048263          	beqz	s1,8000276c <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    8000274c:	fef5b823          	sd	a5,-16(a1)
    80002750:	0200006f          	j	80002770 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    80002754:	0007b783          	ld	a5,0(a5)
    80002758:	00f6b423          	sd	a5,8(a3)
    8000275c:	fcdff06f          	j	80002728 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002760:	00070493          	mv	s1,a4
    80002764:	0080006f          	j	8000276c <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002768:	00000493          	li	s1,0
    else target->next = free_head;
    8000276c:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002770:	02048a63          	beqz	s1,800027a4 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002774:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	f00080e7          	jalr	-256(ra) # 80002678 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002780:	00048513          	mv	a0,s1
    80002784:	00000097          	auipc	ra,0x0
    80002788:	ef4080e7          	jalr	-268(ra) # 80002678 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    8000278c:	00000513          	li	a0,0
}
    80002790:	01813083          	ld	ra,24(sp)
    80002794:	01013403          	ld	s0,16(sp)
    80002798:	00813483          	ld	s1,8(sp)
    8000279c:	02010113          	addi	sp,sp,32
    800027a0:	00008067          	ret
    else free_head = target;
    800027a4:	00a6b023          	sd	a0,0(a3)
    800027a8:	fd1ff06f          	j	80002778 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    800027ac:	fff00513          	li	a0,-1
    800027b0:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    800027b4:	ffe00513          	li	a0,-2
    800027b8:	00008067          	ret
    800027bc:	ffe00513          	li	a0,-2
}
    800027c0:	00008067          	ret

00000000800027c4 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    800027c4:	ff010113          	addi	sp,sp,-16
    800027c8:	00813423          	sd	s0,8(sp)
    800027cc:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    800027d0:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    800027d4:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    800027d8:	00078a63          	beqz	a5,800027ec <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    800027dc:	0087b703          	ld	a4,8(a5)
    800027e0:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    800027e4:	0007b783          	ld	a5,0(a5)
    800027e8:	ff1ff06f          	j	800027d8 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    800027ec:	00813403          	ld	s0,8(sp)
    800027f0:	01010113          	addi	sp,sp,16
    800027f4:	00008067          	ret

00000000800027f8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    800027f8:	ff010113          	addi	sp,sp,-16
    800027fc:	00813423          	sd	s0,8(sp)
    80002800:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002804:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002808:	00000513          	li	a0,0
    8000280c:	0080006f          	j	80002814 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002810:	0007b783          	ld	a5,0(a5)
    80002814:	00078a63          	beqz	a5,80002828 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    80002818:	0087b703          	ld	a4,8(a5)
    8000281c:	fee57ae3          	bgeu	a0,a4,80002810 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    80002820:	00070513          	mv	a0,a4
    80002824:	fedff06f          	j	80002810 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    80002828:	00813403          	ld	s0,8(sp)
    8000282c:	01010113          	addi	sp,sp,16
    80002830:	00008067          	ret

0000000080002834 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002834:	fe010113          	addi	sp,sp,-32
    80002838:	00113c23          	sd	ra,24(sp)
    8000283c:	00813823          	sd	s0,16(sp)
    80002840:	00913423          	sd	s1,8(sp)
    80002844:	02010413          	addi	s0,sp,32
    80002848:	00050493          	mv	s1,a0
    while (*string != '\0')
    8000284c:	0004c503          	lbu	a0,0(s1)
    80002850:	00050a63          	beqz	a0,80002864 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80002854:	00002097          	auipc	ra,0x2
    80002858:	39c080e7          	jalr	924(ra) # 80004bf0 <__putc>
        string++;
    8000285c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002860:	fedff06f          	j	8000284c <_Z11printStringPKc+0x18>
    }
}
    80002864:	01813083          	ld	ra,24(sp)
    80002868:	01013403          	ld	s0,16(sp)
    8000286c:	00813483          	ld	s1,8(sp)
    80002870:	02010113          	addi	sp,sp,32
    80002874:	00008067          	ret

0000000080002878 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002878:	fd010113          	addi	sp,sp,-48
    8000287c:	02113423          	sd	ra,40(sp)
    80002880:	02813023          	sd	s0,32(sp)
    80002884:	00913c23          	sd	s1,24(sp)
    80002888:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    8000288c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002890:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002894:	00a00613          	li	a2,10
    80002898:	02c5773b          	remuw	a4,a0,a2
    8000289c:	02071693          	slli	a3,a4,0x20
    800028a0:	0206d693          	srli	a3,a3,0x20
    800028a4:	00003717          	auipc	a4,0x3
    800028a8:	92470713          	addi	a4,a4,-1756 # 800051c8 <_ZZ12printIntegermE6digits>
    800028ac:	00d70733          	add	a4,a4,a3
    800028b0:	00074703          	lbu	a4,0(a4)
    800028b4:	fe040693          	addi	a3,s0,-32
    800028b8:	009687b3          	add	a5,a3,s1
    800028bc:	0014849b          	addiw	s1,s1,1
    800028c0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800028c4:	0005071b          	sext.w	a4,a0
    800028c8:	02c5553b          	divuw	a0,a0,a2
    800028cc:	00900793          	li	a5,9
    800028d0:	fce7e2e3          	bltu	a5,a4,80002894 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    800028d4:	fff4849b          	addiw	s1,s1,-1
    800028d8:	0004ce63          	bltz	s1,800028f4 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    800028dc:	fe040793          	addi	a5,s0,-32
    800028e0:	009787b3          	add	a5,a5,s1
    800028e4:	ff07c503          	lbu	a0,-16(a5)
    800028e8:	00002097          	auipc	ra,0x2
    800028ec:	308080e7          	jalr	776(ra) # 80004bf0 <__putc>
    800028f0:	fe5ff06f          	j	800028d4 <_Z12printIntegerm+0x5c>
    800028f4:	02813083          	ld	ra,40(sp)
    800028f8:	02013403          	ld	s0,32(sp)
    800028fc:	01813483          	ld	s1,24(sp)
    80002900:	03010113          	addi	sp,sp,48
    80002904:	00008067          	ret

0000000080002908 <start>:
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00813423          	sd	s0,8(sp)
    80002910:	01010413          	addi	s0,sp,16
    80002914:	300027f3          	csrr	a5,mstatus
    80002918:	ffffe737          	lui	a4,0xffffe
    8000291c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff785f>
    80002920:	00e7f7b3          	and	a5,a5,a4
    80002924:	00001737          	lui	a4,0x1
    80002928:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000292c:	00e7e7b3          	or	a5,a5,a4
    80002930:	30079073          	csrw	mstatus,a5
    80002934:	00000797          	auipc	a5,0x0
    80002938:	16078793          	addi	a5,a5,352 # 80002a94 <system_main>
    8000293c:	34179073          	csrw	mepc,a5
    80002940:	00000793          	li	a5,0
    80002944:	18079073          	csrw	satp,a5
    80002948:	000107b7          	lui	a5,0x10
    8000294c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002950:	30279073          	csrw	medeleg,a5
    80002954:	30379073          	csrw	mideleg,a5
    80002958:	104027f3          	csrr	a5,sie
    8000295c:	2227e793          	ori	a5,a5,546
    80002960:	10479073          	csrw	sie,a5
    80002964:	fff00793          	li	a5,-1
    80002968:	00a7d793          	srli	a5,a5,0xa
    8000296c:	3b079073          	csrw	pmpaddr0,a5
    80002970:	00f00793          	li	a5,15
    80002974:	3a079073          	csrw	pmpcfg0,a5
    80002978:	f14027f3          	csrr	a5,mhartid
    8000297c:	0200c737          	lui	a4,0x200c
    80002980:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002984:	0007869b          	sext.w	a3,a5
    80002988:	00269713          	slli	a4,a3,0x2
    8000298c:	000f4637          	lui	a2,0xf4
    80002990:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002994:	00d70733          	add	a4,a4,a3
    80002998:	0037979b          	slliw	a5,a5,0x3
    8000299c:	020046b7          	lui	a3,0x2004
    800029a0:	00d787b3          	add	a5,a5,a3
    800029a4:	00c585b3          	add	a1,a1,a2
    800029a8:	00371693          	slli	a3,a4,0x3
    800029ac:	00003717          	auipc	a4,0x3
    800029b0:	38470713          	addi	a4,a4,900 # 80005d30 <timer_scratch>
    800029b4:	00b7b023          	sd	a1,0(a5)
    800029b8:	00d70733          	add	a4,a4,a3
    800029bc:	00f73c23          	sd	a5,24(a4)
    800029c0:	02c73023          	sd	a2,32(a4)
    800029c4:	34071073          	csrw	mscratch,a4
    800029c8:	00000797          	auipc	a5,0x0
    800029cc:	6e878793          	addi	a5,a5,1768 # 800030b0 <timervec>
    800029d0:	30579073          	csrw	mtvec,a5
    800029d4:	300027f3          	csrr	a5,mstatus
    800029d8:	0087e793          	ori	a5,a5,8
    800029dc:	30079073          	csrw	mstatus,a5
    800029e0:	304027f3          	csrr	a5,mie
    800029e4:	0807e793          	ori	a5,a5,128
    800029e8:	30479073          	csrw	mie,a5
    800029ec:	f14027f3          	csrr	a5,mhartid
    800029f0:	0007879b          	sext.w	a5,a5
    800029f4:	00078213          	mv	tp,a5
    800029f8:	30200073          	mret
    800029fc:	00813403          	ld	s0,8(sp)
    80002a00:	01010113          	addi	sp,sp,16
    80002a04:	00008067          	ret

0000000080002a08 <timerinit>:
    80002a08:	ff010113          	addi	sp,sp,-16
    80002a0c:	00813423          	sd	s0,8(sp)
    80002a10:	01010413          	addi	s0,sp,16
    80002a14:	f14027f3          	csrr	a5,mhartid
    80002a18:	0200c737          	lui	a4,0x200c
    80002a1c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002a20:	0007869b          	sext.w	a3,a5
    80002a24:	00269713          	slli	a4,a3,0x2
    80002a28:	000f4637          	lui	a2,0xf4
    80002a2c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002a30:	00d70733          	add	a4,a4,a3
    80002a34:	0037979b          	slliw	a5,a5,0x3
    80002a38:	020046b7          	lui	a3,0x2004
    80002a3c:	00d787b3          	add	a5,a5,a3
    80002a40:	00c585b3          	add	a1,a1,a2
    80002a44:	00371693          	slli	a3,a4,0x3
    80002a48:	00003717          	auipc	a4,0x3
    80002a4c:	2e870713          	addi	a4,a4,744 # 80005d30 <timer_scratch>
    80002a50:	00b7b023          	sd	a1,0(a5)
    80002a54:	00d70733          	add	a4,a4,a3
    80002a58:	00f73c23          	sd	a5,24(a4)
    80002a5c:	02c73023          	sd	a2,32(a4)
    80002a60:	34071073          	csrw	mscratch,a4
    80002a64:	00000797          	auipc	a5,0x0
    80002a68:	64c78793          	addi	a5,a5,1612 # 800030b0 <timervec>
    80002a6c:	30579073          	csrw	mtvec,a5
    80002a70:	300027f3          	csrr	a5,mstatus
    80002a74:	0087e793          	ori	a5,a5,8
    80002a78:	30079073          	csrw	mstatus,a5
    80002a7c:	304027f3          	csrr	a5,mie
    80002a80:	0807e793          	ori	a5,a5,128
    80002a84:	30479073          	csrw	mie,a5
    80002a88:	00813403          	ld	s0,8(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <system_main>:
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00813823          	sd	s0,16(sp)
    80002a9c:	00913423          	sd	s1,8(sp)
    80002aa0:	00113c23          	sd	ra,24(sp)
    80002aa4:	02010413          	addi	s0,sp,32
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	0c4080e7          	jalr	196(ra) # 80002b6c <cpuid>
    80002ab0:	00003497          	auipc	s1,0x3
    80002ab4:	21048493          	addi	s1,s1,528 # 80005cc0 <started>
    80002ab8:	02050263          	beqz	a0,80002adc <system_main+0x48>
    80002abc:	0004a783          	lw	a5,0(s1)
    80002ac0:	0007879b          	sext.w	a5,a5
    80002ac4:	fe078ce3          	beqz	a5,80002abc <system_main+0x28>
    80002ac8:	0ff0000f          	fence
    80002acc:	00002517          	auipc	a0,0x2
    80002ad0:	73c50513          	addi	a0,a0,1852 # 80005208 <_ZZ12printIntegermE6digits+0x40>
    80002ad4:	00001097          	auipc	ra,0x1
    80002ad8:	a78080e7          	jalr	-1416(ra) # 8000354c <panic>
    80002adc:	00001097          	auipc	ra,0x1
    80002ae0:	9cc080e7          	jalr	-1588(ra) # 800034a8 <consoleinit>
    80002ae4:	00001097          	auipc	ra,0x1
    80002ae8:	158080e7          	jalr	344(ra) # 80003c3c <printfinit>
    80002aec:	00002517          	auipc	a0,0x2
    80002af0:	6d450513          	addi	a0,a0,1748 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80002af4:	00001097          	auipc	ra,0x1
    80002af8:	ab4080e7          	jalr	-1356(ra) # 800035a8 <__printf>
    80002afc:	00002517          	auipc	a0,0x2
    80002b00:	6dc50513          	addi	a0,a0,1756 # 800051d8 <_ZZ12printIntegermE6digits+0x10>
    80002b04:	00001097          	auipc	ra,0x1
    80002b08:	aa4080e7          	jalr	-1372(ra) # 800035a8 <__printf>
    80002b0c:	00002517          	auipc	a0,0x2
    80002b10:	6b450513          	addi	a0,a0,1716 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80002b14:	00001097          	auipc	ra,0x1
    80002b18:	a94080e7          	jalr	-1388(ra) # 800035a8 <__printf>
    80002b1c:	00001097          	auipc	ra,0x1
    80002b20:	4ac080e7          	jalr	1196(ra) # 80003fc8 <kinit>
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	148080e7          	jalr	328(ra) # 80002c6c <trapinit>
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	16c080e7          	jalr	364(ra) # 80002c98 <trapinithart>
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	5bc080e7          	jalr	1468(ra) # 800030f0 <plicinit>
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	5dc080e7          	jalr	1500(ra) # 80003118 <plicinithart>
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	078080e7          	jalr	120(ra) # 80002bbc <userinit>
    80002b4c:	0ff0000f          	fence
    80002b50:	00100793          	li	a5,1
    80002b54:	00002517          	auipc	a0,0x2
    80002b58:	69c50513          	addi	a0,a0,1692 # 800051f0 <_ZZ12printIntegermE6digits+0x28>
    80002b5c:	00f4a023          	sw	a5,0(s1)
    80002b60:	00001097          	auipc	ra,0x1
    80002b64:	a48080e7          	jalr	-1464(ra) # 800035a8 <__printf>
    80002b68:	0000006f          	j	80002b68 <system_main+0xd4>

0000000080002b6c <cpuid>:
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00813423          	sd	s0,8(sp)
    80002b74:	01010413          	addi	s0,sp,16
    80002b78:	00020513          	mv	a0,tp
    80002b7c:	00813403          	ld	s0,8(sp)
    80002b80:	0005051b          	sext.w	a0,a0
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret

0000000080002b8c <mycpu>:
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813423          	sd	s0,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    80002b98:	00020793          	mv	a5,tp
    80002b9c:	00813403          	ld	s0,8(sp)
    80002ba0:	0007879b          	sext.w	a5,a5
    80002ba4:	00779793          	slli	a5,a5,0x7
    80002ba8:	00004517          	auipc	a0,0x4
    80002bac:	1b850513          	addi	a0,a0,440 # 80006d60 <cpus>
    80002bb0:	00f50533          	add	a0,a0,a5
    80002bb4:	01010113          	addi	sp,sp,16
    80002bb8:	00008067          	ret

0000000080002bbc <userinit>:
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00813423          	sd	s0,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	fffff317          	auipc	t1,0xfffff
    80002bd4:	7d830067          	jr	2008(t1) # 800023a8 <main>

0000000080002bd8 <either_copyout>:
    80002bd8:	ff010113          	addi	sp,sp,-16
    80002bdc:	00813023          	sd	s0,0(sp)
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	02051663          	bnez	a0,80002c14 <either_copyout+0x3c>
    80002bec:	00058513          	mv	a0,a1
    80002bf0:	00060593          	mv	a1,a2
    80002bf4:	0006861b          	sext.w	a2,a3
    80002bf8:	00002097          	auipc	ra,0x2
    80002bfc:	c5c080e7          	jalr	-932(ra) # 80004854 <__memmove>
    80002c00:	00813083          	ld	ra,8(sp)
    80002c04:	00013403          	ld	s0,0(sp)
    80002c08:	00000513          	li	a0,0
    80002c0c:	01010113          	addi	sp,sp,16
    80002c10:	00008067          	ret
    80002c14:	00002517          	auipc	a0,0x2
    80002c18:	61c50513          	addi	a0,a0,1564 # 80005230 <_ZZ12printIntegermE6digits+0x68>
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	930080e7          	jalr	-1744(ra) # 8000354c <panic>

0000000080002c24 <either_copyin>:
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00813023          	sd	s0,0(sp)
    80002c2c:	00113423          	sd	ra,8(sp)
    80002c30:	01010413          	addi	s0,sp,16
    80002c34:	02059463          	bnez	a1,80002c5c <either_copyin+0x38>
    80002c38:	00060593          	mv	a1,a2
    80002c3c:	0006861b          	sext.w	a2,a3
    80002c40:	00002097          	auipc	ra,0x2
    80002c44:	c14080e7          	jalr	-1004(ra) # 80004854 <__memmove>
    80002c48:	00813083          	ld	ra,8(sp)
    80002c4c:	00013403          	ld	s0,0(sp)
    80002c50:	00000513          	li	a0,0
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret
    80002c5c:	00002517          	auipc	a0,0x2
    80002c60:	5fc50513          	addi	a0,a0,1532 # 80005258 <_ZZ12printIntegermE6digits+0x90>
    80002c64:	00001097          	auipc	ra,0x1
    80002c68:	8e8080e7          	jalr	-1816(ra) # 8000354c <panic>

0000000080002c6c <trapinit>:
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00813423          	sd	s0,8(sp)
    80002c74:	01010413          	addi	s0,sp,16
    80002c78:	00813403          	ld	s0,8(sp)
    80002c7c:	00002597          	auipc	a1,0x2
    80002c80:	60458593          	addi	a1,a1,1540 # 80005280 <_ZZ12printIntegermE6digits+0xb8>
    80002c84:	00004517          	auipc	a0,0x4
    80002c88:	15c50513          	addi	a0,a0,348 # 80006de0 <tickslock>
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00001317          	auipc	t1,0x1
    80002c94:	5c830067          	jr	1480(t1) # 80004258 <initlock>

0000000080002c98 <trapinithart>:
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00813423          	sd	s0,8(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    80002ca4:	00000797          	auipc	a5,0x0
    80002ca8:	2fc78793          	addi	a5,a5,764 # 80002fa0 <kernelvec>
    80002cac:	10579073          	csrw	stvec,a5
    80002cb0:	00813403          	ld	s0,8(sp)
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00008067          	ret

0000000080002cbc <usertrap>:
    80002cbc:	ff010113          	addi	sp,sp,-16
    80002cc0:	00813423          	sd	s0,8(sp)
    80002cc4:	01010413          	addi	s0,sp,16
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <usertrapret>:
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00813423          	sd	s0,8(sp)
    80002cdc:	01010413          	addi	s0,sp,16
    80002ce0:	00813403          	ld	s0,8(sp)
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	00008067          	ret

0000000080002cec <kerneltrap>:
    80002cec:	fe010113          	addi	sp,sp,-32
    80002cf0:	00813823          	sd	s0,16(sp)
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00913423          	sd	s1,8(sp)
    80002cfc:	02010413          	addi	s0,sp,32
    80002d00:	142025f3          	csrr	a1,scause
    80002d04:	100027f3          	csrr	a5,sstatus
    80002d08:	0027f793          	andi	a5,a5,2
    80002d0c:	10079c63          	bnez	a5,80002e24 <kerneltrap+0x138>
    80002d10:	142027f3          	csrr	a5,scause
    80002d14:	0207ce63          	bltz	a5,80002d50 <kerneltrap+0x64>
    80002d18:	00002517          	auipc	a0,0x2
    80002d1c:	5b050513          	addi	a0,a0,1456 # 800052c8 <_ZZ12printIntegermE6digits+0x100>
    80002d20:	00001097          	auipc	ra,0x1
    80002d24:	888080e7          	jalr	-1912(ra) # 800035a8 <__printf>
    80002d28:	141025f3          	csrr	a1,sepc
    80002d2c:	14302673          	csrr	a2,stval
    80002d30:	00002517          	auipc	a0,0x2
    80002d34:	5a850513          	addi	a0,a0,1448 # 800052d8 <_ZZ12printIntegermE6digits+0x110>
    80002d38:	00001097          	auipc	ra,0x1
    80002d3c:	870080e7          	jalr	-1936(ra) # 800035a8 <__printf>
    80002d40:	00002517          	auipc	a0,0x2
    80002d44:	5b050513          	addi	a0,a0,1456 # 800052f0 <_ZZ12printIntegermE6digits+0x128>
    80002d48:	00001097          	auipc	ra,0x1
    80002d4c:	804080e7          	jalr	-2044(ra) # 8000354c <panic>
    80002d50:	0ff7f713          	andi	a4,a5,255
    80002d54:	00900693          	li	a3,9
    80002d58:	04d70063          	beq	a4,a3,80002d98 <kerneltrap+0xac>
    80002d5c:	fff00713          	li	a4,-1
    80002d60:	03f71713          	slli	a4,a4,0x3f
    80002d64:	00170713          	addi	a4,a4,1
    80002d68:	fae798e3          	bne	a5,a4,80002d18 <kerneltrap+0x2c>
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	e00080e7          	jalr	-512(ra) # 80002b6c <cpuid>
    80002d74:	06050663          	beqz	a0,80002de0 <kerneltrap+0xf4>
    80002d78:	144027f3          	csrr	a5,sip
    80002d7c:	ffd7f793          	andi	a5,a5,-3
    80002d80:	14479073          	csrw	sip,a5
    80002d84:	01813083          	ld	ra,24(sp)
    80002d88:	01013403          	ld	s0,16(sp)
    80002d8c:	00813483          	ld	s1,8(sp)
    80002d90:	02010113          	addi	sp,sp,32
    80002d94:	00008067          	ret
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	3cc080e7          	jalr	972(ra) # 80003164 <plic_claim>
    80002da0:	00a00793          	li	a5,10
    80002da4:	00050493          	mv	s1,a0
    80002da8:	06f50863          	beq	a0,a5,80002e18 <kerneltrap+0x12c>
    80002dac:	fc050ce3          	beqz	a0,80002d84 <kerneltrap+0x98>
    80002db0:	00050593          	mv	a1,a0
    80002db4:	00002517          	auipc	a0,0x2
    80002db8:	4f450513          	addi	a0,a0,1268 # 800052a8 <_ZZ12printIntegermE6digits+0xe0>
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	7ec080e7          	jalr	2028(ra) # 800035a8 <__printf>
    80002dc4:	01013403          	ld	s0,16(sp)
    80002dc8:	01813083          	ld	ra,24(sp)
    80002dcc:	00048513          	mv	a0,s1
    80002dd0:	00813483          	ld	s1,8(sp)
    80002dd4:	02010113          	addi	sp,sp,32
    80002dd8:	00000317          	auipc	t1,0x0
    80002ddc:	3c430067          	jr	964(t1) # 8000319c <plic_complete>
    80002de0:	00004517          	auipc	a0,0x4
    80002de4:	00050513          	mv	a0,a0
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	494080e7          	jalr	1172(ra) # 8000427c <acquire>
    80002df0:	00003717          	auipc	a4,0x3
    80002df4:	ed470713          	addi	a4,a4,-300 # 80005cc4 <ticks>
    80002df8:	00072783          	lw	a5,0(a4)
    80002dfc:	00004517          	auipc	a0,0x4
    80002e00:	fe450513          	addi	a0,a0,-28 # 80006de0 <tickslock>
    80002e04:	0017879b          	addiw	a5,a5,1
    80002e08:	00f72023          	sw	a5,0(a4)
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	53c080e7          	jalr	1340(ra) # 80004348 <release>
    80002e14:	f65ff06f          	j	80002d78 <kerneltrap+0x8c>
    80002e18:	00001097          	auipc	ra,0x1
    80002e1c:	098080e7          	jalr	152(ra) # 80003eb0 <uartintr>
    80002e20:	fa5ff06f          	j	80002dc4 <kerneltrap+0xd8>
    80002e24:	00002517          	auipc	a0,0x2
    80002e28:	46450513          	addi	a0,a0,1124 # 80005288 <_ZZ12printIntegermE6digits+0xc0>
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	720080e7          	jalr	1824(ra) # 8000354c <panic>

0000000080002e34 <clockintr>:
    80002e34:	fe010113          	addi	sp,sp,-32
    80002e38:	00813823          	sd	s0,16(sp)
    80002e3c:	00913423          	sd	s1,8(sp)
    80002e40:	00113c23          	sd	ra,24(sp)
    80002e44:	02010413          	addi	s0,sp,32
    80002e48:	00004497          	auipc	s1,0x4
    80002e4c:	f9848493          	addi	s1,s1,-104 # 80006de0 <tickslock>
    80002e50:	00048513          	mv	a0,s1
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	428080e7          	jalr	1064(ra) # 8000427c <acquire>
    80002e5c:	00003717          	auipc	a4,0x3
    80002e60:	e6870713          	addi	a4,a4,-408 # 80005cc4 <ticks>
    80002e64:	00072783          	lw	a5,0(a4)
    80002e68:	01013403          	ld	s0,16(sp)
    80002e6c:	01813083          	ld	ra,24(sp)
    80002e70:	00048513          	mv	a0,s1
    80002e74:	0017879b          	addiw	a5,a5,1
    80002e78:	00813483          	ld	s1,8(sp)
    80002e7c:	00f72023          	sw	a5,0(a4)
    80002e80:	02010113          	addi	sp,sp,32
    80002e84:	00001317          	auipc	t1,0x1
    80002e88:	4c430067          	jr	1220(t1) # 80004348 <release>

0000000080002e8c <devintr>:
    80002e8c:	142027f3          	csrr	a5,scause
    80002e90:	00000513          	li	a0,0
    80002e94:	0007c463          	bltz	a5,80002e9c <devintr+0x10>
    80002e98:	00008067          	ret
    80002e9c:	fe010113          	addi	sp,sp,-32
    80002ea0:	00813823          	sd	s0,16(sp)
    80002ea4:	00113c23          	sd	ra,24(sp)
    80002ea8:	00913423          	sd	s1,8(sp)
    80002eac:	02010413          	addi	s0,sp,32
    80002eb0:	0ff7f713          	andi	a4,a5,255
    80002eb4:	00900693          	li	a3,9
    80002eb8:	04d70c63          	beq	a4,a3,80002f10 <devintr+0x84>
    80002ebc:	fff00713          	li	a4,-1
    80002ec0:	03f71713          	slli	a4,a4,0x3f
    80002ec4:	00170713          	addi	a4,a4,1
    80002ec8:	00e78c63          	beq	a5,a4,80002ee0 <devintr+0x54>
    80002ecc:	01813083          	ld	ra,24(sp)
    80002ed0:	01013403          	ld	s0,16(sp)
    80002ed4:	00813483          	ld	s1,8(sp)
    80002ed8:	02010113          	addi	sp,sp,32
    80002edc:	00008067          	ret
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	c8c080e7          	jalr	-884(ra) # 80002b6c <cpuid>
    80002ee8:	06050663          	beqz	a0,80002f54 <devintr+0xc8>
    80002eec:	144027f3          	csrr	a5,sip
    80002ef0:	ffd7f793          	andi	a5,a5,-3
    80002ef4:	14479073          	csrw	sip,a5
    80002ef8:	01813083          	ld	ra,24(sp)
    80002efc:	01013403          	ld	s0,16(sp)
    80002f00:	00813483          	ld	s1,8(sp)
    80002f04:	00200513          	li	a0,2
    80002f08:	02010113          	addi	sp,sp,32
    80002f0c:	00008067          	ret
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	254080e7          	jalr	596(ra) # 80003164 <plic_claim>
    80002f18:	00a00793          	li	a5,10
    80002f1c:	00050493          	mv	s1,a0
    80002f20:	06f50663          	beq	a0,a5,80002f8c <devintr+0x100>
    80002f24:	00100513          	li	a0,1
    80002f28:	fa0482e3          	beqz	s1,80002ecc <devintr+0x40>
    80002f2c:	00048593          	mv	a1,s1
    80002f30:	00002517          	auipc	a0,0x2
    80002f34:	37850513          	addi	a0,a0,888 # 800052a8 <_ZZ12printIntegermE6digits+0xe0>
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	670080e7          	jalr	1648(ra) # 800035a8 <__printf>
    80002f40:	00048513          	mv	a0,s1
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	258080e7          	jalr	600(ra) # 8000319c <plic_complete>
    80002f4c:	00100513          	li	a0,1
    80002f50:	f7dff06f          	j	80002ecc <devintr+0x40>
    80002f54:	00004517          	auipc	a0,0x4
    80002f58:	e8c50513          	addi	a0,a0,-372 # 80006de0 <tickslock>
    80002f5c:	00001097          	auipc	ra,0x1
    80002f60:	320080e7          	jalr	800(ra) # 8000427c <acquire>
    80002f64:	00003717          	auipc	a4,0x3
    80002f68:	d6070713          	addi	a4,a4,-672 # 80005cc4 <ticks>
    80002f6c:	00072783          	lw	a5,0(a4)
    80002f70:	00004517          	auipc	a0,0x4
    80002f74:	e7050513          	addi	a0,a0,-400 # 80006de0 <tickslock>
    80002f78:	0017879b          	addiw	a5,a5,1
    80002f7c:	00f72023          	sw	a5,0(a4)
    80002f80:	00001097          	auipc	ra,0x1
    80002f84:	3c8080e7          	jalr	968(ra) # 80004348 <release>
    80002f88:	f65ff06f          	j	80002eec <devintr+0x60>
    80002f8c:	00001097          	auipc	ra,0x1
    80002f90:	f24080e7          	jalr	-220(ra) # 80003eb0 <uartintr>
    80002f94:	fadff06f          	j	80002f40 <devintr+0xb4>
	...

0000000080002fa0 <kernelvec>:
    80002fa0:	f0010113          	addi	sp,sp,-256
    80002fa4:	00113023          	sd	ra,0(sp)
    80002fa8:	00213423          	sd	sp,8(sp)
    80002fac:	00313823          	sd	gp,16(sp)
    80002fb0:	00413c23          	sd	tp,24(sp)
    80002fb4:	02513023          	sd	t0,32(sp)
    80002fb8:	02613423          	sd	t1,40(sp)
    80002fbc:	02713823          	sd	t2,48(sp)
    80002fc0:	02813c23          	sd	s0,56(sp)
    80002fc4:	04913023          	sd	s1,64(sp)
    80002fc8:	04a13423          	sd	a0,72(sp)
    80002fcc:	04b13823          	sd	a1,80(sp)
    80002fd0:	04c13c23          	sd	a2,88(sp)
    80002fd4:	06d13023          	sd	a3,96(sp)
    80002fd8:	06e13423          	sd	a4,104(sp)
    80002fdc:	06f13823          	sd	a5,112(sp)
    80002fe0:	07013c23          	sd	a6,120(sp)
    80002fe4:	09113023          	sd	a7,128(sp)
    80002fe8:	09213423          	sd	s2,136(sp)
    80002fec:	09313823          	sd	s3,144(sp)
    80002ff0:	09413c23          	sd	s4,152(sp)
    80002ff4:	0b513023          	sd	s5,160(sp)
    80002ff8:	0b613423          	sd	s6,168(sp)
    80002ffc:	0b713823          	sd	s7,176(sp)
    80003000:	0b813c23          	sd	s8,184(sp)
    80003004:	0d913023          	sd	s9,192(sp)
    80003008:	0da13423          	sd	s10,200(sp)
    8000300c:	0db13823          	sd	s11,208(sp)
    80003010:	0dc13c23          	sd	t3,216(sp)
    80003014:	0fd13023          	sd	t4,224(sp)
    80003018:	0fe13423          	sd	t5,232(sp)
    8000301c:	0ff13823          	sd	t6,240(sp)
    80003020:	ccdff0ef          	jal	ra,80002cec <kerneltrap>
    80003024:	00013083          	ld	ra,0(sp)
    80003028:	00813103          	ld	sp,8(sp)
    8000302c:	01013183          	ld	gp,16(sp)
    80003030:	02013283          	ld	t0,32(sp)
    80003034:	02813303          	ld	t1,40(sp)
    80003038:	03013383          	ld	t2,48(sp)
    8000303c:	03813403          	ld	s0,56(sp)
    80003040:	04013483          	ld	s1,64(sp)
    80003044:	04813503          	ld	a0,72(sp)
    80003048:	05013583          	ld	a1,80(sp)
    8000304c:	05813603          	ld	a2,88(sp)
    80003050:	06013683          	ld	a3,96(sp)
    80003054:	06813703          	ld	a4,104(sp)
    80003058:	07013783          	ld	a5,112(sp)
    8000305c:	07813803          	ld	a6,120(sp)
    80003060:	08013883          	ld	a7,128(sp)
    80003064:	08813903          	ld	s2,136(sp)
    80003068:	09013983          	ld	s3,144(sp)
    8000306c:	09813a03          	ld	s4,152(sp)
    80003070:	0a013a83          	ld	s5,160(sp)
    80003074:	0a813b03          	ld	s6,168(sp)
    80003078:	0b013b83          	ld	s7,176(sp)
    8000307c:	0b813c03          	ld	s8,184(sp)
    80003080:	0c013c83          	ld	s9,192(sp)
    80003084:	0c813d03          	ld	s10,200(sp)
    80003088:	0d013d83          	ld	s11,208(sp)
    8000308c:	0d813e03          	ld	t3,216(sp)
    80003090:	0e013e83          	ld	t4,224(sp)
    80003094:	0e813f03          	ld	t5,232(sp)
    80003098:	0f013f83          	ld	t6,240(sp)
    8000309c:	10010113          	addi	sp,sp,256
    800030a0:	10200073          	sret
    800030a4:	00000013          	nop
    800030a8:	00000013          	nop
    800030ac:	00000013          	nop

00000000800030b0 <timervec>:
    800030b0:	34051573          	csrrw	a0,mscratch,a0
    800030b4:	00b53023          	sd	a1,0(a0)
    800030b8:	00c53423          	sd	a2,8(a0)
    800030bc:	00d53823          	sd	a3,16(a0)
    800030c0:	01853583          	ld	a1,24(a0)
    800030c4:	02053603          	ld	a2,32(a0)
    800030c8:	0005b683          	ld	a3,0(a1)
    800030cc:	00c686b3          	add	a3,a3,a2
    800030d0:	00d5b023          	sd	a3,0(a1)
    800030d4:	00200593          	li	a1,2
    800030d8:	14459073          	csrw	sip,a1
    800030dc:	01053683          	ld	a3,16(a0)
    800030e0:	00853603          	ld	a2,8(a0)
    800030e4:	00053583          	ld	a1,0(a0)
    800030e8:	34051573          	csrrw	a0,mscratch,a0
    800030ec:	30200073          	mret

00000000800030f0 <plicinit>:
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00813423          	sd	s0,8(sp)
    800030f8:	01010413          	addi	s0,sp,16
    800030fc:	00813403          	ld	s0,8(sp)
    80003100:	0c0007b7          	lui	a5,0xc000
    80003104:	00100713          	li	a4,1
    80003108:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000310c:	00e7a223          	sw	a4,4(a5)
    80003110:	01010113          	addi	sp,sp,16
    80003114:	00008067          	ret

0000000080003118 <plicinithart>:
    80003118:	ff010113          	addi	sp,sp,-16
    8000311c:	00813023          	sd	s0,0(sp)
    80003120:	00113423          	sd	ra,8(sp)
    80003124:	01010413          	addi	s0,sp,16
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	a44080e7          	jalr	-1468(ra) # 80002b6c <cpuid>
    80003130:	0085171b          	slliw	a4,a0,0x8
    80003134:	0c0027b7          	lui	a5,0xc002
    80003138:	00e787b3          	add	a5,a5,a4
    8000313c:	40200713          	li	a4,1026
    80003140:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003144:	00813083          	ld	ra,8(sp)
    80003148:	00013403          	ld	s0,0(sp)
    8000314c:	00d5151b          	slliw	a0,a0,0xd
    80003150:	0c2017b7          	lui	a5,0xc201
    80003154:	00a78533          	add	a0,a5,a0
    80003158:	00052023          	sw	zero,0(a0)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret

0000000080003164 <plic_claim>:
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00813023          	sd	s0,0(sp)
    8000316c:	00113423          	sd	ra,8(sp)
    80003170:	01010413          	addi	s0,sp,16
    80003174:	00000097          	auipc	ra,0x0
    80003178:	9f8080e7          	jalr	-1544(ra) # 80002b6c <cpuid>
    8000317c:	00813083          	ld	ra,8(sp)
    80003180:	00013403          	ld	s0,0(sp)
    80003184:	00d5151b          	slliw	a0,a0,0xd
    80003188:	0c2017b7          	lui	a5,0xc201
    8000318c:	00a78533          	add	a0,a5,a0
    80003190:	00452503          	lw	a0,4(a0)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <plic_complete>:
    8000319c:	fe010113          	addi	sp,sp,-32
    800031a0:	00813823          	sd	s0,16(sp)
    800031a4:	00913423          	sd	s1,8(sp)
    800031a8:	00113c23          	sd	ra,24(sp)
    800031ac:	02010413          	addi	s0,sp,32
    800031b0:	00050493          	mv	s1,a0
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	9b8080e7          	jalr	-1608(ra) # 80002b6c <cpuid>
    800031bc:	01813083          	ld	ra,24(sp)
    800031c0:	01013403          	ld	s0,16(sp)
    800031c4:	00d5179b          	slliw	a5,a0,0xd
    800031c8:	0c201737          	lui	a4,0xc201
    800031cc:	00f707b3          	add	a5,a4,a5
    800031d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800031d4:	00813483          	ld	s1,8(sp)
    800031d8:	02010113          	addi	sp,sp,32
    800031dc:	00008067          	ret

00000000800031e0 <consolewrite>:
    800031e0:	fb010113          	addi	sp,sp,-80
    800031e4:	04813023          	sd	s0,64(sp)
    800031e8:	04113423          	sd	ra,72(sp)
    800031ec:	02913c23          	sd	s1,56(sp)
    800031f0:	03213823          	sd	s2,48(sp)
    800031f4:	03313423          	sd	s3,40(sp)
    800031f8:	03413023          	sd	s4,32(sp)
    800031fc:	01513c23          	sd	s5,24(sp)
    80003200:	05010413          	addi	s0,sp,80
    80003204:	06c05c63          	blez	a2,8000327c <consolewrite+0x9c>
    80003208:	00060993          	mv	s3,a2
    8000320c:	00050a13          	mv	s4,a0
    80003210:	00058493          	mv	s1,a1
    80003214:	00000913          	li	s2,0
    80003218:	fff00a93          	li	s5,-1
    8000321c:	01c0006f          	j	80003238 <consolewrite+0x58>
    80003220:	fbf44503          	lbu	a0,-65(s0)
    80003224:	0019091b          	addiw	s2,s2,1
    80003228:	00148493          	addi	s1,s1,1
    8000322c:	00001097          	auipc	ra,0x1
    80003230:	a9c080e7          	jalr	-1380(ra) # 80003cc8 <uartputc>
    80003234:	03298063          	beq	s3,s2,80003254 <consolewrite+0x74>
    80003238:	00048613          	mv	a2,s1
    8000323c:	00100693          	li	a3,1
    80003240:	000a0593          	mv	a1,s4
    80003244:	fbf40513          	addi	a0,s0,-65
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	9dc080e7          	jalr	-1572(ra) # 80002c24 <either_copyin>
    80003250:	fd5518e3          	bne	a0,s5,80003220 <consolewrite+0x40>
    80003254:	04813083          	ld	ra,72(sp)
    80003258:	04013403          	ld	s0,64(sp)
    8000325c:	03813483          	ld	s1,56(sp)
    80003260:	02813983          	ld	s3,40(sp)
    80003264:	02013a03          	ld	s4,32(sp)
    80003268:	01813a83          	ld	s5,24(sp)
    8000326c:	00090513          	mv	a0,s2
    80003270:	03013903          	ld	s2,48(sp)
    80003274:	05010113          	addi	sp,sp,80
    80003278:	00008067          	ret
    8000327c:	00000913          	li	s2,0
    80003280:	fd5ff06f          	j	80003254 <consolewrite+0x74>

0000000080003284 <consoleread>:
    80003284:	f9010113          	addi	sp,sp,-112
    80003288:	06813023          	sd	s0,96(sp)
    8000328c:	04913c23          	sd	s1,88(sp)
    80003290:	05213823          	sd	s2,80(sp)
    80003294:	05313423          	sd	s3,72(sp)
    80003298:	05413023          	sd	s4,64(sp)
    8000329c:	03513c23          	sd	s5,56(sp)
    800032a0:	03613823          	sd	s6,48(sp)
    800032a4:	03713423          	sd	s7,40(sp)
    800032a8:	03813023          	sd	s8,32(sp)
    800032ac:	06113423          	sd	ra,104(sp)
    800032b0:	01913c23          	sd	s9,24(sp)
    800032b4:	07010413          	addi	s0,sp,112
    800032b8:	00060b93          	mv	s7,a2
    800032bc:	00050913          	mv	s2,a0
    800032c0:	00058c13          	mv	s8,a1
    800032c4:	00060b1b          	sext.w	s6,a2
    800032c8:	00004497          	auipc	s1,0x4
    800032cc:	b4048493          	addi	s1,s1,-1216 # 80006e08 <cons>
    800032d0:	00400993          	li	s3,4
    800032d4:	fff00a13          	li	s4,-1
    800032d8:	00a00a93          	li	s5,10
    800032dc:	05705e63          	blez	s7,80003338 <consoleread+0xb4>
    800032e0:	09c4a703          	lw	a4,156(s1)
    800032e4:	0984a783          	lw	a5,152(s1)
    800032e8:	0007071b          	sext.w	a4,a4
    800032ec:	08e78463          	beq	a5,a4,80003374 <consoleread+0xf0>
    800032f0:	07f7f713          	andi	a4,a5,127
    800032f4:	00e48733          	add	a4,s1,a4
    800032f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800032fc:	0017869b          	addiw	a3,a5,1
    80003300:	08d4ac23          	sw	a3,152(s1)
    80003304:	00070c9b          	sext.w	s9,a4
    80003308:	0b370663          	beq	a4,s3,800033b4 <consoleread+0x130>
    8000330c:	00100693          	li	a3,1
    80003310:	f9f40613          	addi	a2,s0,-97
    80003314:	000c0593          	mv	a1,s8
    80003318:	00090513          	mv	a0,s2
    8000331c:	f8e40fa3          	sb	a4,-97(s0)
    80003320:	00000097          	auipc	ra,0x0
    80003324:	8b8080e7          	jalr	-1864(ra) # 80002bd8 <either_copyout>
    80003328:	01450863          	beq	a0,s4,80003338 <consoleread+0xb4>
    8000332c:	001c0c13          	addi	s8,s8,1
    80003330:	fffb8b9b          	addiw	s7,s7,-1
    80003334:	fb5c94e3          	bne	s9,s5,800032dc <consoleread+0x58>
    80003338:	000b851b          	sext.w	a0,s7
    8000333c:	06813083          	ld	ra,104(sp)
    80003340:	06013403          	ld	s0,96(sp)
    80003344:	05813483          	ld	s1,88(sp)
    80003348:	05013903          	ld	s2,80(sp)
    8000334c:	04813983          	ld	s3,72(sp)
    80003350:	04013a03          	ld	s4,64(sp)
    80003354:	03813a83          	ld	s5,56(sp)
    80003358:	02813b83          	ld	s7,40(sp)
    8000335c:	02013c03          	ld	s8,32(sp)
    80003360:	01813c83          	ld	s9,24(sp)
    80003364:	40ab053b          	subw	a0,s6,a0
    80003368:	03013b03          	ld	s6,48(sp)
    8000336c:	07010113          	addi	sp,sp,112
    80003370:	00008067          	ret
    80003374:	00001097          	auipc	ra,0x1
    80003378:	1d8080e7          	jalr	472(ra) # 8000454c <push_on>
    8000337c:	0984a703          	lw	a4,152(s1)
    80003380:	09c4a783          	lw	a5,156(s1)
    80003384:	0007879b          	sext.w	a5,a5
    80003388:	fef70ce3          	beq	a4,a5,80003380 <consoleread+0xfc>
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	234080e7          	jalr	564(ra) # 800045c0 <pop_on>
    80003394:	0984a783          	lw	a5,152(s1)
    80003398:	07f7f713          	andi	a4,a5,127
    8000339c:	00e48733          	add	a4,s1,a4
    800033a0:	01874703          	lbu	a4,24(a4)
    800033a4:	0017869b          	addiw	a3,a5,1
    800033a8:	08d4ac23          	sw	a3,152(s1)
    800033ac:	00070c9b          	sext.w	s9,a4
    800033b0:	f5371ee3          	bne	a4,s3,8000330c <consoleread+0x88>
    800033b4:	000b851b          	sext.w	a0,s7
    800033b8:	f96bf2e3          	bgeu	s7,s6,8000333c <consoleread+0xb8>
    800033bc:	08f4ac23          	sw	a5,152(s1)
    800033c0:	f7dff06f          	j	8000333c <consoleread+0xb8>

00000000800033c4 <consputc>:
    800033c4:	10000793          	li	a5,256
    800033c8:	00f50663          	beq	a0,a5,800033d4 <consputc+0x10>
    800033cc:	00001317          	auipc	t1,0x1
    800033d0:	9f430067          	jr	-1548(t1) # 80003dc0 <uartputc_sync>
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00113423          	sd	ra,8(sp)
    800033dc:	00813023          	sd	s0,0(sp)
    800033e0:	01010413          	addi	s0,sp,16
    800033e4:	00800513          	li	a0,8
    800033e8:	00001097          	auipc	ra,0x1
    800033ec:	9d8080e7          	jalr	-1576(ra) # 80003dc0 <uartputc_sync>
    800033f0:	02000513          	li	a0,32
    800033f4:	00001097          	auipc	ra,0x1
    800033f8:	9cc080e7          	jalr	-1588(ra) # 80003dc0 <uartputc_sync>
    800033fc:	00013403          	ld	s0,0(sp)
    80003400:	00813083          	ld	ra,8(sp)
    80003404:	00800513          	li	a0,8
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00001317          	auipc	t1,0x1
    80003410:	9b430067          	jr	-1612(t1) # 80003dc0 <uartputc_sync>

0000000080003414 <consoleintr>:
    80003414:	fe010113          	addi	sp,sp,-32
    80003418:	00813823          	sd	s0,16(sp)
    8000341c:	00913423          	sd	s1,8(sp)
    80003420:	01213023          	sd	s2,0(sp)
    80003424:	00113c23          	sd	ra,24(sp)
    80003428:	02010413          	addi	s0,sp,32
    8000342c:	00004917          	auipc	s2,0x4
    80003430:	9dc90913          	addi	s2,s2,-1572 # 80006e08 <cons>
    80003434:	00050493          	mv	s1,a0
    80003438:	00090513          	mv	a0,s2
    8000343c:	00001097          	auipc	ra,0x1
    80003440:	e40080e7          	jalr	-448(ra) # 8000427c <acquire>
    80003444:	02048c63          	beqz	s1,8000347c <consoleintr+0x68>
    80003448:	0a092783          	lw	a5,160(s2)
    8000344c:	09892703          	lw	a4,152(s2)
    80003450:	07f00693          	li	a3,127
    80003454:	40e7873b          	subw	a4,a5,a4
    80003458:	02e6e263          	bltu	a3,a4,8000347c <consoleintr+0x68>
    8000345c:	00d00713          	li	a4,13
    80003460:	04e48063          	beq	s1,a4,800034a0 <consoleintr+0x8c>
    80003464:	07f7f713          	andi	a4,a5,127
    80003468:	00e90733          	add	a4,s2,a4
    8000346c:	0017879b          	addiw	a5,a5,1
    80003470:	0af92023          	sw	a5,160(s2)
    80003474:	00970c23          	sb	s1,24(a4)
    80003478:	08f92e23          	sw	a5,156(s2)
    8000347c:	01013403          	ld	s0,16(sp)
    80003480:	01813083          	ld	ra,24(sp)
    80003484:	00813483          	ld	s1,8(sp)
    80003488:	00013903          	ld	s2,0(sp)
    8000348c:	00004517          	auipc	a0,0x4
    80003490:	97c50513          	addi	a0,a0,-1668 # 80006e08 <cons>
    80003494:	02010113          	addi	sp,sp,32
    80003498:	00001317          	auipc	t1,0x1
    8000349c:	eb030067          	jr	-336(t1) # 80004348 <release>
    800034a0:	00a00493          	li	s1,10
    800034a4:	fc1ff06f          	j	80003464 <consoleintr+0x50>

00000000800034a8 <consoleinit>:
    800034a8:	fe010113          	addi	sp,sp,-32
    800034ac:	00113c23          	sd	ra,24(sp)
    800034b0:	00813823          	sd	s0,16(sp)
    800034b4:	00913423          	sd	s1,8(sp)
    800034b8:	02010413          	addi	s0,sp,32
    800034bc:	00004497          	auipc	s1,0x4
    800034c0:	94c48493          	addi	s1,s1,-1716 # 80006e08 <cons>
    800034c4:	00048513          	mv	a0,s1
    800034c8:	00002597          	auipc	a1,0x2
    800034cc:	e3858593          	addi	a1,a1,-456 # 80005300 <_ZZ12printIntegermE6digits+0x138>
    800034d0:	00001097          	auipc	ra,0x1
    800034d4:	d88080e7          	jalr	-632(ra) # 80004258 <initlock>
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	7ac080e7          	jalr	1964(ra) # 80003c84 <uartinit>
    800034e0:	01813083          	ld	ra,24(sp)
    800034e4:	01013403          	ld	s0,16(sp)
    800034e8:	00000797          	auipc	a5,0x0
    800034ec:	d9c78793          	addi	a5,a5,-612 # 80003284 <consoleread>
    800034f0:	0af4bc23          	sd	a5,184(s1)
    800034f4:	00000797          	auipc	a5,0x0
    800034f8:	cec78793          	addi	a5,a5,-788 # 800031e0 <consolewrite>
    800034fc:	0cf4b023          	sd	a5,192(s1)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	02010113          	addi	sp,sp,32
    80003508:	00008067          	ret

000000008000350c <console_read>:
    8000350c:	ff010113          	addi	sp,sp,-16
    80003510:	00813423          	sd	s0,8(sp)
    80003514:	01010413          	addi	s0,sp,16
    80003518:	00813403          	ld	s0,8(sp)
    8000351c:	00004317          	auipc	t1,0x4
    80003520:	9a433303          	ld	t1,-1628(t1) # 80006ec0 <devsw+0x10>
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00030067          	jr	t1

000000008000352c <console_write>:
    8000352c:	ff010113          	addi	sp,sp,-16
    80003530:	00813423          	sd	s0,8(sp)
    80003534:	01010413          	addi	s0,sp,16
    80003538:	00813403          	ld	s0,8(sp)
    8000353c:	00004317          	auipc	t1,0x4
    80003540:	98c33303          	ld	t1,-1652(t1) # 80006ec8 <devsw+0x18>
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00030067          	jr	t1

000000008000354c <panic>:
    8000354c:	fe010113          	addi	sp,sp,-32
    80003550:	00113c23          	sd	ra,24(sp)
    80003554:	00813823          	sd	s0,16(sp)
    80003558:	00913423          	sd	s1,8(sp)
    8000355c:	02010413          	addi	s0,sp,32
    80003560:	00050493          	mv	s1,a0
    80003564:	00002517          	auipc	a0,0x2
    80003568:	da450513          	addi	a0,a0,-604 # 80005308 <_ZZ12printIntegermE6digits+0x140>
    8000356c:	00004797          	auipc	a5,0x4
    80003570:	9e07ae23          	sw	zero,-1540(a5) # 80006f68 <pr+0x18>
    80003574:	00000097          	auipc	ra,0x0
    80003578:	034080e7          	jalr	52(ra) # 800035a8 <__printf>
    8000357c:	00048513          	mv	a0,s1
    80003580:	00000097          	auipc	ra,0x0
    80003584:	028080e7          	jalr	40(ra) # 800035a8 <__printf>
    80003588:	00002517          	auipc	a0,0x2
    8000358c:	c3850513          	addi	a0,a0,-968 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80003590:	00000097          	auipc	ra,0x0
    80003594:	018080e7          	jalr	24(ra) # 800035a8 <__printf>
    80003598:	00100793          	li	a5,1
    8000359c:	00002717          	auipc	a4,0x2
    800035a0:	72f72623          	sw	a5,1836(a4) # 80005cc8 <panicked>
    800035a4:	0000006f          	j	800035a4 <panic+0x58>

00000000800035a8 <__printf>:
    800035a8:	f3010113          	addi	sp,sp,-208
    800035ac:	08813023          	sd	s0,128(sp)
    800035b0:	07313423          	sd	s3,104(sp)
    800035b4:	09010413          	addi	s0,sp,144
    800035b8:	05813023          	sd	s8,64(sp)
    800035bc:	08113423          	sd	ra,136(sp)
    800035c0:	06913c23          	sd	s1,120(sp)
    800035c4:	07213823          	sd	s2,112(sp)
    800035c8:	07413023          	sd	s4,96(sp)
    800035cc:	05513c23          	sd	s5,88(sp)
    800035d0:	05613823          	sd	s6,80(sp)
    800035d4:	05713423          	sd	s7,72(sp)
    800035d8:	03913c23          	sd	s9,56(sp)
    800035dc:	03a13823          	sd	s10,48(sp)
    800035e0:	03b13423          	sd	s11,40(sp)
    800035e4:	00004317          	auipc	t1,0x4
    800035e8:	96c30313          	addi	t1,t1,-1684 # 80006f50 <pr>
    800035ec:	01832c03          	lw	s8,24(t1)
    800035f0:	00b43423          	sd	a1,8(s0)
    800035f4:	00c43823          	sd	a2,16(s0)
    800035f8:	00d43c23          	sd	a3,24(s0)
    800035fc:	02e43023          	sd	a4,32(s0)
    80003600:	02f43423          	sd	a5,40(s0)
    80003604:	03043823          	sd	a6,48(s0)
    80003608:	03143c23          	sd	a7,56(s0)
    8000360c:	00050993          	mv	s3,a0
    80003610:	4a0c1663          	bnez	s8,80003abc <__printf+0x514>
    80003614:	60098c63          	beqz	s3,80003c2c <__printf+0x684>
    80003618:	0009c503          	lbu	a0,0(s3)
    8000361c:	00840793          	addi	a5,s0,8
    80003620:	f6f43c23          	sd	a5,-136(s0)
    80003624:	00000493          	li	s1,0
    80003628:	22050063          	beqz	a0,80003848 <__printf+0x2a0>
    8000362c:	00002a37          	lui	s4,0x2
    80003630:	00018ab7          	lui	s5,0x18
    80003634:	000f4b37          	lui	s6,0xf4
    80003638:	00989bb7          	lui	s7,0x989
    8000363c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003640:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003644:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003648:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000364c:	00148c9b          	addiw	s9,s1,1
    80003650:	02500793          	li	a5,37
    80003654:	01998933          	add	s2,s3,s9
    80003658:	38f51263          	bne	a0,a5,800039dc <__printf+0x434>
    8000365c:	00094783          	lbu	a5,0(s2)
    80003660:	00078c9b          	sext.w	s9,a5
    80003664:	1e078263          	beqz	a5,80003848 <__printf+0x2a0>
    80003668:	0024849b          	addiw	s1,s1,2
    8000366c:	07000713          	li	a4,112
    80003670:	00998933          	add	s2,s3,s1
    80003674:	38e78a63          	beq	a5,a4,80003a08 <__printf+0x460>
    80003678:	20f76863          	bltu	a4,a5,80003888 <__printf+0x2e0>
    8000367c:	42a78863          	beq	a5,a0,80003aac <__printf+0x504>
    80003680:	06400713          	li	a4,100
    80003684:	40e79663          	bne	a5,a4,80003a90 <__printf+0x4e8>
    80003688:	f7843783          	ld	a5,-136(s0)
    8000368c:	0007a603          	lw	a2,0(a5)
    80003690:	00878793          	addi	a5,a5,8
    80003694:	f6f43c23          	sd	a5,-136(s0)
    80003698:	42064a63          	bltz	a2,80003acc <__printf+0x524>
    8000369c:	00a00713          	li	a4,10
    800036a0:	02e677bb          	remuw	a5,a2,a4
    800036a4:	00002d97          	auipc	s11,0x2
    800036a8:	c8cd8d93          	addi	s11,s11,-884 # 80005330 <digits>
    800036ac:	00900593          	li	a1,9
    800036b0:	0006051b          	sext.w	a0,a2
    800036b4:	00000c93          	li	s9,0
    800036b8:	02079793          	slli	a5,a5,0x20
    800036bc:	0207d793          	srli	a5,a5,0x20
    800036c0:	00fd87b3          	add	a5,s11,a5
    800036c4:	0007c783          	lbu	a5,0(a5)
    800036c8:	02e656bb          	divuw	a3,a2,a4
    800036cc:	f8f40023          	sb	a5,-128(s0)
    800036d0:	14c5d863          	bge	a1,a2,80003820 <__printf+0x278>
    800036d4:	06300593          	li	a1,99
    800036d8:	00100c93          	li	s9,1
    800036dc:	02e6f7bb          	remuw	a5,a3,a4
    800036e0:	02079793          	slli	a5,a5,0x20
    800036e4:	0207d793          	srli	a5,a5,0x20
    800036e8:	00fd87b3          	add	a5,s11,a5
    800036ec:	0007c783          	lbu	a5,0(a5)
    800036f0:	02e6d73b          	divuw	a4,a3,a4
    800036f4:	f8f400a3          	sb	a5,-127(s0)
    800036f8:	12a5f463          	bgeu	a1,a0,80003820 <__printf+0x278>
    800036fc:	00a00693          	li	a3,10
    80003700:	00900593          	li	a1,9
    80003704:	02d777bb          	remuw	a5,a4,a3
    80003708:	02079793          	slli	a5,a5,0x20
    8000370c:	0207d793          	srli	a5,a5,0x20
    80003710:	00fd87b3          	add	a5,s11,a5
    80003714:	0007c503          	lbu	a0,0(a5)
    80003718:	02d757bb          	divuw	a5,a4,a3
    8000371c:	f8a40123          	sb	a0,-126(s0)
    80003720:	48e5f263          	bgeu	a1,a4,80003ba4 <__printf+0x5fc>
    80003724:	06300513          	li	a0,99
    80003728:	02d7f5bb          	remuw	a1,a5,a3
    8000372c:	02059593          	slli	a1,a1,0x20
    80003730:	0205d593          	srli	a1,a1,0x20
    80003734:	00bd85b3          	add	a1,s11,a1
    80003738:	0005c583          	lbu	a1,0(a1)
    8000373c:	02d7d7bb          	divuw	a5,a5,a3
    80003740:	f8b401a3          	sb	a1,-125(s0)
    80003744:	48e57263          	bgeu	a0,a4,80003bc8 <__printf+0x620>
    80003748:	3e700513          	li	a0,999
    8000374c:	02d7f5bb          	remuw	a1,a5,a3
    80003750:	02059593          	slli	a1,a1,0x20
    80003754:	0205d593          	srli	a1,a1,0x20
    80003758:	00bd85b3          	add	a1,s11,a1
    8000375c:	0005c583          	lbu	a1,0(a1)
    80003760:	02d7d7bb          	divuw	a5,a5,a3
    80003764:	f8b40223          	sb	a1,-124(s0)
    80003768:	46e57663          	bgeu	a0,a4,80003bd4 <__printf+0x62c>
    8000376c:	02d7f5bb          	remuw	a1,a5,a3
    80003770:	02059593          	slli	a1,a1,0x20
    80003774:	0205d593          	srli	a1,a1,0x20
    80003778:	00bd85b3          	add	a1,s11,a1
    8000377c:	0005c583          	lbu	a1,0(a1)
    80003780:	02d7d7bb          	divuw	a5,a5,a3
    80003784:	f8b402a3          	sb	a1,-123(s0)
    80003788:	46ea7863          	bgeu	s4,a4,80003bf8 <__printf+0x650>
    8000378c:	02d7f5bb          	remuw	a1,a5,a3
    80003790:	02059593          	slli	a1,a1,0x20
    80003794:	0205d593          	srli	a1,a1,0x20
    80003798:	00bd85b3          	add	a1,s11,a1
    8000379c:	0005c583          	lbu	a1,0(a1)
    800037a0:	02d7d7bb          	divuw	a5,a5,a3
    800037a4:	f8b40323          	sb	a1,-122(s0)
    800037a8:	3eeaf863          	bgeu	s5,a4,80003b98 <__printf+0x5f0>
    800037ac:	02d7f5bb          	remuw	a1,a5,a3
    800037b0:	02059593          	slli	a1,a1,0x20
    800037b4:	0205d593          	srli	a1,a1,0x20
    800037b8:	00bd85b3          	add	a1,s11,a1
    800037bc:	0005c583          	lbu	a1,0(a1)
    800037c0:	02d7d7bb          	divuw	a5,a5,a3
    800037c4:	f8b403a3          	sb	a1,-121(s0)
    800037c8:	42eb7e63          	bgeu	s6,a4,80003c04 <__printf+0x65c>
    800037cc:	02d7f5bb          	remuw	a1,a5,a3
    800037d0:	02059593          	slli	a1,a1,0x20
    800037d4:	0205d593          	srli	a1,a1,0x20
    800037d8:	00bd85b3          	add	a1,s11,a1
    800037dc:	0005c583          	lbu	a1,0(a1)
    800037e0:	02d7d7bb          	divuw	a5,a5,a3
    800037e4:	f8b40423          	sb	a1,-120(s0)
    800037e8:	42ebfc63          	bgeu	s7,a4,80003c20 <__printf+0x678>
    800037ec:	02079793          	slli	a5,a5,0x20
    800037f0:	0207d793          	srli	a5,a5,0x20
    800037f4:	00fd8db3          	add	s11,s11,a5
    800037f8:	000dc703          	lbu	a4,0(s11)
    800037fc:	00a00793          	li	a5,10
    80003800:	00900c93          	li	s9,9
    80003804:	f8e404a3          	sb	a4,-119(s0)
    80003808:	00065c63          	bgez	a2,80003820 <__printf+0x278>
    8000380c:	f9040713          	addi	a4,s0,-112
    80003810:	00f70733          	add	a4,a4,a5
    80003814:	02d00693          	li	a3,45
    80003818:	fed70823          	sb	a3,-16(a4)
    8000381c:	00078c93          	mv	s9,a5
    80003820:	f8040793          	addi	a5,s0,-128
    80003824:	01978cb3          	add	s9,a5,s9
    80003828:	f7f40d13          	addi	s10,s0,-129
    8000382c:	000cc503          	lbu	a0,0(s9)
    80003830:	fffc8c93          	addi	s9,s9,-1
    80003834:	00000097          	auipc	ra,0x0
    80003838:	b90080e7          	jalr	-1136(ra) # 800033c4 <consputc>
    8000383c:	ffac98e3          	bne	s9,s10,8000382c <__printf+0x284>
    80003840:	00094503          	lbu	a0,0(s2)
    80003844:	e00514e3          	bnez	a0,8000364c <__printf+0xa4>
    80003848:	1a0c1663          	bnez	s8,800039f4 <__printf+0x44c>
    8000384c:	08813083          	ld	ra,136(sp)
    80003850:	08013403          	ld	s0,128(sp)
    80003854:	07813483          	ld	s1,120(sp)
    80003858:	07013903          	ld	s2,112(sp)
    8000385c:	06813983          	ld	s3,104(sp)
    80003860:	06013a03          	ld	s4,96(sp)
    80003864:	05813a83          	ld	s5,88(sp)
    80003868:	05013b03          	ld	s6,80(sp)
    8000386c:	04813b83          	ld	s7,72(sp)
    80003870:	04013c03          	ld	s8,64(sp)
    80003874:	03813c83          	ld	s9,56(sp)
    80003878:	03013d03          	ld	s10,48(sp)
    8000387c:	02813d83          	ld	s11,40(sp)
    80003880:	0d010113          	addi	sp,sp,208
    80003884:	00008067          	ret
    80003888:	07300713          	li	a4,115
    8000388c:	1ce78a63          	beq	a5,a4,80003a60 <__printf+0x4b8>
    80003890:	07800713          	li	a4,120
    80003894:	1ee79e63          	bne	a5,a4,80003a90 <__printf+0x4e8>
    80003898:	f7843783          	ld	a5,-136(s0)
    8000389c:	0007a703          	lw	a4,0(a5)
    800038a0:	00878793          	addi	a5,a5,8
    800038a4:	f6f43c23          	sd	a5,-136(s0)
    800038a8:	28074263          	bltz	a4,80003b2c <__printf+0x584>
    800038ac:	00002d97          	auipc	s11,0x2
    800038b0:	a84d8d93          	addi	s11,s11,-1404 # 80005330 <digits>
    800038b4:	00f77793          	andi	a5,a4,15
    800038b8:	00fd87b3          	add	a5,s11,a5
    800038bc:	0007c683          	lbu	a3,0(a5)
    800038c0:	00f00613          	li	a2,15
    800038c4:	0007079b          	sext.w	a5,a4
    800038c8:	f8d40023          	sb	a3,-128(s0)
    800038cc:	0047559b          	srliw	a1,a4,0x4
    800038d0:	0047569b          	srliw	a3,a4,0x4
    800038d4:	00000c93          	li	s9,0
    800038d8:	0ee65063          	bge	a2,a4,800039b8 <__printf+0x410>
    800038dc:	00f6f693          	andi	a3,a3,15
    800038e0:	00dd86b3          	add	a3,s11,a3
    800038e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800038e8:	0087d79b          	srliw	a5,a5,0x8
    800038ec:	00100c93          	li	s9,1
    800038f0:	f8d400a3          	sb	a3,-127(s0)
    800038f4:	0cb67263          	bgeu	a2,a1,800039b8 <__printf+0x410>
    800038f8:	00f7f693          	andi	a3,a5,15
    800038fc:	00dd86b3          	add	a3,s11,a3
    80003900:	0006c583          	lbu	a1,0(a3)
    80003904:	00f00613          	li	a2,15
    80003908:	0047d69b          	srliw	a3,a5,0x4
    8000390c:	f8b40123          	sb	a1,-126(s0)
    80003910:	0047d593          	srli	a1,a5,0x4
    80003914:	28f67e63          	bgeu	a2,a5,80003bb0 <__printf+0x608>
    80003918:	00f6f693          	andi	a3,a3,15
    8000391c:	00dd86b3          	add	a3,s11,a3
    80003920:	0006c503          	lbu	a0,0(a3)
    80003924:	0087d813          	srli	a6,a5,0x8
    80003928:	0087d69b          	srliw	a3,a5,0x8
    8000392c:	f8a401a3          	sb	a0,-125(s0)
    80003930:	28b67663          	bgeu	a2,a1,80003bbc <__printf+0x614>
    80003934:	00f6f693          	andi	a3,a3,15
    80003938:	00dd86b3          	add	a3,s11,a3
    8000393c:	0006c583          	lbu	a1,0(a3)
    80003940:	00c7d513          	srli	a0,a5,0xc
    80003944:	00c7d69b          	srliw	a3,a5,0xc
    80003948:	f8b40223          	sb	a1,-124(s0)
    8000394c:	29067a63          	bgeu	a2,a6,80003be0 <__printf+0x638>
    80003950:	00f6f693          	andi	a3,a3,15
    80003954:	00dd86b3          	add	a3,s11,a3
    80003958:	0006c583          	lbu	a1,0(a3)
    8000395c:	0107d813          	srli	a6,a5,0x10
    80003960:	0107d69b          	srliw	a3,a5,0x10
    80003964:	f8b402a3          	sb	a1,-123(s0)
    80003968:	28a67263          	bgeu	a2,a0,80003bec <__printf+0x644>
    8000396c:	00f6f693          	andi	a3,a3,15
    80003970:	00dd86b3          	add	a3,s11,a3
    80003974:	0006c683          	lbu	a3,0(a3)
    80003978:	0147d79b          	srliw	a5,a5,0x14
    8000397c:	f8d40323          	sb	a3,-122(s0)
    80003980:	21067663          	bgeu	a2,a6,80003b8c <__printf+0x5e4>
    80003984:	02079793          	slli	a5,a5,0x20
    80003988:	0207d793          	srli	a5,a5,0x20
    8000398c:	00fd8db3          	add	s11,s11,a5
    80003990:	000dc683          	lbu	a3,0(s11)
    80003994:	00800793          	li	a5,8
    80003998:	00700c93          	li	s9,7
    8000399c:	f8d403a3          	sb	a3,-121(s0)
    800039a0:	00075c63          	bgez	a4,800039b8 <__printf+0x410>
    800039a4:	f9040713          	addi	a4,s0,-112
    800039a8:	00f70733          	add	a4,a4,a5
    800039ac:	02d00693          	li	a3,45
    800039b0:	fed70823          	sb	a3,-16(a4)
    800039b4:	00078c93          	mv	s9,a5
    800039b8:	f8040793          	addi	a5,s0,-128
    800039bc:	01978cb3          	add	s9,a5,s9
    800039c0:	f7f40d13          	addi	s10,s0,-129
    800039c4:	000cc503          	lbu	a0,0(s9)
    800039c8:	fffc8c93          	addi	s9,s9,-1
    800039cc:	00000097          	auipc	ra,0x0
    800039d0:	9f8080e7          	jalr	-1544(ra) # 800033c4 <consputc>
    800039d4:	ff9d18e3          	bne	s10,s9,800039c4 <__printf+0x41c>
    800039d8:	0100006f          	j	800039e8 <__printf+0x440>
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	9e8080e7          	jalr	-1560(ra) # 800033c4 <consputc>
    800039e4:	000c8493          	mv	s1,s9
    800039e8:	00094503          	lbu	a0,0(s2)
    800039ec:	c60510e3          	bnez	a0,8000364c <__printf+0xa4>
    800039f0:	e40c0ee3          	beqz	s8,8000384c <__printf+0x2a4>
    800039f4:	00003517          	auipc	a0,0x3
    800039f8:	55c50513          	addi	a0,a0,1372 # 80006f50 <pr>
    800039fc:	00001097          	auipc	ra,0x1
    80003a00:	94c080e7          	jalr	-1716(ra) # 80004348 <release>
    80003a04:	e49ff06f          	j	8000384c <__printf+0x2a4>
    80003a08:	f7843783          	ld	a5,-136(s0)
    80003a0c:	03000513          	li	a0,48
    80003a10:	01000d13          	li	s10,16
    80003a14:	00878713          	addi	a4,a5,8
    80003a18:	0007bc83          	ld	s9,0(a5)
    80003a1c:	f6e43c23          	sd	a4,-136(s0)
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	9a4080e7          	jalr	-1628(ra) # 800033c4 <consputc>
    80003a28:	07800513          	li	a0,120
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	998080e7          	jalr	-1640(ra) # 800033c4 <consputc>
    80003a34:	00002d97          	auipc	s11,0x2
    80003a38:	8fcd8d93          	addi	s11,s11,-1796 # 80005330 <digits>
    80003a3c:	03ccd793          	srli	a5,s9,0x3c
    80003a40:	00fd87b3          	add	a5,s11,a5
    80003a44:	0007c503          	lbu	a0,0(a5)
    80003a48:	fffd0d1b          	addiw	s10,s10,-1
    80003a4c:	004c9c93          	slli	s9,s9,0x4
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	974080e7          	jalr	-1676(ra) # 800033c4 <consputc>
    80003a58:	fe0d12e3          	bnez	s10,80003a3c <__printf+0x494>
    80003a5c:	f8dff06f          	j	800039e8 <__printf+0x440>
    80003a60:	f7843783          	ld	a5,-136(s0)
    80003a64:	0007bc83          	ld	s9,0(a5)
    80003a68:	00878793          	addi	a5,a5,8
    80003a6c:	f6f43c23          	sd	a5,-136(s0)
    80003a70:	000c9a63          	bnez	s9,80003a84 <__printf+0x4dc>
    80003a74:	1080006f          	j	80003b7c <__printf+0x5d4>
    80003a78:	001c8c93          	addi	s9,s9,1
    80003a7c:	00000097          	auipc	ra,0x0
    80003a80:	948080e7          	jalr	-1720(ra) # 800033c4 <consputc>
    80003a84:	000cc503          	lbu	a0,0(s9)
    80003a88:	fe0518e3          	bnez	a0,80003a78 <__printf+0x4d0>
    80003a8c:	f5dff06f          	j	800039e8 <__printf+0x440>
    80003a90:	02500513          	li	a0,37
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	930080e7          	jalr	-1744(ra) # 800033c4 <consputc>
    80003a9c:	000c8513          	mv	a0,s9
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	924080e7          	jalr	-1756(ra) # 800033c4 <consputc>
    80003aa8:	f41ff06f          	j	800039e8 <__printf+0x440>
    80003aac:	02500513          	li	a0,37
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	914080e7          	jalr	-1772(ra) # 800033c4 <consputc>
    80003ab8:	f31ff06f          	j	800039e8 <__printf+0x440>
    80003abc:	00030513          	mv	a0,t1
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	7bc080e7          	jalr	1980(ra) # 8000427c <acquire>
    80003ac8:	b4dff06f          	j	80003614 <__printf+0x6c>
    80003acc:	40c0053b          	negw	a0,a2
    80003ad0:	00a00713          	li	a4,10
    80003ad4:	02e576bb          	remuw	a3,a0,a4
    80003ad8:	00002d97          	auipc	s11,0x2
    80003adc:	858d8d93          	addi	s11,s11,-1960 # 80005330 <digits>
    80003ae0:	ff700593          	li	a1,-9
    80003ae4:	02069693          	slli	a3,a3,0x20
    80003ae8:	0206d693          	srli	a3,a3,0x20
    80003aec:	00dd86b3          	add	a3,s11,a3
    80003af0:	0006c683          	lbu	a3,0(a3)
    80003af4:	02e557bb          	divuw	a5,a0,a4
    80003af8:	f8d40023          	sb	a3,-128(s0)
    80003afc:	10b65e63          	bge	a2,a1,80003c18 <__printf+0x670>
    80003b00:	06300593          	li	a1,99
    80003b04:	02e7f6bb          	remuw	a3,a5,a4
    80003b08:	02069693          	slli	a3,a3,0x20
    80003b0c:	0206d693          	srli	a3,a3,0x20
    80003b10:	00dd86b3          	add	a3,s11,a3
    80003b14:	0006c683          	lbu	a3,0(a3)
    80003b18:	02e7d73b          	divuw	a4,a5,a4
    80003b1c:	00200793          	li	a5,2
    80003b20:	f8d400a3          	sb	a3,-127(s0)
    80003b24:	bca5ece3          	bltu	a1,a0,800036fc <__printf+0x154>
    80003b28:	ce5ff06f          	j	8000380c <__printf+0x264>
    80003b2c:	40e007bb          	negw	a5,a4
    80003b30:	00002d97          	auipc	s11,0x2
    80003b34:	800d8d93          	addi	s11,s11,-2048 # 80005330 <digits>
    80003b38:	00f7f693          	andi	a3,a5,15
    80003b3c:	00dd86b3          	add	a3,s11,a3
    80003b40:	0006c583          	lbu	a1,0(a3)
    80003b44:	ff100613          	li	a2,-15
    80003b48:	0047d69b          	srliw	a3,a5,0x4
    80003b4c:	f8b40023          	sb	a1,-128(s0)
    80003b50:	0047d59b          	srliw	a1,a5,0x4
    80003b54:	0ac75e63          	bge	a4,a2,80003c10 <__printf+0x668>
    80003b58:	00f6f693          	andi	a3,a3,15
    80003b5c:	00dd86b3          	add	a3,s11,a3
    80003b60:	0006c603          	lbu	a2,0(a3)
    80003b64:	00f00693          	li	a3,15
    80003b68:	0087d79b          	srliw	a5,a5,0x8
    80003b6c:	f8c400a3          	sb	a2,-127(s0)
    80003b70:	d8b6e4e3          	bltu	a3,a1,800038f8 <__printf+0x350>
    80003b74:	00200793          	li	a5,2
    80003b78:	e2dff06f          	j	800039a4 <__printf+0x3fc>
    80003b7c:	00001c97          	auipc	s9,0x1
    80003b80:	794c8c93          	addi	s9,s9,1940 # 80005310 <_ZZ12printIntegermE6digits+0x148>
    80003b84:	02800513          	li	a0,40
    80003b88:	ef1ff06f          	j	80003a78 <__printf+0x4d0>
    80003b8c:	00700793          	li	a5,7
    80003b90:	00600c93          	li	s9,6
    80003b94:	e0dff06f          	j	800039a0 <__printf+0x3f8>
    80003b98:	00700793          	li	a5,7
    80003b9c:	00600c93          	li	s9,6
    80003ba0:	c69ff06f          	j	80003808 <__printf+0x260>
    80003ba4:	00300793          	li	a5,3
    80003ba8:	00200c93          	li	s9,2
    80003bac:	c5dff06f          	j	80003808 <__printf+0x260>
    80003bb0:	00300793          	li	a5,3
    80003bb4:	00200c93          	li	s9,2
    80003bb8:	de9ff06f          	j	800039a0 <__printf+0x3f8>
    80003bbc:	00400793          	li	a5,4
    80003bc0:	00300c93          	li	s9,3
    80003bc4:	dddff06f          	j	800039a0 <__printf+0x3f8>
    80003bc8:	00400793          	li	a5,4
    80003bcc:	00300c93          	li	s9,3
    80003bd0:	c39ff06f          	j	80003808 <__printf+0x260>
    80003bd4:	00500793          	li	a5,5
    80003bd8:	00400c93          	li	s9,4
    80003bdc:	c2dff06f          	j	80003808 <__printf+0x260>
    80003be0:	00500793          	li	a5,5
    80003be4:	00400c93          	li	s9,4
    80003be8:	db9ff06f          	j	800039a0 <__printf+0x3f8>
    80003bec:	00600793          	li	a5,6
    80003bf0:	00500c93          	li	s9,5
    80003bf4:	dadff06f          	j	800039a0 <__printf+0x3f8>
    80003bf8:	00600793          	li	a5,6
    80003bfc:	00500c93          	li	s9,5
    80003c00:	c09ff06f          	j	80003808 <__printf+0x260>
    80003c04:	00800793          	li	a5,8
    80003c08:	00700c93          	li	s9,7
    80003c0c:	bfdff06f          	j	80003808 <__printf+0x260>
    80003c10:	00100793          	li	a5,1
    80003c14:	d91ff06f          	j	800039a4 <__printf+0x3fc>
    80003c18:	00100793          	li	a5,1
    80003c1c:	bf1ff06f          	j	8000380c <__printf+0x264>
    80003c20:	00900793          	li	a5,9
    80003c24:	00800c93          	li	s9,8
    80003c28:	be1ff06f          	j	80003808 <__printf+0x260>
    80003c2c:	00001517          	auipc	a0,0x1
    80003c30:	6ec50513          	addi	a0,a0,1772 # 80005318 <_ZZ12printIntegermE6digits+0x150>
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	918080e7          	jalr	-1768(ra) # 8000354c <panic>

0000000080003c3c <printfinit>:
    80003c3c:	fe010113          	addi	sp,sp,-32
    80003c40:	00813823          	sd	s0,16(sp)
    80003c44:	00913423          	sd	s1,8(sp)
    80003c48:	00113c23          	sd	ra,24(sp)
    80003c4c:	02010413          	addi	s0,sp,32
    80003c50:	00003497          	auipc	s1,0x3
    80003c54:	30048493          	addi	s1,s1,768 # 80006f50 <pr>
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00001597          	auipc	a1,0x1
    80003c60:	6cc58593          	addi	a1,a1,1740 # 80005328 <_ZZ12printIntegermE6digits+0x160>
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	5f4080e7          	jalr	1524(ra) # 80004258 <initlock>
    80003c6c:	01813083          	ld	ra,24(sp)
    80003c70:	01013403          	ld	s0,16(sp)
    80003c74:	0004ac23          	sw	zero,24(s1)
    80003c78:	00813483          	ld	s1,8(sp)
    80003c7c:	02010113          	addi	sp,sp,32
    80003c80:	00008067          	ret

0000000080003c84 <uartinit>:
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00813423          	sd	s0,8(sp)
    80003c8c:	01010413          	addi	s0,sp,16
    80003c90:	100007b7          	lui	a5,0x10000
    80003c94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003c98:	f8000713          	li	a4,-128
    80003c9c:	00e781a3          	sb	a4,3(a5)
    80003ca0:	00300713          	li	a4,3
    80003ca4:	00e78023          	sb	a4,0(a5)
    80003ca8:	000780a3          	sb	zero,1(a5)
    80003cac:	00e781a3          	sb	a4,3(a5)
    80003cb0:	00700693          	li	a3,7
    80003cb4:	00d78123          	sb	a3,2(a5)
    80003cb8:	00e780a3          	sb	a4,1(a5)
    80003cbc:	00813403          	ld	s0,8(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret

0000000080003cc8 <uartputc>:
    80003cc8:	00002797          	auipc	a5,0x2
    80003ccc:	0007a783          	lw	a5,0(a5) # 80005cc8 <panicked>
    80003cd0:	00078463          	beqz	a5,80003cd8 <uartputc+0x10>
    80003cd4:	0000006f          	j	80003cd4 <uartputc+0xc>
    80003cd8:	fd010113          	addi	sp,sp,-48
    80003cdc:	02813023          	sd	s0,32(sp)
    80003ce0:	00913c23          	sd	s1,24(sp)
    80003ce4:	01213823          	sd	s2,16(sp)
    80003ce8:	01313423          	sd	s3,8(sp)
    80003cec:	02113423          	sd	ra,40(sp)
    80003cf0:	03010413          	addi	s0,sp,48
    80003cf4:	00002917          	auipc	s2,0x2
    80003cf8:	fdc90913          	addi	s2,s2,-36 # 80005cd0 <uart_tx_r>
    80003cfc:	00093783          	ld	a5,0(s2)
    80003d00:	00002497          	auipc	s1,0x2
    80003d04:	fd848493          	addi	s1,s1,-40 # 80005cd8 <uart_tx_w>
    80003d08:	0004b703          	ld	a4,0(s1)
    80003d0c:	02078693          	addi	a3,a5,32
    80003d10:	00050993          	mv	s3,a0
    80003d14:	02e69c63          	bne	a3,a4,80003d4c <uartputc+0x84>
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	834080e7          	jalr	-1996(ra) # 8000454c <push_on>
    80003d20:	00093783          	ld	a5,0(s2)
    80003d24:	0004b703          	ld	a4,0(s1)
    80003d28:	02078793          	addi	a5,a5,32
    80003d2c:	00e79463          	bne	a5,a4,80003d34 <uartputc+0x6c>
    80003d30:	0000006f          	j	80003d30 <uartputc+0x68>
    80003d34:	00001097          	auipc	ra,0x1
    80003d38:	88c080e7          	jalr	-1908(ra) # 800045c0 <pop_on>
    80003d3c:	00093783          	ld	a5,0(s2)
    80003d40:	0004b703          	ld	a4,0(s1)
    80003d44:	02078693          	addi	a3,a5,32
    80003d48:	fce688e3          	beq	a3,a4,80003d18 <uartputc+0x50>
    80003d4c:	01f77693          	andi	a3,a4,31
    80003d50:	00003597          	auipc	a1,0x3
    80003d54:	22058593          	addi	a1,a1,544 # 80006f70 <uart_tx_buf>
    80003d58:	00d586b3          	add	a3,a1,a3
    80003d5c:	00170713          	addi	a4,a4,1
    80003d60:	01368023          	sb	s3,0(a3)
    80003d64:	00e4b023          	sd	a4,0(s1)
    80003d68:	10000637          	lui	a2,0x10000
    80003d6c:	02f71063          	bne	a4,a5,80003d8c <uartputc+0xc4>
    80003d70:	0340006f          	j	80003da4 <uartputc+0xdc>
    80003d74:	00074703          	lbu	a4,0(a4)
    80003d78:	00f93023          	sd	a5,0(s2)
    80003d7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003d80:	00093783          	ld	a5,0(s2)
    80003d84:	0004b703          	ld	a4,0(s1)
    80003d88:	00f70e63          	beq	a4,a5,80003da4 <uartputc+0xdc>
    80003d8c:	00564683          	lbu	a3,5(a2)
    80003d90:	01f7f713          	andi	a4,a5,31
    80003d94:	00e58733          	add	a4,a1,a4
    80003d98:	0206f693          	andi	a3,a3,32
    80003d9c:	00178793          	addi	a5,a5,1
    80003da0:	fc069ae3          	bnez	a3,80003d74 <uartputc+0xac>
    80003da4:	02813083          	ld	ra,40(sp)
    80003da8:	02013403          	ld	s0,32(sp)
    80003dac:	01813483          	ld	s1,24(sp)
    80003db0:	01013903          	ld	s2,16(sp)
    80003db4:	00813983          	ld	s3,8(sp)
    80003db8:	03010113          	addi	sp,sp,48
    80003dbc:	00008067          	ret

0000000080003dc0 <uartputc_sync>:
    80003dc0:	ff010113          	addi	sp,sp,-16
    80003dc4:	00813423          	sd	s0,8(sp)
    80003dc8:	01010413          	addi	s0,sp,16
    80003dcc:	00002717          	auipc	a4,0x2
    80003dd0:	efc72703          	lw	a4,-260(a4) # 80005cc8 <panicked>
    80003dd4:	02071663          	bnez	a4,80003e00 <uartputc_sync+0x40>
    80003dd8:	00050793          	mv	a5,a0
    80003ddc:	100006b7          	lui	a3,0x10000
    80003de0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003de4:	02077713          	andi	a4,a4,32
    80003de8:	fe070ce3          	beqz	a4,80003de0 <uartputc_sync+0x20>
    80003dec:	0ff7f793          	andi	a5,a5,255
    80003df0:	00f68023          	sb	a5,0(a3)
    80003df4:	00813403          	ld	s0,8(sp)
    80003df8:	01010113          	addi	sp,sp,16
    80003dfc:	00008067          	ret
    80003e00:	0000006f          	j	80003e00 <uartputc_sync+0x40>

0000000080003e04 <uartstart>:
    80003e04:	ff010113          	addi	sp,sp,-16
    80003e08:	00813423          	sd	s0,8(sp)
    80003e0c:	01010413          	addi	s0,sp,16
    80003e10:	00002617          	auipc	a2,0x2
    80003e14:	ec060613          	addi	a2,a2,-320 # 80005cd0 <uart_tx_r>
    80003e18:	00002517          	auipc	a0,0x2
    80003e1c:	ec050513          	addi	a0,a0,-320 # 80005cd8 <uart_tx_w>
    80003e20:	00063783          	ld	a5,0(a2)
    80003e24:	00053703          	ld	a4,0(a0)
    80003e28:	04f70263          	beq	a4,a5,80003e6c <uartstart+0x68>
    80003e2c:	100005b7          	lui	a1,0x10000
    80003e30:	00003817          	auipc	a6,0x3
    80003e34:	14080813          	addi	a6,a6,320 # 80006f70 <uart_tx_buf>
    80003e38:	01c0006f          	j	80003e54 <uartstart+0x50>
    80003e3c:	0006c703          	lbu	a4,0(a3)
    80003e40:	00f63023          	sd	a5,0(a2)
    80003e44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e48:	00063783          	ld	a5,0(a2)
    80003e4c:	00053703          	ld	a4,0(a0)
    80003e50:	00f70e63          	beq	a4,a5,80003e6c <uartstart+0x68>
    80003e54:	01f7f713          	andi	a4,a5,31
    80003e58:	00e806b3          	add	a3,a6,a4
    80003e5c:	0055c703          	lbu	a4,5(a1)
    80003e60:	00178793          	addi	a5,a5,1
    80003e64:	02077713          	andi	a4,a4,32
    80003e68:	fc071ae3          	bnez	a4,80003e3c <uartstart+0x38>
    80003e6c:	00813403          	ld	s0,8(sp)
    80003e70:	01010113          	addi	sp,sp,16
    80003e74:	00008067          	ret

0000000080003e78 <uartgetc>:
    80003e78:	ff010113          	addi	sp,sp,-16
    80003e7c:	00813423          	sd	s0,8(sp)
    80003e80:	01010413          	addi	s0,sp,16
    80003e84:	10000737          	lui	a4,0x10000
    80003e88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003e8c:	0017f793          	andi	a5,a5,1
    80003e90:	00078c63          	beqz	a5,80003ea8 <uartgetc+0x30>
    80003e94:	00074503          	lbu	a0,0(a4)
    80003e98:	0ff57513          	andi	a0,a0,255
    80003e9c:	00813403          	ld	s0,8(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret
    80003ea8:	fff00513          	li	a0,-1
    80003eac:	ff1ff06f          	j	80003e9c <uartgetc+0x24>

0000000080003eb0 <uartintr>:
    80003eb0:	100007b7          	lui	a5,0x10000
    80003eb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003eb8:	0017f793          	andi	a5,a5,1
    80003ebc:	0a078463          	beqz	a5,80003f64 <uartintr+0xb4>
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00813823          	sd	s0,16(sp)
    80003ec8:	00913423          	sd	s1,8(sp)
    80003ecc:	00113c23          	sd	ra,24(sp)
    80003ed0:	02010413          	addi	s0,sp,32
    80003ed4:	100004b7          	lui	s1,0x10000
    80003ed8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003edc:	0ff57513          	andi	a0,a0,255
    80003ee0:	fffff097          	auipc	ra,0xfffff
    80003ee4:	534080e7          	jalr	1332(ra) # 80003414 <consoleintr>
    80003ee8:	0054c783          	lbu	a5,5(s1)
    80003eec:	0017f793          	andi	a5,a5,1
    80003ef0:	fe0794e3          	bnez	a5,80003ed8 <uartintr+0x28>
    80003ef4:	00002617          	auipc	a2,0x2
    80003ef8:	ddc60613          	addi	a2,a2,-548 # 80005cd0 <uart_tx_r>
    80003efc:	00002517          	auipc	a0,0x2
    80003f00:	ddc50513          	addi	a0,a0,-548 # 80005cd8 <uart_tx_w>
    80003f04:	00063783          	ld	a5,0(a2)
    80003f08:	00053703          	ld	a4,0(a0)
    80003f0c:	04f70263          	beq	a4,a5,80003f50 <uartintr+0xa0>
    80003f10:	100005b7          	lui	a1,0x10000
    80003f14:	00003817          	auipc	a6,0x3
    80003f18:	05c80813          	addi	a6,a6,92 # 80006f70 <uart_tx_buf>
    80003f1c:	01c0006f          	j	80003f38 <uartintr+0x88>
    80003f20:	0006c703          	lbu	a4,0(a3)
    80003f24:	00f63023          	sd	a5,0(a2)
    80003f28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f2c:	00063783          	ld	a5,0(a2)
    80003f30:	00053703          	ld	a4,0(a0)
    80003f34:	00f70e63          	beq	a4,a5,80003f50 <uartintr+0xa0>
    80003f38:	01f7f713          	andi	a4,a5,31
    80003f3c:	00e806b3          	add	a3,a6,a4
    80003f40:	0055c703          	lbu	a4,5(a1)
    80003f44:	00178793          	addi	a5,a5,1
    80003f48:	02077713          	andi	a4,a4,32
    80003f4c:	fc071ae3          	bnez	a4,80003f20 <uartintr+0x70>
    80003f50:	01813083          	ld	ra,24(sp)
    80003f54:	01013403          	ld	s0,16(sp)
    80003f58:	00813483          	ld	s1,8(sp)
    80003f5c:	02010113          	addi	sp,sp,32
    80003f60:	00008067          	ret
    80003f64:	00002617          	auipc	a2,0x2
    80003f68:	d6c60613          	addi	a2,a2,-660 # 80005cd0 <uart_tx_r>
    80003f6c:	00002517          	auipc	a0,0x2
    80003f70:	d6c50513          	addi	a0,a0,-660 # 80005cd8 <uart_tx_w>
    80003f74:	00063783          	ld	a5,0(a2)
    80003f78:	00053703          	ld	a4,0(a0)
    80003f7c:	04f70263          	beq	a4,a5,80003fc0 <uartintr+0x110>
    80003f80:	100005b7          	lui	a1,0x10000
    80003f84:	00003817          	auipc	a6,0x3
    80003f88:	fec80813          	addi	a6,a6,-20 # 80006f70 <uart_tx_buf>
    80003f8c:	01c0006f          	j	80003fa8 <uartintr+0xf8>
    80003f90:	0006c703          	lbu	a4,0(a3)
    80003f94:	00f63023          	sd	a5,0(a2)
    80003f98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f9c:	00063783          	ld	a5,0(a2)
    80003fa0:	00053703          	ld	a4,0(a0)
    80003fa4:	02f70063          	beq	a4,a5,80003fc4 <uartintr+0x114>
    80003fa8:	01f7f713          	andi	a4,a5,31
    80003fac:	00e806b3          	add	a3,a6,a4
    80003fb0:	0055c703          	lbu	a4,5(a1)
    80003fb4:	00178793          	addi	a5,a5,1
    80003fb8:	02077713          	andi	a4,a4,32
    80003fbc:	fc071ae3          	bnez	a4,80003f90 <uartintr+0xe0>
    80003fc0:	00008067          	ret
    80003fc4:	00008067          	ret

0000000080003fc8 <kinit>:
    80003fc8:	fc010113          	addi	sp,sp,-64
    80003fcc:	02913423          	sd	s1,40(sp)
    80003fd0:	fffff7b7          	lui	a5,0xfffff
    80003fd4:	00004497          	auipc	s1,0x4
    80003fd8:	fcb48493          	addi	s1,s1,-53 # 80007f9f <end+0xfff>
    80003fdc:	02813823          	sd	s0,48(sp)
    80003fe0:	01313c23          	sd	s3,24(sp)
    80003fe4:	00f4f4b3          	and	s1,s1,a5
    80003fe8:	02113c23          	sd	ra,56(sp)
    80003fec:	03213023          	sd	s2,32(sp)
    80003ff0:	01413823          	sd	s4,16(sp)
    80003ff4:	01513423          	sd	s5,8(sp)
    80003ff8:	04010413          	addi	s0,sp,64
    80003ffc:	000017b7          	lui	a5,0x1
    80004000:	01100993          	li	s3,17
    80004004:	00f487b3          	add	a5,s1,a5
    80004008:	01b99993          	slli	s3,s3,0x1b
    8000400c:	06f9e063          	bltu	s3,a5,8000406c <kinit+0xa4>
    80004010:	00003a97          	auipc	s5,0x3
    80004014:	f90a8a93          	addi	s5,s5,-112 # 80006fa0 <end>
    80004018:	0754ec63          	bltu	s1,s5,80004090 <kinit+0xc8>
    8000401c:	0734fa63          	bgeu	s1,s3,80004090 <kinit+0xc8>
    80004020:	00088a37          	lui	s4,0x88
    80004024:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004028:	00002917          	auipc	s2,0x2
    8000402c:	cb890913          	addi	s2,s2,-840 # 80005ce0 <kmem>
    80004030:	00ca1a13          	slli	s4,s4,0xc
    80004034:	0140006f          	j	80004048 <kinit+0x80>
    80004038:	000017b7          	lui	a5,0x1
    8000403c:	00f484b3          	add	s1,s1,a5
    80004040:	0554e863          	bltu	s1,s5,80004090 <kinit+0xc8>
    80004044:	0534f663          	bgeu	s1,s3,80004090 <kinit+0xc8>
    80004048:	00001637          	lui	a2,0x1
    8000404c:	00100593          	li	a1,1
    80004050:	00048513          	mv	a0,s1
    80004054:	00000097          	auipc	ra,0x0
    80004058:	5e4080e7          	jalr	1508(ra) # 80004638 <__memset>
    8000405c:	00093783          	ld	a5,0(s2)
    80004060:	00f4b023          	sd	a5,0(s1)
    80004064:	00993023          	sd	s1,0(s2)
    80004068:	fd4498e3          	bne	s1,s4,80004038 <kinit+0x70>
    8000406c:	03813083          	ld	ra,56(sp)
    80004070:	03013403          	ld	s0,48(sp)
    80004074:	02813483          	ld	s1,40(sp)
    80004078:	02013903          	ld	s2,32(sp)
    8000407c:	01813983          	ld	s3,24(sp)
    80004080:	01013a03          	ld	s4,16(sp)
    80004084:	00813a83          	ld	s5,8(sp)
    80004088:	04010113          	addi	sp,sp,64
    8000408c:	00008067          	ret
    80004090:	00001517          	auipc	a0,0x1
    80004094:	2b850513          	addi	a0,a0,696 # 80005348 <digits+0x18>
    80004098:	fffff097          	auipc	ra,0xfffff
    8000409c:	4b4080e7          	jalr	1204(ra) # 8000354c <panic>

00000000800040a0 <freerange>:
    800040a0:	fc010113          	addi	sp,sp,-64
    800040a4:	000017b7          	lui	a5,0x1
    800040a8:	02913423          	sd	s1,40(sp)
    800040ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800040b0:	009504b3          	add	s1,a0,s1
    800040b4:	fffff537          	lui	a0,0xfffff
    800040b8:	02813823          	sd	s0,48(sp)
    800040bc:	02113c23          	sd	ra,56(sp)
    800040c0:	03213023          	sd	s2,32(sp)
    800040c4:	01313c23          	sd	s3,24(sp)
    800040c8:	01413823          	sd	s4,16(sp)
    800040cc:	01513423          	sd	s5,8(sp)
    800040d0:	01613023          	sd	s6,0(sp)
    800040d4:	04010413          	addi	s0,sp,64
    800040d8:	00a4f4b3          	and	s1,s1,a0
    800040dc:	00f487b3          	add	a5,s1,a5
    800040e0:	06f5e463          	bltu	a1,a5,80004148 <freerange+0xa8>
    800040e4:	00003a97          	auipc	s5,0x3
    800040e8:	ebca8a93          	addi	s5,s5,-324 # 80006fa0 <end>
    800040ec:	0954e263          	bltu	s1,s5,80004170 <freerange+0xd0>
    800040f0:	01100993          	li	s3,17
    800040f4:	01b99993          	slli	s3,s3,0x1b
    800040f8:	0734fc63          	bgeu	s1,s3,80004170 <freerange+0xd0>
    800040fc:	00058a13          	mv	s4,a1
    80004100:	00002917          	auipc	s2,0x2
    80004104:	be090913          	addi	s2,s2,-1056 # 80005ce0 <kmem>
    80004108:	00002b37          	lui	s6,0x2
    8000410c:	0140006f          	j	80004120 <freerange+0x80>
    80004110:	000017b7          	lui	a5,0x1
    80004114:	00f484b3          	add	s1,s1,a5
    80004118:	0554ec63          	bltu	s1,s5,80004170 <freerange+0xd0>
    8000411c:	0534fa63          	bgeu	s1,s3,80004170 <freerange+0xd0>
    80004120:	00001637          	lui	a2,0x1
    80004124:	00100593          	li	a1,1
    80004128:	00048513          	mv	a0,s1
    8000412c:	00000097          	auipc	ra,0x0
    80004130:	50c080e7          	jalr	1292(ra) # 80004638 <__memset>
    80004134:	00093703          	ld	a4,0(s2)
    80004138:	016487b3          	add	a5,s1,s6
    8000413c:	00e4b023          	sd	a4,0(s1)
    80004140:	00993023          	sd	s1,0(s2)
    80004144:	fcfa76e3          	bgeu	s4,a5,80004110 <freerange+0x70>
    80004148:	03813083          	ld	ra,56(sp)
    8000414c:	03013403          	ld	s0,48(sp)
    80004150:	02813483          	ld	s1,40(sp)
    80004154:	02013903          	ld	s2,32(sp)
    80004158:	01813983          	ld	s3,24(sp)
    8000415c:	01013a03          	ld	s4,16(sp)
    80004160:	00813a83          	ld	s5,8(sp)
    80004164:	00013b03          	ld	s6,0(sp)
    80004168:	04010113          	addi	sp,sp,64
    8000416c:	00008067          	ret
    80004170:	00001517          	auipc	a0,0x1
    80004174:	1d850513          	addi	a0,a0,472 # 80005348 <digits+0x18>
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	3d4080e7          	jalr	980(ra) # 8000354c <panic>

0000000080004180 <kfree>:
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	00813823          	sd	s0,16(sp)
    80004188:	00113c23          	sd	ra,24(sp)
    8000418c:	00913423          	sd	s1,8(sp)
    80004190:	02010413          	addi	s0,sp,32
    80004194:	03451793          	slli	a5,a0,0x34
    80004198:	04079c63          	bnez	a5,800041f0 <kfree+0x70>
    8000419c:	00003797          	auipc	a5,0x3
    800041a0:	e0478793          	addi	a5,a5,-508 # 80006fa0 <end>
    800041a4:	00050493          	mv	s1,a0
    800041a8:	04f56463          	bltu	a0,a5,800041f0 <kfree+0x70>
    800041ac:	01100793          	li	a5,17
    800041b0:	01b79793          	slli	a5,a5,0x1b
    800041b4:	02f57e63          	bgeu	a0,a5,800041f0 <kfree+0x70>
    800041b8:	00001637          	lui	a2,0x1
    800041bc:	00100593          	li	a1,1
    800041c0:	00000097          	auipc	ra,0x0
    800041c4:	478080e7          	jalr	1144(ra) # 80004638 <__memset>
    800041c8:	00002797          	auipc	a5,0x2
    800041cc:	b1878793          	addi	a5,a5,-1256 # 80005ce0 <kmem>
    800041d0:	0007b703          	ld	a4,0(a5)
    800041d4:	01813083          	ld	ra,24(sp)
    800041d8:	01013403          	ld	s0,16(sp)
    800041dc:	00e4b023          	sd	a4,0(s1)
    800041e0:	0097b023          	sd	s1,0(a5)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret
    800041f0:	00001517          	auipc	a0,0x1
    800041f4:	15850513          	addi	a0,a0,344 # 80005348 <digits+0x18>
    800041f8:	fffff097          	auipc	ra,0xfffff
    800041fc:	354080e7          	jalr	852(ra) # 8000354c <panic>

0000000080004200 <kalloc>:
    80004200:	fe010113          	addi	sp,sp,-32
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	00113c23          	sd	ra,24(sp)
    80004210:	02010413          	addi	s0,sp,32
    80004214:	00002797          	auipc	a5,0x2
    80004218:	acc78793          	addi	a5,a5,-1332 # 80005ce0 <kmem>
    8000421c:	0007b483          	ld	s1,0(a5)
    80004220:	02048063          	beqz	s1,80004240 <kalloc+0x40>
    80004224:	0004b703          	ld	a4,0(s1)
    80004228:	00001637          	lui	a2,0x1
    8000422c:	00500593          	li	a1,5
    80004230:	00048513          	mv	a0,s1
    80004234:	00e7b023          	sd	a4,0(a5)
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	400080e7          	jalr	1024(ra) # 80004638 <__memset>
    80004240:	01813083          	ld	ra,24(sp)
    80004244:	01013403          	ld	s0,16(sp)
    80004248:	00048513          	mv	a0,s1
    8000424c:	00813483          	ld	s1,8(sp)
    80004250:	02010113          	addi	sp,sp,32
    80004254:	00008067          	ret

0000000080004258 <initlock>:
    80004258:	ff010113          	addi	sp,sp,-16
    8000425c:	00813423          	sd	s0,8(sp)
    80004260:	01010413          	addi	s0,sp,16
    80004264:	00813403          	ld	s0,8(sp)
    80004268:	00b53423          	sd	a1,8(a0)
    8000426c:	00052023          	sw	zero,0(a0)
    80004270:	00053823          	sd	zero,16(a0)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret

000000008000427c <acquire>:
    8000427c:	fe010113          	addi	sp,sp,-32
    80004280:	00813823          	sd	s0,16(sp)
    80004284:	00913423          	sd	s1,8(sp)
    80004288:	00113c23          	sd	ra,24(sp)
    8000428c:	01213023          	sd	s2,0(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	00050493          	mv	s1,a0
    80004298:	10002973          	csrr	s2,sstatus
    8000429c:	100027f3          	csrr	a5,sstatus
    800042a0:	ffd7f793          	andi	a5,a5,-3
    800042a4:	10079073          	csrw	sstatus,a5
    800042a8:	fffff097          	auipc	ra,0xfffff
    800042ac:	8e4080e7          	jalr	-1820(ra) # 80002b8c <mycpu>
    800042b0:	07852783          	lw	a5,120(a0)
    800042b4:	06078e63          	beqz	a5,80004330 <acquire+0xb4>
    800042b8:	fffff097          	auipc	ra,0xfffff
    800042bc:	8d4080e7          	jalr	-1836(ra) # 80002b8c <mycpu>
    800042c0:	07852783          	lw	a5,120(a0)
    800042c4:	0004a703          	lw	a4,0(s1)
    800042c8:	0017879b          	addiw	a5,a5,1
    800042cc:	06f52c23          	sw	a5,120(a0)
    800042d0:	04071063          	bnez	a4,80004310 <acquire+0x94>
    800042d4:	00100713          	li	a4,1
    800042d8:	00070793          	mv	a5,a4
    800042dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800042e0:	0007879b          	sext.w	a5,a5
    800042e4:	fe079ae3          	bnez	a5,800042d8 <acquire+0x5c>
    800042e8:	0ff0000f          	fence
    800042ec:	fffff097          	auipc	ra,0xfffff
    800042f0:	8a0080e7          	jalr	-1888(ra) # 80002b8c <mycpu>
    800042f4:	01813083          	ld	ra,24(sp)
    800042f8:	01013403          	ld	s0,16(sp)
    800042fc:	00a4b823          	sd	a0,16(s1)
    80004300:	00013903          	ld	s2,0(sp)
    80004304:	00813483          	ld	s1,8(sp)
    80004308:	02010113          	addi	sp,sp,32
    8000430c:	00008067          	ret
    80004310:	0104b903          	ld	s2,16(s1)
    80004314:	fffff097          	auipc	ra,0xfffff
    80004318:	878080e7          	jalr	-1928(ra) # 80002b8c <mycpu>
    8000431c:	faa91ce3          	bne	s2,a0,800042d4 <acquire+0x58>
    80004320:	00001517          	auipc	a0,0x1
    80004324:	03050513          	addi	a0,a0,48 # 80005350 <digits+0x20>
    80004328:	fffff097          	auipc	ra,0xfffff
    8000432c:	224080e7          	jalr	548(ra) # 8000354c <panic>
    80004330:	00195913          	srli	s2,s2,0x1
    80004334:	fffff097          	auipc	ra,0xfffff
    80004338:	858080e7          	jalr	-1960(ra) # 80002b8c <mycpu>
    8000433c:	00197913          	andi	s2,s2,1
    80004340:	07252e23          	sw	s2,124(a0)
    80004344:	f75ff06f          	j	800042b8 <acquire+0x3c>

0000000080004348 <release>:
    80004348:	fe010113          	addi	sp,sp,-32
    8000434c:	00813823          	sd	s0,16(sp)
    80004350:	00113c23          	sd	ra,24(sp)
    80004354:	00913423          	sd	s1,8(sp)
    80004358:	01213023          	sd	s2,0(sp)
    8000435c:	02010413          	addi	s0,sp,32
    80004360:	00052783          	lw	a5,0(a0)
    80004364:	00079a63          	bnez	a5,80004378 <release+0x30>
    80004368:	00001517          	auipc	a0,0x1
    8000436c:	ff050513          	addi	a0,a0,-16 # 80005358 <digits+0x28>
    80004370:	fffff097          	auipc	ra,0xfffff
    80004374:	1dc080e7          	jalr	476(ra) # 8000354c <panic>
    80004378:	01053903          	ld	s2,16(a0)
    8000437c:	00050493          	mv	s1,a0
    80004380:	fffff097          	auipc	ra,0xfffff
    80004384:	80c080e7          	jalr	-2036(ra) # 80002b8c <mycpu>
    80004388:	fea910e3          	bne	s2,a0,80004368 <release+0x20>
    8000438c:	0004b823          	sd	zero,16(s1)
    80004390:	0ff0000f          	fence
    80004394:	0f50000f          	fence	iorw,ow
    80004398:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000439c:	ffffe097          	auipc	ra,0xffffe
    800043a0:	7f0080e7          	jalr	2032(ra) # 80002b8c <mycpu>
    800043a4:	100027f3          	csrr	a5,sstatus
    800043a8:	0027f793          	andi	a5,a5,2
    800043ac:	04079a63          	bnez	a5,80004400 <release+0xb8>
    800043b0:	07852783          	lw	a5,120(a0)
    800043b4:	02f05e63          	blez	a5,800043f0 <release+0xa8>
    800043b8:	fff7871b          	addiw	a4,a5,-1
    800043bc:	06e52c23          	sw	a4,120(a0)
    800043c0:	00071c63          	bnez	a4,800043d8 <release+0x90>
    800043c4:	07c52783          	lw	a5,124(a0)
    800043c8:	00078863          	beqz	a5,800043d8 <release+0x90>
    800043cc:	100027f3          	csrr	a5,sstatus
    800043d0:	0027e793          	ori	a5,a5,2
    800043d4:	10079073          	csrw	sstatus,a5
    800043d8:	01813083          	ld	ra,24(sp)
    800043dc:	01013403          	ld	s0,16(sp)
    800043e0:	00813483          	ld	s1,8(sp)
    800043e4:	00013903          	ld	s2,0(sp)
    800043e8:	02010113          	addi	sp,sp,32
    800043ec:	00008067          	ret
    800043f0:	00001517          	auipc	a0,0x1
    800043f4:	f8850513          	addi	a0,a0,-120 # 80005378 <digits+0x48>
    800043f8:	fffff097          	auipc	ra,0xfffff
    800043fc:	154080e7          	jalr	340(ra) # 8000354c <panic>
    80004400:	00001517          	auipc	a0,0x1
    80004404:	f6050513          	addi	a0,a0,-160 # 80005360 <digits+0x30>
    80004408:	fffff097          	auipc	ra,0xfffff
    8000440c:	144080e7          	jalr	324(ra) # 8000354c <panic>

0000000080004410 <holding>:
    80004410:	00052783          	lw	a5,0(a0)
    80004414:	00079663          	bnez	a5,80004420 <holding+0x10>
    80004418:	00000513          	li	a0,0
    8000441c:	00008067          	ret
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00913423          	sd	s1,8(sp)
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	02010413          	addi	s0,sp,32
    80004434:	01053483          	ld	s1,16(a0)
    80004438:	ffffe097          	auipc	ra,0xffffe
    8000443c:	754080e7          	jalr	1876(ra) # 80002b8c <mycpu>
    80004440:	01813083          	ld	ra,24(sp)
    80004444:	01013403          	ld	s0,16(sp)
    80004448:	40a48533          	sub	a0,s1,a0
    8000444c:	00153513          	seqz	a0,a0
    80004450:	00813483          	ld	s1,8(sp)
    80004454:	02010113          	addi	sp,sp,32
    80004458:	00008067          	ret

000000008000445c <push_off>:
    8000445c:	fe010113          	addi	sp,sp,-32
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00113c23          	sd	ra,24(sp)
    80004468:	00913423          	sd	s1,8(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	100024f3          	csrr	s1,sstatus
    80004474:	100027f3          	csrr	a5,sstatus
    80004478:	ffd7f793          	andi	a5,a5,-3
    8000447c:	10079073          	csrw	sstatus,a5
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	70c080e7          	jalr	1804(ra) # 80002b8c <mycpu>
    80004488:	07852783          	lw	a5,120(a0)
    8000448c:	02078663          	beqz	a5,800044b8 <push_off+0x5c>
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	6fc080e7          	jalr	1788(ra) # 80002b8c <mycpu>
    80004498:	07852783          	lw	a5,120(a0)
    8000449c:	01813083          	ld	ra,24(sp)
    800044a0:	01013403          	ld	s0,16(sp)
    800044a4:	0017879b          	addiw	a5,a5,1
    800044a8:	06f52c23          	sw	a5,120(a0)
    800044ac:	00813483          	ld	s1,8(sp)
    800044b0:	02010113          	addi	sp,sp,32
    800044b4:	00008067          	ret
    800044b8:	0014d493          	srli	s1,s1,0x1
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	6d0080e7          	jalr	1744(ra) # 80002b8c <mycpu>
    800044c4:	0014f493          	andi	s1,s1,1
    800044c8:	06952e23          	sw	s1,124(a0)
    800044cc:	fc5ff06f          	j	80004490 <push_off+0x34>

00000000800044d0 <pop_off>:
    800044d0:	ff010113          	addi	sp,sp,-16
    800044d4:	00813023          	sd	s0,0(sp)
    800044d8:	00113423          	sd	ra,8(sp)
    800044dc:	01010413          	addi	s0,sp,16
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	6ac080e7          	jalr	1708(ra) # 80002b8c <mycpu>
    800044e8:	100027f3          	csrr	a5,sstatus
    800044ec:	0027f793          	andi	a5,a5,2
    800044f0:	04079663          	bnez	a5,8000453c <pop_off+0x6c>
    800044f4:	07852783          	lw	a5,120(a0)
    800044f8:	02f05a63          	blez	a5,8000452c <pop_off+0x5c>
    800044fc:	fff7871b          	addiw	a4,a5,-1
    80004500:	06e52c23          	sw	a4,120(a0)
    80004504:	00071c63          	bnez	a4,8000451c <pop_off+0x4c>
    80004508:	07c52783          	lw	a5,124(a0)
    8000450c:	00078863          	beqz	a5,8000451c <pop_off+0x4c>
    80004510:	100027f3          	csrr	a5,sstatus
    80004514:	0027e793          	ori	a5,a5,2
    80004518:	10079073          	csrw	sstatus,a5
    8000451c:	00813083          	ld	ra,8(sp)
    80004520:	00013403          	ld	s0,0(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret
    8000452c:	00001517          	auipc	a0,0x1
    80004530:	e4c50513          	addi	a0,a0,-436 # 80005378 <digits+0x48>
    80004534:	fffff097          	auipc	ra,0xfffff
    80004538:	018080e7          	jalr	24(ra) # 8000354c <panic>
    8000453c:	00001517          	auipc	a0,0x1
    80004540:	e2450513          	addi	a0,a0,-476 # 80005360 <digits+0x30>
    80004544:	fffff097          	auipc	ra,0xfffff
    80004548:	008080e7          	jalr	8(ra) # 8000354c <panic>

000000008000454c <push_on>:
    8000454c:	fe010113          	addi	sp,sp,-32
    80004550:	00813823          	sd	s0,16(sp)
    80004554:	00113c23          	sd	ra,24(sp)
    80004558:	00913423          	sd	s1,8(sp)
    8000455c:	02010413          	addi	s0,sp,32
    80004560:	100024f3          	csrr	s1,sstatus
    80004564:	100027f3          	csrr	a5,sstatus
    80004568:	0027e793          	ori	a5,a5,2
    8000456c:	10079073          	csrw	sstatus,a5
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	61c080e7          	jalr	1564(ra) # 80002b8c <mycpu>
    80004578:	07852783          	lw	a5,120(a0)
    8000457c:	02078663          	beqz	a5,800045a8 <push_on+0x5c>
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	60c080e7          	jalr	1548(ra) # 80002b8c <mycpu>
    80004588:	07852783          	lw	a5,120(a0)
    8000458c:	01813083          	ld	ra,24(sp)
    80004590:	01013403          	ld	s0,16(sp)
    80004594:	0017879b          	addiw	a5,a5,1
    80004598:	06f52c23          	sw	a5,120(a0)
    8000459c:	00813483          	ld	s1,8(sp)
    800045a0:	02010113          	addi	sp,sp,32
    800045a4:	00008067          	ret
    800045a8:	0014d493          	srli	s1,s1,0x1
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	5e0080e7          	jalr	1504(ra) # 80002b8c <mycpu>
    800045b4:	0014f493          	andi	s1,s1,1
    800045b8:	06952e23          	sw	s1,124(a0)
    800045bc:	fc5ff06f          	j	80004580 <push_on+0x34>

00000000800045c0 <pop_on>:
    800045c0:	ff010113          	addi	sp,sp,-16
    800045c4:	00813023          	sd	s0,0(sp)
    800045c8:	00113423          	sd	ra,8(sp)
    800045cc:	01010413          	addi	s0,sp,16
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	5bc080e7          	jalr	1468(ra) # 80002b8c <mycpu>
    800045d8:	100027f3          	csrr	a5,sstatus
    800045dc:	0027f793          	andi	a5,a5,2
    800045e0:	04078463          	beqz	a5,80004628 <pop_on+0x68>
    800045e4:	07852783          	lw	a5,120(a0)
    800045e8:	02f05863          	blez	a5,80004618 <pop_on+0x58>
    800045ec:	fff7879b          	addiw	a5,a5,-1
    800045f0:	06f52c23          	sw	a5,120(a0)
    800045f4:	07853783          	ld	a5,120(a0)
    800045f8:	00079863          	bnez	a5,80004608 <pop_on+0x48>
    800045fc:	100027f3          	csrr	a5,sstatus
    80004600:	ffd7f793          	andi	a5,a5,-3
    80004604:	10079073          	csrw	sstatus,a5
    80004608:	00813083          	ld	ra,8(sp)
    8000460c:	00013403          	ld	s0,0(sp)
    80004610:	01010113          	addi	sp,sp,16
    80004614:	00008067          	ret
    80004618:	00001517          	auipc	a0,0x1
    8000461c:	d8850513          	addi	a0,a0,-632 # 800053a0 <digits+0x70>
    80004620:	fffff097          	auipc	ra,0xfffff
    80004624:	f2c080e7          	jalr	-212(ra) # 8000354c <panic>
    80004628:	00001517          	auipc	a0,0x1
    8000462c:	d5850513          	addi	a0,a0,-680 # 80005380 <digits+0x50>
    80004630:	fffff097          	auipc	ra,0xfffff
    80004634:	f1c080e7          	jalr	-228(ra) # 8000354c <panic>

0000000080004638 <__memset>:
    80004638:	ff010113          	addi	sp,sp,-16
    8000463c:	00813423          	sd	s0,8(sp)
    80004640:	01010413          	addi	s0,sp,16
    80004644:	1a060e63          	beqz	a2,80004800 <__memset+0x1c8>
    80004648:	40a007b3          	neg	a5,a0
    8000464c:	0077f793          	andi	a5,a5,7
    80004650:	00778693          	addi	a3,a5,7
    80004654:	00b00813          	li	a6,11
    80004658:	0ff5f593          	andi	a1,a1,255
    8000465c:	fff6071b          	addiw	a4,a2,-1
    80004660:	1b06e663          	bltu	a3,a6,8000480c <__memset+0x1d4>
    80004664:	1cd76463          	bltu	a4,a3,8000482c <__memset+0x1f4>
    80004668:	1a078e63          	beqz	a5,80004824 <__memset+0x1ec>
    8000466c:	00b50023          	sb	a1,0(a0)
    80004670:	00100713          	li	a4,1
    80004674:	1ae78463          	beq	a5,a4,8000481c <__memset+0x1e4>
    80004678:	00b500a3          	sb	a1,1(a0)
    8000467c:	00200713          	li	a4,2
    80004680:	1ae78a63          	beq	a5,a4,80004834 <__memset+0x1fc>
    80004684:	00b50123          	sb	a1,2(a0)
    80004688:	00300713          	li	a4,3
    8000468c:	18e78463          	beq	a5,a4,80004814 <__memset+0x1dc>
    80004690:	00b501a3          	sb	a1,3(a0)
    80004694:	00400713          	li	a4,4
    80004698:	1ae78263          	beq	a5,a4,8000483c <__memset+0x204>
    8000469c:	00b50223          	sb	a1,4(a0)
    800046a0:	00500713          	li	a4,5
    800046a4:	1ae78063          	beq	a5,a4,80004844 <__memset+0x20c>
    800046a8:	00b502a3          	sb	a1,5(a0)
    800046ac:	00700713          	li	a4,7
    800046b0:	18e79e63          	bne	a5,a4,8000484c <__memset+0x214>
    800046b4:	00b50323          	sb	a1,6(a0)
    800046b8:	00700e93          	li	t4,7
    800046bc:	00859713          	slli	a4,a1,0x8
    800046c0:	00e5e733          	or	a4,a1,a4
    800046c4:	01059e13          	slli	t3,a1,0x10
    800046c8:	01c76e33          	or	t3,a4,t3
    800046cc:	01859313          	slli	t1,a1,0x18
    800046d0:	006e6333          	or	t1,t3,t1
    800046d4:	02059893          	slli	a7,a1,0x20
    800046d8:	40f60e3b          	subw	t3,a2,a5
    800046dc:	011368b3          	or	a7,t1,a7
    800046e0:	02859813          	slli	a6,a1,0x28
    800046e4:	0108e833          	or	a6,a7,a6
    800046e8:	03059693          	slli	a3,a1,0x30
    800046ec:	003e589b          	srliw	a7,t3,0x3
    800046f0:	00d866b3          	or	a3,a6,a3
    800046f4:	03859713          	slli	a4,a1,0x38
    800046f8:	00389813          	slli	a6,a7,0x3
    800046fc:	00f507b3          	add	a5,a0,a5
    80004700:	00e6e733          	or	a4,a3,a4
    80004704:	000e089b          	sext.w	a7,t3
    80004708:	00f806b3          	add	a3,a6,a5
    8000470c:	00e7b023          	sd	a4,0(a5)
    80004710:	00878793          	addi	a5,a5,8
    80004714:	fed79ce3          	bne	a5,a3,8000470c <__memset+0xd4>
    80004718:	ff8e7793          	andi	a5,t3,-8
    8000471c:	0007871b          	sext.w	a4,a5
    80004720:	01d787bb          	addw	a5,a5,t4
    80004724:	0ce88e63          	beq	a7,a4,80004800 <__memset+0x1c8>
    80004728:	00f50733          	add	a4,a0,a5
    8000472c:	00b70023          	sb	a1,0(a4)
    80004730:	0017871b          	addiw	a4,a5,1
    80004734:	0cc77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004738:	00e50733          	add	a4,a0,a4
    8000473c:	00b70023          	sb	a1,0(a4)
    80004740:	0027871b          	addiw	a4,a5,2
    80004744:	0ac77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004748:	00e50733          	add	a4,a0,a4
    8000474c:	00b70023          	sb	a1,0(a4)
    80004750:	0037871b          	addiw	a4,a5,3
    80004754:	0ac77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004758:	00e50733          	add	a4,a0,a4
    8000475c:	00b70023          	sb	a1,0(a4)
    80004760:	0047871b          	addiw	a4,a5,4
    80004764:	08c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004768:	00e50733          	add	a4,a0,a4
    8000476c:	00b70023          	sb	a1,0(a4)
    80004770:	0057871b          	addiw	a4,a5,5
    80004774:	08c77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004778:	00e50733          	add	a4,a0,a4
    8000477c:	00b70023          	sb	a1,0(a4)
    80004780:	0067871b          	addiw	a4,a5,6
    80004784:	06c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004788:	00e50733          	add	a4,a0,a4
    8000478c:	00b70023          	sb	a1,0(a4)
    80004790:	0077871b          	addiw	a4,a5,7
    80004794:	06c77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004798:	00e50733          	add	a4,a0,a4
    8000479c:	00b70023          	sb	a1,0(a4)
    800047a0:	0087871b          	addiw	a4,a5,8
    800047a4:	04c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047a8:	00e50733          	add	a4,a0,a4
    800047ac:	00b70023          	sb	a1,0(a4)
    800047b0:	0097871b          	addiw	a4,a5,9
    800047b4:	04c77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047b8:	00e50733          	add	a4,a0,a4
    800047bc:	00b70023          	sb	a1,0(a4)
    800047c0:	00a7871b          	addiw	a4,a5,10
    800047c4:	02c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047c8:	00e50733          	add	a4,a0,a4
    800047cc:	00b70023          	sb	a1,0(a4)
    800047d0:	00b7871b          	addiw	a4,a5,11
    800047d4:	02c77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047d8:	00e50733          	add	a4,a0,a4
    800047dc:	00b70023          	sb	a1,0(a4)
    800047e0:	00c7871b          	addiw	a4,a5,12
    800047e4:	00c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047e8:	00e50733          	add	a4,a0,a4
    800047ec:	00b70023          	sb	a1,0(a4)
    800047f0:	00d7879b          	addiw	a5,a5,13
    800047f4:	00c7f663          	bgeu	a5,a2,80004800 <__memset+0x1c8>
    800047f8:	00f507b3          	add	a5,a0,a5
    800047fc:	00b78023          	sb	a1,0(a5)
    80004800:	00813403          	ld	s0,8(sp)
    80004804:	01010113          	addi	sp,sp,16
    80004808:	00008067          	ret
    8000480c:	00b00693          	li	a3,11
    80004810:	e55ff06f          	j	80004664 <__memset+0x2c>
    80004814:	00300e93          	li	t4,3
    80004818:	ea5ff06f          	j	800046bc <__memset+0x84>
    8000481c:	00100e93          	li	t4,1
    80004820:	e9dff06f          	j	800046bc <__memset+0x84>
    80004824:	00000e93          	li	t4,0
    80004828:	e95ff06f          	j	800046bc <__memset+0x84>
    8000482c:	00000793          	li	a5,0
    80004830:	ef9ff06f          	j	80004728 <__memset+0xf0>
    80004834:	00200e93          	li	t4,2
    80004838:	e85ff06f          	j	800046bc <__memset+0x84>
    8000483c:	00400e93          	li	t4,4
    80004840:	e7dff06f          	j	800046bc <__memset+0x84>
    80004844:	00500e93          	li	t4,5
    80004848:	e75ff06f          	j	800046bc <__memset+0x84>
    8000484c:	00600e93          	li	t4,6
    80004850:	e6dff06f          	j	800046bc <__memset+0x84>

0000000080004854 <__memmove>:
    80004854:	ff010113          	addi	sp,sp,-16
    80004858:	00813423          	sd	s0,8(sp)
    8000485c:	01010413          	addi	s0,sp,16
    80004860:	0e060863          	beqz	a2,80004950 <__memmove+0xfc>
    80004864:	fff6069b          	addiw	a3,a2,-1
    80004868:	0006881b          	sext.w	a6,a3
    8000486c:	0ea5e863          	bltu	a1,a0,8000495c <__memmove+0x108>
    80004870:	00758713          	addi	a4,a1,7
    80004874:	00a5e7b3          	or	a5,a1,a0
    80004878:	40a70733          	sub	a4,a4,a0
    8000487c:	0077f793          	andi	a5,a5,7
    80004880:	00f73713          	sltiu	a4,a4,15
    80004884:	00174713          	xori	a4,a4,1
    80004888:	0017b793          	seqz	a5,a5
    8000488c:	00e7f7b3          	and	a5,a5,a4
    80004890:	10078863          	beqz	a5,800049a0 <__memmove+0x14c>
    80004894:	00900793          	li	a5,9
    80004898:	1107f463          	bgeu	a5,a6,800049a0 <__memmove+0x14c>
    8000489c:	0036581b          	srliw	a6,a2,0x3
    800048a0:	fff8081b          	addiw	a6,a6,-1
    800048a4:	02081813          	slli	a6,a6,0x20
    800048a8:	01d85893          	srli	a7,a6,0x1d
    800048ac:	00858813          	addi	a6,a1,8
    800048b0:	00058793          	mv	a5,a1
    800048b4:	00050713          	mv	a4,a0
    800048b8:	01088833          	add	a6,a7,a6
    800048bc:	0007b883          	ld	a7,0(a5)
    800048c0:	00878793          	addi	a5,a5,8
    800048c4:	00870713          	addi	a4,a4,8
    800048c8:	ff173c23          	sd	a7,-8(a4)
    800048cc:	ff0798e3          	bne	a5,a6,800048bc <__memmove+0x68>
    800048d0:	ff867713          	andi	a4,a2,-8
    800048d4:	02071793          	slli	a5,a4,0x20
    800048d8:	0207d793          	srli	a5,a5,0x20
    800048dc:	00f585b3          	add	a1,a1,a5
    800048e0:	40e686bb          	subw	a3,a3,a4
    800048e4:	00f507b3          	add	a5,a0,a5
    800048e8:	06e60463          	beq	a2,a4,80004950 <__memmove+0xfc>
    800048ec:	0005c703          	lbu	a4,0(a1)
    800048f0:	00e78023          	sb	a4,0(a5)
    800048f4:	04068e63          	beqz	a3,80004950 <__memmove+0xfc>
    800048f8:	0015c603          	lbu	a2,1(a1)
    800048fc:	00100713          	li	a4,1
    80004900:	00c780a3          	sb	a2,1(a5)
    80004904:	04e68663          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004908:	0025c603          	lbu	a2,2(a1)
    8000490c:	00200713          	li	a4,2
    80004910:	00c78123          	sb	a2,2(a5)
    80004914:	02e68e63          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004918:	0035c603          	lbu	a2,3(a1)
    8000491c:	00300713          	li	a4,3
    80004920:	00c781a3          	sb	a2,3(a5)
    80004924:	02e68663          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004928:	0045c603          	lbu	a2,4(a1)
    8000492c:	00400713          	li	a4,4
    80004930:	00c78223          	sb	a2,4(a5)
    80004934:	00e68e63          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004938:	0055c603          	lbu	a2,5(a1)
    8000493c:	00500713          	li	a4,5
    80004940:	00c782a3          	sb	a2,5(a5)
    80004944:	00e68663          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004948:	0065c703          	lbu	a4,6(a1)
    8000494c:	00e78323          	sb	a4,6(a5)
    80004950:	00813403          	ld	s0,8(sp)
    80004954:	01010113          	addi	sp,sp,16
    80004958:	00008067          	ret
    8000495c:	02061713          	slli	a4,a2,0x20
    80004960:	02075713          	srli	a4,a4,0x20
    80004964:	00e587b3          	add	a5,a1,a4
    80004968:	f0f574e3          	bgeu	a0,a5,80004870 <__memmove+0x1c>
    8000496c:	02069613          	slli	a2,a3,0x20
    80004970:	02065613          	srli	a2,a2,0x20
    80004974:	fff64613          	not	a2,a2
    80004978:	00e50733          	add	a4,a0,a4
    8000497c:	00c78633          	add	a2,a5,a2
    80004980:	fff7c683          	lbu	a3,-1(a5)
    80004984:	fff78793          	addi	a5,a5,-1
    80004988:	fff70713          	addi	a4,a4,-1
    8000498c:	00d70023          	sb	a3,0(a4)
    80004990:	fec798e3          	bne	a5,a2,80004980 <__memmove+0x12c>
    80004994:	00813403          	ld	s0,8(sp)
    80004998:	01010113          	addi	sp,sp,16
    8000499c:	00008067          	ret
    800049a0:	02069713          	slli	a4,a3,0x20
    800049a4:	02075713          	srli	a4,a4,0x20
    800049a8:	00170713          	addi	a4,a4,1
    800049ac:	00e50733          	add	a4,a0,a4
    800049b0:	00050793          	mv	a5,a0
    800049b4:	0005c683          	lbu	a3,0(a1)
    800049b8:	00178793          	addi	a5,a5,1
    800049bc:	00158593          	addi	a1,a1,1
    800049c0:	fed78fa3          	sb	a3,-1(a5)
    800049c4:	fee798e3          	bne	a5,a4,800049b4 <__memmove+0x160>
    800049c8:	f89ff06f          	j	80004950 <__memmove+0xfc>

00000000800049cc <__mem_free>:
    800049cc:	ff010113          	addi	sp,sp,-16
    800049d0:	00813423          	sd	s0,8(sp)
    800049d4:	01010413          	addi	s0,sp,16
    800049d8:	00001597          	auipc	a1,0x1
    800049dc:	31058593          	addi	a1,a1,784 # 80005ce8 <freep>
    800049e0:	0005b783          	ld	a5,0(a1)
    800049e4:	ff050693          	addi	a3,a0,-16
    800049e8:	0007b703          	ld	a4,0(a5)
    800049ec:	00d7fc63          	bgeu	a5,a3,80004a04 <__mem_free+0x38>
    800049f0:	00e6ee63          	bltu	a3,a4,80004a0c <__mem_free+0x40>
    800049f4:	00e7fc63          	bgeu	a5,a4,80004a0c <__mem_free+0x40>
    800049f8:	00070793          	mv	a5,a4
    800049fc:	0007b703          	ld	a4,0(a5)
    80004a00:	fed7e8e3          	bltu	a5,a3,800049f0 <__mem_free+0x24>
    80004a04:	fee7eae3          	bltu	a5,a4,800049f8 <__mem_free+0x2c>
    80004a08:	fee6f8e3          	bgeu	a3,a4,800049f8 <__mem_free+0x2c>
    80004a0c:	ff852803          	lw	a6,-8(a0)
    80004a10:	02081613          	slli	a2,a6,0x20
    80004a14:	01c65613          	srli	a2,a2,0x1c
    80004a18:	00c68633          	add	a2,a3,a2
    80004a1c:	02c70a63          	beq	a4,a2,80004a50 <__mem_free+0x84>
    80004a20:	fee53823          	sd	a4,-16(a0)
    80004a24:	0087a503          	lw	a0,8(a5)
    80004a28:	02051613          	slli	a2,a0,0x20
    80004a2c:	01c65613          	srli	a2,a2,0x1c
    80004a30:	00c78633          	add	a2,a5,a2
    80004a34:	04c68263          	beq	a3,a2,80004a78 <__mem_free+0xac>
    80004a38:	00813403          	ld	s0,8(sp)
    80004a3c:	00d7b023          	sd	a3,0(a5)
    80004a40:	00f5b023          	sd	a5,0(a1)
    80004a44:	00000513          	li	a0,0
    80004a48:	01010113          	addi	sp,sp,16
    80004a4c:	00008067          	ret
    80004a50:	00872603          	lw	a2,8(a4)
    80004a54:	00073703          	ld	a4,0(a4)
    80004a58:	0106083b          	addw	a6,a2,a6
    80004a5c:	ff052c23          	sw	a6,-8(a0)
    80004a60:	fee53823          	sd	a4,-16(a0)
    80004a64:	0087a503          	lw	a0,8(a5)
    80004a68:	02051613          	slli	a2,a0,0x20
    80004a6c:	01c65613          	srli	a2,a2,0x1c
    80004a70:	00c78633          	add	a2,a5,a2
    80004a74:	fcc692e3          	bne	a3,a2,80004a38 <__mem_free+0x6c>
    80004a78:	00813403          	ld	s0,8(sp)
    80004a7c:	0105053b          	addw	a0,a0,a6
    80004a80:	00a7a423          	sw	a0,8(a5)
    80004a84:	00e7b023          	sd	a4,0(a5)
    80004a88:	00f5b023          	sd	a5,0(a1)
    80004a8c:	00000513          	li	a0,0
    80004a90:	01010113          	addi	sp,sp,16
    80004a94:	00008067          	ret

0000000080004a98 <__mem_alloc>:
    80004a98:	fc010113          	addi	sp,sp,-64
    80004a9c:	02813823          	sd	s0,48(sp)
    80004aa0:	02913423          	sd	s1,40(sp)
    80004aa4:	03213023          	sd	s2,32(sp)
    80004aa8:	01513423          	sd	s5,8(sp)
    80004aac:	02113c23          	sd	ra,56(sp)
    80004ab0:	01313c23          	sd	s3,24(sp)
    80004ab4:	01413823          	sd	s4,16(sp)
    80004ab8:	01613023          	sd	s6,0(sp)
    80004abc:	04010413          	addi	s0,sp,64
    80004ac0:	00001a97          	auipc	s5,0x1
    80004ac4:	228a8a93          	addi	s5,s5,552 # 80005ce8 <freep>
    80004ac8:	00f50913          	addi	s2,a0,15
    80004acc:	000ab683          	ld	a3,0(s5)
    80004ad0:	00495913          	srli	s2,s2,0x4
    80004ad4:	0019049b          	addiw	s1,s2,1
    80004ad8:	00048913          	mv	s2,s1
    80004adc:	0c068c63          	beqz	a3,80004bb4 <__mem_alloc+0x11c>
    80004ae0:	0006b503          	ld	a0,0(a3)
    80004ae4:	00852703          	lw	a4,8(a0)
    80004ae8:	10977063          	bgeu	a4,s1,80004be8 <__mem_alloc+0x150>
    80004aec:	000017b7          	lui	a5,0x1
    80004af0:	0009099b          	sext.w	s3,s2
    80004af4:	0af4e863          	bltu	s1,a5,80004ba4 <__mem_alloc+0x10c>
    80004af8:	02099a13          	slli	s4,s3,0x20
    80004afc:	01ca5a13          	srli	s4,s4,0x1c
    80004b00:	fff00b13          	li	s6,-1
    80004b04:	0100006f          	j	80004b14 <__mem_alloc+0x7c>
    80004b08:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80004b0c:	00852703          	lw	a4,8(a0)
    80004b10:	04977463          	bgeu	a4,s1,80004b58 <__mem_alloc+0xc0>
    80004b14:	00050793          	mv	a5,a0
    80004b18:	fea698e3          	bne	a3,a0,80004b08 <__mem_alloc+0x70>
    80004b1c:	000a0513          	mv	a0,s4
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	1f0080e7          	jalr	496(ra) # 80004d10 <kvmincrease>
    80004b28:	00050793          	mv	a5,a0
    80004b2c:	01050513          	addi	a0,a0,16
    80004b30:	07678e63          	beq	a5,s6,80004bac <__mem_alloc+0x114>
    80004b34:	0137a423          	sw	s3,8(a5)
    80004b38:	00000097          	auipc	ra,0x0
    80004b3c:	e94080e7          	jalr	-364(ra) # 800049cc <__mem_free>
    80004b40:	000ab783          	ld	a5,0(s5)
    80004b44:	06078463          	beqz	a5,80004bac <__mem_alloc+0x114>
    80004b48:	0007b503          	ld	a0,0(a5)
    80004b4c:	00078693          	mv	a3,a5
    80004b50:	00852703          	lw	a4,8(a0)
    80004b54:	fc9760e3          	bltu	a4,s1,80004b14 <__mem_alloc+0x7c>
    80004b58:	08e48263          	beq	s1,a4,80004bdc <__mem_alloc+0x144>
    80004b5c:	4127073b          	subw	a4,a4,s2
    80004b60:	02071693          	slli	a3,a4,0x20
    80004b64:	01c6d693          	srli	a3,a3,0x1c
    80004b68:	00e52423          	sw	a4,8(a0)
    80004b6c:	00d50533          	add	a0,a0,a3
    80004b70:	01252423          	sw	s2,8(a0)
    80004b74:	00fab023          	sd	a5,0(s5)
    80004b78:	01050513          	addi	a0,a0,16
    80004b7c:	03813083          	ld	ra,56(sp)
    80004b80:	03013403          	ld	s0,48(sp)
    80004b84:	02813483          	ld	s1,40(sp)
    80004b88:	02013903          	ld	s2,32(sp)
    80004b8c:	01813983          	ld	s3,24(sp)
    80004b90:	01013a03          	ld	s4,16(sp)
    80004b94:	00813a83          	ld	s5,8(sp)
    80004b98:	00013b03          	ld	s6,0(sp)
    80004b9c:	04010113          	addi	sp,sp,64
    80004ba0:	00008067          	ret
    80004ba4:	000019b7          	lui	s3,0x1
    80004ba8:	f51ff06f          	j	80004af8 <__mem_alloc+0x60>
    80004bac:	00000513          	li	a0,0
    80004bb0:	fcdff06f          	j	80004b7c <__mem_alloc+0xe4>
    80004bb4:	00002797          	auipc	a5,0x2
    80004bb8:	3dc78793          	addi	a5,a5,988 # 80006f90 <base>
    80004bbc:	00078513          	mv	a0,a5
    80004bc0:	00fab023          	sd	a5,0(s5)
    80004bc4:	00f7b023          	sd	a5,0(a5)
    80004bc8:	00000713          	li	a4,0
    80004bcc:	00002797          	auipc	a5,0x2
    80004bd0:	3c07a623          	sw	zero,972(a5) # 80006f98 <base+0x8>
    80004bd4:	00050693          	mv	a3,a0
    80004bd8:	f11ff06f          	j	80004ae8 <__mem_alloc+0x50>
    80004bdc:	00053703          	ld	a4,0(a0)
    80004be0:	00e7b023          	sd	a4,0(a5)
    80004be4:	f91ff06f          	j	80004b74 <__mem_alloc+0xdc>
    80004be8:	00068793          	mv	a5,a3
    80004bec:	f6dff06f          	j	80004b58 <__mem_alloc+0xc0>

0000000080004bf0 <__putc>:
    80004bf0:	fe010113          	addi	sp,sp,-32
    80004bf4:	00813823          	sd	s0,16(sp)
    80004bf8:	00113c23          	sd	ra,24(sp)
    80004bfc:	02010413          	addi	s0,sp,32
    80004c00:	00050793          	mv	a5,a0
    80004c04:	fef40593          	addi	a1,s0,-17
    80004c08:	00100613          	li	a2,1
    80004c0c:	00000513          	li	a0,0
    80004c10:	fef407a3          	sb	a5,-17(s0)
    80004c14:	fffff097          	auipc	ra,0xfffff
    80004c18:	918080e7          	jalr	-1768(ra) # 8000352c <console_write>
    80004c1c:	01813083          	ld	ra,24(sp)
    80004c20:	01013403          	ld	s0,16(sp)
    80004c24:	02010113          	addi	sp,sp,32
    80004c28:	00008067          	ret

0000000080004c2c <__getc>:
    80004c2c:	fe010113          	addi	sp,sp,-32
    80004c30:	00813823          	sd	s0,16(sp)
    80004c34:	00113c23          	sd	ra,24(sp)
    80004c38:	02010413          	addi	s0,sp,32
    80004c3c:	fe840593          	addi	a1,s0,-24
    80004c40:	00100613          	li	a2,1
    80004c44:	00000513          	li	a0,0
    80004c48:	fffff097          	auipc	ra,0xfffff
    80004c4c:	8c4080e7          	jalr	-1852(ra) # 8000350c <console_read>
    80004c50:	fe844503          	lbu	a0,-24(s0)
    80004c54:	01813083          	ld	ra,24(sp)
    80004c58:	01013403          	ld	s0,16(sp)
    80004c5c:	02010113          	addi	sp,sp,32
    80004c60:	00008067          	ret

0000000080004c64 <console_handler>:
    80004c64:	fe010113          	addi	sp,sp,-32
    80004c68:	00813823          	sd	s0,16(sp)
    80004c6c:	00113c23          	sd	ra,24(sp)
    80004c70:	00913423          	sd	s1,8(sp)
    80004c74:	02010413          	addi	s0,sp,32
    80004c78:	14202773          	csrr	a4,scause
    80004c7c:	100027f3          	csrr	a5,sstatus
    80004c80:	0027f793          	andi	a5,a5,2
    80004c84:	06079e63          	bnez	a5,80004d00 <console_handler+0x9c>
    80004c88:	00074c63          	bltz	a4,80004ca0 <console_handler+0x3c>
    80004c8c:	01813083          	ld	ra,24(sp)
    80004c90:	01013403          	ld	s0,16(sp)
    80004c94:	00813483          	ld	s1,8(sp)
    80004c98:	02010113          	addi	sp,sp,32
    80004c9c:	00008067          	ret
    80004ca0:	0ff77713          	andi	a4,a4,255
    80004ca4:	00900793          	li	a5,9
    80004ca8:	fef712e3          	bne	a4,a5,80004c8c <console_handler+0x28>
    80004cac:	ffffe097          	auipc	ra,0xffffe
    80004cb0:	4b8080e7          	jalr	1208(ra) # 80003164 <plic_claim>
    80004cb4:	00a00793          	li	a5,10
    80004cb8:	00050493          	mv	s1,a0
    80004cbc:	02f50c63          	beq	a0,a5,80004cf4 <console_handler+0x90>
    80004cc0:	fc0506e3          	beqz	a0,80004c8c <console_handler+0x28>
    80004cc4:	00050593          	mv	a1,a0
    80004cc8:	00000517          	auipc	a0,0x0
    80004ccc:	5e050513          	addi	a0,a0,1504 # 800052a8 <_ZZ12printIntegermE6digits+0xe0>
    80004cd0:	fffff097          	auipc	ra,0xfffff
    80004cd4:	8d8080e7          	jalr	-1832(ra) # 800035a8 <__printf>
    80004cd8:	01013403          	ld	s0,16(sp)
    80004cdc:	01813083          	ld	ra,24(sp)
    80004ce0:	00048513          	mv	a0,s1
    80004ce4:	00813483          	ld	s1,8(sp)
    80004ce8:	02010113          	addi	sp,sp,32
    80004cec:	ffffe317          	auipc	t1,0xffffe
    80004cf0:	4b030067          	jr	1200(t1) # 8000319c <plic_complete>
    80004cf4:	fffff097          	auipc	ra,0xfffff
    80004cf8:	1bc080e7          	jalr	444(ra) # 80003eb0 <uartintr>
    80004cfc:	fddff06f          	j	80004cd8 <console_handler+0x74>
    80004d00:	00000517          	auipc	a0,0x0
    80004d04:	6a850513          	addi	a0,a0,1704 # 800053a8 <digits+0x78>
    80004d08:	fffff097          	auipc	ra,0xfffff
    80004d0c:	844080e7          	jalr	-1980(ra) # 8000354c <panic>

0000000080004d10 <kvmincrease>:
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	01213023          	sd	s2,0(sp)
    80004d18:	00001937          	lui	s2,0x1
    80004d1c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004d20:	00813823          	sd	s0,16(sp)
    80004d24:	00113c23          	sd	ra,24(sp)
    80004d28:	00913423          	sd	s1,8(sp)
    80004d2c:	02010413          	addi	s0,sp,32
    80004d30:	01250933          	add	s2,a0,s2
    80004d34:	00c95913          	srli	s2,s2,0xc
    80004d38:	02090863          	beqz	s2,80004d68 <kvmincrease+0x58>
    80004d3c:	00000493          	li	s1,0
    80004d40:	00148493          	addi	s1,s1,1
    80004d44:	fffff097          	auipc	ra,0xfffff
    80004d48:	4bc080e7          	jalr	1212(ra) # 80004200 <kalloc>
    80004d4c:	fe991ae3          	bne	s2,s1,80004d40 <kvmincrease+0x30>
    80004d50:	01813083          	ld	ra,24(sp)
    80004d54:	01013403          	ld	s0,16(sp)
    80004d58:	00813483          	ld	s1,8(sp)
    80004d5c:	00013903          	ld	s2,0(sp)
    80004d60:	02010113          	addi	sp,sp,32
    80004d64:	00008067          	ret
    80004d68:	01813083          	ld	ra,24(sp)
    80004d6c:	01013403          	ld	s0,16(sp)
    80004d70:	00813483          	ld	s1,8(sp)
    80004d74:	00013903          	ld	s2,0(sp)
    80004d78:	00000513          	li	a0,0
    80004d7c:	02010113          	addi	sp,sp,32
    80004d80:	00008067          	ret
	...
