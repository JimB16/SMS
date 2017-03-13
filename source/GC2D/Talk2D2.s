
.globl __dt__8TTalk2D2Fv
__dt__8TTalk2D2Fv: # 0x801504a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801504f8
    lis     r3, 0x803c
    addi    r0, r3, 0x3c8
    stw     r0, 0x0(r30)
    beq-    branch_0x801504e8
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801504e8:
    extsh.  r0, r31
    ble-    branch_0x801504f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801504f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl openWindow__8TTalk2D2FScf
openWindow__8TTalk2D2FScf: # 0x80150514
    mflr    r0
    lis     r5, 0x4330
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stfd    f31, 0x140(sp)
    stfd    f30, 0x138(sp)
    stfd    f29, 0x130(sp)
    fmr     f29, f1
    stw     r31, 0x12c(sp)
    mr      r31, r3
    stw     r30, 0x128(sp)
    mr      r30, r4
    lwz     r3, 0x90(r3)
    lwzu    r6, 0x24(r3)
    lfd     f2, -0x4bc8(rtoc)
    addi    r0, r6, 0x5
    lwz     r3, 0x4(r3)
    xoris   r4, r0, 0x8000
    lfs     f3, -0x4bd8(rtoc)
    addi    r0, r3, 0x5
    stw     r4, 0x124(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x11c(sp)
    addi    r3, sp, 0xb8
    stw     r5, 0x120(sp)
    stw     r5, 0x118(sp)
    lfd     f1, 0x120(sp)
    lfd     f0, 0x118(sp)
    fsubs   f31, f1, f2
    fsubs   f30, f0, f2
    fneg    f1, f31
    fneg    f2, f30
    bl      PSMTXTrans
    lwz     r5, 0x90(r31)
    addi    r3, sp, 0x88
    lfs     f0, -0x4bd0(rtoc)
    li      r4, 0x5a
    lfs     f1, 0xc0(r5)
    lfs     f2, -0x4bd4(rtoc)
    fneg    f1, f1
    fsubs   f0, f1, f0
    fmuls   f1, f2, f0
    bl      PSMTXRotRad
    addi    r4, sp, 0xb8
    addi    r5, r4, 0x0
    addi    r3, sp, 0x88
    bl      PSMTXConcat
    fmr     f1, f31
    lfs     f3, -0x4bd8(rtoc)
    fmr     f2, f30
    addi    r3, sp, 0x88
    bl      PSMTXTrans
    addi    r4, sp, 0xb8
    addi    r5, r4, 0x0
    addi    r3, sp, 0x88
    bl      PSMTXConcat
    addi    r3, sp, 0xb8
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x2
    bl      GXSetNumTexGens
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x4bdc(rtoc)
    addi    r4, sp, 0x74
    li      r3, 0x4
    stw     r0, 0x70(sp)
    lwz     r0, 0x70(sp)
    stw     r0, 0x74(sp)
    bl      GXSetChanAmbColor
    extsb   r0, r30
    slwi    r0, r0, 2
    add     r30, r31, r0
    lwzu    r3, 0x3c(r30)
    lbz     r0, 0xfc(r3)
    cmplwi  r0, 0x0
    ble-    branch_0x801506ec
    lwz     r0, 0xec(r3)
    b       branch_0x801506f0

branch_0x801506ec:
    li      r0, 0x0
branch_0x801506f0:
    mr      r3, r0
    li      r4, 0x1
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r3, 0x244(r31)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    lis     r31, 0x1
    subi    r0, r31, 0x100
    stw     r0, 0x68(sp)
    addi    r4, sp, 0x6c
    li      r3, 0x1
    lwz     r0, 0x68(sp)
    stw     r0, 0x6c(sp)
    bl      GXSetTevColor
    subi    r0, r31, 0x60
    stw     r0, 0x60(sp)
    addi    r4, sp, 0x64
    li      r3, 0x2
    lwz     r0, 0x60(sp)
    stw     r0, 0x64(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x8
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x2
    li      r6, 0x4
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
    lfs     f2, -0x4bd8(rtoc)
    fmr     f1, f29
    addi    r3, sp, 0xb8
    fmr     f3, f2
    bl      PSMTXTrans
    addi    r3, sp, 0xb8
    li      r4, 0x1e
    li      r5, 0x1
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    li      r6, 0x4
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
    addi    r3, sp, 0xb8
    bl      PSMTXIdentity
    addi    r3, sp, 0xb8
    li      r4, 0x21
    li      r5, 0x1
    bl      GXLoadTexMtxImm
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x21
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r4, 0x0(r30)
    addi    r3, sp, 0x78
    addi    r4, r4, 0x24
    bl      copy__7JUTRectFRC7JUTRect
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x78(sp)
    lis     r7, 0x4330
    lwz     r3, 0x7c(sp)
    lis     r5, 0xcc01
    xoris   r6, r0, 0x8000
    stw     r6, 0x124(sp)
    xoris   r0, r3, 0x8000
    lfd     f3, -0x4bc8(rtoc)
    li      r4, 0x0
    stw     r0, 0x11c(sp)
    li      r3, 0x1
    stw     r7, 0x120(sp)
    stw     r7, 0x118(sp)
    lfd     f0, 0x120(sp)
    lfd     f1, 0x118(sp)
    fsubs   f0, f0, f3
    stw     r0, 0x114(sp)
    fsubs   f1, f1, f3
    stw     r6, 0xec(sp)
    stfs    f0, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stb     r4, -0x8000(r5)
    stb     r4, -0x8000(r5)
    lwz     r0, 0x80(sp)
    stw     r7, 0x110(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x10c(sp)
    lfd     f0, 0x110(sp)
    stw     r7, 0x108(sp)
    fsubs   f1, f0, f3
    lfd     f0, 0x108(sp)
    stw     r0, 0xfc(sp)
    fsubs   f0, f0, f3
    stw     r7, 0xf8(sp)
    stfs    f0, -0x8000(r5)
    lfd     f0, 0xf8(sp)
    stfs    f1, -0x8000(r5)
    fsubs   f1, f0, f3
    stb     r3, -0x8000(r5)
    stb     r4, -0x8000(r5)
    lwz     r0, 0x84(sp)
    stw     r7, 0xe8(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x104(sp)
    lfd     f0, 0xe8(sp)
    stw     r7, 0x100(sp)
    fsubs   f0, f0, f3
    lfd     f2, 0x100(sp)
    stw     r0, 0xf4(sp)
    fsubs   f2, f2, f3
    stfs    f1, -0x8000(r5)
    stfs    f2, -0x8000(r5)
    stw     r7, 0xf0(sp)
    stb     r3, -0x8000(r5)
    lfd     f1, 0xf0(sp)
    stb     r3, -0x8000(r5)
    fsubs   f1, f1, f3
    stfs    f0, -0x8000(r5)
    stfs    f1, -0x8000(r5)
    stb     r4, -0x8000(r5)
    stb     r3, -0x8000(r5)
    lwz     r0, 0x14c(sp)
    lfd     f31, 0x140(sp)
    lfd     f30, 0x138(sp)
    mtlr    r0
    lfd     f29, 0x130(sp)
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    addi    sp, sp, 0x148
    blr


.globl setTagParam__8TTalk2D2FR20JSUMemoryInputStreamR10J2DTextBoxPiPi
setTagParam__8TTalk2D2FR20JSUMemoryInputStreamR10J2DTextBoxPiPi: # 0x801509e8
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stmw    r22, 0x108(sp)
    addi    r25, r4, 0x0
    lis     r4, 0x8038
    addi    r31, r3, 0x0
    addi    r24, r4, 0x7a18
    addi    r30, r6, 0x0
    addi    r29, r7, 0x0
    addi    r3, r25, 0x0
    addi    r4, sp, 0xcd
    bl      read__14JSUInputStreamFPvl
    lbz     r27, 0xcd(sp)
    addi    r3, r25, 0x0
    addi    r4, sp, 0xcc
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r28, 0xcc(sp)
    addi    r3, r25, 0x0
    addi    r4, sp, 0xca
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    cmpwi   r28, 0x2
    lhz     r0, 0xca(sp)
    beq-    branch_0x80150c14
    bge-    branch_0x80150a68
    cmpwi   r28, 0x0
    beq-    branch_0x80150a74
    bge-    branch_0x80150ad0
    b       branch_0x80151574

branch_0x80150a68:
    cmpwi   r28, 0xff
    beq-    branch_0x80151538
    b       branch_0x80151574

branch_0x80150a74:
    cmpwi   r0, 0x1
    beq-    branch_0x80150aa8
    bge-    branch_0x80150ab4
    cmpwi   r0, 0x0
    bge-    branch_0x80150a8c
    b       branch_0x80150ab4

branch_0x80150a8c:
    addi    r3, r25, 0x0
    addi    r4, sp, 0xc8
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0xc8(sp)
    stb     r0, 0x280(r31)
    b       branch_0x8015158c

branch_0x80150aa8:
    li      r0, 0x1
    stb     r0, 0x26d(r31)
    b       branch_0x8015158c

branch_0x80150ab4:
    mr      r3, r25
    lwz     r12, 0x0(r25)
    subi    r4, r27, 0x5
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x8015158c

branch_0x80150ad0:
    cmpwi   r0, 0x1
    beq-    branch_0x80150b70
    bge-    branch_0x80150bf8
    cmpwi   r0, 0x0
    bge-    branch_0x80150ae8
    b       branch_0x80150bf8

branch_0x80150ae8:
    lbz     r0, 0x214(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    bne-    branch_0x80150b20
    li      r5, 0x0
    stb     r5, 0x214(r31)
    li      r4, 0xfe
    li      r0, 0x1
    lwz     r3, 0x210(r31)
    stb     r4, 0xcc(r3)
    lwz     r3, 0x210(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0x20c(r31)
    stb     r0, 0xc(r3)
branch_0x80150b20:
    subi    r0, r27, 0x4
    cmpwi   r0, 0x11
    bge-    branch_0x80150b30
    b       branch_0x80150b34

branch_0x80150b30:
    li      r0, 0x11
branch_0x80150b34:
    mr      r4, r0
    lwz     r5, 0x8(r25)
    lwz     r0, 0x10(r25)
    crxor   6, 6, 6
    lwz     r3, 0x218(r31)
    add     r6, r5, r0
    subi    r5, rtoc, 0x4bc0
    bl      snprintf
    mr      r3, r25
    lwz     r12, 0x0(r25)
    subi    r4, r27, 0x5
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x8015158c

branch_0x80150b70:
    lbz     r0, 0x214(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    bne-    branch_0x80150ba8
    li      r5, 0x1
    stb     r5, 0x214(r31)
    li      r4, 0xfe
    li      r0, 0x0
    lwz     r3, 0x20c(r31)
    stb     r4, 0xcc(r3)
    lwz     r3, 0x20c(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x210(r31)
    stb     r5, 0xc(r3)
branch_0x80150ba8:
    subi    r0, r27, 0x4
    cmpwi   r0, 0x11
    bge-    branch_0x80150bb8
    b       branch_0x80150bbc

branch_0x80150bb8:
    li      r0, 0x11
branch_0x80150bbc:
    mr      r4, r0
    lwz     r5, 0x8(r25)
    lwz     r0, 0x10(r25)
    crxor   6, 6, 6
    lwz     r3, 0x21c(r31)
    add     r6, r5, r0
    subi    r5, rtoc, 0x4bc0
    bl      snprintf
    mr      r3, r25
    lwz     r12, 0x0(r25)
    subi    r4, r27, 0x5
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x8015158c

branch_0x80150bf8:
    mr      r3, r25
    lwz     r12, 0x0(r25)
    subi    r4, r27, 0x5
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x8015158c

branch_0x80150c14:
    cmpwi   r0, 0x4
    beq-    branch_0x80151374
    bge-    branch_0x80150c38
    cmpwi   r0, 0x2
    beq-    branch_0x801510cc
    bge-    branch_0x801511f8
    cmpwi   r0, 0x0
    bge-    branch_0x80150c44
    b       branch_0x8015158c

branch_0x80150c38:
    cmpwi   r0, 0x6
    beq-    branch_0x80150c44
    b       branch_0x8015158c

branch_0x80150c44:
    cmplwi  r0, 0x0
    bne-    branch_0x80150c64
    lis     r4, 0x2
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x3
    bl      getFlag__12TFlagManagerCFUl
    mr      r26, r3
    b       branch_0x80150ca0

branch_0x80150c64:
    cmplwi  r0, 0x1
    bne-    branch_0x80150c84
    lis     r4, 0x2
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x2
    bl      getFlag__12TFlagManagerCFUl
    mr      r26, r3
    b       branch_0x80150ca0

branch_0x80150c84:
    cmplwi  r0, 0x6
    bne-    branch_0x80150ca0
    lis     r4, 0x2
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x14
    bl      getFlag__12TFlagManagerCFUl
    mr      r26, r3
branch_0x80150ca0:
    lis     r3, 0x9
    addi    r0, r3, 0x27bf
    cmpw    r26, r0
    ble-    branch_0x80150cb4
    mr      r26, r0
branch_0x80150cb4:
    cmpwi   r26, 0x0
    bge-    branch_0x80150cc0
    li      r26, 0x0
branch_0x80150cc0:
    lis     r3, 0x51ec
    lwz     r0, 0x0(r29)
    subi    r3, r3, 0x7ae1
    lfd     f1, -0x4bc8(rtoc)
    mulhw   r4, r3, r26
    lfd     f2, -0x4bb8(rtoc)
    lwz     r3, 0x0(r30)
    srawi   r4, r4, 5
    srwi    r5, r4, 31
    add     r4, r4, r5
    mulli   r4, r4, 0x64
    subf    r5, r4, r26
    lis     r4, 0x576
    subf    r5, r5, r26
    addi    r4, r4, 0x19f1
    mulhw   r4, r4, r5
    srawi   r4, r4, 7
    srwi    r5, r4, 31
    add     r4, r4, r5
    clrlwi  r27, r4, 16
    mulli   r4, r27, 0x1770
    subf    r5, r4, r26
    xoris   r4, r5, 0x8000
    stw     r4, 0x104(sp)
    lis     r4, 0x4330
    mulli   r0, r0, 0x1e
    stw     r4, 0x100(sp)
    lfd     f0, 0x100(sp)
    add     r0, r3, r0
    slwi    r0, r0, 2
    fsub    f0, f0, f1
    add     r3, r31, r0
    lwz     r3, 0x9c(r3)
    fmul    f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xf8(sp)
    lwz     r0, 0xfc(sp)
    clrlwi  r26, r0, 16
    mulli   r0, r26, 0x64
    subf    r25, r0, r5
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x6666
    crxor   6, 6, 6
    addi    r28, r4, 0x6667
    mulhw   r24, r28, r27
    srawi   r0, r24, 2
    srwi    r4, r0, 31
    add     r6, r0, r4
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xa0(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    srawi   r0, r24, 2
    crxor   6, 6, 6
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r6, r0, r27
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xa4(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x2
    subi    r5, rtoc, 0x4bac
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xa8(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    mulhw   r27, r28, r26
    crxor   6, 6, 6
    srawi   r0, r27, 2
    srwi    r4, r0, 31
    add     r6, r0, r4
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xac(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    srawi   r0, r27, 2
    crxor   6, 6, 6
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r6, r0, r26
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xb0(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x2
    subi    r5, rtoc, 0x4bac
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xb4(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    clrlwi  r26, r25, 16
    crxor   6, 6, 6
    mulhw   r25, r28, r26
    srawi   r0, r25, 2
    srwi    r4, r0, 31
    add     r6, r0, r4
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xb8(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    srawi   r0, r25, 2
    crxor   6, 6, 6
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r6, r0, r26
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    li      r0, 0x4
    mtctr   r0
    li      r3, 0x0
branch_0x80150f48:
    lwz     r0, 0x27c(r31)
    stw     r0, 0xe0(sp)
    lwz     r0, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lwz     r0, 0x27c(r31)
    stw     r0, 0xe8(sp)
    lwz     r0, 0x0(r29)
    lwz     r5, 0x0(r30)
    mulli   r4, r0, 0x1e
    lwz     r0, 0xe8(sp)
    add     r4, r4, r3
    add     r4, r5, r4
    slwi    r4, r4, 2
    addi    r4, r4, 0x9c
    lwzx    r4, r31, r4
    stw     r0, 0xf0(r4)
    lwz     r0, 0xe4(sp)
    stw     r0, 0xf4(r4)
    lwz     r0, 0x27c(r31)
    stw     r0, 0xd0(sp)
    lwz     r0, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x27c(r31)
    clrrwi  r0, r0, 8
    stw     r0, 0xd8(sp)
    lwz     r0, 0x0(r29)
    lwz     r5, 0x0(r30)
    mulli   r4, r0, 0x1e
    lwz     r0, 0xd8(sp)
    add     r4, r4, r3
    add     r4, r5, r4
    slwi    r4, r4, 2
    addi    r4, r4, 0x9c
    lwzx    r4, r31, r4
    stw     r0, 0x120(r4)
    lwz     r0, 0xd4(sp)
    stw     r0, 0x11c(r4)
    lwz     r0, 0x0(r29)
    lwz     r4, 0x0(r30)
    mulli   r0, r0, 0x1e
    lbz     r5, 0x280(r31)
    add     r4, r3, r4
    add     r4, r4, r0
    addi    r0, r4, 0x281
    stbx    r5, r31, r0
    addi    r3, r3, 0x1
    lwz     r0, 0x27c(r31)
    stw     r0, 0xe0(sp)
    lwz     r0, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lwz     r0, 0x27c(r31)
    stw     r0, 0xe8(sp)
    lwz     r0, 0x0(r29)
    lwz     r5, 0x0(r30)
    mulli   r4, r0, 0x1e
    lwz     r0, 0xe8(sp)
    add     r4, r4, r3
    add     r4, r5, r4
    slwi    r4, r4, 2
    addi    r4, r4, 0x9c
    lwzx    r4, r31, r4
    stw     r0, 0xf0(r4)
    lwz     r0, 0xe4(sp)
    stw     r0, 0xf4(r4)
    lwz     r0, 0x27c(r31)
    stw     r0, 0xd0(sp)
    lwz     r0, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x27c(r31)
    clrrwi  r0, r0, 8
    stw     r0, 0xd8(sp)
    lwz     r0, 0x0(r29)
    lwz     r5, 0x0(r30)
    mulli   r4, r0, 0x1e
    lwz     r0, 0xd8(sp)
    add     r4, r4, r3
    add     r4, r5, r4
    slwi    r4, r4, 2
    addi    r4, r4, 0x9c
    lwzx    r4, r31, r4
    stw     r0, 0x120(r4)
    lwz     r0, 0xd4(sp)
    stw     r0, 0x11c(r4)
    lwz     r0, 0x0(r29)
    lwz     r4, 0x0(r30)
    mulli   r0, r0, 0x1e
    lbz     r5, 0x280(r31)
    add     r4, r3, r4
    add     r4, r4, r0
    addi    r0, r4, 0x281
    stbx    r5, r31, r0
    addi    r3, r3, 0x1
    bdnz+      branch_0x80150f48
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x8
    stw     r0, 0x0(r30)
    b       branch_0x8015158c

branch_0x801510cc:
    lis     r4, 0x2
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x4
    bl      getFlag__12TFlagManagerCFUl
    addi    r0, r3, 0x63
    lfd     f1, -0x4bc8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x4ba8(rtoc)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    stw     r0, 0xf8(sp)
    lfd     f0, 0xf8(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x100(sp)
    lwz     r26, 0x104(sp)
    cmpwi   r26, 0xa
    bge-    branch_0x8015115c
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x9c(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r26, 0x0
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    b       branch_0x8015158c

branch_0x8015115c:
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x9c(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x6666
    crxor   6, 6, 6
    addi    r0, r4, 0x6667
    mulhw   r25, r0, r26
    srawi   r0, r25, 2
    srwi    r4, r0, 31
    add     r6, r0, r4
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xa0(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    srawi   r0, r25, 2
    crxor   6, 6, 6
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r6, r0, r26
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x2
    stw     r0, 0x0(r30)
    b       branch_0x8015158c

branch_0x801511f8:
    lis     r4, 0x4
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    addi    r25, r3, 0x0
    li      r24, 0x0
    li      r26, 0x46
branch_0x80151214:
    lwz     r3, -0x6060(r13)
    addis   r4, r26, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x8015122c
    addi    r24, r24, 0x1
branch_0x8015122c:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x56
    blt+    branch_0x80151214
    li      r26, 0x6c
branch_0x8015123c:
    lwz     r3, -0x6060(r13)
    addis   r4, r26, 0x1
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80151254
    addi    r24, r24, 0x1
branch_0x80151254:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x73
    ble+    branch_0x8015123c
    mulli   r0, r24, 0xa
    subf    r25, r0, r25
    cmpwi   r25, 0x64
    bge-    branch_0x801512c8
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x9c(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x6666
    crxor   6, 6, 6
    addi    r0, r4, 0x6667
    mulhw   r0, r0, r25
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r6, r0, r4
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r30)
    b       branch_0x8015158c

branch_0x801512c8:
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x9c(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x51ec
    crxor   6, 6, 6
    subi    r0, r4, 0x7ae1
    mulhw   r0, r0, r25
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r24, r0, r4
    addi    r6, r24, 0x0
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r0, 0x0(r29)
    mulli   r4, r24, 0x64
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xa0(r3)
    subf    r25, r4, r25
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x6666
    crxor   6, 6, 6
    addi    r0, r4, 0x6667
    mulhw   r0, r0, r25
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r6, r0, r4
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x2
    stw     r0, 0x0(r30)
    b       branch_0x8015158c

branch_0x80151374:
    addi    r3, r25, 0x0
    addi    r4, sp, 0xad
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0xad(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x80151428
    bge-    branch_0x801513a4
    cmpwi   r0, 0x0
    beq-    branch_0x801513b0
    bge-    branch_0x801513ec
    b       branch_0x8015149c

branch_0x801513a4:
    cmpwi   r0, 0x4
    bge-    branch_0x8015149c
    b       branch_0x80151464

branch_0x801513b0:
    lwz     r4, -0x5db8(r13)
    addi    r3, r24, 0x35c
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r24, 0x35c
    mtlr    r12
    blrl
    addi    r26, r3, 0x0
    li      r22, 0x3
    li      r23, 0x0
    b       branch_0x8015149c

branch_0x801513ec:
    lwz     r4, -0x5db8(r13)
    addi    r3, r24, 0x36c
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r24, 0x36c
    mtlr    r12
    blrl
    addi    r26, r3, 0x0
    li      r22, 0x3
    li      r23, 0x4
    b       branch_0x8015149c

branch_0x80151428:
    lwz     r4, -0x5db8(r13)
    addi    r3, r24, 0x37c
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r24, 0x37c
    mtlr    r12
    blrl
    addi    r26, r3, 0x0
    li      r22, 0x3
    li      r23, 0x3
    b       branch_0x8015149c

branch_0x80151464:
    lwz     r4, -0x5db8(r13)
    addi    r3, r24, 0x38c
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r24, 0x38c
    mtlr    r12
    blrl
    addi    r26, r3, 0x0
    li      r23, 0x1
    li      r22, 0x3
branch_0x8015149c:
    cmplwi  r26, 0x0
    beq-    branch_0x8015158c
    addi    r3, r26, 0x0
    addi    r4, r23, 0x0
    bl      getFruitNum__17TFruitBasketEventCFi
    subf.   r22, r3, r22
    blt-    branch_0x801514c0
    cmpwi   r22, 0x9
    ble-    branch_0x801514c4
branch_0x801514c0:
    li      r22, 0x0
branch_0x801514c4:
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x9c(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    addi    r6, r22, 0x0
    li      r4, 0x2
    subi    r5, rtoc, 0x4bb0
    bl      snprintf
    lwz     r0, 0x0(r29)
    lwz     r3, 0x0(r30)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0xa0(r3)
    bl      getStringPtr__10J2DTextBoxCFv
    crxor   6, 6, 6
    li      r4, 0x2
    subi    r5, rtoc, 0x4ba4
    bl      snprintf
    lwz     r3, 0x0(r30)
    addi    r0, r3, 0x2
    stw     r0, 0x0(r30)
    b       branch_0x8015158c

branch_0x80151538:
    cmpwi   r0, 0x0
    beq-    branch_0x80151544
    b       branch_0x8015158c

branch_0x80151544:
    addi    r3, r25, 0x0
    addi    r4, sp, 0xac
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r4, 0xac(sp)
    lis     r3, 0x803c
    addi    r0, r3, 0x3b0
    slwi    r3, r4, 2
    add     r3, r0, r3
    lwz     r0, 0x0(r3)
    stw     r0, 0x27c(r31)
    b       branch_0x8015158c

branch_0x80151574:
    mr      r3, r25
    lwz     r12, 0x0(r25)
    subi    r4, r27, 0x5
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8015158c:
    lmw     r22, 0x108(sp)
    lwz     r0, 0x134(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl setupTextBox__8TTalk2D2FPCvP12JMSMesgEntry
setupTextBox__8TTalk2D2FPCvP12JMSMesgEntry: # 0x801515a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x98(sp)
    mr      r30, r3
    stw     r29, 0x94(sp)
    lbz     r0, 0x28(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801515dc
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    bl      setupBoardTextBox__8TTalk2D2FPCvP12JMSMesgEntry
    b       branch_0x8015195c

branch_0x801515dc:
    lwz     r10, 0x0(r31)
    addi    r0, sp, 0x78
    lwz     r9, 0x278(r30)
    lis     r8, 0x803b
    li      r29, 0x0
    stw     r0, 0x48(sp)
    subi    r0, r8, 0xf0c
    add     r8, r10, r9
    lwz     r3, 0x48(sp)
    lis     r7, 0x803e
    lis     r6, 0x803e
    stw     r0, 0x0(r3)
    add     r8, r4, r8
    addi    r0, r7, 0x184
    stb     r29, 0x4(r3)
    addi    r4, r6, 0x160
    lis     r5, 0x803e
    stw     r0, 0x0(r3)
    addi    r0, r5, 0x1c8
    li      r5, 0x400
    stw     r4, 0x0(r3)
    mr      r4, r8
    stw     r0, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    stw     r31, 0x254(r30)
    stw     r29, 0x74(sp)
    stw     r29, 0x70(sp)
    stw     r29, 0x274(r30)
    sth     r29, 0x2de(r30)
    b       branch_0x80151888

branch_0x80151654:
    mulli   r0, r0, 0x1e
    lwz     r3, 0x74(sp)
    add     r0, r3, r0
    slwi    r3, r0, 2
    addi    r0, r3, 0x9c
    lwzx    r3, r30, r0
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r31, r3, 0x0
    addi    r3, sp, 0x78
    addi    r4, sp, 0x46
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x46(sp)
    extsb   r0, r0
    cmpwi   r0, 0xa
    beq-    branch_0x801516b0
    bge-    branch_0x801516a4
    cmpwi   r0, 0x0
    beq-    branch_0x80151704
    b       branch_0x80151788

branch_0x801516a4:
    cmpwi   r0, 0x1a
    beq-    branch_0x80151754
    b       branch_0x80151788

branch_0x801516b0:
    lwz     r3, 0x74(sp)
    cmpwi   r3, 0x0
    bne-    branch_0x801516c4
    li      r6, 0x0
    b       branch_0x801516c8

branch_0x801516c4:
    subi    r6, r3, 0x1
branch_0x801516c8:
    lwz     r0, 0x70(sp)
    li      r4, 0x0
    addi    r3, r30, 0x0
    slwi    r5, r0, 2
    addi    r0, r5, 0x228
    stwx    r6, r30, r0
    li      r5, 0x0
    lwz     r0, 0x70(sp)
    stw     r4, 0x74(sp)
    extsb   r4, r0
    bl      makeBoxLine__8TTalk2D2FScPc
    lwz     r3, 0x70(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x70(sp)
    b       branch_0x80151888

branch_0x80151704:
    lwz     r3, 0x74(sp)
    cmpwi   r3, 0x0
    beq-    branch_0x80151740
    lwz     r0, 0x70(sp)
    subi    r5, r3, 0x1
    li      r4, 0x0
    slwi    r3, r0, 2
    addi    r0, r3, 0x228
    stwx    r5, r30, r0
    addi    r3, r30, 0x0
    li      r5, 0x0
    lwz     r0, 0x70(sp)
    stw     r4, 0x74(sp)
    extsb   r4, r0
    bl      makeBoxLine__8TTalk2D2FScPc
branch_0x80151740:
    li      r0, 0x3
    stw     r0, 0x70(sp)
    li      r0, 0x1
    stb     r0, 0x26a(r30)
    b       branch_0x80151888

branch_0x80151754:
    lwz     r0, 0x70(sp)
    mr      r3, r30
    lwz     r5, 0x74(sp)
    addi    r4, sp, 0x78
    mulli   r0, r0, 0x1e
    add     r0, r5, r0
    slwi    r5, r0, 2
    addi    r0, r5, 0x9c
    lwzx    r5, r30, r0
    addi    r6, sp, 0x74
    addi    r7, sp, 0x70
    bl      setTagParam__8TTalk2D2FR20JSUMemoryInputStreamR10J2DTextBoxPiPi
    b       branch_0x80151888

branch_0x80151788:
    lwz     r0, 0x274(r30)
    lwz     r3, 0x70(sp)
    cmpw    r0, r3
    beq-    branch_0x8015179c
    stw     r3, 0x274(r30)
branch_0x8015179c:
    addi    r3, sp, 0x78
    li      r4, -0x1
    bl      skip__20JSURandomInputStreamFl
    addi    r3, sp, 0x78
    addi    r4, sp, 0x45
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x45(sp)
    stb     r0, 0x0(r31)
    lbz     r0, 0x0(r31)
    cmplwi  r0, 0x80
    blt-    branch_0x801517e8
    addi    r3, sp, 0x78
    addi    r4, sp, 0x44
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x44(sp)
    stb     r0, 0x1(r31)
    b       branch_0x801517f0

branch_0x801517e8:
    li      r0, 0x0
    stb     r0, 0x1(r31)
branch_0x801517f0:
    lwz     r0, 0x27c(r30)
    lwz     r3, 0x70(sp)
    stw     r0, 0x5c(sp)
    mulli   r3, r3, 0x1e
    lwz     r4, 0x74(sp)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x60(sp)
    add     r5, r4, r3
    slwi    r3, r5, 2
    lwz     r0, 0x27c(r30)
    addi    r4, r3, 0x9c
    add     r4, r30, r4
    stw     r0, 0x64(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x64(sp)
    stw     r0, 0xf0(r3)
    lwz     r0, 0x60(sp)
    stw     r0, 0xf4(r3)
    lwz     r0, 0x27c(r30)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x27c(r30)
    clrrwi  r0, r0, 8
    stw     r0, 0x54(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x54(sp)
    stw     r0, 0x120(r3)
    lwz     r0, 0x50(sp)
    stw     r0, 0x11c(r3)
    lhz     r3, 0x2de(r30)
    lbz     r4, 0x280(r30)
    addi    r0, r3, 0x281
    stbx    r4, r30, r0
    sth     r5, 0x2de(r30)
    lwz     r3, 0x74(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x74(sp)
branch_0x80151888:
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x3
    blt+    branch_0x80151654
    lbz     r0, 0x26a(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801518c4
    addi    r3, sp, 0x78
    addi    r4, sp, 0x6c
    li      r5, 0x1
    bl      peek__20JSURandomInputStreamFPvl
    lbz     r0, 0x6c(sp)
    extsb.  r0, r0
    bne-    branch_0x801518c4
    li      r0, 0x1
    stb     r0, 0x26a(r30)
branch_0x801518c4:
    lbz     r3, 0x214(r30)
    extsb   r0, r3
    cmpwi   r0, -0x1
    beq-    branch_0x80151928
    extsb.  r0, r3
    bne-    branch_0x80151904
    lwz     r3, 0x208(r30)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x8038
    lwz     r6, 0x218(r30)
    addi    r5, r4, 0x7db4
    lwz     r7, 0x21c(r30)
    crxor   6, 6, 6
    li      r4, 0x5e
    bl      snprintf
    b       branch_0x80151928

branch_0x80151904:
    lwz     r3, 0x208(r30)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x8038
    lwz     r6, 0x218(r30)
    addi    r5, r4, 0x7dd0
    lwz     r7, 0x21c(r30)
    crxor   6, 6, 6
    li      r4, 0x5e
    bl      snprintf
branch_0x80151928:
    lwz     r5, 0x278(r30)
    lis     r4, 0x803e
    lwz     r0, 0x88(sp)
    lis     r3, 0x803e
    addi    r4, r4, 0x1c8
    add     r0, r5, r0
    stw     r0, 0x278(r30)
    addi    r0, r3, 0x160
    addi    r3, sp, 0x78
    stw     r4, 0x78(sp)
    li      r4, 0x0
    stw     r0, 0x78(sp)
    bl      __dt__14JSUInputStreamFv
branch_0x8015195c:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl setupBoardTextBox__8TTalk2D2FPCvP12JMSMesgEntry
setupBoardTextBox__8TTalk2D2FPCvP12JMSMesgEntry: # 0x80151978
    mflr    r0
    lis     r7, 0x803e
    stw     r0, 0x4(sp)
    lis     r6, 0x803e
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r0, sp, 0x50
    addi    r31, r5, 0x0
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x6c(sp)
    li      r29, 0x0
    stw     r28, 0x68(sp)
    lwz     r9, 0x0(r5)
    lis     r5, 0x803b
    lwz     r8, 0x278(r3)
    subi    r28, r5, 0xf0c
    lis     r5, 0x803e
    stw     r0, 0x34(sp)
    addi    r0, r7, 0x184
    add     r7, r9, r8
    lwz     r3, 0x34(sp)
    add     r7, r4, r7
    addi    r4, r7, 0x0
    stw     r28, 0x0(r3)
    stb     r29, 0x4(r3)
    stw     r0, 0x0(r3)
    addi    r0, r6, 0x160
    stw     r0, 0x0(r3)
    addi    r0, r5, 0x1c8
    li      r5, 0x400
    stw     r0, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lwz     r3, 0x18(r30)
    bl      getStringPtr__10J2DTextBoxCFv
    addi    r0, sp, 0x3c
    stw     r0, 0x30(sp)
    lis     r7, 0x803e
    lis     r6, 0x803e
    lwz     r8, 0x30(sp)
    mr      r4, r3
    addi    r0, r7, 0x148
    stw     r28, 0x0(r8)
    addi    r6, r6, 0x120
    lis     r5, 0x803e
    stb     r29, 0x4(r8)
    addi    r3, r8, 0x0
    stw     r0, 0x0(r8)
    addi    r0, r5, 0x1a0
    li      r5, 0x200
    stw     r6, 0x0(r8)
    stw     r0, 0x0(r8)
    bl      setBuffer__21JSUMemoryOutputStreamFPvl
    stw     r31, 0x254(r30)
    li      r29, 0x0
    b       branch_0x80151b24

branch_0x80151a58:
    addi    r3, sp, 0x50
    addi    r4, sp, 0x2f
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x2f(sp)
    cmpwi   r0, 0xa
    beq-    branch_0x80151a90
    bge-    branch_0x80151a84
    cmpwi   r0, 0x0
    beq-    branch_0x80151ab0
    b       branch_0x80151ac0

branch_0x80151a84:
    cmpwi   r0, 0x1a
    beq-    branch_0x80151b24
    b       branch_0x80151ac0

branch_0x80151a90:
    li      r0, 0xa
    stb     r0, 0x2e(sp)
    addi    r3, sp, 0x3c
    addi    r4, sp, 0x2e
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
    addi    r29, r29, 0x1
    b       branch_0x80151b24

branch_0x80151ab0:
    li      r0, 0x1
    stb     r0, 0x26a(r30)
    li      r29, 0x6
    b       branch_0x80151b24

branch_0x80151ac0:
    addi    r3, sp, 0x50
    li      r4, -0x1
    bl      skip__20JSURandomInputStreamFl
    addi    r3, sp, 0x50
    addi    r4, sp, 0x2d
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r28, 0x2d(sp)
    addi    r3, sp, 0x3c
    addi    r4, sp, 0x2c
    stb     r28, 0x2c(sp)
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
    cmplwi  r28, 0x80
    blt-    branch_0x80151b24
    addi    r3, sp, 0x50
    addi    r4, sp, 0x28
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x28(sp)
    addi    r3, sp, 0x3c
    addi    r4, sp, 0x2b
    stb     r0, 0x2b(sp)
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
branch_0x80151b24:
    cmpwi   r29, 0x6
    blt+    branch_0x80151a58
    lbz     r0, 0x26a(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80151b84
    addi    r3, sp, 0x50
    addi    r4, sp, 0x38
    li      r5, 0x1
    bl      peek__20JSURandomInputStreamFPvl
    lbz     r0, 0x38(sp)
    extsb.  r0, r0
    bne-    branch_0x80151b9c
    li      r0, 0x1
    stb     r0, 0x26a(r30)
    addi    r3, sp, 0x50
    li      r4, 0x1
    bl      skip__20JSURandomInputStreamFl
    li      r0, 0x0
    stb     r0, 0x2a(sp)
    addi    r3, sp, 0x3c
    addi    r4, sp, 0x2a
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
    b       branch_0x80151b9c

branch_0x80151b84:
    li      r0, 0x0
    stb     r0, 0x29(sp)
    addi    r3, sp, 0x3c
    addi    r4, sp, 0x29
    li      r5, 0x1
    bl      write__15JSUOutputStreamFPCvl
branch_0x80151b9c:
    lwz     r5, 0x278(r30)
    lis     r4, 0x803e
    lwz     r0, 0x60(sp)
    lis     r3, 0x803e
    addi    r4, r4, 0x1a0
    add     r0, r5, r0
    stw     r0, 0x278(r30)
    addi    r0, r3, 0x120
    addi    r3, sp, 0x3c
    stw     r4, 0x3c(sp)
    li      r4, 0x0
    stw     r0, 0x3c(sp)
    bl      __dt__15JSUOutputStreamFv
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x50(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x50
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__21JSUMemoryOutputStreamFv
__dt__21JSUMemoryOutputStreamFv: # 0x80151c14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80151c6c
    lis     r3, 0x803e
    addi    r0, r3, 0x1a0
    stw     r0, 0x0(r30)
    beq-    branch_0x80151c5c
    lis     r3, 0x803e
    addi    r0, r3, 0x120
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__15JSUOutputStreamFv
branch_0x80151c5c:
    extsh.  r0, r31
    ble-    branch_0x80151c6c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80151c6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__8TTalk2D2FUlPQ26JDrama9TGraphics
perform__8TTalk2D2FUlPQ26JDrama9TGraphics: # 0x80151c88
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x1c8(sp)
    stmw    r27, 0x1b4(sp)
    addi    r29, r4, 0x0
    addi    r28, r3, 0x0
    addi    r30, r5, 0x0
    beq-    branch_0x80151e94
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80151cc0
    b       branch_0x80151e94

branch_0x80151cc0:
    lwz     r0, 0x248(r28)
    cmplwi  r0, 0x8
    bgt-    branch_0x80151e94
    lis     r3, 0x803c
    addi    r3, r3, 0x3ec
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80151CE4:		# jumptable 80151CE0 case 2
    lwz     r31, gpCamera(r13)
    li      r27, 0x0
    lwz     r4, 0x50(r31)
    mr      r3, r31
    bl      isTalkCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80151d14
    mr      r3, r31
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80151d14
    li      r27, 0x1
branch_0x80151d14:
    clrlwi. r0, r27, 24
    beq-    branch_0x80151d24
    li      r0, 0x1
    b       branch_0x80151d28

branch_0x80151d24:
    li      r0, 0x0
branch_0x80151d28:
    clrlwi. r0, r0, 24
    beq-    branch_0x80151e94
    li      r0, 0x14
    stb     r0, 0x251(r28)
    li      r0, 0x3
    stw     r0, 0x248(r28)
    b       branch_0x80151e94

branch_0x80151D44:		# jumptable 80151CE0 case 4
lbz	  r0, 0x28(r28)
cmplwi	  r0, 0
beq	  branch_0x80151D5C
mr	  r3, r28
bl	  openBoardWindow__8TTalk2D2Fv # TTalk2D2::openBoardWindow((void))
b	  branch_0x80151D64

branch_0x80151D5C:
mr	  r3, r28
bl	  openNormalWindow__8TTalk2D2Fv	# TTalk2D2::openNormalWindow((void))

branch_0x80151D64:
clrlwi.	  r0, r3, 24
beq	  def_80151CE0	# jumptable 80151CE0 default case
li	  r0, 5
stw	  r0, 0x248(r28)
b	  def_80151CE0	# jumptable 80151CE0 default case

branch_0x80151D78:		# jumptable 80151CE0 case 5
lbz	  r0, 0x28(r28)
cmplwi	  r0, 0
beq	  branch_0x80151D98
mr	  r3, r28
bl	  moveBoardWindow__8TTalk2D2Fv # TTalk2D2::moveBoardWindow((void))
mr	  r3, r28
bl	  checkBoardControler__8TTalk2D2Fv # TTalk2D2::checkBoardControler((void))
b	  def_80151CE0	# jumptable 80151CE0 default case

branch_0x80151D98:
mr	  r3, r28
bl	  moveTalkWindow__8TTalk2D2Fv #	TTalk2D2::moveTalkWindow((void))
mr	  r3, r28
bl	  checkControler__8TTalk2D2Fv #	TTalk2D2::checkControler((void))
b	  def_80151CE0	# jumptable 80151CE0 default case

branch_0x80151DAC:		# jumptable 80151CE0 case 6
lbz	  r0, 0x28(r28)
cmplwi	  r0, 0
beq	  branch_0x80151DD4
li	  r31, 0
lwz	  r3, 0x14(r28)
bl	  update__10TBoundPaneFv # TBoundPane::update((void))
clrlwi.	  r0, r3, 24
beq	  branch_0x80151DE0
li	  r31, 1
b	  branch_0x80151DE0

branch_0x80151DD4:
mr	  r3, r28
bl	  closeNormalWindow__8TTalk2D2Fv # TTalk2D2::closeNormalWindow((void))
mr	  r31, r3

branch_0x80151DE0:
clrlwi.	  r0, r31, 24
beq	  def_80151CE0	# jumptable 80151CE0 default case
lwz	  r0, 0x270(r28)
clrlwi.	  r0, r0, 31
beq	  branch_0x80151E00
li	  r0, 0
stw	  r0, 0x248(r28)
b	  def_80151CE0	# jumptable 80151CE0 default case

branch_0x80151E00:
li	  r0, 1
stw	  r0, 0x248(r28)
b	  def_80151CE0	# jumptable 80151CE0 default case

branch_0x80151E0C:		# jumptable 80151CE0 case 7
lbz	  r0, 0x28(r28)
cmplwi	  r0, 0
beq	  branch_0x80151E24
mr	  r3, r28
bl	  eraseBoardWindow__8TTalk2D2Fv	# TTalk2D2::eraseBoardWindow((void))
b	  branch_0x80151E2C

branch_0x80151E24:
mr	  r3, r28
bl	  eraseNormalWindow__8TTalk2D2Fv # TTalk2D2::eraseNormalWindow((void))

branch_0x80151E2C:
clrlwi.	  r0, r3, 24
beq	  def_80151CE0	# jumptable 80151CE0 default case
lbz	  r0, 0x28(r28)
cmplwi	  r0, 0
beq	  branch_0x80151E4C
li	  r0, 8
stw	  r0, 0x248(r28)
b	  def_80151CE0	# jumptable 80151CE0 default case

branch_0x80151E4C:
li	  r0, 4
stw	  r0, 0x248(r28)
b	  def_80151CE0	# jumptable 80151CE0 default case

branch_0x80151E58:		# jumptable 80151CE0 case 8
lwz	  r3, 0x18(r28)
li	  r4, 0
addi	  r5, r3, 0xCC
lbz	  r3, 0xCC(r3)
addi	  r3, r3, 4
clrlwi	  r0, r3, 16
cmplwi	  r0, 0xFF
ble	  branch_0x80151E80
li	  r3, 0xFF
li	  r4, 1

branch_0x80151E80:
clrlwi.	  r0, r4, 24
stb	  r3, 0(r5)
beq	  def_80151CE0	# jumptable 80151CE0 default case
li	  r0, 5
stw	  r0, 0x248(r28)

def_80151CE0:		# jumptable 80151CE0 default case
branch_0x80151e94:
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x801520f4
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80151eb0
    b       branch_0x801520f4

branch_0x80151eb0:
    lwz     r0, 0x248(r28)
    cmpwi   r0, 0x3
    beq-    branch_0x80151ed8
    bge-    branch_0x80151ecc
    cmpwi   r0, 0x2
    bge-    branch_0x801520f4
    b       branch_0x801520f4

branch_0x80151ecc:
    cmpwi   r0, 0x7
    beq-    branch_0x80151f04
    b       branch_0x801520f4

branch_0x80151ed8:
    lbz     r3, 0x251(r28)
    subi    r0, r3, 0x1
    stb     r0, 0x251(r28)
    lbz     r0, 0x251(r28)
    extsb.  r0, r0
    bge-    branch_0x801520f4
    li      r0, 0x0
    sth     r0, 0x2de(r28)
    li      r0, 0x4
    stw     r0, 0x248(r28)
    b       branch_0x801520f4

branch_0x80151f04:
    lwz     r3, 0x90(r28)
    lbz     r31, 0xcc(r3)
    subi    r31, r31, 0x10
    extsh.  r0, r31
    bge-    branch_0x801520ec
    lfs     f0, -0x4bd0(rtoc)
    li      r5, 0x0
    li      r0, 0x9
    stfs    f0, 0x234(r28)
    mtctr   r0
    addi    r6, r5, 0x0
    lwz     r4, 0x3c(r28)
    addi    r3, r5, 0x0
    li      r31, 0xff
    stb     r5, 0xc(r4)
    stb     r5, 0x224(r28)
    lwz     r4, 0x6c(r28)
    stb     r5, 0xc(r4)
    lfs     f0, -0x4ba0(rtoc)
    stfs    f0, 0x238(r28)
    lwz     r4, 0x40(r28)
    stb     r5, 0xc(r4)
    stb     r5, 0x225(r28)
    lwz     r4, 0x70(r28)
    stb     r5, 0xc(r4)
    lfs     f0, -0x4b9c(rtoc)
    stfs    f0, 0x23c(r28)
    lwz     r4, 0x44(r28)
    stb     r5, 0xc(r4)
    stb     r5, 0x226(r28)
    lwz     r4, 0x74(r28)
    stb     r5, 0xc(r4)
branch_0x80151f84:
    addi    r0, r3, 0x9c
    lwzx    r4, r28, r0
    cmplwi  r4, 0x0
    beq-    branch_0x80151f98
    stb     r5, 0xc(r4)
branch_0x80151f98:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    cmplwi  r4, 0x0
    beq-    branch_0x80151fb0
    stb     r5, 0xc(r4)
branch_0x80151fb0:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80151fcc
    stb     r5, 0xc(r4)
branch_0x80151fcc:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80151fe8
    stb     r5, 0xc(r4)
branch_0x80151fe8:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152004
    stb     r5, 0xc(r4)
branch_0x80152004:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152020
    stb     r5, 0xc(r4)
branch_0x80152020:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x8015203c
    stb     r5, 0xc(r4)
branch_0x8015203c:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152058
    stb     r5, 0xc(r4)
branch_0x80152058:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152074
    stb     r5, 0xc(r4)
branch_0x80152074:
    addi    r0, r3, 0xa0
    lwzx    r4, r28, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152090
    stb     r5, 0xc(r4)
branch_0x80152090:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x80151f84
    lwz     r3, 0x260(r28)
    lwz     r0, 0x264(r28)
    lwz     r27, 0x4(r3)
    clrlwi  r4, r0, 16
    bl      getMessageEntry__14TMessageLoaderFUl
    addi    r5, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    bl      setupTextBox__8TTalk2D2FPCvP12JMSMesgEntry
    li      r4, 0x0
    stb     r4, 0x26c(r28)
    li      r0, 0x40
    li      r3, -0x1
    sth     r0, 0x340(r28)
    li      r0, 0x4
    stw     r3, 0x27c(r28)
    stw     r3, 0x27c(r28)
    sth     r4, 0x2de(r28)
    sth     r4, 0x2dc(r28)
    stw     r0, 0x248(r28)
branch_0x801520ec:
    lwz     r3, 0x90(r28)
    stb     r31, 0xcc(r3)
branch_0x801520f4:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x801522ac
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80152110
    b       branch_0x801522ac

branch_0x80152110:
    bl      ReInitializeGX
    bl      SMS_DrawInit__Fv
    addi    r4, r30, 0x54
    addi    r3, sp, 0xac
    bl      __ct__13J2DOrthoGraphFRC7JUTRect
    addi    r3, sp, 0xac
    bl      setup2D__14J2DGrafContextFv
    lbz     r0, 0x250(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x801521bc
    lwz     r4, 0x3c(r28)
    li      r0, 0x1
    lis     r3, 0x524f
    stb     r0, 0xc(r4)
    addi    r4, r3, 0x4f54
    lwz     r3, 0x40(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x44(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x2c(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r29, 0x0
    stb     r29, 0xcc(r3)
    addi    r30, r3, 0x0
    addi    r6, sp, 0xac
    lwz     r3, 0x2c(r28)
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    li      r0, 0xff
    stb     r0, 0xcc(r30)
    addi    r3, sp, 0xac
    bl      setup2D__14J2DGrafContextFv
    stb     r29, 0x250(r28)
    lwz     r3, 0x3c(r28)
    stb     r29, 0xc(r3)
    lwz     r3, 0x40(r28)
    stb     r29, 0xc(r3)
    lwz     r3, 0x44(r28)
    stb     r29, 0xc(r3)
branch_0x801521bc:
    lwz     r0, 0x248(r28)
    cmpwi   r0, 0x4
    beq-    branch_0x801521d8
    blt-    branch_0x80152294
    cmpwi   r0, 0x8
    bge-    branch_0x80152294
    b       branch_0x80152210

branch_0x801521d8:
    li      r29, 0x0
    b       branch_0x80152200

branch_0x801521e0:
    extsb   r0, r29
    slwi    r3, r0, 2
    addi    r0, r3, 0x234
    lfsx    f1, r28, r0
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      openWindow__8TTalk2D2FScf
    addi    r29, r29, 0x1
branch_0x80152200:
    lwz     r0, 0x274(r28)
    extsb   r3, r29
    cmpw    r3, r0
    ble+    branch_0x801521e0
branch_0x80152210:
    addi    r3, sp, 0xac
    bl      setup2D__14J2DGrafContextFv
    lbz     r0, 0x28(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8015223c
    lwz     r3, 0x10(r28)
    addi    r6, sp, 0xac
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
    b       branch_0x80152294

branch_0x8015223c:
    lwz     r3, 0x90(r28)
    lha     r4, 0x330(r28)
    lwz     r12, 0x0(r3)
    lha     r5, 0x332(r28)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lha     r3, 0x334(r28)
    lis     r0, 0x4330
    lfd     f1, -0x4bc8(rtoc)
    addi    r6, sp, 0xac
    xoris   r3, r3, 0x8000
    stw     r3, 0x1ac(sp)
    li      r4, 0x0
    lwz     r3, 0x90(r28)
    li      r5, 0x0
    stw     r0, 0x1a8(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(r3)
    lwz     r3, 0x2c(r28)
    bl      draw__9J2DScreenFiiPC14J2DGrafContext
branch_0x80152294:
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0xac(sp)
    addi    r0, r3, 0x1448
    stw     r0, 0xac(sp)
branch_0x801522ac:
    lmw     r27, 0x1b4(sp)
    lwz     r0, 0x1cc(sp)
    addi    sp, sp, 0x1c8
    mtlr    r0
    blr


.globl eraseBoardWindow__8TTalk2D2Fv
eraseBoardWindow__8TTalk2D2Fv: # 0x801522c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r4, 0x18(r3)
    li      r3, 0x0
    lbz     r30, 0xcc(r4)
    subi    r30, r30, 0x4
    extsh.  r0, r30
    bge-    branch_0x80152334
    lwz     r3, 0x260(r29)
    li      r30, 0x0
    lwz     r0, 0x264(r29)
    lwz     r31, 0x4(r3)
    clrlwi  r4, r0, 16
    bl      getMessageEntry__14TMessageLoaderFUl
    addi    r5, r3, 0x0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      setupTextBox__8TTalk2D2FPCvP12JMSMesgEntry
    li      r0, -0x1
    stw     r0, 0x27c(r29)
    li      r0, 0x0
    li      r3, 0x1
    sth     r0, 0x2de(r29)
    sth     r0, 0x2dc(r29)
branch_0x80152334:
    lwz     r4, 0x18(r29)
    stb     r30, 0xcc(r4)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl eraseNormalWindow__8TTalk2D2Fv
eraseNormalWindow__8TTalk2D2Fv: # 0x80152358
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    lwz     r4, 0x90(r3)
    li      r3, 0x0
    lbz     r31, 0xcc(r4)
    subi    r31, r31, 0x10
    extsh.  r0, r31
    bge-    branch_0x80152558
    lfs     f0, -0x4bd0(rtoc)
    li      r5, 0x0
    li      r0, 0x9
    stfs    f0, 0x234(r30)
    mtctr   r0
    addi    r3, r5, 0x0
    lwz     r4, 0x3c(r30)
    li      r31, 0xff
    li      r6, 0x0
    stb     r5, 0xc(r4)
    stb     r5, 0x224(r30)
    lwz     r4, 0x6c(r30)
    stb     r5, 0xc(r4)
    lfs     f0, -0x4ba0(rtoc)
    stfs    f0, 0x238(r30)
    lwz     r4, 0x40(r30)
    stb     r5, 0xc(r4)
    stb     r5, 0x225(r30)
    lwz     r4, 0x70(r30)
    stb     r5, 0xc(r4)
    lfs     f0, -0x4b9c(rtoc)
    stfs    f0, 0x23c(r30)
    lwz     r4, 0x44(r30)
    stb     r5, 0xc(r4)
    stb     r5, 0x226(r30)
    lwz     r4, 0x74(r30)
    stb     r5, 0xc(r4)
branch_0x801523f8:
    addi    r0, r3, 0x9c
    lwzx    r4, r30, r0
    cmplwi  r4, 0x0
    beq-    branch_0x8015240c
    stb     r5, 0xc(r4)
branch_0x8015240c:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    cmplwi  r4, 0x0
    beq-    branch_0x80152424
    stb     r5, 0xc(r4)
branch_0x80152424:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152440
    stb     r5, 0xc(r4)
branch_0x80152440:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x8015245c
    stb     r5, 0xc(r4)
branch_0x8015245c:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152478
    stb     r5, 0xc(r4)
branch_0x80152478:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152494
    stb     r5, 0xc(r4)
branch_0x80152494:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x801524b0
    stb     r5, 0xc(r4)
branch_0x801524b0:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x801524cc
    stb     r5, 0xc(r4)
branch_0x801524cc:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x801524e8
    stb     r5, 0xc(r4)
branch_0x801524e8:
    addi    r0, r3, 0xa0
    lwzx    r4, r30, r0
    addi    r3, r3, 0x4
    addi    r6, r6, 0x1
    cmplwi  r4, 0x0
    beq-    branch_0x80152504
    stb     r5, 0xc(r4)
branch_0x80152504:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x801523f8
    lwz     r3, 0x260(r30)
    lwz     r0, 0x264(r30)
    lwz     r29, 0x4(r3)
    clrlwi  r4, r0, 16
    bl      getMessageEntry__14TMessageLoaderFUl
    addi    r5, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      setupTextBox__8TTalk2D2FPCvP12JMSMesgEntry
    li      r4, 0x0
    stb     r4, 0x26c(r30)
    li      r3, 0x40
    li      r0, -0x1
    sth     r3, 0x340(r30)
    li      r3, 0x1
    stw     r0, 0x27c(r30)
    sth     r4, 0x2de(r30)
    sth     r4, 0x2dc(r30)
branch_0x80152558:
    lwz     r4, 0x90(r30)
    stb     r31, 0xcc(r4)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl closeNormalWindow__8TTalk2D2Fv
closeNormalWindow__8TTalk2D2Fv: # 0x8015257c
    lwz     r4, 0x90(r3)
    li      r6, 0x0
    lbz     r7, 0xcc(r4)
    subi    r7, r7, 0x10
    extsh.  r0, r7
    bge-    branch_0x80152734
    lfs     f0, -0x4bd0(rtoc)
    li      r6, 0x0
    li      r0, 0x9
    stfs    f0, 0x234(r3)
    mtctr   r0
    addi    r4, r6, 0x0
    lwz     r5, 0x3c(r3)
    li      r7, 0x0
    li      r8, 0x0
    stb     r6, 0xc(r5)
    stb     r6, 0x224(r3)
    lwz     r5, 0x6c(r3)
    stb     r6, 0xc(r5)
    lfs     f0, -0x4ba0(rtoc)
    stfs    f0, 0x238(r3)
    lwz     r5, 0x40(r3)
    stb     r6, 0xc(r5)
    stb     r6, 0x225(r3)
    lwz     r5, 0x70(r3)
    stb     r6, 0xc(r5)
    lfs     f0, -0x4b9c(rtoc)
    stfs    f0, 0x23c(r3)
    lwz     r5, 0x44(r3)
    stb     r6, 0xc(r5)
    stb     r6, 0x226(r3)
    lwz     r5, 0x74(r3)
    stb     r6, 0xc(r5)
branch_0x80152600:
    addi    r0, r4, 0x9c
    lwzx    r5, r3, r0
    cmplwi  r5, 0x0
    beq-    branch_0x80152614
    stb     r6, 0xc(r5)
branch_0x80152614:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    cmplwi  r5, 0x0
    beq-    branch_0x8015262c
    stb     r6, 0xc(r5)
branch_0x8015262c:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x80152648
    stb     r6, 0xc(r5)
branch_0x80152648:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x80152664
    stb     r6, 0xc(r5)
branch_0x80152664:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x80152680
    stb     r6, 0xc(r5)
branch_0x80152680:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x8015269c
    stb     r6, 0xc(r5)
branch_0x8015269c:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x801526b8
    stb     r6, 0xc(r5)
branch_0x801526b8:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x801526d4
    stb     r6, 0xc(r5)
branch_0x801526d4:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x801526f0
    stb     r6, 0xc(r5)
branch_0x801526f0:
    addi    r0, r4, 0xa0
    lwzx    r5, r3, r0
    addi    r4, r4, 0x4
    addi    r8, r8, 0x1
    cmplwi  r5, 0x0
    beq-    branch_0x8015270c
    stb     r6, 0xc(r5)
branch_0x8015270c:
    addi    r8, r8, 0x1
    addi    r4, r4, 0x4
    bdnz+      branch_0x80152600
    lwz     r4, 0x204(r3)
    lbzu    r0, 0xc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80152730
    li      r0, 0x0
    stb     r0, 0x0(r4)
branch_0x80152730:
    li      r6, 0x1
branch_0x80152734:
    lwz     r4, 0x90(r3)
    clrlwi  r5, r7, 24
    stb     r7, 0xcc(r4)
    lwz     r3, 0x204(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80152754
    stb     r5, 0xcc(r3)
branch_0x80152754:
    mr      r3, r6
    blr


.globl checkControler__8TTalk2D2Fv
checkControler__8TTalk2D2Fv: # 0x8015275c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    lwz     r0, 0x274(r3)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r3, 0x6c(r3)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801528e8
    lbz     r0, 0x26a(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801528a4
    lbz     r0, 0x26d(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801527bc
    lwz     r3, 0x24c(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 14, 14
    bne-    branch_0x801527bc
    rlwinm. r0, r3, 0, 13, 13
    beq-    branch_0x80152a64
branch_0x801527bc:
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801527e4
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801527e4:
    lwz     r0, 0x270(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x80152898
    lwz     r0, 0x264(r31)
    cmplwi  r0, 0x1e
    bne-    branch_0x80152828
    lwz     r3, gpMSound(r13)
    li      r4, 0x4851
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80152870
    li      r3, 0x4851
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80152870

branch_0x80152828:
    lbz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80152868
    lwz     r3, gpMSound(r13)
    li      r4, 0x481a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015285c
    li      r3, 0x481a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015285c:
    lwz     r3, gpMSound(r13)
    bl      talkModeOut__6MSoundFv
    b       branch_0x80152870

branch_0x80152868:
    lwz     r3, gpMSound(r13)
    bl      talkModeOut__6MSoundFv
branch_0x80152870:
    lwz     r3, gpCamera(r13)
    bl      makeMtxForPrevTalk__15CPolarSubCameraFv
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      startAppearTelop__11TGCConsole2Fb
    lwz     r3, -0x60f0(r13)
    bl      finishPause__9RumbleMgrFv
    li      r0, 0x0
    stb     r0, 0x252(r31)
branch_0x80152898:
    li      r0, 0x6
    stw     r0, 0x248(r31)
    b       branch_0x80152a64

branch_0x801528a4:
    lwz     r3, 0x24c(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 13, 14
    beq-    branch_0x80152a64
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801528dc
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801528dc:
    li      r0, 0x7
    stw     r0, 0x248(r31)
    b       branch_0x80152a64

branch_0x801528e8:
    lwz     r3, 0x204(r31)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80152a64
    lwz     r3, 0x24c(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 12, 12
    beq-    branch_0x80152968
    lbz     r0, 0x214(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80152968
    lwz     r3, gpMSound(r13)
    li      r4, 0x481e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8015293c
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8015293c:
    li      r5, 0x0
    stb     r5, 0x214(r31)
    li      r4, 0xfe
    li      r0, 0x1
    lwz     r3, 0x210(r31)
    stb     r4, 0xcc(r3)
    lwz     r3, 0x210(r31)
    stb     r5, 0xc(r3)
    lwz     r3, 0x20c(r31)
    stb     r0, 0xc(r3)
    b       branch_0x80152a64

branch_0x80152968:
    rlwinm. r0, r3, 0, 11, 11
    beq-    branch_0x801529d0
    lbz     r0, 0x214(r31)
    extsb.  r0, r0
    bne-    branch_0x801529d0
    lwz     r3, gpMSound(r13)
    li      r4, 0x481e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801529a4
    li      r3, 0x481e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801529a4:
    li      r5, 0x1
    stb     r5, 0x214(r31)
    li      r4, 0xfe
    li      r0, 0x0
    lwz     r3, 0x20c(r31)
    stb     r4, 0xcc(r3)
    lwz     r3, 0x20c(r31)
    stb     r0, 0xc(r3)
    lwz     r3, 0x210(r31)
    stb     r5, 0xc(r3)
    b       branch_0x80152a64

branch_0x801529d0:
    lbz     r0, 0x26a(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80152a2c
    rlwinm. r0, r3, 0, 13, 14
    beq-    branch_0x80152a64
    lwz     r0, 0x270(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x801529f8
    lwz     r3, gpCamera(r13)
    bl      makeMtxForPrevTalk__15CPolarSubCameraFv
branch_0x801529f8:
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80152a20
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80152a20:
    li      r0, 0x6
    stw     r0, 0x248(r31)
    b       branch_0x80152a64

branch_0x80152a2c:
    rlwinm. r0, r3, 0, 13, 14
    beq-    branch_0x80152a64
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80152a5c
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80152a5c:
    li      r0, 0x7
    stw     r0, 0x248(r31)
branch_0x80152a64:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl moveTalkWindow__8TTalk2D2Fv
moveTalkWindow__8TTalk2D2Fv: # 0x80152a78
    mflr    r0
    li      r9, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x3
    mtctr   r0
    li      r4, 0x0
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    stw     r30, 0x38(sp)
branch_0x80152aa4:
    addi    r7, r9, 0x224
    add     r7, r31, r7
    lbz     r5, 0x0(r7)
    cmplwi  r5, 0x0
    add     r10, r5, r4
    beq-    branch_0x80152b60
    addi    r0, r3, 0x228
    lwzx    r0, r31, r0
    cmpw    r5, r0
    bgt-    branch_0x80152b60
    slwi    r5, r10, 2
    addi    r8, r5, 0x9c
    add     r8, r31, r8
    lwz     r6, 0x0(r8)
    lbz     r0, 0xc(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80152b24
    lbz     r8, 0xcc(r6)
    lha     r0, 0x340(r31)
    add     r8, r8, r0
    extsh   r5, r8
    cmpwi   r5, 0xff
    ble-    branch_0x80152b04
    li      r5, 0xff
branch_0x80152b04:
    extsh   r0, r8
    stb     r5, 0xcc(r6)
    cmpwi   r0, 0xff
    blt-    branch_0x80152b60
    lbz     r5, 0x0(r7)
    addi    r0, r5, 0x1
    stb     r0, 0x0(r7)
    b       branch_0x80152b60

branch_0x80152b24:
    lha     r5, 0x2dc(r31)
    cmpwi   r5, 0x0
    bgt-    branch_0x80152b58
    addi    r0, r10, 0x281
    lbzx    r5, r31, r0
    li      r6, 0x1
    li      r0, 0x0
    sth     r5, 0x2dc(r31)
    lwz     r5, 0x0(r8)
    stb     r6, 0xc(r5)
    lwz     r5, 0x0(r8)
    stb     r0, 0xcc(r5)
    b       branch_0x80152b60

branch_0x80152b58:
    subi    r0, r5, 0x1
    sth     r0, 0x2dc(r31)
branch_0x80152b60:
    addi    r9, r9, 0x1
    addi    r3, r3, 0x4
    addi    r4, r4, 0x1e
    bdnz+      branch_0x80152aa4
    lwz     r4, 0x274(r31)
    add     r3, r31, r4
    lbz     r5, 0x224(r3)
    cmplwi  r5, 0x1e
    bge-    branch_0x80152b98
    slwi    r0, r4, 2
    add     r3, r31, r0
    lwz     r0, 0x228(r3)
    cmpw    r5, r0
    ble-    branch_0x80152d38
branch_0x80152b98:
    lbz     r0, 0x214(r31)
    extsb   r0, r0
    cmpwi   r0, -0x1
    bne-    branch_0x80152c14
    lbz     r0, 0x26a(r31)
    slwi    r3, r4, 2
    add     r4, r31, r3
    cmplwi  r0, 0x0
    lwz     r6, 0x6c(r4)
    beq-    branch_0x80152bec
    lwz     r3, 0x84(r4)
    li      r0, 0x0
    lwz     r4, 0x78(r4)
    li      r5, 0x1
    stb     r0, 0xc(r4)
    lwz     r0, 0x274(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x84(r4)
    stb     r5, 0xc(r4)
    b       branch_0x80152c24

branch_0x80152bec:
    lwz     r3, 0x78(r4)
    li      r0, 0x1
    li      r5, 0x0
    stb     r0, 0xc(r3)
    lwz     r0, 0x274(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x84(r4)
    stb     r5, 0xc(r4)
    b       branch_0x80152c24

branch_0x80152c14:
    slwi    r0, r0, 2
    lwz     r6, 0x204(r31)
    add     r3, r31, r0
    lwz     r3, 0x20c(r3)
branch_0x80152c24:
    lbz     r0, 0xc(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80152d20
    lbz     r4, 0xcc(r6)
    extsh   r0, r4
    cmpwi   r0, 0xff
    bge-    branch_0x80152c58
    addi    r4, r4, 0x10
    extsh   r0, r4
    cmpwi   r0, 0xff
    blt-    branch_0x80152c54
    li      r4, 0xff
branch_0x80152c54:
    stb     r4, 0xcc(r6)
branch_0x80152c58:
    lbz     r0, 0x26b(r31)
    lbz     r4, 0xcc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80152c88
    addi    r4, r4, 0x2
    extsh   r0, r4
    cmpwi   r0, 0xff
    ble-    branch_0x80152ca4
    li      r0, 0x0
    stb     r0, 0x26b(r31)
    li      r4, 0xff
    b       branch_0x80152ca4

branch_0x80152c88:
    subi    r4, r4, 0x4
    extsh   r0, r4
    cmpwi   r0, 0x3c
    bge-    branch_0x80152ca4
    li      r0, 0x1
    stb     r0, 0x26b(r31)
    li      r4, 0x3c
branch_0x80152ca4:
    stb     r4, 0xcc(r3)
    clrlwi  r30, r4, 24
    lbz     r3, 0x214(r31)
    cmpwi   r3, 0x1
    bne-    branch_0x80152ce8
    lwz     r3, 0x208(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x8038
    lwz     r6, 0x218(r31)
    addi    r5, r4, 0x7e04
    lwz     r9, 0x21c(r31)
    crxor   6, 6, 6
    addi    r7, r30, 0x0
    addi    r8, r30, 0x0
    li      r4, 0x5e
    bl      snprintf
    b       branch_0x80152d38

branch_0x80152ce8:
    extsb.  r0, r3
    bne-    branch_0x80152d38
    lwz     r3, 0x208(r31)
    bl      getStringPtr__10J2DTextBoxCFv
    lis     r4, 0x8038
    lwz     r8, 0x218(r31)
    addi    r5, r4, 0x7e44
    lwz     r9, 0x21c(r31)
    crxor   6, 6, 6
    addi    r6, r30, 0x0
    addi    r7, r30, 0x0
    li      r4, 0x5e
    bl      snprintf
    b       branch_0x80152d38

branch_0x80152d20:
    li      r0, 0x1
    stb     r0, 0xc(r6)
    li      r4, 0x0
    li      r0, 0xff
    stb     r4, 0xcc(r6)
    stb     r0, 0xcc(r3)
branch_0x80152d38:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl checkBoardControler__8TTalk2D2Fv
checkBoardControler__8TTalk2D2Fv: # 0x80152d50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    lbz     r0, 0x26a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80152eb4
    lbz     r0, 0x26d(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80152d94
    lwz     r3, 0x24c(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 14, 14
    bne-    branch_0x80152d94
    rlwinm. r0, r3, 0, 13, 13
    beq-    branch_0x80152ef4
branch_0x80152d94:
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80152dbc
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80152dbc:
    li      r3, 0x0
    stw     r3, 0x58(sp)
    li      r0, -0x258
    addi    r7, sp, 0x50
    stw     r3, 0x50(sp)
    addi    r6, sp, 0x58
    addi    r5, sp, 0x60
    stw     r3, 0x60(sp)
    li      r4, 0x3c
    stw     r0, 0x54(sp)
    stw     r3, 0x5c(sp)
    stw     r3, 0x64(sp)
    lwz     r3, 0x14(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r0, 0x270(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x80152ea8
    lwz     r0, 0x264(r31)
    cmplwi  r0, 0x1e
    bne-    branch_0x80152e38
    lwz     r3, gpMSound(r13)
    li      r4, 0x4851
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80152e80
    li      r3, 0x4851
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80152e80

branch_0x80152e38:
    lbz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80152e78
    lwz     r3, gpMSound(r13)
    li      r4, 0x481a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80152e6c
    li      r3, 0x481a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80152e6c:
    lwz     r3, gpMSound(r13)
    bl      talkModeOut__6MSoundFv
    b       branch_0x80152e80

branch_0x80152e78:
    lwz     r3, gpMSound(r13)
    bl      talkModeOut__6MSoundFv
branch_0x80152e80:
    lwz     r3, gpCamera(r13)
    bl      makeMtxForPrevTalk__15CPolarSubCameraFv
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      startAppearTelop__11TGCConsole2Fb
    lwz     r3, -0x60f0(r13)
    bl      finishPause__9RumbleMgrFv
    li      r0, 0x0
    stb     r0, 0x252(r31)
branch_0x80152ea8:
    li      r0, 0x6
    stw     r0, 0x248(r31)
    b       branch_0x80152ef4

branch_0x80152eb4:
    lwz     r3, 0x24c(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 13, 14
    beq-    branch_0x80152ef4
    lwz     r3, gpMSound(r13)
    li      r4, 0x481c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80152eec
    li      r3, 0x481c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80152eec:
    li      r0, 0x7
    stw     r0, 0x248(r31)
branch_0x80152ef4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl moveBoardWindow__8TTalk2D2Fv
moveBoardWindow__8TTalk2D2Fv: # 0x80152f08
    lwz     r4, 0x1c(r3)
    lbz     r6, 0xcc(r4)
    cmpwi   r6, 0xff
    bge-    branch_0x80152f50
    addi    r6, r6, 0x4
    cmpwi   r6, 0xff
    ble-    branch_0x80152f44
    lwz     r4, 0x24(r3)
    li      r5, 0x0
    li      r0, 0x1
    stb     r5, 0xcc(r4)
    li      r6, 0xff
    lwz     r4, 0x20(r3)
    stb     r5, 0xcc(r4)
    stb     r0, 0x26b(r3)
branch_0x80152f44:
    lwz     r3, 0x1c(r3)
    stb     r6, 0xcc(r3)
    blr

branch_0x80152f50:
    lbz     r0, 0x26a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80152f64
    lwz     r5, 0x24(r3)
    b       branch_0x80152f68

branch_0x80152f64:
    lwz     r5, 0x20(r3)
branch_0x80152f68:
    lbz     r0, 0x26b(r3)
    lbz     r4, 0xcc(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80152f94
    addi    r4, r4, 0x4
    cmpwi   r4, 0xff
    ble-    branch_0x80152fa8
    li      r0, 0x0
    stb     r0, 0x26b(r3)
    li      r4, 0xff
    b       branch_0x80152fa8

branch_0x80152f94:
    subic.  r4, r4, 0x4
    bge-    branch_0x80152fa8
    li      r0, 0x1
    stb     r0, 0x26b(r3)
    li      r4, 0x0
branch_0x80152fa8:
    stb     r4, 0xcc(r5)
    blr


.globl openNormalWindow__8TTalk2D2Fv
openNormalWindow__8TTalk2D2Fv: # 0x80152fb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stmw    r25, 0x44(sp)
    mr      r28, r3
    li      r31, 0x0
    lhz     r0, 0x2de(r3)
    cmplwi  r0, 0x2
    ble-    branch_0x80152ffc
    lwz     r3, 0x24c(r28)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x80152ffc
    li      r0, 0x1
    stb     r0, 0x26c(r28)
    li      r0, 0x80
    sth     r0, 0x340(r28)
branch_0x80152ffc:
    lfs     f30, -0x4b98(rtoc)
    li      r30, 0x1
    lfs     f31, -0x4bd0(rtoc)
    li      r29, 0x0
    li      r27, 0x0
    li      r26, 0x0
    b       branch_0x801530e8

branch_0x80153018:
    add     r3, r28, r26
    addi    r4, r3, 0x234
    lfs     f1, 0x234(r3)
    fcmpo   cr0, f1, f30
    ble-    branch_0x8015303c
    lfs     f0, 0x338(r28)
    li      r30, 0x0
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r4)
branch_0x8015303c:
    lfs     f0, 0x0(r4)
    fcmpo   cr0, f0, f31
    bge-    branch_0x8015307c
    cmpwi   r29, 0x0
    beq-    branch_0x8015307c
    subi    r0, r29, 0x1
    lwz     r3, 0x224(r3)
    mulli   r0, r0, 0x1e
    add     r0, r3, r0
    slwi    r3, r0, 2
    addi    r0, r3, 0x9c
    lwzx    r3, r28, r0
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8015307c
    stfs    f31, 0x0(r4)
branch_0x8015307c:
    addi    r25, r29, 0x224
    add     r25, r28, r25
    lbz     r0, 0x0(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x801530dc
    lfs     f1, 0x0(r4)
    lfs     f0, 0x33c(r28)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801530dc
    lwz     r3, gpMSound(r13)
    li      r4, 0x4827
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801530c8
    li      r3, 0x4827
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801530c8:
    li      r4, 0x1
    stb     r4, 0x0(r25)
    addi    r0, r27, 0x9c
    lwzx    r3, r28, r0
    stb     r4, 0xc(r3)
branch_0x801530dc:
    addi    r29, r29, 0x1
    addi    r27, r27, 0x78
    addi    r26, r26, 0x4
branch_0x801530e8:
    lwz     r0, 0x274(r28)
    cmpw    r29, r0
    ble+    branch_0x80153018
    clrlwi. r0, r30, 24
    beq-    branch_0x80153130
    li      r6, 0x0
    li      r3, 0x0
    li      r5, 0x1
    b       branch_0x80153120

branch_0x8015310c:
    addi    r0, r3, 0x3c
    lwzx    r4, r28, r0
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
    stb     r5, 0xc(r4)
branch_0x80153120:
    lwz     r0, 0x274(r28)
    cmpw    r6, r0
    ble+    branch_0x8015310c
    li      r31, 0x1
branch_0x80153130:
    li      r0, 0x3
    mtctr   r0
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
branch_0x80153144:
    add     r9, r28, r3
    lbz     r0, 0x224(r9)
    cmplwi  r0, 0x0
    beq-    branch_0x8015322c
    add     r12, r0, r5
    add     r8, r28, r4
    b       branch_0x80153218

branch_0x80153160:
    addi    r11, r6, 0x9c
    add     r11, r28, r11
    lwz     r10, 0x0(r11)
    lbz     r0, 0xc(r10)
    cmplwi  r0, 0x0
    beq-    branch_0x801531c0
    lbz     r11, 0xcc(r10)
    lha     r0, 0x340(r28)
    add     r11, r11, r0
    extsh   r7, r11
    cmpwi   r7, 0xff
    ble-    branch_0x80153194
    li      r7, 0xff
branch_0x80153194:
    extsh   r0, r11
    stb     r7, 0xcc(r10)
    cmpwi   r0, 0xff
    sth     r12, 0x2de(r28)
    blt-    branch_0x8015322c
    lbz     r7, 0x224(r9)
    addi    r12, r12, 0x1
    addi    r6, r6, 0x4
    addi    r0, r7, 0x1
    stb     r0, 0x224(r9)
    b       branch_0x8015321c

branch_0x801531c0:
    lha     r6, 0x2dc(r28)
    cmpwi   r6, 0x0
    bgt-    branch_0x8015320c
    lbz     r0, 0x26c(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x801531e4
    li      r0, 0x0
    sth     r0, 0x2dc(r28)
    b       branch_0x801531f0

branch_0x801531e4:
    addi    r0, r12, 0x281
    lbzx    r0, r28, r0
    sth     r0, 0x2dc(r28)
branch_0x801531f0:
    lwz     r6, 0x0(r11)
    li      r7, 0x1
    li      r0, 0x0
    stb     r7, 0xc(r6)
    lwz     r6, 0x0(r11)
    stb     r0, 0xcc(r6)
    b       branch_0x8015322c

branch_0x8015320c:
    subi    r0, r6, 0x1
    sth     r0, 0x2dc(r28)
    b       branch_0x8015322c

branch_0x80153218:
    slwi    r6, r12, 2
branch_0x8015321c:
    lbz     r7, 0x224(r9)
    lwz     r0, 0x228(r8)
    cmpw    r7, r0
    ble+    branch_0x80153160
branch_0x8015322c:
    addi    r3, r3, 0x1
    addi    r4, r4, 0x4
    addi    r5, r5, 0x1e
    bdnz+      branch_0x80153144
    mr      r3, r31
    lmw     r25, 0x44(sp)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl openBoardWindow__8TTalk2D2Fv
openBoardWindow__8TTalk2D2Fv: # 0x8015325c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    li      r30, 0x0
    lbz     r0, 0x29(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x801532ec
    bge-    branch_0x80153324
    cmpwi   r0, 0x0
    bge-    branch_0x80153294
    b       branch_0x80153324

branch_0x80153294:
    lwz     r3, 0x14(r31)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80153324
    li      r3, 0x0
    stw     r3, 0x14(sp)
    li      r0, 0x50
    addi    r7, sp, 0x14
    stw     r3, 0x1c(sp)
    addi    r6, sp, 0x1c
    addi    r5, sp, 0x24
    stw     r3, 0x24(sp)
    li      r4, 0x19
    stw     r3, 0x18(sp)
    stw     r0, 0x20(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x14(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lbz     r3, 0x29(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x29(r31)
    b       branch_0x80153324

branch_0x801532ec:
    lwz     r3, 0x14(r31)
    bl      update__10TBoundPaneFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80153324
    lwz     r3, 0x1c(r31)
    li      r4, 0x0
    li      r0, 0x1
    stb     r4, 0xcc(r3)
    li      r30, 0x1
    lwz     r3, 0x1c(r31)
    stb     r0, 0xc(r3)
    lbz     r3, 0x29(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x29(r31)
branch_0x80153324:
    lwz     r0, 0x3c(sp)
    mr      r3, r30
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl makeBoxLine__8TTalk2D2FScPc
makeBoxLine__8TTalk2D2FScPc: # 0x80153340
    mflr    r0
    extsb   r7, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x288(sp)
    stfd    f31, 0x280(sp)
    stfd    f30, 0x278(sp)
    stfd    f29, 0x270(sp)
    stfd    f28, 0x268(sp)
    stfd    f27, 0x260(sp)
    stfd    f26, 0x258(sp)
    stfd    f25, 0x250(sp)
    stfd    f24, 0x248(sp)
    stfd    f23, 0x240(sp)
    stfd    f22, 0x238(sp)
    stfd    f21, 0x230(sp)
    stfd    f20, 0x228(sp)
    stfd    f19, 0x220(sp)
    stfd    f18, 0x218(sp)
    stfd    f17, 0x210(sp)
    stfd    f16, 0x208(sp)
    stfd    f15, 0x200(sp)
    stfd    f14, 0x1f8(sp)
    stmw    r18, 0x1c0(sp)
    mr      r28, r3
    slwi    r19, r7, 2
    add     r21, r28, r19
    lis     r23, 0x4330
    mulli   r20, r7, 0x1e
    mr      r29, r5
    li      r31, 0x0
    li      r30, 0x0
    lha     r4, 0x220(r3)
    lwz     r3, 0x54(r21)
    lwz     r6, 0x48(r21)
    lwz     r0, 0x18(r3)
    addi    r6, r6, 0x14
    lfs     f30, -0x4bd8(rtoc)
    subf    r0, r4, r0
    lwz     r8, 0x4(r6)
    xoris   r27, r0, 0x8000
    lwz     r0, 0x0(r6)
    stw     r27, 0x19c(sp)
    xoris   r26, r8, 0x8000
    xoris   r24, r0, 0x8000
    lwz     r3, 0x60(r21)
    stw     r24, 0x1b4(sp)
    addi    r4, r3, 0x14
    lwz     r3, 0x1c(r3)
    stw     r23, 0x198(sp)
    lwz     r4, 0x4(r4)
    subi    r0, r3, 0xa
    stw     r26, 0x1a4(sp)
    xoris   r22, r0, 0x8000
    xoris   r25, r4, 0x8000
    stw     r23, 0x1b0(sp)
    lfd     f31, -0x4bc8(rtoc)
    lfd     f0, 0x198(sp)
    lfd     f1, 0x1b0(sp)
    fsubs   f0, f0, f31
    stw     r22, 0x1bc(sp)
    fsubs   f2, f1, f31
    lfs     f15, -0x4bd0(rtoc)
    stw     r23, 0x1a0(sp)
    lfd     f1, 0x1a0(sp)
    fmuls   f0, f0, f30
    stw     r25, 0x1ac(sp)
    fmadds  f3, f2, f15, f30
    fsubs   f1, f1, f31
    stw     r23, 0x1b8(sp)
    lfs     f14, -0x4b90(rtoc)
    lfd     f2, 0x1b8(sp)
    fmadds  f1, f1, f15, f0
    stw     r23, 0x1a8(sp)
    fsubs   f4, f2, f31
    lfs     f16, -0x4b88(rtoc)
    lfd     f0, 0x1a8(sp)
    stfd    f30, 0x140(sp)
    fsubs   f2, f0, f31
    lfd     f0, -0x4b70(rtoc)
    fmadds  f26, f4, f30, f3
    stfd    f30, 0x150(sp)
    fmadds  f27, f2, f30, f1
    stfd    f0, 0x130(sp)
    lfs     f0, -0x4b94(rtoc)
    stfd    f30, 0x160(sp)
    lfs     f21, -0x4b84(rtoc)
    stfd    f0, 0x138(sp)
    lfs     f0, -0x4ba0(rtoc)
    stfd    f30, 0x168(sp)
    stfd    f0, 0x148(sp)
    lfs     f0, -0x4b8c(rtoc)
    stfd    f30, 0x188(sp)
    stfd    f0, 0x158(sp)
    lfs     f0, -0x4b80(rtoc)
    stfd    f0, 0x170(sp)
    lfs     f0, -0x4b7c(rtoc)
    stfd    f0, 0x178(sp)
    lfs     f0, -0x4b78(rtoc)
    stfd    f0, 0x180(sp)
branch_0x801534cc:
    cmplwi  r29, 0x0
    add     r18, r30, r20
    beq-    branch_0x8015351c
    slwi    r3, r18, 2
    addi    r0, r3, 0x9c
    lwzx    r3, r28, r0
    bl      getStringPtr__10J2DTextBoxCFv
    add     r4, r29, r31
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x80
    blt-    branch_0x80153510
    lbz     r0, 0x1(r4)
    addi    r31, r31, 0x2
    stb     r0, 0x1(r3)
    b       branch_0x8015351c

branch_0x80153510:
    li      r0, 0x0
    stb     r0, 0x1(r3)
    addi    r31, r31, 0x1
branch_0x8015351c:
    slwi    r3, r18, 2
    addi    r18, r3, 0x9c
    add     r18, r28, r18
    lwz     r3, 0x0(r18)
    bl      getStringPtr__10J2DTextBoxCFv
    lbz     r3, 0x0(r3)
    extsb   r3, r3
    clrlwi  r0, r3, 16
    cmplwi  r0, 0x80
    blt-    branch_0x80153548
    mr      r3, r3
branch_0x80153548:
    clrlwi. r4, r3, 16
    beq-    branch_0x801537c8
    lwz     r3, gpSystemFont(r13)
    addi    r5, sp, 0x110
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x111(sp)
    stw     r22, 0x1a4(sp)
    lfd     f1, 0x130(sp)
    stw     r0, 0x19c(sp)
    lfs     f0, 0x94(r28)
    stw     r23, 0x198(sp)
    lfd     f2, 0x198(sp)
    stw     r27, 0x194(sp)
    fsubs   f3, f2, f1
    lfd     f1, 0x138(sp)
    stw     r23, 0x190(sp)
    fmadds  f1, f14, f3, f1
    stw     r24, 0x1ac(sp)
    lfd     f2, 0x190(sp)
    stw     r25, 0x1b4(sp)
    fmadds  f30, f0, f1, f30
    lfd     f0, 0x148(sp)
    fsubs   f8, f2, f31
    stw     r23, 0x1a0(sp)
    fsubs   f29, f15, f30
    fmuls   f19, f0, f30
    stw     r26, 0x1bc(sp)
    lfd     f0, 0x1a0(sp)
    fmuls   f7, f30, f30
    fsubs   f4, f0, f31
    stw     r23, 0x1a8(sp)
    fmuls   f5, f19, f29
    lfd     f0, 0x140(sp)
    fmuls   f6, f29, f29
    stw     r23, 0x1b0(sp)
    fmuls   f2, f0, f5
    lfd     f3, 0x1a8(sp)
    fmuls   f5, f8, f5
    stw     r23, 0x1b8(sp)
    lfd     f1, 0x1b0(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f3, f3, f31
    fsubs   f1, f1, f31
    fsubs   f0, f0, f31
    fmuls   f20, f4, f7
    fmadds  f2, f3, f6, f2
    fmuls   f22, f1, f7
    fmadds  f0, f0, f6, f5
    fadds   f25, f20, f2
    fadds   f24, f22, f0
    fsubs   f2, f25, f26
    fsubs   f1, f24, f27
    bl      atan2f
    lfd     f0, 0x150(sp)
    fabs    f1, f1
    fcmpo   cr0, f25, f0
    fmr     f28, f1
    ble-    branch_0x80153644
    lfd     f0, 0x158(sp)
    fmuls   f28, f28, f0
branch_0x80153644:
    fadds   f23, f26, f25
    fadds   f25, f27, f24
    fmr     f1, f28
    fmuls   f17, f16, f23
    fmuls   f18, f16, f25
    bl      cosf
    fmr     f24, f1
    fmr     f1, f28
    bl      sinf
    fneg    f0, f1
    fmuls   f2, f27, f24
    fmuls   f3, f21, f23
    fmuls   f0, f27, f0
    fmadds  f1, f26, f1, f2
    fmuls   f2, f21, f25
    fmadds  f0, f26, f24, f0
    fadds   f1, f18, f1
    fadds   f0, f17, f0
    fadds   f1, f1, f2
    lfd     f2, 0x160(sp)
    fadds   f0, f0, f3
    fcmpo   cr0, f0, f2
    ble-    branch_0x801536a8
    fmr     f2, f21
    b       branch_0x801536ac

branch_0x801536a8:
    lfs     f2, -0x4b88(rtoc)
branch_0x801536ac:
    fadds   f2, f0, f2
    lfd     f0, 0x168(sp)
    fcmpo   cr0, f1, f0
    fctiwz  f0, f2
    stfd    f0, 0x190(sp)
    lwz     r0, 0x194(sp)
    ble-    branch_0x801536d0
    lfs     f0, -0x4b84(rtoc)
    b       branch_0x801536d4

branch_0x801536d0:
    lfs     f0, -0x4b88(rtoc)
branch_0x801536d4:
    fadds   f0, f1, f0
    lwz     r3, 0x0(r18)
    extsh   r4, r0
    lwz     r12, 0x0(r3)
    fctiwz  f0, f0
    lwz     r12, 0xc(r12)
    stfd    f0, 0x190(sp)
    mtlr    r12
    lwz     r0, 0x194(sp)
    extsh   r0, r0
    subfic  r5, r0, -0x28
    blrl
    lwz     r3, 0x0(r18)
    li      r4, 0x4
    bl      setBasePosition__7J2DPaneF15J2DBasePosition
    lfd     f0, 0x170(sp)
    lwz     r3, 0x0(r18)
    fmuls   f1, f0, f28
    lfd     f0, 0x178(sp)
    fdivs   f0, f1, f0
    stfs    f0, 0xc0(r3)
    lwz     r3, 0x0(r18)
    lwz     r5, 0x30(r21)
    addic.  r4, r3, 0xd0
    beq-    branch_0x8015373c
    addi    r4, r4, 0xc
branch_0x8015373c:
    addi    r3, r5, 0xd0
    bl      append__10JSUPtrListFP10JSUPtrLink
    lfd     f0, 0x180(sp)
    fcmpo   cr0, f30, f0
    ble-    branch_0x80153768
    add     r3, r28, r19
    lwzu    r0, 0x228(r3)
    cmpw    r0, r30
    ble-    branch_0x801537c8
    stw     r30, 0x0(r3)
    b       branch_0x801537c8

branch_0x80153768:
    stw     r27, 0x1a4(sp)
    addi    r30, r30, 0x1
    fmuls   f1, f19, f29
    lfd     f0, 0x188(sp)
    stw     r23, 0x1a0(sp)
    fmuls   f2, f29, f29
    cmpwi   r30, 0x1e
    lfd     f3, 0x1a0(sp)
    fmuls   f0, f0, f1
    stw     r24, 0x194(sp)
    fsubs   f3, f3, f31
    stw     r26, 0x19c(sp)
    stw     r23, 0x190(sp)
    fmuls   f1, f3, f1
    stw     r23, 0x198(sp)
    lfd     f4, 0x190(sp)
    lfd     f3, 0x198(sp)
    fsubs   f4, f4, f31
    fsubs   f3, f3, f31
    fmadds  f4, f4, f2, f0
    fmadds  f0, f3, f2, f1
    fadds   f26, f20, f4
    fadds   f27, f22, f0
    blt+    branch_0x801534cc
branch_0x801537c8:
    lmw     r18, 0x1c0(sp)
    lwz     r0, 0x28c(sp)
    lfd     f31, 0x280(sp)
    lfd     f30, 0x278(sp)
    mtlr    r0
    lfd     f29, 0x270(sp)
    lfd     f28, 0x268(sp)
    lfd     f27, 0x260(sp)
    lfd     f26, 0x258(sp)
    lfd     f25, 0x250(sp)
    lfd     f24, 0x248(sp)
    lfd     f23, 0x240(sp)
    lfd     f22, 0x238(sp)
    lfd     f21, 0x230(sp)
    lfd     f20, 0x228(sp)
    lfd     f19, 0x220(sp)
    lfd     f18, 0x218(sp)
    lfd     f17, 0x210(sp)
    lfd     f16, 0x208(sp)
    lfd     f15, 0x200(sp)
    lfd     f14, 0x1f8(sp)
    addi    sp, sp, 0x288
    blr


.globl openTalkWindow__8TTalk2D2FP8TBaseNPC
openTalkWindow__8TTalk2D2FP8TBaseNPC: # 0x80153824
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x90(sp)
    beq-    branch_0x8015384c
    lwz     r3, gpCamera(r13)
    bl      makeMtxForTalk__15CPolarSubCameraFPC8TBaseNPC
branch_0x8015384c:
    lbz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801538b0
    li      r30, 0x0
    stw     r30, 0x70(sp)
    li      r3, 0x50
    li      r0, -0x320
    stw     r30, 0x78(sp)
    addi    r7, sp, 0x70
    addi    r6, sp, 0x78
    stw     r30, 0x80(sp)
    addi    r5, sp, 0x80
    li      r4, 0x3c
    stw     r3, 0x74(sp)
    stw     r3, 0x7c(sp)
    stw     r0, 0x84(sp)
    lwz     r3, 0x14(r31)
    bl      setPanePosition__10TBoundPaneFlRC8JUTPointRC8JUTPointRC8JUTPoint
    lwz     r3, 0x14(r31)
    bl      update__10TBoundPaneFv
    lwz     r3, 0x1c(r31)
    li      r0, 0x4
    stb     r30, 0xcc(r3)
    stw     r0, 0x248(r31)
    b       branch_0x801538b8

branch_0x801538b0:
    li      r0, 0x2
    stw     r0, 0x248(r31)
branch_0x801538b8:
    lwz     r3, 0x90(r31)
    li      r0, 0xff
    stb     r0, 0xcc(r3)
    lwz     r3, gpCamera(r13)
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0x2d
    beq-    branch_0x801538e4
    bge-    branch_0x80153900
    cmpwi   r0, 0xc
    beq-    branch_0x80153900
    b       branch_0x80153900

branch_0x801538e4:
    li      r0, 0xa0
    sth     r0, 0x330(r31)
    li      r3, 0x87
    li      r0, 0x14
    sth     r3, 0x332(r31)
    sth     r0, 0x334(r31)
    b       branch_0x80153918

branch_0x80153900:
    li      r0, 0x184
    sth     r0, 0x330(r31)
    li      r3, 0x73
    li      r0, -0x12
    sth     r3, 0x332(r31)
    sth     r0, 0x334(r31)
branch_0x80153918:
    lwz     r3, 0x90(r31)
    lha     r4, 0x330(r31)
    lwz     r12, 0x0(r3)
    lha     r5, 0x332(r31)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lha     r3, 0x334(r31)
    lis     r4, 0x4330
    lfd     f1, -0x4bc8(rtoc)
    li      r0, 0x1
    xoris   r3, r3, 0x8000
    stw     r3, 0x8c(sp)
    lwz     r3, 0x90(r31)
    stw     r4, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(r3)
    stb     r0, 0x250(r31)
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startDisappearTelop__11TGCConsole2Fv
    lwz     r3, gpMarDirector(r13)
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    lwz     r4, 0x3e4(r3)
    bl      startDisappearBalloon__11TGCConsole2FUlb
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startDisappearMario__11TGCConsole2Fv
    lwz     r0, 0x264(r31)
    cmplwi  r0, 0x1e
    bne-    branch_0x801539c8
    lwz     r3, gpMSound(r13)
    li      r4, 0x4848
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80153a18
    li      r3, 0x4848
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80153a18

branch_0x801539c8:
    lbz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80153a0c
    lwz     r3, gpMSound(r13)
    li      r4, 0x4819
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801539fc
    li      r3, 0x4819
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801539fc:
    lwz     r3, gpMSound(r13)
    li      r4, 0x0
    bl      talkModeIn__6MSoundFb
    b       branch_0x80153a18

branch_0x80153a0c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x1
    bl      talkModeIn__6MSoundFb
branch_0x80153a18:
    lwz     r3, -0x60f0(r13)
    bl      startPause__9RumbleMgrFv
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    addi    sp, sp, 0x98
    blr


.globl forceCloseTalk__8TTalk2D2Fv
forceCloseTalk__8TTalk2D2Fv: # 0x80153a38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, gpCamera(r13)
    bl      makeMtxForPrevTalk__15CPolarSubCameraFv
    lbz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80153a8c
    lwz     r3, gpMSound(r13)
    li      r4, 0x4851
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80153a94
    li      r3, 0x4851
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80153a94

branch_0x80153a8c:
    lwz     r3, gpMSound(r13)
    bl      talkModeOut__6MSoundFv
branch_0x80153a94:
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      startAppearTelop__11TGCConsole2Fb
    lwz     r0, 0x248(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x80153abc
    li      r0, 0x0
    stw     r0, 0x248(r31)
    b       branch_0x80153ac4

branch_0x80153abc:
    li      r0, 0x6
    stw     r0, 0x248(r31)
branch_0x80153ac4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setMessageID__8TTalk2D2FUlUl
setMessageID__8TTalk2D2FUlUl: # 0x80153ad8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r29, r3, 0x0
    addi    r30, r5, 0x0
    lwz     r6, gpMarDirector(r13)
    lwz     r31, 0xa0(r6)
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x80153d28
    li      r28, 0x1
    addi    r27, r28, 0x0
    addi    r3, r31, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153b30
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153b30
    li      r27, 0x0
branch_0x80153b30:
    clrlwi. r0, r27, 24
    bne-    branch_0x80153b6c
    li      r27, 0x1
    addi    r3, r31, 0x0
    bl      isSpecialMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153b60
    mr      r3, r31
    bl      isSpecialMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153b60
    li      r27, 0x0
branch_0x80153b60:
    clrlwi. r0, r27, 24
    bne-    branch_0x80153b6c
    li      r28, 0x0
branch_0x80153b6c:
    clrlwi. r0, r28, 24
    beq-    branch_0x80153be4
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153b94
    mr      r3, r31
    bl      isSpecialMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80153bbc
branch_0x80153b94:
    mr      r3, r31
    bl      isChild__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80153bb0
    li      r0, 0x31
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153bb0:
    li      r0, 0x2c
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153bbc:
    mr      r3, r31
    bl      isChild__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80153bd8
    li      r0, 0x2e
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153bd8:
    li      r0, 0x28
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153be4:
    li      r27, 0x1
    addi    r28, r27, 0x0
    addi    r3, r31, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153c10
    mr      r3, r31
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153c10
    li      r28, 0x0
branch_0x80153c10:
    clrlwi. r0, r28, 24
    bne-    branch_0x80153c4c
    li      r28, 0x1
    addi    r3, r31, 0x0
    bl      isSpecialMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153c40
    mr      r3, r31
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153c40
    li      r28, 0x0
branch_0x80153c40:
    clrlwi. r0, r28, 24
    bne-    branch_0x80153c4c
    li      r27, 0x0
branch_0x80153c4c:
    clrlwi. r0, r27, 24
    beq-    branch_0x80153cc4
    mr      r3, r31
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80153c74
    mr      r3, r31
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80153c9c
branch_0x80153c74:
    mr      r3, r31
    bl      isChild__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80153c90
    li      r0, 0x32
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153c90:
    li      r0, 0x2d
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153c9c:
    mr      r3, r31
    bl      isChild__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80153cb8
    li      r0, 0x2f
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153cb8:
    li      r0, 0x29
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153cc4:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x16
    bne-    branch_0x80153ce0
    li      r0, 0x2a
    stw     r0, 0x264(r29)
    b       branch_0x80153cf0

branch_0x80153ce0:
    cmplwi  r0, 0x10
    bne-    branch_0x80153cf0
    li      r0, 0x30
    stw     r0, 0x264(r29)
branch_0x80153cf0:
    li      r0, 0xa
    mtctr   r0
    li      r3, 0x0
branch_0x80153cfc:
    addi    r0, r3, 0x2e0
    lwzx    r0, r29, r0
    cmplw   r31, r0
    bne-    branch_0x80153d1c
    add     r3, r29, r3
    lwz     r0, 0x2e4(r3)
    stw     r0, 0x264(r29)
    b       branch_0x80153d2c

branch_0x80153d1c:
    addi    r3, r3, 0x8
    bdnz+      branch_0x80153cfc
    b       branch_0x80153d2c

branch_0x80153d28:
    stw     r4, 0x264(r29)
branch_0x80153d2c:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1d
    bne-    branch_0x80153d48
    li      r0, 0x1
    stb     r0, 0x28(r29)
    b       branch_0x80153d50

branch_0x80153d48:
    li      r0, 0x0
    stb     r0, 0x28(r29)
branch_0x80153d50:
    stw     r30, 0x270(r29)
    li      r4, 0x0
    li      r3, -0x1
    stw     r4, 0x278(r29)
    li      r0, 0x40
    stb     r3, 0x214(r29)
    stb     r4, 0x26a(r29)
    stw     r3, 0x27c(r29)
    stb     r4, 0x280(r29)
    stb     r4, 0x26c(r29)
    stb     r4, 0x26d(r29)
    stw     r4, 0x254(r29)
    stb     r4, 0x29(r29)
    sth     r0, 0x340(r29)
    lwz     r4, 0x264(r29)
    clrrwi. r0, r4, 16
    bne-    branch_0x80153d9c
    lwz     r28, 0x25c(r29)
    b       branch_0x80153da0

branch_0x80153d9c:
    lwz     r28, 0x258(r29)
branch_0x80153da0:
    lwz     r0, 0x4(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80153df0
    addi    r3, r28, 0x0
    clrlwi  r4, r4, 16
    bl      getMessageEntry__14TMessageLoaderFUl
    mr.     r5, r3
    bne-    branch_0x80153de0
    li      r0, 0x4
    stw     r0, 0x264(r29)
    lwz     r28, 0x25c(r29)
    lwz     r0, 0x264(r29)
    addi    r3, r28, 0x0
    clrlwi  r4, r0, 16
    bl      getMessageEntry__14TMessageLoaderFUl
    mr      r5, r3
branch_0x80153de0:
    lwz     r4, 0x4(r28)
    mr      r3, r29
    bl      setupTextBox__8TTalk2D2FPCvP12JMSMesgEntry
    b       branch_0x80153e20

branch_0x80153df0:
    li      r0, 0x3
    stw     r0, 0x264(r29)
    lwz     r28, 0x25c(r29)
    lwz     r0, 0x264(r29)
    lwz     r27, 0x4(r28)
    addi    r3, r28, 0x0
    clrlwi  r4, r0, 16
    bl      getMessageEntry__14TMessageLoaderFUl
    addi    r5, r3, 0x0
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    bl      setupTextBox__8TTalk2D2FPCvP12JMSMesgEntry
branch_0x80153e20:
    stw     r28, 0x260(r29)
    li      r0, 0x0
    sth     r0, 0x2dc(r29)
    lwz     r3, 0x254(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80153e94
    lbz     r4, 0x8(r3)
    lis     r3, 0x8038
    addi    r0, r3, 0x7af8
    slwi    r3, r4, 2
    add     r3, r0, r3
    lwz     r27, 0x0(r3)
    cmpwi   r27, -0x1
    beq-    branch_0x80153e94
    lwz     r3, gpMSound(r13)
    mr      r4, r27
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80153e94
    clrrwi. r0, r27, 31
    beq-    branch_0x80153e80
    mr      r3, r27
    bl      startBGM__5MSBgmFUl
    b       branch_0x80153e94

branch_0x80153e80:
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80153e94:
    lwz     r0, 0x248(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x80153eb4
    li      r0, 0x3
    stw     r0, 0x248(r29)
    li      r0, 0xff
    lwz     r3, 0x90(r29)
    stb     r0, 0xcc(r3)
branch_0x80153eb4:
    li      r0, 0x1
    stb     r0, 0x252(r29)
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl loadAfter__8TTalk2D2Fv
loadAfter__8TTalk2D2Fv: # 0x80153ed0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e8(sp)
    stfd    f31, 0x1e0(sp)
    stfd    f30, 0x1d8(sp)
    stfd    f29, 0x1d0(sp)
    stfd    f28, 0x1c8(sp)
    stmw    r24, 0x1a8(sp)
    mr      r28, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r3, 0x58(r28)
    lis     r6, 0x4330
    lwz     r5, 0x4c(r28)
    lha     r4, 0x220(r28)
    lwz     r0, 0x18(r3)
    addi    r5, r5, 0x14
    lwz     r3, 0x64(r28)
    subf    r0, r4, r0
    lwz     r8, 0x4(r5)
    xoris   r0, r0, 0x8000
    lwz     r4, 0x0(r5)
    addi    r7, r3, 0x14
    stw     r0, 0x184(sp)
    xoris   r5, r4, 0x8000
    lwz     r4, 0x1c(r3)
    stw     r6, 0x180(sp)
    xoris   r3, r8, 0x8000
    lwz     r8, 0x4(r7)
    subi    r4, r4, 0xa
    stw     r5, 0x19c(sp)
    xoris   r7, r4, 0x8000
    lfd     f1, -0x4bc8(rtoc)
    stw     r3, 0x18c(sp)
    xoris   r4, r8, 0x8000
    lfd     f0, 0x180(sp)
    stw     r6, 0x198(sp)
    lfs     f2, -0x4bd8(rtoc)
    fsubs   f3, f0, f1
    stw     r6, 0x188(sp)
    lfd     f0, 0x198(sp)
    fmr     f13, f2
    stw     r7, 0x1a4(sp)
    lfd     f4, 0x188(sp)
    fsubs   f6, f0, f1
    stw     r4, 0x194(sp)
    lfs     f0, -0x4bd0(rtoc)
    fsubs   f4, f4, f1
    stw     r6, 0x1a0(sp)
    fmuls   f3, f3, f2
    lfs     f5, -0x4ba8(rtoc)
    stw     r6, 0x190(sp)
    lfd     f7, 0x1a0(sp)
    fmadds  f8, f6, f0, f2
    lfd     f6, 0x190(sp)
    fsubs   f9, f7, f1
    fmadds  f4, f4, f0, f3
    lfs     f12, -0x4ba0(rtoc)
    fsubs   f7, f6, f1
    fmr     f6, f5
    fmadds  f3, f9, f2, f8
    fmadds  f4, f7, f2, f4
    lfs     f8, -0x4b84(rtoc)
    lfs     f7, -0x4b9c(rtoc)
    b       branch_0x801540a0

branch_0x80153fd0:
    stw     r0, 0x1a4(sp)
    fsubs   f11, f0, f5
    fmuls   f10, f12, f5
    stw     r6, 0x1a0(sp)
    fmuls   f28, f5, f5
    fmuls   f29, f11, f11
    stw     r3, 0x19c(sp)
    lfd     f9, 0x1a0(sp)
    fmuls   f30, f10, f11
    stw     r6, 0x198(sp)
    fsubs   f9, f9, f1
    stw     r5, 0x18c(sp)
    fmuls   f11, f13, f30
    lfd     f10, 0x198(sp)
    stw     r4, 0x194(sp)
    fsubs   f10, f10, f1
    stw     r6, 0x188(sp)
    fmuls   f9, f9, f30
    stw     r6, 0x190(sp)
    lfd     f31, 0x188(sp)
    fmadds  f9, f10, f29, f9
    stw     r7, 0x184(sp)
    lfd     f10, 0x190(sp)
    fsubs   f31, f31, f1
    stw     r6, 0x180(sp)
    fsubs   f10, f10, f1
    lfd     f30, 0x180(sp)
    fmadds  f11, f31, f29, f11
    fmadds  f10, f10, f28, f9
    fsubs   f9, f30, f1
    fsubs   f4, f10, f4
    fmadds  f9, f9, f28, f11
    fmr     f11, f10
    fmuls   f4, f4, f4
    fsubs   f3, f9, f3
    fmr     f10, f9
    fmadds  f9, f3, f3, f4
    fcmpo   cr0, f9, f13
    cror    2, 0, 2
    bne-    branch_0x80154074
    b       branch_0x80154090

branch_0x80154074:
    frsqrte f4, f9
    frsp    f4, f4
    fmuls   f3, f4, f4
    fmuls   f4, f8, f4
    fnmsubs  f3, f9, f3, f7
    fmuls   f3, f4, f3
    fmuls   f9, f9, f3
branch_0x80154090:
    fmr     f3, f10
    fmr     f4, f11
    fadds   f2, f2, f9
    fadds   f5, f5, f6
branch_0x801540a0:
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    beq+    branch_0x80153fd0
    fdivs   f0, f0, f2
    li      r0, 0x0
    addi    r30, sp, 0xfc
    li      r29, 0x0
    li      r27, 0x0
    stfs    f0, 0x94(r28)
    lwz     r3, 0x48(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x54(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x60(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x4c(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x58(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x64(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x50(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x5c(r28)
    stb     r0, 0xc(r3)
    lwz     r3, 0x68(r28)
    stb     r0, 0xc(r3)
branch_0x8015410c:
    li      r3, 0x128
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8015415c
    lwz     r5, gpSystemFont(r13)
    addi    r3, sp, 0xfc
    li      r4, 0x0
    lwz     r24, 0x48(r5)
    li      r5, 0x0
    li      r6, 0x14
    li      r7, 0x14
    bl      set__7JUTRectFiiii
    addi    r3, r25, 0x0
    addi    r5, r30, 0x0
    addi    r6, r24, 0x0
    li      r4, 0x0
    subi    r7, rtoc, 0x4b68
    li      r8, 0x2
    li      r9, 0x0
    bl      __ct__10J2DTextBoxFUlRC7JUTRectPC7ResFONTPCc18J2DTextBoxHBinding18J2DTextBoxVBinding
branch_0x8015415c:
    addi    r6, r27, 0x9c
    add     r6, r28, r6
    stw     r25, 0x0(r6)
    addi    r29, r29, 0x1
    li      r0, 0x14
    lwz     r5, 0x0(r6)
    li      r4, 0x18
    li      r3, -0x1
    stw     r0, 0x114(r5)
    li      r0, -0x100
    cmpwi   r29, 0x5a
    stw     r4, 0x118(r5)
    li      r31, 0x0
    addi    r27, r27, 0x4
    stw     r3, 0xec(sp)
    lwz     r3, 0xec(sp)
    stw     r0, 0xf4(sp)
    stw     r3, 0xf0(sp)
    lwz     r0, 0xf4(sp)
    lwz     r3, 0x0(r6)
    stw     r0, 0x120(r3)
    lwz     r0, 0xf0(sp)
    stw     r0, 0x11c(r3)
    lwz     r3, 0x0(r6)
    stb     r31, 0xc(r3)
    blt+    branch_0x8015410c
    lfs     f0, -0x4bd0(rtoc)
    li      r0, 0x1
    li      r4, 0x189
    stfs    f0, 0x234(r28)
    li      r5, 0x73
    lwz     r3, 0x6c(r28)
    stb     r31, 0xc(r3)
    lfs     f0, -0x4ba0(rtoc)
    stfs    f0, 0x238(r28)
    lwz     r3, 0x70(r28)
    stb     r31, 0xc(r3)
    lfs     f0, -0x4b9c(rtoc)
    stfs    f0, 0x23c(r28)
    lwz     r3, 0x74(r28)
    stb     r31, 0xc(r3)
    lwz     r3, 0x244(r28)
    stb     r0, 0x41(r3)
    lwz     r3, 0x244(r28)
    stb     r31, 0x40(r3)
    lwz     r3, 0x90(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x4b64(rtoc)
    li      r3, 0x5e
    lwz     r4, 0x90(r28)
    stfs    f0, 0xc0(r4)
    lwz     r4, 0x90(r28)
    lwz     r0, 0x14(r4)
    extsh   r0, r0
    sth     r0, 0x330(r28)
    lwz     r4, 0x90(r28)
    lwz     r0, 0x18(r4)
    extsh   r0, r0
    sth     r0, 0x332(r28)
    lwz     r4, 0x90(r28)
    lfs     f0, 0xc0(r4)
    fctiwz  f0, f0
    stfd    f0, 0x180(sp)
    lwz     r0, 0x184(sp)
    sth     r0, 0x334(r28)
    lwz     r4, 0x204(r28)
    stb     r31, 0xc(r4)
    bl      __nwa__FUl
    li      r0, 0xb
    mtctr   r0
    li      r5, 0x0
    li      r0, 0x20
branch_0x80154288:
    add     r4, r3, r5
    stb     r0, 0x0(r4)
    addi    r5, r5, 0x8
    stb     r0, 0x1(r4)
    stb     r0, 0x2(r4)
    stb     r0, 0x3(r4)
    stb     r0, 0x4(r4)
    stb     r0, 0x5(r4)
    stb     r0, 0x6(r4)
    stb     r0, 0x7(r4)
    bdnz+      branch_0x80154288
    subfic  r0, r5, 0x5d
    cmpwi   r5, 0x5d
    mtctr   r0
    add     r4, r3, r5
    li      r0, 0x20
    bge-    branch_0x801542d8
branch_0x801542cc:
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bdnz+      branch_0x801542cc
branch_0x801542d8:
    li      r0, 0x0
    crxor   6, 6, 6
    stb     r0, 0x5d(r3)
    mr      r4, r3
    lwz     r3, 0x208(r28)
    bl      setString__10J2DTextBoxFPCce
    lwz     r3, 0x25c(r28)
    li      r4, 0x3
    lwz     r24, 0x4(r3)
    bl      getMessageEntry__14TMessageLoaderFUl
    addi    r5, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r24, 0x0
    bl      setupTextBox__8TTalk2D2FPCvP12JMSMesgEntry
    lwz     r0, 0x25c(r28)
    lis     r4, 0x8038
    lis     r3, 0x8038
    stw     r0, 0x260(r28)
    addi    r5, r4, 0x7d24
    addi    r4, r3, 0x7d4c
    lwz     r3, 0x0(r5)
    addi    r26, sp, 0x134
    lwz     r0, 0x4(r5)
    addi    r27, sp, 0x10c
    li      r29, 0x0
    stw     r3, 0x134(sp)
    li      r30, 0x0
    li      r31, 0x0
    stw     r0, 0x138(sp)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x13c(sp)
    stw     r0, 0x140(sp)
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r3, 0x144(sp)
    stw     r0, 0x148(sp)
    lwz     r3, 0x18(r5)
    lwz     r0, 0x1c(r5)
    stw     r3, 0x14c(sp)
    stw     r0, 0x150(sp)
    lwz     r3, 0x20(r5)
    lwz     r0, 0x24(r5)
    stw     r3, 0x154(sp)
    stw     r0, 0x158(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x10c(sp)
    stw     r0, 0x110(sp)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x11c(sp)
    stw     r0, 0x120(sp)
    lwz     r3, 0x18(r4)
    lwz     r0, 0x1c(r4)
    stw     r3, 0x124(sp)
    stw     r0, 0x128(sp)
    lwz     r3, 0x20(r4)
    lwz     r0, 0x24(r4)
    stw     r3, 0x12c(sp)
    stw     r0, 0x130(sp)
branch_0x801543dc:
    lwz     r3, -0x5db8(r13)
    lwzx    r25, r26, r31
    lwz     r24, 0x4(r3)
    mr      r3, r25
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r24)
    addi    r4, r3, 0x0
    addi    r3, r24, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r25
    mtlr    r12
    blrl
    add     r4, r28, r30
    stw     r3, 0x2e0(r4)
    addi    r29, r29, 0x1
    cmpwi   r29, 0xa
    lwzx    r0, r27, r31
    addi    r30, r30, 0x8
    addi    r31, r31, 0x4
    stw     r0, 0x2e4(r4)
    blt+    branch_0x801543dc
    lmw     r24, 0x1a8(sp)
    lwz     r0, 0x1ec(sp)
    lfd     f31, 0x1e0(sp)
    lfd     f30, 0x1d8(sp)
    mtlr    r0
    lfd     f29, 0x1d0(sp)
    lfd     f28, 0x1c8(sp)
    addi    sp, sp, 0x1e8
    blr


.globl load__8TTalk2D2FR20JSUMemoryInputStream
load__8TTalk2D2FR20JSUMemoryInputStream: # 0x80154454
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r31, r5, 0x7a18
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    subi    r3, rtoc, 0x4b60
    bl      getVolume__13JKRFileLoaderFPCc
    addi    r30, r3, 0x0
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801544a0
    addi    r3, r25, 0x0
    addi    r5, r30, 0x0
    addi    r4, r31, 0x46c
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x801544a0:
    stw     r25, 0x2c(r29)
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
branch_0x801544b0:
    lwz     r3, 0x2c(r29)
    addis   r4, r25, 0x6d65
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    add     r26, r29, r27
    stw     r3, 0x30(r26)
    addis   r4, r25, 0x6261
    addi    r4, r4, 0x6331
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x3c(r26)
    addis   r4, r28, 0x66
    addi    r4, r4, 0x5f31
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x48(r26)
    addis   r4, r28, 0x66
    addi    r4, r4, 0x5f32
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x54(r26)
    addis   r4, r28, 0x66
    addi    r4, r4, 0x5f33
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x60(r26)
    addis   r4, r25, 0x6375
    addi    r4, r4, 0x5f31
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x6c(r26)
    addis   r4, r25, 0x6363
    addi    r4, r4, 0x5f31
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x78(r26)
    addis   r4, r25, 0x6373
    addi    r4, r4, 0x5f31
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    stw     r3, 0x84(r26)
    cmpwi   r25, 0x3
    addi    r28, r28, 0x3
    addi    r27, r27, 0x4
    blt+    branch_0x801544b0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801545fc
    addi    r28, r25, 0x0
    addi    r3, r31, 0x47c
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r27, 0x0
    stw     r27, 0x28(r25)
    addi    r4, r3, 0x0
    mr      r3, r28
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x50(r25)
branch_0x801545fc:
    stw     r25, 0x244(r29)
    lis     r3, 0x6d65
    addi    r4, r3, 0x5f30
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x90(r29)
    li      r3, 0xbfc
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80154638
    mr      r3, r25
    bl      __ct__14TMessageLoaderFv
branch_0x80154638:
    stw     r25, 0x258(r29)
    addi    r4, r31, 0x49c
    lwz     r3, 0x258(r29)
    bl      loadMessageData__14TMessageLoaderFPCc
    li      r3, 0xbfc
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80154660
    mr      r3, r25
    bl      __ct__14TMessageLoaderFv
branch_0x80154660:
    stw     r25, 0x25c(r29)
    addi    r4, r31, 0x4b4
    lwz     r3, 0x25c(r29)
    bl      loadMessageData__14TMessageLoaderFPCc
    lwz     r3, 0x2c(r29)
    lis     r4, 0x6d65
    addi    r4, r4, 0x5f34
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x204(r29)
    lis     r3, 0x736c
    addi    r4, r3, 0x6374
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x208(r29)
    lwz     r3, 0x208(r29)
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    li      r25, 0x0
    li      r28, 0x0
branch_0x801546c4:
    lwz     r3, 0x2c(r29)
    addis   r4, r25, 0x7363
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    add     r26, r29, r28
    stw     r3, 0x20c(r26)
    li      r3, 0x11
    bl      __nwa__FUl
    addi    r25, r25, 0x1
    stw     r3, 0x218(r26)
    cmpwi   r25, 0x2
    addi    r28, r28, 0x4
    blt+    branch_0x801546c4
    li      r3, 0xf4
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80154724
    addi    r3, r25, 0x0
    addi    r5, r30, 0x0
    addi    r4, r31, 0x4d0
    bl      __ct__12J2DSetScreenFPCcP10JKRArchive
branch_0x80154724:
    stw     r25, 0x10(r29)
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8015474c
    lis     r5, 0x6d62
    lwz     r4, 0x10(r29)
    addi    r3, r25, 0x0
    addi    r5, r5, 0x5f30
    bl      __ct__10TBoundPaneFP9J2DScreenUl
branch_0x8015474c:
    stw     r25, 0x14(r29)
    lis     r3, 0x7465
    addi    r4, r3, 0x7874
    lwz     r3, 0x10(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x18(r29)
    li      r4, 0x200
    lwz     r3, 0x18(r29)
    bl      SMSMakeTextBuffer__FP10J2DTextBoxi
    lwz     r3, 0x18(r29)
    lwz     r4, gpSystemFont(r13)
    bl      setFont__10J2DTextBoxFP7JUTFont
    lwz     r3, 0x10(r29)
    lis     r4, 0x6375
    addi    r4, r4, 0x5f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1c(r29)
    lis     r3, 0x6363
    addi    r4, r3, 0x5f31
    lwz     r3, 0x10(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x20(r29)
    lis     r3, 0x6373
    addi    r4, r3, 0x5f31
    lwz     r3, 0x10(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    stw     r3, 0x24(r29)
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__8TTalk2D2FPCc
__ct__8TTalk2D2FPCc: # 0x801547fc
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r31)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r31)
    li      r8, 0x0
    lis     r3, 0x803c
    sth     r8, 0xc(r31)
    addi    r3, r3, 0x3c8
    li      r0, 0xb
    stw     r3, 0x0(r31)
    mtctr   r0
    li      r7, -0x1
    stb     r8, 0x28(r31)
    li      r6, 0x1a
    li      r5, 0x1
    stw     r8, 0x2c(r31)
    li      r4, 0x3
    li      r0, 0x64
    stw     r8, 0x90(r31)
    addi    r3, r8, 0x0
    li      r9, 0x0
    lfs     f0, -0x4bd8(rtoc)
    stfs    f0, 0x94(r31)
    stb     r7, 0x214(r31)
    sth     r6, 0x220(r31)
    sth     r8, 0x222(r31)
    stw     r8, 0x248(r31)
    stw     r8, 0x24c(r31)
    stb     r5, 0x250(r31)
    stb     r8, 0x251(r31)
    stb     r8, 0x252(r31)
    stw     r8, 0x254(r31)
    stw     r4, 0x264(r31)
    stb     r8, 0x26a(r31)
    stb     r8, 0x26b(r31)
    stb     r8, 0x26c(r31)
    stb     r8, 0x26d(r31)
    stw     r5, 0x270(r31)
    stw     r8, 0x274(r31)
    stw     r8, 0x278(r31)
    stw     r7, 0x27c(r31)
    stb     r8, 0x280(r31)
    sth     r8, 0x2dc(r31)
    sth     r8, 0x330(r31)
    sth     r8, 0x332(r31)
    sth     r8, 0x334(r31)
    lfs     f0, -0x4b58(rtoc)
    stfs    f0, 0x338(r31)
    lfs     f0, -0x4bd0(rtoc)
    stfs    f0, 0x33c(r31)
    sth     r0, 0x340(r31)
    stw     r31, TalkManager(r13)
branch_0x801548f8:
    add     r4, r31, r3
    stw     r8, 0x9c(r4)
    addi    r9, r9, 0x8
    addi    r3, r3, 0x20
    stw     r8, 0xa0(r4)
    stw     r8, 0xa4(r4)
    stw     r8, 0xa8(r4)
    stw     r8, 0xac(r4)
    stw     r8, 0xb0(r4)
    stw     r8, 0xb4(r4)
    stw     r8, 0xb8(r4)
    bdnz+      branch_0x801548f8
    subfic  r0, r9, 0x5a
    cmpwi   r9, 0x5a
    mtctr   r0
    slwi    r3, r9, 2
    li      r4, 0x0
    bge-    branch_0x80154950
branch_0x80154940:
    addi    r0, r3, 0x9c
    stwx    r4, r31, r0
    addi    r3, r3, 0x4
    bdnz+      branch_0x80154940
branch_0x80154950:
    li      r0, 0x0
    stb     r0, 0x224(r31)
    mr      r3, r31
    stw     r0, 0x6c(r31)
    stw     r0, 0x78(r31)
    stw     r0, 0x228(r31)
    stb     r0, 0x225(r31)
    stw     r0, 0x70(r31)
    stw     r0, 0x7c(r31)
    stw     r0, 0x22c(r31)
    stb     r0, 0x226(r31)
    stw     r0, 0x74(r31)
    stw     r0, 0x80(r31)
    stw     r0, 0x230(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __sinit_Talk2D2_cpp
__sinit_Talk2D2_cpp: # 0x8015499c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x3ea8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801549e4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801549e4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80154a14
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80154a14:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80154a44
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80154a44:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80154a74
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80154a74:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80154aa4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80154aa4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80154ad4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80154ad4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80154b04
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80154b04:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80154b34
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80154b34:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80154b64
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80154b64:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80154b94
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80154b94:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80154bc4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80154bc4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80154bf4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80154bf4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80154c24
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80154c24:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80154c54
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80154c54:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80154c84
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80154c84:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

