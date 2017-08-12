
.globl update__8TCoord2DFv
update__8TCoord2DFv: # 0x8013eab0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lfs     f2, 0x10(r3)
    lfs     f1, 0x8(r30)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f2, 0x14(r30)
    addi    r3, r30, 0x4
    lfs     f1, 0xc(r30)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f1, 0x0(r30)
    li      r0, 0x0
    lfs     f0, 0x8(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8013eb10
    lfs     f1, 0x4(r30)
    lfs     f0, 0xc(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8013eb10
    li      r0, 0x1
branch_0x8013eb10:
    clrlwi. r0, r0, 24
    beq-    branch_0x8013eb20
    li      r0, 0x1
    b       branch_0x8013eb24

branch_0x8013eb20:
    li      r0, 0x0
branch_0x8013eb24:
    clrlwi. r0, r0, 24
    beq-    branch_0x8013eb3c
    lfs     f0, -0x4cd8(r2)
    li      r31, 0x1
    stfs    f0, 0x10(r30)
    stfs    f0, 0x14(r30)
branch_0x8013eb3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setValue__8TCoord2DFlffff
setValue__8TCoord2DFlffff: # 0x8013eb58
    stwu    sp, -0x30(sp)
    cmpwi   r4, 0x0
    stfs    f1, 0x8(r3)
    stfs    f2, 0xc(r3)
    stfs    f3, 0x0(r3)
    stfs    f4, 0x4(r3)
    bgt-    branch_0x8013eb84
    lfs     f0, -0x4cd8(r2)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    b       branch_0x8013ebc8

branch_0x8013eb84:
    xoris   r4, r4, 0x8000
    lfd     f5, -0x4cd0(r2)
    stw     r4, 0x2c(sp)
    lis     r0, 0x4330
    fsubs   f3, f1, f3
    stw     r0, 0x28(sp)
    fsubs   f1, f2, f4
    stw     r4, 0x24(sp)
    lfd     f0, 0x28(sp)
    stw     r0, 0x20(sp)
    fsubs   f2, f0, f5
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f5
    fdivs   f2, f3, f2
    fdivs   f0, f1, f0
    stfs    f2, 0x10(r3)
    stfs    f0, 0x14(r3)
branch_0x8013ebc8:
    addi    sp, sp, 0x30
    blr


.globl __ct__8TCoord2DFv
__ct__8TCoord2DFv: # 0x8013ebd0
    lfs     f0, -0x4cd8(r2)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x0(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x10(r3)
    blr

