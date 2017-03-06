
.globl __dt__14TScreenTextureFv
__dt__14TScreenTextureFv: # 0x8022d12c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022d184
    lis     r3, 0x803e
    subi    r0, r3, 0x4f78
    stw     r0, 0x0(r30)
    beq-    branch_0x8022d174
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022d174:
    extsh.  r0, r31
    ble-    branch_0x8022d184
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022d184:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__14TScreenTextureFUlPQ26JDrama9TGraphics
perform__14TScreenTextureFUlPQ26JDrama9TGraphics: # 0x8022d1a0
    blr


.globl SMS_FillScreenAlpha__FUc
SMS_FillScreenAlpha__FUc: # 0x8022d1a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0xc
    bl      PSMTXIdentity
    addi    r3, sp, 0xc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
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
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    addi    r4, r31, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f2, -0x16b0(rtoc)
    lis     r4, 0xcc01
    lfs     f1, -0x16ac(rtoc)
    li      r3, 0x1
    stfs    f2, -0x8000(r4)
    lfs     f0, -0x16a8(rtoc)
    stfs    f1, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    stfs    f0, -0x8000(r4)
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl replace__14TScreenTextureFP12J3DModelDataPCc
replace__14TScreenTextureFP12J3DModelDataPCc: # 0x8022d360
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    li      r27, 0x0
    li      r31, 0x0
    b       branch_0x8022d448

branch_0x8022d388:
    lwz     r3, 0xa8(r29)
    mr      r4, r31
    bl      getName__10JUTNameTabCFUs
    mr      r4, r30
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8022d444
    lwz     r3, 0x10(r28)
    clrlslwi  r8, r31, 16, 5
    lwz     r7, 0xac(r29)
    li      r4, 0x20
    lwz     r6, 0x20(r3)
    lwz     r5, 0x4(r7)
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    add     r5, r5, r8
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r3, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r3, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r0, 0x4(r7)
    add     r3, r0, r8
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r0, 0x4(r7)
    add     r3, r0, r8
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r29)
    lwz     r0, 0x4(r3)
    add     r3, r0, r8
    bl      DCFlushRange
    li      r27, 0x1
branch_0x8022d444:
    addi    r31, r31, 0x1
branch_0x8022d448:
    lwz     r3, 0xac(r29)
    clrlwi  r4, r31, 16
    lhz     r0, 0x0(r3)
    cmplw   r4, r0
    blt+    branch_0x8022d388
    mr      r3, r27
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl load__14TScreenTextureFR20JSUMemoryInputStream
load__14TScreenTextureFR20JSUMemoryInputStream: # 0x8022d474
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8022d4d4
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    srawi   r31, r0, 1
    addze   r31, r31
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    srawi   r4, r0, 1
    addze   r4, r4
    addi    r3, r29, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x4
    bl      __ct__10JUTTextureFii9_GXTexFmt
branch_0x8022d4d4:
    stw     r29, 0x10(r30)
    stw     r30, -0x6104(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl perform__12TAfterEffectFUlPQ26JDrama9TGraphics
perform__12TAfterEffectFUlPQ26JDrama9TGraphics: # 0x8022d4f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stfd    f29, 0x88(sp)
    stfd    f28, 0x80(sp)
    stfd    f27, 0x78(sp)
    stfd    f26, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x60(sp)
    mr      r28, r3
    lbz     r3, 0x14(r3)
    clrlwi. r0, r3, 31
    beq-    branch_0x8022dc60
    rlwinm. r0, r4, 0, 27, 27
    beq-    branch_0x8022dc60
    lbz     r0, 0x15(r28)
    cmpwi   r0, 0x2
    beq-    branch_0x8022d5ac
    bge-    branch_0x8022d5c0
    cmpwi   r0, 0x0
    beq-    branch_0x8022d568
    b       branch_0x8022d5c0


.incbin "./baserom/code/Text_0x80005600.bin", 0x227f64, 0x8022d568 - 0x8022d564
branch_0x8022d568:
    rlwinm  r0, r3, 0, 31, 29
    stb     r0, 0x14(r28)
    li      r0, 0xff
    lbz     r3, 0x19(r28)
    stb     r3, 0x1b(r28)
    lbz     r3, 0x1a(r28)
    stb     r3, 0x1c(r28)
    stb     r0, 0x16(r28)
    stb     r0, 0x17(r28)
    stb     r0, 0x18(r28)
    lfs     f0, -0x16a4(rtoc)
    stfs    f0, 0x28(r28)
    stfs    f0, 0x2c(r28)
    lfs     f0, -0x16a0(rtoc)
    stfs    f0, 0x30(r28)
    stfs    f0, 0x34(r28)
    b       branch_0x8022d5c0

branch_0x8022d5ac:
    mr      r3, r28
    bl      calcDashBlurValue__12TAfterEffectFv
    lbz     r0, 0x14(r28)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x14(r28)
branch_0x8022d5c0:
    li      r31, 0x0
    lfd     f3, -0x1690(rtoc)
    stb     r31, 0x40(sp)
    lis     r3, 0x4330
    addi    r30, r29, 0x54
    stb     r31, 0x41(sp)
    stb     r31, 0x42(sp)
    stb     r31, 0x43(sp)
    lbz     r0, 0x1b(r28)
    lfs     f1, 0x20(r28)
    stw     r0, 0x5c(sp)
    lfs     f2, 0x48(r28)
    stw     r3, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f3
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x20(r28)
    lbz     r0, 0x1c(r28)
    lfs     f1, 0x24(r28)
    stw     r0, 0x54(sp)
    lfs     f2, 0x48(r28)
    stw     r3, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f3
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x24(r28)
    lfs     f0, 0x28(r28)
    lfs     f1, 0x38(r28)
    lfs     f2, 0x48(r28)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x38(r28)
    lfs     f0, 0x2c(r28)
    lfs     f1, 0x3c(r28)
    lfs     f2, 0x48(r28)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x3c(r28)
    lfs     f0, 0x30(r28)
    lfs     f1, 0x40(r28)
    lfs     f2, 0x48(r28)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x40(r28)
    lfs     f0, 0x34(r28)
    lfs     f1, 0x44(r28)
    lfs     f2, 0x48(r28)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x44(r28)
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
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, r29, 0xb4
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x1
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
    lwz     r3, 0x10(r28)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r0, 0x40(sp)
    addi    r4, sp, 0x38
    li      r3, 0x1
    stw     r0, 0x38(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xa
    li      r6, 0x8
    li      r7, 0x2
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x5
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x1
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    lfs     f1, -0x1698(rtoc)
    li      r3, 0xa0
    lfs     f2, 0x40(r28)
    li      r4, 0x0
    lfs     f5, -0x169c(rtoc)
    lfs     f8, 0x44(r28)
    li      r5, 0x8
    lfs     f0, 0xe8(r29)
    fmadds  f4, f1, f2, f5
    lfs     f6, 0x38(r28)
    fmadds  f3, f5, f2, f5
    lfs     f7, 0x3c(r28)
    fmadds  f2, f1, f8, f5
    fmadds  f1, f5, f8, f5
    fneg    f0, f0
    fadds   f30, f4, f6
    fadds   f31, f3, f6
    fctiwz  f0, f0
    fadds   f28, f2, f7
    fadds   f29, f1, f7
    fadds   f1, f30, f31
    stfd    f0, 0x48(sp)
    fadds   f0, f28, f29
    lwz     r29, 0x4c(sp)
    fmuls   f27, f5, f1
    fmuls   f26, f5, f0
    bl      GXBegin
    lwz     r5, 0x4(r30)
    lis     r3, 0xcc01
    lwz     r0, 0xc(r30)
    lwz     r4, 0x0(r30)
    add     r5, r5, r0
    lwz     r0, 0x8(r30)
    srawi   r5, r5, 1
    addze   r5, r5
    add     r0, r4, r0
    srawi   r0, r0, 1
    addze   r0, r0
    extsh   r0, r0
    sth     r0, -0x8000(r3)
    extsh   r0, r5
    sth     r0, -0x8000(r3)
    sth     r29, -0x8000(r3)
    lbz     r0, 0x14(r28)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8022d924
    li      r31, 0x1
branch_0x8022d924:
    cmpwi   r31, 0x0
    beq-    branch_0x8022d960
    lfs     f0, 0x24(r28)
    lis     r3, 0xcc01
    lbz     r5, 0x18(r28)
    fctiwz  f0, f0
    lbz     r4, 0x17(r28)
    lbz     r0, 0x16(r28)
    stb     r0, -0x8000(r3)
    stfd    f0, 0x48(sp)
    stb     r4, -0x8000(r3)
    lwz     r0, 0x4c(sp)
    stb     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    b       branch_0x8022d990

branch_0x8022d960:
    lfs     f0, 0x20(r28)
    lis     r3, 0xcc01
    lbz     r5, 0x18(r28)
    fctiwz  f0, f0
    lbz     r4, 0x17(r28)
    lbz     r0, 0x16(r28)
    stb     r0, -0x8000(r3)
    stfd    f0, 0x48(sp)
    stb     r4, -0x8000(r3)
    lwz     r0, 0x4c(sp)
    stb     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
branch_0x8022d990:
    lis     r6, 0xcc01
    stfs    f27, -0x8000(r6)
    stfs    f26, -0x8000(r6)
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    extsh   r4, r5
    sth     r4, -0x8000(r6)
    extsh   r0, r0
    sth     r0, -0x8000(r6)
    sth     r29, -0x8000(r6)
    lfs     f0, 0x24(r28)
    lbz     r8, 0x18(r28)
    fctiwz  f0, f0
    lbz     r7, 0x17(r28)
    lbz     r3, 0x16(r28)
    stb     r3, -0x8000(r6)
    stfd    f0, 0x48(sp)
    stb     r7, -0x8000(r6)
    lwz     r0, 0x4c(sp)
    stb     r8, -0x8000(r6)
    stb     r0, -0x8000(r6)
    stfs    f31, -0x8000(r6)
    stfs    f28, -0x8000(r6)
    lwz     r0, 0xc(r30)
    stfd    f0, 0x50(sp)
    extsh   r9, r0
    sth     r4, -0x8000(r6)
    lwz     r0, 0x54(sp)
    sth     r9, -0x8000(r6)
    sth     r29, -0x8000(r6)
    stb     r3, -0x8000(r6)
    stb     r7, -0x8000(r6)
    stb     r8, -0x8000(r6)
    stb     r0, -0x8000(r6)
    stfs    f31, -0x8000(r6)
    stfs    f29, -0x8000(r6)
    lwz     r0, 0x0(r30)
    add     r0, r0, r5
    srawi   r0, r0, 1
    addze   r0, r0
    extsh   r0, r0
    sth     r0, -0x8000(r6)
    sth     r9, -0x8000(r6)
    sth     r29, -0x8000(r6)
    lbz     r0, 0x14(r28)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8022da54
    li      r0, 0x1
    b       branch_0x8022da58

branch_0x8022da54:
    li      r0, 0x0
branch_0x8022da58:
    cmpwi   r0, 0x0
    beq-    branch_0x8022da94
    lfs     f0, 0x24(r28)
    lis     r3, 0xcc01
    lbz     r5, 0x18(r28)
    fctiwz  f0, f0
    lbz     r4, 0x17(r28)
    lbz     r0, 0x16(r28)
    stb     r0, -0x8000(r3)
    stfd    f0, 0x48(sp)
    stb     r4, -0x8000(r3)
    lwz     r0, 0x4c(sp)
    stb     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    b       branch_0x8022dac4

branch_0x8022da94:
    lfs     f0, 0x20(r28)
    lis     r3, 0xcc01
    lbz     r5, 0x18(r28)
    fctiwz  f0, f0
    lbz     r4, 0x17(r28)
    lbz     r0, 0x16(r28)
    stb     r0, -0x8000(r3)
    stfd    f0, 0x48(sp)
    stb     r4, -0x8000(r3)
    lwz     r0, 0x4c(sp)
    stb     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
branch_0x8022dac4:
    lis     r6, 0xcc01
    stfs    f27, -0x8000(r6)
    stfs    f29, -0x8000(r6)
    lwz     r5, 0x0(r30)
    lwz     r0, 0xc(r30)
    extsh   r4, r5
    sth     r4, -0x8000(r6)
    extsh   r0, r0
    sth     r0, -0x8000(r6)
    sth     r29, -0x8000(r6)
    lfs     f0, 0x24(r28)
    lbz     r8, 0x18(r28)
    fctiwz  f0, f0
    lbz     r7, 0x17(r28)
    lbz     r3, 0x16(r28)
    stb     r3, -0x8000(r6)
    stfd    f0, 0x48(sp)
    stb     r7, -0x8000(r6)
    lwz     r0, 0x4c(sp)
    stb     r8, -0x8000(r6)
    stb     r0, -0x8000(r6)
    stfs    f30, -0x8000(r6)
    stfs    f29, -0x8000(r6)
    lwz     r0, 0x4(r30)
    stfd    f0, 0x50(sp)
    extsh   r9, r0
    sth     r4, -0x8000(r6)
    lwz     r0, 0x54(sp)
    sth     r9, -0x8000(r6)
    sth     r29, -0x8000(r6)
    stb     r3, -0x8000(r6)
    stb     r7, -0x8000(r6)
    stb     r8, -0x8000(r6)
    stb     r0, -0x8000(r6)
    stfs    f30, -0x8000(r6)
    stfs    f28, -0x8000(r6)
    lwz     r0, 0x8(r30)
    add     r0, r5, r0
    srawi   r0, r0, 1
    addze   r0, r0
    extsh   r0, r0
    sth     r0, -0x8000(r6)
    sth     r9, -0x8000(r6)
    sth     r29, -0x8000(r6)
    lbz     r0, 0x14(r28)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8022db88
    li      r0, 0x1
    b       branch_0x8022db8c

branch_0x8022db88:
    li      r0, 0x0
branch_0x8022db8c:
    cmpwi   r0, 0x0
    beq-    branch_0x8022dbc8
    lfs     f0, 0x24(r28)
    lis     r3, 0xcc01
    lbz     r5, 0x18(r28)
    fctiwz  f0, f0
    lbz     r4, 0x17(r28)
    lbz     r0, 0x16(r28)
    stb     r0, -0x8000(r3)
    stfd    f0, 0x48(sp)
    stb     r4, -0x8000(r3)
    lwz     r0, 0x4c(sp)
    stb     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
    b       branch_0x8022dbf8

branch_0x8022dbc8:
    lfs     f0, 0x20(r28)
    lis     r3, 0xcc01
    lbz     r5, 0x18(r28)
    fctiwz  f0, f0
    lbz     r4, 0x17(r28)
    lbz     r0, 0x16(r28)
    stb     r0, -0x8000(r3)
    stfd    f0, 0x48(sp)
    stb     r4, -0x8000(r3)
    lwz     r0, 0x4c(sp)
    stb     r5, -0x8000(r3)
    stb     r0, -0x8000(r3)
branch_0x8022dbf8:
    lis     r4, 0xcc01
    stfs    f27, -0x8000(r4)
    stfs    f28, -0x8000(r4)
    lwz     r0, 0x8(r30)
    lwz     r3, 0x4(r30)
    extsh   r0, r0
    sth     r0, -0x8000(r4)
    extsh   r0, r3
    sth     r0, -0x8000(r4)
    sth     r29, -0x8000(r4)
    lfs     f0, 0x24(r28)
    lbz     r5, 0x18(r28)
    fctiwz  f0, f0
    lbz     r3, 0x17(r28)
    lbz     r0, 0x16(r28)
    stb     r0, -0x8000(r4)
    stfd    f0, 0x48(sp)
    stb     r3, -0x8000(r4)
    lwz     r0, 0x4c(sp)
    stb     r5, -0x8000(r4)
    stb     r0, -0x8000(r4)
    stfs    f31, -0x8000(r4)
    stfs    f28, -0x8000(r4)
    lbz     r0, 0x14(r28)
    rlwinm  r0, r0, 0, 30, 28
    stb     r0, 0x14(r28)
branch_0x8022dc60:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lfd     f29, 0x88(sp)
    lfd     f28, 0x80(sp)
    lfd     f27, 0x78(sp)
    lfd     f26, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0xa0
    blr


.globl calcDashBlurValue__12TAfterEffectFv
calcDashBlurValue__12TAfterEffectFv: # 0x8022dc98
    lfs     f1, 0x50(r3)
    lfs     f0, -0x16a4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8022dd20
    lfs     f0, 0x5c(r3)
    lfs     f2, -0x169c(rtoc)
    fmuls   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x28(r3)
    lfs     f1, 0x60(r3)
    lfs     f0, 0x50(r3)
    fneg    f1, f1
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x2c(r3)
    lfs     f1, 0x64(r3)
    lfs     f0, 0x50(r3)
    lfs     f2, -0x16a0(rtoc)
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x30(r3)
    lfs     f1, 0x64(r3)
    lfs     f0, 0x50(r3)
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x34(r3)
    lfs     f1, 0x50(r3)
    lfs     f0, 0x54(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(r3)
    lbz     r0, 0x59(r3)
    stb     r0, 0x58(r3)
    lbz     r0, 0x14(r3)
    ori     r0, r0, 0x4
    stb     r0, 0x14(r3)
    blr

branch_0x8022dd20:
    stfs    f0, 0x50(r3)
    lbz     r4, 0x58(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8022dd5c
    subi    r0, r4, 0x1
    stb     r0, 0x58(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x2c(r3)
    lfs     f0, -0x16a0(rtoc)
    stfs    f0, 0x30(r3)
    stfs    f0, 0x34(r3)
    lbz     r0, 0x14(r3)
    ori     r0, r0, 0x4
    stb     r0, 0x14(r3)
    blr

branch_0x8022dd5c:
    lbz     r4, 0x14(r3)
    li      r0, 0x0
    rlwinm  r4, r4, 0, 30, 28
    stb     r4, 0x14(r3)
    stb     r0, 0x15(r3)
    blr


.globl loadAfter__12TAfterEffectFv
loadAfter__12TAfterEffectFv: # 0x8022dd74
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    subi    r31, r4, 0x2510
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r5, -0x5db8(r13)
    lwz     r30, 0x4(r5)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    lwz     r0, 0x10(r3)
    stw     r0, 0x10(r29)
    stw     r29, -0x6108(r13)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl load__12TAfterEffectFR20JSUMemoryInputStream
load__12TAfterEffectFR20JSUMemoryInputStream: # 0x8022ddec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r3, 0x0
    stw     r3, 0x10(r31)
    li      r0, 0x1
    lis     r4, 0x4330
    stb     r0, 0x14(r31)
    li      r0, 0xff
    stb     r3, 0x15(r31)
    stb     r3, 0x19(r31)
    stb     r3, 0x1a(r31)
    lbz     r3, 0x19(r31)
    stb     r3, 0x1b(r31)
    lbz     r3, 0x1a(r31)
    stb     r3, 0x1c(r31)
    lbz     r3, 0x1b(r31)
    lfd     f1, -0x1690(rtoc)
    stw     r3, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x20(r31)
    lbz     r3, 0x1c(r31)
    stw     r3, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x24(r31)
    stb     r0, 0x16(r31)
    stb     r0, 0x17(r31)
    stb     r0, 0x18(r31)
    lfs     f1, -0x16a4(rtoc)
    stfs    f1, 0x28(r31)
    stfs    f1, 0x2c(r31)
    lfs     f0, -0x16a0(rtoc)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x38(r31)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x40(r31)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x44(r31)
    lfs     f0, -0x1688(rtoc)
    stfs    f0, 0x48(r31)
    stfs    f1, 0x50(r31)
    lfs     f0, -0x1684(rtoc)
    stfs    f0, 0x54(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__12TAfterEffectFv
__dt__12TAfterEffectFv: # 0x8022ded8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022df30
    lis     r3, 0x803e
    subi    r0, r3, 0x4f54
    stw     r0, 0x0(r30)
    beq-    branch_0x8022df20
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022df20:
    extsh.  r0, r31
    ble-    branch_0x8022df30
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022df30:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

