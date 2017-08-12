
.globl __dt__12TTargetArrowFv
__dt__12TTargetArrowFv: # 0x802bc868
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802bc8c0
    lis     r3, __vvt__12TTargetArrow@ha
    addi    r0, r3, __vvt__12TTargetArrow@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802bc8b0
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802bc8b0:
    extsh.  r0, r31
    ble-    branch_0x802bc8c0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802bc8c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setPos__12TTargetArrowFRCQ29JGeometry8TVec3_f_
setPos__12TTargetArrowFRCQ29JGeometry8TVec3_f_: # 0x802bc8dc
    lwz     r3, 0x10(r3)
    cmplwi  r3, 0x0
    beqlr-    

    lwz     r3, 0x4(r3)
    lfs     f0, 0x0(r4)
    addi    r3, r3, 0x20
    stfs    f0, 0xc(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x2c(r3)
    blr


.globl perform__12TTargetArrowFUlPQ26JDrama9TGraphics
perform__12TTargetArrowFUlPQ26JDrama9TGraphics: # 0x802bc90c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x10(r3)
    cmplwi  r6, 0x0
    beq-    branch_0x802bc938
    lbz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802bc938
    mr      r3, r6
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x802bc938:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__12TTargetArrowFv
loadAfter__12TTargetArrowFv: # 0x802bc948
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, R13Off_m0x75c8(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802bc998
    lis     r3, unk_803a92e4@ha
    lwz     r4, R13Off_m0x75c8(r13)
    addi    r3, r3, unk_803a92e4@l
    li      r5, 0x3
    lis     r6, 0x1001
    bl      SMS_MakeMActor__FPCcPCcUlUl
    stw     r3, 0x10(r31)
    lis     r3, unk_803a92fc@ha
    addi    r4, r3, unk_803a92fc@l
    lwz     r3, 0x10(r31)
    bl      setBck__6MActorFPCc
branch_0x802bc998:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

