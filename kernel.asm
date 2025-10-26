
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
    8000001c:	528060ef          	jal	ra,80006544 <start>

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
    80001084:	484010ef          	jal	ra,80002508 <_ZN5Riscv14handleSyscallsEv>

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
    80001318:	2ac7c783          	lbu	a5,684(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000131c:	04079263          	bnez	a5,80001360 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
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
    80001340:	22c73703          	ld	a4,556(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    8000136c:	00002097          	auipc	ra,0x2
    80001370:	870080e7          	jalr	-1936(ra) # 80002bdc <_ZN15MemoryAllocator9mem_allocEm>
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
    800015c8:	d3c080e7          	jalr	-708(ra) # 80005300 <_Z11printStringPKc>
        printInt(i);
    800015cc:	00000613          	li	a2,0
    800015d0:	00a00593          	li	a1,10
    800015d4:	00048513          	mv	a0,s1
    800015d8:	00004097          	auipc	ra,0x4
    800015dc:	ed8080e7          	jalr	-296(ra) # 800054b0 <_Z8printIntiii>
        printString("\n");
    800015e0:	00008517          	auipc	a0,0x8
    800015e4:	f3050513          	addi	a0,a0,-208 # 80009510 <CONSOLE_STATUS+0x500>
    800015e8:	00004097          	auipc	ra,0x4
    800015ec:	d18080e7          	jalr	-744(ra) # 80005300 <_Z11printStringPKc>
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
    8000160c:	cf8080e7          	jalr	-776(ra) # 80005300 <_Z11printStringPKc>
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
    8000162c:	cd8080e7          	jalr	-808(ra) # 80005300 <_Z11printStringPKc>
    printInt(t1);
    80001630:	00000613          	li	a2,0
    80001634:	00a00593          	li	a1,10
    80001638:	0009051b          	sext.w	a0,s2
    8000163c:	00004097          	auipc	ra,0x4
    80001640:	e74080e7          	jalr	-396(ra) # 800054b0 <_Z8printIntiii>
    printString("\n");
    80001644:	00008517          	auipc	a0,0x8
    80001648:	ecc50513          	addi	a0,a0,-308 # 80009510 <CONSOLE_STATUS+0x500>
    8000164c:	00004097          	auipc	ra,0x4
    80001650:	cb4080e7          	jalr	-844(ra) # 80005300 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001654:	01400513          	li	a0,20
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	ed4080e7          	jalr	-300(ra) # 8000152c <_ZL9fibonaccim>
    80001660:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001664:	00008517          	auipc	a0,0x8
    80001668:	9dc50513          	addi	a0,a0,-1572 # 80009040 <CONSOLE_STATUS+0x30>
    8000166c:	00004097          	auipc	ra,0x4
    80001670:	c94080e7          	jalr	-876(ra) # 80005300 <_Z11printStringPKc>
    printInt(result);
    80001674:	00000613          	li	a2,0
    80001678:	00a00593          	li	a1,10
    8000167c:	0009051b          	sext.w	a0,s2
    80001680:	00004097          	auipc	ra,0x4
    80001684:	e30080e7          	jalr	-464(ra) # 800054b0 <_Z8printIntiii>
    printString("\n");
    80001688:	00008517          	auipc	a0,0x8
    8000168c:	e8850513          	addi	a0,a0,-376 # 80009510 <CONSOLE_STATUS+0x500>
    80001690:	00004097          	auipc	ra,0x4
    80001694:	c70080e7          	jalr	-912(ra) # 80005300 <_Z11printStringPKc>
    80001698:	0400006f          	j	800016d8 <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000169c:	00008517          	auipc	a0,0x8
    800016a0:	98450513          	addi	a0,a0,-1660 # 80009020 <CONSOLE_STATUS+0x10>
    800016a4:	00004097          	auipc	ra,0x4
    800016a8:	c5c080e7          	jalr	-932(ra) # 80005300 <_Z11printStringPKc>
        printInt(i);
    800016ac:	00000613          	li	a2,0
    800016b0:	00a00593          	li	a1,10
    800016b4:	00048513          	mv	a0,s1
    800016b8:	00004097          	auipc	ra,0x4
    800016bc:	df8080e7          	jalr	-520(ra) # 800054b0 <_Z8printIntiii>
        printString("\n");
    800016c0:	00008517          	auipc	a0,0x8
    800016c4:	e5050513          	addi	a0,a0,-432 # 80009510 <CONSOLE_STATUS+0x500>
    800016c8:	00004097          	auipc	ra,0x4
    800016cc:	c38080e7          	jalr	-968(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 6; i++)
    800016d0:	0014849b          	addiw	s1,s1,1
    800016d4:	0ff4f493          	andi	s1,s1,255
    800016d8:	00500793          	li	a5,5
    800016dc:	fc97f0e3          	bgeu	a5,s1,8000169c <_Z11workerBodyAPv+0x100>
    }

    TCB::running->setFinished(true);
    800016e0:	0000a797          	auipc	a5,0xa
    800016e4:	e807b783          	ld	a5,-384(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001740:	bc4080e7          	jalr	-1084(ra) # 80005300 <_Z11printStringPKc>
        printInt(i);
    80001744:	00000613          	li	a2,0
    80001748:	00a00593          	li	a1,10
    8000174c:	00048513          	mv	a0,s1
    80001750:	00004097          	auipc	ra,0x4
    80001754:	d60080e7          	jalr	-672(ra) # 800054b0 <_Z8printIntiii>
        printString("\n");
    80001758:	00008517          	auipc	a0,0x8
    8000175c:	db850513          	addi	a0,a0,-584 # 80009510 <CONSOLE_STATUS+0x500>
    80001760:	00004097          	auipc	ra,0x4
    80001764:	ba0080e7          	jalr	-1120(ra) # 80005300 <_Z11printStringPKc>
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
    80001784:	b80080e7          	jalr	-1152(ra) # 80005300 <_Z11printStringPKc>
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
    800017b0:	b54080e7          	jalr	-1196(ra) # 80005300 <_Z11printStringPKc>
    printInt(result);
    800017b4:	00000613          	li	a2,0
    800017b8:	00a00593          	li	a1,10
    800017bc:	0009051b          	sext.w	a0,s2
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	cf0080e7          	jalr	-784(ra) # 800054b0 <_Z8printIntiii>
    printString("\n");
    800017c8:	00008517          	auipc	a0,0x8
    800017cc:	d4850513          	addi	a0,a0,-696 # 80009510 <CONSOLE_STATUS+0x500>
    800017d0:	00004097          	auipc	ra,0x4
    800017d4:	b30080e7          	jalr	-1232(ra) # 80005300 <_Z11printStringPKc>
    800017d8:	0400006f          	j	80001818 <_Z11workerBodyBPv+0x104>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800017dc:	00008517          	auipc	a0,0x8
    800017e0:	87450513          	addi	a0,a0,-1932 # 80009050 <CONSOLE_STATUS+0x40>
    800017e4:	00004097          	auipc	ra,0x4
    800017e8:	b1c080e7          	jalr	-1252(ra) # 80005300 <_Z11printStringPKc>
        printInt(i);
    800017ec:	00000613          	li	a2,0
    800017f0:	00a00593          	li	a1,10
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00004097          	auipc	ra,0x4
    800017fc:	cb8080e7          	jalr	-840(ra) # 800054b0 <_Z8printIntiii>
        printString("\n");
    80001800:	00008517          	auipc	a0,0x8
    80001804:	d1050513          	addi	a0,a0,-752 # 80009510 <CONSOLE_STATUS+0x500>
    80001808:	00004097          	auipc	ra,0x4
    8000180c:	af8080e7          	jalr	-1288(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001810:	0014849b          	addiw	s1,s1,1
    80001814:	0ff4f493          	andi	s1,s1,255
    80001818:	00f00793          	li	a5,15
    8000181c:	fc97f0e3          	bgeu	a5,s1,800017dc <_Z11workerBodyBPv+0xc8>
    }

    TCB::running->setFinished(true);
    80001820:	0000a797          	auipc	a5,0xa
    80001824:	d407b783          	ld	a5,-704(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001878:	d6478793          	addi	a5,a5,-668 # 8000b5d8 <_ZL1a>
    8000187c:	0007a503          	lw	a0,0(a5)
    80001880:	3e85051b          	addiw	a0,a0,1000
    80001884:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    80001888:	00000613          	li	a2,0
    8000188c:	00a00593          	li	a1,10
    80001890:	0005051b          	sext.w	a0,a0
    80001894:	00004097          	auipc	ra,0x4
    80001898:	c1c080e7          	jalr	-996(ra) # 800054b0 <_Z8printIntiii>
        printString("\n");
    8000189c:	00008517          	auipc	a0,0x8
    800018a0:	c7450513          	addi	a0,a0,-908 # 80009510 <CONSOLE_STATUS+0x500>
    800018a4:	00004097          	auipc	ra,0x4
    800018a8:	a5c080e7          	jalr	-1444(ra) # 80005300 <_Z11printStringPKc>
        thread_dispatch();
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	b2c080e7          	jalr	-1236(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    800018b4:	0014849b          	addiw	s1,s1,1
    800018b8:	fb5ff06f          	j	8000186c <_Z11workerBodyCPv+0x18>
    }
    TCB::running->setFinished(true);
    800018bc:	0000a797          	auipc	a5,0xa
    800018c0:	ca47b783          	ld	a5,-860(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001910:	ccc78793          	addi	a5,a5,-820 # 8000b5d8 <_ZL1a>
    80001914:	0007a503          	lw	a0,0(a5)
    80001918:	c185051b          	addiw	a0,a0,-1000
    8000191c:	00a7a023          	sw	a0,0(a5)
        printInt(a);
    80001920:	00000613          	li	a2,0
    80001924:	00a00593          	li	a1,10
    80001928:	0005051b          	sext.w	a0,a0
    8000192c:	00004097          	auipc	ra,0x4
    80001930:	b84080e7          	jalr	-1148(ra) # 800054b0 <_Z8printIntiii>
        printString("\n");
    80001934:	00008517          	auipc	a0,0x8
    80001938:	bdc50513          	addi	a0,a0,-1060 # 80009510 <CONSOLE_STATUS+0x500>
    8000193c:	00004097          	auipc	ra,0x4
    80001940:	9c4080e7          	jalr	-1596(ra) # 80005300 <_Z11printStringPKc>
        thread_dispatch();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	a94080e7          	jalr	-1388(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i < 10; i++) {
    8000194c:	0014849b          	addiw	s1,s1,1
    80001950:	fb5ff06f          	j	80001904 <_Z11workerBodyDPv+0x18>
    }
    TCB::running->setFinished(true);
    80001954:	0000a797          	auipc	a5,0xa
    80001958:	c0c7b783          	ld	a5,-1012(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800019a0:	c247c783          	lbu	a5,-988(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019a4:	04079263          	bnez	a5,800019e8 <_ZN3ABI9Semaphore15createSemaphoreEj+0x64>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800019a8:	0000a797          	auipc	a5,0xa
    800019ac:	ba07b783          	ld	a5,-1120(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019b0:	0007b783          	ld	a5,0(a5)
    800019b4:	0000a717          	auipc	a4,0xa
    800019b8:	c1470713          	addi	a4,a4,-1004 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019bc:	00f73023          	sd	a5,0(a4)
    800019c0:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800019c4:	0000a717          	auipc	a4,0xa
    800019c8:	ba473703          	ld	a4,-1116(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019cc:	00073703          	ld	a4,0(a4)
    800019d0:	40f70733          	sub	a4,a4,a5
    800019d4:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800019d8:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800019dc:	00100793          	li	a5,1
    800019e0:	0000a717          	auipc	a4,0xa
    800019e4:	bef70023          	sb	a5,-1056(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

        // Gets semaphore parameter starting value.
        unsigned int getValue() const { return val; }

        void *operator new(size_t size) {
            return MemoryAllocator::Instance()->mem_alloc(size);
    800019e8:	02800593          	li	a1,40
    800019ec:	0000a517          	auipc	a0,0xa
    800019f0:	bdc50513          	addi	a0,a0,-1060 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	1e8080e7          	jalr	488(ra) # 80002bdc <_ZN15MemoryAllocator9mem_allocEm>
            MemoryAllocator::Instance()->mem_free(ptr);
        }

    protected:
        // Constructor.
        explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    800019fc:	0000a717          	auipc	a4,0xa
    80001a00:	93470713          	addi	a4,a4,-1740 # 8000b330 <_ZTVN3ABI9SemaphoreE+0x10>
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
    80001a54:	b107b783          	ld	a5,-1264(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a58:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001a5c:	01000513          	li	a0,16
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	50c080e7          	jalr	1292(ra) # 80001f6c <_Znwm>
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
    80001a84:	ae07b783          	ld	a5,-1312(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001b48:	528080e7          	jalr	1320(ra) # 8000206c <_ZdlPv>
    80001b4c:	020480a3          	sb	zero,33(s1)
        TCB *thread = blocked.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    80001b50:	00048513          	mv	a0,s1
    80001b54:	00001097          	auipc	ra,0x1
    80001b58:	e6c080e7          	jalr	-404(ra) # 800029c0 <_ZN9Scheduler3putEP3TCB>
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
    80001c64:	9607c783          	lbu	a5,-1696(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c68:	04079263          	bnez	a5,80001cac <_ZN3ABI9SemaphoreD0Ev+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001c6c:	0000a797          	auipc	a5,0xa
    80001c70:	8dc7b783          	ld	a5,-1828(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c74:	0007b783          	ld	a5,0(a5)
    80001c78:	0000a717          	auipc	a4,0xa
    80001c7c:	95070713          	addi	a4,a4,-1712 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001c80:	00f73023          	sd	a5,0(a4)
    80001c84:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001c88:	0000a717          	auipc	a4,0xa
    80001c8c:	8e073703          	ld	a4,-1824(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c90:	00073703          	ld	a4,0(a4)
    80001c94:	40f70733          	sub	a4,a4,a5
    80001c98:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001c9c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001ca0:	00100793          	li	a5,1
    80001ca4:	0000a717          	auipc	a4,0xa
    80001ca8:	90f70e23          	sb	a5,-1764(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            MemoryAllocator::Instance()->mem_free(ptr);
    80001cac:	0000a517          	auipc	a0,0xa
    80001cb0:	91c50513          	addi	a0,a0,-1764 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	078080e7          	jalr	120(ra) # 80002d2c <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001cfc:	8c87c783          	lbu	a5,-1848(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d00:	04079263          	bnez	a5,80001d44 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x78>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001d04:	0000a797          	auipc	a5,0xa
    80001d08:	8447b783          	ld	a5,-1980(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d0c:	0007b783          	ld	a5,0(a5)
    80001d10:	0000a717          	auipc	a4,0xa
    80001d14:	8b870713          	addi	a4,a4,-1864 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d18:	00f73023          	sd	a5,0(a4)
    80001d1c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001d20:	0000a717          	auipc	a4,0xa
    80001d24:	84873703          	ld	a4,-1976(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d28:	00073703          	ld	a4,0(a4)
    80001d2c:	40f70733          	sub	a4,a4,a5
    80001d30:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001d34:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001d38:	00100793          	li	a5,1
    80001d3c:	0000a717          	auipc	a4,0xa
    80001d40:	88f70223          	sb	a5,-1916(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>

    // Pointer to the currently running thread.
    static TCB *running, *main;

    void* operator new(size_t size) {
        return MemoryAllocator::Instance()->mem_alloc(size);
    80001d44:	03000593          	li	a1,48
    80001d48:	0000a517          	auipc	a0,0xa
    80001d4c:	88050513          	addi	a0,a0,-1920 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	e8c080e7          	jalr	-372(ra) # 80002bdc <_ZN15MemoryAllocator9mem_allocEm>
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
    80001da0:	c24080e7          	jalr	-988(ra) # 800029c0 <_ZN9Scheduler3putEP3TCB>
    80001da4:	0900006f          	j	80001e34 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x168>
            stack(stack == nullptr ? new uint64[STACK_SIZE] : stack),
    80001da8:	00002537          	lui	a0,0x2
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	240080e7          	jalr	576(ra) # 80001fec <_Znam>
    80001db4:	00050793          	mv	a5,a0
    80001db8:	fb1ff06f          	j	80001d68 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x9c>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001dbc:	00000613          	li	a2,0
    80001dc0:	fc5ff06f          	j	80001d84 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb8>
    80001dc4:	00050913          	mv	s2,a0
    80001dc8:	00009797          	auipc	a5,0x9
    80001dcc:	7f87c783          	lbu	a5,2040(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001dd0:	04079263          	bnez	a5,80001e14 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x148>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001dd4:	00009797          	auipc	a5,0x9
    80001dd8:	7747b783          	ld	a5,1908(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001ddc:	0007b783          	ld	a5,0(a5)
    80001de0:	00009717          	auipc	a4,0x9
    80001de4:	7e870713          	addi	a4,a4,2024 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001de8:	00f73023          	sd	a5,0(a4)
    80001dec:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001df0:	00009717          	auipc	a4,0x9
    80001df4:	77873703          	ld	a4,1912(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001df8:	00073703          	ld	a4,0(a4)
    80001dfc:	40f70733          	sub	a4,a4,a5
    80001e00:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001e04:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001e08:	00100793          	li	a5,1
    80001e0c:	00009717          	auipc	a4,0x9
    80001e10:	7af70a23          	sb	a5,1972(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80001e14:	00048593          	mv	a1,s1
    80001e18:	00009517          	auipc	a0,0x9
    80001e1c:	7b050513          	addi	a0,a0,1968 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	f0c080e7          	jalr	-244(ra) # 80002d2c <_ZN15MemoryAllocator8mem_freeEPv>
    80001e28:	00090513          	mv	a0,s2
    80001e2c:	0000b097          	auipc	ra,0xb
    80001e30:	8ec080e7          	jalr	-1812(ra) # 8000c718 <_Unwind_Resume>
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
    80001e98:	654080e7          	jalr	1620(ra) # 800024e8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e9c:	00009497          	auipc	s1,0x9
    80001ea0:	74448493          	addi	s1,s1,1860 # 8000b5e0 <_ZN3TCB7runningE>
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
    80001ef4:	6f04b483          	ld	s1,1776(s1) # 8000b5e0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001ef8:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001efc:	00079663          	bnez	a5,80001f08 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    80001f00:	0214c783          	lbu	a5,33(s1)
    80001f04:	04078663          	beqz	a5,80001f50 <_ZN3TCB8dispatchEv+0x74>
    running = Scheduler::get();
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	a50080e7          	jalr	-1456(ra) # 80002958 <_ZN9Scheduler3getEv>
    80001f10:	00009797          	auipc	a5,0x9
    80001f14:	6d078793          	addi	a5,a5,1744 # 8000b5e0 <_ZN3TCB7runningE>
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
    80001f58:	a6c080e7          	jalr	-1428(ra) # 800029c0 <_ZN9Scheduler3putEP3TCB>
    80001f5c:	fadff06f          	j	80001f08 <_ZN3TCB8dispatchEv+0x2c>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f60:	10000793          	li	a5,256
    80001f64:	1007a073          	csrs	sstatus,a5
}
    80001f68:	fc5ff06f          	j	80001f2c <_ZN3TCB8dispatchEv+0x50>

0000000080001f6c <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00113423          	sd	ra,8(sp)
    80001f74:	00813023          	sd	s0,0(sp)
    80001f78:	01010413          	addi	s0,sp,16
    80001f7c:	00050593          	mv	a1,a0
    80001f80:	00009797          	auipc	a5,0x9
    80001f84:	6407c783          	lbu	a5,1600(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001f88:	04079263          	bnez	a5,80001fcc <_Znwm+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80001f8c:	00009797          	auipc	a5,0x9
    80001f90:	5bc7b783          	ld	a5,1468(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001f94:	0007b783          	ld	a5,0(a5)
    80001f98:	00009717          	auipc	a4,0x9
    80001f9c:	63070713          	addi	a4,a4,1584 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fa0:	00f73023          	sd	a5,0(a4)
    80001fa4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80001fa8:	00009717          	auipc	a4,0x9
    80001fac:	5c073703          	ld	a4,1472(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fb0:	00073703          	ld	a4,0(a4)
    80001fb4:	40f70733          	sub	a4,a4,a5
    80001fb8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80001fbc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80001fc0:	00100793          	li	a5,1
    80001fc4:	00009717          	auipc	a4,0x9
    80001fc8:	5ef70e23          	sb	a5,1532(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    80001fcc:	00009517          	auipc	a0,0x9
    80001fd0:	5fc50513          	addi	a0,a0,1532 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80001fd4:	00001097          	auipc	ra,0x1
    80001fd8:	c08080e7          	jalr	-1016(ra) # 80002bdc <_ZN15MemoryAllocator9mem_allocEm>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_Znam>:

void *operator new[](size_t n)
{
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00113423          	sd	ra,8(sp)
    80001ff4:	00813023          	sd	s0,0(sp)
    80001ff8:	01010413          	addi	s0,sp,16
    80001ffc:	00050593          	mv	a1,a0
    80002000:	00009797          	auipc	a5,0x9
    80002004:	5c07c783          	lbu	a5,1472(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002008:	04079263          	bnez	a5,8000204c <_Znam+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000200c:	00009797          	auipc	a5,0x9
    80002010:	53c7b783          	ld	a5,1340(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002014:	0007b783          	ld	a5,0(a5)
    80002018:	00009717          	auipc	a4,0x9
    8000201c:	5b070713          	addi	a4,a4,1456 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002020:	00f73023          	sd	a5,0(a4)
    80002024:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002028:	00009717          	auipc	a4,0x9
    8000202c:	54073703          	ld	a4,1344(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002030:	00073703          	ld	a4,0(a4)
    80002034:	40f70733          	sub	a4,a4,a5
    80002038:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000203c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002040:	00100793          	li	a5,1
    80002044:	00009717          	auipc	a4,0x9
    80002048:	56f70e23          	sb	a5,1404(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    return MemoryAllocator::Instance()->mem_alloc(n);
    8000204c:	00009517          	auipc	a0,0x9
    80002050:	57c50513          	addi	a0,a0,1404 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	b88080e7          	jalr	-1144(ra) # 80002bdc <_ZN15MemoryAllocator9mem_allocEm>
}
    8000205c:	00813083          	ld	ra,8(sp)
    80002060:	00013403          	ld	s0,0(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00113423          	sd	ra,8(sp)
    80002074:	00813023          	sd	s0,0(sp)
    80002078:	01010413          	addi	s0,sp,16
    8000207c:	00050593          	mv	a1,a0
    80002080:	00009797          	auipc	a5,0x9
    80002084:	5407c783          	lbu	a5,1344(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002088:	04079263          	bnez	a5,800020cc <_ZdlPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000208c:	00009797          	auipc	a5,0x9
    80002090:	4bc7b783          	ld	a5,1212(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002094:	0007b783          	ld	a5,0(a5)
    80002098:	00009717          	auipc	a4,0x9
    8000209c:	53070713          	addi	a4,a4,1328 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020a0:	00f73023          	sd	a5,0(a4)
    800020a4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800020a8:	00009717          	auipc	a4,0x9
    800020ac:	4c073703          	ld	a4,1216(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020b0:	00073703          	ld	a4,0(a4)
    800020b4:	40f70733          	sub	a4,a4,a5
    800020b8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800020bc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800020c0:	00100793          	li	a5,1
    800020c4:	00009717          	auipc	a4,0x9
    800020c8:	4ef70e23          	sb	a5,1276(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    800020cc:	00009517          	auipc	a0,0x9
    800020d0:	4fc50513          	addi	a0,a0,1276 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	c58080e7          	jalr	-936(ra) # 80002d2c <_ZN15MemoryAllocator8mem_freeEPv>
}
    800020dc:	00813083          	ld	ra,8(sp)
    800020e0:	00013403          	ld	s0,0(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret

00000000800020ec <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	00813023          	sd	s0,0(sp)
    800020f8:	01010413          	addi	s0,sp,16
    800020fc:	00050593          	mv	a1,a0
    80002100:	00009797          	auipc	a5,0x9
    80002104:	4c07c783          	lbu	a5,1216(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002108:	04079263          	bnez	a5,8000214c <_ZdaPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000210c:	00009797          	auipc	a5,0x9
    80002110:	43c7b783          	ld	a5,1084(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002114:	0007b783          	ld	a5,0(a5)
    80002118:	00009717          	auipc	a4,0x9
    8000211c:	4b070713          	addi	a4,a4,1200 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002120:	00f73023          	sd	a5,0(a4)
    80002124:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002128:	00009717          	auipc	a4,0x9
    8000212c:	44073703          	ld	a4,1088(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002130:	00073703          	ld	a4,0(a4)
    80002134:	40f70733          	sub	a4,a4,a5
    80002138:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000213c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002140:	00100793          	li	a5,1
    80002144:	00009717          	auipc	a4,0x9
    80002148:	46f70e23          	sb	a5,1148(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    MemoryAllocator::Instance()->mem_free(p);
    8000214c:	00009517          	auipc	a0,0x9
    80002150:	47c50513          	addi	a0,a0,1148 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002154:	00001097          	auipc	ra,0x1
    80002158:	bd8080e7          	jalr	-1064(ra) # 80002d2c <_ZN15MemoryAllocator8mem_freeEPv>
    8000215c:	00813083          	ld	ra,8(sp)
    80002160:	00013403          	ld	s0,0(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN6ThreadD1Ev>:
}

Thread::Thread(void (*body)(void *), void *arg) :
    myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    8000216c:	fe010113          	addi	sp,sp,-32
    80002170:	00113c23          	sd	ra,24(sp)
    80002174:	00813823          	sd	s0,16(sp)
    80002178:	00913423          	sd	s1,8(sp)
    8000217c:	02010413          	addi	s0,sp,32
    80002180:	00009797          	auipc	a5,0x9
    80002184:	1d878793          	addi	a5,a5,472 # 8000b358 <_ZTV6Thread+0x10>
    80002188:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    8000218c:	00853483          	ld	s1,8(a0)
    80002190:	06048a63          	beqz	s1,80002204 <_ZN6ThreadD1Ev+0x98>
    ~TCB() { delete[] stack; }
    80002194:	0084b503          	ld	a0,8(s1)
    80002198:	00050663          	beqz	a0,800021a4 <_ZN6ThreadD1Ev+0x38>
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	f50080e7          	jalr	-176(ra) # 800020ec <_ZdaPv>
    800021a4:	00009797          	auipc	a5,0x9
    800021a8:	41c7c783          	lbu	a5,1052(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021ac:	04079263          	bnez	a5,800021f0 <_ZN6ThreadD1Ev+0x84>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800021b0:	00009797          	auipc	a5,0x9
    800021b4:	3987b783          	ld	a5,920(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    800021b8:	0007b783          	ld	a5,0(a5)
    800021bc:	00009717          	auipc	a4,0x9
    800021c0:	40c70713          	addi	a4,a4,1036 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021c4:	00f73023          	sd	a5,0(a4)
    800021c8:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800021cc:	00009717          	auipc	a4,0x9
    800021d0:	39c73703          	ld	a4,924(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021d4:	00073703          	ld	a4,0(a4)
    800021d8:	40f70733          	sub	a4,a4,a5
    800021dc:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800021e0:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800021e4:	00100793          	li	a5,1
    800021e8:	00009717          	auipc	a4,0x9
    800021ec:	3cf70c23          	sb	a5,984(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        return MemoryAllocator::Instance()->mem_alloc(size);
    800021f0:	00048593          	mv	a1,s1
    800021f4:	00009517          	auipc	a0,0x9
    800021f8:	3d450513          	addi	a0,a0,980 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	b30080e7          	jalr	-1232(ra) # 80002d2c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret

0000000080002218 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002218:	fe010113          	addi	sp,sp,-32
    8000221c:	00113c23          	sd	ra,24(sp)
    80002220:	00813823          	sd	s0,16(sp)
    80002224:	00913423          	sd	s1,8(sp)
    80002228:	02010413          	addi	s0,sp,32
    8000222c:	00050493          	mv	s1,a0
}
    80002230:	00000097          	auipc	ra,0x0
    80002234:	f3c080e7          	jalr	-196(ra) # 8000216c <_ZN6ThreadD1Ev>
    80002238:	00048513          	mv	a0,s1
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	e30080e7          	jalr	-464(ra) # 8000206c <_ZdlPv>
    80002244:	01813083          	ld	ra,24(sp)
    80002248:	01013403          	ld	s0,16(sp)
    8000224c:	00813483          	ld	s1,8(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret

0000000080002258 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00113423          	sd	ra,8(sp)
    80002260:	00813023          	sd	s0,0(sp)
    80002264:	01010413          	addi	s0,sp,16
    80002268:	00009797          	auipc	a5,0x9
    8000226c:	11878793          	addi	a5,a5,280 # 8000b380 <_ZTV9Semaphore+0x10>
    80002270:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002274:	00853503          	ld	a0,8(a0)
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	1b8080e7          	jalr	440(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
}
    80002280:	00813083          	ld	ra,8(sp)
    80002284:	00013403          	ld	s0,0(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret

0000000080002290 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00113c23          	sd	ra,24(sp)
    80002298:	00813823          	sd	s0,16(sp)
    8000229c:	00913423          	sd	s1,8(sp)
    800022a0:	02010413          	addi	s0,sp,32
    800022a4:	00050493          	mv	s1,a0
}
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	fb0080e7          	jalr	-80(ra) # 80002258 <_ZN9SemaphoreD1Ev>
    800022b0:	00048513          	mv	a0,s1
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	db8080e7          	jalr	-584(ra) # 8000206c <_ZdlPv>
    800022bc:	01813083          	ld	ra,24(sp)
    800022c0:	01013403          	ld	s0,16(sp)
    800022c4:	00813483          	ld	s1,8(sp)
    800022c8:	02010113          	addi	sp,sp,32
    800022cc:	00008067          	ret

00000000800022d0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00113423          	sd	ra,8(sp)
    800022d8:	00813023          	sd	s0,0(sp)
    800022dc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800022e0:	fffff097          	auipc	ra,0xfffff
    800022e4:	0f8080e7          	jalr	248(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800022e8:	00813083          	ld	ra,8(sp)
    800022ec:	00013403          	ld	s0,0(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00813423          	sd	s0,8(sp)
    80002300:	01010413          	addi	s0,sp,16
    myHandle(nullptr), body(body), arg(arg) {}
    80002304:	00009797          	auipc	a5,0x9
    80002308:	05478793          	addi	a5,a5,84 # 8000b358 <_ZTV6Thread+0x10>
    8000230c:	00f53023          	sd	a5,0(a0)
    80002310:	00053423          	sd	zero,8(a0)
    80002314:	00b53823          	sd	a1,16(a0)
    80002318:	00c53c23          	sd	a2,24(a0)
    8000231c:	00813403          	ld	s0,8(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <_ZN6ThreadC1Ev>:
Thread::Thread() :
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00813423          	sd	s0,8(sp)
    80002330:	01010413          	addi	s0,sp,16
        myHandle(nullptr), body(runWrapper), arg(this) {}
    80002334:	00009797          	auipc	a5,0x9
    80002338:	02478793          	addi	a5,a5,36 # 8000b358 <_ZTV6Thread+0x10>
    8000233c:	00f53023          	sd	a5,0(a0)
    80002340:	00053423          	sd	zero,8(a0)
    80002344:	00000797          	auipc	a5,0x0
    80002348:	17078793          	addi	a5,a5,368 # 800024b4 <_ZN6Thread10runWrapperEPv>
    8000234c:	00f53823          	sd	a5,16(a0)
    80002350:	00a53c23          	sd	a0,24(a0)
    80002354:	00813403          	ld	s0,8(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_ZN6Thread5startEv>:
int Thread::start() {
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00113423          	sd	ra,8(sp)
    80002368:	00813023          	sd	s0,0(sp)
    8000236c:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    80002370:	01853603          	ld	a2,24(a0)
    80002374:	01053583          	ld	a1,16(a0)
    80002378:	00850513          	addi	a0,a0,8
    8000237c:	fffff097          	auipc	ra,0xfffff
    80002380:	f70080e7          	jalr	-144(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002384:	00813083          	ld	ra,8(sp)
    80002388:	00013403          	ld	s0,0(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00113423          	sd	ra,8(sp)
    8000239c:	00813023          	sd	s0,0(sp)
    800023a0:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800023a4:	fffff097          	auipc	ra,0xfffff
    800023a8:	110080e7          	jalr	272(ra) # 800014b4 <_Z10time_sleepm>
}
    800023ac:	00813083          	ld	ra,8(sp)
    800023b0:	00013403          	ld	s0,0(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00113423          	sd	ra,8(sp)
    800023c4:	00813023          	sd	s0,0(sp)
    800023c8:	01010413          	addi	s0,sp,16
    800023cc:	00009797          	auipc	a5,0x9
    800023d0:	fb478793          	addi	a5,a5,-76 # 8000b380 <_ZTV9Semaphore+0x10>
    800023d4:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800023d8:	00850513          	addi	a0,a0,8
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	01c080e7          	jalr	28(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    800023e4:	00813083          	ld	ra,8(sp)
    800023e8:	00013403          	ld	s0,0(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002404:	00853503          	ld	a0,8(a0)
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	054080e7          	jalr	84(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
}
    80002410:	00813083          	ld	ra,8(sp)
    80002414:	00013403          	ld	s0,0(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00113423          	sd	ra,8(sp)
    80002428:	00813023          	sd	s0,0(sp)
    8000242c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002430:	00853503          	ld	a0,8(a0)
    80002434:	fffff097          	auipc	ra,0xfffff
    80002438:	054080e7          	jalr	84(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    8000243c:	00813083          	ld	ra,8(sp)
    80002440:	00013403          	ld	s0,0(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00113423          	sd	ra,8(sp)
    80002454:	00813023          	sd	s0,0(sp)
    80002458:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    8000245c:	fffff097          	auipc	ra,0xfffff
    80002460:	0ac080e7          	jalr	172(ra) # 80001508 <_Z4putcc>
}
    80002464:	00813083          	ld	ra,8(sp)
    80002468:	00013403          	ld	s0,0(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret

0000000080002474 <_ZN7Console4getcEv>:

char Console::getc() {
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00113423          	sd	ra,8(sp)
    8000247c:	00813023          	sd	s0,0(sp)
    80002480:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	05c080e7          	jalr	92(ra) # 800014e0 <_Z4getcv>
}
    8000248c:	00813083          	ld	ra,8(sp)
    80002490:	00013403          	ld	s0,0(sp)
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret

000000008000249c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {}
    8000249c:	ff010113          	addi	sp,sp,-16
    800024a0:	00813423          	sd	s0,8(sp)
    800024a4:	01010413          	addi	s0,sp,16
    800024a8:	00813403          	ld	s0,8(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN6Thread10runWrapperEPv>:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void runWrapper(void* thread) {
        if (thread) {
    800024b4:	02050863          	beqz	a0,800024e4 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    800024b8:	ff010113          	addi	sp,sp,-16
    800024bc:	00113423          	sd	ra,8(sp)
    800024c0:	00813023          	sd	s0,0(sp)
    800024c4:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    800024c8:	00053783          	ld	a5,0(a0)
    800024cc:	0107b783          	ld	a5,16(a5)
    800024d0:	000780e7          	jalr	a5
        }
    }
    800024d4:	00813083          	ld	ra,8(sp)
    800024d8:	00013403          	ld	s0,0(sp)
    800024dc:	01010113          	addi	sp,sp,16
    800024e0:	00008067          	ret
    800024e4:	00008067          	ret

00000000800024e8 <_ZN5Riscv10popSppSpieEv>:
#define SUPERVISOR_MODE 9
#define CONSOLE_INTERRUPT 0x8000000000000009UL
#define SOFTWARE_INTERRUPT 0x8000000000000001UL

void Riscv::popSppSpie()
{
    800024e8:	ff010113          	addi	sp,sp,-16
    800024ec:	00813423          	sd	s0,8(sp)
    800024f0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800024f4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800024f8:	10200073          	sret
}
    800024fc:	00813403          	ld	s0,8(sp)
    80002500:	01010113          	addi	sp,sp,16
    80002504:	00008067          	ret

0000000080002508 <_ZN5Riscv14handleSyscallsEv>:

using Body = void (*)(void*);

void Riscv::handleSyscalls() {
    80002508:	fb010113          	addi	sp,sp,-80
    8000250c:	04113423          	sd	ra,72(sp)
    80002510:	04813023          	sd	s0,64(sp)
    80002514:	02913c23          	sd	s1,56(sp)
    80002518:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000251c:	142027f3          	csrr	a5,scause
    80002520:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002524:	fb043483          	ld	s1,-80(s0)
    uint64 scause = r_scause();

    if (scause == CONSOLE_INTERRUPT) {
    80002528:	fff00793          	li	a5,-1
    8000252c:	03f79793          	slli	a5,a5,0x3f
    80002530:	00978793          	addi	a5,a5,9
    80002534:	06f48a63          	beq	s1,a5,800025a8 <_ZN5Riscv14handleSyscallsEv+0xa0>
        console_handler();
        return;
    }

    if (scause == SOFTWARE_INTERRUPT) {
    80002538:	fff00793          	li	a5,-1
    8000253c:	03f79793          	slli	a5,a5,0x3f
    80002540:	00178793          	addi	a5,a5,1
    80002544:	06f48863          	beq	s1,a5,800025b4 <_ZN5Riscv14handleSyscallsEv+0xac>
        mc_sip(SIP_SSIE);
        return;
    }

    if (scause != USER_MODE && scause != SUPERVISOR_MODE) {
    80002548:	ff848793          	addi	a5,s1,-8
    8000254c:	00100713          	li	a4,1
    80002550:	06f76863          	bltu	a4,a5,800025c0 <_ZN5Riscv14handleSyscallsEv+0xb8>
}

inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002554:	00050793          	mv	a5,a0
    80002558:	fcf43423          	sd	a5,-56(s0)
    return a0;
    8000255c:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002560:	14102773          	csrr	a4,sepc
    80002564:	fce43023          	sd	a4,-64(s0)
    return sepc;
    80002568:	fc043703          	ld	a4,-64(s0)
        printString(")\n");
        return;
    }

    uint64 codeOperation = Riscv::r_a0();
    uint64 volatile sepc = r_sepc() + 4;
    8000256c:	00470713          	addi	a4,a4,4
    80002570:	fce43c23          	sd	a4,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002574:	10002773          	csrr	a4,sstatus
    80002578:	fae43c23          	sd	a4,-72(s0)
    return sstatus;
    8000257c:	fb843703          	ld	a4,-72(s0)
    uint64 volatile sstatus = r_sstatus();
    80002580:	fce43823          	sd	a4,-48(s0)

    int returnValue;
    size_t returnSize;
    ABI::Semaphore *semHandlePtr;
    switch (codeOperation) {
    80002584:	04200713          	li	a4,66
    80002588:	10f76063          	bltu	a4,a5,80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
    8000258c:	00279793          	slli	a5,a5,0x2
    80002590:	00007717          	auipc	a4,0x7
    80002594:	afc70713          	addi	a4,a4,-1284 # 8000908c <CONSOLE_STATUS+0x7c>
    80002598:	00e787b3          	add	a5,a5,a4
    8000259c:	0007a783          	lw	a5,0(a5)
    800025a0:	00e787b3          	add	a5,a5,a4
    800025a4:	00078067          	jr	a5
        console_handler();
    800025a8:	00006097          	auipc	ra,0x6
    800025ac:	0d8080e7          	jalr	216(ra) # 80008680 <console_handler>
        return;
    800025b0:	0e80006f          	j	80002698 <_ZN5Riscv14handleSyscallsEv+0x190>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800025b4:	00200793          	li	a5,2
    800025b8:	1447b073          	csrc	sip,a5
        return;
    800025bc:	0dc0006f          	j	80002698 <_ZN5Riscv14handleSyscallsEv+0x190>
        printString("Error code: ");
    800025c0:	00007517          	auipc	a0,0x7
    800025c4:	aa850513          	addi	a0,a0,-1368 # 80009068 <CONSOLE_STATUS+0x58>
    800025c8:	00003097          	auipc	ra,0x3
    800025cc:	d38080e7          	jalr	-712(ra) # 80005300 <_Z11printStringPKc>
        printInt(scause);
    800025d0:	00000613          	li	a2,0
    800025d4:	00a00593          	li	a1,10
    800025d8:	0004851b          	sext.w	a0,s1
    800025dc:	00003097          	auipc	ra,0x3
    800025e0:	ed4080e7          	jalr	-300(ra) # 800054b0 <_Z8printIntiii>
        printString(" (BNT = ");
    800025e4:	00007517          	auipc	a0,0x7
    800025e8:	a9450513          	addi	a0,a0,-1388 # 80009078 <CONSOLE_STATUS+0x68>
    800025ec:	00003097          	auipc	ra,0x3
    800025f0:	d14080e7          	jalr	-748(ra) # 80005300 <_Z11printStringPKc>
        printInt(scause >> 63);
    800025f4:	00000613          	li	a2,0
    800025f8:	00a00593          	li	a1,10
    800025fc:	0004a513          	slti	a0,s1,0
    80002600:	00003097          	auipc	ra,0x3
    80002604:	eb0080e7          	jalr	-336(ra) # 800054b0 <_Z8printIntiii>
        printString(")\n");
    80002608:	00007517          	auipc	a0,0x7
    8000260c:	a8050513          	addi	a0,a0,-1408 # 80009088 <CONSOLE_STATUS+0x78>
    80002610:	00003097          	auipc	ra,0x3
    80002614:	cf0080e7          	jalr	-784(ra) # 80005300 <_Z11printStringPKc>
        return;
    80002618:	0800006f          	j	80002698 <_ZN5Riscv14handleSyscallsEv+0x190>
        case 0x01:
            // mem_alloc (size_t size)
            size_t size;
            void *retPtr;
            __asm__ volatile("mv %0, a1" : "=r" (size));
    8000261c:	00058593          	mv	a1,a1
    80002620:	00009797          	auipc	a5,0x9
    80002624:	fa07c783          	lbu	a5,-96(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002628:	04079263          	bnez	a5,8000266c <_ZN5Riscv14handleSyscallsEv+0x164>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000262c:	00009797          	auipc	a5,0x9
    80002630:	f1c7b783          	ld	a5,-228(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002634:	0007b783          	ld	a5,0(a5)
    80002638:	00009717          	auipc	a4,0x9
    8000263c:	f9070713          	addi	a4,a4,-112 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002640:	00f73023          	sd	a5,0(a4)
    80002644:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002648:	00009717          	auipc	a4,0x9
    8000264c:	f2073703          	ld	a4,-224(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002650:	00073703          	ld	a4,0(a4)
    80002654:	40f70733          	sub	a4,a4,a5
    80002658:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    8000265c:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002660:	00100793          	li	a5,1
    80002664:	00009717          	auipc	a4,0x9
    80002668:	f4f70e23          	sb	a5,-164(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            retPtr = MemoryAllocator::Instance()->mem_alloc(size * MEM_BLOCK_SIZE);
    8000266c:	00659593          	slli	a1,a1,0x6
    80002670:	00009517          	auipc	a0,0x9
    80002674:	f5850513          	addi	a0,a0,-168 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	564080e7          	jalr	1380(ra) # 80002bdc <_ZN15MemoryAllocator9mem_allocEm>

            __asm__ volatile ("mv t0, %0" : : "r" (retPtr));
    80002680:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002684:	04542823          	sw	t0,80(s0)
            __asm__ volatile ("mv %0, a1" : "=r" (c));
            __putc(c);
            break;
    }

    w_sstatus(sstatus);
    80002688:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000268c:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    80002690:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002694:	14179073          	csrw	sepc,a5
}
    80002698:	04813083          	ld	ra,72(sp)
    8000269c:	04013403          	ld	s0,64(sp)
    800026a0:	03813483          	ld	s1,56(sp)
    800026a4:	05010113          	addi	sp,sp,80
    800026a8:	00008067          	ret
            __asm__ volatile("mv %0, a1" : "=r" (memPtr));
    800026ac:	00058593          	mv	a1,a1
    800026b0:	00009797          	auipc	a5,0x9
    800026b4:	f107c783          	lbu	a5,-240(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026b8:	04079263          	bnez	a5,800026fc <_ZN5Riscv14handleSyscallsEv+0x1f4>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    800026bc:	00009797          	auipc	a5,0x9
    800026c0:	e8c7b783          	ld	a5,-372(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026c4:	0007b783          	ld	a5,0(a5)
    800026c8:	00009717          	auipc	a4,0x9
    800026cc:	f0070713          	addi	a4,a4,-256 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800026d0:	00f73023          	sd	a5,0(a4)
    800026d4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800026d8:	00009717          	auipc	a4,0x9
    800026dc:	e9073703          	ld	a4,-368(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026e0:	00073703          	ld	a4,0(a4)
    800026e4:	40f70733          	sub	a4,a4,a5
    800026e8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800026ec:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800026f0:	00100793          	li	a5,1
    800026f4:	00009717          	auipc	a4,0x9
    800026f8:	ecf70623          	sb	a5,-308(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnValue = MemoryAllocator::Instance()->mem_free(memPtr);
    800026fc:	00009517          	auipc	a0,0x9
    80002700:	ecc50513          	addi	a0,a0,-308 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002704:	00000097          	auipc	ra,0x0
    80002708:	628080e7          	jalr	1576(ra) # 80002d2c <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
    8000270c:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002710:	04542823          	sw	t0,80(s0)
            break;
    80002714:	f75ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
    80002718:	00009797          	auipc	a5,0x9
    8000271c:	ea87c783          	lbu	a5,-344(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002720:	04079263          	bnez	a5,80002764 <_ZN5Riscv14handleSyscallsEv+0x25c>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002724:	00009797          	auipc	a5,0x9
    80002728:	e247b783          	ld	a5,-476(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000272c:	0007b783          	ld	a5,0(a5)
    80002730:	00009717          	auipc	a4,0x9
    80002734:	e9870713          	addi	a4,a4,-360 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002738:	00f73023          	sd	a5,0(a4)
    8000273c:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002740:	00009717          	auipc	a4,0x9
    80002744:	e2873703          	ld	a4,-472(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002748:	00073703          	ld	a4,0(a4)
    8000274c:	40f70733          	sub	a4,a4,a5
    80002750:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002754:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002758:	00100793          	li	a5,1
    8000275c:	00009717          	auipc	a4,0x9
    80002760:	e6f70223          	sb	a5,-412(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnSize = MemoryAllocator::Instance()->mem_get_free_space();
    80002764:	00009517          	auipc	a0,0x9
    80002768:	e6450513          	addi	a0,a0,-412 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	6ac080e7          	jalr	1708(ra) # 80002e18 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnSize));
    80002774:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002778:	04542823          	sw	t0,80(s0)
            break;
    8000277c:	f0dff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
    80002780:	00009797          	auipc	a5,0x9
    80002784:	e407c783          	lbu	a5,-448(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002788:	04079263          	bnez	a5,800027cc <_ZN5Riscv14handleSyscallsEv+0x2c4>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    8000278c:	00009797          	auipc	a5,0x9
    80002790:	dbc7b783          	ld	a5,-580(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002794:	0007b783          	ld	a5,0(a5)
    80002798:	00009717          	auipc	a4,0x9
    8000279c:	e3070713          	addi	a4,a4,-464 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027a0:	00f73023          	sd	a5,0(a4)
    800027a4:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    800027a8:	00009717          	auipc	a4,0x9
    800027ac:	dc073703          	ld	a4,-576(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    800027b0:	00073703          	ld	a4,0(a4)
    800027b4:	40f70733          	sub	a4,a4,a5
    800027b8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    800027bc:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    800027c0:	00100793          	li	a5,1
    800027c4:	00009717          	auipc	a4,0x9
    800027c8:	def70e23          	sb	a5,-516(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
            returnSize = MemoryAllocator::Instance()->mem_get_largest_free_block();
    800027cc:	00009517          	auipc	a0,0x9
    800027d0:	dfc50513          	addi	a0,a0,-516 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	678080e7          	jalr	1656(ra) # 80002e4c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnSize));
    800027dc:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800027e0:	04542823          	sw	t0,80(s0)
            break;
    800027e4:	ea5ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            __asm__ volatile ("mv %0, a1" : "=r" (thread));
    800027e8:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    800027ec:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %0, a6" : "=r" (stack));
    800027f0:	00080613          	mv	a2,a6
            __asm__ volatile ("mv %0, a7" : "=r" (arg));
    800027f4:	00088593          	mv	a1,a7
            *thread = TCB::createThread(body, arg, stack);
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	4d4080e7          	jalr	1236(ra) # 80001ccc <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002800:	00a4b023          	sd	a0,0(s1)
            if (*thread != nullptr) {
    80002804:	00050863          	beqz	a0,80002814 <_ZN5Riscv14handleSyscallsEv+0x30c>
                __asm__ volatile ("li t0, 0");
    80002808:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    8000280c:	04542823          	sw	t0,80(s0)
    80002810:	e79ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
                __asm__ volatile ("li t0, -1");
    80002814:	fff00293          	li	t0,-1
                __asm__ volatile ("sw t0, 80(x8)");
    80002818:	04542823          	sw	t0,80(s0)
    8000281c:	e6dff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            TCB::running->setFinished(true);
    80002820:	00009797          	auipc	a5,0x9
    80002824:	d407b783          	ld	a5,-704(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002828:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    8000282c:	00100713          	li	a4,1
    80002830:	02e78023          	sb	a4,32(a5)
            TCB::dispatch();
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	6a8080e7          	jalr	1704(ra) # 80001edc <_ZN3TCB8dispatchEv>
            __asm__ volatile ("li a0, 0");
    8000283c:	00000513          	li	a0,0
            break;
    80002840:	e49ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            TCB::dispatch();
    80002844:	fffff097          	auipc	ra,0xfffff
    80002848:	698080e7          	jalr	1688(ra) # 80001edc <_ZN3TCB8dispatchEv>
            break;
    8000284c:	e3dff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002850:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002854:	00060513          	mv	a0,a2
            *semHandle = ABI::Semaphore::createSemaphore(init);
    80002858:	0005051b          	sext.w	a0,a0
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	128080e7          	jalr	296(ra) # 80001984 <_ZN3ABI9Semaphore15createSemaphoreEj>
    80002864:	00a4b023          	sd	a0,0(s1)
            if (*semHandle != nullptr) {
    80002868:	00050863          	beqz	a0,80002878 <_ZN5Riscv14handleSyscallsEv+0x370>
                __asm__ volatile ("li t0, 0");
    8000286c:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002870:	04542823          	sw	t0,80(s0)
    80002874:	e15ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
                __asm__ volatile ("li t0, -1");
    80002878:	fff00293          	li	t0,-1
                __asm__ volatile ("sw t0, 80(x8)");
    8000287c:	04542823          	sw	t0,80(s0)
    80002880:	e09ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002884:	00058513          	mv	a0,a1
            if (semHandlePtr) returnValue = semHandlePtr->close();
    80002888:	00050c63          	beqz	a0,800028a0 <_ZN5Riscv14handleSyscallsEv+0x398>
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	348080e7          	jalr	840(ra) # 80001bd4 <_ZN3ABI9Semaphore5closeEv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
    80002894:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    80002898:	04542823          	sw	t0,80(s0)
            break;
    8000289c:	dedff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            else returnValue = -2;
    800028a0:	ffe00513          	li	a0,-2
    800028a4:	ff1ff06f          	j	80002894 <_ZN5Riscv14handleSyscallsEv+0x38c>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028a8:	00058513          	mv	a0,a1
            if (semHandlePtr) returnValue = semHandlePtr->wait();
    800028ac:	00050c63          	beqz	a0,800028c4 <_ZN5Riscv14handleSyscallsEv+0x3bc>
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	210080e7          	jalr	528(ra) # 80001ac0 <_ZN3ABI9Semaphore4waitEv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
    800028b8:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800028bc:	04542823          	sw	t0,80(s0)
            break;
    800028c0:	dc9ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            else returnValue = -2;
    800028c4:	ffe00513          	li	a0,-2
    800028c8:	ff1ff06f          	j	800028b8 <_ZN5Riscv14handleSyscallsEv+0x3b0>
            __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028cc:	00058513          	mv	a0,a1
            if (semHandlePtr) returnValue = semHandlePtr->signal();
    800028d0:	00050c63          	beqz	a0,800028e8 <_ZN5Riscv14handleSyscallsEv+0x3e0>
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	2ac080e7          	jalr	684(ra) # 80001b80 <_ZN3ABI9Semaphore6signalEv>
            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
    800028dc:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800028e0:	04542823          	sw	t0,80(s0)
            break;
    800028e4:	da5ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            else returnValue = -2;
    800028e8:	ffe00513          	li	a0,-2
    800028ec:	ff1ff06f          	j	800028dc <_ZN5Riscv14handleSyscallsEv+0x3d4>
            returnValue = __getc();
    800028f0:	00006097          	auipc	ra,0x6
    800028f4:	d58080e7          	jalr	-680(ra) # 80008648 <__getc>
            __asm__ volatile ("mv t0, %0" : : "r" (returnValue));
    800028f8:	00050293          	mv	t0,a0
            __asm__ volatile ("sw t0, 80(x8)");
    800028fc:	04542823          	sw	t0,80(s0)
            break;
    80002900:	d89ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>
            __asm__ volatile ("mv %0, a1" : "=r" (c));
    80002904:	00058513          	mv	a0,a1
            __putc(c);
    80002908:	0ff57513          	andi	a0,a0,255
    8000290c:	00006097          	auipc	ra,0x6
    80002910:	d00080e7          	jalr	-768(ra) # 8000860c <__putc>
            break;
    80002914:	d75ff06f          	j	80002688 <_ZN5Riscv14handleSyscallsEv+0x180>

0000000080002918 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002918:	ff010113          	addi	sp,sp,-16
    8000291c:	00813423          	sd	s0,8(sp)
    80002920:	01010413          	addi	s0,sp,16
    80002924:	00100793          	li	a5,1
    80002928:	00f50863          	beq	a0,a5,80002938 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000292c:	00813403          	ld	s0,8(sp)
    80002930:	01010113          	addi	sp,sp,16
    80002934:	00008067          	ret
    80002938:	000107b7          	lui	a5,0x10
    8000293c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002940:	fef596e3          	bne	a1,a5,8000292c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002944:	00009797          	auipc	a5,0x9
    80002948:	cac78793          	addi	a5,a5,-852 # 8000b5f0 <_ZN9Scheduler19readyCoroutineQueueE>
    8000294c:	0007b023          	sd	zero,0(a5)
    80002950:	0007b423          	sd	zero,8(a5)
    80002954:	fd9ff06f          	j	8000292c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002958 <_ZN9Scheduler3getEv>:
{
    80002958:	fe010113          	addi	sp,sp,-32
    8000295c:	00113c23          	sd	ra,24(sp)
    80002960:	00813823          	sd	s0,16(sp)
    80002964:	00913423          	sd	s1,8(sp)
    80002968:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    8000296c:	00009517          	auipc	a0,0x9
    80002970:	c8453503          	ld	a0,-892(a0) # 8000b5f0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002974:	04050263          	beqz	a0,800029b8 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002978:	00853783          	ld	a5,8(a0)
    8000297c:	00009717          	auipc	a4,0x9
    80002980:	c6f73a23          	sd	a5,-908(a4) # 8000b5f0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002984:	02078463          	beqz	a5,800029ac <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002988:	00053483          	ld	s1,0(a0)
        delete elem;
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	6e0080e7          	jalr	1760(ra) # 8000206c <_ZdlPv>
}
    80002994:	00048513          	mv	a0,s1
    80002998:	01813083          	ld	ra,24(sp)
    8000299c:	01013403          	ld	s0,16(sp)
    800029a0:	00813483          	ld	s1,8(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00008067          	ret
        if (!head) { tail = 0; }
    800029ac:	00009797          	auipc	a5,0x9
    800029b0:	c407b623          	sd	zero,-948(a5) # 8000b5f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029b4:	fd5ff06f          	j	80002988 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029b8:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800029bc:	fd9ff06f          	j	80002994 <_ZN9Scheduler3getEv+0x3c>

00000000800029c0 <_ZN9Scheduler3putEP3TCB>:
{
    800029c0:	fe010113          	addi	sp,sp,-32
    800029c4:	00113c23          	sd	ra,24(sp)
    800029c8:	00813823          	sd	s0,16(sp)
    800029cc:	00913423          	sd	s1,8(sp)
    800029d0:	02010413          	addi	s0,sp,32
    800029d4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800029d8:	01000513          	li	a0,16
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	590080e7          	jalr	1424(ra) # 80001f6c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800029e4:	00953023          	sd	s1,0(a0)
    800029e8:	00053423          	sd	zero,8(a0)
        if (tail)
    800029ec:	00009797          	auipc	a5,0x9
    800029f0:	c0c7b783          	ld	a5,-1012(a5) # 8000b5f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800029f4:	02078263          	beqz	a5,80002a18 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800029f8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800029fc:	00009797          	auipc	a5,0x9
    80002a00:	bea7be23          	sd	a0,-1028(a5) # 8000b5f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002a04:	01813083          	ld	ra,24(sp)
    80002a08:	01013403          	ld	s0,16(sp)
    80002a0c:	00813483          	ld	s1,8(sp)
    80002a10:	02010113          	addi	sp,sp,32
    80002a14:	00008067          	ret
            head = tail = elem;
    80002a18:	00009797          	auipc	a5,0x9
    80002a1c:	bd878793          	addi	a5,a5,-1064 # 8000b5f0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a20:	00a7b423          	sd	a0,8(a5)
    80002a24:	00a7b023          	sd	a0,0(a5)
    80002a28:	fddff06f          	j	80002a04 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002a2c <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002a2c:	ff010113          	addi	sp,sp,-16
    80002a30:	00113423          	sd	ra,8(sp)
    80002a34:	00813023          	sd	s0,0(sp)
    80002a38:	01010413          	addi	s0,sp,16
    80002a3c:	000105b7          	lui	a1,0x10
    80002a40:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a44:	00100513          	li	a0,1
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	ed0080e7          	jalr	-304(ra) # 80002918 <_Z41__static_initialization_and_destruction_0ii>
    80002a50:	00813083          	ld	ra,8(sp)
    80002a54:	00013403          	ld	s0,0(sp)
    80002a58:	01010113          	addi	sp,sp,16
    80002a5c:	00008067          	ret

0000000080002a60 <main>:
#include "../test/printing.hpp"

extern void userMain();

int main()
{
    80002a60:	fd010113          	addi	sp,sp,-48
    80002a64:	02113423          	sd	ra,40(sp)
    80002a68:	02813023          	sd	s0,32(sp)
    80002a6c:	00913c23          	sd	s1,24(sp)
    80002a70:	03010413          	addi	s0,sp,48
    TCB *mainThread, *userMainThread;

    Riscv::w_stvec((uint64) &Riscv::stvecTrap);
    80002a74:	00009797          	auipc	a5,0x9
    80002a78:	afc7b783          	ld	a5,-1284(a5) # 8000b570 <_GLOBAL_OFFSET_TABLE_+0x38>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002a7c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a80:	00200793          	li	a5,2
    80002a84:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    mainThread = TCB::createThread(nullptr, nullptr, nullptr);
    80002a88:	00000613          	li	a2,0
    80002a8c:	00000593          	li	a1,0
    80002a90:	00000513          	li	a0,0
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	238080e7          	jalr	568(ra) # 80001ccc <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002a9c:	00050493          	mv	s1,a0
    TCB::main = TCB::running = mainThread;
    80002aa0:	00009797          	auipc	a5,0x9
    80002aa4:	ac07b783          	ld	a5,-1344(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002aa8:	00a7b023          	sd	a0,0(a5)
    80002aac:	00009797          	auipc	a5,0x9
    80002ab0:	aac7b783          	ld	a5,-1364(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ab4:	00a7b023          	sd	a0,0(a5)

    thread_create(&userMainThread, reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80002ab8:	00000613          	li	a2,0
    80002abc:	00009597          	auipc	a1,0x9
    80002ac0:	a845b583          	ld	a1,-1404(a1) # 8000b540 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ac4:	fd840513          	addi	a0,s0,-40
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	824080e7          	jalr	-2012(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>

    while(!userMainThread->isFinished()) {
    80002ad0:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished; }
    80002ad4:	0207c783          	lbu	a5,32(a5)
    80002ad8:	00079863          	bnez	a5,80002ae8 <main+0x88>
        thread_dispatch();
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	8fc080e7          	jalr	-1796(ra) # 800013d8 <_Z15thread_dispatchv>
    80002ae4:	fedff06f          	j	80002ad0 <main+0x70>
    }

    printString("Main finished\n");
    80002ae8:	00006517          	auipc	a0,0x6
    80002aec:	6b050513          	addi	a0,a0,1712 # 80009198 <CONSOLE_STATUS+0x188>
    80002af0:	00003097          	auipc	ra,0x3
    80002af4:	810080e7          	jalr	-2032(ra) # 80005300 <_Z11printStringPKc>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002af8:	00200793          	li	a5,2
    80002afc:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    delete mainThread;
    80002b00:	02048063          	beqz	s1,80002b20 <main+0xc0>
    ~TCB() { delete[] stack; }
    80002b04:	0084b503          	ld	a0,8(s1)
    80002b08:	00050663          	beqz	a0,80002b14 <main+0xb4>
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	5e0080e7          	jalr	1504(ra) # 800020ec <_ZdaPv>
    80002b14:	00048513          	mv	a0,s1
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	044080e7          	jalr	68(ra) # 80002b5c <_ZN3TCBdlEPv>
    delete userMainThread;
    80002b20:	fd843483          	ld	s1,-40(s0)
    80002b24:	02048063          	beqz	s1,80002b44 <main+0xe4>
    80002b28:	0084b503          	ld	a0,8(s1)
    80002b2c:	00050663          	beqz	a0,80002b38 <main+0xd8>
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	5bc080e7          	jalr	1468(ra) # 800020ec <_ZdaPv>
    80002b38:	00048513          	mv	a0,s1
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	020080e7          	jalr	32(ra) # 80002b5c <_ZN3TCBdlEPv>
    return 0;
    80002b44:	00000513          	li	a0,0
    80002b48:	02813083          	ld	ra,40(sp)
    80002b4c:	02013403          	ld	s0,32(sp)
    80002b50:	01813483          	ld	s1,24(sp)
    80002b54:	03010113          	addi	sp,sp,48
    80002b58:	00008067          	ret

0000000080002b5c <_ZN3TCBdlEPv>:
    void operator delete(void *ptr) {
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00113423          	sd	ra,8(sp)
    80002b64:	00813023          	sd	s0,0(sp)
    80002b68:	01010413          	addi	s0,sp,16
    80002b6c:	00050593          	mv	a1,a0
    80002b70:	00009797          	auipc	a5,0x9
    80002b74:	a507c783          	lbu	a5,-1456(a5) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002b78:	04079263          	bnez	a5,80002bbc <_ZN3TCBdlEPv+0x60>
    MemoryAllocator() : free_head((Header*)HEAP_START_ADDR), alloc_head(nullptr) {
    80002b7c:	00009797          	auipc	a5,0x9
    80002b80:	9cc7b783          	ld	a5,-1588(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002b84:	0007b783          	ld	a5,0(a5)
    80002b88:	00009717          	auipc	a4,0x9
    80002b8c:	a4070713          	addi	a4,a4,-1472 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002b90:	00f73023          	sd	a5,0(a4)
    80002b94:	00073423          	sd	zero,8(a4)
        free_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002b98:	00009717          	auipc	a4,0x9
    80002b9c:	9d073703          	ld	a4,-1584(a4) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ba0:	00073703          	ld	a4,0(a4)
    80002ba4:	40f70733          	sub	a4,a4,a5
    80002ba8:	00e7b423          	sd	a4,8(a5)
        free_head->next = nullptr;
    80002bac:	0007b023          	sd	zero,0(a5)
        static MemoryAllocator memoryAllocator;
    80002bb0:	00100793          	li	a5,1
    80002bb4:	00009717          	auipc	a4,0x9
    80002bb8:	a0f70623          	sb	a5,-1524(a4) # 8000b5c0 <_ZGVZN15MemoryAllocator8InstanceEvE15memoryAllocator>
        MemoryAllocator::Instance()->mem_free(ptr);
    80002bbc:	00009517          	auipc	a0,0x9
    80002bc0:	a0c50513          	addi	a0,a0,-1524 # 8000b5c8 <_ZZN15MemoryAllocator8InstanceEvE15memoryAllocator>
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	168080e7          	jalr	360(ra) # 80002d2c <_ZN15MemoryAllocator8mem_freeEPv>
    }
    80002bcc:	00813083          	ld	ra,8(sp)
    80002bd0:	00013403          	ld	s0,0(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::mem_alloc(size_t size) {
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00813423          	sd	s0,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	00050613          	mv	a2,a0
    size += sizeof(Header);
    80002bec:	01058593          	addi	a1,a1,16
    size_t paddedSize = size - (size % MEM_BLOCK_SIZE) + (size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE : 0);
    80002bf0:	fc05f713          	andi	a4,a1,-64
    80002bf4:	03f5f593          	andi	a1,a1,63
    80002bf8:	00058463          	beqz	a1,80002c00 <_ZN15MemoryAllocator9mem_allocEm+0x24>
    80002bfc:	04000593          	li	a1,64
    80002c00:	00b70733          	add	a4,a4,a1

    Header *cur, *prev = nullptr;
    Header* target;

    // Split/Remove from free list
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002c04:	00063503          	ld	a0,0(a2) # 2000 <_entry-0x7fffe000>
    Header *cur, *prev = nullptr;
    80002c08:	00000693          	li	a3,0
    for (cur = free_head; cur != nullptr && cur->size < paddedSize; prev = cur, cur = cur->next);
    80002c0c:	00050c63          	beqz	a0,80002c24 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002c10:	00853783          	ld	a5,8(a0)
    80002c14:	00e7f863          	bgeu	a5,a4,80002c24 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    80002c18:	00050693          	mv	a3,a0
    80002c1c:	00053503          	ld	a0,0(a0)
    80002c20:	fedff06f          	j	80002c0c <_ZN15MemoryAllocator9mem_allocEm+0x30>
    if (cur == nullptr) return nullptr; // Error: Continuous memory block of requested size not found
    80002c24:	08050a63          	beqz	a0,80002cb8 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

    target = cur;
    if (cur->size == paddedSize) {
    80002c28:	00853783          	ld	a5,8(a0)
    80002c2c:	04e78a63          	beq	a5,a4,80002c80 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if (prev) prev->next = cur->next;
        else free_head = cur->next;
    }
    else {
        cur = (Header*)((char*)cur + paddedSize);
    80002c30:	00e507b3          	add	a5,a0,a4
        if (prev) prev->next = cur;
    80002c34:	06068463          	beqz	a3,80002c9c <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002c38:	00f6b023          	sd	a5,0(a3)
        else free_head = cur;
        cur->next = target->next;
    80002c3c:	00053683          	ld	a3,0(a0)
    80002c40:	00d7b023          	sd	a3,0(a5)
        cur->size = target->size - paddedSize;
    80002c44:	00853683          	ld	a3,8(a0)
    80002c48:	40e686b3          	sub	a3,a3,a4
    80002c4c:	00d7b423          	sd	a3,8(a5)
    }
    target->size = paddedSize;
    80002c50:	00e53423          	sd	a4,8(a0)
    target->next = nullptr;
    80002c54:	00053023          	sd	zero,0(a0)

    // Add to alloc list
    if (alloc_head == nullptr) cur = nullptr;
    80002c58:	00863683          	ld	a3,8(a2)
    80002c5c:	04068463          	beqz	a3,80002ca4 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    else for (cur = alloc_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002c60:	00068793          	mv	a5,a3
    80002c64:	00078713          	mv	a4,a5
    80002c68:	0007b783          	ld	a5,0(a5)
    80002c6c:	00078463          	beqz	a5,80002c74 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80002c70:	fea7eae3          	bltu	a5,a0,80002c64 <_ZN15MemoryAllocator9mem_allocEm+0x88>

    if (cur) target->next = cur->next;
    80002c74:	02070a63          	beqz	a4,80002ca8 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002c78:	00f53023          	sd	a5,0(a0)
    80002c7c:	0300006f          	j	80002cac <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if (prev) prev->next = cur->next;
    80002c80:	00068863          	beqz	a3,80002c90 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002c84:	00053783          	ld	a5,0(a0)
    80002c88:	00f6b023          	sd	a5,0(a3)
    80002c8c:	fc5ff06f          	j	80002c50 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur->next;
    80002c90:	00053783          	ld	a5,0(a0)
    80002c94:	00f63023          	sd	a5,0(a2)
    80002c98:	fb9ff06f          	j	80002c50 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else free_head = cur;
    80002c9c:	00f63023          	sd	a5,0(a2)
    80002ca0:	f9dff06f          	j	80002c3c <_ZN15MemoryAllocator9mem_allocEm+0x60>
    if (alloc_head == nullptr) cur = nullptr;
    80002ca4:	00068713          	mv	a4,a3
    else target->next = alloc_head;
    80002ca8:	00d53023          	sd	a3,0(a0)

    if (cur) cur->next = target;
    80002cac:	00070c63          	beqz	a4,80002cc4 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002cb0:	00a73023          	sd	a0,0(a4)
    else alloc_head = target;

    return (void*)((char*)target + sizeof(Header));
    80002cb4:	01050513          	addi	a0,a0,16
}
    80002cb8:	00813403          	ld	s0,8(sp)
    80002cbc:	01010113          	addi	sp,sp,16
    80002cc0:	00008067          	ret
    else alloc_head = target;
    80002cc4:	00a63423          	sd	a0,8(a2)
    80002cc8:	fedff06f          	j	80002cb4 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

0000000080002ccc <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>:
    tryToJoin(target);
    tryToJoin(cur);
    return 0;
}

int MemoryAllocator::tryToJoin(Header* cur) {
    80002ccc:	ff010113          	addi	sp,sp,-16
    80002cd0:	00813423          	sd	s0,8(sp)
    80002cd4:	01010413          	addi	s0,sp,16
    if (cur == nullptr) return 0;
    80002cd8:	04050263          	beqz	a0,80002d1c <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x50>

    if (cur->next && (char*)cur + cur->size == (char*)(cur->next)) {
    80002cdc:	00053783          	ld	a5,0(a0)
    80002ce0:	04078263          	beqz	a5,80002d24 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x58>
    80002ce4:	00853703          	ld	a4,8(a0)
    80002ce8:	00e506b3          	add	a3,a0,a4
    80002cec:	00d78a63          	beq	a5,a3,80002d00 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
        return 1;
    }
    else return 0;
    80002cf0:	00000513          	li	a0,0
}
    80002cf4:	00813403          	ld	s0,8(sp)
    80002cf8:	01010113          	addi	sp,sp,16
    80002cfc:	00008067          	ret
        cur->size += cur->next->size;
    80002d00:	0087b683          	ld	a3,8(a5)
    80002d04:	00d70733          	add	a4,a4,a3
    80002d08:	00e53423          	sd	a4,8(a0)
        cur->next = cur->next->next;
    80002d0c:	0007b783          	ld	a5,0(a5)
    80002d10:	00f53023          	sd	a5,0(a0)
        return 1;
    80002d14:	00100513          	li	a0,1
    80002d18:	fddff06f          	j	80002cf4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    if (cur == nullptr) return 0;
    80002d1c:	00000513          	li	a0,0
    80002d20:	fd5ff06f          	j	80002cf4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>
    else return 0;
    80002d24:	00000513          	li	a0,0
    80002d28:	fcdff06f          	j	80002cf4 <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE+0x28>

0000000080002d2c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1; // Error: Address not provided
    80002d2c:	0c058a63          	beqz	a1,80002e00 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002d30:	00050693          	mv	a3,a0
    Header* target = (Header*)((char*)addr - sizeof(Header));
    80002d34:	ff058513          	addi	a0,a1,-16
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002d38:	0086b783          	ld	a5,8(a3)
    Header *cur, *prev = nullptr;
    80002d3c:	00000713          	li	a4,0
    for (cur = alloc_head; cur != nullptr && target > cur; prev = cur, cur = cur->next);
    80002d40:	00078a63          	beqz	a5,80002d54 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002d44:	00a7f863          	bgeu	a5,a0,80002d54 <_ZN15MemoryAllocator8mem_freeEPv+0x28>
    80002d48:	00078713          	mv	a4,a5
    80002d4c:	0007b783          	ld	a5,0(a5)
    80002d50:	ff1ff06f          	j	80002d40 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002d54:	0a078a63          	beqz	a5,80002e08 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002d58:	0aa79c63          	bne	a5,a0,80002e10 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
int MemoryAllocator::mem_free(void* addr) {
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00113c23          	sd	ra,24(sp)
    80002d64:	00813823          	sd	s0,16(sp)
    80002d68:	00913423          	sd	s1,8(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    if (prev) prev->next = cur->next;
    80002d70:	02070c63          	beqz	a4,80002da8 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    80002d74:	0007b783          	ld	a5,0(a5)
    80002d78:	00f73023          	sd	a5,0(a4)
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002d7c:	0006b703          	ld	a4,0(a3)
    80002d80:	02070a63          	beqz	a4,80002db4 <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    80002d84:	02e56c63          	bltu	a0,a4,80002dbc <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    else for (cur = free_head; cur->next != nullptr && target > cur->next; cur = cur->next);
    80002d88:	00070793          	mv	a5,a4
    80002d8c:	00078493          	mv	s1,a5
    80002d90:	0007b783          	ld	a5,0(a5)
    80002d94:	00078463          	beqz	a5,80002d9c <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002d98:	fea7eae3          	bltu	a5,a0,80002d8c <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    if (cur) target->next = cur->next;
    80002d9c:	02048263          	beqz	s1,80002dc0 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002da0:	fef5b823          	sd	a5,-16(a1)
    80002da4:	0200006f          	j	80002dc4 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    else alloc_head = cur->next;
    80002da8:	0007b783          	ld	a5,0(a5)
    80002dac:	00f6b423          	sd	a5,8(a3)
    80002db0:	fcdff06f          	j	80002d7c <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    if (free_head == nullptr || target < free_head) cur = nullptr;
    80002db4:	00070493          	mv	s1,a4
    80002db8:	0080006f          	j	80002dc0 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002dbc:	00000493          	li	s1,0
    else target->next = free_head;
    80002dc0:	fee5b823          	sd	a4,-16(a1)
    if (cur) cur->next = target;
    80002dc4:	02048a63          	beqz	s1,80002df8 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002dc8:	00a4b023          	sd	a0,0(s1)
    tryToJoin(target);
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	f00080e7          	jalr	-256(ra) # 80002ccc <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    tryToJoin(cur);
    80002dd4:	00048513          	mv	a0,s1
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	ef4080e7          	jalr	-268(ra) # 80002ccc <_ZN15MemoryAllocator9tryToJoinEPNS_6HeaderE>
    return 0;
    80002de0:	00000513          	li	a0,0
}
    80002de4:	01813083          	ld	ra,24(sp)
    80002de8:	01013403          	ld	s0,16(sp)
    80002dec:	00813483          	ld	s1,8(sp)
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret
    else free_head = target;
    80002df8:	00a6b023          	sd	a0,0(a3)
    80002dfc:	fd1ff06f          	j	80002dcc <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    if (addr == nullptr) return -1; // Error: Address not provided
    80002e00:	fff00513          	li	a0,-1
    80002e04:	00008067          	ret
    if (cur == nullptr || cur != target) return -2; // Error: Allocated memory block not found
    80002e08:	ffe00513          	li	a0,-2
    80002e0c:	00008067          	ret
    80002e10:	ffe00513          	li	a0,-2
}
    80002e14:	00008067          	ret

0000000080002e18 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002e18:	ff010113          	addi	sp,sp,-16
    80002e1c:	00813423          	sd	s0,8(sp)
    80002e20:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e24:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002e28:	00000513          	li	a0,0
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e2c:	00078a63          	beqz	a5,80002e40 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x28>
        result += cur->size;
    80002e30:	0087b703          	ld	a4,8(a5)
    80002e34:	00e50533          	add	a0,a0,a4
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e38:	0007b783          	ld	a5,0(a5)
    80002e3c:	ff1ff06f          	j	80002e2c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x14>
    }

    return result;
}
    80002e40:	00813403          	ld	s0,8(sp)
    80002e44:	01010113          	addi	sp,sp,16
    80002e48:	00008067          	ret

0000000080002e4c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002e4c:	ff010113          	addi	sp,sp,-16
    80002e50:	00813423          	sd	s0,8(sp)
    80002e54:	01010413          	addi	s0,sp,16
    size_t result = 0;

    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e58:	00053783          	ld	a5,0(a0)
    size_t result = 0;
    80002e5c:	00000513          	li	a0,0
    80002e60:	0080006f          	j	80002e68 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    for (Header* cur = free_head; cur != nullptr; cur = cur->next) {
    80002e64:	0007b783          	ld	a5,0(a5)
    80002e68:	00078a63          	beqz	a5,80002e7c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x30>
        if (result < cur->size) result = cur->size;
    80002e6c:	0087b703          	ld	a4,8(a5)
    80002e70:	fee57ae3          	bgeu	a0,a4,80002e64 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    80002e74:	00070513          	mv	a0,a4
    80002e78:	fedff06f          	j	80002e64 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x18>
    }

    return result;
    80002e7c:	00813403          	ld	s0,8(sp)
    80002e80:	01010113          	addi	sp,sp,16
    80002e84:	00008067          	ret

0000000080002e88 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002e88:	fe010113          	addi	sp,sp,-32
    80002e8c:	00113c23          	sd	ra,24(sp)
    80002e90:	00813823          	sd	s0,16(sp)
    80002e94:	00913423          	sd	s1,8(sp)
    80002e98:	01213023          	sd	s2,0(sp)
    80002e9c:	02010413          	addi	s0,sp,32
    80002ea0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ea4:	00000913          	li	s2,0
    80002ea8:	00c0006f          	j	80002eb4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'e') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002eac:	ffffe097          	auipc	ra,0xffffe
    80002eb0:	52c080e7          	jalr	1324(ra) # 800013d8 <_Z15thread_dispatchv>
    while ((key = getc()) != 'e') {
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	62c080e7          	jalr	1580(ra) # 800014e0 <_Z4getcv>
    80002ebc:	0005059b          	sext.w	a1,a0
    80002ec0:	06500793          	li	a5,101
    80002ec4:	02f58a63          	beq	a1,a5,80002ef8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002ec8:	0084b503          	ld	a0,8(s1)
    80002ecc:	00003097          	auipc	ra,0x3
    80002ed0:	3f4080e7          	jalr	1012(ra) # 800062c0 <_ZN6Buffer3putEi>
        i++;
    80002ed4:	0019071b          	addiw	a4,s2,1
    80002ed8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002edc:	0004a683          	lw	a3,0(s1)
    80002ee0:	0026979b          	slliw	a5,a3,0x2
    80002ee4:	00d787bb          	addw	a5,a5,a3
    80002ee8:	0017979b          	slliw	a5,a5,0x1
    80002eec:	02f767bb          	remw	a5,a4,a5
    80002ef0:	fc0792e3          	bnez	a5,80002eb4 <_ZL16producerKeyboardPv+0x2c>
    80002ef4:	fb9ff06f          	j	80002eac <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002ef8:	00100793          	li	a5,1
    80002efc:	00008717          	auipc	a4,0x8
    80002f00:	70f72223          	sw	a5,1796(a4) # 8000b600 <_ZL9threadEnd>
    data->buffer->put('!');
    80002f04:	02100593          	li	a1,33
    80002f08:	0084b503          	ld	a0,8(s1)
    80002f0c:	00003097          	auipc	ra,0x3
    80002f10:	3b4080e7          	jalr	948(ra) # 800062c0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002f14:	0104b503          	ld	a0,16(s1)
    80002f18:	ffffe097          	auipc	ra,0xffffe
    80002f1c:	570080e7          	jalr	1392(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002f20:	01813083          	ld	ra,24(sp)
    80002f24:	01013403          	ld	s0,16(sp)
    80002f28:	00813483          	ld	s1,8(sp)
    80002f2c:	00013903          	ld	s2,0(sp)
    80002f30:	02010113          	addi	sp,sp,32
    80002f34:	00008067          	ret

0000000080002f38 <_ZL8producerPv>:

static void producer(void *arg) {
    80002f38:	fe010113          	addi	sp,sp,-32
    80002f3c:	00113c23          	sd	ra,24(sp)
    80002f40:	00813823          	sd	s0,16(sp)
    80002f44:	00913423          	sd	s1,8(sp)
    80002f48:	01213023          	sd	s2,0(sp)
    80002f4c:	02010413          	addi	s0,sp,32
    80002f50:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f54:	00000913          	li	s2,0
    80002f58:	00c0006f          	j	80002f64 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002f5c:	ffffe097          	auipc	ra,0xffffe
    80002f60:	47c080e7          	jalr	1148(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002f64:	00008797          	auipc	a5,0x8
    80002f68:	69c7a783          	lw	a5,1692(a5) # 8000b600 <_ZL9threadEnd>
    80002f6c:	02079e63          	bnez	a5,80002fa8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002f70:	0004a583          	lw	a1,0(s1)
    80002f74:	0305859b          	addiw	a1,a1,48
    80002f78:	0084b503          	ld	a0,8(s1)
    80002f7c:	00003097          	auipc	ra,0x3
    80002f80:	344080e7          	jalr	836(ra) # 800062c0 <_ZN6Buffer3putEi>
        i++;
    80002f84:	0019071b          	addiw	a4,s2,1
    80002f88:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002f8c:	0004a683          	lw	a3,0(s1)
    80002f90:	0026979b          	slliw	a5,a3,0x2
    80002f94:	00d787bb          	addw	a5,a5,a3
    80002f98:	0017979b          	slliw	a5,a5,0x1
    80002f9c:	02f767bb          	remw	a5,a4,a5
    80002fa0:	fc0792e3          	bnez	a5,80002f64 <_ZL8producerPv+0x2c>
    80002fa4:	fb9ff06f          	j	80002f5c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002fa8:	0104b503          	ld	a0,16(s1)
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	4dc080e7          	jalr	1244(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80002fb4:	01813083          	ld	ra,24(sp)
    80002fb8:	01013403          	ld	s0,16(sp)
    80002fbc:	00813483          	ld	s1,8(sp)
    80002fc0:	00013903          	ld	s2,0(sp)
    80002fc4:	02010113          	addi	sp,sp,32
    80002fc8:	00008067          	ret

0000000080002fcc <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002fcc:	fd010113          	addi	sp,sp,-48
    80002fd0:	02113423          	sd	ra,40(sp)
    80002fd4:	02813023          	sd	s0,32(sp)
    80002fd8:	00913c23          	sd	s1,24(sp)
    80002fdc:	01213823          	sd	s2,16(sp)
    80002fe0:	01313423          	sd	s3,8(sp)
    80002fe4:	03010413          	addi	s0,sp,48
    80002fe8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002fec:	00000993          	li	s3,0
    80002ff0:	01c0006f          	j	8000300c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002ff4:	ffffe097          	auipc	ra,0xffffe
    80002ff8:	3e4080e7          	jalr	996(ra) # 800013d8 <_Z15thread_dispatchv>
    80002ffc:	0500006f          	j	8000304c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003000:	00a00513          	li	a0,10
    80003004:	ffffe097          	auipc	ra,0xffffe
    80003008:	504080e7          	jalr	1284(ra) # 80001508 <_Z4putcc>
    while (!threadEnd) {
    8000300c:	00008797          	auipc	a5,0x8
    80003010:	5f47a783          	lw	a5,1524(a5) # 8000b600 <_ZL9threadEnd>
    80003014:	06079063          	bnez	a5,80003074 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003018:	00893503          	ld	a0,8(s2)
    8000301c:	00003097          	auipc	ra,0x3
    80003020:	334080e7          	jalr	820(ra) # 80006350 <_ZN6Buffer3getEv>
        i++;
    80003024:	0019849b          	addiw	s1,s3,1
    80003028:	0004899b          	sext.w	s3,s1
        putc(key);
    8000302c:	0ff57513          	andi	a0,a0,255
    80003030:	ffffe097          	auipc	ra,0xffffe
    80003034:	4d8080e7          	jalr	1240(ra) # 80001508 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003038:	00092703          	lw	a4,0(s2)
    8000303c:	0027179b          	slliw	a5,a4,0x2
    80003040:	00e787bb          	addw	a5,a5,a4
    80003044:	02f4e7bb          	remw	a5,s1,a5
    80003048:	fa0786e3          	beqz	a5,80002ff4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000304c:	05000793          	li	a5,80
    80003050:	02f4e4bb          	remw	s1,s1,a5
    80003054:	fa049ce3          	bnez	s1,8000300c <_ZL8consumerPv+0x40>
    80003058:	fa9ff06f          	j	80003000 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000305c:	00893503          	ld	a0,8(s2)
    80003060:	00003097          	auipc	ra,0x3
    80003064:	2f0080e7          	jalr	752(ra) # 80006350 <_ZN6Buffer3getEv>
        putc(key);
    80003068:	0ff57513          	andi	a0,a0,255
    8000306c:	ffffe097          	auipc	ra,0xffffe
    80003070:	49c080e7          	jalr	1180(ra) # 80001508 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003074:	00893503          	ld	a0,8(s2)
    80003078:	00003097          	auipc	ra,0x3
    8000307c:	364080e7          	jalr	868(ra) # 800063dc <_ZN6Buffer6getCntEv>
    80003080:	fca04ee3          	bgtz	a0,8000305c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003084:	01093503          	ld	a0,16(s2)
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	400080e7          	jalr	1024(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
}
    80003090:	02813083          	ld	ra,40(sp)
    80003094:	02013403          	ld	s0,32(sp)
    80003098:	01813483          	ld	s1,24(sp)
    8000309c:	01013903          	ld	s2,16(sp)
    800030a0:	00813983          	ld	s3,8(sp)
    800030a4:	03010113          	addi	sp,sp,48
    800030a8:	00008067          	ret

00000000800030ac <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800030ac:	f9010113          	addi	sp,sp,-112
    800030b0:	06113423          	sd	ra,104(sp)
    800030b4:	06813023          	sd	s0,96(sp)
    800030b8:	04913c23          	sd	s1,88(sp)
    800030bc:	05213823          	sd	s2,80(sp)
    800030c0:	05313423          	sd	s3,72(sp)
    800030c4:	05413023          	sd	s4,64(sp)
    800030c8:	03513c23          	sd	s5,56(sp)
    800030cc:	03613823          	sd	s6,48(sp)
    800030d0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800030d4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800030d8:	00006517          	auipc	a0,0x6
    800030dc:	0d050513          	addi	a0,a0,208 # 800091a8 <CONSOLE_STATUS+0x198>
    800030e0:	00002097          	auipc	ra,0x2
    800030e4:	220080e7          	jalr	544(ra) # 80005300 <_Z11printStringPKc>
    getString(input, 30);
    800030e8:	01e00593          	li	a1,30
    800030ec:	fa040493          	addi	s1,s0,-96
    800030f0:	00048513          	mv	a0,s1
    800030f4:	00002097          	auipc	ra,0x2
    800030f8:	294080e7          	jalr	660(ra) # 80005388 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800030fc:	00048513          	mv	a0,s1
    80003100:	00002097          	auipc	ra,0x2
    80003104:	360080e7          	jalr	864(ra) # 80005460 <_Z11stringToIntPKc>
    80003108:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000310c:	00006517          	auipc	a0,0x6
    80003110:	0bc50513          	addi	a0,a0,188 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003114:	00002097          	auipc	ra,0x2
    80003118:	1ec080e7          	jalr	492(ra) # 80005300 <_Z11printStringPKc>
    getString(input, 30);
    8000311c:	01e00593          	li	a1,30
    80003120:	00048513          	mv	a0,s1
    80003124:	00002097          	auipc	ra,0x2
    80003128:	264080e7          	jalr	612(ra) # 80005388 <_Z9getStringPci>
    n = stringToInt(input);
    8000312c:	00048513          	mv	a0,s1
    80003130:	00002097          	auipc	ra,0x2
    80003134:	330080e7          	jalr	816(ra) # 80005460 <_Z11stringToIntPKc>
    80003138:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000313c:	00006517          	auipc	a0,0x6
    80003140:	0ac50513          	addi	a0,a0,172 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003144:	00002097          	auipc	ra,0x2
    80003148:	1bc080e7          	jalr	444(ra) # 80005300 <_Z11printStringPKc>
    8000314c:	00000613          	li	a2,0
    80003150:	00a00593          	li	a1,10
    80003154:	00090513          	mv	a0,s2
    80003158:	00002097          	auipc	ra,0x2
    8000315c:	358080e7          	jalr	856(ra) # 800054b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003160:	00006517          	auipc	a0,0x6
    80003164:	0a050513          	addi	a0,a0,160 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003168:	00002097          	auipc	ra,0x2
    8000316c:	198080e7          	jalr	408(ra) # 80005300 <_Z11printStringPKc>
    80003170:	00000613          	li	a2,0
    80003174:	00a00593          	li	a1,10
    80003178:	00048513          	mv	a0,s1
    8000317c:	00002097          	auipc	ra,0x2
    80003180:	334080e7          	jalr	820(ra) # 800054b0 <_Z8printIntiii>
    printString(".\n");
    80003184:	00006517          	auipc	a0,0x6
    80003188:	09450513          	addi	a0,a0,148 # 80009218 <CONSOLE_STATUS+0x208>
    8000318c:	00002097          	auipc	ra,0x2
    80003190:	174080e7          	jalr	372(ra) # 80005300 <_Z11printStringPKc>
    if(threadNum > n) {
    80003194:	0324c463          	blt	s1,s2,800031bc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003198:	03205c63          	blez	s2,800031d0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000319c:	03800513          	li	a0,56
    800031a0:	fffff097          	auipc	ra,0xfffff
    800031a4:	dcc080e7          	jalr	-564(ra) # 80001f6c <_Znwm>
    800031a8:	00050a13          	mv	s4,a0
    800031ac:	00048593          	mv	a1,s1
    800031b0:	00003097          	auipc	ra,0x3
    800031b4:	074080e7          	jalr	116(ra) # 80006224 <_ZN6BufferC1Ei>
    800031b8:	0300006f          	j	800031e8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800031bc:	00006517          	auipc	a0,0x6
    800031c0:	06450513          	addi	a0,a0,100 # 80009220 <CONSOLE_STATUS+0x210>
    800031c4:	00002097          	auipc	ra,0x2
    800031c8:	13c080e7          	jalr	316(ra) # 80005300 <_Z11printStringPKc>
        return;
    800031cc:	0140006f          	j	800031e0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800031d0:	00006517          	auipc	a0,0x6
    800031d4:	09050513          	addi	a0,a0,144 # 80009260 <CONSOLE_STATUS+0x250>
    800031d8:	00002097          	auipc	ra,0x2
    800031dc:	128080e7          	jalr	296(ra) # 80005300 <_Z11printStringPKc>
        return;
    800031e0:	000b0113          	mv	sp,s6
    800031e4:	1500006f          	j	80003334 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800031e8:	00000593          	li	a1,0
    800031ec:	00008517          	auipc	a0,0x8
    800031f0:	41c50513          	addi	a0,a0,1052 # 8000b608 <_ZL10waitForAll>
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	204080e7          	jalr	516(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    thread_t threads[threadNum];
    800031fc:	00391793          	slli	a5,s2,0x3
    80003200:	00f78793          	addi	a5,a5,15
    80003204:	ff07f793          	andi	a5,a5,-16
    80003208:	40f10133          	sub	sp,sp,a5
    8000320c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003210:	0019071b          	addiw	a4,s2,1
    80003214:	00171793          	slli	a5,a4,0x1
    80003218:	00e787b3          	add	a5,a5,a4
    8000321c:	00379793          	slli	a5,a5,0x3
    80003220:	00f78793          	addi	a5,a5,15
    80003224:	ff07f793          	andi	a5,a5,-16
    80003228:	40f10133          	sub	sp,sp,a5
    8000322c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003230:	00191613          	slli	a2,s2,0x1
    80003234:	012607b3          	add	a5,a2,s2
    80003238:	00379793          	slli	a5,a5,0x3
    8000323c:	00f987b3          	add	a5,s3,a5
    80003240:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003244:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003248:	00008717          	auipc	a4,0x8
    8000324c:	3c073703          	ld	a4,960(a4) # 8000b608 <_ZL10waitForAll>
    80003250:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003254:	00078613          	mv	a2,a5
    80003258:	00000597          	auipc	a1,0x0
    8000325c:	d7458593          	addi	a1,a1,-652 # 80002fcc <_ZL8consumerPv>
    80003260:	f9840513          	addi	a0,s0,-104
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	088080e7          	jalr	136(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000326c:	00000493          	li	s1,0
    80003270:	0280006f          	j	80003298 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003274:	00000597          	auipc	a1,0x0
    80003278:	c1458593          	addi	a1,a1,-1004 # 80002e88 <_ZL16producerKeyboardPv>
                      data + i);
    8000327c:	00179613          	slli	a2,a5,0x1
    80003280:	00f60633          	add	a2,a2,a5
    80003284:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003288:	00c98633          	add	a2,s3,a2
    8000328c:	ffffe097          	auipc	ra,0xffffe
    80003290:	060080e7          	jalr	96(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003294:	0014849b          	addiw	s1,s1,1
    80003298:	0524d263          	bge	s1,s2,800032dc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000329c:	00149793          	slli	a5,s1,0x1
    800032a0:	009787b3          	add	a5,a5,s1
    800032a4:	00379793          	slli	a5,a5,0x3
    800032a8:	00f987b3          	add	a5,s3,a5
    800032ac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800032b0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800032b4:	00008717          	auipc	a4,0x8
    800032b8:	35473703          	ld	a4,852(a4) # 8000b608 <_ZL10waitForAll>
    800032bc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800032c0:	00048793          	mv	a5,s1
    800032c4:	00349513          	slli	a0,s1,0x3
    800032c8:	00aa8533          	add	a0,s5,a0
    800032cc:	fa9054e3          	blez	s1,80003274 <_Z22producerConsumer_C_APIv+0x1c8>
    800032d0:	00000597          	auipc	a1,0x0
    800032d4:	c6858593          	addi	a1,a1,-920 # 80002f38 <_ZL8producerPv>
    800032d8:	fa5ff06f          	j	8000327c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800032dc:	ffffe097          	auipc	ra,0xffffe
    800032e0:	0fc080e7          	jalr	252(ra) # 800013d8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800032e4:	00000493          	li	s1,0
    800032e8:	00994e63          	blt	s2,s1,80003304 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800032ec:	00008517          	auipc	a0,0x8
    800032f0:	31c53503          	ld	a0,796(a0) # 8000b608 <_ZL10waitForAll>
    800032f4:	ffffe097          	auipc	ra,0xffffe
    800032f8:	168080e7          	jalr	360(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    for (int i = 0; i <= threadNum; i++) {
    800032fc:	0014849b          	addiw	s1,s1,1
    80003300:	fe9ff06f          	j	800032e8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003304:	00008517          	auipc	a0,0x8
    80003308:	30453503          	ld	a0,772(a0) # 8000b608 <_ZL10waitForAll>
    8000330c:	ffffe097          	auipc	ra,0xffffe
    80003310:	124080e7          	jalr	292(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    delete buffer;
    80003314:	000a0e63          	beqz	s4,80003330 <_Z22producerConsumer_C_APIv+0x284>
    80003318:	000a0513          	mv	a0,s4
    8000331c:	00003097          	auipc	ra,0x3
    80003320:	148080e7          	jalr	328(ra) # 80006464 <_ZN6BufferD1Ev>
    80003324:	000a0513          	mv	a0,s4
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	d44080e7          	jalr	-700(ra) # 8000206c <_ZdlPv>
    80003330:	000b0113          	mv	sp,s6
}
    80003334:	f9040113          	addi	sp,s0,-112
    80003338:	06813083          	ld	ra,104(sp)
    8000333c:	06013403          	ld	s0,96(sp)
    80003340:	05813483          	ld	s1,88(sp)
    80003344:	05013903          	ld	s2,80(sp)
    80003348:	04813983          	ld	s3,72(sp)
    8000334c:	04013a03          	ld	s4,64(sp)
    80003350:	03813a83          	ld	s5,56(sp)
    80003354:	03013b03          	ld	s6,48(sp)
    80003358:	07010113          	addi	sp,sp,112
    8000335c:	00008067          	ret
    80003360:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003364:	000a0513          	mv	a0,s4
    80003368:	fffff097          	auipc	ra,0xfffff
    8000336c:	d04080e7          	jalr	-764(ra) # 8000206c <_ZdlPv>
    80003370:	00048513          	mv	a0,s1
    80003374:	00009097          	auipc	ra,0x9
    80003378:	3a4080e7          	jalr	932(ra) # 8000c718 <_Unwind_Resume>

000000008000337c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000337c:	fe010113          	addi	sp,sp,-32
    80003380:	00113c23          	sd	ra,24(sp)
    80003384:	00813823          	sd	s0,16(sp)
    80003388:	00913423          	sd	s1,8(sp)
    8000338c:	01213023          	sd	s2,0(sp)
    80003390:	02010413          	addi	s0,sp,32
    80003394:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003398:	00100793          	li	a5,1
    8000339c:	02a7f863          	bgeu	a5,a0,800033cc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800033a0:	00a00793          	li	a5,10
    800033a4:	02f577b3          	remu	a5,a0,a5
    800033a8:	02078e63          	beqz	a5,800033e4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800033ac:	fff48513          	addi	a0,s1,-1
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	fcc080e7          	jalr	-52(ra) # 8000337c <_ZL9fibonaccim>
    800033b8:	00050913          	mv	s2,a0
    800033bc:	ffe48513          	addi	a0,s1,-2
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	fbc080e7          	jalr	-68(ra) # 8000337c <_ZL9fibonaccim>
    800033c8:	00a90533          	add	a0,s2,a0
}
    800033cc:	01813083          	ld	ra,24(sp)
    800033d0:	01013403          	ld	s0,16(sp)
    800033d4:	00813483          	ld	s1,8(sp)
    800033d8:	00013903          	ld	s2,0(sp)
    800033dc:	02010113          	addi	sp,sp,32
    800033e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800033e4:	ffffe097          	auipc	ra,0xffffe
    800033e8:	ff4080e7          	jalr	-12(ra) # 800013d8 <_Z15thread_dispatchv>
    800033ec:	fc1ff06f          	j	800033ac <_ZL9fibonaccim+0x30>

00000000800033f0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800033f0:	fe010113          	addi	sp,sp,-32
    800033f4:	00113c23          	sd	ra,24(sp)
    800033f8:	00813823          	sd	s0,16(sp)
    800033fc:	00913423          	sd	s1,8(sp)
    80003400:	01213023          	sd	s2,0(sp)
    80003404:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003408:	00000913          	li	s2,0
    8000340c:	0380006f          	j	80003444 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003410:	ffffe097          	auipc	ra,0xffffe
    80003414:	fc8080e7          	jalr	-56(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003418:	00148493          	addi	s1,s1,1
    8000341c:	000027b7          	lui	a5,0x2
    80003420:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003424:	0097ee63          	bltu	a5,s1,80003440 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003428:	00000713          	li	a4,0
    8000342c:	000077b7          	lui	a5,0x7
    80003430:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003434:	fce7eee3          	bltu	a5,a4,80003410 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003438:	00170713          	addi	a4,a4,1
    8000343c:	ff1ff06f          	j	8000342c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003440:	00190913          	addi	s2,s2,1
    80003444:	00900793          	li	a5,9
    80003448:	0527e063          	bltu	a5,s2,80003488 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	bd450513          	addi	a0,a0,-1068 # 80009020 <CONSOLE_STATUS+0x10>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	eac080e7          	jalr	-340(ra) # 80005300 <_Z11printStringPKc>
    8000345c:	00000613          	li	a2,0
    80003460:	00a00593          	li	a1,10
    80003464:	0009051b          	sext.w	a0,s2
    80003468:	00002097          	auipc	ra,0x2
    8000346c:	048080e7          	jalr	72(ra) # 800054b0 <_Z8printIntiii>
    80003470:	00006517          	auipc	a0,0x6
    80003474:	0a050513          	addi	a0,a0,160 # 80009510 <CONSOLE_STATUS+0x500>
    80003478:	00002097          	auipc	ra,0x2
    8000347c:	e88080e7          	jalr	-376(ra) # 80005300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003480:	00000493          	li	s1,0
    80003484:	f99ff06f          	j	8000341c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003488:	00006517          	auipc	a0,0x6
    8000348c:	e0850513          	addi	a0,a0,-504 # 80009290 <CONSOLE_STATUS+0x280>
    80003490:	00002097          	auipc	ra,0x2
    80003494:	e70080e7          	jalr	-400(ra) # 80005300 <_Z11printStringPKc>
    finishedA = true;
    80003498:	00100793          	li	a5,1
    8000349c:	00008717          	auipc	a4,0x8
    800034a0:	16f70a23          	sb	a5,372(a4) # 8000b610 <_ZL9finishedA>
}
    800034a4:	01813083          	ld	ra,24(sp)
    800034a8:	01013403          	ld	s0,16(sp)
    800034ac:	00813483          	ld	s1,8(sp)
    800034b0:	00013903          	ld	s2,0(sp)
    800034b4:	02010113          	addi	sp,sp,32
    800034b8:	00008067          	ret

00000000800034bc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800034bc:	fe010113          	addi	sp,sp,-32
    800034c0:	00113c23          	sd	ra,24(sp)
    800034c4:	00813823          	sd	s0,16(sp)
    800034c8:	00913423          	sd	s1,8(sp)
    800034cc:	01213023          	sd	s2,0(sp)
    800034d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800034d4:	00000913          	li	s2,0
    800034d8:	0380006f          	j	80003510 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	efc080e7          	jalr	-260(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800034e4:	00148493          	addi	s1,s1,1
    800034e8:	000027b7          	lui	a5,0x2
    800034ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800034f0:	0097ee63          	bltu	a5,s1,8000350c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800034f4:	00000713          	li	a4,0
    800034f8:	000077b7          	lui	a5,0x7
    800034fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003500:	fce7eee3          	bltu	a5,a4,800034dc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003504:	00170713          	addi	a4,a4,1
    80003508:	ff1ff06f          	j	800034f8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000350c:	00190913          	addi	s2,s2,1
    80003510:	00f00793          	li	a5,15
    80003514:	0527e063          	bltu	a5,s2,80003554 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003518:	00006517          	auipc	a0,0x6
    8000351c:	b3850513          	addi	a0,a0,-1224 # 80009050 <CONSOLE_STATUS+0x40>
    80003520:	00002097          	auipc	ra,0x2
    80003524:	de0080e7          	jalr	-544(ra) # 80005300 <_Z11printStringPKc>
    80003528:	00000613          	li	a2,0
    8000352c:	00a00593          	li	a1,10
    80003530:	0009051b          	sext.w	a0,s2
    80003534:	00002097          	auipc	ra,0x2
    80003538:	f7c080e7          	jalr	-132(ra) # 800054b0 <_Z8printIntiii>
    8000353c:	00006517          	auipc	a0,0x6
    80003540:	fd450513          	addi	a0,a0,-44 # 80009510 <CONSOLE_STATUS+0x500>
    80003544:	00002097          	auipc	ra,0x2
    80003548:	dbc080e7          	jalr	-580(ra) # 80005300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000354c:	00000493          	li	s1,0
    80003550:	f99ff06f          	j	800034e8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003554:	00006517          	auipc	a0,0x6
    80003558:	d4c50513          	addi	a0,a0,-692 # 800092a0 <CONSOLE_STATUS+0x290>
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	da4080e7          	jalr	-604(ra) # 80005300 <_Z11printStringPKc>
    finishedB = true;
    80003564:	00100793          	li	a5,1
    80003568:	00008717          	auipc	a4,0x8
    8000356c:	0af704a3          	sb	a5,169(a4) # 8000b611 <_ZL9finishedB>
    thread_dispatch();
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	e68080e7          	jalr	-408(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80003578:	01813083          	ld	ra,24(sp)
    8000357c:	01013403          	ld	s0,16(sp)
    80003580:	00813483          	ld	s1,8(sp)
    80003584:	00013903          	ld	s2,0(sp)
    80003588:	02010113          	addi	sp,sp,32
    8000358c:	00008067          	ret

0000000080003590 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00113c23          	sd	ra,24(sp)
    80003598:	00813823          	sd	s0,16(sp)
    8000359c:	00913423          	sd	s1,8(sp)
    800035a0:	01213023          	sd	s2,0(sp)
    800035a4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800035a8:	00000493          	li	s1,0
    800035ac:	0400006f          	j	800035ec <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	d0050513          	addi	a0,a0,-768 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	d48080e7          	jalr	-696(ra) # 80005300 <_Z11printStringPKc>
    800035c0:	00000613          	li	a2,0
    800035c4:	00a00593          	li	a1,10
    800035c8:	00048513          	mv	a0,s1
    800035cc:	00002097          	auipc	ra,0x2
    800035d0:	ee4080e7          	jalr	-284(ra) # 800054b0 <_Z8printIntiii>
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	f3c50513          	addi	a0,a0,-196 # 80009510 <CONSOLE_STATUS+0x500>
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	d24080e7          	jalr	-732(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800035e4:	0014849b          	addiw	s1,s1,1
    800035e8:	0ff4f493          	andi	s1,s1,255
    800035ec:	00200793          	li	a5,2
    800035f0:	fc97f0e3          	bgeu	a5,s1,800035b0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800035f4:	00006517          	auipc	a0,0x6
    800035f8:	cc450513          	addi	a0,a0,-828 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800035fc:	00002097          	auipc	ra,0x2
    80003600:	d04080e7          	jalr	-764(ra) # 80005300 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003604:	00700313          	li	t1,7
    thread_dispatch();
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	dd0080e7          	jalr	-560(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003610:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003614:	00006517          	auipc	a0,0x6
    80003618:	cb450513          	addi	a0,a0,-844 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	ce4080e7          	jalr	-796(ra) # 80005300 <_Z11printStringPKc>
    80003624:	00000613          	li	a2,0
    80003628:	00a00593          	li	a1,10
    8000362c:	0009051b          	sext.w	a0,s2
    80003630:	00002097          	auipc	ra,0x2
    80003634:	e80080e7          	jalr	-384(ra) # 800054b0 <_Z8printIntiii>
    80003638:	00006517          	auipc	a0,0x6
    8000363c:	ed850513          	addi	a0,a0,-296 # 80009510 <CONSOLE_STATUS+0x500>
    80003640:	00002097          	auipc	ra,0x2
    80003644:	cc0080e7          	jalr	-832(ra) # 80005300 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003648:	00c00513          	li	a0,12
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	d30080e7          	jalr	-720(ra) # 8000337c <_ZL9fibonaccim>
    80003654:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003658:	00006517          	auipc	a0,0x6
    8000365c:	c7850513          	addi	a0,a0,-904 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003660:	00002097          	auipc	ra,0x2
    80003664:	ca0080e7          	jalr	-864(ra) # 80005300 <_Z11printStringPKc>
    80003668:	00000613          	li	a2,0
    8000366c:	00a00593          	li	a1,10
    80003670:	0009051b          	sext.w	a0,s2
    80003674:	00002097          	auipc	ra,0x2
    80003678:	e3c080e7          	jalr	-452(ra) # 800054b0 <_Z8printIntiii>
    8000367c:	00006517          	auipc	a0,0x6
    80003680:	e9450513          	addi	a0,a0,-364 # 80009510 <CONSOLE_STATUS+0x500>
    80003684:	00002097          	auipc	ra,0x2
    80003688:	c7c080e7          	jalr	-900(ra) # 80005300 <_Z11printStringPKc>
    8000368c:	0400006f          	j	800036cc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003690:	00006517          	auipc	a0,0x6
    80003694:	c2050513          	addi	a0,a0,-992 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003698:	00002097          	auipc	ra,0x2
    8000369c:	c68080e7          	jalr	-920(ra) # 80005300 <_Z11printStringPKc>
    800036a0:	00000613          	li	a2,0
    800036a4:	00a00593          	li	a1,10
    800036a8:	00048513          	mv	a0,s1
    800036ac:	00002097          	auipc	ra,0x2
    800036b0:	e04080e7          	jalr	-508(ra) # 800054b0 <_Z8printIntiii>
    800036b4:	00006517          	auipc	a0,0x6
    800036b8:	e5c50513          	addi	a0,a0,-420 # 80009510 <CONSOLE_STATUS+0x500>
    800036bc:	00002097          	auipc	ra,0x2
    800036c0:	c44080e7          	jalr	-956(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800036c4:	0014849b          	addiw	s1,s1,1
    800036c8:	0ff4f493          	andi	s1,s1,255
    800036cc:	00500793          	li	a5,5
    800036d0:	fc97f0e3          	bgeu	a5,s1,80003690 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800036d4:	00006517          	auipc	a0,0x6
    800036d8:	bbc50513          	addi	a0,a0,-1092 # 80009290 <CONSOLE_STATUS+0x280>
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	c24080e7          	jalr	-988(ra) # 80005300 <_Z11printStringPKc>
    finishedC = true;
    800036e4:	00100793          	li	a5,1
    800036e8:	00008717          	auipc	a4,0x8
    800036ec:	f2f70523          	sb	a5,-214(a4) # 8000b612 <_ZL9finishedC>
    thread_dispatch();
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	ce8080e7          	jalr	-792(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800036f8:	01813083          	ld	ra,24(sp)
    800036fc:	01013403          	ld	s0,16(sp)
    80003700:	00813483          	ld	s1,8(sp)
    80003704:	00013903          	ld	s2,0(sp)
    80003708:	02010113          	addi	sp,sp,32
    8000370c:	00008067          	ret

0000000080003710 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003710:	fe010113          	addi	sp,sp,-32
    80003714:	00113c23          	sd	ra,24(sp)
    80003718:	00813823          	sd	s0,16(sp)
    8000371c:	00913423          	sd	s1,8(sp)
    80003720:	01213023          	sd	s2,0(sp)
    80003724:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003728:	00a00493          	li	s1,10
    8000372c:	0400006f          	j	8000376c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003730:	00006517          	auipc	a0,0x6
    80003734:	bb050513          	addi	a0,a0,-1104 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003738:	00002097          	auipc	ra,0x2
    8000373c:	bc8080e7          	jalr	-1080(ra) # 80005300 <_Z11printStringPKc>
    80003740:	00000613          	li	a2,0
    80003744:	00a00593          	li	a1,10
    80003748:	00048513          	mv	a0,s1
    8000374c:	00002097          	auipc	ra,0x2
    80003750:	d64080e7          	jalr	-668(ra) # 800054b0 <_Z8printIntiii>
    80003754:	00006517          	auipc	a0,0x6
    80003758:	dbc50513          	addi	a0,a0,-580 # 80009510 <CONSOLE_STATUS+0x500>
    8000375c:	00002097          	auipc	ra,0x2
    80003760:	ba4080e7          	jalr	-1116(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003764:	0014849b          	addiw	s1,s1,1
    80003768:	0ff4f493          	andi	s1,s1,255
    8000376c:	00c00793          	li	a5,12
    80003770:	fc97f0e3          	bgeu	a5,s1,80003730 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003774:	00006517          	auipc	a0,0x6
    80003778:	b7450513          	addi	a0,a0,-1164 # 800092e8 <CONSOLE_STATUS+0x2d8>
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	b84080e7          	jalr	-1148(ra) # 80005300 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003784:	00500313          	li	t1,5
    thread_dispatch();
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	c50080e7          	jalr	-944(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003790:	01000513          	li	a0,16
    80003794:	00000097          	auipc	ra,0x0
    80003798:	be8080e7          	jalr	-1048(ra) # 8000337c <_ZL9fibonaccim>
    8000379c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800037a0:	00006517          	auipc	a0,0x6
    800037a4:	b5850513          	addi	a0,a0,-1192 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800037a8:	00002097          	auipc	ra,0x2
    800037ac:	b58080e7          	jalr	-1192(ra) # 80005300 <_Z11printStringPKc>
    800037b0:	00000613          	li	a2,0
    800037b4:	00a00593          	li	a1,10
    800037b8:	0009051b          	sext.w	a0,s2
    800037bc:	00002097          	auipc	ra,0x2
    800037c0:	cf4080e7          	jalr	-780(ra) # 800054b0 <_Z8printIntiii>
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	d4c50513          	addi	a0,a0,-692 # 80009510 <CONSOLE_STATUS+0x500>
    800037cc:	00002097          	auipc	ra,0x2
    800037d0:	b34080e7          	jalr	-1228(ra) # 80005300 <_Z11printStringPKc>
    800037d4:	0400006f          	j	80003814 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800037d8:	00006517          	auipc	a0,0x6
    800037dc:	b0850513          	addi	a0,a0,-1272 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800037e0:	00002097          	auipc	ra,0x2
    800037e4:	b20080e7          	jalr	-1248(ra) # 80005300 <_Z11printStringPKc>
    800037e8:	00000613          	li	a2,0
    800037ec:	00a00593          	li	a1,10
    800037f0:	00048513          	mv	a0,s1
    800037f4:	00002097          	auipc	ra,0x2
    800037f8:	cbc080e7          	jalr	-836(ra) # 800054b0 <_Z8printIntiii>
    800037fc:	00006517          	auipc	a0,0x6
    80003800:	d1450513          	addi	a0,a0,-748 # 80009510 <CONSOLE_STATUS+0x500>
    80003804:	00002097          	auipc	ra,0x2
    80003808:	afc080e7          	jalr	-1284(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000380c:	0014849b          	addiw	s1,s1,1
    80003810:	0ff4f493          	andi	s1,s1,255
    80003814:	00f00793          	li	a5,15
    80003818:	fc97f0e3          	bgeu	a5,s1,800037d8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000381c:	00006517          	auipc	a0,0x6
    80003820:	aec50513          	addi	a0,a0,-1300 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003824:	00002097          	auipc	ra,0x2
    80003828:	adc080e7          	jalr	-1316(ra) # 80005300 <_Z11printStringPKc>
    finishedD = true;
    8000382c:	00100793          	li	a5,1
    80003830:	00008717          	auipc	a4,0x8
    80003834:	def701a3          	sb	a5,-541(a4) # 8000b613 <_ZL9finishedD>
    thread_dispatch();
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	ba0080e7          	jalr	-1120(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	01013403          	ld	s0,16(sp)
    80003848:	00813483          	ld	s1,8(sp)
    8000384c:	00013903          	ld	s2,0(sp)
    80003850:	02010113          	addi	sp,sp,32
    80003854:	00008067          	ret

0000000080003858 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003858:	fc010113          	addi	sp,sp,-64
    8000385c:	02113c23          	sd	ra,56(sp)
    80003860:	02813823          	sd	s0,48(sp)
    80003864:	02913423          	sd	s1,40(sp)
    80003868:	03213023          	sd	s2,32(sp)
    8000386c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003870:	02000513          	li	a0,32
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	6f8080e7          	jalr	1784(ra) # 80001f6c <_Znwm>
    8000387c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	aa8080e7          	jalr	-1368(ra) # 80002328 <_ZN6ThreadC1Ev>
    80003888:	00008797          	auipc	a5,0x8
    8000388c:	b1878793          	addi	a5,a5,-1256 # 8000b3a0 <_ZTV7WorkerA+0x10>
    80003890:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003894:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003898:	00006517          	auipc	a0,0x6
    8000389c:	a8050513          	addi	a0,a0,-1408 # 80009318 <CONSOLE_STATUS+0x308>
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	a60080e7          	jalr	-1440(ra) # 80005300 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800038a8:	02000513          	li	a0,32
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	6c0080e7          	jalr	1728(ra) # 80001f6c <_Znwm>
    800038b4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	a70080e7          	jalr	-1424(ra) # 80002328 <_ZN6ThreadC1Ev>
    800038c0:	00008797          	auipc	a5,0x8
    800038c4:	b0878793          	addi	a5,a5,-1272 # 8000b3c8 <_ZTV7WorkerB+0x10>
    800038c8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800038cc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800038d0:	00006517          	auipc	a0,0x6
    800038d4:	a6050513          	addi	a0,a0,-1440 # 80009330 <CONSOLE_STATUS+0x320>
    800038d8:	00002097          	auipc	ra,0x2
    800038dc:	a28080e7          	jalr	-1496(ra) # 80005300 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800038e0:	02000513          	li	a0,32
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	688080e7          	jalr	1672(ra) # 80001f6c <_Znwm>
    800038ec:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800038f0:	fffff097          	auipc	ra,0xfffff
    800038f4:	a38080e7          	jalr	-1480(ra) # 80002328 <_ZN6ThreadC1Ev>
    800038f8:	00008797          	auipc	a5,0x8
    800038fc:	af878793          	addi	a5,a5,-1288 # 8000b3f0 <_ZTV7WorkerC+0x10>
    80003900:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003904:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003908:	00006517          	auipc	a0,0x6
    8000390c:	a4050513          	addi	a0,a0,-1472 # 80009348 <CONSOLE_STATUS+0x338>
    80003910:	00002097          	auipc	ra,0x2
    80003914:	9f0080e7          	jalr	-1552(ra) # 80005300 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003918:	02000513          	li	a0,32
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	650080e7          	jalr	1616(ra) # 80001f6c <_Znwm>
    80003924:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	a00080e7          	jalr	-1536(ra) # 80002328 <_ZN6ThreadC1Ev>
    80003930:	00008797          	auipc	a5,0x8
    80003934:	ae878793          	addi	a5,a5,-1304 # 8000b418 <_ZTV7WorkerD+0x10>
    80003938:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000393c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003940:	00006517          	auipc	a0,0x6
    80003944:	a2050513          	addi	a0,a0,-1504 # 80009360 <CONSOLE_STATUS+0x350>
    80003948:	00002097          	auipc	ra,0x2
    8000394c:	9b8080e7          	jalr	-1608(ra) # 80005300 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003950:	00000493          	li	s1,0
    80003954:	00300793          	li	a5,3
    80003958:	0297c663          	blt	a5,s1,80003984 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000395c:	00349793          	slli	a5,s1,0x3
    80003960:	fe040713          	addi	a4,s0,-32
    80003964:	00f707b3          	add	a5,a4,a5
    80003968:	fe07b503          	ld	a0,-32(a5)
    8000396c:	fffff097          	auipc	ra,0xfffff
    80003970:	9f4080e7          	jalr	-1548(ra) # 80002360 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003974:	0014849b          	addiw	s1,s1,1
    80003978:	fddff06f          	j	80003954 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	954080e7          	jalr	-1708(ra) # 800022d0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003984:	00008797          	auipc	a5,0x8
    80003988:	c8c7c783          	lbu	a5,-884(a5) # 8000b610 <_ZL9finishedA>
    8000398c:	fe0788e3          	beqz	a5,8000397c <_Z20Threads_CPP_API_testv+0x124>
    80003990:	00008797          	auipc	a5,0x8
    80003994:	c817c783          	lbu	a5,-895(a5) # 8000b611 <_ZL9finishedB>
    80003998:	fe0782e3          	beqz	a5,8000397c <_Z20Threads_CPP_API_testv+0x124>
    8000399c:	00008797          	auipc	a5,0x8
    800039a0:	c767c783          	lbu	a5,-906(a5) # 8000b612 <_ZL9finishedC>
    800039a4:	fc078ce3          	beqz	a5,8000397c <_Z20Threads_CPP_API_testv+0x124>
    800039a8:	00008797          	auipc	a5,0x8
    800039ac:	c6b7c783          	lbu	a5,-917(a5) # 8000b613 <_ZL9finishedD>
    800039b0:	fc0786e3          	beqz	a5,8000397c <_Z20Threads_CPP_API_testv+0x124>
    800039b4:	fc040493          	addi	s1,s0,-64
    800039b8:	0080006f          	j	800039c0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800039bc:	00848493          	addi	s1,s1,8
    800039c0:	fe040793          	addi	a5,s0,-32
    800039c4:	08f48663          	beq	s1,a5,80003a50 <_Z20Threads_CPP_API_testv+0x1f8>
    800039c8:	0004b503          	ld	a0,0(s1)
    800039cc:	fe0508e3          	beqz	a0,800039bc <_Z20Threads_CPP_API_testv+0x164>
    800039d0:	00053783          	ld	a5,0(a0)
    800039d4:	0087b783          	ld	a5,8(a5)
    800039d8:	000780e7          	jalr	a5
    800039dc:	fe1ff06f          	j	800039bc <_Z20Threads_CPP_API_testv+0x164>
    800039e0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800039e4:	00048513          	mv	a0,s1
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	684080e7          	jalr	1668(ra) # 8000206c <_ZdlPv>
    800039f0:	00090513          	mv	a0,s2
    800039f4:	00009097          	auipc	ra,0x9
    800039f8:	d24080e7          	jalr	-732(ra) # 8000c718 <_Unwind_Resume>
    800039fc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003a00:	00048513          	mv	a0,s1
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	668080e7          	jalr	1640(ra) # 8000206c <_ZdlPv>
    80003a0c:	00090513          	mv	a0,s2
    80003a10:	00009097          	auipc	ra,0x9
    80003a14:	d08080e7          	jalr	-760(ra) # 8000c718 <_Unwind_Resume>
    80003a18:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003a1c:	00048513          	mv	a0,s1
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	64c080e7          	jalr	1612(ra) # 8000206c <_ZdlPv>
    80003a28:	00090513          	mv	a0,s2
    80003a2c:	00009097          	auipc	ra,0x9
    80003a30:	cec080e7          	jalr	-788(ra) # 8000c718 <_Unwind_Resume>
    80003a34:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	630080e7          	jalr	1584(ra) # 8000206c <_ZdlPv>
    80003a44:	00090513          	mv	a0,s2
    80003a48:	00009097          	auipc	ra,0x9
    80003a4c:	cd0080e7          	jalr	-816(ra) # 8000c718 <_Unwind_Resume>
}
    80003a50:	03813083          	ld	ra,56(sp)
    80003a54:	03013403          	ld	s0,48(sp)
    80003a58:	02813483          	ld	s1,40(sp)
    80003a5c:	02013903          	ld	s2,32(sp)
    80003a60:	04010113          	addi	sp,sp,64
    80003a64:	00008067          	ret

0000000080003a68 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00113423          	sd	ra,8(sp)
    80003a70:	00813023          	sd	s0,0(sp)
    80003a74:	01010413          	addi	s0,sp,16
    80003a78:	00008797          	auipc	a5,0x8
    80003a7c:	92878793          	addi	a5,a5,-1752 # 8000b3a0 <_ZTV7WorkerA+0x10>
    80003a80:	00f53023          	sd	a5,0(a0)
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	6e8080e7          	jalr	1768(ra) # 8000216c <_ZN6ThreadD1Ev>
    80003a8c:	00813083          	ld	ra,8(sp)
    80003a90:	00013403          	ld	s0,0(sp)
    80003a94:	01010113          	addi	sp,sp,16
    80003a98:	00008067          	ret

0000000080003a9c <_ZN7WorkerAD0Ev>:
    80003a9c:	fe010113          	addi	sp,sp,-32
    80003aa0:	00113c23          	sd	ra,24(sp)
    80003aa4:	00813823          	sd	s0,16(sp)
    80003aa8:	00913423          	sd	s1,8(sp)
    80003aac:	02010413          	addi	s0,sp,32
    80003ab0:	00050493          	mv	s1,a0
    80003ab4:	00008797          	auipc	a5,0x8
    80003ab8:	8ec78793          	addi	a5,a5,-1812 # 8000b3a0 <_ZTV7WorkerA+0x10>
    80003abc:	00f53023          	sd	a5,0(a0)
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	6ac080e7          	jalr	1708(ra) # 8000216c <_ZN6ThreadD1Ev>
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	5a0080e7          	jalr	1440(ra) # 8000206c <_ZdlPv>
    80003ad4:	01813083          	ld	ra,24(sp)
    80003ad8:	01013403          	ld	s0,16(sp)
    80003adc:	00813483          	ld	s1,8(sp)
    80003ae0:	02010113          	addi	sp,sp,32
    80003ae4:	00008067          	ret

0000000080003ae8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00113423          	sd	ra,8(sp)
    80003af0:	00813023          	sd	s0,0(sp)
    80003af4:	01010413          	addi	s0,sp,16
    80003af8:	00008797          	auipc	a5,0x8
    80003afc:	8d078793          	addi	a5,a5,-1840 # 8000b3c8 <_ZTV7WorkerB+0x10>
    80003b00:	00f53023          	sd	a5,0(a0)
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	668080e7          	jalr	1640(ra) # 8000216c <_ZN6ThreadD1Ev>
    80003b0c:	00813083          	ld	ra,8(sp)
    80003b10:	00013403          	ld	s0,0(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret

0000000080003b1c <_ZN7WorkerBD0Ev>:
    80003b1c:	fe010113          	addi	sp,sp,-32
    80003b20:	00113c23          	sd	ra,24(sp)
    80003b24:	00813823          	sd	s0,16(sp)
    80003b28:	00913423          	sd	s1,8(sp)
    80003b2c:	02010413          	addi	s0,sp,32
    80003b30:	00050493          	mv	s1,a0
    80003b34:	00008797          	auipc	a5,0x8
    80003b38:	89478793          	addi	a5,a5,-1900 # 8000b3c8 <_ZTV7WorkerB+0x10>
    80003b3c:	00f53023          	sd	a5,0(a0)
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	62c080e7          	jalr	1580(ra) # 8000216c <_ZN6ThreadD1Ev>
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	520080e7          	jalr	1312(ra) # 8000206c <_ZdlPv>
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	02010113          	addi	sp,sp,32
    80003b64:	00008067          	ret

0000000080003b68 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00113423          	sd	ra,8(sp)
    80003b70:	00813023          	sd	s0,0(sp)
    80003b74:	01010413          	addi	s0,sp,16
    80003b78:	00008797          	auipc	a5,0x8
    80003b7c:	87878793          	addi	a5,a5,-1928 # 8000b3f0 <_ZTV7WorkerC+0x10>
    80003b80:	00f53023          	sd	a5,0(a0)
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	5e8080e7          	jalr	1512(ra) # 8000216c <_ZN6ThreadD1Ev>
    80003b8c:	00813083          	ld	ra,8(sp)
    80003b90:	00013403          	ld	s0,0(sp)
    80003b94:	01010113          	addi	sp,sp,16
    80003b98:	00008067          	ret

0000000080003b9c <_ZN7WorkerCD0Ev>:
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00113c23          	sd	ra,24(sp)
    80003ba4:	00813823          	sd	s0,16(sp)
    80003ba8:	00913423          	sd	s1,8(sp)
    80003bac:	02010413          	addi	s0,sp,32
    80003bb0:	00050493          	mv	s1,a0
    80003bb4:	00008797          	auipc	a5,0x8
    80003bb8:	83c78793          	addi	a5,a5,-1988 # 8000b3f0 <_ZTV7WorkerC+0x10>
    80003bbc:	00f53023          	sd	a5,0(a0)
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	5ac080e7          	jalr	1452(ra) # 8000216c <_ZN6ThreadD1Ev>
    80003bc8:	00048513          	mv	a0,s1
    80003bcc:	ffffe097          	auipc	ra,0xffffe
    80003bd0:	4a0080e7          	jalr	1184(ra) # 8000206c <_ZdlPv>
    80003bd4:	01813083          	ld	ra,24(sp)
    80003bd8:	01013403          	ld	s0,16(sp)
    80003bdc:	00813483          	ld	s1,8(sp)
    80003be0:	02010113          	addi	sp,sp,32
    80003be4:	00008067          	ret

0000000080003be8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003be8:	ff010113          	addi	sp,sp,-16
    80003bec:	00113423          	sd	ra,8(sp)
    80003bf0:	00813023          	sd	s0,0(sp)
    80003bf4:	01010413          	addi	s0,sp,16
    80003bf8:	00008797          	auipc	a5,0x8
    80003bfc:	82078793          	addi	a5,a5,-2016 # 8000b418 <_ZTV7WorkerD+0x10>
    80003c00:	00f53023          	sd	a5,0(a0)
    80003c04:	ffffe097          	auipc	ra,0xffffe
    80003c08:	568080e7          	jalr	1384(ra) # 8000216c <_ZN6ThreadD1Ev>
    80003c0c:	00813083          	ld	ra,8(sp)
    80003c10:	00013403          	ld	s0,0(sp)
    80003c14:	01010113          	addi	sp,sp,16
    80003c18:	00008067          	ret

0000000080003c1c <_ZN7WorkerDD0Ev>:
    80003c1c:	fe010113          	addi	sp,sp,-32
    80003c20:	00113c23          	sd	ra,24(sp)
    80003c24:	00813823          	sd	s0,16(sp)
    80003c28:	00913423          	sd	s1,8(sp)
    80003c2c:	02010413          	addi	s0,sp,32
    80003c30:	00050493          	mv	s1,a0
    80003c34:	00007797          	auipc	a5,0x7
    80003c38:	7e478793          	addi	a5,a5,2020 # 8000b418 <_ZTV7WorkerD+0x10>
    80003c3c:	00f53023          	sd	a5,0(a0)
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	52c080e7          	jalr	1324(ra) # 8000216c <_ZN6ThreadD1Ev>
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	420080e7          	jalr	1056(ra) # 8000206c <_ZdlPv>
    80003c54:	01813083          	ld	ra,24(sp)
    80003c58:	01013403          	ld	s0,16(sp)
    80003c5c:	00813483          	ld	s1,8(sp)
    80003c60:	02010113          	addi	sp,sp,32
    80003c64:	00008067          	ret

0000000080003c68 <_ZN7WorkerA3runEv>:
    void run() override {
    80003c68:	ff010113          	addi	sp,sp,-16
    80003c6c:	00113423          	sd	ra,8(sp)
    80003c70:	00813023          	sd	s0,0(sp)
    80003c74:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003c78:	00000593          	li	a1,0
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	774080e7          	jalr	1908(ra) # 800033f0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003c84:	00813083          	ld	ra,8(sp)
    80003c88:	00013403          	ld	s0,0(sp)
    80003c8c:	01010113          	addi	sp,sp,16
    80003c90:	00008067          	ret

0000000080003c94 <_ZN7WorkerB3runEv>:
    void run() override {
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00113423          	sd	ra,8(sp)
    80003c9c:	00813023          	sd	s0,0(sp)
    80003ca0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003ca4:	00000593          	li	a1,0
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	814080e7          	jalr	-2028(ra) # 800034bc <_ZN7WorkerB11workerBodyBEPv>
    }
    80003cb0:	00813083          	ld	ra,8(sp)
    80003cb4:	00013403          	ld	s0,0(sp)
    80003cb8:	01010113          	addi	sp,sp,16
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003cc0:	ff010113          	addi	sp,sp,-16
    80003cc4:	00113423          	sd	ra,8(sp)
    80003cc8:	00813023          	sd	s0,0(sp)
    80003ccc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003cd0:	00000593          	li	a1,0
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	8bc080e7          	jalr	-1860(ra) # 80003590 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003cdc:	00813083          	ld	ra,8(sp)
    80003ce0:	00013403          	ld	s0,0(sp)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret

0000000080003cec <_ZN7WorkerD3runEv>:
    void run() override {
    80003cec:	ff010113          	addi	sp,sp,-16
    80003cf0:	00113423          	sd	ra,8(sp)
    80003cf4:	00813023          	sd	s0,0(sp)
    80003cf8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003cfc:	00000593          	li	a1,0
    80003d00:	00000097          	auipc	ra,0x0
    80003d04:	a10080e7          	jalr	-1520(ra) # 80003710 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003d08:	00813083          	ld	ra,8(sp)
    80003d0c:	00013403          	ld	s0,0(sp)
    80003d10:	01010113          	addi	sp,sp,16
    80003d14:	00008067          	ret

0000000080003d18 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003d18:	f8010113          	addi	sp,sp,-128
    80003d1c:	06113c23          	sd	ra,120(sp)
    80003d20:	06813823          	sd	s0,112(sp)
    80003d24:	06913423          	sd	s1,104(sp)
    80003d28:	07213023          	sd	s2,96(sp)
    80003d2c:	05313c23          	sd	s3,88(sp)
    80003d30:	05413823          	sd	s4,80(sp)
    80003d34:	05513423          	sd	s5,72(sp)
    80003d38:	05613023          	sd	s6,64(sp)
    80003d3c:	03713c23          	sd	s7,56(sp)
    80003d40:	03813823          	sd	s8,48(sp)
    80003d44:	03913423          	sd	s9,40(sp)
    80003d48:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003d4c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003d50:	00005517          	auipc	a0,0x5
    80003d54:	45850513          	addi	a0,a0,1112 # 800091a8 <CONSOLE_STATUS+0x198>
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	5a8080e7          	jalr	1448(ra) # 80005300 <_Z11printStringPKc>
    getString(input, 30);
    80003d60:	01e00593          	li	a1,30
    80003d64:	f8040493          	addi	s1,s0,-128
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	00001097          	auipc	ra,0x1
    80003d70:	61c080e7          	jalr	1564(ra) # 80005388 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003d74:	00048513          	mv	a0,s1
    80003d78:	00001097          	auipc	ra,0x1
    80003d7c:	6e8080e7          	jalr	1768(ra) # 80005460 <_Z11stringToIntPKc>
    80003d80:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003d84:	00005517          	auipc	a0,0x5
    80003d88:	44450513          	addi	a0,a0,1092 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003d8c:	00001097          	auipc	ra,0x1
    80003d90:	574080e7          	jalr	1396(ra) # 80005300 <_Z11printStringPKc>
    getString(input, 30);
    80003d94:	01e00593          	li	a1,30
    80003d98:	00048513          	mv	a0,s1
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	5ec080e7          	jalr	1516(ra) # 80005388 <_Z9getStringPci>
    n = stringToInt(input);
    80003da4:	00048513          	mv	a0,s1
    80003da8:	00001097          	auipc	ra,0x1
    80003dac:	6b8080e7          	jalr	1720(ra) # 80005460 <_Z11stringToIntPKc>
    80003db0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003db4:	00005517          	auipc	a0,0x5
    80003db8:	43450513          	addi	a0,a0,1076 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	544080e7          	jalr	1348(ra) # 80005300 <_Z11printStringPKc>
    printInt(threadNum);
    80003dc4:	00000613          	li	a2,0
    80003dc8:	00a00593          	li	a1,10
    80003dcc:	00098513          	mv	a0,s3
    80003dd0:	00001097          	auipc	ra,0x1
    80003dd4:	6e0080e7          	jalr	1760(ra) # 800054b0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003dd8:	00005517          	auipc	a0,0x5
    80003ddc:	42850513          	addi	a0,a0,1064 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003de0:	00001097          	auipc	ra,0x1
    80003de4:	520080e7          	jalr	1312(ra) # 80005300 <_Z11printStringPKc>
    printInt(n);
    80003de8:	00000613          	li	a2,0
    80003dec:	00a00593          	li	a1,10
    80003df0:	00048513          	mv	a0,s1
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	6bc080e7          	jalr	1724(ra) # 800054b0 <_Z8printIntiii>
    printString(".\n");
    80003dfc:	00005517          	auipc	a0,0x5
    80003e00:	41c50513          	addi	a0,a0,1052 # 80009218 <CONSOLE_STATUS+0x208>
    80003e04:	00001097          	auipc	ra,0x1
    80003e08:	4fc080e7          	jalr	1276(ra) # 80005300 <_Z11printStringPKc>
    if (threadNum > n) {
    80003e0c:	0334c463          	blt	s1,s3,80003e34 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003e10:	03305c63          	blez	s3,80003e48 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003e14:	03800513          	li	a0,56
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	154080e7          	jalr	340(ra) # 80001f6c <_Znwm>
    80003e20:	00050a93          	mv	s5,a0
    80003e24:	00048593          	mv	a1,s1
    80003e28:	00001097          	auipc	ra,0x1
    80003e2c:	7a8080e7          	jalr	1960(ra) # 800055d0 <_ZN9BufferCPPC1Ei>
    80003e30:	0300006f          	j	80003e60 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003e34:	00005517          	auipc	a0,0x5
    80003e38:	3ec50513          	addi	a0,a0,1004 # 80009220 <CONSOLE_STATUS+0x210>
    80003e3c:	00001097          	auipc	ra,0x1
    80003e40:	4c4080e7          	jalr	1220(ra) # 80005300 <_Z11printStringPKc>
        return;
    80003e44:	0140006f          	j	80003e58 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003e48:	00005517          	auipc	a0,0x5
    80003e4c:	41850513          	addi	a0,a0,1048 # 80009260 <CONSOLE_STATUS+0x250>
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	4b0080e7          	jalr	1200(ra) # 80005300 <_Z11printStringPKc>
        return;
    80003e58:	000c0113          	mv	sp,s8
    80003e5c:	2140006f          	j	80004070 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003e60:	01000513          	li	a0,16
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	108080e7          	jalr	264(ra) # 80001f6c <_Znwm>
    80003e6c:	00050913          	mv	s2,a0
    80003e70:	00000593          	li	a1,0
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	548080e7          	jalr	1352(ra) # 800023bc <_ZN9SemaphoreC1Ej>
    80003e7c:	00007797          	auipc	a5,0x7
    80003e80:	7b27b223          	sd	s2,1956(a5) # 8000b620 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003e84:	00399793          	slli	a5,s3,0x3
    80003e88:	00f78793          	addi	a5,a5,15
    80003e8c:	ff07f793          	andi	a5,a5,-16
    80003e90:	40f10133          	sub	sp,sp,a5
    80003e94:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003e98:	0019871b          	addiw	a4,s3,1
    80003e9c:	00171793          	slli	a5,a4,0x1
    80003ea0:	00e787b3          	add	a5,a5,a4
    80003ea4:	00379793          	slli	a5,a5,0x3
    80003ea8:	00f78793          	addi	a5,a5,15
    80003eac:	ff07f793          	andi	a5,a5,-16
    80003eb0:	40f10133          	sub	sp,sp,a5
    80003eb4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003eb8:	00199493          	slli	s1,s3,0x1
    80003ebc:	013484b3          	add	s1,s1,s3
    80003ec0:	00349493          	slli	s1,s1,0x3
    80003ec4:	009b04b3          	add	s1,s6,s1
    80003ec8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003ecc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003ed0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ed4:	02800513          	li	a0,40
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	094080e7          	jalr	148(ra) # 80001f6c <_Znwm>
    80003ee0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	444080e7          	jalr	1092(ra) # 80002328 <_ZN6ThreadC1Ev>
    80003eec:	00007797          	auipc	a5,0x7
    80003ef0:	5a478793          	addi	a5,a5,1444 # 8000b490 <_ZTV8Consumer+0x10>
    80003ef4:	00fbb023          	sd	a5,0(s7)
    80003ef8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003efc:	000b8513          	mv	a0,s7
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	460080e7          	jalr	1120(ra) # 80002360 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003f08:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003f0c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003f10:	00007797          	auipc	a5,0x7
    80003f14:	7107b783          	ld	a5,1808(a5) # 8000b620 <_ZL10waitForAll>
    80003f18:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f1c:	02800513          	li	a0,40
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	04c080e7          	jalr	76(ra) # 80001f6c <_Znwm>
    80003f28:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	3fc080e7          	jalr	1020(ra) # 80002328 <_ZN6ThreadC1Ev>
    80003f34:	00007797          	auipc	a5,0x7
    80003f38:	50c78793          	addi	a5,a5,1292 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    80003f3c:	00f4b023          	sd	a5,0(s1)
    80003f40:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f44:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003f48:	00048513          	mv	a0,s1
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	414080e7          	jalr	1044(ra) # 80002360 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003f54:	00100913          	li	s2,1
    80003f58:	0300006f          	j	80003f88 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f5c:	00007797          	auipc	a5,0x7
    80003f60:	50c78793          	addi	a5,a5,1292 # 8000b468 <_ZTV8Producer+0x10>
    80003f64:	00fcb023          	sd	a5,0(s9)
    80003f68:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003f6c:	00391793          	slli	a5,s2,0x3
    80003f70:	00fa07b3          	add	a5,s4,a5
    80003f74:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003f78:	000c8513          	mv	a0,s9
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	3e4080e7          	jalr	996(ra) # 80002360 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003f84:	0019091b          	addiw	s2,s2,1
    80003f88:	05395263          	bge	s2,s3,80003fcc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003f8c:	00191493          	slli	s1,s2,0x1
    80003f90:	012484b3          	add	s1,s1,s2
    80003f94:	00349493          	slli	s1,s1,0x3
    80003f98:	009b04b3          	add	s1,s6,s1
    80003f9c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003fa0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003fa4:	00007797          	auipc	a5,0x7
    80003fa8:	67c7b783          	ld	a5,1660(a5) # 8000b620 <_ZL10waitForAll>
    80003fac:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003fb0:	02800513          	li	a0,40
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	fb8080e7          	jalr	-72(ra) # 80001f6c <_Znwm>
    80003fbc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	368080e7          	jalr	872(ra) # 80002328 <_ZN6ThreadC1Ev>
    80003fc8:	f95ff06f          	j	80003f5c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	304080e7          	jalr	772(ra) # 800022d0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003fd4:	00000493          	li	s1,0
    80003fd8:	0099ce63          	blt	s3,s1,80003ff4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003fdc:	00007517          	auipc	a0,0x7
    80003fe0:	64453503          	ld	a0,1604(a0) # 8000b620 <_ZL10waitForAll>
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	410080e7          	jalr	1040(ra) # 800023f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003fec:	0014849b          	addiw	s1,s1,1
    80003ff0:	fe9ff06f          	j	80003fd8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003ff4:	00007517          	auipc	a0,0x7
    80003ff8:	62c53503          	ld	a0,1580(a0) # 8000b620 <_ZL10waitForAll>
    80003ffc:	00050863          	beqz	a0,8000400c <_Z20testConsumerProducerv+0x2f4>
    80004000:	00053783          	ld	a5,0(a0)
    80004004:	0087b783          	ld	a5,8(a5)
    80004008:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000400c:	00000493          	li	s1,0
    80004010:	0080006f          	j	80004018 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004014:	0014849b          	addiw	s1,s1,1
    80004018:	0334d263          	bge	s1,s3,8000403c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000401c:	00349793          	slli	a5,s1,0x3
    80004020:	00fa07b3          	add	a5,s4,a5
    80004024:	0007b503          	ld	a0,0(a5)
    80004028:	fe0506e3          	beqz	a0,80004014 <_Z20testConsumerProducerv+0x2fc>
    8000402c:	00053783          	ld	a5,0(a0)
    80004030:	0087b783          	ld	a5,8(a5)
    80004034:	000780e7          	jalr	a5
    80004038:	fddff06f          	j	80004014 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000403c:	000b8a63          	beqz	s7,80004050 <_Z20testConsumerProducerv+0x338>
    80004040:	000bb783          	ld	a5,0(s7)
    80004044:	0087b783          	ld	a5,8(a5)
    80004048:	000b8513          	mv	a0,s7
    8000404c:	000780e7          	jalr	a5
    delete buffer;
    80004050:	000a8e63          	beqz	s5,8000406c <_Z20testConsumerProducerv+0x354>
    80004054:	000a8513          	mv	a0,s5
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	870080e7          	jalr	-1936(ra) # 800058c8 <_ZN9BufferCPPD1Ev>
    80004060:	000a8513          	mv	a0,s5
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	008080e7          	jalr	8(ra) # 8000206c <_ZdlPv>
    8000406c:	000c0113          	mv	sp,s8
}
    80004070:	f8040113          	addi	sp,s0,-128
    80004074:	07813083          	ld	ra,120(sp)
    80004078:	07013403          	ld	s0,112(sp)
    8000407c:	06813483          	ld	s1,104(sp)
    80004080:	06013903          	ld	s2,96(sp)
    80004084:	05813983          	ld	s3,88(sp)
    80004088:	05013a03          	ld	s4,80(sp)
    8000408c:	04813a83          	ld	s5,72(sp)
    80004090:	04013b03          	ld	s6,64(sp)
    80004094:	03813b83          	ld	s7,56(sp)
    80004098:	03013c03          	ld	s8,48(sp)
    8000409c:	02813c83          	ld	s9,40(sp)
    800040a0:	08010113          	addi	sp,sp,128
    800040a4:	00008067          	ret
    800040a8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800040ac:	000a8513          	mv	a0,s5
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	fbc080e7          	jalr	-68(ra) # 8000206c <_ZdlPv>
    800040b8:	00048513          	mv	a0,s1
    800040bc:	00008097          	auipc	ra,0x8
    800040c0:	65c080e7          	jalr	1628(ra) # 8000c718 <_Unwind_Resume>
    800040c4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800040c8:	00090513          	mv	a0,s2
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	fa0080e7          	jalr	-96(ra) # 8000206c <_ZdlPv>
    800040d4:	00048513          	mv	a0,s1
    800040d8:	00008097          	auipc	ra,0x8
    800040dc:	640080e7          	jalr	1600(ra) # 8000c718 <_Unwind_Resume>
    800040e0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040e4:	000b8513          	mv	a0,s7
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	f84080e7          	jalr	-124(ra) # 8000206c <_ZdlPv>
    800040f0:	00048513          	mv	a0,s1
    800040f4:	00008097          	auipc	ra,0x8
    800040f8:	624080e7          	jalr	1572(ra) # 8000c718 <_Unwind_Resume>
    800040fc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004100:	00048513          	mv	a0,s1
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	f68080e7          	jalr	-152(ra) # 8000206c <_ZdlPv>
    8000410c:	00090513          	mv	a0,s2
    80004110:	00008097          	auipc	ra,0x8
    80004114:	608080e7          	jalr	1544(ra) # 8000c718 <_Unwind_Resume>
    80004118:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000411c:	000c8513          	mv	a0,s9
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	f4c080e7          	jalr	-180(ra) # 8000206c <_ZdlPv>
    80004128:	00048513          	mv	a0,s1
    8000412c:	00008097          	auipc	ra,0x8
    80004130:	5ec080e7          	jalr	1516(ra) # 8000c718 <_Unwind_Resume>

0000000080004134 <_ZN8Consumer3runEv>:
    void run() override {
    80004134:	fd010113          	addi	sp,sp,-48
    80004138:	02113423          	sd	ra,40(sp)
    8000413c:	02813023          	sd	s0,32(sp)
    80004140:	00913c23          	sd	s1,24(sp)
    80004144:	01213823          	sd	s2,16(sp)
    80004148:	01313423          	sd	s3,8(sp)
    8000414c:	03010413          	addi	s0,sp,48
    80004150:	00050913          	mv	s2,a0
        int i = 0;
    80004154:	00000993          	li	s3,0
    80004158:	0100006f          	j	80004168 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000415c:	00a00513          	li	a0,10
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	2ec080e7          	jalr	748(ra) # 8000244c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004168:	00007797          	auipc	a5,0x7
    8000416c:	4b07a783          	lw	a5,1200(a5) # 8000b618 <_ZL9threadEnd>
    80004170:	04079a63          	bnez	a5,800041c4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004174:	02093783          	ld	a5,32(s2)
    80004178:	0087b503          	ld	a0,8(a5)
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	638080e7          	jalr	1592(ra) # 800057b4 <_ZN9BufferCPP3getEv>
            i++;
    80004184:	0019849b          	addiw	s1,s3,1
    80004188:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000418c:	0ff57513          	andi	a0,a0,255
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	2bc080e7          	jalr	700(ra) # 8000244c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004198:	05000793          	li	a5,80
    8000419c:	02f4e4bb          	remw	s1,s1,a5
    800041a0:	fc0494e3          	bnez	s1,80004168 <_ZN8Consumer3runEv+0x34>
    800041a4:	fb9ff06f          	j	8000415c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800041a8:	02093783          	ld	a5,32(s2)
    800041ac:	0087b503          	ld	a0,8(a5)
    800041b0:	00001097          	auipc	ra,0x1
    800041b4:	604080e7          	jalr	1540(ra) # 800057b4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800041b8:	0ff57513          	andi	a0,a0,255
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	290080e7          	jalr	656(ra) # 8000244c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800041c4:	02093783          	ld	a5,32(s2)
    800041c8:	0087b503          	ld	a0,8(a5)
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	674080e7          	jalr	1652(ra) # 80005840 <_ZN9BufferCPP6getCntEv>
    800041d4:	fca04ae3          	bgtz	a0,800041a8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800041d8:	02093783          	ld	a5,32(s2)
    800041dc:	0107b503          	ld	a0,16(a5)
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	240080e7          	jalr	576(ra) # 80002420 <_ZN9Semaphore6signalEv>
    }
    800041e8:	02813083          	ld	ra,40(sp)
    800041ec:	02013403          	ld	s0,32(sp)
    800041f0:	01813483          	ld	s1,24(sp)
    800041f4:	01013903          	ld	s2,16(sp)
    800041f8:	00813983          	ld	s3,8(sp)
    800041fc:	03010113          	addi	sp,sp,48
    80004200:	00008067          	ret

0000000080004204 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004204:	ff010113          	addi	sp,sp,-16
    80004208:	00113423          	sd	ra,8(sp)
    8000420c:	00813023          	sd	s0,0(sp)
    80004210:	01010413          	addi	s0,sp,16
    80004214:	00007797          	auipc	a5,0x7
    80004218:	27c78793          	addi	a5,a5,636 # 8000b490 <_ZTV8Consumer+0x10>
    8000421c:	00f53023          	sd	a5,0(a0)
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	f4c080e7          	jalr	-180(ra) # 8000216c <_ZN6ThreadD1Ev>
    80004228:	00813083          	ld	ra,8(sp)
    8000422c:	00013403          	ld	s0,0(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <_ZN8ConsumerD0Ev>:
    80004238:	fe010113          	addi	sp,sp,-32
    8000423c:	00113c23          	sd	ra,24(sp)
    80004240:	00813823          	sd	s0,16(sp)
    80004244:	00913423          	sd	s1,8(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	00050493          	mv	s1,a0
    80004250:	00007797          	auipc	a5,0x7
    80004254:	24078793          	addi	a5,a5,576 # 8000b490 <_ZTV8Consumer+0x10>
    80004258:	00f53023          	sd	a5,0(a0)
    8000425c:	ffffe097          	auipc	ra,0xffffe
    80004260:	f10080e7          	jalr	-240(ra) # 8000216c <_ZN6ThreadD1Ev>
    80004264:	00048513          	mv	a0,s1
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	e04080e7          	jalr	-508(ra) # 8000206c <_ZdlPv>
    80004270:	01813083          	ld	ra,24(sp)
    80004274:	01013403          	ld	s0,16(sp)
    80004278:	00813483          	ld	s1,8(sp)
    8000427c:	02010113          	addi	sp,sp,32
    80004280:	00008067          	ret

0000000080004284 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004284:	ff010113          	addi	sp,sp,-16
    80004288:	00113423          	sd	ra,8(sp)
    8000428c:	00813023          	sd	s0,0(sp)
    80004290:	01010413          	addi	s0,sp,16
    80004294:	00007797          	auipc	a5,0x7
    80004298:	1ac78793          	addi	a5,a5,428 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    8000429c:	00f53023          	sd	a5,0(a0)
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	ecc080e7          	jalr	-308(ra) # 8000216c <_ZN6ThreadD1Ev>
    800042a8:	00813083          	ld	ra,8(sp)
    800042ac:	00013403          	ld	s0,0(sp)
    800042b0:	01010113          	addi	sp,sp,16
    800042b4:	00008067          	ret

00000000800042b8 <_ZN16ProducerKeyboradD0Ev>:
    800042b8:	fe010113          	addi	sp,sp,-32
    800042bc:	00113c23          	sd	ra,24(sp)
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	02010413          	addi	s0,sp,32
    800042cc:	00050493          	mv	s1,a0
    800042d0:	00007797          	auipc	a5,0x7
    800042d4:	17078793          	addi	a5,a5,368 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    800042d8:	00f53023          	sd	a5,0(a0)
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	e90080e7          	jalr	-368(ra) # 8000216c <_ZN6ThreadD1Ev>
    800042e4:	00048513          	mv	a0,s1
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	d84080e7          	jalr	-636(ra) # 8000206c <_ZdlPv>
    800042f0:	01813083          	ld	ra,24(sp)
    800042f4:	01013403          	ld	s0,16(sp)
    800042f8:	00813483          	ld	s1,8(sp)
    800042fc:	02010113          	addi	sp,sp,32
    80004300:	00008067          	ret

0000000080004304 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004304:	ff010113          	addi	sp,sp,-16
    80004308:	00113423          	sd	ra,8(sp)
    8000430c:	00813023          	sd	s0,0(sp)
    80004310:	01010413          	addi	s0,sp,16
    80004314:	00007797          	auipc	a5,0x7
    80004318:	15478793          	addi	a5,a5,340 # 8000b468 <_ZTV8Producer+0x10>
    8000431c:	00f53023          	sd	a5,0(a0)
    80004320:	ffffe097          	auipc	ra,0xffffe
    80004324:	e4c080e7          	jalr	-436(ra) # 8000216c <_ZN6ThreadD1Ev>
    80004328:	00813083          	ld	ra,8(sp)
    8000432c:	00013403          	ld	s0,0(sp)
    80004330:	01010113          	addi	sp,sp,16
    80004334:	00008067          	ret

0000000080004338 <_ZN8ProducerD0Ev>:
    80004338:	fe010113          	addi	sp,sp,-32
    8000433c:	00113c23          	sd	ra,24(sp)
    80004340:	00813823          	sd	s0,16(sp)
    80004344:	00913423          	sd	s1,8(sp)
    80004348:	02010413          	addi	s0,sp,32
    8000434c:	00050493          	mv	s1,a0
    80004350:	00007797          	auipc	a5,0x7
    80004354:	11878793          	addi	a5,a5,280 # 8000b468 <_ZTV8Producer+0x10>
    80004358:	00f53023          	sd	a5,0(a0)
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	e10080e7          	jalr	-496(ra) # 8000216c <_ZN6ThreadD1Ev>
    80004364:	00048513          	mv	a0,s1
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	d04080e7          	jalr	-764(ra) # 8000206c <_ZdlPv>
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	00813483          	ld	s1,8(sp)
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret

0000000080004384 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004384:	fe010113          	addi	sp,sp,-32
    80004388:	00113c23          	sd	ra,24(sp)
    8000438c:	00813823          	sd	s0,16(sp)
    80004390:	00913423          	sd	s1,8(sp)
    80004394:	02010413          	addi	s0,sp,32
    80004398:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000439c:	ffffd097          	auipc	ra,0xffffd
    800043a0:	144080e7          	jalr	324(ra) # 800014e0 <_Z4getcv>
    800043a4:	0005059b          	sext.w	a1,a0
    800043a8:	01b00793          	li	a5,27
    800043ac:	00f58c63          	beq	a1,a5,800043c4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800043b0:	0204b783          	ld	a5,32(s1)
    800043b4:	0087b503          	ld	a0,8(a5)
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	36c080e7          	jalr	876(ra) # 80005724 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800043c0:	fddff06f          	j	8000439c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800043c4:	00100793          	li	a5,1
    800043c8:	00007717          	auipc	a4,0x7
    800043cc:	24f72823          	sw	a5,592(a4) # 8000b618 <_ZL9threadEnd>
        td->buffer->put('!');
    800043d0:	0204b783          	ld	a5,32(s1)
    800043d4:	02100593          	li	a1,33
    800043d8:	0087b503          	ld	a0,8(a5)
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	348080e7          	jalr	840(ra) # 80005724 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800043e4:	0204b783          	ld	a5,32(s1)
    800043e8:	0107b503          	ld	a0,16(a5)
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	034080e7          	jalr	52(ra) # 80002420 <_ZN9Semaphore6signalEv>
    }
    800043f4:	01813083          	ld	ra,24(sp)
    800043f8:	01013403          	ld	s0,16(sp)
    800043fc:	00813483          	ld	s1,8(sp)
    80004400:	02010113          	addi	sp,sp,32
    80004404:	00008067          	ret

0000000080004408 <_ZN8Producer3runEv>:
    void run() override {
    80004408:	fe010113          	addi	sp,sp,-32
    8000440c:	00113c23          	sd	ra,24(sp)
    80004410:	00813823          	sd	s0,16(sp)
    80004414:	00913423          	sd	s1,8(sp)
    80004418:	01213023          	sd	s2,0(sp)
    8000441c:	02010413          	addi	s0,sp,32
    80004420:	00050493          	mv	s1,a0
        int i = 0;
    80004424:	00000913          	li	s2,0
        while (!threadEnd) {
    80004428:	00007797          	auipc	a5,0x7
    8000442c:	1f07a783          	lw	a5,496(a5) # 8000b618 <_ZL9threadEnd>
    80004430:	04079263          	bnez	a5,80004474 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004434:	0204b783          	ld	a5,32(s1)
    80004438:	0007a583          	lw	a1,0(a5)
    8000443c:	0305859b          	addiw	a1,a1,48
    80004440:	0087b503          	ld	a0,8(a5)
    80004444:	00001097          	auipc	ra,0x1
    80004448:	2e0080e7          	jalr	736(ra) # 80005724 <_ZN9BufferCPP3putEi>
            i++;
    8000444c:	0019071b          	addiw	a4,s2,1
    80004450:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004454:	0204b783          	ld	a5,32(s1)
    80004458:	0007a783          	lw	a5,0(a5)
    8000445c:	00e787bb          	addw	a5,a5,a4
    80004460:	00500513          	li	a0,5
    80004464:	02a7e53b          	remw	a0,a5,a0
    80004468:	ffffe097          	auipc	ra,0xffffe
    8000446c:	f2c080e7          	jalr	-212(ra) # 80002394 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004470:	fb9ff06f          	j	80004428 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004474:	0204b783          	ld	a5,32(s1)
    80004478:	0107b503          	ld	a0,16(a5)
    8000447c:	ffffe097          	auipc	ra,0xffffe
    80004480:	fa4080e7          	jalr	-92(ra) # 80002420 <_ZN9Semaphore6signalEv>
    }
    80004484:	01813083          	ld	ra,24(sp)
    80004488:	01013403          	ld	s0,16(sp)
    8000448c:	00813483          	ld	s1,8(sp)
    80004490:	00013903          	ld	s2,0(sp)
    80004494:	02010113          	addi	sp,sp,32
    80004498:	00008067          	ret

000000008000449c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000449c:	fe010113          	addi	sp,sp,-32
    800044a0:	00113c23          	sd	ra,24(sp)
    800044a4:	00813823          	sd	s0,16(sp)
    800044a8:	00913423          	sd	s1,8(sp)
    800044ac:	01213023          	sd	s2,0(sp)
    800044b0:	02010413          	addi	s0,sp,32
    800044b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800044b8:	00100793          	li	a5,1
    800044bc:	02a7f863          	bgeu	a5,a0,800044ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800044c0:	00a00793          	li	a5,10
    800044c4:	02f577b3          	remu	a5,a0,a5
    800044c8:	02078e63          	beqz	a5,80004504 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800044cc:	fff48513          	addi	a0,s1,-1
    800044d0:	00000097          	auipc	ra,0x0
    800044d4:	fcc080e7          	jalr	-52(ra) # 8000449c <_ZL9fibonaccim>
    800044d8:	00050913          	mv	s2,a0
    800044dc:	ffe48513          	addi	a0,s1,-2
    800044e0:	00000097          	auipc	ra,0x0
    800044e4:	fbc080e7          	jalr	-68(ra) # 8000449c <_ZL9fibonaccim>
    800044e8:	00a90533          	add	a0,s2,a0
}
    800044ec:	01813083          	ld	ra,24(sp)
    800044f0:	01013403          	ld	s0,16(sp)
    800044f4:	00813483          	ld	s1,8(sp)
    800044f8:	00013903          	ld	s2,0(sp)
    800044fc:	02010113          	addi	sp,sp,32
    80004500:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004504:	ffffd097          	auipc	ra,0xffffd
    80004508:	ed4080e7          	jalr	-300(ra) # 800013d8 <_Z15thread_dispatchv>
    8000450c:	fc1ff06f          	j	800044cc <_ZL9fibonaccim+0x30>

0000000080004510 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004510:	fe010113          	addi	sp,sp,-32
    80004514:	00113c23          	sd	ra,24(sp)
    80004518:	00813823          	sd	s0,16(sp)
    8000451c:	00913423          	sd	s1,8(sp)
    80004520:	01213023          	sd	s2,0(sp)
    80004524:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004528:	00a00493          	li	s1,10
    8000452c:	0400006f          	j	8000456c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004530:	00005517          	auipc	a0,0x5
    80004534:	db050513          	addi	a0,a0,-592 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004538:	00001097          	auipc	ra,0x1
    8000453c:	dc8080e7          	jalr	-568(ra) # 80005300 <_Z11printStringPKc>
    80004540:	00000613          	li	a2,0
    80004544:	00a00593          	li	a1,10
    80004548:	00048513          	mv	a0,s1
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	f64080e7          	jalr	-156(ra) # 800054b0 <_Z8printIntiii>
    80004554:	00005517          	auipc	a0,0x5
    80004558:	fbc50513          	addi	a0,a0,-68 # 80009510 <CONSOLE_STATUS+0x500>
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	da4080e7          	jalr	-604(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004564:	0014849b          	addiw	s1,s1,1
    80004568:	0ff4f493          	andi	s1,s1,255
    8000456c:	00c00793          	li	a5,12
    80004570:	fc97f0e3          	bgeu	a5,s1,80004530 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004574:	00005517          	auipc	a0,0x5
    80004578:	d7450513          	addi	a0,a0,-652 # 800092e8 <CONSOLE_STATUS+0x2d8>
    8000457c:	00001097          	auipc	ra,0x1
    80004580:	d84080e7          	jalr	-636(ra) # 80005300 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004584:	00500313          	li	t1,5
    thread_dispatch();
    80004588:	ffffd097          	auipc	ra,0xffffd
    8000458c:	e50080e7          	jalr	-432(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004590:	01000513          	li	a0,16
    80004594:	00000097          	auipc	ra,0x0
    80004598:	f08080e7          	jalr	-248(ra) # 8000449c <_ZL9fibonaccim>
    8000459c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800045a0:	00005517          	auipc	a0,0x5
    800045a4:	d5850513          	addi	a0,a0,-680 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	d58080e7          	jalr	-680(ra) # 80005300 <_Z11printStringPKc>
    800045b0:	00000613          	li	a2,0
    800045b4:	00a00593          	li	a1,10
    800045b8:	0009051b          	sext.w	a0,s2
    800045bc:	00001097          	auipc	ra,0x1
    800045c0:	ef4080e7          	jalr	-268(ra) # 800054b0 <_Z8printIntiii>
    800045c4:	00005517          	auipc	a0,0x5
    800045c8:	f4c50513          	addi	a0,a0,-180 # 80009510 <CONSOLE_STATUS+0x500>
    800045cc:	00001097          	auipc	ra,0x1
    800045d0:	d34080e7          	jalr	-716(ra) # 80005300 <_Z11printStringPKc>
    800045d4:	0400006f          	j	80004614 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045d8:	00005517          	auipc	a0,0x5
    800045dc:	d0850513          	addi	a0,a0,-760 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800045e0:	00001097          	auipc	ra,0x1
    800045e4:	d20080e7          	jalr	-736(ra) # 80005300 <_Z11printStringPKc>
    800045e8:	00000613          	li	a2,0
    800045ec:	00a00593          	li	a1,10
    800045f0:	00048513          	mv	a0,s1
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	ebc080e7          	jalr	-324(ra) # 800054b0 <_Z8printIntiii>
    800045fc:	00005517          	auipc	a0,0x5
    80004600:	f1450513          	addi	a0,a0,-236 # 80009510 <CONSOLE_STATUS+0x500>
    80004604:	00001097          	auipc	ra,0x1
    80004608:	cfc080e7          	jalr	-772(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000460c:	0014849b          	addiw	s1,s1,1
    80004610:	0ff4f493          	andi	s1,s1,255
    80004614:	00f00793          	li	a5,15
    80004618:	fc97f0e3          	bgeu	a5,s1,800045d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000461c:	00005517          	auipc	a0,0x5
    80004620:	cec50513          	addi	a0,a0,-788 # 80009308 <CONSOLE_STATUS+0x2f8>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	cdc080e7          	jalr	-804(ra) # 80005300 <_Z11printStringPKc>
    finishedD = true;
    8000462c:	00100793          	li	a5,1
    80004630:	00007717          	auipc	a4,0x7
    80004634:	fef70c23          	sb	a5,-8(a4) # 8000b628 <_ZL9finishedD>
    thread_dispatch();
    80004638:	ffffd097          	auipc	ra,0xffffd
    8000463c:	da0080e7          	jalr	-608(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	01013403          	ld	s0,16(sp)
    80004648:	00813483          	ld	s1,8(sp)
    8000464c:	00013903          	ld	s2,0(sp)
    80004650:	02010113          	addi	sp,sp,32
    80004654:	00008067          	ret

0000000080004658 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004658:	fe010113          	addi	sp,sp,-32
    8000465c:	00113c23          	sd	ra,24(sp)
    80004660:	00813823          	sd	s0,16(sp)
    80004664:	00913423          	sd	s1,8(sp)
    80004668:	01213023          	sd	s2,0(sp)
    8000466c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004670:	00000493          	li	s1,0
    80004674:	0400006f          	j	800046b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004678:	00005517          	auipc	a0,0x5
    8000467c:	c3850513          	addi	a0,a0,-968 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004680:	00001097          	auipc	ra,0x1
    80004684:	c80080e7          	jalr	-896(ra) # 80005300 <_Z11printStringPKc>
    80004688:	00000613          	li	a2,0
    8000468c:	00a00593          	li	a1,10
    80004690:	00048513          	mv	a0,s1
    80004694:	00001097          	auipc	ra,0x1
    80004698:	e1c080e7          	jalr	-484(ra) # 800054b0 <_Z8printIntiii>
    8000469c:	00005517          	auipc	a0,0x5
    800046a0:	e7450513          	addi	a0,a0,-396 # 80009510 <CONSOLE_STATUS+0x500>
    800046a4:	00001097          	auipc	ra,0x1
    800046a8:	c5c080e7          	jalr	-932(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800046ac:	0014849b          	addiw	s1,s1,1
    800046b0:	0ff4f493          	andi	s1,s1,255
    800046b4:	00200793          	li	a5,2
    800046b8:	fc97f0e3          	bgeu	a5,s1,80004678 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800046bc:	00005517          	auipc	a0,0x5
    800046c0:	bfc50513          	addi	a0,a0,-1028 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800046c4:	00001097          	auipc	ra,0x1
    800046c8:	c3c080e7          	jalr	-964(ra) # 80005300 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800046cc:	00700313          	li	t1,7
    thread_dispatch();
    800046d0:	ffffd097          	auipc	ra,0xffffd
    800046d4:	d08080e7          	jalr	-760(ra) # 800013d8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800046d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	bec50513          	addi	a0,a0,-1044 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	c1c080e7          	jalr	-996(ra) # 80005300 <_Z11printStringPKc>
    800046ec:	00000613          	li	a2,0
    800046f0:	00a00593          	li	a1,10
    800046f4:	0009051b          	sext.w	a0,s2
    800046f8:	00001097          	auipc	ra,0x1
    800046fc:	db8080e7          	jalr	-584(ra) # 800054b0 <_Z8printIntiii>
    80004700:	00005517          	auipc	a0,0x5
    80004704:	e1050513          	addi	a0,a0,-496 # 80009510 <CONSOLE_STATUS+0x500>
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	bf8080e7          	jalr	-1032(ra) # 80005300 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004710:	00c00513          	li	a0,12
    80004714:	00000097          	auipc	ra,0x0
    80004718:	d88080e7          	jalr	-632(ra) # 8000449c <_ZL9fibonaccim>
    8000471c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004720:	00005517          	auipc	a0,0x5
    80004724:	bb050513          	addi	a0,a0,-1104 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	bd8080e7          	jalr	-1064(ra) # 80005300 <_Z11printStringPKc>
    80004730:	00000613          	li	a2,0
    80004734:	00a00593          	li	a1,10
    80004738:	0009051b          	sext.w	a0,s2
    8000473c:	00001097          	auipc	ra,0x1
    80004740:	d74080e7          	jalr	-652(ra) # 800054b0 <_Z8printIntiii>
    80004744:	00005517          	auipc	a0,0x5
    80004748:	dcc50513          	addi	a0,a0,-564 # 80009510 <CONSOLE_STATUS+0x500>
    8000474c:	00001097          	auipc	ra,0x1
    80004750:	bb4080e7          	jalr	-1100(ra) # 80005300 <_Z11printStringPKc>
    80004754:	0400006f          	j	80004794 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004758:	00005517          	auipc	a0,0x5
    8000475c:	b5850513          	addi	a0,a0,-1192 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004760:	00001097          	auipc	ra,0x1
    80004764:	ba0080e7          	jalr	-1120(ra) # 80005300 <_Z11printStringPKc>
    80004768:	00000613          	li	a2,0
    8000476c:	00a00593          	li	a1,10
    80004770:	00048513          	mv	a0,s1
    80004774:	00001097          	auipc	ra,0x1
    80004778:	d3c080e7          	jalr	-708(ra) # 800054b0 <_Z8printIntiii>
    8000477c:	00005517          	auipc	a0,0x5
    80004780:	d9450513          	addi	a0,a0,-620 # 80009510 <CONSOLE_STATUS+0x500>
    80004784:	00001097          	auipc	ra,0x1
    80004788:	b7c080e7          	jalr	-1156(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000478c:	0014849b          	addiw	s1,s1,1
    80004790:	0ff4f493          	andi	s1,s1,255
    80004794:	00500793          	li	a5,5
    80004798:	fc97f0e3          	bgeu	a5,s1,80004758 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    8000479c:	00005517          	auipc	a0,0x5
    800047a0:	bdc50513          	addi	a0,a0,-1060 # 80009378 <CONSOLE_STATUS+0x368>
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	b5c080e7          	jalr	-1188(ra) # 80005300 <_Z11printStringPKc>
    finishedC = true;
    800047ac:	00100793          	li	a5,1
    800047b0:	00007717          	auipc	a4,0x7
    800047b4:	e6f70ca3          	sb	a5,-391(a4) # 8000b629 <_ZL9finishedC>
    thread_dispatch();
    800047b8:	ffffd097          	auipc	ra,0xffffd
    800047bc:	c20080e7          	jalr	-992(ra) # 800013d8 <_Z15thread_dispatchv>
}
    800047c0:	01813083          	ld	ra,24(sp)
    800047c4:	01013403          	ld	s0,16(sp)
    800047c8:	00813483          	ld	s1,8(sp)
    800047cc:	00013903          	ld	s2,0(sp)
    800047d0:	02010113          	addi	sp,sp,32
    800047d4:	00008067          	ret

00000000800047d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800047d8:	fe010113          	addi	sp,sp,-32
    800047dc:	00113c23          	sd	ra,24(sp)
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00913423          	sd	s1,8(sp)
    800047e8:	01213023          	sd	s2,0(sp)
    800047ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800047f0:	00000913          	li	s2,0
    800047f4:	0380006f          	j	8000482c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800047f8:	ffffd097          	auipc	ra,0xffffd
    800047fc:	be0080e7          	jalr	-1056(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004800:	00148493          	addi	s1,s1,1
    80004804:	000027b7          	lui	a5,0x2
    80004808:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000480c:	0097ee63          	bltu	a5,s1,80004828 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004810:	00000713          	li	a4,0
    80004814:	000077b7          	lui	a5,0x7
    80004818:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000481c:	fce7eee3          	bltu	a5,a4,800047f8 <_ZL11workerBodyBPv+0x20>
    80004820:	00170713          	addi	a4,a4,1
    80004824:	ff1ff06f          	j	80004814 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004828:	00190913          	addi	s2,s2,1
    8000482c:	00f00793          	li	a5,15
    80004830:	0527e063          	bltu	a5,s2,80004870 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004834:	00005517          	auipc	a0,0x5
    80004838:	81c50513          	addi	a0,a0,-2020 # 80009050 <CONSOLE_STATUS+0x40>
    8000483c:	00001097          	auipc	ra,0x1
    80004840:	ac4080e7          	jalr	-1340(ra) # 80005300 <_Z11printStringPKc>
    80004844:	00000613          	li	a2,0
    80004848:	00a00593          	li	a1,10
    8000484c:	0009051b          	sext.w	a0,s2
    80004850:	00001097          	auipc	ra,0x1
    80004854:	c60080e7          	jalr	-928(ra) # 800054b0 <_Z8printIntiii>
    80004858:	00005517          	auipc	a0,0x5
    8000485c:	cb850513          	addi	a0,a0,-840 # 80009510 <CONSOLE_STATUS+0x500>
    80004860:	00001097          	auipc	ra,0x1
    80004864:	aa0080e7          	jalr	-1376(ra) # 80005300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004868:	00000493          	li	s1,0
    8000486c:	f99ff06f          	j	80004804 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004870:	00005517          	auipc	a0,0x5
    80004874:	a3050513          	addi	a0,a0,-1488 # 800092a0 <CONSOLE_STATUS+0x290>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	a88080e7          	jalr	-1400(ra) # 80005300 <_Z11printStringPKc>
    finishedB = true;
    80004880:	00100793          	li	a5,1
    80004884:	00007717          	auipc	a4,0x7
    80004888:	daf70323          	sb	a5,-602(a4) # 8000b62a <_ZL9finishedB>
    thread_dispatch();
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	b4c080e7          	jalr	-1204(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80004894:	01813083          	ld	ra,24(sp)
    80004898:	01013403          	ld	s0,16(sp)
    8000489c:	00813483          	ld	s1,8(sp)
    800048a0:	00013903          	ld	s2,0(sp)
    800048a4:	02010113          	addi	sp,sp,32
    800048a8:	00008067          	ret

00000000800048ac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00113c23          	sd	ra,24(sp)
    800048b4:	00813823          	sd	s0,16(sp)
    800048b8:	00913423          	sd	s1,8(sp)
    800048bc:	01213023          	sd	s2,0(sp)
    800048c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800048c4:	00000913          	li	s2,0
    800048c8:	0380006f          	j	80004900 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800048cc:	ffffd097          	auipc	ra,0xffffd
    800048d0:	b0c080e7          	jalr	-1268(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800048d4:	00148493          	addi	s1,s1,1
    800048d8:	000027b7          	lui	a5,0x2
    800048dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800048e0:	0097ee63          	bltu	a5,s1,800048fc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800048e4:	00000713          	li	a4,0
    800048e8:	000077b7          	lui	a5,0x7
    800048ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800048f0:	fce7eee3          	bltu	a5,a4,800048cc <_ZL11workerBodyAPv+0x20>
    800048f4:	00170713          	addi	a4,a4,1
    800048f8:	ff1ff06f          	j	800048e8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800048fc:	00190913          	addi	s2,s2,1
    80004900:	00900793          	li	a5,9
    80004904:	0527e063          	bltu	a5,s2,80004944 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004908:	00004517          	auipc	a0,0x4
    8000490c:	71850513          	addi	a0,a0,1816 # 80009020 <CONSOLE_STATUS+0x10>
    80004910:	00001097          	auipc	ra,0x1
    80004914:	9f0080e7          	jalr	-1552(ra) # 80005300 <_Z11printStringPKc>
    80004918:	00000613          	li	a2,0
    8000491c:	00a00593          	li	a1,10
    80004920:	0009051b          	sext.w	a0,s2
    80004924:	00001097          	auipc	ra,0x1
    80004928:	b8c080e7          	jalr	-1140(ra) # 800054b0 <_Z8printIntiii>
    8000492c:	00005517          	auipc	a0,0x5
    80004930:	be450513          	addi	a0,a0,-1052 # 80009510 <CONSOLE_STATUS+0x500>
    80004934:	00001097          	auipc	ra,0x1
    80004938:	9cc080e7          	jalr	-1588(ra) # 80005300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000493c:	00000493          	li	s1,0
    80004940:	f99ff06f          	j	800048d8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004944:	00005517          	auipc	a0,0x5
    80004948:	94c50513          	addi	a0,a0,-1716 # 80009290 <CONSOLE_STATUS+0x280>
    8000494c:	00001097          	auipc	ra,0x1
    80004950:	9b4080e7          	jalr	-1612(ra) # 80005300 <_Z11printStringPKc>
    finishedA = true;
    80004954:	00100793          	li	a5,1
    80004958:	00007717          	auipc	a4,0x7
    8000495c:	ccf709a3          	sb	a5,-813(a4) # 8000b62b <_ZL9finishedA>
}
    80004960:	01813083          	ld	ra,24(sp)
    80004964:	01013403          	ld	s0,16(sp)
    80004968:	00813483          	ld	s1,8(sp)
    8000496c:	00013903          	ld	s2,0(sp)
    80004970:	02010113          	addi	sp,sp,32
    80004974:	00008067          	ret

0000000080004978 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004978:	fd010113          	addi	sp,sp,-48
    8000497c:	02113423          	sd	ra,40(sp)
    80004980:	02813023          	sd	s0,32(sp)
    80004984:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004988:	00000613          	li	a2,0
    8000498c:	00000597          	auipc	a1,0x0
    80004990:	f2058593          	addi	a1,a1,-224 # 800048ac <_ZL11workerBodyAPv>
    80004994:	fd040513          	addi	a0,s0,-48
    80004998:	ffffd097          	auipc	ra,0xffffd
    8000499c:	954080e7          	jalr	-1708(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800049a0:	00005517          	auipc	a0,0x5
    800049a4:	97850513          	addi	a0,a0,-1672 # 80009318 <CONSOLE_STATUS+0x308>
    800049a8:	00001097          	auipc	ra,0x1
    800049ac:	958080e7          	jalr	-1704(ra) # 80005300 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800049b0:	00000613          	li	a2,0
    800049b4:	00000597          	auipc	a1,0x0
    800049b8:	e2458593          	addi	a1,a1,-476 # 800047d8 <_ZL11workerBodyBPv>
    800049bc:	fd840513          	addi	a0,s0,-40
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	92c080e7          	jalr	-1748(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800049c8:	00005517          	auipc	a0,0x5
    800049cc:	96850513          	addi	a0,a0,-1688 # 80009330 <CONSOLE_STATUS+0x320>
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	930080e7          	jalr	-1744(ra) # 80005300 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800049d8:	00000613          	li	a2,0
    800049dc:	00000597          	auipc	a1,0x0
    800049e0:	c7c58593          	addi	a1,a1,-900 # 80004658 <_ZL11workerBodyCPv>
    800049e4:	fe040513          	addi	a0,s0,-32
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	904080e7          	jalr	-1788(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800049f0:	00005517          	auipc	a0,0x5
    800049f4:	95850513          	addi	a0,a0,-1704 # 80009348 <CONSOLE_STATUS+0x338>
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	908080e7          	jalr	-1784(ra) # 80005300 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004a00:	00000613          	li	a2,0
    80004a04:	00000597          	auipc	a1,0x0
    80004a08:	b0c58593          	addi	a1,a1,-1268 # 80004510 <_ZL11workerBodyDPv>
    80004a0c:	fe840513          	addi	a0,s0,-24
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	8dc080e7          	jalr	-1828(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004a18:	00005517          	auipc	a0,0x5
    80004a1c:	94850513          	addi	a0,a0,-1720 # 80009360 <CONSOLE_STATUS+0x350>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	8e0080e7          	jalr	-1824(ra) # 80005300 <_Z11printStringPKc>
    80004a28:	00c0006f          	j	80004a34 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	9ac080e7          	jalr	-1620(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a34:	00007797          	auipc	a5,0x7
    80004a38:	bf77c783          	lbu	a5,-1033(a5) # 8000b62b <_ZL9finishedA>
    80004a3c:	fe0788e3          	beqz	a5,80004a2c <_Z18Threads_C_API_testv+0xb4>
    80004a40:	00007797          	auipc	a5,0x7
    80004a44:	bea7c783          	lbu	a5,-1046(a5) # 8000b62a <_ZL9finishedB>
    80004a48:	fe0782e3          	beqz	a5,80004a2c <_Z18Threads_C_API_testv+0xb4>
    80004a4c:	00007797          	auipc	a5,0x7
    80004a50:	bdd7c783          	lbu	a5,-1059(a5) # 8000b629 <_ZL9finishedC>
    80004a54:	fc078ce3          	beqz	a5,80004a2c <_Z18Threads_C_API_testv+0xb4>
    80004a58:	00007797          	auipc	a5,0x7
    80004a5c:	bd07c783          	lbu	a5,-1072(a5) # 8000b628 <_ZL9finishedD>
    80004a60:	fc0786e3          	beqz	a5,80004a2c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004a64:	02813083          	ld	ra,40(sp)
    80004a68:	02013403          	ld	s0,32(sp)
    80004a6c:	03010113          	addi	sp,sp,48
    80004a70:	00008067          	ret

0000000080004a74 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004a74:	fd010113          	addi	sp,sp,-48
    80004a78:	02113423          	sd	ra,40(sp)
    80004a7c:	02813023          	sd	s0,32(sp)
    80004a80:	00913c23          	sd	s1,24(sp)
    80004a84:	01213823          	sd	s2,16(sp)
    80004a88:	01313423          	sd	s3,8(sp)
    80004a8c:	03010413          	addi	s0,sp,48
    80004a90:	00050993          	mv	s3,a0
    80004a94:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004a98:	00000913          	li	s2,0
    80004a9c:	00c0006f          	j	80004aa8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'e') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004aa0:	ffffe097          	auipc	ra,0xffffe
    80004aa4:	830080e7          	jalr	-2000(ra) # 800022d0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'e') {
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	a38080e7          	jalr	-1480(ra) # 800014e0 <_Z4getcv>
    80004ab0:	0005059b          	sext.w	a1,a0
    80004ab4:	06500793          	li	a5,101
    80004ab8:	02f58a63          	beq	a1,a5,80004aec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004abc:	0084b503          	ld	a0,8(s1)
    80004ac0:	00001097          	auipc	ra,0x1
    80004ac4:	c64080e7          	jalr	-924(ra) # 80005724 <_ZN9BufferCPP3putEi>
        i++;
    80004ac8:	0019071b          	addiw	a4,s2,1
    80004acc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ad0:	0004a683          	lw	a3,0(s1)
    80004ad4:	0026979b          	slliw	a5,a3,0x2
    80004ad8:	00d787bb          	addw	a5,a5,a3
    80004adc:	0017979b          	slliw	a5,a5,0x1
    80004ae0:	02f767bb          	remw	a5,a4,a5
    80004ae4:	fc0792e3          	bnez	a5,80004aa8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004ae8:	fb9ff06f          	j	80004aa0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004aec:	00100793          	li	a5,1
    80004af0:	00007717          	auipc	a4,0x7
    80004af4:	b4f72023          	sw	a5,-1216(a4) # 8000b630 <_ZL9threadEnd>
    td->buffer->put('!');
    80004af8:	0209b783          	ld	a5,32(s3)
    80004afc:	02100593          	li	a1,33
    80004b00:	0087b503          	ld	a0,8(a5)
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	c20080e7          	jalr	-992(ra) # 80005724 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004b0c:	0104b503          	ld	a0,16(s1)
    80004b10:	ffffe097          	auipc	ra,0xffffe
    80004b14:	910080e7          	jalr	-1776(ra) # 80002420 <_ZN9Semaphore6signalEv>
}
    80004b18:	02813083          	ld	ra,40(sp)
    80004b1c:	02013403          	ld	s0,32(sp)
    80004b20:	01813483          	ld	s1,24(sp)
    80004b24:	01013903          	ld	s2,16(sp)
    80004b28:	00813983          	ld	s3,8(sp)
    80004b2c:	03010113          	addi	sp,sp,48
    80004b30:	00008067          	ret

0000000080004b34 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004b34:	fe010113          	addi	sp,sp,-32
    80004b38:	00113c23          	sd	ra,24(sp)
    80004b3c:	00813823          	sd	s0,16(sp)
    80004b40:	00913423          	sd	s1,8(sp)
    80004b44:	01213023          	sd	s2,0(sp)
    80004b48:	02010413          	addi	s0,sp,32
    80004b4c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b50:	00000913          	li	s2,0
    80004b54:	00c0006f          	j	80004b60 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	778080e7          	jalr	1912(ra) # 800022d0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004b60:	00007797          	auipc	a5,0x7
    80004b64:	ad07a783          	lw	a5,-1328(a5) # 8000b630 <_ZL9threadEnd>
    80004b68:	02079e63          	bnez	a5,80004ba4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004b6c:	0004a583          	lw	a1,0(s1)
    80004b70:	0305859b          	addiw	a1,a1,48
    80004b74:	0084b503          	ld	a0,8(s1)
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	bac080e7          	jalr	-1108(ra) # 80005724 <_ZN9BufferCPP3putEi>
        i++;
    80004b80:	0019071b          	addiw	a4,s2,1
    80004b84:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004b88:	0004a683          	lw	a3,0(s1)
    80004b8c:	0026979b          	slliw	a5,a3,0x2
    80004b90:	00d787bb          	addw	a5,a5,a3
    80004b94:	0017979b          	slliw	a5,a5,0x1
    80004b98:	02f767bb          	remw	a5,a4,a5
    80004b9c:	fc0792e3          	bnez	a5,80004b60 <_ZN12ProducerSync8producerEPv+0x2c>
    80004ba0:	fb9ff06f          	j	80004b58 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004ba4:	0104b503          	ld	a0,16(s1)
    80004ba8:	ffffe097          	auipc	ra,0xffffe
    80004bac:	878080e7          	jalr	-1928(ra) # 80002420 <_ZN9Semaphore6signalEv>
}
    80004bb0:	01813083          	ld	ra,24(sp)
    80004bb4:	01013403          	ld	s0,16(sp)
    80004bb8:	00813483          	ld	s1,8(sp)
    80004bbc:	00013903          	ld	s2,0(sp)
    80004bc0:	02010113          	addi	sp,sp,32
    80004bc4:	00008067          	ret

0000000080004bc8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004bc8:	fd010113          	addi	sp,sp,-48
    80004bcc:	02113423          	sd	ra,40(sp)
    80004bd0:	02813023          	sd	s0,32(sp)
    80004bd4:	00913c23          	sd	s1,24(sp)
    80004bd8:	01213823          	sd	s2,16(sp)
    80004bdc:	01313423          	sd	s3,8(sp)
    80004be0:	01413023          	sd	s4,0(sp)
    80004be4:	03010413          	addi	s0,sp,48
    80004be8:	00050993          	mv	s3,a0
    80004bec:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004bf0:	00000a13          	li	s4,0
    80004bf4:	01c0006f          	j	80004c10 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	6d8080e7          	jalr	1752(ra) # 800022d0 <_ZN6Thread8dispatchEv>
    80004c00:	0500006f          	j	80004c50 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004c04:	00a00513          	li	a0,10
    80004c08:	ffffd097          	auipc	ra,0xffffd
    80004c0c:	900080e7          	jalr	-1792(ra) # 80001508 <_Z4putcc>
    while (!threadEnd) {
    80004c10:	00007797          	auipc	a5,0x7
    80004c14:	a207a783          	lw	a5,-1504(a5) # 8000b630 <_ZL9threadEnd>
    80004c18:	06079263          	bnez	a5,80004c7c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004c1c:	00893503          	ld	a0,8(s2)
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	b94080e7          	jalr	-1132(ra) # 800057b4 <_ZN9BufferCPP3getEv>
        i++;
    80004c28:	001a049b          	addiw	s1,s4,1
    80004c2c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004c30:	0ff57513          	andi	a0,a0,255
    80004c34:	ffffd097          	auipc	ra,0xffffd
    80004c38:	8d4080e7          	jalr	-1836(ra) # 80001508 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004c3c:	00092703          	lw	a4,0(s2)
    80004c40:	0027179b          	slliw	a5,a4,0x2
    80004c44:	00e787bb          	addw	a5,a5,a4
    80004c48:	02f4e7bb          	remw	a5,s1,a5
    80004c4c:	fa0786e3          	beqz	a5,80004bf8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004c50:	05000793          	li	a5,80
    80004c54:	02f4e4bb          	remw	s1,s1,a5
    80004c58:	fa049ce3          	bnez	s1,80004c10 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004c5c:	fa9ff06f          	j	80004c04 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004c60:	0209b783          	ld	a5,32(s3)
    80004c64:	0087b503          	ld	a0,8(a5)
    80004c68:	00001097          	auipc	ra,0x1
    80004c6c:	b4c080e7          	jalr	-1204(ra) # 800057b4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004c70:	0ff57513          	andi	a0,a0,255
    80004c74:	ffffd097          	auipc	ra,0xffffd
    80004c78:	7d8080e7          	jalr	2008(ra) # 8000244c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004c7c:	0209b783          	ld	a5,32(s3)
    80004c80:	0087b503          	ld	a0,8(a5)
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	bbc080e7          	jalr	-1092(ra) # 80005840 <_ZN9BufferCPP6getCntEv>
    80004c8c:	fca04ae3          	bgtz	a0,80004c60 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004c90:	01093503          	ld	a0,16(s2)
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	78c080e7          	jalr	1932(ra) # 80002420 <_ZN9Semaphore6signalEv>
}
    80004c9c:	02813083          	ld	ra,40(sp)
    80004ca0:	02013403          	ld	s0,32(sp)
    80004ca4:	01813483          	ld	s1,24(sp)
    80004ca8:	01013903          	ld	s2,16(sp)
    80004cac:	00813983          	ld	s3,8(sp)
    80004cb0:	00013a03          	ld	s4,0(sp)
    80004cb4:	03010113          	addi	sp,sp,48
    80004cb8:	00008067          	ret

0000000080004cbc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004cbc:	f8010113          	addi	sp,sp,-128
    80004cc0:	06113c23          	sd	ra,120(sp)
    80004cc4:	06813823          	sd	s0,112(sp)
    80004cc8:	06913423          	sd	s1,104(sp)
    80004ccc:	07213023          	sd	s2,96(sp)
    80004cd0:	05313c23          	sd	s3,88(sp)
    80004cd4:	05413823          	sd	s4,80(sp)
    80004cd8:	05513423          	sd	s5,72(sp)
    80004cdc:	05613023          	sd	s6,64(sp)
    80004ce0:	03713c23          	sd	s7,56(sp)
    80004ce4:	03813823          	sd	s8,48(sp)
    80004ce8:	03913423          	sd	s9,40(sp)
    80004cec:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004cf0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004cf4:	00004517          	auipc	a0,0x4
    80004cf8:	4b450513          	addi	a0,a0,1204 # 800091a8 <CONSOLE_STATUS+0x198>
    80004cfc:	00000097          	auipc	ra,0x0
    80004d00:	604080e7          	jalr	1540(ra) # 80005300 <_Z11printStringPKc>
    getString(input, 30);
    80004d04:	01e00593          	li	a1,30
    80004d08:	f8040493          	addi	s1,s0,-128
    80004d0c:	00048513          	mv	a0,s1
    80004d10:	00000097          	auipc	ra,0x0
    80004d14:	678080e7          	jalr	1656(ra) # 80005388 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004d18:	00048513          	mv	a0,s1
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	744080e7          	jalr	1860(ra) # 80005460 <_Z11stringToIntPKc>
    80004d24:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004d28:	00004517          	auipc	a0,0x4
    80004d2c:	4a050513          	addi	a0,a0,1184 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80004d30:	00000097          	auipc	ra,0x0
    80004d34:	5d0080e7          	jalr	1488(ra) # 80005300 <_Z11printStringPKc>
    getString(input, 30);
    80004d38:	01e00593          	li	a1,30
    80004d3c:	00048513          	mv	a0,s1
    80004d40:	00000097          	auipc	ra,0x0
    80004d44:	648080e7          	jalr	1608(ra) # 80005388 <_Z9getStringPci>
    n = stringToInt(input);
    80004d48:	00048513          	mv	a0,s1
    80004d4c:	00000097          	auipc	ra,0x0
    80004d50:	714080e7          	jalr	1812(ra) # 80005460 <_Z11stringToIntPKc>
    80004d54:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004d58:	00004517          	auipc	a0,0x4
    80004d5c:	49050513          	addi	a0,a0,1168 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004d60:	00000097          	auipc	ra,0x0
    80004d64:	5a0080e7          	jalr	1440(ra) # 80005300 <_Z11printStringPKc>
    80004d68:	00000613          	li	a2,0
    80004d6c:	00a00593          	li	a1,10
    80004d70:	00090513          	mv	a0,s2
    80004d74:	00000097          	auipc	ra,0x0
    80004d78:	73c080e7          	jalr	1852(ra) # 800054b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004d7c:	00004517          	auipc	a0,0x4
    80004d80:	48450513          	addi	a0,a0,1156 # 80009200 <CONSOLE_STATUS+0x1f0>
    80004d84:	00000097          	auipc	ra,0x0
    80004d88:	57c080e7          	jalr	1404(ra) # 80005300 <_Z11printStringPKc>
    80004d8c:	00000613          	li	a2,0
    80004d90:	00a00593          	li	a1,10
    80004d94:	00048513          	mv	a0,s1
    80004d98:	00000097          	auipc	ra,0x0
    80004d9c:	718080e7          	jalr	1816(ra) # 800054b0 <_Z8printIntiii>
    printString(".\n");
    80004da0:	00004517          	auipc	a0,0x4
    80004da4:	47850513          	addi	a0,a0,1144 # 80009218 <CONSOLE_STATUS+0x208>
    80004da8:	00000097          	auipc	ra,0x0
    80004dac:	558080e7          	jalr	1368(ra) # 80005300 <_Z11printStringPKc>
    if(threadNum > n) {
    80004db0:	0324c463          	blt	s1,s2,80004dd8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004db4:	03205c63          	blez	s2,80004dec <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004db8:	03800513          	li	a0,56
    80004dbc:	ffffd097          	auipc	ra,0xffffd
    80004dc0:	1b0080e7          	jalr	432(ra) # 80001f6c <_Znwm>
    80004dc4:	00050a93          	mv	s5,a0
    80004dc8:	00048593          	mv	a1,s1
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	804080e7          	jalr	-2044(ra) # 800055d0 <_ZN9BufferCPPC1Ei>
    80004dd4:	0300006f          	j	80004e04 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004dd8:	00004517          	auipc	a0,0x4
    80004ddc:	44850513          	addi	a0,a0,1096 # 80009220 <CONSOLE_STATUS+0x210>
    80004de0:	00000097          	auipc	ra,0x0
    80004de4:	520080e7          	jalr	1312(ra) # 80005300 <_Z11printStringPKc>
        return;
    80004de8:	0140006f          	j	80004dfc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004dec:	00004517          	auipc	a0,0x4
    80004df0:	47450513          	addi	a0,a0,1140 # 80009260 <CONSOLE_STATUS+0x250>
    80004df4:	00000097          	auipc	ra,0x0
    80004df8:	50c080e7          	jalr	1292(ra) # 80005300 <_Z11printStringPKc>
        return;
    80004dfc:	000b8113          	mv	sp,s7
    80004e00:	2380006f          	j	80005038 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004e04:	01000513          	li	a0,16
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	164080e7          	jalr	356(ra) # 80001f6c <_Znwm>
    80004e10:	00050493          	mv	s1,a0
    80004e14:	00000593          	li	a1,0
    80004e18:	ffffd097          	auipc	ra,0xffffd
    80004e1c:	5a4080e7          	jalr	1444(ra) # 800023bc <_ZN9SemaphoreC1Ej>
    80004e20:	00007797          	auipc	a5,0x7
    80004e24:	8097bc23          	sd	s1,-2024(a5) # 8000b638 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004e28:	00391793          	slli	a5,s2,0x3
    80004e2c:	00f78793          	addi	a5,a5,15
    80004e30:	ff07f793          	andi	a5,a5,-16
    80004e34:	40f10133          	sub	sp,sp,a5
    80004e38:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004e3c:	0019071b          	addiw	a4,s2,1
    80004e40:	00171793          	slli	a5,a4,0x1
    80004e44:	00e787b3          	add	a5,a5,a4
    80004e48:	00379793          	slli	a5,a5,0x3
    80004e4c:	00f78793          	addi	a5,a5,15
    80004e50:	ff07f793          	andi	a5,a5,-16
    80004e54:	40f10133          	sub	sp,sp,a5
    80004e58:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004e5c:	00191c13          	slli	s8,s2,0x1
    80004e60:	012c07b3          	add	a5,s8,s2
    80004e64:	00379793          	slli	a5,a5,0x3
    80004e68:	00fa07b3          	add	a5,s4,a5
    80004e6c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004e70:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004e74:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004e78:	02800513          	li	a0,40
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	0f0080e7          	jalr	240(ra) # 80001f6c <_Znwm>
    80004e84:	00050b13          	mv	s6,a0
    80004e88:	012c0c33          	add	s8,s8,s2
    80004e8c:	003c1c13          	slli	s8,s8,0x3
    80004e90:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004e94:	ffffd097          	auipc	ra,0xffffd
    80004e98:	494080e7          	jalr	1172(ra) # 80002328 <_ZN6ThreadC1Ev>
    80004e9c:	00006797          	auipc	a5,0x6
    80004ea0:	66c78793          	addi	a5,a5,1644 # 8000b508 <_ZTV12ConsumerSync+0x10>
    80004ea4:	00fb3023          	sd	a5,0(s6)
    80004ea8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004eac:	000b0513          	mv	a0,s6
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	4b0080e7          	jalr	1200(ra) # 80002360 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004eb8:	00000493          	li	s1,0
    80004ebc:	0380006f          	j	80004ef4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ec0:	00006797          	auipc	a5,0x6
    80004ec4:	62078793          	addi	a5,a5,1568 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    80004ec8:	00fcb023          	sd	a5,0(s9)
    80004ecc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004ed0:	00349793          	slli	a5,s1,0x3
    80004ed4:	00f987b3          	add	a5,s3,a5
    80004ed8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004edc:	00349793          	slli	a5,s1,0x3
    80004ee0:	00f987b3          	add	a5,s3,a5
    80004ee4:	0007b503          	ld	a0,0(a5)
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	478080e7          	jalr	1144(ra) # 80002360 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004ef0:	0014849b          	addiw	s1,s1,1
    80004ef4:	0b24d063          	bge	s1,s2,80004f94 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004ef8:	00149793          	slli	a5,s1,0x1
    80004efc:	009787b3          	add	a5,a5,s1
    80004f00:	00379793          	slli	a5,a5,0x3
    80004f04:	00fa07b3          	add	a5,s4,a5
    80004f08:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004f0c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004f10:	00006717          	auipc	a4,0x6
    80004f14:	72873703          	ld	a4,1832(a4) # 8000b638 <_ZL10waitForAll>
    80004f18:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004f1c:	02905863          	blez	s1,80004f4c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004f20:	02800513          	li	a0,40
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	048080e7          	jalr	72(ra) # 80001f6c <_Znwm>
    80004f2c:	00050c93          	mv	s9,a0
    80004f30:	00149c13          	slli	s8,s1,0x1
    80004f34:	009c0c33          	add	s8,s8,s1
    80004f38:	003c1c13          	slli	s8,s8,0x3
    80004f3c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004f40:	ffffd097          	auipc	ra,0xffffd
    80004f44:	3e8080e7          	jalr	1000(ra) # 80002328 <_ZN6ThreadC1Ev>
    80004f48:	f79ff06f          	j	80004ec0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004f4c:	02800513          	li	a0,40
    80004f50:	ffffd097          	auipc	ra,0xffffd
    80004f54:	01c080e7          	jalr	28(ra) # 80001f6c <_Znwm>
    80004f58:	00050c93          	mv	s9,a0
    80004f5c:	00149c13          	slli	s8,s1,0x1
    80004f60:	009c0c33          	add	s8,s8,s1
    80004f64:	003c1c13          	slli	s8,s8,0x3
    80004f68:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	3bc080e7          	jalr	956(ra) # 80002328 <_ZN6ThreadC1Ev>
    80004f74:	00006797          	auipc	a5,0x6
    80004f78:	54478793          	addi	a5,a5,1348 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    80004f7c:	00fcb023          	sd	a5,0(s9)
    80004f80:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004f84:	00349793          	slli	a5,s1,0x3
    80004f88:	00f987b3          	add	a5,s3,a5
    80004f8c:	0197b023          	sd	s9,0(a5)
    80004f90:	f4dff06f          	j	80004edc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004f94:	ffffd097          	auipc	ra,0xffffd
    80004f98:	33c080e7          	jalr	828(ra) # 800022d0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f9c:	00000493          	li	s1,0
    80004fa0:	00994e63          	blt	s2,s1,80004fbc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004fa4:	00006517          	auipc	a0,0x6
    80004fa8:	69453503          	ld	a0,1684(a0) # 8000b638 <_ZL10waitForAll>
    80004fac:	ffffd097          	auipc	ra,0xffffd
    80004fb0:	448080e7          	jalr	1096(ra) # 800023f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004fb4:	0014849b          	addiw	s1,s1,1
    80004fb8:	fe9ff06f          	j	80004fa0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004fbc:	00000493          	li	s1,0
    80004fc0:	0080006f          	j	80004fc8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004fc4:	0014849b          	addiw	s1,s1,1
    80004fc8:	0324d263          	bge	s1,s2,80004fec <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004fcc:	00349793          	slli	a5,s1,0x3
    80004fd0:	00f987b3          	add	a5,s3,a5
    80004fd4:	0007b503          	ld	a0,0(a5)
    80004fd8:	fe0506e3          	beqz	a0,80004fc4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004fdc:	00053783          	ld	a5,0(a0)
    80004fe0:	0087b783          	ld	a5,8(a5)
    80004fe4:	000780e7          	jalr	a5
    80004fe8:	fddff06f          	j	80004fc4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004fec:	000b0a63          	beqz	s6,80005000 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004ff0:	000b3783          	ld	a5,0(s6)
    80004ff4:	0087b783          	ld	a5,8(a5)
    80004ff8:	000b0513          	mv	a0,s6
    80004ffc:	000780e7          	jalr	a5
    delete waitForAll;
    80005000:	00006517          	auipc	a0,0x6
    80005004:	63853503          	ld	a0,1592(a0) # 8000b638 <_ZL10waitForAll>
    80005008:	00050863          	beqz	a0,80005018 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000500c:	00053783          	ld	a5,0(a0)
    80005010:	0087b783          	ld	a5,8(a5)
    80005014:	000780e7          	jalr	a5
    delete buffer;
    80005018:	000a8e63          	beqz	s5,80005034 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000501c:	000a8513          	mv	a0,s5
    80005020:	00001097          	auipc	ra,0x1
    80005024:	8a8080e7          	jalr	-1880(ra) # 800058c8 <_ZN9BufferCPPD1Ev>
    80005028:	000a8513          	mv	a0,s5
    8000502c:	ffffd097          	auipc	ra,0xffffd
    80005030:	040080e7          	jalr	64(ra) # 8000206c <_ZdlPv>
    80005034:	000b8113          	mv	sp,s7

}
    80005038:	f8040113          	addi	sp,s0,-128
    8000503c:	07813083          	ld	ra,120(sp)
    80005040:	07013403          	ld	s0,112(sp)
    80005044:	06813483          	ld	s1,104(sp)
    80005048:	06013903          	ld	s2,96(sp)
    8000504c:	05813983          	ld	s3,88(sp)
    80005050:	05013a03          	ld	s4,80(sp)
    80005054:	04813a83          	ld	s5,72(sp)
    80005058:	04013b03          	ld	s6,64(sp)
    8000505c:	03813b83          	ld	s7,56(sp)
    80005060:	03013c03          	ld	s8,48(sp)
    80005064:	02813c83          	ld	s9,40(sp)
    80005068:	08010113          	addi	sp,sp,128
    8000506c:	00008067          	ret
    80005070:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005074:	000a8513          	mv	a0,s5
    80005078:	ffffd097          	auipc	ra,0xffffd
    8000507c:	ff4080e7          	jalr	-12(ra) # 8000206c <_ZdlPv>
    80005080:	00048513          	mv	a0,s1
    80005084:	00007097          	auipc	ra,0x7
    80005088:	694080e7          	jalr	1684(ra) # 8000c718 <_Unwind_Resume>
    8000508c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005090:	00048513          	mv	a0,s1
    80005094:	ffffd097          	auipc	ra,0xffffd
    80005098:	fd8080e7          	jalr	-40(ra) # 8000206c <_ZdlPv>
    8000509c:	00090513          	mv	a0,s2
    800050a0:	00007097          	auipc	ra,0x7
    800050a4:	678080e7          	jalr	1656(ra) # 8000c718 <_Unwind_Resume>
    800050a8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800050ac:	000b0513          	mv	a0,s6
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	fbc080e7          	jalr	-68(ra) # 8000206c <_ZdlPv>
    800050b8:	00048513          	mv	a0,s1
    800050bc:	00007097          	auipc	ra,0x7
    800050c0:	65c080e7          	jalr	1628(ra) # 8000c718 <_Unwind_Resume>
    800050c4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800050c8:	000c8513          	mv	a0,s9
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	fa0080e7          	jalr	-96(ra) # 8000206c <_ZdlPv>
    800050d4:	00048513          	mv	a0,s1
    800050d8:	00007097          	auipc	ra,0x7
    800050dc:	640080e7          	jalr	1600(ra) # 8000c718 <_Unwind_Resume>
    800050e0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800050e4:	000c8513          	mv	a0,s9
    800050e8:	ffffd097          	auipc	ra,0xffffd
    800050ec:	f84080e7          	jalr	-124(ra) # 8000206c <_ZdlPv>
    800050f0:	00048513          	mv	a0,s1
    800050f4:	00007097          	auipc	ra,0x7
    800050f8:	624080e7          	jalr	1572(ra) # 8000c718 <_Unwind_Resume>

00000000800050fc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800050fc:	ff010113          	addi	sp,sp,-16
    80005100:	00113423          	sd	ra,8(sp)
    80005104:	00813023          	sd	s0,0(sp)
    80005108:	01010413          	addi	s0,sp,16
    8000510c:	00006797          	auipc	a5,0x6
    80005110:	3fc78793          	addi	a5,a5,1020 # 8000b508 <_ZTV12ConsumerSync+0x10>
    80005114:	00f53023          	sd	a5,0(a0)
    80005118:	ffffd097          	auipc	ra,0xffffd
    8000511c:	054080e7          	jalr	84(ra) # 8000216c <_ZN6ThreadD1Ev>
    80005120:	00813083          	ld	ra,8(sp)
    80005124:	00013403          	ld	s0,0(sp)
    80005128:	01010113          	addi	sp,sp,16
    8000512c:	00008067          	ret

0000000080005130 <_ZN12ConsumerSyncD0Ev>:
    80005130:	fe010113          	addi	sp,sp,-32
    80005134:	00113c23          	sd	ra,24(sp)
    80005138:	00813823          	sd	s0,16(sp)
    8000513c:	00913423          	sd	s1,8(sp)
    80005140:	02010413          	addi	s0,sp,32
    80005144:	00050493          	mv	s1,a0
    80005148:	00006797          	auipc	a5,0x6
    8000514c:	3c078793          	addi	a5,a5,960 # 8000b508 <_ZTV12ConsumerSync+0x10>
    80005150:	00f53023          	sd	a5,0(a0)
    80005154:	ffffd097          	auipc	ra,0xffffd
    80005158:	018080e7          	jalr	24(ra) # 8000216c <_ZN6ThreadD1Ev>
    8000515c:	00048513          	mv	a0,s1
    80005160:	ffffd097          	auipc	ra,0xffffd
    80005164:	f0c080e7          	jalr	-244(ra) # 8000206c <_ZdlPv>
    80005168:	01813083          	ld	ra,24(sp)
    8000516c:	01013403          	ld	s0,16(sp)
    80005170:	00813483          	ld	s1,8(sp)
    80005174:	02010113          	addi	sp,sp,32
    80005178:	00008067          	ret

000000008000517c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000517c:	ff010113          	addi	sp,sp,-16
    80005180:	00113423          	sd	ra,8(sp)
    80005184:	00813023          	sd	s0,0(sp)
    80005188:	01010413          	addi	s0,sp,16
    8000518c:	00006797          	auipc	a5,0x6
    80005190:	35478793          	addi	a5,a5,852 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    80005194:	00f53023          	sd	a5,0(a0)
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	fd4080e7          	jalr	-44(ra) # 8000216c <_ZN6ThreadD1Ev>
    800051a0:	00813083          	ld	ra,8(sp)
    800051a4:	00013403          	ld	s0,0(sp)
    800051a8:	01010113          	addi	sp,sp,16
    800051ac:	00008067          	ret

00000000800051b0 <_ZN12ProducerSyncD0Ev>:
    800051b0:	fe010113          	addi	sp,sp,-32
    800051b4:	00113c23          	sd	ra,24(sp)
    800051b8:	00813823          	sd	s0,16(sp)
    800051bc:	00913423          	sd	s1,8(sp)
    800051c0:	02010413          	addi	s0,sp,32
    800051c4:	00050493          	mv	s1,a0
    800051c8:	00006797          	auipc	a5,0x6
    800051cc:	31878793          	addi	a5,a5,792 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    800051d0:	00f53023          	sd	a5,0(a0)
    800051d4:	ffffd097          	auipc	ra,0xffffd
    800051d8:	f98080e7          	jalr	-104(ra) # 8000216c <_ZN6ThreadD1Ev>
    800051dc:	00048513          	mv	a0,s1
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	e8c080e7          	jalr	-372(ra) # 8000206c <_ZdlPv>
    800051e8:	01813083          	ld	ra,24(sp)
    800051ec:	01013403          	ld	s0,16(sp)
    800051f0:	00813483          	ld	s1,8(sp)
    800051f4:	02010113          	addi	sp,sp,32
    800051f8:	00008067          	ret

00000000800051fc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800051fc:	ff010113          	addi	sp,sp,-16
    80005200:	00113423          	sd	ra,8(sp)
    80005204:	00813023          	sd	s0,0(sp)
    80005208:	01010413          	addi	s0,sp,16
    8000520c:	00006797          	auipc	a5,0x6
    80005210:	2ac78793          	addi	a5,a5,684 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    80005214:	00f53023          	sd	a5,0(a0)
    80005218:	ffffd097          	auipc	ra,0xffffd
    8000521c:	f54080e7          	jalr	-172(ra) # 8000216c <_ZN6ThreadD1Ev>
    80005220:	00813083          	ld	ra,8(sp)
    80005224:	00013403          	ld	s0,0(sp)
    80005228:	01010113          	addi	sp,sp,16
    8000522c:	00008067          	ret

0000000080005230 <_ZN16ProducerKeyboardD0Ev>:
    80005230:	fe010113          	addi	sp,sp,-32
    80005234:	00113c23          	sd	ra,24(sp)
    80005238:	00813823          	sd	s0,16(sp)
    8000523c:	00913423          	sd	s1,8(sp)
    80005240:	02010413          	addi	s0,sp,32
    80005244:	00050493          	mv	s1,a0
    80005248:	00006797          	auipc	a5,0x6
    8000524c:	27078793          	addi	a5,a5,624 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    80005250:	00f53023          	sd	a5,0(a0)
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	f18080e7          	jalr	-232(ra) # 8000216c <_ZN6ThreadD1Ev>
    8000525c:	00048513          	mv	a0,s1
    80005260:	ffffd097          	auipc	ra,0xffffd
    80005264:	e0c080e7          	jalr	-500(ra) # 8000206c <_ZdlPv>
    80005268:	01813083          	ld	ra,24(sp)
    8000526c:	01013403          	ld	s0,16(sp)
    80005270:	00813483          	ld	s1,8(sp)
    80005274:	02010113          	addi	sp,sp,32
    80005278:	00008067          	ret

000000008000527c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000527c:	ff010113          	addi	sp,sp,-16
    80005280:	00113423          	sd	ra,8(sp)
    80005284:	00813023          	sd	s0,0(sp)
    80005288:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000528c:	02053583          	ld	a1,32(a0)
    80005290:	fffff097          	auipc	ra,0xfffff
    80005294:	7e4080e7          	jalr	2020(ra) # 80004a74 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005298:	00813083          	ld	ra,8(sp)
    8000529c:	00013403          	ld	s0,0(sp)
    800052a0:	01010113          	addi	sp,sp,16
    800052a4:	00008067          	ret

00000000800052a8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800052a8:	ff010113          	addi	sp,sp,-16
    800052ac:	00113423          	sd	ra,8(sp)
    800052b0:	00813023          	sd	s0,0(sp)
    800052b4:	01010413          	addi	s0,sp,16
        producer(td);
    800052b8:	02053583          	ld	a1,32(a0)
    800052bc:	00000097          	auipc	ra,0x0
    800052c0:	878080e7          	jalr	-1928(ra) # 80004b34 <_ZN12ProducerSync8producerEPv>
    }
    800052c4:	00813083          	ld	ra,8(sp)
    800052c8:	00013403          	ld	s0,0(sp)
    800052cc:	01010113          	addi	sp,sp,16
    800052d0:	00008067          	ret

00000000800052d4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800052d4:	ff010113          	addi	sp,sp,-16
    800052d8:	00113423          	sd	ra,8(sp)
    800052dc:	00813023          	sd	s0,0(sp)
    800052e0:	01010413          	addi	s0,sp,16
        consumer(td);
    800052e4:	02053583          	ld	a1,32(a0)
    800052e8:	00000097          	auipc	ra,0x0
    800052ec:	8e0080e7          	jalr	-1824(ra) # 80004bc8 <_ZN12ConsumerSync8consumerEPv>
    }
    800052f0:	00813083          	ld	ra,8(sp)
    800052f4:	00013403          	ld	s0,0(sp)
    800052f8:	01010113          	addi	sp,sp,16
    800052fc:	00008067          	ret

0000000080005300 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005300:	fe010113          	addi	sp,sp,-32
    80005304:	00113c23          	sd	ra,24(sp)
    80005308:	00813823          	sd	s0,16(sp)
    8000530c:	00913423          	sd	s1,8(sp)
    80005310:	02010413          	addi	s0,sp,32
    80005314:	00050493          	mv	s1,a0
    LOCK();
    80005318:	00100613          	li	a2,1
    8000531c:	00000593          	li	a1,0
    80005320:	00006517          	auipc	a0,0x6
    80005324:	32050513          	addi	a0,a0,800 # 8000b640 <lockPrint>
    80005328:	ffffc097          	auipc	ra,0xffffc
    8000532c:	ef4080e7          	jalr	-268(ra) # 8000121c <copy_and_swap>
    80005330:	00050863          	beqz	a0,80005340 <_Z11printStringPKc+0x40>
    80005334:	ffffc097          	auipc	ra,0xffffc
    80005338:	0a4080e7          	jalr	164(ra) # 800013d8 <_Z15thread_dispatchv>
    8000533c:	fddff06f          	j	80005318 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005340:	0004c503          	lbu	a0,0(s1)
    80005344:	00050a63          	beqz	a0,80005358 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	1c0080e7          	jalr	448(ra) # 80001508 <_Z4putcc>
        string++;
    80005350:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005354:	fedff06f          	j	80005340 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005358:	00000613          	li	a2,0
    8000535c:	00100593          	li	a1,1
    80005360:	00006517          	auipc	a0,0x6
    80005364:	2e050513          	addi	a0,a0,736 # 8000b640 <lockPrint>
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	eb4080e7          	jalr	-332(ra) # 8000121c <copy_and_swap>
    80005370:	fe0514e3          	bnez	a0,80005358 <_Z11printStringPKc+0x58>
}
    80005374:	01813083          	ld	ra,24(sp)
    80005378:	01013403          	ld	s0,16(sp)
    8000537c:	00813483          	ld	s1,8(sp)
    80005380:	02010113          	addi	sp,sp,32
    80005384:	00008067          	ret

0000000080005388 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005388:	fd010113          	addi	sp,sp,-48
    8000538c:	02113423          	sd	ra,40(sp)
    80005390:	02813023          	sd	s0,32(sp)
    80005394:	00913c23          	sd	s1,24(sp)
    80005398:	01213823          	sd	s2,16(sp)
    8000539c:	01313423          	sd	s3,8(sp)
    800053a0:	01413023          	sd	s4,0(sp)
    800053a4:	03010413          	addi	s0,sp,48
    800053a8:	00050993          	mv	s3,a0
    800053ac:	00058a13          	mv	s4,a1
    LOCK();
    800053b0:	00100613          	li	a2,1
    800053b4:	00000593          	li	a1,0
    800053b8:	00006517          	auipc	a0,0x6
    800053bc:	28850513          	addi	a0,a0,648 # 8000b640 <lockPrint>
    800053c0:	ffffc097          	auipc	ra,0xffffc
    800053c4:	e5c080e7          	jalr	-420(ra) # 8000121c <copy_and_swap>
    800053c8:	00050863          	beqz	a0,800053d8 <_Z9getStringPci+0x50>
    800053cc:	ffffc097          	auipc	ra,0xffffc
    800053d0:	00c080e7          	jalr	12(ra) # 800013d8 <_Z15thread_dispatchv>
    800053d4:	fddff06f          	j	800053b0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800053d8:	00000913          	li	s2,0
    800053dc:	00090493          	mv	s1,s2
    800053e0:	0019091b          	addiw	s2,s2,1
    800053e4:	03495a63          	bge	s2,s4,80005418 <_Z9getStringPci+0x90>
        cc = getc();
    800053e8:	ffffc097          	auipc	ra,0xffffc
    800053ec:	0f8080e7          	jalr	248(ra) # 800014e0 <_Z4getcv>
        if(cc < 1)
    800053f0:	02050463          	beqz	a0,80005418 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800053f4:	009984b3          	add	s1,s3,s1
    800053f8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800053fc:	00a00793          	li	a5,10
    80005400:	00f50a63          	beq	a0,a5,80005414 <_Z9getStringPci+0x8c>
    80005404:	00d00793          	li	a5,13
    80005408:	fcf51ae3          	bne	a0,a5,800053dc <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000540c:	00090493          	mv	s1,s2
    80005410:	0080006f          	j	80005418 <_Z9getStringPci+0x90>
    80005414:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005418:	009984b3          	add	s1,s3,s1
    8000541c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005420:	00000613          	li	a2,0
    80005424:	00100593          	li	a1,1
    80005428:	00006517          	auipc	a0,0x6
    8000542c:	21850513          	addi	a0,a0,536 # 8000b640 <lockPrint>
    80005430:	ffffc097          	auipc	ra,0xffffc
    80005434:	dec080e7          	jalr	-532(ra) # 8000121c <copy_and_swap>
    80005438:	fe0514e3          	bnez	a0,80005420 <_Z9getStringPci+0x98>
    return buf;
}
    8000543c:	00098513          	mv	a0,s3
    80005440:	02813083          	ld	ra,40(sp)
    80005444:	02013403          	ld	s0,32(sp)
    80005448:	01813483          	ld	s1,24(sp)
    8000544c:	01013903          	ld	s2,16(sp)
    80005450:	00813983          	ld	s3,8(sp)
    80005454:	00013a03          	ld	s4,0(sp)
    80005458:	03010113          	addi	sp,sp,48
    8000545c:	00008067          	ret

0000000080005460 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005460:	ff010113          	addi	sp,sp,-16
    80005464:	00813423          	sd	s0,8(sp)
    80005468:	01010413          	addi	s0,sp,16
    8000546c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005470:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005474:	0006c603          	lbu	a2,0(a3)
    80005478:	fd06071b          	addiw	a4,a2,-48
    8000547c:	0ff77713          	andi	a4,a4,255
    80005480:	00900793          	li	a5,9
    80005484:	02e7e063          	bltu	a5,a4,800054a4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005488:	0025179b          	slliw	a5,a0,0x2
    8000548c:	00a787bb          	addw	a5,a5,a0
    80005490:	0017979b          	slliw	a5,a5,0x1
    80005494:	00168693          	addi	a3,a3,1
    80005498:	00c787bb          	addw	a5,a5,a2
    8000549c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800054a0:	fd5ff06f          	j	80005474 <_Z11stringToIntPKc+0x14>
    return n;
}
    800054a4:	00813403          	ld	s0,8(sp)
    800054a8:	01010113          	addi	sp,sp,16
    800054ac:	00008067          	ret

00000000800054b0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800054b0:	fc010113          	addi	sp,sp,-64
    800054b4:	02113c23          	sd	ra,56(sp)
    800054b8:	02813823          	sd	s0,48(sp)
    800054bc:	02913423          	sd	s1,40(sp)
    800054c0:	03213023          	sd	s2,32(sp)
    800054c4:	01313c23          	sd	s3,24(sp)
    800054c8:	04010413          	addi	s0,sp,64
    800054cc:	00050493          	mv	s1,a0
    800054d0:	00058913          	mv	s2,a1
    800054d4:	00060993          	mv	s3,a2
    LOCK();
    800054d8:	00100613          	li	a2,1
    800054dc:	00000593          	li	a1,0
    800054e0:	00006517          	auipc	a0,0x6
    800054e4:	16050513          	addi	a0,a0,352 # 8000b640 <lockPrint>
    800054e8:	ffffc097          	auipc	ra,0xffffc
    800054ec:	d34080e7          	jalr	-716(ra) # 8000121c <copy_and_swap>
    800054f0:	00050863          	beqz	a0,80005500 <_Z8printIntiii+0x50>
    800054f4:	ffffc097          	auipc	ra,0xffffc
    800054f8:	ee4080e7          	jalr	-284(ra) # 800013d8 <_Z15thread_dispatchv>
    800054fc:	fddff06f          	j	800054d8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005500:	00098463          	beqz	s3,80005508 <_Z8printIntiii+0x58>
    80005504:	0804c463          	bltz	s1,8000558c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005508:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000550c:	00000593          	li	a1,0
    }

    i = 0;
    80005510:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005514:	0009079b          	sext.w	a5,s2
    80005518:	0325773b          	remuw	a4,a0,s2
    8000551c:	00048613          	mv	a2,s1
    80005520:	0014849b          	addiw	s1,s1,1
    80005524:	02071693          	slli	a3,a4,0x20
    80005528:	0206d693          	srli	a3,a3,0x20
    8000552c:	00006717          	auipc	a4,0x6
    80005530:	ff470713          	addi	a4,a4,-12 # 8000b520 <digits>
    80005534:	00d70733          	add	a4,a4,a3
    80005538:	00074683          	lbu	a3,0(a4)
    8000553c:	fd040713          	addi	a4,s0,-48
    80005540:	00c70733          	add	a4,a4,a2
    80005544:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005548:	0005071b          	sext.w	a4,a0
    8000554c:	0325553b          	divuw	a0,a0,s2
    80005550:	fcf772e3          	bgeu	a4,a5,80005514 <_Z8printIntiii+0x64>
    if(neg)
    80005554:	00058c63          	beqz	a1,8000556c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005558:	fd040793          	addi	a5,s0,-48
    8000555c:	009784b3          	add	s1,a5,s1
    80005560:	02d00793          	li	a5,45
    80005564:	fef48823          	sb	a5,-16(s1)
    80005568:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000556c:	fff4849b          	addiw	s1,s1,-1
    80005570:	0204c463          	bltz	s1,80005598 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005574:	fd040793          	addi	a5,s0,-48
    80005578:	009787b3          	add	a5,a5,s1
    8000557c:	ff07c503          	lbu	a0,-16(a5)
    80005580:	ffffc097          	auipc	ra,0xffffc
    80005584:	f88080e7          	jalr	-120(ra) # 80001508 <_Z4putcc>
    80005588:	fe5ff06f          	j	8000556c <_Z8printIntiii+0xbc>
        x = -xx;
    8000558c:	4090053b          	negw	a0,s1
        neg = 1;
    80005590:	00100593          	li	a1,1
        x = -xx;
    80005594:	f7dff06f          	j	80005510 <_Z8printIntiii+0x60>

    UNLOCK();
    80005598:	00000613          	li	a2,0
    8000559c:	00100593          	li	a1,1
    800055a0:	00006517          	auipc	a0,0x6
    800055a4:	0a050513          	addi	a0,a0,160 # 8000b640 <lockPrint>
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	c74080e7          	jalr	-908(ra) # 8000121c <copy_and_swap>
    800055b0:	fe0514e3          	bnez	a0,80005598 <_Z8printIntiii+0xe8>
    800055b4:	03813083          	ld	ra,56(sp)
    800055b8:	03013403          	ld	s0,48(sp)
    800055bc:	02813483          	ld	s1,40(sp)
    800055c0:	02013903          	ld	s2,32(sp)
    800055c4:	01813983          	ld	s3,24(sp)
    800055c8:	04010113          	addi	sp,sp,64
    800055cc:	00008067          	ret

00000000800055d0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800055d0:	fd010113          	addi	sp,sp,-48
    800055d4:	02113423          	sd	ra,40(sp)
    800055d8:	02813023          	sd	s0,32(sp)
    800055dc:	00913c23          	sd	s1,24(sp)
    800055e0:	01213823          	sd	s2,16(sp)
    800055e4:	01313423          	sd	s3,8(sp)
    800055e8:	03010413          	addi	s0,sp,48
    800055ec:	00050493          	mv	s1,a0
    800055f0:	00058913          	mv	s2,a1
    800055f4:	0015879b          	addiw	a5,a1,1
    800055f8:	0007851b          	sext.w	a0,a5
    800055fc:	00f4a023          	sw	a5,0(s1)
    80005600:	0004a823          	sw	zero,16(s1)
    80005604:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005608:	00251513          	slli	a0,a0,0x2
    8000560c:	ffffc097          	auipc	ra,0xffffc
    80005610:	c30080e7          	jalr	-976(ra) # 8000123c <_Z9mem_allocm>
    80005614:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005618:	01000513          	li	a0,16
    8000561c:	ffffd097          	auipc	ra,0xffffd
    80005620:	950080e7          	jalr	-1712(ra) # 80001f6c <_Znwm>
    80005624:	00050993          	mv	s3,a0
    80005628:	00000593          	li	a1,0
    8000562c:	ffffd097          	auipc	ra,0xffffd
    80005630:	d90080e7          	jalr	-624(ra) # 800023bc <_ZN9SemaphoreC1Ej>
    80005634:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005638:	01000513          	li	a0,16
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	930080e7          	jalr	-1744(ra) # 80001f6c <_Znwm>
    80005644:	00050993          	mv	s3,a0
    80005648:	00090593          	mv	a1,s2
    8000564c:	ffffd097          	auipc	ra,0xffffd
    80005650:	d70080e7          	jalr	-656(ra) # 800023bc <_ZN9SemaphoreC1Ej>
    80005654:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005658:	01000513          	li	a0,16
    8000565c:	ffffd097          	auipc	ra,0xffffd
    80005660:	910080e7          	jalr	-1776(ra) # 80001f6c <_Znwm>
    80005664:	00050913          	mv	s2,a0
    80005668:	00100593          	li	a1,1
    8000566c:	ffffd097          	auipc	ra,0xffffd
    80005670:	d50080e7          	jalr	-688(ra) # 800023bc <_ZN9SemaphoreC1Ej>
    80005674:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005678:	01000513          	li	a0,16
    8000567c:	ffffd097          	auipc	ra,0xffffd
    80005680:	8f0080e7          	jalr	-1808(ra) # 80001f6c <_Znwm>
    80005684:	00050913          	mv	s2,a0
    80005688:	00100593          	li	a1,1
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	d30080e7          	jalr	-720(ra) # 800023bc <_ZN9SemaphoreC1Ej>
    80005694:	0324b823          	sd	s2,48(s1)
}
    80005698:	02813083          	ld	ra,40(sp)
    8000569c:	02013403          	ld	s0,32(sp)
    800056a0:	01813483          	ld	s1,24(sp)
    800056a4:	01013903          	ld	s2,16(sp)
    800056a8:	00813983          	ld	s3,8(sp)
    800056ac:	03010113          	addi	sp,sp,48
    800056b0:	00008067          	ret
    800056b4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800056b8:	00098513          	mv	a0,s3
    800056bc:	ffffd097          	auipc	ra,0xffffd
    800056c0:	9b0080e7          	jalr	-1616(ra) # 8000206c <_ZdlPv>
    800056c4:	00048513          	mv	a0,s1
    800056c8:	00007097          	auipc	ra,0x7
    800056cc:	050080e7          	jalr	80(ra) # 8000c718 <_Unwind_Resume>
    800056d0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800056d4:	00098513          	mv	a0,s3
    800056d8:	ffffd097          	auipc	ra,0xffffd
    800056dc:	994080e7          	jalr	-1644(ra) # 8000206c <_ZdlPv>
    800056e0:	00048513          	mv	a0,s1
    800056e4:	00007097          	auipc	ra,0x7
    800056e8:	034080e7          	jalr	52(ra) # 8000c718 <_Unwind_Resume>
    800056ec:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800056f0:	00090513          	mv	a0,s2
    800056f4:	ffffd097          	auipc	ra,0xffffd
    800056f8:	978080e7          	jalr	-1672(ra) # 8000206c <_ZdlPv>
    800056fc:	00048513          	mv	a0,s1
    80005700:	00007097          	auipc	ra,0x7
    80005704:	018080e7          	jalr	24(ra) # 8000c718 <_Unwind_Resume>
    80005708:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000570c:	00090513          	mv	a0,s2
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	95c080e7          	jalr	-1700(ra) # 8000206c <_ZdlPv>
    80005718:	00048513          	mv	a0,s1
    8000571c:	00007097          	auipc	ra,0x7
    80005720:	ffc080e7          	jalr	-4(ra) # 8000c718 <_Unwind_Resume>

0000000080005724 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005724:	fe010113          	addi	sp,sp,-32
    80005728:	00113c23          	sd	ra,24(sp)
    8000572c:	00813823          	sd	s0,16(sp)
    80005730:	00913423          	sd	s1,8(sp)
    80005734:	01213023          	sd	s2,0(sp)
    80005738:	02010413          	addi	s0,sp,32
    8000573c:	00050493          	mv	s1,a0
    80005740:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005744:	01853503          	ld	a0,24(a0)
    80005748:	ffffd097          	auipc	ra,0xffffd
    8000574c:	cac080e7          	jalr	-852(ra) # 800023f4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005750:	0304b503          	ld	a0,48(s1)
    80005754:	ffffd097          	auipc	ra,0xffffd
    80005758:	ca0080e7          	jalr	-864(ra) # 800023f4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000575c:	0084b783          	ld	a5,8(s1)
    80005760:	0144a703          	lw	a4,20(s1)
    80005764:	00271713          	slli	a4,a4,0x2
    80005768:	00e787b3          	add	a5,a5,a4
    8000576c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005770:	0144a783          	lw	a5,20(s1)
    80005774:	0017879b          	addiw	a5,a5,1
    80005778:	0004a703          	lw	a4,0(s1)
    8000577c:	02e7e7bb          	remw	a5,a5,a4
    80005780:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005784:	0304b503          	ld	a0,48(s1)
    80005788:	ffffd097          	auipc	ra,0xffffd
    8000578c:	c98080e7          	jalr	-872(ra) # 80002420 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005790:	0204b503          	ld	a0,32(s1)
    80005794:	ffffd097          	auipc	ra,0xffffd
    80005798:	c8c080e7          	jalr	-884(ra) # 80002420 <_ZN9Semaphore6signalEv>

}
    8000579c:	01813083          	ld	ra,24(sp)
    800057a0:	01013403          	ld	s0,16(sp)
    800057a4:	00813483          	ld	s1,8(sp)
    800057a8:	00013903          	ld	s2,0(sp)
    800057ac:	02010113          	addi	sp,sp,32
    800057b0:	00008067          	ret

00000000800057b4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800057b4:	fe010113          	addi	sp,sp,-32
    800057b8:	00113c23          	sd	ra,24(sp)
    800057bc:	00813823          	sd	s0,16(sp)
    800057c0:	00913423          	sd	s1,8(sp)
    800057c4:	01213023          	sd	s2,0(sp)
    800057c8:	02010413          	addi	s0,sp,32
    800057cc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800057d0:	02053503          	ld	a0,32(a0)
    800057d4:	ffffd097          	auipc	ra,0xffffd
    800057d8:	c20080e7          	jalr	-992(ra) # 800023f4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800057dc:	0284b503          	ld	a0,40(s1)
    800057e0:	ffffd097          	auipc	ra,0xffffd
    800057e4:	c14080e7          	jalr	-1004(ra) # 800023f4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800057e8:	0084b703          	ld	a4,8(s1)
    800057ec:	0104a783          	lw	a5,16(s1)
    800057f0:	00279693          	slli	a3,a5,0x2
    800057f4:	00d70733          	add	a4,a4,a3
    800057f8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800057fc:	0017879b          	addiw	a5,a5,1
    80005800:	0004a703          	lw	a4,0(s1)
    80005804:	02e7e7bb          	remw	a5,a5,a4
    80005808:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000580c:	0284b503          	ld	a0,40(s1)
    80005810:	ffffd097          	auipc	ra,0xffffd
    80005814:	c10080e7          	jalr	-1008(ra) # 80002420 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005818:	0184b503          	ld	a0,24(s1)
    8000581c:	ffffd097          	auipc	ra,0xffffd
    80005820:	c04080e7          	jalr	-1020(ra) # 80002420 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005824:	00090513          	mv	a0,s2
    80005828:	01813083          	ld	ra,24(sp)
    8000582c:	01013403          	ld	s0,16(sp)
    80005830:	00813483          	ld	s1,8(sp)
    80005834:	00013903          	ld	s2,0(sp)
    80005838:	02010113          	addi	sp,sp,32
    8000583c:	00008067          	ret

0000000080005840 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005840:	fe010113          	addi	sp,sp,-32
    80005844:	00113c23          	sd	ra,24(sp)
    80005848:	00813823          	sd	s0,16(sp)
    8000584c:	00913423          	sd	s1,8(sp)
    80005850:	01213023          	sd	s2,0(sp)
    80005854:	02010413          	addi	s0,sp,32
    80005858:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000585c:	02853503          	ld	a0,40(a0)
    80005860:	ffffd097          	auipc	ra,0xffffd
    80005864:	b94080e7          	jalr	-1132(ra) # 800023f4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005868:	0304b503          	ld	a0,48(s1)
    8000586c:	ffffd097          	auipc	ra,0xffffd
    80005870:	b88080e7          	jalr	-1144(ra) # 800023f4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005874:	0144a783          	lw	a5,20(s1)
    80005878:	0104a903          	lw	s2,16(s1)
    8000587c:	0327ce63          	blt	a5,s2,800058b8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005880:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005884:	0304b503          	ld	a0,48(s1)
    80005888:	ffffd097          	auipc	ra,0xffffd
    8000588c:	b98080e7          	jalr	-1128(ra) # 80002420 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005890:	0284b503          	ld	a0,40(s1)
    80005894:	ffffd097          	auipc	ra,0xffffd
    80005898:	b8c080e7          	jalr	-1140(ra) # 80002420 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000589c:	00090513          	mv	a0,s2
    800058a0:	01813083          	ld	ra,24(sp)
    800058a4:	01013403          	ld	s0,16(sp)
    800058a8:	00813483          	ld	s1,8(sp)
    800058ac:	00013903          	ld	s2,0(sp)
    800058b0:	02010113          	addi	sp,sp,32
    800058b4:	00008067          	ret
        ret = cap - head + tail;
    800058b8:	0004a703          	lw	a4,0(s1)
    800058bc:	4127093b          	subw	s2,a4,s2
    800058c0:	00f9093b          	addw	s2,s2,a5
    800058c4:	fc1ff06f          	j	80005884 <_ZN9BufferCPP6getCntEv+0x44>

00000000800058c8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800058c8:	fe010113          	addi	sp,sp,-32
    800058cc:	00113c23          	sd	ra,24(sp)
    800058d0:	00813823          	sd	s0,16(sp)
    800058d4:	00913423          	sd	s1,8(sp)
    800058d8:	02010413          	addi	s0,sp,32
    800058dc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800058e0:	00a00513          	li	a0,10
    800058e4:	ffffd097          	auipc	ra,0xffffd
    800058e8:	b68080e7          	jalr	-1176(ra) # 8000244c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800058ec:	00004517          	auipc	a0,0x4
    800058f0:	a9c50513          	addi	a0,a0,-1380 # 80009388 <CONSOLE_STATUS+0x378>
    800058f4:	00000097          	auipc	ra,0x0
    800058f8:	a0c080e7          	jalr	-1524(ra) # 80005300 <_Z11printStringPKc>
    while (getCnt()) {
    800058fc:	00048513          	mv	a0,s1
    80005900:	00000097          	auipc	ra,0x0
    80005904:	f40080e7          	jalr	-192(ra) # 80005840 <_ZN9BufferCPP6getCntEv>
    80005908:	02050c63          	beqz	a0,80005940 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000590c:	0084b783          	ld	a5,8(s1)
    80005910:	0104a703          	lw	a4,16(s1)
    80005914:	00271713          	slli	a4,a4,0x2
    80005918:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000591c:	0007c503          	lbu	a0,0(a5)
    80005920:	ffffd097          	auipc	ra,0xffffd
    80005924:	b2c080e7          	jalr	-1236(ra) # 8000244c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005928:	0104a783          	lw	a5,16(s1)
    8000592c:	0017879b          	addiw	a5,a5,1
    80005930:	0004a703          	lw	a4,0(s1)
    80005934:	02e7e7bb          	remw	a5,a5,a4
    80005938:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000593c:	fc1ff06f          	j	800058fc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005940:	02100513          	li	a0,33
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	b08080e7          	jalr	-1272(ra) # 8000244c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000594c:	00a00513          	li	a0,10
    80005950:	ffffd097          	auipc	ra,0xffffd
    80005954:	afc080e7          	jalr	-1284(ra) # 8000244c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005958:	0084b503          	ld	a0,8(s1)
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	91c080e7          	jalr	-1764(ra) # 80001278 <_Z8mem_freePv>
    delete itemAvailable;
    80005964:	0204b503          	ld	a0,32(s1)
    80005968:	00050863          	beqz	a0,80005978 <_ZN9BufferCPPD1Ev+0xb0>
    8000596c:	00053783          	ld	a5,0(a0)
    80005970:	0087b783          	ld	a5,8(a5)
    80005974:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005978:	0184b503          	ld	a0,24(s1)
    8000597c:	00050863          	beqz	a0,8000598c <_ZN9BufferCPPD1Ev+0xc4>
    80005980:	00053783          	ld	a5,0(a0)
    80005984:	0087b783          	ld	a5,8(a5)
    80005988:	000780e7          	jalr	a5
    delete mutexTail;
    8000598c:	0304b503          	ld	a0,48(s1)
    80005990:	00050863          	beqz	a0,800059a0 <_ZN9BufferCPPD1Ev+0xd8>
    80005994:	00053783          	ld	a5,0(a0)
    80005998:	0087b783          	ld	a5,8(a5)
    8000599c:	000780e7          	jalr	a5
    delete mutexHead;
    800059a0:	0284b503          	ld	a0,40(s1)
    800059a4:	00050863          	beqz	a0,800059b4 <_ZN9BufferCPPD1Ev+0xec>
    800059a8:	00053783          	ld	a5,0(a0)
    800059ac:	0087b783          	ld	a5,8(a5)
    800059b0:	000780e7          	jalr	a5
}
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	02010113          	addi	sp,sp,32
    800059c4:	00008067          	ret

00000000800059c8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800059c8:	fe010113          	addi	sp,sp,-32
    800059cc:	00113c23          	sd	ra,24(sp)
    800059d0:	00813823          	sd	s0,16(sp)
    800059d4:	00913423          	sd	s1,8(sp)
    800059d8:	01213023          	sd	s2,0(sp)
    800059dc:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800059e0:	00004517          	auipc	a0,0x4
    800059e4:	9c050513          	addi	a0,a0,-1600 # 800093a0 <CONSOLE_STATUS+0x390>
    800059e8:	00000097          	auipc	ra,0x0
    800059ec:	918080e7          	jalr	-1768(ra) # 80005300 <_Z11printStringPKc>
    int test = getc() - '0';
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	af0080e7          	jalr	-1296(ra) # 800014e0 <_Z4getcv>
    800059f8:	00050913          	mv	s2,a0
    800059fc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005a00:	ffffc097          	auipc	ra,0xffffc
    80005a04:	ae0080e7          	jalr	-1312(ra) # 800014e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005a08:	fcb9091b          	addiw	s2,s2,-53
    80005a0c:	00100793          	li	a5,1
    80005a10:	0327f463          	bgeu	a5,s2,80005a38 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005a14:	00700793          	li	a5,7
    80005a18:	0e97e263          	bltu	a5,s1,80005afc <_Z8userMainv+0x134>
    80005a1c:	00249493          	slli	s1,s1,0x2
    80005a20:	00004717          	auipc	a4,0x4
    80005a24:	b9870713          	addi	a4,a4,-1128 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005a28:	00e484b3          	add	s1,s1,a4
    80005a2c:	0004a783          	lw	a5,0(s1)
    80005a30:	00e787b3          	add	a5,a5,a4
    80005a34:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005a38:	00004517          	auipc	a0,0x4
    80005a3c:	98850513          	addi	a0,a0,-1656 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	8c0080e7          	jalr	-1856(ra) # 80005300 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005a48:	01813083          	ld	ra,24(sp)
    80005a4c:	01013403          	ld	s0,16(sp)
    80005a50:	00813483          	ld	s1,8(sp)
    80005a54:	00013903          	ld	s2,0(sp)
    80005a58:	02010113          	addi	sp,sp,32
    80005a5c:	00008067          	ret
            Threads_C_API_test();
    80005a60:	fffff097          	auipc	ra,0xfffff
    80005a64:	f18080e7          	jalr	-232(ra) # 80004978 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005a68:	00004517          	auipc	a0,0x4
    80005a6c:	98850513          	addi	a0,a0,-1656 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005a70:	00000097          	auipc	ra,0x0
    80005a74:	890080e7          	jalr	-1904(ra) # 80005300 <_Z11printStringPKc>
            break;
    80005a78:	fd1ff06f          	j	80005a48 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005a7c:	ffffe097          	auipc	ra,0xffffe
    80005a80:	ddc080e7          	jalr	-548(ra) # 80003858 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005a84:	00004517          	auipc	a0,0x4
    80005a88:	9ac50513          	addi	a0,a0,-1620 # 80009430 <CONSOLE_STATUS+0x420>
    80005a8c:	00000097          	auipc	ra,0x0
    80005a90:	874080e7          	jalr	-1932(ra) # 80005300 <_Z11printStringPKc>
            break;
    80005a94:	fb5ff06f          	j	80005a48 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005a98:	ffffd097          	auipc	ra,0xffffd
    80005a9c:	614080e7          	jalr	1556(ra) # 800030ac <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005aa0:	00004517          	auipc	a0,0x4
    80005aa4:	9d050513          	addi	a0,a0,-1584 # 80009470 <CONSOLE_STATUS+0x460>
    80005aa8:	00000097          	auipc	ra,0x0
    80005aac:	858080e7          	jalr	-1960(ra) # 80005300 <_Z11printStringPKc>
            break;
    80005ab0:	f99ff06f          	j	80005a48 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005ab4:	fffff097          	auipc	ra,0xfffff
    80005ab8:	208080e7          	jalr	520(ra) # 80004cbc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005abc:	00004517          	auipc	a0,0x4
    80005ac0:	a0450513          	addi	a0,a0,-1532 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005ac4:	00000097          	auipc	ra,0x0
    80005ac8:	83c080e7          	jalr	-1988(ra) # 80005300 <_Z11printStringPKc>
            break;
    80005acc:	f7dff06f          	j	80005a48 <_Z8userMainv+0x80>
            System_Mode_test();
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	658080e7          	jalr	1624(ra) # 80006128 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	a4050513          	addi	a0,a0,-1472 # 80009518 <CONSOLE_STATUS+0x508>
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	820080e7          	jalr	-2016(ra) # 80005300 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005ae8:	00004517          	auipc	a0,0x4
    80005aec:	a5050513          	addi	a0,a0,-1456 # 80009538 <CONSOLE_STATUS+0x528>
    80005af0:	00000097          	auipc	ra,0x0
    80005af4:	810080e7          	jalr	-2032(ra) # 80005300 <_Z11printStringPKc>
            break;
    80005af8:	f51ff06f          	j	80005a48 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005afc:	00004517          	auipc	a0,0x4
    80005b00:	a9450513          	addi	a0,a0,-1388 # 80009590 <CONSOLE_STATUS+0x580>
    80005b04:	fffff097          	auipc	ra,0xfffff
    80005b08:	7fc080e7          	jalr	2044(ra) # 80005300 <_Z11printStringPKc>
    80005b0c:	f3dff06f          	j	80005a48 <_Z8userMainv+0x80>

0000000080005b10 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005b10:	fe010113          	addi	sp,sp,-32
    80005b14:	00113c23          	sd	ra,24(sp)
    80005b18:	00813823          	sd	s0,16(sp)
    80005b1c:	00913423          	sd	s1,8(sp)
    80005b20:	01213023          	sd	s2,0(sp)
    80005b24:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005b28:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005b2c:	00600493          	li	s1,6
    while (--i > 0) {
    80005b30:	fff4849b          	addiw	s1,s1,-1
    80005b34:	04905463          	blez	s1,80005b7c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005b38:	00004517          	auipc	a0,0x4
    80005b3c:	aa050513          	addi	a0,a0,-1376 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005b40:	fffff097          	auipc	ra,0xfffff
    80005b44:	7c0080e7          	jalr	1984(ra) # 80005300 <_Z11printStringPKc>
        printInt(sleep_time);
    80005b48:	00000613          	li	a2,0
    80005b4c:	00a00593          	li	a1,10
    80005b50:	0009051b          	sext.w	a0,s2
    80005b54:	00000097          	auipc	ra,0x0
    80005b58:	95c080e7          	jalr	-1700(ra) # 800054b0 <_Z8printIntiii>
        printString(" !\n");
    80005b5c:	00004517          	auipc	a0,0x4
    80005b60:	a8450513          	addi	a0,a0,-1404 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80005b64:	fffff097          	auipc	ra,0xfffff
    80005b68:	79c080e7          	jalr	1948(ra) # 80005300 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005b6c:	00090513          	mv	a0,s2
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	944080e7          	jalr	-1724(ra) # 800014b4 <_Z10time_sleepm>
    while (--i > 0) {
    80005b78:	fb9ff06f          	j	80005b30 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005b7c:	00a00793          	li	a5,10
    80005b80:	02f95933          	divu	s2,s2,a5
    80005b84:	fff90913          	addi	s2,s2,-1
    80005b88:	00006797          	auipc	a5,0x6
    80005b8c:	ac078793          	addi	a5,a5,-1344 # 8000b648 <_ZL8finished>
    80005b90:	01278933          	add	s2,a5,s2
    80005b94:	00100793          	li	a5,1
    80005b98:	00f90023          	sb	a5,0(s2)
}
    80005b9c:	01813083          	ld	ra,24(sp)
    80005ba0:	01013403          	ld	s0,16(sp)
    80005ba4:	00813483          	ld	s1,8(sp)
    80005ba8:	00013903          	ld	s2,0(sp)
    80005bac:	02010113          	addi	sp,sp,32
    80005bb0:	00008067          	ret

0000000080005bb4 <_Z12testSleepingv>:

void testSleeping() {
    80005bb4:	fc010113          	addi	sp,sp,-64
    80005bb8:	02113c23          	sd	ra,56(sp)
    80005bbc:	02813823          	sd	s0,48(sp)
    80005bc0:	02913423          	sd	s1,40(sp)
    80005bc4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005bc8:	00a00793          	li	a5,10
    80005bcc:	fcf43823          	sd	a5,-48(s0)
    80005bd0:	01400793          	li	a5,20
    80005bd4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005bd8:	00000493          	li	s1,0
    80005bdc:	02c0006f          	j	80005c08 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005be0:	00349793          	slli	a5,s1,0x3
    80005be4:	fd040613          	addi	a2,s0,-48
    80005be8:	00f60633          	add	a2,a2,a5
    80005bec:	00000597          	auipc	a1,0x0
    80005bf0:	f2458593          	addi	a1,a1,-220 # 80005b10 <_ZL9sleepyRunPv>
    80005bf4:	fc040513          	addi	a0,s0,-64
    80005bf8:	00f50533          	add	a0,a0,a5
    80005bfc:	ffffb097          	auipc	ra,0xffffb
    80005c00:	6f0080e7          	jalr	1776(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c04:	0014849b          	addiw	s1,s1,1
    80005c08:	00100793          	li	a5,1
    80005c0c:	fc97dae3          	bge	a5,s1,80005be0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005c10:	00006797          	auipc	a5,0x6
    80005c14:	a387c783          	lbu	a5,-1480(a5) # 8000b648 <_ZL8finished>
    80005c18:	fe078ce3          	beqz	a5,80005c10 <_Z12testSleepingv+0x5c>
    80005c1c:	00006797          	auipc	a5,0x6
    80005c20:	a2d7c783          	lbu	a5,-1491(a5) # 8000b649 <_ZL8finished+0x1>
    80005c24:	fe0786e3          	beqz	a5,80005c10 <_Z12testSleepingv+0x5c>
}
    80005c28:	03813083          	ld	ra,56(sp)
    80005c2c:	03013403          	ld	s0,48(sp)
    80005c30:	02813483          	ld	s1,40(sp)
    80005c34:	04010113          	addi	sp,sp,64
    80005c38:	00008067          	ret

0000000080005c3c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005c3c:	fe010113          	addi	sp,sp,-32
    80005c40:	00113c23          	sd	ra,24(sp)
    80005c44:	00813823          	sd	s0,16(sp)
    80005c48:	00913423          	sd	s1,8(sp)
    80005c4c:	01213023          	sd	s2,0(sp)
    80005c50:	02010413          	addi	s0,sp,32
    80005c54:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005c58:	00100793          	li	a5,1
    80005c5c:	02a7f863          	bgeu	a5,a0,80005c8c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005c60:	00a00793          	li	a5,10
    80005c64:	02f577b3          	remu	a5,a0,a5
    80005c68:	02078e63          	beqz	a5,80005ca4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005c6c:	fff48513          	addi	a0,s1,-1
    80005c70:	00000097          	auipc	ra,0x0
    80005c74:	fcc080e7          	jalr	-52(ra) # 80005c3c <_ZL9fibonaccim>
    80005c78:	00050913          	mv	s2,a0
    80005c7c:	ffe48513          	addi	a0,s1,-2
    80005c80:	00000097          	auipc	ra,0x0
    80005c84:	fbc080e7          	jalr	-68(ra) # 80005c3c <_ZL9fibonaccim>
    80005c88:	00a90533          	add	a0,s2,a0
}
    80005c8c:	01813083          	ld	ra,24(sp)
    80005c90:	01013403          	ld	s0,16(sp)
    80005c94:	00813483          	ld	s1,8(sp)
    80005c98:	00013903          	ld	s2,0(sp)
    80005c9c:	02010113          	addi	sp,sp,32
    80005ca0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005ca4:	ffffb097          	auipc	ra,0xffffb
    80005ca8:	734080e7          	jalr	1844(ra) # 800013d8 <_Z15thread_dispatchv>
    80005cac:	fc1ff06f          	j	80005c6c <_ZL9fibonaccim+0x30>

0000000080005cb0 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005cb0:	fe010113          	addi	sp,sp,-32
    80005cb4:	00113c23          	sd	ra,24(sp)
    80005cb8:	00813823          	sd	s0,16(sp)
    80005cbc:	00913423          	sd	s1,8(sp)
    80005cc0:	01213023          	sd	s2,0(sp)
    80005cc4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005cc8:	00a00493          	li	s1,10
    80005ccc:	0400006f          	j	80005d0c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005cd0:	00003517          	auipc	a0,0x3
    80005cd4:	61050513          	addi	a0,a0,1552 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005cd8:	fffff097          	auipc	ra,0xfffff
    80005cdc:	628080e7          	jalr	1576(ra) # 80005300 <_Z11printStringPKc>
    80005ce0:	00000613          	li	a2,0
    80005ce4:	00a00593          	li	a1,10
    80005ce8:	00048513          	mv	a0,s1
    80005cec:	fffff097          	auipc	ra,0xfffff
    80005cf0:	7c4080e7          	jalr	1988(ra) # 800054b0 <_Z8printIntiii>
    80005cf4:	00004517          	auipc	a0,0x4
    80005cf8:	81c50513          	addi	a0,a0,-2020 # 80009510 <CONSOLE_STATUS+0x500>
    80005cfc:	fffff097          	auipc	ra,0xfffff
    80005d00:	604080e7          	jalr	1540(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005d04:	0014849b          	addiw	s1,s1,1
    80005d08:	0ff4f493          	andi	s1,s1,255
    80005d0c:	00c00793          	li	a5,12
    80005d10:	fc97f0e3          	bgeu	a5,s1,80005cd0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005d14:	00003517          	auipc	a0,0x3
    80005d18:	5d450513          	addi	a0,a0,1492 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005d1c:	fffff097          	auipc	ra,0xfffff
    80005d20:	5e4080e7          	jalr	1508(ra) # 80005300 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005d24:	00500313          	li	t1,5
    thread_dispatch();
    80005d28:	ffffb097          	auipc	ra,0xffffb
    80005d2c:	6b0080e7          	jalr	1712(ra) # 800013d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005d30:	01000513          	li	a0,16
    80005d34:	00000097          	auipc	ra,0x0
    80005d38:	f08080e7          	jalr	-248(ra) # 80005c3c <_ZL9fibonaccim>
    80005d3c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005d40:	00003517          	auipc	a0,0x3
    80005d44:	5b850513          	addi	a0,a0,1464 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005d48:	fffff097          	auipc	ra,0xfffff
    80005d4c:	5b8080e7          	jalr	1464(ra) # 80005300 <_Z11printStringPKc>
    80005d50:	00000613          	li	a2,0
    80005d54:	00a00593          	li	a1,10
    80005d58:	0009051b          	sext.w	a0,s2
    80005d5c:	fffff097          	auipc	ra,0xfffff
    80005d60:	754080e7          	jalr	1876(ra) # 800054b0 <_Z8printIntiii>
    80005d64:	00003517          	auipc	a0,0x3
    80005d68:	7ac50513          	addi	a0,a0,1964 # 80009510 <CONSOLE_STATUS+0x500>
    80005d6c:	fffff097          	auipc	ra,0xfffff
    80005d70:	594080e7          	jalr	1428(ra) # 80005300 <_Z11printStringPKc>
    80005d74:	0400006f          	j	80005db4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005d78:	00003517          	auipc	a0,0x3
    80005d7c:	56850513          	addi	a0,a0,1384 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005d80:	fffff097          	auipc	ra,0xfffff
    80005d84:	580080e7          	jalr	1408(ra) # 80005300 <_Z11printStringPKc>
    80005d88:	00000613          	li	a2,0
    80005d8c:	00a00593          	li	a1,10
    80005d90:	00048513          	mv	a0,s1
    80005d94:	fffff097          	auipc	ra,0xfffff
    80005d98:	71c080e7          	jalr	1820(ra) # 800054b0 <_Z8printIntiii>
    80005d9c:	00003517          	auipc	a0,0x3
    80005da0:	77450513          	addi	a0,a0,1908 # 80009510 <CONSOLE_STATUS+0x500>
    80005da4:	fffff097          	auipc	ra,0xfffff
    80005da8:	55c080e7          	jalr	1372(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005dac:	0014849b          	addiw	s1,s1,1
    80005db0:	0ff4f493          	andi	s1,s1,255
    80005db4:	00f00793          	li	a5,15
    80005db8:	fc97f0e3          	bgeu	a5,s1,80005d78 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005dbc:	00003517          	auipc	a0,0x3
    80005dc0:	54c50513          	addi	a0,a0,1356 # 80009308 <CONSOLE_STATUS+0x2f8>
    80005dc4:	fffff097          	auipc	ra,0xfffff
    80005dc8:	53c080e7          	jalr	1340(ra) # 80005300 <_Z11printStringPKc>
    finishedD = true;
    80005dcc:	00100793          	li	a5,1
    80005dd0:	00006717          	auipc	a4,0x6
    80005dd4:	86f70d23          	sb	a5,-1926(a4) # 8000b64a <_ZL9finishedD>
    thread_dispatch();
    80005dd8:	ffffb097          	auipc	ra,0xffffb
    80005ddc:	600080e7          	jalr	1536(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80005de0:	01813083          	ld	ra,24(sp)
    80005de4:	01013403          	ld	s0,16(sp)
    80005de8:	00813483          	ld	s1,8(sp)
    80005dec:	00013903          	ld	s2,0(sp)
    80005df0:	02010113          	addi	sp,sp,32
    80005df4:	00008067          	ret

0000000080005df8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005df8:	fe010113          	addi	sp,sp,-32
    80005dfc:	00113c23          	sd	ra,24(sp)
    80005e00:	00813823          	sd	s0,16(sp)
    80005e04:	00913423          	sd	s1,8(sp)
    80005e08:	01213023          	sd	s2,0(sp)
    80005e0c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005e10:	00000493          	li	s1,0
    80005e14:	0400006f          	j	80005e54 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005e18:	00003517          	auipc	a0,0x3
    80005e1c:	49850513          	addi	a0,a0,1176 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005e20:	fffff097          	auipc	ra,0xfffff
    80005e24:	4e0080e7          	jalr	1248(ra) # 80005300 <_Z11printStringPKc>
    80005e28:	00000613          	li	a2,0
    80005e2c:	00a00593          	li	a1,10
    80005e30:	00048513          	mv	a0,s1
    80005e34:	fffff097          	auipc	ra,0xfffff
    80005e38:	67c080e7          	jalr	1660(ra) # 800054b0 <_Z8printIntiii>
    80005e3c:	00003517          	auipc	a0,0x3
    80005e40:	6d450513          	addi	a0,a0,1748 # 80009510 <CONSOLE_STATUS+0x500>
    80005e44:	fffff097          	auipc	ra,0xfffff
    80005e48:	4bc080e7          	jalr	1212(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005e4c:	0014849b          	addiw	s1,s1,1
    80005e50:	0ff4f493          	andi	s1,s1,255
    80005e54:	00200793          	li	a5,2
    80005e58:	fc97f0e3          	bgeu	a5,s1,80005e18 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005e5c:	00003517          	auipc	a0,0x3
    80005e60:	45c50513          	addi	a0,a0,1116 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005e64:	fffff097          	auipc	ra,0xfffff
    80005e68:	49c080e7          	jalr	1180(ra) # 80005300 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005e6c:	00700313          	li	t1,7
    thread_dispatch();
    80005e70:	ffffb097          	auipc	ra,0xffffb
    80005e74:	568080e7          	jalr	1384(ra) # 800013d8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005e78:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005e7c:	00003517          	auipc	a0,0x3
    80005e80:	44c50513          	addi	a0,a0,1100 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005e84:	fffff097          	auipc	ra,0xfffff
    80005e88:	47c080e7          	jalr	1148(ra) # 80005300 <_Z11printStringPKc>
    80005e8c:	00000613          	li	a2,0
    80005e90:	00a00593          	li	a1,10
    80005e94:	0009051b          	sext.w	a0,s2
    80005e98:	fffff097          	auipc	ra,0xfffff
    80005e9c:	618080e7          	jalr	1560(ra) # 800054b0 <_Z8printIntiii>
    80005ea0:	00003517          	auipc	a0,0x3
    80005ea4:	67050513          	addi	a0,a0,1648 # 80009510 <CONSOLE_STATUS+0x500>
    80005ea8:	fffff097          	auipc	ra,0xfffff
    80005eac:	458080e7          	jalr	1112(ra) # 80005300 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005eb0:	00c00513          	li	a0,12
    80005eb4:	00000097          	auipc	ra,0x0
    80005eb8:	d88080e7          	jalr	-632(ra) # 80005c3c <_ZL9fibonaccim>
    80005ebc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005ec0:	00003517          	auipc	a0,0x3
    80005ec4:	41050513          	addi	a0,a0,1040 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80005ec8:	fffff097          	auipc	ra,0xfffff
    80005ecc:	438080e7          	jalr	1080(ra) # 80005300 <_Z11printStringPKc>
    80005ed0:	00000613          	li	a2,0
    80005ed4:	00a00593          	li	a1,10
    80005ed8:	0009051b          	sext.w	a0,s2
    80005edc:	fffff097          	auipc	ra,0xfffff
    80005ee0:	5d4080e7          	jalr	1492(ra) # 800054b0 <_Z8printIntiii>
    80005ee4:	00003517          	auipc	a0,0x3
    80005ee8:	62c50513          	addi	a0,a0,1580 # 80009510 <CONSOLE_STATUS+0x500>
    80005eec:	fffff097          	auipc	ra,0xfffff
    80005ef0:	414080e7          	jalr	1044(ra) # 80005300 <_Z11printStringPKc>
    80005ef4:	0400006f          	j	80005f34 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005ef8:	00003517          	auipc	a0,0x3
    80005efc:	3b850513          	addi	a0,a0,952 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005f00:	fffff097          	auipc	ra,0xfffff
    80005f04:	400080e7          	jalr	1024(ra) # 80005300 <_Z11printStringPKc>
    80005f08:	00000613          	li	a2,0
    80005f0c:	00a00593          	li	a1,10
    80005f10:	00048513          	mv	a0,s1
    80005f14:	fffff097          	auipc	ra,0xfffff
    80005f18:	59c080e7          	jalr	1436(ra) # 800054b0 <_Z8printIntiii>
    80005f1c:	00003517          	auipc	a0,0x3
    80005f20:	5f450513          	addi	a0,a0,1524 # 80009510 <CONSOLE_STATUS+0x500>
    80005f24:	fffff097          	auipc	ra,0xfffff
    80005f28:	3dc080e7          	jalr	988(ra) # 80005300 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005f2c:	0014849b          	addiw	s1,s1,1
    80005f30:	0ff4f493          	andi	s1,s1,255
    80005f34:	00500793          	li	a5,5
    80005f38:	fc97f0e3          	bgeu	a5,s1,80005ef8 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005f3c:	00003517          	auipc	a0,0x3
    80005f40:	43c50513          	addi	a0,a0,1084 # 80009378 <CONSOLE_STATUS+0x368>
    80005f44:	fffff097          	auipc	ra,0xfffff
    80005f48:	3bc080e7          	jalr	956(ra) # 80005300 <_Z11printStringPKc>
    finishedC = true;
    80005f4c:	00100793          	li	a5,1
    80005f50:	00005717          	auipc	a4,0x5
    80005f54:	6ef70da3          	sb	a5,1787(a4) # 8000b64b <_ZL9finishedC>
    thread_dispatch();
    80005f58:	ffffb097          	auipc	ra,0xffffb
    80005f5c:	480080e7          	jalr	1152(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80005f60:	01813083          	ld	ra,24(sp)
    80005f64:	01013403          	ld	s0,16(sp)
    80005f68:	00813483          	ld	s1,8(sp)
    80005f6c:	00013903          	ld	s2,0(sp)
    80005f70:	02010113          	addi	sp,sp,32
    80005f74:	00008067          	ret

0000000080005f78 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005f78:	fe010113          	addi	sp,sp,-32
    80005f7c:	00113c23          	sd	ra,24(sp)
    80005f80:	00813823          	sd	s0,16(sp)
    80005f84:	00913423          	sd	s1,8(sp)
    80005f88:	01213023          	sd	s2,0(sp)
    80005f8c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005f90:	00000913          	li	s2,0
    80005f94:	0400006f          	j	80005fd4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005f98:	ffffb097          	auipc	ra,0xffffb
    80005f9c:	440080e7          	jalr	1088(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005fa0:	00148493          	addi	s1,s1,1
    80005fa4:	000027b7          	lui	a5,0x2
    80005fa8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fac:	0097ee63          	bltu	a5,s1,80005fc8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fb0:	00000713          	li	a4,0
    80005fb4:	000077b7          	lui	a5,0x7
    80005fb8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fbc:	fce7eee3          	bltu	a5,a4,80005f98 <_ZL11workerBodyBPv+0x20>
    80005fc0:	00170713          	addi	a4,a4,1
    80005fc4:	ff1ff06f          	j	80005fb4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005fc8:	00a00793          	li	a5,10
    80005fcc:	04f90663          	beq	s2,a5,80006018 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005fd0:	00190913          	addi	s2,s2,1
    80005fd4:	00f00793          	li	a5,15
    80005fd8:	0527e463          	bltu	a5,s2,80006020 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005fdc:	00003517          	auipc	a0,0x3
    80005fe0:	07450513          	addi	a0,a0,116 # 80009050 <CONSOLE_STATUS+0x40>
    80005fe4:	fffff097          	auipc	ra,0xfffff
    80005fe8:	31c080e7          	jalr	796(ra) # 80005300 <_Z11printStringPKc>
    80005fec:	00000613          	li	a2,0
    80005ff0:	00a00593          	li	a1,10
    80005ff4:	0009051b          	sext.w	a0,s2
    80005ff8:	fffff097          	auipc	ra,0xfffff
    80005ffc:	4b8080e7          	jalr	1208(ra) # 800054b0 <_Z8printIntiii>
    80006000:	00003517          	auipc	a0,0x3
    80006004:	51050513          	addi	a0,a0,1296 # 80009510 <CONSOLE_STATUS+0x500>
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	2f8080e7          	jalr	760(ra) # 80005300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006010:	00000493          	li	s1,0
    80006014:	f91ff06f          	j	80005fa4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006018:	14102ff3          	csrr	t6,sepc
    8000601c:	fb5ff06f          	j	80005fd0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006020:	00003517          	auipc	a0,0x3
    80006024:	28050513          	addi	a0,a0,640 # 800092a0 <CONSOLE_STATUS+0x290>
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	2d8080e7          	jalr	728(ra) # 80005300 <_Z11printStringPKc>
    finishedB = true;
    80006030:	00100793          	li	a5,1
    80006034:	00005717          	auipc	a4,0x5
    80006038:	60f70c23          	sb	a5,1560(a4) # 8000b64c <_ZL9finishedB>
    thread_dispatch();
    8000603c:	ffffb097          	auipc	ra,0xffffb
    80006040:	39c080e7          	jalr	924(ra) # 800013d8 <_Z15thread_dispatchv>
}
    80006044:	01813083          	ld	ra,24(sp)
    80006048:	01013403          	ld	s0,16(sp)
    8000604c:	00813483          	ld	s1,8(sp)
    80006050:	00013903          	ld	s2,0(sp)
    80006054:	02010113          	addi	sp,sp,32
    80006058:	00008067          	ret

000000008000605c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000605c:	fe010113          	addi	sp,sp,-32
    80006060:	00113c23          	sd	ra,24(sp)
    80006064:	00813823          	sd	s0,16(sp)
    80006068:	00913423          	sd	s1,8(sp)
    8000606c:	01213023          	sd	s2,0(sp)
    80006070:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006074:	00000913          	li	s2,0
    80006078:	0380006f          	j	800060b0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000607c:	ffffb097          	auipc	ra,0xffffb
    80006080:	35c080e7          	jalr	860(ra) # 800013d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006084:	00148493          	addi	s1,s1,1
    80006088:	000027b7          	lui	a5,0x2
    8000608c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006090:	0097ee63          	bltu	a5,s1,800060ac <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006094:	00000713          	li	a4,0
    80006098:	000077b7          	lui	a5,0x7
    8000609c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060a0:	fce7eee3          	bltu	a5,a4,8000607c <_ZL11workerBodyAPv+0x20>
    800060a4:	00170713          	addi	a4,a4,1
    800060a8:	ff1ff06f          	j	80006098 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800060ac:	00190913          	addi	s2,s2,1
    800060b0:	00900793          	li	a5,9
    800060b4:	0527e063          	bltu	a5,s2,800060f4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800060b8:	00003517          	auipc	a0,0x3
    800060bc:	f6850513          	addi	a0,a0,-152 # 80009020 <CONSOLE_STATUS+0x10>
    800060c0:	fffff097          	auipc	ra,0xfffff
    800060c4:	240080e7          	jalr	576(ra) # 80005300 <_Z11printStringPKc>
    800060c8:	00000613          	li	a2,0
    800060cc:	00a00593          	li	a1,10
    800060d0:	0009051b          	sext.w	a0,s2
    800060d4:	fffff097          	auipc	ra,0xfffff
    800060d8:	3dc080e7          	jalr	988(ra) # 800054b0 <_Z8printIntiii>
    800060dc:	00003517          	auipc	a0,0x3
    800060e0:	43450513          	addi	a0,a0,1076 # 80009510 <CONSOLE_STATUS+0x500>
    800060e4:	fffff097          	auipc	ra,0xfffff
    800060e8:	21c080e7          	jalr	540(ra) # 80005300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800060ec:	00000493          	li	s1,0
    800060f0:	f99ff06f          	j	80006088 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	19c50513          	addi	a0,a0,412 # 80009290 <CONSOLE_STATUS+0x280>
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	204080e7          	jalr	516(ra) # 80005300 <_Z11printStringPKc>
    finishedA = true;
    80006104:	00100793          	li	a5,1
    80006108:	00005717          	auipc	a4,0x5
    8000610c:	54f702a3          	sb	a5,1349(a4) # 8000b64d <_ZL9finishedA>
}
    80006110:	01813083          	ld	ra,24(sp)
    80006114:	01013403          	ld	s0,16(sp)
    80006118:	00813483          	ld	s1,8(sp)
    8000611c:	00013903          	ld	s2,0(sp)
    80006120:	02010113          	addi	sp,sp,32
    80006124:	00008067          	ret

0000000080006128 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006128:	fd010113          	addi	sp,sp,-48
    8000612c:	02113423          	sd	ra,40(sp)
    80006130:	02813023          	sd	s0,32(sp)
    80006134:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006138:	00000613          	li	a2,0
    8000613c:	00000597          	auipc	a1,0x0
    80006140:	f2058593          	addi	a1,a1,-224 # 8000605c <_ZL11workerBodyAPv>
    80006144:	fd040513          	addi	a0,s0,-48
    80006148:	ffffb097          	auipc	ra,0xffffb
    8000614c:	1a4080e7          	jalr	420(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006150:	00003517          	auipc	a0,0x3
    80006154:	1c850513          	addi	a0,a0,456 # 80009318 <CONSOLE_STATUS+0x308>
    80006158:	fffff097          	auipc	ra,0xfffff
    8000615c:	1a8080e7          	jalr	424(ra) # 80005300 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006160:	00000613          	li	a2,0
    80006164:	00000597          	auipc	a1,0x0
    80006168:	e1458593          	addi	a1,a1,-492 # 80005f78 <_ZL11workerBodyBPv>
    8000616c:	fd840513          	addi	a0,s0,-40
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	17c080e7          	jalr	380(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006178:	00003517          	auipc	a0,0x3
    8000617c:	1b850513          	addi	a0,a0,440 # 80009330 <CONSOLE_STATUS+0x320>
    80006180:	fffff097          	auipc	ra,0xfffff
    80006184:	180080e7          	jalr	384(ra) # 80005300 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006188:	00000613          	li	a2,0
    8000618c:	00000597          	auipc	a1,0x0
    80006190:	c6c58593          	addi	a1,a1,-916 # 80005df8 <_ZL11workerBodyCPv>
    80006194:	fe040513          	addi	a0,s0,-32
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	154080e7          	jalr	340(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800061a0:	00003517          	auipc	a0,0x3
    800061a4:	1a850513          	addi	a0,a0,424 # 80009348 <CONSOLE_STATUS+0x338>
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	158080e7          	jalr	344(ra) # 80005300 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800061b0:	00000613          	li	a2,0
    800061b4:	00000597          	auipc	a1,0x0
    800061b8:	afc58593          	addi	a1,a1,-1284 # 80005cb0 <_ZL11workerBodyDPv>
    800061bc:	fe840513          	addi	a0,s0,-24
    800061c0:	ffffb097          	auipc	ra,0xffffb
    800061c4:	12c080e7          	jalr	300(ra) # 800012ec <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800061c8:	00003517          	auipc	a0,0x3
    800061cc:	19850513          	addi	a0,a0,408 # 80009360 <CONSOLE_STATUS+0x350>
    800061d0:	fffff097          	auipc	ra,0xfffff
    800061d4:	130080e7          	jalr	304(ra) # 80005300 <_Z11printStringPKc>
    800061d8:	00c0006f          	j	800061e4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800061dc:	ffffb097          	auipc	ra,0xffffb
    800061e0:	1fc080e7          	jalr	508(ra) # 800013d8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800061e4:	00005797          	auipc	a5,0x5
    800061e8:	4697c783          	lbu	a5,1129(a5) # 8000b64d <_ZL9finishedA>
    800061ec:	fe0788e3          	beqz	a5,800061dc <_Z16System_Mode_testv+0xb4>
    800061f0:	00005797          	auipc	a5,0x5
    800061f4:	45c7c783          	lbu	a5,1116(a5) # 8000b64c <_ZL9finishedB>
    800061f8:	fe0782e3          	beqz	a5,800061dc <_Z16System_Mode_testv+0xb4>
    800061fc:	00005797          	auipc	a5,0x5
    80006200:	44f7c783          	lbu	a5,1103(a5) # 8000b64b <_ZL9finishedC>
    80006204:	fc078ce3          	beqz	a5,800061dc <_Z16System_Mode_testv+0xb4>
    80006208:	00005797          	auipc	a5,0x5
    8000620c:	4427c783          	lbu	a5,1090(a5) # 8000b64a <_ZL9finishedD>
    80006210:	fc0786e3          	beqz	a5,800061dc <_Z16System_Mode_testv+0xb4>
    }

}
    80006214:	02813083          	ld	ra,40(sp)
    80006218:	02013403          	ld	s0,32(sp)
    8000621c:	03010113          	addi	sp,sp,48
    80006220:	00008067          	ret

0000000080006224 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006224:	fe010113          	addi	sp,sp,-32
    80006228:	00113c23          	sd	ra,24(sp)
    8000622c:	00813823          	sd	s0,16(sp)
    80006230:	00913423          	sd	s1,8(sp)
    80006234:	01213023          	sd	s2,0(sp)
    80006238:	02010413          	addi	s0,sp,32
    8000623c:	00050493          	mv	s1,a0
    80006240:	00058913          	mv	s2,a1
    80006244:	0015879b          	addiw	a5,a1,1
    80006248:	0007851b          	sext.w	a0,a5
    8000624c:	00f4a023          	sw	a5,0(s1)
    80006250:	0004a823          	sw	zero,16(s1)
    80006254:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006258:	00251513          	slli	a0,a0,0x2
    8000625c:	ffffb097          	auipc	ra,0xffffb
    80006260:	fe0080e7          	jalr	-32(ra) # 8000123c <_Z9mem_allocm>
    80006264:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006268:	00000593          	li	a1,0
    8000626c:	02048513          	addi	a0,s1,32
    80006270:	ffffb097          	auipc	ra,0xffffb
    80006274:	188080e7          	jalr	392(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&spaceAvailable, _cap);
    80006278:	00090593          	mv	a1,s2
    8000627c:	01848513          	addi	a0,s1,24
    80006280:	ffffb097          	auipc	ra,0xffffb
    80006284:	178080e7          	jalr	376(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexHead, 1);
    80006288:	00100593          	li	a1,1
    8000628c:	02848513          	addi	a0,s1,40
    80006290:	ffffb097          	auipc	ra,0xffffb
    80006294:	168080e7          	jalr	360(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
    sem_open(&mutexTail, 1);
    80006298:	00100593          	li	a1,1
    8000629c:	03048513          	addi	a0,s1,48
    800062a0:	ffffb097          	auipc	ra,0xffffb
    800062a4:	158080e7          	jalr	344(ra) # 800013f8 <_Z8sem_openPPN3ABI9SemaphoreEj>
}
    800062a8:	01813083          	ld	ra,24(sp)
    800062ac:	01013403          	ld	s0,16(sp)
    800062b0:	00813483          	ld	s1,8(sp)
    800062b4:	00013903          	ld	s2,0(sp)
    800062b8:	02010113          	addi	sp,sp,32
    800062bc:	00008067          	ret

00000000800062c0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800062c0:	fe010113          	addi	sp,sp,-32
    800062c4:	00113c23          	sd	ra,24(sp)
    800062c8:	00813823          	sd	s0,16(sp)
    800062cc:	00913423          	sd	s1,8(sp)
    800062d0:	01213023          	sd	s2,0(sp)
    800062d4:	02010413          	addi	s0,sp,32
    800062d8:	00050493          	mv	s1,a0
    800062dc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800062e0:	01853503          	ld	a0,24(a0)
    800062e4:	ffffb097          	auipc	ra,0xffffb
    800062e8:	178080e7          	jalr	376(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexTail);
    800062ec:	0304b503          	ld	a0,48(s1)
    800062f0:	ffffb097          	auipc	ra,0xffffb
    800062f4:	16c080e7          	jalr	364(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    buffer[tail] = val;
    800062f8:	0084b783          	ld	a5,8(s1)
    800062fc:	0144a703          	lw	a4,20(s1)
    80006300:	00271713          	slli	a4,a4,0x2
    80006304:	00e787b3          	add	a5,a5,a4
    80006308:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000630c:	0144a783          	lw	a5,20(s1)
    80006310:	0017879b          	addiw	a5,a5,1
    80006314:	0004a703          	lw	a4,0(s1)
    80006318:	02e7e7bb          	remw	a5,a5,a4
    8000631c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006320:	0304b503          	ld	a0,48(s1)
    80006324:	ffffb097          	auipc	ra,0xffffb
    80006328:	164080e7          	jalr	356(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(itemAvailable);
    8000632c:	0204b503          	ld	a0,32(s1)
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	158080e7          	jalr	344(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

}
    80006338:	01813083          	ld	ra,24(sp)
    8000633c:	01013403          	ld	s0,16(sp)
    80006340:	00813483          	ld	s1,8(sp)
    80006344:	00013903          	ld	s2,0(sp)
    80006348:	02010113          	addi	sp,sp,32
    8000634c:	00008067          	ret

0000000080006350 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006350:	fe010113          	addi	sp,sp,-32
    80006354:	00113c23          	sd	ra,24(sp)
    80006358:	00813823          	sd	s0,16(sp)
    8000635c:	00913423          	sd	s1,8(sp)
    80006360:	01213023          	sd	s2,0(sp)
    80006364:	02010413          	addi	s0,sp,32
    80006368:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000636c:	02053503          	ld	a0,32(a0)
    80006370:	ffffb097          	auipc	ra,0xffffb
    80006374:	0ec080e7          	jalr	236(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    sem_wait(mutexHead);
    80006378:	0284b503          	ld	a0,40(s1)
    8000637c:	ffffb097          	auipc	ra,0xffffb
    80006380:	0e0080e7          	jalr	224(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    int ret = buffer[head];
    80006384:	0084b703          	ld	a4,8(s1)
    80006388:	0104a783          	lw	a5,16(s1)
    8000638c:	00279693          	slli	a3,a5,0x2
    80006390:	00d70733          	add	a4,a4,a3
    80006394:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006398:	0017879b          	addiw	a5,a5,1
    8000639c:	0004a703          	lw	a4,0(s1)
    800063a0:	02e7e7bb          	remw	a5,a5,a4
    800063a4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800063a8:	0284b503          	ld	a0,40(s1)
    800063ac:	ffffb097          	auipc	ra,0xffffb
    800063b0:	0dc080e7          	jalr	220(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    sem_signal(spaceAvailable);
    800063b4:	0184b503          	ld	a0,24(s1)
    800063b8:	ffffb097          	auipc	ra,0xffffb
    800063bc:	0d0080e7          	jalr	208(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    800063c0:	00090513          	mv	a0,s2
    800063c4:	01813083          	ld	ra,24(sp)
    800063c8:	01013403          	ld	s0,16(sp)
    800063cc:	00813483          	ld	s1,8(sp)
    800063d0:	00013903          	ld	s2,0(sp)
    800063d4:	02010113          	addi	sp,sp,32
    800063d8:	00008067          	ret

00000000800063dc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800063dc:	fe010113          	addi	sp,sp,-32
    800063e0:	00113c23          	sd	ra,24(sp)
    800063e4:	00813823          	sd	s0,16(sp)
    800063e8:	00913423          	sd	s1,8(sp)
    800063ec:	01213023          	sd	s2,0(sp)
    800063f0:	02010413          	addi	s0,sp,32
    800063f4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800063f8:	02853503          	ld	a0,40(a0)
    800063fc:	ffffb097          	auipc	ra,0xffffb
    80006400:	060080e7          	jalr	96(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>
    sem_wait(mutexTail);
    80006404:	0304b503          	ld	a0,48(s1)
    80006408:	ffffb097          	auipc	ra,0xffffb
    8000640c:	054080e7          	jalr	84(ra) # 8000145c <_Z8sem_waitPN3ABI9SemaphoreE>

    if (tail >= head) {
    80006410:	0144a783          	lw	a5,20(s1)
    80006414:	0104a903          	lw	s2,16(s1)
    80006418:	0327ce63          	blt	a5,s2,80006454 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000641c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006420:	0304b503          	ld	a0,48(s1)
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	064080e7          	jalr	100(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>
    sem_signal(mutexHead);
    8000642c:	0284b503          	ld	a0,40(s1)
    80006430:	ffffb097          	auipc	ra,0xffffb
    80006434:	058080e7          	jalr	88(ra) # 80001488 <_Z10sem_signalPN3ABI9SemaphoreE>

    return ret;
}
    80006438:	00090513          	mv	a0,s2
    8000643c:	01813083          	ld	ra,24(sp)
    80006440:	01013403          	ld	s0,16(sp)
    80006444:	00813483          	ld	s1,8(sp)
    80006448:	00013903          	ld	s2,0(sp)
    8000644c:	02010113          	addi	sp,sp,32
    80006450:	00008067          	ret
        ret = cap - head + tail;
    80006454:	0004a703          	lw	a4,0(s1)
    80006458:	4127093b          	subw	s2,a4,s2
    8000645c:	00f9093b          	addw	s2,s2,a5
    80006460:	fc1ff06f          	j	80006420 <_ZN6Buffer6getCntEv+0x44>

0000000080006464 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006464:	fe010113          	addi	sp,sp,-32
    80006468:	00113c23          	sd	ra,24(sp)
    8000646c:	00813823          	sd	s0,16(sp)
    80006470:	00913423          	sd	s1,8(sp)
    80006474:	02010413          	addi	s0,sp,32
    80006478:	00050493          	mv	s1,a0
    putc('\n');
    8000647c:	00a00513          	li	a0,10
    80006480:	ffffb097          	auipc	ra,0xffffb
    80006484:	088080e7          	jalr	136(ra) # 80001508 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	f0050513          	addi	a0,a0,-256 # 80009388 <CONSOLE_STATUS+0x378>
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	e70080e7          	jalr	-400(ra) # 80005300 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006498:	00048513          	mv	a0,s1
    8000649c:	00000097          	auipc	ra,0x0
    800064a0:	f40080e7          	jalr	-192(ra) # 800063dc <_ZN6Buffer6getCntEv>
    800064a4:	02a05c63          	blez	a0,800064dc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800064a8:	0084b783          	ld	a5,8(s1)
    800064ac:	0104a703          	lw	a4,16(s1)
    800064b0:	00271713          	slli	a4,a4,0x2
    800064b4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800064b8:	0007c503          	lbu	a0,0(a5)
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	04c080e7          	jalr	76(ra) # 80001508 <_Z4putcc>
        head = (head + 1) % cap;
    800064c4:	0104a783          	lw	a5,16(s1)
    800064c8:	0017879b          	addiw	a5,a5,1
    800064cc:	0004a703          	lw	a4,0(s1)
    800064d0:	02e7e7bb          	remw	a5,a5,a4
    800064d4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800064d8:	fc1ff06f          	j	80006498 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800064dc:	02100513          	li	a0,33
    800064e0:	ffffb097          	auipc	ra,0xffffb
    800064e4:	028080e7          	jalr	40(ra) # 80001508 <_Z4putcc>
    putc('\n');
    800064e8:	00a00513          	li	a0,10
    800064ec:	ffffb097          	auipc	ra,0xffffb
    800064f0:	01c080e7          	jalr	28(ra) # 80001508 <_Z4putcc>
    mem_free(buffer);
    800064f4:	0084b503          	ld	a0,8(s1)
    800064f8:	ffffb097          	auipc	ra,0xffffb
    800064fc:	d80080e7          	jalr	-640(ra) # 80001278 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006500:	0204b503          	ld	a0,32(s1)
    80006504:	ffffb097          	auipc	ra,0xffffb
    80006508:	f2c080e7          	jalr	-212(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(spaceAvailable);
    8000650c:	0184b503          	ld	a0,24(s1)
    80006510:	ffffb097          	auipc	ra,0xffffb
    80006514:	f20080e7          	jalr	-224(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexTail);
    80006518:	0304b503          	ld	a0,48(s1)
    8000651c:	ffffb097          	auipc	ra,0xffffb
    80006520:	f14080e7          	jalr	-236(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
    sem_close(mutexHead);
    80006524:	0284b503          	ld	a0,40(s1)
    80006528:	ffffb097          	auipc	ra,0xffffb
    8000652c:	f08080e7          	jalr	-248(ra) # 80001430 <_Z9sem_closePN3ABI9SemaphoreE>
}
    80006530:	01813083          	ld	ra,24(sp)
    80006534:	01013403          	ld	s0,16(sp)
    80006538:	00813483          	ld	s1,8(sp)
    8000653c:	02010113          	addi	sp,sp,32
    80006540:	00008067          	ret

0000000080006544 <start>:
    80006544:	ff010113          	addi	sp,sp,-16
    80006548:	00813423          	sd	s0,8(sp)
    8000654c:	01010413          	addi	s0,sp,16
    80006550:	300027f3          	csrr	a5,mstatus
    80006554:	ffffe737          	lui	a4,0xffffe
    80006558:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1f4f>
    8000655c:	00e7f7b3          	and	a5,a5,a4
    80006560:	00001737          	lui	a4,0x1
    80006564:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006568:	00e7e7b3          	or	a5,a5,a4
    8000656c:	30079073          	csrw	mstatus,a5
    80006570:	00000797          	auipc	a5,0x0
    80006574:	16078793          	addi	a5,a5,352 # 800066d0 <system_main>
    80006578:	34179073          	csrw	mepc,a5
    8000657c:	00000793          	li	a5,0
    80006580:	18079073          	csrw	satp,a5
    80006584:	000107b7          	lui	a5,0x10
    80006588:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000658c:	30279073          	csrw	medeleg,a5
    80006590:	30379073          	csrw	mideleg,a5
    80006594:	104027f3          	csrr	a5,sie
    80006598:	2227e793          	ori	a5,a5,546
    8000659c:	10479073          	csrw	sie,a5
    800065a0:	fff00793          	li	a5,-1
    800065a4:	00a7d793          	srli	a5,a5,0xa
    800065a8:	3b079073          	csrw	pmpaddr0,a5
    800065ac:	00f00793          	li	a5,15
    800065b0:	3a079073          	csrw	pmpcfg0,a5
    800065b4:	f14027f3          	csrr	a5,mhartid
    800065b8:	0200c737          	lui	a4,0x200c
    800065bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065c0:	0007869b          	sext.w	a3,a5
    800065c4:	00269713          	slli	a4,a3,0x2
    800065c8:	000f4637          	lui	a2,0xf4
    800065cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065d0:	00d70733          	add	a4,a4,a3
    800065d4:	0037979b          	slliw	a5,a5,0x3
    800065d8:	020046b7          	lui	a3,0x2004
    800065dc:	00d787b3          	add	a5,a5,a3
    800065e0:	00c585b3          	add	a1,a1,a2
    800065e4:	00371693          	slli	a3,a4,0x3
    800065e8:	00005717          	auipc	a4,0x5
    800065ec:	06870713          	addi	a4,a4,104 # 8000b650 <timer_scratch>
    800065f0:	00b7b023          	sd	a1,0(a5)
    800065f4:	00d70733          	add	a4,a4,a3
    800065f8:	00f73c23          	sd	a5,24(a4)
    800065fc:	02c73023          	sd	a2,32(a4)
    80006600:	34071073          	csrw	mscratch,a4
    80006604:	00000797          	auipc	a5,0x0
    80006608:	6ec78793          	addi	a5,a5,1772 # 80006cf0 <timervec>
    8000660c:	30579073          	csrw	mtvec,a5
    80006610:	300027f3          	csrr	a5,mstatus
    80006614:	0087e793          	ori	a5,a5,8
    80006618:	30079073          	csrw	mstatus,a5
    8000661c:	304027f3          	csrr	a5,mie
    80006620:	0807e793          	ori	a5,a5,128
    80006624:	30479073          	csrw	mie,a5
    80006628:	f14027f3          	csrr	a5,mhartid
    8000662c:	0007879b          	sext.w	a5,a5
    80006630:	00078213          	mv	tp,a5
    80006634:	30200073          	mret
    80006638:	00813403          	ld	s0,8(sp)
    8000663c:	01010113          	addi	sp,sp,16
    80006640:	00008067          	ret

0000000080006644 <timerinit>:
    80006644:	ff010113          	addi	sp,sp,-16
    80006648:	00813423          	sd	s0,8(sp)
    8000664c:	01010413          	addi	s0,sp,16
    80006650:	f14027f3          	csrr	a5,mhartid
    80006654:	0200c737          	lui	a4,0x200c
    80006658:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000665c:	0007869b          	sext.w	a3,a5
    80006660:	00269713          	slli	a4,a3,0x2
    80006664:	000f4637          	lui	a2,0xf4
    80006668:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000666c:	00d70733          	add	a4,a4,a3
    80006670:	0037979b          	slliw	a5,a5,0x3
    80006674:	020046b7          	lui	a3,0x2004
    80006678:	00d787b3          	add	a5,a5,a3
    8000667c:	00c585b3          	add	a1,a1,a2
    80006680:	00371693          	slli	a3,a4,0x3
    80006684:	00005717          	auipc	a4,0x5
    80006688:	fcc70713          	addi	a4,a4,-52 # 8000b650 <timer_scratch>
    8000668c:	00b7b023          	sd	a1,0(a5)
    80006690:	00d70733          	add	a4,a4,a3
    80006694:	00f73c23          	sd	a5,24(a4)
    80006698:	02c73023          	sd	a2,32(a4)
    8000669c:	34071073          	csrw	mscratch,a4
    800066a0:	00000797          	auipc	a5,0x0
    800066a4:	65078793          	addi	a5,a5,1616 # 80006cf0 <timervec>
    800066a8:	30579073          	csrw	mtvec,a5
    800066ac:	300027f3          	csrr	a5,mstatus
    800066b0:	0087e793          	ori	a5,a5,8
    800066b4:	30079073          	csrw	mstatus,a5
    800066b8:	304027f3          	csrr	a5,mie
    800066bc:	0807e793          	ori	a5,a5,128
    800066c0:	30479073          	csrw	mie,a5
    800066c4:	00813403          	ld	s0,8(sp)
    800066c8:	01010113          	addi	sp,sp,16
    800066cc:	00008067          	ret

00000000800066d0 <system_main>:
    800066d0:	fe010113          	addi	sp,sp,-32
    800066d4:	00813823          	sd	s0,16(sp)
    800066d8:	00913423          	sd	s1,8(sp)
    800066dc:	00113c23          	sd	ra,24(sp)
    800066e0:	02010413          	addi	s0,sp,32
    800066e4:	00000097          	auipc	ra,0x0
    800066e8:	0c4080e7          	jalr	196(ra) # 800067a8 <cpuid>
    800066ec:	00005497          	auipc	s1,0x5
    800066f0:	ea448493          	addi	s1,s1,-348 # 8000b590 <started>
    800066f4:	02050263          	beqz	a0,80006718 <system_main+0x48>
    800066f8:	0004a783          	lw	a5,0(s1)
    800066fc:	0007879b          	sext.w	a5,a5
    80006700:	fe078ce3          	beqz	a5,800066f8 <system_main+0x28>
    80006704:	0ff0000f          	fence
    80006708:	00003517          	auipc	a0,0x3
    8000670c:	f1050513          	addi	a0,a0,-240 # 80009618 <CONSOLE_STATUS+0x608>
    80006710:	00001097          	auipc	ra,0x1
    80006714:	a7c080e7          	jalr	-1412(ra) # 8000718c <panic>
    80006718:	00001097          	auipc	ra,0x1
    8000671c:	9d0080e7          	jalr	-1584(ra) # 800070e8 <consoleinit>
    80006720:	00001097          	auipc	ra,0x1
    80006724:	15c080e7          	jalr	348(ra) # 8000787c <printfinit>
    80006728:	00003517          	auipc	a0,0x3
    8000672c:	de850513          	addi	a0,a0,-536 # 80009510 <CONSOLE_STATUS+0x500>
    80006730:	00001097          	auipc	ra,0x1
    80006734:	ab8080e7          	jalr	-1352(ra) # 800071e8 <__printf>
    80006738:	00003517          	auipc	a0,0x3
    8000673c:	eb050513          	addi	a0,a0,-336 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006740:	00001097          	auipc	ra,0x1
    80006744:	aa8080e7          	jalr	-1368(ra) # 800071e8 <__printf>
    80006748:	00003517          	auipc	a0,0x3
    8000674c:	dc850513          	addi	a0,a0,-568 # 80009510 <CONSOLE_STATUS+0x500>
    80006750:	00001097          	auipc	ra,0x1
    80006754:	a98080e7          	jalr	-1384(ra) # 800071e8 <__printf>
    80006758:	00001097          	auipc	ra,0x1
    8000675c:	4b0080e7          	jalr	1200(ra) # 80007c08 <kinit>
    80006760:	00000097          	auipc	ra,0x0
    80006764:	148080e7          	jalr	328(ra) # 800068a8 <trapinit>
    80006768:	00000097          	auipc	ra,0x0
    8000676c:	16c080e7          	jalr	364(ra) # 800068d4 <trapinithart>
    80006770:	00000097          	auipc	ra,0x0
    80006774:	5c0080e7          	jalr	1472(ra) # 80006d30 <plicinit>
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	5e0080e7          	jalr	1504(ra) # 80006d58 <plicinithart>
    80006780:	00000097          	auipc	ra,0x0
    80006784:	078080e7          	jalr	120(ra) # 800067f8 <userinit>
    80006788:	0ff0000f          	fence
    8000678c:	00100793          	li	a5,1
    80006790:	00003517          	auipc	a0,0x3
    80006794:	e7050513          	addi	a0,a0,-400 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006798:	00f4a023          	sw	a5,0(s1)
    8000679c:	00001097          	auipc	ra,0x1
    800067a0:	a4c080e7          	jalr	-1460(ra) # 800071e8 <__printf>
    800067a4:	0000006f          	j	800067a4 <system_main+0xd4>

00000000800067a8 <cpuid>:
    800067a8:	ff010113          	addi	sp,sp,-16
    800067ac:	00813423          	sd	s0,8(sp)
    800067b0:	01010413          	addi	s0,sp,16
    800067b4:	00020513          	mv	a0,tp
    800067b8:	00813403          	ld	s0,8(sp)
    800067bc:	0005051b          	sext.w	a0,a0
    800067c0:	01010113          	addi	sp,sp,16
    800067c4:	00008067          	ret

00000000800067c8 <mycpu>:
    800067c8:	ff010113          	addi	sp,sp,-16
    800067cc:	00813423          	sd	s0,8(sp)
    800067d0:	01010413          	addi	s0,sp,16
    800067d4:	00020793          	mv	a5,tp
    800067d8:	00813403          	ld	s0,8(sp)
    800067dc:	0007879b          	sext.w	a5,a5
    800067e0:	00779793          	slli	a5,a5,0x7
    800067e4:	00006517          	auipc	a0,0x6
    800067e8:	e9c50513          	addi	a0,a0,-356 # 8000c680 <cpus>
    800067ec:	00f50533          	add	a0,a0,a5
    800067f0:	01010113          	addi	sp,sp,16
    800067f4:	00008067          	ret

00000000800067f8 <userinit>:
    800067f8:	ff010113          	addi	sp,sp,-16
    800067fc:	00813423          	sd	s0,8(sp)
    80006800:	01010413          	addi	s0,sp,16
    80006804:	00813403          	ld	s0,8(sp)
    80006808:	01010113          	addi	sp,sp,16
    8000680c:	ffffc317          	auipc	t1,0xffffc
    80006810:	25430067          	jr	596(t1) # 80002a60 <main>

0000000080006814 <either_copyout>:
    80006814:	ff010113          	addi	sp,sp,-16
    80006818:	00813023          	sd	s0,0(sp)
    8000681c:	00113423          	sd	ra,8(sp)
    80006820:	01010413          	addi	s0,sp,16
    80006824:	02051663          	bnez	a0,80006850 <either_copyout+0x3c>
    80006828:	00058513          	mv	a0,a1
    8000682c:	00060593          	mv	a1,a2
    80006830:	0006861b          	sext.w	a2,a3
    80006834:	00002097          	auipc	ra,0x2
    80006838:	c60080e7          	jalr	-928(ra) # 80008494 <__memmove>
    8000683c:	00813083          	ld	ra,8(sp)
    80006840:	00013403          	ld	s0,0(sp)
    80006844:	00000513          	li	a0,0
    80006848:	01010113          	addi	sp,sp,16
    8000684c:	00008067          	ret
    80006850:	00003517          	auipc	a0,0x3
    80006854:	df050513          	addi	a0,a0,-528 # 80009640 <CONSOLE_STATUS+0x630>
    80006858:	00001097          	auipc	ra,0x1
    8000685c:	934080e7          	jalr	-1740(ra) # 8000718c <panic>

0000000080006860 <either_copyin>:
    80006860:	ff010113          	addi	sp,sp,-16
    80006864:	00813023          	sd	s0,0(sp)
    80006868:	00113423          	sd	ra,8(sp)
    8000686c:	01010413          	addi	s0,sp,16
    80006870:	02059463          	bnez	a1,80006898 <either_copyin+0x38>
    80006874:	00060593          	mv	a1,a2
    80006878:	0006861b          	sext.w	a2,a3
    8000687c:	00002097          	auipc	ra,0x2
    80006880:	c18080e7          	jalr	-1000(ra) # 80008494 <__memmove>
    80006884:	00813083          	ld	ra,8(sp)
    80006888:	00013403          	ld	s0,0(sp)
    8000688c:	00000513          	li	a0,0
    80006890:	01010113          	addi	sp,sp,16
    80006894:	00008067          	ret
    80006898:	00003517          	auipc	a0,0x3
    8000689c:	dd050513          	addi	a0,a0,-560 # 80009668 <CONSOLE_STATUS+0x658>
    800068a0:	00001097          	auipc	ra,0x1
    800068a4:	8ec080e7          	jalr	-1812(ra) # 8000718c <panic>

00000000800068a8 <trapinit>:
    800068a8:	ff010113          	addi	sp,sp,-16
    800068ac:	00813423          	sd	s0,8(sp)
    800068b0:	01010413          	addi	s0,sp,16
    800068b4:	00813403          	ld	s0,8(sp)
    800068b8:	00003597          	auipc	a1,0x3
    800068bc:	dd858593          	addi	a1,a1,-552 # 80009690 <CONSOLE_STATUS+0x680>
    800068c0:	00006517          	auipc	a0,0x6
    800068c4:	e4050513          	addi	a0,a0,-448 # 8000c700 <tickslock>
    800068c8:	01010113          	addi	sp,sp,16
    800068cc:	00001317          	auipc	t1,0x1
    800068d0:	5cc30067          	jr	1484(t1) # 80007e98 <initlock>

00000000800068d4 <trapinithart>:
    800068d4:	ff010113          	addi	sp,sp,-16
    800068d8:	00813423          	sd	s0,8(sp)
    800068dc:	01010413          	addi	s0,sp,16
    800068e0:	00000797          	auipc	a5,0x0
    800068e4:	30078793          	addi	a5,a5,768 # 80006be0 <kernelvec>
    800068e8:	10579073          	csrw	stvec,a5
    800068ec:	00813403          	ld	s0,8(sp)
    800068f0:	01010113          	addi	sp,sp,16
    800068f4:	00008067          	ret

00000000800068f8 <usertrap>:
    800068f8:	ff010113          	addi	sp,sp,-16
    800068fc:	00813423          	sd	s0,8(sp)
    80006900:	01010413          	addi	s0,sp,16
    80006904:	00813403          	ld	s0,8(sp)
    80006908:	01010113          	addi	sp,sp,16
    8000690c:	00008067          	ret

0000000080006910 <usertrapret>:
    80006910:	ff010113          	addi	sp,sp,-16
    80006914:	00813423          	sd	s0,8(sp)
    80006918:	01010413          	addi	s0,sp,16
    8000691c:	00813403          	ld	s0,8(sp)
    80006920:	01010113          	addi	sp,sp,16
    80006924:	00008067          	ret

0000000080006928 <kerneltrap>:
    80006928:	fe010113          	addi	sp,sp,-32
    8000692c:	00813823          	sd	s0,16(sp)
    80006930:	00113c23          	sd	ra,24(sp)
    80006934:	00913423          	sd	s1,8(sp)
    80006938:	02010413          	addi	s0,sp,32
    8000693c:	142025f3          	csrr	a1,scause
    80006940:	100027f3          	csrr	a5,sstatus
    80006944:	0027f793          	andi	a5,a5,2
    80006948:	10079c63          	bnez	a5,80006a60 <kerneltrap+0x138>
    8000694c:	142027f3          	csrr	a5,scause
    80006950:	0207ce63          	bltz	a5,8000698c <kerneltrap+0x64>
    80006954:	00003517          	auipc	a0,0x3
    80006958:	d8450513          	addi	a0,a0,-636 # 800096d8 <CONSOLE_STATUS+0x6c8>
    8000695c:	00001097          	auipc	ra,0x1
    80006960:	88c080e7          	jalr	-1908(ra) # 800071e8 <__printf>
    80006964:	141025f3          	csrr	a1,sepc
    80006968:	14302673          	csrr	a2,stval
    8000696c:	00003517          	auipc	a0,0x3
    80006970:	d7c50513          	addi	a0,a0,-644 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80006974:	00001097          	auipc	ra,0x1
    80006978:	874080e7          	jalr	-1932(ra) # 800071e8 <__printf>
    8000697c:	00003517          	auipc	a0,0x3
    80006980:	d8450513          	addi	a0,a0,-636 # 80009700 <CONSOLE_STATUS+0x6f0>
    80006984:	00001097          	auipc	ra,0x1
    80006988:	808080e7          	jalr	-2040(ra) # 8000718c <panic>
    8000698c:	0ff7f713          	andi	a4,a5,255
    80006990:	00900693          	li	a3,9
    80006994:	04d70063          	beq	a4,a3,800069d4 <kerneltrap+0xac>
    80006998:	fff00713          	li	a4,-1
    8000699c:	03f71713          	slli	a4,a4,0x3f
    800069a0:	00170713          	addi	a4,a4,1
    800069a4:	fae798e3          	bne	a5,a4,80006954 <kerneltrap+0x2c>
    800069a8:	00000097          	auipc	ra,0x0
    800069ac:	e00080e7          	jalr	-512(ra) # 800067a8 <cpuid>
    800069b0:	06050663          	beqz	a0,80006a1c <kerneltrap+0xf4>
    800069b4:	144027f3          	csrr	a5,sip
    800069b8:	ffd7f793          	andi	a5,a5,-3
    800069bc:	14479073          	csrw	sip,a5
    800069c0:	01813083          	ld	ra,24(sp)
    800069c4:	01013403          	ld	s0,16(sp)
    800069c8:	00813483          	ld	s1,8(sp)
    800069cc:	02010113          	addi	sp,sp,32
    800069d0:	00008067          	ret
    800069d4:	00000097          	auipc	ra,0x0
    800069d8:	3d0080e7          	jalr	976(ra) # 80006da4 <plic_claim>
    800069dc:	00a00793          	li	a5,10
    800069e0:	00050493          	mv	s1,a0
    800069e4:	06f50863          	beq	a0,a5,80006a54 <kerneltrap+0x12c>
    800069e8:	fc050ce3          	beqz	a0,800069c0 <kerneltrap+0x98>
    800069ec:	00050593          	mv	a1,a0
    800069f0:	00003517          	auipc	a0,0x3
    800069f4:	cc850513          	addi	a0,a0,-824 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	7f0080e7          	jalr	2032(ra) # 800071e8 <__printf>
    80006a00:	01013403          	ld	s0,16(sp)
    80006a04:	01813083          	ld	ra,24(sp)
    80006a08:	00048513          	mv	a0,s1
    80006a0c:	00813483          	ld	s1,8(sp)
    80006a10:	02010113          	addi	sp,sp,32
    80006a14:	00000317          	auipc	t1,0x0
    80006a18:	3c830067          	jr	968(t1) # 80006ddc <plic_complete>
    80006a1c:	00006517          	auipc	a0,0x6
    80006a20:	ce450513          	addi	a0,a0,-796 # 8000c700 <tickslock>
    80006a24:	00001097          	auipc	ra,0x1
    80006a28:	498080e7          	jalr	1176(ra) # 80007ebc <acquire>
    80006a2c:	00005717          	auipc	a4,0x5
    80006a30:	b6870713          	addi	a4,a4,-1176 # 8000b594 <ticks>
    80006a34:	00072783          	lw	a5,0(a4)
    80006a38:	00006517          	auipc	a0,0x6
    80006a3c:	cc850513          	addi	a0,a0,-824 # 8000c700 <tickslock>
    80006a40:	0017879b          	addiw	a5,a5,1
    80006a44:	00f72023          	sw	a5,0(a4)
    80006a48:	00001097          	auipc	ra,0x1
    80006a4c:	540080e7          	jalr	1344(ra) # 80007f88 <release>
    80006a50:	f65ff06f          	j	800069b4 <kerneltrap+0x8c>
    80006a54:	00001097          	auipc	ra,0x1
    80006a58:	09c080e7          	jalr	156(ra) # 80007af0 <uartintr>
    80006a5c:	fa5ff06f          	j	80006a00 <kerneltrap+0xd8>
    80006a60:	00003517          	auipc	a0,0x3
    80006a64:	c3850513          	addi	a0,a0,-968 # 80009698 <CONSOLE_STATUS+0x688>
    80006a68:	00000097          	auipc	ra,0x0
    80006a6c:	724080e7          	jalr	1828(ra) # 8000718c <panic>

0000000080006a70 <clockintr>:
    80006a70:	fe010113          	addi	sp,sp,-32
    80006a74:	00813823          	sd	s0,16(sp)
    80006a78:	00913423          	sd	s1,8(sp)
    80006a7c:	00113c23          	sd	ra,24(sp)
    80006a80:	02010413          	addi	s0,sp,32
    80006a84:	00006497          	auipc	s1,0x6
    80006a88:	c7c48493          	addi	s1,s1,-900 # 8000c700 <tickslock>
    80006a8c:	00048513          	mv	a0,s1
    80006a90:	00001097          	auipc	ra,0x1
    80006a94:	42c080e7          	jalr	1068(ra) # 80007ebc <acquire>
    80006a98:	00005717          	auipc	a4,0x5
    80006a9c:	afc70713          	addi	a4,a4,-1284 # 8000b594 <ticks>
    80006aa0:	00072783          	lw	a5,0(a4)
    80006aa4:	01013403          	ld	s0,16(sp)
    80006aa8:	01813083          	ld	ra,24(sp)
    80006aac:	00048513          	mv	a0,s1
    80006ab0:	0017879b          	addiw	a5,a5,1
    80006ab4:	00813483          	ld	s1,8(sp)
    80006ab8:	00f72023          	sw	a5,0(a4)
    80006abc:	02010113          	addi	sp,sp,32
    80006ac0:	00001317          	auipc	t1,0x1
    80006ac4:	4c830067          	jr	1224(t1) # 80007f88 <release>

0000000080006ac8 <devintr>:
    80006ac8:	142027f3          	csrr	a5,scause
    80006acc:	00000513          	li	a0,0
    80006ad0:	0007c463          	bltz	a5,80006ad8 <devintr+0x10>
    80006ad4:	00008067          	ret
    80006ad8:	fe010113          	addi	sp,sp,-32
    80006adc:	00813823          	sd	s0,16(sp)
    80006ae0:	00113c23          	sd	ra,24(sp)
    80006ae4:	00913423          	sd	s1,8(sp)
    80006ae8:	02010413          	addi	s0,sp,32
    80006aec:	0ff7f713          	andi	a4,a5,255
    80006af0:	00900693          	li	a3,9
    80006af4:	04d70c63          	beq	a4,a3,80006b4c <devintr+0x84>
    80006af8:	fff00713          	li	a4,-1
    80006afc:	03f71713          	slli	a4,a4,0x3f
    80006b00:	00170713          	addi	a4,a4,1
    80006b04:	00e78c63          	beq	a5,a4,80006b1c <devintr+0x54>
    80006b08:	01813083          	ld	ra,24(sp)
    80006b0c:	01013403          	ld	s0,16(sp)
    80006b10:	00813483          	ld	s1,8(sp)
    80006b14:	02010113          	addi	sp,sp,32
    80006b18:	00008067          	ret
    80006b1c:	00000097          	auipc	ra,0x0
    80006b20:	c8c080e7          	jalr	-884(ra) # 800067a8 <cpuid>
    80006b24:	06050663          	beqz	a0,80006b90 <devintr+0xc8>
    80006b28:	144027f3          	csrr	a5,sip
    80006b2c:	ffd7f793          	andi	a5,a5,-3
    80006b30:	14479073          	csrw	sip,a5
    80006b34:	01813083          	ld	ra,24(sp)
    80006b38:	01013403          	ld	s0,16(sp)
    80006b3c:	00813483          	ld	s1,8(sp)
    80006b40:	00200513          	li	a0,2
    80006b44:	02010113          	addi	sp,sp,32
    80006b48:	00008067          	ret
    80006b4c:	00000097          	auipc	ra,0x0
    80006b50:	258080e7          	jalr	600(ra) # 80006da4 <plic_claim>
    80006b54:	00a00793          	li	a5,10
    80006b58:	00050493          	mv	s1,a0
    80006b5c:	06f50663          	beq	a0,a5,80006bc8 <devintr+0x100>
    80006b60:	00100513          	li	a0,1
    80006b64:	fa0482e3          	beqz	s1,80006b08 <devintr+0x40>
    80006b68:	00048593          	mv	a1,s1
    80006b6c:	00003517          	auipc	a0,0x3
    80006b70:	b4c50513          	addi	a0,a0,-1204 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006b74:	00000097          	auipc	ra,0x0
    80006b78:	674080e7          	jalr	1652(ra) # 800071e8 <__printf>
    80006b7c:	00048513          	mv	a0,s1
    80006b80:	00000097          	auipc	ra,0x0
    80006b84:	25c080e7          	jalr	604(ra) # 80006ddc <plic_complete>
    80006b88:	00100513          	li	a0,1
    80006b8c:	f7dff06f          	j	80006b08 <devintr+0x40>
    80006b90:	00006517          	auipc	a0,0x6
    80006b94:	b7050513          	addi	a0,a0,-1168 # 8000c700 <tickslock>
    80006b98:	00001097          	auipc	ra,0x1
    80006b9c:	324080e7          	jalr	804(ra) # 80007ebc <acquire>
    80006ba0:	00005717          	auipc	a4,0x5
    80006ba4:	9f470713          	addi	a4,a4,-1548 # 8000b594 <ticks>
    80006ba8:	00072783          	lw	a5,0(a4)
    80006bac:	00006517          	auipc	a0,0x6
    80006bb0:	b5450513          	addi	a0,a0,-1196 # 8000c700 <tickslock>
    80006bb4:	0017879b          	addiw	a5,a5,1
    80006bb8:	00f72023          	sw	a5,0(a4)
    80006bbc:	00001097          	auipc	ra,0x1
    80006bc0:	3cc080e7          	jalr	972(ra) # 80007f88 <release>
    80006bc4:	f65ff06f          	j	80006b28 <devintr+0x60>
    80006bc8:	00001097          	auipc	ra,0x1
    80006bcc:	f28080e7          	jalr	-216(ra) # 80007af0 <uartintr>
    80006bd0:	fadff06f          	j	80006b7c <devintr+0xb4>
	...

0000000080006be0 <kernelvec>:
    80006be0:	f0010113          	addi	sp,sp,-256
    80006be4:	00113023          	sd	ra,0(sp)
    80006be8:	00213423          	sd	sp,8(sp)
    80006bec:	00313823          	sd	gp,16(sp)
    80006bf0:	00413c23          	sd	tp,24(sp)
    80006bf4:	02513023          	sd	t0,32(sp)
    80006bf8:	02613423          	sd	t1,40(sp)
    80006bfc:	02713823          	sd	t2,48(sp)
    80006c00:	02813c23          	sd	s0,56(sp)
    80006c04:	04913023          	sd	s1,64(sp)
    80006c08:	04a13423          	sd	a0,72(sp)
    80006c0c:	04b13823          	sd	a1,80(sp)
    80006c10:	04c13c23          	sd	a2,88(sp)
    80006c14:	06d13023          	sd	a3,96(sp)
    80006c18:	06e13423          	sd	a4,104(sp)
    80006c1c:	06f13823          	sd	a5,112(sp)
    80006c20:	07013c23          	sd	a6,120(sp)
    80006c24:	09113023          	sd	a7,128(sp)
    80006c28:	09213423          	sd	s2,136(sp)
    80006c2c:	09313823          	sd	s3,144(sp)
    80006c30:	09413c23          	sd	s4,152(sp)
    80006c34:	0b513023          	sd	s5,160(sp)
    80006c38:	0b613423          	sd	s6,168(sp)
    80006c3c:	0b713823          	sd	s7,176(sp)
    80006c40:	0b813c23          	sd	s8,184(sp)
    80006c44:	0d913023          	sd	s9,192(sp)
    80006c48:	0da13423          	sd	s10,200(sp)
    80006c4c:	0db13823          	sd	s11,208(sp)
    80006c50:	0dc13c23          	sd	t3,216(sp)
    80006c54:	0fd13023          	sd	t4,224(sp)
    80006c58:	0fe13423          	sd	t5,232(sp)
    80006c5c:	0ff13823          	sd	t6,240(sp)
    80006c60:	cc9ff0ef          	jal	ra,80006928 <kerneltrap>
    80006c64:	00013083          	ld	ra,0(sp)
    80006c68:	00813103          	ld	sp,8(sp)
    80006c6c:	01013183          	ld	gp,16(sp)
    80006c70:	02013283          	ld	t0,32(sp)
    80006c74:	02813303          	ld	t1,40(sp)
    80006c78:	03013383          	ld	t2,48(sp)
    80006c7c:	03813403          	ld	s0,56(sp)
    80006c80:	04013483          	ld	s1,64(sp)
    80006c84:	04813503          	ld	a0,72(sp)
    80006c88:	05013583          	ld	a1,80(sp)
    80006c8c:	05813603          	ld	a2,88(sp)
    80006c90:	06013683          	ld	a3,96(sp)
    80006c94:	06813703          	ld	a4,104(sp)
    80006c98:	07013783          	ld	a5,112(sp)
    80006c9c:	07813803          	ld	a6,120(sp)
    80006ca0:	08013883          	ld	a7,128(sp)
    80006ca4:	08813903          	ld	s2,136(sp)
    80006ca8:	09013983          	ld	s3,144(sp)
    80006cac:	09813a03          	ld	s4,152(sp)
    80006cb0:	0a013a83          	ld	s5,160(sp)
    80006cb4:	0a813b03          	ld	s6,168(sp)
    80006cb8:	0b013b83          	ld	s7,176(sp)
    80006cbc:	0b813c03          	ld	s8,184(sp)
    80006cc0:	0c013c83          	ld	s9,192(sp)
    80006cc4:	0c813d03          	ld	s10,200(sp)
    80006cc8:	0d013d83          	ld	s11,208(sp)
    80006ccc:	0d813e03          	ld	t3,216(sp)
    80006cd0:	0e013e83          	ld	t4,224(sp)
    80006cd4:	0e813f03          	ld	t5,232(sp)
    80006cd8:	0f013f83          	ld	t6,240(sp)
    80006cdc:	10010113          	addi	sp,sp,256
    80006ce0:	10200073          	sret
    80006ce4:	00000013          	nop
    80006ce8:	00000013          	nop
    80006cec:	00000013          	nop

0000000080006cf0 <timervec>:
    80006cf0:	34051573          	csrrw	a0,mscratch,a0
    80006cf4:	00b53023          	sd	a1,0(a0)
    80006cf8:	00c53423          	sd	a2,8(a0)
    80006cfc:	00d53823          	sd	a3,16(a0)
    80006d00:	01853583          	ld	a1,24(a0)
    80006d04:	02053603          	ld	a2,32(a0)
    80006d08:	0005b683          	ld	a3,0(a1)
    80006d0c:	00c686b3          	add	a3,a3,a2
    80006d10:	00d5b023          	sd	a3,0(a1)
    80006d14:	00200593          	li	a1,2
    80006d18:	14459073          	csrw	sip,a1
    80006d1c:	01053683          	ld	a3,16(a0)
    80006d20:	00853603          	ld	a2,8(a0)
    80006d24:	00053583          	ld	a1,0(a0)
    80006d28:	34051573          	csrrw	a0,mscratch,a0
    80006d2c:	30200073          	mret

0000000080006d30 <plicinit>:
    80006d30:	ff010113          	addi	sp,sp,-16
    80006d34:	00813423          	sd	s0,8(sp)
    80006d38:	01010413          	addi	s0,sp,16
    80006d3c:	00813403          	ld	s0,8(sp)
    80006d40:	0c0007b7          	lui	a5,0xc000
    80006d44:	00100713          	li	a4,1
    80006d48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006d4c:	00e7a223          	sw	a4,4(a5)
    80006d50:	01010113          	addi	sp,sp,16
    80006d54:	00008067          	ret

0000000080006d58 <plicinithart>:
    80006d58:	ff010113          	addi	sp,sp,-16
    80006d5c:	00813023          	sd	s0,0(sp)
    80006d60:	00113423          	sd	ra,8(sp)
    80006d64:	01010413          	addi	s0,sp,16
    80006d68:	00000097          	auipc	ra,0x0
    80006d6c:	a40080e7          	jalr	-1472(ra) # 800067a8 <cpuid>
    80006d70:	0085171b          	slliw	a4,a0,0x8
    80006d74:	0c0027b7          	lui	a5,0xc002
    80006d78:	00e787b3          	add	a5,a5,a4
    80006d7c:	40200713          	li	a4,1026
    80006d80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006d84:	00813083          	ld	ra,8(sp)
    80006d88:	00013403          	ld	s0,0(sp)
    80006d8c:	00d5151b          	slliw	a0,a0,0xd
    80006d90:	0c2017b7          	lui	a5,0xc201
    80006d94:	00a78533          	add	a0,a5,a0
    80006d98:	00052023          	sw	zero,0(a0)
    80006d9c:	01010113          	addi	sp,sp,16
    80006da0:	00008067          	ret

0000000080006da4 <plic_claim>:
    80006da4:	ff010113          	addi	sp,sp,-16
    80006da8:	00813023          	sd	s0,0(sp)
    80006dac:	00113423          	sd	ra,8(sp)
    80006db0:	01010413          	addi	s0,sp,16
    80006db4:	00000097          	auipc	ra,0x0
    80006db8:	9f4080e7          	jalr	-1548(ra) # 800067a8 <cpuid>
    80006dbc:	00813083          	ld	ra,8(sp)
    80006dc0:	00013403          	ld	s0,0(sp)
    80006dc4:	00d5151b          	slliw	a0,a0,0xd
    80006dc8:	0c2017b7          	lui	a5,0xc201
    80006dcc:	00a78533          	add	a0,a5,a0
    80006dd0:	00452503          	lw	a0,4(a0)
    80006dd4:	01010113          	addi	sp,sp,16
    80006dd8:	00008067          	ret

0000000080006ddc <plic_complete>:
    80006ddc:	fe010113          	addi	sp,sp,-32
    80006de0:	00813823          	sd	s0,16(sp)
    80006de4:	00913423          	sd	s1,8(sp)
    80006de8:	00113c23          	sd	ra,24(sp)
    80006dec:	02010413          	addi	s0,sp,32
    80006df0:	00050493          	mv	s1,a0
    80006df4:	00000097          	auipc	ra,0x0
    80006df8:	9b4080e7          	jalr	-1612(ra) # 800067a8 <cpuid>
    80006dfc:	01813083          	ld	ra,24(sp)
    80006e00:	01013403          	ld	s0,16(sp)
    80006e04:	00d5179b          	slliw	a5,a0,0xd
    80006e08:	0c201737          	lui	a4,0xc201
    80006e0c:	00f707b3          	add	a5,a4,a5
    80006e10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006e14:	00813483          	ld	s1,8(sp)
    80006e18:	02010113          	addi	sp,sp,32
    80006e1c:	00008067          	ret

0000000080006e20 <consolewrite>:
    80006e20:	fb010113          	addi	sp,sp,-80
    80006e24:	04813023          	sd	s0,64(sp)
    80006e28:	04113423          	sd	ra,72(sp)
    80006e2c:	02913c23          	sd	s1,56(sp)
    80006e30:	03213823          	sd	s2,48(sp)
    80006e34:	03313423          	sd	s3,40(sp)
    80006e38:	03413023          	sd	s4,32(sp)
    80006e3c:	01513c23          	sd	s5,24(sp)
    80006e40:	05010413          	addi	s0,sp,80
    80006e44:	06c05c63          	blez	a2,80006ebc <consolewrite+0x9c>
    80006e48:	00060993          	mv	s3,a2
    80006e4c:	00050a13          	mv	s4,a0
    80006e50:	00058493          	mv	s1,a1
    80006e54:	00000913          	li	s2,0
    80006e58:	fff00a93          	li	s5,-1
    80006e5c:	01c0006f          	j	80006e78 <consolewrite+0x58>
    80006e60:	fbf44503          	lbu	a0,-65(s0)
    80006e64:	0019091b          	addiw	s2,s2,1
    80006e68:	00148493          	addi	s1,s1,1
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	a9c080e7          	jalr	-1380(ra) # 80007908 <uartputc>
    80006e74:	03298063          	beq	s3,s2,80006e94 <consolewrite+0x74>
    80006e78:	00048613          	mv	a2,s1
    80006e7c:	00100693          	li	a3,1
    80006e80:	000a0593          	mv	a1,s4
    80006e84:	fbf40513          	addi	a0,s0,-65
    80006e88:	00000097          	auipc	ra,0x0
    80006e8c:	9d8080e7          	jalr	-1576(ra) # 80006860 <either_copyin>
    80006e90:	fd5518e3          	bne	a0,s5,80006e60 <consolewrite+0x40>
    80006e94:	04813083          	ld	ra,72(sp)
    80006e98:	04013403          	ld	s0,64(sp)
    80006e9c:	03813483          	ld	s1,56(sp)
    80006ea0:	02813983          	ld	s3,40(sp)
    80006ea4:	02013a03          	ld	s4,32(sp)
    80006ea8:	01813a83          	ld	s5,24(sp)
    80006eac:	00090513          	mv	a0,s2
    80006eb0:	03013903          	ld	s2,48(sp)
    80006eb4:	05010113          	addi	sp,sp,80
    80006eb8:	00008067          	ret
    80006ebc:	00000913          	li	s2,0
    80006ec0:	fd5ff06f          	j	80006e94 <consolewrite+0x74>

0000000080006ec4 <consoleread>:
    80006ec4:	f9010113          	addi	sp,sp,-112
    80006ec8:	06813023          	sd	s0,96(sp)
    80006ecc:	04913c23          	sd	s1,88(sp)
    80006ed0:	05213823          	sd	s2,80(sp)
    80006ed4:	05313423          	sd	s3,72(sp)
    80006ed8:	05413023          	sd	s4,64(sp)
    80006edc:	03513c23          	sd	s5,56(sp)
    80006ee0:	03613823          	sd	s6,48(sp)
    80006ee4:	03713423          	sd	s7,40(sp)
    80006ee8:	03813023          	sd	s8,32(sp)
    80006eec:	06113423          	sd	ra,104(sp)
    80006ef0:	01913c23          	sd	s9,24(sp)
    80006ef4:	07010413          	addi	s0,sp,112
    80006ef8:	00060b93          	mv	s7,a2
    80006efc:	00050913          	mv	s2,a0
    80006f00:	00058c13          	mv	s8,a1
    80006f04:	00060b1b          	sext.w	s6,a2
    80006f08:	00006497          	auipc	s1,0x6
    80006f0c:	82048493          	addi	s1,s1,-2016 # 8000c728 <cons>
    80006f10:	00400993          	li	s3,4
    80006f14:	fff00a13          	li	s4,-1
    80006f18:	00a00a93          	li	s5,10
    80006f1c:	05705e63          	blez	s7,80006f78 <consoleread+0xb4>
    80006f20:	09c4a703          	lw	a4,156(s1)
    80006f24:	0984a783          	lw	a5,152(s1)
    80006f28:	0007071b          	sext.w	a4,a4
    80006f2c:	08e78463          	beq	a5,a4,80006fb4 <consoleread+0xf0>
    80006f30:	07f7f713          	andi	a4,a5,127
    80006f34:	00e48733          	add	a4,s1,a4
    80006f38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006f3c:	0017869b          	addiw	a3,a5,1
    80006f40:	08d4ac23          	sw	a3,152(s1)
    80006f44:	00070c9b          	sext.w	s9,a4
    80006f48:	0b370663          	beq	a4,s3,80006ff4 <consoleread+0x130>
    80006f4c:	00100693          	li	a3,1
    80006f50:	f9f40613          	addi	a2,s0,-97
    80006f54:	000c0593          	mv	a1,s8
    80006f58:	00090513          	mv	a0,s2
    80006f5c:	f8e40fa3          	sb	a4,-97(s0)
    80006f60:	00000097          	auipc	ra,0x0
    80006f64:	8b4080e7          	jalr	-1868(ra) # 80006814 <either_copyout>
    80006f68:	01450863          	beq	a0,s4,80006f78 <consoleread+0xb4>
    80006f6c:	001c0c13          	addi	s8,s8,1
    80006f70:	fffb8b9b          	addiw	s7,s7,-1
    80006f74:	fb5c94e3          	bne	s9,s5,80006f1c <consoleread+0x58>
    80006f78:	000b851b          	sext.w	a0,s7
    80006f7c:	06813083          	ld	ra,104(sp)
    80006f80:	06013403          	ld	s0,96(sp)
    80006f84:	05813483          	ld	s1,88(sp)
    80006f88:	05013903          	ld	s2,80(sp)
    80006f8c:	04813983          	ld	s3,72(sp)
    80006f90:	04013a03          	ld	s4,64(sp)
    80006f94:	03813a83          	ld	s5,56(sp)
    80006f98:	02813b83          	ld	s7,40(sp)
    80006f9c:	02013c03          	ld	s8,32(sp)
    80006fa0:	01813c83          	ld	s9,24(sp)
    80006fa4:	40ab053b          	subw	a0,s6,a0
    80006fa8:	03013b03          	ld	s6,48(sp)
    80006fac:	07010113          	addi	sp,sp,112
    80006fb0:	00008067          	ret
    80006fb4:	00001097          	auipc	ra,0x1
    80006fb8:	1d8080e7          	jalr	472(ra) # 8000818c <push_on>
    80006fbc:	0984a703          	lw	a4,152(s1)
    80006fc0:	09c4a783          	lw	a5,156(s1)
    80006fc4:	0007879b          	sext.w	a5,a5
    80006fc8:	fef70ce3          	beq	a4,a5,80006fc0 <consoleread+0xfc>
    80006fcc:	00001097          	auipc	ra,0x1
    80006fd0:	234080e7          	jalr	564(ra) # 80008200 <pop_on>
    80006fd4:	0984a783          	lw	a5,152(s1)
    80006fd8:	07f7f713          	andi	a4,a5,127
    80006fdc:	00e48733          	add	a4,s1,a4
    80006fe0:	01874703          	lbu	a4,24(a4)
    80006fe4:	0017869b          	addiw	a3,a5,1
    80006fe8:	08d4ac23          	sw	a3,152(s1)
    80006fec:	00070c9b          	sext.w	s9,a4
    80006ff0:	f5371ee3          	bne	a4,s3,80006f4c <consoleread+0x88>
    80006ff4:	000b851b          	sext.w	a0,s7
    80006ff8:	f96bf2e3          	bgeu	s7,s6,80006f7c <consoleread+0xb8>
    80006ffc:	08f4ac23          	sw	a5,152(s1)
    80007000:	f7dff06f          	j	80006f7c <consoleread+0xb8>

0000000080007004 <consputc>:
    80007004:	10000793          	li	a5,256
    80007008:	00f50663          	beq	a0,a5,80007014 <consputc+0x10>
    8000700c:	00001317          	auipc	t1,0x1
    80007010:	9f430067          	jr	-1548(t1) # 80007a00 <uartputc_sync>
    80007014:	ff010113          	addi	sp,sp,-16
    80007018:	00113423          	sd	ra,8(sp)
    8000701c:	00813023          	sd	s0,0(sp)
    80007020:	01010413          	addi	s0,sp,16
    80007024:	00800513          	li	a0,8
    80007028:	00001097          	auipc	ra,0x1
    8000702c:	9d8080e7          	jalr	-1576(ra) # 80007a00 <uartputc_sync>
    80007030:	02000513          	li	a0,32
    80007034:	00001097          	auipc	ra,0x1
    80007038:	9cc080e7          	jalr	-1588(ra) # 80007a00 <uartputc_sync>
    8000703c:	00013403          	ld	s0,0(sp)
    80007040:	00813083          	ld	ra,8(sp)
    80007044:	00800513          	li	a0,8
    80007048:	01010113          	addi	sp,sp,16
    8000704c:	00001317          	auipc	t1,0x1
    80007050:	9b430067          	jr	-1612(t1) # 80007a00 <uartputc_sync>

0000000080007054 <consoleintr>:
    80007054:	fe010113          	addi	sp,sp,-32
    80007058:	00813823          	sd	s0,16(sp)
    8000705c:	00913423          	sd	s1,8(sp)
    80007060:	01213023          	sd	s2,0(sp)
    80007064:	00113c23          	sd	ra,24(sp)
    80007068:	02010413          	addi	s0,sp,32
    8000706c:	00005917          	auipc	s2,0x5
    80007070:	6bc90913          	addi	s2,s2,1724 # 8000c728 <cons>
    80007074:	00050493          	mv	s1,a0
    80007078:	00090513          	mv	a0,s2
    8000707c:	00001097          	auipc	ra,0x1
    80007080:	e40080e7          	jalr	-448(ra) # 80007ebc <acquire>
    80007084:	02048c63          	beqz	s1,800070bc <consoleintr+0x68>
    80007088:	0a092783          	lw	a5,160(s2)
    8000708c:	09892703          	lw	a4,152(s2)
    80007090:	07f00693          	li	a3,127
    80007094:	40e7873b          	subw	a4,a5,a4
    80007098:	02e6e263          	bltu	a3,a4,800070bc <consoleintr+0x68>
    8000709c:	00d00713          	li	a4,13
    800070a0:	04e48063          	beq	s1,a4,800070e0 <consoleintr+0x8c>
    800070a4:	07f7f713          	andi	a4,a5,127
    800070a8:	00e90733          	add	a4,s2,a4
    800070ac:	0017879b          	addiw	a5,a5,1
    800070b0:	0af92023          	sw	a5,160(s2)
    800070b4:	00970c23          	sb	s1,24(a4)
    800070b8:	08f92e23          	sw	a5,156(s2)
    800070bc:	01013403          	ld	s0,16(sp)
    800070c0:	01813083          	ld	ra,24(sp)
    800070c4:	00813483          	ld	s1,8(sp)
    800070c8:	00013903          	ld	s2,0(sp)
    800070cc:	00005517          	auipc	a0,0x5
    800070d0:	65c50513          	addi	a0,a0,1628 # 8000c728 <cons>
    800070d4:	02010113          	addi	sp,sp,32
    800070d8:	00001317          	auipc	t1,0x1
    800070dc:	eb030067          	jr	-336(t1) # 80007f88 <release>
    800070e0:	00a00493          	li	s1,10
    800070e4:	fc1ff06f          	j	800070a4 <consoleintr+0x50>

00000000800070e8 <consoleinit>:
    800070e8:	fe010113          	addi	sp,sp,-32
    800070ec:	00113c23          	sd	ra,24(sp)
    800070f0:	00813823          	sd	s0,16(sp)
    800070f4:	00913423          	sd	s1,8(sp)
    800070f8:	02010413          	addi	s0,sp,32
    800070fc:	00005497          	auipc	s1,0x5
    80007100:	62c48493          	addi	s1,s1,1580 # 8000c728 <cons>
    80007104:	00048513          	mv	a0,s1
    80007108:	00002597          	auipc	a1,0x2
    8000710c:	60858593          	addi	a1,a1,1544 # 80009710 <CONSOLE_STATUS+0x700>
    80007110:	00001097          	auipc	ra,0x1
    80007114:	d88080e7          	jalr	-632(ra) # 80007e98 <initlock>
    80007118:	00000097          	auipc	ra,0x0
    8000711c:	7ac080e7          	jalr	1964(ra) # 800078c4 <uartinit>
    80007120:	01813083          	ld	ra,24(sp)
    80007124:	01013403          	ld	s0,16(sp)
    80007128:	00000797          	auipc	a5,0x0
    8000712c:	d9c78793          	addi	a5,a5,-612 # 80006ec4 <consoleread>
    80007130:	0af4bc23          	sd	a5,184(s1)
    80007134:	00000797          	auipc	a5,0x0
    80007138:	cec78793          	addi	a5,a5,-788 # 80006e20 <consolewrite>
    8000713c:	0cf4b023          	sd	a5,192(s1)
    80007140:	00813483          	ld	s1,8(sp)
    80007144:	02010113          	addi	sp,sp,32
    80007148:	00008067          	ret

000000008000714c <console_read>:
    8000714c:	ff010113          	addi	sp,sp,-16
    80007150:	00813423          	sd	s0,8(sp)
    80007154:	01010413          	addi	s0,sp,16
    80007158:	00813403          	ld	s0,8(sp)
    8000715c:	00005317          	auipc	t1,0x5
    80007160:	68433303          	ld	t1,1668(t1) # 8000c7e0 <devsw+0x10>
    80007164:	01010113          	addi	sp,sp,16
    80007168:	00030067          	jr	t1

000000008000716c <console_write>:
    8000716c:	ff010113          	addi	sp,sp,-16
    80007170:	00813423          	sd	s0,8(sp)
    80007174:	01010413          	addi	s0,sp,16
    80007178:	00813403          	ld	s0,8(sp)
    8000717c:	00005317          	auipc	t1,0x5
    80007180:	66c33303          	ld	t1,1644(t1) # 8000c7e8 <devsw+0x18>
    80007184:	01010113          	addi	sp,sp,16
    80007188:	00030067          	jr	t1

000000008000718c <panic>:
    8000718c:	fe010113          	addi	sp,sp,-32
    80007190:	00113c23          	sd	ra,24(sp)
    80007194:	00813823          	sd	s0,16(sp)
    80007198:	00913423          	sd	s1,8(sp)
    8000719c:	02010413          	addi	s0,sp,32
    800071a0:	00050493          	mv	s1,a0
    800071a4:	00002517          	auipc	a0,0x2
    800071a8:	57450513          	addi	a0,a0,1396 # 80009718 <CONSOLE_STATUS+0x708>
    800071ac:	00005797          	auipc	a5,0x5
    800071b0:	6c07ae23          	sw	zero,1756(a5) # 8000c888 <pr+0x18>
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	034080e7          	jalr	52(ra) # 800071e8 <__printf>
    800071bc:	00048513          	mv	a0,s1
    800071c0:	00000097          	auipc	ra,0x0
    800071c4:	028080e7          	jalr	40(ra) # 800071e8 <__printf>
    800071c8:	00002517          	auipc	a0,0x2
    800071cc:	34850513          	addi	a0,a0,840 # 80009510 <CONSOLE_STATUS+0x500>
    800071d0:	00000097          	auipc	ra,0x0
    800071d4:	018080e7          	jalr	24(ra) # 800071e8 <__printf>
    800071d8:	00100793          	li	a5,1
    800071dc:	00004717          	auipc	a4,0x4
    800071e0:	3af72e23          	sw	a5,956(a4) # 8000b598 <panicked>
    800071e4:	0000006f          	j	800071e4 <panic+0x58>

00000000800071e8 <__printf>:
    800071e8:	f3010113          	addi	sp,sp,-208
    800071ec:	08813023          	sd	s0,128(sp)
    800071f0:	07313423          	sd	s3,104(sp)
    800071f4:	09010413          	addi	s0,sp,144
    800071f8:	05813023          	sd	s8,64(sp)
    800071fc:	08113423          	sd	ra,136(sp)
    80007200:	06913c23          	sd	s1,120(sp)
    80007204:	07213823          	sd	s2,112(sp)
    80007208:	07413023          	sd	s4,96(sp)
    8000720c:	05513c23          	sd	s5,88(sp)
    80007210:	05613823          	sd	s6,80(sp)
    80007214:	05713423          	sd	s7,72(sp)
    80007218:	03913c23          	sd	s9,56(sp)
    8000721c:	03a13823          	sd	s10,48(sp)
    80007220:	03b13423          	sd	s11,40(sp)
    80007224:	00005317          	auipc	t1,0x5
    80007228:	64c30313          	addi	t1,t1,1612 # 8000c870 <pr>
    8000722c:	01832c03          	lw	s8,24(t1)
    80007230:	00b43423          	sd	a1,8(s0)
    80007234:	00c43823          	sd	a2,16(s0)
    80007238:	00d43c23          	sd	a3,24(s0)
    8000723c:	02e43023          	sd	a4,32(s0)
    80007240:	02f43423          	sd	a5,40(s0)
    80007244:	03043823          	sd	a6,48(s0)
    80007248:	03143c23          	sd	a7,56(s0)
    8000724c:	00050993          	mv	s3,a0
    80007250:	4a0c1663          	bnez	s8,800076fc <__printf+0x514>
    80007254:	60098c63          	beqz	s3,8000786c <__printf+0x684>
    80007258:	0009c503          	lbu	a0,0(s3)
    8000725c:	00840793          	addi	a5,s0,8
    80007260:	f6f43c23          	sd	a5,-136(s0)
    80007264:	00000493          	li	s1,0
    80007268:	22050063          	beqz	a0,80007488 <__printf+0x2a0>
    8000726c:	00002a37          	lui	s4,0x2
    80007270:	00018ab7          	lui	s5,0x18
    80007274:	000f4b37          	lui	s6,0xf4
    80007278:	00989bb7          	lui	s7,0x989
    8000727c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007280:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007284:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007288:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000728c:	00148c9b          	addiw	s9,s1,1
    80007290:	02500793          	li	a5,37
    80007294:	01998933          	add	s2,s3,s9
    80007298:	38f51263          	bne	a0,a5,8000761c <__printf+0x434>
    8000729c:	00094783          	lbu	a5,0(s2)
    800072a0:	00078c9b          	sext.w	s9,a5
    800072a4:	1e078263          	beqz	a5,80007488 <__printf+0x2a0>
    800072a8:	0024849b          	addiw	s1,s1,2
    800072ac:	07000713          	li	a4,112
    800072b0:	00998933          	add	s2,s3,s1
    800072b4:	38e78a63          	beq	a5,a4,80007648 <__printf+0x460>
    800072b8:	20f76863          	bltu	a4,a5,800074c8 <__printf+0x2e0>
    800072bc:	42a78863          	beq	a5,a0,800076ec <__printf+0x504>
    800072c0:	06400713          	li	a4,100
    800072c4:	40e79663          	bne	a5,a4,800076d0 <__printf+0x4e8>
    800072c8:	f7843783          	ld	a5,-136(s0)
    800072cc:	0007a603          	lw	a2,0(a5)
    800072d0:	00878793          	addi	a5,a5,8
    800072d4:	f6f43c23          	sd	a5,-136(s0)
    800072d8:	42064a63          	bltz	a2,8000770c <__printf+0x524>
    800072dc:	00a00713          	li	a4,10
    800072e0:	02e677bb          	remuw	a5,a2,a4
    800072e4:	00002d97          	auipc	s11,0x2
    800072e8:	45cd8d93          	addi	s11,s11,1116 # 80009740 <digits>
    800072ec:	00900593          	li	a1,9
    800072f0:	0006051b          	sext.w	a0,a2
    800072f4:	00000c93          	li	s9,0
    800072f8:	02079793          	slli	a5,a5,0x20
    800072fc:	0207d793          	srli	a5,a5,0x20
    80007300:	00fd87b3          	add	a5,s11,a5
    80007304:	0007c783          	lbu	a5,0(a5)
    80007308:	02e656bb          	divuw	a3,a2,a4
    8000730c:	f8f40023          	sb	a5,-128(s0)
    80007310:	14c5d863          	bge	a1,a2,80007460 <__printf+0x278>
    80007314:	06300593          	li	a1,99
    80007318:	00100c93          	li	s9,1
    8000731c:	02e6f7bb          	remuw	a5,a3,a4
    80007320:	02079793          	slli	a5,a5,0x20
    80007324:	0207d793          	srli	a5,a5,0x20
    80007328:	00fd87b3          	add	a5,s11,a5
    8000732c:	0007c783          	lbu	a5,0(a5)
    80007330:	02e6d73b          	divuw	a4,a3,a4
    80007334:	f8f400a3          	sb	a5,-127(s0)
    80007338:	12a5f463          	bgeu	a1,a0,80007460 <__printf+0x278>
    8000733c:	00a00693          	li	a3,10
    80007340:	00900593          	li	a1,9
    80007344:	02d777bb          	remuw	a5,a4,a3
    80007348:	02079793          	slli	a5,a5,0x20
    8000734c:	0207d793          	srli	a5,a5,0x20
    80007350:	00fd87b3          	add	a5,s11,a5
    80007354:	0007c503          	lbu	a0,0(a5)
    80007358:	02d757bb          	divuw	a5,a4,a3
    8000735c:	f8a40123          	sb	a0,-126(s0)
    80007360:	48e5f263          	bgeu	a1,a4,800077e4 <__printf+0x5fc>
    80007364:	06300513          	li	a0,99
    80007368:	02d7f5bb          	remuw	a1,a5,a3
    8000736c:	02059593          	slli	a1,a1,0x20
    80007370:	0205d593          	srli	a1,a1,0x20
    80007374:	00bd85b3          	add	a1,s11,a1
    80007378:	0005c583          	lbu	a1,0(a1)
    8000737c:	02d7d7bb          	divuw	a5,a5,a3
    80007380:	f8b401a3          	sb	a1,-125(s0)
    80007384:	48e57263          	bgeu	a0,a4,80007808 <__printf+0x620>
    80007388:	3e700513          	li	a0,999
    8000738c:	02d7f5bb          	remuw	a1,a5,a3
    80007390:	02059593          	slli	a1,a1,0x20
    80007394:	0205d593          	srli	a1,a1,0x20
    80007398:	00bd85b3          	add	a1,s11,a1
    8000739c:	0005c583          	lbu	a1,0(a1)
    800073a0:	02d7d7bb          	divuw	a5,a5,a3
    800073a4:	f8b40223          	sb	a1,-124(s0)
    800073a8:	46e57663          	bgeu	a0,a4,80007814 <__printf+0x62c>
    800073ac:	02d7f5bb          	remuw	a1,a5,a3
    800073b0:	02059593          	slli	a1,a1,0x20
    800073b4:	0205d593          	srli	a1,a1,0x20
    800073b8:	00bd85b3          	add	a1,s11,a1
    800073bc:	0005c583          	lbu	a1,0(a1)
    800073c0:	02d7d7bb          	divuw	a5,a5,a3
    800073c4:	f8b402a3          	sb	a1,-123(s0)
    800073c8:	46ea7863          	bgeu	s4,a4,80007838 <__printf+0x650>
    800073cc:	02d7f5bb          	remuw	a1,a5,a3
    800073d0:	02059593          	slli	a1,a1,0x20
    800073d4:	0205d593          	srli	a1,a1,0x20
    800073d8:	00bd85b3          	add	a1,s11,a1
    800073dc:	0005c583          	lbu	a1,0(a1)
    800073e0:	02d7d7bb          	divuw	a5,a5,a3
    800073e4:	f8b40323          	sb	a1,-122(s0)
    800073e8:	3eeaf863          	bgeu	s5,a4,800077d8 <__printf+0x5f0>
    800073ec:	02d7f5bb          	remuw	a1,a5,a3
    800073f0:	02059593          	slli	a1,a1,0x20
    800073f4:	0205d593          	srli	a1,a1,0x20
    800073f8:	00bd85b3          	add	a1,s11,a1
    800073fc:	0005c583          	lbu	a1,0(a1)
    80007400:	02d7d7bb          	divuw	a5,a5,a3
    80007404:	f8b403a3          	sb	a1,-121(s0)
    80007408:	42eb7e63          	bgeu	s6,a4,80007844 <__printf+0x65c>
    8000740c:	02d7f5bb          	remuw	a1,a5,a3
    80007410:	02059593          	slli	a1,a1,0x20
    80007414:	0205d593          	srli	a1,a1,0x20
    80007418:	00bd85b3          	add	a1,s11,a1
    8000741c:	0005c583          	lbu	a1,0(a1)
    80007420:	02d7d7bb          	divuw	a5,a5,a3
    80007424:	f8b40423          	sb	a1,-120(s0)
    80007428:	42ebfc63          	bgeu	s7,a4,80007860 <__printf+0x678>
    8000742c:	02079793          	slli	a5,a5,0x20
    80007430:	0207d793          	srli	a5,a5,0x20
    80007434:	00fd8db3          	add	s11,s11,a5
    80007438:	000dc703          	lbu	a4,0(s11)
    8000743c:	00a00793          	li	a5,10
    80007440:	00900c93          	li	s9,9
    80007444:	f8e404a3          	sb	a4,-119(s0)
    80007448:	00065c63          	bgez	a2,80007460 <__printf+0x278>
    8000744c:	f9040713          	addi	a4,s0,-112
    80007450:	00f70733          	add	a4,a4,a5
    80007454:	02d00693          	li	a3,45
    80007458:	fed70823          	sb	a3,-16(a4)
    8000745c:	00078c93          	mv	s9,a5
    80007460:	f8040793          	addi	a5,s0,-128
    80007464:	01978cb3          	add	s9,a5,s9
    80007468:	f7f40d13          	addi	s10,s0,-129
    8000746c:	000cc503          	lbu	a0,0(s9)
    80007470:	fffc8c93          	addi	s9,s9,-1
    80007474:	00000097          	auipc	ra,0x0
    80007478:	b90080e7          	jalr	-1136(ra) # 80007004 <consputc>
    8000747c:	ffac98e3          	bne	s9,s10,8000746c <__printf+0x284>
    80007480:	00094503          	lbu	a0,0(s2)
    80007484:	e00514e3          	bnez	a0,8000728c <__printf+0xa4>
    80007488:	1a0c1663          	bnez	s8,80007634 <__printf+0x44c>
    8000748c:	08813083          	ld	ra,136(sp)
    80007490:	08013403          	ld	s0,128(sp)
    80007494:	07813483          	ld	s1,120(sp)
    80007498:	07013903          	ld	s2,112(sp)
    8000749c:	06813983          	ld	s3,104(sp)
    800074a0:	06013a03          	ld	s4,96(sp)
    800074a4:	05813a83          	ld	s5,88(sp)
    800074a8:	05013b03          	ld	s6,80(sp)
    800074ac:	04813b83          	ld	s7,72(sp)
    800074b0:	04013c03          	ld	s8,64(sp)
    800074b4:	03813c83          	ld	s9,56(sp)
    800074b8:	03013d03          	ld	s10,48(sp)
    800074bc:	02813d83          	ld	s11,40(sp)
    800074c0:	0d010113          	addi	sp,sp,208
    800074c4:	00008067          	ret
    800074c8:	07300713          	li	a4,115
    800074cc:	1ce78a63          	beq	a5,a4,800076a0 <__printf+0x4b8>
    800074d0:	07800713          	li	a4,120
    800074d4:	1ee79e63          	bne	a5,a4,800076d0 <__printf+0x4e8>
    800074d8:	f7843783          	ld	a5,-136(s0)
    800074dc:	0007a703          	lw	a4,0(a5)
    800074e0:	00878793          	addi	a5,a5,8
    800074e4:	f6f43c23          	sd	a5,-136(s0)
    800074e8:	28074263          	bltz	a4,8000776c <__printf+0x584>
    800074ec:	00002d97          	auipc	s11,0x2
    800074f0:	254d8d93          	addi	s11,s11,596 # 80009740 <digits>
    800074f4:	00f77793          	andi	a5,a4,15
    800074f8:	00fd87b3          	add	a5,s11,a5
    800074fc:	0007c683          	lbu	a3,0(a5)
    80007500:	00f00613          	li	a2,15
    80007504:	0007079b          	sext.w	a5,a4
    80007508:	f8d40023          	sb	a3,-128(s0)
    8000750c:	0047559b          	srliw	a1,a4,0x4
    80007510:	0047569b          	srliw	a3,a4,0x4
    80007514:	00000c93          	li	s9,0
    80007518:	0ee65063          	bge	a2,a4,800075f8 <__printf+0x410>
    8000751c:	00f6f693          	andi	a3,a3,15
    80007520:	00dd86b3          	add	a3,s11,a3
    80007524:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007528:	0087d79b          	srliw	a5,a5,0x8
    8000752c:	00100c93          	li	s9,1
    80007530:	f8d400a3          	sb	a3,-127(s0)
    80007534:	0cb67263          	bgeu	a2,a1,800075f8 <__printf+0x410>
    80007538:	00f7f693          	andi	a3,a5,15
    8000753c:	00dd86b3          	add	a3,s11,a3
    80007540:	0006c583          	lbu	a1,0(a3)
    80007544:	00f00613          	li	a2,15
    80007548:	0047d69b          	srliw	a3,a5,0x4
    8000754c:	f8b40123          	sb	a1,-126(s0)
    80007550:	0047d593          	srli	a1,a5,0x4
    80007554:	28f67e63          	bgeu	a2,a5,800077f0 <__printf+0x608>
    80007558:	00f6f693          	andi	a3,a3,15
    8000755c:	00dd86b3          	add	a3,s11,a3
    80007560:	0006c503          	lbu	a0,0(a3)
    80007564:	0087d813          	srli	a6,a5,0x8
    80007568:	0087d69b          	srliw	a3,a5,0x8
    8000756c:	f8a401a3          	sb	a0,-125(s0)
    80007570:	28b67663          	bgeu	a2,a1,800077fc <__printf+0x614>
    80007574:	00f6f693          	andi	a3,a3,15
    80007578:	00dd86b3          	add	a3,s11,a3
    8000757c:	0006c583          	lbu	a1,0(a3)
    80007580:	00c7d513          	srli	a0,a5,0xc
    80007584:	00c7d69b          	srliw	a3,a5,0xc
    80007588:	f8b40223          	sb	a1,-124(s0)
    8000758c:	29067a63          	bgeu	a2,a6,80007820 <__printf+0x638>
    80007590:	00f6f693          	andi	a3,a3,15
    80007594:	00dd86b3          	add	a3,s11,a3
    80007598:	0006c583          	lbu	a1,0(a3)
    8000759c:	0107d813          	srli	a6,a5,0x10
    800075a0:	0107d69b          	srliw	a3,a5,0x10
    800075a4:	f8b402a3          	sb	a1,-123(s0)
    800075a8:	28a67263          	bgeu	a2,a0,8000782c <__printf+0x644>
    800075ac:	00f6f693          	andi	a3,a3,15
    800075b0:	00dd86b3          	add	a3,s11,a3
    800075b4:	0006c683          	lbu	a3,0(a3)
    800075b8:	0147d79b          	srliw	a5,a5,0x14
    800075bc:	f8d40323          	sb	a3,-122(s0)
    800075c0:	21067663          	bgeu	a2,a6,800077cc <__printf+0x5e4>
    800075c4:	02079793          	slli	a5,a5,0x20
    800075c8:	0207d793          	srli	a5,a5,0x20
    800075cc:	00fd8db3          	add	s11,s11,a5
    800075d0:	000dc683          	lbu	a3,0(s11)
    800075d4:	00800793          	li	a5,8
    800075d8:	00700c93          	li	s9,7
    800075dc:	f8d403a3          	sb	a3,-121(s0)
    800075e0:	00075c63          	bgez	a4,800075f8 <__printf+0x410>
    800075e4:	f9040713          	addi	a4,s0,-112
    800075e8:	00f70733          	add	a4,a4,a5
    800075ec:	02d00693          	li	a3,45
    800075f0:	fed70823          	sb	a3,-16(a4)
    800075f4:	00078c93          	mv	s9,a5
    800075f8:	f8040793          	addi	a5,s0,-128
    800075fc:	01978cb3          	add	s9,a5,s9
    80007600:	f7f40d13          	addi	s10,s0,-129
    80007604:	000cc503          	lbu	a0,0(s9)
    80007608:	fffc8c93          	addi	s9,s9,-1
    8000760c:	00000097          	auipc	ra,0x0
    80007610:	9f8080e7          	jalr	-1544(ra) # 80007004 <consputc>
    80007614:	ff9d18e3          	bne	s10,s9,80007604 <__printf+0x41c>
    80007618:	0100006f          	j	80007628 <__printf+0x440>
    8000761c:	00000097          	auipc	ra,0x0
    80007620:	9e8080e7          	jalr	-1560(ra) # 80007004 <consputc>
    80007624:	000c8493          	mv	s1,s9
    80007628:	00094503          	lbu	a0,0(s2)
    8000762c:	c60510e3          	bnez	a0,8000728c <__printf+0xa4>
    80007630:	e40c0ee3          	beqz	s8,8000748c <__printf+0x2a4>
    80007634:	00005517          	auipc	a0,0x5
    80007638:	23c50513          	addi	a0,a0,572 # 8000c870 <pr>
    8000763c:	00001097          	auipc	ra,0x1
    80007640:	94c080e7          	jalr	-1716(ra) # 80007f88 <release>
    80007644:	e49ff06f          	j	8000748c <__printf+0x2a4>
    80007648:	f7843783          	ld	a5,-136(s0)
    8000764c:	03000513          	li	a0,48
    80007650:	01000d13          	li	s10,16
    80007654:	00878713          	addi	a4,a5,8
    80007658:	0007bc83          	ld	s9,0(a5)
    8000765c:	f6e43c23          	sd	a4,-136(s0)
    80007660:	00000097          	auipc	ra,0x0
    80007664:	9a4080e7          	jalr	-1628(ra) # 80007004 <consputc>
    80007668:	07800513          	li	a0,120
    8000766c:	00000097          	auipc	ra,0x0
    80007670:	998080e7          	jalr	-1640(ra) # 80007004 <consputc>
    80007674:	00002d97          	auipc	s11,0x2
    80007678:	0ccd8d93          	addi	s11,s11,204 # 80009740 <digits>
    8000767c:	03ccd793          	srli	a5,s9,0x3c
    80007680:	00fd87b3          	add	a5,s11,a5
    80007684:	0007c503          	lbu	a0,0(a5)
    80007688:	fffd0d1b          	addiw	s10,s10,-1
    8000768c:	004c9c93          	slli	s9,s9,0x4
    80007690:	00000097          	auipc	ra,0x0
    80007694:	974080e7          	jalr	-1676(ra) # 80007004 <consputc>
    80007698:	fe0d12e3          	bnez	s10,8000767c <__printf+0x494>
    8000769c:	f8dff06f          	j	80007628 <__printf+0x440>
    800076a0:	f7843783          	ld	a5,-136(s0)
    800076a4:	0007bc83          	ld	s9,0(a5)
    800076a8:	00878793          	addi	a5,a5,8
    800076ac:	f6f43c23          	sd	a5,-136(s0)
    800076b0:	000c9a63          	bnez	s9,800076c4 <__printf+0x4dc>
    800076b4:	1080006f          	j	800077bc <__printf+0x5d4>
    800076b8:	001c8c93          	addi	s9,s9,1
    800076bc:	00000097          	auipc	ra,0x0
    800076c0:	948080e7          	jalr	-1720(ra) # 80007004 <consputc>
    800076c4:	000cc503          	lbu	a0,0(s9)
    800076c8:	fe0518e3          	bnez	a0,800076b8 <__printf+0x4d0>
    800076cc:	f5dff06f          	j	80007628 <__printf+0x440>
    800076d0:	02500513          	li	a0,37
    800076d4:	00000097          	auipc	ra,0x0
    800076d8:	930080e7          	jalr	-1744(ra) # 80007004 <consputc>
    800076dc:	000c8513          	mv	a0,s9
    800076e0:	00000097          	auipc	ra,0x0
    800076e4:	924080e7          	jalr	-1756(ra) # 80007004 <consputc>
    800076e8:	f41ff06f          	j	80007628 <__printf+0x440>
    800076ec:	02500513          	li	a0,37
    800076f0:	00000097          	auipc	ra,0x0
    800076f4:	914080e7          	jalr	-1772(ra) # 80007004 <consputc>
    800076f8:	f31ff06f          	j	80007628 <__printf+0x440>
    800076fc:	00030513          	mv	a0,t1
    80007700:	00000097          	auipc	ra,0x0
    80007704:	7bc080e7          	jalr	1980(ra) # 80007ebc <acquire>
    80007708:	b4dff06f          	j	80007254 <__printf+0x6c>
    8000770c:	40c0053b          	negw	a0,a2
    80007710:	00a00713          	li	a4,10
    80007714:	02e576bb          	remuw	a3,a0,a4
    80007718:	00002d97          	auipc	s11,0x2
    8000771c:	028d8d93          	addi	s11,s11,40 # 80009740 <digits>
    80007720:	ff700593          	li	a1,-9
    80007724:	02069693          	slli	a3,a3,0x20
    80007728:	0206d693          	srli	a3,a3,0x20
    8000772c:	00dd86b3          	add	a3,s11,a3
    80007730:	0006c683          	lbu	a3,0(a3)
    80007734:	02e557bb          	divuw	a5,a0,a4
    80007738:	f8d40023          	sb	a3,-128(s0)
    8000773c:	10b65e63          	bge	a2,a1,80007858 <__printf+0x670>
    80007740:	06300593          	li	a1,99
    80007744:	02e7f6bb          	remuw	a3,a5,a4
    80007748:	02069693          	slli	a3,a3,0x20
    8000774c:	0206d693          	srli	a3,a3,0x20
    80007750:	00dd86b3          	add	a3,s11,a3
    80007754:	0006c683          	lbu	a3,0(a3)
    80007758:	02e7d73b          	divuw	a4,a5,a4
    8000775c:	00200793          	li	a5,2
    80007760:	f8d400a3          	sb	a3,-127(s0)
    80007764:	bca5ece3          	bltu	a1,a0,8000733c <__printf+0x154>
    80007768:	ce5ff06f          	j	8000744c <__printf+0x264>
    8000776c:	40e007bb          	negw	a5,a4
    80007770:	00002d97          	auipc	s11,0x2
    80007774:	fd0d8d93          	addi	s11,s11,-48 # 80009740 <digits>
    80007778:	00f7f693          	andi	a3,a5,15
    8000777c:	00dd86b3          	add	a3,s11,a3
    80007780:	0006c583          	lbu	a1,0(a3)
    80007784:	ff100613          	li	a2,-15
    80007788:	0047d69b          	srliw	a3,a5,0x4
    8000778c:	f8b40023          	sb	a1,-128(s0)
    80007790:	0047d59b          	srliw	a1,a5,0x4
    80007794:	0ac75e63          	bge	a4,a2,80007850 <__printf+0x668>
    80007798:	00f6f693          	andi	a3,a3,15
    8000779c:	00dd86b3          	add	a3,s11,a3
    800077a0:	0006c603          	lbu	a2,0(a3)
    800077a4:	00f00693          	li	a3,15
    800077a8:	0087d79b          	srliw	a5,a5,0x8
    800077ac:	f8c400a3          	sb	a2,-127(s0)
    800077b0:	d8b6e4e3          	bltu	a3,a1,80007538 <__printf+0x350>
    800077b4:	00200793          	li	a5,2
    800077b8:	e2dff06f          	j	800075e4 <__printf+0x3fc>
    800077bc:	00002c97          	auipc	s9,0x2
    800077c0:	f64c8c93          	addi	s9,s9,-156 # 80009720 <CONSOLE_STATUS+0x710>
    800077c4:	02800513          	li	a0,40
    800077c8:	ef1ff06f          	j	800076b8 <__printf+0x4d0>
    800077cc:	00700793          	li	a5,7
    800077d0:	00600c93          	li	s9,6
    800077d4:	e0dff06f          	j	800075e0 <__printf+0x3f8>
    800077d8:	00700793          	li	a5,7
    800077dc:	00600c93          	li	s9,6
    800077e0:	c69ff06f          	j	80007448 <__printf+0x260>
    800077e4:	00300793          	li	a5,3
    800077e8:	00200c93          	li	s9,2
    800077ec:	c5dff06f          	j	80007448 <__printf+0x260>
    800077f0:	00300793          	li	a5,3
    800077f4:	00200c93          	li	s9,2
    800077f8:	de9ff06f          	j	800075e0 <__printf+0x3f8>
    800077fc:	00400793          	li	a5,4
    80007800:	00300c93          	li	s9,3
    80007804:	dddff06f          	j	800075e0 <__printf+0x3f8>
    80007808:	00400793          	li	a5,4
    8000780c:	00300c93          	li	s9,3
    80007810:	c39ff06f          	j	80007448 <__printf+0x260>
    80007814:	00500793          	li	a5,5
    80007818:	00400c93          	li	s9,4
    8000781c:	c2dff06f          	j	80007448 <__printf+0x260>
    80007820:	00500793          	li	a5,5
    80007824:	00400c93          	li	s9,4
    80007828:	db9ff06f          	j	800075e0 <__printf+0x3f8>
    8000782c:	00600793          	li	a5,6
    80007830:	00500c93          	li	s9,5
    80007834:	dadff06f          	j	800075e0 <__printf+0x3f8>
    80007838:	00600793          	li	a5,6
    8000783c:	00500c93          	li	s9,5
    80007840:	c09ff06f          	j	80007448 <__printf+0x260>
    80007844:	00800793          	li	a5,8
    80007848:	00700c93          	li	s9,7
    8000784c:	bfdff06f          	j	80007448 <__printf+0x260>
    80007850:	00100793          	li	a5,1
    80007854:	d91ff06f          	j	800075e4 <__printf+0x3fc>
    80007858:	00100793          	li	a5,1
    8000785c:	bf1ff06f          	j	8000744c <__printf+0x264>
    80007860:	00900793          	li	a5,9
    80007864:	00800c93          	li	s9,8
    80007868:	be1ff06f          	j	80007448 <__printf+0x260>
    8000786c:	00002517          	auipc	a0,0x2
    80007870:	ebc50513          	addi	a0,a0,-324 # 80009728 <CONSOLE_STATUS+0x718>
    80007874:	00000097          	auipc	ra,0x0
    80007878:	918080e7          	jalr	-1768(ra) # 8000718c <panic>

000000008000787c <printfinit>:
    8000787c:	fe010113          	addi	sp,sp,-32
    80007880:	00813823          	sd	s0,16(sp)
    80007884:	00913423          	sd	s1,8(sp)
    80007888:	00113c23          	sd	ra,24(sp)
    8000788c:	02010413          	addi	s0,sp,32
    80007890:	00005497          	auipc	s1,0x5
    80007894:	fe048493          	addi	s1,s1,-32 # 8000c870 <pr>
    80007898:	00048513          	mv	a0,s1
    8000789c:	00002597          	auipc	a1,0x2
    800078a0:	e9c58593          	addi	a1,a1,-356 # 80009738 <CONSOLE_STATUS+0x728>
    800078a4:	00000097          	auipc	ra,0x0
    800078a8:	5f4080e7          	jalr	1524(ra) # 80007e98 <initlock>
    800078ac:	01813083          	ld	ra,24(sp)
    800078b0:	01013403          	ld	s0,16(sp)
    800078b4:	0004ac23          	sw	zero,24(s1)
    800078b8:	00813483          	ld	s1,8(sp)
    800078bc:	02010113          	addi	sp,sp,32
    800078c0:	00008067          	ret

00000000800078c4 <uartinit>:
    800078c4:	ff010113          	addi	sp,sp,-16
    800078c8:	00813423          	sd	s0,8(sp)
    800078cc:	01010413          	addi	s0,sp,16
    800078d0:	100007b7          	lui	a5,0x10000
    800078d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800078d8:	f8000713          	li	a4,-128
    800078dc:	00e781a3          	sb	a4,3(a5)
    800078e0:	00300713          	li	a4,3
    800078e4:	00e78023          	sb	a4,0(a5)
    800078e8:	000780a3          	sb	zero,1(a5)
    800078ec:	00e781a3          	sb	a4,3(a5)
    800078f0:	00700693          	li	a3,7
    800078f4:	00d78123          	sb	a3,2(a5)
    800078f8:	00e780a3          	sb	a4,1(a5)
    800078fc:	00813403          	ld	s0,8(sp)
    80007900:	01010113          	addi	sp,sp,16
    80007904:	00008067          	ret

0000000080007908 <uartputc>:
    80007908:	00004797          	auipc	a5,0x4
    8000790c:	c907a783          	lw	a5,-880(a5) # 8000b598 <panicked>
    80007910:	00078463          	beqz	a5,80007918 <uartputc+0x10>
    80007914:	0000006f          	j	80007914 <uartputc+0xc>
    80007918:	fd010113          	addi	sp,sp,-48
    8000791c:	02813023          	sd	s0,32(sp)
    80007920:	00913c23          	sd	s1,24(sp)
    80007924:	01213823          	sd	s2,16(sp)
    80007928:	01313423          	sd	s3,8(sp)
    8000792c:	02113423          	sd	ra,40(sp)
    80007930:	03010413          	addi	s0,sp,48
    80007934:	00004917          	auipc	s2,0x4
    80007938:	c6c90913          	addi	s2,s2,-916 # 8000b5a0 <uart_tx_r>
    8000793c:	00093783          	ld	a5,0(s2)
    80007940:	00004497          	auipc	s1,0x4
    80007944:	c6848493          	addi	s1,s1,-920 # 8000b5a8 <uart_tx_w>
    80007948:	0004b703          	ld	a4,0(s1)
    8000794c:	02078693          	addi	a3,a5,32
    80007950:	00050993          	mv	s3,a0
    80007954:	02e69c63          	bne	a3,a4,8000798c <uartputc+0x84>
    80007958:	00001097          	auipc	ra,0x1
    8000795c:	834080e7          	jalr	-1996(ra) # 8000818c <push_on>
    80007960:	00093783          	ld	a5,0(s2)
    80007964:	0004b703          	ld	a4,0(s1)
    80007968:	02078793          	addi	a5,a5,32
    8000796c:	00e79463          	bne	a5,a4,80007974 <uartputc+0x6c>
    80007970:	0000006f          	j	80007970 <uartputc+0x68>
    80007974:	00001097          	auipc	ra,0x1
    80007978:	88c080e7          	jalr	-1908(ra) # 80008200 <pop_on>
    8000797c:	00093783          	ld	a5,0(s2)
    80007980:	0004b703          	ld	a4,0(s1)
    80007984:	02078693          	addi	a3,a5,32
    80007988:	fce688e3          	beq	a3,a4,80007958 <uartputc+0x50>
    8000798c:	01f77693          	andi	a3,a4,31
    80007990:	00005597          	auipc	a1,0x5
    80007994:	f0058593          	addi	a1,a1,-256 # 8000c890 <uart_tx_buf>
    80007998:	00d586b3          	add	a3,a1,a3
    8000799c:	00170713          	addi	a4,a4,1
    800079a0:	01368023          	sb	s3,0(a3)
    800079a4:	00e4b023          	sd	a4,0(s1)
    800079a8:	10000637          	lui	a2,0x10000
    800079ac:	02f71063          	bne	a4,a5,800079cc <uartputc+0xc4>
    800079b0:	0340006f          	j	800079e4 <uartputc+0xdc>
    800079b4:	00074703          	lbu	a4,0(a4)
    800079b8:	00f93023          	sd	a5,0(s2)
    800079bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800079c0:	00093783          	ld	a5,0(s2)
    800079c4:	0004b703          	ld	a4,0(s1)
    800079c8:	00f70e63          	beq	a4,a5,800079e4 <uartputc+0xdc>
    800079cc:	00564683          	lbu	a3,5(a2)
    800079d0:	01f7f713          	andi	a4,a5,31
    800079d4:	00e58733          	add	a4,a1,a4
    800079d8:	0206f693          	andi	a3,a3,32
    800079dc:	00178793          	addi	a5,a5,1
    800079e0:	fc069ae3          	bnez	a3,800079b4 <uartputc+0xac>
    800079e4:	02813083          	ld	ra,40(sp)
    800079e8:	02013403          	ld	s0,32(sp)
    800079ec:	01813483          	ld	s1,24(sp)
    800079f0:	01013903          	ld	s2,16(sp)
    800079f4:	00813983          	ld	s3,8(sp)
    800079f8:	03010113          	addi	sp,sp,48
    800079fc:	00008067          	ret

0000000080007a00 <uartputc_sync>:
    80007a00:	ff010113          	addi	sp,sp,-16
    80007a04:	00813423          	sd	s0,8(sp)
    80007a08:	01010413          	addi	s0,sp,16
    80007a0c:	00004717          	auipc	a4,0x4
    80007a10:	b8c72703          	lw	a4,-1140(a4) # 8000b598 <panicked>
    80007a14:	02071663          	bnez	a4,80007a40 <uartputc_sync+0x40>
    80007a18:	00050793          	mv	a5,a0
    80007a1c:	100006b7          	lui	a3,0x10000
    80007a20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007a24:	02077713          	andi	a4,a4,32
    80007a28:	fe070ce3          	beqz	a4,80007a20 <uartputc_sync+0x20>
    80007a2c:	0ff7f793          	andi	a5,a5,255
    80007a30:	00f68023          	sb	a5,0(a3)
    80007a34:	00813403          	ld	s0,8(sp)
    80007a38:	01010113          	addi	sp,sp,16
    80007a3c:	00008067          	ret
    80007a40:	0000006f          	j	80007a40 <uartputc_sync+0x40>

0000000080007a44 <uartstart>:
    80007a44:	ff010113          	addi	sp,sp,-16
    80007a48:	00813423          	sd	s0,8(sp)
    80007a4c:	01010413          	addi	s0,sp,16
    80007a50:	00004617          	auipc	a2,0x4
    80007a54:	b5060613          	addi	a2,a2,-1200 # 8000b5a0 <uart_tx_r>
    80007a58:	00004517          	auipc	a0,0x4
    80007a5c:	b5050513          	addi	a0,a0,-1200 # 8000b5a8 <uart_tx_w>
    80007a60:	00063783          	ld	a5,0(a2)
    80007a64:	00053703          	ld	a4,0(a0)
    80007a68:	04f70263          	beq	a4,a5,80007aac <uartstart+0x68>
    80007a6c:	100005b7          	lui	a1,0x10000
    80007a70:	00005817          	auipc	a6,0x5
    80007a74:	e2080813          	addi	a6,a6,-480 # 8000c890 <uart_tx_buf>
    80007a78:	01c0006f          	j	80007a94 <uartstart+0x50>
    80007a7c:	0006c703          	lbu	a4,0(a3)
    80007a80:	00f63023          	sd	a5,0(a2)
    80007a84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a88:	00063783          	ld	a5,0(a2)
    80007a8c:	00053703          	ld	a4,0(a0)
    80007a90:	00f70e63          	beq	a4,a5,80007aac <uartstart+0x68>
    80007a94:	01f7f713          	andi	a4,a5,31
    80007a98:	00e806b3          	add	a3,a6,a4
    80007a9c:	0055c703          	lbu	a4,5(a1)
    80007aa0:	00178793          	addi	a5,a5,1
    80007aa4:	02077713          	andi	a4,a4,32
    80007aa8:	fc071ae3          	bnez	a4,80007a7c <uartstart+0x38>
    80007aac:	00813403          	ld	s0,8(sp)
    80007ab0:	01010113          	addi	sp,sp,16
    80007ab4:	00008067          	ret

0000000080007ab8 <uartgetc>:
    80007ab8:	ff010113          	addi	sp,sp,-16
    80007abc:	00813423          	sd	s0,8(sp)
    80007ac0:	01010413          	addi	s0,sp,16
    80007ac4:	10000737          	lui	a4,0x10000
    80007ac8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007acc:	0017f793          	andi	a5,a5,1
    80007ad0:	00078c63          	beqz	a5,80007ae8 <uartgetc+0x30>
    80007ad4:	00074503          	lbu	a0,0(a4)
    80007ad8:	0ff57513          	andi	a0,a0,255
    80007adc:	00813403          	ld	s0,8(sp)
    80007ae0:	01010113          	addi	sp,sp,16
    80007ae4:	00008067          	ret
    80007ae8:	fff00513          	li	a0,-1
    80007aec:	ff1ff06f          	j	80007adc <uartgetc+0x24>

0000000080007af0 <uartintr>:
    80007af0:	100007b7          	lui	a5,0x10000
    80007af4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007af8:	0017f793          	andi	a5,a5,1
    80007afc:	0a078463          	beqz	a5,80007ba4 <uartintr+0xb4>
    80007b00:	fe010113          	addi	sp,sp,-32
    80007b04:	00813823          	sd	s0,16(sp)
    80007b08:	00913423          	sd	s1,8(sp)
    80007b0c:	00113c23          	sd	ra,24(sp)
    80007b10:	02010413          	addi	s0,sp,32
    80007b14:	100004b7          	lui	s1,0x10000
    80007b18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007b1c:	0ff57513          	andi	a0,a0,255
    80007b20:	fffff097          	auipc	ra,0xfffff
    80007b24:	534080e7          	jalr	1332(ra) # 80007054 <consoleintr>
    80007b28:	0054c783          	lbu	a5,5(s1)
    80007b2c:	0017f793          	andi	a5,a5,1
    80007b30:	fe0794e3          	bnez	a5,80007b18 <uartintr+0x28>
    80007b34:	00004617          	auipc	a2,0x4
    80007b38:	a6c60613          	addi	a2,a2,-1428 # 8000b5a0 <uart_tx_r>
    80007b3c:	00004517          	auipc	a0,0x4
    80007b40:	a6c50513          	addi	a0,a0,-1428 # 8000b5a8 <uart_tx_w>
    80007b44:	00063783          	ld	a5,0(a2)
    80007b48:	00053703          	ld	a4,0(a0)
    80007b4c:	04f70263          	beq	a4,a5,80007b90 <uartintr+0xa0>
    80007b50:	100005b7          	lui	a1,0x10000
    80007b54:	00005817          	auipc	a6,0x5
    80007b58:	d3c80813          	addi	a6,a6,-708 # 8000c890 <uart_tx_buf>
    80007b5c:	01c0006f          	j	80007b78 <uartintr+0x88>
    80007b60:	0006c703          	lbu	a4,0(a3)
    80007b64:	00f63023          	sd	a5,0(a2)
    80007b68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b6c:	00063783          	ld	a5,0(a2)
    80007b70:	00053703          	ld	a4,0(a0)
    80007b74:	00f70e63          	beq	a4,a5,80007b90 <uartintr+0xa0>
    80007b78:	01f7f713          	andi	a4,a5,31
    80007b7c:	00e806b3          	add	a3,a6,a4
    80007b80:	0055c703          	lbu	a4,5(a1)
    80007b84:	00178793          	addi	a5,a5,1
    80007b88:	02077713          	andi	a4,a4,32
    80007b8c:	fc071ae3          	bnez	a4,80007b60 <uartintr+0x70>
    80007b90:	01813083          	ld	ra,24(sp)
    80007b94:	01013403          	ld	s0,16(sp)
    80007b98:	00813483          	ld	s1,8(sp)
    80007b9c:	02010113          	addi	sp,sp,32
    80007ba0:	00008067          	ret
    80007ba4:	00004617          	auipc	a2,0x4
    80007ba8:	9fc60613          	addi	a2,a2,-1540 # 8000b5a0 <uart_tx_r>
    80007bac:	00004517          	auipc	a0,0x4
    80007bb0:	9fc50513          	addi	a0,a0,-1540 # 8000b5a8 <uart_tx_w>
    80007bb4:	00063783          	ld	a5,0(a2)
    80007bb8:	00053703          	ld	a4,0(a0)
    80007bbc:	04f70263          	beq	a4,a5,80007c00 <uartintr+0x110>
    80007bc0:	100005b7          	lui	a1,0x10000
    80007bc4:	00005817          	auipc	a6,0x5
    80007bc8:	ccc80813          	addi	a6,a6,-820 # 8000c890 <uart_tx_buf>
    80007bcc:	01c0006f          	j	80007be8 <uartintr+0xf8>
    80007bd0:	0006c703          	lbu	a4,0(a3)
    80007bd4:	00f63023          	sd	a5,0(a2)
    80007bd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bdc:	00063783          	ld	a5,0(a2)
    80007be0:	00053703          	ld	a4,0(a0)
    80007be4:	02f70063          	beq	a4,a5,80007c04 <uartintr+0x114>
    80007be8:	01f7f713          	andi	a4,a5,31
    80007bec:	00e806b3          	add	a3,a6,a4
    80007bf0:	0055c703          	lbu	a4,5(a1)
    80007bf4:	00178793          	addi	a5,a5,1
    80007bf8:	02077713          	andi	a4,a4,32
    80007bfc:	fc071ae3          	bnez	a4,80007bd0 <uartintr+0xe0>
    80007c00:	00008067          	ret
    80007c04:	00008067          	ret

0000000080007c08 <kinit>:
    80007c08:	fc010113          	addi	sp,sp,-64
    80007c0c:	02913423          	sd	s1,40(sp)
    80007c10:	fffff7b7          	lui	a5,0xfffff
    80007c14:	00006497          	auipc	s1,0x6
    80007c18:	c9b48493          	addi	s1,s1,-869 # 8000d8af <end+0xfff>
    80007c1c:	02813823          	sd	s0,48(sp)
    80007c20:	01313c23          	sd	s3,24(sp)
    80007c24:	00f4f4b3          	and	s1,s1,a5
    80007c28:	02113c23          	sd	ra,56(sp)
    80007c2c:	03213023          	sd	s2,32(sp)
    80007c30:	01413823          	sd	s4,16(sp)
    80007c34:	01513423          	sd	s5,8(sp)
    80007c38:	04010413          	addi	s0,sp,64
    80007c3c:	000017b7          	lui	a5,0x1
    80007c40:	01100993          	li	s3,17
    80007c44:	00f487b3          	add	a5,s1,a5
    80007c48:	01b99993          	slli	s3,s3,0x1b
    80007c4c:	06f9e063          	bltu	s3,a5,80007cac <kinit+0xa4>
    80007c50:	00005a97          	auipc	s5,0x5
    80007c54:	c60a8a93          	addi	s5,s5,-928 # 8000c8b0 <end>
    80007c58:	0754ec63          	bltu	s1,s5,80007cd0 <kinit+0xc8>
    80007c5c:	0734fa63          	bgeu	s1,s3,80007cd0 <kinit+0xc8>
    80007c60:	00088a37          	lui	s4,0x88
    80007c64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007c68:	00004917          	auipc	s2,0x4
    80007c6c:	94890913          	addi	s2,s2,-1720 # 8000b5b0 <kmem>
    80007c70:	00ca1a13          	slli	s4,s4,0xc
    80007c74:	0140006f          	j	80007c88 <kinit+0x80>
    80007c78:	000017b7          	lui	a5,0x1
    80007c7c:	00f484b3          	add	s1,s1,a5
    80007c80:	0554e863          	bltu	s1,s5,80007cd0 <kinit+0xc8>
    80007c84:	0534f663          	bgeu	s1,s3,80007cd0 <kinit+0xc8>
    80007c88:	00001637          	lui	a2,0x1
    80007c8c:	00100593          	li	a1,1
    80007c90:	00048513          	mv	a0,s1
    80007c94:	00000097          	auipc	ra,0x0
    80007c98:	5e4080e7          	jalr	1508(ra) # 80008278 <__memset>
    80007c9c:	00093783          	ld	a5,0(s2)
    80007ca0:	00f4b023          	sd	a5,0(s1)
    80007ca4:	00993023          	sd	s1,0(s2)
    80007ca8:	fd4498e3          	bne	s1,s4,80007c78 <kinit+0x70>
    80007cac:	03813083          	ld	ra,56(sp)
    80007cb0:	03013403          	ld	s0,48(sp)
    80007cb4:	02813483          	ld	s1,40(sp)
    80007cb8:	02013903          	ld	s2,32(sp)
    80007cbc:	01813983          	ld	s3,24(sp)
    80007cc0:	01013a03          	ld	s4,16(sp)
    80007cc4:	00813a83          	ld	s5,8(sp)
    80007cc8:	04010113          	addi	sp,sp,64
    80007ccc:	00008067          	ret
    80007cd0:	00002517          	auipc	a0,0x2
    80007cd4:	a8850513          	addi	a0,a0,-1400 # 80009758 <digits+0x18>
    80007cd8:	fffff097          	auipc	ra,0xfffff
    80007cdc:	4b4080e7          	jalr	1204(ra) # 8000718c <panic>

0000000080007ce0 <freerange>:
    80007ce0:	fc010113          	addi	sp,sp,-64
    80007ce4:	000017b7          	lui	a5,0x1
    80007ce8:	02913423          	sd	s1,40(sp)
    80007cec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007cf0:	009504b3          	add	s1,a0,s1
    80007cf4:	fffff537          	lui	a0,0xfffff
    80007cf8:	02813823          	sd	s0,48(sp)
    80007cfc:	02113c23          	sd	ra,56(sp)
    80007d00:	03213023          	sd	s2,32(sp)
    80007d04:	01313c23          	sd	s3,24(sp)
    80007d08:	01413823          	sd	s4,16(sp)
    80007d0c:	01513423          	sd	s5,8(sp)
    80007d10:	01613023          	sd	s6,0(sp)
    80007d14:	04010413          	addi	s0,sp,64
    80007d18:	00a4f4b3          	and	s1,s1,a0
    80007d1c:	00f487b3          	add	a5,s1,a5
    80007d20:	06f5e463          	bltu	a1,a5,80007d88 <freerange+0xa8>
    80007d24:	00005a97          	auipc	s5,0x5
    80007d28:	b8ca8a93          	addi	s5,s5,-1140 # 8000c8b0 <end>
    80007d2c:	0954e263          	bltu	s1,s5,80007db0 <freerange+0xd0>
    80007d30:	01100993          	li	s3,17
    80007d34:	01b99993          	slli	s3,s3,0x1b
    80007d38:	0734fc63          	bgeu	s1,s3,80007db0 <freerange+0xd0>
    80007d3c:	00058a13          	mv	s4,a1
    80007d40:	00004917          	auipc	s2,0x4
    80007d44:	87090913          	addi	s2,s2,-1936 # 8000b5b0 <kmem>
    80007d48:	00002b37          	lui	s6,0x2
    80007d4c:	0140006f          	j	80007d60 <freerange+0x80>
    80007d50:	000017b7          	lui	a5,0x1
    80007d54:	00f484b3          	add	s1,s1,a5
    80007d58:	0554ec63          	bltu	s1,s5,80007db0 <freerange+0xd0>
    80007d5c:	0534fa63          	bgeu	s1,s3,80007db0 <freerange+0xd0>
    80007d60:	00001637          	lui	a2,0x1
    80007d64:	00100593          	li	a1,1
    80007d68:	00048513          	mv	a0,s1
    80007d6c:	00000097          	auipc	ra,0x0
    80007d70:	50c080e7          	jalr	1292(ra) # 80008278 <__memset>
    80007d74:	00093703          	ld	a4,0(s2)
    80007d78:	016487b3          	add	a5,s1,s6
    80007d7c:	00e4b023          	sd	a4,0(s1)
    80007d80:	00993023          	sd	s1,0(s2)
    80007d84:	fcfa76e3          	bgeu	s4,a5,80007d50 <freerange+0x70>
    80007d88:	03813083          	ld	ra,56(sp)
    80007d8c:	03013403          	ld	s0,48(sp)
    80007d90:	02813483          	ld	s1,40(sp)
    80007d94:	02013903          	ld	s2,32(sp)
    80007d98:	01813983          	ld	s3,24(sp)
    80007d9c:	01013a03          	ld	s4,16(sp)
    80007da0:	00813a83          	ld	s5,8(sp)
    80007da4:	00013b03          	ld	s6,0(sp)
    80007da8:	04010113          	addi	sp,sp,64
    80007dac:	00008067          	ret
    80007db0:	00002517          	auipc	a0,0x2
    80007db4:	9a850513          	addi	a0,a0,-1624 # 80009758 <digits+0x18>
    80007db8:	fffff097          	auipc	ra,0xfffff
    80007dbc:	3d4080e7          	jalr	980(ra) # 8000718c <panic>

0000000080007dc0 <kfree>:
    80007dc0:	fe010113          	addi	sp,sp,-32
    80007dc4:	00813823          	sd	s0,16(sp)
    80007dc8:	00113c23          	sd	ra,24(sp)
    80007dcc:	00913423          	sd	s1,8(sp)
    80007dd0:	02010413          	addi	s0,sp,32
    80007dd4:	03451793          	slli	a5,a0,0x34
    80007dd8:	04079c63          	bnez	a5,80007e30 <kfree+0x70>
    80007ddc:	00005797          	auipc	a5,0x5
    80007de0:	ad478793          	addi	a5,a5,-1324 # 8000c8b0 <end>
    80007de4:	00050493          	mv	s1,a0
    80007de8:	04f56463          	bltu	a0,a5,80007e30 <kfree+0x70>
    80007dec:	01100793          	li	a5,17
    80007df0:	01b79793          	slli	a5,a5,0x1b
    80007df4:	02f57e63          	bgeu	a0,a5,80007e30 <kfree+0x70>
    80007df8:	00001637          	lui	a2,0x1
    80007dfc:	00100593          	li	a1,1
    80007e00:	00000097          	auipc	ra,0x0
    80007e04:	478080e7          	jalr	1144(ra) # 80008278 <__memset>
    80007e08:	00003797          	auipc	a5,0x3
    80007e0c:	7a878793          	addi	a5,a5,1960 # 8000b5b0 <kmem>
    80007e10:	0007b703          	ld	a4,0(a5)
    80007e14:	01813083          	ld	ra,24(sp)
    80007e18:	01013403          	ld	s0,16(sp)
    80007e1c:	00e4b023          	sd	a4,0(s1)
    80007e20:	0097b023          	sd	s1,0(a5)
    80007e24:	00813483          	ld	s1,8(sp)
    80007e28:	02010113          	addi	sp,sp,32
    80007e2c:	00008067          	ret
    80007e30:	00002517          	auipc	a0,0x2
    80007e34:	92850513          	addi	a0,a0,-1752 # 80009758 <digits+0x18>
    80007e38:	fffff097          	auipc	ra,0xfffff
    80007e3c:	354080e7          	jalr	852(ra) # 8000718c <panic>

0000000080007e40 <kalloc>:
    80007e40:	fe010113          	addi	sp,sp,-32
    80007e44:	00813823          	sd	s0,16(sp)
    80007e48:	00913423          	sd	s1,8(sp)
    80007e4c:	00113c23          	sd	ra,24(sp)
    80007e50:	02010413          	addi	s0,sp,32
    80007e54:	00003797          	auipc	a5,0x3
    80007e58:	75c78793          	addi	a5,a5,1884 # 8000b5b0 <kmem>
    80007e5c:	0007b483          	ld	s1,0(a5)
    80007e60:	02048063          	beqz	s1,80007e80 <kalloc+0x40>
    80007e64:	0004b703          	ld	a4,0(s1)
    80007e68:	00001637          	lui	a2,0x1
    80007e6c:	00500593          	li	a1,5
    80007e70:	00048513          	mv	a0,s1
    80007e74:	00e7b023          	sd	a4,0(a5)
    80007e78:	00000097          	auipc	ra,0x0
    80007e7c:	400080e7          	jalr	1024(ra) # 80008278 <__memset>
    80007e80:	01813083          	ld	ra,24(sp)
    80007e84:	01013403          	ld	s0,16(sp)
    80007e88:	00048513          	mv	a0,s1
    80007e8c:	00813483          	ld	s1,8(sp)
    80007e90:	02010113          	addi	sp,sp,32
    80007e94:	00008067          	ret

0000000080007e98 <initlock>:
    80007e98:	ff010113          	addi	sp,sp,-16
    80007e9c:	00813423          	sd	s0,8(sp)
    80007ea0:	01010413          	addi	s0,sp,16
    80007ea4:	00813403          	ld	s0,8(sp)
    80007ea8:	00b53423          	sd	a1,8(a0)
    80007eac:	00052023          	sw	zero,0(a0)
    80007eb0:	00053823          	sd	zero,16(a0)
    80007eb4:	01010113          	addi	sp,sp,16
    80007eb8:	00008067          	ret

0000000080007ebc <acquire>:
    80007ebc:	fe010113          	addi	sp,sp,-32
    80007ec0:	00813823          	sd	s0,16(sp)
    80007ec4:	00913423          	sd	s1,8(sp)
    80007ec8:	00113c23          	sd	ra,24(sp)
    80007ecc:	01213023          	sd	s2,0(sp)
    80007ed0:	02010413          	addi	s0,sp,32
    80007ed4:	00050493          	mv	s1,a0
    80007ed8:	10002973          	csrr	s2,sstatus
    80007edc:	100027f3          	csrr	a5,sstatus
    80007ee0:	ffd7f793          	andi	a5,a5,-3
    80007ee4:	10079073          	csrw	sstatus,a5
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	8e0080e7          	jalr	-1824(ra) # 800067c8 <mycpu>
    80007ef0:	07852783          	lw	a5,120(a0)
    80007ef4:	06078e63          	beqz	a5,80007f70 <acquire+0xb4>
    80007ef8:	fffff097          	auipc	ra,0xfffff
    80007efc:	8d0080e7          	jalr	-1840(ra) # 800067c8 <mycpu>
    80007f00:	07852783          	lw	a5,120(a0)
    80007f04:	0004a703          	lw	a4,0(s1)
    80007f08:	0017879b          	addiw	a5,a5,1
    80007f0c:	06f52c23          	sw	a5,120(a0)
    80007f10:	04071063          	bnez	a4,80007f50 <acquire+0x94>
    80007f14:	00100713          	li	a4,1
    80007f18:	00070793          	mv	a5,a4
    80007f1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007f20:	0007879b          	sext.w	a5,a5
    80007f24:	fe079ae3          	bnez	a5,80007f18 <acquire+0x5c>
    80007f28:	0ff0000f          	fence
    80007f2c:	fffff097          	auipc	ra,0xfffff
    80007f30:	89c080e7          	jalr	-1892(ra) # 800067c8 <mycpu>
    80007f34:	01813083          	ld	ra,24(sp)
    80007f38:	01013403          	ld	s0,16(sp)
    80007f3c:	00a4b823          	sd	a0,16(s1)
    80007f40:	00013903          	ld	s2,0(sp)
    80007f44:	00813483          	ld	s1,8(sp)
    80007f48:	02010113          	addi	sp,sp,32
    80007f4c:	00008067          	ret
    80007f50:	0104b903          	ld	s2,16(s1)
    80007f54:	fffff097          	auipc	ra,0xfffff
    80007f58:	874080e7          	jalr	-1932(ra) # 800067c8 <mycpu>
    80007f5c:	faa91ce3          	bne	s2,a0,80007f14 <acquire+0x58>
    80007f60:	00002517          	auipc	a0,0x2
    80007f64:	80050513          	addi	a0,a0,-2048 # 80009760 <digits+0x20>
    80007f68:	fffff097          	auipc	ra,0xfffff
    80007f6c:	224080e7          	jalr	548(ra) # 8000718c <panic>
    80007f70:	00195913          	srli	s2,s2,0x1
    80007f74:	fffff097          	auipc	ra,0xfffff
    80007f78:	854080e7          	jalr	-1964(ra) # 800067c8 <mycpu>
    80007f7c:	00197913          	andi	s2,s2,1
    80007f80:	07252e23          	sw	s2,124(a0)
    80007f84:	f75ff06f          	j	80007ef8 <acquire+0x3c>

0000000080007f88 <release>:
    80007f88:	fe010113          	addi	sp,sp,-32
    80007f8c:	00813823          	sd	s0,16(sp)
    80007f90:	00113c23          	sd	ra,24(sp)
    80007f94:	00913423          	sd	s1,8(sp)
    80007f98:	01213023          	sd	s2,0(sp)
    80007f9c:	02010413          	addi	s0,sp,32
    80007fa0:	00052783          	lw	a5,0(a0)
    80007fa4:	00079a63          	bnez	a5,80007fb8 <release+0x30>
    80007fa8:	00001517          	auipc	a0,0x1
    80007fac:	7c050513          	addi	a0,a0,1984 # 80009768 <digits+0x28>
    80007fb0:	fffff097          	auipc	ra,0xfffff
    80007fb4:	1dc080e7          	jalr	476(ra) # 8000718c <panic>
    80007fb8:	01053903          	ld	s2,16(a0)
    80007fbc:	00050493          	mv	s1,a0
    80007fc0:	fffff097          	auipc	ra,0xfffff
    80007fc4:	808080e7          	jalr	-2040(ra) # 800067c8 <mycpu>
    80007fc8:	fea910e3          	bne	s2,a0,80007fa8 <release+0x20>
    80007fcc:	0004b823          	sd	zero,16(s1)
    80007fd0:	0ff0000f          	fence
    80007fd4:	0f50000f          	fence	iorw,ow
    80007fd8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007fdc:	ffffe097          	auipc	ra,0xffffe
    80007fe0:	7ec080e7          	jalr	2028(ra) # 800067c8 <mycpu>
    80007fe4:	100027f3          	csrr	a5,sstatus
    80007fe8:	0027f793          	andi	a5,a5,2
    80007fec:	04079a63          	bnez	a5,80008040 <release+0xb8>
    80007ff0:	07852783          	lw	a5,120(a0)
    80007ff4:	02f05e63          	blez	a5,80008030 <release+0xa8>
    80007ff8:	fff7871b          	addiw	a4,a5,-1
    80007ffc:	06e52c23          	sw	a4,120(a0)
    80008000:	00071c63          	bnez	a4,80008018 <release+0x90>
    80008004:	07c52783          	lw	a5,124(a0)
    80008008:	00078863          	beqz	a5,80008018 <release+0x90>
    8000800c:	100027f3          	csrr	a5,sstatus
    80008010:	0027e793          	ori	a5,a5,2
    80008014:	10079073          	csrw	sstatus,a5
    80008018:	01813083          	ld	ra,24(sp)
    8000801c:	01013403          	ld	s0,16(sp)
    80008020:	00813483          	ld	s1,8(sp)
    80008024:	00013903          	ld	s2,0(sp)
    80008028:	02010113          	addi	sp,sp,32
    8000802c:	00008067          	ret
    80008030:	00001517          	auipc	a0,0x1
    80008034:	75850513          	addi	a0,a0,1880 # 80009788 <digits+0x48>
    80008038:	fffff097          	auipc	ra,0xfffff
    8000803c:	154080e7          	jalr	340(ra) # 8000718c <panic>
    80008040:	00001517          	auipc	a0,0x1
    80008044:	73050513          	addi	a0,a0,1840 # 80009770 <digits+0x30>
    80008048:	fffff097          	auipc	ra,0xfffff
    8000804c:	144080e7          	jalr	324(ra) # 8000718c <panic>

0000000080008050 <holding>:
    80008050:	00052783          	lw	a5,0(a0)
    80008054:	00079663          	bnez	a5,80008060 <holding+0x10>
    80008058:	00000513          	li	a0,0
    8000805c:	00008067          	ret
    80008060:	fe010113          	addi	sp,sp,-32
    80008064:	00813823          	sd	s0,16(sp)
    80008068:	00913423          	sd	s1,8(sp)
    8000806c:	00113c23          	sd	ra,24(sp)
    80008070:	02010413          	addi	s0,sp,32
    80008074:	01053483          	ld	s1,16(a0)
    80008078:	ffffe097          	auipc	ra,0xffffe
    8000807c:	750080e7          	jalr	1872(ra) # 800067c8 <mycpu>
    80008080:	01813083          	ld	ra,24(sp)
    80008084:	01013403          	ld	s0,16(sp)
    80008088:	40a48533          	sub	a0,s1,a0
    8000808c:	00153513          	seqz	a0,a0
    80008090:	00813483          	ld	s1,8(sp)
    80008094:	02010113          	addi	sp,sp,32
    80008098:	00008067          	ret

000000008000809c <push_off>:
    8000809c:	fe010113          	addi	sp,sp,-32
    800080a0:	00813823          	sd	s0,16(sp)
    800080a4:	00113c23          	sd	ra,24(sp)
    800080a8:	00913423          	sd	s1,8(sp)
    800080ac:	02010413          	addi	s0,sp,32
    800080b0:	100024f3          	csrr	s1,sstatus
    800080b4:	100027f3          	csrr	a5,sstatus
    800080b8:	ffd7f793          	andi	a5,a5,-3
    800080bc:	10079073          	csrw	sstatus,a5
    800080c0:	ffffe097          	auipc	ra,0xffffe
    800080c4:	708080e7          	jalr	1800(ra) # 800067c8 <mycpu>
    800080c8:	07852783          	lw	a5,120(a0)
    800080cc:	02078663          	beqz	a5,800080f8 <push_off+0x5c>
    800080d0:	ffffe097          	auipc	ra,0xffffe
    800080d4:	6f8080e7          	jalr	1784(ra) # 800067c8 <mycpu>
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
    80008100:	6cc080e7          	jalr	1740(ra) # 800067c8 <mycpu>
    80008104:	0014f493          	andi	s1,s1,1
    80008108:	06952e23          	sw	s1,124(a0)
    8000810c:	fc5ff06f          	j	800080d0 <push_off+0x34>

0000000080008110 <pop_off>:
    80008110:	ff010113          	addi	sp,sp,-16
    80008114:	00813023          	sd	s0,0(sp)
    80008118:	00113423          	sd	ra,8(sp)
    8000811c:	01010413          	addi	s0,sp,16
    80008120:	ffffe097          	auipc	ra,0xffffe
    80008124:	6a8080e7          	jalr	1704(ra) # 800067c8 <mycpu>
    80008128:	100027f3          	csrr	a5,sstatus
    8000812c:	0027f793          	andi	a5,a5,2
    80008130:	04079663          	bnez	a5,8000817c <pop_off+0x6c>
    80008134:	07852783          	lw	a5,120(a0)
    80008138:	02f05a63          	blez	a5,8000816c <pop_off+0x5c>
    8000813c:	fff7871b          	addiw	a4,a5,-1
    80008140:	06e52c23          	sw	a4,120(a0)
    80008144:	00071c63          	bnez	a4,8000815c <pop_off+0x4c>
    80008148:	07c52783          	lw	a5,124(a0)
    8000814c:	00078863          	beqz	a5,8000815c <pop_off+0x4c>
    80008150:	100027f3          	csrr	a5,sstatus
    80008154:	0027e793          	ori	a5,a5,2
    80008158:	10079073          	csrw	sstatus,a5
    8000815c:	00813083          	ld	ra,8(sp)
    80008160:	00013403          	ld	s0,0(sp)
    80008164:	01010113          	addi	sp,sp,16
    80008168:	00008067          	ret
    8000816c:	00001517          	auipc	a0,0x1
    80008170:	61c50513          	addi	a0,a0,1564 # 80009788 <digits+0x48>
    80008174:	fffff097          	auipc	ra,0xfffff
    80008178:	018080e7          	jalr	24(ra) # 8000718c <panic>
    8000817c:	00001517          	auipc	a0,0x1
    80008180:	5f450513          	addi	a0,a0,1524 # 80009770 <digits+0x30>
    80008184:	fffff097          	auipc	ra,0xfffff
    80008188:	008080e7          	jalr	8(ra) # 8000718c <panic>

000000008000818c <push_on>:
    8000818c:	fe010113          	addi	sp,sp,-32
    80008190:	00813823          	sd	s0,16(sp)
    80008194:	00113c23          	sd	ra,24(sp)
    80008198:	00913423          	sd	s1,8(sp)
    8000819c:	02010413          	addi	s0,sp,32
    800081a0:	100024f3          	csrr	s1,sstatus
    800081a4:	100027f3          	csrr	a5,sstatus
    800081a8:	0027e793          	ori	a5,a5,2
    800081ac:	10079073          	csrw	sstatus,a5
    800081b0:	ffffe097          	auipc	ra,0xffffe
    800081b4:	618080e7          	jalr	1560(ra) # 800067c8 <mycpu>
    800081b8:	07852783          	lw	a5,120(a0)
    800081bc:	02078663          	beqz	a5,800081e8 <push_on+0x5c>
    800081c0:	ffffe097          	auipc	ra,0xffffe
    800081c4:	608080e7          	jalr	1544(ra) # 800067c8 <mycpu>
    800081c8:	07852783          	lw	a5,120(a0)
    800081cc:	01813083          	ld	ra,24(sp)
    800081d0:	01013403          	ld	s0,16(sp)
    800081d4:	0017879b          	addiw	a5,a5,1
    800081d8:	06f52c23          	sw	a5,120(a0)
    800081dc:	00813483          	ld	s1,8(sp)
    800081e0:	02010113          	addi	sp,sp,32
    800081e4:	00008067          	ret
    800081e8:	0014d493          	srli	s1,s1,0x1
    800081ec:	ffffe097          	auipc	ra,0xffffe
    800081f0:	5dc080e7          	jalr	1500(ra) # 800067c8 <mycpu>
    800081f4:	0014f493          	andi	s1,s1,1
    800081f8:	06952e23          	sw	s1,124(a0)
    800081fc:	fc5ff06f          	j	800081c0 <push_on+0x34>

0000000080008200 <pop_on>:
    80008200:	ff010113          	addi	sp,sp,-16
    80008204:	00813023          	sd	s0,0(sp)
    80008208:	00113423          	sd	ra,8(sp)
    8000820c:	01010413          	addi	s0,sp,16
    80008210:	ffffe097          	auipc	ra,0xffffe
    80008214:	5b8080e7          	jalr	1464(ra) # 800067c8 <mycpu>
    80008218:	100027f3          	csrr	a5,sstatus
    8000821c:	0027f793          	andi	a5,a5,2
    80008220:	04078463          	beqz	a5,80008268 <pop_on+0x68>
    80008224:	07852783          	lw	a5,120(a0)
    80008228:	02f05863          	blez	a5,80008258 <pop_on+0x58>
    8000822c:	fff7879b          	addiw	a5,a5,-1
    80008230:	06f52c23          	sw	a5,120(a0)
    80008234:	07853783          	ld	a5,120(a0)
    80008238:	00079863          	bnez	a5,80008248 <pop_on+0x48>
    8000823c:	100027f3          	csrr	a5,sstatus
    80008240:	ffd7f793          	andi	a5,a5,-3
    80008244:	10079073          	csrw	sstatus,a5
    80008248:	00813083          	ld	ra,8(sp)
    8000824c:	00013403          	ld	s0,0(sp)
    80008250:	01010113          	addi	sp,sp,16
    80008254:	00008067          	ret
    80008258:	00001517          	auipc	a0,0x1
    8000825c:	55850513          	addi	a0,a0,1368 # 800097b0 <digits+0x70>
    80008260:	fffff097          	auipc	ra,0xfffff
    80008264:	f2c080e7          	jalr	-212(ra) # 8000718c <panic>
    80008268:	00001517          	auipc	a0,0x1
    8000826c:	52850513          	addi	a0,a0,1320 # 80009790 <digits+0x50>
    80008270:	fffff097          	auipc	ra,0xfffff
    80008274:	f1c080e7          	jalr	-228(ra) # 8000718c <panic>

0000000080008278 <__memset>:
    80008278:	ff010113          	addi	sp,sp,-16
    8000827c:	00813423          	sd	s0,8(sp)
    80008280:	01010413          	addi	s0,sp,16
    80008284:	1a060e63          	beqz	a2,80008440 <__memset+0x1c8>
    80008288:	40a007b3          	neg	a5,a0
    8000828c:	0077f793          	andi	a5,a5,7
    80008290:	00778693          	addi	a3,a5,7
    80008294:	00b00813          	li	a6,11
    80008298:	0ff5f593          	andi	a1,a1,255
    8000829c:	fff6071b          	addiw	a4,a2,-1
    800082a0:	1b06e663          	bltu	a3,a6,8000844c <__memset+0x1d4>
    800082a4:	1cd76463          	bltu	a4,a3,8000846c <__memset+0x1f4>
    800082a8:	1a078e63          	beqz	a5,80008464 <__memset+0x1ec>
    800082ac:	00b50023          	sb	a1,0(a0)
    800082b0:	00100713          	li	a4,1
    800082b4:	1ae78463          	beq	a5,a4,8000845c <__memset+0x1e4>
    800082b8:	00b500a3          	sb	a1,1(a0)
    800082bc:	00200713          	li	a4,2
    800082c0:	1ae78a63          	beq	a5,a4,80008474 <__memset+0x1fc>
    800082c4:	00b50123          	sb	a1,2(a0)
    800082c8:	00300713          	li	a4,3
    800082cc:	18e78463          	beq	a5,a4,80008454 <__memset+0x1dc>
    800082d0:	00b501a3          	sb	a1,3(a0)
    800082d4:	00400713          	li	a4,4
    800082d8:	1ae78263          	beq	a5,a4,8000847c <__memset+0x204>
    800082dc:	00b50223          	sb	a1,4(a0)
    800082e0:	00500713          	li	a4,5
    800082e4:	1ae78063          	beq	a5,a4,80008484 <__memset+0x20c>
    800082e8:	00b502a3          	sb	a1,5(a0)
    800082ec:	00700713          	li	a4,7
    800082f0:	18e79e63          	bne	a5,a4,8000848c <__memset+0x214>
    800082f4:	00b50323          	sb	a1,6(a0)
    800082f8:	00700e93          	li	t4,7
    800082fc:	00859713          	slli	a4,a1,0x8
    80008300:	00e5e733          	or	a4,a1,a4
    80008304:	01059e13          	slli	t3,a1,0x10
    80008308:	01c76e33          	or	t3,a4,t3
    8000830c:	01859313          	slli	t1,a1,0x18
    80008310:	006e6333          	or	t1,t3,t1
    80008314:	02059893          	slli	a7,a1,0x20
    80008318:	40f60e3b          	subw	t3,a2,a5
    8000831c:	011368b3          	or	a7,t1,a7
    80008320:	02859813          	slli	a6,a1,0x28
    80008324:	0108e833          	or	a6,a7,a6
    80008328:	03059693          	slli	a3,a1,0x30
    8000832c:	003e589b          	srliw	a7,t3,0x3
    80008330:	00d866b3          	or	a3,a6,a3
    80008334:	03859713          	slli	a4,a1,0x38
    80008338:	00389813          	slli	a6,a7,0x3
    8000833c:	00f507b3          	add	a5,a0,a5
    80008340:	00e6e733          	or	a4,a3,a4
    80008344:	000e089b          	sext.w	a7,t3
    80008348:	00f806b3          	add	a3,a6,a5
    8000834c:	00e7b023          	sd	a4,0(a5)
    80008350:	00878793          	addi	a5,a5,8
    80008354:	fed79ce3          	bne	a5,a3,8000834c <__memset+0xd4>
    80008358:	ff8e7793          	andi	a5,t3,-8
    8000835c:	0007871b          	sext.w	a4,a5
    80008360:	01d787bb          	addw	a5,a5,t4
    80008364:	0ce88e63          	beq	a7,a4,80008440 <__memset+0x1c8>
    80008368:	00f50733          	add	a4,a0,a5
    8000836c:	00b70023          	sb	a1,0(a4)
    80008370:	0017871b          	addiw	a4,a5,1
    80008374:	0cc77663          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00b70023          	sb	a1,0(a4)
    80008380:	0027871b          	addiw	a4,a5,2
    80008384:	0ac77e63          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    80008388:	00e50733          	add	a4,a0,a4
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	0037871b          	addiw	a4,a5,3
    80008394:	0ac77663          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    80008398:	00e50733          	add	a4,a0,a4
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	0047871b          	addiw	a4,a5,4
    800083a4:	08c77e63          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	0057871b          	addiw	a4,a5,5
    800083b4:	08c77663          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    800083b8:	00e50733          	add	a4,a0,a4
    800083bc:	00b70023          	sb	a1,0(a4)
    800083c0:	0067871b          	addiw	a4,a5,6
    800083c4:	06c77e63          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00b70023          	sb	a1,0(a4)
    800083d0:	0077871b          	addiw	a4,a5,7
    800083d4:	06c77663          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    800083d8:	00e50733          	add	a4,a0,a4
    800083dc:	00b70023          	sb	a1,0(a4)
    800083e0:	0087871b          	addiw	a4,a5,8
    800083e4:	04c77e63          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    800083e8:	00e50733          	add	a4,a0,a4
    800083ec:	00b70023          	sb	a1,0(a4)
    800083f0:	0097871b          	addiw	a4,a5,9
    800083f4:	04c77663          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    800083f8:	00e50733          	add	a4,a0,a4
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	00a7871b          	addiw	a4,a5,10
    80008404:	02c77e63          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	00b7871b          	addiw	a4,a5,11
    80008414:	02c77663          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	00c7871b          	addiw	a4,a5,12
    80008424:	00c77e63          	bgeu	a4,a2,80008440 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	00d7879b          	addiw	a5,a5,13
    80008434:	00c7f663          	bgeu	a5,a2,80008440 <__memset+0x1c8>
    80008438:	00f507b3          	add	a5,a0,a5
    8000843c:	00b78023          	sb	a1,0(a5)
    80008440:	00813403          	ld	s0,8(sp)
    80008444:	01010113          	addi	sp,sp,16
    80008448:	00008067          	ret
    8000844c:	00b00693          	li	a3,11
    80008450:	e55ff06f          	j	800082a4 <__memset+0x2c>
    80008454:	00300e93          	li	t4,3
    80008458:	ea5ff06f          	j	800082fc <__memset+0x84>
    8000845c:	00100e93          	li	t4,1
    80008460:	e9dff06f          	j	800082fc <__memset+0x84>
    80008464:	00000e93          	li	t4,0
    80008468:	e95ff06f          	j	800082fc <__memset+0x84>
    8000846c:	00000793          	li	a5,0
    80008470:	ef9ff06f          	j	80008368 <__memset+0xf0>
    80008474:	00200e93          	li	t4,2
    80008478:	e85ff06f          	j	800082fc <__memset+0x84>
    8000847c:	00400e93          	li	t4,4
    80008480:	e7dff06f          	j	800082fc <__memset+0x84>
    80008484:	00500e93          	li	t4,5
    80008488:	e75ff06f          	j	800082fc <__memset+0x84>
    8000848c:	00600e93          	li	t4,6
    80008490:	e6dff06f          	j	800082fc <__memset+0x84>

0000000080008494 <__memmove>:
    80008494:	ff010113          	addi	sp,sp,-16
    80008498:	00813423          	sd	s0,8(sp)
    8000849c:	01010413          	addi	s0,sp,16
    800084a0:	0e060863          	beqz	a2,80008590 <__memmove+0xfc>
    800084a4:	fff6069b          	addiw	a3,a2,-1
    800084a8:	0006881b          	sext.w	a6,a3
    800084ac:	0ea5e863          	bltu	a1,a0,8000859c <__memmove+0x108>
    800084b0:	00758713          	addi	a4,a1,7
    800084b4:	00a5e7b3          	or	a5,a1,a0
    800084b8:	40a70733          	sub	a4,a4,a0
    800084bc:	0077f793          	andi	a5,a5,7
    800084c0:	00f73713          	sltiu	a4,a4,15
    800084c4:	00174713          	xori	a4,a4,1
    800084c8:	0017b793          	seqz	a5,a5
    800084cc:	00e7f7b3          	and	a5,a5,a4
    800084d0:	10078863          	beqz	a5,800085e0 <__memmove+0x14c>
    800084d4:	00900793          	li	a5,9
    800084d8:	1107f463          	bgeu	a5,a6,800085e0 <__memmove+0x14c>
    800084dc:	0036581b          	srliw	a6,a2,0x3
    800084e0:	fff8081b          	addiw	a6,a6,-1
    800084e4:	02081813          	slli	a6,a6,0x20
    800084e8:	01d85893          	srli	a7,a6,0x1d
    800084ec:	00858813          	addi	a6,a1,8
    800084f0:	00058793          	mv	a5,a1
    800084f4:	00050713          	mv	a4,a0
    800084f8:	01088833          	add	a6,a7,a6
    800084fc:	0007b883          	ld	a7,0(a5)
    80008500:	00878793          	addi	a5,a5,8
    80008504:	00870713          	addi	a4,a4,8
    80008508:	ff173c23          	sd	a7,-8(a4)
    8000850c:	ff0798e3          	bne	a5,a6,800084fc <__memmove+0x68>
    80008510:	ff867713          	andi	a4,a2,-8
    80008514:	02071793          	slli	a5,a4,0x20
    80008518:	0207d793          	srli	a5,a5,0x20
    8000851c:	00f585b3          	add	a1,a1,a5
    80008520:	40e686bb          	subw	a3,a3,a4
    80008524:	00f507b3          	add	a5,a0,a5
    80008528:	06e60463          	beq	a2,a4,80008590 <__memmove+0xfc>
    8000852c:	0005c703          	lbu	a4,0(a1)
    80008530:	00e78023          	sb	a4,0(a5)
    80008534:	04068e63          	beqz	a3,80008590 <__memmove+0xfc>
    80008538:	0015c603          	lbu	a2,1(a1)
    8000853c:	00100713          	li	a4,1
    80008540:	00c780a3          	sb	a2,1(a5)
    80008544:	04e68663          	beq	a3,a4,80008590 <__memmove+0xfc>
    80008548:	0025c603          	lbu	a2,2(a1)
    8000854c:	00200713          	li	a4,2
    80008550:	00c78123          	sb	a2,2(a5)
    80008554:	02e68e63          	beq	a3,a4,80008590 <__memmove+0xfc>
    80008558:	0035c603          	lbu	a2,3(a1)
    8000855c:	00300713          	li	a4,3
    80008560:	00c781a3          	sb	a2,3(a5)
    80008564:	02e68663          	beq	a3,a4,80008590 <__memmove+0xfc>
    80008568:	0045c603          	lbu	a2,4(a1)
    8000856c:	00400713          	li	a4,4
    80008570:	00c78223          	sb	a2,4(a5)
    80008574:	00e68e63          	beq	a3,a4,80008590 <__memmove+0xfc>
    80008578:	0055c603          	lbu	a2,5(a1)
    8000857c:	00500713          	li	a4,5
    80008580:	00c782a3          	sb	a2,5(a5)
    80008584:	00e68663          	beq	a3,a4,80008590 <__memmove+0xfc>
    80008588:	0065c703          	lbu	a4,6(a1)
    8000858c:	00e78323          	sb	a4,6(a5)
    80008590:	00813403          	ld	s0,8(sp)
    80008594:	01010113          	addi	sp,sp,16
    80008598:	00008067          	ret
    8000859c:	02061713          	slli	a4,a2,0x20
    800085a0:	02075713          	srli	a4,a4,0x20
    800085a4:	00e587b3          	add	a5,a1,a4
    800085a8:	f0f574e3          	bgeu	a0,a5,800084b0 <__memmove+0x1c>
    800085ac:	02069613          	slli	a2,a3,0x20
    800085b0:	02065613          	srli	a2,a2,0x20
    800085b4:	fff64613          	not	a2,a2
    800085b8:	00e50733          	add	a4,a0,a4
    800085bc:	00c78633          	add	a2,a5,a2
    800085c0:	fff7c683          	lbu	a3,-1(a5)
    800085c4:	fff78793          	addi	a5,a5,-1
    800085c8:	fff70713          	addi	a4,a4,-1
    800085cc:	00d70023          	sb	a3,0(a4)
    800085d0:	fec798e3          	bne	a5,a2,800085c0 <__memmove+0x12c>
    800085d4:	00813403          	ld	s0,8(sp)
    800085d8:	01010113          	addi	sp,sp,16
    800085dc:	00008067          	ret
    800085e0:	02069713          	slli	a4,a3,0x20
    800085e4:	02075713          	srli	a4,a4,0x20
    800085e8:	00170713          	addi	a4,a4,1
    800085ec:	00e50733          	add	a4,a0,a4
    800085f0:	00050793          	mv	a5,a0
    800085f4:	0005c683          	lbu	a3,0(a1)
    800085f8:	00178793          	addi	a5,a5,1
    800085fc:	00158593          	addi	a1,a1,1
    80008600:	fed78fa3          	sb	a3,-1(a5)
    80008604:	fee798e3          	bne	a5,a4,800085f4 <__memmove+0x160>
    80008608:	f89ff06f          	j	80008590 <__memmove+0xfc>

000000008000860c <__putc>:
    8000860c:	fe010113          	addi	sp,sp,-32
    80008610:	00813823          	sd	s0,16(sp)
    80008614:	00113c23          	sd	ra,24(sp)
    80008618:	02010413          	addi	s0,sp,32
    8000861c:	00050793          	mv	a5,a0
    80008620:	fef40593          	addi	a1,s0,-17
    80008624:	00100613          	li	a2,1
    80008628:	00000513          	li	a0,0
    8000862c:	fef407a3          	sb	a5,-17(s0)
    80008630:	fffff097          	auipc	ra,0xfffff
    80008634:	b3c080e7          	jalr	-1220(ra) # 8000716c <console_write>
    80008638:	01813083          	ld	ra,24(sp)
    8000863c:	01013403          	ld	s0,16(sp)
    80008640:	02010113          	addi	sp,sp,32
    80008644:	00008067          	ret

0000000080008648 <__getc>:
    80008648:	fe010113          	addi	sp,sp,-32
    8000864c:	00813823          	sd	s0,16(sp)
    80008650:	00113c23          	sd	ra,24(sp)
    80008654:	02010413          	addi	s0,sp,32
    80008658:	fe840593          	addi	a1,s0,-24
    8000865c:	00100613          	li	a2,1
    80008660:	00000513          	li	a0,0
    80008664:	fffff097          	auipc	ra,0xfffff
    80008668:	ae8080e7          	jalr	-1304(ra) # 8000714c <console_read>
    8000866c:	fe844503          	lbu	a0,-24(s0)
    80008670:	01813083          	ld	ra,24(sp)
    80008674:	01013403          	ld	s0,16(sp)
    80008678:	02010113          	addi	sp,sp,32
    8000867c:	00008067          	ret

0000000080008680 <console_handler>:
    80008680:	fe010113          	addi	sp,sp,-32
    80008684:	00813823          	sd	s0,16(sp)
    80008688:	00113c23          	sd	ra,24(sp)
    8000868c:	00913423          	sd	s1,8(sp)
    80008690:	02010413          	addi	s0,sp,32
    80008694:	14202773          	csrr	a4,scause
    80008698:	100027f3          	csrr	a5,sstatus
    8000869c:	0027f793          	andi	a5,a5,2
    800086a0:	06079e63          	bnez	a5,8000871c <console_handler+0x9c>
    800086a4:	00074c63          	bltz	a4,800086bc <console_handler+0x3c>
    800086a8:	01813083          	ld	ra,24(sp)
    800086ac:	01013403          	ld	s0,16(sp)
    800086b0:	00813483          	ld	s1,8(sp)
    800086b4:	02010113          	addi	sp,sp,32
    800086b8:	00008067          	ret
    800086bc:	0ff77713          	andi	a4,a4,255
    800086c0:	00900793          	li	a5,9
    800086c4:	fef712e3          	bne	a4,a5,800086a8 <console_handler+0x28>
    800086c8:	ffffe097          	auipc	ra,0xffffe
    800086cc:	6dc080e7          	jalr	1756(ra) # 80006da4 <plic_claim>
    800086d0:	00a00793          	li	a5,10
    800086d4:	00050493          	mv	s1,a0
    800086d8:	02f50c63          	beq	a0,a5,80008710 <console_handler+0x90>
    800086dc:	fc0506e3          	beqz	a0,800086a8 <console_handler+0x28>
    800086e0:	00050593          	mv	a1,a0
    800086e4:	00001517          	auipc	a0,0x1
    800086e8:	fd450513          	addi	a0,a0,-44 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800086ec:	fffff097          	auipc	ra,0xfffff
    800086f0:	afc080e7          	jalr	-1284(ra) # 800071e8 <__printf>
    800086f4:	01013403          	ld	s0,16(sp)
    800086f8:	01813083          	ld	ra,24(sp)
    800086fc:	00048513          	mv	a0,s1
    80008700:	00813483          	ld	s1,8(sp)
    80008704:	02010113          	addi	sp,sp,32
    80008708:	ffffe317          	auipc	t1,0xffffe
    8000870c:	6d430067          	jr	1748(t1) # 80006ddc <plic_complete>
    80008710:	fffff097          	auipc	ra,0xfffff
    80008714:	3e0080e7          	jalr	992(ra) # 80007af0 <uartintr>
    80008718:	fddff06f          	j	800086f4 <console_handler+0x74>
    8000871c:	00001517          	auipc	a0,0x1
    80008720:	09c50513          	addi	a0,a0,156 # 800097b8 <digits+0x78>
    80008724:	fffff097          	auipc	ra,0xfffff
    80008728:	a68080e7          	jalr	-1432(ra) # 8000718c <panic>
	...
