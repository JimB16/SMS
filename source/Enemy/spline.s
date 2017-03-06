
.globl calcSpline__11TSplinePathFfPfPfPf
calcSpline__11TSplinePathFfPfPfPf: # 0x8006ee38
    lwz     r3, 0x0(r3)
    cmpwi   r3, 0x1
    bne-    branch_0x8006ee4c
    lfs     f1, 0x0(r5)
    blr

branch_0x8006ee4c:
    cmpwi   r3, 0x2
    bne-    branch_0x8006ee70
    lfs     f2, -0x6b48(rtoc)
    lfs     f0, 0x4(r5)
    fsubs   f2, f2, f1
    lfs     f3, 0x0(r5)
    fmuls   f0, f0, f1
    fmadds  f1, f3, f2, f0
    blr

branch_0x8006ee70:
    subi    r8, r3, 0x1
    li      r7, 0x0
    b       branch_0x8006eea4

branch_0x8006ee7c:
    add     r0, r7, r8
    srawi   r3, r0, 1
    addze   r3, r3
    slwi    r0, r3, 2
    lfsx    f0, r4, r0
    fcmpo   cr0, f0, f1
    bge-    branch_0x8006eea0
    addi    r7, r3, 0x1
    b       branch_0x8006eea4

branch_0x8006eea0:
    mr      r8, r3
branch_0x8006eea4:
    cmpw    r7, r8
    blt+    branch_0x8006ee7c
    cmpwi   r7, 0x0
    ble-    branch_0x8006eeb8
    subi    r7, r7, 0x1
branch_0x8006eeb8:
    slwi    r0, r7, 2
    lfs     f0, -0x6b40(rtoc)
    add     r3, r6, r0
    lfsx    f4, r4, r0
    lfsx    f5, r6, r0
    add     r4, r4, r0
    lfs     f6, 0x4(r3)
    add     r3, r5, r0
    fsubs   f8, f1, f4
    fsubs   f2, f6, f5
    lfs     f3, 0x4(r4)
    lfsx    f7, r5, r0
    fmadds  f1, f0, f5, f6
    lfs     f0, 0x4(r3)
    fsubs   f4, f3, f4
    lfs     f3, -0x6b44(rtoc)
    fmuls   f2, f8, f2
    fsubs   f0, f0, f7
    fdivs   f2, f2, f4
    fdivs   f0, f0, f4
    fmadds  f2, f3, f5, f2
    fnmsubs  f0, f4, f1, f0
    fmadds  f0, f8, f2, f0
    fmadds  f1, f8, f0, f7
    blr


.globl calcTable__11TSplinePathFv
calcTable__11TSplinePathFv: # 0x8006ef1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x2
    bgt-    branch_0x8006ef50
    li      r0, 0x1
    stw     r0, 0x28(r31)
    b       branch_0x8006f060

branch_0x8006ef50:
    lfs     f0, -0x6b3c(rtoc)
    li      r29, 0x1
    lwz     r3, 0x1c(r31)
    li      r30, 0x4
    stfs    f0, 0x0(r3)
    b       branch_0x8006efd4

