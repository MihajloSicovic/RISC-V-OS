
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	58013103          	ld	sp,1408(sp) # 8000b580 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	520060ef          	jal	ra,8000653c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv9stvecTrapEv>:
.align 2
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
    80001318:	2dc7c783          	lbu	a5,732(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000131c:	04079263          	bnez	a5,80001360 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
private:

    Header* free_head;
    Header* alloc_head;

    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001320:	0000a797          	auipc	a5,0xa
    80001324:	2587b783          	ld	a5,600(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001328:	0007b783          	ld	a5,0(a5)
    8000132c:	0000a717          	auipc	a4,0xa
    80001330:	2cc70713          	addi	a4,a4,716 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001334:	00f73023          	sd	a5,0(a4)
    80001338:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000133c:	0000a717          	auipc	a4,0xa
    80001340:	25c73703          	ld	a4,604(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001344:	00073703          	ld	a4,0(a4)
    80001348:	40f70733          	sub	a4,a4,a5
    8000134c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001350:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001354:	00100793          	li	a5,1
    80001358:	0000a717          	auipc	a4,0xa
    8000135c:	28f70c23          	sb	a5,664(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    void* sp = MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    80001360:	000085b7          	lui	a1,0x8
    80001364:	0000a517          	auipc	a0,0xa
    80001368:	29450513          	addi	a0,a0,660 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000136c:	00002097          	auipc	ra,0x2
    80001370:	868080e7          	jalr	-1944(ra) # 80002bd4 <_ZN15MemoryAllocator9mem_allocEm>
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
    800015c8:	d34080e7          	jalr	-716(ra) # 800052f8 <_Z11printStringPKc>
        printInt(i);
    800015cc:	00000613          	li	a2,0
    800015d0:	00a00593          	li	a1,10
    800015d4:	00048513          	mv	a0,s1
    800015d8:	00004097          	auipc	ra,0x4
    800015dc:	ed0080e7          	jalr	-304(ra) # 800054a8 <_Z8printIntiii>
        printString("\n");
    800015e0:	00008517          	auipc	a0,0x8
    800015e4:	f3050513          	addi	a0,a0,-208 # 80009510 <CONSOLE_STATUS+0x500>
    800015e8:	00004097          	auipc	ra,0x4
    800015ec:	d10080e7          	jalr	-752(ra) # 800052f8 <_Z11printStringPKc>
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
    8000160c:	cf0080e7          	jalr	-784(ra) # 800052f8 <_Z11printStringPKc>
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
    8000162c:	cd0080e7          	jalr	-816(ra) # 800052f8 <_Z11printStringPKc>
    printInt(t1);
    80001630:	00000613          	li	a2,0
    80001634:	00a00593          	li	a1,10
    80001638:	0009051b          	sext.w	a0,s2
    8000163c:	00004097          	auipc	ra,0x4
    80001640:	e6c080e7          	jalr	-404(ra) # 800054a8 <_Z8printIntiii>
    printString("\n");
    80001644:	00008517          	auipc	a0,0x8
    80001648:	ecc50513          	addi	a0,a0,-308 # 80009510 <CONSOLE_STATUS+0x500>
    8000164c:	00004097          	auipc	ra,0x4
    80001650:	cac080e7          	jalr	-852(ra) # 800052f8 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001654:	01400513          	li	a0,20
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	ed4080e7          	jalr	-300(ra) # 8000152c <_ZL9fibonaccim>
    80001660:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001664:	00008517          	auipc	a0,0x8
    80001668:	9dc50513          	addi	a0,a0,-1572 # 80009040 <CONSOLE_STATUS+0x30>
    8000166c:	00004097          	auipc	ra,0x4
    80001670:	c8c080e7          	jalr	-884(ra) # 800052f8 <_Z11printStringPKc>
    printInt(result);
    80001674:	00000613          	li	a2,0
    80001678:	00a00593          	li	a1,10
    8000167c:	0009051b          	sext.w	a0,s2
    80001680:	00004097          	auipc	ra,0x4
    80001684:	e28080e7          	jalr	-472(ra) # 800054a8 <_Z8printIntiii>
    printString("\n");
    80001688:	00008517          	auipc	a0,0x8
    8000168c:	e8850513          	addi	a0,a0,-376 # 80009510 <CONSOLE_STATUS+0x500>
    80001690:	00004097          	auipc	ra,0x4
    80001694:	c68080e7          	jalr	-920(ra) # 800052f8 <_Z11printStringPKc>
    80001698:	0400006f          	j	800016d8 <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000169c:	00008517          	auipc	a0,0x8
    800016a0:	98450513          	addi	a0,a0,-1660 # 80009020 <CONSOLE_STATUS+0x10>
    800016a4:	00004097          	auipc	ra,0x4
    800016a8:	c54080e7          	jalr	-940(ra) # 800052f8 <_Z11printStringPKc>
        printInt(i);
    800016ac:	00000613          	li	a2,0
    800016b0:	00a00593          	li	a1,10
    800016b4:	00048513          	mv	a0,s1
    800016b8:	00004097          	auipc	ra,0x4
    800016bc:	df0080e7          	jalr	-528(ra) # 800054a8 <_Z8printIntiii>
        printString("\n");
    800016c0:	00008517          	auipc	a0,0x8
    800016c4:	e5050513          	addi	a0,a0,-432 # 80009510 <CONSOLE_STATUS+0x500>
    800016c8:	00004097          	auipc	ra,0x4
    800016cc:	c30080e7          	jalr	-976(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 6; i++)
    800016d0:	0014849b          	addiw	s1,s1,1
    800016d4:	0ff4f493          	andi	s1,s1,255
    800016d8:	00500793          	li	a5,5
    800016dc:	fc97f0e3          	bgeu	a5,s1,8000169c <_Z11workerBodyAPv+0x100>
    }

    TCB::running->setFinished(true);
    800016e0:	0000a797          	auipc	a5,0xa
    800016e4:	eb07b783          	ld	a5,-336(a5) # 8000b590 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001740:	bbc080e7          	jalr	-1092(ra) # 800052f8 <_Z11printStringPKc>
        printInt(i);
    80001744:	00000613          	li	a2,0
    80001748:	00a00593          	li	a1,10
    8000174c:	00048513          	mv	a0,s1
    80001750:	00004097          	auipc	ra,0x4
    80001754:	d58080e7          	jalr	-680(ra) # 800054a8 <_Z8printIntiii>
        printString("\n");
    80001758:	00008517          	auipc	a0,0x8
    8000175c:	db850513          	addi	a0,a0,-584 # 80009510 <CONSOLE_STATUS+0x500>
    80001760:	00004097          	auipc	ra,0x4
    80001764:	b98080e7          	jalr	-1128(ra) # 800052f8 <_Z11printStringPKc>
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
    80001784:	b78080e7          	jalr	-1160(ra) # 800052f8 <_Z11printStringPKc>
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
    800017b0:	b4c080e7          	jalr	-1204(ra) # 800052f8 <_Z11printStringPKc>
    printInt(result);
    800017b4:	00000613          	li	a2,0
    800017b8:	00a00593          	li	a1,10
    800017bc:	0009051b          	sext.w	a0,s2
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	ce8080e7          	jalr	-792(ra) # 800054a8 <_Z8printIntiii>
    printString("\n");
    800017c8:	00008517          	auipc	a0,0x8
    800017cc:	d4850513          	addi	a0,a0,-696 # 80009510 <CONSOLE_STATUS+0x500>
    800017d0:	00004097          	auipc	ra,0x4
    800017d4:	b28080e7          	jalr	-1240(ra) # 800052f8 <_Z11printStringPKc>
    800017d8:	0400006f          	j	80001818 <_Z11workerBodyBPv+0x104>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800017dc:	00008517          	auipc	a0,0x8
    800017e0:	87450513          	addi	a0,a0,-1932 # 80009050 <CONSOLE_STATUS+0x40>
    800017e4:	00004097          	auipc	ra,0x4
    800017e8:	b14080e7          	jalr	-1260(ra) # 800052f8 <_Z11printStringPKc>
        printInt(i);
    800017ec:	00000613          	li	a2,0
    800017f0:	00a00593          	li	a1,10
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00004097          	auipc	ra,0x4
    800017fc:	cb0080e7          	jalr	-848(ra) # 800054a8 <_Z8printIntiii>
        printString("\n");
    80001800:	00008517          	auipc	a0,0x8
    80001804:	d1050513          	addi	a0,a0,-752 # 80009510 <CONSOLE_STATUS+0x500>
    80001808:	00004097          	auipc	ra,0x4
    8000180c:	af0080e7          	jalr	-1296(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001810:	0014849b          	addiw	s1,s1,1
    80001814:	0ff4f493          	andi	s1,s1,255
    80001818:	00f00793          	li	a5,15
    8000181c:	fc97f0e3          	bgeu	a5,s1,800017dc <_Z11workerBodyBPv+0xc8>
    }

    TCB::running->setFinished(true);
    80001820:	0000a797          	auipc	a5,0xa
    80001824:	d707b783          	ld	a5,-656(a5) # 8000b590 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001878:	d9478793          	addi	a5,a5,-620 # 8000b608 <_ZL1a>
    8000187c:	0007a503          	lw	a0,0(a5)
    80001880:	3e85051b          	addiw	a0,a0,1000
    80001884:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    80001888:	00000613          	li	a2,0
    8000188c:	00a00593          	li	a1,10
    80001890:	0005051b          	sext.w	a0,a0
    80001894:	00004097          	auipc	ra,0x4
    80001898:	c14080e7          	jalr	-1004(ra) # 800054a8 <_Z8printIntiii>
        printString("\n");
    8000189c:	00008517          	auipc	a0,0x8
    800018a0:	c7450513          	addi	a0,a0,-908 # 80009510 <CONSOLE_STATUS+0x500>
    800018a4:	00004097          	auipc	ra,0x4
    800018a8:	a54080e7          	jalr	-1452(ra) # 800052f8 <_Z11printStringPKc>
        thread_dispatch();
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	b2c080e7          	jalr	-1236(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    800018b4:	0014849b          	addiw	s1,s1,1
    800018b8:	fb5ff06f          	j	8000186c <_Z11workerBodyCPv+0x18>
    }
    TCB::running->setFinished(true);
    800018bc:	0000a797          	auipc	a5,0xa
    800018c0:	cd47b783          	ld	a5,-812(a5) # 8000b590 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001910:	cfc78793          	addi	a5,a5,-772 # 8000b608 <_ZL1a>
    80001914:	0007a503          	lw	a0,0(a5)
    80001918:	c185051b          	addiw	a0,a0,-1000
    8000191c:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    80001920:	00000613          	li	a2,0
    80001924:	00a00593          	li	a1,10
    80001928:	0005051b          	sext.w	a0,a0
    8000192c:	00004097          	auipc	ra,0x4
    80001930:	b7c080e7          	jalr	-1156(ra) # 800054a8 <_Z8printIntiii>
        printString("\n");
    80001934:	00008517          	auipc	a0,0x8
    80001938:	bdc50513          	addi	a0,a0,-1060 # 80009510 <CONSOLE_STATUS+0x500>
    8000193c:	00004097          	auipc	ra,0x4
    80001940:	9bc080e7          	jalr	-1604(ra) # 800052f8 <_Z11printStringPKc>
        thread_dispatch();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	a94080e7          	jalr	-1388(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    8000194c:	0014849b          	addiw	s1,s1,1
    80001950:	fb5ff06f          	j	80001904 <_Z11workerBodyDPv+0x18>
    }
    TCB::running->setFinished(true);
    80001954:	0000a797          	auipc	a5,0xa
    80001958:	c3c7b783          	ld	a5,-964(a5) # 8000b590 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800019a0:	c547c783          	lbu	a5,-940(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019a4:	04079263          	bnez	a5,800019e8 <_ZN3ABI9Semaphore15createSemaphoreEj+0x64>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800019a8:	0000a797          	auipc	a5,0xa
    800019ac:	bd07b783          	ld	a5,-1072(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019b0:	0007b783          	ld	a5,0(a5)
    800019b4:	0000a717          	auipc	a4,0xa
    800019b8:	c4470713          	addi	a4,a4,-956 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019bc:	00f73023          	sd	a5,0(a4)
    800019c0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800019c4:	0000a717          	auipc	a4,0xa
    800019c8:	bd473703          	ld	a4,-1068(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019cc:	00073703          	ld	a4,0(a4)
    800019d0:	40f70733          	sub	a4,a4,a5
    800019d4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800019d8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800019dc:	00100793          	li	a5,1
    800019e0:	0000a717          	auipc	a4,0xa
    800019e4:	c0f70823          	sb	a5,-1008(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

        // Gets semaphore parameter starting value.
        unsigned int getValue() const { return val; }

        void *operator new(size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
    800019e8:	02800593          	li	a1,40
    800019ec:	0000a517          	auipc	a0,0xa
    800019f0:	c0c50513          	addi	a0,a0,-1012 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	1e0080e7          	jalr	480(ra) # 80002bd4 <_ZN15MemoryAllocator9mem_allocEm>
            MemoryAllocator::Instance()->mem_free(ptr);
        }

    protected:
        // Constructor.
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    800019fc:	0000a717          	auipc	a4,0xa
    80001a00:	96470713          	addi	a4,a4,-1692 # 8000b360 <_ZTVN3ABI9SemaphoreE+0x10>
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
    80001a54:	b407b783          	ld	a5,-1216(a5) # 8000b590 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001a84:	b107b783          	ld	a5,-1264(a5) # 8000b590 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001c64:	9907c783          	lbu	a5,-1648(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c68:	04079263          	bnez	a5,80001cac <_ZN3ABI9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001c6c:	0000a797          	auipc	a5,0xa
    80001c70:	90c7b783          	ld	a5,-1780(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c74:	0007b783          	ld	a5,0(a5)
    80001c78:	0000a717          	auipc	a4,0xa
    80001c7c:	98070713          	addi	a4,a4,-1664 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c80:	00f73023          	sd	a5,0(a4)
    80001c84:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001c88:	0000a717          	auipc	a4,0xa
    80001c8c:	91073703          	ld	a4,-1776(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c90:	00073703          	ld	a4,0(a4)
    80001c94:	40f70733          	sub	a4,a4,a5
    80001c98:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001c9c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ca0:	00100793          	li	a5,1
    80001ca4:	0000a717          	auipc	a4,0xa
    80001ca8:	94f70623          	sb	a5,-1716(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            MemoryAllocator::Instance()->mem_free(ptr);
    80001cac:	0000a517          	auipc	a0,0xa
    80001cb0:	94c50513          	addi	a0,a0,-1716 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	070080e7          	jalr	112(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001cfc:	8f87c783          	lbu	a5,-1800(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d00:	04079263          	bnez	a5,80001d44 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x78>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001d04:	0000a797          	auipc	a5,0xa
    80001d08:	8747b783          	ld	a5,-1932(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d0c:	0007b783          	ld	a5,0(a5)
    80001d10:	0000a717          	auipc	a4,0xa
    80001d14:	8e870713          	addi	a4,a4,-1816 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d18:	00f73023          	sd	a5,0(a4)
    80001d1c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001d20:	0000a717          	auipc	a4,0xa
    80001d24:	87873703          	ld	a4,-1928(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d28:	00073703          	ld	a4,0(a4)
    80001d2c:	40f70733          	sub	a4,a4,a5
    80001d30:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001d34:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001d38:	00100793          	li	a5,1
    80001d3c:	0000a717          	auipc	a4,0xa
    80001d40:	8af70a23          	sb	a5,-1868(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

    // Pointer to the currently running thread.
    static TCB *running, *main;

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001d44:	03000593          	li	a1,48
    80001d48:	0000a517          	auipc	a0,0xa
    80001d4c:	8b050513          	addi	a0,a0,-1872 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	e84080e7          	jalr	-380(ra) # 80002bd4 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001dcc:	8287c783          	lbu	a5,-2008(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001dd0:	04079263          	bnez	a5,80001e14 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x148>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001dd4:	00009797          	auipc	a5,0x9
    80001dd8:	7a47b783          	ld	a5,1956(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001ddc:	0007b783          	ld	a5,0(a5)
    80001de0:	0000a717          	auipc	a4,0xa
    80001de4:	81870713          	addi	a4,a4,-2024 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001de8:	00f73023          	sd	a5,0(a4)
    80001dec:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001df0:	00009717          	auipc	a4,0x9
    80001df4:	7a873703          	ld	a4,1960(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001df8:	00073703          	ld	a4,0(a4)
    80001dfc:	40f70733          	sub	a4,a4,a5
    80001e00:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001e04:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001e08:	00100793          	li	a5,1
    80001e0c:	00009717          	auipc	a4,0x9
    80001e10:	7ef70223          	sb	a5,2020(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001e14:	00048593          	mv	a1,s1
    80001e18:	00009517          	auipc	a0,0x9
    80001e1c:	7e050513          	addi	a0,a0,2016 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	f04080e7          	jalr	-252(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
    80001e28:	00090513          	mv	a0,s2
    80001e2c:	0000b097          	auipc	ra,0xb
    80001e30:	91c080e7          	jalr	-1764(ra) # 8000c748 <_Unwind_Resume>
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
    80001ea0:	77448493          	addi	s1,s1,1908 # 8000b610 <_ZN3TCB7runningE>
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
    80001ef4:	7204b483          	ld	s1,1824(s1) # 8000b610 <_ZN3TCB7runningE>
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
    80001f14:	70078793          	addi	a5,a5,1792 # 8000b610 <_ZN3TCB7runningE>
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
    80001f80:	6947b783          	ld	a5,1684(a5) # 8000b610 <_ZN3TCB7runningE>
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
    80001fc0:	6347c783          	lbu	a5,1588(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fc4:	04079263          	bnez	a5,80002008 <_Znwm+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001fc8:	00009797          	auipc	a5,0x9
    80001fcc:	5b07b783          	ld	a5,1456(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001fd0:	0007b783          	ld	a5,0(a5)
    80001fd4:	00009717          	auipc	a4,0x9
    80001fd8:	62470713          	addi	a4,a4,1572 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fdc:	00f73023          	sd	a5,0(a4)
    80001fe0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001fe4:	00009717          	auipc	a4,0x9
    80001fe8:	5b473703          	ld	a4,1460(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fec:	00073703          	ld	a4,0(a4)
    80001ff0:	40f70733          	sub	a4,a4,a5
    80001ff4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001ff8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ffc:	00100793          	li	a5,1
    80002000:	00009717          	auipc	a4,0x9
    80002004:	5ef70823          	sb	a5,1520(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80002008:	00009517          	auipc	a0,0x9
    8000200c:	5f050513          	addi	a0,a0,1520 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002010:	00001097          	auipc	ra,0x1
    80002014:	bc4080e7          	jalr	-1084(ra) # 80002bd4 <_ZN15MemoryAllocator9mem_allocEm>
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
    80002040:	5b47c783          	lbu	a5,1460(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002044:	04079263          	bnez	a5,80002088 <_Znam+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002048:	00009797          	auipc	a5,0x9
    8000204c:	5307b783          	ld	a5,1328(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002050:	0007b783          	ld	a5,0(a5)
    80002054:	00009717          	auipc	a4,0x9
    80002058:	5a470713          	addi	a4,a4,1444 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000205c:	00f73023          	sd	a5,0(a4)
    80002060:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002064:	00009717          	auipc	a4,0x9
    80002068:	53473703          	ld	a4,1332(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000206c:	00073703          	ld	a4,0(a4)
    80002070:	40f70733          	sub	a4,a4,a5
    80002074:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002078:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000207c:	00100793          	li	a5,1
    80002080:	00009717          	auipc	a4,0x9
    80002084:	56f70823          	sb	a5,1392(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80002088:	00009517          	auipc	a0,0x9
    8000208c:	57050513          	addi	a0,a0,1392 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	b44080e7          	jalr	-1212(ra) # 80002bd4 <_ZN15MemoryAllocator9mem_allocEm>
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
    800020c0:	5347c783          	lbu	a5,1332(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020c4:	04079263          	bnez	a5,80002108 <_ZdlPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800020c8:	00009797          	auipc	a5,0x9
    800020cc:	4b07b783          	ld	a5,1200(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    800020d0:	0007b783          	ld	a5,0(a5)
    800020d4:	00009717          	auipc	a4,0x9
    800020d8:	52470713          	addi	a4,a4,1316 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020dc:	00f73023          	sd	a5,0(a4)
    800020e0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800020e4:	00009717          	auipc	a4,0x9
    800020e8:	4b473703          	ld	a4,1204(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020ec:	00073703          	ld	a4,0(a4)
    800020f0:	40f70733          	sub	a4,a4,a5
    800020f4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800020f8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800020fc:	00100793          	li	a5,1
    80002100:	00009717          	auipc	a4,0x9
    80002104:	4ef70823          	sb	a5,1264(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80002108:	00009517          	auipc	a0,0x9
    8000210c:	4f050513          	addi	a0,a0,1264 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	c14080e7          	jalr	-1004(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80002140:	4b47c783          	lbu	a5,1204(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002144:	04079263          	bnez	a5,80002188 <_ZdaPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002148:	00009797          	auipc	a5,0x9
    8000214c:	4307b783          	ld	a5,1072(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002150:	0007b783          	ld	a5,0(a5)
    80002154:	00009717          	auipc	a4,0x9
    80002158:	4a470713          	addi	a4,a4,1188 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000215c:	00f73023          	sd	a5,0(a4)
    80002160:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002164:	00009717          	auipc	a4,0x9
    80002168:	43473703          	ld	a4,1076(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000216c:	00073703          	ld	a4,0(a4)
    80002170:	40f70733          	sub	a4,a4,a5
    80002174:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002178:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000217c:	00100793          	li	a5,1
    80002180:	00009717          	auipc	a4,0x9
    80002184:	46f70823          	sb	a5,1136(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    80002188:	00009517          	auipc	a0,0x9
    8000218c:	47050513          	addi	a0,a0,1136 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002190:	00001097          	auipc	ra,0x1
    80002194:	b94080e7          	jalr	-1132(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
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
    800021c0:	1cc78793          	addi	a5,a5,460 # 8000b388 <_ZTV6Thread+0x10>
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
    800021e4:	4107c783          	lbu	a5,1040(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021e8:	04079263          	bnez	a5,8000222c <_ZN6ThreadD1Ev+0x84>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800021ec:	00009797          	auipc	a5,0x9
    800021f0:	38c7b783          	ld	a5,908(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    800021f4:	0007b783          	ld	a5,0(a5)
    800021f8:	00009717          	auipc	a4,0x9
    800021fc:	40070713          	addi	a4,a4,1024 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002200:	00f73023          	sd	a5,0(a4)
    80002204:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002208:	00009717          	auipc	a4,0x9
    8000220c:	39073703          	ld	a4,912(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002210:	00073703          	ld	a4,0(a4)
    80002214:	40f70733          	sub	a4,a4,a5
    80002218:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000221c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002220:	00100793          	li	a5,1
    80002224:	00009717          	auipc	a4,0x9
    80002228:	3cf70623          	sb	a5,972(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    8000222c:	00048593          	mv	a1,s1
    80002230:	00009517          	auipc	a0,0x9
    80002234:	3c850513          	addi	a0,a0,968 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	aec080e7          	jalr	-1300(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
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
    800022a8:	10c78793          	addi	a5,a5,268 # 8000b3b0 <_ZTV9Semaphore+0x10>
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
    80002344:	04878793          	addi	a5,a5,72 # 8000b388 <_ZTV6Thread+0x10>
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
    80002374:	01878793          	addi	a5,a5,24 # 8000b388 <_ZTV6Thread+0x10>
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
    8000240c:	fa878793          	addi	a5,a5,-88 # 8000b3b0 <_ZTV9Semaphore+0x10>
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
    800025e8:	08c080e7          	jalr	140(ra) # 80008670 <console_handler>
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
    80002608:	cf4080e7          	jalr	-780(ra) # 800052f8 <_Z11printStringPKc>
        printInt(scause);
    8000260c:	00000613          	li	a2,0
    80002610:	00a00593          	li	a1,10
    80002614:	0004851b          	sext.w	a0,s1
    80002618:	00003097          	auipc	ra,0x3
    8000261c:	e90080e7          	jalr	-368(ra) # 800054a8 <_Z8printIntiii>
        printString(" (BNT = ");
    80002620:	00007517          	auipc	a0,0x7
    80002624:	a5850513          	addi	a0,a0,-1448 # 80009078 <CONSOLE_STATUS+0x68>
    80002628:	00003097          	auipc	ra,0x3
    8000262c:	cd0080e7          	jalr	-816(ra) # 800052f8 <_Z11printStringPKc>
        printInt(scause >> 63);
    80002630:	00000613          	li	a2,0
    80002634:	00a00593          	li	a1,10
    80002638:	0004a513          	slti	a0,s1,0
    8000263c:	00003097          	auipc	ra,0x3
    80002640:	e6c080e7          	jalr	-404(ra) # 800054a8 <_Z8printIntiii>
        printString(")\n");
    80002644:	00007517          	auipc	a0,0x7
    80002648:	a4450513          	addi	a0,a0,-1468 # 80009088 <CONSOLE_STATUS+0x78>
    8000264c:	00003097          	auipc	ra,0x3
    80002650:	cac080e7          	jalr	-852(ra) # 800052f8 <_Z11printStringPKc>
        return;
    80002654:	0ec0006f          	j	80002740 <_ZN5Riscv14handleSyscallsEv+0x1fc>
        case 0x01:
            // mem_alloc (size_t size)
            size_t size;
            void *retPtr;
            __asm__ volatile("mv %0, a1" : "=r" (size));
    80002658:	00058593          	mv	a1,a1
    8000265c:	00009797          	auipc	a5,0x9
    80002660:	f947c783          	lbu	a5,-108(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002664:	04079263          	bnez	a5,800026a8 <_ZN5Riscv14handleSyscallsEv+0x164>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002668:	00009797          	auipc	a5,0x9
    8000266c:	f107b783          	ld	a5,-240(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002670:	0007b783          	ld	a5,0(a5)
    80002674:	00009717          	auipc	a4,0x9
    80002678:	f8470713          	addi	a4,a4,-124 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000267c:	00f73023          	sd	a5,0(a4)
    80002680:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002684:	00009717          	auipc	a4,0x9
    80002688:	f1473703          	ld	a4,-236(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000268c:	00073703          	ld	a4,0(a4)
    80002690:	40f70733          	sub	a4,a4,a5
    80002694:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002698:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000269c:	00100793          	li	a5,1
    800026a0:	00009717          	auipc	a4,0x9
    800026a4:	f4f70823          	sb	a5,-176(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            retPtr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);
    800026a8:	00659593          	slli	a1,a1,0x6
    800026ac:	00009517          	auipc	a0,0x9
    800026b0:	f4c50513          	addi	a0,a0,-180 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	520080e7          	jalr	1312(ra) # 80002bd4 <_ZN15MemoryAllocator9mem_allocEm>

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
    800026d0:	f247c783          	lbu	a5,-220(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026d4:	04079263          	bnez	a5,80002718 <_ZN5Riscv14handleSyscallsEv+0x1d4>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800026d8:	00009797          	auipc	a5,0x9
    800026dc:	ea07b783          	ld	a5,-352(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026e0:	0007b783          	ld	a5,0(a5)
    800026e4:	00009717          	auipc	a4,0x9
    800026e8:	f1470713          	addi	a4,a4,-236 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026ec:	00f73023          	sd	a5,0(a4)
    800026f0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800026f4:	00009717          	auipc	a4,0x9
    800026f8:	ea473703          	ld	a4,-348(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026fc:	00073703          	ld	a4,0(a4)
    80002700:	40f70733          	sub	a4,a4,a5
    80002704:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002708:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    8000270c:	00100793          	li	a5,1
    80002710:	00009717          	auipc	a4,0x9
    80002714:	eef70023          	sb	a5,-288(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

            returnValue = MemoryAllocator::Instance()->mem_free(memPtr);
    80002718:	00009517          	auipc	a0,0x9
    8000271c:	ee050513          	addi	a0,a0,-288 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002720:	00000097          	auipc	ra,0x0
    80002724:	604080e7          	jalr	1540(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80002758:	e9c7c783          	lbu	a5,-356(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000275c:	04079263          	bnez	a5,800027a0 <_ZN5Riscv14handleSyscallsEv+0x25c>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002760:	00009797          	auipc	a5,0x9
    80002764:	e187b783          	ld	a5,-488(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002768:	0007b783          	ld	a5,0(a5)
    8000276c:	00009717          	auipc	a4,0x9
    80002770:	e8c70713          	addi	a4,a4,-372 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002774:	00f73023          	sd	a5,0(a4)
    80002778:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    8000277c:	00009717          	auipc	a4,0x9
    80002780:	e1c73703          	ld	a4,-484(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002784:	00073703          	ld	a4,0(a4)
    80002788:	40f70733          	sub	a4,a4,a5
    8000278c:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002790:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002794:	00100793          	li	a5,1
    80002798:	00009717          	auipc	a4,0x9
    8000279c:	e4f70c23          	sb	a5,-424(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnSize = MemoryAllocator::Instance()->mem_get_free_space();
    800027a0:	00009517          	auipc	a0,0x9
    800027a4:	e5850513          	addi	a0,a0,-424 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	668080e7          	jalr	1640(ra) # 80002e10 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnSize));
    800027b0:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800027b4:	04542823          	sw	t0,80(s0)
            break;
    800027b8:	f79ff06f          	j	80002730 <_ZN5Riscv14handleSyscallsEv+0x1ec>
    800027bc:	00009797          	auipc	a5,0x9
    800027c0:	e347c783          	lbu	a5,-460(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027c4:	04079263          	bnez	a5,80002808 <_ZN5Riscv14handleSyscallsEv+0x2c4>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800027c8:	00009797          	auipc	a5,0x9
    800027cc:	db07b783          	ld	a5,-592(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027d0:	0007b783          	ld	a5,0(a5)
    800027d4:	00009717          	auipc	a4,0x9
    800027d8:	e2470713          	addi	a4,a4,-476 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027dc:	00f73023          	sd	a5,0(a4)
    800027e0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800027e4:	00009717          	auipc	a4,0x9
    800027e8:	db473703          	ld	a4,-588(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    800027ec:	00073703          	ld	a4,0(a4)
    800027f0:	40f70733          	sub	a4,a4,a5
    800027f4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800027f8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800027fc:	00100793          	li	a5,1
    80002800:	00009717          	auipc	a4,0x9
    80002804:	def70823          	sb	a5,-528(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnSize = MemoryAllocator::Instance()->mem_get_largest_free_block();
    80002808:	00009517          	auipc	a0,0x9
    8000280c:	df050513          	addi	a0,a0,-528 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002810:	00000097          	auipc	ra,0x0
    80002814:	634080e7          	jalr	1588(ra) # 80002e44 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
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
    800028f0:	d4c080e7          	jalr	-692(ra) # 80008638 <__getc>
    800028f4:	0005051b          	sext.w	a0,a0
            goto stRetVal;
    800028f8:	e31ff06f          	j	80002728 <_ZN5Riscv14handleSyscallsEv+0x1e4>
            __asm__ volatile ("mv %0, a1" : "=r" (c));
    800028fc:	00058513          	mv	a0,a1
            __putc(c);
    80002900:	0ff57513          	andi	a0,a0,255
    80002904:	00006097          	auipc	ra,0x6
    80002908:	cf8080e7          	jalr	-776(ra) # 800085fc <__putc>
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
    80002940:	ce478793          	addi	a5,a5,-796 # 8000b620 <_ZN9Scheduler19readyCoroutineQueueE>
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
    80002968:	cbc53503          	ld	a0,-836(a0) # 8000b620 <_ZN9Scheduler19readyCoroutineQueueE>
    8000296c:	04050263          	beqz	a0,800029b0 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002970:	00853783          	ld	a5,8(a0)
    80002974:	00009717          	auipc	a4,0x9
    80002978:	caf73623          	sd	a5,-852(a4) # 8000b620 <_ZN9Scheduler19readyCoroutineQueueE>
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
    800029a8:	c807b223          	sd	zero,-892(a5) # 8000b628 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
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
    800029e8:	c447b783          	ld	a5,-956(a5) # 8000b628 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029ec:	02078263          	beqz	a5,80002a10 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800029f0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800029f4:	00009797          	auipc	a5,0x9
    800029f8:	c2a7ba23          	sd	a0,-972(a5) # 8000b628 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029fc:	01813083          	ld	ra,24(sp)
    80002a00:	01013403          	ld	s0,16(sp)
    80002a04:	00813483          	ld	s1,8(sp)
    80002a08:	02010113          	addi	sp,sp,32
    80002a0c:	00008067          	ret
            head = tail = elem;
    80002a10:	00009797          	auipc	a5,0x9
    80002a14:	c1078793          	addi	a5,a5,-1008 # 8000b620 <_ZN9Scheduler19readyCoroutineQueueE>
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

    Riscv::w_stvec((uint64)&Riscv::stvecTrap);
    80002a6c:	00009797          	auipc	a5,0x9
    80002a70:	b347b783          	ld	a5,-1228(a5) # 8000b5a0 <_GLOBAL_OFFSET_TABLE_+0x38>
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
    80002a9c:	af87b783          	ld	a5,-1288(a5) # 8000b590 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002aa0:	00a7b023          	sd	a0,0(a5)
    80002aa4:	00009797          	auipc	a5,0x9
    80002aa8:	ae47b783          	ld	a5,-1308(a5) # 8000b588 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002aac:	00a7b023          	sd	a0,0(a5)

    thread_create(&userMainThread, reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80002ab0:	00000613          	li	a2,0
    80002ab4:	00009597          	auipc	a1,0x9
    80002ab8:	abc5b583          	ld	a1,-1348(a1) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002abc:	fd840513          	addi	a0,s0,-40
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	82c080e7          	jalr	-2004(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>

    while(!userMainThread->isFinished()) {
    80002ac8:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished; }
    80002acc:	0207c783          	lbu	a5,32(a5)
    80002ad0:	00079863          	bnez	a5,80002ae0 <main+0x88>
        thread_dispatch();
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	904080e7          	jalr	-1788(ra) # 800013d8 <_Z15thread_dispatchv>
    80002adc:	fedff06f          	j	80002ac8 <main+0x70>
    }

    printString("Main finished\n");
    80002ae0:	00006517          	auipc	a0,0x6
    80002ae4:	6b850513          	addi	a0,a0,1720 # 80009198 <CONSOLE_STATUS+0x188>
    80002ae8:	00003097          	auipc	ra,0x3
    80002aec:	810080e7          	jalr	-2032(ra) # 800052f8 <_Z11printStringPKc>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002af0:	00200793          	li	a5,2
    80002af4:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    delete mainThread;
    80002af8:	02048063          	beqz	s1,80002b18 <main+0xc0>
    ~TCB() { delete[] stack; }
    80002afc:	0084b503          	ld	a0,8(s1)
    80002b00:	00050663          	beqz	a0,80002b0c <main+0xb4>
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	624080e7          	jalr	1572(ra) # 80002128 <_ZdaPv>
    80002b0c:	00048513          	mv	a0,s1
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	044080e7          	jalr	68(ra) # 80002b54 <_ZN3TCBdlEPv>
    delete userMainThread;
    80002b18:	fd843483          	ld	s1,-40(s0)
    80002b1c:	02048063          	beqz	s1,80002b3c <main+0xe4>
    80002b20:	0084b503          	ld	a0,8(s1)
    80002b24:	00050663          	beqz	a0,80002b30 <main+0xd8>
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	600080e7          	jalr	1536(ra) # 80002128 <_ZdaPv>
    80002b30:	00048513          	mv	a0,s1
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	020080e7          	jalr	32(ra) # 80002b54 <_ZN3TCBdlEPv>
    return 0;
    80002b3c:	00000513          	li	a0,0
    80002b40:	02813083          	ld	ra,40(sp)
    80002b44:	02013403          	ld	s0,32(sp)
    80002b48:	01813483          	ld	s1,24(sp)
    80002b4c:	03010113          	addi	sp,sp,48
    80002b50:	00008067          	ret

0000000080002b54 <_ZN3TCBdlEPv>:
    void operator delete(void *ptr) {
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00113423          	sd	ra,8(sp)
    80002b5c:	00813023          	sd	s0,0(sp)
    80002b60:	01010413          	addi	s0,sp,16
    80002b64:	00050593          	mv	a1,a0
    80002b68:	00009797          	auipc	a5,0x9
    80002b6c:	a887c783          	lbu	a5,-1400(a5) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002b70:	04079263          	bnez	a5,80002bb4 <_ZN3TCBdlEPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002b74:	00009797          	auipc	a5,0x9
    80002b78:	a047b783          	ld	a5,-1532(a5) # 8000b578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002b7c:	0007b783          	ld	a5,0(a5)
    80002b80:	00009717          	auipc	a4,0x9
    80002b84:	a7870713          	addi	a4,a4,-1416 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002b88:	00f73023          	sd	a5,0(a4)
    80002b8c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002b90:	00009717          	auipc	a4,0x9
    80002b94:	a0873703          	ld	a4,-1528(a4) # 8000b598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b98:	00073703          	ld	a4,0(a4)
    80002b9c:	40f70733          	sub	a4,a4,a5
    80002ba0:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002ba4:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002ba8:	00100793          	li	a5,1
    80002bac:	00009717          	auipc	a4,0x9
    80002bb0:	a4f70223          	sb	a5,-1468(a4) # 8000b5f0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80002bb4:	00009517          	auipc	a0,0x9
    80002bb8:	a4450513          	addi	a0,a0,-1468 # 8000b5f8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	168080e7          	jalr	360(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
    }
    80002bc4:	00813083          	ld	ra,8(sp)
    80002bc8:	00013403          	ld	s0,0(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00813423          	sd	s0,8(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    80002be0:	00050613          	mv	a2,a0
    size += sizeof(Header);
    80002be4:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    80002be8:	fc05f713          	andi	a4,a1,-64
    80002bec:	03f5f593          	andi	a1,a1,63
    80002bf0:	00058463          	beqz	a1,80002bf8 <_ZN15MemoryAllocator9mem_allocEm+0x24>
    80002bf4:	04000593          	li	a1,64
    80002bf8:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002bfc:	00063503          	ld	a0,0(a2) # 2000 <_entry-0x7fffe000>
    Header *cur, *prev = nullptr;
    80002c00:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002c04:	00050c63          	beqz	a0,80002c1c <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002c08:	00853783          	ld	a5,8(a0)
    80002c0c:	00e7f863          	bgeu	a5,a4,80002c1c <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002c10:	00050693          	mv	a3,a0
    80002c14:	00053503          	ld	a0,0(a0)
    80002c18:	fedff06f          	j	80002c04 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    80002c1c:	08050a63          	beqz	a0,80002cb0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    80002c20:	00853783          	ld	a5,8(a0)
    80002c24:	04e78a63          	beq	a5,a4,80002c78 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    80002c28:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    80002c2c:	06068463          	beqz	a3,80002c94 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002c30:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    80002c34:	00053683          	ld	a3,0(a0)
    80002c38:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    80002c3c:	00853683          	ld	a3,8(a0)
    80002c40:	40e686b3          	sub	a3,a3,a4
    80002c44:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    80002c48:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    80002c4c:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    80002c50:	00863683          	ld	a3,8(a2)
    80002c54:	04068463          	beqz	a3,80002c9c <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002c58:	00068793          	mv	a5,a3
    80002c5c:	00078713          	mv	a4,a5
    80002c60:	0007b783          	ld	a5,0(a5)
    80002c64:	00078463          	beqz	a5,80002c6c <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80002c68:	fea7eae3          	bltu	a5,a0,80002c5c <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    80002c6c:	02070a63          	beqz	a4,80002ca0 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002c70:	00f53023          	sd	a5,0(a0)
    80002c74:	0300006f          	j	80002ca4 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    80002c78:	00068863          	beqz	a3,80002c88 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002c7c:	00053783          	ld	a5,0(a0)
    80002c80:	00f6b023          	sd	a5,0(a3)
    80002c84:	fc5ff06f          	j	80002c48 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    80002c88:	00053783          	ld	a5,0(a0)
    80002c8c:	00f63023          	sd	a5,0(a2)
    80002c90:	fb9ff06f          	j	80002c48 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002c94:	00f63023          	sd	a5,0(a2)
    80002c98:	f9dff06f          	j	80002c34 <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002c9c:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    80002ca0:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002ca4:	00070c63          	beqz	a4,80002cbc <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002ca8:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002cac:	01050513          	addi	a0,a0,16
}
    80002cb0:	00813403          	ld	s0,8(sp)
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00008067          	ret
    else alloc_head = target;
    80002cbc:	00a63423          	sd	a0,8(a2)
    80002cc0:	fedff06f          	j	80002cac <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002cc4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    80002cd0:	04050263          	beqz	a0,80002d14 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002cd4:	00053783          	ld	a5,0(a0)
    80002cd8:	04078263          	beqz	a5,80002d1c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002cdc:	00853703          	ld	a4,8(a0)
    80002ce0:	00e506b3          	add	a3,a0,a4
    80002ce4:	00d78a63          	beq	a5,a3,80002cf8 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    80002ce8:	00000513          	li	a0,0
}
    80002cec:	00813403          	ld	s0,8(sp)
    80002cf0:	01010113          	addi	sp,sp,16
    80002cf4:	00008067          	ret
        cur->size += cur->next->size;
    80002cf8:	0087b683          	ld	a3,8(a5)
    80002cfc:	00d70733          	add	a4,a4,a3
    80002d00:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    80002d04:	0007b783          	ld	a5,0(a5)
    80002d08:	00f53023          	sd	a5,0(a0)
        return 1;
    80002d0c:	00100513          	li	a0,1
    80002d10:	fddff06f          	j	80002cec <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    80002d14:	00000513          	li	a0,0
    80002d18:	fd5ff06f          	j	80002cec <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    80002d1c:	00000513          	li	a0,0
    80002d20:	fcdff06f          	j	80002cec <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

0000000080002d24 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    80002d24:	0c058a63          	beqz	a1,80002df8 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002d28:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    80002d2c:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002d30:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    80002d34:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002d38:	00078a63          	beqz	a5,80002d4c <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002d3c:	00a7f863          	bgeu	a5,a0,80002d4c <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002d40:	00078713          	mv	a4,a5
    80002d44:	0007b783          	ld	a5,0(a5)
    80002d48:	ff1ff06f          	j	80002d38 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002d4c:	0a078a63          	beqz	a5,80002e00 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002d50:	0aa79c63          	bne	a5,a0,80002e08 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    80002d54:	fe010113          	addi	sp,sp,-32
    80002d58:	00113c23          	sd	ra,24(sp)
    80002d5c:	00813823          	sd	s0,16(sp)
    80002d60:	00913423          	sd	s1,8(sp)
    80002d64:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    80002d68:	02070c63          	beqz	a4,80002da0 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    80002d6c:	0007b783          	ld	a5,0(a5)
    80002d70:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002d74:	0006b703          	ld	a4,0(a3)
    80002d78:	02070a63          	beqz	a4,80002dac <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    80002d7c:	02e56c63          	bltu	a0,a4,80002db4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002d80:	00070793          	mv	a5,a4
    80002d84:	00078493          	mv	s1,a5
    80002d88:	0007b783          	ld	a5,0(a5)
    80002d8c:	00078463          	beqz	a5,80002d94 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002d90:	fea7eae3          	bltu	a5,a0,80002d84 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002d94:	02048263          	beqz	s1,80002db8 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002d98:	fef5b823          	sd	a5,-16(a1)
    80002d9c:	0200006f          	j	80002dbc <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    80002da0:	0007b783          	ld	a5,0(a5)
    80002da4:	00f6b423          	sd	a5,8(a3)
    80002da8:	fcdff06f          	j	80002d74 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002dac:	00070493          	mv	s1,a4
    80002db0:	0080006f          	j	80002db8 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002db4:	00000493          	li	s1,0
    else target->next = free_head;
    80002db8:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002dbc:	02048a63          	beqz	s1,80002df0 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002dc0:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	f00080e7          	jalr	-256(ra) # 80002cc4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002dcc:	00048513          	mv	a0,s1
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	ef4080e7          	jalr	-268(ra) # 80002cc4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    80002dd8:	00000513          	li	a0,0
}
    80002ddc:	01813083          	ld	ra,24(sp)
    80002de0:	01013403          	ld	s0,16(sp)
    80002de4:	00813483          	ld	s1,8(sp)
    80002de8:	02010113          	addi	sp,sp,32
    80002dec:	00008067          	ret
    else free_head = target;
    80002df0:	00a6b023          	sd	a0,0(a3)
    80002df4:	fd1ff06f          	j	80002dc4 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    80002df8:	fff00513          	li	a0,-1
    80002dfc:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002e00:	ffe00513          	li	a0,-2
    80002e04:	00008067          	ret
    80002e08:	ffe00513          	li	a0,-2
}
    80002e0c:	00008067          	ret

0000000080002e10 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002e10:	ff010113          	addi	sp,sp,-16
    80002e14:	00813423          	sd	s0,8(sp)
    80002e18:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e1c:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002e20:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e24:	00078a63          	beqz	a5,80002e38 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    80002e28:	0087b703          	ld	a4,8(a5)
    80002e2c:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e30:	0007b783          	ld	a5,0(a5)
    80002e34:	ff1ff06f          	j	80002e24 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    80002e38:	00813403          	ld	s0,8(sp)
    80002e3c:	01010113          	addi	sp,sp,16
    80002e40:	00008067          	ret

0000000080002e44 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813423          	sd	s0,8(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e50:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002e54:	00000513          	li	a0,0
    80002e58:	0080006f          	j	80002e60 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e5c:	0007b783          	ld	a5,0(a5)
    80002e60:	00078a63          	beqz	a5,80002e74 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    80002e64:	0087b703          	ld	a4,8(a5)
    80002e68:	fee57ae3          	bgeu	a0,a4,80002e5c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    80002e6c:	00070513          	mv	a0,a4
    80002e70:	fedff06f          	j	80002e5c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    80002e74:	00813403          	ld	s0,8(sp)
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00008067          	ret

0000000080002e80 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002e80:	fe010113          	addi	sp,sp,-32
    80002e84:	00113c23          	sd	ra,24(sp)
    80002e88:	00813823          	sd	s0,16(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	01213023          	sd	s2,0(sp)
    80002e94:	02010413          	addi	s0,sp,32
    80002e98:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002e9c:	00000913          	li	s2,0
    80002ea0:	00c0006f          	j	80002eac <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'e') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ea4:	ffffe097          	auipc	ra,0xffffe
    80002ea8:	534080e7          	jalr	1332(ra) # 800013d8 <_Z15thread_dispatchv>
    while ((key = getc()) != 'e') {
    80002eac:	ffffe097          	auipc	ra,0xffffe
    80002eb0:	634080e7          	jalr	1588(ra) # 800014e0 <_Z4getcv>
    80002eb4:	0005059b          	sext.w	a1,a0
    80002eb8:	06500793          	li	a5,101
    80002ebc:	02f58a63          	beq	a1,a5,80002ef0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002ec0:	0084b503          	ld	a0,8(s1)
    80002ec4:	00003097          	auipc	ra,0x3
    80002ec8:	3f4080e7          	jalr	1012(ra) # 800062b8 <_ZN6Buffer3putEi>
        i++;
    80002ecc:	0019071b          	addiw	a4,s2,1
    80002ed0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ed4:	0004a683          	lw	a3,0(s1)
    80002ed8:	0026979b          	slliw	a5,a3,0x2
    80002edc:	00d787bb          	addw	a5,a5,a3
    80002ee0:	0017979b          	slliw	a5,a5,0x1
    80002ee4:	02f767bb          	remw	a5,a4,a5
    80002ee8:	fc0792e3          	bnez	a5,80002eac <_ZL16producerKeyboardPv+0x2c>
    80002eec:	fb9ff06f          	j	80002ea4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002ef0:	00100793          	li	a5,1
    80002ef4:	00008717          	auipc	a4,0x8
    80002ef8:	72f72e23          	sw	a5,1852(a4) # 8000b630 <_ZL9threadEnd>
    data->buffer->put('!');
    80002efc:	02100593          	li	a1,33
    80002f00:	0084b503          	ld	a0,8(s1)
    80002f04:	00003097          	auipc	ra,0x3
    80002f08:	3b4080e7          	jalr	948(ra) # 800062b8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002f0c:	0104b503          	ld	a0,16(s1)
    80002f10:	ffffe097          	auipc	ra,0xffffe
    80002f14:	578080e7          	jalr	1400(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002f18:	01813083          	ld	ra,24(sp)
    80002f1c:	01013403          	ld	s0,16(sp)
    80002f20:	00813483          	ld	s1,8(sp)
    80002f24:	00013903          	ld	s2,0(sp)
    80002f28:	02010113          	addi	sp,sp,32
    80002f2c:	00008067          	ret

0000000080002f30 <_ZL8producerPv>:

static void producer(void *arg) {
    80002f30:	fe010113          	addi	sp,sp,-32
    80002f34:	00113c23          	sd	ra,24(sp)
    80002f38:	00813823          	sd	s0,16(sp)
    80002f3c:	00913423          	sd	s1,8(sp)
    80002f40:	01213023          	sd	s2,0(sp)
    80002f44:	02010413          	addi	s0,sp,32
    80002f48:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f4c:	00000913          	li	s2,0
    80002f50:	00c0006f          	j	80002f5c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002f54:	ffffe097          	auipc	ra,0xffffe
    80002f58:	484080e7          	jalr	1156(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002f5c:	00008797          	auipc	a5,0x8
    80002f60:	6d47a783          	lw	a5,1748(a5) # 8000b630 <_ZL9threadEnd>
    80002f64:	02079e63          	bnez	a5,80002fa0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002f68:	0004a583          	lw	a1,0(s1)
    80002f6c:	0305859b          	addiw	a1,a1,48
    80002f70:	0084b503          	ld	a0,8(s1)
    80002f74:	00003097          	auipc	ra,0x3
    80002f78:	344080e7          	jalr	836(ra) # 800062b8 <_ZN6Buffer3putEi>
        i++;
    80002f7c:	0019071b          	addiw	a4,s2,1
    80002f80:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002f84:	0004a683          	lw	a3,0(s1)
    80002f88:	0026979b          	slliw	a5,a3,0x2
    80002f8c:	00d787bb          	addw	a5,a5,a3
    80002f90:	0017979b          	slliw	a5,a5,0x1
    80002f94:	02f767bb          	remw	a5,a4,a5
    80002f98:	fc0792e3          	bnez	a5,80002f5c <_ZL8producerPv+0x2c>
    80002f9c:	fb9ff06f          	j	80002f54 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002fa0:	0104b503          	ld	a0,16(s1)
    80002fa4:	ffffe097          	auipc	ra,0xffffe
    80002fa8:	4e4080e7          	jalr	1252(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002fac:	01813083          	ld	ra,24(sp)
    80002fb0:	01013403          	ld	s0,16(sp)
    80002fb4:	00813483          	ld	s1,8(sp)
    80002fb8:	00013903          	ld	s2,0(sp)
    80002fbc:	02010113          	addi	sp,sp,32
    80002fc0:	00008067          	ret

0000000080002fc4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002fc4:	fd010113          	addi	sp,sp,-48
    80002fc8:	02113423          	sd	ra,40(sp)
    80002fcc:	02813023          	sd	s0,32(sp)
    80002fd0:	00913c23          	sd	s1,24(sp)
    80002fd4:	01213823          	sd	s2,16(sp)
    80002fd8:	01313423          	sd	s3,8(sp)
    80002fdc:	03010413          	addi	s0,sp,48
    80002fe0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002fe4:	00000993          	li	s3,0
    80002fe8:	01c0006f          	j	80003004 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002fec:	ffffe097          	auipc	ra,0xffffe
    80002ff0:	3ec080e7          	jalr	1004(ra) # 800013d8 <_Z15thread_dispatchv>
    80002ff4:	0500006f          	j	80003044 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002ff8:	00a00513          	li	a0,10
    80002ffc:	ffffe097          	auipc	ra,0xffffe
    80003000:	50c080e7          	jalr	1292(ra) # 80001508 <_Z4putcc>
    while (!threadEnd) {
    80003004:	00008797          	auipc	a5,0x8
    80003008:	62c7a783          	lw	a5,1580(a5) # 8000b630 <_ZL9threadEnd>
    8000300c:	06079063          	bnez	a5,8000306c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003010:	00893503          	ld	a0,8(s2)
    80003014:	00003097          	auipc	ra,0x3
    80003018:	334080e7          	jalr	820(ra) # 80006348 <_ZN6Buffer3getEv>
        i++;
    8000301c:	0019849b          	addiw	s1,s3,1
    80003020:	0004899b          	sext.w	s3,s1
        putc(key);
    80003024:	0ff57513          	andi	a0,a0,255
    80003028:	ffffe097          	auipc	ra,0xffffe
    8000302c:	4e0080e7          	jalr	1248(ra) # 80001508 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003030:	00092703          	lw	a4,0(s2)
    80003034:	0027179b          	slliw	a5,a4,0x2
    80003038:	00e787bb          	addw	a5,a5,a4
    8000303c:	02f4e7bb          	remw	a5,s1,a5
    80003040:	fa0786e3          	beqz	a5,80002fec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003044:	05000793          	li	a5,80
    80003048:	02f4e4bb          	remw	s1,s1,a5
    8000304c:	fa049ce3          	bnez	s1,80003004 <_ZL8consumerPv+0x40>
    80003050:	fa9ff06f          	j	80002ff8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003054:	00893503          	ld	a0,8(s2)
    80003058:	00003097          	auipc	ra,0x3
    8000305c:	2f0080e7          	jalr	752(ra) # 80006348 <_ZN6Buffer3getEv>
        putc(key);
    80003060:	0ff57513          	andi	a0,a0,255
    80003064:	ffffe097          	auipc	ra,0xffffe
    80003068:	4a4080e7          	jalr	1188(ra) # 80001508 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000306c:	00893503          	ld	a0,8(s2)
    80003070:	00003097          	auipc	ra,0x3
    80003074:	364080e7          	jalr	868(ra) # 800063d4 <_ZN6Buffer6getCntEv>
    80003078:	fca04ee3          	bgtz	a0,80003054 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000307c:	01093503          	ld	a0,16(s2)
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	408080e7          	jalr	1032(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80003088:	02813083          	ld	ra,40(sp)
    8000308c:	02013403          	ld	s0,32(sp)
    80003090:	01813483          	ld	s1,24(sp)
    80003094:	01013903          	ld	s2,16(sp)
    80003098:	00813983          	ld	s3,8(sp)
    8000309c:	03010113          	addi	sp,sp,48
    800030a0:	00008067          	ret

00000000800030a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800030a4:	f9010113          	addi	sp,sp,-112
    800030a8:	06113423          	sd	ra,104(sp)
    800030ac:	06813023          	sd	s0,96(sp)
    800030b0:	04913c23          	sd	s1,88(sp)
    800030b4:	05213823          	sd	s2,80(sp)
    800030b8:	05313423          	sd	s3,72(sp)
    800030bc:	05413023          	sd	s4,64(sp)
    800030c0:	03513c23          	sd	s5,56(sp)
    800030c4:	03613823          	sd	s6,48(sp)
    800030c8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800030cc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800030d0:	00006517          	auipc	a0,0x6
    800030d4:	0d850513          	addi	a0,a0,216 # 800091a8 <CONSOLE_STATUS+0x198>
    800030d8:	00002097          	auipc	ra,0x2
    800030dc:	220080e7          	jalr	544(ra) # 800052f8 <_Z11printStringPKc>
    getString(input, 30);
    800030e0:	01e00593          	li	a1,30
    800030e4:	fa040493          	addi	s1,s0,-96
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00002097          	auipc	ra,0x2
    800030f0:	294080e7          	jalr	660(ra) # 80005380 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800030f4:	00048513          	mv	a0,s1
    800030f8:	00002097          	auipc	ra,0x2
    800030fc:	360080e7          	jalr	864(ra) # 80005458 <_Z11stringToIntPKc>
    80003100:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003104:	00006517          	auipc	a0,0x6
    80003108:	0c450513          	addi	a0,a0,196 # 800091c8 <CONSOLE_STATUS+0x1b8>
    8000310c:	00002097          	auipc	ra,0x2
    80003110:	1ec080e7          	jalr	492(ra) # 800052f8 <_Z11printStringPKc>
    getString(input, 30);
    80003114:	01e00593          	li	a1,30
    80003118:	00048513          	mv	a0,s1
    8000311c:	00002097          	auipc	ra,0x2
    80003120:	264080e7          	jalr	612(ra) # 80005380 <_Z9getStringPci>
    n = stringToInt(input);
    80003124:	00048513          	mv	a0,s1
    80003128:	00002097          	auipc	ra,0x2
    8000312c:	330080e7          	jalr	816(ra) # 80005458 <_Z11stringToIntPKc>
    80003130:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003134:	00006517          	auipc	a0,0x6
    80003138:	0b450513          	addi	a0,a0,180 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000313c:	00002097          	auipc	ra,0x2
    80003140:	1bc080e7          	jalr	444(ra) # 800052f8 <_Z11printStringPKc>
    80003144:	00000613          	li	a2,0
    80003148:	00a00593          	li	a1,10
    8000314c:	00090513          	mv	a0,s2
    80003150:	00002097          	auipc	ra,0x2
    80003154:	358080e7          	jalr	856(ra) # 800054a8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003158:	00006517          	auipc	a0,0x6
    8000315c:	0a850513          	addi	a0,a0,168 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003160:	00002097          	auipc	ra,0x2
    80003164:	198080e7          	jalr	408(ra) # 800052f8 <_Z11printStringPKc>
    80003168:	00000613          	li	a2,0
    8000316c:	00a00593          	li	a1,10
    80003170:	00048513          	mv	a0,s1
    80003174:	00002097          	auipc	ra,0x2
    80003178:	334080e7          	jalr	820(ra) # 800054a8 <_Z8printIntiii>
    printString(".\n");
    8000317c:	00006517          	auipc	a0,0x6
    80003180:	09c50513          	addi	a0,a0,156 # 80009218 <CONSOLE_STATUS+0x208>
    80003184:	00002097          	auipc	ra,0x2
    80003188:	174080e7          	jalr	372(ra) # 800052f8 <_Z11printStringPKc>
    if(threadNum > n) {
    8000318c:	0324c463          	blt	s1,s2,800031b4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003190:	03205c63          	blez	s2,800031c8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003194:	03800513          	li	a0,56
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	e10080e7          	jalr	-496(ra) # 80001fa8 <_Znwm>
    800031a0:	00050a13          	mv	s4,a0
    800031a4:	00048593          	mv	a1,s1
    800031a8:	00003097          	auipc	ra,0x3
    800031ac:	074080e7          	jalr	116(ra) # 8000621c <_ZN6BufferC1Ei>
    800031b0:	0300006f          	j	800031e0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800031b4:	00006517          	auipc	a0,0x6
    800031b8:	06c50513          	addi	a0,a0,108 # 80009220 <CONSOLE_STATUS+0x210>
    800031bc:	00002097          	auipc	ra,0x2
    800031c0:	13c080e7          	jalr	316(ra) # 800052f8 <_Z11printStringPKc>
        return;
    800031c4:	0140006f          	j	800031d8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800031c8:	00006517          	auipc	a0,0x6
    800031cc:	09850513          	addi	a0,a0,152 # 80009260 <CONSOLE_STATUS+0x250>
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	128080e7          	jalr	296(ra) # 800052f8 <_Z11printStringPKc>
        return;
    800031d8:	000b0113          	mv	sp,s6
    800031dc:	1500006f          	j	8000332c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800031e0:	00000593          	li	a1,0
    800031e4:	00008517          	auipc	a0,0x8
    800031e8:	45450513          	addi	a0,a0,1108 # 8000b638 <_ZL10waitForAll>
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	20c080e7          	jalr	524(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    thread_t threads[threadNum];
    800031f4:	00391793          	slli	a5,s2,0x3
    800031f8:	00f78793          	addi	a5,a5,15
    800031fc:	ff07f793          	andi	a5,a5,-16
    80003200:	40f10133          	sub	sp,sp,a5
    80003204:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003208:	0019071b          	addiw	a4,s2,1
    8000320c:	00171793          	slli	a5,a4,0x1
    80003210:	00e787b3          	add	a5,a5,a4
    80003214:	00379793          	slli	a5,a5,0x3
    80003218:	00f78793          	addi	a5,a5,15
    8000321c:	ff07f793          	andi	a5,a5,-16
    80003220:	40f10133          	sub	sp,sp,a5
    80003224:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003228:	00191613          	slli	a2,s2,0x1
    8000322c:	012607b3          	add	a5,a2,s2
    80003230:	00379793          	slli	a5,a5,0x3
    80003234:	00f987b3          	add	a5,s3,a5
    80003238:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000323c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003240:	00008717          	auipc	a4,0x8
    80003244:	3f873703          	ld	a4,1016(a4) # 8000b638 <_ZL10waitForAll>
    80003248:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000324c:	00078613          	mv	a2,a5
    80003250:	00000597          	auipc	a1,0x0
    80003254:	d7458593          	addi	a1,a1,-652 # 80002fc4 <_ZL8consumerPv>
    80003258:	f9840513          	addi	a0,s0,-104
    8000325c:	ffffe097          	auipc	ra,0xffffe
    80003260:	090080e7          	jalr	144(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003264:	00000493          	li	s1,0
    80003268:	0280006f          	j	80003290 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000326c:	00000597          	auipc	a1,0x0
    80003270:	c1458593          	addi	a1,a1,-1004 # 80002e80 <_ZL16producerKeyboardPv>
                      data + i);
    80003274:	00179613          	slli	a2,a5,0x1
    80003278:	00f60633          	add	a2,a2,a5
    8000327c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003280:	00c98633          	add	a2,s3,a2
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	068080e7          	jalr	104(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000328c:	0014849b          	addiw	s1,s1,1
    80003290:	0524d263          	bge	s1,s2,800032d4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003294:	00149793          	slli	a5,s1,0x1
    80003298:	009787b3          	add	a5,a5,s1
    8000329c:	00379793          	slli	a5,a5,0x3
    800032a0:	00f987b3          	add	a5,s3,a5
    800032a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800032a8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800032ac:	00008717          	auipc	a4,0x8
    800032b0:	38c73703          	ld	a4,908(a4) # 8000b638 <_ZL10waitForAll>
    800032b4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800032b8:	00048793          	mv	a5,s1
    800032bc:	00349513          	slli	a0,s1,0x3
    800032c0:	00aa8533          	add	a0,s5,a0
    800032c4:	fa9054e3          	blez	s1,8000326c <_Z22producerConsumer_C_APIv+0x1c8>
    800032c8:	00000597          	auipc	a1,0x0
    800032cc:	c6858593          	addi	a1,a1,-920 # 80002f30 <_ZL8producerPv>
    800032d0:	fa5ff06f          	j	80003274 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800032d4:	ffffe097          	auipc	ra,0xffffe
    800032d8:	104080e7          	jalr	260(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800032dc:	00000493          	li	s1,0
    800032e0:	00994e63          	blt	s2,s1,800032fc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800032e4:	00008517          	auipc	a0,0x8
    800032e8:	35453503          	ld	a0,852(a0) # 8000b638 <_ZL10waitForAll>
    800032ec:	ffffe097          	auipc	ra,0xffffe
    800032f0:	170080e7          	jalr	368(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    for (int i = 0; i <= threadNum; i++) {
    800032f4:	0014849b          	addiw	s1,s1,1
    800032f8:	fe9ff06f          	j	800032e0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800032fc:	00008517          	auipc	a0,0x8
    80003300:	33c53503          	ld	a0,828(a0) # 8000b638 <_ZL10waitForAll>
    80003304:	ffffe097          	auipc	ra,0xffffe
    80003308:	12c080e7          	jalr	300(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    delete buffer;
    8000330c:	000a0e63          	beqz	s4,80003328 <_Z22producerConsumer_C_APIv+0x284>
    80003310:	000a0513          	mv	a0,s4
    80003314:	00003097          	auipc	ra,0x3
    80003318:	148080e7          	jalr	328(ra) # 8000645c <_ZN6BufferD1Ev>
    8000331c:	000a0513          	mv	a0,s4
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	d88080e7          	jalr	-632(ra) # 800020a8 <_ZdlPv>
    80003328:	000b0113          	mv	sp,s6
}
    8000332c:	f9040113          	addi	sp,s0,-112
    80003330:	06813083          	ld	ra,104(sp)
    80003334:	06013403          	ld	s0,96(sp)
    80003338:	05813483          	ld	s1,88(sp)
    8000333c:	05013903          	ld	s2,80(sp)
    80003340:	04813983          	ld	s3,72(sp)
    80003344:	04013a03          	ld	s4,64(sp)
    80003348:	03813a83          	ld	s5,56(sp)
    8000334c:	03013b03          	ld	s6,48(sp)
    80003350:	07010113          	addi	sp,sp,112
    80003354:	00008067          	ret
    80003358:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000335c:	000a0513          	mv	a0,s4
    80003360:	fffff097          	auipc	ra,0xfffff
    80003364:	d48080e7          	jalr	-696(ra) # 800020a8 <_ZdlPv>
    80003368:	00048513          	mv	a0,s1
    8000336c:	00009097          	auipc	ra,0x9
    80003370:	3dc080e7          	jalr	988(ra) # 8000c748 <_Unwind_Resume>

0000000080003374 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003374:	fe010113          	addi	sp,sp,-32
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	00813823          	sd	s0,16(sp)
    80003380:	00913423          	sd	s1,8(sp)
    80003384:	01213023          	sd	s2,0(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003390:	00100793          	li	a5,1
    80003394:	02a7f863          	bgeu	a5,a0,800033c4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003398:	00a00793          	li	a5,10
    8000339c:	02f577b3          	remu	a5,a0,a5
    800033a0:	02078e63          	beqz	a5,800033dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800033a4:	fff48513          	addi	a0,s1,-1
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	fcc080e7          	jalr	-52(ra) # 80003374 <_ZL9fibonaccim>
    800033b0:	00050913          	mv	s2,a0
    800033b4:	ffe48513          	addi	a0,s1,-2
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	fbc080e7          	jalr	-68(ra) # 80003374 <_ZL9fibonaccim>
    800033c0:	00a90533          	add	a0,s2,a0
}
    800033c4:	01813083          	ld	ra,24(sp)
    800033c8:	01013403          	ld	s0,16(sp)
    800033cc:	00813483          	ld	s1,8(sp)
    800033d0:	00013903          	ld	s2,0(sp)
    800033d4:	02010113          	addi	sp,sp,32
    800033d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800033dc:	ffffe097          	auipc	ra,0xffffe
    800033e0:	ffc080e7          	jalr	-4(ra) # 800013d8 <_Z15thread_dispatchv>
    800033e4:	fc1ff06f          	j	800033a4 <_ZL9fibonaccim+0x30>

00000000800033e8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800033e8:	fe010113          	addi	sp,sp,-32
    800033ec:	00113c23          	sd	ra,24(sp)
    800033f0:	00813823          	sd	s0,16(sp)
    800033f4:	00913423          	sd	s1,8(sp)
    800033f8:	01213023          	sd	s2,0(sp)
    800033fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003400:	00000913          	li	s2,0
    80003404:	0380006f          	j	8000343c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	fd0080e7          	jalr	-48(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003410:	00148493          	addi	s1,s1,1
    80003414:	000027b7          	lui	a5,0x2
    80003418:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000341c:	0097ee63          	bltu	a5,s1,80003438 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003420:	00000713          	li	a4,0
    80003424:	000077b7          	lui	a5,0x7
    80003428:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000342c:	fce7eee3          	bltu	a5,a4,80003408 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003430:	00170713          	addi	a4,a4,1
    80003434:	ff1ff06f          	j	80003424 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003438:	00190913          	addi	s2,s2,1
    8000343c:	00900793          	li	a5,9
    80003440:	0527e063          	bltu	a5,s2,80003480 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003444:	00006517          	auipc	a0,0x6
    80003448:	bdc50513          	addi	a0,a0,-1060 # 80009020 <CONSOLE_STATUS+0x10>
    8000344c:	00002097          	auipc	ra,0x2
    80003450:	eac080e7          	jalr	-340(ra) # 800052f8 <_Z11printStringPKc>
    80003454:	00000613          	li	a2,0
    80003458:	00a00593          	li	a1,10
    8000345c:	0009051b          	sext.w	a0,s2
    80003460:	00002097          	auipc	ra,0x2
    80003464:	048080e7          	jalr	72(ra) # 800054a8 <_Z8printIntiii>
    80003468:	00006517          	auipc	a0,0x6
    8000346c:	0a850513          	addi	a0,a0,168 # 80009510 <CONSOLE_STATUS+0x500>
    80003470:	00002097          	auipc	ra,0x2
    80003474:	e88080e7          	jalr	-376(ra) # 800052f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003478:	00000493          	li	s1,0
    8000347c:	f99ff06f          	j	80003414 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003480:	00006517          	auipc	a0,0x6
    80003484:	e1050513          	addi	a0,a0,-496 # 80009290 <CONSOLE_STATUS+0x280>
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	e70080e7          	jalr	-400(ra) # 800052f8 <_Z11printStringPKc>
    finishedA = true;
    80003490:	00100793          	li	a5,1
    80003494:	00008717          	auipc	a4,0x8
    80003498:	1af70623          	sb	a5,428(a4) # 8000b640 <_ZL9finishedA>
}
    8000349c:	01813083          	ld	ra,24(sp)
    800034a0:	01013403          	ld	s0,16(sp)
    800034a4:	00813483          	ld	s1,8(sp)
    800034a8:	00013903          	ld	s2,0(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret

00000000800034b4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800034b4:	fe010113          	addi	sp,sp,-32
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	00813823          	sd	s0,16(sp)
    800034c0:	00913423          	sd	s1,8(sp)
    800034c4:	01213023          	sd	s2,0(sp)
    800034c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800034cc:	00000913          	li	s2,0
    800034d0:	0380006f          	j	80003508 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	f04080e7          	jalr	-252(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800034dc:	00148493          	addi	s1,s1,1
    800034e0:	000027b7          	lui	a5,0x2
    800034e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800034e8:	0097ee63          	bltu	a5,s1,80003504 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800034ec:	00000713          	li	a4,0
    800034f0:	000077b7          	lui	a5,0x7
    800034f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800034f8:	fce7eee3          	bltu	a5,a4,800034d4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800034fc:	00170713          	addi	a4,a4,1
    80003500:	ff1ff06f          	j	800034f0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003504:	00190913          	addi	s2,s2,1
    80003508:	00f00793          	li	a5,15
    8000350c:	0527e063          	bltu	a5,s2,8000354c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003510:	00006517          	auipc	a0,0x6
    80003514:	b4050513          	addi	a0,a0,-1216 # 80009050 <CONSOLE_STATUS+0x40>
    80003518:	00002097          	auipc	ra,0x2
    8000351c:	de0080e7          	jalr	-544(ra) # 800052f8 <_Z11printStringPKc>
    80003520:	00000613          	li	a2,0
    80003524:	00a00593          	li	a1,10
    80003528:	0009051b          	sext.w	a0,s2
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	f7c080e7          	jalr	-132(ra) # 800054a8 <_Z8printIntiii>
    80003534:	00006517          	auipc	a0,0x6
    80003538:	fdc50513          	addi	a0,a0,-36 # 80009510 <CONSOLE_STATUS+0x500>
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	dbc080e7          	jalr	-580(ra) # 800052f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003544:	00000493          	li	s1,0
    80003548:	f99ff06f          	j	800034e0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000354c:	00006517          	auipc	a0,0x6
    80003550:	d5450513          	addi	a0,a0,-684 # 800092a0 <CONSOLE_STATUS+0x290>
    80003554:	00002097          	auipc	ra,0x2
    80003558:	da4080e7          	jalr	-604(ra) # 800052f8 <_Z11printStringPKc>
    finishedB = true;
    8000355c:	00100793          	li	a5,1
    80003560:	00008717          	auipc	a4,0x8
    80003564:	0ef700a3          	sb	a5,225(a4) # 8000b641 <_ZL9finishedB>
    thread_dispatch();
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	e70080e7          	jalr	-400(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80003570:	01813083          	ld	ra,24(sp)
    80003574:	01013403          	ld	s0,16(sp)
    80003578:	00813483          	ld	s1,8(sp)
    8000357c:	00013903          	ld	s2,0(sp)
    80003580:	02010113          	addi	sp,sp,32
    80003584:	00008067          	ret

0000000080003588 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003588:	fe010113          	addi	sp,sp,-32
    8000358c:	00113c23          	sd	ra,24(sp)
    80003590:	00813823          	sd	s0,16(sp)
    80003594:	00913423          	sd	s1,8(sp)
    80003598:	01213023          	sd	s2,0(sp)
    8000359c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800035a0:	00000493          	li	s1,0
    800035a4:	0400006f          	j	800035e4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035a8:	00006517          	auipc	a0,0x6
    800035ac:	d0850513          	addi	a0,a0,-760 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	d48080e7          	jalr	-696(ra) # 800052f8 <_Z11printStringPKc>
    800035b8:	00000613          	li	a2,0
    800035bc:	00a00593          	li	a1,10
    800035c0:	00048513          	mv	a0,s1
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	ee4080e7          	jalr	-284(ra) # 800054a8 <_Z8printIntiii>
    800035cc:	00006517          	auipc	a0,0x6
    800035d0:	f4450513          	addi	a0,a0,-188 # 80009510 <CONSOLE_STATUS+0x500>
    800035d4:	00002097          	auipc	ra,0x2
    800035d8:	d24080e7          	jalr	-732(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800035dc:	0014849b          	addiw	s1,s1,1
    800035e0:	0ff4f493          	andi	s1,s1,255
    800035e4:	00200793          	li	a5,2
    800035e8:	fc97f0e3          	bgeu	a5,s1,800035a8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800035ec:	00006517          	auipc	a0,0x6
    800035f0:	ccc50513          	addi	a0,a0,-820 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	d04080e7          	jalr	-764(ra) # 800052f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800035fc:	00700313          	li	t1,7
    thread_dispatch();
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	dd8080e7          	jalr	-552(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003608:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000360c:	00006517          	auipc	a0,0x6
    80003610:	cbc50513          	addi	a0,a0,-836 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003614:	00002097          	auipc	ra,0x2
    80003618:	ce4080e7          	jalr	-796(ra) # 800052f8 <_Z11printStringPKc>
    8000361c:	00000613          	li	a2,0
    80003620:	00a00593          	li	a1,10
    80003624:	0009051b          	sext.w	a0,s2
    80003628:	00002097          	auipc	ra,0x2
    8000362c:	e80080e7          	jalr	-384(ra) # 800054a8 <_Z8printIntiii>
    80003630:	00006517          	auipc	a0,0x6
    80003634:	ee050513          	addi	a0,a0,-288 # 80009510 <CONSOLE_STATUS+0x500>
    80003638:	00002097          	auipc	ra,0x2
    8000363c:	cc0080e7          	jalr	-832(ra) # 800052f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003640:	00c00513          	li	a0,12
    80003644:	00000097          	auipc	ra,0x0
    80003648:	d30080e7          	jalr	-720(ra) # 80003374 <_ZL9fibonaccim>
    8000364c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003650:	00006517          	auipc	a0,0x6
    80003654:	c8050513          	addi	a0,a0,-896 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003658:	00002097          	auipc	ra,0x2
    8000365c:	ca0080e7          	jalr	-864(ra) # 800052f8 <_Z11printStringPKc>
    80003660:	00000613          	li	a2,0
    80003664:	00a00593          	li	a1,10
    80003668:	0009051b          	sext.w	a0,s2
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	e3c080e7          	jalr	-452(ra) # 800054a8 <_Z8printIntiii>
    80003674:	00006517          	auipc	a0,0x6
    80003678:	e9c50513          	addi	a0,a0,-356 # 80009510 <CONSOLE_STATUS+0x500>
    8000367c:	00002097          	auipc	ra,0x2
    80003680:	c7c080e7          	jalr	-900(ra) # 800052f8 <_Z11printStringPKc>
    80003684:	0400006f          	j	800036c4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003688:	00006517          	auipc	a0,0x6
    8000368c:	c2850513          	addi	a0,a0,-984 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003690:	00002097          	auipc	ra,0x2
    80003694:	c68080e7          	jalr	-920(ra) # 800052f8 <_Z11printStringPKc>
    80003698:	00000613          	li	a2,0
    8000369c:	00a00593          	li	a1,10
    800036a0:	00048513          	mv	a0,s1
    800036a4:	00002097          	auipc	ra,0x2
    800036a8:	e04080e7          	jalr	-508(ra) # 800054a8 <_Z8printIntiii>
    800036ac:	00006517          	auipc	a0,0x6
    800036b0:	e6450513          	addi	a0,a0,-412 # 80009510 <CONSOLE_STATUS+0x500>
    800036b4:	00002097          	auipc	ra,0x2
    800036b8:	c44080e7          	jalr	-956(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800036bc:	0014849b          	addiw	s1,s1,1
    800036c0:	0ff4f493          	andi	s1,s1,255
    800036c4:	00500793          	li	a5,5
    800036c8:	fc97f0e3          	bgeu	a5,s1,80003688 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800036cc:	00006517          	auipc	a0,0x6
    800036d0:	bc450513          	addi	a0,a0,-1084 # 80009290 <CONSOLE_STATUS+0x280>
    800036d4:	00002097          	auipc	ra,0x2
    800036d8:	c24080e7          	jalr	-988(ra) # 800052f8 <_Z11printStringPKc>
    finishedC = true;
    800036dc:	00100793          	li	a5,1
    800036e0:	00008717          	auipc	a4,0x8
    800036e4:	f6f70123          	sb	a5,-158(a4) # 8000b642 <_ZL9finishedC>
    thread_dispatch();
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	cf0080e7          	jalr	-784(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800036f0:	01813083          	ld	ra,24(sp)
    800036f4:	01013403          	ld	s0,16(sp)
    800036f8:	00813483          	ld	s1,8(sp)
    800036fc:	00013903          	ld	s2,0(sp)
    80003700:	02010113          	addi	sp,sp,32
    80003704:	00008067          	ret

0000000080003708 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003708:	fe010113          	addi	sp,sp,-32
    8000370c:	00113c23          	sd	ra,24(sp)
    80003710:	00813823          	sd	s0,16(sp)
    80003714:	00913423          	sd	s1,8(sp)
    80003718:	01213023          	sd	s2,0(sp)
    8000371c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003720:	00a00493          	li	s1,10
    80003724:	0400006f          	j	80003764 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003728:	00006517          	auipc	a0,0x6
    8000372c:	bb850513          	addi	a0,a0,-1096 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003730:	00002097          	auipc	ra,0x2
    80003734:	bc8080e7          	jalr	-1080(ra) # 800052f8 <_Z11printStringPKc>
    80003738:	00000613          	li	a2,0
    8000373c:	00a00593          	li	a1,10
    80003740:	00048513          	mv	a0,s1
    80003744:	00002097          	auipc	ra,0x2
    80003748:	d64080e7          	jalr	-668(ra) # 800054a8 <_Z8printIntiii>
    8000374c:	00006517          	auipc	a0,0x6
    80003750:	dc450513          	addi	a0,a0,-572 # 80009510 <CONSOLE_STATUS+0x500>
    80003754:	00002097          	auipc	ra,0x2
    80003758:	ba4080e7          	jalr	-1116(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000375c:	0014849b          	addiw	s1,s1,1
    80003760:	0ff4f493          	andi	s1,s1,255
    80003764:	00c00793          	li	a5,12
    80003768:	fc97f0e3          	bgeu	a5,s1,80003728 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000376c:	00006517          	auipc	a0,0x6
    80003770:	b7c50513          	addi	a0,a0,-1156 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003774:	00002097          	auipc	ra,0x2
    80003778:	b84080e7          	jalr	-1148(ra) # 800052f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000377c:	00500313          	li	t1,5
    thread_dispatch();
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	c58080e7          	jalr	-936(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003788:	01000513          	li	a0,16
    8000378c:	00000097          	auipc	ra,0x0
    80003790:	be8080e7          	jalr	-1048(ra) # 80003374 <_ZL9fibonaccim>
    80003794:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003798:	00006517          	auipc	a0,0x6
    8000379c:	b6050513          	addi	a0,a0,-1184 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800037a0:	00002097          	auipc	ra,0x2
    800037a4:	b58080e7          	jalr	-1192(ra) # 800052f8 <_Z11printStringPKc>
    800037a8:	00000613          	li	a2,0
    800037ac:	00a00593          	li	a1,10
    800037b0:	0009051b          	sext.w	a0,s2
    800037b4:	00002097          	auipc	ra,0x2
    800037b8:	cf4080e7          	jalr	-780(ra) # 800054a8 <_Z8printIntiii>
    800037bc:	00006517          	auipc	a0,0x6
    800037c0:	d5450513          	addi	a0,a0,-684 # 80009510 <CONSOLE_STATUS+0x500>
    800037c4:	00002097          	auipc	ra,0x2
    800037c8:	b34080e7          	jalr	-1228(ra) # 800052f8 <_Z11printStringPKc>
    800037cc:	0400006f          	j	8000380c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800037d0:	00006517          	auipc	a0,0x6
    800037d4:	b1050513          	addi	a0,a0,-1264 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800037d8:	00002097          	auipc	ra,0x2
    800037dc:	b20080e7          	jalr	-1248(ra) # 800052f8 <_Z11printStringPKc>
    800037e0:	00000613          	li	a2,0
    800037e4:	00a00593          	li	a1,10
    800037e8:	00048513          	mv	a0,s1
    800037ec:	00002097          	auipc	ra,0x2
    800037f0:	cbc080e7          	jalr	-836(ra) # 800054a8 <_Z8printIntiii>
    800037f4:	00006517          	auipc	a0,0x6
    800037f8:	d1c50513          	addi	a0,a0,-740 # 80009510 <CONSOLE_STATUS+0x500>
    800037fc:	00002097          	auipc	ra,0x2
    80003800:	afc080e7          	jalr	-1284(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003804:	0014849b          	addiw	s1,s1,1
    80003808:	0ff4f493          	andi	s1,s1,255
    8000380c:	00f00793          	li	a5,15
    80003810:	fc97f0e3          	bgeu	a5,s1,800037d0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003814:	00006517          	auipc	a0,0x6
    80003818:	af450513          	addi	a0,a0,-1292 # 80009308 <CONSOLE_STATUS+0x2f8>
    8000381c:	00002097          	auipc	ra,0x2
    80003820:	adc080e7          	jalr	-1316(ra) # 800052f8 <_Z11printStringPKc>
    finishedD = true;
    80003824:	00100793          	li	a5,1
    80003828:	00008717          	auipc	a4,0x8
    8000382c:	e0f70da3          	sb	a5,-485(a4) # 8000b643 <_ZL9finishedD>
    thread_dispatch();
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	ba8080e7          	jalr	-1112(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80003838:	01813083          	ld	ra,24(sp)
    8000383c:	01013403          	ld	s0,16(sp)
    80003840:	00813483          	ld	s1,8(sp)
    80003844:	00013903          	ld	s2,0(sp)
    80003848:	02010113          	addi	sp,sp,32
    8000384c:	00008067          	ret

0000000080003850 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003850:	fc010113          	addi	sp,sp,-64
    80003854:	02113c23          	sd	ra,56(sp)
    80003858:	02813823          	sd	s0,48(sp)
    8000385c:	02913423          	sd	s1,40(sp)
    80003860:	03213023          	sd	s2,32(sp)
    80003864:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003868:	02000513          	li	a0,32
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	73c080e7          	jalr	1852(ra) # 80001fa8 <_Znwm>
    80003874:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003878:	fffff097          	auipc	ra,0xfffff
    8000387c:	aec080e7          	jalr	-1300(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003880:	00008797          	auipc	a5,0x8
    80003884:	b5078793          	addi	a5,a5,-1200 # 8000b3d0 <_ZTV7WorkerA+0x10>
    80003888:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000388c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003890:	00006517          	auipc	a0,0x6
    80003894:	a8850513          	addi	a0,a0,-1400 # 80009318 <CONSOLE_STATUS+0x308>
    80003898:	00002097          	auipc	ra,0x2
    8000389c:	a60080e7          	jalr	-1440(ra) # 800052f8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800038a0:	02000513          	li	a0,32
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	704080e7          	jalr	1796(ra) # 80001fa8 <_Znwm>
    800038ac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	ab4080e7          	jalr	-1356(ra) # 80002364 <_ZN6ThreadC1Ev>
    800038b8:	00008797          	auipc	a5,0x8
    800038bc:	b4078793          	addi	a5,a5,-1216 # 8000b3f8 <_ZTV7WorkerB+0x10>
    800038c0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800038c4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800038c8:	00006517          	auipc	a0,0x6
    800038cc:	a6850513          	addi	a0,a0,-1432 # 80009330 <CONSOLE_STATUS+0x320>
    800038d0:	00002097          	auipc	ra,0x2
    800038d4:	a28080e7          	jalr	-1496(ra) # 800052f8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800038d8:	02000513          	li	a0,32
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	6cc080e7          	jalr	1740(ra) # 80001fa8 <_Znwm>
    800038e4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	a7c080e7          	jalr	-1412(ra) # 80002364 <_ZN6ThreadC1Ev>
    800038f0:	00008797          	auipc	a5,0x8
    800038f4:	b3078793          	addi	a5,a5,-1232 # 8000b420 <_ZTV7WorkerC+0x10>
    800038f8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800038fc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003900:	00006517          	auipc	a0,0x6
    80003904:	a4850513          	addi	a0,a0,-1464 # 80009348 <CONSOLE_STATUS+0x338>
    80003908:	00002097          	auipc	ra,0x2
    8000390c:	9f0080e7          	jalr	-1552(ra) # 800052f8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003910:	02000513          	li	a0,32
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	694080e7          	jalr	1684(ra) # 80001fa8 <_Znwm>
    8000391c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	a44080e7          	jalr	-1468(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003928:	00008797          	auipc	a5,0x8
    8000392c:	b2078793          	addi	a5,a5,-1248 # 8000b448 <_ZTV7WorkerD+0x10>
    80003930:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003934:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003938:	00006517          	auipc	a0,0x6
    8000393c:	a2850513          	addi	a0,a0,-1496 # 80009360 <CONSOLE_STATUS+0x350>
    80003940:	00002097          	auipc	ra,0x2
    80003944:	9b8080e7          	jalr	-1608(ra) # 800052f8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003948:	00000493          	li	s1,0
    8000394c:	00300793          	li	a5,3
    80003950:	0297c663          	blt	a5,s1,8000397c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003954:	00349793          	slli	a5,s1,0x3
    80003958:	fe040713          	addi	a4,s0,-32
    8000395c:	00f707b3          	add	a5,a4,a5
    80003960:	fe07b503          	ld	a0,-32(a5)
    80003964:	fffff097          	auipc	ra,0xfffff
    80003968:	a38080e7          	jalr	-1480(ra) # 8000239c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000396c:	0014849b          	addiw	s1,s1,1
    80003970:	fddff06f          	j	8000394c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	998080e7          	jalr	-1640(ra) # 8000230c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000397c:	00008797          	auipc	a5,0x8
    80003980:	cc47c783          	lbu	a5,-828(a5) # 8000b640 <_ZL9finishedA>
    80003984:	fe0788e3          	beqz	a5,80003974 <_Z20Threads_CPP_API_testv+0x124>
    80003988:	00008797          	auipc	a5,0x8
    8000398c:	cb97c783          	lbu	a5,-839(a5) # 8000b641 <_ZL9finishedB>
    80003990:	fe0782e3          	beqz	a5,80003974 <_Z20Threads_CPP_API_testv+0x124>
    80003994:	00008797          	auipc	a5,0x8
    80003998:	cae7c783          	lbu	a5,-850(a5) # 8000b642 <_ZL9finishedC>
    8000399c:	fc078ce3          	beqz	a5,80003974 <_Z20Threads_CPP_API_testv+0x124>
    800039a0:	00008797          	auipc	a5,0x8
    800039a4:	ca37c783          	lbu	a5,-861(a5) # 8000b643 <_ZL9finishedD>
    800039a8:	fc0786e3          	beqz	a5,80003974 <_Z20Threads_CPP_API_testv+0x124>
    800039ac:	fc040493          	addi	s1,s0,-64
    800039b0:	0080006f          	j	800039b8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800039b4:	00848493          	addi	s1,s1,8
    800039b8:	fe040793          	addi	a5,s0,-32
    800039bc:	08f48663          	beq	s1,a5,80003a48 <_Z20Threads_CPP_API_testv+0x1f8>
    800039c0:	0004b503          	ld	a0,0(s1)
    800039c4:	fe0508e3          	beqz	a0,800039b4 <_Z20Threads_CPP_API_testv+0x164>
    800039c8:	00053783          	ld	a5,0(a0)
    800039cc:	0087b783          	ld	a5,8(a5)
    800039d0:	000780e7          	jalr	a5
    800039d4:	fe1ff06f          	j	800039b4 <_Z20Threads_CPP_API_testv+0x164>
    800039d8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800039dc:	00048513          	mv	a0,s1
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	6c8080e7          	jalr	1736(ra) # 800020a8 <_ZdlPv>
    800039e8:	00090513          	mv	a0,s2
    800039ec:	00009097          	auipc	ra,0x9
    800039f0:	d5c080e7          	jalr	-676(ra) # 8000c748 <_Unwind_Resume>
    800039f4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800039f8:	00048513          	mv	a0,s1
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	6ac080e7          	jalr	1708(ra) # 800020a8 <_ZdlPv>
    80003a04:	00090513          	mv	a0,s2
    80003a08:	00009097          	auipc	ra,0x9
    80003a0c:	d40080e7          	jalr	-704(ra) # 8000c748 <_Unwind_Resume>
    80003a10:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003a14:	00048513          	mv	a0,s1
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	690080e7          	jalr	1680(ra) # 800020a8 <_ZdlPv>
    80003a20:	00090513          	mv	a0,s2
    80003a24:	00009097          	auipc	ra,0x9
    80003a28:	d24080e7          	jalr	-732(ra) # 8000c748 <_Unwind_Resume>
    80003a2c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003a30:	00048513          	mv	a0,s1
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	674080e7          	jalr	1652(ra) # 800020a8 <_ZdlPv>
    80003a3c:	00090513          	mv	a0,s2
    80003a40:	00009097          	auipc	ra,0x9
    80003a44:	d08080e7          	jalr	-760(ra) # 8000c748 <_Unwind_Resume>
}
    80003a48:	03813083          	ld	ra,56(sp)
    80003a4c:	03013403          	ld	s0,48(sp)
    80003a50:	02813483          	ld	s1,40(sp)
    80003a54:	02013903          	ld	s2,32(sp)
    80003a58:	04010113          	addi	sp,sp,64
    80003a5c:	00008067          	ret

0000000080003a60 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003a60:	ff010113          	addi	sp,sp,-16
    80003a64:	00113423          	sd	ra,8(sp)
    80003a68:	00813023          	sd	s0,0(sp)
    80003a6c:	01010413          	addi	s0,sp,16
    80003a70:	00008797          	auipc	a5,0x8
    80003a74:	96078793          	addi	a5,a5,-1696 # 8000b3d0 <_ZTV7WorkerA+0x10>
    80003a78:	00f53023          	sd	a5,0(a0)
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	72c080e7          	jalr	1836(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003a84:	00813083          	ld	ra,8(sp)
    80003a88:	00013403          	ld	s0,0(sp)
    80003a8c:	01010113          	addi	sp,sp,16
    80003a90:	00008067          	ret

0000000080003a94 <_ZN7WorkerAD0Ev>:
    80003a94:	fe010113          	addi	sp,sp,-32
    80003a98:	00113c23          	sd	ra,24(sp)
    80003a9c:	00813823          	sd	s0,16(sp)
    80003aa0:	00913423          	sd	s1,8(sp)
    80003aa4:	02010413          	addi	s0,sp,32
    80003aa8:	00050493          	mv	s1,a0
    80003aac:	00008797          	auipc	a5,0x8
    80003ab0:	92478793          	addi	a5,a5,-1756 # 8000b3d0 <_ZTV7WorkerA+0x10>
    80003ab4:	00f53023          	sd	a5,0(a0)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	6f0080e7          	jalr	1776(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003ac0:	00048513          	mv	a0,s1
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	5e4080e7          	jalr	1508(ra) # 800020a8 <_ZdlPv>
    80003acc:	01813083          	ld	ra,24(sp)
    80003ad0:	01013403          	ld	s0,16(sp)
    80003ad4:	00813483          	ld	s1,8(sp)
    80003ad8:	02010113          	addi	sp,sp,32
    80003adc:	00008067          	ret

0000000080003ae0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003ae0:	ff010113          	addi	sp,sp,-16
    80003ae4:	00113423          	sd	ra,8(sp)
    80003ae8:	00813023          	sd	s0,0(sp)
    80003aec:	01010413          	addi	s0,sp,16
    80003af0:	00008797          	auipc	a5,0x8
    80003af4:	90878793          	addi	a5,a5,-1784 # 8000b3f8 <_ZTV7WorkerB+0x10>
    80003af8:	00f53023          	sd	a5,0(a0)
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	6ac080e7          	jalr	1708(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003b04:	00813083          	ld	ra,8(sp)
    80003b08:	00013403          	ld	s0,0(sp)
    80003b0c:	01010113          	addi	sp,sp,16
    80003b10:	00008067          	ret

0000000080003b14 <_ZN7WorkerBD0Ev>:
    80003b14:	fe010113          	addi	sp,sp,-32
    80003b18:	00113c23          	sd	ra,24(sp)
    80003b1c:	00813823          	sd	s0,16(sp)
    80003b20:	00913423          	sd	s1,8(sp)
    80003b24:	02010413          	addi	s0,sp,32
    80003b28:	00050493          	mv	s1,a0
    80003b2c:	00008797          	auipc	a5,0x8
    80003b30:	8cc78793          	addi	a5,a5,-1844 # 8000b3f8 <_ZTV7WorkerB+0x10>
    80003b34:	00f53023          	sd	a5,0(a0)
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	670080e7          	jalr	1648(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003b40:	00048513          	mv	a0,s1
    80003b44:	ffffe097          	auipc	ra,0xffffe
    80003b48:	564080e7          	jalr	1380(ra) # 800020a8 <_ZdlPv>
    80003b4c:	01813083          	ld	ra,24(sp)
    80003b50:	01013403          	ld	s0,16(sp)
    80003b54:	00813483          	ld	s1,8(sp)
    80003b58:	02010113          	addi	sp,sp,32
    80003b5c:	00008067          	ret

0000000080003b60 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003b60:	ff010113          	addi	sp,sp,-16
    80003b64:	00113423          	sd	ra,8(sp)
    80003b68:	00813023          	sd	s0,0(sp)
    80003b6c:	01010413          	addi	s0,sp,16
    80003b70:	00008797          	auipc	a5,0x8
    80003b74:	8b078793          	addi	a5,a5,-1872 # 8000b420 <_ZTV7WorkerC+0x10>
    80003b78:	00f53023          	sd	a5,0(a0)
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	62c080e7          	jalr	1580(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003b84:	00813083          	ld	ra,8(sp)
    80003b88:	00013403          	ld	s0,0(sp)
    80003b8c:	01010113          	addi	sp,sp,16
    80003b90:	00008067          	ret

0000000080003b94 <_ZN7WorkerCD0Ev>:
    80003b94:	fe010113          	addi	sp,sp,-32
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	00813823          	sd	s0,16(sp)
    80003ba0:	00913423          	sd	s1,8(sp)
    80003ba4:	02010413          	addi	s0,sp,32
    80003ba8:	00050493          	mv	s1,a0
    80003bac:	00008797          	auipc	a5,0x8
    80003bb0:	87478793          	addi	a5,a5,-1932 # 8000b420 <_ZTV7WorkerC+0x10>
    80003bb4:	00f53023          	sd	a5,0(a0)
    80003bb8:	ffffe097          	auipc	ra,0xffffe
    80003bbc:	5f0080e7          	jalr	1520(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	4e4080e7          	jalr	1252(ra) # 800020a8 <_ZdlPv>
    80003bcc:	01813083          	ld	ra,24(sp)
    80003bd0:	01013403          	ld	s0,16(sp)
    80003bd4:	00813483          	ld	s1,8(sp)
    80003bd8:	02010113          	addi	sp,sp,32
    80003bdc:	00008067          	ret

0000000080003be0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003be0:	ff010113          	addi	sp,sp,-16
    80003be4:	00113423          	sd	ra,8(sp)
    80003be8:	00813023          	sd	s0,0(sp)
    80003bec:	01010413          	addi	s0,sp,16
    80003bf0:	00008797          	auipc	a5,0x8
    80003bf4:	85878793          	addi	a5,a5,-1960 # 8000b448 <_ZTV7WorkerD+0x10>
    80003bf8:	00f53023          	sd	a5,0(a0)
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	5ac080e7          	jalr	1452(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003c04:	00813083          	ld	ra,8(sp)
    80003c08:	00013403          	ld	s0,0(sp)
    80003c0c:	01010113          	addi	sp,sp,16
    80003c10:	00008067          	ret

0000000080003c14 <_ZN7WorkerDD0Ev>:
    80003c14:	fe010113          	addi	sp,sp,-32
    80003c18:	00113c23          	sd	ra,24(sp)
    80003c1c:	00813823          	sd	s0,16(sp)
    80003c20:	00913423          	sd	s1,8(sp)
    80003c24:	02010413          	addi	s0,sp,32
    80003c28:	00050493          	mv	s1,a0
    80003c2c:	00008797          	auipc	a5,0x8
    80003c30:	81c78793          	addi	a5,a5,-2020 # 8000b448 <_ZTV7WorkerD+0x10>
    80003c34:	00f53023          	sd	a5,0(a0)
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	570080e7          	jalr	1392(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80003c40:	00048513          	mv	a0,s1
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	464080e7          	jalr	1124(ra) # 800020a8 <_ZdlPv>
    80003c4c:	01813083          	ld	ra,24(sp)
    80003c50:	01013403          	ld	s0,16(sp)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	02010113          	addi	sp,sp,32
    80003c5c:	00008067          	ret

0000000080003c60 <_ZN7WorkerA3runEv>:
    void run() override {
    80003c60:	ff010113          	addi	sp,sp,-16
    80003c64:	00113423          	sd	ra,8(sp)
    80003c68:	00813023          	sd	s0,0(sp)
    80003c6c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003c70:	00000593          	li	a1,0
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	774080e7          	jalr	1908(ra) # 800033e8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003c7c:	00813083          	ld	ra,8(sp)
    80003c80:	00013403          	ld	s0,0(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret

0000000080003c8c <_ZN7WorkerB3runEv>:
    void run() override {
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00113423          	sd	ra,8(sp)
    80003c94:	00813023          	sd	s0,0(sp)
    80003c98:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003c9c:	00000593          	li	a1,0
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	814080e7          	jalr	-2028(ra) # 800034b4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003ca8:	00813083          	ld	ra,8(sp)
    80003cac:	00013403          	ld	s0,0(sp)
    80003cb0:	01010113          	addi	sp,sp,16
    80003cb4:	00008067          	ret

0000000080003cb8 <_ZN7WorkerC3runEv>:
    void run() override {
    80003cb8:	ff010113          	addi	sp,sp,-16
    80003cbc:	00113423          	sd	ra,8(sp)
    80003cc0:	00813023          	sd	s0,0(sp)
    80003cc4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003cc8:	00000593          	li	a1,0
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	8bc080e7          	jalr	-1860(ra) # 80003588 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003cd4:	00813083          	ld	ra,8(sp)
    80003cd8:	00013403          	ld	s0,0(sp)
    80003cdc:	01010113          	addi	sp,sp,16
    80003ce0:	00008067          	ret

0000000080003ce4 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ce4:	ff010113          	addi	sp,sp,-16
    80003ce8:	00113423          	sd	ra,8(sp)
    80003cec:	00813023          	sd	s0,0(sp)
    80003cf0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003cf4:	00000593          	li	a1,0
    80003cf8:	00000097          	auipc	ra,0x0
    80003cfc:	a10080e7          	jalr	-1520(ra) # 80003708 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003d00:	00813083          	ld	ra,8(sp)
    80003d04:	00013403          	ld	s0,0(sp)
    80003d08:	01010113          	addi	sp,sp,16
    80003d0c:	00008067          	ret

0000000080003d10 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003d10:	f8010113          	addi	sp,sp,-128
    80003d14:	06113c23          	sd	ra,120(sp)
    80003d18:	06813823          	sd	s0,112(sp)
    80003d1c:	06913423          	sd	s1,104(sp)
    80003d20:	07213023          	sd	s2,96(sp)
    80003d24:	05313c23          	sd	s3,88(sp)
    80003d28:	05413823          	sd	s4,80(sp)
    80003d2c:	05513423          	sd	s5,72(sp)
    80003d30:	05613023          	sd	s6,64(sp)
    80003d34:	03713c23          	sd	s7,56(sp)
    80003d38:	03813823          	sd	s8,48(sp)
    80003d3c:	03913423          	sd	s9,40(sp)
    80003d40:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003d44:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003d48:	00005517          	auipc	a0,0x5
    80003d4c:	46050513          	addi	a0,a0,1120 # 800091a8 <CONSOLE_STATUS+0x198>
    80003d50:	00001097          	auipc	ra,0x1
    80003d54:	5a8080e7          	jalr	1448(ra) # 800052f8 <_Z11printStringPKc>
    getString(input, 30);
    80003d58:	01e00593          	li	a1,30
    80003d5c:	f8040493          	addi	s1,s0,-128
    80003d60:	00048513          	mv	a0,s1
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	61c080e7          	jalr	1564(ra) # 80005380 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003d6c:	00048513          	mv	a0,s1
    80003d70:	00001097          	auipc	ra,0x1
    80003d74:	6e8080e7          	jalr	1768(ra) # 80005458 <_Z11stringToIntPKc>
    80003d78:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003d7c:	00005517          	auipc	a0,0x5
    80003d80:	44c50513          	addi	a0,a0,1100 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003d84:	00001097          	auipc	ra,0x1
    80003d88:	574080e7          	jalr	1396(ra) # 800052f8 <_Z11printStringPKc>
    getString(input, 30);
    80003d8c:	01e00593          	li	a1,30
    80003d90:	00048513          	mv	a0,s1
    80003d94:	00001097          	auipc	ra,0x1
    80003d98:	5ec080e7          	jalr	1516(ra) # 80005380 <_Z9getStringPci>
    n = stringToInt(input);
    80003d9c:	00048513          	mv	a0,s1
    80003da0:	00001097          	auipc	ra,0x1
    80003da4:	6b8080e7          	jalr	1720(ra) # 80005458 <_Z11stringToIntPKc>
    80003da8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003dac:	00005517          	auipc	a0,0x5
    80003db0:	43c50513          	addi	a0,a0,1084 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	544080e7          	jalr	1348(ra) # 800052f8 <_Z11printStringPKc>
    printInt(threadNum);
    80003dbc:	00000613          	li	a2,0
    80003dc0:	00a00593          	li	a1,10
    80003dc4:	00098513          	mv	a0,s3
    80003dc8:	00001097          	auipc	ra,0x1
    80003dcc:	6e0080e7          	jalr	1760(ra) # 800054a8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003dd0:	00005517          	auipc	a0,0x5
    80003dd4:	43050513          	addi	a0,a0,1072 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	520080e7          	jalr	1312(ra) # 800052f8 <_Z11printStringPKc>
    printInt(n);
    80003de0:	00000613          	li	a2,0
    80003de4:	00a00593          	li	a1,10
    80003de8:	00048513          	mv	a0,s1
    80003dec:	00001097          	auipc	ra,0x1
    80003df0:	6bc080e7          	jalr	1724(ra) # 800054a8 <_Z8printIntiii>
    printString(".\n");
    80003df4:	00005517          	auipc	a0,0x5
    80003df8:	42450513          	addi	a0,a0,1060 # 80009218 <CONSOLE_STATUS+0x208>
    80003dfc:	00001097          	auipc	ra,0x1
    80003e00:	4fc080e7          	jalr	1276(ra) # 800052f8 <_Z11printStringPKc>
    if (threadNum > n) {
    80003e04:	0334c463          	blt	s1,s3,80003e2c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003e08:	03305c63          	blez	s3,80003e40 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003e0c:	03800513          	li	a0,56
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	198080e7          	jalr	408(ra) # 80001fa8 <_Znwm>
    80003e18:	00050a93          	mv	s5,a0
    80003e1c:	00048593          	mv	a1,s1
    80003e20:	00001097          	auipc	ra,0x1
    80003e24:	7a8080e7          	jalr	1960(ra) # 800055c8 <_ZN9BufferCPPC1Ei>
    80003e28:	0300006f          	j	80003e58 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003e2c:	00005517          	auipc	a0,0x5
    80003e30:	3f450513          	addi	a0,a0,1012 # 80009220 <CONSOLE_STATUS+0x210>
    80003e34:	00001097          	auipc	ra,0x1
    80003e38:	4c4080e7          	jalr	1220(ra) # 800052f8 <_Z11printStringPKc>
        return;
    80003e3c:	0140006f          	j	80003e50 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003e40:	00005517          	auipc	a0,0x5
    80003e44:	42050513          	addi	a0,a0,1056 # 80009260 <CONSOLE_STATUS+0x250>
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	4b0080e7          	jalr	1200(ra) # 800052f8 <_Z11printStringPKc>
        return;
    80003e50:	000c0113          	mv	sp,s8
    80003e54:	2140006f          	j	80004068 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003e58:	01000513          	li	a0,16
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	14c080e7          	jalr	332(ra) # 80001fa8 <_Znwm>
    80003e64:	00050913          	mv	s2,a0
    80003e68:	00000593          	li	a1,0
    80003e6c:	ffffe097          	auipc	ra,0xffffe
    80003e70:	58c080e7          	jalr	1420(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    80003e74:	00007797          	auipc	a5,0x7
    80003e78:	7d27be23          	sd	s2,2012(a5) # 8000b650 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003e7c:	00399793          	slli	a5,s3,0x3
    80003e80:	00f78793          	addi	a5,a5,15
    80003e84:	ff07f793          	andi	a5,a5,-16
    80003e88:	40f10133          	sub	sp,sp,a5
    80003e8c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003e90:	0019871b          	addiw	a4,s3,1
    80003e94:	00171793          	slli	a5,a4,0x1
    80003e98:	00e787b3          	add	a5,a5,a4
    80003e9c:	00379793          	slli	a5,a5,0x3
    80003ea0:	00f78793          	addi	a5,a5,15
    80003ea4:	ff07f793          	andi	a5,a5,-16
    80003ea8:	40f10133          	sub	sp,sp,a5
    80003eac:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003eb0:	00199493          	slli	s1,s3,0x1
    80003eb4:	013484b3          	add	s1,s1,s3
    80003eb8:	00349493          	slli	s1,s1,0x3
    80003ebc:	009b04b3          	add	s1,s6,s1
    80003ec0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003ec4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003ec8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ecc:	02800513          	li	a0,40
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	0d8080e7          	jalr	216(ra) # 80001fa8 <_Znwm>
    80003ed8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003edc:	ffffe097          	auipc	ra,0xffffe
    80003ee0:	488080e7          	jalr	1160(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003ee4:	00007797          	auipc	a5,0x7
    80003ee8:	5dc78793          	addi	a5,a5,1500 # 8000b4c0 <_ZTV8Consumer+0x10>
    80003eec:	00fbb023          	sd	a5,0(s7)
    80003ef0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003ef4:	000b8513          	mv	a0,s7
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	4a4080e7          	jalr	1188(ra) # 8000239c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003f00:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003f04:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003f08:	00007797          	auipc	a5,0x7
    80003f0c:	7487b783          	ld	a5,1864(a5) # 8000b650 <_ZL10waitForAll>
    80003f10:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f14:	02800513          	li	a0,40
    80003f18:	ffffe097          	auipc	ra,0xffffe
    80003f1c:	090080e7          	jalr	144(ra) # 80001fa8 <_Znwm>
    80003f20:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003f24:	ffffe097          	auipc	ra,0xffffe
    80003f28:	440080e7          	jalr	1088(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003f2c:	00007797          	auipc	a5,0x7
    80003f30:	54478793          	addi	a5,a5,1348 # 8000b470 <_ZTV16ProducerKeyborad+0x10>
    80003f34:	00f4b023          	sd	a5,0(s1)
    80003f38:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f3c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003f40:	00048513          	mv	a0,s1
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	458080e7          	jalr	1112(ra) # 8000239c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003f4c:	00100913          	li	s2,1
    80003f50:	0300006f          	j	80003f80 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f54:	00007797          	auipc	a5,0x7
    80003f58:	54478793          	addi	a5,a5,1348 # 8000b498 <_ZTV8Producer+0x10>
    80003f5c:	00fcb023          	sd	a5,0(s9)
    80003f60:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003f64:	00391793          	slli	a5,s2,0x3
    80003f68:	00fa07b3          	add	a5,s4,a5
    80003f6c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003f70:	000c8513          	mv	a0,s9
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	428080e7          	jalr	1064(ra) # 8000239c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003f7c:	0019091b          	addiw	s2,s2,1
    80003f80:	05395263          	bge	s2,s3,80003fc4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003f84:	00191493          	slli	s1,s2,0x1
    80003f88:	012484b3          	add	s1,s1,s2
    80003f8c:	00349493          	slli	s1,s1,0x3
    80003f90:	009b04b3          	add	s1,s6,s1
    80003f94:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003f98:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003f9c:	00007797          	auipc	a5,0x7
    80003fa0:	6b47b783          	ld	a5,1716(a5) # 8000b650 <_ZL10waitForAll>
    80003fa4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003fa8:	02800513          	li	a0,40
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	ffc080e7          	jalr	-4(ra) # 80001fa8 <_Znwm>
    80003fb4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	3ac080e7          	jalr	940(ra) # 80002364 <_ZN6ThreadC1Ev>
    80003fc0:	f95ff06f          	j	80003f54 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	348080e7          	jalr	840(ra) # 8000230c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003fcc:	00000493          	li	s1,0
    80003fd0:	0099ce63          	blt	s3,s1,80003fec <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003fd4:	00007517          	auipc	a0,0x7
    80003fd8:	67c53503          	ld	a0,1660(a0) # 8000b650 <_ZL10waitForAll>
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	454080e7          	jalr	1108(ra) # 80002430 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003fe4:	0014849b          	addiw	s1,s1,1
    80003fe8:	fe9ff06f          	j	80003fd0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003fec:	00007517          	auipc	a0,0x7
    80003ff0:	66453503          	ld	a0,1636(a0) # 8000b650 <_ZL10waitForAll>
    80003ff4:	00050863          	beqz	a0,80004004 <_Z20testConsumerProducerv+0x2f4>
    80003ff8:	00053783          	ld	a5,0(a0)
    80003ffc:	0087b783          	ld	a5,8(a5)
    80004000:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004004:	00000493          	li	s1,0
    80004008:	0080006f          	j	80004010 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000400c:	0014849b          	addiw	s1,s1,1
    80004010:	0334d263          	bge	s1,s3,80004034 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004014:	00349793          	slli	a5,s1,0x3
    80004018:	00fa07b3          	add	a5,s4,a5
    8000401c:	0007b503          	ld	a0,0(a5)
    80004020:	fe0506e3          	beqz	a0,8000400c <_Z20testConsumerProducerv+0x2fc>
    80004024:	00053783          	ld	a5,0(a0)
    80004028:	0087b783          	ld	a5,8(a5)
    8000402c:	000780e7          	jalr	a5
    80004030:	fddff06f          	j	8000400c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004034:	000b8a63          	beqz	s7,80004048 <_Z20testConsumerProducerv+0x338>
    80004038:	000bb783          	ld	a5,0(s7)
    8000403c:	0087b783          	ld	a5,8(a5)
    80004040:	000b8513          	mv	a0,s7
    80004044:	000780e7          	jalr	a5
    delete buffer;
    80004048:	000a8e63          	beqz	s5,80004064 <_Z20testConsumerProducerv+0x354>
    8000404c:	000a8513          	mv	a0,s5
    80004050:	00002097          	auipc	ra,0x2
    80004054:	870080e7          	jalr	-1936(ra) # 800058c0 <_ZN9BufferCPPD1Ev>
    80004058:	000a8513          	mv	a0,s5
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	04c080e7          	jalr	76(ra) # 800020a8 <_ZdlPv>
    80004064:	000c0113          	mv	sp,s8
}
    80004068:	f8040113          	addi	sp,s0,-128
    8000406c:	07813083          	ld	ra,120(sp)
    80004070:	07013403          	ld	s0,112(sp)
    80004074:	06813483          	ld	s1,104(sp)
    80004078:	06013903          	ld	s2,96(sp)
    8000407c:	05813983          	ld	s3,88(sp)
    80004080:	05013a03          	ld	s4,80(sp)
    80004084:	04813a83          	ld	s5,72(sp)
    80004088:	04013b03          	ld	s6,64(sp)
    8000408c:	03813b83          	ld	s7,56(sp)
    80004090:	03013c03          	ld	s8,48(sp)
    80004094:	02813c83          	ld	s9,40(sp)
    80004098:	08010113          	addi	sp,sp,128
    8000409c:	00008067          	ret
    800040a0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800040a4:	000a8513          	mv	a0,s5
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	000080e7          	jalr	ra # 800020a8 <_ZdlPv>
    800040b0:	00048513          	mv	a0,s1
    800040b4:	00008097          	auipc	ra,0x8
    800040b8:	694080e7          	jalr	1684(ra) # 8000c748 <_Unwind_Resume>
    800040bc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800040c0:	00090513          	mv	a0,s2
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	fe4080e7          	jalr	-28(ra) # 800020a8 <_ZdlPv>
    800040cc:	00048513          	mv	a0,s1
    800040d0:	00008097          	auipc	ra,0x8
    800040d4:	678080e7          	jalr	1656(ra) # 8000c748 <_Unwind_Resume>
    800040d8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040dc:	000b8513          	mv	a0,s7
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	fc8080e7          	jalr	-56(ra) # 800020a8 <_ZdlPv>
    800040e8:	00048513          	mv	a0,s1
    800040ec:	00008097          	auipc	ra,0x8
    800040f0:	65c080e7          	jalr	1628(ra) # 8000c748 <_Unwind_Resume>
    800040f4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800040f8:	00048513          	mv	a0,s1
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	fac080e7          	jalr	-84(ra) # 800020a8 <_ZdlPv>
    80004104:	00090513          	mv	a0,s2
    80004108:	00008097          	auipc	ra,0x8
    8000410c:	640080e7          	jalr	1600(ra) # 8000c748 <_Unwind_Resume>
    80004110:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004114:	000c8513          	mv	a0,s9
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	f90080e7          	jalr	-112(ra) # 800020a8 <_ZdlPv>
    80004120:	00048513          	mv	a0,s1
    80004124:	00008097          	auipc	ra,0x8
    80004128:	624080e7          	jalr	1572(ra) # 8000c748 <_Unwind_Resume>

000000008000412c <_ZN8Consumer3runEv>:
    void run() override {
    8000412c:	fd010113          	addi	sp,sp,-48
    80004130:	02113423          	sd	ra,40(sp)
    80004134:	02813023          	sd	s0,32(sp)
    80004138:	00913c23          	sd	s1,24(sp)
    8000413c:	01213823          	sd	s2,16(sp)
    80004140:	01313423          	sd	s3,8(sp)
    80004144:	03010413          	addi	s0,sp,48
    80004148:	00050913          	mv	s2,a0
        int i = 0;
    8000414c:	00000993          	li	s3,0
    80004150:	0100006f          	j	80004160 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004154:	00a00513          	li	a0,10
    80004158:	ffffe097          	auipc	ra,0xffffe
    8000415c:	330080e7          	jalr	816(ra) # 80002488 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004160:	00007797          	auipc	a5,0x7
    80004164:	4e87a783          	lw	a5,1256(a5) # 8000b648 <_ZL9threadEnd>
    80004168:	04079a63          	bnez	a5,800041bc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000416c:	02093783          	ld	a5,32(s2)
    80004170:	0087b503          	ld	a0,8(a5)
    80004174:	00001097          	auipc	ra,0x1
    80004178:	638080e7          	jalr	1592(ra) # 800057ac <_ZN9BufferCPP3getEv>
            i++;
    8000417c:	0019849b          	addiw	s1,s3,1
    80004180:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004184:	0ff57513          	andi	a0,a0,255
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	300080e7          	jalr	768(ra) # 80002488 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004190:	05000793          	li	a5,80
    80004194:	02f4e4bb          	remw	s1,s1,a5
    80004198:	fc0494e3          	bnez	s1,80004160 <_ZN8Consumer3runEv+0x34>
    8000419c:	fb9ff06f          	j	80004154 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800041a0:	02093783          	ld	a5,32(s2)
    800041a4:	0087b503          	ld	a0,8(a5)
    800041a8:	00001097          	auipc	ra,0x1
    800041ac:	604080e7          	jalr	1540(ra) # 800057ac <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800041b0:	0ff57513          	andi	a0,a0,255
    800041b4:	ffffe097          	auipc	ra,0xffffe
    800041b8:	2d4080e7          	jalr	724(ra) # 80002488 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800041bc:	02093783          	ld	a5,32(s2)
    800041c0:	0087b503          	ld	a0,8(a5)
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	674080e7          	jalr	1652(ra) # 80005838 <_ZN9BufferCPP6getCntEv>
    800041cc:	fca04ae3          	bgtz	a0,800041a0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800041d0:	02093783          	ld	a5,32(s2)
    800041d4:	0107b503          	ld	a0,16(a5)
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	284080e7          	jalr	644(ra) # 8000245c <_ZN9Semaphore6signalEv>
    }
    800041e0:	02813083          	ld	ra,40(sp)
    800041e4:	02013403          	ld	s0,32(sp)
    800041e8:	01813483          	ld	s1,24(sp)
    800041ec:	01013903          	ld	s2,16(sp)
    800041f0:	00813983          	ld	s3,8(sp)
    800041f4:	03010113          	addi	sp,sp,48
    800041f8:	00008067          	ret

00000000800041fc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800041fc:	ff010113          	addi	sp,sp,-16
    80004200:	00113423          	sd	ra,8(sp)
    80004204:	00813023          	sd	s0,0(sp)
    80004208:	01010413          	addi	s0,sp,16
    8000420c:	00007797          	auipc	a5,0x7
    80004210:	2b478793          	addi	a5,a5,692 # 8000b4c0 <_ZTV8Consumer+0x10>
    80004214:	00f53023          	sd	a5,0(a0)
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	f90080e7          	jalr	-112(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80004220:	00813083          	ld	ra,8(sp)
    80004224:	00013403          	ld	s0,0(sp)
    80004228:	01010113          	addi	sp,sp,16
    8000422c:	00008067          	ret

0000000080004230 <_ZN8ConsumerD0Ev>:
    80004230:	fe010113          	addi	sp,sp,-32
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	00813823          	sd	s0,16(sp)
    8000423c:	00913423          	sd	s1,8(sp)
    80004240:	02010413          	addi	s0,sp,32
    80004244:	00050493          	mv	s1,a0
    80004248:	00007797          	auipc	a5,0x7
    8000424c:	27878793          	addi	a5,a5,632 # 8000b4c0 <_ZTV8Consumer+0x10>
    80004250:	00f53023          	sd	a5,0(a0)
    80004254:	ffffe097          	auipc	ra,0xffffe
    80004258:	f54080e7          	jalr	-172(ra) # 800021a8 <_ZN6ThreadD1Ev>
    8000425c:	00048513          	mv	a0,s1
    80004260:	ffffe097          	auipc	ra,0xffffe
    80004264:	e48080e7          	jalr	-440(ra) # 800020a8 <_ZdlPv>
    80004268:	01813083          	ld	ra,24(sp)
    8000426c:	01013403          	ld	s0,16(sp)
    80004270:	00813483          	ld	s1,8(sp)
    80004274:	02010113          	addi	sp,sp,32
    80004278:	00008067          	ret

000000008000427c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000427c:	ff010113          	addi	sp,sp,-16
    80004280:	00113423          	sd	ra,8(sp)
    80004284:	00813023          	sd	s0,0(sp)
    80004288:	01010413          	addi	s0,sp,16
    8000428c:	00007797          	auipc	a5,0x7
    80004290:	1e478793          	addi	a5,a5,484 # 8000b470 <_ZTV16ProducerKeyborad+0x10>
    80004294:	00f53023          	sd	a5,0(a0)
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	f10080e7          	jalr	-240(ra) # 800021a8 <_ZN6ThreadD1Ev>
    800042a0:	00813083          	ld	ra,8(sp)
    800042a4:	00013403          	ld	s0,0(sp)
    800042a8:	01010113          	addi	sp,sp,16
    800042ac:	00008067          	ret

00000000800042b0 <_ZN16ProducerKeyboradD0Ev>:
    800042b0:	fe010113          	addi	sp,sp,-32
    800042b4:	00113c23          	sd	ra,24(sp)
    800042b8:	00813823          	sd	s0,16(sp)
    800042bc:	00913423          	sd	s1,8(sp)
    800042c0:	02010413          	addi	s0,sp,32
    800042c4:	00050493          	mv	s1,a0
    800042c8:	00007797          	auipc	a5,0x7
    800042cc:	1a878793          	addi	a5,a5,424 # 8000b470 <_ZTV16ProducerKeyborad+0x10>
    800042d0:	00f53023          	sd	a5,0(a0)
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	ed4080e7          	jalr	-300(ra) # 800021a8 <_ZN6ThreadD1Ev>
    800042dc:	00048513          	mv	a0,s1
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	dc8080e7          	jalr	-568(ra) # 800020a8 <_ZdlPv>
    800042e8:	01813083          	ld	ra,24(sp)
    800042ec:	01013403          	ld	s0,16(sp)
    800042f0:	00813483          	ld	s1,8(sp)
    800042f4:	02010113          	addi	sp,sp,32
    800042f8:	00008067          	ret

00000000800042fc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800042fc:	ff010113          	addi	sp,sp,-16
    80004300:	00113423          	sd	ra,8(sp)
    80004304:	00813023          	sd	s0,0(sp)
    80004308:	01010413          	addi	s0,sp,16
    8000430c:	00007797          	auipc	a5,0x7
    80004310:	18c78793          	addi	a5,a5,396 # 8000b498 <_ZTV8Producer+0x10>
    80004314:	00f53023          	sd	a5,0(a0)
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	e90080e7          	jalr	-368(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80004320:	00813083          	ld	ra,8(sp)
    80004324:	00013403          	ld	s0,0(sp)
    80004328:	01010113          	addi	sp,sp,16
    8000432c:	00008067          	ret

0000000080004330 <_ZN8ProducerD0Ev>:
    80004330:	fe010113          	addi	sp,sp,-32
    80004334:	00113c23          	sd	ra,24(sp)
    80004338:	00813823          	sd	s0,16(sp)
    8000433c:	00913423          	sd	s1,8(sp)
    80004340:	02010413          	addi	s0,sp,32
    80004344:	00050493          	mv	s1,a0
    80004348:	00007797          	auipc	a5,0x7
    8000434c:	15078793          	addi	a5,a5,336 # 8000b498 <_ZTV8Producer+0x10>
    80004350:	00f53023          	sd	a5,0(a0)
    80004354:	ffffe097          	auipc	ra,0xffffe
    80004358:	e54080e7          	jalr	-428(ra) # 800021a8 <_ZN6ThreadD1Ev>
    8000435c:	00048513          	mv	a0,s1
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	d48080e7          	jalr	-696(ra) # 800020a8 <_ZdlPv>
    80004368:	01813083          	ld	ra,24(sp)
    8000436c:	01013403          	ld	s0,16(sp)
    80004370:	00813483          	ld	s1,8(sp)
    80004374:	02010113          	addi	sp,sp,32
    80004378:	00008067          	ret

000000008000437c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000437c:	fe010113          	addi	sp,sp,-32
    80004380:	00113c23          	sd	ra,24(sp)
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	02010413          	addi	s0,sp,32
    80004390:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004394:	ffffd097          	auipc	ra,0xffffd
    80004398:	14c080e7          	jalr	332(ra) # 800014e0 <_Z4getcv>
    8000439c:	0005059b          	sext.w	a1,a0
    800043a0:	01b00793          	li	a5,27
    800043a4:	00f58c63          	beq	a1,a5,800043bc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800043a8:	0204b783          	ld	a5,32(s1)
    800043ac:	0087b503          	ld	a0,8(a5)
    800043b0:	00001097          	auipc	ra,0x1
    800043b4:	36c080e7          	jalr	876(ra) # 8000571c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800043b8:	fddff06f          	j	80004394 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800043bc:	00100793          	li	a5,1
    800043c0:	00007717          	auipc	a4,0x7
    800043c4:	28f72423          	sw	a5,648(a4) # 8000b648 <_ZL9threadEnd>
        td->buffer->put('!');
    800043c8:	0204b783          	ld	a5,32(s1)
    800043cc:	02100593          	li	a1,33
    800043d0:	0087b503          	ld	a0,8(a5)
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	348080e7          	jalr	840(ra) # 8000571c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800043dc:	0204b783          	ld	a5,32(s1)
    800043e0:	0107b503          	ld	a0,16(a5)
    800043e4:	ffffe097          	auipc	ra,0xffffe
    800043e8:	078080e7          	jalr	120(ra) # 8000245c <_ZN9Semaphore6signalEv>
    }
    800043ec:	01813083          	ld	ra,24(sp)
    800043f0:	01013403          	ld	s0,16(sp)
    800043f4:	00813483          	ld	s1,8(sp)
    800043f8:	02010113          	addi	sp,sp,32
    800043fc:	00008067          	ret

0000000080004400 <_ZN8Producer3runEv>:
    void run() override {
    80004400:	fe010113          	addi	sp,sp,-32
    80004404:	00113c23          	sd	ra,24(sp)
    80004408:	00813823          	sd	s0,16(sp)
    8000440c:	00913423          	sd	s1,8(sp)
    80004410:	01213023          	sd	s2,0(sp)
    80004414:	02010413          	addi	s0,sp,32
    80004418:	00050493          	mv	s1,a0
        int i = 0;
    8000441c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004420:	00007797          	auipc	a5,0x7
    80004424:	2287a783          	lw	a5,552(a5) # 8000b648 <_ZL9threadEnd>
    80004428:	04079263          	bnez	a5,8000446c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000442c:	0204b783          	ld	a5,32(s1)
    80004430:	0007a583          	lw	a1,0(a5)
    80004434:	0305859b          	addiw	a1,a1,48
    80004438:	0087b503          	ld	a0,8(a5)
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	2e0080e7          	jalr	736(ra) # 8000571c <_ZN9BufferCPP3putEi>
            i++;
    80004444:	0019071b          	addiw	a4,s2,1
    80004448:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    8000444c:	0204b783          	ld	a5,32(s1)
    80004450:	0007a783          	lw	a5,0(a5)
    80004454:	00e787bb          	addw	a5,a5,a4
    80004458:	00500513          	li	a0,5
    8000445c:	02a7e53b          	remw	a0,a5,a0
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	f70080e7          	jalr	-144(ra) # 800023d0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004468:	fb9ff06f          	j	80004420 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000446c:	0204b783          	ld	a5,32(s1)
    80004470:	0107b503          	ld	a0,16(a5)
    80004474:	ffffe097          	auipc	ra,0xffffe
    80004478:	fe8080e7          	jalr	-24(ra) # 8000245c <_ZN9Semaphore6signalEv>
    }
    8000447c:	01813083          	ld	ra,24(sp)
    80004480:	01013403          	ld	s0,16(sp)
    80004484:	00813483          	ld	s1,8(sp)
    80004488:	00013903          	ld	s2,0(sp)
    8000448c:	02010113          	addi	sp,sp,32
    80004490:	00008067          	ret

0000000080004494 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004494:	fe010113          	addi	sp,sp,-32
    80004498:	00113c23          	sd	ra,24(sp)
    8000449c:	00813823          	sd	s0,16(sp)
    800044a0:	00913423          	sd	s1,8(sp)
    800044a4:	01213023          	sd	s2,0(sp)
    800044a8:	02010413          	addi	s0,sp,32
    800044ac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800044b0:	00100793          	li	a5,1
    800044b4:	02a7f863          	bgeu	a5,a0,800044e4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800044b8:	00a00793          	li	a5,10
    800044bc:	02f577b3          	remu	a5,a0,a5
    800044c0:	02078e63          	beqz	a5,800044fc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800044c4:	fff48513          	addi	a0,s1,-1
    800044c8:	00000097          	auipc	ra,0x0
    800044cc:	fcc080e7          	jalr	-52(ra) # 80004494 <_ZL9fibonaccim>
    800044d0:	00050913          	mv	s2,a0
    800044d4:	ffe48513          	addi	a0,s1,-2
    800044d8:	00000097          	auipc	ra,0x0
    800044dc:	fbc080e7          	jalr	-68(ra) # 80004494 <_ZL9fibonaccim>
    800044e0:	00a90533          	add	a0,s2,a0
}
    800044e4:	01813083          	ld	ra,24(sp)
    800044e8:	01013403          	ld	s0,16(sp)
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	00013903          	ld	s2,0(sp)
    800044f4:	02010113          	addi	sp,sp,32
    800044f8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	edc080e7          	jalr	-292(ra) # 800013d8 <_Z15thread_dispatchv>
    80004504:	fc1ff06f          	j	800044c4 <_ZL9fibonaccim+0x30>

0000000080004508 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004508:	fe010113          	addi	sp,sp,-32
    8000450c:	00113c23          	sd	ra,24(sp)
    80004510:	00813823          	sd	s0,16(sp)
    80004514:	00913423          	sd	s1,8(sp)
    80004518:	01213023          	sd	s2,0(sp)
    8000451c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004520:	00a00493          	li	s1,10
    80004524:	0400006f          	j	80004564 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004528:	00005517          	auipc	a0,0x5
    8000452c:	db850513          	addi	a0,a0,-584 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004530:	00001097          	auipc	ra,0x1
    80004534:	dc8080e7          	jalr	-568(ra) # 800052f8 <_Z11printStringPKc>
    80004538:	00000613          	li	a2,0
    8000453c:	00a00593          	li	a1,10
    80004540:	00048513          	mv	a0,s1
    80004544:	00001097          	auipc	ra,0x1
    80004548:	f64080e7          	jalr	-156(ra) # 800054a8 <_Z8printIntiii>
    8000454c:	00005517          	auipc	a0,0x5
    80004550:	fc450513          	addi	a0,a0,-60 # 80009510 <CONSOLE_STATUS+0x500>
    80004554:	00001097          	auipc	ra,0x1
    80004558:	da4080e7          	jalr	-604(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000455c:	0014849b          	addiw	s1,s1,1
    80004560:	0ff4f493          	andi	s1,s1,255
    80004564:	00c00793          	li	a5,12
    80004568:	fc97f0e3          	bgeu	a5,s1,80004528 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000456c:	00005517          	auipc	a0,0x5
    80004570:	d7c50513          	addi	a0,a0,-644 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004574:	00001097          	auipc	ra,0x1
    80004578:	d84080e7          	jalr	-636(ra) # 800052f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000457c:	00500313          	li	t1,5
    thread_dispatch();
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	e58080e7          	jalr	-424(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004588:	01000513          	li	a0,16
    8000458c:	00000097          	auipc	ra,0x0
    80004590:	f08080e7          	jalr	-248(ra) # 80004494 <_ZL9fibonaccim>
    80004594:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004598:	00005517          	auipc	a0,0x5
    8000459c:	d6050513          	addi	a0,a0,-672 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800045a0:	00001097          	auipc	ra,0x1
    800045a4:	d58080e7          	jalr	-680(ra) # 800052f8 <_Z11printStringPKc>
    800045a8:	00000613          	li	a2,0
    800045ac:	00a00593          	li	a1,10
    800045b0:	0009051b          	sext.w	a0,s2
    800045b4:	00001097          	auipc	ra,0x1
    800045b8:	ef4080e7          	jalr	-268(ra) # 800054a8 <_Z8printIntiii>
    800045bc:	00005517          	auipc	a0,0x5
    800045c0:	f5450513          	addi	a0,a0,-172 # 80009510 <CONSOLE_STATUS+0x500>
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	d34080e7          	jalr	-716(ra) # 800052f8 <_Z11printStringPKc>
    800045cc:	0400006f          	j	8000460c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045d0:	00005517          	auipc	a0,0x5
    800045d4:	d1050513          	addi	a0,a0,-752 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	d20080e7          	jalr	-736(ra) # 800052f8 <_Z11printStringPKc>
    800045e0:	00000613          	li	a2,0
    800045e4:	00a00593          	li	a1,10
    800045e8:	00048513          	mv	a0,s1
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	ebc080e7          	jalr	-324(ra) # 800054a8 <_Z8printIntiii>
    800045f4:	00005517          	auipc	a0,0x5
    800045f8:	f1c50513          	addi	a0,a0,-228 # 80009510 <CONSOLE_STATUS+0x500>
    800045fc:	00001097          	auipc	ra,0x1
    80004600:	cfc080e7          	jalr	-772(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004604:	0014849b          	addiw	s1,s1,1
    80004608:	0ff4f493          	andi	s1,s1,255
    8000460c:	00f00793          	li	a5,15
    80004610:	fc97f0e3          	bgeu	a5,s1,800045d0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004614:	00005517          	auipc	a0,0x5
    80004618:	cf450513          	addi	a0,a0,-780 # 80009308 <CONSOLE_STATUS+0x2f8>
    8000461c:	00001097          	auipc	ra,0x1
    80004620:	cdc080e7          	jalr	-804(ra) # 800052f8 <_Z11printStringPKc>
    finishedD = true;
    80004624:	00100793          	li	a5,1
    80004628:	00007717          	auipc	a4,0x7
    8000462c:	02f70823          	sb	a5,48(a4) # 8000b658 <_ZL9finishedD>
    thread_dispatch();
    80004630:	ffffd097          	auipc	ra,0xffffd
    80004634:	da8080e7          	jalr	-600(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80004638:	01813083          	ld	ra,24(sp)
    8000463c:	01013403          	ld	s0,16(sp)
    80004640:	00813483          	ld	s1,8(sp)
    80004644:	00013903          	ld	s2,0(sp)
    80004648:	02010113          	addi	sp,sp,32
    8000464c:	00008067          	ret

0000000080004650 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004650:	fe010113          	addi	sp,sp,-32
    80004654:	00113c23          	sd	ra,24(sp)
    80004658:	00813823          	sd	s0,16(sp)
    8000465c:	00913423          	sd	s1,8(sp)
    80004660:	01213023          	sd	s2,0(sp)
    80004664:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004668:	00000493          	li	s1,0
    8000466c:	0400006f          	j	800046ac <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004670:	00005517          	auipc	a0,0x5
    80004674:	c4050513          	addi	a0,a0,-960 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004678:	00001097          	auipc	ra,0x1
    8000467c:	c80080e7          	jalr	-896(ra) # 800052f8 <_Z11printStringPKc>
    80004680:	00000613          	li	a2,0
    80004684:	00a00593          	li	a1,10
    80004688:	00048513          	mv	a0,s1
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	e1c080e7          	jalr	-484(ra) # 800054a8 <_Z8printIntiii>
    80004694:	00005517          	auipc	a0,0x5
    80004698:	e7c50513          	addi	a0,a0,-388 # 80009510 <CONSOLE_STATUS+0x500>
    8000469c:	00001097          	auipc	ra,0x1
    800046a0:	c5c080e7          	jalr	-932(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800046a4:	0014849b          	addiw	s1,s1,1
    800046a8:	0ff4f493          	andi	s1,s1,255
    800046ac:	00200793          	li	a5,2
    800046b0:	fc97f0e3          	bgeu	a5,s1,80004670 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800046b4:	00005517          	auipc	a0,0x5
    800046b8:	c0450513          	addi	a0,a0,-1020 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	c3c080e7          	jalr	-964(ra) # 800052f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800046c4:	00700313          	li	t1,7
    thread_dispatch();
    800046c8:	ffffd097          	auipc	ra,0xffffd
    800046cc:	d10080e7          	jalr	-752(ra) # 800013d8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800046d0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800046d4:	00005517          	auipc	a0,0x5
    800046d8:	bf450513          	addi	a0,a0,-1036 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800046dc:	00001097          	auipc	ra,0x1
    800046e0:	c1c080e7          	jalr	-996(ra) # 800052f8 <_Z11printStringPKc>
    800046e4:	00000613          	li	a2,0
    800046e8:	00a00593          	li	a1,10
    800046ec:	0009051b          	sext.w	a0,s2
    800046f0:	00001097          	auipc	ra,0x1
    800046f4:	db8080e7          	jalr	-584(ra) # 800054a8 <_Z8printIntiii>
    800046f8:	00005517          	auipc	a0,0x5
    800046fc:	e1850513          	addi	a0,a0,-488 # 80009510 <CONSOLE_STATUS+0x500>
    80004700:	00001097          	auipc	ra,0x1
    80004704:	bf8080e7          	jalr	-1032(ra) # 800052f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004708:	00c00513          	li	a0,12
    8000470c:	00000097          	auipc	ra,0x0
    80004710:	d88080e7          	jalr	-632(ra) # 80004494 <_ZL9fibonaccim>
    80004714:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004718:	00005517          	auipc	a0,0x5
    8000471c:	bb850513          	addi	a0,a0,-1096 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004720:	00001097          	auipc	ra,0x1
    80004724:	bd8080e7          	jalr	-1064(ra) # 800052f8 <_Z11printStringPKc>
    80004728:	00000613          	li	a2,0
    8000472c:	00a00593          	li	a1,10
    80004730:	0009051b          	sext.w	a0,s2
    80004734:	00001097          	auipc	ra,0x1
    80004738:	d74080e7          	jalr	-652(ra) # 800054a8 <_Z8printIntiii>
    8000473c:	00005517          	auipc	a0,0x5
    80004740:	dd450513          	addi	a0,a0,-556 # 80009510 <CONSOLE_STATUS+0x500>
    80004744:	00001097          	auipc	ra,0x1
    80004748:	bb4080e7          	jalr	-1100(ra) # 800052f8 <_Z11printStringPKc>
    8000474c:	0400006f          	j	8000478c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004750:	00005517          	auipc	a0,0x5
    80004754:	b6050513          	addi	a0,a0,-1184 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	ba0080e7          	jalr	-1120(ra) # 800052f8 <_Z11printStringPKc>
    80004760:	00000613          	li	a2,0
    80004764:	00a00593          	li	a1,10
    80004768:	00048513          	mv	a0,s1
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	d3c080e7          	jalr	-708(ra) # 800054a8 <_Z8printIntiii>
    80004774:	00005517          	auipc	a0,0x5
    80004778:	d9c50513          	addi	a0,a0,-612 # 80009510 <CONSOLE_STATUS+0x500>
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	b7c080e7          	jalr	-1156(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004784:	0014849b          	addiw	s1,s1,1
    80004788:	0ff4f493          	andi	s1,s1,255
    8000478c:	00500793          	li	a5,5
    80004790:	fc97f0e3          	bgeu	a5,s1,80004750 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80004794:	00005517          	auipc	a0,0x5
    80004798:	be450513          	addi	a0,a0,-1052 # 80009378 <CONSOLE_STATUS+0x368>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	b5c080e7          	jalr	-1188(ra) # 800052f8 <_Z11printStringPKc>
    finishedC = true;
    800047a4:	00100793          	li	a5,1
    800047a8:	00007717          	auipc	a4,0x7
    800047ac:	eaf708a3          	sb	a5,-335(a4) # 8000b659 <_ZL9finishedC>
    thread_dispatch();
    800047b0:	ffffd097          	auipc	ra,0xffffd
    800047b4:	c28080e7          	jalr	-984(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800047b8:	01813083          	ld	ra,24(sp)
    800047bc:	01013403          	ld	s0,16(sp)
    800047c0:	00813483          	ld	s1,8(sp)
    800047c4:	00013903          	ld	s2,0(sp)
    800047c8:	02010113          	addi	sp,sp,32
    800047cc:	00008067          	ret

00000000800047d0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800047d0:	fe010113          	addi	sp,sp,-32
    800047d4:	00113c23          	sd	ra,24(sp)
    800047d8:	00813823          	sd	s0,16(sp)
    800047dc:	00913423          	sd	s1,8(sp)
    800047e0:	01213023          	sd	s2,0(sp)
    800047e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800047e8:	00000913          	li	s2,0
    800047ec:	0380006f          	j	80004824 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800047f0:	ffffd097          	auipc	ra,0xffffd
    800047f4:	be8080e7          	jalr	-1048(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800047f8:	00148493          	addi	s1,s1,1
    800047fc:	000027b7          	lui	a5,0x2
    80004800:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004804:	0097ee63          	bltu	a5,s1,80004820 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004808:	00000713          	li	a4,0
    8000480c:	000077b7          	lui	a5,0x7
    80004810:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004814:	fce7eee3          	bltu	a5,a4,800047f0 <_ZL11workerBodyBPv+0x20>
    80004818:	00170713          	addi	a4,a4,1
    8000481c:	ff1ff06f          	j	8000480c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004820:	00190913          	addi	s2,s2,1
    80004824:	00f00793          	li	a5,15
    80004828:	0527e063          	bltu	a5,s2,80004868 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000482c:	00005517          	auipc	a0,0x5
    80004830:	82450513          	addi	a0,a0,-2012 # 80009050 <CONSOLE_STATUS+0x40>
    80004834:	00001097          	auipc	ra,0x1
    80004838:	ac4080e7          	jalr	-1340(ra) # 800052f8 <_Z11printStringPKc>
    8000483c:	00000613          	li	a2,0
    80004840:	00a00593          	li	a1,10
    80004844:	0009051b          	sext.w	a0,s2
    80004848:	00001097          	auipc	ra,0x1
    8000484c:	c60080e7          	jalr	-928(ra) # 800054a8 <_Z8printIntiii>
    80004850:	00005517          	auipc	a0,0x5
    80004854:	cc050513          	addi	a0,a0,-832 # 80009510 <CONSOLE_STATUS+0x500>
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	aa0080e7          	jalr	-1376(ra) # 800052f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004860:	00000493          	li	s1,0
    80004864:	f99ff06f          	j	800047fc <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004868:	00005517          	auipc	a0,0x5
    8000486c:	a3850513          	addi	a0,a0,-1480 # 800092a0 <CONSOLE_STATUS+0x290>
    80004870:	00001097          	auipc	ra,0x1
    80004874:	a88080e7          	jalr	-1400(ra) # 800052f8 <_Z11printStringPKc>
    finishedB = true;
    80004878:	00100793          	li	a5,1
    8000487c:	00007717          	auipc	a4,0x7
    80004880:	dcf70f23          	sb	a5,-546(a4) # 8000b65a <_ZL9finishedB>
    thread_dispatch();
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	b54080e7          	jalr	-1196(ra) # 800013d8 <_Z15thread_dispatchv>
}
    8000488c:	01813083          	ld	ra,24(sp)
    80004890:	01013403          	ld	s0,16(sp)
    80004894:	00813483          	ld	s1,8(sp)
    80004898:	00013903          	ld	s2,0(sp)
    8000489c:	02010113          	addi	sp,sp,32
    800048a0:	00008067          	ret

00000000800048a4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800048a4:	fe010113          	addi	sp,sp,-32
    800048a8:	00113c23          	sd	ra,24(sp)
    800048ac:	00813823          	sd	s0,16(sp)
    800048b0:	00913423          	sd	s1,8(sp)
    800048b4:	01213023          	sd	s2,0(sp)
    800048b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800048bc:	00000913          	li	s2,0
    800048c0:	0380006f          	j	800048f8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	b14080e7          	jalr	-1260(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800048cc:	00148493          	addi	s1,s1,1
    800048d0:	000027b7          	lui	a5,0x2
    800048d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800048d8:	0097ee63          	bltu	a5,s1,800048f4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800048dc:	00000713          	li	a4,0
    800048e0:	000077b7          	lui	a5,0x7
    800048e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800048e8:	fce7eee3          	bltu	a5,a4,800048c4 <_ZL11workerBodyAPv+0x20>
    800048ec:	00170713          	addi	a4,a4,1
    800048f0:	ff1ff06f          	j	800048e0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800048f4:	00190913          	addi	s2,s2,1
    800048f8:	00900793          	li	a5,9
    800048fc:	0527e063          	bltu	a5,s2,8000493c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004900:	00004517          	auipc	a0,0x4
    80004904:	72050513          	addi	a0,a0,1824 # 80009020 <CONSOLE_STATUS+0x10>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	9f0080e7          	jalr	-1552(ra) # 800052f8 <_Z11printStringPKc>
    80004910:	00000613          	li	a2,0
    80004914:	00a00593          	li	a1,10
    80004918:	0009051b          	sext.w	a0,s2
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	b8c080e7          	jalr	-1140(ra) # 800054a8 <_Z8printIntiii>
    80004924:	00005517          	auipc	a0,0x5
    80004928:	bec50513          	addi	a0,a0,-1044 # 80009510 <CONSOLE_STATUS+0x500>
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	9cc080e7          	jalr	-1588(ra) # 800052f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004934:	00000493          	li	s1,0
    80004938:	f99ff06f          	j	800048d0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000493c:	00005517          	auipc	a0,0x5
    80004940:	95450513          	addi	a0,a0,-1708 # 80009290 <CONSOLE_STATUS+0x280>
    80004944:	00001097          	auipc	ra,0x1
    80004948:	9b4080e7          	jalr	-1612(ra) # 800052f8 <_Z11printStringPKc>
    finishedA = true;
    8000494c:	00100793          	li	a5,1
    80004950:	00007717          	auipc	a4,0x7
    80004954:	d0f705a3          	sb	a5,-757(a4) # 8000b65b <_ZL9finishedA>
}
    80004958:	01813083          	ld	ra,24(sp)
    8000495c:	01013403          	ld	s0,16(sp)
    80004960:	00813483          	ld	s1,8(sp)
    80004964:	00013903          	ld	s2,0(sp)
    80004968:	02010113          	addi	sp,sp,32
    8000496c:	00008067          	ret

0000000080004970 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004970:	fd010113          	addi	sp,sp,-48
    80004974:	02113423          	sd	ra,40(sp)
    80004978:	02813023          	sd	s0,32(sp)
    8000497c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004980:	00000613          	li	a2,0
    80004984:	00000597          	auipc	a1,0x0
    80004988:	f2058593          	addi	a1,a1,-224 # 800048a4 <_ZL11workerBodyAPv>
    8000498c:	fd040513          	addi	a0,s0,-48
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	95c080e7          	jalr	-1700(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004998:	00005517          	auipc	a0,0x5
    8000499c:	98050513          	addi	a0,a0,-1664 # 80009318 <CONSOLE_STATUS+0x308>
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	958080e7          	jalr	-1704(ra) # 800052f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800049a8:	00000613          	li	a2,0
    800049ac:	00000597          	auipc	a1,0x0
    800049b0:	e2458593          	addi	a1,a1,-476 # 800047d0 <_ZL11workerBodyBPv>
    800049b4:	fd840513          	addi	a0,s0,-40
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	934080e7          	jalr	-1740(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800049c0:	00005517          	auipc	a0,0x5
    800049c4:	97050513          	addi	a0,a0,-1680 # 80009330 <CONSOLE_STATUS+0x320>
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	930080e7          	jalr	-1744(ra) # 800052f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800049d0:	00000613          	li	a2,0
    800049d4:	00000597          	auipc	a1,0x0
    800049d8:	c7c58593          	addi	a1,a1,-900 # 80004650 <_ZL11workerBodyCPv>
    800049dc:	fe040513          	addi	a0,s0,-32
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	90c080e7          	jalr	-1780(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800049e8:	00005517          	auipc	a0,0x5
    800049ec:	96050513          	addi	a0,a0,-1696 # 80009348 <CONSOLE_STATUS+0x338>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	908080e7          	jalr	-1784(ra) # 800052f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800049f8:	00000613          	li	a2,0
    800049fc:	00000597          	auipc	a1,0x0
    80004a00:	b0c58593          	addi	a1,a1,-1268 # 80004508 <_ZL11workerBodyDPv>
    80004a04:	fe840513          	addi	a0,s0,-24
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	8e4080e7          	jalr	-1820(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004a10:	00005517          	auipc	a0,0x5
    80004a14:	95050513          	addi	a0,a0,-1712 # 80009360 <CONSOLE_STATUS+0x350>
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	8e0080e7          	jalr	-1824(ra) # 800052f8 <_Z11printStringPKc>
    80004a20:	00c0006f          	j	80004a2c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	9b4080e7          	jalr	-1612(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a2c:	00007797          	auipc	a5,0x7
    80004a30:	c2f7c783          	lbu	a5,-977(a5) # 8000b65b <_ZL9finishedA>
    80004a34:	fe0788e3          	beqz	a5,80004a24 <_Z18Threads_C_API_testv+0xb4>
    80004a38:	00007797          	auipc	a5,0x7
    80004a3c:	c227c783          	lbu	a5,-990(a5) # 8000b65a <_ZL9finishedB>
    80004a40:	fe0782e3          	beqz	a5,80004a24 <_Z18Threads_C_API_testv+0xb4>
    80004a44:	00007797          	auipc	a5,0x7
    80004a48:	c157c783          	lbu	a5,-1003(a5) # 8000b659 <_ZL9finishedC>
    80004a4c:	fc078ce3          	beqz	a5,80004a24 <_Z18Threads_C_API_testv+0xb4>
    80004a50:	00007797          	auipc	a5,0x7
    80004a54:	c087c783          	lbu	a5,-1016(a5) # 8000b658 <_ZL9finishedD>
    80004a58:	fc0786e3          	beqz	a5,80004a24 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004a5c:	02813083          	ld	ra,40(sp)
    80004a60:	02013403          	ld	s0,32(sp)
    80004a64:	03010113          	addi	sp,sp,48
    80004a68:	00008067          	ret

0000000080004a6c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004a6c:	fd010113          	addi	sp,sp,-48
    80004a70:	02113423          	sd	ra,40(sp)
    80004a74:	02813023          	sd	s0,32(sp)
    80004a78:	00913c23          	sd	s1,24(sp)
    80004a7c:	01213823          	sd	s2,16(sp)
    80004a80:	01313423          	sd	s3,8(sp)
    80004a84:	03010413          	addi	s0,sp,48
    80004a88:	00050993          	mv	s3,a0
    80004a8c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004a90:	00000913          	li	s2,0
    80004a94:	00c0006f          	j	80004aa0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'e') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a98:	ffffe097          	auipc	ra,0xffffe
    80004a9c:	874080e7          	jalr	-1932(ra) # 8000230c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'e') {
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	a40080e7          	jalr	-1472(ra) # 800014e0 <_Z4getcv>
    80004aa8:	0005059b          	sext.w	a1,a0
    80004aac:	06500793          	li	a5,101
    80004ab0:	02f58a63          	beq	a1,a5,80004ae4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ab4:	0084b503          	ld	a0,8(s1)
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	c64080e7          	jalr	-924(ra) # 8000571c <_ZN9BufferCPP3putEi>
        i++;
    80004ac0:	0019071b          	addiw	a4,s2,1
    80004ac4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ac8:	0004a683          	lw	a3,0(s1)
    80004acc:	0026979b          	slliw	a5,a3,0x2
    80004ad0:	00d787bb          	addw	a5,a5,a3
    80004ad4:	0017979b          	slliw	a5,a5,0x1
    80004ad8:	02f767bb          	remw	a5,a4,a5
    80004adc:	fc0792e3          	bnez	a5,80004aa0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004ae0:	fb9ff06f          	j	80004a98 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004ae4:	00100793          	li	a5,1
    80004ae8:	00007717          	auipc	a4,0x7
    80004aec:	b6f72c23          	sw	a5,-1160(a4) # 8000b660 <_ZL9threadEnd>
    td->buffer->put('!');
    80004af0:	0209b783          	ld	a5,32(s3)
    80004af4:	02100593          	li	a1,33
    80004af8:	0087b503          	ld	a0,8(a5)
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	c20080e7          	jalr	-992(ra) # 8000571c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004b04:	0104b503          	ld	a0,16(s1)
    80004b08:	ffffe097          	auipc	ra,0xffffe
    80004b0c:	954080e7          	jalr	-1708(ra) # 8000245c <_ZN9Semaphore6signalEv>
}
    80004b10:	02813083          	ld	ra,40(sp)
    80004b14:	02013403          	ld	s0,32(sp)
    80004b18:	01813483          	ld	s1,24(sp)
    80004b1c:	01013903          	ld	s2,16(sp)
    80004b20:	00813983          	ld	s3,8(sp)
    80004b24:	03010113          	addi	sp,sp,48
    80004b28:	00008067          	ret

0000000080004b2c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004b2c:	fe010113          	addi	sp,sp,-32
    80004b30:	00113c23          	sd	ra,24(sp)
    80004b34:	00813823          	sd	s0,16(sp)
    80004b38:	00913423          	sd	s1,8(sp)
    80004b3c:	01213023          	sd	s2,0(sp)
    80004b40:	02010413          	addi	s0,sp,32
    80004b44:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b48:	00000913          	li	s2,0
    80004b4c:	00c0006f          	j	80004b58 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	7bc080e7          	jalr	1980(ra) # 8000230c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004b58:	00007797          	auipc	a5,0x7
    80004b5c:	b087a783          	lw	a5,-1272(a5) # 8000b660 <_ZL9threadEnd>
    80004b60:	02079e63          	bnez	a5,80004b9c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004b64:	0004a583          	lw	a1,0(s1)
    80004b68:	0305859b          	addiw	a1,a1,48
    80004b6c:	0084b503          	ld	a0,8(s1)
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	bac080e7          	jalr	-1108(ra) # 8000571c <_ZN9BufferCPP3putEi>
        i++;
    80004b78:	0019071b          	addiw	a4,s2,1
    80004b7c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004b80:	0004a683          	lw	a3,0(s1)
    80004b84:	0026979b          	slliw	a5,a3,0x2
    80004b88:	00d787bb          	addw	a5,a5,a3
    80004b8c:	0017979b          	slliw	a5,a5,0x1
    80004b90:	02f767bb          	remw	a5,a4,a5
    80004b94:	fc0792e3          	bnez	a5,80004b58 <_ZN12ProducerSync8producerEPv+0x2c>
    80004b98:	fb9ff06f          	j	80004b50 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004b9c:	0104b503          	ld	a0,16(s1)
    80004ba0:	ffffe097          	auipc	ra,0xffffe
    80004ba4:	8bc080e7          	jalr	-1860(ra) # 8000245c <_ZN9Semaphore6signalEv>
}
    80004ba8:	01813083          	ld	ra,24(sp)
    80004bac:	01013403          	ld	s0,16(sp)
    80004bb0:	00813483          	ld	s1,8(sp)
    80004bb4:	00013903          	ld	s2,0(sp)
    80004bb8:	02010113          	addi	sp,sp,32
    80004bbc:	00008067          	ret

0000000080004bc0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004bc0:	fd010113          	addi	sp,sp,-48
    80004bc4:	02113423          	sd	ra,40(sp)
    80004bc8:	02813023          	sd	s0,32(sp)
    80004bcc:	00913c23          	sd	s1,24(sp)
    80004bd0:	01213823          	sd	s2,16(sp)
    80004bd4:	01313423          	sd	s3,8(sp)
    80004bd8:	01413023          	sd	s4,0(sp)
    80004bdc:	03010413          	addi	s0,sp,48
    80004be0:	00050993          	mv	s3,a0
    80004be4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004be8:	00000a13          	li	s4,0
    80004bec:	01c0006f          	j	80004c08 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	71c080e7          	jalr	1820(ra) # 8000230c <_ZN6Thread8dispatchEv>
    80004bf8:	0500006f          	j	80004c48 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004bfc:	00a00513          	li	a0,10
    80004c00:	ffffd097          	auipc	ra,0xffffd
    80004c04:	908080e7          	jalr	-1784(ra) # 80001508 <_Z4putcc>
    while (!threadEnd) {
    80004c08:	00007797          	auipc	a5,0x7
    80004c0c:	a587a783          	lw	a5,-1448(a5) # 8000b660 <_ZL9threadEnd>
    80004c10:	06079263          	bnez	a5,80004c74 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004c14:	00893503          	ld	a0,8(s2)
    80004c18:	00001097          	auipc	ra,0x1
    80004c1c:	b94080e7          	jalr	-1132(ra) # 800057ac <_ZN9BufferCPP3getEv>
        i++;
    80004c20:	001a049b          	addiw	s1,s4,1
    80004c24:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004c28:	0ff57513          	andi	a0,a0,255
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	8dc080e7          	jalr	-1828(ra) # 80001508 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004c34:	00092703          	lw	a4,0(s2)
    80004c38:	0027179b          	slliw	a5,a4,0x2
    80004c3c:	00e787bb          	addw	a5,a5,a4
    80004c40:	02f4e7bb          	remw	a5,s1,a5
    80004c44:	fa0786e3          	beqz	a5,80004bf0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004c48:	05000793          	li	a5,80
    80004c4c:	02f4e4bb          	remw	s1,s1,a5
    80004c50:	fa049ce3          	bnez	s1,80004c08 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004c54:	fa9ff06f          	j	80004bfc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004c58:	0209b783          	ld	a5,32(s3)
    80004c5c:	0087b503          	ld	a0,8(a5)
    80004c60:	00001097          	auipc	ra,0x1
    80004c64:	b4c080e7          	jalr	-1204(ra) # 800057ac <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004c68:	0ff57513          	andi	a0,a0,255
    80004c6c:	ffffe097          	auipc	ra,0xffffe
    80004c70:	81c080e7          	jalr	-2020(ra) # 80002488 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004c74:	0209b783          	ld	a5,32(s3)
    80004c78:	0087b503          	ld	a0,8(a5)
    80004c7c:	00001097          	auipc	ra,0x1
    80004c80:	bbc080e7          	jalr	-1092(ra) # 80005838 <_ZN9BufferCPP6getCntEv>
    80004c84:	fca04ae3          	bgtz	a0,80004c58 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004c88:	01093503          	ld	a0,16(s2)
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	7d0080e7          	jalr	2000(ra) # 8000245c <_ZN9Semaphore6signalEv>
}
    80004c94:	02813083          	ld	ra,40(sp)
    80004c98:	02013403          	ld	s0,32(sp)
    80004c9c:	01813483          	ld	s1,24(sp)
    80004ca0:	01013903          	ld	s2,16(sp)
    80004ca4:	00813983          	ld	s3,8(sp)
    80004ca8:	00013a03          	ld	s4,0(sp)
    80004cac:	03010113          	addi	sp,sp,48
    80004cb0:	00008067          	ret

0000000080004cb4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004cb4:	f8010113          	addi	sp,sp,-128
    80004cb8:	06113c23          	sd	ra,120(sp)
    80004cbc:	06813823          	sd	s0,112(sp)
    80004cc0:	06913423          	sd	s1,104(sp)
    80004cc4:	07213023          	sd	s2,96(sp)
    80004cc8:	05313c23          	sd	s3,88(sp)
    80004ccc:	05413823          	sd	s4,80(sp)
    80004cd0:	05513423          	sd	s5,72(sp)
    80004cd4:	05613023          	sd	s6,64(sp)
    80004cd8:	03713c23          	sd	s7,56(sp)
    80004cdc:	03813823          	sd	s8,48(sp)
    80004ce0:	03913423          	sd	s9,40(sp)
    80004ce4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004ce8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	4bc50513          	addi	a0,a0,1212 # 800091a8 <CONSOLE_STATUS+0x198>
    80004cf4:	00000097          	auipc	ra,0x0
    80004cf8:	604080e7          	jalr	1540(ra) # 800052f8 <_Z11printStringPKc>
    getString(input, 30);
    80004cfc:	01e00593          	li	a1,30
    80004d00:	f8040493          	addi	s1,s0,-128
    80004d04:	00048513          	mv	a0,s1
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	678080e7          	jalr	1656(ra) # 80005380 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004d10:	00048513          	mv	a0,s1
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	744080e7          	jalr	1860(ra) # 80005458 <_Z11stringToIntPKc>
    80004d1c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004d20:	00004517          	auipc	a0,0x4
    80004d24:	4a850513          	addi	a0,a0,1192 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80004d28:	00000097          	auipc	ra,0x0
    80004d2c:	5d0080e7          	jalr	1488(ra) # 800052f8 <_Z11printStringPKc>
    getString(input, 30);
    80004d30:	01e00593          	li	a1,30
    80004d34:	00048513          	mv	a0,s1
    80004d38:	00000097          	auipc	ra,0x0
    80004d3c:	648080e7          	jalr	1608(ra) # 80005380 <_Z9getStringPci>
    n = stringToInt(input);
    80004d40:	00048513          	mv	a0,s1
    80004d44:	00000097          	auipc	ra,0x0
    80004d48:	714080e7          	jalr	1812(ra) # 80005458 <_Z11stringToIntPKc>
    80004d4c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004d50:	00004517          	auipc	a0,0x4
    80004d54:	49850513          	addi	a0,a0,1176 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004d58:	00000097          	auipc	ra,0x0
    80004d5c:	5a0080e7          	jalr	1440(ra) # 800052f8 <_Z11printStringPKc>
    80004d60:	00000613          	li	a2,0
    80004d64:	00a00593          	li	a1,10
    80004d68:	00090513          	mv	a0,s2
    80004d6c:	00000097          	auipc	ra,0x0
    80004d70:	73c080e7          	jalr	1852(ra) # 800054a8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004d74:	00004517          	auipc	a0,0x4
    80004d78:	48c50513          	addi	a0,a0,1164 # 80009200 <CONSOLE_STATUS+0x1f0>
    80004d7c:	00000097          	auipc	ra,0x0
    80004d80:	57c080e7          	jalr	1404(ra) # 800052f8 <_Z11printStringPKc>
    80004d84:	00000613          	li	a2,0
    80004d88:	00a00593          	li	a1,10
    80004d8c:	00048513          	mv	a0,s1
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	718080e7          	jalr	1816(ra) # 800054a8 <_Z8printIntiii>
    printString(".\n");
    80004d98:	00004517          	auipc	a0,0x4
    80004d9c:	48050513          	addi	a0,a0,1152 # 80009218 <CONSOLE_STATUS+0x208>
    80004da0:	00000097          	auipc	ra,0x0
    80004da4:	558080e7          	jalr	1368(ra) # 800052f8 <_Z11printStringPKc>
    if(threadNum > n) {
    80004da8:	0324c463          	blt	s1,s2,80004dd0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004dac:	03205c63          	blez	s2,80004de4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004db0:	03800513          	li	a0,56
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	1f4080e7          	jalr	500(ra) # 80001fa8 <_Znwm>
    80004dbc:	00050a93          	mv	s5,a0
    80004dc0:	00048593          	mv	a1,s1
    80004dc4:	00001097          	auipc	ra,0x1
    80004dc8:	804080e7          	jalr	-2044(ra) # 800055c8 <_ZN9BufferCPPC1Ei>
    80004dcc:	0300006f          	j	80004dfc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004dd0:	00004517          	auipc	a0,0x4
    80004dd4:	45050513          	addi	a0,a0,1104 # 80009220 <CONSOLE_STATUS+0x210>
    80004dd8:	00000097          	auipc	ra,0x0
    80004ddc:	520080e7          	jalr	1312(ra) # 800052f8 <_Z11printStringPKc>
        return;
    80004de0:	0140006f          	j	80004df4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004de4:	00004517          	auipc	a0,0x4
    80004de8:	47c50513          	addi	a0,a0,1148 # 80009260 <CONSOLE_STATUS+0x250>
    80004dec:	00000097          	auipc	ra,0x0
    80004df0:	50c080e7          	jalr	1292(ra) # 800052f8 <_Z11printStringPKc>
        return;
    80004df4:	000b8113          	mv	sp,s7
    80004df8:	2380006f          	j	80005030 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004dfc:	01000513          	li	a0,16
    80004e00:	ffffd097          	auipc	ra,0xffffd
    80004e04:	1a8080e7          	jalr	424(ra) # 80001fa8 <_Znwm>
    80004e08:	00050493          	mv	s1,a0
    80004e0c:	00000593          	li	a1,0
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	5e8080e7          	jalr	1512(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    80004e18:	00007797          	auipc	a5,0x7
    80004e1c:	8497b823          	sd	s1,-1968(a5) # 8000b668 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004e20:	00391793          	slli	a5,s2,0x3
    80004e24:	00f78793          	addi	a5,a5,15
    80004e28:	ff07f793          	andi	a5,a5,-16
    80004e2c:	40f10133          	sub	sp,sp,a5
    80004e30:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004e34:	0019071b          	addiw	a4,s2,1
    80004e38:	00171793          	slli	a5,a4,0x1
    80004e3c:	00e787b3          	add	a5,a5,a4
    80004e40:	00379793          	slli	a5,a5,0x3
    80004e44:	00f78793          	addi	a5,a5,15
    80004e48:	ff07f793          	andi	a5,a5,-16
    80004e4c:	40f10133          	sub	sp,sp,a5
    80004e50:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004e54:	00191c13          	slli	s8,s2,0x1
    80004e58:	012c07b3          	add	a5,s8,s2
    80004e5c:	00379793          	slli	a5,a5,0x3
    80004e60:	00fa07b3          	add	a5,s4,a5
    80004e64:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004e68:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004e6c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004e70:	02800513          	li	a0,40
    80004e74:	ffffd097          	auipc	ra,0xffffd
    80004e78:	134080e7          	jalr	308(ra) # 80001fa8 <_Znwm>
    80004e7c:	00050b13          	mv	s6,a0
    80004e80:	012c0c33          	add	s8,s8,s2
    80004e84:	003c1c13          	slli	s8,s8,0x3
    80004e88:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004e8c:	ffffd097          	auipc	ra,0xffffd
    80004e90:	4d8080e7          	jalr	1240(ra) # 80002364 <_ZN6ThreadC1Ev>
    80004e94:	00006797          	auipc	a5,0x6
    80004e98:	6a478793          	addi	a5,a5,1700 # 8000b538 <_ZTV12ConsumerSync+0x10>
    80004e9c:	00fb3023          	sd	a5,0(s6)
    80004ea0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004ea4:	000b0513          	mv	a0,s6
    80004ea8:	ffffd097          	auipc	ra,0xffffd
    80004eac:	4f4080e7          	jalr	1268(ra) # 8000239c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004eb0:	00000493          	li	s1,0
    80004eb4:	0380006f          	j	80004eec <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004eb8:	00006797          	auipc	a5,0x6
    80004ebc:	65878793          	addi	a5,a5,1624 # 8000b510 <_ZTV12ProducerSync+0x10>
    80004ec0:	00fcb023          	sd	a5,0(s9)
    80004ec4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004ec8:	00349793          	slli	a5,s1,0x3
    80004ecc:	00f987b3          	add	a5,s3,a5
    80004ed0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004ed4:	00349793          	slli	a5,s1,0x3
    80004ed8:	00f987b3          	add	a5,s3,a5
    80004edc:	0007b503          	ld	a0,0(a5)
    80004ee0:	ffffd097          	auipc	ra,0xffffd
    80004ee4:	4bc080e7          	jalr	1212(ra) # 8000239c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004ee8:	0014849b          	addiw	s1,s1,1
    80004eec:	0b24d063          	bge	s1,s2,80004f8c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004ef0:	00149793          	slli	a5,s1,0x1
    80004ef4:	009787b3          	add	a5,a5,s1
    80004ef8:	00379793          	slli	a5,a5,0x3
    80004efc:	00fa07b3          	add	a5,s4,a5
    80004f00:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004f04:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004f08:	00006717          	auipc	a4,0x6
    80004f0c:	76073703          	ld	a4,1888(a4) # 8000b668 <_ZL10waitForAll>
    80004f10:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004f14:	02905863          	blez	s1,80004f44 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004f18:	02800513          	li	a0,40
    80004f1c:	ffffd097          	auipc	ra,0xffffd
    80004f20:	08c080e7          	jalr	140(ra) # 80001fa8 <_Znwm>
    80004f24:	00050c93          	mv	s9,a0
    80004f28:	00149c13          	slli	s8,s1,0x1
    80004f2c:	009c0c33          	add	s8,s8,s1
    80004f30:	003c1c13          	slli	s8,s8,0x3
    80004f34:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004f38:	ffffd097          	auipc	ra,0xffffd
    80004f3c:	42c080e7          	jalr	1068(ra) # 80002364 <_ZN6ThreadC1Ev>
    80004f40:	f79ff06f          	j	80004eb8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004f44:	02800513          	li	a0,40
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	060080e7          	jalr	96(ra) # 80001fa8 <_Znwm>
    80004f50:	00050c93          	mv	s9,a0
    80004f54:	00149c13          	slli	s8,s1,0x1
    80004f58:	009c0c33          	add	s8,s8,s1
    80004f5c:	003c1c13          	slli	s8,s8,0x3
    80004f60:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	400080e7          	jalr	1024(ra) # 80002364 <_ZN6ThreadC1Ev>
    80004f6c:	00006797          	auipc	a5,0x6
    80004f70:	57c78793          	addi	a5,a5,1404 # 8000b4e8 <_ZTV16ProducerKeyboard+0x10>
    80004f74:	00fcb023          	sd	a5,0(s9)
    80004f78:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004f7c:	00349793          	slli	a5,s1,0x3
    80004f80:	00f987b3          	add	a5,s3,a5
    80004f84:	0197b023          	sd	s9,0(a5)
    80004f88:	f4dff06f          	j	80004ed4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	380080e7          	jalr	896(ra) # 8000230c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f94:	00000493          	li	s1,0
    80004f98:	00994e63          	blt	s2,s1,80004fb4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004f9c:	00006517          	auipc	a0,0x6
    80004fa0:	6cc53503          	ld	a0,1740(a0) # 8000b668 <_ZL10waitForAll>
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	48c080e7          	jalr	1164(ra) # 80002430 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004fac:	0014849b          	addiw	s1,s1,1
    80004fb0:	fe9ff06f          	j	80004f98 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004fb4:	00000493          	li	s1,0
    80004fb8:	0080006f          	j	80004fc0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004fbc:	0014849b          	addiw	s1,s1,1
    80004fc0:	0324d263          	bge	s1,s2,80004fe4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004fc4:	00349793          	slli	a5,s1,0x3
    80004fc8:	00f987b3          	add	a5,s3,a5
    80004fcc:	0007b503          	ld	a0,0(a5)
    80004fd0:	fe0506e3          	beqz	a0,80004fbc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004fd4:	00053783          	ld	a5,0(a0)
    80004fd8:	0087b783          	ld	a5,8(a5)
    80004fdc:	000780e7          	jalr	a5
    80004fe0:	fddff06f          	j	80004fbc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004fe4:	000b0a63          	beqz	s6,80004ff8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004fe8:	000b3783          	ld	a5,0(s6)
    80004fec:	0087b783          	ld	a5,8(a5)
    80004ff0:	000b0513          	mv	a0,s6
    80004ff4:	000780e7          	jalr	a5
    delete waitForAll;
    80004ff8:	00006517          	auipc	a0,0x6
    80004ffc:	67053503          	ld	a0,1648(a0) # 8000b668 <_ZL10waitForAll>
    80005000:	00050863          	beqz	a0,80005010 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005004:	00053783          	ld	a5,0(a0)
    80005008:	0087b783          	ld	a5,8(a5)
    8000500c:	000780e7          	jalr	a5
    delete buffer;
    80005010:	000a8e63          	beqz	s5,8000502c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005014:	000a8513          	mv	a0,s5
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	8a8080e7          	jalr	-1880(ra) # 800058c0 <_ZN9BufferCPPD1Ev>
    80005020:	000a8513          	mv	a0,s5
    80005024:	ffffd097          	auipc	ra,0xffffd
    80005028:	084080e7          	jalr	132(ra) # 800020a8 <_ZdlPv>
    8000502c:	000b8113          	mv	sp,s7

}
    80005030:	f8040113          	addi	sp,s0,-128
    80005034:	07813083          	ld	ra,120(sp)
    80005038:	07013403          	ld	s0,112(sp)
    8000503c:	06813483          	ld	s1,104(sp)
    80005040:	06013903          	ld	s2,96(sp)
    80005044:	05813983          	ld	s3,88(sp)
    80005048:	05013a03          	ld	s4,80(sp)
    8000504c:	04813a83          	ld	s5,72(sp)
    80005050:	04013b03          	ld	s6,64(sp)
    80005054:	03813b83          	ld	s7,56(sp)
    80005058:	03013c03          	ld	s8,48(sp)
    8000505c:	02813c83          	ld	s9,40(sp)
    80005060:	08010113          	addi	sp,sp,128
    80005064:	00008067          	ret
    80005068:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000506c:	000a8513          	mv	a0,s5
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	038080e7          	jalr	56(ra) # 800020a8 <_ZdlPv>
    80005078:	00048513          	mv	a0,s1
    8000507c:	00007097          	auipc	ra,0x7
    80005080:	6cc080e7          	jalr	1740(ra) # 8000c748 <_Unwind_Resume>
    80005084:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005088:	00048513          	mv	a0,s1
    8000508c:	ffffd097          	auipc	ra,0xffffd
    80005090:	01c080e7          	jalr	28(ra) # 800020a8 <_ZdlPv>
    80005094:	00090513          	mv	a0,s2
    80005098:	00007097          	auipc	ra,0x7
    8000509c:	6b0080e7          	jalr	1712(ra) # 8000c748 <_Unwind_Resume>
    800050a0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800050a4:	000b0513          	mv	a0,s6
    800050a8:	ffffd097          	auipc	ra,0xffffd
    800050ac:	000080e7          	jalr	ra # 800020a8 <_ZdlPv>
    800050b0:	00048513          	mv	a0,s1
    800050b4:	00007097          	auipc	ra,0x7
    800050b8:	694080e7          	jalr	1684(ra) # 8000c748 <_Unwind_Resume>
    800050bc:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800050c0:	000c8513          	mv	a0,s9
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	fe4080e7          	jalr	-28(ra) # 800020a8 <_ZdlPv>
    800050cc:	00048513          	mv	a0,s1
    800050d0:	00007097          	auipc	ra,0x7
    800050d4:	678080e7          	jalr	1656(ra) # 8000c748 <_Unwind_Resume>
    800050d8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800050dc:	000c8513          	mv	a0,s9
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	fc8080e7          	jalr	-56(ra) # 800020a8 <_ZdlPv>
    800050e8:	00048513          	mv	a0,s1
    800050ec:	00007097          	auipc	ra,0x7
    800050f0:	65c080e7          	jalr	1628(ra) # 8000c748 <_Unwind_Resume>

00000000800050f4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800050f4:	ff010113          	addi	sp,sp,-16
    800050f8:	00113423          	sd	ra,8(sp)
    800050fc:	00813023          	sd	s0,0(sp)
    80005100:	01010413          	addi	s0,sp,16
    80005104:	00006797          	auipc	a5,0x6
    80005108:	43478793          	addi	a5,a5,1076 # 8000b538 <_ZTV12ConsumerSync+0x10>
    8000510c:	00f53023          	sd	a5,0(a0)
    80005110:	ffffd097          	auipc	ra,0xffffd
    80005114:	098080e7          	jalr	152(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80005118:	00813083          	ld	ra,8(sp)
    8000511c:	00013403          	ld	s0,0(sp)
    80005120:	01010113          	addi	sp,sp,16
    80005124:	00008067          	ret

0000000080005128 <_ZN12ConsumerSyncD0Ev>:
    80005128:	fe010113          	addi	sp,sp,-32
    8000512c:	00113c23          	sd	ra,24(sp)
    80005130:	00813823          	sd	s0,16(sp)
    80005134:	00913423          	sd	s1,8(sp)
    80005138:	02010413          	addi	s0,sp,32
    8000513c:	00050493          	mv	s1,a0
    80005140:	00006797          	auipc	a5,0x6
    80005144:	3f878793          	addi	a5,a5,1016 # 8000b538 <_ZTV12ConsumerSync+0x10>
    80005148:	00f53023          	sd	a5,0(a0)
    8000514c:	ffffd097          	auipc	ra,0xffffd
    80005150:	05c080e7          	jalr	92(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80005154:	00048513          	mv	a0,s1
    80005158:	ffffd097          	auipc	ra,0xffffd
    8000515c:	f50080e7          	jalr	-176(ra) # 800020a8 <_ZdlPv>
    80005160:	01813083          	ld	ra,24(sp)
    80005164:	01013403          	ld	s0,16(sp)
    80005168:	00813483          	ld	s1,8(sp)
    8000516c:	02010113          	addi	sp,sp,32
    80005170:	00008067          	ret

0000000080005174 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005174:	ff010113          	addi	sp,sp,-16
    80005178:	00113423          	sd	ra,8(sp)
    8000517c:	00813023          	sd	s0,0(sp)
    80005180:	01010413          	addi	s0,sp,16
    80005184:	00006797          	auipc	a5,0x6
    80005188:	38c78793          	addi	a5,a5,908 # 8000b510 <_ZTV12ProducerSync+0x10>
    8000518c:	00f53023          	sd	a5,0(a0)
    80005190:	ffffd097          	auipc	ra,0xffffd
    80005194:	018080e7          	jalr	24(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80005198:	00813083          	ld	ra,8(sp)
    8000519c:	00013403          	ld	s0,0(sp)
    800051a0:	01010113          	addi	sp,sp,16
    800051a4:	00008067          	ret

00000000800051a8 <_ZN12ProducerSyncD0Ev>:
    800051a8:	fe010113          	addi	sp,sp,-32
    800051ac:	00113c23          	sd	ra,24(sp)
    800051b0:	00813823          	sd	s0,16(sp)
    800051b4:	00913423          	sd	s1,8(sp)
    800051b8:	02010413          	addi	s0,sp,32
    800051bc:	00050493          	mv	s1,a0
    800051c0:	00006797          	auipc	a5,0x6
    800051c4:	35078793          	addi	a5,a5,848 # 8000b510 <_ZTV12ProducerSync+0x10>
    800051c8:	00f53023          	sd	a5,0(a0)
    800051cc:	ffffd097          	auipc	ra,0xffffd
    800051d0:	fdc080e7          	jalr	-36(ra) # 800021a8 <_ZN6ThreadD1Ev>
    800051d4:	00048513          	mv	a0,s1
    800051d8:	ffffd097          	auipc	ra,0xffffd
    800051dc:	ed0080e7          	jalr	-304(ra) # 800020a8 <_ZdlPv>
    800051e0:	01813083          	ld	ra,24(sp)
    800051e4:	01013403          	ld	s0,16(sp)
    800051e8:	00813483          	ld	s1,8(sp)
    800051ec:	02010113          	addi	sp,sp,32
    800051f0:	00008067          	ret

00000000800051f4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800051f4:	ff010113          	addi	sp,sp,-16
    800051f8:	00113423          	sd	ra,8(sp)
    800051fc:	00813023          	sd	s0,0(sp)
    80005200:	01010413          	addi	s0,sp,16
    80005204:	00006797          	auipc	a5,0x6
    80005208:	2e478793          	addi	a5,a5,740 # 8000b4e8 <_ZTV16ProducerKeyboard+0x10>
    8000520c:	00f53023          	sd	a5,0(a0)
    80005210:	ffffd097          	auipc	ra,0xffffd
    80005214:	f98080e7          	jalr	-104(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80005218:	00813083          	ld	ra,8(sp)
    8000521c:	00013403          	ld	s0,0(sp)
    80005220:	01010113          	addi	sp,sp,16
    80005224:	00008067          	ret

0000000080005228 <_ZN16ProducerKeyboardD0Ev>:
    80005228:	fe010113          	addi	sp,sp,-32
    8000522c:	00113c23          	sd	ra,24(sp)
    80005230:	00813823          	sd	s0,16(sp)
    80005234:	00913423          	sd	s1,8(sp)
    80005238:	02010413          	addi	s0,sp,32
    8000523c:	00050493          	mv	s1,a0
    80005240:	00006797          	auipc	a5,0x6
    80005244:	2a878793          	addi	a5,a5,680 # 8000b4e8 <_ZTV16ProducerKeyboard+0x10>
    80005248:	00f53023          	sd	a5,0(a0)
    8000524c:	ffffd097          	auipc	ra,0xffffd
    80005250:	f5c080e7          	jalr	-164(ra) # 800021a8 <_ZN6ThreadD1Ev>
    80005254:	00048513          	mv	a0,s1
    80005258:	ffffd097          	auipc	ra,0xffffd
    8000525c:	e50080e7          	jalr	-432(ra) # 800020a8 <_ZdlPv>
    80005260:	01813083          	ld	ra,24(sp)
    80005264:	01013403          	ld	s0,16(sp)
    80005268:	00813483          	ld	s1,8(sp)
    8000526c:	02010113          	addi	sp,sp,32
    80005270:	00008067          	ret

0000000080005274 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005274:	ff010113          	addi	sp,sp,-16
    80005278:	00113423          	sd	ra,8(sp)
    8000527c:	00813023          	sd	s0,0(sp)
    80005280:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005284:	02053583          	ld	a1,32(a0)
    80005288:	fffff097          	auipc	ra,0xfffff
    8000528c:	7e4080e7          	jalr	2020(ra) # 80004a6c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005290:	00813083          	ld	ra,8(sp)
    80005294:	00013403          	ld	s0,0(sp)
    80005298:	01010113          	addi	sp,sp,16
    8000529c:	00008067          	ret

00000000800052a0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800052a0:	ff010113          	addi	sp,sp,-16
    800052a4:	00113423          	sd	ra,8(sp)
    800052a8:	00813023          	sd	s0,0(sp)
    800052ac:	01010413          	addi	s0,sp,16
        producer(td);
    800052b0:	02053583          	ld	a1,32(a0)
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	878080e7          	jalr	-1928(ra) # 80004b2c <_ZN12ProducerSync8producerEPv>
    }
    800052bc:	00813083          	ld	ra,8(sp)
    800052c0:	00013403          	ld	s0,0(sp)
    800052c4:	01010113          	addi	sp,sp,16
    800052c8:	00008067          	ret

00000000800052cc <_ZN12ConsumerSync3runEv>:
    void run() override {
    800052cc:	ff010113          	addi	sp,sp,-16
    800052d0:	00113423          	sd	ra,8(sp)
    800052d4:	00813023          	sd	s0,0(sp)
    800052d8:	01010413          	addi	s0,sp,16
        consumer(td);
    800052dc:	02053583          	ld	a1,32(a0)
    800052e0:	00000097          	auipc	ra,0x0
    800052e4:	8e0080e7          	jalr	-1824(ra) # 80004bc0 <_ZN12ConsumerSync8consumerEPv>
    }
    800052e8:	00813083          	ld	ra,8(sp)
    800052ec:	00013403          	ld	s0,0(sp)
    800052f0:	01010113          	addi	sp,sp,16
    800052f4:	00008067          	ret

00000000800052f8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800052f8:	fe010113          	addi	sp,sp,-32
    800052fc:	00113c23          	sd	ra,24(sp)
    80005300:	00813823          	sd	s0,16(sp)
    80005304:	00913423          	sd	s1,8(sp)
    80005308:	02010413          	addi	s0,sp,32
    8000530c:	00050493          	mv	s1,a0
    LOCK();
    80005310:	00100613          	li	a2,1
    80005314:	00000593          	li	a1,0
    80005318:	00006517          	auipc	a0,0x6
    8000531c:	35850513          	addi	a0,a0,856 # 8000b670 <lockPrint>
    80005320:	ffffc097          	auipc	ra,0xffffc
    80005324:	efc080e7          	jalr	-260(ra) # 8000121c <copy_and_swap>
    80005328:	00050863          	beqz	a0,80005338 <_Z11printStringPKc+0x40>
    8000532c:	ffffc097          	auipc	ra,0xffffc
    80005330:	0ac080e7          	jalr	172(ra) # 800013d8 <_Z15thread_dispatchv>
    80005334:	fddff06f          	j	80005310 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005338:	0004c503          	lbu	a0,0(s1)
    8000533c:	00050a63          	beqz	a0,80005350 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005340:	ffffc097          	auipc	ra,0xffffc
    80005344:	1c8080e7          	jalr	456(ra) # 80001508 <_Z4putcc>
        string++;
    80005348:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000534c:	fedff06f          	j	80005338 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005350:	00000613          	li	a2,0
    80005354:	00100593          	li	a1,1
    80005358:	00006517          	auipc	a0,0x6
    8000535c:	31850513          	addi	a0,a0,792 # 8000b670 <lockPrint>
    80005360:	ffffc097          	auipc	ra,0xffffc
    80005364:	ebc080e7          	jalr	-324(ra) # 8000121c <copy_and_swap>
    80005368:	fe0514e3          	bnez	a0,80005350 <_Z11printStringPKc+0x58>
}
    8000536c:	01813083          	ld	ra,24(sp)
    80005370:	01013403          	ld	s0,16(sp)
    80005374:	00813483          	ld	s1,8(sp)
    80005378:	02010113          	addi	sp,sp,32
    8000537c:	00008067          	ret

0000000080005380 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005380:	fd010113          	addi	sp,sp,-48
    80005384:	02113423          	sd	ra,40(sp)
    80005388:	02813023          	sd	s0,32(sp)
    8000538c:	00913c23          	sd	s1,24(sp)
    80005390:	01213823          	sd	s2,16(sp)
    80005394:	01313423          	sd	s3,8(sp)
    80005398:	01413023          	sd	s4,0(sp)
    8000539c:	03010413          	addi	s0,sp,48
    800053a0:	00050993          	mv	s3,a0
    800053a4:	00058a13          	mv	s4,a1
    LOCK();
    800053a8:	00100613          	li	a2,1
    800053ac:	00000593          	li	a1,0
    800053b0:	00006517          	auipc	a0,0x6
    800053b4:	2c050513          	addi	a0,a0,704 # 8000b670 <lockPrint>
    800053b8:	ffffc097          	auipc	ra,0xffffc
    800053bc:	e64080e7          	jalr	-412(ra) # 8000121c <copy_and_swap>
    800053c0:	00050863          	beqz	a0,800053d0 <_Z9getStringPci+0x50>
    800053c4:	ffffc097          	auipc	ra,0xffffc
    800053c8:	014080e7          	jalr	20(ra) # 800013d8 <_Z15thread_dispatchv>
    800053cc:	fddff06f          	j	800053a8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800053d0:	00000913          	li	s2,0
    800053d4:	00090493          	mv	s1,s2
    800053d8:	0019091b          	addiw	s2,s2,1
    800053dc:	03495a63          	bge	s2,s4,80005410 <_Z9getStringPci+0x90>
        cc = getc();
    800053e0:	ffffc097          	auipc	ra,0xffffc
    800053e4:	100080e7          	jalr	256(ra) # 800014e0 <_Z4getcv>
        if(cc < 1)
    800053e8:	02050463          	beqz	a0,80005410 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800053ec:	009984b3          	add	s1,s3,s1
    800053f0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800053f4:	00a00793          	li	a5,10
    800053f8:	00f50a63          	beq	a0,a5,8000540c <_Z9getStringPci+0x8c>
    800053fc:	00d00793          	li	a5,13
    80005400:	fcf51ae3          	bne	a0,a5,800053d4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005404:	00090493          	mv	s1,s2
    80005408:	0080006f          	j	80005410 <_Z9getStringPci+0x90>
    8000540c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005410:	009984b3          	add	s1,s3,s1
    80005414:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005418:	00000613          	li	a2,0
    8000541c:	00100593          	li	a1,1
    80005420:	00006517          	auipc	a0,0x6
    80005424:	25050513          	addi	a0,a0,592 # 8000b670 <lockPrint>
    80005428:	ffffc097          	auipc	ra,0xffffc
    8000542c:	df4080e7          	jalr	-524(ra) # 8000121c <copy_and_swap>
    80005430:	fe0514e3          	bnez	a0,80005418 <_Z9getStringPci+0x98>
    return buf;
}
    80005434:	00098513          	mv	a0,s3
    80005438:	02813083          	ld	ra,40(sp)
    8000543c:	02013403          	ld	s0,32(sp)
    80005440:	01813483          	ld	s1,24(sp)
    80005444:	01013903          	ld	s2,16(sp)
    80005448:	00813983          	ld	s3,8(sp)
    8000544c:	00013a03          	ld	s4,0(sp)
    80005450:	03010113          	addi	sp,sp,48
    80005454:	00008067          	ret

0000000080005458 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005458:	ff010113          	addi	sp,sp,-16
    8000545c:	00813423          	sd	s0,8(sp)
    80005460:	01010413          	addi	s0,sp,16
    80005464:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005468:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000546c:	0006c603          	lbu	a2,0(a3)
    80005470:	fd06071b          	addiw	a4,a2,-48
    80005474:	0ff77713          	andi	a4,a4,255
    80005478:	00900793          	li	a5,9
    8000547c:	02e7e063          	bltu	a5,a4,8000549c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005480:	0025179b          	slliw	a5,a0,0x2
    80005484:	00a787bb          	addw	a5,a5,a0
    80005488:	0017979b          	slliw	a5,a5,0x1
    8000548c:	00168693          	addi	a3,a3,1
    80005490:	00c787bb          	addw	a5,a5,a2
    80005494:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005498:	fd5ff06f          	j	8000546c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000549c:	00813403          	ld	s0,8(sp)
    800054a0:	01010113          	addi	sp,sp,16
    800054a4:	00008067          	ret

00000000800054a8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800054a8:	fc010113          	addi	sp,sp,-64
    800054ac:	02113c23          	sd	ra,56(sp)
    800054b0:	02813823          	sd	s0,48(sp)
    800054b4:	02913423          	sd	s1,40(sp)
    800054b8:	03213023          	sd	s2,32(sp)
    800054bc:	01313c23          	sd	s3,24(sp)
    800054c0:	04010413          	addi	s0,sp,64
    800054c4:	00050493          	mv	s1,a0
    800054c8:	00058913          	mv	s2,a1
    800054cc:	00060993          	mv	s3,a2
    LOCK();
    800054d0:	00100613          	li	a2,1
    800054d4:	00000593          	li	a1,0
    800054d8:	00006517          	auipc	a0,0x6
    800054dc:	19850513          	addi	a0,a0,408 # 8000b670 <lockPrint>
    800054e0:	ffffc097          	auipc	ra,0xffffc
    800054e4:	d3c080e7          	jalr	-708(ra) # 8000121c <copy_and_swap>
    800054e8:	00050863          	beqz	a0,800054f8 <_Z8printIntiii+0x50>
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	eec080e7          	jalr	-276(ra) # 800013d8 <_Z15thread_dispatchv>
    800054f4:	fddff06f          	j	800054d0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800054f8:	00098463          	beqz	s3,80005500 <_Z8printIntiii+0x58>
    800054fc:	0804c463          	bltz	s1,80005584 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005500:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005504:	00000593          	li	a1,0
    }

    i = 0;
    80005508:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000550c:	0009079b          	sext.w	a5,s2
    80005510:	0325773b          	remuw	a4,a0,s2
    80005514:	00048613          	mv	a2,s1
    80005518:	0014849b          	addiw	s1,s1,1
    8000551c:	02071693          	slli	a3,a4,0x20
    80005520:	0206d693          	srli	a3,a3,0x20
    80005524:	00006717          	auipc	a4,0x6
    80005528:	02c70713          	addi	a4,a4,44 # 8000b550 <digits>
    8000552c:	00d70733          	add	a4,a4,a3
    80005530:	00074683          	lbu	a3,0(a4)
    80005534:	fd040713          	addi	a4,s0,-48
    80005538:	00c70733          	add	a4,a4,a2
    8000553c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005540:	0005071b          	sext.w	a4,a0
    80005544:	0325553b          	divuw	a0,a0,s2
    80005548:	fcf772e3          	bgeu	a4,a5,8000550c <_Z8printIntiii+0x64>
    if(neg)
    8000554c:	00058c63          	beqz	a1,80005564 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005550:	fd040793          	addi	a5,s0,-48
    80005554:	009784b3          	add	s1,a5,s1
    80005558:	02d00793          	li	a5,45
    8000555c:	fef48823          	sb	a5,-16(s1)
    80005560:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005564:	fff4849b          	addiw	s1,s1,-1
    80005568:	0204c463          	bltz	s1,80005590 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000556c:	fd040793          	addi	a5,s0,-48
    80005570:	009787b3          	add	a5,a5,s1
    80005574:	ff07c503          	lbu	a0,-16(a5)
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	f90080e7          	jalr	-112(ra) # 80001508 <_Z4putcc>
    80005580:	fe5ff06f          	j	80005564 <_Z8printIntiii+0xbc>
        x = -xx;
    80005584:	4090053b          	negw	a0,s1
        neg = 1;
    80005588:	00100593          	li	a1,1
        x = -xx;
    8000558c:	f7dff06f          	j	80005508 <_Z8printIntiii+0x60>

    UNLOCK();
    80005590:	00000613          	li	a2,0
    80005594:	00100593          	li	a1,1
    80005598:	00006517          	auipc	a0,0x6
    8000559c:	0d850513          	addi	a0,a0,216 # 8000b670 <lockPrint>
    800055a0:	ffffc097          	auipc	ra,0xffffc
    800055a4:	c7c080e7          	jalr	-900(ra) # 8000121c <copy_and_swap>
    800055a8:	fe0514e3          	bnez	a0,80005590 <_Z8printIntiii+0xe8>
    800055ac:	03813083          	ld	ra,56(sp)
    800055b0:	03013403          	ld	s0,48(sp)
    800055b4:	02813483          	ld	s1,40(sp)
    800055b8:	02013903          	ld	s2,32(sp)
    800055bc:	01813983          	ld	s3,24(sp)
    800055c0:	04010113          	addi	sp,sp,64
    800055c4:	00008067          	ret

00000000800055c8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800055c8:	fd010113          	addi	sp,sp,-48
    800055cc:	02113423          	sd	ra,40(sp)
    800055d0:	02813023          	sd	s0,32(sp)
    800055d4:	00913c23          	sd	s1,24(sp)
    800055d8:	01213823          	sd	s2,16(sp)
    800055dc:	01313423          	sd	s3,8(sp)
    800055e0:	03010413          	addi	s0,sp,48
    800055e4:	00050493          	mv	s1,a0
    800055e8:	00058913          	mv	s2,a1
    800055ec:	0015879b          	addiw	a5,a1,1
    800055f0:	0007851b          	sext.w	a0,a5
    800055f4:	00f4a023          	sw	a5,0(s1)
    800055f8:	0004a823          	sw	zero,16(s1)
    800055fc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005600:	00251513          	slli	a0,a0,0x2
    80005604:	ffffc097          	auipc	ra,0xffffc
    80005608:	c38080e7          	jalr	-968(ra) # 8000123c <_Z9mem_allocm>
    8000560c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005610:	01000513          	li	a0,16
    80005614:	ffffd097          	auipc	ra,0xffffd
    80005618:	994080e7          	jalr	-1644(ra) # 80001fa8 <_Znwm>
    8000561c:	00050993          	mv	s3,a0
    80005620:	00000593          	li	a1,0
    80005624:	ffffd097          	auipc	ra,0xffffd
    80005628:	dd4080e7          	jalr	-556(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    8000562c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005630:	01000513          	li	a0,16
    80005634:	ffffd097          	auipc	ra,0xffffd
    80005638:	974080e7          	jalr	-1676(ra) # 80001fa8 <_Znwm>
    8000563c:	00050993          	mv	s3,a0
    80005640:	00090593          	mv	a1,s2
    80005644:	ffffd097          	auipc	ra,0xffffd
    80005648:	db4080e7          	jalr	-588(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    8000564c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005650:	01000513          	li	a0,16
    80005654:	ffffd097          	auipc	ra,0xffffd
    80005658:	954080e7          	jalr	-1708(ra) # 80001fa8 <_Znwm>
    8000565c:	00050913          	mv	s2,a0
    80005660:	00100593          	li	a1,1
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	d94080e7          	jalr	-620(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    8000566c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005670:	01000513          	li	a0,16
    80005674:	ffffd097          	auipc	ra,0xffffd
    80005678:	934080e7          	jalr	-1740(ra) # 80001fa8 <_Znwm>
    8000567c:	00050913          	mv	s2,a0
    80005680:	00100593          	li	a1,1
    80005684:	ffffd097          	auipc	ra,0xffffd
    80005688:	d74080e7          	jalr	-652(ra) # 800023f8 <_ZN9SemaphoreC1Ej>
    8000568c:	0324b823          	sd	s2,48(s1)
}
    80005690:	02813083          	ld	ra,40(sp)
    80005694:	02013403          	ld	s0,32(sp)
    80005698:	01813483          	ld	s1,24(sp)
    8000569c:	01013903          	ld	s2,16(sp)
    800056a0:	00813983          	ld	s3,8(sp)
    800056a4:	03010113          	addi	sp,sp,48
    800056a8:	00008067          	ret
    800056ac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800056b0:	00098513          	mv	a0,s3
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	9f4080e7          	jalr	-1548(ra) # 800020a8 <_ZdlPv>
    800056bc:	00048513          	mv	a0,s1
    800056c0:	00007097          	auipc	ra,0x7
    800056c4:	088080e7          	jalr	136(ra) # 8000c748 <_Unwind_Resume>
    800056c8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800056cc:	00098513          	mv	a0,s3
    800056d0:	ffffd097          	auipc	ra,0xffffd
    800056d4:	9d8080e7          	jalr	-1576(ra) # 800020a8 <_ZdlPv>
    800056d8:	00048513          	mv	a0,s1
    800056dc:	00007097          	auipc	ra,0x7
    800056e0:	06c080e7          	jalr	108(ra) # 8000c748 <_Unwind_Resume>
    800056e4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800056e8:	00090513          	mv	a0,s2
    800056ec:	ffffd097          	auipc	ra,0xffffd
    800056f0:	9bc080e7          	jalr	-1604(ra) # 800020a8 <_ZdlPv>
    800056f4:	00048513          	mv	a0,s1
    800056f8:	00007097          	auipc	ra,0x7
    800056fc:	050080e7          	jalr	80(ra) # 8000c748 <_Unwind_Resume>
    80005700:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005704:	00090513          	mv	a0,s2
    80005708:	ffffd097          	auipc	ra,0xffffd
    8000570c:	9a0080e7          	jalr	-1632(ra) # 800020a8 <_ZdlPv>
    80005710:	00048513          	mv	a0,s1
    80005714:	00007097          	auipc	ra,0x7
    80005718:	034080e7          	jalr	52(ra) # 8000c748 <_Unwind_Resume>

000000008000571c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000571c:	fe010113          	addi	sp,sp,-32
    80005720:	00113c23          	sd	ra,24(sp)
    80005724:	00813823          	sd	s0,16(sp)
    80005728:	00913423          	sd	s1,8(sp)
    8000572c:	01213023          	sd	s2,0(sp)
    80005730:	02010413          	addi	s0,sp,32
    80005734:	00050493          	mv	s1,a0
    80005738:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000573c:	01853503          	ld	a0,24(a0)
    80005740:	ffffd097          	auipc	ra,0xffffd
    80005744:	cf0080e7          	jalr	-784(ra) # 80002430 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005748:	0304b503          	ld	a0,48(s1)
    8000574c:	ffffd097          	auipc	ra,0xffffd
    80005750:	ce4080e7          	jalr	-796(ra) # 80002430 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005754:	0084b783          	ld	a5,8(s1)
    80005758:	0144a703          	lw	a4,20(s1)
    8000575c:	00271713          	slli	a4,a4,0x2
    80005760:	00e787b3          	add	a5,a5,a4
    80005764:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005768:	0144a783          	lw	a5,20(s1)
    8000576c:	0017879b          	addiw	a5,a5,1
    80005770:	0004a703          	lw	a4,0(s1)
    80005774:	02e7e7bb          	remw	a5,a5,a4
    80005778:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000577c:	0304b503          	ld	a0,48(s1)
    80005780:	ffffd097          	auipc	ra,0xffffd
    80005784:	cdc080e7          	jalr	-804(ra) # 8000245c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005788:	0204b503          	ld	a0,32(s1)
    8000578c:	ffffd097          	auipc	ra,0xffffd
    80005790:	cd0080e7          	jalr	-816(ra) # 8000245c <_ZN9Semaphore6signalEv>

}
    80005794:	01813083          	ld	ra,24(sp)
    80005798:	01013403          	ld	s0,16(sp)
    8000579c:	00813483          	ld	s1,8(sp)
    800057a0:	00013903          	ld	s2,0(sp)
    800057a4:	02010113          	addi	sp,sp,32
    800057a8:	00008067          	ret

00000000800057ac <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800057ac:	fe010113          	addi	sp,sp,-32
    800057b0:	00113c23          	sd	ra,24(sp)
    800057b4:	00813823          	sd	s0,16(sp)
    800057b8:	00913423          	sd	s1,8(sp)
    800057bc:	01213023          	sd	s2,0(sp)
    800057c0:	02010413          	addi	s0,sp,32
    800057c4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800057c8:	02053503          	ld	a0,32(a0)
    800057cc:	ffffd097          	auipc	ra,0xffffd
    800057d0:	c64080e7          	jalr	-924(ra) # 80002430 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800057d4:	0284b503          	ld	a0,40(s1)
    800057d8:	ffffd097          	auipc	ra,0xffffd
    800057dc:	c58080e7          	jalr	-936(ra) # 80002430 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800057e0:	0084b703          	ld	a4,8(s1)
    800057e4:	0104a783          	lw	a5,16(s1)
    800057e8:	00279693          	slli	a3,a5,0x2
    800057ec:	00d70733          	add	a4,a4,a3
    800057f0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800057f4:	0017879b          	addiw	a5,a5,1
    800057f8:	0004a703          	lw	a4,0(s1)
    800057fc:	02e7e7bb          	remw	a5,a5,a4
    80005800:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005804:	0284b503          	ld	a0,40(s1)
    80005808:	ffffd097          	auipc	ra,0xffffd
    8000580c:	c54080e7          	jalr	-940(ra) # 8000245c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005810:	0184b503          	ld	a0,24(s1)
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	c48080e7          	jalr	-952(ra) # 8000245c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000581c:	00090513          	mv	a0,s2
    80005820:	01813083          	ld	ra,24(sp)
    80005824:	01013403          	ld	s0,16(sp)
    80005828:	00813483          	ld	s1,8(sp)
    8000582c:	00013903          	ld	s2,0(sp)
    80005830:	02010113          	addi	sp,sp,32
    80005834:	00008067          	ret

0000000080005838 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005838:	fe010113          	addi	sp,sp,-32
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00813823          	sd	s0,16(sp)
    80005844:	00913423          	sd	s1,8(sp)
    80005848:	01213023          	sd	s2,0(sp)
    8000584c:	02010413          	addi	s0,sp,32
    80005850:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005854:	02853503          	ld	a0,40(a0)
    80005858:	ffffd097          	auipc	ra,0xffffd
    8000585c:	bd8080e7          	jalr	-1064(ra) # 80002430 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005860:	0304b503          	ld	a0,48(s1)
    80005864:	ffffd097          	auipc	ra,0xffffd
    80005868:	bcc080e7          	jalr	-1076(ra) # 80002430 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000586c:	0144a783          	lw	a5,20(s1)
    80005870:	0104a903          	lw	s2,16(s1)
    80005874:	0327ce63          	blt	a5,s2,800058b0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005878:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000587c:	0304b503          	ld	a0,48(s1)
    80005880:	ffffd097          	auipc	ra,0xffffd
    80005884:	bdc080e7          	jalr	-1060(ra) # 8000245c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005888:	0284b503          	ld	a0,40(s1)
    8000588c:	ffffd097          	auipc	ra,0xffffd
    80005890:	bd0080e7          	jalr	-1072(ra) # 8000245c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005894:	00090513          	mv	a0,s2
    80005898:	01813083          	ld	ra,24(sp)
    8000589c:	01013403          	ld	s0,16(sp)
    800058a0:	00813483          	ld	s1,8(sp)
    800058a4:	00013903          	ld	s2,0(sp)
    800058a8:	02010113          	addi	sp,sp,32
    800058ac:	00008067          	ret
        ret = cap - head + tail;
    800058b0:	0004a703          	lw	a4,0(s1)
    800058b4:	4127093b          	subw	s2,a4,s2
    800058b8:	00f9093b          	addw	s2,s2,a5
    800058bc:	fc1ff06f          	j	8000587c <_ZN9BufferCPP6getCntEv+0x44>

00000000800058c0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800058c0:	fe010113          	addi	sp,sp,-32
    800058c4:	00113c23          	sd	ra,24(sp)
    800058c8:	00813823          	sd	s0,16(sp)
    800058cc:	00913423          	sd	s1,8(sp)
    800058d0:	02010413          	addi	s0,sp,32
    800058d4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800058d8:	00a00513          	li	a0,10
    800058dc:	ffffd097          	auipc	ra,0xffffd
    800058e0:	bac080e7          	jalr	-1108(ra) # 80002488 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800058e4:	00004517          	auipc	a0,0x4
    800058e8:	aa450513          	addi	a0,a0,-1372 # 80009388 <CONSOLE_STATUS+0x378>
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	a0c080e7          	jalr	-1524(ra) # 800052f8 <_Z11printStringPKc>
    while (getCnt()) {
    800058f4:	00048513          	mv	a0,s1
    800058f8:	00000097          	auipc	ra,0x0
    800058fc:	f40080e7          	jalr	-192(ra) # 80005838 <_ZN9BufferCPP6getCntEv>
    80005900:	02050c63          	beqz	a0,80005938 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005904:	0084b783          	ld	a5,8(s1)
    80005908:	0104a703          	lw	a4,16(s1)
    8000590c:	00271713          	slli	a4,a4,0x2
    80005910:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005914:	0007c503          	lbu	a0,0(a5)
    80005918:	ffffd097          	auipc	ra,0xffffd
    8000591c:	b70080e7          	jalr	-1168(ra) # 80002488 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005920:	0104a783          	lw	a5,16(s1)
    80005924:	0017879b          	addiw	a5,a5,1
    80005928:	0004a703          	lw	a4,0(s1)
    8000592c:	02e7e7bb          	remw	a5,a5,a4
    80005930:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005934:	fc1ff06f          	j	800058f4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005938:	02100513          	li	a0,33
    8000593c:	ffffd097          	auipc	ra,0xffffd
    80005940:	b4c080e7          	jalr	-1204(ra) # 80002488 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005944:	00a00513          	li	a0,10
    80005948:	ffffd097          	auipc	ra,0xffffd
    8000594c:	b40080e7          	jalr	-1216(ra) # 80002488 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005950:	0084b503          	ld	a0,8(s1)
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	924080e7          	jalr	-1756(ra) # 80001278 <_Z8mem_freePv>
    delete itemAvailable;
    8000595c:	0204b503          	ld	a0,32(s1)
    80005960:	00050863          	beqz	a0,80005970 <_ZN9BufferCPPD1Ev+0xb0>
    80005964:	00053783          	ld	a5,0(a0)
    80005968:	0087b783          	ld	a5,8(a5)
    8000596c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005970:	0184b503          	ld	a0,24(s1)
    80005974:	00050863          	beqz	a0,80005984 <_ZN9BufferCPPD1Ev+0xc4>
    80005978:	00053783          	ld	a5,0(a0)
    8000597c:	0087b783          	ld	a5,8(a5)
    80005980:	000780e7          	jalr	a5
    delete mutexTail;
    80005984:	0304b503          	ld	a0,48(s1)
    80005988:	00050863          	beqz	a0,80005998 <_ZN9BufferCPPD1Ev+0xd8>
    8000598c:	00053783          	ld	a5,0(a0)
    80005990:	0087b783          	ld	a5,8(a5)
    80005994:	000780e7          	jalr	a5
    delete mutexHead;
    80005998:	0284b503          	ld	a0,40(s1)
    8000599c:	00050863          	beqz	a0,800059ac <_ZN9BufferCPPD1Ev+0xec>
    800059a0:	00053783          	ld	a5,0(a0)
    800059a4:	0087b783          	ld	a5,8(a5)
    800059a8:	000780e7          	jalr	a5
}
    800059ac:	01813083          	ld	ra,24(sp)
    800059b0:	01013403          	ld	s0,16(sp)
    800059b4:	00813483          	ld	s1,8(sp)
    800059b8:	02010113          	addi	sp,sp,32
    800059bc:	00008067          	ret

00000000800059c0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800059c0:	fe010113          	addi	sp,sp,-32
    800059c4:	00113c23          	sd	ra,24(sp)
    800059c8:	00813823          	sd	s0,16(sp)
    800059cc:	00913423          	sd	s1,8(sp)
    800059d0:	01213023          	sd	s2,0(sp)
    800059d4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800059d8:	00004517          	auipc	a0,0x4
    800059dc:	9c850513          	addi	a0,a0,-1592 # 800093a0 <CONSOLE_STATUS+0x390>
    800059e0:	00000097          	auipc	ra,0x0
    800059e4:	918080e7          	jalr	-1768(ra) # 800052f8 <_Z11printStringPKc>
    int test = getc() - '0';
    800059e8:	ffffc097          	auipc	ra,0xffffc
    800059ec:	af8080e7          	jalr	-1288(ra) # 800014e0 <_Z4getcv>
    800059f0:	00050913          	mv	s2,a0
    800059f4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800059f8:	ffffc097          	auipc	ra,0xffffc
    800059fc:	ae8080e7          	jalr	-1304(ra) # 800014e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005a00:	fcb9091b          	addiw	s2,s2,-53
    80005a04:	00100793          	li	a5,1
    80005a08:	0327f463          	bgeu	a5,s2,80005a30 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005a0c:	00700793          	li	a5,7
    80005a10:	0e97e263          	bltu	a5,s1,80005af4 <_Z8userMainv+0x134>
    80005a14:	00249493          	slli	s1,s1,0x2
    80005a18:	00004717          	auipc	a4,0x4
    80005a1c:	ba070713          	addi	a4,a4,-1120 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005a20:	00e484b3          	add	s1,s1,a4
    80005a24:	0004a783          	lw	a5,0(s1)
    80005a28:	00e787b3          	add	a5,a5,a4
    80005a2c:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005a30:	00004517          	auipc	a0,0x4
    80005a34:	99050513          	addi	a0,a0,-1648 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005a38:	00000097          	auipc	ra,0x0
    80005a3c:	8c0080e7          	jalr	-1856(ra) # 800052f8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005a40:	01813083          	ld	ra,24(sp)
    80005a44:	01013403          	ld	s0,16(sp)
    80005a48:	00813483          	ld	s1,8(sp)
    80005a4c:	00013903          	ld	s2,0(sp)
    80005a50:	02010113          	addi	sp,sp,32
    80005a54:	00008067          	ret
            Threads_C_API_test();
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	f18080e7          	jalr	-232(ra) # 80004970 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005a60:	00004517          	auipc	a0,0x4
    80005a64:	99050513          	addi	a0,a0,-1648 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005a68:	00000097          	auipc	ra,0x0
    80005a6c:	890080e7          	jalr	-1904(ra) # 800052f8 <_Z11printStringPKc>
            break;
    80005a70:	fd1ff06f          	j	80005a40 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005a74:	ffffe097          	auipc	ra,0xffffe
    80005a78:	ddc080e7          	jalr	-548(ra) # 80003850 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005a7c:	00004517          	auipc	a0,0x4
    80005a80:	9b450513          	addi	a0,a0,-1612 # 80009430 <CONSOLE_STATUS+0x420>
    80005a84:	00000097          	auipc	ra,0x0
    80005a88:	874080e7          	jalr	-1932(ra) # 800052f8 <_Z11printStringPKc>
            break;
    80005a8c:	fb5ff06f          	j	80005a40 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005a90:	ffffd097          	auipc	ra,0xffffd
    80005a94:	614080e7          	jalr	1556(ra) # 800030a4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005a98:	00004517          	auipc	a0,0x4
    80005a9c:	9d850513          	addi	a0,a0,-1576 # 80009470 <CONSOLE_STATUS+0x460>
    80005aa0:	00000097          	auipc	ra,0x0
    80005aa4:	858080e7          	jalr	-1960(ra) # 800052f8 <_Z11printStringPKc>
            break;
    80005aa8:	f99ff06f          	j	80005a40 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005aac:	fffff097          	auipc	ra,0xfffff
    80005ab0:	208080e7          	jalr	520(ra) # 80004cb4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005ab4:	00004517          	auipc	a0,0x4
    80005ab8:	a0c50513          	addi	a0,a0,-1524 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005abc:	00000097          	auipc	ra,0x0
    80005ac0:	83c080e7          	jalr	-1988(ra) # 800052f8 <_Z11printStringPKc>
            break;
    80005ac4:	f7dff06f          	j	80005a40 <_Z8userMainv+0x80>
            System_Mode_test();
    80005ac8:	00000097          	auipc	ra,0x0
    80005acc:	658080e7          	jalr	1624(ra) # 80006120 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005ad0:	00004517          	auipc	a0,0x4
    80005ad4:	a4850513          	addi	a0,a0,-1464 # 80009518 <CONSOLE_STATUS+0x508>
    80005ad8:	00000097          	auipc	ra,0x0
    80005adc:	820080e7          	jalr	-2016(ra) # 800052f8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005ae0:	00004517          	auipc	a0,0x4
    80005ae4:	a5850513          	addi	a0,a0,-1448 # 80009538 <CONSOLE_STATUS+0x528>
    80005ae8:	00000097          	auipc	ra,0x0
    80005aec:	810080e7          	jalr	-2032(ra) # 800052f8 <_Z11printStringPKc>
            break;
    80005af0:	f51ff06f          	j	80005a40 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005af4:	00004517          	auipc	a0,0x4
    80005af8:	a9c50513          	addi	a0,a0,-1380 # 80009590 <CONSOLE_STATUS+0x580>
    80005afc:	fffff097          	auipc	ra,0xfffff
    80005b00:	7fc080e7          	jalr	2044(ra) # 800052f8 <_Z11printStringPKc>
    80005b04:	f3dff06f          	j	80005a40 <_Z8userMainv+0x80>

0000000080005b08 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005b08:	fe010113          	addi	sp,sp,-32
    80005b0c:	00113c23          	sd	ra,24(sp)
    80005b10:	00813823          	sd	s0,16(sp)
    80005b14:	00913423          	sd	s1,8(sp)
    80005b18:	01213023          	sd	s2,0(sp)
    80005b1c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005b20:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005b24:	00600493          	li	s1,6
    while (--i > 0) {
    80005b28:	fff4849b          	addiw	s1,s1,-1
    80005b2c:	04905463          	blez	s1,80005b74 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005b30:	00004517          	auipc	a0,0x4
    80005b34:	aa850513          	addi	a0,a0,-1368 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005b38:	fffff097          	auipc	ra,0xfffff
    80005b3c:	7c0080e7          	jalr	1984(ra) # 800052f8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005b40:	00000613          	li	a2,0
    80005b44:	00a00593          	li	a1,10
    80005b48:	0009051b          	sext.w	a0,s2
    80005b4c:	00000097          	auipc	ra,0x0
    80005b50:	95c080e7          	jalr	-1700(ra) # 800054a8 <_Z8printIntiii>
        printString(" !\n");
    80005b54:	00004517          	auipc	a0,0x4
    80005b58:	a8c50513          	addi	a0,a0,-1396 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80005b5c:	fffff097          	auipc	ra,0xfffff
    80005b60:	79c080e7          	jalr	1948(ra) # 800052f8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005b64:	00090513          	mv	a0,s2
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	94c080e7          	jalr	-1716(ra) # 800014b4 <_Z10time_sleepm>
    while (--i > 0) {
    80005b70:	fb9ff06f          	j	80005b28 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005b74:	00a00793          	li	a5,10
    80005b78:	02f95933          	divu	s2,s2,a5
    80005b7c:	fff90913          	addi	s2,s2,-1
    80005b80:	00006797          	auipc	a5,0x6
    80005b84:	af878793          	addi	a5,a5,-1288 # 8000b678 <_ZL8finished>
    80005b88:	01278933          	add	s2,a5,s2
    80005b8c:	00100793          	li	a5,1
    80005b90:	00f90023          	sb	a5,0(s2)
}
    80005b94:	01813083          	ld	ra,24(sp)
    80005b98:	01013403          	ld	s0,16(sp)
    80005b9c:	00813483          	ld	s1,8(sp)
    80005ba0:	00013903          	ld	s2,0(sp)
    80005ba4:	02010113          	addi	sp,sp,32
    80005ba8:	00008067          	ret

0000000080005bac <_Z12testSleepingv>:

void testSleeping() {
    80005bac:	fc010113          	addi	sp,sp,-64
    80005bb0:	02113c23          	sd	ra,56(sp)
    80005bb4:	02813823          	sd	s0,48(sp)
    80005bb8:	02913423          	sd	s1,40(sp)
    80005bbc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005bc0:	00a00793          	li	a5,10
    80005bc4:	fcf43823          	sd	a5,-48(s0)
    80005bc8:	01400793          	li	a5,20
    80005bcc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005bd0:	00000493          	li	s1,0
    80005bd4:	02c0006f          	j	80005c00 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005bd8:	00349793          	slli	a5,s1,0x3
    80005bdc:	fd040613          	addi	a2,s0,-48
    80005be0:	00f60633          	add	a2,a2,a5
    80005be4:	00000597          	auipc	a1,0x0
    80005be8:	f2458593          	addi	a1,a1,-220 # 80005b08 <_ZL9sleepyRunPv>
    80005bec:	fc040513          	addi	a0,s0,-64
    80005bf0:	00f50533          	add	a0,a0,a5
    80005bf4:	ffffb097          	auipc	ra,0xffffb
    80005bf8:	6f8080e7          	jalr	1784(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005bfc:	0014849b          	addiw	s1,s1,1
    80005c00:	00100793          	li	a5,1
    80005c04:	fc97dae3          	bge	a5,s1,80005bd8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005c08:	00006797          	auipc	a5,0x6
    80005c0c:	a707c783          	lbu	a5,-1424(a5) # 8000b678 <_ZL8finished>
    80005c10:	fe078ce3          	beqz	a5,80005c08 <_Z12testSleepingv+0x5c>
    80005c14:	00006797          	auipc	a5,0x6
    80005c18:	a657c783          	lbu	a5,-1435(a5) # 8000b679 <_ZL8finished+0x1>
    80005c1c:	fe0786e3          	beqz	a5,80005c08 <_Z12testSleepingv+0x5c>
}
    80005c20:	03813083          	ld	ra,56(sp)
    80005c24:	03013403          	ld	s0,48(sp)
    80005c28:	02813483          	ld	s1,40(sp)
    80005c2c:	04010113          	addi	sp,sp,64
    80005c30:	00008067          	ret

0000000080005c34 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005c34:	fe010113          	addi	sp,sp,-32
    80005c38:	00113c23          	sd	ra,24(sp)
    80005c3c:	00813823          	sd	s0,16(sp)
    80005c40:	00913423          	sd	s1,8(sp)
    80005c44:	01213023          	sd	s2,0(sp)
    80005c48:	02010413          	addi	s0,sp,32
    80005c4c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005c50:	00100793          	li	a5,1
    80005c54:	02a7f863          	bgeu	a5,a0,80005c84 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005c58:	00a00793          	li	a5,10
    80005c5c:	02f577b3          	remu	a5,a0,a5
    80005c60:	02078e63          	beqz	a5,80005c9c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005c64:	fff48513          	addi	a0,s1,-1
    80005c68:	00000097          	auipc	ra,0x0
    80005c6c:	fcc080e7          	jalr	-52(ra) # 80005c34 <_ZL9fibonaccim>
    80005c70:	00050913          	mv	s2,a0
    80005c74:	ffe48513          	addi	a0,s1,-2
    80005c78:	00000097          	auipc	ra,0x0
    80005c7c:	fbc080e7          	jalr	-68(ra) # 80005c34 <_ZL9fibonaccim>
    80005c80:	00a90533          	add	a0,s2,a0
}
    80005c84:	01813083          	ld	ra,24(sp)
    80005c88:	01013403          	ld	s0,16(sp)
    80005c8c:	00813483          	ld	s1,8(sp)
    80005c90:	00013903          	ld	s2,0(sp)
    80005c94:	02010113          	addi	sp,sp,32
    80005c98:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005c9c:	ffffb097          	auipc	ra,0xffffb
    80005ca0:	73c080e7          	jalr	1852(ra) # 800013d8 <_Z15thread_dispatchv>
    80005ca4:	fc1ff06f          	j	80005c64 <_ZL9fibonaccim+0x30>

0000000080005ca8 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005ca8:	fe010113          	addi	sp,sp,-32
    80005cac:	00113c23          	sd	ra,24(sp)
    80005cb0:	00813823          	sd	s0,16(sp)
    80005cb4:	00913423          	sd	s1,8(sp)
    80005cb8:	01213023          	sd	s2,0(sp)
    80005cbc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005cc0:	00a00493          	li	s1,10
    80005cc4:	0400006f          	j	80005d04 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005cc8:	00003517          	auipc	a0,0x3
    80005ccc:	61850513          	addi	a0,a0,1560 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005cd0:	fffff097          	auipc	ra,0xfffff
    80005cd4:	628080e7          	jalr	1576(ra) # 800052f8 <_Z11printStringPKc>
    80005cd8:	00000613          	li	a2,0
    80005cdc:	00a00593          	li	a1,10
    80005ce0:	00048513          	mv	a0,s1
    80005ce4:	fffff097          	auipc	ra,0xfffff
    80005ce8:	7c4080e7          	jalr	1988(ra) # 800054a8 <_Z8printIntiii>
    80005cec:	00004517          	auipc	a0,0x4
    80005cf0:	82450513          	addi	a0,a0,-2012 # 80009510 <CONSOLE_STATUS+0x500>
    80005cf4:	fffff097          	auipc	ra,0xfffff
    80005cf8:	604080e7          	jalr	1540(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005cfc:	0014849b          	addiw	s1,s1,1
    80005d00:	0ff4f493          	andi	s1,s1,255
    80005d04:	00c00793          	li	a5,12
    80005d08:	fc97f0e3          	bgeu	a5,s1,80005cc8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005d0c:	00003517          	auipc	a0,0x3
    80005d10:	5dc50513          	addi	a0,a0,1500 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005d14:	fffff097          	auipc	ra,0xfffff
    80005d18:	5e4080e7          	jalr	1508(ra) # 800052f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005d1c:	00500313          	li	t1,5
    thread_dispatch();
    80005d20:	ffffb097          	auipc	ra,0xffffb
    80005d24:	6b8080e7          	jalr	1720(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005d28:	01000513          	li	a0,16
    80005d2c:	00000097          	auipc	ra,0x0
    80005d30:	f08080e7          	jalr	-248(ra) # 80005c34 <_ZL9fibonaccim>
    80005d34:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005d38:	00003517          	auipc	a0,0x3
    80005d3c:	5c050513          	addi	a0,a0,1472 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005d40:	fffff097          	auipc	ra,0xfffff
    80005d44:	5b8080e7          	jalr	1464(ra) # 800052f8 <_Z11printStringPKc>
    80005d48:	00000613          	li	a2,0
    80005d4c:	00a00593          	li	a1,10
    80005d50:	0009051b          	sext.w	a0,s2
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	754080e7          	jalr	1876(ra) # 800054a8 <_Z8printIntiii>
    80005d5c:	00003517          	auipc	a0,0x3
    80005d60:	7b450513          	addi	a0,a0,1972 # 80009510 <CONSOLE_STATUS+0x500>
    80005d64:	fffff097          	auipc	ra,0xfffff
    80005d68:	594080e7          	jalr	1428(ra) # 800052f8 <_Z11printStringPKc>
    80005d6c:	0400006f          	j	80005dac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005d70:	00003517          	auipc	a0,0x3
    80005d74:	57050513          	addi	a0,a0,1392 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005d78:	fffff097          	auipc	ra,0xfffff
    80005d7c:	580080e7          	jalr	1408(ra) # 800052f8 <_Z11printStringPKc>
    80005d80:	00000613          	li	a2,0
    80005d84:	00a00593          	li	a1,10
    80005d88:	00048513          	mv	a0,s1
    80005d8c:	fffff097          	auipc	ra,0xfffff
    80005d90:	71c080e7          	jalr	1820(ra) # 800054a8 <_Z8printIntiii>
    80005d94:	00003517          	auipc	a0,0x3
    80005d98:	77c50513          	addi	a0,a0,1916 # 80009510 <CONSOLE_STATUS+0x500>
    80005d9c:	fffff097          	auipc	ra,0xfffff
    80005da0:	55c080e7          	jalr	1372(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005da4:	0014849b          	addiw	s1,s1,1
    80005da8:	0ff4f493          	andi	s1,s1,255
    80005dac:	00f00793          	li	a5,15
    80005db0:	fc97f0e3          	bgeu	a5,s1,80005d70 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005db4:	00003517          	auipc	a0,0x3
    80005db8:	55450513          	addi	a0,a0,1364 # 80009308 <CONSOLE_STATUS+0x2f8>
    80005dbc:	fffff097          	auipc	ra,0xfffff
    80005dc0:	53c080e7          	jalr	1340(ra) # 800052f8 <_Z11printStringPKc>
    finishedD = true;
    80005dc4:	00100793          	li	a5,1
    80005dc8:	00006717          	auipc	a4,0x6
    80005dcc:	8af70923          	sb	a5,-1870(a4) # 8000b67a <_ZL9finishedD>
    thread_dispatch();
    80005dd0:	ffffb097          	auipc	ra,0xffffb
    80005dd4:	608080e7          	jalr	1544(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80005dd8:	01813083          	ld	ra,24(sp)
    80005ddc:	01013403          	ld	s0,16(sp)
    80005de0:	00813483          	ld	s1,8(sp)
    80005de4:	00013903          	ld	s2,0(sp)
    80005de8:	02010113          	addi	sp,sp,32
    80005dec:	00008067          	ret

0000000080005df0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005df0:	fe010113          	addi	sp,sp,-32
    80005df4:	00113c23          	sd	ra,24(sp)
    80005df8:	00813823          	sd	s0,16(sp)
    80005dfc:	00913423          	sd	s1,8(sp)
    80005e00:	01213023          	sd	s2,0(sp)
    80005e04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005e08:	00000493          	li	s1,0
    80005e0c:	0400006f          	j	80005e4c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005e10:	00003517          	auipc	a0,0x3
    80005e14:	4a050513          	addi	a0,a0,1184 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005e18:	fffff097          	auipc	ra,0xfffff
    80005e1c:	4e0080e7          	jalr	1248(ra) # 800052f8 <_Z11printStringPKc>
    80005e20:	00000613          	li	a2,0
    80005e24:	00a00593          	li	a1,10
    80005e28:	00048513          	mv	a0,s1
    80005e2c:	fffff097          	auipc	ra,0xfffff
    80005e30:	67c080e7          	jalr	1660(ra) # 800054a8 <_Z8printIntiii>
    80005e34:	00003517          	auipc	a0,0x3
    80005e38:	6dc50513          	addi	a0,a0,1756 # 80009510 <CONSOLE_STATUS+0x500>
    80005e3c:	fffff097          	auipc	ra,0xfffff
    80005e40:	4bc080e7          	jalr	1212(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005e44:	0014849b          	addiw	s1,s1,1
    80005e48:	0ff4f493          	andi	s1,s1,255
    80005e4c:	00200793          	li	a5,2
    80005e50:	fc97f0e3          	bgeu	a5,s1,80005e10 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005e54:	00003517          	auipc	a0,0x3
    80005e58:	46450513          	addi	a0,a0,1124 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005e5c:	fffff097          	auipc	ra,0xfffff
    80005e60:	49c080e7          	jalr	1180(ra) # 800052f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005e64:	00700313          	li	t1,7
    thread_dispatch();
    80005e68:	ffffb097          	auipc	ra,0xffffb
    80005e6c:	570080e7          	jalr	1392(ra) # 800013d8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005e70:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005e74:	00003517          	auipc	a0,0x3
    80005e78:	45450513          	addi	a0,a0,1108 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005e7c:	fffff097          	auipc	ra,0xfffff
    80005e80:	47c080e7          	jalr	1148(ra) # 800052f8 <_Z11printStringPKc>
    80005e84:	00000613          	li	a2,0
    80005e88:	00a00593          	li	a1,10
    80005e8c:	0009051b          	sext.w	a0,s2
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	618080e7          	jalr	1560(ra) # 800054a8 <_Z8printIntiii>
    80005e98:	00003517          	auipc	a0,0x3
    80005e9c:	67850513          	addi	a0,a0,1656 # 80009510 <CONSOLE_STATUS+0x500>
    80005ea0:	fffff097          	auipc	ra,0xfffff
    80005ea4:	458080e7          	jalr	1112(ra) # 800052f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005ea8:	00c00513          	li	a0,12
    80005eac:	00000097          	auipc	ra,0x0
    80005eb0:	d88080e7          	jalr	-632(ra) # 80005c34 <_ZL9fibonaccim>
    80005eb4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005eb8:	00003517          	auipc	a0,0x3
    80005ebc:	41850513          	addi	a0,a0,1048 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80005ec0:	fffff097          	auipc	ra,0xfffff
    80005ec4:	438080e7          	jalr	1080(ra) # 800052f8 <_Z11printStringPKc>
    80005ec8:	00000613          	li	a2,0
    80005ecc:	00a00593          	li	a1,10
    80005ed0:	0009051b          	sext.w	a0,s2
    80005ed4:	fffff097          	auipc	ra,0xfffff
    80005ed8:	5d4080e7          	jalr	1492(ra) # 800054a8 <_Z8printIntiii>
    80005edc:	00003517          	auipc	a0,0x3
    80005ee0:	63450513          	addi	a0,a0,1588 # 80009510 <CONSOLE_STATUS+0x500>
    80005ee4:	fffff097          	auipc	ra,0xfffff
    80005ee8:	414080e7          	jalr	1044(ra) # 800052f8 <_Z11printStringPKc>
    80005eec:	0400006f          	j	80005f2c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005ef0:	00003517          	auipc	a0,0x3
    80005ef4:	3c050513          	addi	a0,a0,960 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005ef8:	fffff097          	auipc	ra,0xfffff
    80005efc:	400080e7          	jalr	1024(ra) # 800052f8 <_Z11printStringPKc>
    80005f00:	00000613          	li	a2,0
    80005f04:	00a00593          	li	a1,10
    80005f08:	00048513          	mv	a0,s1
    80005f0c:	fffff097          	auipc	ra,0xfffff
    80005f10:	59c080e7          	jalr	1436(ra) # 800054a8 <_Z8printIntiii>
    80005f14:	00003517          	auipc	a0,0x3
    80005f18:	5fc50513          	addi	a0,a0,1532 # 80009510 <CONSOLE_STATUS+0x500>
    80005f1c:	fffff097          	auipc	ra,0xfffff
    80005f20:	3dc080e7          	jalr	988(ra) # 800052f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005f24:	0014849b          	addiw	s1,s1,1
    80005f28:	0ff4f493          	andi	s1,s1,255
    80005f2c:	00500793          	li	a5,5
    80005f30:	fc97f0e3          	bgeu	a5,s1,80005ef0 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005f34:	00003517          	auipc	a0,0x3
    80005f38:	44450513          	addi	a0,a0,1092 # 80009378 <CONSOLE_STATUS+0x368>
    80005f3c:	fffff097          	auipc	ra,0xfffff
    80005f40:	3bc080e7          	jalr	956(ra) # 800052f8 <_Z11printStringPKc>
    finishedC = true;
    80005f44:	00100793          	li	a5,1
    80005f48:	00005717          	auipc	a4,0x5
    80005f4c:	72f709a3          	sb	a5,1843(a4) # 8000b67b <_ZL9finishedC>
    thread_dispatch();
    80005f50:	ffffb097          	auipc	ra,0xffffb
    80005f54:	488080e7          	jalr	1160(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80005f58:	01813083          	ld	ra,24(sp)
    80005f5c:	01013403          	ld	s0,16(sp)
    80005f60:	00813483          	ld	s1,8(sp)
    80005f64:	00013903          	ld	s2,0(sp)
    80005f68:	02010113          	addi	sp,sp,32
    80005f6c:	00008067          	ret

0000000080005f70 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005f70:	fe010113          	addi	sp,sp,-32
    80005f74:	00113c23          	sd	ra,24(sp)
    80005f78:	00813823          	sd	s0,16(sp)
    80005f7c:	00913423          	sd	s1,8(sp)
    80005f80:	01213023          	sd	s2,0(sp)
    80005f84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005f88:	00000913          	li	s2,0
    80005f8c:	0400006f          	j	80005fcc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005f90:	ffffb097          	auipc	ra,0xffffb
    80005f94:	448080e7          	jalr	1096(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f98:	00148493          	addi	s1,s1,1
    80005f9c:	000027b7          	lui	a5,0x2
    80005fa0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fa4:	0097ee63          	bltu	a5,s1,80005fc0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fa8:	00000713          	li	a4,0
    80005fac:	000077b7          	lui	a5,0x7
    80005fb0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fb4:	fce7eee3          	bltu	a5,a4,80005f90 <_ZL11workerBodyBPv+0x20>
    80005fb8:	00170713          	addi	a4,a4,1
    80005fbc:	ff1ff06f          	j	80005fac <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005fc0:	00a00793          	li	a5,10
    80005fc4:	04f90663          	beq	s2,a5,80006010 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005fc8:	00190913          	addi	s2,s2,1
    80005fcc:	00f00793          	li	a5,15
    80005fd0:	0527e463          	bltu	a5,s2,80006018 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	07c50513          	addi	a0,a0,124 # 80009050 <CONSOLE_STATUS+0x40>
    80005fdc:	fffff097          	auipc	ra,0xfffff
    80005fe0:	31c080e7          	jalr	796(ra) # 800052f8 <_Z11printStringPKc>
    80005fe4:	00000613          	li	a2,0
    80005fe8:	00a00593          	li	a1,10
    80005fec:	0009051b          	sext.w	a0,s2
    80005ff0:	fffff097          	auipc	ra,0xfffff
    80005ff4:	4b8080e7          	jalr	1208(ra) # 800054a8 <_Z8printIntiii>
    80005ff8:	00003517          	auipc	a0,0x3
    80005ffc:	51850513          	addi	a0,a0,1304 # 80009510 <CONSOLE_STATUS+0x500>
    80006000:	fffff097          	auipc	ra,0xfffff
    80006004:	2f8080e7          	jalr	760(ra) # 800052f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006008:	00000493          	li	s1,0
    8000600c:	f91ff06f          	j	80005f9c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006010:	14102ff3          	csrr	t6,sepc
    80006014:	fb5ff06f          	j	80005fc8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006018:	00003517          	auipc	a0,0x3
    8000601c:	28850513          	addi	a0,a0,648 # 800092a0 <CONSOLE_STATUS+0x290>
    80006020:	fffff097          	auipc	ra,0xfffff
    80006024:	2d8080e7          	jalr	728(ra) # 800052f8 <_Z11printStringPKc>
    finishedB = true;
    80006028:	00100793          	li	a5,1
    8000602c:	00005717          	auipc	a4,0x5
    80006030:	64f70823          	sb	a5,1616(a4) # 8000b67c <_ZL9finishedB>
    thread_dispatch();
    80006034:	ffffb097          	auipc	ra,0xffffb
    80006038:	3a4080e7          	jalr	932(ra) # 800013d8 <_Z15thread_dispatchv>
}
    8000603c:	01813083          	ld	ra,24(sp)
    80006040:	01013403          	ld	s0,16(sp)
    80006044:	00813483          	ld	s1,8(sp)
    80006048:	00013903          	ld	s2,0(sp)
    8000604c:	02010113          	addi	sp,sp,32
    80006050:	00008067          	ret

0000000080006054 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006054:	fe010113          	addi	sp,sp,-32
    80006058:	00113c23          	sd	ra,24(sp)
    8000605c:	00813823          	sd	s0,16(sp)
    80006060:	00913423          	sd	s1,8(sp)
    80006064:	01213023          	sd	s2,0(sp)
    80006068:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000606c:	00000913          	li	s2,0
    80006070:	0380006f          	j	800060a8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006074:	ffffb097          	auipc	ra,0xffffb
    80006078:	364080e7          	jalr	868(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000607c:	00148493          	addi	s1,s1,1
    80006080:	000027b7          	lui	a5,0x2
    80006084:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006088:	0097ee63          	bltu	a5,s1,800060a4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000608c:	00000713          	li	a4,0
    80006090:	000077b7          	lui	a5,0x7
    80006094:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006098:	fce7eee3          	bltu	a5,a4,80006074 <_ZL11workerBodyAPv+0x20>
    8000609c:	00170713          	addi	a4,a4,1
    800060a0:	ff1ff06f          	j	80006090 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800060a4:	00190913          	addi	s2,s2,1
    800060a8:	00900793          	li	a5,9
    800060ac:	0527e063          	bltu	a5,s2,800060ec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800060b0:	00003517          	auipc	a0,0x3
    800060b4:	f7050513          	addi	a0,a0,-144 # 80009020 <CONSOLE_STATUS+0x10>
    800060b8:	fffff097          	auipc	ra,0xfffff
    800060bc:	240080e7          	jalr	576(ra) # 800052f8 <_Z11printStringPKc>
    800060c0:	00000613          	li	a2,0
    800060c4:	00a00593          	li	a1,10
    800060c8:	0009051b          	sext.w	a0,s2
    800060cc:	fffff097          	auipc	ra,0xfffff
    800060d0:	3dc080e7          	jalr	988(ra) # 800054a8 <_Z8printIntiii>
    800060d4:	00003517          	auipc	a0,0x3
    800060d8:	43c50513          	addi	a0,a0,1084 # 80009510 <CONSOLE_STATUS+0x500>
    800060dc:	fffff097          	auipc	ra,0xfffff
    800060e0:	21c080e7          	jalr	540(ra) # 800052f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800060e4:	00000493          	li	s1,0
    800060e8:	f99ff06f          	j	80006080 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800060ec:	00003517          	auipc	a0,0x3
    800060f0:	1a450513          	addi	a0,a0,420 # 80009290 <CONSOLE_STATUS+0x280>
    800060f4:	fffff097          	auipc	ra,0xfffff
    800060f8:	204080e7          	jalr	516(ra) # 800052f8 <_Z11printStringPKc>
    finishedA = true;
    800060fc:	00100793          	li	a5,1
    80006100:	00005717          	auipc	a4,0x5
    80006104:	56f70ea3          	sb	a5,1405(a4) # 8000b67d <_ZL9finishedA>
}
    80006108:	01813083          	ld	ra,24(sp)
    8000610c:	01013403          	ld	s0,16(sp)
    80006110:	00813483          	ld	s1,8(sp)
    80006114:	00013903          	ld	s2,0(sp)
    80006118:	02010113          	addi	sp,sp,32
    8000611c:	00008067          	ret

0000000080006120 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006120:	fd010113          	addi	sp,sp,-48
    80006124:	02113423          	sd	ra,40(sp)
    80006128:	02813023          	sd	s0,32(sp)
    8000612c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006130:	00000613          	li	a2,0
    80006134:	00000597          	auipc	a1,0x0
    80006138:	f2058593          	addi	a1,a1,-224 # 80006054 <_ZL11workerBodyAPv>
    8000613c:	fd040513          	addi	a0,s0,-48
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	1ac080e7          	jalr	428(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006148:	00003517          	auipc	a0,0x3
    8000614c:	1d050513          	addi	a0,a0,464 # 80009318 <CONSOLE_STATUS+0x308>
    80006150:	fffff097          	auipc	ra,0xfffff
    80006154:	1a8080e7          	jalr	424(ra) # 800052f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006158:	00000613          	li	a2,0
    8000615c:	00000597          	auipc	a1,0x0
    80006160:	e1458593          	addi	a1,a1,-492 # 80005f70 <_ZL11workerBodyBPv>
    80006164:	fd840513          	addi	a0,s0,-40
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	184080e7          	jalr	388(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006170:	00003517          	auipc	a0,0x3
    80006174:	1c050513          	addi	a0,a0,448 # 80009330 <CONSOLE_STATUS+0x320>
    80006178:	fffff097          	auipc	ra,0xfffff
    8000617c:	180080e7          	jalr	384(ra) # 800052f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006180:	00000613          	li	a2,0
    80006184:	00000597          	auipc	a1,0x0
    80006188:	c6c58593          	addi	a1,a1,-916 # 80005df0 <_ZL11workerBodyCPv>
    8000618c:	fe040513          	addi	a0,s0,-32
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	15c080e7          	jalr	348(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006198:	00003517          	auipc	a0,0x3
    8000619c:	1b050513          	addi	a0,a0,432 # 80009348 <CONSOLE_STATUS+0x338>
    800061a0:	fffff097          	auipc	ra,0xfffff
    800061a4:	158080e7          	jalr	344(ra) # 800052f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800061a8:	00000613          	li	a2,0
    800061ac:	00000597          	auipc	a1,0x0
    800061b0:	afc58593          	addi	a1,a1,-1284 # 80005ca8 <_ZL11workerBodyDPv>
    800061b4:	fe840513          	addi	a0,s0,-24
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	134080e7          	jalr	308(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	1a050513          	addi	a0,a0,416 # 80009360 <CONSOLE_STATUS+0x350>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	130080e7          	jalr	304(ra) # 800052f8 <_Z11printStringPKc>
    800061d0:	00c0006f          	j	800061dc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	204080e7          	jalr	516(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800061dc:	00005797          	auipc	a5,0x5
    800061e0:	4a17c783          	lbu	a5,1185(a5) # 8000b67d <_ZL9finishedA>
    800061e4:	fe0788e3          	beqz	a5,800061d4 <_Z16System_Mode_testv+0xb4>
    800061e8:	00005797          	auipc	a5,0x5
    800061ec:	4947c783          	lbu	a5,1172(a5) # 8000b67c <_ZL9finishedB>
    800061f0:	fe0782e3          	beqz	a5,800061d4 <_Z16System_Mode_testv+0xb4>
    800061f4:	00005797          	auipc	a5,0x5
    800061f8:	4877c783          	lbu	a5,1159(a5) # 8000b67b <_ZL9finishedC>
    800061fc:	fc078ce3          	beqz	a5,800061d4 <_Z16System_Mode_testv+0xb4>
    80006200:	00005797          	auipc	a5,0x5
    80006204:	47a7c783          	lbu	a5,1146(a5) # 8000b67a <_ZL9finishedD>
    80006208:	fc0786e3          	beqz	a5,800061d4 <_Z16System_Mode_testv+0xb4>
    }

}
    8000620c:	02813083          	ld	ra,40(sp)
    80006210:	02013403          	ld	s0,32(sp)
    80006214:	03010113          	addi	sp,sp,48
    80006218:	00008067          	ret

000000008000621c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000621c:	fe010113          	addi	sp,sp,-32
    80006220:	00113c23          	sd	ra,24(sp)
    80006224:	00813823          	sd	s0,16(sp)
    80006228:	00913423          	sd	s1,8(sp)
    8000622c:	01213023          	sd	s2,0(sp)
    80006230:	02010413          	addi	s0,sp,32
    80006234:	00050493          	mv	s1,a0
    80006238:	00058913          	mv	s2,a1
    8000623c:	0015879b          	addiw	a5,a1,1
    80006240:	0007851b          	sext.w	a0,a5
    80006244:	00f4a023          	sw	a5,0(s1)
    80006248:	0004a823          	sw	zero,16(s1)
    8000624c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006250:	00251513          	slli	a0,a0,0x2
    80006254:	ffffb097          	auipc	ra,0xffffb
    80006258:	fe8080e7          	jalr	-24(ra) # 8000123c <_Z9mem_allocm>
    8000625c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006260:	00000593          	li	a1,0
    80006264:	02048513          	addi	a0,s1,32
    80006268:	ffffb097          	auipc	ra,0xffffb
    8000626c:	190080e7          	jalr	400(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&spaceAvailable, _cap);
    80006270:	00090593          	mv	a1,s2
    80006274:	01848513          	addi	a0,s1,24
    80006278:	ffffb097          	auipc	ra,0xffffb
    8000627c:	180080e7          	jalr	384(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexHead, 1);
    80006280:	00100593          	li	a1,1
    80006284:	02848513          	addi	a0,s1,40
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	170080e7          	jalr	368(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexTail, 1);
    80006290:	00100593          	li	a1,1
    80006294:	03048513          	addi	a0,s1,48
    80006298:	ffffb097          	auipc	ra,0xffffb
    8000629c:	160080e7          	jalr	352(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    800062a0:	01813083          	ld	ra,24(sp)
    800062a4:	01013403          	ld	s0,16(sp)
    800062a8:	00813483          	ld	s1,8(sp)
    800062ac:	00013903          	ld	s2,0(sp)
    800062b0:	02010113          	addi	sp,sp,32
    800062b4:	00008067          	ret

00000000800062b8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800062b8:	fe010113          	addi	sp,sp,-32
    800062bc:	00113c23          	sd	ra,24(sp)
    800062c0:	00813823          	sd	s0,16(sp)
    800062c4:	00913423          	sd	s1,8(sp)
    800062c8:	01213023          	sd	s2,0(sp)
    800062cc:	02010413          	addi	s0,sp,32
    800062d0:	00050493          	mv	s1,a0
    800062d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800062d8:	01853503          	ld	a0,24(a0)
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	180080e7          	jalr	384(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexTail);
    800062e4:	0304b503          	ld	a0,48(s1)
    800062e8:	ffffb097          	auipc	ra,0xffffb
    800062ec:	174080e7          	jalr	372(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    buffer[tail] = val;
    800062f0:	0084b783          	ld	a5,8(s1)
    800062f4:	0144a703          	lw	a4,20(s1)
    800062f8:	00271713          	slli	a4,a4,0x2
    800062fc:	00e787b3          	add	a5,a5,a4
    80006300:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006304:	0144a783          	lw	a5,20(s1)
    80006308:	0017879b          	addiw	a5,a5,1
    8000630c:	0004a703          	lw	a4,0(s1)
    80006310:	02e7e7bb          	remw	a5,a5,a4
    80006314:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006318:	0304b503          	ld	a0,48(s1)
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	16c080e7          	jalr	364(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(itemAvailable);
    80006324:	0204b503          	ld	a0,32(s1)
    80006328:	ffffb097          	auipc	ra,0xffffb
    8000632c:	160080e7          	jalr	352(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

}
    80006330:	01813083          	ld	ra,24(sp)
    80006334:	01013403          	ld	s0,16(sp)
    80006338:	00813483          	ld	s1,8(sp)
    8000633c:	00013903          	ld	s2,0(sp)
    80006340:	02010113          	addi	sp,sp,32
    80006344:	00008067          	ret

0000000080006348 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006348:	fe010113          	addi	sp,sp,-32
    8000634c:	00113c23          	sd	ra,24(sp)
    80006350:	00813823          	sd	s0,16(sp)
    80006354:	00913423          	sd	s1,8(sp)
    80006358:	01213023          	sd	s2,0(sp)
    8000635c:	02010413          	addi	s0,sp,32
    80006360:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006364:	02053503          	ld	a0,32(a0)
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	0f4080e7          	jalr	244(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexHead);
    80006370:	0284b503          	ld	a0,40(s1)
    80006374:	ffffb097          	auipc	ra,0xffffb
    80006378:	0e8080e7          	jalr	232(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    int ret = buffer[head];
    8000637c:	0084b703          	ld	a4,8(s1)
    80006380:	0104a783          	lw	a5,16(s1)
    80006384:	00279693          	slli	a3,a5,0x2
    80006388:	00d70733          	add	a4,a4,a3
    8000638c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006390:	0017879b          	addiw	a5,a5,1
    80006394:	0004a703          	lw	a4,0(s1)
    80006398:	02e7e7bb          	remw	a5,a5,a4
    8000639c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800063a0:	0284b503          	ld	a0,40(s1)
    800063a4:	ffffb097          	auipc	ra,0xffffb
    800063a8:	0e4080e7          	jalr	228(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(spaceAvailable);
    800063ac:	0184b503          	ld	a0,24(s1)
    800063b0:	ffffb097          	auipc	ra,0xffffb
    800063b4:	0d8080e7          	jalr	216(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    800063b8:	00090513          	mv	a0,s2
    800063bc:	01813083          	ld	ra,24(sp)
    800063c0:	01013403          	ld	s0,16(sp)
    800063c4:	00813483          	ld	s1,8(sp)
    800063c8:	00013903          	ld	s2,0(sp)
    800063cc:	02010113          	addi	sp,sp,32
    800063d0:	00008067          	ret

00000000800063d4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800063d4:	fe010113          	addi	sp,sp,-32
    800063d8:	00113c23          	sd	ra,24(sp)
    800063dc:	00813823          	sd	s0,16(sp)
    800063e0:	00913423          	sd	s1,8(sp)
    800063e4:	01213023          	sd	s2,0(sp)
    800063e8:	02010413          	addi	s0,sp,32
    800063ec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800063f0:	02853503          	ld	a0,40(a0)
    800063f4:	ffffb097          	auipc	ra,0xffffb
    800063f8:	068080e7          	jalr	104(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    sem_wait(mutexTail);
    800063fc:	0304b503          	ld	a0,48(s1)
    80006400:	ffffb097          	auipc	ra,0xffffb
    80006404:	05c080e7          	jalr	92(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    if (tail >= head) {
    80006408:	0144a783          	lw	a5,20(s1)
    8000640c:	0104a903          	lw	s2,16(s1)
    80006410:	0327ce63          	blt	a5,s2,8000644c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006414:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006418:	0304b503          	ld	a0,48(s1)
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	06c080e7          	jalr	108(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
    sem_signal(mutexHead);
    80006424:	0284b503          	ld	a0,40(s1)
    80006428:	ffffb097          	auipc	ra,0xffffb
    8000642c:	060080e7          	jalr	96(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    80006430:	00090513          	mv	a0,s2
    80006434:	01813083          	ld	ra,24(sp)
    80006438:	01013403          	ld	s0,16(sp)
    8000643c:	00813483          	ld	s1,8(sp)
    80006440:	00013903          	ld	s2,0(sp)
    80006444:	02010113          	addi	sp,sp,32
    80006448:	00008067          	ret
        ret = cap - head + tail;
    8000644c:	0004a703          	lw	a4,0(s1)
    80006450:	4127093b          	subw	s2,a4,s2
    80006454:	00f9093b          	addw	s2,s2,a5
    80006458:	fc1ff06f          	j	80006418 <_ZN6Buffer6getCntEv+0x44>

000000008000645c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000645c:	fe010113          	addi	sp,sp,-32
    80006460:	00113c23          	sd	ra,24(sp)
    80006464:	00813823          	sd	s0,16(sp)
    80006468:	00913423          	sd	s1,8(sp)
    8000646c:	02010413          	addi	s0,sp,32
    80006470:	00050493          	mv	s1,a0
    putc('\n');
    80006474:	00a00513          	li	a0,10
    80006478:	ffffb097          	auipc	ra,0xffffb
    8000647c:	090080e7          	jalr	144(ra) # 80001508 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006480:	00003517          	auipc	a0,0x3
    80006484:	f0850513          	addi	a0,a0,-248 # 80009388 <CONSOLE_STATUS+0x378>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	e70080e7          	jalr	-400(ra) # 800052f8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006490:	00048513          	mv	a0,s1
    80006494:	00000097          	auipc	ra,0x0
    80006498:	f40080e7          	jalr	-192(ra) # 800063d4 <_ZN6Buffer6getCntEv>
    8000649c:	02a05c63          	blez	a0,800064d4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800064a0:	0084b783          	ld	a5,8(s1)
    800064a4:	0104a703          	lw	a4,16(s1)
    800064a8:	00271713          	slli	a4,a4,0x2
    800064ac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800064b0:	0007c503          	lbu	a0,0(a5)
    800064b4:	ffffb097          	auipc	ra,0xffffb
    800064b8:	054080e7          	jalr	84(ra) # 80001508 <_Z4putcc>
        head = (head + 1) % cap;
    800064bc:	0104a783          	lw	a5,16(s1)
    800064c0:	0017879b          	addiw	a5,a5,1
    800064c4:	0004a703          	lw	a4,0(s1)
    800064c8:	02e7e7bb          	remw	a5,a5,a4
    800064cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800064d0:	fc1ff06f          	j	80006490 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800064d4:	02100513          	li	a0,33
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	030080e7          	jalr	48(ra) # 80001508 <_Z4putcc>
    putc('\n');
    800064e0:	00a00513          	li	a0,10
    800064e4:	ffffb097          	auipc	ra,0xffffb
    800064e8:	024080e7          	jalr	36(ra) # 80001508 <_Z4putcc>
    mem_free(buffer);
    800064ec:	0084b503          	ld	a0,8(s1)
    800064f0:	ffffb097          	auipc	ra,0xffffb
    800064f4:	d88080e7          	jalr	-632(ra) # 80001278 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800064f8:	0204b503          	ld	a0,32(s1)
    800064fc:	ffffb097          	auipc	ra,0xffffb
    80006500:	f34080e7          	jalr	-204(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(spaceAvailable);
    80006504:	0184b503          	ld	a0,24(s1)
    80006508:	ffffb097          	auipc	ra,0xffffb
    8000650c:	f28080e7          	jalr	-216(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexTail);
    80006510:	0304b503          	ld	a0,48(s1)
    80006514:	ffffb097          	auipc	ra,0xffffb
    80006518:	f1c080e7          	jalr	-228(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexHead);
    8000651c:	0284b503          	ld	a0,40(s1)
    80006520:	ffffb097          	auipc	ra,0xffffb
    80006524:	f10080e7          	jalr	-240(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
}
    80006528:	01813083          	ld	ra,24(sp)
    8000652c:	01013403          	ld	s0,16(sp)
    80006530:	00813483          	ld	s1,8(sp)
    80006534:	02010113          	addi	sp,sp,32
    80006538:	00008067          	ret

000000008000653c <start>:
    8000653c:	ff010113          	addi	sp,sp,-16
    80006540:	00813423          	sd	s0,8(sp)
    80006544:	01010413          	addi	s0,sp,16
    80006548:	300027f3          	csrr	a5,mstatus
    8000654c:	ffffe737          	lui	a4,0xffffe
    80006550:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1f1f>
    80006554:	00e7f7b3          	and	a5,a5,a4
    80006558:	00001737          	lui	a4,0x1
    8000655c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006560:	00e7e7b3          	or	a5,a5,a4
    80006564:	30079073          	csrw	mstatus,a5
    80006568:	00000797          	auipc	a5,0x0
    8000656c:	16078793          	addi	a5,a5,352 # 800066c8 <system_main>
    80006570:	34179073          	csrw	mepc,a5
    80006574:	00000793          	li	a5,0
    80006578:	18079073          	csrw	satp,a5
    8000657c:	000107b7          	lui	a5,0x10
    80006580:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006584:	30279073          	csrw	medeleg,a5
    80006588:	30379073          	csrw	mideleg,a5
    8000658c:	104027f3          	csrr	a5,sie
    80006590:	2227e793          	ori	a5,a5,546
    80006594:	10479073          	csrw	sie,a5
    80006598:	fff00793          	li	a5,-1
    8000659c:	00a7d793          	srli	a5,a5,0xa
    800065a0:	3b079073          	csrw	pmpaddr0,a5
    800065a4:	00f00793          	li	a5,15
    800065a8:	3a079073          	csrw	pmpcfg0,a5
    800065ac:	f14027f3          	csrr	a5,mhartid
    800065b0:	0200c737          	lui	a4,0x200c
    800065b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065b8:	0007869b          	sext.w	a3,a5
    800065bc:	00269713          	slli	a4,a3,0x2
    800065c0:	000f4637          	lui	a2,0xf4
    800065c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065c8:	00d70733          	add	a4,a4,a3
    800065cc:	0037979b          	slliw	a5,a5,0x3
    800065d0:	020046b7          	lui	a3,0x2004
    800065d4:	00d787b3          	add	a5,a5,a3
    800065d8:	00c585b3          	add	a1,a1,a2
    800065dc:	00371693          	slli	a3,a4,0x3
    800065e0:	00005717          	auipc	a4,0x5
    800065e4:	0a070713          	addi	a4,a4,160 # 8000b680 <timer_scratch>
    800065e8:	00b7b023          	sd	a1,0(a5)
    800065ec:	00d70733          	add	a4,a4,a3
    800065f0:	00f73c23          	sd	a5,24(a4)
    800065f4:	02c73023          	sd	a2,32(a4)
    800065f8:	34071073          	csrw	mscratch,a4
    800065fc:	00000797          	auipc	a5,0x0
    80006600:	6e478793          	addi	a5,a5,1764 # 80006ce0 <timervec>
    80006604:	30579073          	csrw	mtvec,a5
    80006608:	300027f3          	csrr	a5,mstatus
    8000660c:	0087e793          	ori	a5,a5,8
    80006610:	30079073          	csrw	mstatus,a5
    80006614:	304027f3          	csrr	a5,mie
    80006618:	0807e793          	ori	a5,a5,128
    8000661c:	30479073          	csrw	mie,a5
    80006620:	f14027f3          	csrr	a5,mhartid
    80006624:	0007879b          	sext.w	a5,a5
    80006628:	00078213          	mv	tp,a5
    8000662c:	30200073          	mret
    80006630:	00813403          	ld	s0,8(sp)
    80006634:	01010113          	addi	sp,sp,16
    80006638:	00008067          	ret

000000008000663c <timerinit>:
    8000663c:	ff010113          	addi	sp,sp,-16
    80006640:	00813423          	sd	s0,8(sp)
    80006644:	01010413          	addi	s0,sp,16
    80006648:	f14027f3          	csrr	a5,mhartid
    8000664c:	0200c737          	lui	a4,0x200c
    80006650:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006654:	0007869b          	sext.w	a3,a5
    80006658:	00269713          	slli	a4,a3,0x2
    8000665c:	000f4637          	lui	a2,0xf4
    80006660:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006664:	00d70733          	add	a4,a4,a3
    80006668:	0037979b          	slliw	a5,a5,0x3
    8000666c:	020046b7          	lui	a3,0x2004
    80006670:	00d787b3          	add	a5,a5,a3
    80006674:	00c585b3          	add	a1,a1,a2
    80006678:	00371693          	slli	a3,a4,0x3
    8000667c:	00005717          	auipc	a4,0x5
    80006680:	00470713          	addi	a4,a4,4 # 8000b680 <timer_scratch>
    80006684:	00b7b023          	sd	a1,0(a5)
    80006688:	00d70733          	add	a4,a4,a3
    8000668c:	00f73c23          	sd	a5,24(a4)
    80006690:	02c73023          	sd	a2,32(a4)
    80006694:	34071073          	csrw	mscratch,a4
    80006698:	00000797          	auipc	a5,0x0
    8000669c:	64878793          	addi	a5,a5,1608 # 80006ce0 <timervec>
    800066a0:	30579073          	csrw	mtvec,a5
    800066a4:	300027f3          	csrr	a5,mstatus
    800066a8:	0087e793          	ori	a5,a5,8
    800066ac:	30079073          	csrw	mstatus,a5
    800066b0:	304027f3          	csrr	a5,mie
    800066b4:	0807e793          	ori	a5,a5,128
    800066b8:	30479073          	csrw	mie,a5
    800066bc:	00813403          	ld	s0,8(sp)
    800066c0:	01010113          	addi	sp,sp,16
    800066c4:	00008067          	ret

00000000800066c8 <system_main>:
    800066c8:	fe010113          	addi	sp,sp,-32
    800066cc:	00813823          	sd	s0,16(sp)
    800066d0:	00913423          	sd	s1,8(sp)
    800066d4:	00113c23          	sd	ra,24(sp)
    800066d8:	02010413          	addi	s0,sp,32
    800066dc:	00000097          	auipc	ra,0x0
    800066e0:	0c4080e7          	jalr	196(ra) # 800067a0 <cpuid>
    800066e4:	00005497          	auipc	s1,0x5
    800066e8:	edc48493          	addi	s1,s1,-292 # 8000b5c0 <started>
    800066ec:	02050263          	beqz	a0,80006710 <system_main+0x48>
    800066f0:	0004a783          	lw	a5,0(s1)
    800066f4:	0007879b          	sext.w	a5,a5
    800066f8:	fe078ce3          	beqz	a5,800066f0 <system_main+0x28>
    800066fc:	0ff0000f          	fence
    80006700:	00003517          	auipc	a0,0x3
    80006704:	f1850513          	addi	a0,a0,-232 # 80009618 <CONSOLE_STATUS+0x608>
    80006708:	00001097          	auipc	ra,0x1
    8000670c:	a74080e7          	jalr	-1420(ra) # 8000717c <panic>
    80006710:	00001097          	auipc	ra,0x1
    80006714:	9c8080e7          	jalr	-1592(ra) # 800070d8 <consoleinit>
    80006718:	00001097          	auipc	ra,0x1
    8000671c:	154080e7          	jalr	340(ra) # 8000786c <printfinit>
    80006720:	00003517          	auipc	a0,0x3
    80006724:	df050513          	addi	a0,a0,-528 # 80009510 <CONSOLE_STATUS+0x500>
    80006728:	00001097          	auipc	ra,0x1
    8000672c:	ab0080e7          	jalr	-1360(ra) # 800071d8 <__printf>
    80006730:	00003517          	auipc	a0,0x3
    80006734:	eb850513          	addi	a0,a0,-328 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006738:	00001097          	auipc	ra,0x1
    8000673c:	aa0080e7          	jalr	-1376(ra) # 800071d8 <__printf>
    80006740:	00003517          	auipc	a0,0x3
    80006744:	dd050513          	addi	a0,a0,-560 # 80009510 <CONSOLE_STATUS+0x500>
    80006748:	00001097          	auipc	ra,0x1
    8000674c:	a90080e7          	jalr	-1392(ra) # 800071d8 <__printf>
    80006750:	00001097          	auipc	ra,0x1
    80006754:	4a8080e7          	jalr	1192(ra) # 80007bf8 <kinit>
    80006758:	00000097          	auipc	ra,0x0
    8000675c:	148080e7          	jalr	328(ra) # 800068a0 <trapinit>
    80006760:	00000097          	auipc	ra,0x0
    80006764:	16c080e7          	jalr	364(ra) # 800068cc <trapinithart>
    80006768:	00000097          	auipc	ra,0x0
    8000676c:	5b8080e7          	jalr	1464(ra) # 80006d20 <plicinit>
    80006770:	00000097          	auipc	ra,0x0
    80006774:	5d8080e7          	jalr	1496(ra) # 80006d48 <plicinithart>
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	078080e7          	jalr	120(ra) # 800067f0 <userinit>
    80006780:	0ff0000f          	fence
    80006784:	00100793          	li	a5,1
    80006788:	00003517          	auipc	a0,0x3
    8000678c:	e7850513          	addi	a0,a0,-392 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006790:	00f4a023          	sw	a5,0(s1)
    80006794:	00001097          	auipc	ra,0x1
    80006798:	a44080e7          	jalr	-1468(ra) # 800071d8 <__printf>
    8000679c:	0000006f          	j	8000679c <system_main+0xd4>

00000000800067a0 <cpuid>:
    800067a0:	ff010113          	addi	sp,sp,-16
    800067a4:	00813423          	sd	s0,8(sp)
    800067a8:	01010413          	addi	s0,sp,16
    800067ac:	00020513          	mv	a0,tp
    800067b0:	00813403          	ld	s0,8(sp)
    800067b4:	0005051b          	sext.w	a0,a0
    800067b8:	01010113          	addi	sp,sp,16
    800067bc:	00008067          	ret

00000000800067c0 <mycpu>:
    800067c0:	ff010113          	addi	sp,sp,-16
    800067c4:	00813423          	sd	s0,8(sp)
    800067c8:	01010413          	addi	s0,sp,16
    800067cc:	00020793          	mv	a5,tp
    800067d0:	00813403          	ld	s0,8(sp)
    800067d4:	0007879b          	sext.w	a5,a5
    800067d8:	00779793          	slli	a5,a5,0x7
    800067dc:	00006517          	auipc	a0,0x6
    800067e0:	ed450513          	addi	a0,a0,-300 # 8000c6b0 <cpus>
    800067e4:	00f50533          	add	a0,a0,a5
    800067e8:	01010113          	addi	sp,sp,16
    800067ec:	00008067          	ret

00000000800067f0 <userinit>:
    800067f0:	ff010113          	addi	sp,sp,-16
    800067f4:	00813423          	sd	s0,8(sp)
    800067f8:	01010413          	addi	s0,sp,16
    800067fc:	00813403          	ld	s0,8(sp)
    80006800:	01010113          	addi	sp,sp,16
    80006804:	ffffc317          	auipc	t1,0xffffc
    80006808:	25430067          	jr	596(t1) # 80002a58 <main>

000000008000680c <either_copyout>:
    8000680c:	ff010113          	addi	sp,sp,-16
    80006810:	00813023          	sd	s0,0(sp)
    80006814:	00113423          	sd	ra,8(sp)
    80006818:	01010413          	addi	s0,sp,16
    8000681c:	02051663          	bnez	a0,80006848 <either_copyout+0x3c>
    80006820:	00058513          	mv	a0,a1
    80006824:	00060593          	mv	a1,a2
    80006828:	0006861b          	sext.w	a2,a3
    8000682c:	00002097          	auipc	ra,0x2
    80006830:	c58080e7          	jalr	-936(ra) # 80008484 <__memmove>
    80006834:	00813083          	ld	ra,8(sp)
    80006838:	00013403          	ld	s0,0(sp)
    8000683c:	00000513          	li	a0,0
    80006840:	01010113          	addi	sp,sp,16
    80006844:	00008067          	ret
    80006848:	00003517          	auipc	a0,0x3
    8000684c:	df850513          	addi	a0,a0,-520 # 80009640 <CONSOLE_STATUS+0x630>
    80006850:	00001097          	auipc	ra,0x1
    80006854:	92c080e7          	jalr	-1748(ra) # 8000717c <panic>

0000000080006858 <either_copyin>:
    80006858:	ff010113          	addi	sp,sp,-16
    8000685c:	00813023          	sd	s0,0(sp)
    80006860:	00113423          	sd	ra,8(sp)
    80006864:	01010413          	addi	s0,sp,16
    80006868:	02059463          	bnez	a1,80006890 <either_copyin+0x38>
    8000686c:	00060593          	mv	a1,a2
    80006870:	0006861b          	sext.w	a2,a3
    80006874:	00002097          	auipc	ra,0x2
    80006878:	c10080e7          	jalr	-1008(ra) # 80008484 <__memmove>
    8000687c:	00813083          	ld	ra,8(sp)
    80006880:	00013403          	ld	s0,0(sp)
    80006884:	00000513          	li	a0,0
    80006888:	01010113          	addi	sp,sp,16
    8000688c:	00008067          	ret
    80006890:	00003517          	auipc	a0,0x3
    80006894:	dd850513          	addi	a0,a0,-552 # 80009668 <CONSOLE_STATUS+0x658>
    80006898:	00001097          	auipc	ra,0x1
    8000689c:	8e4080e7          	jalr	-1820(ra) # 8000717c <panic>

00000000800068a0 <trapinit>:
    800068a0:	ff010113          	addi	sp,sp,-16
    800068a4:	00813423          	sd	s0,8(sp)
    800068a8:	01010413          	addi	s0,sp,16
    800068ac:	00813403          	ld	s0,8(sp)
    800068b0:	00003597          	auipc	a1,0x3
    800068b4:	de058593          	addi	a1,a1,-544 # 80009690 <CONSOLE_STATUS+0x680>
    800068b8:	00006517          	auipc	a0,0x6
    800068bc:	e7850513          	addi	a0,a0,-392 # 8000c730 <tickslock>
    800068c0:	01010113          	addi	sp,sp,16
    800068c4:	00001317          	auipc	t1,0x1
    800068c8:	5c430067          	jr	1476(t1) # 80007e88 <initlock>

00000000800068cc <trapinithart>:
    800068cc:	ff010113          	addi	sp,sp,-16
    800068d0:	00813423          	sd	s0,8(sp)
    800068d4:	01010413          	addi	s0,sp,16
    800068d8:	00000797          	auipc	a5,0x0
    800068dc:	2f878793          	addi	a5,a5,760 # 80006bd0 <kernelvec>
    800068e0:	10579073          	csrw	stvec,a5
    800068e4:	00813403          	ld	s0,8(sp)
    800068e8:	01010113          	addi	sp,sp,16
    800068ec:	00008067          	ret

00000000800068f0 <usertrap>:
    800068f0:	ff010113          	addi	sp,sp,-16
    800068f4:	00813423          	sd	s0,8(sp)
    800068f8:	01010413          	addi	s0,sp,16
    800068fc:	00813403          	ld	s0,8(sp)
    80006900:	01010113          	addi	sp,sp,16
    80006904:	00008067          	ret

0000000080006908 <usertrapret>:
    80006908:	ff010113          	addi	sp,sp,-16
    8000690c:	00813423          	sd	s0,8(sp)
    80006910:	01010413          	addi	s0,sp,16
    80006914:	00813403          	ld	s0,8(sp)
    80006918:	01010113          	addi	sp,sp,16
    8000691c:	00008067          	ret

0000000080006920 <kerneltrap>:
    80006920:	fe010113          	addi	sp,sp,-32
    80006924:	00813823          	sd	s0,16(sp)
    80006928:	00113c23          	sd	ra,24(sp)
    8000692c:	00913423          	sd	s1,8(sp)
    80006930:	02010413          	addi	s0,sp,32
    80006934:	142025f3          	csrr	a1,scause
    80006938:	100027f3          	csrr	a5,sstatus
    8000693c:	0027f793          	andi	a5,a5,2
    80006940:	10079c63          	bnez	a5,80006a58 <kerneltrap+0x138>
    80006944:	142027f3          	csrr	a5,scause
    80006948:	0207ce63          	bltz	a5,80006984 <kerneltrap+0x64>
    8000694c:	00003517          	auipc	a0,0x3
    80006950:	d8c50513          	addi	a0,a0,-628 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80006954:	00001097          	auipc	ra,0x1
    80006958:	884080e7          	jalr	-1916(ra) # 800071d8 <__printf>
    8000695c:	141025f3          	csrr	a1,sepc
    80006960:	14302673          	csrr	a2,stval
    80006964:	00003517          	auipc	a0,0x3
    80006968:	d8450513          	addi	a0,a0,-636 # 800096e8 <CONSOLE_STATUS+0x6d8>
    8000696c:	00001097          	auipc	ra,0x1
    80006970:	86c080e7          	jalr	-1940(ra) # 800071d8 <__printf>
    80006974:	00003517          	auipc	a0,0x3
    80006978:	d8c50513          	addi	a0,a0,-628 # 80009700 <CONSOLE_STATUS+0x6f0>
    8000697c:	00001097          	auipc	ra,0x1
    80006980:	800080e7          	jalr	-2048(ra) # 8000717c <panic>
    80006984:	0ff7f713          	andi	a4,a5,255
    80006988:	00900693          	li	a3,9
    8000698c:	04d70063          	beq	a4,a3,800069cc <kerneltrap+0xac>
    80006990:	fff00713          	li	a4,-1
    80006994:	03f71713          	slli	a4,a4,0x3f
    80006998:	00170713          	addi	a4,a4,1
    8000699c:	fae798e3          	bne	a5,a4,8000694c <kerneltrap+0x2c>
    800069a0:	00000097          	auipc	ra,0x0
    800069a4:	e00080e7          	jalr	-512(ra) # 800067a0 <cpuid>
    800069a8:	06050663          	beqz	a0,80006a14 <kerneltrap+0xf4>
    800069ac:	144027f3          	csrr	a5,sip
    800069b0:	ffd7f793          	andi	a5,a5,-3
    800069b4:	14479073          	csrw	sip,a5
    800069b8:	01813083          	ld	ra,24(sp)
    800069bc:	01013403          	ld	s0,16(sp)
    800069c0:	00813483          	ld	s1,8(sp)
    800069c4:	02010113          	addi	sp,sp,32
    800069c8:	00008067          	ret
    800069cc:	00000097          	auipc	ra,0x0
    800069d0:	3c8080e7          	jalr	968(ra) # 80006d94 <plic_claim>
    800069d4:	00a00793          	li	a5,10
    800069d8:	00050493          	mv	s1,a0
    800069dc:	06f50863          	beq	a0,a5,80006a4c <kerneltrap+0x12c>
    800069e0:	fc050ce3          	beqz	a0,800069b8 <kerneltrap+0x98>
    800069e4:	00050593          	mv	a1,a0
    800069e8:	00003517          	auipc	a0,0x3
    800069ec:	cd050513          	addi	a0,a0,-816 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800069f0:	00000097          	auipc	ra,0x0
    800069f4:	7e8080e7          	jalr	2024(ra) # 800071d8 <__printf>
    800069f8:	01013403          	ld	s0,16(sp)
    800069fc:	01813083          	ld	ra,24(sp)
    80006a00:	00048513          	mv	a0,s1
    80006a04:	00813483          	ld	s1,8(sp)
    80006a08:	02010113          	addi	sp,sp,32
    80006a0c:	00000317          	auipc	t1,0x0
    80006a10:	3c030067          	jr	960(t1) # 80006dcc <plic_complete>
    80006a14:	00006517          	auipc	a0,0x6
    80006a18:	d1c50513          	addi	a0,a0,-740 # 8000c730 <tickslock>
    80006a1c:	00001097          	auipc	ra,0x1
    80006a20:	490080e7          	jalr	1168(ra) # 80007eac <acquire>
    80006a24:	00005717          	auipc	a4,0x5
    80006a28:	ba070713          	addi	a4,a4,-1120 # 8000b5c4 <ticks>
    80006a2c:	00072783          	lw	a5,0(a4)
    80006a30:	00006517          	auipc	a0,0x6
    80006a34:	d0050513          	addi	a0,a0,-768 # 8000c730 <tickslock>
    80006a38:	0017879b          	addiw	a5,a5,1
    80006a3c:	00f72023          	sw	a5,0(a4)
    80006a40:	00001097          	auipc	ra,0x1
    80006a44:	538080e7          	jalr	1336(ra) # 80007f78 <release>
    80006a48:	f65ff06f          	j	800069ac <kerneltrap+0x8c>
    80006a4c:	00001097          	auipc	ra,0x1
    80006a50:	094080e7          	jalr	148(ra) # 80007ae0 <uartintr>
    80006a54:	fa5ff06f          	j	800069f8 <kerneltrap+0xd8>
    80006a58:	00003517          	auipc	a0,0x3
    80006a5c:	c4050513          	addi	a0,a0,-960 # 80009698 <CONSOLE_STATUS+0x688>
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	71c080e7          	jalr	1820(ra) # 8000717c <panic>

0000000080006a68 <clockintr>:
    80006a68:	fe010113          	addi	sp,sp,-32
    80006a6c:	00813823          	sd	s0,16(sp)
    80006a70:	00913423          	sd	s1,8(sp)
    80006a74:	00113c23          	sd	ra,24(sp)
    80006a78:	02010413          	addi	s0,sp,32
    80006a7c:	00006497          	auipc	s1,0x6
    80006a80:	cb448493          	addi	s1,s1,-844 # 8000c730 <tickslock>
    80006a84:	00048513          	mv	a0,s1
    80006a88:	00001097          	auipc	ra,0x1
    80006a8c:	424080e7          	jalr	1060(ra) # 80007eac <acquire>
    80006a90:	00005717          	auipc	a4,0x5
    80006a94:	b3470713          	addi	a4,a4,-1228 # 8000b5c4 <ticks>
    80006a98:	00072783          	lw	a5,0(a4)
    80006a9c:	01013403          	ld	s0,16(sp)
    80006aa0:	01813083          	ld	ra,24(sp)
    80006aa4:	00048513          	mv	a0,s1
    80006aa8:	0017879b          	addiw	a5,a5,1
    80006aac:	00813483          	ld	s1,8(sp)
    80006ab0:	00f72023          	sw	a5,0(a4)
    80006ab4:	02010113          	addi	sp,sp,32
    80006ab8:	00001317          	auipc	t1,0x1
    80006abc:	4c030067          	jr	1216(t1) # 80007f78 <release>

0000000080006ac0 <devintr>:
    80006ac0:	142027f3          	csrr	a5,scause
    80006ac4:	00000513          	li	a0,0
    80006ac8:	0007c463          	bltz	a5,80006ad0 <devintr+0x10>
    80006acc:	00008067          	ret
    80006ad0:	fe010113          	addi	sp,sp,-32
    80006ad4:	00813823          	sd	s0,16(sp)
    80006ad8:	00113c23          	sd	ra,24(sp)
    80006adc:	00913423          	sd	s1,8(sp)
    80006ae0:	02010413          	addi	s0,sp,32
    80006ae4:	0ff7f713          	andi	a4,a5,255
    80006ae8:	00900693          	li	a3,9
    80006aec:	04d70c63          	beq	a4,a3,80006b44 <devintr+0x84>
    80006af0:	fff00713          	li	a4,-1
    80006af4:	03f71713          	slli	a4,a4,0x3f
    80006af8:	00170713          	addi	a4,a4,1
    80006afc:	00e78c63          	beq	a5,a4,80006b14 <devintr+0x54>
    80006b00:	01813083          	ld	ra,24(sp)
    80006b04:	01013403          	ld	s0,16(sp)
    80006b08:	00813483          	ld	s1,8(sp)
    80006b0c:	02010113          	addi	sp,sp,32
    80006b10:	00008067          	ret
    80006b14:	00000097          	auipc	ra,0x0
    80006b18:	c8c080e7          	jalr	-884(ra) # 800067a0 <cpuid>
    80006b1c:	06050663          	beqz	a0,80006b88 <devintr+0xc8>
    80006b20:	144027f3          	csrr	a5,sip
    80006b24:	ffd7f793          	andi	a5,a5,-3
    80006b28:	14479073          	csrw	sip,a5
    80006b2c:	01813083          	ld	ra,24(sp)
    80006b30:	01013403          	ld	s0,16(sp)
    80006b34:	00813483          	ld	s1,8(sp)
    80006b38:	00200513          	li	a0,2
    80006b3c:	02010113          	addi	sp,sp,32
    80006b40:	00008067          	ret
    80006b44:	00000097          	auipc	ra,0x0
    80006b48:	250080e7          	jalr	592(ra) # 80006d94 <plic_claim>
    80006b4c:	00a00793          	li	a5,10
    80006b50:	00050493          	mv	s1,a0
    80006b54:	06f50663          	beq	a0,a5,80006bc0 <devintr+0x100>
    80006b58:	00100513          	li	a0,1
    80006b5c:	fa0482e3          	beqz	s1,80006b00 <devintr+0x40>
    80006b60:	00048593          	mv	a1,s1
    80006b64:	00003517          	auipc	a0,0x3
    80006b68:	b5450513          	addi	a0,a0,-1196 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006b6c:	00000097          	auipc	ra,0x0
    80006b70:	66c080e7          	jalr	1644(ra) # 800071d8 <__printf>
    80006b74:	00048513          	mv	a0,s1
    80006b78:	00000097          	auipc	ra,0x0
    80006b7c:	254080e7          	jalr	596(ra) # 80006dcc <plic_complete>
    80006b80:	00100513          	li	a0,1
    80006b84:	f7dff06f          	j	80006b00 <devintr+0x40>
    80006b88:	00006517          	auipc	a0,0x6
    80006b8c:	ba850513          	addi	a0,a0,-1112 # 8000c730 <tickslock>
    80006b90:	00001097          	auipc	ra,0x1
    80006b94:	31c080e7          	jalr	796(ra) # 80007eac <acquire>
    80006b98:	00005717          	auipc	a4,0x5
    80006b9c:	a2c70713          	addi	a4,a4,-1492 # 8000b5c4 <ticks>
    80006ba0:	00072783          	lw	a5,0(a4)
    80006ba4:	00006517          	auipc	a0,0x6
    80006ba8:	b8c50513          	addi	a0,a0,-1140 # 8000c730 <tickslock>
    80006bac:	0017879b          	addiw	a5,a5,1
    80006bb0:	00f72023          	sw	a5,0(a4)
    80006bb4:	00001097          	auipc	ra,0x1
    80006bb8:	3c4080e7          	jalr	964(ra) # 80007f78 <release>
    80006bbc:	f65ff06f          	j	80006b20 <devintr+0x60>
    80006bc0:	00001097          	auipc	ra,0x1
    80006bc4:	f20080e7          	jalr	-224(ra) # 80007ae0 <uartintr>
    80006bc8:	fadff06f          	j	80006b74 <devintr+0xb4>
    80006bcc:	0000                	unimp
	...

0000000080006bd0 <kernelvec>:
    80006bd0:	f0010113          	addi	sp,sp,-256
    80006bd4:	00113023          	sd	ra,0(sp)
    80006bd8:	00213423          	sd	sp,8(sp)
    80006bdc:	00313823          	sd	gp,16(sp)
    80006be0:	00413c23          	sd	tp,24(sp)
    80006be4:	02513023          	sd	t0,32(sp)
    80006be8:	02613423          	sd	t1,40(sp)
    80006bec:	02713823          	sd	t2,48(sp)
    80006bf0:	02813c23          	sd	s0,56(sp)
    80006bf4:	04913023          	sd	s1,64(sp)
    80006bf8:	04a13423          	sd	a0,72(sp)
    80006bfc:	04b13823          	sd	a1,80(sp)
    80006c00:	04c13c23          	sd	a2,88(sp)
    80006c04:	06d13023          	sd	a3,96(sp)
    80006c08:	06e13423          	sd	a4,104(sp)
    80006c0c:	06f13823          	sd	a5,112(sp)
    80006c10:	07013c23          	sd	a6,120(sp)
    80006c14:	09113023          	sd	a7,128(sp)
    80006c18:	09213423          	sd	s2,136(sp)
    80006c1c:	09313823          	sd	s3,144(sp)
    80006c20:	09413c23          	sd	s4,152(sp)
    80006c24:	0b513023          	sd	s5,160(sp)
    80006c28:	0b613423          	sd	s6,168(sp)
    80006c2c:	0b713823          	sd	s7,176(sp)
    80006c30:	0b813c23          	sd	s8,184(sp)
    80006c34:	0d913023          	sd	s9,192(sp)
    80006c38:	0da13423          	sd	s10,200(sp)
    80006c3c:	0db13823          	sd	s11,208(sp)
    80006c40:	0dc13c23          	sd	t3,216(sp)
    80006c44:	0fd13023          	sd	t4,224(sp)
    80006c48:	0fe13423          	sd	t5,232(sp)
    80006c4c:	0ff13823          	sd	t6,240(sp)
    80006c50:	cd1ff0ef          	jal	ra,80006920 <kerneltrap>
    80006c54:	00013083          	ld	ra,0(sp)
    80006c58:	00813103          	ld	sp,8(sp)
    80006c5c:	01013183          	ld	gp,16(sp)
    80006c60:	02013283          	ld	t0,32(sp)
    80006c64:	02813303          	ld	t1,40(sp)
    80006c68:	03013383          	ld	t2,48(sp)
    80006c6c:	03813403          	ld	s0,56(sp)
    80006c70:	04013483          	ld	s1,64(sp)
    80006c74:	04813503          	ld	a0,72(sp)
    80006c78:	05013583          	ld	a1,80(sp)
    80006c7c:	05813603          	ld	a2,88(sp)
    80006c80:	06013683          	ld	a3,96(sp)
    80006c84:	06813703          	ld	a4,104(sp)
    80006c88:	07013783          	ld	a5,112(sp)
    80006c8c:	07813803          	ld	a6,120(sp)
    80006c90:	08013883          	ld	a7,128(sp)
    80006c94:	08813903          	ld	s2,136(sp)
    80006c98:	09013983          	ld	s3,144(sp)
    80006c9c:	09813a03          	ld	s4,152(sp)
    80006ca0:	0a013a83          	ld	s5,160(sp)
    80006ca4:	0a813b03          	ld	s6,168(sp)
    80006ca8:	0b013b83          	ld	s7,176(sp)
    80006cac:	0b813c03          	ld	s8,184(sp)
    80006cb0:	0c013c83          	ld	s9,192(sp)
    80006cb4:	0c813d03          	ld	s10,200(sp)
    80006cb8:	0d013d83          	ld	s11,208(sp)
    80006cbc:	0d813e03          	ld	t3,216(sp)
    80006cc0:	0e013e83          	ld	t4,224(sp)
    80006cc4:	0e813f03          	ld	t5,232(sp)
    80006cc8:	0f013f83          	ld	t6,240(sp)
    80006ccc:	10010113          	addi	sp,sp,256
    80006cd0:	10200073          	sret
    80006cd4:	00000013          	nop
    80006cd8:	00000013          	nop
    80006cdc:	00000013          	nop

0000000080006ce0 <timervec>:
    80006ce0:	34051573          	csrrw	a0,mscratch,a0
    80006ce4:	00b53023          	sd	a1,0(a0)
    80006ce8:	00c53423          	sd	a2,8(a0)
    80006cec:	00d53823          	sd	a3,16(a0)
    80006cf0:	01853583          	ld	a1,24(a0)
    80006cf4:	02053603          	ld	a2,32(a0)
    80006cf8:	0005b683          	ld	a3,0(a1)
    80006cfc:	00c686b3          	add	a3,a3,a2
    80006d00:	00d5b023          	sd	a3,0(a1)
    80006d04:	00200593          	li	a1,2
    80006d08:	14459073          	csrw	sip,a1
    80006d0c:	01053683          	ld	a3,16(a0)
    80006d10:	00853603          	ld	a2,8(a0)
    80006d14:	00053583          	ld	a1,0(a0)
    80006d18:	34051573          	csrrw	a0,mscratch,a0
    80006d1c:	30200073          	mret

0000000080006d20 <plicinit>:
    80006d20:	ff010113          	addi	sp,sp,-16
    80006d24:	00813423          	sd	s0,8(sp)
    80006d28:	01010413          	addi	s0,sp,16
    80006d2c:	00813403          	ld	s0,8(sp)
    80006d30:	0c0007b7          	lui	a5,0xc000
    80006d34:	00100713          	li	a4,1
    80006d38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006d3c:	00e7a223          	sw	a4,4(a5)
    80006d40:	01010113          	addi	sp,sp,16
    80006d44:	00008067          	ret

0000000080006d48 <plicinithart>:
    80006d48:	ff010113          	addi	sp,sp,-16
    80006d4c:	00813023          	sd	s0,0(sp)
    80006d50:	00113423          	sd	ra,8(sp)
    80006d54:	01010413          	addi	s0,sp,16
    80006d58:	00000097          	auipc	ra,0x0
    80006d5c:	a48080e7          	jalr	-1464(ra) # 800067a0 <cpuid>
    80006d60:	0085171b          	slliw	a4,a0,0x8
    80006d64:	0c0027b7          	lui	a5,0xc002
    80006d68:	00e787b3          	add	a5,a5,a4
    80006d6c:	40200713          	li	a4,1026
    80006d70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006d74:	00813083          	ld	ra,8(sp)
    80006d78:	00013403          	ld	s0,0(sp)
    80006d7c:	00d5151b          	slliw	a0,a0,0xd
    80006d80:	0c2017b7          	lui	a5,0xc201
    80006d84:	00a78533          	add	a0,a5,a0
    80006d88:	00052023          	sw	zero,0(a0)
    80006d8c:	01010113          	addi	sp,sp,16
    80006d90:	00008067          	ret

0000000080006d94 <plic_claim>:
    80006d94:	ff010113          	addi	sp,sp,-16
    80006d98:	00813023          	sd	s0,0(sp)
    80006d9c:	00113423          	sd	ra,8(sp)
    80006da0:	01010413          	addi	s0,sp,16
    80006da4:	00000097          	auipc	ra,0x0
    80006da8:	9fc080e7          	jalr	-1540(ra) # 800067a0 <cpuid>
    80006dac:	00813083          	ld	ra,8(sp)
    80006db0:	00013403          	ld	s0,0(sp)
    80006db4:	00d5151b          	slliw	a0,a0,0xd
    80006db8:	0c2017b7          	lui	a5,0xc201
    80006dbc:	00a78533          	add	a0,a5,a0
    80006dc0:	00452503          	lw	a0,4(a0)
    80006dc4:	01010113          	addi	sp,sp,16
    80006dc8:	00008067          	ret

0000000080006dcc <plic_complete>:
    80006dcc:	fe010113          	addi	sp,sp,-32
    80006dd0:	00813823          	sd	s0,16(sp)
    80006dd4:	00913423          	sd	s1,8(sp)
    80006dd8:	00113c23          	sd	ra,24(sp)
    80006ddc:	02010413          	addi	s0,sp,32
    80006de0:	00050493          	mv	s1,a0
    80006de4:	00000097          	auipc	ra,0x0
    80006de8:	9bc080e7          	jalr	-1604(ra) # 800067a0 <cpuid>
    80006dec:	01813083          	ld	ra,24(sp)
    80006df0:	01013403          	ld	s0,16(sp)
    80006df4:	00d5179b          	slliw	a5,a0,0xd
    80006df8:	0c201737          	lui	a4,0xc201
    80006dfc:	00f707b3          	add	a5,a4,a5
    80006e00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006e04:	00813483          	ld	s1,8(sp)
    80006e08:	02010113          	addi	sp,sp,32
    80006e0c:	00008067          	ret

0000000080006e10 <consolewrite>:
    80006e10:	fb010113          	addi	sp,sp,-80
    80006e14:	04813023          	sd	s0,64(sp)
    80006e18:	04113423          	sd	ra,72(sp)
    80006e1c:	02913c23          	sd	s1,56(sp)
    80006e20:	03213823          	sd	s2,48(sp)
    80006e24:	03313423          	sd	s3,40(sp)
    80006e28:	03413023          	sd	s4,32(sp)
    80006e2c:	01513c23          	sd	s5,24(sp)
    80006e30:	05010413          	addi	s0,sp,80
    80006e34:	06c05c63          	blez	a2,80006eac <consolewrite+0x9c>
    80006e38:	00060993          	mv	s3,a2
    80006e3c:	00050a13          	mv	s4,a0
    80006e40:	00058493          	mv	s1,a1
    80006e44:	00000913          	li	s2,0
    80006e48:	fff00a93          	li	s5,-1
    80006e4c:	01c0006f          	j	80006e68 <consolewrite+0x58>
    80006e50:	fbf44503          	lbu	a0,-65(s0)
    80006e54:	0019091b          	addiw	s2,s2,1
    80006e58:	00148493          	addi	s1,s1,1
    80006e5c:	00001097          	auipc	ra,0x1
    80006e60:	a9c080e7          	jalr	-1380(ra) # 800078f8 <uartputc>
    80006e64:	03298063          	beq	s3,s2,80006e84 <consolewrite+0x74>
    80006e68:	00048613          	mv	a2,s1
    80006e6c:	00100693          	li	a3,1
    80006e70:	000a0593          	mv	a1,s4
    80006e74:	fbf40513          	addi	a0,s0,-65
    80006e78:	00000097          	auipc	ra,0x0
    80006e7c:	9e0080e7          	jalr	-1568(ra) # 80006858 <either_copyin>
    80006e80:	fd5518e3          	bne	a0,s5,80006e50 <consolewrite+0x40>
    80006e84:	04813083          	ld	ra,72(sp)
    80006e88:	04013403          	ld	s0,64(sp)
    80006e8c:	03813483          	ld	s1,56(sp)
    80006e90:	02813983          	ld	s3,40(sp)
    80006e94:	02013a03          	ld	s4,32(sp)
    80006e98:	01813a83          	ld	s5,24(sp)
    80006e9c:	00090513          	mv	a0,s2
    80006ea0:	03013903          	ld	s2,48(sp)
    80006ea4:	05010113          	addi	sp,sp,80
    80006ea8:	00008067          	ret
    80006eac:	00000913          	li	s2,0
    80006eb0:	fd5ff06f          	j	80006e84 <consolewrite+0x74>

0000000080006eb4 <consoleread>:
    80006eb4:	f9010113          	addi	sp,sp,-112
    80006eb8:	06813023          	sd	s0,96(sp)
    80006ebc:	04913c23          	sd	s1,88(sp)
    80006ec0:	05213823          	sd	s2,80(sp)
    80006ec4:	05313423          	sd	s3,72(sp)
    80006ec8:	05413023          	sd	s4,64(sp)
    80006ecc:	03513c23          	sd	s5,56(sp)
    80006ed0:	03613823          	sd	s6,48(sp)
    80006ed4:	03713423          	sd	s7,40(sp)
    80006ed8:	03813023          	sd	s8,32(sp)
    80006edc:	06113423          	sd	ra,104(sp)
    80006ee0:	01913c23          	sd	s9,24(sp)
    80006ee4:	07010413          	addi	s0,sp,112
    80006ee8:	00060b93          	mv	s7,a2
    80006eec:	00050913          	mv	s2,a0
    80006ef0:	00058c13          	mv	s8,a1
    80006ef4:	00060b1b          	sext.w	s6,a2
    80006ef8:	00006497          	auipc	s1,0x6
    80006efc:	86048493          	addi	s1,s1,-1952 # 8000c758 <cons>
    80006f00:	00400993          	li	s3,4
    80006f04:	fff00a13          	li	s4,-1
    80006f08:	00a00a93          	li	s5,10
    80006f0c:	05705e63          	blez	s7,80006f68 <consoleread+0xb4>
    80006f10:	09c4a703          	lw	a4,156(s1)
    80006f14:	0984a783          	lw	a5,152(s1)
    80006f18:	0007071b          	sext.w	a4,a4
    80006f1c:	08e78463          	beq	a5,a4,80006fa4 <consoleread+0xf0>
    80006f20:	07f7f713          	andi	a4,a5,127
    80006f24:	00e48733          	add	a4,s1,a4
    80006f28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006f2c:	0017869b          	addiw	a3,a5,1
    80006f30:	08d4ac23          	sw	a3,152(s1)
    80006f34:	00070c9b          	sext.w	s9,a4
    80006f38:	0b370663          	beq	a4,s3,80006fe4 <consoleread+0x130>
    80006f3c:	00100693          	li	a3,1
    80006f40:	f9f40613          	addi	a2,s0,-97
    80006f44:	000c0593          	mv	a1,s8
    80006f48:	00090513          	mv	a0,s2
    80006f4c:	f8e40fa3          	sb	a4,-97(s0)
    80006f50:	00000097          	auipc	ra,0x0
    80006f54:	8bc080e7          	jalr	-1860(ra) # 8000680c <either_copyout>
    80006f58:	01450863          	beq	a0,s4,80006f68 <consoleread+0xb4>
    80006f5c:	001c0c13          	addi	s8,s8,1
    80006f60:	fffb8b9b          	addiw	s7,s7,-1
    80006f64:	fb5c94e3          	bne	s9,s5,80006f0c <consoleread+0x58>
    80006f68:	000b851b          	sext.w	a0,s7
    80006f6c:	06813083          	ld	ra,104(sp)
    80006f70:	06013403          	ld	s0,96(sp)
    80006f74:	05813483          	ld	s1,88(sp)
    80006f78:	05013903          	ld	s2,80(sp)
    80006f7c:	04813983          	ld	s3,72(sp)
    80006f80:	04013a03          	ld	s4,64(sp)
    80006f84:	03813a83          	ld	s5,56(sp)
    80006f88:	02813b83          	ld	s7,40(sp)
    80006f8c:	02013c03          	ld	s8,32(sp)
    80006f90:	01813c83          	ld	s9,24(sp)
    80006f94:	40ab053b          	subw	a0,s6,a0
    80006f98:	03013b03          	ld	s6,48(sp)
    80006f9c:	07010113          	addi	sp,sp,112
    80006fa0:	00008067          	ret
    80006fa4:	00001097          	auipc	ra,0x1
    80006fa8:	1d8080e7          	jalr	472(ra) # 8000817c <push_on>
    80006fac:	0984a703          	lw	a4,152(s1)
    80006fb0:	09c4a783          	lw	a5,156(s1)
    80006fb4:	0007879b          	sext.w	a5,a5
    80006fb8:	fef70ce3          	beq	a4,a5,80006fb0 <consoleread+0xfc>
    80006fbc:	00001097          	auipc	ra,0x1
    80006fc0:	234080e7          	jalr	564(ra) # 800081f0 <pop_on>
    80006fc4:	0984a783          	lw	a5,152(s1)
    80006fc8:	07f7f713          	andi	a4,a5,127
    80006fcc:	00e48733          	add	a4,s1,a4
    80006fd0:	01874703          	lbu	a4,24(a4)
    80006fd4:	0017869b          	addiw	a3,a5,1
    80006fd8:	08d4ac23          	sw	a3,152(s1)
    80006fdc:	00070c9b          	sext.w	s9,a4
    80006fe0:	f5371ee3          	bne	a4,s3,80006f3c <consoleread+0x88>
    80006fe4:	000b851b          	sext.w	a0,s7
    80006fe8:	f96bf2e3          	bgeu	s7,s6,80006f6c <consoleread+0xb8>
    80006fec:	08f4ac23          	sw	a5,152(s1)
    80006ff0:	f7dff06f          	j	80006f6c <consoleread+0xb8>

0000000080006ff4 <consputc>:
    80006ff4:	10000793          	li	a5,256
    80006ff8:	00f50663          	beq	a0,a5,80007004 <consputc+0x10>
    80006ffc:	00001317          	auipc	t1,0x1
    80007000:	9f430067          	jr	-1548(t1) # 800079f0 <uartputc_sync>
    80007004:	ff010113          	addi	sp,sp,-16
    80007008:	00113423          	sd	ra,8(sp)
    8000700c:	00813023          	sd	s0,0(sp)
    80007010:	01010413          	addi	s0,sp,16
    80007014:	00800513          	li	a0,8
    80007018:	00001097          	auipc	ra,0x1
    8000701c:	9d8080e7          	jalr	-1576(ra) # 800079f0 <uartputc_sync>
    80007020:	02000513          	li	a0,32
    80007024:	00001097          	auipc	ra,0x1
    80007028:	9cc080e7          	jalr	-1588(ra) # 800079f0 <uartputc_sync>
    8000702c:	00013403          	ld	s0,0(sp)
    80007030:	00813083          	ld	ra,8(sp)
    80007034:	00800513          	li	a0,8
    80007038:	01010113          	addi	sp,sp,16
    8000703c:	00001317          	auipc	t1,0x1
    80007040:	9b430067          	jr	-1612(t1) # 800079f0 <uartputc_sync>

0000000080007044 <consoleintr>:
    80007044:	fe010113          	addi	sp,sp,-32
    80007048:	00813823          	sd	s0,16(sp)
    8000704c:	00913423          	sd	s1,8(sp)
    80007050:	01213023          	sd	s2,0(sp)
    80007054:	00113c23          	sd	ra,24(sp)
    80007058:	02010413          	addi	s0,sp,32
    8000705c:	00005917          	auipc	s2,0x5
    80007060:	6fc90913          	addi	s2,s2,1788 # 8000c758 <cons>
    80007064:	00050493          	mv	s1,a0
    80007068:	00090513          	mv	a0,s2
    8000706c:	00001097          	auipc	ra,0x1
    80007070:	e40080e7          	jalr	-448(ra) # 80007eac <acquire>
    80007074:	02048c63          	beqz	s1,800070ac <consoleintr+0x68>
    80007078:	0a092783          	lw	a5,160(s2)
    8000707c:	09892703          	lw	a4,152(s2)
    80007080:	07f00693          	li	a3,127
    80007084:	40e7873b          	subw	a4,a5,a4
    80007088:	02e6e263          	bltu	a3,a4,800070ac <consoleintr+0x68>
    8000708c:	00d00713          	li	a4,13
    80007090:	04e48063          	beq	s1,a4,800070d0 <consoleintr+0x8c>
    80007094:	07f7f713          	andi	a4,a5,127
    80007098:	00e90733          	add	a4,s2,a4
    8000709c:	0017879b          	addiw	a5,a5,1
    800070a0:	0af92023          	sw	a5,160(s2)
    800070a4:	00970c23          	sb	s1,24(a4)
    800070a8:	08f92e23          	sw	a5,156(s2)
    800070ac:	01013403          	ld	s0,16(sp)
    800070b0:	01813083          	ld	ra,24(sp)
    800070b4:	00813483          	ld	s1,8(sp)
    800070b8:	00013903          	ld	s2,0(sp)
    800070bc:	00005517          	auipc	a0,0x5
    800070c0:	69c50513          	addi	a0,a0,1692 # 8000c758 <cons>
    800070c4:	02010113          	addi	sp,sp,32
    800070c8:	00001317          	auipc	t1,0x1
    800070cc:	eb030067          	jr	-336(t1) # 80007f78 <release>
    800070d0:	00a00493          	li	s1,10
    800070d4:	fc1ff06f          	j	80007094 <consoleintr+0x50>

00000000800070d8 <consoleinit>:
    800070d8:	fe010113          	addi	sp,sp,-32
    800070dc:	00113c23          	sd	ra,24(sp)
    800070e0:	00813823          	sd	s0,16(sp)
    800070e4:	00913423          	sd	s1,8(sp)
    800070e8:	02010413          	addi	s0,sp,32
    800070ec:	00005497          	auipc	s1,0x5
    800070f0:	66c48493          	addi	s1,s1,1644 # 8000c758 <cons>
    800070f4:	00048513          	mv	a0,s1
    800070f8:	00002597          	auipc	a1,0x2
    800070fc:	61858593          	addi	a1,a1,1560 # 80009710 <CONSOLE_STATUS+0x700>
    80007100:	00001097          	auipc	ra,0x1
    80007104:	d88080e7          	jalr	-632(ra) # 80007e88 <initlock>
    80007108:	00000097          	auipc	ra,0x0
    8000710c:	7ac080e7          	jalr	1964(ra) # 800078b4 <uartinit>
    80007110:	01813083          	ld	ra,24(sp)
    80007114:	01013403          	ld	s0,16(sp)
    80007118:	00000797          	auipc	a5,0x0
    8000711c:	d9c78793          	addi	a5,a5,-612 # 80006eb4 <consoleread>
    80007120:	0af4bc23          	sd	a5,184(s1)
    80007124:	00000797          	auipc	a5,0x0
    80007128:	cec78793          	addi	a5,a5,-788 # 80006e10 <consolewrite>
    8000712c:	0cf4b023          	sd	a5,192(s1)
    80007130:	00813483          	ld	s1,8(sp)
    80007134:	02010113          	addi	sp,sp,32
    80007138:	00008067          	ret

000000008000713c <console_read>:
    8000713c:	ff010113          	addi	sp,sp,-16
    80007140:	00813423          	sd	s0,8(sp)
    80007144:	01010413          	addi	s0,sp,16
    80007148:	00813403          	ld	s0,8(sp)
    8000714c:	00005317          	auipc	t1,0x5
    80007150:	6c433303          	ld	t1,1732(t1) # 8000c810 <devsw+0x10>
    80007154:	01010113          	addi	sp,sp,16
    80007158:	00030067          	jr	t1

000000008000715c <console_write>:
    8000715c:	ff010113          	addi	sp,sp,-16
    80007160:	00813423          	sd	s0,8(sp)
    80007164:	01010413          	addi	s0,sp,16
    80007168:	00813403          	ld	s0,8(sp)
    8000716c:	00005317          	auipc	t1,0x5
    80007170:	6ac33303          	ld	t1,1708(t1) # 8000c818 <devsw+0x18>
    80007174:	01010113          	addi	sp,sp,16
    80007178:	00030067          	jr	t1

000000008000717c <panic>:
    8000717c:	fe010113          	addi	sp,sp,-32
    80007180:	00113c23          	sd	ra,24(sp)
    80007184:	00813823          	sd	s0,16(sp)
    80007188:	00913423          	sd	s1,8(sp)
    8000718c:	02010413          	addi	s0,sp,32
    80007190:	00050493          	mv	s1,a0
    80007194:	00002517          	auipc	a0,0x2
    80007198:	58450513          	addi	a0,a0,1412 # 80009718 <CONSOLE_STATUS+0x708>
    8000719c:	00005797          	auipc	a5,0x5
    800071a0:	7007ae23          	sw	zero,1820(a5) # 8000c8b8 <pr+0x18>
    800071a4:	00000097          	auipc	ra,0x0
    800071a8:	034080e7          	jalr	52(ra) # 800071d8 <__printf>
    800071ac:	00048513          	mv	a0,s1
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	028080e7          	jalr	40(ra) # 800071d8 <__printf>
    800071b8:	00002517          	auipc	a0,0x2
    800071bc:	35850513          	addi	a0,a0,856 # 80009510 <CONSOLE_STATUS+0x500>
    800071c0:	00000097          	auipc	ra,0x0
    800071c4:	018080e7          	jalr	24(ra) # 800071d8 <__printf>
    800071c8:	00100793          	li	a5,1
    800071cc:	00004717          	auipc	a4,0x4
    800071d0:	3ef72e23          	sw	a5,1020(a4) # 8000b5c8 <panicked>
    800071d4:	0000006f          	j	800071d4 <panic+0x58>

00000000800071d8 <__printf>:
    800071d8:	f3010113          	addi	sp,sp,-208
    800071dc:	08813023          	sd	s0,128(sp)
    800071e0:	07313423          	sd	s3,104(sp)
    800071e4:	09010413          	addi	s0,sp,144
    800071e8:	05813023          	sd	s8,64(sp)
    800071ec:	08113423          	sd	ra,136(sp)
    800071f0:	06913c23          	sd	s1,120(sp)
    800071f4:	07213823          	sd	s2,112(sp)
    800071f8:	07413023          	sd	s4,96(sp)
    800071fc:	05513c23          	sd	s5,88(sp)
    80007200:	05613823          	sd	s6,80(sp)
    80007204:	05713423          	sd	s7,72(sp)
    80007208:	03913c23          	sd	s9,56(sp)
    8000720c:	03a13823          	sd	s10,48(sp)
    80007210:	03b13423          	sd	s11,40(sp)
    80007214:	00005317          	auipc	t1,0x5
    80007218:	68c30313          	addi	t1,t1,1676 # 8000c8a0 <pr>
    8000721c:	01832c03          	lw	s8,24(t1)
    80007220:	00b43423          	sd	a1,8(s0)
    80007224:	00c43823          	sd	a2,16(s0)
    80007228:	00d43c23          	sd	a3,24(s0)
    8000722c:	02e43023          	sd	a4,32(s0)
    80007230:	02f43423          	sd	a5,40(s0)
    80007234:	03043823          	sd	a6,48(s0)
    80007238:	03143c23          	sd	a7,56(s0)
    8000723c:	00050993          	mv	s3,a0
    80007240:	4a0c1663          	bnez	s8,800076ec <__printf+0x514>
    80007244:	60098c63          	beqz	s3,8000785c <__printf+0x684>
    80007248:	0009c503          	lbu	a0,0(s3)
    8000724c:	00840793          	addi	a5,s0,8
    80007250:	f6f43c23          	sd	a5,-136(s0)
    80007254:	00000493          	li	s1,0
    80007258:	22050063          	beqz	a0,80007478 <__printf+0x2a0>
    8000725c:	00002a37          	lui	s4,0x2
    80007260:	00018ab7          	lui	s5,0x18
    80007264:	000f4b37          	lui	s6,0xf4
    80007268:	00989bb7          	lui	s7,0x989
    8000726c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007270:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007274:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007278:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000727c:	00148c9b          	addiw	s9,s1,1
    80007280:	02500793          	li	a5,37
    80007284:	01998933          	add	s2,s3,s9
    80007288:	38f51263          	bne	a0,a5,8000760c <__printf+0x434>
    8000728c:	00094783          	lbu	a5,0(s2)
    80007290:	00078c9b          	sext.w	s9,a5
    80007294:	1e078263          	beqz	a5,80007478 <__printf+0x2a0>
    80007298:	0024849b          	addiw	s1,s1,2
    8000729c:	07000713          	li	a4,112
    800072a0:	00998933          	add	s2,s3,s1
    800072a4:	38e78a63          	beq	a5,a4,80007638 <__printf+0x460>
    800072a8:	20f76863          	bltu	a4,a5,800074b8 <__printf+0x2e0>
    800072ac:	42a78863          	beq	a5,a0,800076dc <__printf+0x504>
    800072b0:	06400713          	li	a4,100
    800072b4:	40e79663          	bne	a5,a4,800076c0 <__printf+0x4e8>
    800072b8:	f7843783          	ld	a5,-136(s0)
    800072bc:	0007a603          	lw	a2,0(a5)
    800072c0:	00878793          	addi	a5,a5,8
    800072c4:	f6f43c23          	sd	a5,-136(s0)
    800072c8:	42064a63          	bltz	a2,800076fc <__printf+0x524>
    800072cc:	00a00713          	li	a4,10
    800072d0:	02e677bb          	remuw	a5,a2,a4
    800072d4:	00002d97          	auipc	s11,0x2
    800072d8:	46cd8d93          	addi	s11,s11,1132 # 80009740 <digits>
    800072dc:	00900593          	li	a1,9
    800072e0:	0006051b          	sext.w	a0,a2
    800072e4:	00000c93          	li	s9,0
    800072e8:	02079793          	slli	a5,a5,0x20
    800072ec:	0207d793          	srli	a5,a5,0x20
    800072f0:	00fd87b3          	add	a5,s11,a5
    800072f4:	0007c783          	lbu	a5,0(a5)
    800072f8:	02e656bb          	divuw	a3,a2,a4
    800072fc:	f8f40023          	sb	a5,-128(s0)
    80007300:	14c5d863          	bge	a1,a2,80007450 <__printf+0x278>
    80007304:	06300593          	li	a1,99
    80007308:	00100c93          	li	s9,1
    8000730c:	02e6f7bb          	remuw	a5,a3,a4
    80007310:	02079793          	slli	a5,a5,0x20
    80007314:	0207d793          	srli	a5,a5,0x20
    80007318:	00fd87b3          	add	a5,s11,a5
    8000731c:	0007c783          	lbu	a5,0(a5)
    80007320:	02e6d73b          	divuw	a4,a3,a4
    80007324:	f8f400a3          	sb	a5,-127(s0)
    80007328:	12a5f463          	bgeu	a1,a0,80007450 <__printf+0x278>
    8000732c:	00a00693          	li	a3,10
    80007330:	00900593          	li	a1,9
    80007334:	02d777bb          	remuw	a5,a4,a3
    80007338:	02079793          	slli	a5,a5,0x20
    8000733c:	0207d793          	srli	a5,a5,0x20
    80007340:	00fd87b3          	add	a5,s11,a5
    80007344:	0007c503          	lbu	a0,0(a5)
    80007348:	02d757bb          	divuw	a5,a4,a3
    8000734c:	f8a40123          	sb	a0,-126(s0)
    80007350:	48e5f263          	bgeu	a1,a4,800077d4 <__printf+0x5fc>
    80007354:	06300513          	li	a0,99
    80007358:	02d7f5bb          	remuw	a1,a5,a3
    8000735c:	02059593          	slli	a1,a1,0x20
    80007360:	0205d593          	srli	a1,a1,0x20
    80007364:	00bd85b3          	add	a1,s11,a1
    80007368:	0005c583          	lbu	a1,0(a1)
    8000736c:	02d7d7bb          	divuw	a5,a5,a3
    80007370:	f8b401a3          	sb	a1,-125(s0)
    80007374:	48e57263          	bgeu	a0,a4,800077f8 <__printf+0x620>
    80007378:	3e700513          	li	a0,999
    8000737c:	02d7f5bb          	remuw	a1,a5,a3
    80007380:	02059593          	slli	a1,a1,0x20
    80007384:	0205d593          	srli	a1,a1,0x20
    80007388:	00bd85b3          	add	a1,s11,a1
    8000738c:	0005c583          	lbu	a1,0(a1)
    80007390:	02d7d7bb          	divuw	a5,a5,a3
    80007394:	f8b40223          	sb	a1,-124(s0)
    80007398:	46e57663          	bgeu	a0,a4,80007804 <__printf+0x62c>
    8000739c:	02d7f5bb          	remuw	a1,a5,a3
    800073a0:	02059593          	slli	a1,a1,0x20
    800073a4:	0205d593          	srli	a1,a1,0x20
    800073a8:	00bd85b3          	add	a1,s11,a1
    800073ac:	0005c583          	lbu	a1,0(a1)
    800073b0:	02d7d7bb          	divuw	a5,a5,a3
    800073b4:	f8b402a3          	sb	a1,-123(s0)
    800073b8:	46ea7863          	bgeu	s4,a4,80007828 <__printf+0x650>
    800073bc:	02d7f5bb          	remuw	a1,a5,a3
    800073c0:	02059593          	slli	a1,a1,0x20
    800073c4:	0205d593          	srli	a1,a1,0x20
    800073c8:	00bd85b3          	add	a1,s11,a1
    800073cc:	0005c583          	lbu	a1,0(a1)
    800073d0:	02d7d7bb          	divuw	a5,a5,a3
    800073d4:	f8b40323          	sb	a1,-122(s0)
    800073d8:	3eeaf863          	bgeu	s5,a4,800077c8 <__printf+0x5f0>
    800073dc:	02d7f5bb          	remuw	a1,a5,a3
    800073e0:	02059593          	slli	a1,a1,0x20
    800073e4:	0205d593          	srli	a1,a1,0x20
    800073e8:	00bd85b3          	add	a1,s11,a1
    800073ec:	0005c583          	lbu	a1,0(a1)
    800073f0:	02d7d7bb          	divuw	a5,a5,a3
    800073f4:	f8b403a3          	sb	a1,-121(s0)
    800073f8:	42eb7e63          	bgeu	s6,a4,80007834 <__printf+0x65c>
    800073fc:	02d7f5bb          	remuw	a1,a5,a3
    80007400:	02059593          	slli	a1,a1,0x20
    80007404:	0205d593          	srli	a1,a1,0x20
    80007408:	00bd85b3          	add	a1,s11,a1
    8000740c:	0005c583          	lbu	a1,0(a1)
    80007410:	02d7d7bb          	divuw	a5,a5,a3
    80007414:	f8b40423          	sb	a1,-120(s0)
    80007418:	42ebfc63          	bgeu	s7,a4,80007850 <__printf+0x678>
    8000741c:	02079793          	slli	a5,a5,0x20
    80007420:	0207d793          	srli	a5,a5,0x20
    80007424:	00fd8db3          	add	s11,s11,a5
    80007428:	000dc703          	lbu	a4,0(s11)
    8000742c:	00a00793          	li	a5,10
    80007430:	00900c93          	li	s9,9
    80007434:	f8e404a3          	sb	a4,-119(s0)
    80007438:	00065c63          	bgez	a2,80007450 <__printf+0x278>
    8000743c:	f9040713          	addi	a4,s0,-112
    80007440:	00f70733          	add	a4,a4,a5
    80007444:	02d00693          	li	a3,45
    80007448:	fed70823          	sb	a3,-16(a4)
    8000744c:	00078c93          	mv	s9,a5
    80007450:	f8040793          	addi	a5,s0,-128
    80007454:	01978cb3          	add	s9,a5,s9
    80007458:	f7f40d13          	addi	s10,s0,-129
    8000745c:	000cc503          	lbu	a0,0(s9)
    80007460:	fffc8c93          	addi	s9,s9,-1
    80007464:	00000097          	auipc	ra,0x0
    80007468:	b90080e7          	jalr	-1136(ra) # 80006ff4 <consputc>
    8000746c:	ffac98e3          	bne	s9,s10,8000745c <__printf+0x284>
    80007470:	00094503          	lbu	a0,0(s2)
    80007474:	e00514e3          	bnez	a0,8000727c <__printf+0xa4>
    80007478:	1a0c1663          	bnez	s8,80007624 <__printf+0x44c>
    8000747c:	08813083          	ld	ra,136(sp)
    80007480:	08013403          	ld	s0,128(sp)
    80007484:	07813483          	ld	s1,120(sp)
    80007488:	07013903          	ld	s2,112(sp)
    8000748c:	06813983          	ld	s3,104(sp)
    80007490:	06013a03          	ld	s4,96(sp)
    80007494:	05813a83          	ld	s5,88(sp)
    80007498:	05013b03          	ld	s6,80(sp)
    8000749c:	04813b83          	ld	s7,72(sp)
    800074a0:	04013c03          	ld	s8,64(sp)
    800074a4:	03813c83          	ld	s9,56(sp)
    800074a8:	03013d03          	ld	s10,48(sp)
    800074ac:	02813d83          	ld	s11,40(sp)
    800074b0:	0d010113          	addi	sp,sp,208
    800074b4:	00008067          	ret
    800074b8:	07300713          	li	a4,115
    800074bc:	1ce78a63          	beq	a5,a4,80007690 <__printf+0x4b8>
    800074c0:	07800713          	li	a4,120
    800074c4:	1ee79e63          	bne	a5,a4,800076c0 <__printf+0x4e8>
    800074c8:	f7843783          	ld	a5,-136(s0)
    800074cc:	0007a703          	lw	a4,0(a5)
    800074d0:	00878793          	addi	a5,a5,8
    800074d4:	f6f43c23          	sd	a5,-136(s0)
    800074d8:	28074263          	bltz	a4,8000775c <__printf+0x584>
    800074dc:	00002d97          	auipc	s11,0x2
    800074e0:	264d8d93          	addi	s11,s11,612 # 80009740 <digits>
    800074e4:	00f77793          	andi	a5,a4,15
    800074e8:	00fd87b3          	add	a5,s11,a5
    800074ec:	0007c683          	lbu	a3,0(a5)
    800074f0:	00f00613          	li	a2,15
    800074f4:	0007079b          	sext.w	a5,a4
    800074f8:	f8d40023          	sb	a3,-128(s0)
    800074fc:	0047559b          	srliw	a1,a4,0x4
    80007500:	0047569b          	srliw	a3,a4,0x4
    80007504:	00000c93          	li	s9,0
    80007508:	0ee65063          	bge	a2,a4,800075e8 <__printf+0x410>
    8000750c:	00f6f693          	andi	a3,a3,15
    80007510:	00dd86b3          	add	a3,s11,a3
    80007514:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007518:	0087d79b          	srliw	a5,a5,0x8
    8000751c:	00100c93          	li	s9,1
    80007520:	f8d400a3          	sb	a3,-127(s0)
    80007524:	0cb67263          	bgeu	a2,a1,800075e8 <__printf+0x410>
    80007528:	00f7f693          	andi	a3,a5,15
    8000752c:	00dd86b3          	add	a3,s11,a3
    80007530:	0006c583          	lbu	a1,0(a3)
    80007534:	00f00613          	li	a2,15
    80007538:	0047d69b          	srliw	a3,a5,0x4
    8000753c:	f8b40123          	sb	a1,-126(s0)
    80007540:	0047d593          	srli	a1,a5,0x4
    80007544:	28f67e63          	bgeu	a2,a5,800077e0 <__printf+0x608>
    80007548:	00f6f693          	andi	a3,a3,15
    8000754c:	00dd86b3          	add	a3,s11,a3
    80007550:	0006c503          	lbu	a0,0(a3)
    80007554:	0087d813          	srli	a6,a5,0x8
    80007558:	0087d69b          	srliw	a3,a5,0x8
    8000755c:	f8a401a3          	sb	a0,-125(s0)
    80007560:	28b67663          	bgeu	a2,a1,800077ec <__printf+0x614>
    80007564:	00f6f693          	andi	a3,a3,15
    80007568:	00dd86b3          	add	a3,s11,a3
    8000756c:	0006c583          	lbu	a1,0(a3)
    80007570:	00c7d513          	srli	a0,a5,0xc
    80007574:	00c7d69b          	srliw	a3,a5,0xc
    80007578:	f8b40223          	sb	a1,-124(s0)
    8000757c:	29067a63          	bgeu	a2,a6,80007810 <__printf+0x638>
    80007580:	00f6f693          	andi	a3,a3,15
    80007584:	00dd86b3          	add	a3,s11,a3
    80007588:	0006c583          	lbu	a1,0(a3)
    8000758c:	0107d813          	srli	a6,a5,0x10
    80007590:	0107d69b          	srliw	a3,a5,0x10
    80007594:	f8b402a3          	sb	a1,-123(s0)
    80007598:	28a67263          	bgeu	a2,a0,8000781c <__printf+0x644>
    8000759c:	00f6f693          	andi	a3,a3,15
    800075a0:	00dd86b3          	add	a3,s11,a3
    800075a4:	0006c683          	lbu	a3,0(a3)
    800075a8:	0147d79b          	srliw	a5,a5,0x14
    800075ac:	f8d40323          	sb	a3,-122(s0)
    800075b0:	21067663          	bgeu	a2,a6,800077bc <__printf+0x5e4>
    800075b4:	02079793          	slli	a5,a5,0x20
    800075b8:	0207d793          	srli	a5,a5,0x20
    800075bc:	00fd8db3          	add	s11,s11,a5
    800075c0:	000dc683          	lbu	a3,0(s11)
    800075c4:	00800793          	li	a5,8
    800075c8:	00700c93          	li	s9,7
    800075cc:	f8d403a3          	sb	a3,-121(s0)
    800075d0:	00075c63          	bgez	a4,800075e8 <__printf+0x410>
    800075d4:	f9040713          	addi	a4,s0,-112
    800075d8:	00f70733          	add	a4,a4,a5
    800075dc:	02d00693          	li	a3,45
    800075e0:	fed70823          	sb	a3,-16(a4)
    800075e4:	00078c93          	mv	s9,a5
    800075e8:	f8040793          	addi	a5,s0,-128
    800075ec:	01978cb3          	add	s9,a5,s9
    800075f0:	f7f40d13          	addi	s10,s0,-129
    800075f4:	000cc503          	lbu	a0,0(s9)
    800075f8:	fffc8c93          	addi	s9,s9,-1
    800075fc:	00000097          	auipc	ra,0x0
    80007600:	9f8080e7          	jalr	-1544(ra) # 80006ff4 <consputc>
    80007604:	ff9d18e3          	bne	s10,s9,800075f4 <__printf+0x41c>
    80007608:	0100006f          	j	80007618 <__printf+0x440>
    8000760c:	00000097          	auipc	ra,0x0
    80007610:	9e8080e7          	jalr	-1560(ra) # 80006ff4 <consputc>
    80007614:	000c8493          	mv	s1,s9
    80007618:	00094503          	lbu	a0,0(s2)
    8000761c:	c60510e3          	bnez	a0,8000727c <__printf+0xa4>
    80007620:	e40c0ee3          	beqz	s8,8000747c <__printf+0x2a4>
    80007624:	00005517          	auipc	a0,0x5
    80007628:	27c50513          	addi	a0,a0,636 # 8000c8a0 <pr>
    8000762c:	00001097          	auipc	ra,0x1
    80007630:	94c080e7          	jalr	-1716(ra) # 80007f78 <release>
    80007634:	e49ff06f          	j	8000747c <__printf+0x2a4>
    80007638:	f7843783          	ld	a5,-136(s0)
    8000763c:	03000513          	li	a0,48
    80007640:	01000d13          	li	s10,16
    80007644:	00878713          	addi	a4,a5,8
    80007648:	0007bc83          	ld	s9,0(a5)
    8000764c:	f6e43c23          	sd	a4,-136(s0)
    80007650:	00000097          	auipc	ra,0x0
    80007654:	9a4080e7          	jalr	-1628(ra) # 80006ff4 <consputc>
    80007658:	07800513          	li	a0,120
    8000765c:	00000097          	auipc	ra,0x0
    80007660:	998080e7          	jalr	-1640(ra) # 80006ff4 <consputc>
    80007664:	00002d97          	auipc	s11,0x2
    80007668:	0dcd8d93          	addi	s11,s11,220 # 80009740 <digits>
    8000766c:	03ccd793          	srli	a5,s9,0x3c
    80007670:	00fd87b3          	add	a5,s11,a5
    80007674:	0007c503          	lbu	a0,0(a5)
    80007678:	fffd0d1b          	addiw	s10,s10,-1
    8000767c:	004c9c93          	slli	s9,s9,0x4
    80007680:	00000097          	auipc	ra,0x0
    80007684:	974080e7          	jalr	-1676(ra) # 80006ff4 <consputc>
    80007688:	fe0d12e3          	bnez	s10,8000766c <__printf+0x494>
    8000768c:	f8dff06f          	j	80007618 <__printf+0x440>
    80007690:	f7843783          	ld	a5,-136(s0)
    80007694:	0007bc83          	ld	s9,0(a5)
    80007698:	00878793          	addi	a5,a5,8
    8000769c:	f6f43c23          	sd	a5,-136(s0)
    800076a0:	000c9a63          	bnez	s9,800076b4 <__printf+0x4dc>
    800076a4:	1080006f          	j	800077ac <__printf+0x5d4>
    800076a8:	001c8c93          	addi	s9,s9,1
    800076ac:	00000097          	auipc	ra,0x0
    800076b0:	948080e7          	jalr	-1720(ra) # 80006ff4 <consputc>
    800076b4:	000cc503          	lbu	a0,0(s9)
    800076b8:	fe0518e3          	bnez	a0,800076a8 <__printf+0x4d0>
    800076bc:	f5dff06f          	j	80007618 <__printf+0x440>
    800076c0:	02500513          	li	a0,37
    800076c4:	00000097          	auipc	ra,0x0
    800076c8:	930080e7          	jalr	-1744(ra) # 80006ff4 <consputc>
    800076cc:	000c8513          	mv	a0,s9
    800076d0:	00000097          	auipc	ra,0x0
    800076d4:	924080e7          	jalr	-1756(ra) # 80006ff4 <consputc>
    800076d8:	f41ff06f          	j	80007618 <__printf+0x440>
    800076dc:	02500513          	li	a0,37
    800076e0:	00000097          	auipc	ra,0x0
    800076e4:	914080e7          	jalr	-1772(ra) # 80006ff4 <consputc>
    800076e8:	f31ff06f          	j	80007618 <__printf+0x440>
    800076ec:	00030513          	mv	a0,t1
    800076f0:	00000097          	auipc	ra,0x0
    800076f4:	7bc080e7          	jalr	1980(ra) # 80007eac <acquire>
    800076f8:	b4dff06f          	j	80007244 <__printf+0x6c>
    800076fc:	40c0053b          	negw	a0,a2
    80007700:	00a00713          	li	a4,10
    80007704:	02e576bb          	remuw	a3,a0,a4
    80007708:	00002d97          	auipc	s11,0x2
    8000770c:	038d8d93          	addi	s11,s11,56 # 80009740 <digits>
    80007710:	ff700593          	li	a1,-9
    80007714:	02069693          	slli	a3,a3,0x20
    80007718:	0206d693          	srli	a3,a3,0x20
    8000771c:	00dd86b3          	add	a3,s11,a3
    80007720:	0006c683          	lbu	a3,0(a3)
    80007724:	02e557bb          	divuw	a5,a0,a4
    80007728:	f8d40023          	sb	a3,-128(s0)
    8000772c:	10b65e63          	bge	a2,a1,80007848 <__printf+0x670>
    80007730:	06300593          	li	a1,99
    80007734:	02e7f6bb          	remuw	a3,a5,a4
    80007738:	02069693          	slli	a3,a3,0x20
    8000773c:	0206d693          	srli	a3,a3,0x20
    80007740:	00dd86b3          	add	a3,s11,a3
    80007744:	0006c683          	lbu	a3,0(a3)
    80007748:	02e7d73b          	divuw	a4,a5,a4
    8000774c:	00200793          	li	a5,2
    80007750:	f8d400a3          	sb	a3,-127(s0)
    80007754:	bca5ece3          	bltu	a1,a0,8000732c <__printf+0x154>
    80007758:	ce5ff06f          	j	8000743c <__printf+0x264>
    8000775c:	40e007bb          	negw	a5,a4
    80007760:	00002d97          	auipc	s11,0x2
    80007764:	fe0d8d93          	addi	s11,s11,-32 # 80009740 <digits>
    80007768:	00f7f693          	andi	a3,a5,15
    8000776c:	00dd86b3          	add	a3,s11,a3
    80007770:	0006c583          	lbu	a1,0(a3)
    80007774:	ff100613          	li	a2,-15
    80007778:	0047d69b          	srliw	a3,a5,0x4
    8000777c:	f8b40023          	sb	a1,-128(s0)
    80007780:	0047d59b          	srliw	a1,a5,0x4
    80007784:	0ac75e63          	bge	a4,a2,80007840 <__printf+0x668>
    80007788:	00f6f693          	andi	a3,a3,15
    8000778c:	00dd86b3          	add	a3,s11,a3
    80007790:	0006c603          	lbu	a2,0(a3)
    80007794:	00f00693          	li	a3,15
    80007798:	0087d79b          	srliw	a5,a5,0x8
    8000779c:	f8c400a3          	sb	a2,-127(s0)
    800077a0:	d8b6e4e3          	bltu	a3,a1,80007528 <__printf+0x350>
    800077a4:	00200793          	li	a5,2
    800077a8:	e2dff06f          	j	800075d4 <__printf+0x3fc>
    800077ac:	00002c97          	auipc	s9,0x2
    800077b0:	f74c8c93          	addi	s9,s9,-140 # 80009720 <CONSOLE_STATUS+0x710>
    800077b4:	02800513          	li	a0,40
    800077b8:	ef1ff06f          	j	800076a8 <__printf+0x4d0>
    800077bc:	00700793          	li	a5,7
    800077c0:	00600c93          	li	s9,6
    800077c4:	e0dff06f          	j	800075d0 <__printf+0x3f8>
    800077c8:	00700793          	li	a5,7
    800077cc:	00600c93          	li	s9,6
    800077d0:	c69ff06f          	j	80007438 <__printf+0x260>
    800077d4:	00300793          	li	a5,3
    800077d8:	00200c93          	li	s9,2
    800077dc:	c5dff06f          	j	80007438 <__printf+0x260>
    800077e0:	00300793          	li	a5,3
    800077e4:	00200c93          	li	s9,2
    800077e8:	de9ff06f          	j	800075d0 <__printf+0x3f8>
    800077ec:	00400793          	li	a5,4
    800077f0:	00300c93          	li	s9,3
    800077f4:	dddff06f          	j	800075d0 <__printf+0x3f8>
    800077f8:	00400793          	li	a5,4
    800077fc:	00300c93          	li	s9,3
    80007800:	c39ff06f          	j	80007438 <__printf+0x260>
    80007804:	00500793          	li	a5,5
    80007808:	00400c93          	li	s9,4
    8000780c:	c2dff06f          	j	80007438 <__printf+0x260>
    80007810:	00500793          	li	a5,5
    80007814:	00400c93          	li	s9,4
    80007818:	db9ff06f          	j	800075d0 <__printf+0x3f8>
    8000781c:	00600793          	li	a5,6
    80007820:	00500c93          	li	s9,5
    80007824:	dadff06f          	j	800075d0 <__printf+0x3f8>
    80007828:	00600793          	li	a5,6
    8000782c:	00500c93          	li	s9,5
    80007830:	c09ff06f          	j	80007438 <__printf+0x260>
    80007834:	00800793          	li	a5,8
    80007838:	00700c93          	li	s9,7
    8000783c:	bfdff06f          	j	80007438 <__printf+0x260>
    80007840:	00100793          	li	a5,1
    80007844:	d91ff06f          	j	800075d4 <__printf+0x3fc>
    80007848:	00100793          	li	a5,1
    8000784c:	bf1ff06f          	j	8000743c <__printf+0x264>
    80007850:	00900793          	li	a5,9
    80007854:	00800c93          	li	s9,8
    80007858:	be1ff06f          	j	80007438 <__printf+0x260>
    8000785c:	00002517          	auipc	a0,0x2
    80007860:	ecc50513          	addi	a0,a0,-308 # 80009728 <CONSOLE_STATUS+0x718>
    80007864:	00000097          	auipc	ra,0x0
    80007868:	918080e7          	jalr	-1768(ra) # 8000717c <panic>

000000008000786c <printfinit>:
    8000786c:	fe010113          	addi	sp,sp,-32
    80007870:	00813823          	sd	s0,16(sp)
    80007874:	00913423          	sd	s1,8(sp)
    80007878:	00113c23          	sd	ra,24(sp)
    8000787c:	02010413          	addi	s0,sp,32
    80007880:	00005497          	auipc	s1,0x5
    80007884:	02048493          	addi	s1,s1,32 # 8000c8a0 <pr>
    80007888:	00048513          	mv	a0,s1
    8000788c:	00002597          	auipc	a1,0x2
    80007890:	eac58593          	addi	a1,a1,-340 # 80009738 <CONSOLE_STATUS+0x728>
    80007894:	00000097          	auipc	ra,0x0
    80007898:	5f4080e7          	jalr	1524(ra) # 80007e88 <initlock>
    8000789c:	01813083          	ld	ra,24(sp)
    800078a0:	01013403          	ld	s0,16(sp)
    800078a4:	0004ac23          	sw	zero,24(s1)
    800078a8:	00813483          	ld	s1,8(sp)
    800078ac:	02010113          	addi	sp,sp,32
    800078b0:	00008067          	ret

00000000800078b4 <uartinit>:
    800078b4:	ff010113          	addi	sp,sp,-16
    800078b8:	00813423          	sd	s0,8(sp)
    800078bc:	01010413          	addi	s0,sp,16
    800078c0:	100007b7          	lui	a5,0x10000
    800078c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800078c8:	f8000713          	li	a4,-128
    800078cc:	00e781a3          	sb	a4,3(a5)
    800078d0:	00300713          	li	a4,3
    800078d4:	00e78023          	sb	a4,0(a5)
    800078d8:	000780a3          	sb	zero,1(a5)
    800078dc:	00e781a3          	sb	a4,3(a5)
    800078e0:	00700693          	li	a3,7
    800078e4:	00d78123          	sb	a3,2(a5)
    800078e8:	00e780a3          	sb	a4,1(a5)
    800078ec:	00813403          	ld	s0,8(sp)
    800078f0:	01010113          	addi	sp,sp,16
    800078f4:	00008067          	ret

00000000800078f8 <uartputc>:
    800078f8:	00004797          	auipc	a5,0x4
    800078fc:	cd07a783          	lw	a5,-816(a5) # 8000b5c8 <panicked>
    80007900:	00078463          	beqz	a5,80007908 <uartputc+0x10>
    80007904:	0000006f          	j	80007904 <uartputc+0xc>
    80007908:	fd010113          	addi	sp,sp,-48
    8000790c:	02813023          	sd	s0,32(sp)
    80007910:	00913c23          	sd	s1,24(sp)
    80007914:	01213823          	sd	s2,16(sp)
    80007918:	01313423          	sd	s3,8(sp)
    8000791c:	02113423          	sd	ra,40(sp)
    80007920:	03010413          	addi	s0,sp,48
    80007924:	00004917          	auipc	s2,0x4
    80007928:	cac90913          	addi	s2,s2,-852 # 8000b5d0 <uart_tx_r>
    8000792c:	00093783          	ld	a5,0(s2)
    80007930:	00004497          	auipc	s1,0x4
    80007934:	ca848493          	addi	s1,s1,-856 # 8000b5d8 <uart_tx_w>
    80007938:	0004b703          	ld	a4,0(s1)
    8000793c:	02078693          	addi	a3,a5,32
    80007940:	00050993          	mv	s3,a0
    80007944:	02e69c63          	bne	a3,a4,8000797c <uartputc+0x84>
    80007948:	00001097          	auipc	ra,0x1
    8000794c:	834080e7          	jalr	-1996(ra) # 8000817c <push_on>
    80007950:	00093783          	ld	a5,0(s2)
    80007954:	0004b703          	ld	a4,0(s1)
    80007958:	02078793          	addi	a5,a5,32
    8000795c:	00e79463          	bne	a5,a4,80007964 <uartputc+0x6c>
    80007960:	0000006f          	j	80007960 <uartputc+0x68>
    80007964:	00001097          	auipc	ra,0x1
    80007968:	88c080e7          	jalr	-1908(ra) # 800081f0 <pop_on>
    8000796c:	00093783          	ld	a5,0(s2)
    80007970:	0004b703          	ld	a4,0(s1)
    80007974:	02078693          	addi	a3,a5,32
    80007978:	fce688e3          	beq	a3,a4,80007948 <uartputc+0x50>
    8000797c:	01f77693          	andi	a3,a4,31
    80007980:	00005597          	auipc	a1,0x5
    80007984:	f4058593          	addi	a1,a1,-192 # 8000c8c0 <uart_tx_buf>
    80007988:	00d586b3          	add	a3,a1,a3
    8000798c:	00170713          	addi	a4,a4,1
    80007990:	01368023          	sb	s3,0(a3)
    80007994:	00e4b023          	sd	a4,0(s1)
    80007998:	10000637          	lui	a2,0x10000
    8000799c:	02f71063          	bne	a4,a5,800079bc <uartputc+0xc4>
    800079a0:	0340006f          	j	800079d4 <uartputc+0xdc>
    800079a4:	00074703          	lbu	a4,0(a4)
    800079a8:	00f93023          	sd	a5,0(s2)
    800079ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800079b0:	00093783          	ld	a5,0(s2)
    800079b4:	0004b703          	ld	a4,0(s1)
    800079b8:	00f70e63          	beq	a4,a5,800079d4 <uartputc+0xdc>
    800079bc:	00564683          	lbu	a3,5(a2)
    800079c0:	01f7f713          	andi	a4,a5,31
    800079c4:	00e58733          	add	a4,a1,a4
    800079c8:	0206f693          	andi	a3,a3,32
    800079cc:	00178793          	addi	a5,a5,1
    800079d0:	fc069ae3          	bnez	a3,800079a4 <uartputc+0xac>
    800079d4:	02813083          	ld	ra,40(sp)
    800079d8:	02013403          	ld	s0,32(sp)
    800079dc:	01813483          	ld	s1,24(sp)
    800079e0:	01013903          	ld	s2,16(sp)
    800079e4:	00813983          	ld	s3,8(sp)
    800079e8:	03010113          	addi	sp,sp,48
    800079ec:	00008067          	ret

00000000800079f0 <uartputc_sync>:
    800079f0:	ff010113          	addi	sp,sp,-16
    800079f4:	00813423          	sd	s0,8(sp)
    800079f8:	01010413          	addi	s0,sp,16
    800079fc:	00004717          	auipc	a4,0x4
    80007a00:	bcc72703          	lw	a4,-1076(a4) # 8000b5c8 <panicked>
    80007a04:	02071663          	bnez	a4,80007a30 <uartputc_sync+0x40>
    80007a08:	00050793          	mv	a5,a0
    80007a0c:	100006b7          	lui	a3,0x10000
    80007a10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007a14:	02077713          	andi	a4,a4,32
    80007a18:	fe070ce3          	beqz	a4,80007a10 <uartputc_sync+0x20>
    80007a1c:	0ff7f793          	andi	a5,a5,255
    80007a20:	00f68023          	sb	a5,0(a3)
    80007a24:	00813403          	ld	s0,8(sp)
    80007a28:	01010113          	addi	sp,sp,16
    80007a2c:	00008067          	ret
    80007a30:	0000006f          	j	80007a30 <uartputc_sync+0x40>

0000000080007a34 <uartstart>:
    80007a34:	ff010113          	addi	sp,sp,-16
    80007a38:	00813423          	sd	s0,8(sp)
    80007a3c:	01010413          	addi	s0,sp,16
    80007a40:	00004617          	auipc	a2,0x4
    80007a44:	b9060613          	addi	a2,a2,-1136 # 8000b5d0 <uart_tx_r>
    80007a48:	00004517          	auipc	a0,0x4
    80007a4c:	b9050513          	addi	a0,a0,-1136 # 8000b5d8 <uart_tx_w>
    80007a50:	00063783          	ld	a5,0(a2)
    80007a54:	00053703          	ld	a4,0(a0)
    80007a58:	04f70263          	beq	a4,a5,80007a9c <uartstart+0x68>
    80007a5c:	100005b7          	lui	a1,0x10000
    80007a60:	00005817          	auipc	a6,0x5
    80007a64:	e6080813          	addi	a6,a6,-416 # 8000c8c0 <uart_tx_buf>
    80007a68:	01c0006f          	j	80007a84 <uartstart+0x50>
    80007a6c:	0006c703          	lbu	a4,0(a3)
    80007a70:	00f63023          	sd	a5,0(a2)
    80007a74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a78:	00063783          	ld	a5,0(a2)
    80007a7c:	00053703          	ld	a4,0(a0)
    80007a80:	00f70e63          	beq	a4,a5,80007a9c <uartstart+0x68>
    80007a84:	01f7f713          	andi	a4,a5,31
    80007a88:	00e806b3          	add	a3,a6,a4
    80007a8c:	0055c703          	lbu	a4,5(a1)
    80007a90:	00178793          	addi	a5,a5,1
    80007a94:	02077713          	andi	a4,a4,32
    80007a98:	fc071ae3          	bnez	a4,80007a6c <uartstart+0x38>
    80007a9c:	00813403          	ld	s0,8(sp)
    80007aa0:	01010113          	addi	sp,sp,16
    80007aa4:	00008067          	ret

0000000080007aa8 <uartgetc>:
    80007aa8:	ff010113          	addi	sp,sp,-16
    80007aac:	00813423          	sd	s0,8(sp)
    80007ab0:	01010413          	addi	s0,sp,16
    80007ab4:	10000737          	lui	a4,0x10000
    80007ab8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007abc:	0017f793          	andi	a5,a5,1
    80007ac0:	00078c63          	beqz	a5,80007ad8 <uartgetc+0x30>
    80007ac4:	00074503          	lbu	a0,0(a4)
    80007ac8:	0ff57513          	andi	a0,a0,255
    80007acc:	00813403          	ld	s0,8(sp)
    80007ad0:	01010113          	addi	sp,sp,16
    80007ad4:	00008067          	ret
    80007ad8:	fff00513          	li	a0,-1
    80007adc:	ff1ff06f          	j	80007acc <uartgetc+0x24>

0000000080007ae0 <uartintr>:
    80007ae0:	100007b7          	lui	a5,0x10000
    80007ae4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ae8:	0017f793          	andi	a5,a5,1
    80007aec:	0a078463          	beqz	a5,80007b94 <uartintr+0xb4>
    80007af0:	fe010113          	addi	sp,sp,-32
    80007af4:	00813823          	sd	s0,16(sp)
    80007af8:	00913423          	sd	s1,8(sp)
    80007afc:	00113c23          	sd	ra,24(sp)
    80007b00:	02010413          	addi	s0,sp,32
    80007b04:	100004b7          	lui	s1,0x10000
    80007b08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007b0c:	0ff57513          	andi	a0,a0,255
    80007b10:	fffff097          	auipc	ra,0xfffff
    80007b14:	534080e7          	jalr	1332(ra) # 80007044 <consoleintr>
    80007b18:	0054c783          	lbu	a5,5(s1)
    80007b1c:	0017f793          	andi	a5,a5,1
    80007b20:	fe0794e3          	bnez	a5,80007b08 <uartintr+0x28>
    80007b24:	00004617          	auipc	a2,0x4
    80007b28:	aac60613          	addi	a2,a2,-1364 # 8000b5d0 <uart_tx_r>
    80007b2c:	00004517          	auipc	a0,0x4
    80007b30:	aac50513          	addi	a0,a0,-1364 # 8000b5d8 <uart_tx_w>
    80007b34:	00063783          	ld	a5,0(a2)
    80007b38:	00053703          	ld	a4,0(a0)
    80007b3c:	04f70263          	beq	a4,a5,80007b80 <uartintr+0xa0>
    80007b40:	100005b7          	lui	a1,0x10000
    80007b44:	00005817          	auipc	a6,0x5
    80007b48:	d7c80813          	addi	a6,a6,-644 # 8000c8c0 <uart_tx_buf>
    80007b4c:	01c0006f          	j	80007b68 <uartintr+0x88>
    80007b50:	0006c703          	lbu	a4,0(a3)
    80007b54:	00f63023          	sd	a5,0(a2)
    80007b58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b5c:	00063783          	ld	a5,0(a2)
    80007b60:	00053703          	ld	a4,0(a0)
    80007b64:	00f70e63          	beq	a4,a5,80007b80 <uartintr+0xa0>
    80007b68:	01f7f713          	andi	a4,a5,31
    80007b6c:	00e806b3          	add	a3,a6,a4
    80007b70:	0055c703          	lbu	a4,5(a1)
    80007b74:	00178793          	addi	a5,a5,1
    80007b78:	02077713          	andi	a4,a4,32
    80007b7c:	fc071ae3          	bnez	a4,80007b50 <uartintr+0x70>
    80007b80:	01813083          	ld	ra,24(sp)
    80007b84:	01013403          	ld	s0,16(sp)
    80007b88:	00813483          	ld	s1,8(sp)
    80007b8c:	02010113          	addi	sp,sp,32
    80007b90:	00008067          	ret
    80007b94:	00004617          	auipc	a2,0x4
    80007b98:	a3c60613          	addi	a2,a2,-1476 # 8000b5d0 <uart_tx_r>
    80007b9c:	00004517          	auipc	a0,0x4
    80007ba0:	a3c50513          	addi	a0,a0,-1476 # 8000b5d8 <uart_tx_w>
    80007ba4:	00063783          	ld	a5,0(a2)
    80007ba8:	00053703          	ld	a4,0(a0)
    80007bac:	04f70263          	beq	a4,a5,80007bf0 <uartintr+0x110>
    80007bb0:	100005b7          	lui	a1,0x10000
    80007bb4:	00005817          	auipc	a6,0x5
    80007bb8:	d0c80813          	addi	a6,a6,-756 # 8000c8c0 <uart_tx_buf>
    80007bbc:	01c0006f          	j	80007bd8 <uartintr+0xf8>
    80007bc0:	0006c703          	lbu	a4,0(a3)
    80007bc4:	00f63023          	sd	a5,0(a2)
    80007bc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bcc:	00063783          	ld	a5,0(a2)
    80007bd0:	00053703          	ld	a4,0(a0)
    80007bd4:	02f70063          	beq	a4,a5,80007bf4 <uartintr+0x114>
    80007bd8:	01f7f713          	andi	a4,a5,31
    80007bdc:	00e806b3          	add	a3,a6,a4
    80007be0:	0055c703          	lbu	a4,5(a1)
    80007be4:	00178793          	addi	a5,a5,1
    80007be8:	02077713          	andi	a4,a4,32
    80007bec:	fc071ae3          	bnez	a4,80007bc0 <uartintr+0xe0>
    80007bf0:	00008067          	ret
    80007bf4:	00008067          	ret

0000000080007bf8 <kinit>:
    80007bf8:	fc010113          	addi	sp,sp,-64
    80007bfc:	02913423          	sd	s1,40(sp)
    80007c00:	fffff7b7          	lui	a5,0xfffff
    80007c04:	00006497          	auipc	s1,0x6
    80007c08:	cdb48493          	addi	s1,s1,-805 # 8000d8df <end+0xfff>
    80007c0c:	02813823          	sd	s0,48(sp)
    80007c10:	01313c23          	sd	s3,24(sp)
    80007c14:	00f4f4b3          	and	s1,s1,a5
    80007c18:	02113c23          	sd	ra,56(sp)
    80007c1c:	03213023          	sd	s2,32(sp)
    80007c20:	01413823          	sd	s4,16(sp)
    80007c24:	01513423          	sd	s5,8(sp)
    80007c28:	04010413          	addi	s0,sp,64
    80007c2c:	000017b7          	lui	a5,0x1
    80007c30:	01100993          	li	s3,17
    80007c34:	00f487b3          	add	a5,s1,a5
    80007c38:	01b99993          	slli	s3,s3,0x1b
    80007c3c:	06f9e063          	bltu	s3,a5,80007c9c <kinit+0xa4>
    80007c40:	00005a97          	auipc	s5,0x5
    80007c44:	ca0a8a93          	addi	s5,s5,-864 # 8000c8e0 <end>
    80007c48:	0754ec63          	bltu	s1,s5,80007cc0 <kinit+0xc8>
    80007c4c:	0734fa63          	bgeu	s1,s3,80007cc0 <kinit+0xc8>
    80007c50:	00088a37          	lui	s4,0x88
    80007c54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007c58:	00004917          	auipc	s2,0x4
    80007c5c:	98890913          	addi	s2,s2,-1656 # 8000b5e0 <kmem>
    80007c60:	00ca1a13          	slli	s4,s4,0xc
    80007c64:	0140006f          	j	80007c78 <kinit+0x80>
    80007c68:	000017b7          	lui	a5,0x1
    80007c6c:	00f484b3          	add	s1,s1,a5
    80007c70:	0554e863          	bltu	s1,s5,80007cc0 <kinit+0xc8>
    80007c74:	0534f663          	bgeu	s1,s3,80007cc0 <kinit+0xc8>
    80007c78:	00001637          	lui	a2,0x1
    80007c7c:	00100593          	li	a1,1
    80007c80:	00048513          	mv	a0,s1
    80007c84:	00000097          	auipc	ra,0x0
    80007c88:	5e4080e7          	jalr	1508(ra) # 80008268 <__memset>
    80007c8c:	00093783          	ld	a5,0(s2)
    80007c90:	00f4b023          	sd	a5,0(s1)
    80007c94:	00993023          	sd	s1,0(s2)
    80007c98:	fd4498e3          	bne	s1,s4,80007c68 <kinit+0x70>
    80007c9c:	03813083          	ld	ra,56(sp)
    80007ca0:	03013403          	ld	s0,48(sp)
    80007ca4:	02813483          	ld	s1,40(sp)
    80007ca8:	02013903          	ld	s2,32(sp)
    80007cac:	01813983          	ld	s3,24(sp)
    80007cb0:	01013a03          	ld	s4,16(sp)
    80007cb4:	00813a83          	ld	s5,8(sp)
    80007cb8:	04010113          	addi	sp,sp,64
    80007cbc:	00008067          	ret
    80007cc0:	00002517          	auipc	a0,0x2
    80007cc4:	a9850513          	addi	a0,a0,-1384 # 80009758 <digits+0x18>
    80007cc8:	fffff097          	auipc	ra,0xfffff
    80007ccc:	4b4080e7          	jalr	1204(ra) # 8000717c <panic>

0000000080007cd0 <freerange>:
    80007cd0:	fc010113          	addi	sp,sp,-64
    80007cd4:	000017b7          	lui	a5,0x1
    80007cd8:	02913423          	sd	s1,40(sp)
    80007cdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ce0:	009504b3          	add	s1,a0,s1
    80007ce4:	fffff537          	lui	a0,0xfffff
    80007ce8:	02813823          	sd	s0,48(sp)
    80007cec:	02113c23          	sd	ra,56(sp)
    80007cf0:	03213023          	sd	s2,32(sp)
    80007cf4:	01313c23          	sd	s3,24(sp)
    80007cf8:	01413823          	sd	s4,16(sp)
    80007cfc:	01513423          	sd	s5,8(sp)
    80007d00:	01613023          	sd	s6,0(sp)
    80007d04:	04010413          	addi	s0,sp,64
    80007d08:	00a4f4b3          	and	s1,s1,a0
    80007d0c:	00f487b3          	add	a5,s1,a5
    80007d10:	06f5e463          	bltu	a1,a5,80007d78 <freerange+0xa8>
    80007d14:	00005a97          	auipc	s5,0x5
    80007d18:	bcca8a93          	addi	s5,s5,-1076 # 8000c8e0 <end>
    80007d1c:	0954e263          	bltu	s1,s5,80007da0 <freerange+0xd0>
    80007d20:	01100993          	li	s3,17
    80007d24:	01b99993          	slli	s3,s3,0x1b
    80007d28:	0734fc63          	bgeu	s1,s3,80007da0 <freerange+0xd0>
    80007d2c:	00058a13          	mv	s4,a1
    80007d30:	00004917          	auipc	s2,0x4
    80007d34:	8b090913          	addi	s2,s2,-1872 # 8000b5e0 <kmem>
    80007d38:	00002b37          	lui	s6,0x2
    80007d3c:	0140006f          	j	80007d50 <freerange+0x80>
    80007d40:	000017b7          	lui	a5,0x1
    80007d44:	00f484b3          	add	s1,s1,a5
    80007d48:	0554ec63          	bltu	s1,s5,80007da0 <freerange+0xd0>
    80007d4c:	0534fa63          	bgeu	s1,s3,80007da0 <freerange+0xd0>
    80007d50:	00001637          	lui	a2,0x1
    80007d54:	00100593          	li	a1,1
    80007d58:	00048513          	mv	a0,s1
    80007d5c:	00000097          	auipc	ra,0x0
    80007d60:	50c080e7          	jalr	1292(ra) # 80008268 <__memset>
    80007d64:	00093703          	ld	a4,0(s2)
    80007d68:	016487b3          	add	a5,s1,s6
    80007d6c:	00e4b023          	sd	a4,0(s1)
    80007d70:	00993023          	sd	s1,0(s2)
    80007d74:	fcfa76e3          	bgeu	s4,a5,80007d40 <freerange+0x70>
    80007d78:	03813083          	ld	ra,56(sp)
    80007d7c:	03013403          	ld	s0,48(sp)
    80007d80:	02813483          	ld	s1,40(sp)
    80007d84:	02013903          	ld	s2,32(sp)
    80007d88:	01813983          	ld	s3,24(sp)
    80007d8c:	01013a03          	ld	s4,16(sp)
    80007d90:	00813a83          	ld	s5,8(sp)
    80007d94:	00013b03          	ld	s6,0(sp)
    80007d98:	04010113          	addi	sp,sp,64
    80007d9c:	00008067          	ret
    80007da0:	00002517          	auipc	a0,0x2
    80007da4:	9b850513          	addi	a0,a0,-1608 # 80009758 <digits+0x18>
    80007da8:	fffff097          	auipc	ra,0xfffff
    80007dac:	3d4080e7          	jalr	980(ra) # 8000717c <panic>

0000000080007db0 <kfree>:
    80007db0:	fe010113          	addi	sp,sp,-32
    80007db4:	00813823          	sd	s0,16(sp)
    80007db8:	00113c23          	sd	ra,24(sp)
    80007dbc:	00913423          	sd	s1,8(sp)
    80007dc0:	02010413          	addi	s0,sp,32
    80007dc4:	03451793          	slli	a5,a0,0x34
    80007dc8:	04079c63          	bnez	a5,80007e20 <kfree+0x70>
    80007dcc:	00005797          	auipc	a5,0x5
    80007dd0:	b1478793          	addi	a5,a5,-1260 # 8000c8e0 <end>
    80007dd4:	00050493          	mv	s1,a0
    80007dd8:	04f56463          	bltu	a0,a5,80007e20 <kfree+0x70>
    80007ddc:	01100793          	li	a5,17
    80007de0:	01b79793          	slli	a5,a5,0x1b
    80007de4:	02f57e63          	bgeu	a0,a5,80007e20 <kfree+0x70>
    80007de8:	00001637          	lui	a2,0x1
    80007dec:	00100593          	li	a1,1
    80007df0:	00000097          	auipc	ra,0x0
    80007df4:	478080e7          	jalr	1144(ra) # 80008268 <__memset>
    80007df8:	00003797          	auipc	a5,0x3
    80007dfc:	7e878793          	addi	a5,a5,2024 # 8000b5e0 <kmem>
    80007e00:	0007b703          	ld	a4,0(a5)
    80007e04:	01813083          	ld	ra,24(sp)
    80007e08:	01013403          	ld	s0,16(sp)
    80007e0c:	00e4b023          	sd	a4,0(s1)
    80007e10:	0097b023          	sd	s1,0(a5)
    80007e14:	00813483          	ld	s1,8(sp)
    80007e18:	02010113          	addi	sp,sp,32
    80007e1c:	00008067          	ret
    80007e20:	00002517          	auipc	a0,0x2
    80007e24:	93850513          	addi	a0,a0,-1736 # 80009758 <digits+0x18>
    80007e28:	fffff097          	auipc	ra,0xfffff
    80007e2c:	354080e7          	jalr	852(ra) # 8000717c <panic>

0000000080007e30 <kalloc>:
    80007e30:	fe010113          	addi	sp,sp,-32
    80007e34:	00813823          	sd	s0,16(sp)
    80007e38:	00913423          	sd	s1,8(sp)
    80007e3c:	00113c23          	sd	ra,24(sp)
    80007e40:	02010413          	addi	s0,sp,32
    80007e44:	00003797          	auipc	a5,0x3
    80007e48:	79c78793          	addi	a5,a5,1948 # 8000b5e0 <kmem>
    80007e4c:	0007b483          	ld	s1,0(a5)
    80007e50:	02048063          	beqz	s1,80007e70 <kalloc+0x40>
    80007e54:	0004b703          	ld	a4,0(s1)
    80007e58:	00001637          	lui	a2,0x1
    80007e5c:	00500593          	li	a1,5
    80007e60:	00048513          	mv	a0,s1
    80007e64:	00e7b023          	sd	a4,0(a5)
    80007e68:	00000097          	auipc	ra,0x0
    80007e6c:	400080e7          	jalr	1024(ra) # 80008268 <__memset>
    80007e70:	01813083          	ld	ra,24(sp)
    80007e74:	01013403          	ld	s0,16(sp)
    80007e78:	00048513          	mv	a0,s1
    80007e7c:	00813483          	ld	s1,8(sp)
    80007e80:	02010113          	addi	sp,sp,32
    80007e84:	00008067          	ret

0000000080007e88 <initlock>:
    80007e88:	ff010113          	addi	sp,sp,-16
    80007e8c:	00813423          	sd	s0,8(sp)
    80007e90:	01010413          	addi	s0,sp,16
    80007e94:	00813403          	ld	s0,8(sp)
    80007e98:	00b53423          	sd	a1,8(a0)
    80007e9c:	00052023          	sw	zero,0(a0)
    80007ea0:	00053823          	sd	zero,16(a0)
    80007ea4:	01010113          	addi	sp,sp,16
    80007ea8:	00008067          	ret

0000000080007eac <acquire>:
    80007eac:	fe010113          	addi	sp,sp,-32
    80007eb0:	00813823          	sd	s0,16(sp)
    80007eb4:	00913423          	sd	s1,8(sp)
    80007eb8:	00113c23          	sd	ra,24(sp)
    80007ebc:	01213023          	sd	s2,0(sp)
    80007ec0:	02010413          	addi	s0,sp,32
    80007ec4:	00050493          	mv	s1,a0
    80007ec8:	10002973          	csrr	s2,sstatus
    80007ecc:	100027f3          	csrr	a5,sstatus
    80007ed0:	ffd7f793          	andi	a5,a5,-3
    80007ed4:	10079073          	csrw	sstatus,a5
    80007ed8:	fffff097          	auipc	ra,0xfffff
    80007edc:	8e8080e7          	jalr	-1816(ra) # 800067c0 <mycpu>
    80007ee0:	07852783          	lw	a5,120(a0)
    80007ee4:	06078e63          	beqz	a5,80007f60 <acquire+0xb4>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	8d8080e7          	jalr	-1832(ra) # 800067c0 <mycpu>
    80007ef0:	07852783          	lw	a5,120(a0)
    80007ef4:	0004a703          	lw	a4,0(s1)
    80007ef8:	0017879b          	addiw	a5,a5,1
    80007efc:	06f52c23          	sw	a5,120(a0)
    80007f00:	04071063          	bnez	a4,80007f40 <acquire+0x94>
    80007f04:	00100713          	li	a4,1
    80007f08:	00070793          	mv	a5,a4
    80007f0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007f10:	0007879b          	sext.w	a5,a5
    80007f14:	fe079ae3          	bnez	a5,80007f08 <acquire+0x5c>
    80007f18:	0ff0000f          	fence
    80007f1c:	fffff097          	auipc	ra,0xfffff
    80007f20:	8a4080e7          	jalr	-1884(ra) # 800067c0 <mycpu>
    80007f24:	01813083          	ld	ra,24(sp)
    80007f28:	01013403          	ld	s0,16(sp)
    80007f2c:	00a4b823          	sd	a0,16(s1)
    80007f30:	00013903          	ld	s2,0(sp)
    80007f34:	00813483          	ld	s1,8(sp)
    80007f38:	02010113          	addi	sp,sp,32
    80007f3c:	00008067          	ret
    80007f40:	0104b903          	ld	s2,16(s1)
    80007f44:	fffff097          	auipc	ra,0xfffff
    80007f48:	87c080e7          	jalr	-1924(ra) # 800067c0 <mycpu>
    80007f4c:	faa91ce3          	bne	s2,a0,80007f04 <acquire+0x58>
    80007f50:	00002517          	auipc	a0,0x2
    80007f54:	81050513          	addi	a0,a0,-2032 # 80009760 <digits+0x20>
    80007f58:	fffff097          	auipc	ra,0xfffff
    80007f5c:	224080e7          	jalr	548(ra) # 8000717c <panic>
    80007f60:	00195913          	srli	s2,s2,0x1
    80007f64:	fffff097          	auipc	ra,0xfffff
    80007f68:	85c080e7          	jalr	-1956(ra) # 800067c0 <mycpu>
    80007f6c:	00197913          	andi	s2,s2,1
    80007f70:	07252e23          	sw	s2,124(a0)
    80007f74:	f75ff06f          	j	80007ee8 <acquire+0x3c>

0000000080007f78 <release>:
    80007f78:	fe010113          	addi	sp,sp,-32
    80007f7c:	00813823          	sd	s0,16(sp)
    80007f80:	00113c23          	sd	ra,24(sp)
    80007f84:	00913423          	sd	s1,8(sp)
    80007f88:	01213023          	sd	s2,0(sp)
    80007f8c:	02010413          	addi	s0,sp,32
    80007f90:	00052783          	lw	a5,0(a0)
    80007f94:	00079a63          	bnez	a5,80007fa8 <release+0x30>
    80007f98:	00001517          	auipc	a0,0x1
    80007f9c:	7d050513          	addi	a0,a0,2000 # 80009768 <digits+0x28>
    80007fa0:	fffff097          	auipc	ra,0xfffff
    80007fa4:	1dc080e7          	jalr	476(ra) # 8000717c <panic>
    80007fa8:	01053903          	ld	s2,16(a0)
    80007fac:	00050493          	mv	s1,a0
    80007fb0:	fffff097          	auipc	ra,0xfffff
    80007fb4:	810080e7          	jalr	-2032(ra) # 800067c0 <mycpu>
    80007fb8:	fea910e3          	bne	s2,a0,80007f98 <release+0x20>
    80007fbc:	0004b823          	sd	zero,16(s1)
    80007fc0:	0ff0000f          	fence
    80007fc4:	0f50000f          	fence	iorw,ow
    80007fc8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007fcc:	ffffe097          	auipc	ra,0xffffe
    80007fd0:	7f4080e7          	jalr	2036(ra) # 800067c0 <mycpu>
    80007fd4:	100027f3          	csrr	a5,sstatus
    80007fd8:	0027f793          	andi	a5,a5,2
    80007fdc:	04079a63          	bnez	a5,80008030 <release+0xb8>
    80007fe0:	07852783          	lw	a5,120(a0)
    80007fe4:	02f05e63          	blez	a5,80008020 <release+0xa8>
    80007fe8:	fff7871b          	addiw	a4,a5,-1
    80007fec:	06e52c23          	sw	a4,120(a0)
    80007ff0:	00071c63          	bnez	a4,80008008 <release+0x90>
    80007ff4:	07c52783          	lw	a5,124(a0)
    80007ff8:	00078863          	beqz	a5,80008008 <release+0x90>
    80007ffc:	100027f3          	csrr	a5,sstatus
    80008000:	0027e793          	ori	a5,a5,2
    80008004:	10079073          	csrw	sstatus,a5
    80008008:	01813083          	ld	ra,24(sp)
    8000800c:	01013403          	ld	s0,16(sp)
    80008010:	00813483          	ld	s1,8(sp)
    80008014:	00013903          	ld	s2,0(sp)
    80008018:	02010113          	addi	sp,sp,32
    8000801c:	00008067          	ret
    80008020:	00001517          	auipc	a0,0x1
    80008024:	76850513          	addi	a0,a0,1896 # 80009788 <digits+0x48>
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	154080e7          	jalr	340(ra) # 8000717c <panic>
    80008030:	00001517          	auipc	a0,0x1
    80008034:	74050513          	addi	a0,a0,1856 # 80009770 <digits+0x30>
    80008038:	fffff097          	auipc	ra,0xfffff
    8000803c:	144080e7          	jalr	324(ra) # 8000717c <panic>

0000000080008040 <holding>:
    80008040:	00052783          	lw	a5,0(a0)
    80008044:	00079663          	bnez	a5,80008050 <holding+0x10>
    80008048:	00000513          	li	a0,0
    8000804c:	00008067          	ret
    80008050:	fe010113          	addi	sp,sp,-32
    80008054:	00813823          	sd	s0,16(sp)
    80008058:	00913423          	sd	s1,8(sp)
    8000805c:	00113c23          	sd	ra,24(sp)
    80008060:	02010413          	addi	s0,sp,32
    80008064:	01053483          	ld	s1,16(a0)
    80008068:	ffffe097          	auipc	ra,0xffffe
    8000806c:	758080e7          	jalr	1880(ra) # 800067c0 <mycpu>
    80008070:	01813083          	ld	ra,24(sp)
    80008074:	01013403          	ld	s0,16(sp)
    80008078:	40a48533          	sub	a0,s1,a0
    8000807c:	00153513          	seqz	a0,a0
    80008080:	00813483          	ld	s1,8(sp)
    80008084:	02010113          	addi	sp,sp,32
    80008088:	00008067          	ret

000000008000808c <push_off>:
    8000808c:	fe010113          	addi	sp,sp,-32
    80008090:	00813823          	sd	s0,16(sp)
    80008094:	00113c23          	sd	ra,24(sp)
    80008098:	00913423          	sd	s1,8(sp)
    8000809c:	02010413          	addi	s0,sp,32
    800080a0:	100024f3          	csrr	s1,sstatus
    800080a4:	100027f3          	csrr	a5,sstatus
    800080a8:	ffd7f793          	andi	a5,a5,-3
    800080ac:	10079073          	csrw	sstatus,a5
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	710080e7          	jalr	1808(ra) # 800067c0 <mycpu>
    800080b8:	07852783          	lw	a5,120(a0)
    800080bc:	02078663          	beqz	a5,800080e8 <push_off+0x5c>
    800080c0:	ffffe097          	auipc	ra,0xffffe
    800080c4:	700080e7          	jalr	1792(ra) # 800067c0 <mycpu>
    800080c8:	07852783          	lw	a5,120(a0)
    800080cc:	01813083          	ld	ra,24(sp)
    800080d0:	01013403          	ld	s0,16(sp)
    800080d4:	0017879b          	addiw	a5,a5,1
    800080d8:	06f52c23          	sw	a5,120(a0)
    800080dc:	00813483          	ld	s1,8(sp)
    800080e0:	02010113          	addi	sp,sp,32
    800080e4:	00008067          	ret
    800080e8:	0014d493          	srli	s1,s1,0x1
    800080ec:	ffffe097          	auipc	ra,0xffffe
    800080f0:	6d4080e7          	jalr	1748(ra) # 800067c0 <mycpu>
    800080f4:	0014f493          	andi	s1,s1,1
    800080f8:	06952e23          	sw	s1,124(a0)
    800080fc:	fc5ff06f          	j	800080c0 <push_off+0x34>

0000000080008100 <pop_off>:
    80008100:	ff010113          	addi	sp,sp,-16
    80008104:	00813023          	sd	s0,0(sp)
    80008108:	00113423          	sd	ra,8(sp)
    8000810c:	01010413          	addi	s0,sp,16
    80008110:	ffffe097          	auipc	ra,0xffffe
    80008114:	6b0080e7          	jalr	1712(ra) # 800067c0 <mycpu>
    80008118:	100027f3          	csrr	a5,sstatus
    8000811c:	0027f793          	andi	a5,a5,2
    80008120:	04079663          	bnez	a5,8000816c <pop_off+0x6c>
    80008124:	07852783          	lw	a5,120(a0)
    80008128:	02f05a63          	blez	a5,8000815c <pop_off+0x5c>
    8000812c:	fff7871b          	addiw	a4,a5,-1
    80008130:	06e52c23          	sw	a4,120(a0)
    80008134:	00071c63          	bnez	a4,8000814c <pop_off+0x4c>
    80008138:	07c52783          	lw	a5,124(a0)
    8000813c:	00078863          	beqz	a5,8000814c <pop_off+0x4c>
    80008140:	100027f3          	csrr	a5,sstatus
    80008144:	0027e793          	ori	a5,a5,2
    80008148:	10079073          	csrw	sstatus,a5
    8000814c:	00813083          	ld	ra,8(sp)
    80008150:	00013403          	ld	s0,0(sp)
    80008154:	01010113          	addi	sp,sp,16
    80008158:	00008067          	ret
    8000815c:	00001517          	auipc	a0,0x1
    80008160:	62c50513          	addi	a0,a0,1580 # 80009788 <digits+0x48>
    80008164:	fffff097          	auipc	ra,0xfffff
    80008168:	018080e7          	jalr	24(ra) # 8000717c <panic>
    8000816c:	00001517          	auipc	a0,0x1
    80008170:	60450513          	addi	a0,a0,1540 # 80009770 <digits+0x30>
    80008174:	fffff097          	auipc	ra,0xfffff
    80008178:	008080e7          	jalr	8(ra) # 8000717c <panic>

000000008000817c <push_on>:
    8000817c:	fe010113          	addi	sp,sp,-32
    80008180:	00813823          	sd	s0,16(sp)
    80008184:	00113c23          	sd	ra,24(sp)
    80008188:	00913423          	sd	s1,8(sp)
    8000818c:	02010413          	addi	s0,sp,32
    80008190:	100024f3          	csrr	s1,sstatus
    80008194:	100027f3          	csrr	a5,sstatus
    80008198:	0027e793          	ori	a5,a5,2
    8000819c:	10079073          	csrw	sstatus,a5
    800081a0:	ffffe097          	auipc	ra,0xffffe
    800081a4:	620080e7          	jalr	1568(ra) # 800067c0 <mycpu>
    800081a8:	07852783          	lw	a5,120(a0)
    800081ac:	02078663          	beqz	a5,800081d8 <push_on+0x5c>
    800081b0:	ffffe097          	auipc	ra,0xffffe
    800081b4:	610080e7          	jalr	1552(ra) # 800067c0 <mycpu>
    800081b8:	07852783          	lw	a5,120(a0)
    800081bc:	01813083          	ld	ra,24(sp)
    800081c0:	01013403          	ld	s0,16(sp)
    800081c4:	0017879b          	addiw	a5,a5,1
    800081c8:	06f52c23          	sw	a5,120(a0)
    800081cc:	00813483          	ld	s1,8(sp)
    800081d0:	02010113          	addi	sp,sp,32
    800081d4:	00008067          	ret
    800081d8:	0014d493          	srli	s1,s1,0x1
    800081dc:	ffffe097          	auipc	ra,0xffffe
    800081e0:	5e4080e7          	jalr	1508(ra) # 800067c0 <mycpu>
    800081e4:	0014f493          	andi	s1,s1,1
    800081e8:	06952e23          	sw	s1,124(a0)
    800081ec:	fc5ff06f          	j	800081b0 <push_on+0x34>

00000000800081f0 <pop_on>:
    800081f0:	ff010113          	addi	sp,sp,-16
    800081f4:	00813023          	sd	s0,0(sp)
    800081f8:	00113423          	sd	ra,8(sp)
    800081fc:	01010413          	addi	s0,sp,16
    80008200:	ffffe097          	auipc	ra,0xffffe
    80008204:	5c0080e7          	jalr	1472(ra) # 800067c0 <mycpu>
    80008208:	100027f3          	csrr	a5,sstatus
    8000820c:	0027f793          	andi	a5,a5,2
    80008210:	04078463          	beqz	a5,80008258 <pop_on+0x68>
    80008214:	07852783          	lw	a5,120(a0)
    80008218:	02f05863          	blez	a5,80008248 <pop_on+0x58>
    8000821c:	fff7879b          	addiw	a5,a5,-1
    80008220:	06f52c23          	sw	a5,120(a0)
    80008224:	07853783          	ld	a5,120(a0)
    80008228:	00079863          	bnez	a5,80008238 <pop_on+0x48>
    8000822c:	100027f3          	csrr	a5,sstatus
    80008230:	ffd7f793          	andi	a5,a5,-3
    80008234:	10079073          	csrw	sstatus,a5
    80008238:	00813083          	ld	ra,8(sp)
    8000823c:	00013403          	ld	s0,0(sp)
    80008240:	01010113          	addi	sp,sp,16
    80008244:	00008067          	ret
    80008248:	00001517          	auipc	a0,0x1
    8000824c:	56850513          	addi	a0,a0,1384 # 800097b0 <digits+0x70>
    80008250:	fffff097          	auipc	ra,0xfffff
    80008254:	f2c080e7          	jalr	-212(ra) # 8000717c <panic>
    80008258:	00001517          	auipc	a0,0x1
    8000825c:	53850513          	addi	a0,a0,1336 # 80009790 <digits+0x50>
    80008260:	fffff097          	auipc	ra,0xfffff
    80008264:	f1c080e7          	jalr	-228(ra) # 8000717c <panic>

0000000080008268 <__memset>:
    80008268:	ff010113          	addi	sp,sp,-16
    8000826c:	00813423          	sd	s0,8(sp)
    80008270:	01010413          	addi	s0,sp,16
    80008274:	1a060e63          	beqz	a2,80008430 <__memset+0x1c8>
    80008278:	40a007b3          	neg	a5,a0
    8000827c:	0077f793          	andi	a5,a5,7
    80008280:	00778693          	addi	a3,a5,7
    80008284:	00b00813          	li	a6,11
    80008288:	0ff5f593          	andi	a1,a1,255
    8000828c:	fff6071b          	addiw	a4,a2,-1
    80008290:	1b06e663          	bltu	a3,a6,8000843c <__memset+0x1d4>
    80008294:	1cd76463          	bltu	a4,a3,8000845c <__memset+0x1f4>
    80008298:	1a078e63          	beqz	a5,80008454 <__memset+0x1ec>
    8000829c:	00b50023          	sb	a1,0(a0)
    800082a0:	00100713          	li	a4,1
    800082a4:	1ae78463          	beq	a5,a4,8000844c <__memset+0x1e4>
    800082a8:	00b500a3          	sb	a1,1(a0)
    800082ac:	00200713          	li	a4,2
    800082b0:	1ae78a63          	beq	a5,a4,80008464 <__memset+0x1fc>
    800082b4:	00b50123          	sb	a1,2(a0)
    800082b8:	00300713          	li	a4,3
    800082bc:	18e78463          	beq	a5,a4,80008444 <__memset+0x1dc>
    800082c0:	00b501a3          	sb	a1,3(a0)
    800082c4:	00400713          	li	a4,4
    800082c8:	1ae78263          	beq	a5,a4,8000846c <__memset+0x204>
    800082cc:	00b50223          	sb	a1,4(a0)
    800082d0:	00500713          	li	a4,5
    800082d4:	1ae78063          	beq	a5,a4,80008474 <__memset+0x20c>
    800082d8:	00b502a3          	sb	a1,5(a0)
    800082dc:	00700713          	li	a4,7
    800082e0:	18e79e63          	bne	a5,a4,8000847c <__memset+0x214>
    800082e4:	00b50323          	sb	a1,6(a0)
    800082e8:	00700e93          	li	t4,7
    800082ec:	00859713          	slli	a4,a1,0x8
    800082f0:	00e5e733          	or	a4,a1,a4
    800082f4:	01059e13          	slli	t3,a1,0x10
    800082f8:	01c76e33          	or	t3,a4,t3
    800082fc:	01859313          	slli	t1,a1,0x18
    80008300:	006e6333          	or	t1,t3,t1
    80008304:	02059893          	slli	a7,a1,0x20
    80008308:	40f60e3b          	subw	t3,a2,a5
    8000830c:	011368b3          	or	a7,t1,a7
    80008310:	02859813          	slli	a6,a1,0x28
    80008314:	0108e833          	or	a6,a7,a6
    80008318:	03059693          	slli	a3,a1,0x30
    8000831c:	003e589b          	srliw	a7,t3,0x3
    80008320:	00d866b3          	or	a3,a6,a3
    80008324:	03859713          	slli	a4,a1,0x38
    80008328:	00389813          	slli	a6,a7,0x3
    8000832c:	00f507b3          	add	a5,a0,a5
    80008330:	00e6e733          	or	a4,a3,a4
    80008334:	000e089b          	sext.w	a7,t3
    80008338:	00f806b3          	add	a3,a6,a5
    8000833c:	00e7b023          	sd	a4,0(a5)
    80008340:	00878793          	addi	a5,a5,8
    80008344:	fed79ce3          	bne	a5,a3,8000833c <__memset+0xd4>
    80008348:	ff8e7793          	andi	a5,t3,-8
    8000834c:	0007871b          	sext.w	a4,a5
    80008350:	01d787bb          	addw	a5,a5,t4
    80008354:	0ce88e63          	beq	a7,a4,80008430 <__memset+0x1c8>
    80008358:	00f50733          	add	a4,a0,a5
    8000835c:	00b70023          	sb	a1,0(a4)
    80008360:	0017871b          	addiw	a4,a5,1
    80008364:	0cc77663          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    80008368:	00e50733          	add	a4,a0,a4
    8000836c:	00b70023          	sb	a1,0(a4)
    80008370:	0027871b          	addiw	a4,a5,2
    80008374:	0ac77e63          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00b70023          	sb	a1,0(a4)
    80008380:	0037871b          	addiw	a4,a5,3
    80008384:	0ac77663          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    80008388:	00e50733          	add	a4,a0,a4
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	0047871b          	addiw	a4,a5,4
    80008394:	08c77e63          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    80008398:	00e50733          	add	a4,a0,a4
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	0057871b          	addiw	a4,a5,5
    800083a4:	08c77663          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	0067871b          	addiw	a4,a5,6
    800083b4:	06c77e63          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    800083b8:	00e50733          	add	a4,a0,a4
    800083bc:	00b70023          	sb	a1,0(a4)
    800083c0:	0077871b          	addiw	a4,a5,7
    800083c4:	06c77663          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00b70023          	sb	a1,0(a4)
    800083d0:	0087871b          	addiw	a4,a5,8
    800083d4:	04c77e63          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    800083d8:	00e50733          	add	a4,a0,a4
    800083dc:	00b70023          	sb	a1,0(a4)
    800083e0:	0097871b          	addiw	a4,a5,9
    800083e4:	04c77663          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    800083e8:	00e50733          	add	a4,a0,a4
    800083ec:	00b70023          	sb	a1,0(a4)
    800083f0:	00a7871b          	addiw	a4,a5,10
    800083f4:	02c77e63          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    800083f8:	00e50733          	add	a4,a0,a4
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	00b7871b          	addiw	a4,a5,11
    80008404:	02c77663          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	00c7871b          	addiw	a4,a5,12
    80008414:	00c77e63          	bgeu	a4,a2,80008430 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	00d7879b          	addiw	a5,a5,13
    80008424:	00c7f663          	bgeu	a5,a2,80008430 <__memset+0x1c8>
    80008428:	00f507b3          	add	a5,a0,a5
    8000842c:	00b78023          	sb	a1,0(a5)
    80008430:	00813403          	ld	s0,8(sp)
    80008434:	01010113          	addi	sp,sp,16
    80008438:	00008067          	ret
    8000843c:	00b00693          	li	a3,11
    80008440:	e55ff06f          	j	80008294 <__memset+0x2c>
    80008444:	00300e93          	li	t4,3
    80008448:	ea5ff06f          	j	800082ec <__memset+0x84>
    8000844c:	00100e93          	li	t4,1
    80008450:	e9dff06f          	j	800082ec <__memset+0x84>
    80008454:	00000e93          	li	t4,0
    80008458:	e95ff06f          	j	800082ec <__memset+0x84>
    8000845c:	00000793          	li	a5,0
    80008460:	ef9ff06f          	j	80008358 <__memset+0xf0>
    80008464:	00200e93          	li	t4,2
    80008468:	e85ff06f          	j	800082ec <__memset+0x84>
    8000846c:	00400e93          	li	t4,4
    80008470:	e7dff06f          	j	800082ec <__memset+0x84>
    80008474:	00500e93          	li	t4,5
    80008478:	e75ff06f          	j	800082ec <__memset+0x84>
    8000847c:	00600e93          	li	t4,6
    80008480:	e6dff06f          	j	800082ec <__memset+0x84>

0000000080008484 <__memmove>:
    80008484:	ff010113          	addi	sp,sp,-16
    80008488:	00813423          	sd	s0,8(sp)
    8000848c:	01010413          	addi	s0,sp,16
    80008490:	0e060863          	beqz	a2,80008580 <__memmove+0xfc>
    80008494:	fff6069b          	addiw	a3,a2,-1
    80008498:	0006881b          	sext.w	a6,a3
    8000849c:	0ea5e863          	bltu	a1,a0,8000858c <__memmove+0x108>
    800084a0:	00758713          	addi	a4,a1,7
    800084a4:	00a5e7b3          	or	a5,a1,a0
    800084a8:	40a70733          	sub	a4,a4,a0
    800084ac:	0077f793          	andi	a5,a5,7
    800084b0:	00f73713          	sltiu	a4,a4,15
    800084b4:	00174713          	xori	a4,a4,1
    800084b8:	0017b793          	seqz	a5,a5
    800084bc:	00e7f7b3          	and	a5,a5,a4
    800084c0:	10078863          	beqz	a5,800085d0 <__memmove+0x14c>
    800084c4:	00900793          	li	a5,9
    800084c8:	1107f463          	bgeu	a5,a6,800085d0 <__memmove+0x14c>
    800084cc:	0036581b          	srliw	a6,a2,0x3
    800084d0:	fff8081b          	addiw	a6,a6,-1
    800084d4:	02081813          	slli	a6,a6,0x20
    800084d8:	01d85893          	srli	a7,a6,0x1d
    800084dc:	00858813          	addi	a6,a1,8
    800084e0:	00058793          	mv	a5,a1
    800084e4:	00050713          	mv	a4,a0
    800084e8:	01088833          	add	a6,a7,a6
    800084ec:	0007b883          	ld	a7,0(a5)
    800084f0:	00878793          	addi	a5,a5,8
    800084f4:	00870713          	addi	a4,a4,8
    800084f8:	ff173c23          	sd	a7,-8(a4)
    800084fc:	ff0798e3          	bne	a5,a6,800084ec <__memmove+0x68>
    80008500:	ff867713          	andi	a4,a2,-8
    80008504:	02071793          	slli	a5,a4,0x20
    80008508:	0207d793          	srli	a5,a5,0x20
    8000850c:	00f585b3          	add	a1,a1,a5
    80008510:	40e686bb          	subw	a3,a3,a4
    80008514:	00f507b3          	add	a5,a0,a5
    80008518:	06e60463          	beq	a2,a4,80008580 <__memmove+0xfc>
    8000851c:	0005c703          	lbu	a4,0(a1)
    80008520:	00e78023          	sb	a4,0(a5)
    80008524:	04068e63          	beqz	a3,80008580 <__memmove+0xfc>
    80008528:	0015c603          	lbu	a2,1(a1)
    8000852c:	00100713          	li	a4,1
    80008530:	00c780a3          	sb	a2,1(a5)
    80008534:	04e68663          	beq	a3,a4,80008580 <__memmove+0xfc>
    80008538:	0025c603          	lbu	a2,2(a1)
    8000853c:	00200713          	li	a4,2
    80008540:	00c78123          	sb	a2,2(a5)
    80008544:	02e68e63          	beq	a3,a4,80008580 <__memmove+0xfc>
    80008548:	0035c603          	lbu	a2,3(a1)
    8000854c:	00300713          	li	a4,3
    80008550:	00c781a3          	sb	a2,3(a5)
    80008554:	02e68663          	beq	a3,a4,80008580 <__memmove+0xfc>
    80008558:	0045c603          	lbu	a2,4(a1)
    8000855c:	00400713          	li	a4,4
    80008560:	00c78223          	sb	a2,4(a5)
    80008564:	00e68e63          	beq	a3,a4,80008580 <__memmove+0xfc>
    80008568:	0055c603          	lbu	a2,5(a1)
    8000856c:	00500713          	li	a4,5
    80008570:	00c782a3          	sb	a2,5(a5)
    80008574:	00e68663          	beq	a3,a4,80008580 <__memmove+0xfc>
    80008578:	0065c703          	lbu	a4,6(a1)
    8000857c:	00e78323          	sb	a4,6(a5)
    80008580:	00813403          	ld	s0,8(sp)
    80008584:	01010113          	addi	sp,sp,16
    80008588:	00008067          	ret
    8000858c:	02061713          	slli	a4,a2,0x20
    80008590:	02075713          	srli	a4,a4,0x20
    80008594:	00e587b3          	add	a5,a1,a4
    80008598:	f0f574e3          	bgeu	a0,a5,800084a0 <__memmove+0x1c>
    8000859c:	02069613          	slli	a2,a3,0x20
    800085a0:	02065613          	srli	a2,a2,0x20
    800085a4:	fff64613          	not	a2,a2
    800085a8:	00e50733          	add	a4,a0,a4
    800085ac:	00c78633          	add	a2,a5,a2
    800085b0:	fff7c683          	lbu	a3,-1(a5)
    800085b4:	fff78793          	addi	a5,a5,-1
    800085b8:	fff70713          	addi	a4,a4,-1
    800085bc:	00d70023          	sb	a3,0(a4)
    800085c0:	fec798e3          	bne	a5,a2,800085b0 <__memmove+0x12c>
    800085c4:	00813403          	ld	s0,8(sp)
    800085c8:	01010113          	addi	sp,sp,16
    800085cc:	00008067          	ret
    800085d0:	02069713          	slli	a4,a3,0x20
    800085d4:	02075713          	srli	a4,a4,0x20
    800085d8:	00170713          	addi	a4,a4,1
    800085dc:	00e50733          	add	a4,a0,a4
    800085e0:	00050793          	mv	a5,a0
    800085e4:	0005c683          	lbu	a3,0(a1)
    800085e8:	00178793          	addi	a5,a5,1
    800085ec:	00158593          	addi	a1,a1,1
    800085f0:	fed78fa3          	sb	a3,-1(a5)
    800085f4:	fee798e3          	bne	a5,a4,800085e4 <__memmove+0x160>
    800085f8:	f89ff06f          	j	80008580 <__memmove+0xfc>

00000000800085fc <__putc>:
    800085fc:	fe010113          	addi	sp,sp,-32
    80008600:	00813823          	sd	s0,16(sp)
    80008604:	00113c23          	sd	ra,24(sp)
    80008608:	02010413          	addi	s0,sp,32
    8000860c:	00050793          	mv	a5,a0
    80008610:	fef40593          	addi	a1,s0,-17
    80008614:	00100613          	li	a2,1
    80008618:	00000513          	li	a0,0
    8000861c:	fef407a3          	sb	a5,-17(s0)
    80008620:	fffff097          	auipc	ra,0xfffff
    80008624:	b3c080e7          	jalr	-1220(ra) # 8000715c <console_write>
    80008628:	01813083          	ld	ra,24(sp)
    8000862c:	01013403          	ld	s0,16(sp)
    80008630:	02010113          	addi	sp,sp,32
    80008634:	00008067          	ret

0000000080008638 <__getc>:
    80008638:	fe010113          	addi	sp,sp,-32
    8000863c:	00813823          	sd	s0,16(sp)
    80008640:	00113c23          	sd	ra,24(sp)
    80008644:	02010413          	addi	s0,sp,32
    80008648:	fe840593          	addi	a1,s0,-24
    8000864c:	00100613          	li	a2,1
    80008650:	00000513          	li	a0,0
    80008654:	fffff097          	auipc	ra,0xfffff
    80008658:	ae8080e7          	jalr	-1304(ra) # 8000713c <console_read>
    8000865c:	fe844503          	lbu	a0,-24(s0)
    80008660:	01813083          	ld	ra,24(sp)
    80008664:	01013403          	ld	s0,16(sp)
    80008668:	02010113          	addi	sp,sp,32
    8000866c:	00008067          	ret

0000000080008670 <console_handler>:
    80008670:	fe010113          	addi	sp,sp,-32
    80008674:	00813823          	sd	s0,16(sp)
    80008678:	00113c23          	sd	ra,24(sp)
    8000867c:	00913423          	sd	s1,8(sp)
    80008680:	02010413          	addi	s0,sp,32
    80008684:	14202773          	csrr	a4,scause
    80008688:	100027f3          	csrr	a5,sstatus
    8000868c:	0027f793          	andi	a5,a5,2
    80008690:	06079e63          	bnez	a5,8000870c <console_handler+0x9c>
    80008694:	00074c63          	bltz	a4,800086ac <console_handler+0x3c>
    80008698:	01813083          	ld	ra,24(sp)
    8000869c:	01013403          	ld	s0,16(sp)
    800086a0:	00813483          	ld	s1,8(sp)
    800086a4:	02010113          	addi	sp,sp,32
    800086a8:	00008067          	ret
    800086ac:	0ff77713          	andi	a4,a4,255
    800086b0:	00900793          	li	a5,9
    800086b4:	fef712e3          	bne	a4,a5,80008698 <console_handler+0x28>
    800086b8:	ffffe097          	auipc	ra,0xffffe
    800086bc:	6dc080e7          	jalr	1756(ra) # 80006d94 <plic_claim>
    800086c0:	00a00793          	li	a5,10
    800086c4:	00050493          	mv	s1,a0
    800086c8:	02f50c63          	beq	a0,a5,80008700 <console_handler+0x90>
    800086cc:	fc0506e3          	beqz	a0,80008698 <console_handler+0x28>
    800086d0:	00050593          	mv	a1,a0
    800086d4:	00001517          	auipc	a0,0x1
    800086d8:	fe450513          	addi	a0,a0,-28 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800086dc:	fffff097          	auipc	ra,0xfffff
    800086e0:	afc080e7          	jalr	-1284(ra) # 800071d8 <__printf>
    800086e4:	01013403          	ld	s0,16(sp)
    800086e8:	01813083          	ld	ra,24(sp)
    800086ec:	00048513          	mv	a0,s1
    800086f0:	00813483          	ld	s1,8(sp)
    800086f4:	02010113          	addi	sp,sp,32
    800086f8:	ffffe317          	auipc	t1,0xffffe
    800086fc:	6d430067          	jr	1748(t1) # 80006dcc <plic_complete>
    80008700:	fffff097          	auipc	ra,0xfffff
    80008704:	3e0080e7          	jalr	992(ra) # 80007ae0 <uartintr>
    80008708:	fddff06f          	j	800086e4 <console_handler+0x74>
    8000870c:	00001517          	auipc	a0,0x1
    80008710:	0ac50513          	addi	a0,a0,172 # 800097b8 <digits+0x78>
    80008714:	fffff097          	auipc	ra,0xfffff
    80008718:	a68080e7          	jalr	-1432(ra) # 8000717c <panic>
	...
