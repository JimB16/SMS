
.globl perform__Q26JDrama12TDStageGroupFUlPQ26JDrama9TGraphics
perform__Q26JDrama12TDStageGroupFUlPQ26JDrama9TGraphics: # 0x802f860c
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x802f8684
    addi    r3, r29, 0x20
    lwz     r12, 0x20(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_FUlPQ26JDrama9TGraphics
    addi    r3, r29, 0x20
    lwz     r12, 0x20(r29)
    rlwinm  r0, r30, 0, 29, 27
    addi    r5, r31, 0x0
    lwz     r12, 0x20(r12)
    ori     r4, r0, 0x100
    mtlr    r12
    blrl
branch_0x802f8684:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__Q26JDrama12TDStageGroupFv
__dt__Q26JDrama12TDStageGroupFv: # 0x802f86a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f8758
    lis     r3, __vvt__Q26JDrama12TDStageGroup@h
    addi    r3, r3, __vvt__Q26JDrama12TDStageGroup@l
    addic.  r0, r30, 0x20
    stw     r3, 0x0(r30)
    beq-    branch_0x802f8700
    lis     r3, __vvt__Q26JDrama9TFrmGXSet@h
    addi    r3, r3, __vvt__Q26JDrama9TFrmGXSet@l
    addic.  r0, r30, 0x20
    stw     r3, 0x20(r30)
    beq-    branch_0x802f8700
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x20(r30)
    addi    r3, r30, 0x20
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f8700:
    cmplwi  r30, 0x0
    beq-    branch_0x802f8748
    lis     r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@h
    addi    r3, r3, __vvt__Q26JDrama55TViewObjPtrListT_Q26JDrama8TViewObj_Q26JDrama8TViewObj_@l
    addic.  r0, r30, 0x10
    stw     r3, 0x0(r30)
    beq-    branch_0x802f8728
    addi    r3, r30, 0x10
    li      r4, 0x0
    bl      __dt__Q27JGadget18TList_pointer_voidFv
branch_0x802f8728:
    cmplwi  r30, 0x0
    beq-    branch_0x802f8748
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f8748:
    extsh.  r0, r31
    ble-    branch_0x802f8758
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f8758:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

