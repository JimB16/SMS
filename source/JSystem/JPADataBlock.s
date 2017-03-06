
.globl __ct__12JPADataBlockFPCUcP7JKRHeap
__ct__12JPADataBlockFPCUcP7JKRHeap: # 0x80335338
    mflr    r0
    lis     r6, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x4474
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    stw     r0, 0x0(r3)
    lwz     r31, 0x4(r4)
    li      r4, 0x20
    addi    r3, r31, 0x0
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x4(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r3, 0x4(r29)
    bl      memcpy
    addi    r0, r31, 0x1f
    lwz     r3, 0x4(r29)
    clrrwi  r4, r0, 5
    bl      DCStoreRange
    lwz     r0, 0x2c(sp)
    mr      r3, r29
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr

