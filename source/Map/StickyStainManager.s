
.globl __dt__19TStickyStainManagerFv
__dt__19TStickyStainManagerFv: # 0x801aeac8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801aeb20
    lis     r3, __vvt__19TStickyStainManager@h
    addi    r0, r3, __vvt__19TStickyStainManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801aeb10
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801aeb10:
    extsh.  r0, r31
    ble-    branch_0x801aeb20
    mr      r3, r30
    bl      __dl__FPv
branch_0x801aeb20:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__19TStickyStainManagerFUlPQ26JDrama9TGraphics
perform__19TStickyStainManagerFUlPQ26JDrama9TGraphics: # 0x801aeb3c
    blr

