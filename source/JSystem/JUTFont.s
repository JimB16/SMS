
.globl __ct__7JUTFontFv
__ct__7JUTFontFv: # 0x802c8780
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x540
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0x14
    stw     r0, 0x0(r3)
    li      r0, -0x1
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r31)
    stw     r0, 0x14(r31)
    stw     r0, 0x18(r31)
    stw     r0, 0x10(sp)
    lwz     r0, 0x10(sp)
    stw     r0, 0x14(sp)
    bl      setCharColor__7JUTFontFQ28JUtility6TColor
    li      r0, 0x0
    stb     r0, 0x4(r31)
    mr      r3, r31
    stw     r0, 0x8(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initiate__7JUTFontFv
initiate__7JUTFontFv: # 0x802c87ec
    blr


.globl setCharColor__7JUTFontFQ28JUtility6TColor
setCharColor__7JUTFontFQ28JUtility6TColor: # 0x802c87f0
    lwz     r0, 0x0(r4)
    stw     r0, 0xc(r3)
    lwz     r0, 0x0(r4)
    stw     r0, 0x10(r3)
    lwz     r0, 0x0(r4)
    stw     r0, 0x14(r3)
    lwz     r0, 0x0(r4)
    stw     r0, 0x18(r3)
    blr


.globl setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor: # 0x802c8814
    lwz     r0, 0x0(r4)
    stw     r0, 0xc(r3)
    lwz     r0, 0x0(r4)
    stw     r0, 0x10(r3)
    lwz     r0, 0x0(r5)
    stw     r0, 0x14(r3)
    lwz     r0, 0x0(r5)
    stw     r0, 0x18(r3)
    blr


.globl drawString_size_scale__7JUTFontFffffPCcUlb
drawString_size_scale__7JUTFontFffffPCcUlb: # 0x802c8838
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    fmr     f30, f4
    stfd    f29, 0x50(sp)
    fmr     f29, f3
    stfd    f28, 0x48(sp)
    fmr     f28, f2
    stfd    f27, 0x40(sp)
    fmr     f27, f1
    stmw    r27, 0x2c(sp)
    mr      r27, r3
    fmr     f31, f27
    mr      r28, r4
    mr      r29, r5
    mr      r30, r6
    b       branch_0x802c88f4

branch_0x802c8884:
    mr      r3, r27
    lbz     r31, 0x0(r28)
    lwz     r12, 0x0(r27)
    mr      r4, r31
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x802c88b8
    lbzu    r0, 0x1(r28)
    slwi    r31, r31, 8
    subi    r29, r29, 0x1
    or      r31, r31, r0
branch_0x802c88b8:
    mr      r3, r27
    fmr     f1, f27
    lwz     r12, 0x0(r27)
    fmr     f2, f28
    fmr     f3, f29
    mr      r4, r31
    lwz     r12, 0x14(r12)
    fmr     f4, f30
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    fadds   f27, f27, f1
    li      r30, 0x1
    subi    r29, r29, 0x1
    addi    r28, r28, 0x1
branch_0x802c88f4:
    cmplwi  r29, 0x0
    bne+    branch_0x802c8884
    lmw     r27, 0x2c(sp)
    fsubs   f1, f27, f31
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lfd     f29, 0x50(sp)
    lfd     f28, 0x48(sp)
    lfd     f27, 0x40(sp)
    addi    sp, sp, 0x68
    blr


.globl __dt__7JUTFontFv
__dt__7JUTFontFv: # 0x802c8928
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802c895c
    lis     r3, 0x803e
    addi    r3, r3, 0x540
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802c895c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802c895c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setGX__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
setGX__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor: # 0x802c8974
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

