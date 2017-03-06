
.globl __dt__14TSplashManagerFv
__dt__14TSplashManagerFv: # 0x80266a24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80266aa8
    lis     r3, 0x803e
    subi    r3, r3, 0x2d18
    addic.  r0, r30, 0x124
    stw     r3, 0x0(r30)
    beq-    branch_0x80266a64
    addi    r3, r30, 0x124
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
branch_0x80266a64:
    addic.  r0, r30, 0x118
    beq-    branch_0x80266a78
    addi    r3, r30, 0x118
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
branch_0x80266a78:
    cmplwi  r30, 0x0
    beq-    branch_0x80266a98
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80266a98:
    extsh.  r0, r31
    ble-    branch_0x80266aa8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80266aa8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__14TSplashManagerFUlPQ26JDrama9TGraphics
perform__14TSplashManagerFUlPQ26JDrama9TGraphics: # 0x80266ac4
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x80266af8
    mr      r3, r29
    bl      move__14TSplashManagerFv
branch_0x80266af8:
    lhz     r0, 0x10(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x80266b28
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x80266b18
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      makeDL__14TSplashManagerCFPQ26JDrama9TGraphics
branch_0x80266b18:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x80266b28
    mr      r3, r29
    bl      draw__14TSplashManagerCFv
branch_0x80266b28:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl draw__14TSplashManagerCFv
draw__14TSplashManagerCFv: # 0x80266b44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x3
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x2
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x2
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
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
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    addi    r3, sp, 0x10
    bl      PSMTXIdentity
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x10
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0x10
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
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
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    bl      GXSetCullMode
    lwz     r3, 0x14(r31)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r0, 0x63c(r31)
    addi    r4, sp, 0xc
    li      r3, 0x1
    stw     r0, 0xc(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0xc
    li      r6, 0x8
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x5
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetClipMode
    lwz     r3, 0x640(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
    bl      GXSetClipMode
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl makeDL__14TSplashManagerCFPQ26JDrama9TGraphics
makeDL__14TSplashManagerCFPQ26JDrama9TGraphics: # 0x80266d64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stmw    r26, 0xb8(sp)
    mr      r26, r3
    addi    r28, r4, 0xb4
    lwz     r3, 0x640(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r27, 0x118(r26)
    addi    r30, sp, 0x58
    lfd     f31, -0xc80(rtoc)
    lis     r31, 0x4330
    lfs     f30, -0xc88(rtoc)
    b       branch_0x80266eb4

branch_0x80266db0:
    lwz     r29, 0x0(r27)
    addi    r3, r28, 0x0
    addi    r5, sp, 0x60
    addi    r4, r29, 0x0
    bl      PSMTXMultVec
    lfs     f0, 0x644(r26)
    lfs     f5, 0x68(sp)
    fneg    f0, f0
    fcmpo   cr0, f5, f0
    blt-    branch_0x80266de0
    fcmpo   cr0, f30, f5
    bge-    branch_0x80266dec
branch_0x80266de0:
    li      r0, 0x0
    stb     r0, 0x10(r29)
    b       branch_0x80266eb0

branch_0x80266dec:
    lbz     r6, 0x648(r26)
    mr      r5, r30
    lbz     r3, 0x10(r29)
    addi    r4, sp, 0x6c
    stw     r6, 0xb4(sp)
    mulli   r0, r3, 0xff
    lfs     f4, 0x634(r26)
    stw     r3, 0xac(sp)
    lfs     f0, 0x630(r26)
    stw     r31, 0xb0(sp)
    lwz     r3, -0xc8c(rtoc)
    divw    r0, r0, r6
    stw     r31, 0xa8(sp)
    lfd     f2, 0xb0(sp)
    stw     r6, 0xa4(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f3, f2, f31
    stw     r31, 0xa0(sp)
    fsubs   f2, f1, f31
    lfs     f6, 0x60(sp)
    lfd     f1, 0xa0(sp)
    fsubs   f2, f3, f2
    lfs     f3, 0x64(sp)
    fsubs   f1, f1, f31
    stw     r3, 0x54(sp)
    stb     r0, 0x57(sp)
    fdivs   f1, f2, f1
    lwz     r0, 0x54(sp)
    stw     r0, 0x58(sp)
    fmadds  f4, f4, f1, f0
    fsubs   f2, f6, f4
    fadds   f0, f3, f4
    fadds   f1, f6, f4
    stfs    f2, 0x6c(sp)
    fsubs   f3, f3, f4
    stfs    f0, 0x70(sp)
    stfs    f5, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f5, 0x80(sp)
    stfs    f1, 0x84(sp)
    stfs    f3, 0x88(sp)
    stfs    f5, 0x8c(sp)
    stfs    f2, 0x90(sp)
    stfs    f3, 0x94(sp)
    stfs    f5, 0x98(sp)
    lwz     r3, 0x640(r26)
    lbz     r6, 0x11(r29)
    bl      requestCol__15TDLColorTexQuadFPCQ29JGeometry8TVec3_f_8_GXColori
branch_0x80266eb0:
    lwz     r27, 0xc(r27)
branch_0x80266eb4:
    cmplwi  r27, 0x0
    bne+    branch_0x80266db0
    lwz     r3, 0x640(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lmw     r26, 0xb8(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    addi    sp, sp, 0xe0
    blr


.globl move__14TSplashManagerFv
move__14TSplashManagerFv: # 0x80266eec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    lhz     r0, 0x10(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80266f90
    lwz     r31, 0x118(r29)
    b       branch_0x80266f88

branch_0x80266f1c:
    lwz     r4, 0x0(r31)
    lfs     f0, 0x638(r29)
    lfs     f1, 0xc(r4)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r4)
    lfs     f1, 0x4(r4)
    lfs     f0, 0xc(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r4)
    lbz     r3, 0x10(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80266f54
    subi    r0, r3, 0x1
    stb     r0, 0x10(r4)
branch_0x80266f54:
    lbz     r0, 0x10(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80266f84
    mr      r30, r31
    lwz     r31, 0xc(r31)
    addi    r4, r30, 0x0
    addi    r3, r29, 0x118
    bl      remove__10JSUPtrListFP10JSUPtrLink
    addi    r3, r29, 0x124
    addi    r4, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
    b       branch_0x80266f88

branch_0x80266f84:
    lwz     r31, 0xc(r31)
branch_0x80266f88:
    cmplwi  r31, 0x0
    bne+    branch_0x80266f1c
branch_0x80266f90:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl newSplash__14TSplashManagerFQ29JGeometry8TVec3_f_f
newSplash__14TSplashManagerFQ29JGeometry8TVec3_f_f: # 0x80266fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r0, 0x12c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80267030
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x80267030
    lwz     r31, 0x124(r29)
    addi    r3, r29, 0x124
    addi    r4, r31, 0x0
    bl      remove__10JSUPtrListFP10JSUPtrLink
    addi    r3, r29, 0x118
    addi    r4, r31, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
    lwz     r4, 0x0(r31)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8(r30)
    stw     r0, 0x8(r4)
    stfs    f31, 0xc(r4)
    lbz     r0, 0x648(r29)
    stb     r0, 0x10(r4)
branch_0x80267030:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x38
    blr


.globl load__14TSplashManagerFR20JSUMemoryInputStream
load__14TSplashManagerFR20JSUMemoryInputStream: # 0x80267050
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stmw    r27, 0x1c(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r0, 0x3
    lis     r3, 0x803a
    sth     r0, 0x10(r31)
    subi    r3, r3, 0x10c0
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r30, r3, 0x0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802670ac
    li      r29, 0x0
    stw     r29, 0x28(r28)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r29, 0x50(r28)
branch_0x802670ac:
    stw     r28, 0x14(r31)
    lfs     f0, -0xc78(rtoc)
    stfs    f0, 0x630(r31)
    lfs     f0, -0xc74(rtoc)
    stfs    f0, 0x634(r31)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0xc70(rtoc)
    addi    r3, r31, 0x118
    fmuls   f0, f0, f1
    fmuls   f0, f0, f31
    stfs    f0, 0x638(r31)
    lwz     r0, -0xc90(rtoc)
    stw     r0, 0x14(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x63c(r31)
    bl      initiate__10JSUPtrListFv
    addi    r3, r31, 0x124
    bl      initiate__10JSUPtrListFv
    lfs     f31, -0xc6c(rtoc)
    li      r28, 0x0
    li      r30, 0x0
    li      r29, 0x0
branch_0x8026710c:
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8026712c
    addi    r4, r29, 0x130
    addi    r3, r27, 0x0
    add     r4, r31, r4
    bl      __ct__10JSUPtrLinkFPv
branch_0x8026712c:
    addi    r5, r30, 0x18
    add     r5, r31, r5
    stw     r27, 0x0(r5)
    add     r4, r31, r29
    li      r0, 0x0
    stfs    f31, 0x138(r4)
    addi    r3, r31, 0x124
    stfs    f31, 0x134(r4)
    stfs    f31, 0x130(r4)
    stfs    f31, 0x13c(r4)
    stb     r0, 0x140(r4)
    stb     r28, 0x141(r4)
    lwz     r4, 0x0(r5)
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r28, r28, 0x1
    cmpwi   r28, 0x40
    addi    r30, r30, 0x4
    addi    r29, r29, 0x14
    blt+    branch_0x8026710c
    li      r3, 0x28
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802671a0
    lis     r4, 0x803e
    subi    r0, r4, 0x59e8
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    subi    r0, r4, 0x5a08
    stw     r0, 0x0(r3)
branch_0x802671a0:
    stw     r3, 0x640(r31)
    li      r4, 0x40
    lwz     r3, 0x640(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lfs     f0, -0xc68(rtoc)
    li      r0, 0x10
    stfs    f0, 0x644(r31)
    stb     r0, 0x648(r31)
    stw     r31, -0x60c0(r13)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lmw     r27, 0x1c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __sinit_SplashManager_cpp
__sinit_SplashManager_cpp: # 0x802671e8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4268
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80267230
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80267230:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80267260
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80267260:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80267290
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80267290:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802672c0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802672c0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802672f0
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802672f0:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80267320
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80267320:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80267350
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80267350:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80267380
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80267380:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802673b0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802673b0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802673e0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802673e0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80267410
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80267410:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80267440
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80267440:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80267470
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80267470:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802674a0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x802674a0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802674d0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802674d0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
