
.globl __ct__9JKRThreadFUlii
__ct__9JKRThreadFUlii: # 0x802c52b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r6
    stw     r30, 0x30(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x2c(sp)
    stw     r28, 0x28(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11JKRDisposerFv
    lwz     r29, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x110
    stw     r0, 0x0(r29)
    addi    r3, r29, 0x18
    addi    r4, r29, 0x0
    bl      __ct__10JSUPtrLinkFPv
    mr      r3, r29
    bl      findFromRoot__7JKRHeapFPv
    stw     r3, 0x28(r29)
    addi    r3, r29, 0x28
    lwz     r0, 0x28(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x802c5324
    lwz     r0, -0x5f30(r13)
    stw     r0, 0x0(r3)
branch_0x802c5324:
    lwz     r29, 0x8(sp)
    clrrwi  r0, r28, 5
    li      r4, 0x20
    stw     r0, 0x5c(r29)
    lwz     r3, 0x5c(r29)
    lwz     r5, 0x28(r29)
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x58(r29)
    li      r3, 0x310
    li      r4, 0x20
    lwz     r5, 0x28(r29)
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x2c(r29)
    lis     r3, 0x802c
    addi    r4, r3, 0x54b8
    lwz     r7, 0x5c(r29)
    addi    r5, r29, 0x0
    lwz     r0, 0x58(r29)
    addi    r8, r31, 0x0
    lwz     r3, 0x2c(r29)
    add     r6, r0, r7
    li      r9, 0x1
    bl      OSCreateThread
    stw     r30, 0x54(r29)
    li      r4, 0x0
    lwz     r0, 0x54(r29)
    lwz     r5, 0x28(r29)
    slwi    r3, r0, 2
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x50(r29)
    addi    r3, r29, 0x30
    lwz     r4, 0x50(r29)
    lwz     r5, 0x54(r29)
    bl      OSInitMessageQueue
    lis     r3, 0x8040
    addi    r3, r3, 0x42c0
    addi    r4, r29, 0x18
    bl      append__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x3c(sp)
    mr      r3, r29
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl __dt__9JKRThreadFv
__dt__9JKRThreadFv: # 0x802c53e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c549c
    lis     r3, 0x803e
    addi    r0, r3, 0x110
    lis     r3, 0x8040
    stw     r0, 0x0(r30)
    addi    r3, r3, 0x42c0
    addi    r4, r30, 0x18
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x28(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802c5460
    lwz     r3, 0x2c(r30)
    bl      OSIsThreadTerminated
    cmpwi   r3, 0x0
    bne-    branch_0x802c5448
    lwz     r3, 0x2c(r30)
    bl      OSDetachThread
    lwz     r3, 0x2c(r30)
    bl      OSCancelThread
branch_0x802c5448:
    lwz     r3, 0x58(r30)
    lwz     r4, 0x28(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
    lwz     r3, 0x2c(r30)
    lwz     r4, 0x28(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802c5460:
    lwz     r3, 0x50(r30)
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    addic.  r0, r30, 0x18
    beq-    branch_0x802c5480
    addi    r3, r30, 0x18
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802c5480:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__11JKRDisposerFv
    extsh.  r0, r31
    ble-    branch_0x802c549c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c549c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl start__9JKRThreadFPv
start__9JKRThreadFPv: # 0x802c54b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl run__9JKRThreadFv
run__9JKRThreadFv: # 0x802c54e4
    li      r3, 0x0
    blr


.globl __sinit_JKRThread_cpp
__sinit_JKRThread_cpp: # 0x802c54ec
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x42c0
    addi    r3, r31, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, 0x802c
    lis     r3, 0x8040
    subi    r5, r3, 0x2a78
    addi    r4, r4, 0x5538
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__19JSUList_9JKRThread_Fv
__dt__19JSUList_9JKRThread_Fv: # 0x802c5538
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c5574
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802c5574
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c5574:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

