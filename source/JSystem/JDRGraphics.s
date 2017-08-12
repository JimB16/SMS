
.globl setViewport__Q26JDrama9TGraphicsFRCQ26JDrama5TRectff
setViewport__Q26JDrama9TGraphicsFRCQ26JDrama5TRectff: # 0x802f9534
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f2
    stfd    f30, 0x48(sp)
    fmr     f30, f1
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x54(r3)
    stw     r0, 0x58(r3)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x5c(r31)
    stw     r0, 0x60(r31)
    lbz     r0, 0x20(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802f9618
    lwz     r5, 0x58(r31)
    lwz     r4, 0x60(r31)
    lwz     r3, 0x54(r31)
    lwz     r0, 0x5c(r31)
    subf    r30, r5, r4
    subf    r29, r3, r0
    bl      VIGetNextField
    lwz     r5, 0x58(r31)
    xoris   r4, r29, 0x8000
    lwz     r6, 0x54(r31)
    xoris   r0, r30, 0x8000
    xoris   r5, r5, 0x8000
    xoris   r6, r6, 0x8000
    stw     r5, 0x2c(sp)
    lfd     f4, 0x400(r2)
    fmr     f5, f30
    stw     r6, 0x34(sp)
    lis     r6, 0x4330
    fmr     f6, f31
    stw     r4, 0x24(sp)
    stw     r0, 0x1c(sp)
    stw     r6, 0x28(sp)
    stw     r6, 0x30(sp)
    lfd     f0, 0x28(sp)
    stw     r6, 0x20(sp)
    lfd     f1, 0x30(sp)
    fsubs   f2, f0, f4
    stw     r6, 0x18(sp)
    lfd     f3, 0x20(sp)
    fsubs   f1, f1, f4
    lfd     f0, 0x18(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      GXSetViewportJitter
    b       branch_0x802f9694

branch_0x802f9618:
    lwz     r6, 0x58(r31)
    lis     r4, 0x4330
    lwz     r0, 0x60(r31)
    fmr     f5, f30
    lwz     r7, 0x54(r31)
    lwz     r3, 0x5c(r31)
    subf    r5, r6, r0
    xoris   r0, r7, 0x8000
    subf    r3, r7, r3
    stw     r0, 0x1c(sp)
    xoris   r0, r6, 0x8000
    lfd     f4, 0x400(r2)
    xoris   r3, r3, 0x8000
    stw     r0, 0x24(sp)
    xoris   r0, r5, 0x8000
    fmr     f6, f31
    stw     r3, 0x2c(sp)
    stw     r0, 0x34(sp)
    stw     r4, 0x18(sp)
    stw     r4, 0x20(sp)
    lfd     f1, 0x18(sp)
    stw     r4, 0x28(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f1, f4
    stw     r4, 0x30(sp)
    lfd     f3, 0x28(sp)
    fsubs   f2, f0, f4
    lfd     f0, 0x30(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      GXSetViewport
branch_0x802f9694:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x58
    blr

