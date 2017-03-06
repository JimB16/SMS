
.globl __ct__Q26JDrama11TDStageDispFPCcQ26JDrama10TFlagT_Us_
__ct__Q26JDrama11TDStageDispFPCcQ26JDrama10TFlagT_Us_: # 0x802f83b0
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    li      r4, 0x0
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r6, sp, 0x38
    stw     r30, 0x48(sp)
    mr      r30, r5
    li      r5, 0x0
    stw     r29, 0x44(sp)
    stw     r3, 0x8(sp)
    sth     r0, 0x38(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__Q26JDrama14TViewConnecterFPQ26JDrama8TViewObjPQ26JDrama8TViewObjQ26JDrama10TFlagT_Us_PCc
    lis     r4, 0x803e
    lwz     r3, 0x8(sp)
    addi    r0, r4, 0x1df8
    stw     r0, 0x0(r3)
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802f8480
    lhz     r30, 0x0(r30)
    lis     r3, 0x803b
    subi    r4, r3, 0x5d88
    stw     r29, 0x20(sp)
    stw     r29, 0x28(sp)
    lwz     r3, 0x20(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x20(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r31, 0x28(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x1e98
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x10
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lis     r3, 0x803e
    sth     r30, 0x20(r31)
    addi    r0, r3, 0x1e74
    stw     r0, 0x0(r29)
branch_0x802f8480:
    lwz     r4, 0x8(sp)
    li      r3, 0x20
    stw     r29, 0x10(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802f84e8
    stw     r29, 0x1c(sp)
    lis     r3, 0x803b
    subi    r4, r3, 0x5d78
    stw     r29, 0x24(sp)
    lwz     r3, 0x1c(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x1c(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r31, 0x24(sp)
    addi    r4, sp, 0x18
    addi    r3, r31, 0x10
    bl      __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, 0x803c
    addi    r0, r3, 0xf5c
    stw     r0, 0x0(r31)
branch_0x802f84e8:
    lwz     r3, 0x8(sp)
    stw     r29, 0x14(r3)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl __dt__Q26JDrama14TViewConnecterFv
__dt__Q26JDrama14TViewConnecterFv: # 0x802f850c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f8564
    lis     r3, 0x803e
    addi    r0, r3, 0x2280
    stw     r0, 0x0(r30)
    beq-    branch_0x802f8554
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f8554:
    extsh.  r0, r31
    ble-    branch_0x802f8564
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f8564:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getEfbCtrlDisp__Q26JDrama11TDStageDispFv
getEfbCtrlDisp__Q26JDrama11TDStageDispFv: # 0x802f8580
    lwz     r3, 0x10(r3)
    blr


.globl __dt__Q26JDrama11TDStageDispFv
__dt__Q26JDrama11TDStageDispFv: # 0x802f8588
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f85f0
    lis     r3, 0x803e
    addi    r0, r3, 0x1df8
    stw     r0, 0x0(r30)
    beq-    branch_0x802f85e0
    lis     r3, 0x803e
    addi    r0, r3, 0x2280
    stw     r0, 0x0(r30)
    beq-    branch_0x802f85e0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f85e0:
    extsh.  r0, r31
    ble-    branch_0x802f85f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f85f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

