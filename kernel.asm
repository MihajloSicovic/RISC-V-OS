
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	59013103          	ld	sp,1424(sp) # 8000b590 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	548060ef          	jal	ra,80006564 <start>

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
    80001084:	4c0010ef          	jal	ra,80002544 <_ZN5Riscv14handleSyscallsEv>

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

0000000080001208 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
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

00000000800012ec <_Z13thread_createPP3TCBPFvPvES2_>:

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
    80001318:	2ec7c783          	lbu	a5,748(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000131c:	04079263          	bnez	a5,80001360 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001320:	0000a797          	auipc	a5,0xa
    80001324:	2687b783          	ld	a5,616(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001328:	0007b783          	ld	a5,0(a5)
    8000132c:	0000a717          	auipc	a4,0xa
    80001330:	2dc70713          	addi	a4,a4,732 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001334:	00f73023          	sd	a5,0(a4)
    80001338:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000133c:	0000a717          	auipc	a4,0xa
    80001340:	26c73703          	ld	a4,620(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001344:	00073703          	ld	a4,0(a4)
    80001348:	40f70733          	sub	a4,a4,a5
    8000134c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001350:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001354:	00100793          	li	a5,1
    80001358:	0000a717          	auipc	a4,0xa
    8000135c:	2af70423          	sb	a5,680(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    void* sp = MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    80001360:	000085b7          	lui	a1,0x8
    80001364:	0000a517          	auipc	a0,0xa
    80001368:	2a450513          	addi	a0,a0,676 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000136c:	00002097          	auipc	ra,0x2
    80001370:	890080e7          	jalr	-1904(ra) # 80002bfc <_ZN15MemoryAllocator9mem_allocEm>
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

00000000800013b0 <_Z11thread_exitv>:

int thread_exit() {
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00813423          	sd	s0,8(sp)
    800013b8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800013bc:	01200513          	li	a0,18
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

00000000800013d8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800013e4:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    800013e8:	00000073          	ecall
}
    800013ec:	00813403          	ld	s0,8(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>:

int sem_open(sem_t* handle, unsigned init) {
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00813423          	sd	s0,8(sp)
    80001400:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" ((uint64)init));
    80001404:	02059593          	slli	a1,a1,0x20
    80001408:	0205d593          	srli	a1,a1,0x20
    8000140c:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" ((uint64)handle));
    80001410:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001414:	02100513          	li	a0,33
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

0000000080001430 <_Z9sem_closePN3ABI9SemaphoreE>:

int sem_close(sem_t handle) {
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000143c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001440:	02200513          	li	a0,34
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

000000008000145c <_Z8sem_waitPN3ABI9SemaphoreE>:

int sem_wait(sem_t id) {
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00813423          	sd	s0,8(sp)
    80001464:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001468:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000146c:	02300513          	li	a0,35
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

0000000080001488 <_Z10sem_signalPN3ABI9SemaphoreE>:

int sem_signal(sem_t id) {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00813423          	sd	s0,8(sp)
    80001490:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001494:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001498:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    8000149c:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800014a0:	00050513          	mv	a0,a0
    return result;
}
    800014a4:	0005051b          	sext.w	a0,a0
    800014a8:	00813403          	ld	s0,8(sp)
    800014ac:	01010113          	addi	sp,sp,16
    800014b0:	00008067          	ret

00000000800014b4 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    800014b4:	ff010113          	addi	sp,sp,-16
    800014b8:	00813423          	sd	s0,8(sp)
    800014bc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    800014c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    800014c4:	03100513          	li	a0,49
    __asm__ volatile ("ecall");
    800014c8:	00000073          	ecall

    int result;
    __asm__ volatile("mv %0, a0" : "=r" (result));
    800014cc:	00050513          	mv	a0,a0
    return result;
}
    800014d0:	0005051b          	sext.w	a0,a0
    800014d4:	00813403          	ld	s0,8(sp)
    800014d8:	01010113          	addi	sp,sp,16
    800014dc:	00008067          	ret

00000000800014e0 <_Z4getcv>:

char getc() {
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00813423          	sd	s0,8(sp)
    800014e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800014ec:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    800014f0:	00000073          	ecall

    char result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014f4:	00050513          	mv	a0,a0
    return result;
}
    800014f8:	0ff57513          	andi	a0,a0,255
    800014fc:	00813403          	ld	s0,8(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_Z4putcc>:

void putc(char c) {
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00813423          	sd	s0,8(sp)
    80001510:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    80001514:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001518:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    8000151c:	00000073          	ecall
    80001520:	00813403          	ld	s0,8(sp)
    80001524:	01010113          	addi	sp,sp,16
    80001528:	00008067          	ret

000000008000152c <_ZL9fibonaccim>:
#include "../h/tcb.hpp"
#include "../h/Semaphore.hpp"
#include "../test/printing.hpp"

static uint64 fibonacci(uint64 n)
{
    8000152c:	fe010113          	addi	sp,sp,-32
    80001530:	00113c23          	sd	ra,24(sp)
    80001534:	00813823          	sd	s0,16(sp)
    80001538:	00913423          	sd	s1,8(sp)
    8000153c:	01213023          	sd	s2,0(sp)
    80001540:	02010413          	addi	s0,sp,32
    80001544:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001548:	00100793          	li	a5,1
    8000154c:	02a7f663          	bgeu	a5,a0,80001578 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001550:	00357793          	andi	a5,a0,3
    80001554:	02078e63          	beqz	a5,80001590 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001558:	fff48513          	addi	a0,s1,-1
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	fd0080e7          	jalr	-48(ra) # 8000152c <_ZL9fibonaccim>
    80001564:	00050913          	mv	s2,a0
    80001568:	ffe48513          	addi	a0,s1,-2
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	fc0080e7          	jalr	-64(ra) # 8000152c <_ZL9fibonaccim>
    80001574:	00a90533          	add	a0,s2,a0
}
    80001578:	01813083          	ld	ra,24(sp)
    8000157c:	01013403          	ld	s0,16(sp)
    80001580:	00813483          	ld	s1,8(sp)
    80001584:	00013903          	ld	s2,0(sp)
    80001588:	02010113          	addi	sp,sp,32
    8000158c:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    80001590:	00000097          	auipc	ra,0x0
    80001594:	e48080e7          	jalr	-440(ra) # 800013d8 <_Z15thread_dispatchv>
    80001598:	fc1ff06f          	j	80001558 <_ZL9fibonaccim+0x2c>

000000008000159c <_Z11workerBodyAPv>:

void workerBodyA(void*)
{
    8000159c:	fe010113          	addi	sp,sp,-32
    800015a0:	00113c23          	sd	ra,24(sp)
    800015a4:	00813823          	sd	s0,16(sp)
    800015a8:	00913423          	sd	s1,8(sp)
    800015ac:	01213023          	sd	s2,0(sp)
    800015b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800015b4:	00000493          	li	s1,0
    800015b8:	0400006f          	j	800015f8 <_Z11workerBodyAPv+0x5c>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800015bc:	00008517          	auipc	a0,0x8
    800015c0:	a6450513          	addi	a0,a0,-1436 # 80009020 <CONSOLE_STATUS+0x10>
    800015c4:	00004097          	auipc	ra,0x4
    800015c8:	d5c080e7          	jalr	-676(ra) # 80005320 <_Z11printStringPKc>
        printInt(i);
    800015cc:	00000613          	li	a2,0
    800015d0:	00a00593          	li	a1,10
    800015d4:	00048513          	mv	a0,s1
    800015d8:	00004097          	auipc	ra,0x4
    800015dc:	ef8080e7          	jalr	-264(ra) # 800054d0 <_Z8printIntiii>
        printString("\n");
    800015e0:	00008517          	auipc	a0,0x8
    800015e4:	f4850513          	addi	a0,a0,-184 # 80009528 <CONSOLE_STATUS+0x518>
    800015e8:	00004097          	auipc	ra,0x4
    800015ec:	d38080e7          	jalr	-712(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 3; i++)
    800015f0:	0014849b          	addiw	s1,s1,1
    800015f4:	0ff4f493          	andi	s1,s1,255
    800015f8:	00200793          	li	a5,2
    800015fc:	fc97f0e3          	bgeu	a5,s1,800015bc <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001600:	00008517          	auipc	a0,0x8
    80001604:	a2850513          	addi	a0,a0,-1496 # 80009028 <CONSOLE_STATUS+0x18>
    80001608:	00004097          	auipc	ra,0x4
    8000160c:	d18080e7          	jalr	-744(ra) # 80005320 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001610:	00700313          	li	t1,7
    thread_dispatch();
    80001614:	00000097          	auipc	ra,0x0
    80001618:	dc4080e7          	jalr	-572(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000161c:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001620:	00008517          	auipc	a0,0x8
    80001624:	a1850513          	addi	a0,a0,-1512 # 80009038 <CONSOLE_STATUS+0x28>
    80001628:	00004097          	auipc	ra,0x4
    8000162c:	cf8080e7          	jalr	-776(ra) # 80005320 <_Z11printStringPKc>
    printInt(t1);
    80001630:	00000613          	li	a2,0
    80001634:	00a00593          	li	a1,10
    80001638:	0009051b          	sext.w	a0,s2
    8000163c:	00004097          	auipc	ra,0x4
    80001640:	e94080e7          	jalr	-364(ra) # 800054d0 <_Z8printIntiii>
    printString("\n");
    80001644:	00008517          	auipc	a0,0x8
    80001648:	ee450513          	addi	a0,a0,-284 # 80009528 <CONSOLE_STATUS+0x518>
    8000164c:	00004097          	auipc	ra,0x4
    80001650:	cd4080e7          	jalr	-812(ra) # 80005320 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001654:	01400513          	li	a0,20
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	ed4080e7          	jalr	-300(ra) # 8000152c <_ZL9fibonaccim>
    80001660:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001664:	00008517          	auipc	a0,0x8
    80001668:	9dc50513          	addi	a0,a0,-1572 # 80009040 <CONSOLE_STATUS+0x30>
    8000166c:	00004097          	auipc	ra,0x4
    80001670:	cb4080e7          	jalr	-844(ra) # 80005320 <_Z11printStringPKc>
    printInt(result);
    80001674:	00000613          	li	a2,0
    80001678:	00a00593          	li	a1,10
    8000167c:	0009051b          	sext.w	a0,s2
    80001680:	00004097          	auipc	ra,0x4
    80001684:	e50080e7          	jalr	-432(ra) # 800054d0 <_Z8printIntiii>
    printString("\n");
    80001688:	00008517          	auipc	a0,0x8
    8000168c:	ea050513          	addi	a0,a0,-352 # 80009528 <CONSOLE_STATUS+0x518>
    80001690:	00004097          	auipc	ra,0x4
    80001694:	c90080e7          	jalr	-880(ra) # 80005320 <_Z11printStringPKc>
    80001698:	0400006f          	j	800016d8 <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000169c:	00008517          	auipc	a0,0x8
    800016a0:	98450513          	addi	a0,a0,-1660 # 80009020 <CONSOLE_STATUS+0x10>
    800016a4:	00004097          	auipc	ra,0x4
    800016a8:	c7c080e7          	jalr	-900(ra) # 80005320 <_Z11printStringPKc>
        printInt(i);
    800016ac:	00000613          	li	a2,0
    800016b0:	00a00593          	li	a1,10
    800016b4:	00048513          	mv	a0,s1
    800016b8:	00004097          	auipc	ra,0x4
    800016bc:	e18080e7          	jalr	-488(ra) # 800054d0 <_Z8printIntiii>
        printString("\n");
    800016c0:	00008517          	auipc	a0,0x8
    800016c4:	e6850513          	addi	a0,a0,-408 # 80009528 <CONSOLE_STATUS+0x518>
    800016c8:	00004097          	auipc	ra,0x4
    800016cc:	c58080e7          	jalr	-936(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 6; i++)
    800016d0:	0014849b          	addiw	s1,s1,1
    800016d4:	0ff4f493          	andi	s1,s1,255
    800016d8:	00500793          	li	a5,5
    800016dc:	fc97f0e3          	bgeu	a5,s1,8000169c <_Z11workerBodyAPv+0x100>
    }

    TCB::running->setFinished(true);
    800016e0:	0000a797          	auipc	a5,0xa
    800016e4:	ec07b783          	ld	a5,-320(a5) # 8000b5a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016e8:	0007b783          	ld	a5,0(a5)
    // Destructor.
    ~TCB() { delete[] stack; }

    // Checks if the thread is finished execution.
    bool isFinished() const { return finished; }

    800016ec:	00100713          	li	a4,1
    800016f0:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	ce4080e7          	jalr	-796(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800016fc:	01813083          	ld	ra,24(sp)
    80001700:	01013403          	ld	s0,16(sp)
    80001704:	00813483          	ld	s1,8(sp)
    80001708:	00013903          	ld	s2,0(sp)
    8000170c:	02010113          	addi	sp,sp,32
    80001710:	00008067          	ret

0000000080001714 <_Z11workerBodyBPv>:

void workerBodyB(void*)
{
    80001714:	fe010113          	addi	sp,sp,-32
    80001718:	00113c23          	sd	ra,24(sp)
    8000171c:	00813823          	sd	s0,16(sp)
    80001720:	00913423          	sd	s1,8(sp)
    80001724:	01213023          	sd	s2,0(sp)
    80001728:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000172c:	00a00493          	li	s1,10
    80001730:	0400006f          	j	80001770 <_Z11workerBodyBPv+0x5c>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001734:	00008517          	auipc	a0,0x8
    80001738:	91c50513          	addi	a0,a0,-1764 # 80009050 <CONSOLE_STATUS+0x40>
    8000173c:	00004097          	auipc	ra,0x4
    80001740:	be4080e7          	jalr	-1052(ra) # 80005320 <_Z11printStringPKc>
        printInt(i);
    80001744:	00000613          	li	a2,0
    80001748:	00a00593          	li	a1,10
    8000174c:	00048513          	mv	a0,s1
    80001750:	00004097          	auipc	ra,0x4
    80001754:	d80080e7          	jalr	-640(ra) # 800054d0 <_Z8printIntiii>
        printString("\n");
    80001758:	00008517          	auipc	a0,0x8
    8000175c:	dd050513          	addi	a0,a0,-560 # 80009528 <CONSOLE_STATUS+0x518>
    80001760:	00004097          	auipc	ra,0x4
    80001764:	bc0080e7          	jalr	-1088(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001768:	0014849b          	addiw	s1,s1,1
    8000176c:	0ff4f493          	andi	s1,s1,255
    80001770:	00c00793          	li	a5,12
    80001774:	fc97f0e3          	bgeu	a5,s1,80001734 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001778:	00008517          	auipc	a0,0x8
    8000177c:	8e050513          	addi	a0,a0,-1824 # 80009058 <CONSOLE_STATUS+0x48>
    80001780:	00004097          	auipc	ra,0x4
    80001784:	ba0080e7          	jalr	-1120(ra) # 80005320 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001788:	00500313          	li	t1,5
    thread_dispatch();
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	c4c080e7          	jalr	-948(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(23);
    80001794:	01700513          	li	a0,23
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	d94080e7          	jalr	-620(ra) # 8000152c <_ZL9fibonaccim>
    800017a0:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800017a4:	00008517          	auipc	a0,0x8
    800017a8:	89c50513          	addi	a0,a0,-1892 # 80009040 <CONSOLE_STATUS+0x30>
    800017ac:	00004097          	auipc	ra,0x4
    800017b0:	b74080e7          	jalr	-1164(ra) # 80005320 <_Z11printStringPKc>
    printInt(result);
    800017b4:	00000613          	li	a2,0
    800017b8:	00a00593          	li	a1,10
    800017bc:	0009051b          	sext.w	a0,s2
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	d10080e7          	jalr	-752(ra) # 800054d0 <_Z8printIntiii>
    printString("\n");
    800017c8:	00008517          	auipc	a0,0x8
    800017cc:	d6050513          	addi	a0,a0,-672 # 80009528 <CONSOLE_STATUS+0x518>
    800017d0:	00004097          	auipc	ra,0x4
    800017d4:	b50080e7          	jalr	-1200(ra) # 80005320 <_Z11printStringPKc>
    800017d8:	0400006f          	j	80001818 <_Z11workerBodyBPv+0x104>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800017dc:	00008517          	auipc	a0,0x8
    800017e0:	87450513          	addi	a0,a0,-1932 # 80009050 <CONSOLE_STATUS+0x40>
    800017e4:	00004097          	auipc	ra,0x4
    800017e8:	b3c080e7          	jalr	-1220(ra) # 80005320 <_Z11printStringPKc>
        printInt(i);
    800017ec:	00000613          	li	a2,0
    800017f0:	00a00593          	li	a1,10
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00004097          	auipc	ra,0x4
    800017fc:	cd8080e7          	jalr	-808(ra) # 800054d0 <_Z8printIntiii>
        printString("\n");
    80001800:	00008517          	auipc	a0,0x8
    80001804:	d2850513          	addi	a0,a0,-728 # 80009528 <CONSOLE_STATUS+0x518>
    80001808:	00004097          	auipc	ra,0x4
    8000180c:	b18080e7          	jalr	-1256(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001810:	0014849b          	addiw	s1,s1,1
    80001814:	0ff4f493          	andi	s1,s1,255
    80001818:	00f00793          	li	a5,15
    8000181c:	fc97f0e3          	bgeu	a5,s1,800017dc <_Z11workerBodyBPv+0xc8>
    }

    TCB::running->setFinished(true);
    80001820:	0000a797          	auipc	a5,0xa
    80001824:	d807b783          	ld	a5,-640(a5) # 8000b5a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001828:	0007b783          	ld	a5,0(a5)
    8000182c:	00100713          	li	a4,1
    80001830:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001834:	00000097          	auipc	ra,0x0
    80001838:	ba4080e7          	jalr	-1116(ra) # 800013d8 <_Z15thread_dispatchv>
}
    8000183c:	01813083          	ld	ra,24(sp)
    80001840:	01013403          	ld	s0,16(sp)
    80001844:	00813483          	ld	s1,8(sp)
    80001848:	00013903          	ld	s2,0(sp)
    8000184c:	02010113          	addi	sp,sp,32
    80001850:	00008067          	ret

0000000080001854 <_Z11workerBodyCPv>:

static int a = 0;

void workerBodyC(void*) {
    80001854:	fe010113          	addi	sp,sp,-32
    80001858:	00113c23          	sd	ra,24(sp)
    8000185c:	00813823          	sd	s0,16(sp)
    80001860:	00913423          	sd	s1,8(sp)
    80001864:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80001868:	00000493          	li	s1,0
    8000186c:	00900793          	li	a5,9
    80001870:	0497c663          	blt	a5,s1,800018bc <_Z11workerBodyCPv+0x68>
        a += 1000;
    80001874:	0000a797          	auipc	a5,0xa
    80001878:	da478793          	addi	a5,a5,-604 # 8000b618 <_ZL1a>
    8000187c:	0007a503          	lw	a0,0(a5)
    80001880:	3e85051b          	addiw	a0,a0,1000
    80001884:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    80001888:	00000613          	li	a2,0
    8000188c:	00a00593          	li	a1,10
    80001890:	0005051b          	sext.w	a0,a0
    80001894:	00004097          	auipc	ra,0x4
    80001898:	c3c080e7          	jalr	-964(ra) # 800054d0 <_Z8printIntiii>
        printString("\n");
    8000189c:	00008517          	auipc	a0,0x8
    800018a0:	c8c50513          	addi	a0,a0,-884 # 80009528 <CONSOLE_STATUS+0x518>
    800018a4:	00004097          	auipc	ra,0x4
    800018a8:	a7c080e7          	jalr	-1412(ra) # 80005320 <_Z11printStringPKc>
        thread_dispatch();
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	b2c080e7          	jalr	-1236(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    800018b4:	0014849b          	addiw	s1,s1,1
    800018b8:	fb5ff06f          	j	8000186c <_Z11workerBodyCPv+0x18>
    }
    TCB::running->setFinished(true);
    800018bc:	0000a797          	auipc	a5,0xa
    800018c0:	ce47b783          	ld	a5,-796(a5) # 8000b5a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018c4:	0007b783          	ld	a5,0(a5)
    800018c8:	00100713          	li	a4,1
    800018cc:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	b08080e7          	jalr	-1272(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800018d8:	01813083          	ld	ra,24(sp)
    800018dc:	01013403          	ld	s0,16(sp)
    800018e0:	00813483          	ld	s1,8(sp)
    800018e4:	02010113          	addi	sp,sp,32
    800018e8:	00008067          	ret

00000000800018ec <_Z11workerBodyDPv>:

void workerBodyD(void*) {
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00113c23          	sd	ra,24(sp)
    800018f4:	00813823          	sd	s0,16(sp)
    800018f8:	00913423          	sd	s1,8(sp)
    800018fc:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; i++) {
    80001900:	00000493          	li	s1,0
    80001904:	00900793          	li	a5,9
    80001908:	0497c663          	blt	a5,s1,80001954 <_Z11workerBodyDPv+0x68>
        a -= 1000;
    8000190c:	0000a797          	auipc	a5,0xa
    80001910:	d0c78793          	addi	a5,a5,-756 # 8000b618 <_ZL1a>
    80001914:	0007a503          	lw	a0,0(a5)
    80001918:	c185051b          	addiw	a0,a0,-1000
    8000191c:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    80001920:	00000613          	li	a2,0
    80001924:	00a00593          	li	a1,10
    80001928:	0005051b          	sext.w	a0,a0
    8000192c:	00004097          	auipc	ra,0x4
    80001930:	ba4080e7          	jalr	-1116(ra) # 800054d0 <_Z8printIntiii>
        printString("\n");
    80001934:	00008517          	auipc	a0,0x8
    80001938:	bf450513          	addi	a0,a0,-1036 # 80009528 <CONSOLE_STATUS+0x518>
    8000193c:	00004097          	auipc	ra,0x4
    80001940:	9e4080e7          	jalr	-1564(ra) # 80005320 <_Z11printStringPKc>
        thread_dispatch();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	a94080e7          	jalr	-1388(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    8000194c:	0014849b          	addiw	s1,s1,1
    80001950:	fb5ff06f          	j	80001904 <_Z11workerBodyDPv+0x18>
    }
    TCB::running->setFinished(true);
    80001954:	0000a797          	auipc	a5,0xa
    80001958:	c4c7b783          	ld	a5,-948(a5) # 8000b5a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000195c:	0007b783          	ld	a5,0(a5)
    80001960:	00100713          	li	a4,1
    80001964:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	a70080e7          	jalr	-1424(ra) # 800013d8 <_Z15thread_dispatchv>
    80001970:	01813083          	ld	ra,24(sp)
    80001974:	01013403          	ld	s0,16(sp)
    80001978:	00813483          	ld	s1,8(sp)
    8000197c:	02010113          	addi	sp,sp,32
    80001980:	00008067          	ret

0000000080001984 <_ZN3ABI9Semaphore15createSemaphoreEj>:

#include "../h/Semaphore.hpp"
#include "../h/tcb.hpp"

namespace ABI {
    Semaphore *Semaphore::createSemaphore(unsigned int init) {
    80001984:	fe010113          	addi	sp,sp,-32
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00813823          	sd	s0,16(sp)
    80001990:	00913423          	sd	s1,8(sp)
    80001994:	02010413          	addi	s0,sp,32
    80001998:	00050493          	mv	s1,a0
    8000199c:	0000a797          	auipc	a5,0xa
    800019a0:	c647c783          	lbu	a5,-924(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019a4:	04079263          	bnez	a5,800019e8 <_ZN3ABI9Semaphore15createSemaphoreEj+0x64>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800019a8:	0000a797          	auipc	a5,0xa
    800019ac:	be07b783          	ld	a5,-1056(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019b0:	0007b783          	ld	a5,0(a5)
    800019b4:	0000a717          	auipc	a4,0xa
    800019b8:	c5470713          	addi	a4,a4,-940 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019bc:	00f73023          	sd	a5,0(a4)
    800019c0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800019c4:	0000a717          	auipc	a4,0xa
    800019c8:	be473703          	ld	a4,-1052(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019cc:	00073703          	ld	a4,0(a4)
    800019d0:	40f70733          	sub	a4,a4,a5
    800019d4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800019d8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800019dc:	00100793          	li	a5,1
    800019e0:	0000a717          	auipc	a4,0xa
    800019e4:	c2f70023          	sb	a5,-992(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

        // Gets semaphore parameter starting value.
        unsigned int getValue() const { return val; }

        void *operator new(size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
    800019e8:	02800593          	li	a1,40
    800019ec:	0000a517          	auipc	a0,0xa
    800019f0:	c1c50513          	addi	a0,a0,-996 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	208080e7          	jalr	520(ra) # 80002bfc <_ZN15MemoryAllocator9mem_allocEm>
            MemoryAllocator::Instance()->mem_free(ptr);
        }

    protected:
        // Constructor.
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    800019fc:	0000a717          	auipc	a4,0xa
    80001a00:	97470713          	addi	a4,a4,-1676 # 8000b370 <_ZTVN3ABI9SemaphoreE+0x10>
    80001a04:	00e53023          	sd	a4,0(a0)
    80001a08:	02049493          	slli	s1,s1,0x20
    80001a0c:	0204d493          	srli	s1,s1,0x20
    80001a10:	00953423          	sd	s1,8(a0)
    80001a14:	00050823          	sb	zero,16(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001a18:	00053c23          	sd	zero,24(a0)
    80001a1c:	02053023          	sd	zero,32(a0)
        return new Semaphore(init);
    }
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	02010113          	addi	sp,sp,32
    80001a30:	00008067          	ret

0000000080001a34 <_ZN3ABI9Semaphore5blockEv>:
        while (!blocked.empty()) unblock();

        return 0;
    }

    void Semaphore::block() {
    80001a34:	fe010113          	addi	sp,sp,-32
    80001a38:	00113c23          	sd	ra,24(sp)
    80001a3c:	00813823          	sd	s0,16(sp)
    80001a40:	00913423          	sd	s1,8(sp)
    80001a44:	01213023          	sd	s2,0(sp)
    80001a48:	02010413          	addi	s0,sp,32
    80001a4c:	00050493          	mv	s1,a0
        blocked.addLast(TCB::running);
    80001a50:	0000a797          	auipc	a5,0xa
    80001a54:	b507b783          	ld	a5,-1200(a5) # 8000b5a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a58:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001a5c:	01000513          	li	a0,16
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	548080e7          	jalr	1352(ra) # 80001fa8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001a68:	01253023          	sd	s2,0(a0)
    80001a6c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001a70:	0204b783          	ld	a5,32(s1)
    80001a74:	04078063          	beqz	a5,80001ab4 <_ZN3ABI9Semaphore5blockEv+0x80>
        {
            tail->next = elem;
    80001a78:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001a7c:	02a4b023          	sd	a0,32(s1)
        TCB::running->setBlocked(true);
    80001a80:	0000a797          	auipc	a5,0xa
    80001a84:	b207b783          	ld	a5,-1248(a5) # 8000b5a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a88:	0007b783          	ld	a5,0(a5)

    // Checks if the thread is blocked.
    bool isBlocked() const { return blocked; }

    // Sets the thread's state to blocked.
    void setBlocked(bool value) { blocked = value; }
    80001a8c:	00100713          	li	a4,1
    80001a90:	02e780a3          	sb	a4,33(a5)
        TCB::yield();
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	3c4080e7          	jalr	964(ra) # 80001e58 <_ZN3TCB5yieldEv>
    }
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	00013903          	ld	s2,0(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret
        } else
        {
            head = tail = elem;
    80001ab4:	02a4b023          	sd	a0,32(s1)
    80001ab8:	00a4bc23          	sd	a0,24(s1)
    80001abc:	fc5ff06f          	j	80001a80 <_ZN3ABI9Semaphore5blockEv+0x4c>

0000000080001ac0 <_ZN3ABI9Semaphore4waitEv>:
        if (closed) return -1;
    80001ac0:	01054783          	lbu	a5,16(a0)
    80001ac4:	04079463          	bnez	a5,80001b0c <_ZN3ABI9Semaphore4waitEv+0x4c>
        if (--val < 0) block();
    80001ac8:	00853783          	ld	a5,8(a0)
    80001acc:	fff78793          	addi	a5,a5,-1
    80001ad0:	00f53423          	sd	a5,8(a0)
    80001ad4:	0007c663          	bltz	a5,80001ae0 <_ZN3ABI9Semaphore4waitEv+0x20>
        return 0;
    80001ad8:	00000513          	li	a0,0
    }
    80001adc:	00008067          	ret
    int Semaphore::wait() {
    80001ae0:	ff010113          	addi	sp,sp,-16
    80001ae4:	00113423          	sd	ra,8(sp)
    80001ae8:	00813023          	sd	s0,0(sp)
    80001aec:	01010413          	addi	s0,sp,16
        if (--val < 0) block();
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	f44080e7          	jalr	-188(ra) # 80001a34 <_ZN3ABI9Semaphore5blockEv>
        return 0;
    80001af8:	00000513          	li	a0,0
    }
    80001afc:	00813083          	ld	ra,8(sp)
    80001b00:	00013403          	ld	s0,0(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret
        if (closed) return -1;
    80001b0c:	fff00513          	li	a0,-1
    80001b10:	00008067          	ret

0000000080001b14 <_ZN3ABI9Semaphore7unblockEv>:

    void Semaphore::unblock() {
    80001b14:	fe010113          	addi	sp,sp,-32
    80001b18:	00113c23          	sd	ra,24(sp)
    80001b1c:	00813823          	sd	s0,16(sp)
    80001b20:	00913423          	sd	s1,8(sp)
    80001b24:	02010413          	addi	s0,sp,32
    80001b28:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001b2c:	01853503          	ld	a0,24(a0)
    80001b30:	04050463          	beqz	a0,80001b78 <_ZN3ABI9Semaphore7unblockEv+0x64>

        Elem *elem = head;
        head = head->next;
    80001b34:	00853703          	ld	a4,8(a0)
    80001b38:	00e7bc23          	sd	a4,24(a5)
        if (!head) { tail = 0; }
    80001b3c:	02070a63          	beqz	a4,80001b70 <_ZN3ABI9Semaphore7unblockEv+0x5c>

        T *ret = elem->data;
    80001b40:	00053483          	ld	s1,0(a0)
        delete elem;
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	564080e7          	jalr	1380(ra) # 800020a8 <_ZdlPv>
    80001b4c:	020480a3          	sb	zero,33(s1)
        TCB *thread = blocked.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    80001b50:	00048513          	mv	a0,s1
    80001b54:	00001097          	auipc	ra,0x1
    80001b58:	e64080e7          	jalr	-412(ra) # 800029b8 <_ZN9Scheduler3putEP3TCB>
    }
    80001b5c:	01813083          	ld	ra,24(sp)
    80001b60:	01013403          	ld	s0,16(sp)
    80001b64:	00813483          	ld	s1,8(sp)
    80001b68:	02010113          	addi	sp,sp,32
    80001b6c:	00008067          	ret
        if (!head) { tail = 0; }
    80001b70:	0207b023          	sd	zero,32(a5)
    80001b74:	fcdff06f          	j	80001b40 <_ZN3ABI9Semaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001b78:	00050493          	mv	s1,a0
    80001b7c:	fd1ff06f          	j	80001b4c <_ZN3ABI9Semaphore7unblockEv+0x38>

0000000080001b80 <_ZN3ABI9Semaphore6signalEv>:
        if (closed) return -1;
    80001b80:	01054783          	lbu	a5,16(a0)
    80001b84:	04079463          	bnez	a5,80001bcc <_ZN3ABI9Semaphore6signalEv+0x4c>
        if (++val <= 0) unblock();
    80001b88:	00853783          	ld	a5,8(a0)
    80001b8c:	00178793          	addi	a5,a5,1
    80001b90:	00f53423          	sd	a5,8(a0)
    80001b94:	00f05663          	blez	a5,80001ba0 <_ZN3ABI9Semaphore6signalEv+0x20>
        return 0;
    80001b98:	00000513          	li	a0,0
    }
    80001b9c:	00008067          	ret
    int Semaphore::signal() {
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00113423          	sd	ra,8(sp)
    80001ba8:	00813023          	sd	s0,0(sp)
    80001bac:	01010413          	addi	s0,sp,16
        if (++val <= 0) unblock();
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	f64080e7          	jalr	-156(ra) # 80001b14 <_ZN3ABI9Semaphore7unblockEv>
        return 0;
    80001bb8:	00000513          	li	a0,0
    }
    80001bbc:	00813083          	ld	ra,8(sp)
    80001bc0:	00013403          	ld	s0,0(sp)
    80001bc4:	01010113          	addi	sp,sp,16
    80001bc8:	00008067          	ret
        if (closed) return -1;
    80001bcc:	fff00513          	li	a0,-1
    80001bd0:	00008067          	ret

0000000080001bd4 <_ZN3ABI9Semaphore5closeEv>:
        if (closed) return -1;
    80001bd4:	01054783          	lbu	a5,16(a0)
    80001bd8:	04079a63          	bnez	a5,80001c2c <_ZN3ABI9Semaphore5closeEv+0x58>
    int Semaphore::close() {
    80001bdc:	fe010113          	addi	sp,sp,-32
    80001be0:	00113c23          	sd	ra,24(sp)
    80001be4:	00813823          	sd	s0,16(sp)
    80001be8:	00913423          	sd	s1,8(sp)
    80001bec:	02010413          	addi	s0,sp,32
    80001bf0:	00050493          	mv	s1,a0
        closed = true;
    80001bf4:	00100793          	li	a5,1
    80001bf8:	00f50823          	sb	a5,16(a0)
    80001bfc:	0100006f          	j	80001c0c <_ZN3ABI9Semaphore5closeEv+0x38>
        while (!blocked.empty()) unblock();
    80001c00:	00048513          	mv	a0,s1
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	f10080e7          	jalr	-240(ra) # 80001b14 <_ZN3ABI9Semaphore7unblockEv>
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    bool empty() { return head == nullptr; }
    80001c0c:	0184b783          	ld	a5,24(s1)
    80001c10:	fe0798e3          	bnez	a5,80001c00 <_ZN3ABI9Semaphore5closeEv+0x2c>
        return 0;
    80001c14:	00000513          	li	a0,0
    }
    80001c18:	01813083          	ld	ra,24(sp)
    80001c1c:	01013403          	ld	s0,16(sp)
    80001c20:	00813483          	ld	s1,8(sp)
    80001c24:	02010113          	addi	sp,sp,32
    80001c28:	00008067          	ret
        if (closed) return -1;
    80001c2c:	fff00513          	li	a0,-1
    }
    80001c30:	00008067          	ret

0000000080001c34 <_ZN3ABI9SemaphoreD1Ev>:
        virtual ~Semaphore() = default;
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00813423          	sd	s0,8(sp)
    80001c3c:	01010413          	addi	s0,sp,16
    80001c40:	00813403          	ld	s0,8(sp)
    80001c44:	01010113          	addi	sp,sp,16
    80001c48:	00008067          	ret

0000000080001c4c <_ZN3ABI9SemaphoreD0Ev>:
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00113423          	sd	ra,8(sp)
    80001c54:	00813023          	sd	s0,0(sp)
    80001c58:	01010413          	addi	s0,sp,16
    80001c5c:	00050593          	mv	a1,a0
    80001c60:	0000a797          	auipc	a5,0xa
    80001c64:	9a07c783          	lbu	a5,-1632(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c68:	04079263          	bnez	a5,80001cac <_ZN3ABI9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001c6c:	0000a797          	auipc	a5,0xa
    80001c70:	91c7b783          	ld	a5,-1764(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c74:	0007b783          	ld	a5,0(a5)
    80001c78:	0000a717          	auipc	a4,0xa
    80001c7c:	99070713          	addi	a4,a4,-1648 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c80:	00f73023          	sd	a5,0(a4)
    80001c84:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001c88:	0000a717          	auipc	a4,0xa
    80001c8c:	92073703          	ld	a4,-1760(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c90:	00073703          	ld	a4,0(a4)
    80001c94:	40f70733          	sub	a4,a4,a5
    80001c98:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001c9c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ca0:	00100793          	li	a5,1
    80001ca4:	0000a717          	auipc	a4,0xa
    80001ca8:	94f70e23          	sb	a5,-1700(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            MemoryAllocator::Instance()->mem_free(ptr);
    80001cac:	0000a517          	auipc	a0,0xa
    80001cb0:	95c50513          	addi	a0,a0,-1700 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	098080e7          	jalr	152(ra) # 80002d4c <_ZN15MemoryAllocator8mem_freeEPv>
        virtual ~Semaphore() = default;
    80001cbc:	00813083          	ld	ra,8(sp)
    80001cc0:	00013403          	ld	s0,0(sp)
    80001cc4:	01010113          	addi	sp,sp,16
    80001cc8:	00008067          	ret

0000000080001ccc <_ZN3TCB12createThreadEPFvPvES0_Pm>:

TCB *TCB::running = nullptr;
TCB *TCB::main = nullptr;

TCB *TCB::createThread(Body body, void* arg, uint64* stack)
{
    80001ccc:	fd010113          	addi	sp,sp,-48
    80001cd0:	02113423          	sd	ra,40(sp)
    80001cd4:	02813023          	sd	s0,32(sp)
    80001cd8:	00913c23          	sd	s1,24(sp)
    80001cdc:	01213823          	sd	s2,16(sp)
    80001ce0:	01313423          	sd	s3,8(sp)
    80001ce4:	01413023          	sd	s4,0(sp)
    80001ce8:	03010413          	addi	s0,sp,48
    80001cec:	00050993          	mv	s3,a0
    80001cf0:	00058a13          	mv	s4,a1
    80001cf4:	00060913          	mv	s2,a2
    80001cf8:	0000a797          	auipc	a5,0xa
    80001cfc:	9087c783          	lbu	a5,-1784(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d00:	04079263          	bnez	a5,80001d44 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x78>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001d04:	0000a797          	auipc	a5,0xa
    80001d08:	8847b783          	ld	a5,-1916(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d0c:	0007b783          	ld	a5,0(a5)
    80001d10:	0000a717          	auipc	a4,0xa
    80001d14:	8f870713          	addi	a4,a4,-1800 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d18:	00f73023          	sd	a5,0(a4)
    80001d1c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001d20:	0000a717          	auipc	a4,0xa
    80001d24:	88873703          	ld	a4,-1912(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d28:	00073703          	ld	a4,0(a4)
    80001d2c:	40f70733          	sub	a4,a4,a5
    80001d30:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001d34:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001d38:	00100793          	li	a5,1
    80001d3c:	0000a717          	auipc	a4,0xa
    80001d40:	8cf70223          	sb	a5,-1852(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

    // Pointer to the currently running thread.
    static TCB *running, *main;

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001d44:	03000593          	li	a1,48
    80001d48:	0000a517          	auipc	a0,0xa
    80001d4c:	8c050513          	addi	a0,a0,-1856 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	eac080e7          	jalr	-340(ra) # 80002bfc <_ZN15MemoryAllocator9mem_allocEm>
    80001d58:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            arg(arg)
    80001d5c:	01353023          	sd	s3,0(a0)
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
    80001d60:	04090463          	beqz	s2,80001da8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xdc>
    80001d64:	00090793          	mv	a5,s2
            arg(arg)
    80001d68:	00f4b423          	sd	a5,8(s1)
    80001d6c:	00000797          	auipc	a5,0x0
    80001d70:	11478793          	addi	a5,a5,276 # 80001e80 <_ZN3TCB13threadWrapperEv>
    80001d74:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001d78:	04090263          	beqz	s2,80001dbc <_ZN3TCB12createThreadEPFvPvES0_Pm+0xf0>
    80001d7c:	00002637          	lui	a2,0x2
    80001d80:	00c90633          	add	a2,s2,a2
            arg(arg)
    80001d84:	00c4bc23          	sd	a2,24(s1)
    80001d88:	02048023          	sb	zero,32(s1)
    80001d8c:	020480a3          	sb	zero,33(s1)
    80001d90:	0344b423          	sd	s4,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001d94:	0a098063          	beqz	s3,80001e34 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x168>
    80001d98:	00048513          	mv	a0,s1
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	c1c080e7          	jalr	-996(ra) # 800029b8 <_ZN9Scheduler3putEP3TCB>
    80001da4:	0900006f          	j	80001e34 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x168>
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
    80001da8:	00002537          	lui	a0,0x2
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	27c080e7          	jalr	636(ra) # 80002028 <_Znam>
    80001db4:	00050793          	mv	a5,a0
    80001db8:	fb1ff06f          	j	80001d68 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x9c>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001dbc:	00000613          	li	a2,0
    80001dc0:	fc5ff06f          	j	80001d84 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb8>
    80001dc4:	00050913          	mv	s2,a0
    80001dc8:	0000a797          	auipc	a5,0xa
    80001dcc:	8387c783          	lbu	a5,-1992(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001dd0:	04079263          	bnez	a5,80001e14 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x148>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001dd4:	00009797          	auipc	a5,0x9
    80001dd8:	7b47b783          	ld	a5,1972(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001ddc:	0007b783          	ld	a5,0(a5)
    80001de0:	0000a717          	auipc	a4,0xa
    80001de4:	82870713          	addi	a4,a4,-2008 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001de8:	00f73023          	sd	a5,0(a4)
    80001dec:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001df0:	00009717          	auipc	a4,0x9
    80001df4:	7b873703          	ld	a4,1976(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001df8:	00073703          	ld	a4,0(a4)
    80001dfc:	40f70733          	sub	a4,a4,a5
    80001e00:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001e04:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001e08:	00100793          	li	a5,1
    80001e0c:	00009717          	auipc	a4,0x9
    80001e10:	7ef70a23          	sb	a5,2036(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001e14:	00048593          	mv	a1,s1
    80001e18:	00009517          	auipc	a0,0x9
    80001e1c:	7f050513          	addi	a0,a0,2032 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	f2c080e7          	jalr	-212(ra) # 80002d4c <_ZN15MemoryAllocator8mem_freeEPv>
    80001e28:	00090513          	mv	a0,s2
    80001e2c:	0000b097          	auipc	ra,0xb
    80001e30:	92c080e7          	jalr	-1748(ra) # 8000c758 <_Unwind_Resume>
    return new TCB(body, arg, stack);
}
    80001e34:	00048513          	mv	a0,s1
    80001e38:	02813083          	ld	ra,40(sp)
    80001e3c:	02013403          	ld	s0,32(sp)
    80001e40:	01813483          	ld	s1,24(sp)
    80001e44:	01013903          	ld	s2,16(sp)
    80001e48:	00813983          	ld	s3,8(sp)
    80001e4c:	00013a03          	ld	s4,0(sp)
    80001e50:	03010113          	addi	sp,sp,48
    80001e54:	00008067          	ret

0000000080001e58 <_ZN3TCB5yieldEv>:
    running->setFinished(true);
    TCB::yield();
}

void TCB::yield()
{
    80001e58:	ff010113          	addi	sp,sp,-16
    80001e5c:	00113423          	sd	ra,8(sp)
    80001e60:	00813023          	sd	s0,0(sp)
    80001e64:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001e68:	fffff097          	auipc	ra,0xfffff
    80001e6c:	570080e7          	jalr	1392(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80001e70:	00813083          	ld	ra,8(sp)
    80001e74:	00013403          	ld	s0,0(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN3TCB13threadWrapperEv>:
{
    80001e80:	fe010113          	addi	sp,sp,-32
    80001e84:	00113c23          	sd	ra,24(sp)
    80001e88:	00813823          	sd	s0,16(sp)
    80001e8c:	00913423          	sd	s1,8(sp)
    80001e90:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	690080e7          	jalr	1680(ra) # 80002524 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e9c:	00009497          	auipc	s1,0x9
    80001ea0:	78448493          	addi	s1,s1,1924 # 8000b620 <_ZN3TCB7runningE>
    80001ea4:	0004b783          	ld	a5,0(s1)
    80001ea8:	0007b703          	ld	a4,0(a5)
    80001eac:	0287b503          	ld	a0,40(a5)
    80001eb0:	000700e7          	jalr	a4
    running->setFinished(true);
    80001eb4:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001eb8:	00100713          	li	a4,1
    80001ebc:	02e78023          	sb	a4,32(a5)
    TCB::yield();
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	f98080e7          	jalr	-104(ra) # 80001e58 <_ZN3TCB5yieldEv>
}
    80001ec8:	01813083          	ld	ra,24(sp)
    80001ecc:	01013403          	ld	s0,16(sp)
    80001ed0:	00813483          	ld	s1,8(sp)
    80001ed4:	02010113          	addi	sp,sp,32
    80001ed8:	00008067          	ret

0000000080001edc <_ZN3TCB8dispatchEv>:

void TCB::dispatch()
{
    80001edc:	fe010113          	addi	sp,sp,-32
    80001ee0:	00113c23          	sd	ra,24(sp)
    80001ee4:	00813823          	sd	s0,16(sp)
    80001ee8:	00913423          	sd	s1,8(sp)
    80001eec:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001ef0:	00009497          	auipc	s1,0x9
    80001ef4:	7304b483          	ld	s1,1840(s1) # 8000b620 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001ef8:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001efc:	00079663          	bnez	a5,80001f08 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    80001f00:	0214c783          	lbu	a5,33(s1)
    80001f04:	04078663          	beqz	a5,80001f50 <_ZN3TCB8dispatchEv+0x74>
    running = Scheduler::get();
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	a48080e7          	jalr	-1464(ra) # 80002950 <_ZN9Scheduler3getEv>
    80001f10:	00009797          	auipc	a5,0x9
    80001f14:	71078793          	addi	a5,a5,1808 # 8000b620 <_ZN3TCB7runningE>
    80001f18:	00a7b023          	sd	a0,0(a5)

    if (running == main) Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    80001f1c:	0087b783          	ld	a5,8(a5)
    80001f20:	04a78063          	beq	a5,a0,80001f60 <_ZN3TCB8dispatchEv+0x84>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f24:	10000793          	li	a5,256
    80001f28:	1007b073          	csrc	sstatus,a5
    else Riscv::mc_sstatus(Riscv::SSTATUS_SPP);

    TCB::contextSwitch(&old->context, &running->context);
    80001f2c:	01050593          	addi	a1,a0,16
    80001f30:	01048513          	addi	a0,s1,16
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	2d4080e7          	jalr	724(ra) # 80001208 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001f3c:	01813083          	ld	ra,24(sp)
    80001f40:	01013403          	ld	s0,16(sp)
    80001f44:	00813483          	ld	s1,8(sp)
    80001f48:	02010113          	addi	sp,sp,32
    80001f4c:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001f50:	00048513          	mv	a0,s1
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	a64080e7          	jalr	-1436(ra) # 800029b8 <_ZN9Scheduler3putEP3TCB>
    80001f5c:	fadff06f          	j	80001f08 <_ZN3TCB8dispatchEv+0x2c>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f60:	10000793          	li	a5,256
    80001f64:	1007a073          	csrs	sstatus,a5
}
    80001f68:	fc5ff06f          	j	80001f2c <_ZN3TCB8dispatchEv+0x50>

0000000080001f6c <_ZN3TCB4exitEv>:

int TCB::exit() {
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00113423          	sd	ra,8(sp)
    80001f74:	00813023          	sd	s0,0(sp)
    80001f78:	01010413          	addi	s0,sp,16
    void setFinished(bool value) { finished = value; }
    80001f7c:	00009797          	auipc	a5,0x9
    80001f80:	6a47b783          	ld	a5,1700(a5) # 8000b620 <_ZN3TCB7runningE>
    80001f84:	00100713          	li	a4,1
    80001f88:	02e78023          	sb	a4,32(a5)
    running->setFinished(true);
    dispatch();
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	f50080e7          	jalr	-176(ra) # 80001edc <_ZN3TCB8dispatchEv>
    return 0;
}
    80001f94:	00000513          	li	a0,0
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00113423          	sd	ra,8(sp)
    80001fb0:	00813023          	sd	s0,0(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    80001fb8:	00050593          	mv	a1,a0
    80001fbc:	00009797          	auipc	a5,0x9
    80001fc0:	6447c783          	lbu	a5,1604(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fc4:	04079263          	bnez	a5,80002008 <_Znwm+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001fc8:	00009797          	auipc	a5,0x9
    80001fcc:	5c07b783          	ld	a5,1472(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001fd0:	0007b783          	ld	a5,0(a5)
    80001fd4:	00009717          	auipc	a4,0x9
    80001fd8:	63470713          	addi	a4,a4,1588 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fdc:	00f73023          	sd	a5,0(a4)
    80001fe0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001fe4:	00009717          	auipc	a4,0x9
    80001fe8:	5c473703          	ld	a4,1476(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fec:	00073703          	ld	a4,0(a4)
    80001ff0:	40f70733          	sub	a4,a4,a5
    80001ff4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ff8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ffc:	00100793          	li	a5,1
    80002000:	00009717          	auipc	a4,0x9
    80002004:	60f70023          	sb	a5,1536(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80002008:	00009517          	auipc	a0,0x9
    8000200c:	60050513          	addi	a0,a0,1536 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002010:	00001097          	auipc	ra,0x1
    80002014:	bec080e7          	jalr	-1044(ra) # 80002bfc <_ZN15MemoryAllocator9mem_allocEm>
}
    80002018:	00813083          	ld	ra,8(sp)
    8000201c:	00013403          	ld	s0,0(sp)
    80002020:	01010113          	addi	sp,sp,16
    80002024:	00008067          	ret

0000000080002028 <_Znam>:

void *operator new[](size_t n)
{
    80002028:	ff010113          	addi	sp,sp,-16
    8000202c:	00113423          	sd	ra,8(sp)
    80002030:	00813023          	sd	s0,0(sp)
    80002034:	01010413          	addi	s0,sp,16
    80002038:	00050593          	mv	a1,a0
    8000203c:	00009797          	auipc	a5,0x9
    80002040:	5c47c783          	lbu	a5,1476(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002044:	04079263          	bnez	a5,80002088 <_Znam+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002048:	00009797          	auipc	a5,0x9
    8000204c:	5407b783          	ld	a5,1344(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002050:	0007b783          	ld	a5,0(a5)
    80002054:	00009717          	auipc	a4,0x9
    80002058:	5b470713          	addi	a4,a4,1460 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000205c:	00f73023          	sd	a5,0(a4)
    80002060:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002064:	00009717          	auipc	a4,0x9
    80002068:	54473703          	ld	a4,1348(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000206c:	00073703          	ld	a4,0(a4)
    80002070:	40f70733          	sub	a4,a4,a5
    80002074:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002078:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000207c:	00100793          	li	a5,1
    80002080:	00009717          	auipc	a4,0x9
    80002084:	58f70023          	sb	a5,1408(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80002088:	00009517          	auipc	a0,0x9
    8000208c:	58050513          	addi	a0,a0,1408 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	b6c080e7          	jalr	-1172(ra) # 80002bfc <_ZN15MemoryAllocator9mem_allocEm>
}
    80002098:	00813083          	ld	ra,8(sp)
    8000209c:	00013403          	ld	s0,0(sp)
    800020a0:	01010113          	addi	sp,sp,16
    800020a4:	00008067          	ret

00000000800020a8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800020a8:	ff010113          	addi	sp,sp,-16
    800020ac:	00113423          	sd	ra,8(sp)
    800020b0:	00813023          	sd	s0,0(sp)
    800020b4:	01010413          	addi	s0,sp,16
    800020b8:	00050593          	mv	a1,a0
    800020bc:	00009797          	auipc	a5,0x9
    800020c0:	5447c783          	lbu	a5,1348(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020c4:	04079263          	bnez	a5,80002108 <_ZdlPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800020c8:	00009797          	auipc	a5,0x9
    800020cc:	4c07b783          	ld	a5,1216(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    800020d0:	0007b783          	ld	a5,0(a5)
    800020d4:	00009717          	auipc	a4,0x9
    800020d8:	53470713          	addi	a4,a4,1332 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020dc:	00f73023          	sd	a5,0(a4)
    800020e0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800020e4:	00009717          	auipc	a4,0x9
    800020e8:	4c473703          	ld	a4,1220(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020ec:	00073703          	ld	a4,0(a4)
    800020f0:	40f70733          	sub	a4,a4,a5
    800020f4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800020f8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800020fc:	00100793          	li	a5,1
    80002100:	00009717          	auipc	a4,0x9
    80002104:	50f70023          	sb	a5,1280(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80002108:	00009517          	auipc	a0,0x9
    8000210c:	50050513          	addi	a0,a0,1280 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	c3c080e7          	jalr	-964(ra) # 80002d4c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002118:	00813083          	ld	ra,8(sp)
    8000211c:	00013403          	ld	s0,0(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00113423          	sd	ra,8(sp)
    80002130:	00813023          	sd	s0,0(sp)
    80002134:	01010413          	addi	s0,sp,16
    80002138:	00050593          	mv	a1,a0
    8000213c:	00009797          	auipc	a5,0x9
    80002140:	4c47c783          	lbu	a5,1220(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002144:	04079263          	bnez	a5,80002188 <_ZdaPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002148:	00009797          	auipc	a5,0x9
    8000214c:	4407b783          	ld	a5,1088(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002150:	0007b783          	ld	a5,0(a5)
    80002154:	00009717          	auipc	a4,0x9
    80002158:	4b470713          	addi	a4,a4,1204 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000215c:	00f73023          	sd	a5,0(a4)
    80002160:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002164:	00009717          	auipc	a4,0x9
    80002168:	44473703          	ld	a4,1092(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000216c:	00073703          	ld	a4,0(a4)
    80002170:	40f70733          	sub	a4,a4,a5
    80002174:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002178:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000217c:	00100793          	li	a5,1
    80002180:	00009717          	auipc	a4,0x9
    80002184:	48f70023          	sb	a5,1152(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80002188:	00009517          	auipc	a0,0x9
    8000218c:	48050513          	addi	a0,a0,1152 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002190:	00001097          	auipc	ra,0x1
    80002194:	bbc080e7          	jalr	-1092(ra) # 80002d4c <_ZN15MemoryAllocator8mem_freeEPv>
    80002198:	00813083          	ld	ra,8(sp)
    8000219c:	00013403          	ld	s0,0(sp)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret

00000000800021a8 <_ZN6ThreadD1Ev>:
}

Thread::Thread(void (*body)(void *), void *arg) :
    myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    800021a8:	fe010113          	addi	sp,sp,-32
    800021ac:	00113c23          	sd	ra,24(sp)
    800021b0:	00813823          	sd	s0,16(sp)
    800021b4:	00913423          	sd	s1,8(sp)
    800021b8:	02010413          	addi	s0,sp,32
    800021bc:	00009797          	auipc	a5,0x9
    800021c0:	1dc78793          	addi	a5,a5,476 # 8000b398 <_ZTV6Thread+0x10>
    800021c4:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    800021c8:	00853483          	ld	s1,8(a0)
    800021cc:	06048a63          	beqz	s1,80002240 <_ZN6ThreadD1Ev+0x98>
    ~TCB() { delete[] stack; }
    800021d0:	0084b503          	ld	a0,8(s1)
    800021d4:	00050663          	beqz	a0,800021e0 <_ZN6ThreadD1Ev+0x38>
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	f50080e7          	jalr	-176(ra) # 80002128 <_ZdaPv>
    800021e0:	00009797          	auipc	a5,0x9
    800021e4:	4207c783          	lbu	a5,1056(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021e8:	04079263          	bnez	a5,8000222c <_ZN6ThreadD1Ev+0x84>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800021ec:	00009797          	auipc	a5,0x9
    800021f0:	39c7b783          	ld	a5,924(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    800021f4:	0007b783          	ld	a5,0(a5)
    800021f8:	00009717          	auipc	a4,0x9
    800021fc:	41070713          	addi	a4,a4,1040 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002200:	00f73023          	sd	a5,0(a4)
    80002204:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002208:	00009717          	auipc	a4,0x9
    8000220c:	3a073703          	ld	a4,928(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002210:	00073703          	ld	a4,0(a4)
    80002214:	40f70733          	sub	a4,a4,a5
    80002218:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000221c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002220:	00100793          	li	a5,1
    80002224:	00009717          	auipc	a4,0x9
    80002228:	3cf70e23          	sb	a5,988(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        return MemoryAllocator::Instance()->mem_alloc(size);
    8000222c:	00048593          	mv	a1,s1
    80002230:	00009517          	auipc	a0,0x9
    80002234:	3d850513          	addi	a0,a0,984 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	b14080e7          	jalr	-1260(ra) # 80002d4c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002240:	01813083          	ld	ra,24(sp)
    80002244:	01013403          	ld	s0,16(sp)
    80002248:	00813483          	ld	s1,8(sp)
    8000224c:	02010113          	addi	sp,sp,32
    80002250:	00008067          	ret

0000000080002254 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002254:	fe010113          	addi	sp,sp,-32
    80002258:	00113c23          	sd	ra,24(sp)
    8000225c:	00813823          	sd	s0,16(sp)
    80002260:	00913423          	sd	s1,8(sp)
    80002264:	02010413          	addi	s0,sp,32
    80002268:	00050493          	mv	s1,a0
}
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	f3c080e7          	jalr	-196(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80002274:	00048513          	mv	a0,s1
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	e30080e7          	jalr	-464(ra) # 800020a8 <_ZdlPv>
    80002280:	01813083          	ld	ra,24(sp)
    80002284:	01013403          	ld	s0,16(sp)
    80002288:	00813483          	ld	s1,8(sp)
    8000228c:	02010113          	addi	sp,sp,32
    80002290:	00008067          	ret

0000000080002294 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00113423          	sd	ra,8(sp)
    8000229c:	00813023          	sd	s0,0(sp)
    800022a0:	01010413          	addi	s0,sp,16
    800022a4:	00009797          	auipc	a5,0x9
    800022a8:	11c78793          	addi	a5,a5,284 # 8000b3c0 <_ZTV9Semaphore+0x10>
    800022ac:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800022b0:	00853503          	ld	a0,8(a0)
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	17c080e7          	jalr	380(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
}
    800022bc:	00813083          	ld	ra,8(sp)
    800022c0:	00013403          	ld	s0,0(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800022cc:	fe010113          	addi	sp,sp,-32
    800022d0:	00113c23          	sd	ra,24(sp)
    800022d4:	00813823          	sd	s0,16(sp)
    800022d8:	00913423          	sd	s1,8(sp)
    800022dc:	02010413          	addi	s0,sp,32
    800022e0:	00050493          	mv	s1,a0
}
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	fb0080e7          	jalr	-80(ra) # 80002294 <_ZN9SemaphoreD1Ev>
    800022ec:	00048513          	mv	a0,s1
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	db8080e7          	jalr	-584(ra) # 800020a8 <_ZdlPv>
    800022f8:	01813083          	ld	ra,24(sp)
    800022fc:	01013403          	ld	s0,16(sp)
    80002300:	00813483          	ld	s1,8(sp)
    80002304:	02010113          	addi	sp,sp,32
    80002308:	00008067          	ret

000000008000230c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00113423          	sd	ra,8(sp)
    80002314:	00813023          	sd	s0,0(sp)
    80002318:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	0bc080e7          	jalr	188(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80002324:	00813083          	ld	ra,8(sp)
    80002328:	00013403          	ld	s0,0(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813423          	sd	s0,8(sp)
    8000233c:	01010413          	addi	s0,sp,16
    myHandle(nullptr), body(body), arg(arg) {}
    80002340:	00009797          	auipc	a5,0x9
    80002344:	05878793          	addi	a5,a5,88 # 8000b398 <_ZTV6Thread+0x10>
    80002348:	00f53023          	sd	a5,0(a0)
    8000234c:	00053423          	sd	zero,8(a0)
    80002350:	00b53823          	sd	a1,16(a0)
    80002354:	00c53c23          	sd	a2,24(a0)
    80002358:	00813403          	ld	s0,8(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <_ZN6ThreadC1Ev>:
Thread::Thread() :
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
        myHandle(nullptr), body(runWrapper), arg(this) {}
    80002370:	00009797          	auipc	a5,0x9
    80002374:	02878793          	addi	a5,a5,40 # 8000b398 <_ZTV6Thread+0x10>
    80002378:	00f53023          	sd	a5,0(a0)
    8000237c:	00053423          	sd	zero,8(a0)
    80002380:	00000797          	auipc	a5,0x0
    80002384:	17078793          	addi	a5,a5,368 # 800024f0 <_ZN6Thread10runWrapperEPv>
    80002388:	00f53823          	sd	a5,16(a0)
    8000238c:	00a53c23          	sd	a0,24(a0)
    80002390:	00813403          	ld	s0,8(sp)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <_ZN6Thread5startEv>:
int Thread::start() {
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00113423          	sd	ra,8(sp)
    800023a4:	00813023          	sd	s0,0(sp)
    800023a8:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    800023ac:	01853603          	ld	a2,24(a0)
    800023b0:	01053583          	ld	a1,16(a0)
    800023b4:	00850513          	addi	a0,a0,8
    800023b8:	fffff097          	auipc	ra,0xfffff
    800023bc:	f34080e7          	jalr	-204(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
}
    800023c0:	00813083          	ld	ra,8(sp)
    800023c4:	00013403          	ld	s0,0(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00113423          	sd	ra,8(sp)
    800023d8:	00813023          	sd	s0,0(sp)
    800023dc:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	0d4080e7          	jalr	212(ra) # 800014b4 <_Z10time_sleepm>
}
    800023e8:	00813083          	ld	ra,8(sp)
    800023ec:	00013403          	ld	s0,0(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00113423          	sd	ra,8(sp)
    80002400:	00813023          	sd	s0,0(sp)
    80002404:	01010413          	addi	s0,sp,16
    80002408:	00009797          	auipc	a5,0x9
    8000240c:	fb878793          	addi	a5,a5,-72 # 8000b3c0 <_ZTV9Semaphore+0x10>
    80002410:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002414:	00850513          	addi	a0,a0,8
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	fe0080e7          	jalr	-32(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    80002420:	00813083          	ld	ra,8(sp)
    80002424:	00013403          	ld	s0,0(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002440:	00853503          	ld	a0,8(a0)
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	018080e7          	jalr	24(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
}
    8000244c:	00813083          	ld	ra,8(sp)
    80002450:	00013403          	ld	s0,0(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00113423          	sd	ra,8(sp)
    80002464:	00813023          	sd	s0,0(sp)
    80002468:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000246c:	00853503          	ld	a0,8(a0)
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	018080e7          	jalr	24(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002478:	00813083          	ld	ra,8(sp)
    8000247c:	00013403          	ld	s0,0(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00113423          	sd	ra,8(sp)
    80002490:	00813023          	sd	s0,0(sp)
    80002494:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    80002498:	fffff097          	auipc	ra,0xfffff
    8000249c:	070080e7          	jalr	112(ra) # 80001508 <_Z4putcc>
}
    800024a0:	00813083          	ld	ra,8(sp)
    800024a4:	00013403          	ld	s0,0(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_ZN7Console4getcEv>:

char Console::getc() {
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00113423          	sd	ra,8(sp)
    800024b8:	00813023          	sd	s0,0(sp)
    800024bc:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	020080e7          	jalr	32(ra) # 800014e0 <_Z4getcv>
}
    800024c8:	00813083          	ld	ra,8(sp)
    800024cc:	00013403          	ld	s0,0(sp)
    800024d0:	01010113          	addi	sp,sp,16
    800024d4:	00008067          	ret

00000000800024d8 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {}
    800024d8:	ff010113          	addi	sp,sp,-16
    800024dc:	00813423          	sd	s0,8(sp)
    800024e0:	01010413          	addi	s0,sp,16
    800024e4:	00813403          	ld	s0,8(sp)
    800024e8:	01010113          	addi	sp,sp,16
    800024ec:	00008067          	ret

00000000800024f0 <_ZN6Thread10runWrapperEPv>:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void runWrapper(void* thread) {
        if (thread) {
    800024f0:	02050863          	beqz	a0,80002520 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    80002504:	00053783          	ld	a5,0(a0)
    80002508:	0107b783          	ld	a5,16(a5)
    8000250c:	000780e7          	jalr	a5
        }
    }
    80002510:	00813083          	ld	ra,8(sp)
    80002514:	00013403          	ld	s0,0(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret
    80002520:	00008067          	ret

0000000080002524 <_ZN5Riscv10popSppSpieEv>:
#define SUPERVISOR_MODE 9
#define CONSOLE_INTERRUPT 0x8000000000000009UL
#define SOFTWARE_INTERRUPT 0x8000000000000001UL

void Riscv::popSppSpie()
{
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00813423          	sd	s0,8(sp)
    8000252c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002530:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002534:	10200073          	sret
}
    80002538:	00813403          	ld	s0,8(sp)
    8000253c:	01010113          	addi	sp,sp,16
    80002540:	00008067          	ret

0000000080002544 <_ZN5Riscv14handleSyscallsEv>:

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    80002544:	fb010113          	addi	sp,sp,-80
    80002548:	04113423          	sd	ra,72(sp)
    8000254c:	04813023          	sd	s0,64(sp)
    80002550:	02913c23          	sd	s1,56(sp)
    80002554:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002558:	142027f3          	csrr	a5,scause
    8000255c:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002560:	fb043483          	ld	s1,-80(s0)
    uint64 scause = r_scause();

    if (scause == CONSOLE_INTERRUPT) {
    80002564:	fff00793          	li	a5,-1
    80002568:	03f79793          	slli	a5,a5,0x3f
    8000256c:	00978793          	addi	a5,a5,9
    80002570:	06f48a63          	beq	s1,a5,800025e4 <_ZN5Riscv14handleSyscallsEv+0xa0>
        console_handler();
        return;
    }

    if (scause == SOFTWARE_INTERRUPT) {
    80002574:	fff00793          	li	a5,-1
    80002578:	03f79793          	slli	a5,a5,0x3f
    8000257c:	00178793          	addi	a5,a5,1
    80002580:	06f48863          	beq	s1,a5,800025f0 <_ZN5Riscv14handleSyscallsEv+0xac>
        mc_sip(SIP_SSIE);
        return;
    }

    if (scause != USER_MODE && scause != SUPERVISOR_MODE) {
    80002584:	ff848793          	addi	a5,s1,-8
    80002588:	00100713          	li	a4,1
    8000258c:	06f76863          	bltu	a4,a5,800025fc <_ZN5Riscv14handleSyscallsEv+0xb8>
}

inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002590:	00050793          	mv	a5,a0
    80002594:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80002598:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000259c:	14102773          	csrr	a4,sepc
    800025a0:	fce43023          	sd	a4,-64(s0)
    return sepc;
    800025a4:	fc043703          	ld	a4,-64(s0)
        printString(")\n");
        return;
    }

    uint64 codeOperation = Riscv::r_a0();
    uint64 volatile sepc = r_sepc() + 4;
    800025a8:	00470713          	addi	a4,a4,4
    800025ac:	fce43c23          	sd	a4,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025b0:	10002773          	csrr	a4,sstatus
    800025b4:	fae43c23          	sd	a4,-72(s0)
    return sstatus;
    800025b8:	fb843703          	ld	a4,-72(s0)
    uint64 volatile sstatus = r_sstatus();
    800025bc:	fce43823          	sd	a4,-48(s0)

    int returnValue;
    size_t returnSize;
    ABI::Semaphore *semHandlePtr;
    switch (codeOperation) {
    800025c0:	04200713          	li	a4,66
    800025c4:	16f76663          	bltu	a4,a5,80002730 <_ZN5Riscv14handleSyscallsEv+0x1ec>
    800025c8:	00279793          	slli	a5,a5,0x2
    800025cc:	00007717          	auipc	a4,0x7
    800025d0:	ac070713          	addi	a4,a4,-1344 # 8000908c <CONSOLE_STATUS+0x7c>
    800025d4:	00e787b3          	add	a5,a5,a4
    800025d8:	0007a783          	lw	a5,0(a5)
    800025dc:	00e787b3          	add	a5,a5,a4
    800025e0:	00078067          	jr	a5
        console_handler();
    800025e4:	00006097          	auipc	ra,0x6
    800025e8:	0bc080e7          	jalr	188(ra) # 800086a0 <console_handler>
        return;
    800025ec:	1540006f          	j	80002740 <_ZN5Riscv14handleSyscallsEv+0x1fc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800025f0:	00200793          	li	a5,2
    800025f4:	1447b073          	csrc	sip,a5
        return;
    800025f8:	1480006f          	j	80002740 <_ZN5Riscv14handleSyscallsEv+0x1fc>
        printString("Error code: ");
    800025fc:	00007517          	auipc	a0,0x7
    80002600:	a6c50513          	addi	a0,a0,-1428 # 80009068 <CONSOLE_STATUS+0x58>
    80002604:	00003097          	auipc	ra,0x3
    80002608:	d1c080e7          	jalr	-740(ra) # 80005320 <_Z11printStringPKc>
        printInt(scause);
    8000260c:	00000613          	li	a2,0
    80002610:	00a00593          	li	a1,10
    80002614:	0004851b          	sext.w	a0,s1
    80002618:	00003097          	auipc	ra,0x3
    8000261c:	eb8080e7          	jalr	-328(ra) # 800054d0 <_Z8printIntiii>
        printString(" (BNT = ");
    80002620:	00007517          	auipc	a0,0x7
    80002624:	a5850513          	addi	a0,a0,-1448 # 80009078 <CONSOLE_STATUS+0x68>
    80002628:	00003097          	auipc	ra,0x3
    8000262c:	cf8080e7          	jalr	-776(ra) # 80005320 <_Z11printStringPKc>
        printInt(scause >> 63);
    80002630:	00000613          	li	a2,0
    80002634:	00a00593          	li	a1,10
    80002638:	0004a513          	slti	a0,s1,0
    8000263c:	00003097          	auipc	ra,0x3
    80002640:	e94080e7          	jalr	-364(ra) # 800054d0 <_Z8printIntiii>
        printString(")\n");
    80002644:	00007517          	auipc	a0,0x7
    80002648:	a4450513          	addi	a0,a0,-1468 # 80009088 <CONSOLE_STATUS+0x78>
    8000264c:	00003097          	auipc	ra,0x3
    80002650:	cd4080e7          	jalr	-812(ra) # 80005320 <_Z11printStringPKc>
        return;
    80002654:	0ec0006f          	j	80002740 <_ZN5Riscv14handleSyscallsEv+0x1fc>
        case 0x01:
            // mem_alloc (size_t size)
            size_t size;
            void *retPtr;
            __asm__ volatile("mv %0, a1" : "=r" (size));
    80002658:	00058593          	mv	a1,a1
    8000265c:	00009797          	auipc	a5,0x9
    80002660:	fa47c783          	lbu	a5,-92(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002664:	04079263          	bnez	a5,800026a8 <_ZN5Riscv14handleSyscallsEv+0x164>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002668:	00009797          	auipc	a5,0x9
    8000266c:	f207b783          	ld	a5,-224(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002670:	0007b783          	ld	a5,0(a5)
    80002674:	00009717          	auipc	a4,0x9
    80002678:	f9470713          	addi	a4,a4,-108 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000267c:	00f73023          	sd	a5,0(a4)
    80002680:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002684:	00009717          	auipc	a4,0x9
    80002688:	f2473703          	ld	a4,-220(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000268c:	00073703          	ld	a4,0(a4)
    80002690:	40f70733          	sub	a4,a4,a5
    80002694:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002698:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000269c:	00100793          	li	a5,1
    800026a0:	00009717          	auipc	a4,0x9
    800026a4:	f6f70023          	sb	a5,-160(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            retPtr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);
    800026a8:	00659593          	slli	a1,a1,0x6
    800026ac:	00009517          	auipc	a0,0x9
    800026b0:	f5c50513          	addi	a0,a0,-164 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	548080e7          	jalr	1352(ra) # 80002bfc <_ZN15MemoryAllocator9mem_allocEm>

            __asm__ volatile ("mv t0, %0" : : "r" (retPtr));
    800026bc:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800026c0:	04542823          	sw	t0,80(s0)
            break;
    800026c4:	06c0006f          	j	80002730 <_ZN5Riscv14handleSyscallsEv+0x1ec>

        case 0x02:
            // mem_free (void*)
            void *memPtr;
            __asm__ volatile("mv %0, a1" : "=r" (memPtr));
    800026c8:	00058593          	mv	a1,a1
    800026cc:	00009797          	auipc	a5,0x9
    800026d0:	f347c783          	lbu	a5,-204(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026d4:	04079263          	bnez	a5,80002718 <_ZN5Riscv14handleSyscallsEv+0x1d4>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800026d8:	00009797          	auipc	a5,0x9
    800026dc:	eb07b783          	ld	a5,-336(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026e0:	0007b783          	ld	a5,0(a5)
    800026e4:	00009717          	auipc	a4,0x9
    800026e8:	f2470713          	addi	a4,a4,-220 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026ec:	00f73023          	sd	a5,0(a4)
    800026f0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800026f4:	00009717          	auipc	a4,0x9
    800026f8:	eb473703          	ld	a4,-332(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026fc:	00073703          	ld	a4,0(a4)
    80002700:	40f70733          	sub	a4,a4,a5
    80002704:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002708:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000270c:	00100793          	li	a5,1
    80002710:	00009717          	auipc	a4,0x9
    80002714:	eef70823          	sb	a5,-272(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

            returnValue = MemoryAllocator::Instance()->mem_free(memPtr);
    80002718:	00009517          	auipc	a0,0x9
    8000271c:	ef050513          	addi	a0,a0,-272 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002720:	00000097          	auipc	ra,0x0
    80002724:	62c080e7          	jalr	1580(ra) # 80002d4c <_ZN15MemoryAllocator8mem_freeEPv>
    w_sstatus(sstatus);
    w_sepc(sepc);
    return;

    stRetVal:
    __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
    80002728:	00050293          	mv	t0,a0
    __asm__ volatile ("sw t0, 80(x8)");
    8000272c:	04542823          	sw	t0,80(s0)
    w_sstatus(sstatus);
    80002730:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002734:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    80002738:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000273c:	14179073          	csrw	sepc,a5
    goto ret;
}
    80002740:	04813083          	ld	ra,72(sp)
    80002744:	04013403          	ld	s0,64(sp)
    80002748:	03813483          	ld	s1,56(sp)
    8000274c:	05010113          	addi	sp,sp,80
    80002750:	00008067          	ret
    80002754:	00009797          	auipc	a5,0x9
    80002758:	eac7c783          	lbu	a5,-340(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000275c:	04079263          	bnez	a5,800027a0 <_ZN5Riscv14handleSyscallsEv+0x25c>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002760:	00009797          	auipc	a5,0x9
    80002764:	e287b783          	ld	a5,-472(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002768:	0007b783          	ld	a5,0(a5)
    8000276c:	00009717          	auipc	a4,0x9
    80002770:	e9c70713          	addi	a4,a4,-356 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002774:	00f73023          	sd	a5,0(a4)
    80002778:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000277c:	00009717          	auipc	a4,0x9
    80002780:	e2c73703          	ld	a4,-468(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002784:	00073703          	ld	a4,0(a4)
    80002788:	40f70733          	sub	a4,a4,a5
    8000278c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002790:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002794:	00100793          	li	a5,1
    80002798:	00009717          	auipc	a4,0x9
    8000279c:	e6f70423          	sb	a5,-408(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnSize = MemoryAllocator::Instance()->mem_get_free_space();
    800027a0:	00009517          	auipc	a0,0x9
    800027a4:	e6850513          	addi	a0,a0,-408 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	690080e7          	jalr	1680(ra) # 80002e38 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnSize));
    800027b0:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800027b4:	04542823          	sw	t0,80(s0)
            break;
    800027b8:	f79ff06f          	j	80002730 <_ZN5Riscv14handleSyscallsEv+0x1ec>
    800027bc:	00009797          	auipc	a5,0x9
    800027c0:	e447c783          	lbu	a5,-444(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027c4:	04079263          	bnez	a5,80002808 <_ZN5Riscv14handleSyscallsEv+0x2c4>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800027c8:	00009797          	auipc	a5,0x9
    800027cc:	dc07b783          	ld	a5,-576(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027d0:	0007b783          	ld	a5,0(a5)
    800027d4:	00009717          	auipc	a4,0x9
    800027d8:	e3470713          	addi	a4,a4,-460 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027dc:	00f73023          	sd	a5,0(a4)
    800027e0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800027e4:	00009717          	auipc	a4,0x9
    800027e8:	dc473703          	ld	a4,-572(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800027ec:	00073703          	ld	a4,0(a4)
    800027f0:	40f70733          	sub	a4,a4,a5
    800027f4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800027f8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800027fc:	00100793          	li	a5,1
    80002800:	00009717          	auipc	a4,0x9
    80002804:	e0f70023          	sb	a5,-512(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnSize = MemoryAllocator::Instance()->mem_get_largest_free_block();
    80002808:	00009517          	auipc	a0,0x9
    8000280c:	e0050513          	addi	a0,a0,-512 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002810:	00000097          	auipc	ra,0x0
    80002814:	65c080e7          	jalr	1628(ra) # 80002e6c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnSize));
    80002818:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    8000281c:	04542823          	sw	t0,80(s0)
            break;
    80002820:	f11ff06f          	j	80002730 <_ZN5Riscv14handleSyscallsEv+0x1ec>
            __asm__ volatile ("mv %0, a1" : "=r" (thread));
    80002824:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002828:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %0, a6" : "=r" (stack));
    8000282c:	00080613          	mv	a2,a6
            __asm__ volatile ("mv %0, a7" : "=r" (arg));
    80002830:	00088593          	mv	a1,a7
            *thread = TCB::createThread(body, arg, stack);
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	498080e7          	jalr	1176(ra) # 80001ccc <_ZN3TCB12createThreadEPFvPvES0_Pm>
    8000283c:	00a4b023          	sd	a0,0(s1)
            if (*thread != nullptr) returnValue = 0;
    80002840:	00050663          	beqz	a0,8000284c <_ZN5Riscv14handleSyscallsEv+0x308>
    80002844:	00000513          	li	a0,0
    80002848:	ee1ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            else returnValue = -1;
    8000284c:	fff00513          	li	a0,-1
            goto stRetVal;
    80002850:	ed9ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            returnValue = TCB::exit();
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	718080e7          	jalr	1816(ra) # 80001f6c <_ZN3TCB4exitEv>
            goto stRetVal;
    8000285c:	ecdff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            TCB::dispatch();
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	67c080e7          	jalr	1660(ra) # 80001edc <_ZN3TCB8dispatchEv>
            break;
    80002868:	ec9ff06f          	j	80002730 <_ZN5Riscv14handleSyscallsEv+0x1ec>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    8000286c:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002870:	00060513          	mv	a0,a2
            *semHandle = ABI::Semaphore::createSemaphore(init);
    80002874:	0005051b          	sext.w	a0,a0
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	10c080e7          	jalr	268(ra) # 80001984 <_ZN3ABI9Semaphore15createSemaphoreEj>
    80002880:	00a4b023          	sd	a0,0(s1)
            if (*semHandle != nullptr) returnValue = 0;
    80002884:	00050663          	beqz	a0,80002890 <_ZN5Riscv14handleSyscallsEv+0x34c>
    80002888:	00000513          	li	a0,0
    8000288c:	e9dff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            else returnValue = -1;
    80002890:	fff00513          	li	a0,-1
            goto stRetVal;
    80002894:	e95ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002898:	00058513          	mv	a0,a1
            if (semHandlePtr) returnValue = semHandlePtr->close();
    8000289c:	00050863          	beqz	a0,800028ac <_ZN5Riscv14handleSyscallsEv+0x368>
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	334080e7          	jalr	820(ra) # 80001bd4 <_ZN3ABI9Semaphore5closeEv>
    800028a8:	e81ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            else returnValue = -2;
    800028ac:	ffe00513          	li	a0,-2
            goto stRetVal;
    800028b0:	e79ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028b4:	00058513          	mv	a0,a1
            if (semHandlePtr) returnValue = semHandlePtr->wait();
    800028b8:	00050863          	beqz	a0,800028c8 <_ZN5Riscv14handleSyscallsEv+0x384>
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	204080e7          	jalr	516(ra) # 80001ac0 <_ZN3ABI9Semaphore4waitEv>
    800028c4:	e65ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            else returnValue = -2;
    800028c8:	ffe00513          	li	a0,-2
            goto stRetVal;
    800028cc:	e5dff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028d0:	00058513          	mv	a0,a1
            if (semHandlePtr) returnValue = semHandlePtr->signal();
    800028d4:	00050863          	beqz	a0,800028e4 <_ZN5Riscv14handleSyscallsEv+0x3a0>
    800028d8:	fffff097          	auipc	ra,0xfffff
    800028dc:	2a8080e7          	jalr	680(ra) # 80001b80 <_ZN3ABI9Semaphore6signalEv>
    800028e0:	e49ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            else returnValue = -2;
    800028e4:	ffe00513          	li	a0,-2
            goto stRetVal;
    800028e8:	e41ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            returnValue = __getc();
    800028ec:	00006097          	auipc	ra,0x6
    800028f0:	d7c080e7          	jalr	-644(ra) # 80008668 <__getc>
    800028f4:	0005051b          	sext.w	a0,a0
            goto stRetVal;
    800028f8:	e31ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            __asm__ volatile ("mv %0, a1" : "=r" (c));
    800028fc:	00058513          	mv	a0,a1
            __putc(c);
    80002900:	0ff57513          	andi	a0,a0,255
    80002904:	00006097          	auipc	ra,0x6
    80002908:	d28080e7          	jalr	-728(ra) # 8000862c <__putc>
            break;
    8000290c:	e25ff06f          	j	80002730 <_ZN5Riscv14handleSyscallsEv+0x1ec>

0000000080002910 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00813423          	sd	s0,8(sp)
    80002918:	01010413          	addi	s0,sp,16
    8000291c:	00100793          	li	a5,1
    80002920:	00f50863          	beq	a0,a5,80002930 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002924:	00813403          	ld	s0,8(sp)
    80002928:	01010113          	addi	sp,sp,16
    8000292c:	00008067          	ret
    80002930:	000107b7          	lui	a5,0x10
    80002934:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002938:	fef596e3          	bne	a1,a5,80002924 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    8000293c:	00009797          	auipc	a5,0x9
    80002940:	cf478793          	addi	a5,a5,-780 # 8000b630 <_ZN9Scheduler19readyCoroutineQueueE>
    80002944:	0007b023          	sd	zero,0(a5)
    80002948:	0007b423          	sd	zero,8(a5)
    8000294c:	fd9ff06f          	j	80002924 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002950 <_ZN9Scheduler3getEv>:
{
    80002950:	fe010113          	addi	sp,sp,-32
    80002954:	00113c23          	sd	ra,24(sp)
    80002958:	00813823          	sd	s0,16(sp)
    8000295c:	00913423          	sd	s1,8(sp)
    80002960:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002964:	00009517          	auipc	a0,0x9
    80002968:	ccc53503          	ld	a0,-820(a0) # 8000b630 <_ZN9Scheduler19readyCoroutineQueueE>
    8000296c:	04050263          	beqz	a0,800029b0 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002970:	00853783          	ld	a5,8(a0)
    80002974:	00009717          	auipc	a4,0x9
    80002978:	caf73e23          	sd	a5,-836(a4) # 8000b630 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    8000297c:	02078463          	beqz	a5,800029a4 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002980:	00053483          	ld	s1,0(a0)
        delete elem;
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	724080e7          	jalr	1828(ra) # 800020a8 <_ZdlPv>
}
    8000298c:	00048513          	mv	a0,s1
    80002990:	01813083          	ld	ra,24(sp)
    80002994:	01013403          	ld	s0,16(sp)
    80002998:	00813483          	ld	s1,8(sp)
    8000299c:	02010113          	addi	sp,sp,32
    800029a0:	00008067          	ret
        if (!head) { tail = 0; }
    800029a4:	00009797          	auipc	a5,0x9
    800029a8:	c807ba23          	sd	zero,-876(a5) # 8000b638 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029ac:	fd5ff06f          	j	80002980 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029b0:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800029b4:	fd9ff06f          	j	8000298c <_ZN9Scheduler3getEv+0x3c>

00000000800029b8 <_ZN9Scheduler3putEP3TCB>:
{
    800029b8:	fe010113          	addi	sp,sp,-32
    800029bc:	00113c23          	sd	ra,24(sp)
    800029c0:	00813823          	sd	s0,16(sp)
    800029c4:	00913423          	sd	s1,8(sp)
    800029c8:	02010413          	addi	s0,sp,32
    800029cc:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800029d0:	01000513          	li	a0,16
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	5d4080e7          	jalr	1492(ra) # 80001fa8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800029dc:	00953023          	sd	s1,0(a0)
    800029e0:	00053423          	sd	zero,8(a0)
        if (tail)
    800029e4:	00009797          	auipc	a5,0x9
    800029e8:	c547b783          	ld	a5,-940(a5) # 8000b638 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029ec:	02078263          	beqz	a5,80002a10 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800029f0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800029f4:	00009797          	auipc	a5,0x9
    800029f8:	c4a7b223          	sd	a0,-956(a5) # 8000b638 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029fc:	01813083          	ld	ra,24(sp)
    80002a00:	01013403          	ld	s0,16(sp)
    80002a04:	00813483          	ld	s1,8(sp)
    80002a08:	02010113          	addi	sp,sp,32
    80002a0c:	00008067          	ret
            head = tail = elem;
    80002a10:	00009797          	auipc	a5,0x9
    80002a14:	c2078793          	addi	a5,a5,-992 # 8000b630 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a18:	00a7b423          	sd	a0,8(a5)
    80002a1c:	00a7b023          	sd	a0,0(a5)
    80002a20:	fddff06f          	j	800029fc <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002a24 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002a24:	ff010113          	addi	sp,sp,-16
    80002a28:	00113423          	sd	ra,8(sp)
    80002a2c:	00813023          	sd	s0,0(sp)
    80002a30:	01010413          	addi	s0,sp,16
    80002a34:	000105b7          	lui	a1,0x10
    80002a38:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a3c:	00100513          	li	a0,1
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	ed0080e7          	jalr	-304(ra) # 80002910 <_Z41__static_initialization_and_destruction_0ii>
    80002a48:	00813083          	ld	ra,8(sp)
    80002a4c:	00013403          	ld	s0,0(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <main>:
#include "../test/printing.hpp"

extern void userMain();

int main()
{
    80002a58:	fd010113          	addi	sp,sp,-48
    80002a5c:	02113423          	sd	ra,40(sp)
    80002a60:	02813023          	sd	s0,32(sp)
    80002a64:	00913c23          	sd	s1,24(sp)
    80002a68:	03010413          	addi	s0,sp,48
    TCB *mainThread, *userMainThread;

    Riscv::w_stvec((uint64) &Riscv::stvecTrap);
    80002a6c:	00009797          	auipc	a5,0x9
    80002a70:	b447b783          	ld	a5,-1212(a5) # 8000b5b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002a74:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a78:	00200793          	li	a5,2
    80002a7c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    mainThread = TCB::createThread(nullptr, nullptr, nullptr);
    80002a80:	00000613          	li	a2,0
    80002a84:	00000593          	li	a1,0
    80002a88:	00000513          	li	a0,0
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	240080e7          	jalr	576(ra) # 80001ccc <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002a94:	00050493          	mv	s1,a0
    TCB::main = TCB::running = mainThread;
    80002a98:	00009797          	auipc	a5,0x9
    80002a9c:	b087b783          	ld	a5,-1272(a5) # 8000b5a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002aa0:	00a7b023          	sd	a0,0(a5)
    80002aa4:	00009797          	auipc	a5,0x9
    80002aa8:	af47b783          	ld	a5,-1292(a5) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002aac:	00a7b023          	sd	a0,0(a5)

    if (thread_create(&userMainThread, reinterpret_cast<void (*)(void *)>(userMain), nullptr))
    80002ab0:	00000613          	li	a2,0
    80002ab4:	00009597          	auipc	a1,0x9
    80002ab8:	acc5b583          	ld	a1,-1332(a1) # 8000b580 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002abc:	fd840513          	addi	a0,s0,-40
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	82c080e7          	jalr	-2004(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    80002ac8:	02050663          	beqz	a0,80002af4 <main+0x9c>
        printString("Greska");
    80002acc:	00006517          	auipc	a0,0x6
    80002ad0:	6cc50513          	addi	a0,a0,1740 # 80009198 <CONSOLE_STATUS+0x188>
    80002ad4:	00003097          	auipc	ra,0x3
    80002ad8:	84c080e7          	jalr	-1972(ra) # 80005320 <_Z11printStringPKc>
    else printString("Normalno");

    while(!userMainThread->isFinished()) {
    80002adc:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished; }
    80002ae0:	0207c783          	lbu	a5,32(a5)
    80002ae4:	02079263          	bnez	a5,80002b08 <main+0xb0>
        thread_dispatch();
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	8f0080e7          	jalr	-1808(ra) # 800013d8 <_Z15thread_dispatchv>
    80002af0:	fedff06f          	j	80002adc <main+0x84>
    else printString("Normalno");
    80002af4:	00006517          	auipc	a0,0x6
    80002af8:	6ac50513          	addi	a0,a0,1708 # 800091a0 <CONSOLE_STATUS+0x190>
    80002afc:	00003097          	auipc	ra,0x3
    80002b00:	824080e7          	jalr	-2012(ra) # 80005320 <_Z11printStringPKc>
    80002b04:	fd9ff06f          	j	80002adc <main+0x84>
    }

    printString("Main finished\n");
    80002b08:	00006517          	auipc	a0,0x6
    80002b0c:	6a850513          	addi	a0,a0,1704 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002b10:	00003097          	auipc	ra,0x3
    80002b14:	810080e7          	jalr	-2032(ra) # 80005320 <_Z11printStringPKc>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002b18:	00200793          	li	a5,2
    80002b1c:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    delete mainThread;
    80002b20:	02048063          	beqz	s1,80002b40 <main+0xe8>
    ~TCB() { delete[] stack; }
    80002b24:	0084b503          	ld	a0,8(s1)
    80002b28:	00050663          	beqz	a0,80002b34 <main+0xdc>
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	5fc080e7          	jalr	1532(ra) # 80002128 <_ZdaPv>
    80002b34:	00048513          	mv	a0,s1
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	044080e7          	jalr	68(ra) # 80002b7c <_ZN3TCBdlEPv>
    delete userMainThread;
    80002b40:	fd843483          	ld	s1,-40(s0)
    80002b44:	02048063          	beqz	s1,80002b64 <main+0x10c>
    80002b48:	0084b503          	ld	a0,8(s1)
    80002b4c:	00050663          	beqz	a0,80002b58 <main+0x100>
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	5d8080e7          	jalr	1496(ra) # 80002128 <_ZdaPv>
    80002b58:	00048513          	mv	a0,s1
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	020080e7          	jalr	32(ra) # 80002b7c <_ZN3TCBdlEPv>
    return 0;
    80002b64:	00000513          	li	a0,0
    80002b68:	02813083          	ld	ra,40(sp)
    80002b6c:	02013403          	ld	s0,32(sp)
    80002b70:	01813483          	ld	s1,24(sp)
    80002b74:	03010113          	addi	sp,sp,48
    80002b78:	00008067          	ret

0000000080002b7c <_ZN3TCBdlEPv>:
    void operator delete(void *ptr) {
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00113423          	sd	ra,8(sp)
    80002b84:	00813023          	sd	s0,0(sp)
    80002b88:	01010413          	addi	s0,sp,16
    80002b8c:	00050593          	mv	a1,a0
    80002b90:	00009797          	auipc	a5,0x9
    80002b94:	a707c783          	lbu	a5,-1424(a5) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002b98:	04079263          	bnez	a5,80002bdc <_ZN3TCBdlEPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002b9c:	00009797          	auipc	a5,0x9
    80002ba0:	9ec7b783          	ld	a5,-1556(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ba4:	0007b783          	ld	a5,0(a5)
    80002ba8:	00009717          	auipc	a4,0x9
    80002bac:	a6070713          	addi	a4,a4,-1440 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002bb0:	00f73023          	sd	a5,0(a4)
    80002bb4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002bb8:	00009717          	auipc	a4,0x9
    80002bbc:	9f073703          	ld	a4,-1552(a4) # 8000b5a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002bc0:	00073703          	ld	a4,0(a4)
    80002bc4:	40f70733          	sub	a4,a4,a5
    80002bc8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002bcc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002bd0:	00100793          	li	a5,1
    80002bd4:	00009717          	auipc	a4,0x9
    80002bd8:	a2f70623          	sb	a5,-1492(a4) # 8000b600 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80002bdc:	00009517          	auipc	a0,0x9
    80002be0:	a2c50513          	addi	a0,a0,-1492 # 8000b608 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	168080e7          	jalr	360(ra) # 80002d4c <_ZN15MemoryAllocator8mem_freeEPv>
    }
    80002bec:	00813083          	ld	ra,8(sp)
    80002bf0:	00013403          	ld	s0,0(sp)
    80002bf4:	01010113          	addi	sp,sp,16
    80002bf8:	00008067          	ret

0000000080002bfc <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00813423          	sd	s0,8(sp)
    80002c04:	01010413          	addi	s0,sp,16
    80002c08:	00050613          	mv	a2,a0
    size += sizeof(Header);
    80002c0c:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    80002c10:	fc05f713          	andi	a4,a1,-64
    80002c14:	03f5f593          	andi	a1,a1,63
    80002c18:	00058463          	beqz	a1,80002c20 <_ZN15MemoryAllocator9mem_allocEm+0x24>
    80002c1c:	04000593          	li	a1,64
    80002c20:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002c24:	00063503          	ld	a0,0(a2) # 2000 <_entry-0x7fffe000>
    Header *cur, *prev = nullptr;
    80002c28:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002c2c:	00050c63          	beqz	a0,80002c44 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002c30:	00853783          	ld	a5,8(a0)
    80002c34:	00e7f863          	bgeu	a5,a4,80002c44 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002c38:	00050693          	mv	a3,a0
    80002c3c:	00053503          	ld	a0,0(a0)
    80002c40:	fedff06f          	j	80002c2c <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    80002c44:	08050a63          	beqz	a0,80002cd8 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    80002c48:	00853783          	ld	a5,8(a0)
    80002c4c:	04e78a63          	beq	a5,a4,80002ca0 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    80002c50:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    80002c54:	06068463          	beqz	a3,80002cbc <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002c58:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    80002c5c:	00053683          	ld	a3,0(a0)
    80002c60:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    80002c64:	00853683          	ld	a3,8(a0)
    80002c68:	40e686b3          	sub	a3,a3,a4
    80002c6c:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    80002c70:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    80002c74:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    80002c78:	00863683          	ld	a3,8(a2)
    80002c7c:	04068463          	beqz	a3,80002cc4 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002c80:	00068793          	mv	a5,a3
    80002c84:	00078713          	mv	a4,a5
    80002c88:	0007b783          	ld	a5,0(a5)
    80002c8c:	00078463          	beqz	a5,80002c94 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80002c90:	fea7eae3          	bltu	a5,a0,80002c84 <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    80002c94:	02070a63          	beqz	a4,80002cc8 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002c98:	00f53023          	sd	a5,0(a0)
    80002c9c:	0300006f          	j	80002ccc <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    80002ca0:	00068863          	beqz	a3,80002cb0 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002ca4:	00053783          	ld	a5,0(a0)
    80002ca8:	00f6b023          	sd	a5,0(a3)
    80002cac:	fc5ff06f          	j	80002c70 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    80002cb0:	00053783          	ld	a5,0(a0)
    80002cb4:	00f63023          	sd	a5,0(a2)
    80002cb8:	fb9ff06f          	j	80002c70 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002cbc:	00f63023          	sd	a5,0(a2)
    80002cc0:	f9dff06f          	j	80002c5c <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002cc4:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    80002cc8:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002ccc:	00070c63          	beqz	a4,80002ce4 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002cd0:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002cd4:	01050513          	addi	a0,a0,16
}
    80002cd8:	00813403          	ld	s0,8(sp)
    80002cdc:	01010113          	addi	sp,sp,16
    80002ce0:	00008067          	ret
    else alloc_head = target;
    80002ce4:	00a63423          	sd	a0,8(a2)
    80002ce8:	fedff06f          	j	80002cd4 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002cec <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002cec:	ff010113          	addi	sp,sp,-16
    80002cf0:	00813423          	sd	s0,8(sp)
    80002cf4:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    80002cf8:	04050263          	beqz	a0,80002d3c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002cfc:	00053783          	ld	a5,0(a0)
    80002d00:	04078263          	beqz	a5,80002d44 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002d04:	00853703          	ld	a4,8(a0)
    80002d08:	00e506b3          	add	a3,a0,a4
    80002d0c:	00d78a63          	beq	a5,a3,80002d20 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    80002d10:	00000513          	li	a0,0
}
    80002d14:	00813403          	ld	s0,8(sp)
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00008067          	ret
        cur->size += cur->next->size;
    80002d20:	0087b683          	ld	a3,8(a5)
    80002d24:	00d70733          	add	a4,a4,a3
    80002d28:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    80002d2c:	0007b783          	ld	a5,0(a5)
    80002d30:	00f53023          	sd	a5,0(a0)
        return 1;
    80002d34:	00100513          	li	a0,1
    80002d38:	fddff06f          	j	80002d14 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    80002d3c:	00000513          	li	a0,0
    80002d40:	fd5ff06f          	j	80002d14 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    80002d44:	00000513          	li	a0,0
    80002d48:	fcdff06f          	j	80002d14 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

0000000080002d4c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    80002d4c:	0c058a63          	beqz	a1,80002e20 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002d50:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    80002d54:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002d58:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    80002d5c:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002d60:	00078a63          	beqz	a5,80002d74 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002d64:	00a7f863          	bgeu	a5,a0,80002d74 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002d68:	00078713          	mv	a4,a5
    80002d6c:	0007b783          	ld	a5,0(a5)
    80002d70:	ff1ff06f          	j	80002d60 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002d74:	0a078a63          	beqz	a5,80002e28 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002d78:	0aa79c63          	bne	a5,a0,80002e30 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    80002d7c:	fe010113          	addi	sp,sp,-32
    80002d80:	00113c23          	sd	ra,24(sp)
    80002d84:	00813823          	sd	s0,16(sp)
    80002d88:	00913423          	sd	s1,8(sp)
    80002d8c:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    80002d90:	02070c63          	beqz	a4,80002dc8 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    80002d94:	0007b783          	ld	a5,0(a5)
    80002d98:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002d9c:	0006b703          	ld	a4,0(a3)
    80002da0:	02070a63          	beqz	a4,80002dd4 <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    80002da4:	02e56c63          	bltu	a0,a4,80002ddc <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002da8:	00070793          	mv	a5,a4
    80002dac:	00078493          	mv	s1,a5
    80002db0:	0007b783          	ld	a5,0(a5)
    80002db4:	00078463          	beqz	a5,80002dbc <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002db8:	fea7eae3          	bltu	a5,a0,80002dac <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002dbc:	02048263          	beqz	s1,80002de0 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002dc0:	fef5b823          	sd	a5,-16(a1)
    80002dc4:	0200006f          	j	80002de4 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    80002dc8:	0007b783          	ld	a5,0(a5)
    80002dcc:	00f6b423          	sd	a5,8(a3)
    80002dd0:	fcdff06f          	j	80002d9c <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002dd4:	00070493          	mv	s1,a4
    80002dd8:	0080006f          	j	80002de0 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002ddc:	00000493          	li	s1,0
    else target->next = free_head;
    80002de0:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002de4:	02048a63          	beqz	s1,80002e18 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002de8:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	f00080e7          	jalr	-256(ra) # 80002cec <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002df4:	00048513          	mv	a0,s1
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	ef4080e7          	jalr	-268(ra) # 80002cec <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    80002e00:	00000513          	li	a0,0
}
    80002e04:	01813083          	ld	ra,24(sp)
    80002e08:	01013403          	ld	s0,16(sp)
    80002e0c:	00813483          	ld	s1,8(sp)
    80002e10:	02010113          	addi	sp,sp,32
    80002e14:	00008067          	ret
    else free_head = target;
    80002e18:	00a6b023          	sd	a0,0(a3)
    80002e1c:	fd1ff06f          	j	80002dec <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    80002e20:	fff00513          	li	a0,-1
    80002e24:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002e28:	ffe00513          	li	a0,-2
    80002e2c:	00008067          	ret
    80002e30:	ffe00513          	li	a0,-2
}
    80002e34:	00008067          	ret

0000000080002e38 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002e38:	ff010113          	addi	sp,sp,-16
    80002e3c:	00813423          	sd	s0,8(sp)
    80002e40:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e44:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002e48:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e4c:	00078a63          	beqz	a5,80002e60 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    80002e50:	0087b703          	ld	a4,8(a5)
    80002e54:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e58:	0007b783          	ld	a5,0(a5)
    80002e5c:	ff1ff06f          	j	80002e4c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    80002e60:	00813403          	ld	s0,8(sp)
    80002e64:	01010113          	addi	sp,sp,16
    80002e68:	00008067          	ret

0000000080002e6c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002e6c:	ff010113          	addi	sp,sp,-16
    80002e70:	00813423          	sd	s0,8(sp)
    80002e74:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e78:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002e7c:	00000513          	li	a0,0
    80002e80:	0080006f          	j	80002e88 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e84:	0007b783          	ld	a5,0(a5)
    80002e88:	00078a63          	beqz	a5,80002e9c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    80002e8c:	0087b703          	ld	a4,8(a5)
    80002e90:	fee57ae3          	bgeu	a0,a4,80002e84 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    80002e94:	00070513          	mv	a0,a4
    80002e98:	fedff06f          	j	80002e84 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    80002e9c:	00813403          	ld	s0,8(sp)
    80002ea0:	01010113          	addi	sp,sp,16
    80002ea4:	00008067          	ret

0000000080002ea8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002ea8:	fe010113          	addi	sp,sp,-32
    80002eac:	00113c23          	sd	ra,24(sp)
    80002eb0:	00813823          	sd	s0,16(sp)
    80002eb4:	00913423          	sd	s1,8(sp)
    80002eb8:	01213023          	sd	s2,0(sp)
    80002ebc:	02010413          	addi	s0,sp,32
    80002ec0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ec4:	00000913          	li	s2,0
    80002ec8:	00c0006f          	j	80002ed4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'e') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ecc:	ffffe097          	auipc	ra,0xffffe
    80002ed0:	50c080e7          	jalr	1292(ra) # 800013d8 <_Z15thread_dispatchv>
    while ((key = getc()) != 'e') {
    80002ed4:	ffffe097          	auipc	ra,0xffffe
    80002ed8:	60c080e7          	jalr	1548(ra) # 800014e0 <_Z4getcv>
    80002edc:	0005059b          	sext.w	a1,a0
    80002ee0:	06500793          	li	a5,101
    80002ee4:	02f58a63          	beq	a1,a5,80002f18 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002ee8:	0084b503          	ld	a0,8(s1)
    80002eec:	00003097          	auipc	ra,0x3
    80002ef0:	3f4080e7          	jalr	1012(ra) # 800062e0 <_ZN6Buffer3putEi>
        i++;
    80002ef4:	0019071b          	addiw	a4,s2,1
    80002ef8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002efc:	0004a683          	lw	a3,0(s1)
    80002f00:	0026979b          	slliw	a5,a3,0x2
    80002f04:	00d787bb          	addw	a5,a5,a3
    80002f08:	0017979b          	slliw	a5,a5,0x1
    80002f0c:	02f767bb          	remw	a5,a4,a5
    80002f10:	fc0792e3          	bnez	a5,80002ed4 <_ZL16producerKeyboardPv+0x2c>
    80002f14:	fb9ff06f          	j	80002ecc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002f18:	00100793          	li	a5,1
    80002f1c:	00008717          	auipc	a4,0x8
    80002f20:	72f72223          	sw	a5,1828(a4) # 8000b640 <_ZL9threadEnd>
    data->buffer->put('!');
    80002f24:	02100593          	li	a1,33
    80002f28:	0084b503          	ld	a0,8(s1)
    80002f2c:	00003097          	auipc	ra,0x3
    80002f30:	3b4080e7          	jalr	948(ra) # 800062e0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002f34:	0104b503          	ld	a0,16(s1)
    80002f38:	ffffe097          	auipc	ra,0xffffe
    80002f3c:	550080e7          	jalr	1360(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	00813483          	ld	s1,8(sp)
    80002f4c:	00013903          	ld	s2,0(sp)
    80002f50:	02010113          	addi	sp,sp,32
    80002f54:	00008067          	ret

0000000080002f58 <_ZL8producerPv>:

static void producer(void *arg) {
    80002f58:	fe010113          	addi	sp,sp,-32
    80002f5c:	00113c23          	sd	ra,24(sp)
    80002f60:	00813823          	sd	s0,16(sp)
    80002f64:	00913423          	sd	s1,8(sp)
    80002f68:	01213023          	sd	s2,0(sp)
    80002f6c:	02010413          	addi	s0,sp,32
    80002f70:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f74:	00000913          	li	s2,0
    80002f78:	00c0006f          	j	80002f84 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002f7c:	ffffe097          	auipc	ra,0xffffe
    80002f80:	45c080e7          	jalr	1116(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002f84:	00008797          	auipc	a5,0x8
    80002f88:	6bc7a783          	lw	a5,1724(a5) # 8000b640 <_ZL9threadEnd>
    80002f8c:	02079e63          	bnez	a5,80002fc8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002f90:	0004a583          	lw	a1,0(s1)
    80002f94:	0305859b          	addiw	a1,a1,48
    80002f98:	0084b503          	ld	a0,8(s1)
    80002f9c:	00003097          	auipc	ra,0x3
    80002fa0:	344080e7          	jalr	836(ra) # 800062e0 <_ZN6Buffer3putEi>
        i++;
    80002fa4:	0019071b          	addiw	a4,s2,1
    80002fa8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002fac:	0004a683          	lw	a3,0(s1)
    80002fb0:	0026979b          	slliw	a5,a3,0x2
    80002fb4:	00d787bb          	addw	a5,a5,a3
    80002fb8:	0017979b          	slliw	a5,a5,0x1
    80002fbc:	02f767bb          	remw	a5,a4,a5
    80002fc0:	fc0792e3          	bnez	a5,80002f84 <_ZL8producerPv+0x2c>
    80002fc4:	fb9ff06f          	j	80002f7c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002fc8:	0104b503          	ld	a0,16(s1)
    80002fcc:	ffffe097          	auipc	ra,0xffffe
    80002fd0:	4bc080e7          	jalr	1212(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002fd4:	01813083          	ld	ra,24(sp)
    80002fd8:	01013403          	ld	s0,16(sp)
    80002fdc:	00813483          	ld	s1,8(sp)
    80002fe0:	00013903          	ld	s2,0(sp)
    80002fe4:	02010113          	addi	sp,sp,32
    80002fe8:	00008067          	ret

0000000080002fec <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002fec:	fd010113          	addi	sp,sp,-48
    80002ff0:	02113423          	sd	ra,40(sp)
    80002ff4:	02813023          	sd	s0,32(sp)
    80002ff8:	00913c23          	sd	s1,24(sp)
    80002ffc:	01213823          	sd	s2,16(sp)
    80003000:	01313423          	sd	s3,8(sp)
    80003004:	03010413          	addi	s0,sp,48
    80003008:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000300c:	00000993          	li	s3,0
    80003010:	01c0006f          	j	8000302c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003014:	ffffe097          	auipc	ra,0xffffe
    80003018:	3c4080e7          	jalr	964(ra) # 800013d8 <_Z15thread_dispatchv>
    8000301c:	0500006f          	j	8000306c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003020:	00a00513          	li	a0,10
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	4e4080e7          	jalr	1252(ra) # 80001508 <_Z4putcc>
    while (!threadEnd) {
    8000302c:	00008797          	auipc	a5,0x8
    80003030:	6147a783          	lw	a5,1556(a5) # 8000b640 <_ZL9threadEnd>
    80003034:	06079063          	bnez	a5,80003094 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003038:	00893503          	ld	a0,8(s2)
    8000303c:	00003097          	auipc	ra,0x3
    80003040:	334080e7          	jalr	820(ra) # 80006370 <_ZN6Buffer3getEv>
        i++;
    80003044:	0019849b          	addiw	s1,s3,1
    80003048:	0004899b          	sext.w	s3,s1
        putc(key);
    8000304c:	0ff57513          	andi	a0,a0,255
    80003050:	ffffe097          	auipc	ra,0xffffe
    80003054:	4b8080e7          	jalr	1208(ra) # 80001508 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003058:	00092703          	lw	a4,0(s2)
    8000305c:	0027179b          	slliw	a5,a4,0x2
    80003060:	00e787bb          	addw	a5,a5,a4
    80003064:	02f4e7bb          	remw	a5,s1,a5
    80003068:	fa0786e3          	beqz	a5,80003014 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000306c:	05000793          	li	a5,80
    80003070:	02f4e4bb          	remw	s1,s1,a5
    80003074:	fa049ce3          	bnez	s1,8000302c <_ZL8consumerPv+0x40>
    80003078:	fa9ff06f          	j	80003020 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000307c:	00893503          	ld	a0,8(s2)
    80003080:	00003097          	auipc	ra,0x3
    80003084:	2f0080e7          	jalr	752(ra) # 80006370 <_ZN6Buffer3getEv>
        putc(key);
    80003088:	0ff57513          	andi	a0,a0,255
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	47c080e7          	jalr	1148(ra) # 80001508 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003094:	00893503          	ld	a0,8(s2)
    80003098:	00003097          	auipc	ra,0x3
    8000309c:	364080e7          	jalr	868(ra) # 800063fc <_ZN6Buffer6getCntEv>
    800030a0:	fca04ee3          	bgtz	a0,8000307c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800030a4:	01093503          	ld	a0,16(s2)
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	3e0080e7          	jalr	992(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    800030b0:	02813083          	ld	ra,40(sp)
    800030b4:	02013403          	ld	s0,32(sp)
    800030b8:	01813483          	ld	s1,24(sp)
    800030bc:	01013903          	ld	s2,16(sp)
    800030c0:	00813983          	ld	s3,8(sp)
    800030c4:	03010113          	addi	sp,sp,48
    800030c8:	00008067          	ret

00000000800030cc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800030cc:	f9010113          	addi	sp,sp,-112
    800030d0:	06113423          	sd	ra,104(sp)
    800030d4:	06813023          	sd	s0,96(sp)
    800030d8:	04913c23          	sd	s1,88(sp)
    800030dc:	05213823          	sd	s2,80(sp)
    800030e0:	05313423          	sd	s3,72(sp)
    800030e4:	05413023          	sd	s4,64(sp)
    800030e8:	03513c23          	sd	s5,56(sp)
    800030ec:	03613823          	sd	s6,48(sp)
    800030f0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800030f4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800030f8:	00006517          	auipc	a0,0x6
    800030fc:	0c850513          	addi	a0,a0,200 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003100:	00002097          	auipc	ra,0x2
    80003104:	220080e7          	jalr	544(ra) # 80005320 <_Z11printStringPKc>
    getString(input, 30);
    80003108:	01e00593          	li	a1,30
    8000310c:	fa040493          	addi	s1,s0,-96
    80003110:	00048513          	mv	a0,s1
    80003114:	00002097          	auipc	ra,0x2
    80003118:	294080e7          	jalr	660(ra) # 800053a8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000311c:	00048513          	mv	a0,s1
    80003120:	00002097          	auipc	ra,0x2
    80003124:	360080e7          	jalr	864(ra) # 80005480 <_Z11stringToIntPKc>
    80003128:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000312c:	00006517          	auipc	a0,0x6
    80003130:	0b450513          	addi	a0,a0,180 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003134:	00002097          	auipc	ra,0x2
    80003138:	1ec080e7          	jalr	492(ra) # 80005320 <_Z11printStringPKc>
    getString(input, 30);
    8000313c:	01e00593          	li	a1,30
    80003140:	00048513          	mv	a0,s1
    80003144:	00002097          	auipc	ra,0x2
    80003148:	264080e7          	jalr	612(ra) # 800053a8 <_Z9getStringPci>
    n = stringToInt(input);
    8000314c:	00048513          	mv	a0,s1
    80003150:	00002097          	auipc	ra,0x2
    80003154:	330080e7          	jalr	816(ra) # 80005480 <_Z11stringToIntPKc>
    80003158:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000315c:	00006517          	auipc	a0,0x6
    80003160:	0a450513          	addi	a0,a0,164 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003164:	00002097          	auipc	ra,0x2
    80003168:	1bc080e7          	jalr	444(ra) # 80005320 <_Z11printStringPKc>
    8000316c:	00000613          	li	a2,0
    80003170:	00a00593          	li	a1,10
    80003174:	00090513          	mv	a0,s2
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	358080e7          	jalr	856(ra) # 800054d0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003180:	00006517          	auipc	a0,0x6
    80003184:	09850513          	addi	a0,a0,152 # 80009218 <CONSOLE_STATUS+0x208>
    80003188:	00002097          	auipc	ra,0x2
    8000318c:	198080e7          	jalr	408(ra) # 80005320 <_Z11printStringPKc>
    80003190:	00000613          	li	a2,0
    80003194:	00a00593          	li	a1,10
    80003198:	00048513          	mv	a0,s1
    8000319c:	00002097          	auipc	ra,0x2
    800031a0:	334080e7          	jalr	820(ra) # 800054d0 <_Z8printIntiii>
    printString(".\n");
    800031a4:	00006517          	auipc	a0,0x6
    800031a8:	08c50513          	addi	a0,a0,140 # 80009230 <CONSOLE_STATUS+0x220>
    800031ac:	00002097          	auipc	ra,0x2
    800031b0:	174080e7          	jalr	372(ra) # 80005320 <_Z11printStringPKc>
    if(threadNum > n) {
    800031b4:	0324c463          	blt	s1,s2,800031dc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800031b8:	03205c63          	blez	s2,800031f0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800031bc:	03800513          	li	a0,56
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	de8080e7          	jalr	-536(ra) # 80001fa8 <_Znwm>
    800031c8:	00050a13          	mv	s4,a0
    800031cc:	00048593          	mv	a1,s1
    800031d0:	00003097          	auipc	ra,0x3
    800031d4:	074080e7          	jalr	116(ra) # 80006244 <_ZN6BufferC1Ei>
    800031d8:	0300006f          	j	80003208 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800031dc:	00006517          	auipc	a0,0x6
    800031e0:	05c50513          	addi	a0,a0,92 # 80009238 <CONSOLE_STATUS+0x228>
    800031e4:	00002097          	auipc	ra,0x2
    800031e8:	13c080e7          	jalr	316(ra) # 80005320 <_Z11printStringPKc>
        return;
    800031ec:	0140006f          	j	80003200 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800031f0:	00006517          	auipc	a0,0x6
    800031f4:	08850513          	addi	a0,a0,136 # 80009278 <CONSOLE_STATUS+0x268>
    800031f8:	00002097          	auipc	ra,0x2
    800031fc:	128080e7          	jalr	296(ra) # 80005320 <_Z11printStringPKc>
        return;
    80003200:	000b0113          	mv	sp,s6
    80003204:	1500006f          	j	80003354 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003208:	00000593          	li	a1,0
    8000320c:	00008517          	auipc	a0,0x8
    80003210:	43c50513          	addi	a0,a0,1084 # 8000b648 <_ZL10waitForAll>
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	1e4080e7          	jalr	484(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    thread_t threads[threadNum];
    8000321c:	00391793          	slli	a5,s2,0x3
    80003220:	00f78793          	addi	a5,a5,15
    80003224:	ff07f793          	andi	a5,a5,-16
    80003228:	40f10133          	sub	sp,sp,a5
    8000322c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003230:	0019071b          	addiw	a4,s2,1
    80003234:	00171793          	slli	a5,a4,0x1
    80003238:	00e787b3          	add	a5,a5,a4
    8000323c:	00379793          	slli	a5,a5,0x3
    80003240:	00f78793          	addi	a5,a5,15
    80003244:	ff07f793          	andi	a5,a5,-16
    80003248:	40f10133          	sub	sp,sp,a5
    8000324c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003250:	00191613          	slli	a2,s2,0x1
    80003254:	012607b3          	add	a5,a2,s2
    80003258:	00379793          	slli	a5,a5,0x3
    8000325c:	00f987b3          	add	a5,s3,a5
    80003260:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003264:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003268:	00008717          	auipc	a4,0x8
    8000326c:	3e073703          	ld	a4,992(a4) # 8000b648 <_ZL10waitForAll>
    80003270:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003274:	00078613          	mv	a2,a5
    80003278:	00000597          	auipc	a1,0x0
    8000327c:	d7458593          	addi	a1,a1,-652 # 80002fec <_ZL8consumerPv>
    80003280:	f9840513          	addi	a0,s0,-104
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	068080e7          	jalr	104(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000328c:	00000493          	li	s1,0
    80003290:	0280006f          	j	800032b8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003294:	00000597          	auipc	a1,0x0
    80003298:	c1458593          	addi	a1,a1,-1004 # 80002ea8 <_ZL16producerKeyboardPv>
                      data + i);
    8000329c:	00179613          	slli	a2,a5,0x1
    800032a0:	00f60633          	add	a2,a2,a5
    800032a4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800032a8:	00c98633          	add	a2,s3,a2
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	040080e7          	jalr	64(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800032b4:	0014849b          	addiw	s1,s1,1
    800032b8:	0524d263          	bge	s1,s2,800032fc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800032bc:	00149793          	slli	a5,s1,0x1
    800032c0:	009787b3          	add	a5,a5,s1
    800032c4:	00379793          	slli	a5,a5,0x3
    800032c8:	00f987b3          	add	a5,s3,a5
    800032cc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800032d0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800032d4:	00008717          	auipc	a4,0x8
    800032d8:	37473703          	ld	a4,884(a4) # 8000b648 <_ZL10waitForAll>
    800032dc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800032e0:	00048793          	mv	a5,s1
    800032e4:	00349513          	slli	a0,s1,0x3
    800032e8:	00aa8533          	add	a0,s5,a0
    800032ec:	fa9054e3          	blez	s1,80003294 <_Z22producerConsumer_C_APIv+0x1c8>
    800032f0:	00000597          	auipc	a1,0x0
    800032f4:	c6858593          	addi	a1,a1,-920 # 80002f58 <_ZL8producerPv>
    800032f8:	fa5ff06f          	j	8000329c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	0dc080e7          	jalr	220(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003304:	00000493          	li	s1,0
    80003308:	00994e63          	blt	s2,s1,80003324 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000330c:	00008517          	auipc	a0,0x8
    80003310:	33c53503          	ld	a0,828(a0) # 8000b648 <_ZL10waitForAll>
    80003314:	ffffe097          	auipc	ra,0xffffe
    80003318:	148080e7          	jalr	328(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    for (int i = 0; i <= threadNum; i++) {
    8000331c:	0014849b          	addiw	s1,s1,1
    80003320:	fe9ff06f          	j	80003308 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003324:	00008517          	auipc	a0,0x8
    80003328:	32453503          	ld	a0,804(a0) # 8000b648 <_ZL10waitForAll>
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	104080e7          	jalr	260(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    delete buffer;
    80003334:	000a0e63          	beqz	s4,80003350 <_Z22producerConsumer_C_APIv+0x284>
    80003338:	000a0513          	mv	a0,s4
    8000333c:	00003097          	auipc	ra,0x3
    80003340:	148080e7          	jalr	328(ra) # 80006484 <_ZN6BufferD1Ev>
    80003344:	000a0513          	mv	a0,s4
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	d60080e7          	jalr	-672(ra) # 800020a8 <_ZdlPv>
    80003350:	000b0113          	mv	sp,s6
}
    80003354:	f9040113          	addi	sp,s0,-112
    80003358:	06813083          	ld	ra,104(sp)
    8000335c:	06013403          	ld	s0,96(sp)
    80003360:	05813483          	ld	s1,88(sp)
    80003364:	05013903          	ld	s2,80(sp)
    80003368:	04813983          	ld	s3,72(sp)
    8000336c:	04013a03          	ld	s4,64(sp)
    80003370:	03813a83          	ld	s5,56(sp)
    80003374:	03013b03          	ld	s6,48(sp)
    80003378:	07010113          	addi	sp,sp,112
    8000337c:	00008067          	ret
    80003380:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003384:	000a0513          	mv	a0,s4
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	d20080e7          	jalr	-736(ra) # 800020a8 <_ZdlPv>
    80003390:	00048513          	mv	a0,s1
    80003394:	00009097          	auipc	ra,0x9
    80003398:	3c4080e7          	jalr	964(ra) # 8000c758 <_Unwind_Resume>

000000008000339c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00113c23          	sd	ra,24(sp)
    800033a4:	00813823          	sd	s0,16(sp)
    800033a8:	00913423          	sd	s1,8(sp)
    800033ac:	01213023          	sd	s2,0(sp)
    800033b0:	02010413          	addi	s0,sp,32
    800033b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800033b8:	00100793          	li	a5,1
    800033bc:	02a7f863          	bgeu	a5,a0,800033ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800033c0:	00a00793          	li	a5,10
    800033c4:	02f577b3          	remu	a5,a0,a5
    800033c8:	02078e63          	beqz	a5,80003404 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800033cc:	fff48513          	addi	a0,s1,-1
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	fcc080e7          	jalr	-52(ra) # 8000339c <_ZL9fibonaccim>
    800033d8:	00050913          	mv	s2,a0
    800033dc:	ffe48513          	addi	a0,s1,-2
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	fbc080e7          	jalr	-68(ra) # 8000339c <_ZL9fibonaccim>
    800033e8:	00a90533          	add	a0,s2,a0
}
    800033ec:	01813083          	ld	ra,24(sp)
    800033f0:	01013403          	ld	s0,16(sp)
    800033f4:	00813483          	ld	s1,8(sp)
    800033f8:	00013903          	ld	s2,0(sp)
    800033fc:	02010113          	addi	sp,sp,32
    80003400:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003404:	ffffe097          	auipc	ra,0xffffe
    80003408:	fd4080e7          	jalr	-44(ra) # 800013d8 <_Z15thread_dispatchv>
    8000340c:	fc1ff06f          	j	800033cc <_ZL9fibonaccim+0x30>

0000000080003410 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003410:	fe010113          	addi	sp,sp,-32
    80003414:	00113c23          	sd	ra,24(sp)
    80003418:	00813823          	sd	s0,16(sp)
    8000341c:	00913423          	sd	s1,8(sp)
    80003420:	01213023          	sd	s2,0(sp)
    80003424:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003428:	00000913          	li	s2,0
    8000342c:	0380006f          	j	80003464 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003430:	ffffe097          	auipc	ra,0xffffe
    80003434:	fa8080e7          	jalr	-88(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003438:	00148493          	addi	s1,s1,1
    8000343c:	000027b7          	lui	a5,0x2
    80003440:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003444:	0097ee63          	bltu	a5,s1,80003460 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003448:	00000713          	li	a4,0
    8000344c:	000077b7          	lui	a5,0x7
    80003450:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003454:	fce7eee3          	bltu	a5,a4,80003430 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003458:	00170713          	addi	a4,a4,1
    8000345c:	ff1ff06f          	j	8000344c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003460:	00190913          	addi	s2,s2,1
    80003464:	00900793          	li	a5,9
    80003468:	0527e063          	bltu	a5,s2,800034a8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000346c:	00006517          	auipc	a0,0x6
    80003470:	bb450513          	addi	a0,a0,-1100 # 80009020 <CONSOLE_STATUS+0x10>
    80003474:	00002097          	auipc	ra,0x2
    80003478:	eac080e7          	jalr	-340(ra) # 80005320 <_Z11printStringPKc>
    8000347c:	00000613          	li	a2,0
    80003480:	00a00593          	li	a1,10
    80003484:	0009051b          	sext.w	a0,s2
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	048080e7          	jalr	72(ra) # 800054d0 <_Z8printIntiii>
    80003490:	00006517          	auipc	a0,0x6
    80003494:	09850513          	addi	a0,a0,152 # 80009528 <CONSOLE_STATUS+0x518>
    80003498:	00002097          	auipc	ra,0x2
    8000349c:	e88080e7          	jalr	-376(ra) # 80005320 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800034a0:	00000493          	li	s1,0
    800034a4:	f99ff06f          	j	8000343c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800034a8:	00006517          	auipc	a0,0x6
    800034ac:	e0050513          	addi	a0,a0,-512 # 800092a8 <CONSOLE_STATUS+0x298>
    800034b0:	00002097          	auipc	ra,0x2
    800034b4:	e70080e7          	jalr	-400(ra) # 80005320 <_Z11printStringPKc>
    finishedA = true;
    800034b8:	00100793          	li	a5,1
    800034bc:	00008717          	auipc	a4,0x8
    800034c0:	18f70a23          	sb	a5,404(a4) # 8000b650 <_ZL9finishedA>
}
    800034c4:	01813083          	ld	ra,24(sp)
    800034c8:	01013403          	ld	s0,16(sp)
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	00013903          	ld	s2,0(sp)
    800034d4:	02010113          	addi	sp,sp,32
    800034d8:	00008067          	ret

00000000800034dc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800034dc:	fe010113          	addi	sp,sp,-32
    800034e0:	00113c23          	sd	ra,24(sp)
    800034e4:	00813823          	sd	s0,16(sp)
    800034e8:	00913423          	sd	s1,8(sp)
    800034ec:	01213023          	sd	s2,0(sp)
    800034f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800034f4:	00000913          	li	s2,0
    800034f8:	0380006f          	j	80003530 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	edc080e7          	jalr	-292(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003504:	00148493          	addi	s1,s1,1
    80003508:	000027b7          	lui	a5,0x2
    8000350c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003510:	0097ee63          	bltu	a5,s1,8000352c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003514:	00000713          	li	a4,0
    80003518:	000077b7          	lui	a5,0x7
    8000351c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003520:	fce7eee3          	bltu	a5,a4,800034fc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003524:	00170713          	addi	a4,a4,1
    80003528:	ff1ff06f          	j	80003518 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000352c:	00190913          	addi	s2,s2,1
    80003530:	00f00793          	li	a5,15
    80003534:	0527e063          	bltu	a5,s2,80003574 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	b1850513          	addi	a0,a0,-1256 # 80009050 <CONSOLE_STATUS+0x40>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	de0080e7          	jalr	-544(ra) # 80005320 <_Z11printStringPKc>
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	0009051b          	sext.w	a0,s2
    80003554:	00002097          	auipc	ra,0x2
    80003558:	f7c080e7          	jalr	-132(ra) # 800054d0 <_Z8printIntiii>
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	fcc50513          	addi	a0,a0,-52 # 80009528 <CONSOLE_STATUS+0x518>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	dbc080e7          	jalr	-580(ra) # 80005320 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000356c:	00000493          	li	s1,0
    80003570:	f99ff06f          	j	80003508 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003574:	00006517          	auipc	a0,0x6
    80003578:	d4450513          	addi	a0,a0,-700 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000357c:	00002097          	auipc	ra,0x2
    80003580:	da4080e7          	jalr	-604(ra) # 80005320 <_Z11printStringPKc>
    finishedB = true;
    80003584:	00100793          	li	a5,1
    80003588:	00008717          	auipc	a4,0x8
    8000358c:	0cf704a3          	sb	a5,201(a4) # 8000b651 <_ZL9finishedB>
    thread_dispatch();
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	e48080e7          	jalr	-440(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80003598:	01813083          	ld	ra,24(sp)
    8000359c:	01013403          	ld	s0,16(sp)
    800035a0:	00813483          	ld	s1,8(sp)
    800035a4:	00013903          	ld	s2,0(sp)
    800035a8:	02010113          	addi	sp,sp,32
    800035ac:	00008067          	ret

00000000800035b0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800035b0:	fe010113          	addi	sp,sp,-32
    800035b4:	00113c23          	sd	ra,24(sp)
    800035b8:	00813823          	sd	s0,16(sp)
    800035bc:	00913423          	sd	s1,8(sp)
    800035c0:	01213023          	sd	s2,0(sp)
    800035c4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800035c8:	00000493          	li	s1,0
    800035cc:	0400006f          	j	8000360c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035d0:	00006517          	auipc	a0,0x6
    800035d4:	cf850513          	addi	a0,a0,-776 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	d48080e7          	jalr	-696(ra) # 80005320 <_Z11printStringPKc>
    800035e0:	00000613          	li	a2,0
    800035e4:	00a00593          	li	a1,10
    800035e8:	00048513          	mv	a0,s1
    800035ec:	00002097          	auipc	ra,0x2
    800035f0:	ee4080e7          	jalr	-284(ra) # 800054d0 <_Z8printIntiii>
    800035f4:	00006517          	auipc	a0,0x6
    800035f8:	f3450513          	addi	a0,a0,-204 # 80009528 <CONSOLE_STATUS+0x518>
    800035fc:	00002097          	auipc	ra,0x2
    80003600:	d24080e7          	jalr	-732(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003604:	0014849b          	addiw	s1,s1,1
    80003608:	0ff4f493          	andi	s1,s1,255
    8000360c:	00200793          	li	a5,2
    80003610:	fc97f0e3          	bgeu	a5,s1,800035d0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003614:	00006517          	auipc	a0,0x6
    80003618:	cbc50513          	addi	a0,a0,-836 # 800092d0 <CONSOLE_STATUS+0x2c0>
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	d04080e7          	jalr	-764(ra) # 80005320 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003624:	00700313          	li	t1,7
    thread_dispatch();
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	db0080e7          	jalr	-592(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003630:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003634:	00006517          	auipc	a0,0x6
    80003638:	cac50513          	addi	a0,a0,-852 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	ce4080e7          	jalr	-796(ra) # 80005320 <_Z11printStringPKc>
    80003644:	00000613          	li	a2,0
    80003648:	00a00593          	li	a1,10
    8000364c:	0009051b          	sext.w	a0,s2
    80003650:	00002097          	auipc	ra,0x2
    80003654:	e80080e7          	jalr	-384(ra) # 800054d0 <_Z8printIntiii>
    80003658:	00006517          	auipc	a0,0x6
    8000365c:	ed050513          	addi	a0,a0,-304 # 80009528 <CONSOLE_STATUS+0x518>
    80003660:	00002097          	auipc	ra,0x2
    80003664:	cc0080e7          	jalr	-832(ra) # 80005320 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003668:	00c00513          	li	a0,12
    8000366c:	00000097          	auipc	ra,0x0
    80003670:	d30080e7          	jalr	-720(ra) # 8000339c <_ZL9fibonaccim>
    80003674:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	c7050513          	addi	a0,a0,-912 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003680:	00002097          	auipc	ra,0x2
    80003684:	ca0080e7          	jalr	-864(ra) # 80005320 <_Z11printStringPKc>
    80003688:	00000613          	li	a2,0
    8000368c:	00a00593          	li	a1,10
    80003690:	0009051b          	sext.w	a0,s2
    80003694:	00002097          	auipc	ra,0x2
    80003698:	e3c080e7          	jalr	-452(ra) # 800054d0 <_Z8printIntiii>
    8000369c:	00006517          	auipc	a0,0x6
    800036a0:	e8c50513          	addi	a0,a0,-372 # 80009528 <CONSOLE_STATUS+0x518>
    800036a4:	00002097          	auipc	ra,0x2
    800036a8:	c7c080e7          	jalr	-900(ra) # 80005320 <_Z11printStringPKc>
    800036ac:	0400006f          	j	800036ec <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800036b0:	00006517          	auipc	a0,0x6
    800036b4:	c1850513          	addi	a0,a0,-1000 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800036b8:	00002097          	auipc	ra,0x2
    800036bc:	c68080e7          	jalr	-920(ra) # 80005320 <_Z11printStringPKc>
    800036c0:	00000613          	li	a2,0
    800036c4:	00a00593          	li	a1,10
    800036c8:	00048513          	mv	a0,s1
    800036cc:	00002097          	auipc	ra,0x2
    800036d0:	e04080e7          	jalr	-508(ra) # 800054d0 <_Z8printIntiii>
    800036d4:	00006517          	auipc	a0,0x6
    800036d8:	e5450513          	addi	a0,a0,-428 # 80009528 <CONSOLE_STATUS+0x518>
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	c44080e7          	jalr	-956(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800036e4:	0014849b          	addiw	s1,s1,1
    800036e8:	0ff4f493          	andi	s1,s1,255
    800036ec:	00500793          	li	a5,5
    800036f0:	fc97f0e3          	bgeu	a5,s1,800036b0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800036f4:	00006517          	auipc	a0,0x6
    800036f8:	bb450513          	addi	a0,a0,-1100 # 800092a8 <CONSOLE_STATUS+0x298>
    800036fc:	00002097          	auipc	ra,0x2
    80003700:	c24080e7          	jalr	-988(ra) # 80005320 <_Z11printStringPKc>
    finishedC = true;
    80003704:	00100793          	li	a5,1
    80003708:	00008717          	auipc	a4,0x8
    8000370c:	f4f70523          	sb	a5,-182(a4) # 8000b652 <_ZL9finishedC>
    thread_dispatch();
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	cc8080e7          	jalr	-824(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80003718:	01813083          	ld	ra,24(sp)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	00013903          	ld	s2,0(sp)
    80003728:	02010113          	addi	sp,sp,32
    8000372c:	00008067          	ret

0000000080003730 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00113c23          	sd	ra,24(sp)
    80003738:	00813823          	sd	s0,16(sp)
    8000373c:	00913423          	sd	s1,8(sp)
    80003740:	01213023          	sd	s2,0(sp)
    80003744:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003748:	00a00493          	li	s1,10
    8000374c:	0400006f          	j	8000378c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003750:	00006517          	auipc	a0,0x6
    80003754:	ba850513          	addi	a0,a0,-1112 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	bc8080e7          	jalr	-1080(ra) # 80005320 <_Z11printStringPKc>
    80003760:	00000613          	li	a2,0
    80003764:	00a00593          	li	a1,10
    80003768:	00048513          	mv	a0,s1
    8000376c:	00002097          	auipc	ra,0x2
    80003770:	d64080e7          	jalr	-668(ra) # 800054d0 <_Z8printIntiii>
    80003774:	00006517          	auipc	a0,0x6
    80003778:	db450513          	addi	a0,a0,-588 # 80009528 <CONSOLE_STATUS+0x518>
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	ba4080e7          	jalr	-1116(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003784:	0014849b          	addiw	s1,s1,1
    80003788:	0ff4f493          	andi	s1,s1,255
    8000378c:	00c00793          	li	a5,12
    80003790:	fc97f0e3          	bgeu	a5,s1,80003750 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003794:	00006517          	auipc	a0,0x6
    80003798:	b6c50513          	addi	a0,a0,-1172 # 80009300 <CONSOLE_STATUS+0x2f0>
    8000379c:	00002097          	auipc	ra,0x2
    800037a0:	b84080e7          	jalr	-1148(ra) # 80005320 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800037a4:	00500313          	li	t1,5
    thread_dispatch();
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	c30080e7          	jalr	-976(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800037b0:	01000513          	li	a0,16
    800037b4:	00000097          	auipc	ra,0x0
    800037b8:	be8080e7          	jalr	-1048(ra) # 8000339c <_ZL9fibonaccim>
    800037bc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800037c0:	00006517          	auipc	a0,0x6
    800037c4:	b5050513          	addi	a0,a0,-1200 # 80009310 <CONSOLE_STATUS+0x300>
    800037c8:	00002097          	auipc	ra,0x2
    800037cc:	b58080e7          	jalr	-1192(ra) # 80005320 <_Z11printStringPKc>
    800037d0:	00000613          	li	a2,0
    800037d4:	00a00593          	li	a1,10
    800037d8:	0009051b          	sext.w	a0,s2
    800037dc:	00002097          	auipc	ra,0x2
    800037e0:	cf4080e7          	jalr	-780(ra) # 800054d0 <_Z8printIntiii>
    800037e4:	00006517          	auipc	a0,0x6
    800037e8:	d4450513          	addi	a0,a0,-700 # 80009528 <CONSOLE_STATUS+0x518>
    800037ec:	00002097          	auipc	ra,0x2
    800037f0:	b34080e7          	jalr	-1228(ra) # 80005320 <_Z11printStringPKc>
    800037f4:	0400006f          	j	80003834 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800037f8:	00006517          	auipc	a0,0x6
    800037fc:	b0050513          	addi	a0,a0,-1280 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003800:	00002097          	auipc	ra,0x2
    80003804:	b20080e7          	jalr	-1248(ra) # 80005320 <_Z11printStringPKc>
    80003808:	00000613          	li	a2,0
    8000380c:	00a00593          	li	a1,10
    80003810:	00048513          	mv	a0,s1
    80003814:	00002097          	auipc	ra,0x2
    80003818:	cbc080e7          	jalr	-836(ra) # 800054d0 <_Z8printIntiii>
    8000381c:	00006517          	auipc	a0,0x6
    80003820:	d0c50513          	addi	a0,a0,-756 # 80009528 <CONSOLE_STATUS+0x518>
    80003824:	00002097          	auipc	ra,0x2
    80003828:	afc080e7          	jalr	-1284(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000382c:	0014849b          	addiw	s1,s1,1
    80003830:	0ff4f493          	andi	s1,s1,255
    80003834:	00f00793          	li	a5,15
    80003838:	fc97f0e3          	bgeu	a5,s1,800037f8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000383c:	00006517          	auipc	a0,0x6
    80003840:	ae450513          	addi	a0,a0,-1308 # 80009320 <CONSOLE_STATUS+0x310>
    80003844:	00002097          	auipc	ra,0x2
    80003848:	adc080e7          	jalr	-1316(ra) # 80005320 <_Z11printStringPKc>
    finishedD = true;
    8000384c:	00100793          	li	a5,1
    80003850:	00008717          	auipc	a4,0x8
    80003854:	e0f701a3          	sb	a5,-509(a4) # 8000b653 <_ZL9finishedD>
    thread_dispatch();
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	b80080e7          	jalr	-1152(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80003860:	01813083          	ld	ra,24(sp)
    80003864:	01013403          	ld	s0,16(sp)
    80003868:	00813483          	ld	s1,8(sp)
    8000386c:	00013903          	ld	s2,0(sp)
    80003870:	02010113          	addi	sp,sp,32
    80003874:	00008067          	ret

0000000080003878 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003878:	fc010113          	addi	sp,sp,-64
    8000387c:	02113c23          	sd	ra,56(sp)
    80003880:	02813823          	sd	s0,48(sp)
    80003884:	02913423          	sd	s1,40(sp)
    80003888:	03213023          	sd	s2,32(sp)
    8000388c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003890:	02000513          	li	a0,32
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	714080e7          	jalr	1812(ra) # 80001fa8 <_Znwm>
    8000389c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	ac4080e7          	jalr	-1340(ra) # 80002364 <_ZN6ThreadC1Ev>
    800038a8:	00008797          	auipc	a5,0x8
    800038ac:	b3878793          	addi	a5,a5,-1224 # 8000b3e0 <_ZTV7WorkerA+0x10>
    800038b0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800038b4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800038b8:	00006517          	auipc	a0,0x6
    800038bc:	a7850513          	addi	a0,a0,-1416 # 80009330 <CONSOLE_STATUS+0x320>
    800038c0:	00002097          	auipc	ra,0x2
    800038c4:	a60080e7          	jalr	-1440(ra) # 80005320 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800038c8:	02000513          	li	a0,32
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	6dc080e7          	jalr	1756(ra) # 80001fa8 <_Znwm>
    800038d4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	a8c080e7          	jalr	-1396(ra) # 80002364 <_ZN6ThreadC1Ev>
    800038e0:	00008797          	auipc	a5,0x8
    800038e4:	b2878793          	addi	a5,a5,-1240 # 8000b408 <_ZTV7WorkerB+0x10>
    800038e8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800038ec:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800038f0:	00006517          	auipc	a0,0x6
    800038f4:	a5850513          	addi	a0,a0,-1448 # 80009348 <CONSOLE_STATUS+0x338>
    800038f8:	00002097          	auipc	ra,0x2
    800038fc:	a28080e7          	jalr	-1496(ra) # 80005320 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003900:	02000513          	li	a0,32
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	6a4080e7          	jalr	1700(ra) # 80001fa8 <_Znwm>
    8000390c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003910:	fffff097          	auipc	ra,0xfffff
    80003914:	a54080e7          	jalr	-1452(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003918:	00008797          	auipc	a5,0x8
    8000391c:	b1878793          	addi	a5,a5,-1256 # 8000b430 <_ZTV7WorkerC+0x10>
    80003920:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003924:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003928:	00006517          	auipc	a0,0x6
    8000392c:	a3850513          	addi	a0,a0,-1480 # 80009360 <CONSOLE_STATUS+0x350>
    80003930:	00002097          	auipc	ra,0x2
    80003934:	9f0080e7          	jalr	-1552(ra) # 80005320 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003938:	02000513          	li	a0,32
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	66c080e7          	jalr	1644(ra) # 80001fa8 <_Znwm>
    80003944:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003948:	fffff097          	auipc	ra,0xfffff
    8000394c:	a1c080e7          	jalr	-1508(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003950:	00008797          	auipc	a5,0x8
    80003954:	b0878793          	addi	a5,a5,-1272 # 8000b458 <_ZTV7WorkerD+0x10>
    80003958:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000395c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003960:	00006517          	auipc	a0,0x6
    80003964:	a1850513          	addi	a0,a0,-1512 # 80009378 <CONSOLE_STATUS+0x368>
    80003968:	00002097          	auipc	ra,0x2
    8000396c:	9b8080e7          	jalr	-1608(ra) # 80005320 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003970:	00000493          	li	s1,0
    80003974:	00300793          	li	a5,3
    80003978:	0297c663          	blt	a5,s1,800039a4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000397c:	00349793          	slli	a5,s1,0x3
    80003980:	fe040713          	addi	a4,s0,-32
    80003984:	00f707b3          	add	a5,a4,a5
    80003988:	fe07b503          	ld	a0,-32(a5)
    8000398c:	fffff097          	auipc	ra,0xfffff
    80003990:	a10080e7          	jalr	-1520(ra) # 8000239c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003994:	0014849b          	addiw	s1,s1,1
    80003998:	fddff06f          	j	80003974 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000399c:	fffff097          	auipc	ra,0xfffff
    800039a0:	970080e7          	jalr	-1680(ra) # 8000230c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800039a4:	00008797          	auipc	a5,0x8
    800039a8:	cac7c783          	lbu	a5,-852(a5) # 8000b650 <_ZL9finishedA>
    800039ac:	fe0788e3          	beqz	a5,8000399c <_Z20Threads_CPP_API_testv+0x124>
    800039b0:	00008797          	auipc	a5,0x8
    800039b4:	ca17c783          	lbu	a5,-863(a5) # 8000b651 <_ZL9finishedB>
    800039b8:	fe0782e3          	beqz	a5,8000399c <_Z20Threads_CPP_API_testv+0x124>
    800039bc:	00008797          	auipc	a5,0x8
    800039c0:	c967c783          	lbu	a5,-874(a5) # 8000b652 <_ZL9finishedC>
    800039c4:	fc078ce3          	beqz	a5,8000399c <_Z20Threads_CPP_API_testv+0x124>
    800039c8:	00008797          	auipc	a5,0x8
    800039cc:	c8b7c783          	lbu	a5,-885(a5) # 8000b653 <_ZL9finishedD>
    800039d0:	fc0786e3          	beqz	a5,8000399c <_Z20Threads_CPP_API_testv+0x124>
    800039d4:	fc040493          	addi	s1,s0,-64
    800039d8:	0080006f          	j	800039e0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800039dc:	00848493          	addi	s1,s1,8
    800039e0:	fe040793          	addi	a5,s0,-32
    800039e4:	08f48663          	beq	s1,a5,80003a70 <_Z20Threads_CPP_API_testv+0x1f8>
    800039e8:	0004b503          	ld	a0,0(s1)
    800039ec:	fe0508e3          	beqz	a0,800039dc <_Z20Threads_CPP_API_testv+0x164>
    800039f0:	00053783          	ld	a5,0(a0)
    800039f4:	0087b783          	ld	a5,8(a5)
    800039f8:	000780e7          	jalr	a5
    800039fc:	fe1ff06f          	j	800039dc <_Z20Threads_CPP_API_testv+0x164>
    80003a00:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003a04:	00048513          	mv	a0,s1
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	6a0080e7          	jalr	1696(ra) # 800020a8 <_ZdlPv>
    80003a10:	00090513          	mv	a0,s2
    80003a14:	00009097          	auipc	ra,0x9
    80003a18:	d44080e7          	jalr	-700(ra) # 8000c758 <_Unwind_Resume>
    80003a1c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003a20:	00048513          	mv	a0,s1
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	684080e7          	jalr	1668(ra) # 800020a8 <_ZdlPv>
    80003a2c:	00090513          	mv	a0,s2
    80003a30:	00009097          	auipc	ra,0x9
    80003a34:	d28080e7          	jalr	-728(ra) # 8000c758 <_Unwind_Resume>
    80003a38:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003a3c:	00048513          	mv	a0,s1
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	668080e7          	jalr	1640(ra) # 800020a8 <_ZdlPv>
    80003a48:	00090513          	mv	a0,s2
    80003a4c:	00009097          	auipc	ra,0x9
    80003a50:	d0c080e7          	jalr	-756(ra) # 8000c758 <_Unwind_Resume>
    80003a54:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003a58:	00048513          	mv	a0,s1
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	64c080e7          	jalr	1612(ra) # 800020a8 <_ZdlPv>
    80003a64:	00090513          	mv	a0,s2
    80003a68:	00009097          	auipc	ra,0x9
    80003a6c:	cf0080e7          	jalr	-784(ra) # 8000c758 <_Unwind_Resume>
}
    80003a70:	03813083          	ld	ra,56(sp)
    80003a74:	03013403          	ld	s0,48(sp)
    80003a78:	02813483          	ld	s1,40(sp)
    80003a7c:	02013903          	ld	s2,32(sp)
    80003a80:	04010113          	addi	sp,sp,64
    80003a84:	00008067          	ret

0000000080003a88 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003a88:	ff010113          	addi	sp,sp,-16
    80003a8c:	00113423          	sd	ra,8(sp)
    80003a90:	00813023          	sd	s0,0(sp)
    80003a94:	01010413          	addi	s0,sp,16
    80003a98:	00008797          	auipc	a5,0x8
    80003a9c:	94878793          	addi	a5,a5,-1720 # 8000b3e0 <_ZTV7WorkerA+0x10>
    80003aa0:	00f53023          	sd	a5,0(a0)
    80003aa4:	ffffe097          	auipc	ra,0xffffe
    80003aa8:	704080e7          	jalr	1796(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003aac:	00813083          	ld	ra,8(sp)
    80003ab0:	00013403          	ld	s0,0(sp)
    80003ab4:	01010113          	addi	sp,sp,16
    80003ab8:	00008067          	ret

0000000080003abc <_ZN7WorkerAD0Ev>:
    80003abc:	fe010113          	addi	sp,sp,-32
    80003ac0:	00113c23          	sd	ra,24(sp)
    80003ac4:	00813823          	sd	s0,16(sp)
    80003ac8:	00913423          	sd	s1,8(sp)
    80003acc:	02010413          	addi	s0,sp,32
    80003ad0:	00050493          	mv	s1,a0
    80003ad4:	00008797          	auipc	a5,0x8
    80003ad8:	90c78793          	addi	a5,a5,-1780 # 8000b3e0 <_ZTV7WorkerA+0x10>
    80003adc:	00f53023          	sd	a5,0(a0)
    80003ae0:	ffffe097          	auipc	ra,0xffffe
    80003ae4:	6c8080e7          	jalr	1736(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003ae8:	00048513          	mv	a0,s1
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	5bc080e7          	jalr	1468(ra) # 800020a8 <_ZdlPv>
    80003af4:	01813083          	ld	ra,24(sp)
    80003af8:	01013403          	ld	s0,16(sp)
    80003afc:	00813483          	ld	s1,8(sp)
    80003b00:	02010113          	addi	sp,sp,32
    80003b04:	00008067          	ret

0000000080003b08 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003b08:	ff010113          	addi	sp,sp,-16
    80003b0c:	00113423          	sd	ra,8(sp)
    80003b10:	00813023          	sd	s0,0(sp)
    80003b14:	01010413          	addi	s0,sp,16
    80003b18:	00008797          	auipc	a5,0x8
    80003b1c:	8f078793          	addi	a5,a5,-1808 # 8000b408 <_ZTV7WorkerB+0x10>
    80003b20:	00f53023          	sd	a5,0(a0)
    80003b24:	ffffe097          	auipc	ra,0xffffe
    80003b28:	684080e7          	jalr	1668(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003b2c:	00813083          	ld	ra,8(sp)
    80003b30:	00013403          	ld	s0,0(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret

0000000080003b3c <_ZN7WorkerBD0Ev>:
    80003b3c:	fe010113          	addi	sp,sp,-32
    80003b40:	00113c23          	sd	ra,24(sp)
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	02010413          	addi	s0,sp,32
    80003b50:	00050493          	mv	s1,a0
    80003b54:	00008797          	auipc	a5,0x8
    80003b58:	8b478793          	addi	a5,a5,-1868 # 8000b408 <_ZTV7WorkerB+0x10>
    80003b5c:	00f53023          	sd	a5,0(a0)
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	648080e7          	jalr	1608(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	53c080e7          	jalr	1340(ra) # 800020a8 <_ZdlPv>
    80003b74:	01813083          	ld	ra,24(sp)
    80003b78:	01013403          	ld	s0,16(sp)
    80003b7c:	00813483          	ld	s1,8(sp)
    80003b80:	02010113          	addi	sp,sp,32
    80003b84:	00008067          	ret

0000000080003b88 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003b88:	ff010113          	addi	sp,sp,-16
    80003b8c:	00113423          	sd	ra,8(sp)
    80003b90:	00813023          	sd	s0,0(sp)
    80003b94:	01010413          	addi	s0,sp,16
    80003b98:	00008797          	auipc	a5,0x8
    80003b9c:	89878793          	addi	a5,a5,-1896 # 8000b430 <_ZTV7WorkerC+0x10>
    80003ba0:	00f53023          	sd	a5,0(a0)
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	604080e7          	jalr	1540(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003bac:	00813083          	ld	ra,8(sp)
    80003bb0:	00013403          	ld	s0,0(sp)
    80003bb4:	01010113          	addi	sp,sp,16
    80003bb8:	00008067          	ret

0000000080003bbc <_ZN7WorkerCD0Ev>:
    80003bbc:	fe010113          	addi	sp,sp,-32
    80003bc0:	00113c23          	sd	ra,24(sp)
    80003bc4:	00813823          	sd	s0,16(sp)
    80003bc8:	00913423          	sd	s1,8(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    80003bd0:	00050493          	mv	s1,a0
    80003bd4:	00008797          	auipc	a5,0x8
    80003bd8:	85c78793          	addi	a5,a5,-1956 # 8000b430 <_ZTV7WorkerC+0x10>
    80003bdc:	00f53023          	sd	a5,0(a0)
    80003be0:	ffffe097          	auipc	ra,0xffffe
    80003be4:	5c8080e7          	jalr	1480(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003be8:	00048513          	mv	a0,s1
    80003bec:	ffffe097          	auipc	ra,0xffffe
    80003bf0:	4bc080e7          	jalr	1212(ra) # 800020a8 <_ZdlPv>
    80003bf4:	01813083          	ld	ra,24(sp)
    80003bf8:	01013403          	ld	s0,16(sp)
    80003bfc:	00813483          	ld	s1,8(sp)
    80003c00:	02010113          	addi	sp,sp,32
    80003c04:	00008067          	ret

0000000080003c08 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003c08:	ff010113          	addi	sp,sp,-16
    80003c0c:	00113423          	sd	ra,8(sp)
    80003c10:	00813023          	sd	s0,0(sp)
    80003c14:	01010413          	addi	s0,sp,16
    80003c18:	00008797          	auipc	a5,0x8
    80003c1c:	84078793          	addi	a5,a5,-1984 # 8000b458 <_ZTV7WorkerD+0x10>
    80003c20:	00f53023          	sd	a5,0(a0)
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	584080e7          	jalr	1412(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003c2c:	00813083          	ld	ra,8(sp)
    80003c30:	00013403          	ld	s0,0(sp)
    80003c34:	01010113          	addi	sp,sp,16
    80003c38:	00008067          	ret

0000000080003c3c <_ZN7WorkerDD0Ev>:
    80003c3c:	fe010113          	addi	sp,sp,-32
    80003c40:	00113c23          	sd	ra,24(sp)
    80003c44:	00813823          	sd	s0,16(sp)
    80003c48:	00913423          	sd	s1,8(sp)
    80003c4c:	02010413          	addi	s0,sp,32
    80003c50:	00050493          	mv	s1,a0
    80003c54:	00008797          	auipc	a5,0x8
    80003c58:	80478793          	addi	a5,a5,-2044 # 8000b458 <_ZTV7WorkerD+0x10>
    80003c5c:	00f53023          	sd	a5,0(a0)
    80003c60:	ffffe097          	auipc	ra,0xffffe
    80003c64:	548080e7          	jalr	1352(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003c68:	00048513          	mv	a0,s1
    80003c6c:	ffffe097          	auipc	ra,0xffffe
    80003c70:	43c080e7          	jalr	1084(ra) # 800020a8 <_ZdlPv>
    80003c74:	01813083          	ld	ra,24(sp)
    80003c78:	01013403          	ld	s0,16(sp)
    80003c7c:	00813483          	ld	s1,8(sp)
    80003c80:	02010113          	addi	sp,sp,32
    80003c84:	00008067          	ret

0000000080003c88 <_ZN7WorkerA3runEv>:
    void run() override {
    80003c88:	ff010113          	addi	sp,sp,-16
    80003c8c:	00113423          	sd	ra,8(sp)
    80003c90:	00813023          	sd	s0,0(sp)
    80003c94:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003c98:	00000593          	li	a1,0
    80003c9c:	fffff097          	auipc	ra,0xfffff
    80003ca0:	774080e7          	jalr	1908(ra) # 80003410 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003ca4:	00813083          	ld	ra,8(sp)
    80003ca8:	00013403          	ld	s0,0(sp)
    80003cac:	01010113          	addi	sp,sp,16
    80003cb0:	00008067          	ret

0000000080003cb4 <_ZN7WorkerB3runEv>:
    void run() override {
    80003cb4:	ff010113          	addi	sp,sp,-16
    80003cb8:	00113423          	sd	ra,8(sp)
    80003cbc:	00813023          	sd	s0,0(sp)
    80003cc0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003cc4:	00000593          	li	a1,0
    80003cc8:	00000097          	auipc	ra,0x0
    80003ccc:	814080e7          	jalr	-2028(ra) # 800034dc <_ZN7WorkerB11workerBodyBEPv>
    }
    80003cd0:	00813083          	ld	ra,8(sp)
    80003cd4:	00013403          	ld	s0,0(sp)
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret

0000000080003ce0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00113423          	sd	ra,8(sp)
    80003ce8:	00813023          	sd	s0,0(sp)
    80003cec:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003cf0:	00000593          	li	a1,0
    80003cf4:	00000097          	auipc	ra,0x0
    80003cf8:	8bc080e7          	jalr	-1860(ra) # 800035b0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003cfc:	00813083          	ld	ra,8(sp)
    80003d00:	00013403          	ld	s0,0(sp)
    80003d04:	01010113          	addi	sp,sp,16
    80003d08:	00008067          	ret

0000000080003d0c <_ZN7WorkerD3runEv>:
    void run() override {
    80003d0c:	ff010113          	addi	sp,sp,-16
    80003d10:	00113423          	sd	ra,8(sp)
    80003d14:	00813023          	sd	s0,0(sp)
    80003d18:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003d1c:	00000593          	li	a1,0
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	a10080e7          	jalr	-1520(ra) # 80003730 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003d28:	00813083          	ld	ra,8(sp)
    80003d2c:	00013403          	ld	s0,0(sp)
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret

0000000080003d38 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003d38:	f8010113          	addi	sp,sp,-128
    80003d3c:	06113c23          	sd	ra,120(sp)
    80003d40:	06813823          	sd	s0,112(sp)
    80003d44:	06913423          	sd	s1,104(sp)
    80003d48:	07213023          	sd	s2,96(sp)
    80003d4c:	05313c23          	sd	s3,88(sp)
    80003d50:	05413823          	sd	s4,80(sp)
    80003d54:	05513423          	sd	s5,72(sp)
    80003d58:	05613023          	sd	s6,64(sp)
    80003d5c:	03713c23          	sd	s7,56(sp)
    80003d60:	03813823          	sd	s8,48(sp)
    80003d64:	03913423          	sd	s9,40(sp)
    80003d68:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003d6c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003d70:	00005517          	auipc	a0,0x5
    80003d74:	45050513          	addi	a0,a0,1104 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003d78:	00001097          	auipc	ra,0x1
    80003d7c:	5a8080e7          	jalr	1448(ra) # 80005320 <_Z11printStringPKc>
    getString(input, 30);
    80003d80:	01e00593          	li	a1,30
    80003d84:	f8040493          	addi	s1,s0,-128
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	00001097          	auipc	ra,0x1
    80003d90:	61c080e7          	jalr	1564(ra) # 800053a8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003d94:	00048513          	mv	a0,s1
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	6e8080e7          	jalr	1768(ra) # 80005480 <_Z11stringToIntPKc>
    80003da0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003da4:	00005517          	auipc	a0,0x5
    80003da8:	43c50513          	addi	a0,a0,1084 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	574080e7          	jalr	1396(ra) # 80005320 <_Z11printStringPKc>
    getString(input, 30);
    80003db4:	01e00593          	li	a1,30
    80003db8:	00048513          	mv	a0,s1
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	5ec080e7          	jalr	1516(ra) # 800053a8 <_Z9getStringPci>
    n = stringToInt(input);
    80003dc4:	00048513          	mv	a0,s1
    80003dc8:	00001097          	auipc	ra,0x1
    80003dcc:	6b8080e7          	jalr	1720(ra) # 80005480 <_Z11stringToIntPKc>
    80003dd0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003dd4:	00005517          	auipc	a0,0x5
    80003dd8:	42c50513          	addi	a0,a0,1068 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	544080e7          	jalr	1348(ra) # 80005320 <_Z11printStringPKc>
    printInt(threadNum);
    80003de4:	00000613          	li	a2,0
    80003de8:	00a00593          	li	a1,10
    80003dec:	00098513          	mv	a0,s3
    80003df0:	00001097          	auipc	ra,0x1
    80003df4:	6e0080e7          	jalr	1760(ra) # 800054d0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003df8:	00005517          	auipc	a0,0x5
    80003dfc:	42050513          	addi	a0,a0,1056 # 80009218 <CONSOLE_STATUS+0x208>
    80003e00:	00001097          	auipc	ra,0x1
    80003e04:	520080e7          	jalr	1312(ra) # 80005320 <_Z11printStringPKc>
    printInt(n);
    80003e08:	00000613          	li	a2,0
    80003e0c:	00a00593          	li	a1,10
    80003e10:	00048513          	mv	a0,s1
    80003e14:	00001097          	auipc	ra,0x1
    80003e18:	6bc080e7          	jalr	1724(ra) # 800054d0 <_Z8printIntiii>
    printString(".\n");
    80003e1c:	00005517          	auipc	a0,0x5
    80003e20:	41450513          	addi	a0,a0,1044 # 80009230 <CONSOLE_STATUS+0x220>
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	4fc080e7          	jalr	1276(ra) # 80005320 <_Z11printStringPKc>
    if (threadNum > n) {
    80003e2c:	0334c463          	blt	s1,s3,80003e54 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003e30:	03305c63          	blez	s3,80003e68 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003e34:	03800513          	li	a0,56
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	170080e7          	jalr	368(ra) # 80001fa8 <_Znwm>
    80003e40:	00050a93          	mv	s5,a0
    80003e44:	00048593          	mv	a1,s1
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	7a8080e7          	jalr	1960(ra) # 800055f0 <_ZN9BufferCPPC1Ei>
    80003e50:	0300006f          	j	80003e80 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003e54:	00005517          	auipc	a0,0x5
    80003e58:	3e450513          	addi	a0,a0,996 # 80009238 <CONSOLE_STATUS+0x228>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	4c4080e7          	jalr	1220(ra) # 80005320 <_Z11printStringPKc>
        return;
    80003e64:	0140006f          	j	80003e78 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003e68:	00005517          	auipc	a0,0x5
    80003e6c:	41050513          	addi	a0,a0,1040 # 80009278 <CONSOLE_STATUS+0x268>
    80003e70:	00001097          	auipc	ra,0x1
    80003e74:	4b0080e7          	jalr	1200(ra) # 80005320 <_Z11printStringPKc>
        return;
    80003e78:	000c0113          	mv	sp,s8
    80003e7c:	2140006f          	j	80004090 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003e80:	01000513          	li	a0,16
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	124080e7          	jalr	292(ra) # 80001fa8 <_Znwm>
    80003e8c:	00050913          	mv	s2,a0
    80003e90:	00000593          	li	a1,0
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	564080e7          	jalr	1380(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    80003e9c:	00007797          	auipc	a5,0x7
    80003ea0:	7d27b223          	sd	s2,1988(a5) # 8000b660 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003ea4:	00399793          	slli	a5,s3,0x3
    80003ea8:	00f78793          	addi	a5,a5,15
    80003eac:	ff07f793          	andi	a5,a5,-16
    80003eb0:	40f10133          	sub	sp,sp,a5
    80003eb4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003eb8:	0019871b          	addiw	a4,s3,1
    80003ebc:	00171793          	slli	a5,a4,0x1
    80003ec0:	00e787b3          	add	a5,a5,a4
    80003ec4:	00379793          	slli	a5,a5,0x3
    80003ec8:	00f78793          	addi	a5,a5,15
    80003ecc:	ff07f793          	andi	a5,a5,-16
    80003ed0:	40f10133          	sub	sp,sp,a5
    80003ed4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003ed8:	00199493          	slli	s1,s3,0x1
    80003edc:	013484b3          	add	s1,s1,s3
    80003ee0:	00349493          	slli	s1,s1,0x3
    80003ee4:	009b04b3          	add	s1,s6,s1
    80003ee8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003eec:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003ef0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ef4:	02800513          	li	a0,40
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	0b0080e7          	jalr	176(ra) # 80001fa8 <_Znwm>
    80003f00:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003f04:	ffffe097          	auipc	ra,0xffffe
    80003f08:	460080e7          	jalr	1120(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003f0c:	00007797          	auipc	a5,0x7
    80003f10:	5c478793          	addi	a5,a5,1476 # 8000b4d0 <_ZTV8Consumer+0x10>
    80003f14:	00fbb023          	sd	a5,0(s7)
    80003f18:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003f1c:	000b8513          	mv	a0,s7
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	47c080e7          	jalr	1148(ra) # 8000239c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003f28:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003f2c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003f30:	00007797          	auipc	a5,0x7
    80003f34:	7307b783          	ld	a5,1840(a5) # 8000b660 <_ZL10waitForAll>
    80003f38:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f3c:	02800513          	li	a0,40
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	068080e7          	jalr	104(ra) # 80001fa8 <_Znwm>
    80003f48:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	418080e7          	jalr	1048(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003f54:	00007797          	auipc	a5,0x7
    80003f58:	52c78793          	addi	a5,a5,1324 # 8000b480 <_ZTV16ProducerKeyborad+0x10>
    80003f5c:	00f4b023          	sd	a5,0(s1)
    80003f60:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f64:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003f68:	00048513          	mv	a0,s1
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	430080e7          	jalr	1072(ra) # 8000239c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003f74:	00100913          	li	s2,1
    80003f78:	0300006f          	j	80003fa8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f7c:	00007797          	auipc	a5,0x7
    80003f80:	52c78793          	addi	a5,a5,1324 # 8000b4a8 <_ZTV8Producer+0x10>
    80003f84:	00fcb023          	sd	a5,0(s9)
    80003f88:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003f8c:	00391793          	slli	a5,s2,0x3
    80003f90:	00fa07b3          	add	a5,s4,a5
    80003f94:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003f98:	000c8513          	mv	a0,s9
    80003f9c:	ffffe097          	auipc	ra,0xffffe
    80003fa0:	400080e7          	jalr	1024(ra) # 8000239c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003fa4:	0019091b          	addiw	s2,s2,1
    80003fa8:	05395263          	bge	s2,s3,80003fec <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003fac:	00191493          	slli	s1,s2,0x1
    80003fb0:	012484b3          	add	s1,s1,s2
    80003fb4:	00349493          	slli	s1,s1,0x3
    80003fb8:	009b04b3          	add	s1,s6,s1
    80003fbc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003fc0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003fc4:	00007797          	auipc	a5,0x7
    80003fc8:	69c7b783          	ld	a5,1692(a5) # 8000b660 <_ZL10waitForAll>
    80003fcc:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003fd0:	02800513          	li	a0,40
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	fd4080e7          	jalr	-44(ra) # 80001fa8 <_Znwm>
    80003fdc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	384080e7          	jalr	900(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003fe8:	f95ff06f          	j	80003f7c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003fec:	ffffe097          	auipc	ra,0xffffe
    80003ff0:	320080e7          	jalr	800(ra) # 8000230c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ff4:	00000493          	li	s1,0
    80003ff8:	0099ce63          	blt	s3,s1,80004014 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003ffc:	00007517          	auipc	a0,0x7
    80004000:	66453503          	ld	a0,1636(a0) # 8000b660 <_ZL10waitForAll>
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	42c080e7          	jalr	1068(ra) # 80002430 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000400c:	0014849b          	addiw	s1,s1,1
    80004010:	fe9ff06f          	j	80003ff8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004014:	00007517          	auipc	a0,0x7
    80004018:	64c53503          	ld	a0,1612(a0) # 8000b660 <_ZL10waitForAll>
    8000401c:	00050863          	beqz	a0,8000402c <_Z20testConsumerProducerv+0x2f4>
    80004020:	00053783          	ld	a5,0(a0)
    80004024:	0087b783          	ld	a5,8(a5)
    80004028:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000402c:	00000493          	li	s1,0
    80004030:	0080006f          	j	80004038 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004034:	0014849b          	addiw	s1,s1,1
    80004038:	0334d263          	bge	s1,s3,8000405c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000403c:	00349793          	slli	a5,s1,0x3
    80004040:	00fa07b3          	add	a5,s4,a5
    80004044:	0007b503          	ld	a0,0(a5)
    80004048:	fe0506e3          	beqz	a0,80004034 <_Z20testConsumerProducerv+0x2fc>
    8000404c:	00053783          	ld	a5,0(a0)
    80004050:	0087b783          	ld	a5,8(a5)
    80004054:	000780e7          	jalr	a5
    80004058:	fddff06f          	j	80004034 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000405c:	000b8a63          	beqz	s7,80004070 <_Z20testConsumerProducerv+0x338>
    80004060:	000bb783          	ld	a5,0(s7)
    80004064:	0087b783          	ld	a5,8(a5)
    80004068:	000b8513          	mv	a0,s7
    8000406c:	000780e7          	jalr	a5
    delete buffer;
    80004070:	000a8e63          	beqz	s5,8000408c <_Z20testConsumerProducerv+0x354>
    80004074:	000a8513          	mv	a0,s5
    80004078:	00002097          	auipc	ra,0x2
    8000407c:	870080e7          	jalr	-1936(ra) # 800058e8 <_ZN9BufferCPPD1Ev>
    80004080:	000a8513          	mv	a0,s5
    80004084:	ffffe097          	auipc	ra,0xffffe
    80004088:	024080e7          	jalr	36(ra) # 800020a8 <_ZdlPv>
    8000408c:	000c0113          	mv	sp,s8
}
    80004090:	f8040113          	addi	sp,s0,-128
    80004094:	07813083          	ld	ra,120(sp)
    80004098:	07013403          	ld	s0,112(sp)
    8000409c:	06813483          	ld	s1,104(sp)
    800040a0:	06013903          	ld	s2,96(sp)
    800040a4:	05813983          	ld	s3,88(sp)
    800040a8:	05013a03          	ld	s4,80(sp)
    800040ac:	04813a83          	ld	s5,72(sp)
    800040b0:	04013b03          	ld	s6,64(sp)
    800040b4:	03813b83          	ld	s7,56(sp)
    800040b8:	03013c03          	ld	s8,48(sp)
    800040bc:	02813c83          	ld	s9,40(sp)
    800040c0:	08010113          	addi	sp,sp,128
    800040c4:	00008067          	ret
    800040c8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800040cc:	000a8513          	mv	a0,s5
    800040d0:	ffffe097          	auipc	ra,0xffffe
    800040d4:	fd8080e7          	jalr	-40(ra) # 800020a8 <_ZdlPv>
    800040d8:	00048513          	mv	a0,s1
    800040dc:	00008097          	auipc	ra,0x8
    800040e0:	67c080e7          	jalr	1660(ra) # 8000c758 <_Unwind_Resume>
    800040e4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800040e8:	00090513          	mv	a0,s2
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	fbc080e7          	jalr	-68(ra) # 800020a8 <_ZdlPv>
    800040f4:	00048513          	mv	a0,s1
    800040f8:	00008097          	auipc	ra,0x8
    800040fc:	660080e7          	jalr	1632(ra) # 8000c758 <_Unwind_Resume>
    80004100:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004104:	000b8513          	mv	a0,s7
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	fa0080e7          	jalr	-96(ra) # 800020a8 <_ZdlPv>
    80004110:	00048513          	mv	a0,s1
    80004114:	00008097          	auipc	ra,0x8
    80004118:	644080e7          	jalr	1604(ra) # 8000c758 <_Unwind_Resume>
    8000411c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004120:	00048513          	mv	a0,s1
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	f84080e7          	jalr	-124(ra) # 800020a8 <_ZdlPv>
    8000412c:	00090513          	mv	a0,s2
    80004130:	00008097          	auipc	ra,0x8
    80004134:	628080e7          	jalr	1576(ra) # 8000c758 <_Unwind_Resume>
    80004138:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000413c:	000c8513          	mv	a0,s9
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	f68080e7          	jalr	-152(ra) # 800020a8 <_ZdlPv>
    80004148:	00048513          	mv	a0,s1
    8000414c:	00008097          	auipc	ra,0x8
    80004150:	60c080e7          	jalr	1548(ra) # 8000c758 <_Unwind_Resume>

0000000080004154 <_ZN8Consumer3runEv>:
    void run() override {
    80004154:	fd010113          	addi	sp,sp,-48
    80004158:	02113423          	sd	ra,40(sp)
    8000415c:	02813023          	sd	s0,32(sp)
    80004160:	00913c23          	sd	s1,24(sp)
    80004164:	01213823          	sd	s2,16(sp)
    80004168:	01313423          	sd	s3,8(sp)
    8000416c:	03010413          	addi	s0,sp,48
    80004170:	00050913          	mv	s2,a0
        int i = 0;
    80004174:	00000993          	li	s3,0
    80004178:	0100006f          	j	80004188 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000417c:	00a00513          	li	a0,10
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	308080e7          	jalr	776(ra) # 80002488 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004188:	00007797          	auipc	a5,0x7
    8000418c:	4d07a783          	lw	a5,1232(a5) # 8000b658 <_ZL9threadEnd>
    80004190:	04079a63          	bnez	a5,800041e4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004194:	02093783          	ld	a5,32(s2)
    80004198:	0087b503          	ld	a0,8(a5)
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	638080e7          	jalr	1592(ra) # 800057d4 <_ZN9BufferCPP3getEv>
            i++;
    800041a4:	0019849b          	addiw	s1,s3,1
    800041a8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800041ac:	0ff57513          	andi	a0,a0,255
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	2d8080e7          	jalr	728(ra) # 80002488 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800041b8:	05000793          	li	a5,80
    800041bc:	02f4e4bb          	remw	s1,s1,a5
    800041c0:	fc0494e3          	bnez	s1,80004188 <_ZN8Consumer3runEv+0x34>
    800041c4:	fb9ff06f          	j	8000417c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800041c8:	02093783          	ld	a5,32(s2)
    800041cc:	0087b503          	ld	a0,8(a5)
    800041d0:	00001097          	auipc	ra,0x1
    800041d4:	604080e7          	jalr	1540(ra) # 800057d4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800041d8:	0ff57513          	andi	a0,a0,255
    800041dc:	ffffe097          	auipc	ra,0xffffe
    800041e0:	2ac080e7          	jalr	684(ra) # 80002488 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800041e4:	02093783          	ld	a5,32(s2)
    800041e8:	0087b503          	ld	a0,8(a5)
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	674080e7          	jalr	1652(ra) # 80005860 <_ZN9BufferCPP6getCntEv>
    800041f4:	fca04ae3          	bgtz	a0,800041c8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800041f8:	02093783          	ld	a5,32(s2)
    800041fc:	0107b503          	ld	a0,16(a5)
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	25c080e7          	jalr	604(ra) # 8000245c <_ZN9Semaphore6signalEv>
    }
    80004208:	02813083          	ld	ra,40(sp)
    8000420c:	02013403          	ld	s0,32(sp)
    80004210:	01813483          	ld	s1,24(sp)
    80004214:	01013903          	ld	s2,16(sp)
    80004218:	00813983          	ld	s3,8(sp)
    8000421c:	03010113          	addi	sp,sp,48
    80004220:	00008067          	ret

0000000080004224 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00113423          	sd	ra,8(sp)
    8000422c:	00813023          	sd	s0,0(sp)
    80004230:	01010413          	addi	s0,sp,16
    80004234:	00007797          	auipc	a5,0x7
    80004238:	29c78793          	addi	a5,a5,668 # 8000b4d0 <_ZTV8Consumer+0x10>
    8000423c:	00f53023          	sd	a5,0(a0)
    80004240:	ffffe097          	auipc	ra,0xffffe
    80004244:	f68080e7          	jalr	-152(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80004248:	00813083          	ld	ra,8(sp)
    8000424c:	00013403          	ld	s0,0(sp)
    80004250:	01010113          	addi	sp,sp,16
    80004254:	00008067          	ret

0000000080004258 <_ZN8ConsumerD0Ev>:
    80004258:	fe010113          	addi	sp,sp,-32
    8000425c:	00113c23          	sd	ra,24(sp)
    80004260:	00813823          	sd	s0,16(sp)
    80004264:	00913423          	sd	s1,8(sp)
    80004268:	02010413          	addi	s0,sp,32
    8000426c:	00050493          	mv	s1,a0
    80004270:	00007797          	auipc	a5,0x7
    80004274:	26078793          	addi	a5,a5,608 # 8000b4d0 <_ZTV8Consumer+0x10>
    80004278:	00f53023          	sd	a5,0(a0)
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	f2c080e7          	jalr	-212(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80004284:	00048513          	mv	a0,s1
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	e20080e7          	jalr	-480(ra) # 800020a8 <_ZdlPv>
    80004290:	01813083          	ld	ra,24(sp)
    80004294:	01013403          	ld	s0,16(sp)
    80004298:	00813483          	ld	s1,8(sp)
    8000429c:	02010113          	addi	sp,sp,32
    800042a0:	00008067          	ret

00000000800042a4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800042a4:	ff010113          	addi	sp,sp,-16
    800042a8:	00113423          	sd	ra,8(sp)
    800042ac:	00813023          	sd	s0,0(sp)
    800042b0:	01010413          	addi	s0,sp,16
    800042b4:	00007797          	auipc	a5,0x7
    800042b8:	1cc78793          	addi	a5,a5,460 # 8000b480 <_ZTV16ProducerKeyborad+0x10>
    800042bc:	00f53023          	sd	a5,0(a0)
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	ee8080e7          	jalr	-280(ra) # 800021a8 <_ZN6ThreadD1Ev>
    800042c8:	00813083          	ld	ra,8(sp)
    800042cc:	00013403          	ld	s0,0(sp)
    800042d0:	01010113          	addi	sp,sp,16
    800042d4:	00008067          	ret

00000000800042d8 <_ZN16ProducerKeyboradD0Ev>:
    800042d8:	fe010113          	addi	sp,sp,-32
    800042dc:	00113c23          	sd	ra,24(sp)
    800042e0:	00813823          	sd	s0,16(sp)
    800042e4:	00913423          	sd	s1,8(sp)
    800042e8:	02010413          	addi	s0,sp,32
    800042ec:	00050493          	mv	s1,a0
    800042f0:	00007797          	auipc	a5,0x7
    800042f4:	19078793          	addi	a5,a5,400 # 8000b480 <_ZTV16ProducerKeyborad+0x10>
    800042f8:	00f53023          	sd	a5,0(a0)
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	eac080e7          	jalr	-340(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80004304:	00048513          	mv	a0,s1
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	da0080e7          	jalr	-608(ra) # 800020a8 <_ZdlPv>
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	02010113          	addi	sp,sp,32
    80004320:	00008067          	ret

0000000080004324 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004324:	ff010113          	addi	sp,sp,-16
    80004328:	00113423          	sd	ra,8(sp)
    8000432c:	00813023          	sd	s0,0(sp)
    80004330:	01010413          	addi	s0,sp,16
    80004334:	00007797          	auipc	a5,0x7
    80004338:	17478793          	addi	a5,a5,372 # 8000b4a8 <_ZTV8Producer+0x10>
    8000433c:	00f53023          	sd	a5,0(a0)
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	e68080e7          	jalr	-408(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80004348:	00813083          	ld	ra,8(sp)
    8000434c:	00013403          	ld	s0,0(sp)
    80004350:	01010113          	addi	sp,sp,16
    80004354:	00008067          	ret

0000000080004358 <_ZN8ProducerD0Ev>:
    80004358:	fe010113          	addi	sp,sp,-32
    8000435c:	00113c23          	sd	ra,24(sp)
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00913423          	sd	s1,8(sp)
    80004368:	02010413          	addi	s0,sp,32
    8000436c:	00050493          	mv	s1,a0
    80004370:	00007797          	auipc	a5,0x7
    80004374:	13878793          	addi	a5,a5,312 # 8000b4a8 <_ZTV8Producer+0x10>
    80004378:	00f53023          	sd	a5,0(a0)
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	e2c080e7          	jalr	-468(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80004384:	00048513          	mv	a0,s1
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	d20080e7          	jalr	-736(ra) # 800020a8 <_ZdlPv>
    80004390:	01813083          	ld	ra,24(sp)
    80004394:	01013403          	ld	s0,16(sp)
    80004398:	00813483          	ld	s1,8(sp)
    8000439c:	02010113          	addi	sp,sp,32
    800043a0:	00008067          	ret

00000000800043a4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800043a4:	fe010113          	addi	sp,sp,-32
    800043a8:	00113c23          	sd	ra,24(sp)
    800043ac:	00813823          	sd	s0,16(sp)
    800043b0:	00913423          	sd	s1,8(sp)
    800043b4:	02010413          	addi	s0,sp,32
    800043b8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800043bc:	ffffd097          	auipc	ra,0xffffd
    800043c0:	124080e7          	jalr	292(ra) # 800014e0 <_Z4getcv>
    800043c4:	0005059b          	sext.w	a1,a0
    800043c8:	01b00793          	li	a5,27
    800043cc:	00f58c63          	beq	a1,a5,800043e4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800043d0:	0204b783          	ld	a5,32(s1)
    800043d4:	0087b503          	ld	a0,8(a5)
    800043d8:	00001097          	auipc	ra,0x1
    800043dc:	36c080e7          	jalr	876(ra) # 80005744 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800043e0:	fddff06f          	j	800043bc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800043e4:	00100793          	li	a5,1
    800043e8:	00007717          	auipc	a4,0x7
    800043ec:	26f72823          	sw	a5,624(a4) # 8000b658 <_ZL9threadEnd>
        td->buffer->put('!');
    800043f0:	0204b783          	ld	a5,32(s1)
    800043f4:	02100593          	li	a1,33
    800043f8:	0087b503          	ld	a0,8(a5)
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	348080e7          	jalr	840(ra) # 80005744 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004404:	0204b783          	ld	a5,32(s1)
    80004408:	0107b503          	ld	a0,16(a5)
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	050080e7          	jalr	80(ra) # 8000245c <_ZN9Semaphore6signalEv>
    }
    80004414:	01813083          	ld	ra,24(sp)
    80004418:	01013403          	ld	s0,16(sp)
    8000441c:	00813483          	ld	s1,8(sp)
    80004420:	02010113          	addi	sp,sp,32
    80004424:	00008067          	ret

0000000080004428 <_ZN8Producer3runEv>:
    void run() override {
    80004428:	fe010113          	addi	sp,sp,-32
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00913423          	sd	s1,8(sp)
    80004438:	01213023          	sd	s2,0(sp)
    8000443c:	02010413          	addi	s0,sp,32
    80004440:	00050493          	mv	s1,a0
        int i = 0;
    80004444:	00000913          	li	s2,0
        while (!threadEnd) {
    80004448:	00007797          	auipc	a5,0x7
    8000444c:	2107a783          	lw	a5,528(a5) # 8000b658 <_ZL9threadEnd>
    80004450:	04079263          	bnez	a5,80004494 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004454:	0204b783          	ld	a5,32(s1)
    80004458:	0007a583          	lw	a1,0(a5)
    8000445c:	0305859b          	addiw	a1,a1,48
    80004460:	0087b503          	ld	a0,8(a5)
    80004464:	00001097          	auipc	ra,0x1
    80004468:	2e0080e7          	jalr	736(ra) # 80005744 <_ZN9BufferCPP3putEi>
            i++;
    8000446c:	0019071b          	addiw	a4,s2,1
    80004470:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004474:	0204b783          	ld	a5,32(s1)
    80004478:	0007a783          	lw	a5,0(a5)
    8000447c:	00e787bb          	addw	a5,a5,a4
    80004480:	00500513          	li	a0,5
    80004484:	02a7e53b          	remw	a0,a5,a0
    80004488:	ffffe097          	auipc	ra,0xffffe
    8000448c:	f48080e7          	jalr	-184(ra) # 800023d0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004490:	fb9ff06f          	j	80004448 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004494:	0204b783          	ld	a5,32(s1)
    80004498:	0107b503          	ld	a0,16(a5)
    8000449c:	ffffe097          	auipc	ra,0xffffe
    800044a0:	fc0080e7          	jalr	-64(ra) # 8000245c <_ZN9Semaphore6signalEv>
    }
    800044a4:	01813083          	ld	ra,24(sp)
    800044a8:	01013403          	ld	s0,16(sp)
    800044ac:	00813483          	ld	s1,8(sp)
    800044b0:	00013903          	ld	s2,0(sp)
    800044b4:	02010113          	addi	sp,sp,32
    800044b8:	00008067          	ret

00000000800044bc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800044bc:	fe010113          	addi	sp,sp,-32
    800044c0:	00113c23          	sd	ra,24(sp)
    800044c4:	00813823          	sd	s0,16(sp)
    800044c8:	00913423          	sd	s1,8(sp)
    800044cc:	01213023          	sd	s2,0(sp)
    800044d0:	02010413          	addi	s0,sp,32
    800044d4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800044d8:	00100793          	li	a5,1
    800044dc:	02a7f863          	bgeu	a5,a0,8000450c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800044e0:	00a00793          	li	a5,10
    800044e4:	02f577b3          	remu	a5,a0,a5
    800044e8:	02078e63          	beqz	a5,80004524 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800044ec:	fff48513          	addi	a0,s1,-1
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	fcc080e7          	jalr	-52(ra) # 800044bc <_ZL9fibonaccim>
    800044f8:	00050913          	mv	s2,a0
    800044fc:	ffe48513          	addi	a0,s1,-2
    80004500:	00000097          	auipc	ra,0x0
    80004504:	fbc080e7          	jalr	-68(ra) # 800044bc <_ZL9fibonaccim>
    80004508:	00a90533          	add	a0,s2,a0
}
    8000450c:	01813083          	ld	ra,24(sp)
    80004510:	01013403          	ld	s0,16(sp)
    80004514:	00813483          	ld	s1,8(sp)
    80004518:	00013903          	ld	s2,0(sp)
    8000451c:	02010113          	addi	sp,sp,32
    80004520:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	eb4080e7          	jalr	-332(ra) # 800013d8 <_Z15thread_dispatchv>
    8000452c:	fc1ff06f          	j	800044ec <_ZL9fibonaccim+0x30>

0000000080004530 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004530:	fe010113          	addi	sp,sp,-32
    80004534:	00113c23          	sd	ra,24(sp)
    80004538:	00813823          	sd	s0,16(sp)
    8000453c:	00913423          	sd	s1,8(sp)
    80004540:	01213023          	sd	s2,0(sp)
    80004544:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004548:	00a00493          	li	s1,10
    8000454c:	0400006f          	j	8000458c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004550:	00005517          	auipc	a0,0x5
    80004554:	da850513          	addi	a0,a0,-600 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004558:	00001097          	auipc	ra,0x1
    8000455c:	dc8080e7          	jalr	-568(ra) # 80005320 <_Z11printStringPKc>
    80004560:	00000613          	li	a2,0
    80004564:	00a00593          	li	a1,10
    80004568:	00048513          	mv	a0,s1
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	f64080e7          	jalr	-156(ra) # 800054d0 <_Z8printIntiii>
    80004574:	00005517          	auipc	a0,0x5
    80004578:	fb450513          	addi	a0,a0,-76 # 80009528 <CONSOLE_STATUS+0x518>
    8000457c:	00001097          	auipc	ra,0x1
    80004580:	da4080e7          	jalr	-604(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004584:	0014849b          	addiw	s1,s1,1
    80004588:	0ff4f493          	andi	s1,s1,255
    8000458c:	00c00793          	li	a5,12
    80004590:	fc97f0e3          	bgeu	a5,s1,80004550 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004594:	00005517          	auipc	a0,0x5
    80004598:	d6c50513          	addi	a0,a0,-660 # 80009300 <CONSOLE_STATUS+0x2f0>
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	d84080e7          	jalr	-636(ra) # 80005320 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800045a4:	00500313          	li	t1,5
    thread_dispatch();
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	e30080e7          	jalr	-464(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800045b0:	01000513          	li	a0,16
    800045b4:	00000097          	auipc	ra,0x0
    800045b8:	f08080e7          	jalr	-248(ra) # 800044bc <_ZL9fibonaccim>
    800045bc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800045c0:	00005517          	auipc	a0,0x5
    800045c4:	d5050513          	addi	a0,a0,-688 # 80009310 <CONSOLE_STATUS+0x300>
    800045c8:	00001097          	auipc	ra,0x1
    800045cc:	d58080e7          	jalr	-680(ra) # 80005320 <_Z11printStringPKc>
    800045d0:	00000613          	li	a2,0
    800045d4:	00a00593          	li	a1,10
    800045d8:	0009051b          	sext.w	a0,s2
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	ef4080e7          	jalr	-268(ra) # 800054d0 <_Z8printIntiii>
    800045e4:	00005517          	auipc	a0,0x5
    800045e8:	f4450513          	addi	a0,a0,-188 # 80009528 <CONSOLE_STATUS+0x518>
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	d34080e7          	jalr	-716(ra) # 80005320 <_Z11printStringPKc>
    800045f4:	0400006f          	j	80004634 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045f8:	00005517          	auipc	a0,0x5
    800045fc:	d0050513          	addi	a0,a0,-768 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004600:	00001097          	auipc	ra,0x1
    80004604:	d20080e7          	jalr	-736(ra) # 80005320 <_Z11printStringPKc>
    80004608:	00000613          	li	a2,0
    8000460c:	00a00593          	li	a1,10
    80004610:	00048513          	mv	a0,s1
    80004614:	00001097          	auipc	ra,0x1
    80004618:	ebc080e7          	jalr	-324(ra) # 800054d0 <_Z8printIntiii>
    8000461c:	00005517          	auipc	a0,0x5
    80004620:	f0c50513          	addi	a0,a0,-244 # 80009528 <CONSOLE_STATUS+0x518>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	cfc080e7          	jalr	-772(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000462c:	0014849b          	addiw	s1,s1,1
    80004630:	0ff4f493          	andi	s1,s1,255
    80004634:	00f00793          	li	a5,15
    80004638:	fc97f0e3          	bgeu	a5,s1,800045f8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000463c:	00005517          	auipc	a0,0x5
    80004640:	ce450513          	addi	a0,a0,-796 # 80009320 <CONSOLE_STATUS+0x310>
    80004644:	00001097          	auipc	ra,0x1
    80004648:	cdc080e7          	jalr	-804(ra) # 80005320 <_Z11printStringPKc>
    finishedD = true;
    8000464c:	00100793          	li	a5,1
    80004650:	00007717          	auipc	a4,0x7
    80004654:	00f70c23          	sb	a5,24(a4) # 8000b668 <_ZL9finishedD>
    thread_dispatch();
    80004658:	ffffd097          	auipc	ra,0xffffd
    8000465c:	d80080e7          	jalr	-640(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80004660:	01813083          	ld	ra,24(sp)
    80004664:	01013403          	ld	s0,16(sp)
    80004668:	00813483          	ld	s1,8(sp)
    8000466c:	00013903          	ld	s2,0(sp)
    80004670:	02010113          	addi	sp,sp,32
    80004674:	00008067          	ret

0000000080004678 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004678:	fe010113          	addi	sp,sp,-32
    8000467c:	00113c23          	sd	ra,24(sp)
    80004680:	00813823          	sd	s0,16(sp)
    80004684:	00913423          	sd	s1,8(sp)
    80004688:	01213023          	sd	s2,0(sp)
    8000468c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004690:	00000493          	li	s1,0
    80004694:	0400006f          	j	800046d4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004698:	00005517          	auipc	a0,0x5
    8000469c:	c3050513          	addi	a0,a0,-976 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	c80080e7          	jalr	-896(ra) # 80005320 <_Z11printStringPKc>
    800046a8:	00000613          	li	a2,0
    800046ac:	00a00593          	li	a1,10
    800046b0:	00048513          	mv	a0,s1
    800046b4:	00001097          	auipc	ra,0x1
    800046b8:	e1c080e7          	jalr	-484(ra) # 800054d0 <_Z8printIntiii>
    800046bc:	00005517          	auipc	a0,0x5
    800046c0:	e6c50513          	addi	a0,a0,-404 # 80009528 <CONSOLE_STATUS+0x518>
    800046c4:	00001097          	auipc	ra,0x1
    800046c8:	c5c080e7          	jalr	-932(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800046cc:	0014849b          	addiw	s1,s1,1
    800046d0:	0ff4f493          	andi	s1,s1,255
    800046d4:	00200793          	li	a5,2
    800046d8:	fc97f0e3          	bgeu	a5,s1,80004698 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	bf450513          	addi	a0,a0,-1036 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	c3c080e7          	jalr	-964(ra) # 80005320 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800046ec:	00700313          	li	t1,7
    thread_dispatch();
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	ce8080e7          	jalr	-792(ra) # 800013d8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800046f8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800046fc:	00005517          	auipc	a0,0x5
    80004700:	be450513          	addi	a0,a0,-1052 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004704:	00001097          	auipc	ra,0x1
    80004708:	c1c080e7          	jalr	-996(ra) # 80005320 <_Z11printStringPKc>
    8000470c:	00000613          	li	a2,0
    80004710:	00a00593          	li	a1,10
    80004714:	0009051b          	sext.w	a0,s2
    80004718:	00001097          	auipc	ra,0x1
    8000471c:	db8080e7          	jalr	-584(ra) # 800054d0 <_Z8printIntiii>
    80004720:	00005517          	auipc	a0,0x5
    80004724:	e0850513          	addi	a0,a0,-504 # 80009528 <CONSOLE_STATUS+0x518>
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	bf8080e7          	jalr	-1032(ra) # 80005320 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004730:	00c00513          	li	a0,12
    80004734:	00000097          	auipc	ra,0x0
    80004738:	d88080e7          	jalr	-632(ra) # 800044bc <_ZL9fibonaccim>
    8000473c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004740:	00005517          	auipc	a0,0x5
    80004744:	ba850513          	addi	a0,a0,-1112 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004748:	00001097          	auipc	ra,0x1
    8000474c:	bd8080e7          	jalr	-1064(ra) # 80005320 <_Z11printStringPKc>
    80004750:	00000613          	li	a2,0
    80004754:	00a00593          	li	a1,10
    80004758:	0009051b          	sext.w	a0,s2
    8000475c:	00001097          	auipc	ra,0x1
    80004760:	d74080e7          	jalr	-652(ra) # 800054d0 <_Z8printIntiii>
    80004764:	00005517          	auipc	a0,0x5
    80004768:	dc450513          	addi	a0,a0,-572 # 80009528 <CONSOLE_STATUS+0x518>
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	bb4080e7          	jalr	-1100(ra) # 80005320 <_Z11printStringPKc>
    80004774:	0400006f          	j	800047b4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004778:	00005517          	auipc	a0,0x5
    8000477c:	b5050513          	addi	a0,a0,-1200 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004780:	00001097          	auipc	ra,0x1
    80004784:	ba0080e7          	jalr	-1120(ra) # 80005320 <_Z11printStringPKc>
    80004788:	00000613          	li	a2,0
    8000478c:	00a00593          	li	a1,10
    80004790:	00048513          	mv	a0,s1
    80004794:	00001097          	auipc	ra,0x1
    80004798:	d3c080e7          	jalr	-708(ra) # 800054d0 <_Z8printIntiii>
    8000479c:	00005517          	auipc	a0,0x5
    800047a0:	d8c50513          	addi	a0,a0,-628 # 80009528 <CONSOLE_STATUS+0x518>
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	b7c080e7          	jalr	-1156(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800047ac:	0014849b          	addiw	s1,s1,1
    800047b0:	0ff4f493          	andi	s1,s1,255
    800047b4:	00500793          	li	a5,5
    800047b8:	fc97f0e3          	bgeu	a5,s1,80004778 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800047bc:	00005517          	auipc	a0,0x5
    800047c0:	bd450513          	addi	a0,a0,-1068 # 80009390 <CONSOLE_STATUS+0x380>
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	b5c080e7          	jalr	-1188(ra) # 80005320 <_Z11printStringPKc>
    finishedC = true;
    800047cc:	00100793          	li	a5,1
    800047d0:	00007717          	auipc	a4,0x7
    800047d4:	e8f70ca3          	sb	a5,-359(a4) # 8000b669 <_ZL9finishedC>
    thread_dispatch();
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	c00080e7          	jalr	-1024(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	00813483          	ld	s1,8(sp)
    800047ec:	00013903          	ld	s2,0(sp)
    800047f0:	02010113          	addi	sp,sp,32
    800047f4:	00008067          	ret

00000000800047f8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800047f8:	fe010113          	addi	sp,sp,-32
    800047fc:	00113c23          	sd	ra,24(sp)
    80004800:	00813823          	sd	s0,16(sp)
    80004804:	00913423          	sd	s1,8(sp)
    80004808:	01213023          	sd	s2,0(sp)
    8000480c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004810:	00000913          	li	s2,0
    80004814:	0380006f          	j	8000484c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	bc0080e7          	jalr	-1088(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004820:	00148493          	addi	s1,s1,1
    80004824:	000027b7          	lui	a5,0x2
    80004828:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000482c:	0097ee63          	bltu	a5,s1,80004848 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004830:	00000713          	li	a4,0
    80004834:	000077b7          	lui	a5,0x7
    80004838:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000483c:	fce7eee3          	bltu	a5,a4,80004818 <_ZL11workerBodyBPv+0x20>
    80004840:	00170713          	addi	a4,a4,1
    80004844:	ff1ff06f          	j	80004834 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004848:	00190913          	addi	s2,s2,1
    8000484c:	00f00793          	li	a5,15
    80004850:	0527e063          	bltu	a5,s2,80004890 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004854:	00004517          	auipc	a0,0x4
    80004858:	7fc50513          	addi	a0,a0,2044 # 80009050 <CONSOLE_STATUS+0x40>
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	ac4080e7          	jalr	-1340(ra) # 80005320 <_Z11printStringPKc>
    80004864:	00000613          	li	a2,0
    80004868:	00a00593          	li	a1,10
    8000486c:	0009051b          	sext.w	a0,s2
    80004870:	00001097          	auipc	ra,0x1
    80004874:	c60080e7          	jalr	-928(ra) # 800054d0 <_Z8printIntiii>
    80004878:	00005517          	auipc	a0,0x5
    8000487c:	cb050513          	addi	a0,a0,-848 # 80009528 <CONSOLE_STATUS+0x518>
    80004880:	00001097          	auipc	ra,0x1
    80004884:	aa0080e7          	jalr	-1376(ra) # 80005320 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004888:	00000493          	li	s1,0
    8000488c:	f99ff06f          	j	80004824 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004890:	00005517          	auipc	a0,0x5
    80004894:	a2850513          	addi	a0,a0,-1496 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	a88080e7          	jalr	-1400(ra) # 80005320 <_Z11printStringPKc>
    finishedB = true;
    800048a0:	00100793          	li	a5,1
    800048a4:	00007717          	auipc	a4,0x7
    800048a8:	dcf70323          	sb	a5,-570(a4) # 8000b66a <_ZL9finishedB>
    thread_dispatch();
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	b2c080e7          	jalr	-1236(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800048b4:	01813083          	ld	ra,24(sp)
    800048b8:	01013403          	ld	s0,16(sp)
    800048bc:	00813483          	ld	s1,8(sp)
    800048c0:	00013903          	ld	s2,0(sp)
    800048c4:	02010113          	addi	sp,sp,32
    800048c8:	00008067          	ret

00000000800048cc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800048cc:	fe010113          	addi	sp,sp,-32
    800048d0:	00113c23          	sd	ra,24(sp)
    800048d4:	00813823          	sd	s0,16(sp)
    800048d8:	00913423          	sd	s1,8(sp)
    800048dc:	01213023          	sd	s2,0(sp)
    800048e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800048e4:	00000913          	li	s2,0
    800048e8:	0380006f          	j	80004920 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	aec080e7          	jalr	-1300(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800048f4:	00148493          	addi	s1,s1,1
    800048f8:	000027b7          	lui	a5,0x2
    800048fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004900:	0097ee63          	bltu	a5,s1,8000491c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004904:	00000713          	li	a4,0
    80004908:	000077b7          	lui	a5,0x7
    8000490c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004910:	fce7eee3          	bltu	a5,a4,800048ec <_ZL11workerBodyAPv+0x20>
    80004914:	00170713          	addi	a4,a4,1
    80004918:	ff1ff06f          	j	80004908 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000491c:	00190913          	addi	s2,s2,1
    80004920:	00900793          	li	a5,9
    80004924:	0527e063          	bltu	a5,s2,80004964 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004928:	00004517          	auipc	a0,0x4
    8000492c:	6f850513          	addi	a0,a0,1784 # 80009020 <CONSOLE_STATUS+0x10>
    80004930:	00001097          	auipc	ra,0x1
    80004934:	9f0080e7          	jalr	-1552(ra) # 80005320 <_Z11printStringPKc>
    80004938:	00000613          	li	a2,0
    8000493c:	00a00593          	li	a1,10
    80004940:	0009051b          	sext.w	a0,s2
    80004944:	00001097          	auipc	ra,0x1
    80004948:	b8c080e7          	jalr	-1140(ra) # 800054d0 <_Z8printIntiii>
    8000494c:	00005517          	auipc	a0,0x5
    80004950:	bdc50513          	addi	a0,a0,-1060 # 80009528 <CONSOLE_STATUS+0x518>
    80004954:	00001097          	auipc	ra,0x1
    80004958:	9cc080e7          	jalr	-1588(ra) # 80005320 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000495c:	00000493          	li	s1,0
    80004960:	f99ff06f          	j	800048f8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004964:	00005517          	auipc	a0,0x5
    80004968:	94450513          	addi	a0,a0,-1724 # 800092a8 <CONSOLE_STATUS+0x298>
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	9b4080e7          	jalr	-1612(ra) # 80005320 <_Z11printStringPKc>
    finishedA = true;
    80004974:	00100793          	li	a5,1
    80004978:	00007717          	auipc	a4,0x7
    8000497c:	cef709a3          	sb	a5,-781(a4) # 8000b66b <_ZL9finishedA>
}
    80004980:	01813083          	ld	ra,24(sp)
    80004984:	01013403          	ld	s0,16(sp)
    80004988:	00813483          	ld	s1,8(sp)
    8000498c:	00013903          	ld	s2,0(sp)
    80004990:	02010113          	addi	sp,sp,32
    80004994:	00008067          	ret

0000000080004998 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004998:	fd010113          	addi	sp,sp,-48
    8000499c:	02113423          	sd	ra,40(sp)
    800049a0:	02813023          	sd	s0,32(sp)
    800049a4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800049a8:	00000613          	li	a2,0
    800049ac:	00000597          	auipc	a1,0x0
    800049b0:	f2058593          	addi	a1,a1,-224 # 800048cc <_ZL11workerBodyAPv>
    800049b4:	fd040513          	addi	a0,s0,-48
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	934080e7          	jalr	-1740(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800049c0:	00005517          	auipc	a0,0x5
    800049c4:	97050513          	addi	a0,a0,-1680 # 80009330 <CONSOLE_STATUS+0x320>
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	958080e7          	jalr	-1704(ra) # 80005320 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800049d0:	00000613          	li	a2,0
    800049d4:	00000597          	auipc	a1,0x0
    800049d8:	e2458593          	addi	a1,a1,-476 # 800047f8 <_ZL11workerBodyBPv>
    800049dc:	fd840513          	addi	a0,s0,-40
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	90c080e7          	jalr	-1780(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800049e8:	00005517          	auipc	a0,0x5
    800049ec:	96050513          	addi	a0,a0,-1696 # 80009348 <CONSOLE_STATUS+0x338>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	930080e7          	jalr	-1744(ra) # 80005320 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800049f8:	00000613          	li	a2,0
    800049fc:	00000597          	auipc	a1,0x0
    80004a00:	c7c58593          	addi	a1,a1,-900 # 80004678 <_ZL11workerBodyCPv>
    80004a04:	fe040513          	addi	a0,s0,-32
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	8e4080e7          	jalr	-1820(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004a10:	00005517          	auipc	a0,0x5
    80004a14:	95050513          	addi	a0,a0,-1712 # 80009360 <CONSOLE_STATUS+0x350>
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	908080e7          	jalr	-1784(ra) # 80005320 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004a20:	00000613          	li	a2,0
    80004a24:	00000597          	auipc	a1,0x0
    80004a28:	b0c58593          	addi	a1,a1,-1268 # 80004530 <_ZL11workerBodyDPv>
    80004a2c:	fe840513          	addi	a0,s0,-24
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	8bc080e7          	jalr	-1860(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004a38:	00005517          	auipc	a0,0x5
    80004a3c:	94050513          	addi	a0,a0,-1728 # 80009378 <CONSOLE_STATUS+0x368>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	8e0080e7          	jalr	-1824(ra) # 80005320 <_Z11printStringPKc>
    80004a48:	00c0006f          	j	80004a54 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	98c080e7          	jalr	-1652(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a54:	00007797          	auipc	a5,0x7
    80004a58:	c177c783          	lbu	a5,-1001(a5) # 8000b66b <_ZL9finishedA>
    80004a5c:	fe0788e3          	beqz	a5,80004a4c <_Z18Threads_C_API_testv+0xb4>
    80004a60:	00007797          	auipc	a5,0x7
    80004a64:	c0a7c783          	lbu	a5,-1014(a5) # 8000b66a <_ZL9finishedB>
    80004a68:	fe0782e3          	beqz	a5,80004a4c <_Z18Threads_C_API_testv+0xb4>
    80004a6c:	00007797          	auipc	a5,0x7
    80004a70:	bfd7c783          	lbu	a5,-1027(a5) # 8000b669 <_ZL9finishedC>
    80004a74:	fc078ce3          	beqz	a5,80004a4c <_Z18Threads_C_API_testv+0xb4>
    80004a78:	00007797          	auipc	a5,0x7
    80004a7c:	bf07c783          	lbu	a5,-1040(a5) # 8000b668 <_ZL9finishedD>
    80004a80:	fc0786e3          	beqz	a5,80004a4c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004a84:	02813083          	ld	ra,40(sp)
    80004a88:	02013403          	ld	s0,32(sp)
    80004a8c:	03010113          	addi	sp,sp,48
    80004a90:	00008067          	ret

0000000080004a94 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004a94:	fd010113          	addi	sp,sp,-48
    80004a98:	02113423          	sd	ra,40(sp)
    80004a9c:	02813023          	sd	s0,32(sp)
    80004aa0:	00913c23          	sd	s1,24(sp)
    80004aa4:	01213823          	sd	s2,16(sp)
    80004aa8:	01313423          	sd	s3,8(sp)
    80004aac:	03010413          	addi	s0,sp,48
    80004ab0:	00050993          	mv	s3,a0
    80004ab4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004ab8:	00000913          	li	s2,0
    80004abc:	00c0006f          	j	80004ac8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'e') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	84c080e7          	jalr	-1972(ra) # 8000230c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'e') {
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	a18080e7          	jalr	-1512(ra) # 800014e0 <_Z4getcv>
    80004ad0:	0005059b          	sext.w	a1,a0
    80004ad4:	06500793          	li	a5,101
    80004ad8:	02f58a63          	beq	a1,a5,80004b0c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004adc:	0084b503          	ld	a0,8(s1)
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	c64080e7          	jalr	-924(ra) # 80005744 <_ZN9BufferCPP3putEi>
        i++;
    80004ae8:	0019071b          	addiw	a4,s2,1
    80004aec:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004af0:	0004a683          	lw	a3,0(s1)
    80004af4:	0026979b          	slliw	a5,a3,0x2
    80004af8:	00d787bb          	addw	a5,a5,a3
    80004afc:	0017979b          	slliw	a5,a5,0x1
    80004b00:	02f767bb          	remw	a5,a4,a5
    80004b04:	fc0792e3          	bnez	a5,80004ac8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004b08:	fb9ff06f          	j	80004ac0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004b0c:	00100793          	li	a5,1
    80004b10:	00007717          	auipc	a4,0x7
    80004b14:	b6f72023          	sw	a5,-1184(a4) # 8000b670 <_ZL9threadEnd>
    td->buffer->put('!');
    80004b18:	0209b783          	ld	a5,32(s3)
    80004b1c:	02100593          	li	a1,33
    80004b20:	0087b503          	ld	a0,8(a5)
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	c20080e7          	jalr	-992(ra) # 80005744 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004b2c:	0104b503          	ld	a0,16(s1)
    80004b30:	ffffe097          	auipc	ra,0xffffe
    80004b34:	92c080e7          	jalr	-1748(ra) # 8000245c <_ZN9Semaphore6signalEv>
}
    80004b38:	02813083          	ld	ra,40(sp)
    80004b3c:	02013403          	ld	s0,32(sp)
    80004b40:	01813483          	ld	s1,24(sp)
    80004b44:	01013903          	ld	s2,16(sp)
    80004b48:	00813983          	ld	s3,8(sp)
    80004b4c:	03010113          	addi	sp,sp,48
    80004b50:	00008067          	ret

0000000080004b54 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004b54:	fe010113          	addi	sp,sp,-32
    80004b58:	00113c23          	sd	ra,24(sp)
    80004b5c:	00813823          	sd	s0,16(sp)
    80004b60:	00913423          	sd	s1,8(sp)
    80004b64:	01213023          	sd	s2,0(sp)
    80004b68:	02010413          	addi	s0,sp,32
    80004b6c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b70:	00000913          	li	s2,0
    80004b74:	00c0006f          	j	80004b80 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	794080e7          	jalr	1940(ra) # 8000230c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004b80:	00007797          	auipc	a5,0x7
    80004b84:	af07a783          	lw	a5,-1296(a5) # 8000b670 <_ZL9threadEnd>
    80004b88:	02079e63          	bnez	a5,80004bc4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004b8c:	0004a583          	lw	a1,0(s1)
    80004b90:	0305859b          	addiw	a1,a1,48
    80004b94:	0084b503          	ld	a0,8(s1)
    80004b98:	00001097          	auipc	ra,0x1
    80004b9c:	bac080e7          	jalr	-1108(ra) # 80005744 <_ZN9BufferCPP3putEi>
        i++;
    80004ba0:	0019071b          	addiw	a4,s2,1
    80004ba4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ba8:	0004a683          	lw	a3,0(s1)
    80004bac:	0026979b          	slliw	a5,a3,0x2
    80004bb0:	00d787bb          	addw	a5,a5,a3
    80004bb4:	0017979b          	slliw	a5,a5,0x1
    80004bb8:	02f767bb          	remw	a5,a4,a5
    80004bbc:	fc0792e3          	bnez	a5,80004b80 <_ZN12ProducerSync8producerEPv+0x2c>
    80004bc0:	fb9ff06f          	j	80004b78 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004bc4:	0104b503          	ld	a0,16(s1)
    80004bc8:	ffffe097          	auipc	ra,0xffffe
    80004bcc:	894080e7          	jalr	-1900(ra) # 8000245c <_ZN9Semaphore6signalEv>
}
    80004bd0:	01813083          	ld	ra,24(sp)
    80004bd4:	01013403          	ld	s0,16(sp)
    80004bd8:	00813483          	ld	s1,8(sp)
    80004bdc:	00013903          	ld	s2,0(sp)
    80004be0:	02010113          	addi	sp,sp,32
    80004be4:	00008067          	ret

0000000080004be8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004be8:	fd010113          	addi	sp,sp,-48
    80004bec:	02113423          	sd	ra,40(sp)
    80004bf0:	02813023          	sd	s0,32(sp)
    80004bf4:	00913c23          	sd	s1,24(sp)
    80004bf8:	01213823          	sd	s2,16(sp)
    80004bfc:	01313423          	sd	s3,8(sp)
    80004c00:	01413023          	sd	s4,0(sp)
    80004c04:	03010413          	addi	s0,sp,48
    80004c08:	00050993          	mv	s3,a0
    80004c0c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004c10:	00000a13          	li	s4,0
    80004c14:	01c0006f          	j	80004c30 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004c18:	ffffd097          	auipc	ra,0xffffd
    80004c1c:	6f4080e7          	jalr	1780(ra) # 8000230c <_ZN6Thread8dispatchEv>
    80004c20:	0500006f          	j	80004c70 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004c24:	00a00513          	li	a0,10
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	8e0080e7          	jalr	-1824(ra) # 80001508 <_Z4putcc>
    while (!threadEnd) {
    80004c30:	00007797          	auipc	a5,0x7
    80004c34:	a407a783          	lw	a5,-1472(a5) # 8000b670 <_ZL9threadEnd>
    80004c38:	06079263          	bnez	a5,80004c9c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004c3c:	00893503          	ld	a0,8(s2)
    80004c40:	00001097          	auipc	ra,0x1
    80004c44:	b94080e7          	jalr	-1132(ra) # 800057d4 <_ZN9BufferCPP3getEv>
        i++;
    80004c48:	001a049b          	addiw	s1,s4,1
    80004c4c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004c50:	0ff57513          	andi	a0,a0,255
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	8b4080e7          	jalr	-1868(ra) # 80001508 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004c5c:	00092703          	lw	a4,0(s2)
    80004c60:	0027179b          	slliw	a5,a4,0x2
    80004c64:	00e787bb          	addw	a5,a5,a4
    80004c68:	02f4e7bb          	remw	a5,s1,a5
    80004c6c:	fa0786e3          	beqz	a5,80004c18 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004c70:	05000793          	li	a5,80
    80004c74:	02f4e4bb          	remw	s1,s1,a5
    80004c78:	fa049ce3          	bnez	s1,80004c30 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004c7c:	fa9ff06f          	j	80004c24 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004c80:	0209b783          	ld	a5,32(s3)
    80004c84:	0087b503          	ld	a0,8(a5)
    80004c88:	00001097          	auipc	ra,0x1
    80004c8c:	b4c080e7          	jalr	-1204(ra) # 800057d4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004c90:	0ff57513          	andi	a0,a0,255
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	7f4080e7          	jalr	2036(ra) # 80002488 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004c9c:	0209b783          	ld	a5,32(s3)
    80004ca0:	0087b503          	ld	a0,8(a5)
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	bbc080e7          	jalr	-1092(ra) # 80005860 <_ZN9BufferCPP6getCntEv>
    80004cac:	fca04ae3          	bgtz	a0,80004c80 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004cb0:	01093503          	ld	a0,16(s2)
    80004cb4:	ffffd097          	auipc	ra,0xffffd
    80004cb8:	7a8080e7          	jalr	1960(ra) # 8000245c <_ZN9Semaphore6signalEv>
}
    80004cbc:	02813083          	ld	ra,40(sp)
    80004cc0:	02013403          	ld	s0,32(sp)
    80004cc4:	01813483          	ld	s1,24(sp)
    80004cc8:	01013903          	ld	s2,16(sp)
    80004ccc:	00813983          	ld	s3,8(sp)
    80004cd0:	00013a03          	ld	s4,0(sp)
    80004cd4:	03010113          	addi	sp,sp,48
    80004cd8:	00008067          	ret

0000000080004cdc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004cdc:	f8010113          	addi	sp,sp,-128
    80004ce0:	06113c23          	sd	ra,120(sp)
    80004ce4:	06813823          	sd	s0,112(sp)
    80004ce8:	06913423          	sd	s1,104(sp)
    80004cec:	07213023          	sd	s2,96(sp)
    80004cf0:	05313c23          	sd	s3,88(sp)
    80004cf4:	05413823          	sd	s4,80(sp)
    80004cf8:	05513423          	sd	s5,72(sp)
    80004cfc:	05613023          	sd	s6,64(sp)
    80004d00:	03713c23          	sd	s7,56(sp)
    80004d04:	03813823          	sd	s8,48(sp)
    80004d08:	03913423          	sd	s9,40(sp)
    80004d0c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004d10:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004d14:	00004517          	auipc	a0,0x4
    80004d18:	4ac50513          	addi	a0,a0,1196 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	604080e7          	jalr	1540(ra) # 80005320 <_Z11printStringPKc>
    getString(input, 30);
    80004d24:	01e00593          	li	a1,30
    80004d28:	f8040493          	addi	s1,s0,-128
    80004d2c:	00048513          	mv	a0,s1
    80004d30:	00000097          	auipc	ra,0x0
    80004d34:	678080e7          	jalr	1656(ra) # 800053a8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004d38:	00048513          	mv	a0,s1
    80004d3c:	00000097          	auipc	ra,0x0
    80004d40:	744080e7          	jalr	1860(ra) # 80005480 <_Z11stringToIntPKc>
    80004d44:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004d48:	00004517          	auipc	a0,0x4
    80004d4c:	49850513          	addi	a0,a0,1176 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	5d0080e7          	jalr	1488(ra) # 80005320 <_Z11printStringPKc>
    getString(input, 30);
    80004d58:	01e00593          	li	a1,30
    80004d5c:	00048513          	mv	a0,s1
    80004d60:	00000097          	auipc	ra,0x0
    80004d64:	648080e7          	jalr	1608(ra) # 800053a8 <_Z9getStringPci>
    n = stringToInt(input);
    80004d68:	00048513          	mv	a0,s1
    80004d6c:	00000097          	auipc	ra,0x0
    80004d70:	714080e7          	jalr	1812(ra) # 80005480 <_Z11stringToIntPKc>
    80004d74:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004d78:	00004517          	auipc	a0,0x4
    80004d7c:	48850513          	addi	a0,a0,1160 # 80009200 <CONSOLE_STATUS+0x1f0>
    80004d80:	00000097          	auipc	ra,0x0
    80004d84:	5a0080e7          	jalr	1440(ra) # 80005320 <_Z11printStringPKc>
    80004d88:	00000613          	li	a2,0
    80004d8c:	00a00593          	li	a1,10
    80004d90:	00090513          	mv	a0,s2
    80004d94:	00000097          	auipc	ra,0x0
    80004d98:	73c080e7          	jalr	1852(ra) # 800054d0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004d9c:	00004517          	auipc	a0,0x4
    80004da0:	47c50513          	addi	a0,a0,1148 # 80009218 <CONSOLE_STATUS+0x208>
    80004da4:	00000097          	auipc	ra,0x0
    80004da8:	57c080e7          	jalr	1404(ra) # 80005320 <_Z11printStringPKc>
    80004dac:	00000613          	li	a2,0
    80004db0:	00a00593          	li	a1,10
    80004db4:	00048513          	mv	a0,s1
    80004db8:	00000097          	auipc	ra,0x0
    80004dbc:	718080e7          	jalr	1816(ra) # 800054d0 <_Z8printIntiii>
    printString(".\n");
    80004dc0:	00004517          	auipc	a0,0x4
    80004dc4:	47050513          	addi	a0,a0,1136 # 80009230 <CONSOLE_STATUS+0x220>
    80004dc8:	00000097          	auipc	ra,0x0
    80004dcc:	558080e7          	jalr	1368(ra) # 80005320 <_Z11printStringPKc>
    if(threadNum > n) {
    80004dd0:	0324c463          	blt	s1,s2,80004df8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004dd4:	03205c63          	blez	s2,80004e0c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004dd8:	03800513          	li	a0,56
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	1cc080e7          	jalr	460(ra) # 80001fa8 <_Znwm>
    80004de4:	00050a93          	mv	s5,a0
    80004de8:	00048593          	mv	a1,s1
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	804080e7          	jalr	-2044(ra) # 800055f0 <_ZN9BufferCPPC1Ei>
    80004df4:	0300006f          	j	80004e24 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004df8:	00004517          	auipc	a0,0x4
    80004dfc:	44050513          	addi	a0,a0,1088 # 80009238 <CONSOLE_STATUS+0x228>
    80004e00:	00000097          	auipc	ra,0x0
    80004e04:	520080e7          	jalr	1312(ra) # 80005320 <_Z11printStringPKc>
        return;
    80004e08:	0140006f          	j	80004e1c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004e0c:	00004517          	auipc	a0,0x4
    80004e10:	46c50513          	addi	a0,a0,1132 # 80009278 <CONSOLE_STATUS+0x268>
    80004e14:	00000097          	auipc	ra,0x0
    80004e18:	50c080e7          	jalr	1292(ra) # 80005320 <_Z11printStringPKc>
        return;
    80004e1c:	000b8113          	mv	sp,s7
    80004e20:	2380006f          	j	80005058 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004e24:	01000513          	li	a0,16
    80004e28:	ffffd097          	auipc	ra,0xffffd
    80004e2c:	180080e7          	jalr	384(ra) # 80001fa8 <_Znwm>
    80004e30:	00050493          	mv	s1,a0
    80004e34:	00000593          	li	a1,0
    80004e38:	ffffd097          	auipc	ra,0xffffd
    80004e3c:	5c0080e7          	jalr	1472(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    80004e40:	00007797          	auipc	a5,0x7
    80004e44:	8297bc23          	sd	s1,-1992(a5) # 8000b678 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004e48:	00391793          	slli	a5,s2,0x3
    80004e4c:	00f78793          	addi	a5,a5,15
    80004e50:	ff07f793          	andi	a5,a5,-16
    80004e54:	40f10133          	sub	sp,sp,a5
    80004e58:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004e5c:	0019071b          	addiw	a4,s2,1
    80004e60:	00171793          	slli	a5,a4,0x1
    80004e64:	00e787b3          	add	a5,a5,a4
    80004e68:	00379793          	slli	a5,a5,0x3
    80004e6c:	00f78793          	addi	a5,a5,15
    80004e70:	ff07f793          	andi	a5,a5,-16
    80004e74:	40f10133          	sub	sp,sp,a5
    80004e78:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004e7c:	00191c13          	slli	s8,s2,0x1
    80004e80:	012c07b3          	add	a5,s8,s2
    80004e84:	00379793          	slli	a5,a5,0x3
    80004e88:	00fa07b3          	add	a5,s4,a5
    80004e8c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004e90:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004e94:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004e98:	02800513          	li	a0,40
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	10c080e7          	jalr	268(ra) # 80001fa8 <_Znwm>
    80004ea4:	00050b13          	mv	s6,a0
    80004ea8:	012c0c33          	add	s8,s8,s2
    80004eac:	003c1c13          	slli	s8,s8,0x3
    80004eb0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004eb4:	ffffd097          	auipc	ra,0xffffd
    80004eb8:	4b0080e7          	jalr	1200(ra) # 80002364 <_ZN6ThreadC1Ev>
    80004ebc:	00006797          	auipc	a5,0x6
    80004ec0:	68c78793          	addi	a5,a5,1676 # 8000b548 <_ZTV12ConsumerSync+0x10>
    80004ec4:	00fb3023          	sd	a5,0(s6)
    80004ec8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004ecc:	000b0513          	mv	a0,s6
    80004ed0:	ffffd097          	auipc	ra,0xffffd
    80004ed4:	4cc080e7          	jalr	1228(ra) # 8000239c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004ed8:	00000493          	li	s1,0
    80004edc:	0380006f          	j	80004f14 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ee0:	00006797          	auipc	a5,0x6
    80004ee4:	64078793          	addi	a5,a5,1600 # 8000b520 <_ZTV12ProducerSync+0x10>
    80004ee8:	00fcb023          	sd	a5,0(s9)
    80004eec:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004ef0:	00349793          	slli	a5,s1,0x3
    80004ef4:	00f987b3          	add	a5,s3,a5
    80004ef8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004efc:	00349793          	slli	a5,s1,0x3
    80004f00:	00f987b3          	add	a5,s3,a5
    80004f04:	0007b503          	ld	a0,0(a5)
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	494080e7          	jalr	1172(ra) # 8000239c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004f10:	0014849b          	addiw	s1,s1,1
    80004f14:	0b24d063          	bge	s1,s2,80004fb4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004f18:	00149793          	slli	a5,s1,0x1
    80004f1c:	009787b3          	add	a5,a5,s1
    80004f20:	00379793          	slli	a5,a5,0x3
    80004f24:	00fa07b3          	add	a5,s4,a5
    80004f28:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004f2c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004f30:	00006717          	auipc	a4,0x6
    80004f34:	74873703          	ld	a4,1864(a4) # 8000b678 <_ZL10waitForAll>
    80004f38:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004f3c:	02905863          	blez	s1,80004f6c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004f40:	02800513          	li	a0,40
    80004f44:	ffffd097          	auipc	ra,0xffffd
    80004f48:	064080e7          	jalr	100(ra) # 80001fa8 <_Znwm>
    80004f4c:	00050c93          	mv	s9,a0
    80004f50:	00149c13          	slli	s8,s1,0x1
    80004f54:	009c0c33          	add	s8,s8,s1
    80004f58:	003c1c13          	slli	s8,s8,0x3
    80004f5c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	404080e7          	jalr	1028(ra) # 80002364 <_ZN6ThreadC1Ev>
    80004f68:	f79ff06f          	j	80004ee0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004f6c:	02800513          	li	a0,40
    80004f70:	ffffd097          	auipc	ra,0xffffd
    80004f74:	038080e7          	jalr	56(ra) # 80001fa8 <_Znwm>
    80004f78:	00050c93          	mv	s9,a0
    80004f7c:	00149c13          	slli	s8,s1,0x1
    80004f80:	009c0c33          	add	s8,s8,s1
    80004f84:	003c1c13          	slli	s8,s8,0x3
    80004f88:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	3d8080e7          	jalr	984(ra) # 80002364 <_ZN6ThreadC1Ev>
    80004f94:	00006797          	auipc	a5,0x6
    80004f98:	56478793          	addi	a5,a5,1380 # 8000b4f8 <_ZTV16ProducerKeyboard+0x10>
    80004f9c:	00fcb023          	sd	a5,0(s9)
    80004fa0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004fa4:	00349793          	slli	a5,s1,0x3
    80004fa8:	00f987b3          	add	a5,s3,a5
    80004fac:	0197b023          	sd	s9,0(a5)
    80004fb0:	f4dff06f          	j	80004efc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004fb4:	ffffd097          	auipc	ra,0xffffd
    80004fb8:	358080e7          	jalr	856(ra) # 8000230c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004fbc:	00000493          	li	s1,0
    80004fc0:	00994e63          	blt	s2,s1,80004fdc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004fc4:	00006517          	auipc	a0,0x6
    80004fc8:	6b453503          	ld	a0,1716(a0) # 8000b678 <_ZL10waitForAll>
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	464080e7          	jalr	1124(ra) # 80002430 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004fd4:	0014849b          	addiw	s1,s1,1
    80004fd8:	fe9ff06f          	j	80004fc0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004fdc:	00000493          	li	s1,0
    80004fe0:	0080006f          	j	80004fe8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004fe4:	0014849b          	addiw	s1,s1,1
    80004fe8:	0324d263          	bge	s1,s2,8000500c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004fec:	00349793          	slli	a5,s1,0x3
    80004ff0:	00f987b3          	add	a5,s3,a5
    80004ff4:	0007b503          	ld	a0,0(a5)
    80004ff8:	fe0506e3          	beqz	a0,80004fe4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004ffc:	00053783          	ld	a5,0(a0)
    80005000:	0087b783          	ld	a5,8(a5)
    80005004:	000780e7          	jalr	a5
    80005008:	fddff06f          	j	80004fe4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000500c:	000b0a63          	beqz	s6,80005020 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005010:	000b3783          	ld	a5,0(s6)
    80005014:	0087b783          	ld	a5,8(a5)
    80005018:	000b0513          	mv	a0,s6
    8000501c:	000780e7          	jalr	a5
    delete waitForAll;
    80005020:	00006517          	auipc	a0,0x6
    80005024:	65853503          	ld	a0,1624(a0) # 8000b678 <_ZL10waitForAll>
    80005028:	00050863          	beqz	a0,80005038 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000502c:	00053783          	ld	a5,0(a0)
    80005030:	0087b783          	ld	a5,8(a5)
    80005034:	000780e7          	jalr	a5
    delete buffer;
    80005038:	000a8e63          	beqz	s5,80005054 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000503c:	000a8513          	mv	a0,s5
    80005040:	00001097          	auipc	ra,0x1
    80005044:	8a8080e7          	jalr	-1880(ra) # 800058e8 <_ZN9BufferCPPD1Ev>
    80005048:	000a8513          	mv	a0,s5
    8000504c:	ffffd097          	auipc	ra,0xffffd
    80005050:	05c080e7          	jalr	92(ra) # 800020a8 <_ZdlPv>
    80005054:	000b8113          	mv	sp,s7

}
    80005058:	f8040113          	addi	sp,s0,-128
    8000505c:	07813083          	ld	ra,120(sp)
    80005060:	07013403          	ld	s0,112(sp)
    80005064:	06813483          	ld	s1,104(sp)
    80005068:	06013903          	ld	s2,96(sp)
    8000506c:	05813983          	ld	s3,88(sp)
    80005070:	05013a03          	ld	s4,80(sp)
    80005074:	04813a83          	ld	s5,72(sp)
    80005078:	04013b03          	ld	s6,64(sp)
    8000507c:	03813b83          	ld	s7,56(sp)
    80005080:	03013c03          	ld	s8,48(sp)
    80005084:	02813c83          	ld	s9,40(sp)
    80005088:	08010113          	addi	sp,sp,128
    8000508c:	00008067          	ret
    80005090:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005094:	000a8513          	mv	a0,s5
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	010080e7          	jalr	16(ra) # 800020a8 <_ZdlPv>
    800050a0:	00048513          	mv	a0,s1
    800050a4:	00007097          	auipc	ra,0x7
    800050a8:	6b4080e7          	jalr	1716(ra) # 8000c758 <_Unwind_Resume>
    800050ac:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800050b0:	00048513          	mv	a0,s1
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	ff4080e7          	jalr	-12(ra) # 800020a8 <_ZdlPv>
    800050bc:	00090513          	mv	a0,s2
    800050c0:	00007097          	auipc	ra,0x7
    800050c4:	698080e7          	jalr	1688(ra) # 8000c758 <_Unwind_Resume>
    800050c8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800050cc:	000b0513          	mv	a0,s6
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	fd8080e7          	jalr	-40(ra) # 800020a8 <_ZdlPv>
    800050d8:	00048513          	mv	a0,s1
    800050dc:	00007097          	auipc	ra,0x7
    800050e0:	67c080e7          	jalr	1660(ra) # 8000c758 <_Unwind_Resume>
    800050e4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800050e8:	000c8513          	mv	a0,s9
    800050ec:	ffffd097          	auipc	ra,0xffffd
    800050f0:	fbc080e7          	jalr	-68(ra) # 800020a8 <_ZdlPv>
    800050f4:	00048513          	mv	a0,s1
    800050f8:	00007097          	auipc	ra,0x7
    800050fc:	660080e7          	jalr	1632(ra) # 8000c758 <_Unwind_Resume>
    80005100:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005104:	000c8513          	mv	a0,s9
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	fa0080e7          	jalr	-96(ra) # 800020a8 <_ZdlPv>
    80005110:	00048513          	mv	a0,s1
    80005114:	00007097          	auipc	ra,0x7
    80005118:	644080e7          	jalr	1604(ra) # 8000c758 <_Unwind_Resume>

000000008000511c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000511c:	ff010113          	addi	sp,sp,-16
    80005120:	00113423          	sd	ra,8(sp)
    80005124:	00813023          	sd	s0,0(sp)
    80005128:	01010413          	addi	s0,sp,16
    8000512c:	00006797          	auipc	a5,0x6
    80005130:	41c78793          	addi	a5,a5,1052 # 8000b548 <_ZTV12ConsumerSync+0x10>
    80005134:	00f53023          	sd	a5,0(a0)
    80005138:	ffffd097          	auipc	ra,0xffffd
    8000513c:	070080e7          	jalr	112(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80005140:	00813083          	ld	ra,8(sp)
    80005144:	00013403          	ld	s0,0(sp)
    80005148:	01010113          	addi	sp,sp,16
    8000514c:	00008067          	ret

0000000080005150 <_ZN12ConsumerSyncD0Ev>:
    80005150:	fe010113          	addi	sp,sp,-32
    80005154:	00113c23          	sd	ra,24(sp)
    80005158:	00813823          	sd	s0,16(sp)
    8000515c:	00913423          	sd	s1,8(sp)
    80005160:	02010413          	addi	s0,sp,32
    80005164:	00050493          	mv	s1,a0
    80005168:	00006797          	auipc	a5,0x6
    8000516c:	3e078793          	addi	a5,a5,992 # 8000b548 <_ZTV12ConsumerSync+0x10>
    80005170:	00f53023          	sd	a5,0(a0)
    80005174:	ffffd097          	auipc	ra,0xffffd
    80005178:	034080e7          	jalr	52(ra) # 800021a8 <_ZN6ThreadD1Ev>
    8000517c:	00048513          	mv	a0,s1
    80005180:	ffffd097          	auipc	ra,0xffffd
    80005184:	f28080e7          	jalr	-216(ra) # 800020a8 <_ZdlPv>
    80005188:	01813083          	ld	ra,24(sp)
    8000518c:	01013403          	ld	s0,16(sp)
    80005190:	00813483          	ld	s1,8(sp)
    80005194:	02010113          	addi	sp,sp,32
    80005198:	00008067          	ret

000000008000519c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000519c:	ff010113          	addi	sp,sp,-16
    800051a0:	00113423          	sd	ra,8(sp)
    800051a4:	00813023          	sd	s0,0(sp)
    800051a8:	01010413          	addi	s0,sp,16
    800051ac:	00006797          	auipc	a5,0x6
    800051b0:	37478793          	addi	a5,a5,884 # 8000b520 <_ZTV12ProducerSync+0x10>
    800051b4:	00f53023          	sd	a5,0(a0)
    800051b8:	ffffd097          	auipc	ra,0xffffd
    800051bc:	ff0080e7          	jalr	-16(ra) # 800021a8 <_ZN6ThreadD1Ev>
    800051c0:	00813083          	ld	ra,8(sp)
    800051c4:	00013403          	ld	s0,0(sp)
    800051c8:	01010113          	addi	sp,sp,16
    800051cc:	00008067          	ret

00000000800051d0 <_ZN12ProducerSyncD0Ev>:
    800051d0:	fe010113          	addi	sp,sp,-32
    800051d4:	00113c23          	sd	ra,24(sp)
    800051d8:	00813823          	sd	s0,16(sp)
    800051dc:	00913423          	sd	s1,8(sp)
    800051e0:	02010413          	addi	s0,sp,32
    800051e4:	00050493          	mv	s1,a0
    800051e8:	00006797          	auipc	a5,0x6
    800051ec:	33878793          	addi	a5,a5,824 # 8000b520 <_ZTV12ProducerSync+0x10>
    800051f0:	00f53023          	sd	a5,0(a0)
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	fb4080e7          	jalr	-76(ra) # 800021a8 <_ZN6ThreadD1Ev>
    800051fc:	00048513          	mv	a0,s1
    80005200:	ffffd097          	auipc	ra,0xffffd
    80005204:	ea8080e7          	jalr	-344(ra) # 800020a8 <_ZdlPv>
    80005208:	01813083          	ld	ra,24(sp)
    8000520c:	01013403          	ld	s0,16(sp)
    80005210:	00813483          	ld	s1,8(sp)
    80005214:	02010113          	addi	sp,sp,32
    80005218:	00008067          	ret

000000008000521c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000521c:	ff010113          	addi	sp,sp,-16
    80005220:	00113423          	sd	ra,8(sp)
    80005224:	00813023          	sd	s0,0(sp)
    80005228:	01010413          	addi	s0,sp,16
    8000522c:	00006797          	auipc	a5,0x6
    80005230:	2cc78793          	addi	a5,a5,716 # 8000b4f8 <_ZTV16ProducerKeyboard+0x10>
    80005234:	00f53023          	sd	a5,0(a0)
    80005238:	ffffd097          	auipc	ra,0xffffd
    8000523c:	f70080e7          	jalr	-144(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80005240:	00813083          	ld	ra,8(sp)
    80005244:	00013403          	ld	s0,0(sp)
    80005248:	01010113          	addi	sp,sp,16
    8000524c:	00008067          	ret

0000000080005250 <_ZN16ProducerKeyboardD0Ev>:
    80005250:	fe010113          	addi	sp,sp,-32
    80005254:	00113c23          	sd	ra,24(sp)
    80005258:	00813823          	sd	s0,16(sp)
    8000525c:	00913423          	sd	s1,8(sp)
    80005260:	02010413          	addi	s0,sp,32
    80005264:	00050493          	mv	s1,a0
    80005268:	00006797          	auipc	a5,0x6
    8000526c:	29078793          	addi	a5,a5,656 # 8000b4f8 <_ZTV16ProducerKeyboard+0x10>
    80005270:	00f53023          	sd	a5,0(a0)
    80005274:	ffffd097          	auipc	ra,0xffffd
    80005278:	f34080e7          	jalr	-204(ra) # 800021a8 <_ZN6ThreadD1Ev>
    8000527c:	00048513          	mv	a0,s1
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	e28080e7          	jalr	-472(ra) # 800020a8 <_ZdlPv>
    80005288:	01813083          	ld	ra,24(sp)
    8000528c:	01013403          	ld	s0,16(sp)
    80005290:	00813483          	ld	s1,8(sp)
    80005294:	02010113          	addi	sp,sp,32
    80005298:	00008067          	ret

000000008000529c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000529c:	ff010113          	addi	sp,sp,-16
    800052a0:	00113423          	sd	ra,8(sp)
    800052a4:	00813023          	sd	s0,0(sp)
    800052a8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800052ac:	02053583          	ld	a1,32(a0)
    800052b0:	fffff097          	auipc	ra,0xfffff
    800052b4:	7e4080e7          	jalr	2020(ra) # 80004a94 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800052b8:	00813083          	ld	ra,8(sp)
    800052bc:	00013403          	ld	s0,0(sp)
    800052c0:	01010113          	addi	sp,sp,16
    800052c4:	00008067          	ret

00000000800052c8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800052c8:	ff010113          	addi	sp,sp,-16
    800052cc:	00113423          	sd	ra,8(sp)
    800052d0:	00813023          	sd	s0,0(sp)
    800052d4:	01010413          	addi	s0,sp,16
        producer(td);
    800052d8:	02053583          	ld	a1,32(a0)
    800052dc:	00000097          	auipc	ra,0x0
    800052e0:	878080e7          	jalr	-1928(ra) # 80004b54 <_ZN12ProducerSync8producerEPv>
    }
    800052e4:	00813083          	ld	ra,8(sp)
    800052e8:	00013403          	ld	s0,0(sp)
    800052ec:	01010113          	addi	sp,sp,16
    800052f0:	00008067          	ret

00000000800052f4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800052f4:	ff010113          	addi	sp,sp,-16
    800052f8:	00113423          	sd	ra,8(sp)
    800052fc:	00813023          	sd	s0,0(sp)
    80005300:	01010413          	addi	s0,sp,16
        consumer(td);
    80005304:	02053583          	ld	a1,32(a0)
    80005308:	00000097          	auipc	ra,0x0
    8000530c:	8e0080e7          	jalr	-1824(ra) # 80004be8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005310:	00813083          	ld	ra,8(sp)
    80005314:	00013403          	ld	s0,0(sp)
    80005318:	01010113          	addi	sp,sp,16
    8000531c:	00008067          	ret

0000000080005320 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005320:	fe010113          	addi	sp,sp,-32
    80005324:	00113c23          	sd	ra,24(sp)
    80005328:	00813823          	sd	s0,16(sp)
    8000532c:	00913423          	sd	s1,8(sp)
    80005330:	02010413          	addi	s0,sp,32
    80005334:	00050493          	mv	s1,a0
    LOCK();
    80005338:	00100613          	li	a2,1
    8000533c:	00000593          	li	a1,0
    80005340:	00006517          	auipc	a0,0x6
    80005344:	34050513          	addi	a0,a0,832 # 8000b680 <lockPrint>
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	ed4080e7          	jalr	-300(ra) # 8000121c <copy_and_swap>
    80005350:	00050863          	beqz	a0,80005360 <_Z11printStringPKc+0x40>
    80005354:	ffffc097          	auipc	ra,0xffffc
    80005358:	084080e7          	jalr	132(ra) # 800013d8 <_Z15thread_dispatchv>
    8000535c:	fddff06f          	j	80005338 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005360:	0004c503          	lbu	a0,0(s1)
    80005364:	00050a63          	beqz	a0,80005378 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	1a0080e7          	jalr	416(ra) # 80001508 <_Z4putcc>
        string++;
    80005370:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005374:	fedff06f          	j	80005360 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005378:	00000613          	li	a2,0
    8000537c:	00100593          	li	a1,1
    80005380:	00006517          	auipc	a0,0x6
    80005384:	30050513          	addi	a0,a0,768 # 8000b680 <lockPrint>
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	e94080e7          	jalr	-364(ra) # 8000121c <copy_and_swap>
    80005390:	fe0514e3          	bnez	a0,80005378 <_Z11printStringPKc+0x58>
}
    80005394:	01813083          	ld	ra,24(sp)
    80005398:	01013403          	ld	s0,16(sp)
    8000539c:	00813483          	ld	s1,8(sp)
    800053a0:	02010113          	addi	sp,sp,32
    800053a4:	00008067          	ret

00000000800053a8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800053a8:	fd010113          	addi	sp,sp,-48
    800053ac:	02113423          	sd	ra,40(sp)
    800053b0:	02813023          	sd	s0,32(sp)
    800053b4:	00913c23          	sd	s1,24(sp)
    800053b8:	01213823          	sd	s2,16(sp)
    800053bc:	01313423          	sd	s3,8(sp)
    800053c0:	01413023          	sd	s4,0(sp)
    800053c4:	03010413          	addi	s0,sp,48
    800053c8:	00050993          	mv	s3,a0
    800053cc:	00058a13          	mv	s4,a1
    LOCK();
    800053d0:	00100613          	li	a2,1
    800053d4:	00000593          	li	a1,0
    800053d8:	00006517          	auipc	a0,0x6
    800053dc:	2a850513          	addi	a0,a0,680 # 8000b680 <lockPrint>
    800053e0:	ffffc097          	auipc	ra,0xffffc
    800053e4:	e3c080e7          	jalr	-452(ra) # 8000121c <copy_and_swap>
    800053e8:	00050863          	beqz	a0,800053f8 <_Z9getStringPci+0x50>
    800053ec:	ffffc097          	auipc	ra,0xffffc
    800053f0:	fec080e7          	jalr	-20(ra) # 800013d8 <_Z15thread_dispatchv>
    800053f4:	fddff06f          	j	800053d0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800053f8:	00000913          	li	s2,0
    800053fc:	00090493          	mv	s1,s2
    80005400:	0019091b          	addiw	s2,s2,1
    80005404:	03495a63          	bge	s2,s4,80005438 <_Z9getStringPci+0x90>
        cc = getc();
    80005408:	ffffc097          	auipc	ra,0xffffc
    8000540c:	0d8080e7          	jalr	216(ra) # 800014e0 <_Z4getcv>
        if(cc < 1)
    80005410:	02050463          	beqz	a0,80005438 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005414:	009984b3          	add	s1,s3,s1
    80005418:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000541c:	00a00793          	li	a5,10
    80005420:	00f50a63          	beq	a0,a5,80005434 <_Z9getStringPci+0x8c>
    80005424:	00d00793          	li	a5,13
    80005428:	fcf51ae3          	bne	a0,a5,800053fc <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000542c:	00090493          	mv	s1,s2
    80005430:	0080006f          	j	80005438 <_Z9getStringPci+0x90>
    80005434:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005438:	009984b3          	add	s1,s3,s1
    8000543c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005440:	00000613          	li	a2,0
    80005444:	00100593          	li	a1,1
    80005448:	00006517          	auipc	a0,0x6
    8000544c:	23850513          	addi	a0,a0,568 # 8000b680 <lockPrint>
    80005450:	ffffc097          	auipc	ra,0xffffc
    80005454:	dcc080e7          	jalr	-564(ra) # 8000121c <copy_and_swap>
    80005458:	fe0514e3          	bnez	a0,80005440 <_Z9getStringPci+0x98>
    return buf;
}
    8000545c:	00098513          	mv	a0,s3
    80005460:	02813083          	ld	ra,40(sp)
    80005464:	02013403          	ld	s0,32(sp)
    80005468:	01813483          	ld	s1,24(sp)
    8000546c:	01013903          	ld	s2,16(sp)
    80005470:	00813983          	ld	s3,8(sp)
    80005474:	00013a03          	ld	s4,0(sp)
    80005478:	03010113          	addi	sp,sp,48
    8000547c:	00008067          	ret

0000000080005480 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005480:	ff010113          	addi	sp,sp,-16
    80005484:	00813423          	sd	s0,8(sp)
    80005488:	01010413          	addi	s0,sp,16
    8000548c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005490:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005494:	0006c603          	lbu	a2,0(a3)
    80005498:	fd06071b          	addiw	a4,a2,-48
    8000549c:	0ff77713          	andi	a4,a4,255
    800054a0:	00900793          	li	a5,9
    800054a4:	02e7e063          	bltu	a5,a4,800054c4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800054a8:	0025179b          	slliw	a5,a0,0x2
    800054ac:	00a787bb          	addw	a5,a5,a0
    800054b0:	0017979b          	slliw	a5,a5,0x1
    800054b4:	00168693          	addi	a3,a3,1
    800054b8:	00c787bb          	addw	a5,a5,a2
    800054bc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800054c0:	fd5ff06f          	j	80005494 <_Z11stringToIntPKc+0x14>
    return n;
}
    800054c4:	00813403          	ld	s0,8(sp)
    800054c8:	01010113          	addi	sp,sp,16
    800054cc:	00008067          	ret

00000000800054d0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800054d0:	fc010113          	addi	sp,sp,-64
    800054d4:	02113c23          	sd	ra,56(sp)
    800054d8:	02813823          	sd	s0,48(sp)
    800054dc:	02913423          	sd	s1,40(sp)
    800054e0:	03213023          	sd	s2,32(sp)
    800054e4:	01313c23          	sd	s3,24(sp)
    800054e8:	04010413          	addi	s0,sp,64
    800054ec:	00050493          	mv	s1,a0
    800054f0:	00058913          	mv	s2,a1
    800054f4:	00060993          	mv	s3,a2
    LOCK();
    800054f8:	00100613          	li	a2,1
    800054fc:	00000593          	li	a1,0
    80005500:	00006517          	auipc	a0,0x6
    80005504:	18050513          	addi	a0,a0,384 # 8000b680 <lockPrint>
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	d14080e7          	jalr	-748(ra) # 8000121c <copy_and_swap>
    80005510:	00050863          	beqz	a0,80005520 <_Z8printIntiii+0x50>
    80005514:	ffffc097          	auipc	ra,0xffffc
    80005518:	ec4080e7          	jalr	-316(ra) # 800013d8 <_Z15thread_dispatchv>
    8000551c:	fddff06f          	j	800054f8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005520:	00098463          	beqz	s3,80005528 <_Z8printIntiii+0x58>
    80005524:	0804c463          	bltz	s1,800055ac <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005528:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000552c:	00000593          	li	a1,0
    }

    i = 0;
    80005530:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005534:	0009079b          	sext.w	a5,s2
    80005538:	0325773b          	remuw	a4,a0,s2
    8000553c:	00048613          	mv	a2,s1
    80005540:	0014849b          	addiw	s1,s1,1
    80005544:	02071693          	slli	a3,a4,0x20
    80005548:	0206d693          	srli	a3,a3,0x20
    8000554c:	00006717          	auipc	a4,0x6
    80005550:	01470713          	addi	a4,a4,20 # 8000b560 <digits>
    80005554:	00d70733          	add	a4,a4,a3
    80005558:	00074683          	lbu	a3,0(a4)
    8000555c:	fd040713          	addi	a4,s0,-48
    80005560:	00c70733          	add	a4,a4,a2
    80005564:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005568:	0005071b          	sext.w	a4,a0
    8000556c:	0325553b          	divuw	a0,a0,s2
    80005570:	fcf772e3          	bgeu	a4,a5,80005534 <_Z8printIntiii+0x64>
    if(neg)
    80005574:	00058c63          	beqz	a1,8000558c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005578:	fd040793          	addi	a5,s0,-48
    8000557c:	009784b3          	add	s1,a5,s1
    80005580:	02d00793          	li	a5,45
    80005584:	fef48823          	sb	a5,-16(s1)
    80005588:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000558c:	fff4849b          	addiw	s1,s1,-1
    80005590:	0204c463          	bltz	s1,800055b8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005594:	fd040793          	addi	a5,s0,-48
    80005598:	009787b3          	add	a5,a5,s1
    8000559c:	ff07c503          	lbu	a0,-16(a5)
    800055a0:	ffffc097          	auipc	ra,0xffffc
    800055a4:	f68080e7          	jalr	-152(ra) # 80001508 <_Z4putcc>
    800055a8:	fe5ff06f          	j	8000558c <_Z8printIntiii+0xbc>
        x = -xx;
    800055ac:	4090053b          	negw	a0,s1
        neg = 1;
    800055b0:	00100593          	li	a1,1
        x = -xx;
    800055b4:	f7dff06f          	j	80005530 <_Z8printIntiii+0x60>

    UNLOCK();
    800055b8:	00000613          	li	a2,0
    800055bc:	00100593          	li	a1,1
    800055c0:	00006517          	auipc	a0,0x6
    800055c4:	0c050513          	addi	a0,a0,192 # 8000b680 <lockPrint>
    800055c8:	ffffc097          	auipc	ra,0xffffc
    800055cc:	c54080e7          	jalr	-940(ra) # 8000121c <copy_and_swap>
    800055d0:	fe0514e3          	bnez	a0,800055b8 <_Z8printIntiii+0xe8>
    800055d4:	03813083          	ld	ra,56(sp)
    800055d8:	03013403          	ld	s0,48(sp)
    800055dc:	02813483          	ld	s1,40(sp)
    800055e0:	02013903          	ld	s2,32(sp)
    800055e4:	01813983          	ld	s3,24(sp)
    800055e8:	04010113          	addi	sp,sp,64
    800055ec:	00008067          	ret

00000000800055f0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800055f0:	fd010113          	addi	sp,sp,-48
    800055f4:	02113423          	sd	ra,40(sp)
    800055f8:	02813023          	sd	s0,32(sp)
    800055fc:	00913c23          	sd	s1,24(sp)
    80005600:	01213823          	sd	s2,16(sp)
    80005604:	01313423          	sd	s3,8(sp)
    80005608:	03010413          	addi	s0,sp,48
    8000560c:	00050493          	mv	s1,a0
    80005610:	00058913          	mv	s2,a1
    80005614:	0015879b          	addiw	a5,a1,1
    80005618:	0007851b          	sext.w	a0,a5
    8000561c:	00f4a023          	sw	a5,0(s1)
    80005620:	0004a823          	sw	zero,16(s1)
    80005624:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005628:	00251513          	slli	a0,a0,0x2
    8000562c:	ffffc097          	auipc	ra,0xffffc
    80005630:	c10080e7          	jalr	-1008(ra) # 8000123c <_Z9mem_allocm>
    80005634:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005638:	01000513          	li	a0,16
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	96c080e7          	jalr	-1684(ra) # 80001fa8 <_Znwm>
    80005644:	00050993          	mv	s3,a0
    80005648:	00000593          	li	a1,0
    8000564c:	ffffd097          	auipc	ra,0xffffd
    80005650:	dac080e7          	jalr	-596(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    80005654:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005658:	01000513          	li	a0,16
    8000565c:	ffffd097          	auipc	ra,0xffffd
    80005660:	94c080e7          	jalr	-1716(ra) # 80001fa8 <_Znwm>
    80005664:	00050993          	mv	s3,a0
    80005668:	00090593          	mv	a1,s2
    8000566c:	ffffd097          	auipc	ra,0xffffd
    80005670:	d8c080e7          	jalr	-628(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    80005674:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005678:	01000513          	li	a0,16
    8000567c:	ffffd097          	auipc	ra,0xffffd
    80005680:	92c080e7          	jalr	-1748(ra) # 80001fa8 <_Znwm>
    80005684:	00050913          	mv	s2,a0
    80005688:	00100593          	li	a1,1
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	d6c080e7          	jalr	-660(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    80005694:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005698:	01000513          	li	a0,16
    8000569c:	ffffd097          	auipc	ra,0xffffd
    800056a0:	90c080e7          	jalr	-1780(ra) # 80001fa8 <_Znwm>
    800056a4:	00050913          	mv	s2,a0
    800056a8:	00100593          	li	a1,1
    800056ac:	ffffd097          	auipc	ra,0xffffd
    800056b0:	d4c080e7          	jalr	-692(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    800056b4:	0324b823          	sd	s2,48(s1)
}
    800056b8:	02813083          	ld	ra,40(sp)
    800056bc:	02013403          	ld	s0,32(sp)
    800056c0:	01813483          	ld	s1,24(sp)
    800056c4:	01013903          	ld	s2,16(sp)
    800056c8:	00813983          	ld	s3,8(sp)
    800056cc:	03010113          	addi	sp,sp,48
    800056d0:	00008067          	ret
    800056d4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800056d8:	00098513          	mv	a0,s3
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	9cc080e7          	jalr	-1588(ra) # 800020a8 <_ZdlPv>
    800056e4:	00048513          	mv	a0,s1
    800056e8:	00007097          	auipc	ra,0x7
    800056ec:	070080e7          	jalr	112(ra) # 8000c758 <_Unwind_Resume>
    800056f0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800056f4:	00098513          	mv	a0,s3
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	9b0080e7          	jalr	-1616(ra) # 800020a8 <_ZdlPv>
    80005700:	00048513          	mv	a0,s1
    80005704:	00007097          	auipc	ra,0x7
    80005708:	054080e7          	jalr	84(ra) # 8000c758 <_Unwind_Resume>
    8000570c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005710:	00090513          	mv	a0,s2
    80005714:	ffffd097          	auipc	ra,0xffffd
    80005718:	994080e7          	jalr	-1644(ra) # 800020a8 <_ZdlPv>
    8000571c:	00048513          	mv	a0,s1
    80005720:	00007097          	auipc	ra,0x7
    80005724:	038080e7          	jalr	56(ra) # 8000c758 <_Unwind_Resume>
    80005728:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000572c:	00090513          	mv	a0,s2
    80005730:	ffffd097          	auipc	ra,0xffffd
    80005734:	978080e7          	jalr	-1672(ra) # 800020a8 <_ZdlPv>
    80005738:	00048513          	mv	a0,s1
    8000573c:	00007097          	auipc	ra,0x7
    80005740:	01c080e7          	jalr	28(ra) # 8000c758 <_Unwind_Resume>

0000000080005744 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005744:	fe010113          	addi	sp,sp,-32
    80005748:	00113c23          	sd	ra,24(sp)
    8000574c:	00813823          	sd	s0,16(sp)
    80005750:	00913423          	sd	s1,8(sp)
    80005754:	01213023          	sd	s2,0(sp)
    80005758:	02010413          	addi	s0,sp,32
    8000575c:	00050493          	mv	s1,a0
    80005760:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005764:	01853503          	ld	a0,24(a0)
    80005768:	ffffd097          	auipc	ra,0xffffd
    8000576c:	cc8080e7          	jalr	-824(ra) # 80002430 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005770:	0304b503          	ld	a0,48(s1)
    80005774:	ffffd097          	auipc	ra,0xffffd
    80005778:	cbc080e7          	jalr	-836(ra) # 80002430 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000577c:	0084b783          	ld	a5,8(s1)
    80005780:	0144a703          	lw	a4,20(s1)
    80005784:	00271713          	slli	a4,a4,0x2
    80005788:	00e787b3          	add	a5,a5,a4
    8000578c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005790:	0144a783          	lw	a5,20(s1)
    80005794:	0017879b          	addiw	a5,a5,1
    80005798:	0004a703          	lw	a4,0(s1)
    8000579c:	02e7e7bb          	remw	a5,a5,a4
    800057a0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800057a4:	0304b503          	ld	a0,48(s1)
    800057a8:	ffffd097          	auipc	ra,0xffffd
    800057ac:	cb4080e7          	jalr	-844(ra) # 8000245c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800057b0:	0204b503          	ld	a0,32(s1)
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	ca8080e7          	jalr	-856(ra) # 8000245c <_ZN9Semaphore6signalEv>

}
    800057bc:	01813083          	ld	ra,24(sp)
    800057c0:	01013403          	ld	s0,16(sp)
    800057c4:	00813483          	ld	s1,8(sp)
    800057c8:	00013903          	ld	s2,0(sp)
    800057cc:	02010113          	addi	sp,sp,32
    800057d0:	00008067          	ret

00000000800057d4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800057d4:	fe010113          	addi	sp,sp,-32
    800057d8:	00113c23          	sd	ra,24(sp)
    800057dc:	00813823          	sd	s0,16(sp)
    800057e0:	00913423          	sd	s1,8(sp)
    800057e4:	01213023          	sd	s2,0(sp)
    800057e8:	02010413          	addi	s0,sp,32
    800057ec:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800057f0:	02053503          	ld	a0,32(a0)
    800057f4:	ffffd097          	auipc	ra,0xffffd
    800057f8:	c3c080e7          	jalr	-964(ra) # 80002430 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800057fc:	0284b503          	ld	a0,40(s1)
    80005800:	ffffd097          	auipc	ra,0xffffd
    80005804:	c30080e7          	jalr	-976(ra) # 80002430 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005808:	0084b703          	ld	a4,8(s1)
    8000580c:	0104a783          	lw	a5,16(s1)
    80005810:	00279693          	slli	a3,a5,0x2
    80005814:	00d70733          	add	a4,a4,a3
    80005818:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000581c:	0017879b          	addiw	a5,a5,1
    80005820:	0004a703          	lw	a4,0(s1)
    80005824:	02e7e7bb          	remw	a5,a5,a4
    80005828:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000582c:	0284b503          	ld	a0,40(s1)
    80005830:	ffffd097          	auipc	ra,0xffffd
    80005834:	c2c080e7          	jalr	-980(ra) # 8000245c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005838:	0184b503          	ld	a0,24(s1)
    8000583c:	ffffd097          	auipc	ra,0xffffd
    80005840:	c20080e7          	jalr	-992(ra) # 8000245c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005844:	00090513          	mv	a0,s2
    80005848:	01813083          	ld	ra,24(sp)
    8000584c:	01013403          	ld	s0,16(sp)
    80005850:	00813483          	ld	s1,8(sp)
    80005854:	00013903          	ld	s2,0(sp)
    80005858:	02010113          	addi	sp,sp,32
    8000585c:	00008067          	ret

0000000080005860 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005860:	fe010113          	addi	sp,sp,-32
    80005864:	00113c23          	sd	ra,24(sp)
    80005868:	00813823          	sd	s0,16(sp)
    8000586c:	00913423          	sd	s1,8(sp)
    80005870:	01213023          	sd	s2,0(sp)
    80005874:	02010413          	addi	s0,sp,32
    80005878:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000587c:	02853503          	ld	a0,40(a0)
    80005880:	ffffd097          	auipc	ra,0xffffd
    80005884:	bb0080e7          	jalr	-1104(ra) # 80002430 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005888:	0304b503          	ld	a0,48(s1)
    8000588c:	ffffd097          	auipc	ra,0xffffd
    80005890:	ba4080e7          	jalr	-1116(ra) # 80002430 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005894:	0144a783          	lw	a5,20(s1)
    80005898:	0104a903          	lw	s2,16(s1)
    8000589c:	0327ce63          	blt	a5,s2,800058d8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800058a0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800058a4:	0304b503          	ld	a0,48(s1)
    800058a8:	ffffd097          	auipc	ra,0xffffd
    800058ac:	bb4080e7          	jalr	-1100(ra) # 8000245c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800058b0:	0284b503          	ld	a0,40(s1)
    800058b4:	ffffd097          	auipc	ra,0xffffd
    800058b8:	ba8080e7          	jalr	-1112(ra) # 8000245c <_ZN9Semaphore6signalEv>

    return ret;
}
    800058bc:	00090513          	mv	a0,s2
    800058c0:	01813083          	ld	ra,24(sp)
    800058c4:	01013403          	ld	s0,16(sp)
    800058c8:	00813483          	ld	s1,8(sp)
    800058cc:	00013903          	ld	s2,0(sp)
    800058d0:	02010113          	addi	sp,sp,32
    800058d4:	00008067          	ret
        ret = cap - head + tail;
    800058d8:	0004a703          	lw	a4,0(s1)
    800058dc:	4127093b          	subw	s2,a4,s2
    800058e0:	00f9093b          	addw	s2,s2,a5
    800058e4:	fc1ff06f          	j	800058a4 <_ZN9BufferCPP6getCntEv+0x44>

00000000800058e8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800058e8:	fe010113          	addi	sp,sp,-32
    800058ec:	00113c23          	sd	ra,24(sp)
    800058f0:	00813823          	sd	s0,16(sp)
    800058f4:	00913423          	sd	s1,8(sp)
    800058f8:	02010413          	addi	s0,sp,32
    800058fc:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005900:	00a00513          	li	a0,10
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	b84080e7          	jalr	-1148(ra) # 80002488 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000590c:	00004517          	auipc	a0,0x4
    80005910:	a9450513          	addi	a0,a0,-1388 # 800093a0 <CONSOLE_STATUS+0x390>
    80005914:	00000097          	auipc	ra,0x0
    80005918:	a0c080e7          	jalr	-1524(ra) # 80005320 <_Z11printStringPKc>
    while (getCnt()) {
    8000591c:	00048513          	mv	a0,s1
    80005920:	00000097          	auipc	ra,0x0
    80005924:	f40080e7          	jalr	-192(ra) # 80005860 <_ZN9BufferCPP6getCntEv>
    80005928:	02050c63          	beqz	a0,80005960 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000592c:	0084b783          	ld	a5,8(s1)
    80005930:	0104a703          	lw	a4,16(s1)
    80005934:	00271713          	slli	a4,a4,0x2
    80005938:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000593c:	0007c503          	lbu	a0,0(a5)
    80005940:	ffffd097          	auipc	ra,0xffffd
    80005944:	b48080e7          	jalr	-1208(ra) # 80002488 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005948:	0104a783          	lw	a5,16(s1)
    8000594c:	0017879b          	addiw	a5,a5,1
    80005950:	0004a703          	lw	a4,0(s1)
    80005954:	02e7e7bb          	remw	a5,a5,a4
    80005958:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000595c:	fc1ff06f          	j	8000591c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005960:	02100513          	li	a0,33
    80005964:	ffffd097          	auipc	ra,0xffffd
    80005968:	b24080e7          	jalr	-1244(ra) # 80002488 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000596c:	00a00513          	li	a0,10
    80005970:	ffffd097          	auipc	ra,0xffffd
    80005974:	b18080e7          	jalr	-1256(ra) # 80002488 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005978:	0084b503          	ld	a0,8(s1)
    8000597c:	ffffc097          	auipc	ra,0xffffc
    80005980:	8fc080e7          	jalr	-1796(ra) # 80001278 <_Z8mem_freePv>
    delete itemAvailable;
    80005984:	0204b503          	ld	a0,32(s1)
    80005988:	00050863          	beqz	a0,80005998 <_ZN9BufferCPPD1Ev+0xb0>
    8000598c:	00053783          	ld	a5,0(a0)
    80005990:	0087b783          	ld	a5,8(a5)
    80005994:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005998:	0184b503          	ld	a0,24(s1)
    8000599c:	00050863          	beqz	a0,800059ac <_ZN9BufferCPPD1Ev+0xc4>
    800059a0:	00053783          	ld	a5,0(a0)
    800059a4:	0087b783          	ld	a5,8(a5)
    800059a8:	000780e7          	jalr	a5
    delete mutexTail;
    800059ac:	0304b503          	ld	a0,48(s1)
    800059b0:	00050863          	beqz	a0,800059c0 <_ZN9BufferCPPD1Ev+0xd8>
    800059b4:	00053783          	ld	a5,0(a0)
    800059b8:	0087b783          	ld	a5,8(a5)
    800059bc:	000780e7          	jalr	a5
    delete mutexHead;
    800059c0:	0284b503          	ld	a0,40(s1)
    800059c4:	00050863          	beqz	a0,800059d4 <_ZN9BufferCPPD1Ev+0xec>
    800059c8:	00053783          	ld	a5,0(a0)
    800059cc:	0087b783          	ld	a5,8(a5)
    800059d0:	000780e7          	jalr	a5
}
    800059d4:	01813083          	ld	ra,24(sp)
    800059d8:	01013403          	ld	s0,16(sp)
    800059dc:	00813483          	ld	s1,8(sp)
    800059e0:	02010113          	addi	sp,sp,32
    800059e4:	00008067          	ret

00000000800059e8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800059e8:	fe010113          	addi	sp,sp,-32
    800059ec:	00113c23          	sd	ra,24(sp)
    800059f0:	00813823          	sd	s0,16(sp)
    800059f4:	00913423          	sd	s1,8(sp)
    800059f8:	01213023          	sd	s2,0(sp)
    800059fc:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	9b850513          	addi	a0,a0,-1608 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	918080e7          	jalr	-1768(ra) # 80005320 <_Z11printStringPKc>
    int test = getc() - '0';
    80005a10:	ffffc097          	auipc	ra,0xffffc
    80005a14:	ad0080e7          	jalr	-1328(ra) # 800014e0 <_Z4getcv>
    80005a18:	00050913          	mv	s2,a0
    80005a1c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	ac0080e7          	jalr	-1344(ra) # 800014e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005a28:	fcb9091b          	addiw	s2,s2,-53
    80005a2c:	00100793          	li	a5,1
    80005a30:	0327f463          	bgeu	a5,s2,80005a58 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005a34:	00700793          	li	a5,7
    80005a38:	0e97e263          	bltu	a5,s1,80005b1c <_Z8userMainv+0x134>
    80005a3c:	00249493          	slli	s1,s1,0x2
    80005a40:	00004717          	auipc	a4,0x4
    80005a44:	b9070713          	addi	a4,a4,-1136 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005a48:	00e484b3          	add	s1,s1,a4
    80005a4c:	0004a783          	lw	a5,0(s1)
    80005a50:	00e787b3          	add	a5,a5,a4
    80005a54:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005a58:	00004517          	auipc	a0,0x4
    80005a5c:	98050513          	addi	a0,a0,-1664 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005a60:	00000097          	auipc	ra,0x0
    80005a64:	8c0080e7          	jalr	-1856(ra) # 80005320 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005a68:	01813083          	ld	ra,24(sp)
    80005a6c:	01013403          	ld	s0,16(sp)
    80005a70:	00813483          	ld	s1,8(sp)
    80005a74:	00013903          	ld	s2,0(sp)
    80005a78:	02010113          	addi	sp,sp,32
    80005a7c:	00008067          	ret
            Threads_C_API_test();
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	f18080e7          	jalr	-232(ra) # 80004998 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005a88:	00004517          	auipc	a0,0x4
    80005a8c:	98050513          	addi	a0,a0,-1664 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005a90:	00000097          	auipc	ra,0x0
    80005a94:	890080e7          	jalr	-1904(ra) # 80005320 <_Z11printStringPKc>
            break;
    80005a98:	fd1ff06f          	j	80005a68 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005a9c:	ffffe097          	auipc	ra,0xffffe
    80005aa0:	ddc080e7          	jalr	-548(ra) # 80003878 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005aa4:	00004517          	auipc	a0,0x4
    80005aa8:	9a450513          	addi	a0,a0,-1628 # 80009448 <CONSOLE_STATUS+0x438>
    80005aac:	00000097          	auipc	ra,0x0
    80005ab0:	874080e7          	jalr	-1932(ra) # 80005320 <_Z11printStringPKc>
            break;
    80005ab4:	fb5ff06f          	j	80005a68 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005ab8:	ffffd097          	auipc	ra,0xffffd
    80005abc:	614080e7          	jalr	1556(ra) # 800030cc <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005ac0:	00004517          	auipc	a0,0x4
    80005ac4:	9c850513          	addi	a0,a0,-1592 # 80009488 <CONSOLE_STATUS+0x478>
    80005ac8:	00000097          	auipc	ra,0x0
    80005acc:	858080e7          	jalr	-1960(ra) # 80005320 <_Z11printStringPKc>
            break;
    80005ad0:	f99ff06f          	j	80005a68 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005ad4:	fffff097          	auipc	ra,0xfffff
    80005ad8:	208080e7          	jalr	520(ra) # 80004cdc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005adc:	00004517          	auipc	a0,0x4
    80005ae0:	9fc50513          	addi	a0,a0,-1540 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005ae4:	00000097          	auipc	ra,0x0
    80005ae8:	83c080e7          	jalr	-1988(ra) # 80005320 <_Z11printStringPKc>
            break;
    80005aec:	f7dff06f          	j	80005a68 <_Z8userMainv+0x80>
            System_Mode_test();
    80005af0:	00000097          	auipc	ra,0x0
    80005af4:	658080e7          	jalr	1624(ra) # 80006148 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005af8:	00004517          	auipc	a0,0x4
    80005afc:	a3850513          	addi	a0,a0,-1480 # 80009530 <CONSOLE_STATUS+0x520>
    80005b00:	00000097          	auipc	ra,0x0
    80005b04:	820080e7          	jalr	-2016(ra) # 80005320 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005b08:	00004517          	auipc	a0,0x4
    80005b0c:	a4850513          	addi	a0,a0,-1464 # 80009550 <CONSOLE_STATUS+0x540>
    80005b10:	00000097          	auipc	ra,0x0
    80005b14:	810080e7          	jalr	-2032(ra) # 80005320 <_Z11printStringPKc>
            break;
    80005b18:	f51ff06f          	j	80005a68 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005b1c:	00004517          	auipc	a0,0x4
    80005b20:	a8c50513          	addi	a0,a0,-1396 # 800095a8 <CONSOLE_STATUS+0x598>
    80005b24:	fffff097          	auipc	ra,0xfffff
    80005b28:	7fc080e7          	jalr	2044(ra) # 80005320 <_Z11printStringPKc>
    80005b2c:	f3dff06f          	j	80005a68 <_Z8userMainv+0x80>

0000000080005b30 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005b30:	fe010113          	addi	sp,sp,-32
    80005b34:	00113c23          	sd	ra,24(sp)
    80005b38:	00813823          	sd	s0,16(sp)
    80005b3c:	00913423          	sd	s1,8(sp)
    80005b40:	01213023          	sd	s2,0(sp)
    80005b44:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005b48:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005b4c:	00600493          	li	s1,6
    while (--i > 0) {
    80005b50:	fff4849b          	addiw	s1,s1,-1
    80005b54:	04905463          	blez	s1,80005b9c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005b58:	00004517          	auipc	a0,0x4
    80005b5c:	a9850513          	addi	a0,a0,-1384 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005b60:	fffff097          	auipc	ra,0xfffff
    80005b64:	7c0080e7          	jalr	1984(ra) # 80005320 <_Z11printStringPKc>
        printInt(sleep_time);
    80005b68:	00000613          	li	a2,0
    80005b6c:	00a00593          	li	a1,10
    80005b70:	0009051b          	sext.w	a0,s2
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	95c080e7          	jalr	-1700(ra) # 800054d0 <_Z8printIntiii>
        printString(" !\n");
    80005b7c:	00004517          	auipc	a0,0x4
    80005b80:	a7c50513          	addi	a0,a0,-1412 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005b84:	fffff097          	auipc	ra,0xfffff
    80005b88:	79c080e7          	jalr	1948(ra) # 80005320 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005b8c:	00090513          	mv	a0,s2
    80005b90:	ffffc097          	auipc	ra,0xffffc
    80005b94:	924080e7          	jalr	-1756(ra) # 800014b4 <_Z10time_sleepm>
    while (--i > 0) {
    80005b98:	fb9ff06f          	j	80005b50 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005b9c:	00a00793          	li	a5,10
    80005ba0:	02f95933          	divu	s2,s2,a5
    80005ba4:	fff90913          	addi	s2,s2,-1
    80005ba8:	00006797          	auipc	a5,0x6
    80005bac:	ae078793          	addi	a5,a5,-1312 # 8000b688 <_ZL8finished>
    80005bb0:	01278933          	add	s2,a5,s2
    80005bb4:	00100793          	li	a5,1
    80005bb8:	00f90023          	sb	a5,0(s2)
}
    80005bbc:	01813083          	ld	ra,24(sp)
    80005bc0:	01013403          	ld	s0,16(sp)
    80005bc4:	00813483          	ld	s1,8(sp)
    80005bc8:	00013903          	ld	s2,0(sp)
    80005bcc:	02010113          	addi	sp,sp,32
    80005bd0:	00008067          	ret

0000000080005bd4 <_Z12testSleepingv>:

void testSleeping() {
    80005bd4:	fc010113          	addi	sp,sp,-64
    80005bd8:	02113c23          	sd	ra,56(sp)
    80005bdc:	02813823          	sd	s0,48(sp)
    80005be0:	02913423          	sd	s1,40(sp)
    80005be4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005be8:	00a00793          	li	a5,10
    80005bec:	fcf43823          	sd	a5,-48(s0)
    80005bf0:	01400793          	li	a5,20
    80005bf4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005bf8:	00000493          	li	s1,0
    80005bfc:	02c0006f          	j	80005c28 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005c00:	00349793          	slli	a5,s1,0x3
    80005c04:	fd040613          	addi	a2,s0,-48
    80005c08:	00f60633          	add	a2,a2,a5
    80005c0c:	00000597          	auipc	a1,0x0
    80005c10:	f2458593          	addi	a1,a1,-220 # 80005b30 <_ZL9sleepyRunPv>
    80005c14:	fc040513          	addi	a0,s0,-64
    80005c18:	00f50533          	add	a0,a0,a5
    80005c1c:	ffffb097          	auipc	ra,0xffffb
    80005c20:	6d0080e7          	jalr	1744(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c24:	0014849b          	addiw	s1,s1,1
    80005c28:	00100793          	li	a5,1
    80005c2c:	fc97dae3          	bge	a5,s1,80005c00 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005c30:	00006797          	auipc	a5,0x6
    80005c34:	a587c783          	lbu	a5,-1448(a5) # 8000b688 <_ZL8finished>
    80005c38:	fe078ce3          	beqz	a5,80005c30 <_Z12testSleepingv+0x5c>
    80005c3c:	00006797          	auipc	a5,0x6
    80005c40:	a4d7c783          	lbu	a5,-1459(a5) # 8000b689 <_ZL8finished+0x1>
    80005c44:	fe0786e3          	beqz	a5,80005c30 <_Z12testSleepingv+0x5c>
}
    80005c48:	03813083          	ld	ra,56(sp)
    80005c4c:	03013403          	ld	s0,48(sp)
    80005c50:	02813483          	ld	s1,40(sp)
    80005c54:	04010113          	addi	sp,sp,64
    80005c58:	00008067          	ret

0000000080005c5c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005c5c:	fe010113          	addi	sp,sp,-32
    80005c60:	00113c23          	sd	ra,24(sp)
    80005c64:	00813823          	sd	s0,16(sp)
    80005c68:	00913423          	sd	s1,8(sp)
    80005c6c:	01213023          	sd	s2,0(sp)
    80005c70:	02010413          	addi	s0,sp,32
    80005c74:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005c78:	00100793          	li	a5,1
    80005c7c:	02a7f863          	bgeu	a5,a0,80005cac <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005c80:	00a00793          	li	a5,10
    80005c84:	02f577b3          	remu	a5,a0,a5
    80005c88:	02078e63          	beqz	a5,80005cc4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005c8c:	fff48513          	addi	a0,s1,-1
    80005c90:	00000097          	auipc	ra,0x0
    80005c94:	fcc080e7          	jalr	-52(ra) # 80005c5c <_ZL9fibonaccim>
    80005c98:	00050913          	mv	s2,a0
    80005c9c:	ffe48513          	addi	a0,s1,-2
    80005ca0:	00000097          	auipc	ra,0x0
    80005ca4:	fbc080e7          	jalr	-68(ra) # 80005c5c <_ZL9fibonaccim>
    80005ca8:	00a90533          	add	a0,s2,a0
}
    80005cac:	01813083          	ld	ra,24(sp)
    80005cb0:	01013403          	ld	s0,16(sp)
    80005cb4:	00813483          	ld	s1,8(sp)
    80005cb8:	00013903          	ld	s2,0(sp)
    80005cbc:	02010113          	addi	sp,sp,32
    80005cc0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005cc4:	ffffb097          	auipc	ra,0xffffb
    80005cc8:	714080e7          	jalr	1812(ra) # 800013d8 <_Z15thread_dispatchv>
    80005ccc:	fc1ff06f          	j	80005c8c <_ZL9fibonaccim+0x30>

0000000080005cd0 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005cd0:	fe010113          	addi	sp,sp,-32
    80005cd4:	00113c23          	sd	ra,24(sp)
    80005cd8:	00813823          	sd	s0,16(sp)
    80005cdc:	00913423          	sd	s1,8(sp)
    80005ce0:	01213023          	sd	s2,0(sp)
    80005ce4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005ce8:	00a00493          	li	s1,10
    80005cec:	0400006f          	j	80005d2c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005cf0:	00003517          	auipc	a0,0x3
    80005cf4:	60850513          	addi	a0,a0,1544 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005cf8:	fffff097          	auipc	ra,0xfffff
    80005cfc:	628080e7          	jalr	1576(ra) # 80005320 <_Z11printStringPKc>
    80005d00:	00000613          	li	a2,0
    80005d04:	00a00593          	li	a1,10
    80005d08:	00048513          	mv	a0,s1
    80005d0c:	fffff097          	auipc	ra,0xfffff
    80005d10:	7c4080e7          	jalr	1988(ra) # 800054d0 <_Z8printIntiii>
    80005d14:	00004517          	auipc	a0,0x4
    80005d18:	81450513          	addi	a0,a0,-2028 # 80009528 <CONSOLE_STATUS+0x518>
    80005d1c:	fffff097          	auipc	ra,0xfffff
    80005d20:	604080e7          	jalr	1540(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005d24:	0014849b          	addiw	s1,s1,1
    80005d28:	0ff4f493          	andi	s1,s1,255
    80005d2c:	00c00793          	li	a5,12
    80005d30:	fc97f0e3          	bgeu	a5,s1,80005cf0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005d34:	00003517          	auipc	a0,0x3
    80005d38:	5cc50513          	addi	a0,a0,1484 # 80009300 <CONSOLE_STATUS+0x2f0>
    80005d3c:	fffff097          	auipc	ra,0xfffff
    80005d40:	5e4080e7          	jalr	1508(ra) # 80005320 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005d44:	00500313          	li	t1,5
    thread_dispatch();
    80005d48:	ffffb097          	auipc	ra,0xffffb
    80005d4c:	690080e7          	jalr	1680(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005d50:	01000513          	li	a0,16
    80005d54:	00000097          	auipc	ra,0x0
    80005d58:	f08080e7          	jalr	-248(ra) # 80005c5c <_ZL9fibonaccim>
    80005d5c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005d60:	00003517          	auipc	a0,0x3
    80005d64:	5b050513          	addi	a0,a0,1456 # 80009310 <CONSOLE_STATUS+0x300>
    80005d68:	fffff097          	auipc	ra,0xfffff
    80005d6c:	5b8080e7          	jalr	1464(ra) # 80005320 <_Z11printStringPKc>
    80005d70:	00000613          	li	a2,0
    80005d74:	00a00593          	li	a1,10
    80005d78:	0009051b          	sext.w	a0,s2
    80005d7c:	fffff097          	auipc	ra,0xfffff
    80005d80:	754080e7          	jalr	1876(ra) # 800054d0 <_Z8printIntiii>
    80005d84:	00003517          	auipc	a0,0x3
    80005d88:	7a450513          	addi	a0,a0,1956 # 80009528 <CONSOLE_STATUS+0x518>
    80005d8c:	fffff097          	auipc	ra,0xfffff
    80005d90:	594080e7          	jalr	1428(ra) # 80005320 <_Z11printStringPKc>
    80005d94:	0400006f          	j	80005dd4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005d98:	00003517          	auipc	a0,0x3
    80005d9c:	56050513          	addi	a0,a0,1376 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005da0:	fffff097          	auipc	ra,0xfffff
    80005da4:	580080e7          	jalr	1408(ra) # 80005320 <_Z11printStringPKc>
    80005da8:	00000613          	li	a2,0
    80005dac:	00a00593          	li	a1,10
    80005db0:	00048513          	mv	a0,s1
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	71c080e7          	jalr	1820(ra) # 800054d0 <_Z8printIntiii>
    80005dbc:	00003517          	auipc	a0,0x3
    80005dc0:	76c50513          	addi	a0,a0,1900 # 80009528 <CONSOLE_STATUS+0x518>
    80005dc4:	fffff097          	auipc	ra,0xfffff
    80005dc8:	55c080e7          	jalr	1372(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005dcc:	0014849b          	addiw	s1,s1,1
    80005dd0:	0ff4f493          	andi	s1,s1,255
    80005dd4:	00f00793          	li	a5,15
    80005dd8:	fc97f0e3          	bgeu	a5,s1,80005d98 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ddc:	00003517          	auipc	a0,0x3
    80005de0:	54450513          	addi	a0,a0,1348 # 80009320 <CONSOLE_STATUS+0x310>
    80005de4:	fffff097          	auipc	ra,0xfffff
    80005de8:	53c080e7          	jalr	1340(ra) # 80005320 <_Z11printStringPKc>
    finishedD = true;
    80005dec:	00100793          	li	a5,1
    80005df0:	00006717          	auipc	a4,0x6
    80005df4:	88f70d23          	sb	a5,-1894(a4) # 8000b68a <_ZL9finishedD>
    thread_dispatch();
    80005df8:	ffffb097          	auipc	ra,0xffffb
    80005dfc:	5e0080e7          	jalr	1504(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80005e00:	01813083          	ld	ra,24(sp)
    80005e04:	01013403          	ld	s0,16(sp)
    80005e08:	00813483          	ld	s1,8(sp)
    80005e0c:	00013903          	ld	s2,0(sp)
    80005e10:	02010113          	addi	sp,sp,32
    80005e14:	00008067          	ret

0000000080005e18 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005e18:	fe010113          	addi	sp,sp,-32
    80005e1c:	00113c23          	sd	ra,24(sp)
    80005e20:	00813823          	sd	s0,16(sp)
    80005e24:	00913423          	sd	s1,8(sp)
    80005e28:	01213023          	sd	s2,0(sp)
    80005e2c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005e30:	00000493          	li	s1,0
    80005e34:	0400006f          	j	80005e74 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005e38:	00003517          	auipc	a0,0x3
    80005e3c:	49050513          	addi	a0,a0,1168 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005e40:	fffff097          	auipc	ra,0xfffff
    80005e44:	4e0080e7          	jalr	1248(ra) # 80005320 <_Z11printStringPKc>
    80005e48:	00000613          	li	a2,0
    80005e4c:	00a00593          	li	a1,10
    80005e50:	00048513          	mv	a0,s1
    80005e54:	fffff097          	auipc	ra,0xfffff
    80005e58:	67c080e7          	jalr	1660(ra) # 800054d0 <_Z8printIntiii>
    80005e5c:	00003517          	auipc	a0,0x3
    80005e60:	6cc50513          	addi	a0,a0,1740 # 80009528 <CONSOLE_STATUS+0x518>
    80005e64:	fffff097          	auipc	ra,0xfffff
    80005e68:	4bc080e7          	jalr	1212(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005e6c:	0014849b          	addiw	s1,s1,1
    80005e70:	0ff4f493          	andi	s1,s1,255
    80005e74:	00200793          	li	a5,2
    80005e78:	fc97f0e3          	bgeu	a5,s1,80005e38 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005e7c:	00003517          	auipc	a0,0x3
    80005e80:	45450513          	addi	a0,a0,1108 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80005e84:	fffff097          	auipc	ra,0xfffff
    80005e88:	49c080e7          	jalr	1180(ra) # 80005320 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005e8c:	00700313          	li	t1,7
    thread_dispatch();
    80005e90:	ffffb097          	auipc	ra,0xffffb
    80005e94:	548080e7          	jalr	1352(ra) # 800013d8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005e98:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005e9c:	00003517          	auipc	a0,0x3
    80005ea0:	44450513          	addi	a0,a0,1092 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005ea4:	fffff097          	auipc	ra,0xfffff
    80005ea8:	47c080e7          	jalr	1148(ra) # 80005320 <_Z11printStringPKc>
    80005eac:	00000613          	li	a2,0
    80005eb0:	00a00593          	li	a1,10
    80005eb4:	0009051b          	sext.w	a0,s2
    80005eb8:	fffff097          	auipc	ra,0xfffff
    80005ebc:	618080e7          	jalr	1560(ra) # 800054d0 <_Z8printIntiii>
    80005ec0:	00003517          	auipc	a0,0x3
    80005ec4:	66850513          	addi	a0,a0,1640 # 80009528 <CONSOLE_STATUS+0x518>
    80005ec8:	fffff097          	auipc	ra,0xfffff
    80005ecc:	458080e7          	jalr	1112(ra) # 80005320 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005ed0:	00c00513          	li	a0,12
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	d88080e7          	jalr	-632(ra) # 80005c5c <_ZL9fibonaccim>
    80005edc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005ee0:	00003517          	auipc	a0,0x3
    80005ee4:	40850513          	addi	a0,a0,1032 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005ee8:	fffff097          	auipc	ra,0xfffff
    80005eec:	438080e7          	jalr	1080(ra) # 80005320 <_Z11printStringPKc>
    80005ef0:	00000613          	li	a2,0
    80005ef4:	00a00593          	li	a1,10
    80005ef8:	0009051b          	sext.w	a0,s2
    80005efc:	fffff097          	auipc	ra,0xfffff
    80005f00:	5d4080e7          	jalr	1492(ra) # 800054d0 <_Z8printIntiii>
    80005f04:	00003517          	auipc	a0,0x3
    80005f08:	62450513          	addi	a0,a0,1572 # 80009528 <CONSOLE_STATUS+0x518>
    80005f0c:	fffff097          	auipc	ra,0xfffff
    80005f10:	414080e7          	jalr	1044(ra) # 80005320 <_Z11printStringPKc>
    80005f14:	0400006f          	j	80005f54 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005f18:	00003517          	auipc	a0,0x3
    80005f1c:	3b050513          	addi	a0,a0,944 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005f20:	fffff097          	auipc	ra,0xfffff
    80005f24:	400080e7          	jalr	1024(ra) # 80005320 <_Z11printStringPKc>
    80005f28:	00000613          	li	a2,0
    80005f2c:	00a00593          	li	a1,10
    80005f30:	00048513          	mv	a0,s1
    80005f34:	fffff097          	auipc	ra,0xfffff
    80005f38:	59c080e7          	jalr	1436(ra) # 800054d0 <_Z8printIntiii>
    80005f3c:	00003517          	auipc	a0,0x3
    80005f40:	5ec50513          	addi	a0,a0,1516 # 80009528 <CONSOLE_STATUS+0x518>
    80005f44:	fffff097          	auipc	ra,0xfffff
    80005f48:	3dc080e7          	jalr	988(ra) # 80005320 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005f4c:	0014849b          	addiw	s1,s1,1
    80005f50:	0ff4f493          	andi	s1,s1,255
    80005f54:	00500793          	li	a5,5
    80005f58:	fc97f0e3          	bgeu	a5,s1,80005f18 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005f5c:	00003517          	auipc	a0,0x3
    80005f60:	43450513          	addi	a0,a0,1076 # 80009390 <CONSOLE_STATUS+0x380>
    80005f64:	fffff097          	auipc	ra,0xfffff
    80005f68:	3bc080e7          	jalr	956(ra) # 80005320 <_Z11printStringPKc>
    finishedC = true;
    80005f6c:	00100793          	li	a5,1
    80005f70:	00005717          	auipc	a4,0x5
    80005f74:	70f70da3          	sb	a5,1819(a4) # 8000b68b <_ZL9finishedC>
    thread_dispatch();
    80005f78:	ffffb097          	auipc	ra,0xffffb
    80005f7c:	460080e7          	jalr	1120(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80005f80:	01813083          	ld	ra,24(sp)
    80005f84:	01013403          	ld	s0,16(sp)
    80005f88:	00813483          	ld	s1,8(sp)
    80005f8c:	00013903          	ld	s2,0(sp)
    80005f90:	02010113          	addi	sp,sp,32
    80005f94:	00008067          	ret

0000000080005f98 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005f98:	fe010113          	addi	sp,sp,-32
    80005f9c:	00113c23          	sd	ra,24(sp)
    80005fa0:	00813823          	sd	s0,16(sp)
    80005fa4:	00913423          	sd	s1,8(sp)
    80005fa8:	01213023          	sd	s2,0(sp)
    80005fac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005fb0:	00000913          	li	s2,0
    80005fb4:	0400006f          	j	80005ff4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005fb8:	ffffb097          	auipc	ra,0xffffb
    80005fbc:	420080e7          	jalr	1056(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005fc0:	00148493          	addi	s1,s1,1
    80005fc4:	000027b7          	lui	a5,0x2
    80005fc8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fcc:	0097ee63          	bltu	a5,s1,80005fe8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fd0:	00000713          	li	a4,0
    80005fd4:	000077b7          	lui	a5,0x7
    80005fd8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fdc:	fce7eee3          	bltu	a5,a4,80005fb8 <_ZL11workerBodyBPv+0x20>
    80005fe0:	00170713          	addi	a4,a4,1
    80005fe4:	ff1ff06f          	j	80005fd4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005fe8:	00a00793          	li	a5,10
    80005fec:	04f90663          	beq	s2,a5,80006038 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005ff0:	00190913          	addi	s2,s2,1
    80005ff4:	00f00793          	li	a5,15
    80005ff8:	0527e463          	bltu	a5,s2,80006040 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ffc:	00003517          	auipc	a0,0x3
    80006000:	05450513          	addi	a0,a0,84 # 80009050 <CONSOLE_STATUS+0x40>
    80006004:	fffff097          	auipc	ra,0xfffff
    80006008:	31c080e7          	jalr	796(ra) # 80005320 <_Z11printStringPKc>
    8000600c:	00000613          	li	a2,0
    80006010:	00a00593          	li	a1,10
    80006014:	0009051b          	sext.w	a0,s2
    80006018:	fffff097          	auipc	ra,0xfffff
    8000601c:	4b8080e7          	jalr	1208(ra) # 800054d0 <_Z8printIntiii>
    80006020:	00003517          	auipc	a0,0x3
    80006024:	50850513          	addi	a0,a0,1288 # 80009528 <CONSOLE_STATUS+0x518>
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	2f8080e7          	jalr	760(ra) # 80005320 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006030:	00000493          	li	s1,0
    80006034:	f91ff06f          	j	80005fc4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006038:	14102ff3          	csrr	t6,sepc
    8000603c:	fb5ff06f          	j	80005ff0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006040:	00003517          	auipc	a0,0x3
    80006044:	27850513          	addi	a0,a0,632 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006048:	fffff097          	auipc	ra,0xfffff
    8000604c:	2d8080e7          	jalr	728(ra) # 80005320 <_Z11printStringPKc>
    finishedB = true;
    80006050:	00100793          	li	a5,1
    80006054:	00005717          	auipc	a4,0x5
    80006058:	62f70c23          	sb	a5,1592(a4) # 8000b68c <_ZL9finishedB>
    thread_dispatch();
    8000605c:	ffffb097          	auipc	ra,0xffffb
    80006060:	37c080e7          	jalr	892(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80006064:	01813083          	ld	ra,24(sp)
    80006068:	01013403          	ld	s0,16(sp)
    8000606c:	00813483          	ld	s1,8(sp)
    80006070:	00013903          	ld	s2,0(sp)
    80006074:	02010113          	addi	sp,sp,32
    80006078:	00008067          	ret

000000008000607c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000607c:	fe010113          	addi	sp,sp,-32
    80006080:	00113c23          	sd	ra,24(sp)
    80006084:	00813823          	sd	s0,16(sp)
    80006088:	00913423          	sd	s1,8(sp)
    8000608c:	01213023          	sd	s2,0(sp)
    80006090:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006094:	00000913          	li	s2,0
    80006098:	0380006f          	j	800060d0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000609c:	ffffb097          	auipc	ra,0xffffb
    800060a0:	33c080e7          	jalr	828(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800060a4:	00148493          	addi	s1,s1,1
    800060a8:	000027b7          	lui	a5,0x2
    800060ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060b0:	0097ee63          	bltu	a5,s1,800060cc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060b4:	00000713          	li	a4,0
    800060b8:	000077b7          	lui	a5,0x7
    800060bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060c0:	fce7eee3          	bltu	a5,a4,8000609c <_ZL11workerBodyAPv+0x20>
    800060c4:	00170713          	addi	a4,a4,1
    800060c8:	ff1ff06f          	j	800060b8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800060cc:	00190913          	addi	s2,s2,1
    800060d0:	00900793          	li	a5,9
    800060d4:	0527e063          	bltu	a5,s2,80006114 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800060d8:	00003517          	auipc	a0,0x3
    800060dc:	f4850513          	addi	a0,a0,-184 # 80009020 <CONSOLE_STATUS+0x10>
    800060e0:	fffff097          	auipc	ra,0xfffff
    800060e4:	240080e7          	jalr	576(ra) # 80005320 <_Z11printStringPKc>
    800060e8:	00000613          	li	a2,0
    800060ec:	00a00593          	li	a1,10
    800060f0:	0009051b          	sext.w	a0,s2
    800060f4:	fffff097          	auipc	ra,0xfffff
    800060f8:	3dc080e7          	jalr	988(ra) # 800054d0 <_Z8printIntiii>
    800060fc:	00003517          	auipc	a0,0x3
    80006100:	42c50513          	addi	a0,a0,1068 # 80009528 <CONSOLE_STATUS+0x518>
    80006104:	fffff097          	auipc	ra,0xfffff
    80006108:	21c080e7          	jalr	540(ra) # 80005320 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000610c:	00000493          	li	s1,0
    80006110:	f99ff06f          	j	800060a8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006114:	00003517          	auipc	a0,0x3
    80006118:	19450513          	addi	a0,a0,404 # 800092a8 <CONSOLE_STATUS+0x298>
    8000611c:	fffff097          	auipc	ra,0xfffff
    80006120:	204080e7          	jalr	516(ra) # 80005320 <_Z11printStringPKc>
    finishedA = true;
    80006124:	00100793          	li	a5,1
    80006128:	00005717          	auipc	a4,0x5
    8000612c:	56f702a3          	sb	a5,1381(a4) # 8000b68d <_ZL9finishedA>
}
    80006130:	01813083          	ld	ra,24(sp)
    80006134:	01013403          	ld	s0,16(sp)
    80006138:	00813483          	ld	s1,8(sp)
    8000613c:	00013903          	ld	s2,0(sp)
    80006140:	02010113          	addi	sp,sp,32
    80006144:	00008067          	ret

0000000080006148 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006148:	fd010113          	addi	sp,sp,-48
    8000614c:	02113423          	sd	ra,40(sp)
    80006150:	02813023          	sd	s0,32(sp)
    80006154:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006158:	00000613          	li	a2,0
    8000615c:	00000597          	auipc	a1,0x0
    80006160:	f2058593          	addi	a1,a1,-224 # 8000607c <_ZL11workerBodyAPv>
    80006164:	fd040513          	addi	a0,s0,-48
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	184080e7          	jalr	388(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006170:	00003517          	auipc	a0,0x3
    80006174:	1c050513          	addi	a0,a0,448 # 80009330 <CONSOLE_STATUS+0x320>
    80006178:	fffff097          	auipc	ra,0xfffff
    8000617c:	1a8080e7          	jalr	424(ra) # 80005320 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006180:	00000613          	li	a2,0
    80006184:	00000597          	auipc	a1,0x0
    80006188:	e1458593          	addi	a1,a1,-492 # 80005f98 <_ZL11workerBodyBPv>
    8000618c:	fd840513          	addi	a0,s0,-40
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	15c080e7          	jalr	348(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006198:	00003517          	auipc	a0,0x3
    8000619c:	1b050513          	addi	a0,a0,432 # 80009348 <CONSOLE_STATUS+0x338>
    800061a0:	fffff097          	auipc	ra,0xfffff
    800061a4:	180080e7          	jalr	384(ra) # 80005320 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800061a8:	00000613          	li	a2,0
    800061ac:	00000597          	auipc	a1,0x0
    800061b0:	c6c58593          	addi	a1,a1,-916 # 80005e18 <_ZL11workerBodyCPv>
    800061b4:	fe040513          	addi	a0,s0,-32
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	134080e7          	jalr	308(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	1a050513          	addi	a0,a0,416 # 80009360 <CONSOLE_STATUS+0x350>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	158080e7          	jalr	344(ra) # 80005320 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800061d0:	00000613          	li	a2,0
    800061d4:	00000597          	auipc	a1,0x0
    800061d8:	afc58593          	addi	a1,a1,-1284 # 80005cd0 <_ZL11workerBodyDPv>
    800061dc:	fe840513          	addi	a0,s0,-24
    800061e0:	ffffb097          	auipc	ra,0xffffb
    800061e4:	10c080e7          	jalr	268(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800061e8:	00003517          	auipc	a0,0x3
    800061ec:	19050513          	addi	a0,a0,400 # 80009378 <CONSOLE_STATUS+0x368>
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	130080e7          	jalr	304(ra) # 80005320 <_Z11printStringPKc>
    800061f8:	00c0006f          	j	80006204 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	1dc080e7          	jalr	476(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006204:	00005797          	auipc	a5,0x5
    80006208:	4897c783          	lbu	a5,1161(a5) # 8000b68d <_ZL9finishedA>
    8000620c:	fe0788e3          	beqz	a5,800061fc <_Z16System_Mode_testv+0xb4>
    80006210:	00005797          	auipc	a5,0x5
    80006214:	47c7c783          	lbu	a5,1148(a5) # 8000b68c <_ZL9finishedB>
    80006218:	fe0782e3          	beqz	a5,800061fc <_Z16System_Mode_testv+0xb4>
    8000621c:	00005797          	auipc	a5,0x5
    80006220:	46f7c783          	lbu	a5,1135(a5) # 8000b68b <_ZL9finishedC>
    80006224:	fc078ce3          	beqz	a5,800061fc <_Z16System_Mode_testv+0xb4>
    80006228:	00005797          	auipc	a5,0x5
    8000622c:	4627c783          	lbu	a5,1122(a5) # 8000b68a <_ZL9finishedD>
    80006230:	fc0786e3          	beqz	a5,800061fc <_Z16System_Mode_testv+0xb4>
    }

}
    80006234:	02813083          	ld	ra,40(sp)
    80006238:	02013403          	ld	s0,32(sp)
    8000623c:	03010113          	addi	sp,sp,48
    80006240:	00008067          	ret

0000000080006244 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006244:	fe010113          	addi	sp,sp,-32
    80006248:	00113c23          	sd	ra,24(sp)
    8000624c:	00813823          	sd	s0,16(sp)
    80006250:	00913423          	sd	s1,8(sp)
    80006254:	01213023          	sd	s2,0(sp)
    80006258:	02010413          	addi	s0,sp,32
    8000625c:	00050493          	mv	s1,a0
    80006260:	00058913          	mv	s2,a1
    80006264:	0015879b          	addiw	a5,a1,1
    80006268:	0007851b          	sext.w	a0,a5
    8000626c:	00f4a023          	sw	a5,0(s1)
    80006270:	0004a823          	sw	zero,16(s1)
    80006274:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006278:	00251513          	slli	a0,a0,0x2
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	fc0080e7          	jalr	-64(ra) # 8000123c <_Z9mem_allocm>
    80006284:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006288:	00000593          	li	a1,0
    8000628c:	02048513          	addi	a0,s1,32
    80006290:	ffffb097          	auipc	ra,0xffffb
    80006294:	168080e7          	jalr	360(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&spaceAvailable, _cap);
    80006298:	00090593          	mv	a1,s2
    8000629c:	01848513          	addi	a0,s1,24
    800062a0:	ffffb097          	auipc	ra,0xffffb
    800062a4:	158080e7          	jalr	344(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexHead, 1);
    800062a8:	00100593          	li	a1,1
    800062ac:	02848513          	addi	a0,s1,40
    800062b0:	ffffb097          	auipc	ra,0xffffb
    800062b4:	148080e7          	jalr	328(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexTail, 1);
    800062b8:	00100593          	li	a1,1
    800062bc:	03048513          	addi	a0,s1,48
    800062c0:	ffffb097          	auipc	ra,0xffffb
    800062c4:	138080e7          	jalr	312(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    800062c8:	01813083          	ld	ra,24(sp)
    800062cc:	01013403          	ld	s0,16(sp)
    800062d0:	00813483          	ld	s1,8(sp)
    800062d4:	00013903          	ld	s2,0(sp)
    800062d8:	02010113          	addi	sp,sp,32
    800062dc:	00008067          	ret

00000000800062e0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800062e0:	fe010113          	addi	sp,sp,-32
    800062e4:	00113c23          	sd	ra,24(sp)
    800062e8:	00813823          	sd	s0,16(sp)
    800062ec:	00913423          	sd	s1,8(sp)
    800062f0:	01213023          	sd	s2,0(sp)
    800062f4:	02010413          	addi	s0,sp,32
    800062f8:	00050493          	mv	s1,a0
    800062fc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006300:	01853503          	ld	a0,24(a0)
    80006304:	ffffb097          	auipc	ra,0xffffb
    80006308:	158080e7          	jalr	344(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexTail);
    8000630c:	0304b503          	ld	a0,48(s1)
    80006310:	ffffb097          	auipc	ra,0xffffb
    80006314:	14c080e7          	jalr	332(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    buffer[tail] = val;
    80006318:	0084b783          	ld	a5,8(s1)
    8000631c:	0144a703          	lw	a4,20(s1)
    80006320:	00271713          	slli	a4,a4,0x2
    80006324:	00e787b3          	add	a5,a5,a4
    80006328:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000632c:	0144a783          	lw	a5,20(s1)
    80006330:	0017879b          	addiw	a5,a5,1
    80006334:	0004a703          	lw	a4,0(s1)
    80006338:	02e7e7bb          	remw	a5,a5,a4
    8000633c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006340:	0304b503          	ld	a0,48(s1)
    80006344:	ffffb097          	auipc	ra,0xffffb
    80006348:	144080e7          	jalr	324(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(itemAvailable);
    8000634c:	0204b503          	ld	a0,32(s1)
    80006350:	ffffb097          	auipc	ra,0xffffb
    80006354:	138080e7          	jalr	312(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

}
    80006358:	01813083          	ld	ra,24(sp)
    8000635c:	01013403          	ld	s0,16(sp)
    80006360:	00813483          	ld	s1,8(sp)
    80006364:	00013903          	ld	s2,0(sp)
    80006368:	02010113          	addi	sp,sp,32
    8000636c:	00008067          	ret

0000000080006370 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006370:	fe010113          	addi	sp,sp,-32
    80006374:	00113c23          	sd	ra,24(sp)
    80006378:	00813823          	sd	s0,16(sp)
    8000637c:	00913423          	sd	s1,8(sp)
    80006380:	01213023          	sd	s2,0(sp)
    80006384:	02010413          	addi	s0,sp,32
    80006388:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000638c:	02053503          	ld	a0,32(a0)
    80006390:	ffffb097          	auipc	ra,0xffffb
    80006394:	0cc080e7          	jalr	204(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexHead);
    80006398:	0284b503          	ld	a0,40(s1)
    8000639c:	ffffb097          	auipc	ra,0xffffb
    800063a0:	0c0080e7          	jalr	192(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    int ret = buffer[head];
    800063a4:	0084b703          	ld	a4,8(s1)
    800063a8:	0104a783          	lw	a5,16(s1)
    800063ac:	00279693          	slli	a3,a5,0x2
    800063b0:	00d70733          	add	a4,a4,a3
    800063b4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800063b8:	0017879b          	addiw	a5,a5,1
    800063bc:	0004a703          	lw	a4,0(s1)
    800063c0:	02e7e7bb          	remw	a5,a5,a4
    800063c4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800063c8:	0284b503          	ld	a0,40(s1)
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	0bc080e7          	jalr	188(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(spaceAvailable);
    800063d4:	0184b503          	ld	a0,24(s1)
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	0b0080e7          	jalr	176(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    800063e0:	00090513          	mv	a0,s2
    800063e4:	01813083          	ld	ra,24(sp)
    800063e8:	01013403          	ld	s0,16(sp)
    800063ec:	00813483          	ld	s1,8(sp)
    800063f0:	00013903          	ld	s2,0(sp)
    800063f4:	02010113          	addi	sp,sp,32
    800063f8:	00008067          	ret

00000000800063fc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00113c23          	sd	ra,24(sp)
    80006404:	00813823          	sd	s0,16(sp)
    80006408:	00913423          	sd	s1,8(sp)
    8000640c:	01213023          	sd	s2,0(sp)
    80006410:	02010413          	addi	s0,sp,32
    80006414:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006418:	02853503          	ld	a0,40(a0)
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	040080e7          	jalr	64(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    sem_wait(mutexTail);
    80006424:	0304b503          	ld	a0,48(s1)
    80006428:	ffffb097          	auipc	ra,0xffffb
    8000642c:	034080e7          	jalr	52(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    if (tail >= head) {
    80006430:	0144a783          	lw	a5,20(s1)
    80006434:	0104a903          	lw	s2,16(s1)
    80006438:	0327ce63          	blt	a5,s2,80006474 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000643c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006440:	0304b503          	ld	a0,48(s1)
    80006444:	ffffb097          	auipc	ra,0xffffb
    80006448:	044080e7          	jalr	68(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
    sem_signal(mutexHead);
    8000644c:	0284b503          	ld	a0,40(s1)
    80006450:	ffffb097          	auipc	ra,0xffffb
    80006454:	038080e7          	jalr	56(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    80006458:	00090513          	mv	a0,s2
    8000645c:	01813083          	ld	ra,24(sp)
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	00813483          	ld	s1,8(sp)
    80006468:	00013903          	ld	s2,0(sp)
    8000646c:	02010113          	addi	sp,sp,32
    80006470:	00008067          	ret
        ret = cap - head + tail;
    80006474:	0004a703          	lw	a4,0(s1)
    80006478:	4127093b          	subw	s2,a4,s2
    8000647c:	00f9093b          	addw	s2,s2,a5
    80006480:	fc1ff06f          	j	80006440 <_ZN6Buffer6getCntEv+0x44>

0000000080006484 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006484:	fe010113          	addi	sp,sp,-32
    80006488:	00113c23          	sd	ra,24(sp)
    8000648c:	00813823          	sd	s0,16(sp)
    80006490:	00913423          	sd	s1,8(sp)
    80006494:	02010413          	addi	s0,sp,32
    80006498:	00050493          	mv	s1,a0
    putc('\n');
    8000649c:	00a00513          	li	a0,10
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	068080e7          	jalr	104(ra) # 80001508 <_Z4putcc>
    printString("Buffer deleted!\n");
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	ef850513          	addi	a0,a0,-264 # 800093a0 <CONSOLE_STATUS+0x390>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	e70080e7          	jalr	-400(ra) # 80005320 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800064b8:	00048513          	mv	a0,s1
    800064bc:	00000097          	auipc	ra,0x0
    800064c0:	f40080e7          	jalr	-192(ra) # 800063fc <_ZN6Buffer6getCntEv>
    800064c4:	02a05c63          	blez	a0,800064fc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800064c8:	0084b783          	ld	a5,8(s1)
    800064cc:	0104a703          	lw	a4,16(s1)
    800064d0:	00271713          	slli	a4,a4,0x2
    800064d4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800064d8:	0007c503          	lbu	a0,0(a5)
    800064dc:	ffffb097          	auipc	ra,0xffffb
    800064e0:	02c080e7          	jalr	44(ra) # 80001508 <_Z4putcc>
        head = (head + 1) % cap;
    800064e4:	0104a783          	lw	a5,16(s1)
    800064e8:	0017879b          	addiw	a5,a5,1
    800064ec:	0004a703          	lw	a4,0(s1)
    800064f0:	02e7e7bb          	remw	a5,a5,a4
    800064f4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800064f8:	fc1ff06f          	j	800064b8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800064fc:	02100513          	li	a0,33
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	008080e7          	jalr	8(ra) # 80001508 <_Z4putcc>
    putc('\n');
    80006508:	00a00513          	li	a0,10
    8000650c:	ffffb097          	auipc	ra,0xffffb
    80006510:	ffc080e7          	jalr	-4(ra) # 80001508 <_Z4putcc>
    mem_free(buffer);
    80006514:	0084b503          	ld	a0,8(s1)
    80006518:	ffffb097          	auipc	ra,0xffffb
    8000651c:	d60080e7          	jalr	-672(ra) # 80001278 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006520:	0204b503          	ld	a0,32(s1)
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	f0c080e7          	jalr	-244(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(spaceAvailable);
    8000652c:	0184b503          	ld	a0,24(s1)
    80006530:	ffffb097          	auipc	ra,0xffffb
    80006534:	f00080e7          	jalr	-256(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexTail);
    80006538:	0304b503          	ld	a0,48(s1)
    8000653c:	ffffb097          	auipc	ra,0xffffb
    80006540:	ef4080e7          	jalr	-268(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexHead);
    80006544:	0284b503          	ld	a0,40(s1)
    80006548:	ffffb097          	auipc	ra,0xffffb
    8000654c:	ee8080e7          	jalr	-280(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
}
    80006550:	01813083          	ld	ra,24(sp)
    80006554:	01013403          	ld	s0,16(sp)
    80006558:	00813483          	ld	s1,8(sp)
    8000655c:	02010113          	addi	sp,sp,32
    80006560:	00008067          	ret

0000000080006564 <start>:
    80006564:	ff010113          	addi	sp,sp,-16
    80006568:	00813423          	sd	s0,8(sp)
    8000656c:	01010413          	addi	s0,sp,16
    80006570:	300027f3          	csrr	a5,mstatus
    80006574:	ffffe737          	lui	a4,0xffffe
    80006578:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1f0f>
    8000657c:	00e7f7b3          	and	a5,a5,a4
    80006580:	00001737          	lui	a4,0x1
    80006584:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006588:	00e7e7b3          	or	a5,a5,a4
    8000658c:	30079073          	csrw	mstatus,a5
    80006590:	00000797          	auipc	a5,0x0
    80006594:	16078793          	addi	a5,a5,352 # 800066f0 <system_main>
    80006598:	34179073          	csrw	mepc,a5
    8000659c:	00000793          	li	a5,0
    800065a0:	18079073          	csrw	satp,a5
    800065a4:	000107b7          	lui	a5,0x10
    800065a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800065ac:	30279073          	csrw	medeleg,a5
    800065b0:	30379073          	csrw	mideleg,a5
    800065b4:	104027f3          	csrr	a5,sie
    800065b8:	2227e793          	ori	a5,a5,546
    800065bc:	10479073          	csrw	sie,a5
    800065c0:	fff00793          	li	a5,-1
    800065c4:	00a7d793          	srli	a5,a5,0xa
    800065c8:	3b079073          	csrw	pmpaddr0,a5
    800065cc:	00f00793          	li	a5,15
    800065d0:	3a079073          	csrw	pmpcfg0,a5
    800065d4:	f14027f3          	csrr	a5,mhartid
    800065d8:	0200c737          	lui	a4,0x200c
    800065dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065e0:	0007869b          	sext.w	a3,a5
    800065e4:	00269713          	slli	a4,a3,0x2
    800065e8:	000f4637          	lui	a2,0xf4
    800065ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065f0:	00d70733          	add	a4,a4,a3
    800065f4:	0037979b          	slliw	a5,a5,0x3
    800065f8:	020046b7          	lui	a3,0x2004
    800065fc:	00d787b3          	add	a5,a5,a3
    80006600:	00c585b3          	add	a1,a1,a2
    80006604:	00371693          	slli	a3,a4,0x3
    80006608:	00005717          	auipc	a4,0x5
    8000660c:	08870713          	addi	a4,a4,136 # 8000b690 <timer_scratch>
    80006610:	00b7b023          	sd	a1,0(a5)
    80006614:	00d70733          	add	a4,a4,a3
    80006618:	00f73c23          	sd	a5,24(a4)
    8000661c:	02c73023          	sd	a2,32(a4)
    80006620:	34071073          	csrw	mscratch,a4
    80006624:	00000797          	auipc	a5,0x0
    80006628:	6ec78793          	addi	a5,a5,1772 # 80006d10 <timervec>
    8000662c:	30579073          	csrw	mtvec,a5
    80006630:	300027f3          	csrr	a5,mstatus
    80006634:	0087e793          	ori	a5,a5,8
    80006638:	30079073          	csrw	mstatus,a5
    8000663c:	304027f3          	csrr	a5,mie
    80006640:	0807e793          	ori	a5,a5,128
    80006644:	30479073          	csrw	mie,a5
    80006648:	f14027f3          	csrr	a5,mhartid
    8000664c:	0007879b          	sext.w	a5,a5
    80006650:	00078213          	mv	tp,a5
    80006654:	30200073          	mret
    80006658:	00813403          	ld	s0,8(sp)
    8000665c:	01010113          	addi	sp,sp,16
    80006660:	00008067          	ret

0000000080006664 <timerinit>:
    80006664:	ff010113          	addi	sp,sp,-16
    80006668:	00813423          	sd	s0,8(sp)
    8000666c:	01010413          	addi	s0,sp,16
    80006670:	f14027f3          	csrr	a5,mhartid
    80006674:	0200c737          	lui	a4,0x200c
    80006678:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000667c:	0007869b          	sext.w	a3,a5
    80006680:	00269713          	slli	a4,a3,0x2
    80006684:	000f4637          	lui	a2,0xf4
    80006688:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000668c:	00d70733          	add	a4,a4,a3
    80006690:	0037979b          	slliw	a5,a5,0x3
    80006694:	020046b7          	lui	a3,0x2004
    80006698:	00d787b3          	add	a5,a5,a3
    8000669c:	00c585b3          	add	a1,a1,a2
    800066a0:	00371693          	slli	a3,a4,0x3
    800066a4:	00005717          	auipc	a4,0x5
    800066a8:	fec70713          	addi	a4,a4,-20 # 8000b690 <timer_scratch>
    800066ac:	00b7b023          	sd	a1,0(a5)
    800066b0:	00d70733          	add	a4,a4,a3
    800066b4:	00f73c23          	sd	a5,24(a4)
    800066b8:	02c73023          	sd	a2,32(a4)
    800066bc:	34071073          	csrw	mscratch,a4
    800066c0:	00000797          	auipc	a5,0x0
    800066c4:	65078793          	addi	a5,a5,1616 # 80006d10 <timervec>
    800066c8:	30579073          	csrw	mtvec,a5
    800066cc:	300027f3          	csrr	a5,mstatus
    800066d0:	0087e793          	ori	a5,a5,8
    800066d4:	30079073          	csrw	mstatus,a5
    800066d8:	304027f3          	csrr	a5,mie
    800066dc:	0807e793          	ori	a5,a5,128
    800066e0:	30479073          	csrw	mie,a5
    800066e4:	00813403          	ld	s0,8(sp)
    800066e8:	01010113          	addi	sp,sp,16
    800066ec:	00008067          	ret

00000000800066f0 <system_main>:
    800066f0:	fe010113          	addi	sp,sp,-32
    800066f4:	00813823          	sd	s0,16(sp)
    800066f8:	00913423          	sd	s1,8(sp)
    800066fc:	00113c23          	sd	ra,24(sp)
    80006700:	02010413          	addi	s0,sp,32
    80006704:	00000097          	auipc	ra,0x0
    80006708:	0c4080e7          	jalr	196(ra) # 800067c8 <cpuid>
    8000670c:	00005497          	auipc	s1,0x5
    80006710:	ec448493          	addi	s1,s1,-316 # 8000b5d0 <started>
    80006714:	02050263          	beqz	a0,80006738 <system_main+0x48>
    80006718:	0004a783          	lw	a5,0(s1)
    8000671c:	0007879b          	sext.w	a5,a5
    80006720:	fe078ce3          	beqz	a5,80006718 <system_main+0x28>
    80006724:	0ff0000f          	fence
    80006728:	00003517          	auipc	a0,0x3
    8000672c:	f0850513          	addi	a0,a0,-248 # 80009630 <CONSOLE_STATUS+0x620>
    80006730:	00001097          	auipc	ra,0x1
    80006734:	a7c080e7          	jalr	-1412(ra) # 800071ac <panic>
    80006738:	00001097          	auipc	ra,0x1
    8000673c:	9d0080e7          	jalr	-1584(ra) # 80007108 <consoleinit>
    80006740:	00001097          	auipc	ra,0x1
    80006744:	15c080e7          	jalr	348(ra) # 8000789c <printfinit>
    80006748:	00003517          	auipc	a0,0x3
    8000674c:	de050513          	addi	a0,a0,-544 # 80009528 <CONSOLE_STATUS+0x518>
    80006750:	00001097          	auipc	ra,0x1
    80006754:	ab8080e7          	jalr	-1352(ra) # 80007208 <__printf>
    80006758:	00003517          	auipc	a0,0x3
    8000675c:	ea850513          	addi	a0,a0,-344 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006760:	00001097          	auipc	ra,0x1
    80006764:	aa8080e7          	jalr	-1368(ra) # 80007208 <__printf>
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	dc050513          	addi	a0,a0,-576 # 80009528 <CONSOLE_STATUS+0x518>
    80006770:	00001097          	auipc	ra,0x1
    80006774:	a98080e7          	jalr	-1384(ra) # 80007208 <__printf>
    80006778:	00001097          	auipc	ra,0x1
    8000677c:	4b0080e7          	jalr	1200(ra) # 80007c28 <kinit>
    80006780:	00000097          	auipc	ra,0x0
    80006784:	148080e7          	jalr	328(ra) # 800068c8 <trapinit>
    80006788:	00000097          	auipc	ra,0x0
    8000678c:	16c080e7          	jalr	364(ra) # 800068f4 <trapinithart>
    80006790:	00000097          	auipc	ra,0x0
    80006794:	5c0080e7          	jalr	1472(ra) # 80006d50 <plicinit>
    80006798:	00000097          	auipc	ra,0x0
    8000679c:	5e0080e7          	jalr	1504(ra) # 80006d78 <plicinithart>
    800067a0:	00000097          	auipc	ra,0x0
    800067a4:	078080e7          	jalr	120(ra) # 80006818 <userinit>
    800067a8:	0ff0000f          	fence
    800067ac:	00100793          	li	a5,1
    800067b0:	00003517          	auipc	a0,0x3
    800067b4:	e6850513          	addi	a0,a0,-408 # 80009618 <CONSOLE_STATUS+0x608>
    800067b8:	00f4a023          	sw	a5,0(s1)
    800067bc:	00001097          	auipc	ra,0x1
    800067c0:	a4c080e7          	jalr	-1460(ra) # 80007208 <__printf>
    800067c4:	0000006f          	j	800067c4 <system_main+0xd4>

00000000800067c8 <cpuid>:
    800067c8:	ff010113          	addi	sp,sp,-16
    800067cc:	00813423          	sd	s0,8(sp)
    800067d0:	01010413          	addi	s0,sp,16
    800067d4:	00020513          	mv	a0,tp
    800067d8:	00813403          	ld	s0,8(sp)
    800067dc:	0005051b          	sext.w	a0,a0
    800067e0:	01010113          	addi	sp,sp,16
    800067e4:	00008067          	ret

00000000800067e8 <mycpu>:
    800067e8:	ff010113          	addi	sp,sp,-16
    800067ec:	00813423          	sd	s0,8(sp)
    800067f0:	01010413          	addi	s0,sp,16
    800067f4:	00020793          	mv	a5,tp
    800067f8:	00813403          	ld	s0,8(sp)
    800067fc:	0007879b          	sext.w	a5,a5
    80006800:	00779793          	slli	a5,a5,0x7
    80006804:	00006517          	auipc	a0,0x6
    80006808:	ebc50513          	addi	a0,a0,-324 # 8000c6c0 <cpus>
    8000680c:	00f50533          	add	a0,a0,a5
    80006810:	01010113          	addi	sp,sp,16
    80006814:	00008067          	ret

0000000080006818 <userinit>:
    80006818:	ff010113          	addi	sp,sp,-16
    8000681c:	00813423          	sd	s0,8(sp)
    80006820:	01010413          	addi	s0,sp,16
    80006824:	00813403          	ld	s0,8(sp)
    80006828:	01010113          	addi	sp,sp,16
    8000682c:	ffffc317          	auipc	t1,0xffffc
    80006830:	22c30067          	jr	556(t1) # 80002a58 <main>

0000000080006834 <either_copyout>:
    80006834:	ff010113          	addi	sp,sp,-16
    80006838:	00813023          	sd	s0,0(sp)
    8000683c:	00113423          	sd	ra,8(sp)
    80006840:	01010413          	addi	s0,sp,16
    80006844:	02051663          	bnez	a0,80006870 <either_copyout+0x3c>
    80006848:	00058513          	mv	a0,a1
    8000684c:	00060593          	mv	a1,a2
    80006850:	0006861b          	sext.w	a2,a3
    80006854:	00002097          	auipc	ra,0x2
    80006858:	c60080e7          	jalr	-928(ra) # 800084b4 <__memmove>
    8000685c:	00813083          	ld	ra,8(sp)
    80006860:	00013403          	ld	s0,0(sp)
    80006864:	00000513          	li	a0,0
    80006868:	01010113          	addi	sp,sp,16
    8000686c:	00008067          	ret
    80006870:	00003517          	auipc	a0,0x3
    80006874:	de850513          	addi	a0,a0,-536 # 80009658 <CONSOLE_STATUS+0x648>
    80006878:	00001097          	auipc	ra,0x1
    8000687c:	934080e7          	jalr	-1740(ra) # 800071ac <panic>

0000000080006880 <either_copyin>:
    80006880:	ff010113          	addi	sp,sp,-16
    80006884:	00813023          	sd	s0,0(sp)
    80006888:	00113423          	sd	ra,8(sp)
    8000688c:	01010413          	addi	s0,sp,16
    80006890:	02059463          	bnez	a1,800068b8 <either_copyin+0x38>
    80006894:	00060593          	mv	a1,a2
    80006898:	0006861b          	sext.w	a2,a3
    8000689c:	00002097          	auipc	ra,0x2
    800068a0:	c18080e7          	jalr	-1000(ra) # 800084b4 <__memmove>
    800068a4:	00813083          	ld	ra,8(sp)
    800068a8:	00013403          	ld	s0,0(sp)
    800068ac:	00000513          	li	a0,0
    800068b0:	01010113          	addi	sp,sp,16
    800068b4:	00008067          	ret
    800068b8:	00003517          	auipc	a0,0x3
    800068bc:	dc850513          	addi	a0,a0,-568 # 80009680 <CONSOLE_STATUS+0x670>
    800068c0:	00001097          	auipc	ra,0x1
    800068c4:	8ec080e7          	jalr	-1812(ra) # 800071ac <panic>

00000000800068c8 <trapinit>:
    800068c8:	ff010113          	addi	sp,sp,-16
    800068cc:	00813423          	sd	s0,8(sp)
    800068d0:	01010413          	addi	s0,sp,16
    800068d4:	00813403          	ld	s0,8(sp)
    800068d8:	00003597          	auipc	a1,0x3
    800068dc:	dd058593          	addi	a1,a1,-560 # 800096a8 <CONSOLE_STATUS+0x698>
    800068e0:	00006517          	auipc	a0,0x6
    800068e4:	e6050513          	addi	a0,a0,-416 # 8000c740 <tickslock>
    800068e8:	01010113          	addi	sp,sp,16
    800068ec:	00001317          	auipc	t1,0x1
    800068f0:	5cc30067          	jr	1484(t1) # 80007eb8 <initlock>

00000000800068f4 <trapinithart>:
    800068f4:	ff010113          	addi	sp,sp,-16
    800068f8:	00813423          	sd	s0,8(sp)
    800068fc:	01010413          	addi	s0,sp,16
    80006900:	00000797          	auipc	a5,0x0
    80006904:	30078793          	addi	a5,a5,768 # 80006c00 <kernelvec>
    80006908:	10579073          	csrw	stvec,a5
    8000690c:	00813403          	ld	s0,8(sp)
    80006910:	01010113          	addi	sp,sp,16
    80006914:	00008067          	ret

0000000080006918 <usertrap>:
    80006918:	ff010113          	addi	sp,sp,-16
    8000691c:	00813423          	sd	s0,8(sp)
    80006920:	01010413          	addi	s0,sp,16
    80006924:	00813403          	ld	s0,8(sp)
    80006928:	01010113          	addi	sp,sp,16
    8000692c:	00008067          	ret

0000000080006930 <usertrapret>:
    80006930:	ff010113          	addi	sp,sp,-16
    80006934:	00813423          	sd	s0,8(sp)
    80006938:	01010413          	addi	s0,sp,16
    8000693c:	00813403          	ld	s0,8(sp)
    80006940:	01010113          	addi	sp,sp,16
    80006944:	00008067          	ret

0000000080006948 <kerneltrap>:
    80006948:	fe010113          	addi	sp,sp,-32
    8000694c:	00813823          	sd	s0,16(sp)
    80006950:	00113c23          	sd	ra,24(sp)
    80006954:	00913423          	sd	s1,8(sp)
    80006958:	02010413          	addi	s0,sp,32
    8000695c:	142025f3          	csrr	a1,scause
    80006960:	100027f3          	csrr	a5,sstatus
    80006964:	0027f793          	andi	a5,a5,2
    80006968:	10079c63          	bnez	a5,80006a80 <kerneltrap+0x138>
    8000696c:	142027f3          	csrr	a5,scause
    80006970:	0207ce63          	bltz	a5,800069ac <kerneltrap+0x64>
    80006974:	00003517          	auipc	a0,0x3
    80006978:	d7c50513          	addi	a0,a0,-644 # 800096f0 <CONSOLE_STATUS+0x6e0>
    8000697c:	00001097          	auipc	ra,0x1
    80006980:	88c080e7          	jalr	-1908(ra) # 80007208 <__printf>
    80006984:	141025f3          	csrr	a1,sepc
    80006988:	14302673          	csrr	a2,stval
    8000698c:	00003517          	auipc	a0,0x3
    80006990:	d7450513          	addi	a0,a0,-652 # 80009700 <CONSOLE_STATUS+0x6f0>
    80006994:	00001097          	auipc	ra,0x1
    80006998:	874080e7          	jalr	-1932(ra) # 80007208 <__printf>
    8000699c:	00003517          	auipc	a0,0x3
    800069a0:	d7c50513          	addi	a0,a0,-644 # 80009718 <CONSOLE_STATUS+0x708>
    800069a4:	00001097          	auipc	ra,0x1
    800069a8:	808080e7          	jalr	-2040(ra) # 800071ac <panic>
    800069ac:	0ff7f713          	andi	a4,a5,255
    800069b0:	00900693          	li	a3,9
    800069b4:	04d70063          	beq	a4,a3,800069f4 <kerneltrap+0xac>
    800069b8:	fff00713          	li	a4,-1
    800069bc:	03f71713          	slli	a4,a4,0x3f
    800069c0:	00170713          	addi	a4,a4,1
    800069c4:	fae798e3          	bne	a5,a4,80006974 <kerneltrap+0x2c>
    800069c8:	00000097          	auipc	ra,0x0
    800069cc:	e00080e7          	jalr	-512(ra) # 800067c8 <cpuid>
    800069d0:	06050663          	beqz	a0,80006a3c <kerneltrap+0xf4>
    800069d4:	144027f3          	csrr	a5,sip
    800069d8:	ffd7f793          	andi	a5,a5,-3
    800069dc:	14479073          	csrw	sip,a5
    800069e0:	01813083          	ld	ra,24(sp)
    800069e4:	01013403          	ld	s0,16(sp)
    800069e8:	00813483          	ld	s1,8(sp)
    800069ec:	02010113          	addi	sp,sp,32
    800069f0:	00008067          	ret
    800069f4:	00000097          	auipc	ra,0x0
    800069f8:	3d0080e7          	jalr	976(ra) # 80006dc4 <plic_claim>
    800069fc:	00a00793          	li	a5,10
    80006a00:	00050493          	mv	s1,a0
    80006a04:	06f50863          	beq	a0,a5,80006a74 <kerneltrap+0x12c>
    80006a08:	fc050ce3          	beqz	a0,800069e0 <kerneltrap+0x98>
    80006a0c:	00050593          	mv	a1,a0
    80006a10:	00003517          	auipc	a0,0x3
    80006a14:	cc050513          	addi	a0,a0,-832 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006a18:	00000097          	auipc	ra,0x0
    80006a1c:	7f0080e7          	jalr	2032(ra) # 80007208 <__printf>
    80006a20:	01013403          	ld	s0,16(sp)
    80006a24:	01813083          	ld	ra,24(sp)
    80006a28:	00048513          	mv	a0,s1
    80006a2c:	00813483          	ld	s1,8(sp)
    80006a30:	02010113          	addi	sp,sp,32
    80006a34:	00000317          	auipc	t1,0x0
    80006a38:	3c830067          	jr	968(t1) # 80006dfc <plic_complete>
    80006a3c:	00006517          	auipc	a0,0x6
    80006a40:	d0450513          	addi	a0,a0,-764 # 8000c740 <tickslock>
    80006a44:	00001097          	auipc	ra,0x1
    80006a48:	498080e7          	jalr	1176(ra) # 80007edc <acquire>
    80006a4c:	00005717          	auipc	a4,0x5
    80006a50:	b8870713          	addi	a4,a4,-1144 # 8000b5d4 <ticks>
    80006a54:	00072783          	lw	a5,0(a4)
    80006a58:	00006517          	auipc	a0,0x6
    80006a5c:	ce850513          	addi	a0,a0,-792 # 8000c740 <tickslock>
    80006a60:	0017879b          	addiw	a5,a5,1
    80006a64:	00f72023          	sw	a5,0(a4)
    80006a68:	00001097          	auipc	ra,0x1
    80006a6c:	540080e7          	jalr	1344(ra) # 80007fa8 <release>
    80006a70:	f65ff06f          	j	800069d4 <kerneltrap+0x8c>
    80006a74:	00001097          	auipc	ra,0x1
    80006a78:	09c080e7          	jalr	156(ra) # 80007b10 <uartintr>
    80006a7c:	fa5ff06f          	j	80006a20 <kerneltrap+0xd8>
    80006a80:	00003517          	auipc	a0,0x3
    80006a84:	c3050513          	addi	a0,a0,-976 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006a88:	00000097          	auipc	ra,0x0
    80006a8c:	724080e7          	jalr	1828(ra) # 800071ac <panic>

0000000080006a90 <clockintr>:
    80006a90:	fe010113          	addi	sp,sp,-32
    80006a94:	00813823          	sd	s0,16(sp)
    80006a98:	00913423          	sd	s1,8(sp)
    80006a9c:	00113c23          	sd	ra,24(sp)
    80006aa0:	02010413          	addi	s0,sp,32
    80006aa4:	00006497          	auipc	s1,0x6
    80006aa8:	c9c48493          	addi	s1,s1,-868 # 8000c740 <tickslock>
    80006aac:	00048513          	mv	a0,s1
    80006ab0:	00001097          	auipc	ra,0x1
    80006ab4:	42c080e7          	jalr	1068(ra) # 80007edc <acquire>
    80006ab8:	00005717          	auipc	a4,0x5
    80006abc:	b1c70713          	addi	a4,a4,-1252 # 8000b5d4 <ticks>
    80006ac0:	00072783          	lw	a5,0(a4)
    80006ac4:	01013403          	ld	s0,16(sp)
    80006ac8:	01813083          	ld	ra,24(sp)
    80006acc:	00048513          	mv	a0,s1
    80006ad0:	0017879b          	addiw	a5,a5,1
    80006ad4:	00813483          	ld	s1,8(sp)
    80006ad8:	00f72023          	sw	a5,0(a4)
    80006adc:	02010113          	addi	sp,sp,32
    80006ae0:	00001317          	auipc	t1,0x1
    80006ae4:	4c830067          	jr	1224(t1) # 80007fa8 <release>

0000000080006ae8 <devintr>:
    80006ae8:	142027f3          	csrr	a5,scause
    80006aec:	00000513          	li	a0,0
    80006af0:	0007c463          	bltz	a5,80006af8 <devintr+0x10>
    80006af4:	00008067          	ret
    80006af8:	fe010113          	addi	sp,sp,-32
    80006afc:	00813823          	sd	s0,16(sp)
    80006b00:	00113c23          	sd	ra,24(sp)
    80006b04:	00913423          	sd	s1,8(sp)
    80006b08:	02010413          	addi	s0,sp,32
    80006b0c:	0ff7f713          	andi	a4,a5,255
    80006b10:	00900693          	li	a3,9
    80006b14:	04d70c63          	beq	a4,a3,80006b6c <devintr+0x84>
    80006b18:	fff00713          	li	a4,-1
    80006b1c:	03f71713          	slli	a4,a4,0x3f
    80006b20:	00170713          	addi	a4,a4,1
    80006b24:	00e78c63          	beq	a5,a4,80006b3c <devintr+0x54>
    80006b28:	01813083          	ld	ra,24(sp)
    80006b2c:	01013403          	ld	s0,16(sp)
    80006b30:	00813483          	ld	s1,8(sp)
    80006b34:	02010113          	addi	sp,sp,32
    80006b38:	00008067          	ret
    80006b3c:	00000097          	auipc	ra,0x0
    80006b40:	c8c080e7          	jalr	-884(ra) # 800067c8 <cpuid>
    80006b44:	06050663          	beqz	a0,80006bb0 <devintr+0xc8>
    80006b48:	144027f3          	csrr	a5,sip
    80006b4c:	ffd7f793          	andi	a5,a5,-3
    80006b50:	14479073          	csrw	sip,a5
    80006b54:	01813083          	ld	ra,24(sp)
    80006b58:	01013403          	ld	s0,16(sp)
    80006b5c:	00813483          	ld	s1,8(sp)
    80006b60:	00200513          	li	a0,2
    80006b64:	02010113          	addi	sp,sp,32
    80006b68:	00008067          	ret
    80006b6c:	00000097          	auipc	ra,0x0
    80006b70:	258080e7          	jalr	600(ra) # 80006dc4 <plic_claim>
    80006b74:	00a00793          	li	a5,10
    80006b78:	00050493          	mv	s1,a0
    80006b7c:	06f50663          	beq	a0,a5,80006be8 <devintr+0x100>
    80006b80:	00100513          	li	a0,1
    80006b84:	fa0482e3          	beqz	s1,80006b28 <devintr+0x40>
    80006b88:	00048593          	mv	a1,s1
    80006b8c:	00003517          	auipc	a0,0x3
    80006b90:	b4450513          	addi	a0,a0,-1212 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006b94:	00000097          	auipc	ra,0x0
    80006b98:	674080e7          	jalr	1652(ra) # 80007208 <__printf>
    80006b9c:	00048513          	mv	a0,s1
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	25c080e7          	jalr	604(ra) # 80006dfc <plic_complete>
    80006ba8:	00100513          	li	a0,1
    80006bac:	f7dff06f          	j	80006b28 <devintr+0x40>
    80006bb0:	00006517          	auipc	a0,0x6
    80006bb4:	b9050513          	addi	a0,a0,-1136 # 8000c740 <tickslock>
    80006bb8:	00001097          	auipc	ra,0x1
    80006bbc:	324080e7          	jalr	804(ra) # 80007edc <acquire>
    80006bc0:	00005717          	auipc	a4,0x5
    80006bc4:	a1470713          	addi	a4,a4,-1516 # 8000b5d4 <ticks>
    80006bc8:	00072783          	lw	a5,0(a4)
    80006bcc:	00006517          	auipc	a0,0x6
    80006bd0:	b7450513          	addi	a0,a0,-1164 # 8000c740 <tickslock>
    80006bd4:	0017879b          	addiw	a5,a5,1
    80006bd8:	00f72023          	sw	a5,0(a4)
    80006bdc:	00001097          	auipc	ra,0x1
    80006be0:	3cc080e7          	jalr	972(ra) # 80007fa8 <release>
    80006be4:	f65ff06f          	j	80006b48 <devintr+0x60>
    80006be8:	00001097          	auipc	ra,0x1
    80006bec:	f28080e7          	jalr	-216(ra) # 80007b10 <uartintr>
    80006bf0:	fadff06f          	j	80006b9c <devintr+0xb4>
	...

0000000080006c00 <kernelvec>:
    80006c00:	f0010113          	addi	sp,sp,-256
    80006c04:	00113023          	sd	ra,0(sp)
    80006c08:	00213423          	sd	sp,8(sp)
    80006c0c:	00313823          	sd	gp,16(sp)
    80006c10:	00413c23          	sd	tp,24(sp)
    80006c14:	02513023          	sd	t0,32(sp)
    80006c18:	02613423          	sd	t1,40(sp)
    80006c1c:	02713823          	sd	t2,48(sp)
    80006c20:	02813c23          	sd	s0,56(sp)
    80006c24:	04913023          	sd	s1,64(sp)
    80006c28:	04a13423          	sd	a0,72(sp)
    80006c2c:	04b13823          	sd	a1,80(sp)
    80006c30:	04c13c23          	sd	a2,88(sp)
    80006c34:	06d13023          	sd	a3,96(sp)
    80006c38:	06e13423          	sd	a4,104(sp)
    80006c3c:	06f13823          	sd	a5,112(sp)
    80006c40:	07013c23          	sd	a6,120(sp)
    80006c44:	09113023          	sd	a7,128(sp)
    80006c48:	09213423          	sd	s2,136(sp)
    80006c4c:	09313823          	sd	s3,144(sp)
    80006c50:	09413c23          	sd	s4,152(sp)
    80006c54:	0b513023          	sd	s5,160(sp)
    80006c58:	0b613423          	sd	s6,168(sp)
    80006c5c:	0b713823          	sd	s7,176(sp)
    80006c60:	0b813c23          	sd	s8,184(sp)
    80006c64:	0d913023          	sd	s9,192(sp)
    80006c68:	0da13423          	sd	s10,200(sp)
    80006c6c:	0db13823          	sd	s11,208(sp)
    80006c70:	0dc13c23          	sd	t3,216(sp)
    80006c74:	0fd13023          	sd	t4,224(sp)
    80006c78:	0fe13423          	sd	t5,232(sp)
    80006c7c:	0ff13823          	sd	t6,240(sp)
    80006c80:	cc9ff0ef          	jal	ra,80006948 <kerneltrap>
    80006c84:	00013083          	ld	ra,0(sp)
    80006c88:	00813103          	ld	sp,8(sp)
    80006c8c:	01013183          	ld	gp,16(sp)
    80006c90:	02013283          	ld	t0,32(sp)
    80006c94:	02813303          	ld	t1,40(sp)
    80006c98:	03013383          	ld	t2,48(sp)
    80006c9c:	03813403          	ld	s0,56(sp)
    80006ca0:	04013483          	ld	s1,64(sp)
    80006ca4:	04813503          	ld	a0,72(sp)
    80006ca8:	05013583          	ld	a1,80(sp)
    80006cac:	05813603          	ld	a2,88(sp)
    80006cb0:	06013683          	ld	a3,96(sp)
    80006cb4:	06813703          	ld	a4,104(sp)
    80006cb8:	07013783          	ld	a5,112(sp)
    80006cbc:	07813803          	ld	a6,120(sp)
    80006cc0:	08013883          	ld	a7,128(sp)
    80006cc4:	08813903          	ld	s2,136(sp)
    80006cc8:	09013983          	ld	s3,144(sp)
    80006ccc:	09813a03          	ld	s4,152(sp)
    80006cd0:	0a013a83          	ld	s5,160(sp)
    80006cd4:	0a813b03          	ld	s6,168(sp)
    80006cd8:	0b013b83          	ld	s7,176(sp)
    80006cdc:	0b813c03          	ld	s8,184(sp)
    80006ce0:	0c013c83          	ld	s9,192(sp)
    80006ce4:	0c813d03          	ld	s10,200(sp)
    80006ce8:	0d013d83          	ld	s11,208(sp)
    80006cec:	0d813e03          	ld	t3,216(sp)
    80006cf0:	0e013e83          	ld	t4,224(sp)
    80006cf4:	0e813f03          	ld	t5,232(sp)
    80006cf8:	0f013f83          	ld	t6,240(sp)
    80006cfc:	10010113          	addi	sp,sp,256
    80006d00:	10200073          	sret
    80006d04:	00000013          	nop
    80006d08:	00000013          	nop
    80006d0c:	00000013          	nop

0000000080006d10 <timervec>:
    80006d10:	34051573          	csrrw	a0,mscratch,a0
    80006d14:	00b53023          	sd	a1,0(a0)
    80006d18:	00c53423          	sd	a2,8(a0)
    80006d1c:	00d53823          	sd	a3,16(a0)
    80006d20:	01853583          	ld	a1,24(a0)
    80006d24:	02053603          	ld	a2,32(a0)
    80006d28:	0005b683          	ld	a3,0(a1)
    80006d2c:	00c686b3          	add	a3,a3,a2
    80006d30:	00d5b023          	sd	a3,0(a1)
    80006d34:	00200593          	li	a1,2
    80006d38:	14459073          	csrw	sip,a1
    80006d3c:	01053683          	ld	a3,16(a0)
    80006d40:	00853603          	ld	a2,8(a0)
    80006d44:	00053583          	ld	a1,0(a0)
    80006d48:	34051573          	csrrw	a0,mscratch,a0
    80006d4c:	30200073          	mret

0000000080006d50 <plicinit>:
    80006d50:	ff010113          	addi	sp,sp,-16
    80006d54:	00813423          	sd	s0,8(sp)
    80006d58:	01010413          	addi	s0,sp,16
    80006d5c:	00813403          	ld	s0,8(sp)
    80006d60:	0c0007b7          	lui	a5,0xc000
    80006d64:	00100713          	li	a4,1
    80006d68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006d6c:	00e7a223          	sw	a4,4(a5)
    80006d70:	01010113          	addi	sp,sp,16
    80006d74:	00008067          	ret

0000000080006d78 <plicinithart>:
    80006d78:	ff010113          	addi	sp,sp,-16
    80006d7c:	00813023          	sd	s0,0(sp)
    80006d80:	00113423          	sd	ra,8(sp)
    80006d84:	01010413          	addi	s0,sp,16
    80006d88:	00000097          	auipc	ra,0x0
    80006d8c:	a40080e7          	jalr	-1472(ra) # 800067c8 <cpuid>
    80006d90:	0085171b          	slliw	a4,a0,0x8
    80006d94:	0c0027b7          	lui	a5,0xc002
    80006d98:	00e787b3          	add	a5,a5,a4
    80006d9c:	40200713          	li	a4,1026
    80006da0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006da4:	00813083          	ld	ra,8(sp)
    80006da8:	00013403          	ld	s0,0(sp)
    80006dac:	00d5151b          	slliw	a0,a0,0xd
    80006db0:	0c2017b7          	lui	a5,0xc201
    80006db4:	00a78533          	add	a0,a5,a0
    80006db8:	00052023          	sw	zero,0(a0)
    80006dbc:	01010113          	addi	sp,sp,16
    80006dc0:	00008067          	ret

0000000080006dc4 <plic_claim>:
    80006dc4:	ff010113          	addi	sp,sp,-16
    80006dc8:	00813023          	sd	s0,0(sp)
    80006dcc:	00113423          	sd	ra,8(sp)
    80006dd0:	01010413          	addi	s0,sp,16
    80006dd4:	00000097          	auipc	ra,0x0
    80006dd8:	9f4080e7          	jalr	-1548(ra) # 800067c8 <cpuid>
    80006ddc:	00813083          	ld	ra,8(sp)
    80006de0:	00013403          	ld	s0,0(sp)
    80006de4:	00d5151b          	slliw	a0,a0,0xd
    80006de8:	0c2017b7          	lui	a5,0xc201
    80006dec:	00a78533          	add	a0,a5,a0
    80006df0:	00452503          	lw	a0,4(a0)
    80006df4:	01010113          	addi	sp,sp,16
    80006df8:	00008067          	ret

0000000080006dfc <plic_complete>:
    80006dfc:	fe010113          	addi	sp,sp,-32
    80006e00:	00813823          	sd	s0,16(sp)
    80006e04:	00913423          	sd	s1,8(sp)
    80006e08:	00113c23          	sd	ra,24(sp)
    80006e0c:	02010413          	addi	s0,sp,32
    80006e10:	00050493          	mv	s1,a0
    80006e14:	00000097          	auipc	ra,0x0
    80006e18:	9b4080e7          	jalr	-1612(ra) # 800067c8 <cpuid>
    80006e1c:	01813083          	ld	ra,24(sp)
    80006e20:	01013403          	ld	s0,16(sp)
    80006e24:	00d5179b          	slliw	a5,a0,0xd
    80006e28:	0c201737          	lui	a4,0xc201
    80006e2c:	00f707b3          	add	a5,a4,a5
    80006e30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006e34:	00813483          	ld	s1,8(sp)
    80006e38:	02010113          	addi	sp,sp,32
    80006e3c:	00008067          	ret

0000000080006e40 <consolewrite>:
    80006e40:	fb010113          	addi	sp,sp,-80
    80006e44:	04813023          	sd	s0,64(sp)
    80006e48:	04113423          	sd	ra,72(sp)
    80006e4c:	02913c23          	sd	s1,56(sp)
    80006e50:	03213823          	sd	s2,48(sp)
    80006e54:	03313423          	sd	s3,40(sp)
    80006e58:	03413023          	sd	s4,32(sp)
    80006e5c:	01513c23          	sd	s5,24(sp)
    80006e60:	05010413          	addi	s0,sp,80
    80006e64:	06c05c63          	blez	a2,80006edc <consolewrite+0x9c>
    80006e68:	00060993          	mv	s3,a2
    80006e6c:	00050a13          	mv	s4,a0
    80006e70:	00058493          	mv	s1,a1
    80006e74:	00000913          	li	s2,0
    80006e78:	fff00a93          	li	s5,-1
    80006e7c:	01c0006f          	j	80006e98 <consolewrite+0x58>
    80006e80:	fbf44503          	lbu	a0,-65(s0)
    80006e84:	0019091b          	addiw	s2,s2,1
    80006e88:	00148493          	addi	s1,s1,1
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	a9c080e7          	jalr	-1380(ra) # 80007928 <uartputc>
    80006e94:	03298063          	beq	s3,s2,80006eb4 <consolewrite+0x74>
    80006e98:	00048613          	mv	a2,s1
    80006e9c:	00100693          	li	a3,1
    80006ea0:	000a0593          	mv	a1,s4
    80006ea4:	fbf40513          	addi	a0,s0,-65
    80006ea8:	00000097          	auipc	ra,0x0
    80006eac:	9d8080e7          	jalr	-1576(ra) # 80006880 <either_copyin>
    80006eb0:	fd5518e3          	bne	a0,s5,80006e80 <consolewrite+0x40>
    80006eb4:	04813083          	ld	ra,72(sp)
    80006eb8:	04013403          	ld	s0,64(sp)
    80006ebc:	03813483          	ld	s1,56(sp)
    80006ec0:	02813983          	ld	s3,40(sp)
    80006ec4:	02013a03          	ld	s4,32(sp)
    80006ec8:	01813a83          	ld	s5,24(sp)
    80006ecc:	00090513          	mv	a0,s2
    80006ed0:	03013903          	ld	s2,48(sp)
    80006ed4:	05010113          	addi	sp,sp,80
    80006ed8:	00008067          	ret
    80006edc:	00000913          	li	s2,0
    80006ee0:	fd5ff06f          	j	80006eb4 <consolewrite+0x74>

0000000080006ee4 <consoleread>:
    80006ee4:	f9010113          	addi	sp,sp,-112
    80006ee8:	06813023          	sd	s0,96(sp)
    80006eec:	04913c23          	sd	s1,88(sp)
    80006ef0:	05213823          	sd	s2,80(sp)
    80006ef4:	05313423          	sd	s3,72(sp)
    80006ef8:	05413023          	sd	s4,64(sp)
    80006efc:	03513c23          	sd	s5,56(sp)
    80006f00:	03613823          	sd	s6,48(sp)
    80006f04:	03713423          	sd	s7,40(sp)
    80006f08:	03813023          	sd	s8,32(sp)
    80006f0c:	06113423          	sd	ra,104(sp)
    80006f10:	01913c23          	sd	s9,24(sp)
    80006f14:	07010413          	addi	s0,sp,112
    80006f18:	00060b93          	mv	s7,a2
    80006f1c:	00050913          	mv	s2,a0
    80006f20:	00058c13          	mv	s8,a1
    80006f24:	00060b1b          	sext.w	s6,a2
    80006f28:	00006497          	auipc	s1,0x6
    80006f2c:	84048493          	addi	s1,s1,-1984 # 8000c768 <cons>
    80006f30:	00400993          	li	s3,4
    80006f34:	fff00a13          	li	s4,-1
    80006f38:	00a00a93          	li	s5,10
    80006f3c:	05705e63          	blez	s7,80006f98 <consoleread+0xb4>
    80006f40:	09c4a703          	lw	a4,156(s1)
    80006f44:	0984a783          	lw	a5,152(s1)
    80006f48:	0007071b          	sext.w	a4,a4
    80006f4c:	08e78463          	beq	a5,a4,80006fd4 <consoleread+0xf0>
    80006f50:	07f7f713          	andi	a4,a5,127
    80006f54:	00e48733          	add	a4,s1,a4
    80006f58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006f5c:	0017869b          	addiw	a3,a5,1
    80006f60:	08d4ac23          	sw	a3,152(s1)
    80006f64:	00070c9b          	sext.w	s9,a4
    80006f68:	0b370663          	beq	a4,s3,80007014 <consoleread+0x130>
    80006f6c:	00100693          	li	a3,1
    80006f70:	f9f40613          	addi	a2,s0,-97
    80006f74:	000c0593          	mv	a1,s8
    80006f78:	00090513          	mv	a0,s2
    80006f7c:	f8e40fa3          	sb	a4,-97(s0)
    80006f80:	00000097          	auipc	ra,0x0
    80006f84:	8b4080e7          	jalr	-1868(ra) # 80006834 <either_copyout>
    80006f88:	01450863          	beq	a0,s4,80006f98 <consoleread+0xb4>
    80006f8c:	001c0c13          	addi	s8,s8,1
    80006f90:	fffb8b9b          	addiw	s7,s7,-1
    80006f94:	fb5c94e3          	bne	s9,s5,80006f3c <consoleread+0x58>
    80006f98:	000b851b          	sext.w	a0,s7
    80006f9c:	06813083          	ld	ra,104(sp)
    80006fa0:	06013403          	ld	s0,96(sp)
    80006fa4:	05813483          	ld	s1,88(sp)
    80006fa8:	05013903          	ld	s2,80(sp)
    80006fac:	04813983          	ld	s3,72(sp)
    80006fb0:	04013a03          	ld	s4,64(sp)
    80006fb4:	03813a83          	ld	s5,56(sp)
    80006fb8:	02813b83          	ld	s7,40(sp)
    80006fbc:	02013c03          	ld	s8,32(sp)
    80006fc0:	01813c83          	ld	s9,24(sp)
    80006fc4:	40ab053b          	subw	a0,s6,a0
    80006fc8:	03013b03          	ld	s6,48(sp)
    80006fcc:	07010113          	addi	sp,sp,112
    80006fd0:	00008067          	ret
    80006fd4:	00001097          	auipc	ra,0x1
    80006fd8:	1d8080e7          	jalr	472(ra) # 800081ac <push_on>
    80006fdc:	0984a703          	lw	a4,152(s1)
    80006fe0:	09c4a783          	lw	a5,156(s1)
    80006fe4:	0007879b          	sext.w	a5,a5
    80006fe8:	fef70ce3          	beq	a4,a5,80006fe0 <consoleread+0xfc>
    80006fec:	00001097          	auipc	ra,0x1
    80006ff0:	234080e7          	jalr	564(ra) # 80008220 <pop_on>
    80006ff4:	0984a783          	lw	a5,152(s1)
    80006ff8:	07f7f713          	andi	a4,a5,127
    80006ffc:	00e48733          	add	a4,s1,a4
    80007000:	01874703          	lbu	a4,24(a4)
    80007004:	0017869b          	addiw	a3,a5,1
    80007008:	08d4ac23          	sw	a3,152(s1)
    8000700c:	00070c9b          	sext.w	s9,a4
    80007010:	f5371ee3          	bne	a4,s3,80006f6c <consoleread+0x88>
    80007014:	000b851b          	sext.w	a0,s7
    80007018:	f96bf2e3          	bgeu	s7,s6,80006f9c <consoleread+0xb8>
    8000701c:	08f4ac23          	sw	a5,152(s1)
    80007020:	f7dff06f          	j	80006f9c <consoleread+0xb8>

0000000080007024 <consputc>:
    80007024:	10000793          	li	a5,256
    80007028:	00f50663          	beq	a0,a5,80007034 <consputc+0x10>
    8000702c:	00001317          	auipc	t1,0x1
    80007030:	9f430067          	jr	-1548(t1) # 80007a20 <uartputc_sync>
    80007034:	ff010113          	addi	sp,sp,-16
    80007038:	00113423          	sd	ra,8(sp)
    8000703c:	00813023          	sd	s0,0(sp)
    80007040:	01010413          	addi	s0,sp,16
    80007044:	00800513          	li	a0,8
    80007048:	00001097          	auipc	ra,0x1
    8000704c:	9d8080e7          	jalr	-1576(ra) # 80007a20 <uartputc_sync>
    80007050:	02000513          	li	a0,32
    80007054:	00001097          	auipc	ra,0x1
    80007058:	9cc080e7          	jalr	-1588(ra) # 80007a20 <uartputc_sync>
    8000705c:	00013403          	ld	s0,0(sp)
    80007060:	00813083          	ld	ra,8(sp)
    80007064:	00800513          	li	a0,8
    80007068:	01010113          	addi	sp,sp,16
    8000706c:	00001317          	auipc	t1,0x1
    80007070:	9b430067          	jr	-1612(t1) # 80007a20 <uartputc_sync>

0000000080007074 <consoleintr>:
    80007074:	fe010113          	addi	sp,sp,-32
    80007078:	00813823          	sd	s0,16(sp)
    8000707c:	00913423          	sd	s1,8(sp)
    80007080:	01213023          	sd	s2,0(sp)
    80007084:	00113c23          	sd	ra,24(sp)
    80007088:	02010413          	addi	s0,sp,32
    8000708c:	00005917          	auipc	s2,0x5
    80007090:	6dc90913          	addi	s2,s2,1756 # 8000c768 <cons>
    80007094:	00050493          	mv	s1,a0
    80007098:	00090513          	mv	a0,s2
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	e40080e7          	jalr	-448(ra) # 80007edc <acquire>
    800070a4:	02048c63          	beqz	s1,800070dc <consoleintr+0x68>
    800070a8:	0a092783          	lw	a5,160(s2)
    800070ac:	09892703          	lw	a4,152(s2)
    800070b0:	07f00693          	li	a3,127
    800070b4:	40e7873b          	subw	a4,a5,a4
    800070b8:	02e6e263          	bltu	a3,a4,800070dc <consoleintr+0x68>
    800070bc:	00d00713          	li	a4,13
    800070c0:	04e48063          	beq	s1,a4,80007100 <consoleintr+0x8c>
    800070c4:	07f7f713          	andi	a4,a5,127
    800070c8:	00e90733          	add	a4,s2,a4
    800070cc:	0017879b          	addiw	a5,a5,1
    800070d0:	0af92023          	sw	a5,160(s2)
    800070d4:	00970c23          	sb	s1,24(a4)
    800070d8:	08f92e23          	sw	a5,156(s2)
    800070dc:	01013403          	ld	s0,16(sp)
    800070e0:	01813083          	ld	ra,24(sp)
    800070e4:	00813483          	ld	s1,8(sp)
    800070e8:	00013903          	ld	s2,0(sp)
    800070ec:	00005517          	auipc	a0,0x5
    800070f0:	67c50513          	addi	a0,a0,1660 # 8000c768 <cons>
    800070f4:	02010113          	addi	sp,sp,32
    800070f8:	00001317          	auipc	t1,0x1
    800070fc:	eb030067          	jr	-336(t1) # 80007fa8 <release>
    80007100:	00a00493          	li	s1,10
    80007104:	fc1ff06f          	j	800070c4 <consoleintr+0x50>

0000000080007108 <consoleinit>:
    80007108:	fe010113          	addi	sp,sp,-32
    8000710c:	00113c23          	sd	ra,24(sp)
    80007110:	00813823          	sd	s0,16(sp)
    80007114:	00913423          	sd	s1,8(sp)
    80007118:	02010413          	addi	s0,sp,32
    8000711c:	00005497          	auipc	s1,0x5
    80007120:	64c48493          	addi	s1,s1,1612 # 8000c768 <cons>
    80007124:	00048513          	mv	a0,s1
    80007128:	00002597          	auipc	a1,0x2
    8000712c:	60058593          	addi	a1,a1,1536 # 80009728 <CONSOLE_STATUS+0x718>
    80007130:	00001097          	auipc	ra,0x1
    80007134:	d88080e7          	jalr	-632(ra) # 80007eb8 <initlock>
    80007138:	00000097          	auipc	ra,0x0
    8000713c:	7ac080e7          	jalr	1964(ra) # 800078e4 <uartinit>
    80007140:	01813083          	ld	ra,24(sp)
    80007144:	01013403          	ld	s0,16(sp)
    80007148:	00000797          	auipc	a5,0x0
    8000714c:	d9c78793          	addi	a5,a5,-612 # 80006ee4 <consoleread>
    80007150:	0af4bc23          	sd	a5,184(s1)
    80007154:	00000797          	auipc	a5,0x0
    80007158:	cec78793          	addi	a5,a5,-788 # 80006e40 <consolewrite>
    8000715c:	0cf4b023          	sd	a5,192(s1)
    80007160:	00813483          	ld	s1,8(sp)
    80007164:	02010113          	addi	sp,sp,32
    80007168:	00008067          	ret

000000008000716c <console_read>:
    8000716c:	ff010113          	addi	sp,sp,-16
    80007170:	00813423          	sd	s0,8(sp)
    80007174:	01010413          	addi	s0,sp,16
    80007178:	00813403          	ld	s0,8(sp)
    8000717c:	00005317          	auipc	t1,0x5
    80007180:	6a433303          	ld	t1,1700(t1) # 8000c820 <devsw+0x10>
    80007184:	01010113          	addi	sp,sp,16
    80007188:	00030067          	jr	t1

000000008000718c <console_write>:
    8000718c:	ff010113          	addi	sp,sp,-16
    80007190:	00813423          	sd	s0,8(sp)
    80007194:	01010413          	addi	s0,sp,16
    80007198:	00813403          	ld	s0,8(sp)
    8000719c:	00005317          	auipc	t1,0x5
    800071a0:	68c33303          	ld	t1,1676(t1) # 8000c828 <devsw+0x18>
    800071a4:	01010113          	addi	sp,sp,16
    800071a8:	00030067          	jr	t1

00000000800071ac <panic>:
    800071ac:	fe010113          	addi	sp,sp,-32
    800071b0:	00113c23          	sd	ra,24(sp)
    800071b4:	00813823          	sd	s0,16(sp)
    800071b8:	00913423          	sd	s1,8(sp)
    800071bc:	02010413          	addi	s0,sp,32
    800071c0:	00050493          	mv	s1,a0
    800071c4:	00002517          	auipc	a0,0x2
    800071c8:	56c50513          	addi	a0,a0,1388 # 80009730 <CONSOLE_STATUS+0x720>
    800071cc:	00005797          	auipc	a5,0x5
    800071d0:	6e07ae23          	sw	zero,1788(a5) # 8000c8c8 <pr+0x18>
    800071d4:	00000097          	auipc	ra,0x0
    800071d8:	034080e7          	jalr	52(ra) # 80007208 <__printf>
    800071dc:	00048513          	mv	a0,s1
    800071e0:	00000097          	auipc	ra,0x0
    800071e4:	028080e7          	jalr	40(ra) # 80007208 <__printf>
    800071e8:	00002517          	auipc	a0,0x2
    800071ec:	34050513          	addi	a0,a0,832 # 80009528 <CONSOLE_STATUS+0x518>
    800071f0:	00000097          	auipc	ra,0x0
    800071f4:	018080e7          	jalr	24(ra) # 80007208 <__printf>
    800071f8:	00100793          	li	a5,1
    800071fc:	00004717          	auipc	a4,0x4
    80007200:	3cf72e23          	sw	a5,988(a4) # 8000b5d8 <panicked>
    80007204:	0000006f          	j	80007204 <panic+0x58>

0000000080007208 <__printf>:
    80007208:	f3010113          	addi	sp,sp,-208
    8000720c:	08813023          	sd	s0,128(sp)
    80007210:	07313423          	sd	s3,104(sp)
    80007214:	09010413          	addi	s0,sp,144
    80007218:	05813023          	sd	s8,64(sp)
    8000721c:	08113423          	sd	ra,136(sp)
    80007220:	06913c23          	sd	s1,120(sp)
    80007224:	07213823          	sd	s2,112(sp)
    80007228:	07413023          	sd	s4,96(sp)
    8000722c:	05513c23          	sd	s5,88(sp)
    80007230:	05613823          	sd	s6,80(sp)
    80007234:	05713423          	sd	s7,72(sp)
    80007238:	03913c23          	sd	s9,56(sp)
    8000723c:	03a13823          	sd	s10,48(sp)
    80007240:	03b13423          	sd	s11,40(sp)
    80007244:	00005317          	auipc	t1,0x5
    80007248:	66c30313          	addi	t1,t1,1644 # 8000c8b0 <pr>
    8000724c:	01832c03          	lw	s8,24(t1)
    80007250:	00b43423          	sd	a1,8(s0)
    80007254:	00c43823          	sd	a2,16(s0)
    80007258:	00d43c23          	sd	a3,24(s0)
    8000725c:	02e43023          	sd	a4,32(s0)
    80007260:	02f43423          	sd	a5,40(s0)
    80007264:	03043823          	sd	a6,48(s0)
    80007268:	03143c23          	sd	a7,56(s0)
    8000726c:	00050993          	mv	s3,a0
    80007270:	4a0c1663          	bnez	s8,8000771c <__printf+0x514>
    80007274:	60098c63          	beqz	s3,8000788c <__printf+0x684>
    80007278:	0009c503          	lbu	a0,0(s3)
    8000727c:	00840793          	addi	a5,s0,8
    80007280:	f6f43c23          	sd	a5,-136(s0)
    80007284:	00000493          	li	s1,0
    80007288:	22050063          	beqz	a0,800074a8 <__printf+0x2a0>
    8000728c:	00002a37          	lui	s4,0x2
    80007290:	00018ab7          	lui	s5,0x18
    80007294:	000f4b37          	lui	s6,0xf4
    80007298:	00989bb7          	lui	s7,0x989
    8000729c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800072a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800072a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800072a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800072ac:	00148c9b          	addiw	s9,s1,1
    800072b0:	02500793          	li	a5,37
    800072b4:	01998933          	add	s2,s3,s9
    800072b8:	38f51263          	bne	a0,a5,8000763c <__printf+0x434>
    800072bc:	00094783          	lbu	a5,0(s2)
    800072c0:	00078c9b          	sext.w	s9,a5
    800072c4:	1e078263          	beqz	a5,800074a8 <__printf+0x2a0>
    800072c8:	0024849b          	addiw	s1,s1,2
    800072cc:	07000713          	li	a4,112
    800072d0:	00998933          	add	s2,s3,s1
    800072d4:	38e78a63          	beq	a5,a4,80007668 <__printf+0x460>
    800072d8:	20f76863          	bltu	a4,a5,800074e8 <__printf+0x2e0>
    800072dc:	42a78863          	beq	a5,a0,8000770c <__printf+0x504>
    800072e0:	06400713          	li	a4,100
    800072e4:	40e79663          	bne	a5,a4,800076f0 <__printf+0x4e8>
    800072e8:	f7843783          	ld	a5,-136(s0)
    800072ec:	0007a603          	lw	a2,0(a5)
    800072f0:	00878793          	addi	a5,a5,8
    800072f4:	f6f43c23          	sd	a5,-136(s0)
    800072f8:	42064a63          	bltz	a2,8000772c <__printf+0x524>
    800072fc:	00a00713          	li	a4,10
    80007300:	02e677bb          	remuw	a5,a2,a4
    80007304:	00002d97          	auipc	s11,0x2
    80007308:	454d8d93          	addi	s11,s11,1108 # 80009758 <digits>
    8000730c:	00900593          	li	a1,9
    80007310:	0006051b          	sext.w	a0,a2
    80007314:	00000c93          	li	s9,0
    80007318:	02079793          	slli	a5,a5,0x20
    8000731c:	0207d793          	srli	a5,a5,0x20
    80007320:	00fd87b3          	add	a5,s11,a5
    80007324:	0007c783          	lbu	a5,0(a5)
    80007328:	02e656bb          	divuw	a3,a2,a4
    8000732c:	f8f40023          	sb	a5,-128(s0)
    80007330:	14c5d863          	bge	a1,a2,80007480 <__printf+0x278>
    80007334:	06300593          	li	a1,99
    80007338:	00100c93          	li	s9,1
    8000733c:	02e6f7bb          	remuw	a5,a3,a4
    80007340:	02079793          	slli	a5,a5,0x20
    80007344:	0207d793          	srli	a5,a5,0x20
    80007348:	00fd87b3          	add	a5,s11,a5
    8000734c:	0007c783          	lbu	a5,0(a5)
    80007350:	02e6d73b          	divuw	a4,a3,a4
    80007354:	f8f400a3          	sb	a5,-127(s0)
    80007358:	12a5f463          	bgeu	a1,a0,80007480 <__printf+0x278>
    8000735c:	00a00693          	li	a3,10
    80007360:	00900593          	li	a1,9
    80007364:	02d777bb          	remuw	a5,a4,a3
    80007368:	02079793          	slli	a5,a5,0x20
    8000736c:	0207d793          	srli	a5,a5,0x20
    80007370:	00fd87b3          	add	a5,s11,a5
    80007374:	0007c503          	lbu	a0,0(a5)
    80007378:	02d757bb          	divuw	a5,a4,a3
    8000737c:	f8a40123          	sb	a0,-126(s0)
    80007380:	48e5f263          	bgeu	a1,a4,80007804 <__printf+0x5fc>
    80007384:	06300513          	li	a0,99
    80007388:	02d7f5bb          	remuw	a1,a5,a3
    8000738c:	02059593          	slli	a1,a1,0x20
    80007390:	0205d593          	srli	a1,a1,0x20
    80007394:	00bd85b3          	add	a1,s11,a1
    80007398:	0005c583          	lbu	a1,0(a1)
    8000739c:	02d7d7bb          	divuw	a5,a5,a3
    800073a0:	f8b401a3          	sb	a1,-125(s0)
    800073a4:	48e57263          	bgeu	a0,a4,80007828 <__printf+0x620>
    800073a8:	3e700513          	li	a0,999
    800073ac:	02d7f5bb          	remuw	a1,a5,a3
    800073b0:	02059593          	slli	a1,a1,0x20
    800073b4:	0205d593          	srli	a1,a1,0x20
    800073b8:	00bd85b3          	add	a1,s11,a1
    800073bc:	0005c583          	lbu	a1,0(a1)
    800073c0:	02d7d7bb          	divuw	a5,a5,a3
    800073c4:	f8b40223          	sb	a1,-124(s0)
    800073c8:	46e57663          	bgeu	a0,a4,80007834 <__printf+0x62c>
    800073cc:	02d7f5bb          	remuw	a1,a5,a3
    800073d0:	02059593          	slli	a1,a1,0x20
    800073d4:	0205d593          	srli	a1,a1,0x20
    800073d8:	00bd85b3          	add	a1,s11,a1
    800073dc:	0005c583          	lbu	a1,0(a1)
    800073e0:	02d7d7bb          	divuw	a5,a5,a3
    800073e4:	f8b402a3          	sb	a1,-123(s0)
    800073e8:	46ea7863          	bgeu	s4,a4,80007858 <__printf+0x650>
    800073ec:	02d7f5bb          	remuw	a1,a5,a3
    800073f0:	02059593          	slli	a1,a1,0x20
    800073f4:	0205d593          	srli	a1,a1,0x20
    800073f8:	00bd85b3          	add	a1,s11,a1
    800073fc:	0005c583          	lbu	a1,0(a1)
    80007400:	02d7d7bb          	divuw	a5,a5,a3
    80007404:	f8b40323          	sb	a1,-122(s0)
    80007408:	3eeaf863          	bgeu	s5,a4,800077f8 <__printf+0x5f0>
    8000740c:	02d7f5bb          	remuw	a1,a5,a3
    80007410:	02059593          	slli	a1,a1,0x20
    80007414:	0205d593          	srli	a1,a1,0x20
    80007418:	00bd85b3          	add	a1,s11,a1
    8000741c:	0005c583          	lbu	a1,0(a1)
    80007420:	02d7d7bb          	divuw	a5,a5,a3
    80007424:	f8b403a3          	sb	a1,-121(s0)
    80007428:	42eb7e63          	bgeu	s6,a4,80007864 <__printf+0x65c>
    8000742c:	02d7f5bb          	remuw	a1,a5,a3
    80007430:	02059593          	slli	a1,a1,0x20
    80007434:	0205d593          	srli	a1,a1,0x20
    80007438:	00bd85b3          	add	a1,s11,a1
    8000743c:	0005c583          	lbu	a1,0(a1)
    80007440:	02d7d7bb          	divuw	a5,a5,a3
    80007444:	f8b40423          	sb	a1,-120(s0)
    80007448:	42ebfc63          	bgeu	s7,a4,80007880 <__printf+0x678>
    8000744c:	02079793          	slli	a5,a5,0x20
    80007450:	0207d793          	srli	a5,a5,0x20
    80007454:	00fd8db3          	add	s11,s11,a5
    80007458:	000dc703          	lbu	a4,0(s11)
    8000745c:	00a00793          	li	a5,10
    80007460:	00900c93          	li	s9,9
    80007464:	f8e404a3          	sb	a4,-119(s0)
    80007468:	00065c63          	bgez	a2,80007480 <__printf+0x278>
    8000746c:	f9040713          	addi	a4,s0,-112
    80007470:	00f70733          	add	a4,a4,a5
    80007474:	02d00693          	li	a3,45
    80007478:	fed70823          	sb	a3,-16(a4)
    8000747c:	00078c93          	mv	s9,a5
    80007480:	f8040793          	addi	a5,s0,-128
    80007484:	01978cb3          	add	s9,a5,s9
    80007488:	f7f40d13          	addi	s10,s0,-129
    8000748c:	000cc503          	lbu	a0,0(s9)
    80007490:	fffc8c93          	addi	s9,s9,-1
    80007494:	00000097          	auipc	ra,0x0
    80007498:	b90080e7          	jalr	-1136(ra) # 80007024 <consputc>
    8000749c:	ffac98e3          	bne	s9,s10,8000748c <__printf+0x284>
    800074a0:	00094503          	lbu	a0,0(s2)
    800074a4:	e00514e3          	bnez	a0,800072ac <__printf+0xa4>
    800074a8:	1a0c1663          	bnez	s8,80007654 <__printf+0x44c>
    800074ac:	08813083          	ld	ra,136(sp)
    800074b0:	08013403          	ld	s0,128(sp)
    800074b4:	07813483          	ld	s1,120(sp)
    800074b8:	07013903          	ld	s2,112(sp)
    800074bc:	06813983          	ld	s3,104(sp)
    800074c0:	06013a03          	ld	s4,96(sp)
    800074c4:	05813a83          	ld	s5,88(sp)
    800074c8:	05013b03          	ld	s6,80(sp)
    800074cc:	04813b83          	ld	s7,72(sp)
    800074d0:	04013c03          	ld	s8,64(sp)
    800074d4:	03813c83          	ld	s9,56(sp)
    800074d8:	03013d03          	ld	s10,48(sp)
    800074dc:	02813d83          	ld	s11,40(sp)
    800074e0:	0d010113          	addi	sp,sp,208
    800074e4:	00008067          	ret
    800074e8:	07300713          	li	a4,115
    800074ec:	1ce78a63          	beq	a5,a4,800076c0 <__printf+0x4b8>
    800074f0:	07800713          	li	a4,120
    800074f4:	1ee79e63          	bne	a5,a4,800076f0 <__printf+0x4e8>
    800074f8:	f7843783          	ld	a5,-136(s0)
    800074fc:	0007a703          	lw	a4,0(a5)
    80007500:	00878793          	addi	a5,a5,8
    80007504:	f6f43c23          	sd	a5,-136(s0)
    80007508:	28074263          	bltz	a4,8000778c <__printf+0x584>
    8000750c:	00002d97          	auipc	s11,0x2
    80007510:	24cd8d93          	addi	s11,s11,588 # 80009758 <digits>
    80007514:	00f77793          	andi	a5,a4,15
    80007518:	00fd87b3          	add	a5,s11,a5
    8000751c:	0007c683          	lbu	a3,0(a5)
    80007520:	00f00613          	li	a2,15
    80007524:	0007079b          	sext.w	a5,a4
    80007528:	f8d40023          	sb	a3,-128(s0)
    8000752c:	0047559b          	srliw	a1,a4,0x4
    80007530:	0047569b          	srliw	a3,a4,0x4
    80007534:	00000c93          	li	s9,0
    80007538:	0ee65063          	bge	a2,a4,80007618 <__printf+0x410>
    8000753c:	00f6f693          	andi	a3,a3,15
    80007540:	00dd86b3          	add	a3,s11,a3
    80007544:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007548:	0087d79b          	srliw	a5,a5,0x8
    8000754c:	00100c93          	li	s9,1
    80007550:	f8d400a3          	sb	a3,-127(s0)
    80007554:	0cb67263          	bgeu	a2,a1,80007618 <__printf+0x410>
    80007558:	00f7f693          	andi	a3,a5,15
    8000755c:	00dd86b3          	add	a3,s11,a3
    80007560:	0006c583          	lbu	a1,0(a3)
    80007564:	00f00613          	li	a2,15
    80007568:	0047d69b          	srliw	a3,a5,0x4
    8000756c:	f8b40123          	sb	a1,-126(s0)
    80007570:	0047d593          	srli	a1,a5,0x4
    80007574:	28f67e63          	bgeu	a2,a5,80007810 <__printf+0x608>
    80007578:	00f6f693          	andi	a3,a3,15
    8000757c:	00dd86b3          	add	a3,s11,a3
    80007580:	0006c503          	lbu	a0,0(a3)
    80007584:	0087d813          	srli	a6,a5,0x8
    80007588:	0087d69b          	srliw	a3,a5,0x8
    8000758c:	f8a401a3          	sb	a0,-125(s0)
    80007590:	28b67663          	bgeu	a2,a1,8000781c <__printf+0x614>
    80007594:	00f6f693          	andi	a3,a3,15
    80007598:	00dd86b3          	add	a3,s11,a3
    8000759c:	0006c583          	lbu	a1,0(a3)
    800075a0:	00c7d513          	srli	a0,a5,0xc
    800075a4:	00c7d69b          	srliw	a3,a5,0xc
    800075a8:	f8b40223          	sb	a1,-124(s0)
    800075ac:	29067a63          	bgeu	a2,a6,80007840 <__printf+0x638>
    800075b0:	00f6f693          	andi	a3,a3,15
    800075b4:	00dd86b3          	add	a3,s11,a3
    800075b8:	0006c583          	lbu	a1,0(a3)
    800075bc:	0107d813          	srli	a6,a5,0x10
    800075c0:	0107d69b          	srliw	a3,a5,0x10
    800075c4:	f8b402a3          	sb	a1,-123(s0)
    800075c8:	28a67263          	bgeu	a2,a0,8000784c <__printf+0x644>
    800075cc:	00f6f693          	andi	a3,a3,15
    800075d0:	00dd86b3          	add	a3,s11,a3
    800075d4:	0006c683          	lbu	a3,0(a3)
    800075d8:	0147d79b          	srliw	a5,a5,0x14
    800075dc:	f8d40323          	sb	a3,-122(s0)
    800075e0:	21067663          	bgeu	a2,a6,800077ec <__printf+0x5e4>
    800075e4:	02079793          	slli	a5,a5,0x20
    800075e8:	0207d793          	srli	a5,a5,0x20
    800075ec:	00fd8db3          	add	s11,s11,a5
    800075f0:	000dc683          	lbu	a3,0(s11)
    800075f4:	00800793          	li	a5,8
    800075f8:	00700c93          	li	s9,7
    800075fc:	f8d403a3          	sb	a3,-121(s0)
    80007600:	00075c63          	bgez	a4,80007618 <__printf+0x410>
    80007604:	f9040713          	addi	a4,s0,-112
    80007608:	00f70733          	add	a4,a4,a5
    8000760c:	02d00693          	li	a3,45
    80007610:	fed70823          	sb	a3,-16(a4)
    80007614:	00078c93          	mv	s9,a5
    80007618:	f8040793          	addi	a5,s0,-128
    8000761c:	01978cb3          	add	s9,a5,s9
    80007620:	f7f40d13          	addi	s10,s0,-129
    80007624:	000cc503          	lbu	a0,0(s9)
    80007628:	fffc8c93          	addi	s9,s9,-1
    8000762c:	00000097          	auipc	ra,0x0
    80007630:	9f8080e7          	jalr	-1544(ra) # 80007024 <consputc>
    80007634:	ff9d18e3          	bne	s10,s9,80007624 <__printf+0x41c>
    80007638:	0100006f          	j	80007648 <__printf+0x440>
    8000763c:	00000097          	auipc	ra,0x0
    80007640:	9e8080e7          	jalr	-1560(ra) # 80007024 <consputc>
    80007644:	000c8493          	mv	s1,s9
    80007648:	00094503          	lbu	a0,0(s2)
    8000764c:	c60510e3          	bnez	a0,800072ac <__printf+0xa4>
    80007650:	e40c0ee3          	beqz	s8,800074ac <__printf+0x2a4>
    80007654:	00005517          	auipc	a0,0x5
    80007658:	25c50513          	addi	a0,a0,604 # 8000c8b0 <pr>
    8000765c:	00001097          	auipc	ra,0x1
    80007660:	94c080e7          	jalr	-1716(ra) # 80007fa8 <release>
    80007664:	e49ff06f          	j	800074ac <__printf+0x2a4>
    80007668:	f7843783          	ld	a5,-136(s0)
    8000766c:	03000513          	li	a0,48
    80007670:	01000d13          	li	s10,16
    80007674:	00878713          	addi	a4,a5,8
    80007678:	0007bc83          	ld	s9,0(a5)
    8000767c:	f6e43c23          	sd	a4,-136(s0)
    80007680:	00000097          	auipc	ra,0x0
    80007684:	9a4080e7          	jalr	-1628(ra) # 80007024 <consputc>
    80007688:	07800513          	li	a0,120
    8000768c:	00000097          	auipc	ra,0x0
    80007690:	998080e7          	jalr	-1640(ra) # 80007024 <consputc>
    80007694:	00002d97          	auipc	s11,0x2
    80007698:	0c4d8d93          	addi	s11,s11,196 # 80009758 <digits>
    8000769c:	03ccd793          	srli	a5,s9,0x3c
    800076a0:	00fd87b3          	add	a5,s11,a5
    800076a4:	0007c503          	lbu	a0,0(a5)
    800076a8:	fffd0d1b          	addiw	s10,s10,-1
    800076ac:	004c9c93          	slli	s9,s9,0x4
    800076b0:	00000097          	auipc	ra,0x0
    800076b4:	974080e7          	jalr	-1676(ra) # 80007024 <consputc>
    800076b8:	fe0d12e3          	bnez	s10,8000769c <__printf+0x494>
    800076bc:	f8dff06f          	j	80007648 <__printf+0x440>
    800076c0:	f7843783          	ld	a5,-136(s0)
    800076c4:	0007bc83          	ld	s9,0(a5)
    800076c8:	00878793          	addi	a5,a5,8
    800076cc:	f6f43c23          	sd	a5,-136(s0)
    800076d0:	000c9a63          	bnez	s9,800076e4 <__printf+0x4dc>
    800076d4:	1080006f          	j	800077dc <__printf+0x5d4>
    800076d8:	001c8c93          	addi	s9,s9,1
    800076dc:	00000097          	auipc	ra,0x0
    800076e0:	948080e7          	jalr	-1720(ra) # 80007024 <consputc>
    800076e4:	000cc503          	lbu	a0,0(s9)
    800076e8:	fe0518e3          	bnez	a0,800076d8 <__printf+0x4d0>
    800076ec:	f5dff06f          	j	80007648 <__printf+0x440>
    800076f0:	02500513          	li	a0,37
    800076f4:	00000097          	auipc	ra,0x0
    800076f8:	930080e7          	jalr	-1744(ra) # 80007024 <consputc>
    800076fc:	000c8513          	mv	a0,s9
    80007700:	00000097          	auipc	ra,0x0
    80007704:	924080e7          	jalr	-1756(ra) # 80007024 <consputc>
    80007708:	f41ff06f          	j	80007648 <__printf+0x440>
    8000770c:	02500513          	li	a0,37
    80007710:	00000097          	auipc	ra,0x0
    80007714:	914080e7          	jalr	-1772(ra) # 80007024 <consputc>
    80007718:	f31ff06f          	j	80007648 <__printf+0x440>
    8000771c:	00030513          	mv	a0,t1
    80007720:	00000097          	auipc	ra,0x0
    80007724:	7bc080e7          	jalr	1980(ra) # 80007edc <acquire>
    80007728:	b4dff06f          	j	80007274 <__printf+0x6c>
    8000772c:	40c0053b          	negw	a0,a2
    80007730:	00a00713          	li	a4,10
    80007734:	02e576bb          	remuw	a3,a0,a4
    80007738:	00002d97          	auipc	s11,0x2
    8000773c:	020d8d93          	addi	s11,s11,32 # 80009758 <digits>
    80007740:	ff700593          	li	a1,-9
    80007744:	02069693          	slli	a3,a3,0x20
    80007748:	0206d693          	srli	a3,a3,0x20
    8000774c:	00dd86b3          	add	a3,s11,a3
    80007750:	0006c683          	lbu	a3,0(a3)
    80007754:	02e557bb          	divuw	a5,a0,a4
    80007758:	f8d40023          	sb	a3,-128(s0)
    8000775c:	10b65e63          	bge	a2,a1,80007878 <__printf+0x670>
    80007760:	06300593          	li	a1,99
    80007764:	02e7f6bb          	remuw	a3,a5,a4
    80007768:	02069693          	slli	a3,a3,0x20
    8000776c:	0206d693          	srli	a3,a3,0x20
    80007770:	00dd86b3          	add	a3,s11,a3
    80007774:	0006c683          	lbu	a3,0(a3)
    80007778:	02e7d73b          	divuw	a4,a5,a4
    8000777c:	00200793          	li	a5,2
    80007780:	f8d400a3          	sb	a3,-127(s0)
    80007784:	bca5ece3          	bltu	a1,a0,8000735c <__printf+0x154>
    80007788:	ce5ff06f          	j	8000746c <__printf+0x264>
    8000778c:	40e007bb          	negw	a5,a4
    80007790:	00002d97          	auipc	s11,0x2
    80007794:	fc8d8d93          	addi	s11,s11,-56 # 80009758 <digits>
    80007798:	00f7f693          	andi	a3,a5,15
    8000779c:	00dd86b3          	add	a3,s11,a3
    800077a0:	0006c583          	lbu	a1,0(a3)
    800077a4:	ff100613          	li	a2,-15
    800077a8:	0047d69b          	srliw	a3,a5,0x4
    800077ac:	f8b40023          	sb	a1,-128(s0)
    800077b0:	0047d59b          	srliw	a1,a5,0x4
    800077b4:	0ac75e63          	bge	a4,a2,80007870 <__printf+0x668>
    800077b8:	00f6f693          	andi	a3,a3,15
    800077bc:	00dd86b3          	add	a3,s11,a3
    800077c0:	0006c603          	lbu	a2,0(a3)
    800077c4:	00f00693          	li	a3,15
    800077c8:	0087d79b          	srliw	a5,a5,0x8
    800077cc:	f8c400a3          	sb	a2,-127(s0)
    800077d0:	d8b6e4e3          	bltu	a3,a1,80007558 <__printf+0x350>
    800077d4:	00200793          	li	a5,2
    800077d8:	e2dff06f          	j	80007604 <__printf+0x3fc>
    800077dc:	00002c97          	auipc	s9,0x2
    800077e0:	f5cc8c93          	addi	s9,s9,-164 # 80009738 <CONSOLE_STATUS+0x728>
    800077e4:	02800513          	li	a0,40
    800077e8:	ef1ff06f          	j	800076d8 <__printf+0x4d0>
    800077ec:	00700793          	li	a5,7
    800077f0:	00600c93          	li	s9,6
    800077f4:	e0dff06f          	j	80007600 <__printf+0x3f8>
    800077f8:	00700793          	li	a5,7
    800077fc:	00600c93          	li	s9,6
    80007800:	c69ff06f          	j	80007468 <__printf+0x260>
    80007804:	00300793          	li	a5,3
    80007808:	00200c93          	li	s9,2
    8000780c:	c5dff06f          	j	80007468 <__printf+0x260>
    80007810:	00300793          	li	a5,3
    80007814:	00200c93          	li	s9,2
    80007818:	de9ff06f          	j	80007600 <__printf+0x3f8>
    8000781c:	00400793          	li	a5,4
    80007820:	00300c93          	li	s9,3
    80007824:	dddff06f          	j	80007600 <__printf+0x3f8>
    80007828:	00400793          	li	a5,4
    8000782c:	00300c93          	li	s9,3
    80007830:	c39ff06f          	j	80007468 <__printf+0x260>
    80007834:	00500793          	li	a5,5
    80007838:	00400c93          	li	s9,4
    8000783c:	c2dff06f          	j	80007468 <__printf+0x260>
    80007840:	00500793          	li	a5,5
    80007844:	00400c93          	li	s9,4
    80007848:	db9ff06f          	j	80007600 <__printf+0x3f8>
    8000784c:	00600793          	li	a5,6
    80007850:	00500c93          	li	s9,5
    80007854:	dadff06f          	j	80007600 <__printf+0x3f8>
    80007858:	00600793          	li	a5,6
    8000785c:	00500c93          	li	s9,5
    80007860:	c09ff06f          	j	80007468 <__printf+0x260>
    80007864:	00800793          	li	a5,8
    80007868:	00700c93          	li	s9,7
    8000786c:	bfdff06f          	j	80007468 <__printf+0x260>
    80007870:	00100793          	li	a5,1
    80007874:	d91ff06f          	j	80007604 <__printf+0x3fc>
    80007878:	00100793          	li	a5,1
    8000787c:	bf1ff06f          	j	8000746c <__printf+0x264>
    80007880:	00900793          	li	a5,9
    80007884:	00800c93          	li	s9,8
    80007888:	be1ff06f          	j	80007468 <__printf+0x260>
    8000788c:	00002517          	auipc	a0,0x2
    80007890:	eb450513          	addi	a0,a0,-332 # 80009740 <CONSOLE_STATUS+0x730>
    80007894:	00000097          	auipc	ra,0x0
    80007898:	918080e7          	jalr	-1768(ra) # 800071ac <panic>

000000008000789c <printfinit>:
    8000789c:	fe010113          	addi	sp,sp,-32
    800078a0:	00813823          	sd	s0,16(sp)
    800078a4:	00913423          	sd	s1,8(sp)
    800078a8:	00113c23          	sd	ra,24(sp)
    800078ac:	02010413          	addi	s0,sp,32
    800078b0:	00005497          	auipc	s1,0x5
    800078b4:	00048493          	mv	s1,s1
    800078b8:	00048513          	mv	a0,s1
    800078bc:	00002597          	auipc	a1,0x2
    800078c0:	e9458593          	addi	a1,a1,-364 # 80009750 <CONSOLE_STATUS+0x740>
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	5f4080e7          	jalr	1524(ra) # 80007eb8 <initlock>
    800078cc:	01813083          	ld	ra,24(sp)
    800078d0:	01013403          	ld	s0,16(sp)
    800078d4:	0004ac23          	sw	zero,24(s1) # 8000c8c8 <pr+0x18>
    800078d8:	00813483          	ld	s1,8(sp)
    800078dc:	02010113          	addi	sp,sp,32
    800078e0:	00008067          	ret

00000000800078e4 <uartinit>:
    800078e4:	ff010113          	addi	sp,sp,-16
    800078e8:	00813423          	sd	s0,8(sp)
    800078ec:	01010413          	addi	s0,sp,16
    800078f0:	100007b7          	lui	a5,0x10000
    800078f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800078f8:	f8000713          	li	a4,-128
    800078fc:	00e781a3          	sb	a4,3(a5)
    80007900:	00300713          	li	a4,3
    80007904:	00e78023          	sb	a4,0(a5)
    80007908:	000780a3          	sb	zero,1(a5)
    8000790c:	00e781a3          	sb	a4,3(a5)
    80007910:	00700693          	li	a3,7
    80007914:	00d78123          	sb	a3,2(a5)
    80007918:	00e780a3          	sb	a4,1(a5)
    8000791c:	00813403          	ld	s0,8(sp)
    80007920:	01010113          	addi	sp,sp,16
    80007924:	00008067          	ret

0000000080007928 <uartputc>:
    80007928:	00004797          	auipc	a5,0x4
    8000792c:	cb07a783          	lw	a5,-848(a5) # 8000b5d8 <panicked>
    80007930:	00078463          	beqz	a5,80007938 <uartputc+0x10>
    80007934:	0000006f          	j	80007934 <uartputc+0xc>
    80007938:	fd010113          	addi	sp,sp,-48
    8000793c:	02813023          	sd	s0,32(sp)
    80007940:	00913c23          	sd	s1,24(sp)
    80007944:	01213823          	sd	s2,16(sp)
    80007948:	01313423          	sd	s3,8(sp)
    8000794c:	02113423          	sd	ra,40(sp)
    80007950:	03010413          	addi	s0,sp,48
    80007954:	00004917          	auipc	s2,0x4
    80007958:	c8c90913          	addi	s2,s2,-884 # 8000b5e0 <uart_tx_r>
    8000795c:	00093783          	ld	a5,0(s2)
    80007960:	00004497          	auipc	s1,0x4
    80007964:	c8848493          	addi	s1,s1,-888 # 8000b5e8 <uart_tx_w>
    80007968:	0004b703          	ld	a4,0(s1)
    8000796c:	02078693          	addi	a3,a5,32
    80007970:	00050993          	mv	s3,a0
    80007974:	02e69c63          	bne	a3,a4,800079ac <uartputc+0x84>
    80007978:	00001097          	auipc	ra,0x1
    8000797c:	834080e7          	jalr	-1996(ra) # 800081ac <push_on>
    80007980:	00093783          	ld	a5,0(s2)
    80007984:	0004b703          	ld	a4,0(s1)
    80007988:	02078793          	addi	a5,a5,32
    8000798c:	00e79463          	bne	a5,a4,80007994 <uartputc+0x6c>
    80007990:	0000006f          	j	80007990 <uartputc+0x68>
    80007994:	00001097          	auipc	ra,0x1
    80007998:	88c080e7          	jalr	-1908(ra) # 80008220 <pop_on>
    8000799c:	00093783          	ld	a5,0(s2)
    800079a0:	0004b703          	ld	a4,0(s1)
    800079a4:	02078693          	addi	a3,a5,32
    800079a8:	fce688e3          	beq	a3,a4,80007978 <uartputc+0x50>
    800079ac:	01f77693          	andi	a3,a4,31
    800079b0:	00005597          	auipc	a1,0x5
    800079b4:	f2058593          	addi	a1,a1,-224 # 8000c8d0 <uart_tx_buf>
    800079b8:	00d586b3          	add	a3,a1,a3
    800079bc:	00170713          	addi	a4,a4,1
    800079c0:	01368023          	sb	s3,0(a3)
    800079c4:	00e4b023          	sd	a4,0(s1)
    800079c8:	10000637          	lui	a2,0x10000
    800079cc:	02f71063          	bne	a4,a5,800079ec <uartputc+0xc4>
    800079d0:	0340006f          	j	80007a04 <uartputc+0xdc>
    800079d4:	00074703          	lbu	a4,0(a4)
    800079d8:	00f93023          	sd	a5,0(s2)
    800079dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800079e0:	00093783          	ld	a5,0(s2)
    800079e4:	0004b703          	ld	a4,0(s1)
    800079e8:	00f70e63          	beq	a4,a5,80007a04 <uartputc+0xdc>
    800079ec:	00564683          	lbu	a3,5(a2)
    800079f0:	01f7f713          	andi	a4,a5,31
    800079f4:	00e58733          	add	a4,a1,a4
    800079f8:	0206f693          	andi	a3,a3,32
    800079fc:	00178793          	addi	a5,a5,1
    80007a00:	fc069ae3          	bnez	a3,800079d4 <uartputc+0xac>
    80007a04:	02813083          	ld	ra,40(sp)
    80007a08:	02013403          	ld	s0,32(sp)
    80007a0c:	01813483          	ld	s1,24(sp)
    80007a10:	01013903          	ld	s2,16(sp)
    80007a14:	00813983          	ld	s3,8(sp)
    80007a18:	03010113          	addi	sp,sp,48
    80007a1c:	00008067          	ret

0000000080007a20 <uartputc_sync>:
    80007a20:	ff010113          	addi	sp,sp,-16
    80007a24:	00813423          	sd	s0,8(sp)
    80007a28:	01010413          	addi	s0,sp,16
    80007a2c:	00004717          	auipc	a4,0x4
    80007a30:	bac72703          	lw	a4,-1108(a4) # 8000b5d8 <panicked>
    80007a34:	02071663          	bnez	a4,80007a60 <uartputc_sync+0x40>
    80007a38:	00050793          	mv	a5,a0
    80007a3c:	100006b7          	lui	a3,0x10000
    80007a40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007a44:	02077713          	andi	a4,a4,32
    80007a48:	fe070ce3          	beqz	a4,80007a40 <uartputc_sync+0x20>
    80007a4c:	0ff7f793          	andi	a5,a5,255
    80007a50:	00f68023          	sb	a5,0(a3)
    80007a54:	00813403          	ld	s0,8(sp)
    80007a58:	01010113          	addi	sp,sp,16
    80007a5c:	00008067          	ret
    80007a60:	0000006f          	j	80007a60 <uartputc_sync+0x40>

0000000080007a64 <uartstart>:
    80007a64:	ff010113          	addi	sp,sp,-16
    80007a68:	00813423          	sd	s0,8(sp)
    80007a6c:	01010413          	addi	s0,sp,16
    80007a70:	00004617          	auipc	a2,0x4
    80007a74:	b7060613          	addi	a2,a2,-1168 # 8000b5e0 <uart_tx_r>
    80007a78:	00004517          	auipc	a0,0x4
    80007a7c:	b7050513          	addi	a0,a0,-1168 # 8000b5e8 <uart_tx_w>
    80007a80:	00063783          	ld	a5,0(a2)
    80007a84:	00053703          	ld	a4,0(a0)
    80007a88:	04f70263          	beq	a4,a5,80007acc <uartstart+0x68>
    80007a8c:	100005b7          	lui	a1,0x10000
    80007a90:	00005817          	auipc	a6,0x5
    80007a94:	e4080813          	addi	a6,a6,-448 # 8000c8d0 <uart_tx_buf>
    80007a98:	01c0006f          	j	80007ab4 <uartstart+0x50>
    80007a9c:	0006c703          	lbu	a4,0(a3)
    80007aa0:	00f63023          	sd	a5,0(a2)
    80007aa4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007aa8:	00063783          	ld	a5,0(a2)
    80007aac:	00053703          	ld	a4,0(a0)
    80007ab0:	00f70e63          	beq	a4,a5,80007acc <uartstart+0x68>
    80007ab4:	01f7f713          	andi	a4,a5,31
    80007ab8:	00e806b3          	add	a3,a6,a4
    80007abc:	0055c703          	lbu	a4,5(a1)
    80007ac0:	00178793          	addi	a5,a5,1
    80007ac4:	02077713          	andi	a4,a4,32
    80007ac8:	fc071ae3          	bnez	a4,80007a9c <uartstart+0x38>
    80007acc:	00813403          	ld	s0,8(sp)
    80007ad0:	01010113          	addi	sp,sp,16
    80007ad4:	00008067          	ret

0000000080007ad8 <uartgetc>:
    80007ad8:	ff010113          	addi	sp,sp,-16
    80007adc:	00813423          	sd	s0,8(sp)
    80007ae0:	01010413          	addi	s0,sp,16
    80007ae4:	10000737          	lui	a4,0x10000
    80007ae8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007aec:	0017f793          	andi	a5,a5,1
    80007af0:	00078c63          	beqz	a5,80007b08 <uartgetc+0x30>
    80007af4:	00074503          	lbu	a0,0(a4)
    80007af8:	0ff57513          	andi	a0,a0,255
    80007afc:	00813403          	ld	s0,8(sp)
    80007b00:	01010113          	addi	sp,sp,16
    80007b04:	00008067          	ret
    80007b08:	fff00513          	li	a0,-1
    80007b0c:	ff1ff06f          	j	80007afc <uartgetc+0x24>

0000000080007b10 <uartintr>:
    80007b10:	100007b7          	lui	a5,0x10000
    80007b14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007b18:	0017f793          	andi	a5,a5,1
    80007b1c:	0a078463          	beqz	a5,80007bc4 <uartintr+0xb4>
    80007b20:	fe010113          	addi	sp,sp,-32
    80007b24:	00813823          	sd	s0,16(sp)
    80007b28:	00913423          	sd	s1,8(sp)
    80007b2c:	00113c23          	sd	ra,24(sp)
    80007b30:	02010413          	addi	s0,sp,32
    80007b34:	100004b7          	lui	s1,0x10000
    80007b38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007b3c:	0ff57513          	andi	a0,a0,255
    80007b40:	fffff097          	auipc	ra,0xfffff
    80007b44:	534080e7          	jalr	1332(ra) # 80007074 <consoleintr>
    80007b48:	0054c783          	lbu	a5,5(s1)
    80007b4c:	0017f793          	andi	a5,a5,1
    80007b50:	fe0794e3          	bnez	a5,80007b38 <uartintr+0x28>
    80007b54:	00004617          	auipc	a2,0x4
    80007b58:	a8c60613          	addi	a2,a2,-1396 # 8000b5e0 <uart_tx_r>
    80007b5c:	00004517          	auipc	a0,0x4
    80007b60:	a8c50513          	addi	a0,a0,-1396 # 8000b5e8 <uart_tx_w>
    80007b64:	00063783          	ld	a5,0(a2)
    80007b68:	00053703          	ld	a4,0(a0)
    80007b6c:	04f70263          	beq	a4,a5,80007bb0 <uartintr+0xa0>
    80007b70:	100005b7          	lui	a1,0x10000
    80007b74:	00005817          	auipc	a6,0x5
    80007b78:	d5c80813          	addi	a6,a6,-676 # 8000c8d0 <uart_tx_buf>
    80007b7c:	01c0006f          	j	80007b98 <uartintr+0x88>
    80007b80:	0006c703          	lbu	a4,0(a3)
    80007b84:	00f63023          	sd	a5,0(a2)
    80007b88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b8c:	00063783          	ld	a5,0(a2)
    80007b90:	00053703          	ld	a4,0(a0)
    80007b94:	00f70e63          	beq	a4,a5,80007bb0 <uartintr+0xa0>
    80007b98:	01f7f713          	andi	a4,a5,31
    80007b9c:	00e806b3          	add	a3,a6,a4
    80007ba0:	0055c703          	lbu	a4,5(a1)
    80007ba4:	00178793          	addi	a5,a5,1
    80007ba8:	02077713          	andi	a4,a4,32
    80007bac:	fc071ae3          	bnez	a4,80007b80 <uartintr+0x70>
    80007bb0:	01813083          	ld	ra,24(sp)
    80007bb4:	01013403          	ld	s0,16(sp)
    80007bb8:	00813483          	ld	s1,8(sp)
    80007bbc:	02010113          	addi	sp,sp,32
    80007bc0:	00008067          	ret
    80007bc4:	00004617          	auipc	a2,0x4
    80007bc8:	a1c60613          	addi	a2,a2,-1508 # 8000b5e0 <uart_tx_r>
    80007bcc:	00004517          	auipc	a0,0x4
    80007bd0:	a1c50513          	addi	a0,a0,-1508 # 8000b5e8 <uart_tx_w>
    80007bd4:	00063783          	ld	a5,0(a2)
    80007bd8:	00053703          	ld	a4,0(a0)
    80007bdc:	04f70263          	beq	a4,a5,80007c20 <uartintr+0x110>
    80007be0:	100005b7          	lui	a1,0x10000
    80007be4:	00005817          	auipc	a6,0x5
    80007be8:	cec80813          	addi	a6,a6,-788 # 8000c8d0 <uart_tx_buf>
    80007bec:	01c0006f          	j	80007c08 <uartintr+0xf8>
    80007bf0:	0006c703          	lbu	a4,0(a3)
    80007bf4:	00f63023          	sd	a5,0(a2)
    80007bf8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bfc:	00063783          	ld	a5,0(a2)
    80007c00:	00053703          	ld	a4,0(a0)
    80007c04:	02f70063          	beq	a4,a5,80007c24 <uartintr+0x114>
    80007c08:	01f7f713          	andi	a4,a5,31
    80007c0c:	00e806b3          	add	a3,a6,a4
    80007c10:	0055c703          	lbu	a4,5(a1)
    80007c14:	00178793          	addi	a5,a5,1
    80007c18:	02077713          	andi	a4,a4,32
    80007c1c:	fc071ae3          	bnez	a4,80007bf0 <uartintr+0xe0>
    80007c20:	00008067          	ret
    80007c24:	00008067          	ret

0000000080007c28 <kinit>:
    80007c28:	fc010113          	addi	sp,sp,-64
    80007c2c:	02913423          	sd	s1,40(sp)
    80007c30:	fffff7b7          	lui	a5,0xfffff
    80007c34:	00006497          	auipc	s1,0x6
    80007c38:	cbb48493          	addi	s1,s1,-837 # 8000d8ef <end+0xfff>
    80007c3c:	02813823          	sd	s0,48(sp)
    80007c40:	01313c23          	sd	s3,24(sp)
    80007c44:	00f4f4b3          	and	s1,s1,a5
    80007c48:	02113c23          	sd	ra,56(sp)
    80007c4c:	03213023          	sd	s2,32(sp)
    80007c50:	01413823          	sd	s4,16(sp)
    80007c54:	01513423          	sd	s5,8(sp)
    80007c58:	04010413          	addi	s0,sp,64
    80007c5c:	000017b7          	lui	a5,0x1
    80007c60:	01100993          	li	s3,17
    80007c64:	00f487b3          	add	a5,s1,a5
    80007c68:	01b99993          	slli	s3,s3,0x1b
    80007c6c:	06f9e063          	bltu	s3,a5,80007ccc <kinit+0xa4>
    80007c70:	00005a97          	auipc	s5,0x5
    80007c74:	c80a8a93          	addi	s5,s5,-896 # 8000c8f0 <end>
    80007c78:	0754ec63          	bltu	s1,s5,80007cf0 <kinit+0xc8>
    80007c7c:	0734fa63          	bgeu	s1,s3,80007cf0 <kinit+0xc8>
    80007c80:	00088a37          	lui	s4,0x88
    80007c84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007c88:	00004917          	auipc	s2,0x4
    80007c8c:	96890913          	addi	s2,s2,-1688 # 8000b5f0 <kmem>
    80007c90:	00ca1a13          	slli	s4,s4,0xc
    80007c94:	0140006f          	j	80007ca8 <kinit+0x80>
    80007c98:	000017b7          	lui	a5,0x1
    80007c9c:	00f484b3          	add	s1,s1,a5
    80007ca0:	0554e863          	bltu	s1,s5,80007cf0 <kinit+0xc8>
    80007ca4:	0534f663          	bgeu	s1,s3,80007cf0 <kinit+0xc8>
    80007ca8:	00001637          	lui	a2,0x1
    80007cac:	00100593          	li	a1,1
    80007cb0:	00048513          	mv	a0,s1
    80007cb4:	00000097          	auipc	ra,0x0
    80007cb8:	5e4080e7          	jalr	1508(ra) # 80008298 <__memset>
    80007cbc:	00093783          	ld	a5,0(s2)
    80007cc0:	00f4b023          	sd	a5,0(s1)
    80007cc4:	00993023          	sd	s1,0(s2)
    80007cc8:	fd4498e3          	bne	s1,s4,80007c98 <kinit+0x70>
    80007ccc:	03813083          	ld	ra,56(sp)
    80007cd0:	03013403          	ld	s0,48(sp)
    80007cd4:	02813483          	ld	s1,40(sp)
    80007cd8:	02013903          	ld	s2,32(sp)
    80007cdc:	01813983          	ld	s3,24(sp)
    80007ce0:	01013a03          	ld	s4,16(sp)
    80007ce4:	00813a83          	ld	s5,8(sp)
    80007ce8:	04010113          	addi	sp,sp,64
    80007cec:	00008067          	ret
    80007cf0:	00002517          	auipc	a0,0x2
    80007cf4:	a8050513          	addi	a0,a0,-1408 # 80009770 <digits+0x18>
    80007cf8:	fffff097          	auipc	ra,0xfffff
    80007cfc:	4b4080e7          	jalr	1204(ra) # 800071ac <panic>

0000000080007d00 <freerange>:
    80007d00:	fc010113          	addi	sp,sp,-64
    80007d04:	000017b7          	lui	a5,0x1
    80007d08:	02913423          	sd	s1,40(sp)
    80007d0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007d10:	009504b3          	add	s1,a0,s1
    80007d14:	fffff537          	lui	a0,0xfffff
    80007d18:	02813823          	sd	s0,48(sp)
    80007d1c:	02113c23          	sd	ra,56(sp)
    80007d20:	03213023          	sd	s2,32(sp)
    80007d24:	01313c23          	sd	s3,24(sp)
    80007d28:	01413823          	sd	s4,16(sp)
    80007d2c:	01513423          	sd	s5,8(sp)
    80007d30:	01613023          	sd	s6,0(sp)
    80007d34:	04010413          	addi	s0,sp,64
    80007d38:	00a4f4b3          	and	s1,s1,a0
    80007d3c:	00f487b3          	add	a5,s1,a5
    80007d40:	06f5e463          	bltu	a1,a5,80007da8 <freerange+0xa8>
    80007d44:	00005a97          	auipc	s5,0x5
    80007d48:	baca8a93          	addi	s5,s5,-1108 # 8000c8f0 <end>
    80007d4c:	0954e263          	bltu	s1,s5,80007dd0 <freerange+0xd0>
    80007d50:	01100993          	li	s3,17
    80007d54:	01b99993          	slli	s3,s3,0x1b
    80007d58:	0734fc63          	bgeu	s1,s3,80007dd0 <freerange+0xd0>
    80007d5c:	00058a13          	mv	s4,a1
    80007d60:	00004917          	auipc	s2,0x4
    80007d64:	89090913          	addi	s2,s2,-1904 # 8000b5f0 <kmem>
    80007d68:	00002b37          	lui	s6,0x2
    80007d6c:	0140006f          	j	80007d80 <freerange+0x80>
    80007d70:	000017b7          	lui	a5,0x1
    80007d74:	00f484b3          	add	s1,s1,a5
    80007d78:	0554ec63          	bltu	s1,s5,80007dd0 <freerange+0xd0>
    80007d7c:	0534fa63          	bgeu	s1,s3,80007dd0 <freerange+0xd0>
    80007d80:	00001637          	lui	a2,0x1
    80007d84:	00100593          	li	a1,1
    80007d88:	00048513          	mv	a0,s1
    80007d8c:	00000097          	auipc	ra,0x0
    80007d90:	50c080e7          	jalr	1292(ra) # 80008298 <__memset>
    80007d94:	00093703          	ld	a4,0(s2)
    80007d98:	016487b3          	add	a5,s1,s6
    80007d9c:	00e4b023          	sd	a4,0(s1)
    80007da0:	00993023          	sd	s1,0(s2)
    80007da4:	fcfa76e3          	bgeu	s4,a5,80007d70 <freerange+0x70>
    80007da8:	03813083          	ld	ra,56(sp)
    80007dac:	03013403          	ld	s0,48(sp)
    80007db0:	02813483          	ld	s1,40(sp)
    80007db4:	02013903          	ld	s2,32(sp)
    80007db8:	01813983          	ld	s3,24(sp)
    80007dbc:	01013a03          	ld	s4,16(sp)
    80007dc0:	00813a83          	ld	s5,8(sp)
    80007dc4:	00013b03          	ld	s6,0(sp)
    80007dc8:	04010113          	addi	sp,sp,64
    80007dcc:	00008067          	ret
    80007dd0:	00002517          	auipc	a0,0x2
    80007dd4:	9a050513          	addi	a0,a0,-1632 # 80009770 <digits+0x18>
    80007dd8:	fffff097          	auipc	ra,0xfffff
    80007ddc:	3d4080e7          	jalr	980(ra) # 800071ac <panic>

0000000080007de0 <kfree>:
    80007de0:	fe010113          	addi	sp,sp,-32
    80007de4:	00813823          	sd	s0,16(sp)
    80007de8:	00113c23          	sd	ra,24(sp)
    80007dec:	00913423          	sd	s1,8(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	03451793          	slli	a5,a0,0x34
    80007df8:	04079c63          	bnez	a5,80007e50 <kfree+0x70>
    80007dfc:	00005797          	auipc	a5,0x5
    80007e00:	af478793          	addi	a5,a5,-1292 # 8000c8f0 <end>
    80007e04:	00050493          	mv	s1,a0
    80007e08:	04f56463          	bltu	a0,a5,80007e50 <kfree+0x70>
    80007e0c:	01100793          	li	a5,17
    80007e10:	01b79793          	slli	a5,a5,0x1b
    80007e14:	02f57e63          	bgeu	a0,a5,80007e50 <kfree+0x70>
    80007e18:	00001637          	lui	a2,0x1
    80007e1c:	00100593          	li	a1,1
    80007e20:	00000097          	auipc	ra,0x0
    80007e24:	478080e7          	jalr	1144(ra) # 80008298 <__memset>
    80007e28:	00003797          	auipc	a5,0x3
    80007e2c:	7c878793          	addi	a5,a5,1992 # 8000b5f0 <kmem>
    80007e30:	0007b703          	ld	a4,0(a5)
    80007e34:	01813083          	ld	ra,24(sp)
    80007e38:	01013403          	ld	s0,16(sp)
    80007e3c:	00e4b023          	sd	a4,0(s1)
    80007e40:	0097b023          	sd	s1,0(a5)
    80007e44:	00813483          	ld	s1,8(sp)
    80007e48:	02010113          	addi	sp,sp,32
    80007e4c:	00008067          	ret
    80007e50:	00002517          	auipc	a0,0x2
    80007e54:	92050513          	addi	a0,a0,-1760 # 80009770 <digits+0x18>
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	354080e7          	jalr	852(ra) # 800071ac <panic>

0000000080007e60 <kalloc>:
    80007e60:	fe010113          	addi	sp,sp,-32
    80007e64:	00813823          	sd	s0,16(sp)
    80007e68:	00913423          	sd	s1,8(sp)
    80007e6c:	00113c23          	sd	ra,24(sp)
    80007e70:	02010413          	addi	s0,sp,32
    80007e74:	00003797          	auipc	a5,0x3
    80007e78:	77c78793          	addi	a5,a5,1916 # 8000b5f0 <kmem>
    80007e7c:	0007b483          	ld	s1,0(a5)
    80007e80:	02048063          	beqz	s1,80007ea0 <kalloc+0x40>
    80007e84:	0004b703          	ld	a4,0(s1)
    80007e88:	00001637          	lui	a2,0x1
    80007e8c:	00500593          	li	a1,5
    80007e90:	00048513          	mv	a0,s1
    80007e94:	00e7b023          	sd	a4,0(a5)
    80007e98:	00000097          	auipc	ra,0x0
    80007e9c:	400080e7          	jalr	1024(ra) # 80008298 <__memset>
    80007ea0:	01813083          	ld	ra,24(sp)
    80007ea4:	01013403          	ld	s0,16(sp)
    80007ea8:	00048513          	mv	a0,s1
    80007eac:	00813483          	ld	s1,8(sp)
    80007eb0:	02010113          	addi	sp,sp,32
    80007eb4:	00008067          	ret

0000000080007eb8 <initlock>:
    80007eb8:	ff010113          	addi	sp,sp,-16
    80007ebc:	00813423          	sd	s0,8(sp)
    80007ec0:	01010413          	addi	s0,sp,16
    80007ec4:	00813403          	ld	s0,8(sp)
    80007ec8:	00b53423          	sd	a1,8(a0)
    80007ecc:	00052023          	sw	zero,0(a0)
    80007ed0:	00053823          	sd	zero,16(a0)
    80007ed4:	01010113          	addi	sp,sp,16
    80007ed8:	00008067          	ret

0000000080007edc <acquire>:
    80007edc:	fe010113          	addi	sp,sp,-32
    80007ee0:	00813823          	sd	s0,16(sp)
    80007ee4:	00913423          	sd	s1,8(sp)
    80007ee8:	00113c23          	sd	ra,24(sp)
    80007eec:	01213023          	sd	s2,0(sp)
    80007ef0:	02010413          	addi	s0,sp,32
    80007ef4:	00050493          	mv	s1,a0
    80007ef8:	10002973          	csrr	s2,sstatus
    80007efc:	100027f3          	csrr	a5,sstatus
    80007f00:	ffd7f793          	andi	a5,a5,-3
    80007f04:	10079073          	csrw	sstatus,a5
    80007f08:	fffff097          	auipc	ra,0xfffff
    80007f0c:	8e0080e7          	jalr	-1824(ra) # 800067e8 <mycpu>
    80007f10:	07852783          	lw	a5,120(a0)
    80007f14:	06078e63          	beqz	a5,80007f90 <acquire+0xb4>
    80007f18:	fffff097          	auipc	ra,0xfffff
    80007f1c:	8d0080e7          	jalr	-1840(ra) # 800067e8 <mycpu>
    80007f20:	07852783          	lw	a5,120(a0)
    80007f24:	0004a703          	lw	a4,0(s1)
    80007f28:	0017879b          	addiw	a5,a5,1
    80007f2c:	06f52c23          	sw	a5,120(a0)
    80007f30:	04071063          	bnez	a4,80007f70 <acquire+0x94>
    80007f34:	00100713          	li	a4,1
    80007f38:	00070793          	mv	a5,a4
    80007f3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007f40:	0007879b          	sext.w	a5,a5
    80007f44:	fe079ae3          	bnez	a5,80007f38 <acquire+0x5c>
    80007f48:	0ff0000f          	fence
    80007f4c:	fffff097          	auipc	ra,0xfffff
    80007f50:	89c080e7          	jalr	-1892(ra) # 800067e8 <mycpu>
    80007f54:	01813083          	ld	ra,24(sp)
    80007f58:	01013403          	ld	s0,16(sp)
    80007f5c:	00a4b823          	sd	a0,16(s1)
    80007f60:	00013903          	ld	s2,0(sp)
    80007f64:	00813483          	ld	s1,8(sp)
    80007f68:	02010113          	addi	sp,sp,32
    80007f6c:	00008067          	ret
    80007f70:	0104b903          	ld	s2,16(s1)
    80007f74:	fffff097          	auipc	ra,0xfffff
    80007f78:	874080e7          	jalr	-1932(ra) # 800067e8 <mycpu>
    80007f7c:	faa91ce3          	bne	s2,a0,80007f34 <acquire+0x58>
    80007f80:	00001517          	auipc	a0,0x1
    80007f84:	7f850513          	addi	a0,a0,2040 # 80009778 <digits+0x20>
    80007f88:	fffff097          	auipc	ra,0xfffff
    80007f8c:	224080e7          	jalr	548(ra) # 800071ac <panic>
    80007f90:	00195913          	srli	s2,s2,0x1
    80007f94:	fffff097          	auipc	ra,0xfffff
    80007f98:	854080e7          	jalr	-1964(ra) # 800067e8 <mycpu>
    80007f9c:	00197913          	andi	s2,s2,1
    80007fa0:	07252e23          	sw	s2,124(a0)
    80007fa4:	f75ff06f          	j	80007f18 <acquire+0x3c>

0000000080007fa8 <release>:
    80007fa8:	fe010113          	addi	sp,sp,-32
    80007fac:	00813823          	sd	s0,16(sp)
    80007fb0:	00113c23          	sd	ra,24(sp)
    80007fb4:	00913423          	sd	s1,8(sp)
    80007fb8:	01213023          	sd	s2,0(sp)
    80007fbc:	02010413          	addi	s0,sp,32
    80007fc0:	00052783          	lw	a5,0(a0)
    80007fc4:	00079a63          	bnez	a5,80007fd8 <release+0x30>
    80007fc8:	00001517          	auipc	a0,0x1
    80007fcc:	7b850513          	addi	a0,a0,1976 # 80009780 <digits+0x28>
    80007fd0:	fffff097          	auipc	ra,0xfffff
    80007fd4:	1dc080e7          	jalr	476(ra) # 800071ac <panic>
    80007fd8:	01053903          	ld	s2,16(a0)
    80007fdc:	00050493          	mv	s1,a0
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	808080e7          	jalr	-2040(ra) # 800067e8 <mycpu>
    80007fe8:	fea910e3          	bne	s2,a0,80007fc8 <release+0x20>
    80007fec:	0004b823          	sd	zero,16(s1)
    80007ff0:	0ff0000f          	fence
    80007ff4:	0f50000f          	fence	iorw,ow
    80007ff8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007ffc:	ffffe097          	auipc	ra,0xffffe
    80008000:	7ec080e7          	jalr	2028(ra) # 800067e8 <mycpu>
    80008004:	100027f3          	csrr	a5,sstatus
    80008008:	0027f793          	andi	a5,a5,2
    8000800c:	04079a63          	bnez	a5,80008060 <release+0xb8>
    80008010:	07852783          	lw	a5,120(a0)
    80008014:	02f05e63          	blez	a5,80008050 <release+0xa8>
    80008018:	fff7871b          	addiw	a4,a5,-1
    8000801c:	06e52c23          	sw	a4,120(a0)
    80008020:	00071c63          	bnez	a4,80008038 <release+0x90>
    80008024:	07c52783          	lw	a5,124(a0)
    80008028:	00078863          	beqz	a5,80008038 <release+0x90>
    8000802c:	100027f3          	csrr	a5,sstatus
    80008030:	0027e793          	ori	a5,a5,2
    80008034:	10079073          	csrw	sstatus,a5
    80008038:	01813083          	ld	ra,24(sp)
    8000803c:	01013403          	ld	s0,16(sp)
    80008040:	00813483          	ld	s1,8(sp)
    80008044:	00013903          	ld	s2,0(sp)
    80008048:	02010113          	addi	sp,sp,32
    8000804c:	00008067          	ret
    80008050:	00001517          	auipc	a0,0x1
    80008054:	75050513          	addi	a0,a0,1872 # 800097a0 <digits+0x48>
    80008058:	fffff097          	auipc	ra,0xfffff
    8000805c:	154080e7          	jalr	340(ra) # 800071ac <panic>
    80008060:	00001517          	auipc	a0,0x1
    80008064:	72850513          	addi	a0,a0,1832 # 80009788 <digits+0x30>
    80008068:	fffff097          	auipc	ra,0xfffff
    8000806c:	144080e7          	jalr	324(ra) # 800071ac <panic>

0000000080008070 <holding>:
    80008070:	00052783          	lw	a5,0(a0)
    80008074:	00079663          	bnez	a5,80008080 <holding+0x10>
    80008078:	00000513          	li	a0,0
    8000807c:	00008067          	ret
    80008080:	fe010113          	addi	sp,sp,-32
    80008084:	00813823          	sd	s0,16(sp)
    80008088:	00913423          	sd	s1,8(sp)
    8000808c:	00113c23          	sd	ra,24(sp)
    80008090:	02010413          	addi	s0,sp,32
    80008094:	01053483          	ld	s1,16(a0)
    80008098:	ffffe097          	auipc	ra,0xffffe
    8000809c:	750080e7          	jalr	1872(ra) # 800067e8 <mycpu>
    800080a0:	01813083          	ld	ra,24(sp)
    800080a4:	01013403          	ld	s0,16(sp)
    800080a8:	40a48533          	sub	a0,s1,a0
    800080ac:	00153513          	seqz	a0,a0
    800080b0:	00813483          	ld	s1,8(sp)
    800080b4:	02010113          	addi	sp,sp,32
    800080b8:	00008067          	ret

00000000800080bc <push_off>:
    800080bc:	fe010113          	addi	sp,sp,-32
    800080c0:	00813823          	sd	s0,16(sp)
    800080c4:	00113c23          	sd	ra,24(sp)
    800080c8:	00913423          	sd	s1,8(sp)
    800080cc:	02010413          	addi	s0,sp,32
    800080d0:	100024f3          	csrr	s1,sstatus
    800080d4:	100027f3          	csrr	a5,sstatus
    800080d8:	ffd7f793          	andi	a5,a5,-3
    800080dc:	10079073          	csrw	sstatus,a5
    800080e0:	ffffe097          	auipc	ra,0xffffe
    800080e4:	708080e7          	jalr	1800(ra) # 800067e8 <mycpu>
    800080e8:	07852783          	lw	a5,120(a0)
    800080ec:	02078663          	beqz	a5,80008118 <push_off+0x5c>
    800080f0:	ffffe097          	auipc	ra,0xffffe
    800080f4:	6f8080e7          	jalr	1784(ra) # 800067e8 <mycpu>
    800080f8:	07852783          	lw	a5,120(a0)
    800080fc:	01813083          	ld	ra,24(sp)
    80008100:	01013403          	ld	s0,16(sp)
    80008104:	0017879b          	addiw	a5,a5,1
    80008108:	06f52c23          	sw	a5,120(a0)
    8000810c:	00813483          	ld	s1,8(sp)
    80008110:	02010113          	addi	sp,sp,32
    80008114:	00008067          	ret
    80008118:	0014d493          	srli	s1,s1,0x1
    8000811c:	ffffe097          	auipc	ra,0xffffe
    80008120:	6cc080e7          	jalr	1740(ra) # 800067e8 <mycpu>
    80008124:	0014f493          	andi	s1,s1,1
    80008128:	06952e23          	sw	s1,124(a0)
    8000812c:	fc5ff06f          	j	800080f0 <push_off+0x34>

0000000080008130 <pop_off>:
    80008130:	ff010113          	addi	sp,sp,-16
    80008134:	00813023          	sd	s0,0(sp)
    80008138:	00113423          	sd	ra,8(sp)
    8000813c:	01010413          	addi	s0,sp,16
    80008140:	ffffe097          	auipc	ra,0xffffe
    80008144:	6a8080e7          	jalr	1704(ra) # 800067e8 <mycpu>
    80008148:	100027f3          	csrr	a5,sstatus
    8000814c:	0027f793          	andi	a5,a5,2
    80008150:	04079663          	bnez	a5,8000819c <pop_off+0x6c>
    80008154:	07852783          	lw	a5,120(a0)
    80008158:	02f05a63          	blez	a5,8000818c <pop_off+0x5c>
    8000815c:	fff7871b          	addiw	a4,a5,-1
    80008160:	06e52c23          	sw	a4,120(a0)
    80008164:	00071c63          	bnez	a4,8000817c <pop_off+0x4c>
    80008168:	07c52783          	lw	a5,124(a0)
    8000816c:	00078863          	beqz	a5,8000817c <pop_off+0x4c>
    80008170:	100027f3          	csrr	a5,sstatus
    80008174:	0027e793          	ori	a5,a5,2
    80008178:	10079073          	csrw	sstatus,a5
    8000817c:	00813083          	ld	ra,8(sp)
    80008180:	00013403          	ld	s0,0(sp)
    80008184:	01010113          	addi	sp,sp,16
    80008188:	00008067          	ret
    8000818c:	00001517          	auipc	a0,0x1
    80008190:	61450513          	addi	a0,a0,1556 # 800097a0 <digits+0x48>
    80008194:	fffff097          	auipc	ra,0xfffff
    80008198:	018080e7          	jalr	24(ra) # 800071ac <panic>
    8000819c:	00001517          	auipc	a0,0x1
    800081a0:	5ec50513          	addi	a0,a0,1516 # 80009788 <digits+0x30>
    800081a4:	fffff097          	auipc	ra,0xfffff
    800081a8:	008080e7          	jalr	8(ra) # 800071ac <panic>

00000000800081ac <push_on>:
    800081ac:	fe010113          	addi	sp,sp,-32
    800081b0:	00813823          	sd	s0,16(sp)
    800081b4:	00113c23          	sd	ra,24(sp)
    800081b8:	00913423          	sd	s1,8(sp)
    800081bc:	02010413          	addi	s0,sp,32
    800081c0:	100024f3          	csrr	s1,sstatus
    800081c4:	100027f3          	csrr	a5,sstatus
    800081c8:	0027e793          	ori	a5,a5,2
    800081cc:	10079073          	csrw	sstatus,a5
    800081d0:	ffffe097          	auipc	ra,0xffffe
    800081d4:	618080e7          	jalr	1560(ra) # 800067e8 <mycpu>
    800081d8:	07852783          	lw	a5,120(a0)
    800081dc:	02078663          	beqz	a5,80008208 <push_on+0x5c>
    800081e0:	ffffe097          	auipc	ra,0xffffe
    800081e4:	608080e7          	jalr	1544(ra) # 800067e8 <mycpu>
    800081e8:	07852783          	lw	a5,120(a0)
    800081ec:	01813083          	ld	ra,24(sp)
    800081f0:	01013403          	ld	s0,16(sp)
    800081f4:	0017879b          	addiw	a5,a5,1
    800081f8:	06f52c23          	sw	a5,120(a0)
    800081fc:	00813483          	ld	s1,8(sp)
    80008200:	02010113          	addi	sp,sp,32
    80008204:	00008067          	ret
    80008208:	0014d493          	srli	s1,s1,0x1
    8000820c:	ffffe097          	auipc	ra,0xffffe
    80008210:	5dc080e7          	jalr	1500(ra) # 800067e8 <mycpu>
    80008214:	0014f493          	andi	s1,s1,1
    80008218:	06952e23          	sw	s1,124(a0)
    8000821c:	fc5ff06f          	j	800081e0 <push_on+0x34>

0000000080008220 <pop_on>:
    80008220:	ff010113          	addi	sp,sp,-16
    80008224:	00813023          	sd	s0,0(sp)
    80008228:	00113423          	sd	ra,8(sp)
    8000822c:	01010413          	addi	s0,sp,16
    80008230:	ffffe097          	auipc	ra,0xffffe
    80008234:	5b8080e7          	jalr	1464(ra) # 800067e8 <mycpu>
    80008238:	100027f3          	csrr	a5,sstatus
    8000823c:	0027f793          	andi	a5,a5,2
    80008240:	04078463          	beqz	a5,80008288 <pop_on+0x68>
    80008244:	07852783          	lw	a5,120(a0)
    80008248:	02f05863          	blez	a5,80008278 <pop_on+0x58>
    8000824c:	fff7879b          	addiw	a5,a5,-1
    80008250:	06f52c23          	sw	a5,120(a0)
    80008254:	07853783          	ld	a5,120(a0)
    80008258:	00079863          	bnez	a5,80008268 <pop_on+0x48>
    8000825c:	100027f3          	csrr	a5,sstatus
    80008260:	ffd7f793          	andi	a5,a5,-3
    80008264:	10079073          	csrw	sstatus,a5
    80008268:	00813083          	ld	ra,8(sp)
    8000826c:	00013403          	ld	s0,0(sp)
    80008270:	01010113          	addi	sp,sp,16
    80008274:	00008067          	ret
    80008278:	00001517          	auipc	a0,0x1
    8000827c:	55050513          	addi	a0,a0,1360 # 800097c8 <digits+0x70>
    80008280:	fffff097          	auipc	ra,0xfffff
    80008284:	f2c080e7          	jalr	-212(ra) # 800071ac <panic>
    80008288:	00001517          	auipc	a0,0x1
    8000828c:	52050513          	addi	a0,a0,1312 # 800097a8 <digits+0x50>
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	f1c080e7          	jalr	-228(ra) # 800071ac <panic>

0000000080008298 <__memset>:
    80008298:	ff010113          	addi	sp,sp,-16
    8000829c:	00813423          	sd	s0,8(sp)
    800082a0:	01010413          	addi	s0,sp,16
    800082a4:	1a060e63          	beqz	a2,80008460 <__memset+0x1c8>
    800082a8:	40a007b3          	neg	a5,a0
    800082ac:	0077f793          	andi	a5,a5,7
    800082b0:	00778693          	addi	a3,a5,7
    800082b4:	00b00813          	li	a6,11
    800082b8:	0ff5f593          	andi	a1,a1,255
    800082bc:	fff6071b          	addiw	a4,a2,-1
    800082c0:	1b06e663          	bltu	a3,a6,8000846c <__memset+0x1d4>
    800082c4:	1cd76463          	bltu	a4,a3,8000848c <__memset+0x1f4>
    800082c8:	1a078e63          	beqz	a5,80008484 <__memset+0x1ec>
    800082cc:	00b50023          	sb	a1,0(a0)
    800082d0:	00100713          	li	a4,1
    800082d4:	1ae78463          	beq	a5,a4,8000847c <__memset+0x1e4>
    800082d8:	00b500a3          	sb	a1,1(a0)
    800082dc:	00200713          	li	a4,2
    800082e0:	1ae78a63          	beq	a5,a4,80008494 <__memset+0x1fc>
    800082e4:	00b50123          	sb	a1,2(a0)
    800082e8:	00300713          	li	a4,3
    800082ec:	18e78463          	beq	a5,a4,80008474 <__memset+0x1dc>
    800082f0:	00b501a3          	sb	a1,3(a0)
    800082f4:	00400713          	li	a4,4
    800082f8:	1ae78263          	beq	a5,a4,8000849c <__memset+0x204>
    800082fc:	00b50223          	sb	a1,4(a0)
    80008300:	00500713          	li	a4,5
    80008304:	1ae78063          	beq	a5,a4,800084a4 <__memset+0x20c>
    80008308:	00b502a3          	sb	a1,5(a0)
    8000830c:	00700713          	li	a4,7
    80008310:	18e79e63          	bne	a5,a4,800084ac <__memset+0x214>
    80008314:	00b50323          	sb	a1,6(a0)
    80008318:	00700e93          	li	t4,7
    8000831c:	00859713          	slli	a4,a1,0x8
    80008320:	00e5e733          	or	a4,a1,a4
    80008324:	01059e13          	slli	t3,a1,0x10
    80008328:	01c76e33          	or	t3,a4,t3
    8000832c:	01859313          	slli	t1,a1,0x18
    80008330:	006e6333          	or	t1,t3,t1
    80008334:	02059893          	slli	a7,a1,0x20
    80008338:	40f60e3b          	subw	t3,a2,a5
    8000833c:	011368b3          	or	a7,t1,a7
    80008340:	02859813          	slli	a6,a1,0x28
    80008344:	0108e833          	or	a6,a7,a6
    80008348:	03059693          	slli	a3,a1,0x30
    8000834c:	003e589b          	srliw	a7,t3,0x3
    80008350:	00d866b3          	or	a3,a6,a3
    80008354:	03859713          	slli	a4,a1,0x38
    80008358:	00389813          	slli	a6,a7,0x3
    8000835c:	00f507b3          	add	a5,a0,a5
    80008360:	00e6e733          	or	a4,a3,a4
    80008364:	000e089b          	sext.w	a7,t3
    80008368:	00f806b3          	add	a3,a6,a5
    8000836c:	00e7b023          	sd	a4,0(a5)
    80008370:	00878793          	addi	a5,a5,8
    80008374:	fed79ce3          	bne	a5,a3,8000836c <__memset+0xd4>
    80008378:	ff8e7793          	andi	a5,t3,-8
    8000837c:	0007871b          	sext.w	a4,a5
    80008380:	01d787bb          	addw	a5,a5,t4
    80008384:	0ce88e63          	beq	a7,a4,80008460 <__memset+0x1c8>
    80008388:	00f50733          	add	a4,a0,a5
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	0017871b          	addiw	a4,a5,1
    80008394:	0cc77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008398:	00e50733          	add	a4,a0,a4
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	0027871b          	addiw	a4,a5,2
    800083a4:	0ac77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	0037871b          	addiw	a4,a5,3
    800083b4:	0ac77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083b8:	00e50733          	add	a4,a0,a4
    800083bc:	00b70023          	sb	a1,0(a4)
    800083c0:	0047871b          	addiw	a4,a5,4
    800083c4:	08c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00b70023          	sb	a1,0(a4)
    800083d0:	0057871b          	addiw	a4,a5,5
    800083d4:	08c77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083d8:	00e50733          	add	a4,a0,a4
    800083dc:	00b70023          	sb	a1,0(a4)
    800083e0:	0067871b          	addiw	a4,a5,6
    800083e4:	06c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083e8:	00e50733          	add	a4,a0,a4
    800083ec:	00b70023          	sb	a1,0(a4)
    800083f0:	0077871b          	addiw	a4,a5,7
    800083f4:	06c77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083f8:	00e50733          	add	a4,a0,a4
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	0087871b          	addiw	a4,a5,8
    80008404:	04c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	0097871b          	addiw	a4,a5,9
    80008414:	04c77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	00a7871b          	addiw	a4,a5,10
    80008424:	02c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	00b7871b          	addiw	a4,a5,11
    80008434:	02c77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	00c7871b          	addiw	a4,a5,12
    80008444:	00c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	00d7879b          	addiw	a5,a5,13
    80008454:	00c7f663          	bgeu	a5,a2,80008460 <__memset+0x1c8>
    80008458:	00f507b3          	add	a5,a0,a5
    8000845c:	00b78023          	sb	a1,0(a5)
    80008460:	00813403          	ld	s0,8(sp)
    80008464:	01010113          	addi	sp,sp,16
    80008468:	00008067          	ret
    8000846c:	00b00693          	li	a3,11
    80008470:	e55ff06f          	j	800082c4 <__memset+0x2c>
    80008474:	00300e93          	li	t4,3
    80008478:	ea5ff06f          	j	8000831c <__memset+0x84>
    8000847c:	00100e93          	li	t4,1
    80008480:	e9dff06f          	j	8000831c <__memset+0x84>
    80008484:	00000e93          	li	t4,0
    80008488:	e95ff06f          	j	8000831c <__memset+0x84>
    8000848c:	00000793          	li	a5,0
    80008490:	ef9ff06f          	j	80008388 <__memset+0xf0>
    80008494:	00200e93          	li	t4,2
    80008498:	e85ff06f          	j	8000831c <__memset+0x84>
    8000849c:	00400e93          	li	t4,4
    800084a0:	e7dff06f          	j	8000831c <__memset+0x84>
    800084a4:	00500e93          	li	t4,5
    800084a8:	e75ff06f          	j	8000831c <__memset+0x84>
    800084ac:	00600e93          	li	t4,6
    800084b0:	e6dff06f          	j	8000831c <__memset+0x84>

00000000800084b4 <__memmove>:
    800084b4:	ff010113          	addi	sp,sp,-16
    800084b8:	00813423          	sd	s0,8(sp)
    800084bc:	01010413          	addi	s0,sp,16
    800084c0:	0e060863          	beqz	a2,800085b0 <__memmove+0xfc>
    800084c4:	fff6069b          	addiw	a3,a2,-1
    800084c8:	0006881b          	sext.w	a6,a3
    800084cc:	0ea5e863          	bltu	a1,a0,800085bc <__memmove+0x108>
    800084d0:	00758713          	addi	a4,a1,7
    800084d4:	00a5e7b3          	or	a5,a1,a0
    800084d8:	40a70733          	sub	a4,a4,a0
    800084dc:	0077f793          	andi	a5,a5,7
    800084e0:	00f73713          	sltiu	a4,a4,15
    800084e4:	00174713          	xori	a4,a4,1
    800084e8:	0017b793          	seqz	a5,a5
    800084ec:	00e7f7b3          	and	a5,a5,a4
    800084f0:	10078863          	beqz	a5,80008600 <__memmove+0x14c>
    800084f4:	00900793          	li	a5,9
    800084f8:	1107f463          	bgeu	a5,a6,80008600 <__memmove+0x14c>
    800084fc:	0036581b          	srliw	a6,a2,0x3
    80008500:	fff8081b          	addiw	a6,a6,-1
    80008504:	02081813          	slli	a6,a6,0x20
    80008508:	01d85893          	srli	a7,a6,0x1d
    8000850c:	00858813          	addi	a6,a1,8
    80008510:	00058793          	mv	a5,a1
    80008514:	00050713          	mv	a4,a0
    80008518:	01088833          	add	a6,a7,a6
    8000851c:	0007b883          	ld	a7,0(a5)
    80008520:	00878793          	addi	a5,a5,8
    80008524:	00870713          	addi	a4,a4,8
    80008528:	ff173c23          	sd	a7,-8(a4)
    8000852c:	ff0798e3          	bne	a5,a6,8000851c <__memmove+0x68>
    80008530:	ff867713          	andi	a4,a2,-8
    80008534:	02071793          	slli	a5,a4,0x20
    80008538:	0207d793          	srli	a5,a5,0x20
    8000853c:	00f585b3          	add	a1,a1,a5
    80008540:	40e686bb          	subw	a3,a3,a4
    80008544:	00f507b3          	add	a5,a0,a5
    80008548:	06e60463          	beq	a2,a4,800085b0 <__memmove+0xfc>
    8000854c:	0005c703          	lbu	a4,0(a1)
    80008550:	00e78023          	sb	a4,0(a5)
    80008554:	04068e63          	beqz	a3,800085b0 <__memmove+0xfc>
    80008558:	0015c603          	lbu	a2,1(a1)
    8000855c:	00100713          	li	a4,1
    80008560:	00c780a3          	sb	a2,1(a5)
    80008564:	04e68663          	beq	a3,a4,800085b0 <__memmove+0xfc>
    80008568:	0025c603          	lbu	a2,2(a1)
    8000856c:	00200713          	li	a4,2
    80008570:	00c78123          	sb	a2,2(a5)
    80008574:	02e68e63          	beq	a3,a4,800085b0 <__memmove+0xfc>
    80008578:	0035c603          	lbu	a2,3(a1)
    8000857c:	00300713          	li	a4,3
    80008580:	00c781a3          	sb	a2,3(a5)
    80008584:	02e68663          	beq	a3,a4,800085b0 <__memmove+0xfc>
    80008588:	0045c603          	lbu	a2,4(a1)
    8000858c:	00400713          	li	a4,4
    80008590:	00c78223          	sb	a2,4(a5)
    80008594:	00e68e63          	beq	a3,a4,800085b0 <__memmove+0xfc>
    80008598:	0055c603          	lbu	a2,5(a1)
    8000859c:	00500713          	li	a4,5
    800085a0:	00c782a3          	sb	a2,5(a5)
    800085a4:	00e68663          	beq	a3,a4,800085b0 <__memmove+0xfc>
    800085a8:	0065c703          	lbu	a4,6(a1)
    800085ac:	00e78323          	sb	a4,6(a5)
    800085b0:	00813403          	ld	s0,8(sp)
    800085b4:	01010113          	addi	sp,sp,16
    800085b8:	00008067          	ret
    800085bc:	02061713          	slli	a4,a2,0x20
    800085c0:	02075713          	srli	a4,a4,0x20
    800085c4:	00e587b3          	add	a5,a1,a4
    800085c8:	f0f574e3          	bgeu	a0,a5,800084d0 <__memmove+0x1c>
    800085cc:	02069613          	slli	a2,a3,0x20
    800085d0:	02065613          	srli	a2,a2,0x20
    800085d4:	fff64613          	not	a2,a2
    800085d8:	00e50733          	add	a4,a0,a4
    800085dc:	00c78633          	add	a2,a5,a2
    800085e0:	fff7c683          	lbu	a3,-1(a5)
    800085e4:	fff78793          	addi	a5,a5,-1
    800085e8:	fff70713          	addi	a4,a4,-1
    800085ec:	00d70023          	sb	a3,0(a4)
    800085f0:	fec798e3          	bne	a5,a2,800085e0 <__memmove+0x12c>
    800085f4:	00813403          	ld	s0,8(sp)
    800085f8:	01010113          	addi	sp,sp,16
    800085fc:	00008067          	ret
    80008600:	02069713          	slli	a4,a3,0x20
    80008604:	02075713          	srli	a4,a4,0x20
    80008608:	00170713          	addi	a4,a4,1
    8000860c:	00e50733          	add	a4,a0,a4
    80008610:	00050793          	mv	a5,a0
    80008614:	0005c683          	lbu	a3,0(a1)
    80008618:	00178793          	addi	a5,a5,1
    8000861c:	00158593          	addi	a1,a1,1
    80008620:	fed78fa3          	sb	a3,-1(a5)
    80008624:	fee798e3          	bne	a5,a4,80008614 <__memmove+0x160>
    80008628:	f89ff06f          	j	800085b0 <__memmove+0xfc>

000000008000862c <__putc>:
    8000862c:	fe010113          	addi	sp,sp,-32
    80008630:	00813823          	sd	s0,16(sp)
    80008634:	00113c23          	sd	ra,24(sp)
    80008638:	02010413          	addi	s0,sp,32
    8000863c:	00050793          	mv	a5,a0
    80008640:	fef40593          	addi	a1,s0,-17
    80008644:	00100613          	li	a2,1
    80008648:	00000513          	li	a0,0
    8000864c:	fef407a3          	sb	a5,-17(s0)
    80008650:	fffff097          	auipc	ra,0xfffff
    80008654:	b3c080e7          	jalr	-1220(ra) # 8000718c <console_write>
    80008658:	01813083          	ld	ra,24(sp)
    8000865c:	01013403          	ld	s0,16(sp)
    80008660:	02010113          	addi	sp,sp,32
    80008664:	00008067          	ret

0000000080008668 <__getc>:
    80008668:	fe010113          	addi	sp,sp,-32
    8000866c:	00813823          	sd	s0,16(sp)
    80008670:	00113c23          	sd	ra,24(sp)
    80008674:	02010413          	addi	s0,sp,32
    80008678:	fe840593          	addi	a1,s0,-24
    8000867c:	00100613          	li	a2,1
    80008680:	00000513          	li	a0,0
    80008684:	fffff097          	auipc	ra,0xfffff
    80008688:	ae8080e7          	jalr	-1304(ra) # 8000716c <console_read>
    8000868c:	fe844503          	lbu	a0,-24(s0)
    80008690:	01813083          	ld	ra,24(sp)
    80008694:	01013403          	ld	s0,16(sp)
    80008698:	02010113          	addi	sp,sp,32
    8000869c:	00008067          	ret

00000000800086a0 <console_handler>:
    800086a0:	fe010113          	addi	sp,sp,-32
    800086a4:	00813823          	sd	s0,16(sp)
    800086a8:	00113c23          	sd	ra,24(sp)
    800086ac:	00913423          	sd	s1,8(sp)
    800086b0:	02010413          	addi	s0,sp,32
    800086b4:	14202773          	csrr	a4,scause
    800086b8:	100027f3          	csrr	a5,sstatus
    800086bc:	0027f793          	andi	a5,a5,2
    800086c0:	06079e63          	bnez	a5,8000873c <console_handler+0x9c>
    800086c4:	00074c63          	bltz	a4,800086dc <console_handler+0x3c>
    800086c8:	01813083          	ld	ra,24(sp)
    800086cc:	01013403          	ld	s0,16(sp)
    800086d0:	00813483          	ld	s1,8(sp)
    800086d4:	02010113          	addi	sp,sp,32
    800086d8:	00008067          	ret
    800086dc:	0ff77713          	andi	a4,a4,255
    800086e0:	00900793          	li	a5,9
    800086e4:	fef712e3          	bne	a4,a5,800086c8 <console_handler+0x28>
    800086e8:	ffffe097          	auipc	ra,0xffffe
    800086ec:	6dc080e7          	jalr	1756(ra) # 80006dc4 <plic_claim>
    800086f0:	00a00793          	li	a5,10
    800086f4:	00050493          	mv	s1,a0
    800086f8:	02f50c63          	beq	a0,a5,80008730 <console_handler+0x90>
    800086fc:	fc0506e3          	beqz	a0,800086c8 <console_handler+0x28>
    80008700:	00050593          	mv	a1,a0
    80008704:	00001517          	auipc	a0,0x1
    80008708:	fcc50513          	addi	a0,a0,-52 # 800096d0 <CONSOLE_STATUS+0x6c0>
    8000870c:	fffff097          	auipc	ra,0xfffff
    80008710:	afc080e7          	jalr	-1284(ra) # 80007208 <__printf>
    80008714:	01013403          	ld	s0,16(sp)
    80008718:	01813083          	ld	ra,24(sp)
    8000871c:	00048513          	mv	a0,s1
    80008720:	00813483          	ld	s1,8(sp)
    80008724:	02010113          	addi	sp,sp,32
    80008728:	ffffe317          	auipc	t1,0xffffe
    8000872c:	6d430067          	jr	1748(t1) # 80006dfc <plic_complete>
    80008730:	fffff097          	auipc	ra,0xfffff
    80008734:	3e0080e7          	jalr	992(ra) # 80007b10 <uartintr>
    80008738:	fddff06f          	j	80008714 <console_handler+0x74>
    8000873c:	00001517          	auipc	a0,0x1
    80008740:	09450513          	addi	a0,a0,148 # 800097d0 <digits+0x78>
    80008744:	fffff097          	auipc	ra,0xfffff
    80008748:	a68080e7          	jalr	-1432(ra) # 800071ac <panic>
	...