branch_0x8006ef68:
    lwz     r0, 0x4(r31)
    addi    r3, sp, 0x10
    lwz     r4, 0x8(r31)
    add     r6, r0, r30
    lwz     r0, 0xc(r31)
    lfs     f1, 0x0(r6)
    add     r5, r4, r30
    lfs     f0, -0x4(r6)
    add     r4, r0, r30
    lfs     f3, 0x0(r5)
    lfs     f2, -0x4(r5)
    fsubs   f0, f1, f0
    lfs     f4, 0x0(r4)
    lfs     f1, -0x4(r4)
    fsubs   f2, f3, f2
    stfs    f0, 0x10(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x14(sp)
    stfs    f0, 0x18(sp)
    bl      PSVECMag
    lwz     r0, 0x1c(r31)
    addi    r29, r29, 0x1
    add     r3, r0, r30
    lfs     f0, -0x4(r3)
    addi    r30, r30, 0x4
    fadds   f0, f0, f1
    stfs    f0, 0x0(r3)
branch_0x8006efd4:
    lwz     r0, 0x0(r31)
    cmpw    r29, r0
    blt+    branch_0x8006ef68
    li      r6, 0x1
    li      r3, 0x4
    b       branch_0x8006f010

branch_0x8006efec:
    slwi    r4, r0, 2
    lwz     r5, 0x1c(r31)
    subi    r0, r4, 0x4
    lfsx    f1, r5, r3
    addi    r6, r6, 0x1
    lfsx    f0, r5, r0
    fdivs   f0, f1, f0
    stfsx   f0, r5, r3
    addi    r3, r3, 0x4
branch_0x8006f010:
    lwz     r0, 0x0(r31)
    cmpw    r6, r0
    blt+    branch_0x8006efec
    lwz     r4, 0x1c(r31)
    mr      r3, r31
    lwz     r5, 0x4(r31)
    lwz     r6, 0x10(r31)
    bl      makeTable__11TSplinePathFPfPfPf
    lwz     r4, 0x1c(r31)
    mr      r3, r31
    lwz     r5, 0x8(r31)
    lwz     r6, 0x14(r31)
    bl      makeTable__11TSplinePathFPfPfPf
    lwz     r4, 0x1c(r31)
    mr      r3, r31
    lwz     r5, 0xc(r31)
    lwz     r6, 0x18(r31)
    bl      makeTable__11TSplinePathFPfPfPf
    li      r0, 0x1
    stw     r0, 0x28(r31)
branch_0x8006f060:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl makeTable__11TSplinePathFPfPfPf
makeTable__11TSplinePathFPfPfPf: # 0x8006f07c
    lfs     f3, -0x6b3c(rtoc)
    li      r10, 0x0
    li      r7, 0x0
    stfs    f3, 0x0(r6)
    lwz     r0, 0x0(r3)
    slwi    r0, r0, 2
    add     r8, r6, r0
    stfs    f3, -0x4(r8)
    lfs     f2, -0x6b38(rtoc)
    b       branch_0x8006f108

branch_0x8006f0a4:
    add     r9, r4, r7
    lwz     r8, 0x20(r3)
    lfs     f1, 0x4(r9)
    lfs     f0, 0x0(r9)
    fsubs   f0, f1, f0
    stfsx   f0, r8, r7
    lwz     r8, 0x20(r3)
    lfsx    f4, r8, r7
    fabs    f0, f4
    fcmpo   cr0, f0, f2
    bge-    branch_0x8006f0e0
    lwz     r8, 0x24(r3)
    addi    r0, r7, 0x4
    stfsx   f3, r8, r0
    b       branch_0x8006f100

branch_0x8006f0e0:
    add     r9, r5, r7
    lwz     r8, 0x24(r3)
    lfs     f1, 0x4(r9)
    addi    r0, r7, 0x4
    lfs     f0, 0x0(r9)
    fsubs   f0, f1, f0
    fdivs   f0, f0, f4
    stfsx   f0, r8, r0
branch_0x8006f100:
    addi    r10, r10, 0x1
    addi    r7, r7, 0x4
branch_0x8006f108:
    lwz     r8, 0x0(r3)
    subi    r0, r8, 0x1
    cmpw    r10, r0
    blt+    branch_0x8006f0a4
    lwz     r8, 0x24(r3)
    li      r11, 0x1
    lwz     r7, 0x20(r3)
    li      r5, 0x4
    lfs     f1, 0x8(r8)
    lfs     f0, 0x4(r8)
    lfs     f2, 0x0(r7)
    fsubs   f0, f1, f0
    lfs     f1, 0x0(r6)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x4(r6)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x0(r4)
    lfs     f4, -0x6b40(rtoc)
    fsubs   f0, f1, f0
    lwz     r7, 0x24(r3)
    fmuls   f0, f4, f0
    stfs    f0, 0x4(r7)
    lfs     f3, -0x6b38(rtoc)
    b       branch_0x8006f1e8

branch_0x8006f168:
    lwz     r7, 0x24(r3)
    lfsx    f0, r7, r5
    fabs    f0, f0
    fcmpo   cr0, f0, f3
    bge-    branch_0x8006f180
    stfsx   f3, r7, r5
branch_0x8006f180:
    lwz     r0, 0x24(r3)
    add     r9, r6, r5
    lwz     r7, 0x20(r3)
    add     r10, r4, r5
    add     r8, r0, r5
    lfsx    f2, r7, r5
    addi    r0, r5, 0x4
    lfs     f0, 0x0(r8)
    addi    r11, r11, 0x1
    lfs     f1, 0x8(r8)
    fdivs   f5, f2, f0
    lfs     f0, 0x4(r8)
    lfs     f2, 0x0(r9)
    fsubs   f0, f1, f0
    fnmsubs  f0, f5, f2, f0
    stfs    f0, 0x4(r9)
    lwz     r7, 0x20(r3)
    lfs     f2, 0x8(r10)
    lfsx    f0, r7, r5
    addi    r5, r5, 0x4
    lfs     f1, 0x0(r10)
    fmuls   f0, f5, f0
    lwz     r7, 0x24(r3)
    fsubs   f1, f2, f1
    fmsubs  f0, f4, f1, f0
    stfsx   f0, r7, r0
branch_0x8006f1e8:
    lwz     r7, 0x0(r3)
    subi    r0, r7, 0x2
    cmpw    r11, r0
    blt+    branch_0x8006f168
    lwz     r0, 0x20(r3)
    slwi    r5, r7, 2
    add     r4, r6, r5
    add     r5, r0, r5
    lfs     f1, -0x4(r4)
    lfs     f2, -0x8(r5)
    lfs     f0, -0x8(r4)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, -0x8(r4)
    lwz     r4, 0x0(r3)
    subic.  r0, r4, 0x2
    mr      r4, r0
    slwi    r5, r0, 2
    blelr-    

    srwi.   r0, r4, 3
    mtctr   r0
    beq-    branch_0x8006f3a8
branch_0x8006f23c:
    lwz     r8, 0x20(r3)
    add     r9, r6, r5
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    add     r9, r6, r5
    lwz     r8, 0x20(r3)
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    add     r9, r6, r5
    lwz     r8, 0x20(r3)
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    add     r9, r6, r5
    lwz     r8, 0x20(r3)
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    add     r9, r6, r5
    lwz     r8, 0x20(r3)
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    add     r9, r6, r5
    lwz     r8, 0x20(r3)
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    add     r9, r6, r5
    lwz     r8, 0x20(r3)
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    add     r9, r6, r5
    lwz     r8, 0x20(r3)
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    bdnz+      branch_0x8006f23c
    andi.   r4, r4, 0x7
    beqlr-    

branch_0x8006f3a8:
    mtctr   r4
branch_0x8006f3ac:
    lwz     r8, 0x20(r3)
    add     r9, r6, r5
    lwz     r7, 0x24(r3)
    lfsx    f3, r8, r5
    lfs     f2, 0x4(r9)
    lfs     f1, 0x0(r9)
    lfsx    f0, r7, r5
    subi    r5, r5, 0x4
    fnmsubs  f1, f3, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x0(r9)
    bdnz+      branch_0x8006f3ac
    blr


.globl __ct__11TSplinePathFi
__ct__11TSplinePathFi: # 0x8006f3e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r4, 0x0(r3)
    lwz     r0, 0x0(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x4(r31)
    lwz     r0, 0x0(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r31)
    lwz     r0, 0x0(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r31)
    lwz     r0, 0x0(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x10(r31)
    lwz     r0, 0x0(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x14(r31)
    lwz     r0, 0x0(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x18(r31)
    lwz     r0, 0x0(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x1c(r31)
    lwz     r0, 0x0(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x20(r31)
    lwz     r0, 0x0(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x24(r31)
    li      r5, 0x0
    li      r6, 0x0
    stw     r5, 0x28(r31)
    lis     r4, 0x4330
    lfd     f1, -0x6b30(rtoc)
    b       branch_0x8006f4d4

branch_0x8006f4a0:
    xoris   r0, r6, 0x8000
    lwz     r3, 0xc(r31)
    stw     r0, 0x14(sp)
    addi    r6, r6, 0x1
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfsx   f0, r3, r5
    lwz     r3, 0x8(r31)
    stfsx   f0, r3, r5
    lwz     r3, 0x4(r31)
    stfsx   f0, r3, r5
    addi    r5, r5, 0x4
branch_0x8006f4d4:
    lwz     r0, 0x0(r31)
    cmpw    r6, r0
    blt+    branch_0x8006f4a0
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

