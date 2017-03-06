
.globl update__10TBoundPaneFv
update__10TBoundPaneFv: # 0x80154c98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lbz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80154e40
    lfs     f1, 0x28(r31)
    lfs     f0, -0x4b50(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80154cd4
    stfs    f0, 0x28(r31)
    li      r0, 0x0
    stb     r0, 0x24(r31)
branch_0x80154cd4:
    lwz     r0, 0x40(r31)
    lis     r4, 0x4330
    lfs     f2, 0x28(r31)
    lfs     f0, -0x4b50(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x3c(sp)
    fmuls   f9, f2, f2
    fsubs   f1, f0, f2
    lwz     r0, 0x38(r31)
    lfs     f0, -0x4b4c(rtoc)
    stw     r4, 0x38(sp)
    xoris   r3, r0, 0x8000
    lwz     r0, 0x44(r31)
    fmuls   f0, f0, f1
    stw     r3, 0x44(sp)
    lwz     r3, 0x48(r31)
    xoris   r0, r0, 0x8000
    stw     r4, 0x40(sp)
    xoris   r5, r3, 0x8000
    lwz     r3, 0x3c(r31)
    stw     r0, 0x24(sp)
    fmuls   f7, f0, f2
    xoris   r0, r3, 0x8000
    lwz     r3, 0x4c(r31)
    stw     r5, 0x4c(sp)
    xoris   r3, r3, 0x8000
    stw     r4, 0x20(sp)
    fmuls   f8, f1, f1
    lfd     f6, -0x4b38(rtoc)
    lfd     f0, 0x38(sp)
    lfd     f2, 0x40(sp)
    fsubs   f1, f0, f6
    stw     r4, 0x48(sp)
    lfd     f0, 0x20(sp)
    fsubs   f3, f2, f6
    stw     r0, 0x2c(sp)
    fmuls   f2, f1, f7
    stw     r4, 0x28(sp)
    lfd     f4, 0x48(sp)
    fsubs   f0, f0, f6
    stw     r3, 0x34(sp)
    lfd     f1, 0x28(sp)
    fsubs   f5, f4, f6
    fmadds  f4, f3, f8, f2
    stw     r4, 0x30(sp)
    fsubs   f2, f1, f6
    fmuls   f1, f0, f7
    lfd     f3, 0x30(sp)
    fmadds  f4, f5, f9, f4
    lfs     f0, -0x4b48(rtoc)
    fsubs   f3, f3, f6
    fmadds  f1, f2, f8, f1
    fcmpo   cr0, f4, f0
    fmadds  f2, f3, f9, f1
    ble-    branch_0x80154db8
    lfs     f0, -0x4b44(rtoc)
    b       branch_0x80154dbc

branch_0x80154db8:
    lfs     f0, -0x4b40(rtoc)
branch_0x80154dbc:
    fadds   f1, f4, f0
    lfs     f0, -0x4b48(rtoc)
    fcmpo   cr0, f2, f0
    fctiwz  f0, f1
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    ble-    branch_0x80154de0
    lfs     f0, -0x4b44(rtoc)
    b       branch_0x80154de4

branch_0x80154de0:
    lfs     f0, -0x4b40(rtoc)
branch_0x80154de4:
    fadds   f0, f2, f0
    extsh   r0, r0
    stw     r0, 0x14(r31)
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    extsh   r0, r0
    stw     r0, 0x18(r31)
    lwz     r3, 0x0(r31)
    lwz     r4, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x14(r31)
    lwz     r12, 0xc(r12)
    lwz     r5, 0x8(r31)
    add     r4, r4, r0
    lwz     r0, 0x18(r31)
    mtlr    r12
    add     r5, r5, r0
    blrl
    lfs     f1, 0x28(r31)
    lfs     f0, 0x2c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r31)
branch_0x80154e40:
    lbz     r0, 0x25(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80154fe4
    lfs     f1, 0x30(r31)
    lfs     f0, -0x4b50(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80154e68
    stfs    f0, 0x30(r31)
    li      r0, 0x0
    stb     r0, 0x25(r31)
branch_0x80154e68:
    lwz     r0, 0x58(r31)
    lis     r4, 0x4330
    lfs     f2, 0x30(r31)
    lfs     f0, -0x4b50(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(sp)
    fmuls   f9, f2, f2
    fsubs   f1, f0, f2
    lwz     r0, 0x50(r31)
    lfs     f0, -0x4b4c(rtoc)
    stw     r4, 0x30(sp)
    xoris   r3, r0, 0x8000
    lwz     r0, 0x5c(r31)
    fmuls   f0, f0, f1
    stw     r3, 0x2c(sp)
    lwz     r3, 0x60(r31)
    xoris   r0, r0, 0x8000
    stw     r4, 0x28(sp)
    xoris   r5, r3, 0x8000
    lwz     r3, 0x54(r31)
    stw     r0, 0x4c(sp)
    fmuls   f7, f0, f2
    xoris   r0, r3, 0x8000
    lwz     r3, 0x64(r31)
    stw     r5, 0x24(sp)
    xoris   r3, r3, 0x8000
    stw     r4, 0x48(sp)
    fmuls   f8, f1, f1
    lfd     f6, -0x4b38(rtoc)
    lfd     f0, 0x30(sp)
    lfd     f2, 0x28(sp)
    fsubs   f1, f0, f6
    stw     r4, 0x20(sp)
    lfd     f0, 0x48(sp)
    fsubs   f3, f2, f6
    stw     r0, 0x44(sp)
    fmuls   f2, f1, f7
    stw     r4, 0x40(sp)
    lfd     f4, 0x20(sp)
    fsubs   f0, f0, f6
    stw     r3, 0x3c(sp)
    lfd     f1, 0x40(sp)
    fsubs   f5, f4, f6
    fmadds  f4, f3, f8, f2
    stw     r4, 0x38(sp)
    fsubs   f2, f1, f6
    fmuls   f1, f0, f7
    lfd     f3, 0x38(sp)
    fmadds  f4, f5, f9, f4
    lfs     f0, -0x4b48(rtoc)
    fsubs   f3, f3, f6
    fmadds  f1, f2, f8, f1
    fcmpo   cr0, f4, f0
    fmadds  f2, f3, f9, f1
    ble-    branch_0x80154f4c
    lfs     f0, -0x4b44(rtoc)
    b       branch_0x80154f50

branch_0x80154f4c:
    lfs     f0, -0x4b40(rtoc)
branch_0x80154f50:
    fadds   f1, f4, f0
    lfs     f0, -0x4b48(rtoc)
    fcmpo   cr0, f2, f0
    fctiwz  f0, f1
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    ble-    branch_0x80154f74
    lfs     f0, -0x4b44(rtoc)
    b       branch_0x80154f78

branch_0x80154f74:
    lfs     f0, -0x4b40(rtoc)
branch_0x80154f78:
    fadds   f0, f2, f0
    extsh   r0, r0
    stw     r0, 0x1c(r31)
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    extsh   r0, r0
    stw     r0, 0x20(r31)
    lwz     r3, 0x0(r31)
    lwz     r4, 0x8(r31)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x10(r31)
    lwz     r12, 0x14(r12)
    lwz     r6, 0x4(r31)
    subf    r7, r4, r0
    lwz     r5, 0xc(r31)
    mtlr    r12
    lwz     r0, 0x20(r31)
    lwz     r4, 0x1c(r31)
    subf    r6, r6, r5
    add     r5, r0, r7
    add     r4, r4, r6
    blrl
    lfs     f1, 0x30(r31)
    lfs     f0, 0x34(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
branch_0x80154fe4:
    lbz     r0, 0x24(r31)
    li      r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x80155004
    lbz     r0, 0x25(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80155004
    li      r3, 0x1
branch_0x80155004:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl setPaneSize__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
setPaneSize__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint: # 0x80155018
    stwu    sp, -0x28(sp)
    xoris   r0, r4, 0x8000
    lis     r4, 0x4330
    stw     r0, 0x24(sp)
    li      r0, 0x1
    lfs     f0, -0x4b48(rtoc)
    stw     r4, 0x20(sp)
    stfs    f0, 0x30(r3)
    lfd     f0, 0x20(sp)
    addi    sp, sp, 0x28
    lfd     f1, -0x4b38(rtoc)
    lfs     f2, -0x4b50(rtoc)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x34(r3)
    lwz     r8, 0x0(r5)
    lwz     r4, 0x4(r5)
    stw     r8, 0x50(r3)
    stw     r4, 0x54(r3)
    lwz     r5, 0x0(r6)
    lwz     r4, 0x4(r6)
    stw     r5, 0x58(r3)
    stw     r4, 0x5c(r3)
    lwz     r5, 0x0(r7)
    lwz     r4, 0x4(r7)
    stw     r5, 0x60(r3)
    stw     r4, 0x64(r3)
    stb     r0, 0x25(r3)
    blr


.globl setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint: # 0x8015508c
    stwu    sp, -0x28(sp)
    xoris   r0, r4, 0x8000
    lis     r4, 0x4330
    stw     r0, 0x24(sp)
    li      r0, 0x1
    lfs     f0, -0x4b48(rtoc)
    stw     r4, 0x20(sp)
    stfs    f0, 0x28(r3)
    lfd     f0, 0x20(sp)
    addi    sp, sp, 0x28
    lfd     f1, -0x4b38(rtoc)
    lfs     f2, -0x4b50(rtoc)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x2c(r3)
    lwz     r8, 0x0(r5)
    lwz     r4, 0x4(r5)
    stw     r8, 0x38(r3)
    stw     r4, 0x3c(r3)
    lwz     r5, 0x0(r6)
    lwz     r4, 0x4(r6)
    stw     r5, 0x40(r3)
    stw     r4, 0x44(r3)
    lwz     r5, 0x0(r7)
    lwz     r4, 0x4(r7)
    stw     r5, 0x48(r3)
    stw     r4, 0x4c(r3)
    stb     r0, 0x24(r3)
    blr


.globl __ct__10TBoundPaneFP9J2DScreenUl
__ct__10TBoundPaneFP9J2DScreenUl: # 0x80155100
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    li      r7, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    li      r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    li      r4, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    addi    r3, r28, 0x4
    bl      set__7JUTRectFiiii
    li      r31, 0x0
    stw     r31, 0x14(r28)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    stw     r31, 0x18(r28)
    stw     r31, 0x1c(r28)
    stw     r31, 0x20(r28)
    stw     r31, 0x38(r28)
    stw     r31, 0x3c(r28)
    stw     r31, 0x40(r28)
    stw     r31, 0x44(r28)
    stw     r31, 0x48(r28)
    stw     r31, 0x4c(r28)
    stw     r31, 0x50(r28)
    stw     r31, 0x54(r28)
    stw     r31, 0x58(r28)
    stw     r31, 0x5c(r28)
    stw     r31, 0x60(r28)
    stw     r31, 0x64(r28)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x0(r28)
    mr      r3, r28
    lwz     r5, 0x0(r28)
    lwz     r4, 0x14(r5)
    lwz     r0, 0x18(r5)
    stw     r4, 0x4(r28)
    stw     r0, 0x8(r28)
    lwz     r4, 0x1c(r5)
    lwz     r0, 0x20(r5)
    stw     r4, 0xc(r28)
    stw     r0, 0x10(r28)
    lfs     f0, -0x4b48(rtoc)
    stfs    f0, 0x28(r28)
    stfs    f0, 0x2c(r28)
    stfs    f0, 0x30(r28)
    stfs    f0, 0x34(r28)
    stb     r31, 0x24(r28)
    stb     r31, 0x25(r28)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr

