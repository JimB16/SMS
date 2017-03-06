
.globl GXSetDispCopySrc
GXSetDispCopySrc: # 0x8035e2c8
    lwz     r7, -0x72f8(r13)
    li      r8, 0x0
    clrlslwi  r4, r4, 16, 10
    stw     r8, 0x1e0(r7)
    clrlwi  r7, r5, 16
    clrlwi  r5, r6, 16
    lwz     r6, -0x72f8(r13)
    subi    r0, r5, 0x1
    clrlwi  r5, r3, 16
    addi    r9, r6, 0x1e0
    lwz     r6, 0x1e0(r6)
    subi    r3, r7, 0x1
    clrrwi  r6, r6, 10
    or      r5, r6, r5
    stw     r5, 0x0(r9)
    slwi    r0, r0, 10
    lwz     r5, -0x72f8(r13)
    addi    r6, r5, 0x1e0
    lwz     r5, 0x1e0(r5)
    rlwinm  r5, r5, 0, 22, 11
    or      r4, r5, r4
    stw     r4, 0x0(r6)
    lwz     r4, -0x72f8(r13)
    addi    r5, r4, 0x1e0
    lwz     r4, 0x1e0(r4)
    clrlwi  r4, r4, 8
    oris    r4, r4, 0x4900
    stw     r4, 0x0(r5)
    lwz     r4, -0x72f8(r13)
    stw     r8, 0x1e4(r4)
    lwz     r4, -0x72f8(r13)
    addi    r5, r4, 0x1e4
    lwz     r4, 0x1e4(r4)
    clrrwi  r4, r4, 10
    or      r3, r4, r3
    stw     r3, 0x0(r5)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x1e4
    lwz     r3, 0x1e4(r3)
    rlwinm  r3, r3, 0, 22, 11
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x1e4(r3)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x4a00
    stw     r0, 0x0(r3)
    blr


.globl GXSetTexCopySrc
GXSetTexCopySrc: # 0x8035e388
    lwz     r7, -0x72f8(r13)
    li      r8, 0x0
    clrlslwi  r4, r4, 16, 10
    stw     r8, 0x1f0(r7)
    clrlwi  r7, r5, 16
    clrlwi  r5, r6, 16
    lwz     r6, -0x72f8(r13)
    subi    r0, r5, 0x1
    clrlwi  r5, r3, 16
    addi    r9, r6, 0x1f0
    lwz     r6, 0x1f0(r6)
    subi    r3, r7, 0x1
    clrrwi  r6, r6, 10
    or      r5, r6, r5
    stw     r5, 0x0(r9)
    slwi    r0, r0, 10
    lwz     r5, -0x72f8(r13)
    addi    r6, r5, 0x1f0
    lwz     r5, 0x1f0(r5)
    rlwinm  r5, r5, 0, 22, 11
    or      r4, r5, r4
    stw     r4, 0x0(r6)
    lwz     r4, -0x72f8(r13)
    addi    r5, r4, 0x1f0
    lwz     r4, 0x1f0(r4)
    clrlwi  r4, r4, 8
    oris    r4, r4, 0x4900
    stw     r4, 0x0(r5)
    lwz     r4, -0x72f8(r13)
    stw     r8, 0x1f4(r4)
    lwz     r4, -0x72f8(r13)
    addi    r5, r4, 0x1f4
    lwz     r4, 0x1f4(r4)
    clrrwi  r4, r4, 10
    or      r3, r4, r3
    stw     r3, 0x0(r5)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x1f4
    lwz     r3, 0x1f4(r3)
    rlwinm  r3, r3, 0, 22, 11
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x1f4(r3)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x4a00
    stw     r0, 0x0(r3)
    blr


.globl GXSetDispCopyDst
GXSetDispCopyDst: # 0x8035e448
    lwz     r4, -0x72f8(r13)
    li      r0, 0x0
    stw     r0, 0x1e8(r4)
    clrlslwi  r0, r3, 17, 1
    srawi   r0, r0, 5
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x1e8
    lwz     r3, 0x1e8(r3)
    clrrwi  r3, r3, 10
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x1e8(r3)
    clrlwi  r0, r0, 8
    oris    r0, r0, 0x4d00
    stw     r0, 0x0(r3)
    blr


.globl GXSetTexCopyDst
GXSetTexCopyDst: # 0x8035e48c
    mflr    r0
    cmpwi   r5, 0x13
    stw     r0, 0x4(sp)
    li      r0, 0x0
    addi    r8, r3, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    clrlwi  r31, r5, 28
    stw     r30, 0x28(sp)
    addi    r30, r6, 0x0
    lwz     r7, -0x72f8(r13)
    stb     r0, 0x200(r7)
    addi    r7, r4, 0x0
    bne-    branch_0x8035e4c8
    li      r31, 0xb
branch_0x8035e4c8:
    cmpwi   r5, 0x26
    beq-    branch_0x8035e4e8
    bge-    branch_0x8035e504
    cmpwi   r5, 0x4
    bge-    branch_0x8035e504
    cmpwi   r5, 0x0
    bge-    branch_0x8035e4e8
    b       branch_0x8035e504

branch_0x8035e4e8:
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x1fc(r3)
    rlwinm  r0, r0, 0, 17, 14
    oris    r0, r0, 0x1
    ori     r0, r0, 0x8000
    stw     r0, 0x0(r3)
    b       branch_0x8035e518

branch_0x8035e504:
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x1fc(r3)
    rlwinm  r0, r0, 0, 17, 14
    oris    r0, r0, 0x1
    stw     r0, 0x0(r3)
branch_0x8035e518:
    rlwinm  r4, r5, 0, 27, 27
    lwz     r3, -0x72f8(r13)
    subi    r0, r4, 0x10
    cntlzw  r0, r0
    extrwi  r0, r0, 8, 19
    stb     r0, 0x200(r3)
    addi    r3, r5, 0x0
    addi    r5, r7, 0x0
    lwz     r4, -0x72f8(r13)
    addi    r7, sp, 0x1c
    lwz     r0, 0x1fc(r4)
    addi    r6, r4, 0x1fc
    addi    r4, r8, 0x0
    rlwinm  r0, r0, 0, 29, 27
    rlwimi  r0, r31, 0, 28, 28
    stw     r0, 0x0(r6)
    clrlwi  r31, r31, 29
    addi    r6, sp, 0x20
    addi    r8, sp, 0x18
    bl      __GetImageTileCount
    lwz     r3, -0x72f8(r13)
    li      r0, 0x0
    stw     r0, 0x1f8(r3)
    clrlslwi  r3, r30, 24, 9
    slwi    r0, r31, 4
    lwz     r5, 0x20(sp)
    lwz     r4, 0x18(sp)
    lwz     r6, -0x72f8(r13)
    mullw   r4, r5, r4
    lwzu    r5, 0x1f8(r6)
    clrrwi  r5, r5, 10
    or      r4, r5, r4
    stw     r4, 0x0(r6)
    lwz     r4, -0x72f8(r13)
    addi    r5, r4, 0x1f8
    lwz     r4, 0x1f8(r4)
    clrlwi  r4, r4, 8
    oris    r4, r4, 0x4d00
    stw     r4, 0x0(r5)
    lwz     r4, -0x72f8(r13)
    addi    r5, r4, 0x1fc
    lwz     r4, 0x1fc(r4)
    rlwinm  r4, r4, 0, 23, 21
    or      r3, r4, r3
    stw     r3, 0x0(r5)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x1fc
    lwz     r3, 0x1fc(r3)
    rlwinm  r3, r3, 0, 28, 24
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl GXSetDispCopyFrame2Field
GXSetDispCopyFrame2Field: # 0x8035e5fc
    lwz     r4, -0x72f8(r13)
    slwi    r0, r3, 12
    lwzu    r3, 0x1ec(r4)
    rlwinm  r3, r3, 0, 20, 17
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x1fc(r3)
    rlwinm  r0, r0, 0, 20, 17
    stw     r0, 0x0(r3)
    blr


.globl GXSetCopyClamp
GXSetCopyClamp: # 0x8035e628
    lwz     r5, -0x72f8(r13)
    clrlwi  r4, r3, 31
    subi    r0, r4, 0x1
    lwz     r4, 0x1ec(r5)
    addi    r6, r5, 0x1ec
    cntlzw  r0, r0
    clrrwi  r5, r4, 1
    extrwi  r4, r0, 8, 19
    or      r0, r5, r4
    stw     r0, 0x0(r6)
    rlwinm  r3, r3, 0, 30, 30
    subi    r0, r3, 0x2
    lwz     r3, -0x72f8(r13)
    cntlzw  r0, r0
    rlwinm  r6, r0, 28, 23, 30
    addi    r5, r3, 0x1ec
    lwz     r3, 0x1ec(r3)
    rlwinm  r0, r3, 0, 31, 29
    or      r0, r0, r6
    stw     r0, 0x0(r5)
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x1fc(r3)
    clrrwi  r0, r0, 1
    or      r0, r0, r4
    stw     r0, 0x0(r3)
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x1fc(r3)
    rlwinm  r0, r0, 0, 31, 29
    or      r0, r0, r6
    stw     r0, 0x0(r3)
    blr


.globl GXGetNumXfbLines
GXGetNumXfbLines: # 0x8035e6a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f0, 0xb48(rtoc)
    fdivs   f1, f0, f1
    bl      __cvt_fp2unsigned
    clrlwi  r5, r31, 16
    subi    r0, r5, 0x1
    clrlwi  r4, r3, 23
    slwi    r0, r0, 8
    divwu   r3, r0, r4
    cmplwi  r4, 0x80
    addi    r3, r3, 0x1
    ble-    branch_0x8035e710
    cmplwi  r4, 0x100
    bge-    branch_0x8035e710
    b       branch_0x8035e6f4

branch_0x8035e6f0:
    srwi    r4, r4, 1
branch_0x8035e6f4:
    clrlwi. r0, r4, 31
    beq+    branch_0x8035e6f0
    divwu   r0, r5, r4
    mullw   r0, r0, r4
    subf.   r0, r0, r5
    bne-    branch_0x8035e710
    addi    r3, r3, 0x1
branch_0x8035e710:
    cmplwi  r3, 0x400
    ble-    branch_0x8035e71c
    li      r3, 0x400
branch_0x8035e71c:
    lwz     r0, 0x24(sp)
    clrlwi  r3, r3, 16
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GXGetYScaleFactor
GXGetYScaleFactor: # 0x8035e734
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stfd    f29, 0x60(sp)
    stfd    f28, 0x58(sp)
    stmw    r25, 0x3c(sp)
    clrlwi  r28, r4, 16
    clrlwi  r31, r3, 16
    stw     r28, 0x34(sp)
    mr      r27, r3
    mr      r25, r4
    stw     r31, 0x2c(sp)
    stw     r0, 0x30(sp)
    stw     r0, 0x28(sp)
    lfd     f3, 0xb50(rtoc)
    lfd     f2, 0x30(sp)
    lfd     f1, 0x28(sp)
    fsubs   f2, f2, f3
    lfs     f0, 0xb48(rtoc)
    fsubs   f1, f1, f3
    fdivs   f2, f2, f1
    fdivs   f1, f0, f2
    fmr     f28, f2
    bl      __cvt_fp2unsigned
    subi    r0, r31, 0x1
    clrlwi  r4, r3, 23
    slwi    r30, r0, 8
    divwu   r3, r30, r4
    cmplwi  r4, 0x80
    addi    r3, r3, 0x1
    ble-    branch_0x8035e7e8
    cmplwi  r4, 0x100
    bge-    branch_0x8035e7e8
    b       branch_0x8035e7cc

branch_0x8035e7c8:
    srwi    r4, r4, 1
branch_0x8035e7cc:
    clrlwi. r0, r4, 31
    beq+    branch_0x8035e7c8
    divwu   r0, r31, r4
    mullw   r0, r0, r4
    subf.   r0, r0, r31
    bne-    branch_0x8035e7e8
    addi    r3, r3, 0x1
branch_0x8035e7e8:
    cmplwi  r3, 0x400
    ble-    branch_0x8035e7f4
    li      r3, 0x400
branch_0x8035e7f4:
    lfd     f31, 0xb50(rtoc)
    mr      r0, r3
    lfs     f30, 0xb48(rtoc)
    clrlwi  r29, r25, 16
    clrlwi  r26, r27, 16
    lis     r25, 0x4330
    b       branch_0x8035e894

branch_0x8035e810:
    subi    r28, r28, 0x1
    stw     r26, 0x34(sp)
    stw     r28, 0x2c(sp)
    stw     r25, 0x28(sp)
    stw     r25, 0x30(sp)
    lfd     f1, 0x28(sp)
    lfd     f0, 0x30(sp)
    fsubs   f1, f1, f31
    fsubs   f0, f0, f31
    fdivs   f0, f1, f0
    fdivs   f1, f30, f0
    fmr     f28, f0
    bl      __cvt_fp2unsigned
    clrlwi  r4, r3, 23
    divwu   r3, r30, r4
    cmplwi  r4, 0x80
    addi    r3, r3, 0x1
    ble-    branch_0x8035e884
    cmplwi  r4, 0x100
    bge-    branch_0x8035e884
    b       branch_0x8035e868

branch_0x8035e864:
    srwi    r4, r4, 1
branch_0x8035e868:
    clrlwi. r0, r4, 31
    beq+    branch_0x8035e864
    divwu   r0, r31, r4
    mullw   r0, r0, r4
    subf.   r0, r0, r31
    bne-    branch_0x8035e884
    addi    r3, r3, 0x1
branch_0x8035e884:
    cmplwi  r3, 0x400
    ble-    branch_0x8035e890
    li      r3, 0x400
branch_0x8035e890:
    mr      r0, r3
branch_0x8035e894:
    cmplw   r0, r29
    bgt+    branch_0x8035e810
    fmr     f29, f28
    lfd     f30, 0xb50(rtoc)
    lfs     f31, 0xb48(rtoc)
    clrlwi  r27, r27, 16
    lis     r26, 0x4330
    b       branch_0x8035e93c

branch_0x8035e8b4:
    addi    r28, r28, 0x1
    stw     r27, 0x34(sp)
    fmr     f29, f28
    stw     r28, 0x2c(sp)
    stw     r26, 0x28(sp)
    stw     r26, 0x30(sp)
    lfd     f1, 0x28(sp)
    lfd     f0, 0x30(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fdivs   f0, f1, f0
    fdivs   f1, f31, f0
    fmr     f28, f0
    bl      __cvt_fp2unsigned
    clrlwi  r4, r3, 23
    divwu   r3, r30, r4
    cmplwi  r4, 0x80
    addi    r3, r3, 0x1
    ble-    branch_0x8035e92c
    cmplwi  r4, 0x100
    bge-    branch_0x8035e92c
    b       branch_0x8035e910

branch_0x8035e90c:
    srwi    r4, r4, 1
branch_0x8035e910:
    clrlwi. r0, r4, 31
    beq+    branch_0x8035e90c
    divwu   r0, r31, r4
    mullw   r0, r0, r4
    subf.   r0, r0, r31
    bne-    branch_0x8035e92c
    addi    r3, r3, 0x1
branch_0x8035e92c:
    cmplwi  r3, 0x400
    ble-    branch_0x8035e938
    li      r3, 0x400
branch_0x8035e938:
    mr      r0, r3
branch_0x8035e93c:
    cmplw   r0, r29
    blt+    branch_0x8035e8b4
    lmw     r25, 0x3c(sp)
    fmr     f1, f29
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    lfd     f29, 0x60(sp)
    lfd     f28, 0x58(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl GXSetDispCopyYScale
GXSetDispCopyYScale: # 0x8035e96c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0xb48(rtoc)
    fdivs   f1, f0, f1
    bl      __cvt_fp2unsigned
    clrlwi  r6, r3, 23
    lwz     r4, -0x72f8(r13)
    li      r0, 0x61
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    oris    r0, r6, 0x4e00
    li      r5, 0x0
    stw     r0, -0x8000(r3)
    subfic  r3, r6, 0x100
    subic   r0, r3, 0x1
    sth     r5, 0x2(r4)
    subfe   r0, r0, r3
    clrlslwi  r0, r0, 24, 10
    lwz     r3, -0x72f8(r13)
    cmplwi  r6, 0x80
    addi    r4, r6, 0x0
    addi    r5, r3, 0x1ec
    lwz     r3, 0x1ec(r3)
    rlwinm  r3, r3, 0, 22, 20
    or      r0, r3, r0
    stw     r0, 0x0(r5)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x1e4(r3)
    extrwi  r5, r0, 10, 12
    rlwinm  r0, r0, 30, 14, 23
    divwu   r3, r0, r6
    addi    r5, r5, 0x1
    addi    r3, r3, 0x1
    ble-    branch_0x8035ea24
    cmplwi  r6, 0x100
    bge-    branch_0x8035ea24
    b       branch_0x8035ea08

branch_0x8035ea04:
    srwi    r4, r4, 1
branch_0x8035ea08:
    clrlwi. r0, r4, 31
    beq+    branch_0x8035ea04
    divwu   r0, r5, r4
    mullw   r0, r0, r4
    subf.   r0, r0, r5
    bne-    branch_0x8035ea24
    addi    r3, r3, 0x1
branch_0x8035ea24:
    cmplwi  r3, 0x400
    ble-    branch_0x8035ea30
    li      r3, 0x400
branch_0x8035ea30:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXSetCopyClear
GXSetCopyClear: # 0x8035ea40
    clrlwi  r0, r4, 8
    lbz     r4, 0x3(r3)
    lbz     r5, 0x0(r3)
    li      r6, 0x61
    slwi    r7, r4, 8
    lwz     r4, -0x72f8(r13)
    insrwi  r7, r5, 8, 24
    lis     r5, 0xcc01
    clrlwi  r7, r7, 8
    stb     r6, -0x8000(r5)
    oris    r7, r7, 0x4f00
    stw     r7, -0x8000(r5)
    oris    r7, r0, 0x5100
    li      r0, 0x0
    lbz     r8, 0x2(r3)
    lbz     r3, 0x1(r3)
    slwi    r3, r3, 8
    stb     r6, -0x8000(r5)
    insrwi  r3, r8, 8, 24
    clrlwi  r3, r3, 8
    oris    r3, r3, 0x5000
    stw     r3, -0x8000(r5)
    stb     r6, -0x8000(r5)
    stw     r7, -0x8000(r5)
    sth     r0, 0x2(r4)
    blr


.globl GXSetCopyFilter
GXSetCopyFilter: # 0x8035eaa8
    stwu    sp, -0x50(sp)
    clrlwi. r0, r3, 24
    stmw    r23, 0x2c(sp)
    beq-    branch_0x8035ebdc
    lbz     r0, 0x1(r4)
    lbz     r3, 0x7(r4)
    slwi    r30, r0, 4
    lbz     r8, 0x0(r4)
    lbz     r0, 0x13(r4)
    slwi    r25, r3, 4
    lbz     r10, 0x6(r4)
    insrwi  r30, r8, 4, 28
    lbz     r11, 0x2(r4)
    lbz     r7, 0xd(r4)
    insrwi  r25, r10, 4, 28
    slwi    r27, r11, 8
    lbz     r9, 0x8(r4)
    lbz     r3, 0xe(r4)
    slwi    r26, r9, 8
    lbz     r28, 0x3(r4)
    insrwi  r27, r30, 8, 24
    lbz     r9, 0x10(r4)
    slwi    r23, r7, 4
    lbz     r12, 0xc(r4)
    lbz     r7, 0x15(r4)
    slwi    r24, r3, 8
    insrwi  r23, r12, 4, 28
    lbz     r29, 0x12(r4)
    slwi    r0, r0, 4
    insrwi  r0, r29, 4, 28
    lbz     r8, 0x14(r4)
    slwi    r28, r28, 12
    lbz     r31, 0x9(r4)
    insrwi  r28, r27, 12, 20
    lbz     r29, 0x4(r4)
    insrwi  r24, r23, 8, 24
    lbz     r10, 0xf(r4)
    slwi    r23, r8, 8
    lbz     r12, 0xa(r4)
    insrwi  r26, r25, 8, 24
    lbz     r3, 0x16(r4)
    slwi    r25, r10, 12
    lbz     r30, 0x5(r4)
    insrwi  r23, r0, 8, 24
    lbz     r0, 0x17(r4)
    slwi    r27, r31, 12
    lbz     r11, 0xb(r4)
    lbz     r8, 0x11(r4)
    slwi    r4, r29, 16
    slwi    r7, r7, 12
    slwi    r10, r12, 16
    insrwi  r27, r26, 12, 20
    slwi    r12, r3, 16
    insrwi  r7, r23, 12, 20
    insrwi  r4, r28, 16, 16
    slwi    r3, r30, 20
    insrwi  r25, r24, 12, 20
    slwi    r9, r9, 16
    insrwi  r10, r27, 16, 16
    insrwi  r3, r4, 20, 12
    insrwi  r12, r7, 16, 16
    clrlwi  r7, r3, 8
    slwi    r3, r11, 20
    insrwi  r3, r10, 20, 12
    clrlwi  r4, r3, 8
    slwi    r3, r8, 20
    insrwi  r9, r25, 16, 16
    insrwi  r3, r9, 20, 12
    slwi    r0, r0, 20
    insrwi  r0, r12, 20, 12
    clrlwi  r3, r3, 8
    clrlwi  r0, r0, 8
    oris    r8, r7, 0x100
    oris    r7, r4, 0x200
    oris    r9, r3, 0x300
    oris    r10, r0, 0x400
    b       branch_0x8035ebfc

branch_0x8035ebdc:
    lis     r8, 0x166
    lis     r7, 0x266
    lis     r4, 0x366
    lis     r3, 0x466
    addi    r8, r8, 0x6666
    addi    r7, r7, 0x6666
    addi    r9, r4, 0x6666
    addi    r10, r3, 0x6666
branch_0x8035ebfc:
    li      r4, 0x61
    lis     r3, 0xcc01
    stb     r4, -0x8000(r3)
    clrlwi. r0, r5, 24
    stw     r8, -0x8000(r3)
    stb     r4, -0x8000(r3)
    stw     r7, -0x8000(r3)
    stb     r4, -0x8000(r3)
    stw     r9, -0x8000(r3)
    stb     r4, -0x8000(r3)
    stw     r10, -0x8000(r3)
    beq-    branch_0x8035ec90
    lbz     r0, 0x0(r6)
    lbz     r3, 0x1(r6)
    oris    r5, r0, 0x5300
    lbz     r0, 0x4(r6)
    lbz     r4, 0x2(r6)
    rlwinm  r7, r5, 0, 26, 19
    slwi    r5, r3, 6
    lbz     r3, 0x5(r6)
    or      r7, r7, r5
    oris    r8, r0, 0x5400
    lbz     r5, 0x3(r6)
    lbz     r0, 0x6(r6)
    rlwinm  r6, r7, 0, 20, 13
    slwi    r4, r4, 12
    or      r6, r6, r4
    rlwinm  r4, r8, 0, 26, 19
    slwi    r3, r3, 6
    or      r3, r4, r3
    rlwinm  r6, r6, 0, 14, 7
    slwi    r4, r5, 18
    rlwinm  r3, r3, 0, 20, 13
    slwi    r0, r0, 12
    or      r6, r6, r4
    or      r7, r3, r0
    b       branch_0x8035eca0

branch_0x8035ec90:
    lis     r4, 0x5359
    lis     r3, 0x5400
    addi    r6, r4, 0x5000
    addi    r7, r3, 0x15
branch_0x8035eca0:
    li      r5, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r4, 0xcc01
    stb     r5, -0x8000(r4)
    li      r0, 0x0
    stw     r6, -0x8000(r4)
    stb     r5, -0x8000(r4)
    stw     r7, -0x8000(r4)
    sth     r0, 0x2(r3)
    lmw     r23, 0x2c(sp)
    addi    sp, sp, 0x50
    blr


.globl GXSetDispCopyGamma
GXSetDispCopyGamma: # 0x8035ecd0
    lwz     r4, -0x72f8(r13)
    slwi    r0, r3, 7
    lwzu    r3, 0x1ec(r4)
    rlwinm  r3, r3, 0, 25, 22
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    blr


.globl GXCopyDisp
GXCopyDisp: # 0x8035ecec
    clrlwi. r0, r4, 24
    beq-    branch_0x8035ed2c
    lwz     r7, -0x72f8(r13)
    li      r0, 0x61
    lis     r5, 0xcc01
    lwz     r6, 0x1d8(r7)
    clrrwi  r6, r6, 1
    stb     r0, -0x8000(r5)
    ori     r6, r6, 0x1
    rlwinm  r6, r6, 0, 31, 27
    ori     r6, r6, 0xe
    stw     r6, -0x8000(r5)
    lwz     r6, 0x1d0(r7)
    stb     r0, -0x8000(r5)
    clrrwi  r0, r6, 2
    stw     r0, -0x8000(r5)
branch_0x8035ed2c:
    clrlwi. r0, r4, 24
    li      r0, 0x0
    bne-    branch_0x8035ed4c
    lwz     r5, -0x72f8(r13)
    lwz     r5, 0x1dc(r5)
    clrlwi  r5, r5, 29
    cmplwi  r5, 0x3
    bne-    branch_0x8035ed78
branch_0x8035ed4c:
    lwz     r5, -0x72f8(r13)
    lwz     r7, 0x1dc(r5)
    extrwi  r5, r7, 1, 25
    cmplwi  r5, 0x1
    bne-    branch_0x8035ed78
    li      r0, 0x61
    lis     r6, 0xcc01
    stb     r0, -0x8000(r6)
    rlwinm  r5, r7, 0, 26, 24
    li      r0, 0x1
    stw     r5, -0x8000(r6)
branch_0x8035ed78:
    li      r9, 0x61
    lwz     r7, -0x72f8(r13)
    lis     r8, 0xcc01
    stb     r9, -0x8000(r8)
    extrwi  r3, r3, 24, 3
    oris    r10, r3, 0x4b00
    lwz     r6, 0x1e0(r7)
    clrlwi. r5, r4, 24
    clrlslwi  r3, r4, 24, 11
    stw     r6, -0x8000(r8)
    stb     r9, -0x8000(r8)
    lwz     r4, 0x1e4(r7)
    stw     r4, -0x8000(r8)
    stb     r9, -0x8000(r8)
    lwz     r4, 0x1e8(r7)
    stw     r4, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stw     r10, -0x8000(r8)
    lwz     r4, 0x1ec(r7)
    rlwinm  r4, r4, 0, 21, 19
    or      r3, r4, r3
    stw     r3, 0x1ec(r7)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x1ec
    lwz     r3, 0x1ec(r3)
    rlwinm  r3, r3, 0, 18, 16
    ori     r3, r3, 0x4000
    stw     r3, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x1ec
    lwz     r3, 0x1ec(r3)
    clrlwi  r3, r3, 8
    oris    r3, r3, 0x5200
    stw     r3, 0x0(r4)
    stb     r9, -0x8000(r8)
    lwz     r4, -0x72f8(r13)
    lwz     r3, 0x1ec(r4)
    stw     r3, -0x8000(r8)
    beq-    branch_0x8035ee2c
    stb     r9, -0x8000(r8)
    lwz     r3, 0x1d8(r4)
    stw     r3, -0x8000(r8)
    stb     r9, -0x8000(r8)
    lwz     r3, 0x1d0(r4)
    stw     r3, -0x8000(r8)
branch_0x8035ee2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8035ee4c
    li      r0, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r4, 0xcc01
    stb     r0, -0x8000(r4)
    lwz     r0, 0x1dc(r3)
    stw     r0, -0x8000(r4)
branch_0x8035ee4c:
    lwz     r3, -0x72f8(r13)
    li      r0, 0x0
    sth     r0, 0x2(r3)
    blr


.globl GXCopyTex
GXCopyTex: # 0x8035ee5c
    clrlwi. r0, r4, 24
    beq-    branch_0x8035ee9c
    lwz     r7, -0x72f8(r13)
    li      r0, 0x61
    lis     r5, 0xcc01
    lwz     r6, 0x1d8(r7)
    clrrwi  r6, r6, 1
    stb     r0, -0x8000(r5)
    ori     r6, r6, 0x1
    rlwinm  r6, r6, 0, 31, 27
    ori     r6, r6, 0xe
    stw     r6, -0x8000(r5)
    lwz     r6, 0x1d0(r7)
    stb     r0, -0x8000(r5)
    clrrwi  r0, r6, 2
    stw     r0, -0x8000(r5)
branch_0x8035ee9c:
    lwz     r6, -0x72f8(r13)
    li      r0, 0x0
    lbz     r5, 0x200(r6)
    lwz     r7, 0x1dc(r6)
    cmplwi  r5, 0x0
    beq-    branch_0x8035eecc
    clrlwi  r5, r7, 29
    cmplwi  r5, 0x3
    beq-    branch_0x8035eecc
    clrrwi  r0, r7, 3
    ori     r7, r0, 0x3
    li      r0, 0x1
branch_0x8035eecc:
    clrlwi. r5, r4, 24
    bne-    branch_0x8035eee0
    clrlwi  r5, r7, 29
    cmplwi  r5, 0x3
    bne-    branch_0x8035eef4
branch_0x8035eee0:
    extrwi  r5, r7, 1, 25
    cmplwi  r5, 0x1
    bne-    branch_0x8035eef4
    li      r0, 0x1
    rlwinm  r7, r7, 0, 26, 24
branch_0x8035eef4:
    clrlwi. r5, r0, 24
    beq-    branch_0x8035ef0c
    li      r6, 0x61
    lis     r5, 0xcc01
    stb     r6, -0x8000(r5)
    stw     r7, -0x8000(r5)
branch_0x8035ef0c:
    li      r9, 0x61
    lwz     r7, -0x72f8(r13)
    lis     r8, 0xcc01
    stb     r9, -0x8000(r8)
    extrwi  r3, r3, 24, 3
    oris    r10, r3, 0x4b00
    lwz     r6, 0x1f0(r7)
    clrlwi. r5, r4, 24
    clrlslwi  r3, r4, 24, 11
    stw     r6, -0x8000(r8)
    stb     r9, -0x8000(r8)
    lwz     r4, 0x1f4(r7)
    stw     r4, -0x8000(r8)
    stb     r9, -0x8000(r8)
    lwz     r4, 0x1f8(r7)
    stw     r4, -0x8000(r8)
    stb     r9, -0x8000(r8)
    stw     r10, -0x8000(r8)
    lwz     r4, 0x1fc(r7)
    rlwinm  r4, r4, 0, 21, 19
    or      r3, r4, r3
    stw     r3, 0x1fc(r7)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x1fc
    lwz     r3, 0x1fc(r3)
    rlwinm  r3, r3, 0, 18, 16
    stw     r3, 0x0(r4)
    lwz     r3, -0x72f8(r13)
    addi    r4, r3, 0x1fc
    lwz     r3, 0x1fc(r3)
    clrlwi  r3, r3, 8
    oris    r3, r3, 0x5200
    stw     r3, 0x0(r4)
    stb     r9, -0x8000(r8)
    lwz     r4, -0x72f8(r13)
    lwz     r3, 0x1fc(r4)
    stw     r3, -0x8000(r8)
    beq-    branch_0x8035efbc
    stb     r9, -0x8000(r8)
    lwz     r3, 0x1d8(r4)
    stw     r3, -0x8000(r8)
    stb     r9, -0x8000(r8)
    lwz     r3, 0x1d0(r4)
    stw     r3, -0x8000(r8)
branch_0x8035efbc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8035efdc
    li      r0, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r4, 0xcc01
    stb     r0, -0x8000(r4)
    lwz     r0, 0x1dc(r3)
    stw     r0, -0x8000(r4)
branch_0x8035efdc:
    lwz     r3, -0x72f8(r13)
    li      r0, 0x0
    sth     r0, 0x2(r3)
    blr


.globl GXClearBoundingBox
GXClearBoundingBox: # 0x8035efec
    li      r6, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r5, 0xcc01
    lis     r4, 0x5500
    stb     r6, -0x8000(r5)
    addi    r0, r4, 0x3ff
    stw     r0, -0x8000(r5)
    lis     r4, 0x5600
    addi    r4, r4, 0x3ff
    stb     r6, -0x8000(r5)
    li      r0, 0x0
    stw     r4, -0x8000(r5)
    sth     r0, 0x2(r3)
    blr

