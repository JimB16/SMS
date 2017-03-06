
.globl __ct__12JKRAramBlockFUlUlUlUcb
__ct__12JKRAramBlockFUlUlUlUcb: # 0x802f05dc
    mflr    r0
    lis     r9, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r9, 0x17b8
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r3, r26, 0x4
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    addi    r4, r26, 0x0
    stw     r0, 0x0(r26)
    bl      __ct__10JSUPtrLinkFPv
    stw     r27, 0x14(r26)
    mr      r3, r26
    stw     r28, 0x18(r26)
    stw     r29, 0x1c(r26)
    stb     r30, 0x20(r26)
    stb     r31, 0x21(r26)
    lwz     r0, 0x3c(sp)
    lmw     r26, 0x20(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__12JKRAramBlockFv
__dt__12JKRAramBlockFv: # 0x802f0648
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr.     r30, r3
    beq-    branch_0x802f06e8
    lis     r3, 0x803e
    addi    r0, r3, 0x17b8
    stw     r0, 0x0(r30)
    lwz     r4, 0xc(r30)
    lwz     r3, 0x8(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x802f06ac
    lwz     r7, 0x0(r4)
    addi    r4, r30, 0x4
    lwz     r0, 0x1c(r30)
    lwz     r6, 0x1c(r7)
    lwz     r5, 0x18(r30)
    add     r0, r0, r6
    add     r0, r5, r0
    stw     r0, 0x1c(r7)
    bl      remove__10JSUPtrListFP10JSUPtrLink
    b       branch_0x802f06c4

branch_0x802f06ac:
    lwz     r4, 0x1c(r30)
    li      r0, 0x0
    lwz     r3, 0x18(r30)
    add     r3, r4, r3
    stw     r3, 0x1c(r30)
    stw     r0, 0x18(r30)
branch_0x802f06c4:
    addic.  r0, r30, 0x4
    beq-    branch_0x802f06d8
    addi    r3, r30, 0x4
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802f06d8:
    extsh.  r0, r31
    ble-    branch_0x802f06e8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f06e8:
    lwz     r0, 0x2c(sp)
    mr      r3, r30
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl allocHead__12JKRAramBlockFUlUcP11JKRAramHeap
allocHead__12JKRAramBlockFUlUcP11JKRAramHeap: # 0x802f0704
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    mr      r26, r3
    mr      r28, r5
    mr      r27, r4
    li      r5, 0x0
    lwz     r7, 0x30(r6)
    lwz     r6, 0x14(r3)
    lwz     r3, 0x18(r3)
    addi    r4, r7, 0x0
    lwz     r0, 0x1c(r26)
    add     r30, r6, r3
    subf    r29, r27, r0
    li      r3, 0x24
    bl      __nw__FUlP7JKRHeapi
    mr.     r31, r3
    beq-    branch_0x802f0770
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r27, 0x0
    addi    r6, r29, 0x0
    addi    r7, r28, 0x0
    li      r8, 0x0
    bl      __ct__12JKRAramBlockFUlUlUlUcb
    mr      r31, r3
branch_0x802f0770:
    li      r0, 0x0
    stw     r0, 0x1c(r26)
    addi    r5, r31, 0x4
    lwz     r4, 0x10(r26)
    lwz     r3, 0x8(r26)
    bl      insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink
    mr      r3, r31
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl allocTail__12JKRAramBlockFUlUcP11JKRAramHeap
allocTail__12JKRAramBlockFUlUcP11JKRAramHeap: # 0x802f07a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r29, r5
    mr      r27, r3
    mr      r28, r4
    li      r5, 0x0
    lwz     r7, 0x30(r6)
    lwz     r6, 0x1c(r3)
    lwz     r0, 0x18(r3)
    addi    r4, r7, 0x0
    lwz     r3, 0x14(r3)
    add     r0, r0, r6
    add     r0, r3, r0
    subf    r30, r28, r0
    li      r3, 0x24
    bl      __nw__FUlP7JKRHeapi
    mr.     r31, r3
    beq-    branch_0x802f0810
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    addi    r7, r29, 0x0
    li      r6, 0x0
    li      r8, 0x1
    bl      __ct__12JKRAramBlockFUlUlUlUcb
    mr      r31, r3
branch_0x802f0810:
    lwz     r0, 0x1c(r27)
    addi    r5, r31, 0x4
    subf    r0, r28, r0
    stw     r0, 0x1c(r27)
    lwz     r4, 0x10(r27)
    lwz     r3, 0x8(r27)
    bl      insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink
    mr      r3, r31
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr

