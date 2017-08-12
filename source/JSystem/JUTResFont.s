
.globl isLeadByte_1Byte__7JUTFontFi
isLeadByte_1Byte__7JUTFontFi: # 0x802f12a0
    li      r3, 0x0
    blr


.globl isLeadByte_2Byte__7JUTFontFi
isLeadByte_2Byte__7JUTFontFi: # 0x802f12a8
    li      r3, 0x1
    blr


.globl isLeadByte_ShiftJIS__7JUTFontFi
isLeadByte_ShiftJIS__7JUTFontFi: # 0x802f12b0
    cmpwi   r3, 0x81
    li      r4, 0x1
    li      r0, 0x0
    blt-    branch_0x802f12cc
    cmpwi   r3, 0x9f
    bgt-    branch_0x802f12cc
    mr      r0, r4
branch_0x802f12cc:
    clrlwi. r0, r0, 24
    bne-    branch_0x802f12f8
    cmpwi   r3, 0xe0
    li      r0, 0x0
    blt-    branch_0x802f12ec
    cmpwi   r3, 0xfc
    bgt-    branch_0x802f12ec
    li      r0, 0x1
branch_0x802f12ec:
    clrlwi. r0, r0, 24
    bne-    branch_0x802f12f8
    li      r4, 0x0
branch_0x802f12f8:
    mr      r3, r4
    blr


.globl __ct__10JUTResFontFPC7ResFONTP10JKRArchive
__ct__10JUTResFontFPC7ResFONTP10JKRArchive: # 0x802f1300
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7JUTFontFv
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__10JUTResFont@h
    addi    r0, r3, __vvt__10JUTResFont@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x50(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    stw     r0, 0x54(r31)
    stw     r0, 0x58(r31)
    bl      initiate__10JUTResFontFPC7ResFONTP10JKRArchive
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__10JUTResFontFv
__dt__10JUTResFontFv: # 0x802f137c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f13fc
    lis     r3, __vvt__10JUTResFont@h
    addi    r0, r3, __vvt__10JUTResFont@l
    stw     r0, 0x0(r30)
    lwz     r3, 0x50(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f13b8
    bl      __dla__FPv
branch_0x802f13b8:
    lwz     r3, 0x54(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f13c8
    bl      __dla__FPv
branch_0x802f13c8:
    lwz     r3, 0x58(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f13d8
    bl      __dla__FPv
branch_0x802f13d8:
    cmplwi  r30, 0x0
    beq-    branch_0x802f13ec
    lis     r3, __vvt__7JUTFont@h
    addi    r0, r3, __vvt__7JUTFont@l
    stw     r0, 0x0(r30)
branch_0x802f13ec:
    extsh.  r0, r31
    ble-    branch_0x802f13fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f13fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initiate__10JUTResFontFPC7ResFONTP10JKRArchive
initiate__10JUTResFontFPC7ResFONTP10JKRArchive: # 0x802f1418
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      initiate__7JUTFontFv
    cmplwi  r31, 0x0
    beq-    branch_0x802f147c
    lwz     r3, 0x50(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f1450
    bl      __dla__FPv
branch_0x802f1450:
    lwz     r3, 0x54(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f1460
    bl      __dla__FPv
branch_0x802f1460:
    lwz     r3, 0x58(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f1470
    bl      __dla__FPv
branch_0x802f1470:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      protected_initiate__10JUTResFontFPC7ResFONT
branch_0x802f147c:
    lwz     r0, 0x48(r30)
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl protected_initiate__10JUTResFontFPC7ResFONT
protected_initiate__10JUTResFontFPC7ResFONT: # 0x802f14a4
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    stw     r3, 0x48(r31)
    stw     r3, 0x50(r31)
    stw     r3, 0x54(r31)
    stw     r3, 0x58(r31)
    stw     r3, 0x1c(r31)
    stw     r3, 0x20(r31)
    stw     r0, 0x44(r31)
    beq-    branch_0x802f1540
    stw     r4, 0x48(r31)
    mr      r3, r31
    bl      countBlock__10JUTResFontFv
    lhz     r0, 0x5c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802f1508
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x50(r31)
branch_0x802f1508:
    lhz     r0, 0x5e(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802f1520
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x54(r31)
branch_0x802f1520:
    lhz     r0, 0x60(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802f1538
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x58(r31)
branch_0x802f1538:
    mr      r3, r31
    bl      setBlock__10JUTResFontFv
branch_0x802f1540:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl countBlock__10JUTResFontFv
countBlock__10JUTResFontFv: # 0x802f1554
    mflr    r0
    lis     r5, unk_474c5931@h
    stw     r0, 0x4(sp)
    li      r0, 0x0
    lis     r4, unk_57494431@h
    stwu    sp, -0x30(sp)
    lis     r7, unk_4d415031@h
    lis     r6, unk_494e4631@h
    stmw    r24, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r27, r5, unk_474c5931@l
    addi    r28, r4, unk_57494431@l
    addi    r25, r7, unk_4d415031@l
    addi    r26, r6, unk_494e4631@l
    li      r24, 0x0
    sth     r0, 0x5c(r3)
    lis     r3, unk_803aa128@ha
    addi    r29, r3, unk_803aa128@l
    sth     r0, 0x5e(r30)
    sth     r0, 0x60(r30)
    lwz     r3, 0x48(r30)
    addi    r31, r3, 0x20
    b       branch_0x802f1628

branch_0x802f15b0:
    lwz     r0, 0x0(r31)
    cmpw    r0, r25
    beq-    branch_0x802f1604
    bge-    branch_0x802f15d8
    cmpw    r0, r26
    beq-    branch_0x802f161c
    bge-    branch_0x802f1614
    cmpw    r0, r27
    beq-    branch_0x802f15f4
    b       branch_0x802f1614

branch_0x802f15d8:
    cmpw    r0, r28
    beq-    branch_0x802f15e4
    b       branch_0x802f1614

branch_0x802f15e4:
    lhz     r3, 0x5c(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x5c(r30)
    b       branch_0x802f161c

branch_0x802f15f4:
    lhz     r3, 0x5e(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x5e(r30)
    b       branch_0x802f161c

branch_0x802f1604:
    lhz     r3, 0x60(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x60(r30)
    b       branch_0x802f161c

branch_0x802f1614:
    mr      r3, r29
    bl      JUTReportConsole
branch_0x802f161c:
    lwz     r0, 0x4(r31)
    addi    r24, r24, 0x1
    add     r31, r31, r0
branch_0x802f1628:
    lwz     r3, 0x48(r30)
    lwz     r0, 0xc(r3)
    cmplw   r24, r0
    blt+    branch_0x802f15b0
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setBlock__10JUTResFontFv
setBlock__10JUTResFontFv: # 0x802f164c
    mflr    r0
    lis     r4, unk_0000ffff@ha
    stw     r0, 0x4(sp)
    addi    r0, r4, unk_0000ffff@l
    lis     r6, unk_474c5931@h
    stwu    sp, -0x40(sp)
    lis     r5, unk_57494431@h
    lis     r8, unk_4d415031@h
    stmw    r20, 0x10(sp)
    lis     r7, unk_494e4631@h
    lis     r4, saoAboutEncoding___10JUTResFont@h
    addi    r24, r3, 0x0
    addi    r29, r6, unk_474c5931@l
    addi    r30, r5, unk_57494431@l
    addi    r27, r8, unk_4d415031@l
    addi    r28, r7, unk_494e4631@l
    addi    r31, r4, saoAboutEncoding___10JUTResFont@l
    li      r23, 0x0
    li      r22, 0x0
    li      r21, 0x0
    li      r25, 0x0
    sth     r0, 0x64(r3)
    lis     r3, unk_803aa148@ha
    addi    r20, r3, unk_803aa148@l
    lwz     r9, 0x48(r24)
    addi    r26, r9, 0x20
    b       branch_0x802f1768

branch_0x802f16b8:
    lwz     r0, 0x0(r26)
    cmpw    r0, r27
    beq-    branch_0x802f1728
    bge-    branch_0x802f16e0
    cmpw    r0, r28
    beq-    branch_0x802f16ec
    bge-    branch_0x802f1754
    cmpw    r0, r29
    beq-    branch_0x802f1718
    b       branch_0x802f1754

branch_0x802f16e0:
    cmpw    r0, r30
    beq-    branch_0x802f1708
    b       branch_0x802f1754

branch_0x802f16ec:
    stw     r26, 0x4c(r24)
    lwz     r3, 0x4c(r24)
    lhz     r0, 0x8(r3)
    slwi    r0, r0, 2
    add     r0, r31, r0
    stw     r0, 0x68(r24)
    b       branch_0x802f175c

branch_0x802f1708:
    lwz     r3, 0x50(r24)
    stwx    r26, r3, r23
    addi    r23, r23, 0x4
    b       branch_0x802f175c

branch_0x802f1718:
    lwz     r3, 0x54(r24)
    stwx    r26, r3, r22
    addi    r22, r22, 0x4
    b       branch_0x802f175c

branch_0x802f1728:
    lwz     r3, 0x58(r24)
    stwx    r26, r3, r21
    lwz     r3, 0x58(r24)
    lhz     r0, 0x64(r24)
    lwzx    r3, r3, r21
    lhz     r3, 0xa(r3)
    cmplw   r0, r3
    ble-    branch_0x802f174c
    sth     r3, 0x64(r24)
branch_0x802f174c:
    addi    r21, r21, 0x4
    b       branch_0x802f175c

branch_0x802f1754:
    mr      r3, r20
    bl      JUTReportConsole
branch_0x802f175c:
    lwz     r0, 0x4(r26)
    addi    r25, r25, 0x1
    add     r26, r26, r0
branch_0x802f1768:
    lwz     r3, 0x48(r24)
    lwz     r0, 0xc(r3)
    cmplw   r25, r0
    blt+    branch_0x802f16b8
    lmw     r20, 0x10(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl setGX__10JUTResFontFv
setGX__10JUTResFontFv: # 0x802f178c
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      GXSetNumChans
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0xf
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0xf
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setGX__10JUTResFontFQ28JUtility6TColorQ28JUtility6TColor
setGX__10JUTResFontFQ28JUtility6TColorQ28JUtility6TColor: # 0x802f1864
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r4
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x802f18b0
    lwz     r4, 0x0(r31)
    addis   r0, r4, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x802f18b0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802f1ae8

branch_0x802f18b0:
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x3
    bl      GXSetNumTevStages
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r0, 0x0(r30)
    addi    r4, sp, 0x20
    li      r3, 0x1
    stw     r0, 0x20(sp)
    bl      GXSetTevColor
    lwz     r0, 0x0(r31)
    addi    r4, sp, 0x1c
    li      r3, 0x2
    stw     r0, 0x1c(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x2
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x2
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x2
    li      r4, 0xf
    li      r5, 0x0
    li      r6, 0xa
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x2
    li      r4, 0x7
    li      r5, 0x0
    li      r6, 0x5
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0xf
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0xf
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
branch_0x802f1ae8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl drawChar_scale__10JUTResFontFffffib
drawChar_scale__10JUTResFontFffffib: # 0x802f1b00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    addi    r6, sp, 0x44
    stfd    f30, 0xa0(sp)
    fmr     f30, f3
    stfd    f29, 0x98(sp)
    stfd    f28, 0x90(sp)
    fmr     f28, f4
    stfd    f27, 0x88(sp)
    fmr     f27, f2
    stfd    f26, 0x80(sp)
    fmr     f26, f1
    stmw    r27, 0x6c(sp)
    mr      r27, r5
    mr      r29, r3
    li      r5, 0x0
    bl      loadFont__10JUTResFontFi11_GXTexMapIDPQ27JUTFont6TWidth
    lbz     r0, 0x4(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x802f1b60
    clrlwi. r0, r27, 24
    bne-    branch_0x802f1b68
branch_0x802f1b60:
    fmr     f31, f26
    b       branch_0x802f1bb8

branch_0x802f1b68:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    xoris   r3, r3, 0x8000
    lbz     r0, 0x44(sp)
    stw     r3, 0x64(sp)
    lis     r3, 0x4330
    lfd     f2, 0x378(r2)
    stw     r3, 0x60(sp)
    lfd     f1, 0x380(r2)
    lfd     f0, 0x60(sp)
    stw     r0, 0x5c(sp)
    fsubs   f0, f0, f2
    stw     r3, 0x58(sp)
    fdivs   f2, f30, f0
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    fnmsubs  f31, f0, f2, f26
branch_0x802f1bb8:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    xoris   r3, r3, 0x8000
    lwz     r0, 0x8(r29)
    stw     r3, 0x5c(sp)
    lis     r30, 0x4330
    xoris   r3, r0, 0x8000
    lbz     r0, 0x4(r29)
    stw     r30, 0x58(sp)
    lfd     f2, 0x378(r2)
    cmplwi  r0, 0x0
    lfd     f0, 0x58(sp)
    stw     r3, 0x64(sp)
    fsubs   f0, f0, f2
    stw     r30, 0x60(sp)
    fdivs   f1, f30, f0
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f2
    fmuls   f29, f0, f1
    bne-    branch_0x802f1cc0
    clrlwi. r0, r27, 24
    bne-    branch_0x802f1c74
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    xoris   r0, r3, 0x8000
    lfd     f2, 0x378(r2)
    stw     r0, 0x5c(sp)
    lbz     r3, 0x45(sp)
    stw     r30, 0x58(sp)
    lbz     r0, 0x44(sp)
    lfd     f0, 0x58(sp)
    add     r0, r3, r0
    fsubs   f0, f0, f2
    xoris   r0, r0, 0x8000
    stw     r0, 0x64(sp)
    fdivs   f1, f30, f0
    stw     r30, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f2
    fmuls   f29, f0, f1
    b       branch_0x802f1cc0

branch_0x802f1c74:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    xoris   r3, r3, 0x8000
    lbz     r0, 0x45(sp)
    stw     r3, 0x5c(sp)
    lfd     f2, 0x378(r2)
    stw     r30, 0x58(sp)
    lfd     f1, 0x380(r2)
    lfd     f0, 0x58(sp)
    stw     r0, 0x64(sp)
    fsubs   f0, f0, f2
    stw     r30, 0x60(sp)
    fdivs   f2, f30, f0
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    fmuls   f29, f0, f2
branch_0x802f1cc0:
    mr      r3, r29
    fadds   f30, f31, f30
    lwz     r12, 0x0(r29)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    xoris   r0, r3, 0x8000
    lfd     f1, 0x378(r2)
    stw     r0, 0x5c(sp)
    lis     r30, 0x4330
    addi    r3, r29, 0x0
    stw     r30, 0x58(sp)
    lwz     r12, 0x0(r29)
    lfd     f0, 0x58(sp)
    lwz     r12, 0x1c(r12)
    fsubs   f0, f0, f1
    mtlr    r12
    fdivs   f26, f28, f0
    blrl
    xoris   r0, r3, 0x8000
    lfd     f1, 0x378(r2)
    stw     r0, 0x64(sp)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    stw     r30, 0x60(sp)
    lwz     r12, 0x24(r12)
    lfd     f0, 0x60(sp)
    mtlr    r12
    fsubs   f0, f0, f1
    fnmsubs  f26, f0, f26, f27
    blrl
    xoris   r0, r3, 0x8000
    lfd     f1, 0x378(r2)
    stw     r0, 0x54(sp)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    stw     r30, 0x50(sp)
    lwz     r12, 0x20(r12)
    lfd     f0, 0x50(sp)
    mtlr    r12
    fsubs   f0, f0, f1
    fdivs   f28, f28, f0
    blrl
    lhz     r0, 0x62(r29)
    xoris   r7, r3, 0x8000
    lwz     r4, 0x54(r29)
    addi    r3, r29, 0x0
    slwi    r0, r0, 2
    lwzx    r8, r4, r0
    lwz     r0, 0x1c(r29)
    lwz     r4, 0x20(r29)
    lhz     r5, 0x1a(r8)
    slwi    r6, r0, 15
    lhz     r0, 0x1c(r8)
    slwi    r4, r4, 15
    divw    r31, r6, r5
    stw     r7, 0x4c(sp)
    lwz     r12, 0x0(r29)
    stw     r30, 0x48(sp)
    lwz     r12, 0x28(r12)
    divw    r30, r4, r0
    lfd     f1, 0x378(r2)
    lfd     f0, 0x48(sp)
    mtlr    r12
    fsubs   f0, f0, f1
    fmadds  f27, f0, f28, f27
    blrl
    lhz     r0, 0x62(r29)
    lwz     r4, 0x54(r29)
    slwi    r0, r0, 2
    lwz     r5, 0x1c(r29)
    lwzx    r4, r4, r0
    add     r3, r5, r3
    lhz     r0, 0x1a(r4)
    slwi    r4, r3, 15
    addi    r3, r29, 0x0
    divw    r28, r4, r0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x62(r29)
    li      r4, 0x9
    lwz     r7, 0x54(r29)
    li      r5, 0x1
    slwi    r0, r0, 2
    lwz     r9, 0x20(r29)
    li      r6, 0x4
    lwzx    r8, r7, r0
    li      r7, 0x0
    add     r3, r9, r3
    lhz     r0, 0x1c(r8)
    slwi    r8, r3, 15
    li      r3, 0x0
    divw    r27, r8, r0
    bl      GXSetVtxAttrFmt
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lis     r8, 0xcc01
    lfs     f0, 0x370(r2)
    stfs    f31, -0x8000(r8)
    li      r3, 0x0
    li      r4, 0x9
    stfs    f26, -0x8000(r8)
    li      r5, 0x1
    li      r6, 0x3
    stfs    f0, -0x8000(r8)
    li      r7, 0x0
    lwz     r0, 0xc(r29)
    stw     r0, -0x8000(r8)
    sth     r31, -0x8000(r8)
    sth     r30, -0x8000(r8)
    stfs    f30, -0x8000(r8)
    stfs    f26, -0x8000(r8)
    stfs    f0, -0x8000(r8)
    lwz     r0, 0x10(r29)
    stw     r0, -0x8000(r8)
    sth     r28, -0x8000(r8)
    sth     r30, -0x8000(r8)
    stfs    f30, -0x8000(r8)
    stfs    f27, -0x8000(r8)
    stfs    f0, -0x8000(r8)
    lwz     r0, 0x18(r29)
    stw     r0, -0x8000(r8)
    sth     r28, -0x8000(r8)
    sth     r27, -0x8000(r8)
    stfs    f31, -0x8000(r8)
    stfs    f27, -0x8000(r8)
    stfs    f0, -0x8000(r8)
    lwz     r0, 0x14(r29)
    stw     r0, -0x8000(r8)
    sth     r31, -0x8000(r8)
    sth     r27, -0x8000(r8)
    bl      GXSetVtxAttrFmt
    lmw     r27, 0x6c(sp)
    fmr     f1, f29
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lfd     f28, 0x90(sp)
    lfd     f27, 0x88(sp)
    lfd     f26, 0x80(sp)
    addi    sp, sp, 0xb0
    blr


.globl getDescent__10JUTResFontCFv
getDescent__10JUTResFontCFv: # 0x802f1f10
    lwz     r3, 0x4c(r3)
    lhz     r3, 0xc(r3)
    blr


.globl getHeight__10JUTResFontCFv
getHeight__10JUTResFontCFv: # 0x802f1f1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    add     r3, r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getAscent__10JUTResFontCFv
getAscent__10JUTResFontCFv: # 0x802f1f78
    lwz     r3, 0x4c(r3)
    lhz     r3, 0xa(r3)
    blr


.globl loadFont__10JUTResFontFi11_GXTexMapIDPQ27JUTFont6TWidth
loadFont__10JUTResFontFi11_GXTexMapIDPQ27JUTFont6TWidth: # 0x802f1f84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    bl      getFontCode__10JUTResFontCFi
    cmplwi  r30, 0x0
    addi    r31, r3, 0x0
    beq-    branch_0x802f2054
    lhz     r0, 0x5c(r28)
    li      r6, 0x0
    li      r3, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x802f2028
branch_0x802f1fd4:
    lwz     r4, 0x50(r28)
    lwzx    r4, r4, r3
    lhz     r5, 0x8(r4)
    cmpw    r5, r31
    bgt-    branch_0x802f201c
    lhz     r0, 0xa(r4)
    cmpw    r31, r0
    bgt-    branch_0x802f201c
    subf    r0, r5, r31
    slwi    r0, r0, 1
    add     r3, r4, r0
    lhz     r0, 0xc(r3)
    sth     r0, 0x18(sp)
    lbz     r0, 0x18(sp)
    stb     r0, 0x0(r30)
    lbz     r0, 0x19(sp)
    stb     r0, 0x1(r30)
    b       branch_0x802f2028

branch_0x802f201c:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x802f1fd4
branch_0x802f2028:
    lhz     r0, 0x5c(r28)
    cmpw    r6, r0
    bne-    branch_0x802f2054
    li      r0, 0x0
    stb     r0, 0x0(r30)
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    stb     r3, 0x1(r30)
branch_0x802f2054:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    bl      loadImage__10JUTResFontFi11_GXTexMapID
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl getWidthEntry__10JUTResFontCFiPQ27JUTFont6TWidth
getWidthEntry__10JUTResFontCFiPQ27JUTFont6TWidth: # 0x802f2084
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      getFontCode__10JUTResFontCFi
    lwz     r4, 0x4c(r30)
    li      r5, 0x0
    lhz     r0, 0xe(r4)
    stb     r0, 0x1(r31)
    stb     r5, 0x0(r31)
    lhz     r0, 0x5c(r30)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x802f2108
branch_0x802f20c8:
    lwz     r4, 0x50(r30)
    lwzx    r4, r4, r5
    lhz     r6, 0x8(r4)
    cmpw    r6, r3
    bgt-    branch_0x802f2100
    lhz     r0, 0xa(r4)
    cmpw    r3, r0
    bgt-    branch_0x802f2100
    subf    r0, r6, r3
    slwi    r0, r0, 1
    add     r3, r4, r0
    lhz     r0, 0xc(r3)
    sth     r0, 0x0(r31)
    b       branch_0x802f2108

branch_0x802f2100:
    addi    r5, r5, 0x4
    bdnz+      branch_0x802f20c8
branch_0x802f2108:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl isLeadByte__10JUTResFontCFi
isLeadByte__10JUTResFontCFi: # 0x802f2120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x68(r3)
    mr      r3, r4
    lwz     r12, 0x0(r5)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getFontCode__10JUTResFontCFi
getFontCode__10JUTResFontCFi: # 0x802f2150
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r5, 0x4c(r29)
    lwz     r12, 0x30(r12)
    lhz     r31, 0x12(r5)
    mtlr    r12
    blrl
    cmpwi   r3, 0x2
    bne-    branch_0x802f21c0
    lhz     r0, 0x64(r29)
    cmplwi  r0, 0x8000
    blt-    branch_0x802f21c0
    cmpwi   r30, 0x20
    blt-    branch_0x802f21c0
    cmplwi  r30, 0x7f
    bge-    branch_0x802f21c0
    lis     r3, unk_803aa15c@ha
    addi    r3, r3, unk_803aa15c@l
    slwi    r0, r30, 1
    add     r3, r3, r0
    lhz     r30, -0x40(r3)
branch_0x802f21c0:
    lhz     r0, 0x60(r29)
    li      r3, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x802f22b0
branch_0x802f21d4:
    lwz     r4, 0x58(r29)
    lwzx    r4, r4, r3
    lhz     r5, 0xa(r4)
    cmpw    r5, r30
    bgt-    branch_0x802f22a8
    lhz     r0, 0xc(r4)
    cmpw    r30, r0
    bgt-    branch_0x802f22a8
    lhz     r0, 0x8(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x802f2208
    subf    r31, r5, r30
    b       branch_0x802f22b0

branch_0x802f2208:
    cmplwi  r0, 0x2
    bne-    branch_0x802f2224
    subf    r0, r5, r30
    slwi    r0, r0, 1
    add     r3, r4, r0
    lhz     r31, 0x10(r3)
    b       branch_0x802f22b0

branch_0x802f2224:
    cmplwi  r0, 0x3
    bne-    branch_0x802f2288
    lhz     r3, 0xe(r4)
    addi    r5, r4, 0x10
    li      r6, 0x0
    addi    r7, r3, -0x1
    b       branch_0x802f227c

branch_0x802f2240:
    add     r0, r7, r6
    srawi   r4, r0, 1
    addze   r4, r4
    slwi    r3, r4, 2
    lhzx    r0, r5, r3
    cmpw    r30, r0
    bge-    branch_0x802f2264
    addi    r7, r4, -0x1
    b       branch_0x802f227c

branch_0x802f2264:
    ble-    branch_0x802f2270
    addi    r6, r4, 0x1
    b       branch_0x802f227c

branch_0x802f2270:
    add     r3, r5, r3
    lhz     r31, 0x2(r3)
    b       branch_0x802f22b0

branch_0x802f227c:
    cmpw    r7, r6
    bge+    branch_0x802f2240
    b       branch_0x802f22b0

branch_0x802f2288:
    cmplwi  r0, 0x1
    bne-    branch_0x802f22b0
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      convertSjis__10JUTResFontCFiPUs
    mr      r31, r3
    b       branch_0x802f22b0

branch_0x802f22a8:
    addi    r3, r3, 0x4
    bdnz+      branch_0x802f21d4
branch_0x802f22b0:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl getFontType__10JUTResFontCFv
getFontType__10JUTResFontCFv: # 0x802f22d0
    lwz     r3, 0x4c(r3)
    lhz     r3, 0x8(r3)
    blr


.globl loadImage__10JUTResFontFi11_GXTexMapID
loadImage__10JUTResFontFi11_GXTexMapID: # 0x802f22dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lhz     r7, 0x5e(r3)
    li      r3, 0x0
    cmpwi   r7, 0x0
    mtctr   r7
    ble-    branch_0x802f234c
branch_0x802f2318:
    lwz     r5, 0x54(r28)
    lwzx    r5, r5, r3
    lhz     r6, 0x8(r5)
    cmpw    r6, r4
    bgt-    branch_0x802f2340
    lhz     r0, 0xa(r5)
    cmpw    r4, r0
    bgt-    branch_0x802f2340
    subf    r4, r6, r4
    b       branch_0x802f234c

branch_0x802f2340:
    addi    r31, r31, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x802f2318
branch_0x802f234c:
    cmpw    r31, r7
    beq-    branch_0x802f2430
    lwz     r3, 0x54(r28)
    slwi    r7, r31, 2
    lwzx    r5, r3, r7
    lhz     r6, 0x16(r5)
    lhz     r3, 0x18(r5)
    lhz     r0, 0xc(r5)
    mullw   r3, r6, r3
    divw    r30, r4, r3
    mullw   r3, r30, r3
    subf    r4, r3, r4
    divw    r5, r4, r6
    mullw   r3, r5, r6
    subf    r3, r3, r4
    mullw   r0, r3, r0
    stw     r0, 0x1c(r28)
    lwz     r3, 0x54(r28)
    lwzx    r3, r3, r7
    lhz     r0, 0xe(r3)
    mullw   r0, r5, r0
    stw     r0, 0x20(r28)
    lwz     r0, 0x44(r28)
    cmpw    r30, r0
    bne-    branch_0x802f23bc
    lhz     r0, 0x62(r28)
    cmpw    r31, r0
    beq-    branch_0x802f2424
branch_0x802f23bc:
    lwz     r4, 0x54(r28)
    addi    r3, r28, 0x24
    li      r8, 0x0
    lwzx    r11, r4, r7
    li      r9, 0x0
    li      r10, 0x0
    lwz     r0, 0x10(r11)
    lhz     r5, 0x1a(r11)
    mullw   r4, r30, r0
    lhz     r6, 0x1c(r11)
    lhz     r7, 0x14(r11)
    addi    r4, r4, 0x20
    add     r4, r11, r4
    bl      GXInitTexObj
    lfs     f1, 0x370(r2)
    addi    r3, r28, 0x24
    li      r4, 0x1
    fmr     f2, f1
    li      r5, 0x1
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    stw     r30, 0x44(r28)
    sth     r31, 0x62(r28)
branch_0x802f2424:
    addi    r3, r28, 0x24
    addi    r4, r29, 0x0
    bl      GXLoadTexObj
branch_0x802f2430:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl convertSjis__10JUTResFontCFiPUs
convertSjis__10JUTResFontCFiPUs: # 0x802f2450
    clrlwi  r3, r4, 24
    addi    r0, r3, -0x40
    cmpwi   r0, 0x40
    extrwi  r3, r4, 8, 16
    mr      r4, r0
    blt-    branch_0x802f246c
    addi    r4, r4, -0x1
branch_0x802f246c:
    addi    r0, r3, -0x88
    mulli   r3, r0, 0xbc
    addi    r3, r3, 0x2be
    add     r3, r4, r3
    blr


.globl getLeading__10JUTResFontCFv
getLeading__10JUTResFontCFv: # 0x802f2480
    lwz     r3, 0x4c(r3)
    lhz     r3, 0x10(r3)
    blr

