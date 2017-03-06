
.globl update__7TExPaneFv
update__7TExPaneFv: # 0x8013ebf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lbz     r0, 0x4e(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8013eca4
    addi    r3, r31, 0x14
    bl      update__8TCoord2DFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8013ec28
    li      r0, 0x0
    stb     r0, 0x4e(r31)
branch_0x8013ec28:
    lfs     f1, 0x18(r31)
    lfs     f0, -0x4cc8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8013ec40
    lfs     f0, -0x4cc4(rtoc)
    b       branch_0x8013ec44

branch_0x8013ec40:
    lfs     f0, -0x4cc0(rtoc)
branch_0x8013ec44:
    fadds   f1, f1, f0
    lfs     f2, 0x14(r31)
    lfs     f0, -0x4cc8(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x38(sp)
    lwz     r4, 0x3c(sp)
    ble-    branch_0x8013ec6c
    lfs     f0, -0x4cc4(rtoc)
    b       branch_0x8013ec70

branch_0x8013ec6c:
    lfs     f0, -0x4cc0(rtoc)
branch_0x8013ec70:
    fadds   f0, f2, f0
    lwz     r3, 0x0(r31)
    lwz     r0, 0x8(r31)
    lwz     r12, 0x0(r3)
    fctiwz  f0, f0
    lwz     r12, 0xc(r12)
    add     r5, r0, r4
    lwz     r0, 0x4(r31)
    stfd    f0, 0x38(sp)
    mtlr    r12
    lwz     r4, 0x3c(sp)
    add     r4, r0, r4
    blrl
branch_0x8013eca4:
    lbz     r0, 0x4f(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8013ed34
    addi    r3, r31, 0x2c
    bl      update__8TCoord2DFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8013ecc8
    li      r0, 0x0
    stb     r0, 0x4f(r31)
branch_0x8013ecc8:
    lfs     f1, 0x30(r31)
    lfs     f0, -0x4cc8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8013ece0
    lfs     f0, -0x4cc4(rtoc)
    b       branch_0x8013ece4

branch_0x8013ece0:
    lfs     f0, -0x4cc0(rtoc)
branch_0x8013ece4:
    fadds   f1, f1, f0
    lfs     f2, 0x2c(r31)
    lfs     f0, -0x4cc8(rtoc)
    fctiwz  f1, f1
    fcmpo   cr0, f2, f0
    stfd    f1, 0x38(sp)
    lwz     r5, 0x3c(sp)
    ble-    branch_0x8013ed0c
    lfs     f0, -0x4cc4(rtoc)
    b       branch_0x8013ed10

branch_0x8013ed0c:
    lfs     f0, -0x4cc0(rtoc)
branch_0x8013ed10:
    fadds   f0, f2, f0
    lwz     r3, 0x0(r31)
    lwz     r12, 0x0(r3)
    fctiwz  f0, f0
    lwz     r12, 0x14(r12)
    stfd    f0, 0x38(sp)
    mtlr    r12
    lwz     r4, 0x3c(sp)
    blrl
branch_0x8013ed34:
    lbz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8013ee28
    lfs     f3, 0x48(r31)
    lfs     f0, -0x4cc8(rtoc)
    fcmpo   cr0, f3, f0
    bge-    branch_0x8013ed80
    lha     r3, 0x4c(r31)
    lis     r0, 0x4330
    lfd     f1, -0x4cb8(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x44(r31)
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    beq-    branch_0x8013edc0
branch_0x8013ed80:
    lfs     f0, -0x4cc8(rtoc)
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x8013edc8
    lha     r3, 0x4c(r31)
    lis     r0, 0x4330
    lfd     f1, -0x4cb8(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x44(r31)
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8013edc8
branch_0x8013edc0:
    li      r0, 0x0
    stb     r0, 0x50(r31)
branch_0x8013edc8:
    lfs     f1, 0x44(r31)
    lfs     f0, 0x48(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x44(r31)
    lfs     f1, 0x44(r31)
    lfs     f0, -0x4cc8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8013edec
    b       branch_0x8013edf0

branch_0x8013edec:
    fmr     f0, f1
branch_0x8013edf0:
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    stfd    f0, 0x38(sp)
    extsh   r0, r0
    cmpwi   r0, 0xff
    lwz     r0, 0x3c(sp)
    ble-    branch_0x8013ee18
    li      r0, 0xff
    b       branch_0x8013ee1c

branch_0x8013ee18:
    extsh   r0, r0
branch_0x8013ee1c:
    lwz     r3, 0x0(r31)
    extsh   r0, r0
    stb     r0, 0xcc(r3)
branch_0x8013ee28:
    lbz     r0, 0x4e(r31)
    li      r3, 0x0
    addi    r4, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8013ee4c
    lbz     r0, 0x4f(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8013ee4c
    li      r4, 0x1
branch_0x8013ee4c:
    clrlwi. r0, r4, 24
    beq-    branch_0x8013ee64
    lbz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8013ee64
    li      r3, 0x1
branch_0x8013ee64:
    clrlwi. r0, r3, 24
    beq-    branch_0x8013ee74
    li      r3, 0x1
    b       branch_0x8013ee78

branch_0x8013ee74:
    li      r3, 0x0
branch_0x8013ee78:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl resize__7J2DPaneFii
resize__7J2DPaneFii: # 0x8013ee8c
    mflr    r0
    addi    r3, r3, 0x14
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      resize__7JUTRectFii
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl move__7J2DPaneFii
move__7J2DPaneFii: # 0x8013eeb0
    mflr    r0
    addi    r3, r3, 0x14
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      move__7JUTRectFii
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__7TExPaneFP9J2DScreenUl
__ct__7TExPaneFP9J2DScreenUl: # 0x8013eed4
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    li      r7, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    li      r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    addi    r3, r29, 0x4
    bl      set__7JUTRectFiiii
    addi    r3, r29, 0x14
    bl      __ct__8TCoord2DFv
    addi    r3, r29, 0x2c
    bl      __ct__8TCoord2DFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x0(r29)
    li      r4, 0xff
    li      r0, 0x0
    lwz     r7, 0x0(r29)
    mr      r3, r29
    lwz     r6, 0x14(r7)
    lwz     r5, 0x18(r7)
    stw     r6, 0x4(r29)
    stw     r5, 0x8(r29)
    lwz     r6, 0x1c(r7)
    lwz     r5, 0x20(r7)
    stw     r6, 0xc(r29)
    stw     r5, 0x10(r29)
    lfs     f0, -0x4cb0(rtoc)
    stfs    f0, 0x44(r29)
    lfs     f0, -0x4cc8(rtoc)
    stfs    f0, 0x48(r29)
    sth     r4, 0x4c(r29)
    stb     r0, 0x4e(r29)
    stb     r0, 0x4f(r29)
    stb     r0, 0x50(r29)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr

