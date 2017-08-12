
.globl __ct__13J2DOrthoGraphFRC7JUTRect
__ct__13J2DOrthoGraphFRC7JUTRect: # 0x802ecfcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r4
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__14J2DGrafContextFRC7JUTRect
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    stw     r0, 0x0(r31)
    addi    r3, r31, 0xd8
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lwz     r7, 0x4(r30)
    addi    r3, sp, 0x1c
    lwz     r6, 0xc(r30)
    li      r4, 0x0
    lwz     r5, 0x0(r30)
    lwz     r0, 0x8(r30)
    subf    r7, r7, r6
    subf    r6, r5, r0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r4, 0x1c(sp)
    mr      r3, r31
    lwz     r0, 0x20(sp)
    stw     r4, 0xd8(r31)
    stw     r0, 0xdc(r31)
    lwz     r4, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r4, 0xe0(r31)
    stw     r0, 0xe4(r31)
    lfs     f0, 0x308(r2)
    stfs    f0, 0xe8(r31)
    lfs     f0, 0x30c(r2)
    stfs    f0, 0xec(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stw     r0, 0x4(r31)
    mr      r3, r31
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__13J2DOrthoGraphFiiii
__ct__13J2DOrthoGraphFiiii: # 0x802ed0a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r7
    stw     r29, 0x34(sp)
    mr      r29, r6
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__14J2DGrafContextFiiii
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    stw     r0, 0x0(r31)
    addi    r3, r31, 0xd8
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r3, sp, 0x20
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r4, 0x20(sp)
    mr      r3, r31
    lwz     r0, 0x24(sp)
    stw     r4, 0xd8(r31)
    stw     r0, 0xdc(r31)
    lwz     r4, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r4, 0xe0(r31)
    stw     r0, 0xe4(r31)
    lfs     f0, 0x308(r2)
    stfs    f0, 0xe8(r31)
    lfs     f0, 0x30c(r2)
    stfs    f0, 0xec(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stw     r0, 0x4(r31)
    mr      r3, r31
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl setPort__13J2DOrthoGraphFv
setPort__13J2DOrthoGraphFv: # 0x802ed180
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      setPort__14J2DGrafContextFv
    lwz     r0, 0xe4(r31)
    lis     r5, 0x4330
    lwz     r4, 0xdc(r31)
    addi    r3, r31, 0x44
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    xoris   r6, r4, 0x8000
    lwz     r4, 0xd8(r31)
    lwz     r0, 0xe0(r31)
    stw     r5, 0x20(sp)
    xoris   r4, r4, 0x8000
    xoris   r0, r0, 0x8000
    lfd     f4, 0x318(r2)
    stw     r6, 0x2c(sp)
    lfd     f0, 0x20(sp)
    stw     r4, 0x1c(sp)
    fsubs   f0, f0, f4
    lfs     f1, 0x310(r2)
    stw     r0, 0x14(sp)
    lfs     f5, 0xe8(r31)
    stw     r5, 0x28(sp)
    fadds   f2, f1, f0
    lfs     f6, 0xec(r31)
    stw     r5, 0x18(sp)
    lfd     f0, 0x28(sp)
    stw     r5, 0x10(sp)
    lfd     f3, 0x18(sp)
    fsubs   f1, f0, f4
    lfd     f0, 0x10(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      C_MTXOrtho
    addi    r3, r31, 0x44
    li      r4, 0x1
    bl      GXSetProjection
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setLookat__13J2DOrthoGraphFv
setLookat__13J2DOrthoGraphFv: # 0x802ed238
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x84
    bl      PSMTXIdentity
    addi    r3, r31, 0x84
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl scissorBounds__13J2DOrthoGraphFP7JUTRectP7JUTRect
scissorBounds__13J2DOrthoGraphFP7JUTRectP7JUTRect: # 0x802ed274
    stwu    sp, -0xe8(sp)
    lwz     r10, 0x8(r3)
    lis     r0, 0x4330
    lwz     r7, 0x10(r3)
    lwz     r9, 0xd8(r3)
    xoris   r8, r10, 0x8000
    lwz     r6, 0xe0(r3)
    subf    r7, r10, r7
    xoris   r7, r7, 0x8000
    subf    r6, r9, r6
    stw     r7, 0xd4(sp)
    xoris   r6, r6, 0x8000
    lwz     r7, 0x0(r5)
    stw     r6, 0xcc(sp)
    lfd     f1, 0x318(r2)
    subf    r6, r9, r7
    stw     r0, 0xd0(sp)
    xoris   r6, r6, 0x8000
    lfs     f2, 0x320(r2)
    stw     r0, 0xc8(sp)
    lfd     f3, 0xd0(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f3, f3, f1
    stw     r6, 0xdc(sp)
    fsubs   f0, f0, f1
    stw     r0, 0xd8(sp)
    fdivs   f0, f3, f0
    stw     r8, 0xe4(sp)
    lfd     f3, 0xd8(sp)
    stw     r0, 0xe0(sp)
    lfd     f4, 0xe0(sp)
    fsubs   f3, f3, f1
    fsubs   f4, f4, f1
    fmuls   f0, f3, f0
    fadds   f0, f4, f0
    fadds   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r6, 0xc4(sp)
    stw     r6, 0x0(r4)
    lwz     r10, 0x8(r3)
    lwz     r7, 0x10(r3)
    lwz     r9, 0xd8(r3)
    xoris   r8, r10, 0x8000
    lwz     r6, 0xe0(r3)
    subf    r7, r10, r7
    xoris   r7, r7, 0x8000
    subf    r6, r9, r6
    stw     r7, 0xac(sp)
    xoris   r6, r6, 0x8000
    lwz     r7, 0x8(r5)
    stw     r6, 0xa4(sp)
    subf    r6, r9, r7
    lfs     f0, 0x324(r2)
    stw     r0, 0xa8(sp)
    xoris   r6, r6, 0x8000
    stw     r0, 0xa0(sp)
    lfd     f4, 0xa8(sp)
    lfd     f3, 0xa0(sp)
    stw     r6, 0xb4(sp)
    fsubs   f4, f4, f1
    fsubs   f3, f3, f1
    stw     r0, 0xb0(sp)
    stw     r8, 0xbc(sp)
    fdivs   f3, f4, f3
    lfd     f4, 0xb0(sp)
    stw     r0, 0xb8(sp)
    lfd     f5, 0xb8(sp)
    fsubs   f4, f4, f1
    fsubs   f5, f5, f1
    fmuls   f3, f4, f3
    fadds   f3, f5, f3
    fadds   f3, f0, f3
    fctiwz  f3, f3
    stfd    f3, 0x98(sp)
    lwz     r6, 0x9c(sp)
    stw     r6, 0x8(r4)
    lwz     r10, 0xc(r3)
    lwz     r7, 0x14(r3)
    lwz     r9, 0xdc(r3)
    xoris   r8, r10, 0x8000
    lwz     r6, 0xe4(r3)
    subf    r7, r10, r7
    xoris   r7, r7, 0x8000
    subf    r6, r9, r6
    stw     r7, 0x84(sp)
    xoris   r6, r6, 0x8000
    lwz     r7, 0x4(r5)
    stw     r6, 0x7c(sp)
    subf    r6, r9, r7
    stw     r0, 0x80(sp)
    xoris   r6, r6, 0x8000
    stw     r0, 0x78(sp)
    lfd     f4, 0x80(sp)
    lfd     f3, 0x78(sp)
    stw     r6, 0x8c(sp)
    fsubs   f4, f4, f1
    fsubs   f3, f3, f1
    stw     r0, 0x88(sp)
    stw     r8, 0x94(sp)
    fdivs   f3, f4, f3
    lfd     f4, 0x88(sp)
    stw     r0, 0x90(sp)
    lfd     f5, 0x90(sp)
    fsubs   f4, f4, f1
    fsubs   f5, f5, f1
    fmuls   f3, f4, f3
    fadds   f3, f5, f3
    fadds   f2, f2, f3
    fctiwz  f2, f2
    stfd    f2, 0x70(sp)
    lwz     r6, 0x74(sp)
    stw     r6, 0x4(r4)
    lwz     r9, 0xc(r3)
    lwz     r6, 0x14(r3)
    lwz     r8, 0xdc(r3)
    xoris   r7, r9, 0x8000
    lwz     r3, 0xe4(r3)
    subf    r6, r9, r6
    xoris   r6, r6, 0x8000
    subf    r3, r8, r3
    stw     r6, 0x5c(sp)
    xoris   r3, r3, 0x8000
    lwz     r5, 0xc(r5)
    stw     r3, 0x54(sp)
    subf    r3, r8, r5
    stw     r0, 0x58(sp)
    xoris   r3, r3, 0x8000
    stw     r0, 0x50(sp)
    lfd     f3, 0x58(sp)
    lfd     f2, 0x50(sp)
    fsubs   f3, f3, f1
    stw     r3, 0x64(sp)
    fsubs   f2, f2, f1
    stw     r0, 0x60(sp)
    fdivs   f2, f3, f2
    stw     r7, 0x6c(sp)
    lfd     f3, 0x60(sp)
    stw     r0, 0x68(sp)
    lfd     f4, 0x68(sp)
    fsubs   f3, f3, f1
    fsubs   f4, f4, f1
    fmuls   f1, f3, f2
    fadds   f1, f4, f1
    fadds   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0xc(r4)
    addi    sp, sp, 0xe8
    blr


.globl J2DFillBox__FiiiiQ28JUtility6TColor
J2DFillBox__FiiiiQ28JUtility6TColor: # 0x802ed4d0
    mflr    r0
    addi    r9, r3, 0x0
    stw     r0, 0x4(sp)
    addi    r8, r4, 0x0
    addi    r4, r9, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, sp, 0x1c
    addi    r3, sp, 0x20
    lwz     r0, 0x0(r7)
    addi    r7, r5, 0x0
    addi    r5, r8, 0x0
    stw     r0, 0x1c(sp)
    addi    r0, r6, 0x0
    add     r6, r9, r7
    add     r7, r8, r0
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0x20
    addi    r4, r31, 0x0
    bl      J2DFillBox__F7JUTRectQ28JUtility6TColor
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl J2DFillBox__F7JUTRectQ28JUtility6TColor
J2DFillBox__F7JUTRectQ28JUtility6TColor: # 0x802ed534
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x130(sp)
    stmw    r27, 0x11c(sp)
    addi    r30, sp, 0x28
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    li      r4, 0x0
    stw     r30, 0x20(sp)
    lwz     r3, 0x20(sp)
    bl      __ct__14J2DGrafContextFiiii
    lwz     r29, 0x20(sp)
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r31, r3, __vvt__13J2DOrthoGraph@l
    stw     r31, 0x0(r29)
    addi    r3, r29, 0xd8
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lwz     r12, 0x0(r29)
    mr      r3, r29
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stw     r0, 0x4(r29)
    addi    r7, sp, 0x1c
    addi    r6, sp, 0x18
    lwz     r0, 0x0(r28)
    addi    r5, sp, 0x14
    addi    r4, sp, 0x10
    stw     r0, 0x24(sp)
    mr      r3, r30
    lwz     r0, 0x24(sp)
    stw     r0, 0x1c(sp)
    stw     r0, 0x18(sp)
    stw     r0, 0x14(sp)
    stw     r0, 0x10(sp)
    bl      setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    bl      fillBox__14J2DGrafContextFRC7JUTRect
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r31, 0x28(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x28(sp)
    lwz     r0, 0x134(sp)
    lmw     r27, 0x11c(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr

