
.globl create__10JUTConsoleFUiPvUl
create__10JUTConsoleFUiPvUl: # 0x802f568c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x20(sp)
    mr      r28, r3
    addi    r3, r5, 0x0
    lwz     r30, -0x5dc8(r13)
    addi    r4, r28, 0x0
    bl      getLineFromObjectSize__10JUTConsoleFUlUi
    cmplwi  r29, 0x0
    addi    r5, r3, 0x0
    addi    r31, r29, 0x0
    beq-    branch_0x802f56e4
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    li      r6, 0x0
    bl      __ct__10JUTConsoleFUiUib
    mr      r31, r3
branch_0x802f56e4:
    addi    r0, r29, 0x68
    stw     r0, 0x28(r31)
    mr      r3, r31
    bl      clear__10JUTConsoleFv
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      appendConsole__17JUTConsoleManagerFP10JUTConsole
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__10JUTConsoleFUiUib
__ct__10JUTConsoleFUiUib: # 0x802f5724
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r4, 0x0
    bl      __ct__11JKRDisposerFv
    lis     r3, 0x803e
    addi    r0, r3, 0x1910
    stw     r0, 0x0(r31)
    li      r0, 0x0
    li      r5, -0x1
    stw     r0, 0x18(r31)
    li      r4, 0x1e
    li      r3, 0x32
    stw     r0, 0x1c(r31)
    li      r0, 0x14
    stw     r5, 0x5c(r31)
    stw     r5, 0x60(r31)
    stb     r30, 0x2c(r31)
    stw     r28, 0x20(r31)
    stw     r29, 0x24(r31)
    stw     r4, 0x40(r31)
    stw     r3, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r0, 0x48(r31)
    lwz     r3, 0x24(r31)
    cmplw   r0, r3
    ble-    branch_0x802f57b0
    stw     r3, 0x48(r31)
branch_0x802f57b0:
    li      r6, 0x0
    stw     r6, 0x4c(r31)
    li      r5, 0x1
    li      r4, 0x64
    stb     r5, 0x64(r31)
    li      r0, 0xe6
    addi    r3, r31, 0x0
    stb     r6, 0x65(r31)
    stb     r6, 0x66(r31)
    stw     r5, 0x58(r31)
    stb     r6, 0x24(sp)
    stb     r6, 0x25(sp)
    stb     r6, 0x26(sp)
    stb     r4, 0x27(sp)
    lwz     r4, 0x24(sp)
    stw     r4, 0x5c(r31)
    stb     r6, 0x20(sp)
    stb     r6, 0x21(sp)
    stb     r6, 0x22(sp)
    stb     r0, 0x23(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x60(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__10JUTConsoleFv
__dt__10JUTConsoleFv: # 0x802f5828
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f587c
    lis     r3, 0x803e
    addi    r0, r3, 0x1910
    stw     r0, 0x0(r30)
    mr      r4, r30
    lwz     r3, -0x5dc8(r13)
    bl      removeConsole__17JUTConsoleManagerFP10JUTConsole
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__11JKRDisposerFv
    extsh.  r0, r31
    ble-    branch_0x802f587c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f587c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getLineFromObjectSize__10JUTConsoleFUlUi
getLineFromObjectSize__10JUTConsoleFUlUi: # 0x802f5898
    subi    r3, r3, 0x68
    addi    r0, r4, 0x2
    divwu   r3, r3, r0
    blr


.globl clear__10JUTConsoleFv
clear__10JUTConsoleFv: # 0x802f58a8
    li      r6, 0x0
    stw     r6, 0x30(r3)
    li      r7, 0x0
    stw     r6, 0x34(r3)
    stw     r6, 0x38(r3)
    stw     r6, 0x3c(r3)
    b       branch_0x802f58dc

branch_0x802f58c4:
    lwz     r4, 0x20(r3)
    lwz     r5, 0x28(r3)
    addi    r0, r4, 0x2
    mullw   r0, r0, r7
    stbx    r6, r5, r0
    addi    r7, r7, 0x1
branch_0x802f58dc:
    lwz     r0, 0x24(r3)
    cmplw   r7, r0
    blt+    branch_0x802f58c4
    lwz     r4, 0x28(r3)
    li      r5, 0xff
    li      r0, 0x0
    stb     r5, 0x0(r4)
    lwz     r3, 0x28(r3)
    stb     r0, 0x1(r3)
    blr


.globl doDraw__10JUTConsoleCFQ210JUTConsole12EConsoleType
doDraw__10JUTConsoleCFQ210JUTConsole12EConsoleType: # 0x802f5904
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x3e8(sp)
    stfd    f31, 0x3e0(sp)
    stfd    f30, 0x3d8(sp)
    stfd    f29, 0x3d0(sp)
    stfd    f28, 0x3c8(sp)
    stfd    f27, 0x3c0(sp)
    stfd    f26, 0x3b8(sp)
    stmw    r25, 0x39c(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802f5d7c
    lwz     r0, 0x4c(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x802f5954
    cmpwi   r29, 0x2
    bne-    branch_0x802f5d7c
branch_0x802f5954:
    lwz     r0, 0x48(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x802f5d7c
    cmpwi   r29, 0x0
    bne-    branch_0x802f5970
    li      r31, 0x1
    b       branch_0x802f5974

branch_0x802f5970:
    li      r31, 0x0
branch_0x802f5974:
    lfs     f1, 0x3d0(rtoc)
    cmpwi   r29, 0x2
    lfs     f0, 0x54(r28)
    fadds   f31, f1, f0
    beq-    branch_0x802f5bcc
    lwz     r3, -0x5de0(r13)
    cmplwi  r3, 0x0
    bne-    branch_0x802f59d0
    addi    r3, sp, 0x270
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x280
    li      r7, 0x1e0
    bl      __ct__13J2DOrthoGraphFiiii
    addi    r3, sp, 0x270
    bl      setPort__13J2DOrthoGraphFv
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x270(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0x270(sp)
    b       branch_0x802f5a0c

branch_0x802f59d0:
    lwz     r7, 0x4(r3)
    addi    r3, sp, 0x180
    li      r4, 0x0
    lhz     r6, 0x4(r7)
    li      r5, 0x0
    lhz     r7, 0x6(r7)
    bl      __ct__13J2DOrthoGraphFiiii
    addi    r3, sp, 0x180
    bl      setPort__13J2DOrthoGraphFv
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x180(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0x180(sp)
branch_0x802f5a0c:
    clrlwi. r0, r31, 24
    beq-    branch_0x802f5a1c
    addi    r3, r28, 0x60
    b       branch_0x802f5a20

branch_0x802f5a1c:
    addi    r3, r28, 0x5c
branch_0x802f5a20:
    lwz     r0, 0x0(r3)
    lis     r4, 0x4330
    lfd     f5, 0x3d8(rtoc)
    addi    r7, sp, 0x12c
    stw     r0, 0x12c(sp)
    lfd     f3, 0x3e0(rtoc)
    lwz     r5, 0x44(r28)
    lwz     r3, 0x20(r28)
    xoris   r5, r5, 0x8000
    lwz     r0, 0x48(r28)
    stw     r5, 0x394(sp)
    lfs     f4, 0x50(r28)
    stw     r3, 0x384(sp)
    lwz     r5, 0x40(r28)
    stw     r0, 0x374(sp)
    lfs     f1, 0x3d4(rtoc)
    subi    r3, r5, 0x2
    stw     r4, 0x390(sp)
    stw     r4, 0x380(sp)
    lfd     f0, 0x390(sp)
    lfd     f2, 0x380(sp)
    stw     r4, 0x370(sp)
    fsubs   f5, f0, f5
    fsubs   f2, f2, f3
    lfd     f0, 0x370(sp)
    fsubs   f0, f0, f3
    fmadds  f1, f4, f2, f1
    fsubs   f3, f5, f31
    fmuls   f0, f31, f0
    fctiwz  f1, f1
    fctiwz  f2, f3
    fctiwz  f0, f0
    stfd    f1, 0x378(sp)
    stfd    f2, 0x388(sp)
    lwz     r5, 0x37c(sp)
    stfd    f0, 0x368(sp)
    lwz     r4, 0x38c(sp)
    lwz     r6, 0x36c(sp)
    bl      J2DFillBox__FiiiiQ28JUtility6TColor
    lwz     r3, 0x4c(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r31, 24
    beq-    branch_0x802f5b9c
    lwz     r4, 0x30(r28)
    lwz     r0, 0x38(r28)
    subf.   r3, r4, r0
    blt-    branch_0x802f5aec
    b       branch_0x802f5af4

branch_0x802f5aec:
    lwz     r0, 0x24(r28)
    add     r3, r3, r0
branch_0x802f5af4:
    lwz     r0, 0x48(r28)
    subf    r0, r0, r3
    addic.  r0, r0, 0x1
    bgt-    branch_0x802f5b30
    li      r0, 0xff
    stb     r0, 0x124(sp)
    addi    r4, sp, 0x128
    stb     r0, 0x125(sp)
    stb     r0, 0x126(sp)
    stb     r0, 0x127(sp)
    lwz     r0, 0x124(sp)
    stw     r0, 0x128(sp)
    lwz     r3, 0x4c(r28)
    bl      setCharColor__7JUTFontFQ28JUtility6TColor
    b       branch_0x802f5c1c

branch_0x802f5b30:
    lwz     r0, 0x34(r28)
    cmpw    r4, r0
    bne-    branch_0x802f5b6c
    li      r3, 0xff
    stb     r3, 0x11c(sp)
    li      r0, 0xe6
    addi    r4, sp, 0x120
    stb     r0, 0x11d(sp)
    stb     r0, 0x11e(sp)
    stb     r3, 0x11f(sp)
    lwz     r0, 0x11c(sp)
    stw     r0, 0x120(sp)
    lwz     r3, 0x4c(r28)
    bl      setCharColor__7JUTFontFQ28JUtility6TColor
    b       branch_0x802f5c1c

branch_0x802f5b6c:
    li      r3, 0xe6
    stb     r3, 0x114(sp)
    li      r0, 0xff
    addi    r4, sp, 0x118
    stb     r3, 0x115(sp)
    stb     r0, 0x116(sp)
    stb     r0, 0x117(sp)
    lwz     r0, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r3, 0x4c(r28)
    bl      setCharColor__7JUTFontFQ28JUtility6TColor
    b       branch_0x802f5c1c

branch_0x802f5b9c:
    li      r3, 0xe6
    stb     r3, 0x10c(sp)
    li      r0, 0xff
    addi    r4, sp, 0x110
    stb     r3, 0x10d(sp)
    stb     r3, 0x10e(sp)
    stb     r0, 0x10f(sp)
    lwz     r0, 0x10c(sp)
    stw     r0, 0x110(sp)
    lwz     r3, 0x4c(r28)
    bl      setCharColor__7JUTFontFQ28JUtility6TColor
    b       branch_0x802f5c1c

branch_0x802f5bcc:
    stw     r0, 0x36c(sp)
    lis     r0, 0x4330
    lwz     r3, 0x20(r28)
    stw     r0, 0x368(sp)
    mulli   r6, r3, 0x6
    lwz     r4, 0x40(r28)
    lfd     f1, 0x3e0(rtoc)
    lfd     f0, 0x368(sp)
    lwz     r5, 0x44(r28)
    fsubs   f0, f0, f1
    lwz     r3, -0x5ee8(r13)
    subi    r4, r4, 0x3
    subi    r5, r5, 0x2
    fmuls   f0, f31, f0
    addi    r6, r6, 0x6
    fctiwz  f0, f0
    stfd    f0, 0x370(sp)
    lwz     r7, 0x374(sp)
    addi    r7, r7, 0x4
    bl      erase__14JUTDirectPrintFiiii
branch_0x802f5c1c:
    lwz     r31, 0x30(r28)
    li      r30, 0x0
    lfd     f30, 0x3d8(rtoc)
    lis     r27, 0x4330
branch_0x802f5c2c:
    lwz     r3, 0x20(r28)
    lwz     r4, 0x28(r28)
    addi    r0, r3, 0x2
    mullw   r3, r0, r31
    addi    r3, r3, 0x1
    add     r3, r4, r3
    lbz     r0, -0x1(r3)
    addi    r25, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x802f5d7c
    cmpwi   r29, 0x2
    beq-    branch_0x802f5cf8
    lwz     r0, 0x44(r28)
    xoris   r3, r30, 0x8000
    stw     r3, 0x36c(sp)
    addi    r3, r25, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0x374(sp)
    lwz     r0, 0x40(r28)
    stw     r27, 0x368(sp)
    xoris   r0, r0, 0x8000
    lfs     f26, 0x54(r28)
    stw     r27, 0x370(sp)
    lfd     f1, 0x368(sp)
    stw     r0, 0x37c(sp)
    lfd     f0, 0x370(sp)
    fsubs   f2, f1, f30
    stw     r27, 0x378(sp)
    fsubs   f1, f0, f30
    lfs     f27, 0x50(r28)
    lfd     f0, 0x378(sp)
    lwz     r26, 0x4c(r28)
    fmadds  f28, f2, f31, f1
    fsubs   f29, f0, f30
    bl      strlen
    fmr     f1, f29
    mr      r5, r3
    fmr     f2, f28
    mr      r3, r26
    fmr     f3, f27
    fmr     f4, f26
    addi    r4, r25, 0x0
    li      r6, 0x1
    bl      drawString_size_scale__7JUTFontFffffPCcUlb
    fctiwz  f0, f1
    stfd    f0, 0x380(sp)
    lwz     r0, 0x384(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x38c(sp)
    stw     r27, 0x388(sp)
    b       branch_0x802f5d48

branch_0x802f5cf8:
    lwz     r0, 0x44(r28)
    xoris   r3, r30, 0x8000
    stw     r3, 0x36c(sp)
    addi    r6, r25, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0x374(sp)
    lwz     r0, 0x40(r28)
    stw     r27, 0x368(sp)
    lwz     r3, -0x5ee8(r13)
    clrlwi  r4, r0, 16
    stw     r27, 0x370(sp)
    lfd     f1, 0x368(sp)
    lfd     f0, 0x370(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmadds  f0, f1, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x378(sp)
    lwz     r5, 0x37c(sp)
    bl      drawString__14JUTDirectPrintFUsUsPc
branch_0x802f5d48:
    lwz     r0, 0x24(r28)
    addi    r3, r31, 0x1
    cmpw    r3, r0
    blt-    branch_0x802f5d5c
    li      r3, 0x0
branch_0x802f5d5c:
    lwz     r0, 0x48(r28)
    addi    r30, r30, 0x1
    addi    r31, r3, 0x0
    cmplw   r30, r0
    bge-    branch_0x802f5d7c
    lwz     r0, 0x34(r28)
    cmpw    r3, r0
    bne+    branch_0x802f5c2c
branch_0x802f5d7c:
    lmw     r25, 0x39c(sp)
    lwz     r0, 0x3ec(sp)
    lfd     f31, 0x3e0(sp)
    lfd     f30, 0x3d8(sp)
    mtlr    r0
    lfd     f29, 0x3d0(sp)
    lfd     f28, 0x3c8(sp)
    lfd     f27, 0x3c0(sp)
    lfd     f26, 0x3b8(sp)
    addi    sp, sp, 0x3e8
    blr


.globl print_f__10JUTConsoleFPCce
print_f__10JUTConsoleFPCce: # 0x802f5da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    bne-    cr1, branch_0x802f5dd8
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x802f5dd8:
    stw     r3, 0x8(sp)
    lis     r0, 0x200
    stw     r4, 0xc(sp)
    stw     r5, 0x10(sp)
    addi    r5, sp, 0x70
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r0, 0x70(sp)
    addi    r0, sp, 0x88
    stw     r0, 0x74(sp)
    addi    r0, sp, 0x8
    stw     r0, 0x78(sp)
    bl      JUTConsole_print_f_va_
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl print__10JUTConsoleFPCc
print__10JUTConsoleFPCc: # 0x802f5e28
    lwz     r0, 0x58(r3)
    clrlwi. r0, r0, 31
    beqlr-    

    lwz     r6, 0x20(r3)
    lwz     r5, 0x38(r3)
    addi    r6, r6, 0x2
    lwz     r0, 0x3c(r3)
    mullw   r5, r6, r5
    lwz     r6, 0x28(r3)
    addi    r5, r5, 0x1
    add     r5, r5, r0
    add     r5, r6, r5
    b       branch_0x802f6020

branch_0x802f5e5c:
    lbz     r0, 0x66(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802f5e8c
    lwz     r6, 0x38(r3)
    lwz     r0, 0x24(r3)
    addi    r6, r6, 0x1
    cmpw    r6, r0
    blt-    branch_0x802f5e80
    li      r6, 0x0
branch_0x802f5e80:
    lwz     r0, 0x34(r3)
    cmpw    r0, r6
    beq-    branch_0x802f602c
branch_0x802f5e8c:
    extsb   r0, r7
    cmpwi   r0, 0xa
    bne-    branch_0x802f5ea8
    lwz     r0, 0x20(r3)
    addi    r4, r4, 0x1
    stw     r0, 0x3c(r3)
    b       branch_0x802f5f18

branch_0x802f5ea8:
    cmpwi   r0, 0x9
    bne-    branch_0x802f5efc
    li      r7, 0x20
    addi    r4, r4, 0x1
    b       branch_0x802f5ee8

branch_0x802f5ebc:
    stb     r7, 0x0(r5)
    addi    r5, r5, 0x1
    lwz     r6, 0x3c(r3)
    addi    r0, r6, 0x1
    stw     r0, 0x3c(r3)
    lwz     r6, 0x3c(r3)
    srawi   r0, r6, 3
    addze   r0, r0
    slwi    r0, r0, 3
    subfc.  r0, r0, r6
    beq-    branch_0x802f5f18
branch_0x802f5ee8:
    lwz     r6, 0x3c(r3)
    lwz     r0, 0x20(r3)
    cmplw   r6, r0
    blt+    branch_0x802f5ebc
    b       branch_0x802f5f18

branch_0x802f5efc:
    lbz     r0, 0x0(r4)
    addi    r4, r4, 0x1
    stb     r0, 0x0(r5)
    addi    r5, r5, 0x1
    lwz     r6, 0x3c(r3)
    addi    r0, r6, 0x1
    stw     r0, 0x3c(r3)
branch_0x802f5f18:
    lwz     r6, 0x3c(r3)
    lwz     r0, 0x20(r3)
    cmplw   r6, r0
    blt-    branch_0x802f6020
    li      r0, 0x0
    stb     r0, 0x0(r5)
    lwz     r5, 0x38(r3)
    lwz     r0, 0x24(r3)
    addi    r5, r5, 0x1
    cmpw    r5, r0
    blt-    branch_0x802f5f48
    li      r5, 0x0
branch_0x802f5f48:
    stw     r5, 0x38(r3)
    li      r8, 0x0
    li      r7, 0xff
    stw     r8, 0x3c(r3)
    lwz     r5, 0x20(r3)
    lwz     r0, 0x38(r3)
    addi    r5, r5, 0x2
    lwz     r6, 0x28(r3)
    mullw   r0, r5, r0
    stbx    r7, r6, r0
    lwz     r5, 0x20(r3)
    lwz     r0, 0x38(r3)
    addi    r5, r5, 0x2
    lwz     r6, 0x28(r3)
    mullw   r5, r5, r0
    addi    r5, r5, 0x1
    add     r5, r6, r5
    stb     r8, 0x0(r5)
    lwz     r7, 0x30(r3)
    lwz     r0, 0x38(r3)
    subf.   r6, r7, r0
    blt-    branch_0x802f5fa4
    b       branch_0x802f5fac

branch_0x802f5fa4:
    lwz     r0, 0x24(r3)
    add     r6, r6, r0
branch_0x802f5fac:
    lwz     r0, 0x48(r3)
    cmplw   r6, r0
    bne-    branch_0x802f5fd0
    lwz     r0, 0x24(r3)
    addi    r6, r7, 0x1
    cmpw    r6, r0
    blt-    branch_0x802f5fcc
    li      r6, 0x0
branch_0x802f5fcc:
    stw     r6, 0x30(r3)
branch_0x802f5fd0:
    lwz     r0, 0x38(r3)
    lwz     r6, 0x34(r3)
    cmpw    r0, r6
    bne-    branch_0x802f5ff8
    lwz     r0, 0x24(r3)
    addi    r6, r6, 0x1
    cmpw    r6, r0
    blt-    branch_0x802f5ff4
    li      r6, 0x0
branch_0x802f5ff4:
    stw     r6, 0x34(r3)
branch_0x802f5ff8:
    lwz     r0, 0x38(r3)
    lwz     r6, 0x30(r3)
    cmpw    r0, r6
    bne-    branch_0x802f6020
    lwz     r0, 0x24(r3)
    addi    r6, r6, 0x1
    cmpw    r6, r0
    blt-    branch_0x802f601c
    li      r6, 0x0
branch_0x802f601c:
    stw     r6, 0x30(r3)
branch_0x802f6020:
    lbz     r7, 0x0(r4)
    extsb.  r0, r7
    bne+    branch_0x802f5e5c
branch_0x802f602c:
    li      r0, 0x0
    stb     r0, 0x0(r5)
    blr


.globl JUTConsole_print_f_va_
JUTConsole_print_f_va_: # 0x802f6038
    mflr    r0
    addi    r6, r5, 0x0
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x0
    li      r4, 0x400
    stwu    sp, -0x420(sp)
    stw     r31, 0x41c(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x18
    bl      vsnprintf
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      print__10JUTConsoleFPCc
    lwz     r0, 0x424(sp)
    lwz     r31, 0x41c(sp)
    addi    sp, sp, 0x420
    mtlr    r0
    blr


.globl scroll__10JUTConsoleFi
scroll__10JUTConsoleFi: # 0x802f6080
    cmpwi   r4, 0x0
    bge-    branch_0x802f60b8
    lwz     r5, 0x34(r3)
    lwz     r0, 0x30(r3)
    subf.   r5, r5, r0
    blt-    branch_0x802f609c
    b       branch_0x802f60a4

branch_0x802f609c:
    lwz     r0, 0x24(r3)
    add     r5, r5, r0
branch_0x802f60a4:
    neg     r0, r5
    cmpw    r4, r0
    bge-    branch_0x802f611c
    mr      r4, r0
    b       branch_0x802f611c

branch_0x802f60b8:
    ble-    branch_0x802f611c
    lwz     r0, 0x34(r3)
    lwz     r6, 0x38(r3)
    subf.   r5, r0, r6
    blt-    branch_0x802f60d0
    b       branch_0x802f60d8

branch_0x802f60d0:
    lwz     r0, 0x24(r3)
    add     r5, r5, r0
branch_0x802f60d8:
    lwz     r7, 0x48(r3)
    addi    r0, r5, 0x1
    cmplw   r0, r7
    bgt-    branch_0x802f60f0
    li      r4, 0x0
    b       branch_0x802f611c

branch_0x802f60f0:
    lwz     r0, 0x30(r3)
    subf.   r5, r0, r6
    blt-    branch_0x802f6100
    b       branch_0x802f6108

branch_0x802f6100:
    lwz     r0, 0x24(r3)
    add     r5, r5, r0
branch_0x802f6108:
    subf    r5, r7, r5
    addi    r0, r5, 0x1
    cmpw    r4, r0
    ble-    branch_0x802f611c
    mr      r4, r0
branch_0x802f611c:
    lwz     r0, 0x30(r3)
    add     r0, r0, r4
    stw     r0, 0x30(r3)
    lwz     r4, 0x30(r3)
    cmpwi   r4, 0x0
    bge-    branch_0x802f6140
    lwz     r0, 0x24(r3)
    add     r0, r4, r0
    stw     r0, 0x30(r3)
branch_0x802f6140:
    lwz     r0, 0x30(r3)
    lwz     r4, 0x24(r3)
    cmplw   r0, r4
    bltlr-    

    subf    r0, r4, r0
    stw     r0, 0x30(r3)
    blr


.globl getUsedLine__10JUTConsoleCFv
getUsedLine__10JUTConsoleCFv: # 0x802f615c
    lwz     r4, 0x34(r3)
    lwz     r0, 0x38(r3)
    subf.   r4, r4, r0
    blt-    branch_0x802f6170
    b       branch_0x802f6178

branch_0x802f6170:
    lwz     r0, 0x24(r3)
    add     r4, r4, r0
branch_0x802f6178:
    mr      r3, r4
    blr


.globl getLineOffset__10JUTConsoleCFv
getLineOffset__10JUTConsoleCFv: # 0x802f6180
    lwz     r4, 0x34(r3)
    lwz     r0, 0x30(r3)
    subf.   r4, r4, r0
    blt-    branch_0x802f6194
    b       branch_0x802f619c

branch_0x802f6194:
    lwz     r0, 0x24(r3)
    add     r4, r4, r0
branch_0x802f619c:
    mr      r3, r4
    blr


.globl __ct__17JUTConsoleManagerFv
__ct__17JUTConsoleManagerFv: # 0x802f61a4
    li      r4, 0x0
    stw     r4, 0x4(r3)
    addi    r0, r3, 0x4
    stw     r4, 0x8(r3)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r4, 0xc(r3)
    stw     r4, 0x10(r3)
    blr


.globl createManager__17JUTConsoleManagerFP7JKRHeap
createManager__17JUTConsoleManagerFP7JKRHeap: # 0x802f61cc
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x802f61e4
    lwz     r3, -0x5f2c(r13)
branch_0x802f61e4:
    addi    r4, r3, 0x0
    li      r3, 0x14
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802f6200
    bl      __ct__17JUTConsoleManagerFv
branch_0x802f6200:
    stw     r3, -0x5dc8(r13)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl appendConsole__17JUTConsoleManagerFP10JUTConsole
appendConsole__17JUTConsoleManagerFP10JUTConsole: # 0x802f6214
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x28
    addi    r4, r30, 0x4
    bl      __ct__Q37JGadget13TNodeLinkList8iteratorFPQ27JGadget13TLinkListNode
    lwz     r0, 0x28(sp)
    addi    r3, sp, 0x40
    addi    r4, sp, 0x24
    stw     r0, 0x24(sp)
    bl      __ct__Q37JGadget13TNodeLinkList8iteratorFRCQ37JGadget13TNodeLinkList8iterator
    lwz     r0, 0x40(sp)
    addi    r6, r31, 0x18
    addi    r5, sp, 0x34
    stw     r0, 0x3c(sp)
    mr      r4, r30
    addi    r3, sp, 0x30
    lwz     r0, 0x3c(sp)
    stw     r0, 0x34(sp)
    bl      Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
    lwz     r0, 0xc(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802f6284
    stw     r31, 0xc(r30)
branch_0x802f6284:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __ct__Q37JGadget13TNodeLinkList8iteratorFRCQ37JGadget13TNodeLinkList8iterator
__ct__Q37JGadget13TNodeLinkList8iteratorFRCQ37JGadget13TNodeLinkList8iterator: # 0x802f629c
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    blr


.globl __ct__Q37JGadget13TNodeLinkList8iteratorFPQ27JGadget13TLinkListNode
__ct__Q37JGadget13TNodeLinkList8iteratorFPQ27JGadget13TLinkListNode: # 0x802f62a8
    stw     r4, 0x0(r3)
    blr


.globl removeConsole__17JUTConsoleManagerFP10JUTConsole
removeConsole__17JUTConsoleManagerFP10JUTConsole: # 0x802f62b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stw     r31, 0xec(sp)
    addi    r31, r4, 0x0
    stw     r30, 0xe8(sp)
    mr      r30, r3
    lwz     r0, 0xc(r3)
    cmplw   r0, r31
    bne-    branch_0x802f633c
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x1
    bgt-    branch_0x802f62f0
    li      r0, 0x0
    stw     r0, 0xc(r30)
    b       branch_0x802f633c

branch_0x802f62f0:
    addi    r0, r30, 0x4
    stw     r0, 0xd8(sp)
    lwz     r0, 0xd8(sp)
    stw     r0, 0xd4(sp)
    lwz     r3, 0xd4(sp)
    lwz     r3, 0x4(r3)
    subi    r0, r3, 0x18
    cmplw   r31, r0
    beq-    branch_0x802f6320
    lwz     r3, 0x18(r31)
    subi    r0, r3, 0x18
    b       branch_0x802f6338

branch_0x802f6320:
    lwz     r0, 0x4(r30)
    stw     r0, 0xc4(sp)
    lwz     r0, 0xc4(sp)
    stw     r0, 0xc0(sp)
    lwz     r3, 0xc0(sp)
    subi    r0, r3, 0x18
branch_0x802f6338:
    stw     r0, 0xc(r30)
branch_0x802f633c:
    bl      JUTGetWarningConsole
    cmplw   r3, r31
    bne-    branch_0x802f6350
    li      r3, 0x0
    bl      JUTSetWarningConsole
branch_0x802f6350:
    bl      JUTGetReportConsole
    cmplw   r3, r31
    bne-    branch_0x802f6364
    li      r3, 0x0
    bl      JUTSetReportConsole
branch_0x802f6364:
    addi    r4, r31, 0x18
    addi    r3, r30, 0x0
    bl      Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
    lwz     r0, 0xf4(sp)
    lwz     r31, 0xec(sp)
    lwz     r30, 0xe8(sp)
    mtlr    r0
    addi    sp, sp, 0xf0
    blr


.globl end__Q27JGadget13TNodeLinkListFv
end__Q27JGadget13TNodeLinkListFv: # 0x802f6388
    addi    r0, r4, 0x4
    stw     r0, 0x0(r3)
    blr


.globl __ct__Q37JGadget27TLinkList_10JUTConsole__24_8iteratorFQ37JGadget13TNodeLinkList8iterator
__ct__Q37JGadget27TLinkList_10JUTConsole__24_8iteratorFQ37JGadget13TNodeLinkList8iterator: # 0x802f6394
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    blr


.globl drawDirect__17JUTConsoleManagerCFb
drawDirect__17JUTConsoleManagerCFb: # 0x802f63a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802f6404
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802f63f8
    bl      OSEnableInterrupts
    mr      r30, r3
    bl      VIGetRetraceCount
    mr      r31, r3
branch_0x802f63e4:
    bl      VIGetRetraceCount
    cmplw   r31, r3
    beq+    branch_0x802f63e4
    mr      r3, r30
    bl      OSRestoreInterrupts
branch_0x802f63f8:
    lwz     r3, 0x10(r29)
    li      r4, 0x2
    bl      doDraw__10JUTConsoleCFQ210JUTConsole12EConsoleType
branch_0x802f6404:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setDirectConsole__17JUTConsoleManagerFP10JUTConsole
setDirectConsole__17JUTConsoleManagerFP10JUTConsole: # 0x802f6420
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    addi    r31, r4, 0x0
    stw     r30, 0xc8(sp)
    mr      r30, r3
    stw     r29, 0xc4(sp)
    stw     r28, 0xc0(sp)
    lwz     r28, 0x10(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x802f64c4
    addi    r4, r30, 0x0
    addi    r3, sp, 0x7c
    bl      end__Q27JGadget13TNodeLinkListFv
    lwz     r0, 0x7c(sp)
    addi    r4, sp, 0x78
    addi    r3, sp, 0xb8
    stw     r0, 0x78(sp)
    bl      __ct__Q37JGadget27TLinkList_10JUTConsole__24_8iteratorFQ37JGadget13TNodeLinkList8iterator
    lwz     r0, 0xb8(sp)
    addi    r3, r28, 0x0
    addi    r29, sp, 0xa0
    stw     r0, 0xb4(sp)
    lwz     r0, 0xb4(sp)
    stw     r0, 0xa0(sp)
    bl      Element_getNode__Q27JGadget27TLinkList_10JUTConsole__24_FP10JUTConsole
    addi    r6, r3, 0x0
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x9c
    bl      Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
    lwz     r0, 0x9c(sp)
    addi    r3, sp, 0xb0
    addi    r4, sp, 0x98
    stw     r0, 0x98(sp)
    bl      __ct__Q37JGadget13TNodeLinkList8iteratorFRCQ37JGadget13TNodeLinkList8iterator
    lwz     r0, 0xc(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802f64c4
    stw     r28, 0xc(r30)
branch_0x802f64c4:
    cmplwi  r31, 0x0
    beq-    branch_0x802f65ac
    lwz     r0, 0xc(r30)
    cmplw   r0, r31
    bne-    branch_0x802f6578
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x1
    bgt-    branch_0x802f64f0
    li      r0, 0x0
    stw     r0, 0xc(r30)
    b       branch_0x802f6578

branch_0x802f64f0:
    addi    r3, sp, 0x94
    addi    r4, r30, 0x4
    bl      __ct__Q37JGadget13TNodeLinkList8iteratorFPQ27JGadget13TLinkListNode
    lwz     r0, 0x94(sp)
    addi    r3, sp, 0xac
    addi    r4, sp, 0x90
    stw     r0, 0x90(sp)
    bl      __ct__Q37JGadget13TNodeLinkList8iteratorFRCQ37JGadget13TNodeLinkList8iterator
    addi    r29, sp, 0xac
    lwz     r3, 0xac(sp)
    bl      getPrev__Q27JGadget13TLinkListNodeCFv
    stw     r3, 0xac(sp)
    mr      r3, r29
    bl      __rf__Q37JGadget13TNodeLinkList8iteratorCFv
    bl      Element_getValue__Q27JGadget27TLinkList_10JUTConsole__24_FPQ27JGadget13TLinkListNode
    cmplw   r31, r3
    beq-    branch_0x802f6540
    lwz     r3, 0x18(r31)
    subi    r3, r3, 0x18
    b       branch_0x802f6574

branch_0x802f6540:
    addi    r3, r30, 0x4
    bl      getNext__Q27JGadget13TLinkListNodeCFv
    addi    r4, r3, 0x0
    addi    r3, sp, 0x88
    bl      __ct__Q37JGadget13TNodeLinkList8iteratorFPQ27JGadget13TLinkListNode
    lwz     r0, 0x88(sp)
    addi    r3, sp, 0xa4
    addi    r4, sp, 0x84
    stw     r0, 0x84(sp)
    bl      __ct__Q37JGadget13TNodeLinkList8iteratorFRCQ37JGadget13TNodeLinkList8iterator
    addi    r3, sp, 0xa4
    bl      __rf__Q37JGadget13TNodeLinkList8iteratorCFv
    bl      Element_getValue__Q27JGadget27TLinkList_10JUTConsole__24_FPQ27JGadget13TLinkListNode
branch_0x802f6574:
    stw     r3, 0xc(r30)
branch_0x802f6578:
    bl      JUTGetWarningConsole
    cmplw   r3, r31
    bne-    branch_0x802f658c
    li      r3, 0x0
    bl      JUTSetWarningConsole
branch_0x802f658c:
    bl      JUTGetReportConsole
    cmplw   r3, r31
    bne-    branch_0x802f65a0
    li      r3, 0x0
    bl      JUTSetReportConsole
branch_0x802f65a0:
    addi    r4, r31, 0x18
    addi    r3, r30, 0x0
    bl      Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
branch_0x802f65ac:
    stw     r31, 0x10(r30)
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    lwz     r29, 0xc4(sp)
    lwz     r28, 0xc0(sp)
    addi    sp, sp, 0xd0
    blr


.globl getNext__Q27JGadget13TLinkListNodeCFv
getNext__Q27JGadget13TLinkListNodeCFv: # 0x802f65d0
    lwz     r3, 0x0(r3)
    blr


.globl Element_getValue__Q27JGadget27TLinkList_10JUTConsole__24_FPQ27JGadget13TLinkListNode
Element_getValue__Q27JGadget27TLinkList_10JUTConsole__24_FPQ27JGadget13TLinkListNode: # 0x802f65d8
    subi    r3, r3, 0x18
    blr


.globl __rf__Q37JGadget13TNodeLinkList8iteratorCFv
__rf__Q37JGadget13TNodeLinkList8iteratorCFv: # 0x802f65e0
    lwz     r3, 0x0(r3)
    blr


.globl getPrev__Q27JGadget13TLinkListNodeCFv
getPrev__Q27JGadget13TLinkListNodeCFv: # 0x802f65e8
    lwz     r3, 0x4(r3)
    blr


.globl Element_getNode__Q27JGadget27TLinkList_10JUTConsole__24_FP10JUTConsole
Element_getNode__Q27JGadget27TLinkList_10JUTConsole__24_FP10JUTConsole: # 0x802f65f0
    addi    r3, r3, 0x18
    blr


.globl JUTSetReportConsole
JUTSetReportConsole: # 0x802f65f8
    stw     r3, -0x5dc4(r13)
    blr


.globl JUTGetReportConsole
JUTGetReportConsole: # 0x802f6600
    lwz     r3, -0x5dc4(r13)
    blr


.globl JUTSetWarningConsole
JUTSetWarningConsole: # 0x802f6608
    stw     r3, -0x5dc0(r13)
    blr


.globl JUTGetWarningConsole
JUTGetWarningConsole: # 0x802f6610
    lwz     r3, -0x5dc0(r13)
    blr


.globl JUTReportConsole_f
JUTReportConsole_f: # 0x802f6618
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    bne-    cr1, branch_0x802f6648
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x802f6648:
    stw     r3, 0x8(sp)
    lis     r0, 0x100
    stw     r4, 0xc(sp)
    addi    r4, sp, 0x198
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    addi    r6, sp, 0x184
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r0, 0x184(sp)
    addi    r0, sp, 0x8
    stw     r4, 0x188(sp)
    stw     r0, 0x18c(sp)
    lwz     r4, -0x5dc4(r13)
    cmplwi  r4, 0x0
    bne-    branch_0x802f66a4
    addi    r5, r3, 0x0
    addi    r3, sp, 0x80
    li      r4, 0x100
    bl      vsnprintf
    b       branch_0x802f66cc

branch_0x802f66a4:
    lwz     r0, 0x58(r4)
    clrlwi. r0, r0, 30
    beq-    branch_0x802f66cc
    addi    r5, r3, 0x0
    addi    r3, sp, 0x80
    li      r4, 0x100
    bl      vsnprintf
    lwz     r3, -0x5dc4(r13)
    addi    r4, sp, 0x80
    bl      print__10JUTConsoleFPCc
branch_0x802f66cc:
    lwz     r0, 0x194(sp)
    addi    sp, sp, 0x190
    mtlr    r0
    blr


.globl JUTReportConsole
JUTReportConsole: # 0x802f66dc
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r3, rtoc, 0x3e8
    stwu    sp, -0x8(sp)
    bl      JUTReportConsole_f
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl JUTWarningConsole_f
JUTWarningConsole_f: # 0x802f6708
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    bne-    cr1, branch_0x802f6738
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x802f6738:
    stw     r3, 0x8(sp)
    lis     r0, 0x100
    stw     r4, 0xc(sp)
    addi    r4, sp, 0x198
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    addi    r6, sp, 0x184
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    stw     r0, 0x184(sp)
    addi    r0, sp, 0x8
    stw     r4, 0x188(sp)
    stw     r0, 0x18c(sp)
    lwz     r4, -0x5dc4(r13)
    cmplwi  r4, 0x0
    bne-    branch_0x802f6794
    addi    r5, r3, 0x0
    addi    r3, sp, 0x80
    li      r4, 0x100
    bl      vsnprintf
    b       branch_0x802f67bc

branch_0x802f6794:
    lwz     r0, 0x58(r4)
    clrlwi. r0, r0, 30
    beq-    branch_0x802f67bc
    addi    r5, r3, 0x0
    addi    r3, sp, 0x80
    li      r4, 0x100
    bl      vsnprintf
    lwz     r3, -0x5dc4(r13)
    addi    r4, sp, 0x80
    bl      print__10JUTConsoleFPCc
branch_0x802f67bc:
    lwz     r0, 0x194(sp)
    addi    sp, sp, 0x190
    mtlr    r0
    blr


.globl JUTWarningConsole
JUTWarningConsole: # 0x802f67cc
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r3, rtoc, 0x3e8
    stwu    sp, -0x8(sp)
    bl      JUTReportConsole_f
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

