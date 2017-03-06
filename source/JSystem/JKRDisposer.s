
.globl __ct__11JKRDisposerFv
__ct__11JKRDisposerFv: # 0x802bfff4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    subi    r0, r3, 0x148
    lwz     r30, 0x8(sp)
    addi    r31, r30, 0x8
    stw     r0, 0x0(r30)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      __ct__10JSUPtrLinkFPv
    mr      r3, r30
    bl      findFromRoot__7JKRHeapFPv
    stw     r3, 0x4(r30)
    lwz     r3, 0x4(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802c0050
    addi    r3, r3, 0x58
    addi    r4, r31, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x802c0050:
    lwz     r0, 0x1c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x14(sp)
    mtlr    r0
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl __dt__11JKRDisposerFv
__dt__11JKRDisposerFv: # 0x802c006c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c00d4
    lis     r3, 0x803e
    subi    r0, r3, 0x148
    stw     r0, 0x0(r30)
    lwz     r3, 0x4(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802c00b0
    addi    r3, r3, 0x58
    addi    r4, r30, 0x8
    bl      remove__10JSUPtrListFP10JSUPtrLink
branch_0x802c00b0:
    addic.  r0, r30, 0x8
    beq-    branch_0x802c00c4
    addi    r3, r30, 0x8
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802c00c4:
    extsh.  r0, r31
    ble-    branch_0x802c00d4
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c00d4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

