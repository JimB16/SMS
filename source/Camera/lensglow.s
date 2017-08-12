
.globl __dt__9TLensGlowFv
__dt__9TLensGlowFv: # 0x8002d8fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8002d980
    lis     r3, __vvt__9TLensGlow@ha
    addi    r3, r3, __vvt__9TLensGlow@l
    addic.  r0, r30, 0x34
    stw     r3, 0x0(r30)
    beq-    branch_0x8002d93c
    lis     r3, __vvt__12J3DFrameCtrl@ha
    addi    r0, r3, __vvt__12J3DFrameCtrl@l
    stw     r0, 0x34(r30)
branch_0x8002d93c:
    addic.  r0, r30, 0x1c
    beq-    branch_0x8002d950
    lis     r3, __vvt__12J3DFrameCtrl@ha
    addi    r0, r3, __vvt__12J3DFrameCtrl@l
    stw     r0, 0x1c(r30)
branch_0x8002d950:
    cmplwi  r30, 0x0
    beq-    branch_0x8002d970
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8002d970:
    extsh.  r0, r31
    ble-    branch_0x8002d980
    mr      r3, r30
    bl      __dl__FPv
branch_0x8002d980:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__9TLensGlowFUlPQ26JDrama9TGraphics
perform__9TLensGlowFUlPQ26JDrama9TGraphics: # 0x8002d99c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stfd    f30, 0x168(sp)
    stfd    f29, 0x160(sp)
    stfd    f28, 0x158(sp)
    stfd    f27, 0x150(sp)
    stmw    r26, 0x138(sp)
    mr      r28, r3
    mr      r29, r4
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioIndoor__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002d9e0
    li      r30, 0x0
    b       branch_0x8002da6c

branch_0x8002d9e0:
    lfs     f2, 0x94(r28)
    li      r4, 0x0
    lwz     r3, R13Off_m0x70f8(r13)
    mr      r5, r4
    fneg    f0, f2
    lfsu    f1, 0xf8(r3)
    mr      r0, r4
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8002da18
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x8002da18
    li      r0, 0x1
branch_0x8002da18:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002da38
    fneg    f1, f2
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8002da38
    li      r5, 0x1
branch_0x8002da38:
    clrlwi. r0, r5, 24
    beq-    branch_0x8002da54
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x8002da54
    li      r4, 0x1
branch_0x8002da54:
    clrlwi. r0, r4, 24
    beq-    branch_0x8002da64
    li      r0, 0x1
    b       branch_0x8002da68

branch_0x8002da64:
    li      r0, 0x0
branch_0x8002da68:
    mr      r30, r0
branch_0x8002da6c:
    clrlwi. r0, r29, 31
    beq-    branch_0x8002dd48
    lwz     r3, R13Off_m0x70f8(r13)
    lbz     r4, 0x5d(r28)
    lbz     r31, 0x191(r3)
    lfs     f29, 0x194(r3)
    cmplw   r31, r4
    bgt-    branch_0x8002da98
    lfs     f0, -0x76f0(r2)
    stfs    f0, 0x4c(r28)
    b       branch_0x8002db0c

branch_0x8002da98:
    subfic  r0, r4, 0x11
    lfd     f4, -0x76d8(r2)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x76ec(r2)
    stw     r0, 0x12c(sp)
    lis     r27, 0x4330
    subf    r0, r4, r31
    lfs     f1, -0x76f0(r2)
    stw     r27, 0x128(sp)
    xoris   r0, r0, 0x8000
    lfd     f0, 0x128(sp)
    stw     r0, 0x134(sp)
    fsubs   f0, f0, f4
    stw     r27, 0x130(sp)
    fdivs   f0, f2, f0
    lfd     f3, 0x130(sp)
    fsubs   f3, f3, f4
    fmuls   f3, f3, f0
    bl      CLBLinearInbetween_f___Ffff
    lbz     r0, 0x5c(r28)
    fmr     f3, f1
    lfd     f2, -0x76d0(r2)
    stw     r0, 0x124(sp)
    lfs     f1, -0x76f0(r2)
    stw     r27, 0x120(sp)
    lfd     f0, 0x120(sp)
    fsubs   f2, f0, f2
    bl      CLBEaseOutInbetween_f___Ffff
    stfs    f1, 0x4c(r28)
branch_0x8002db0c:
    lfs     f0, 0x48(r28)
    lfs     f1, 0x4c(r28)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8002db24
    lfs     f2, 0x50(r28)
    b       branch_0x8002db3c

branch_0x8002db24:
    lfs     f0, -0x76f0(r2)
    fcmpu   cr0, f0, f29
    bne-    branch_0x8002db38
    lfs     f2, 0x58(r28)
    b       branch_0x8002db3c

branch_0x8002db38:
    lfs     f2, 0x54(r28)
branch_0x8002db3c:
    lfs     f3, -0x76f0(r2)
    addi    r3, r28, 0x48
    bl      CLBChaseDecrease__FPffff
    lfs     f2, -0x76e8(r2)
    fmr     f3, f29
    lfs     f1, 0x6c(r28)
    lfs     f0, 0x68(r28)
    fmuls   f1, f2, f1
    fmuls   f2, f2, f0
    bl      CLBLinearInbetween_f___Ffff
    stfs    f1, 0x64(r28)
    addi    r3, r28, 0x60
    lfs     f1, 0x64(r28)
    lfs     f2, 0x70(r28)
    lfs     f3, -0x76f0(r2)
    bl      CLBChaseDecrease__FPffff
    lwz     r3, R13Off_m0x70f8(r13)
    lfs     f28, 0xf8(r3)
    bl      SMSGetGameRenderWidth__Fv
    extrwi  r0, r3, 15, 16
    lwz     r4, R13Off_m0x70f8(r13)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x76d8(r2)
    stw     r0, 0x124(sp)
    lis     r27, 0x4330
    lfs     f30, 0xfc(r4)
    stw     r27, 0x120(sp)
    lfd     f0, 0x120(sp)
    fsubs   f0, f0, f1
    fmuls   f31, f28, f0
    bl      SMSGetGameRenderHeight__Fv
    extrwi  r0, r3, 15, 16
    lfd     f1, -0x76d8(r2)
    xoris   r0, r0, 0x8000
    stw     r0, 0x12c(sp)
    cmplwi  r31, 0x0
    stw     r27, 0x128(sp)
    lfd     f0, 0x128(sp)
    fsubs   f0, f0, f1
    fmuls   f30, f30, f0
    bne-    branch_0x8002dbf0
    lfs     f0, -0x76f0(r2)
    stfs    f0, 0x8c(r28)
    stfs    f0, 0x88(r28)
    b       branch_0x8002dd08

branch_0x8002dbf0:
    lfs     f0, -0x76e4(r2)
    fcmpo   cr0, f29, f0
    cror    2, 1, 2
    bne-    branch_0x8002dc10
    lfs     f0, -0x76f0(r2)
    stfs    f0, 0x8c(r28)
    stfs    f0, 0x88(r28)
    b       branch_0x8002dd08

branch_0x8002dc10:
    lfs     f6, -0x76f0(r2)
    li      r0, 0x11
    lwz     r3, R13Off_m0x70f8(r13)
    mtctr   r0
    fmr     f5, f6
    addi    r5, r3, 0xf8
    addi    r4, r5, 0x0
    addi    r3, r3, 0x180
branch_0x8002dc30:
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8002dc4c
    lfs     f1, 0x0(r4)
    lfs     f0, 0x4(r4)
    fadds   f6, f6, f1
    fadds   f5, f5, f0
branch_0x8002dc4c:
    addi    r4, r4, 0x8
    addi    r3, r3, 0x1
    bdnz+      branch_0x8002dc30
    stw     r31, 0x124(sp)
    lis     r27, 0x4330
    lfs     f0, -0x76e0(r2)
    stw     r27, 0x120(sp)
    fmuls   f27, f0, f29
    lfd     f1, -0x76d0(r2)
    lfd     f0, 0x120(sp)
    lfs     f4, -0x76ec(r2)
    fsubs   f0, f0, f1
    fmr     f3, f27
    lfs     f2, 0x0(r5)
    fdivs   f0, f4, f0
    fmuls   f1, f6, f0
    fmuls   f29, f5, f0
    bl      CLBLinearInbetween_f___Ffff
    lwz     r3, R13Off_m0x70f8(r13)
    fmr     f28, f1
    fmr     f1, f29
    fmr     f3, f27
    lfs     f2, 0xfc(r3)
    bl      CLBLinearInbetween_f___Ffff
    fmr     f29, f1
    bl      SMSGetGameRenderWidth__Fv
    mr      r31, r3
    bl      SMSGetGameRenderHeight__Fv
    extrwi  r0, r31, 15, 16
    lfd     f2, -0x76d8(r2)
    xoris   r0, r0, 0x8000
    stw     r0, 0x12c(sp)
    extrwi  r0, r3, 15, 16
    xoris   r0, r0, 0x8000
    stw     r27, 0x128(sp)
    stw     r0, 0x134(sp)
    lfd     f0, 0x128(sp)
    stw     r27, 0x130(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x130(sp)
    fsubs   f0, f0, f2
    fmuls   f1, f28, f1
    fmuls   f0, f29, f0
    fsubs   f1, f1, f31
    fsubs   f0, f0, f30
    stfs    f1, 0x88(r28)
    stfs    f0, 0x8c(r28)
branch_0x8002dd08:
    lfs     f1, 0x88(r28)
    addi    r3, r28, 0x80
    lfs     f2, 0x90(r28)
    lfs     f3, -0x76f0(r2)
    bl      CLBChaseDecrease__FPffff
    lfs     f1, 0x8c(r28)
    addi    r3, r28, 0x84
    lfs     f2, 0x90(r28)
    lfs     f3, -0x76f0(r2)
    bl      CLBChaseDecrease__FPffff
    lfs     f0, 0x80(r28)
    fadds   f0, f31, f0
    stfs    f0, 0x74(r28)
    lfs     f0, 0x84(r28)
    fadds   f0, f30, f0
    stfs    f0, 0x78(r28)
branch_0x8002dd48:
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x8002ddb0
    addi    r3, r28, 0x1c
    bl      update__12J3DFrameCtrlFv
    addi    r3, r28, 0x34
    bl      update__12J3DFrameCtrlFv
    clrlwi. r0, r30, 24
    beq-    branch_0x8002ddb0
    lfs     f1, 0x60(r28)
    addi    r3, sp, 0xd4
    lfs     f0, -0x76ec(r2)
    addi    r4, sp, 0x104
    stfs    f1, 0x104(sp)
    addi    r5, r28, 0x74
    stfs    f1, 0x108(sp)
    stfs    f0, 0x10c(sp)
    bl      CLBCalcScaleTranslateMatrix__FPA4_fRC3VecRC3Vec
    lwz     r4, 0x14(r28)
    addi    r3, sp, 0xd4
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x14(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8002ddb0:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x8002de80
    clrlwi. r0, r30, 24
    beq-    branch_0x8002de80
    lwz     r3, 0x10(r28)
    li      r31, 0x0
    lhz     r27, 0x24(r3)
    b       branch_0x8002de48

branch_0x8002ddd0:
    lwz     r3, 0x10(r28)
    clrlslwi  r26, r31, 16, 2
    li      r4, 0x0
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r26
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x0(r3)
    addi    r5, sp, 0xcc
    lwz     r0, 0x4(r3)
    li      r4, 0x0
    stw     r6, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lfs     f0, 0x48(r28)
    fctiwz  f0, f0
    stfd    f0, 0x120(sp)
    lwz     r0, 0x124(sp)
    sth     r0, 0xd2(sp)
    lwz     r3, 0x10(r28)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r26
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x1
branch_0x8002de48:
    clrlwi  r0, r31, 16
    cmpw    r0, r27
    blt+    branch_0x8002ddd0
    lfs     f0, 0x2c(r28)
    lwz     r3, 0x18(r28)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x44(r28)
    lwz     r3, 0x30(r28)
    stfs    f0, 0x4(r3)
    lwz     r3, 0x14(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8002de80:
    rlwinm. r0, r29, 0, 29, 29
    beq-    branch_0x8002dea4
    clrlwi. r0, r30, 24
    beq-    branch_0x8002dea4
    lwz     r3, 0x14(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x8002dea4:
    lmw     r26, 0x138(sp)
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lfd     f30, 0x168(sp)
    mtlr    r0
    lfd     f29, 0x160(sp)
    lfd     f28, 0x158(sp)
    lfd     f27, 0x150(sp)
    addi    sp, sp, 0x178
    blr


.globl __ct__9TLensGlowFbPCc
__ct__9TLensGlowFbPCc: # 0x8002decc
    mflr    r0
    lis     r6, unk_803756d0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x160(sp)
    stmw    r26, 0x148(sp)
    mr      r27, r4
    addi    r31, r6, unk_803756d0@l
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r28, 0x8(sp)
    addi    r3, r5, 0x0
    stw     r0, 0x0(r28)
    stw     r5, 0x4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r28)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r28)
    li      r29, 0x0
    lis     r3, __vvt__9TLensGlow@ha
    sth     r29, 0xc(r28)
    addi    r0, r3, __vvt__9TLensGlow@l
    lis     r3, __vvt__12J3DFrameCtrl@ha
    stw     r0, 0x0(r28)
    addi    r30, r3, __vvt__12J3DFrameCtrl@l
    addi    r3, r28, 0x1c
    stw     r29, 0x10(r28)
    li      r4, 0x0
    stw     r29, 0x14(r28)
    stw     r29, 0x18(r28)
    stw     r30, 0x1c(r28)
    bl      init__12J3DFrameCtrlFs
    stw     r29, 0x30(r28)
    addi    r3, r28, 0x34
    li      r4, 0x0
    stw     r30, 0x34(r28)
    bl      init__12J3DFrameCtrlFs
    lfs     f2, -0x76f0(r2)
    li      r4, 0xff
    li      r3, 0x2
    stfs    f2, 0x48(r28)
    clrlwi. r0, r27, 24
    stfs    f2, 0x4c(r28)
    lfs     f0, -0x76e4(r2)
    stfs    f0, 0x50(r28)
    stfs    f0, 0x54(r28)
    stfs    f0, 0x58(r28)
    stb     r4, 0x5c(r28)
    stb     r3, 0x5d(r28)
    lfs     f1, -0x76c8(r2)
    stfs    f1, 0x68(r28)
    stfs    f1, 0x6c(r28)
    lfs     f0, -0x76c4(r2)
    stfs    f0, 0x70(r28)
    stfs    f2, 0x80(r28)
    stfs    f2, 0x84(r28)
    stfs    f2, 0x88(r28)
    stfs    f2, 0x8c(r28)
    stfs    f0, 0x90(r28)
    lfs     f0, -0x76c0(r2)
    stfs    f0, 0x94(r28)
    lwz     r29, R13Off_m0x7fa8(r13)
    beq-    branch_0x8002dfdc
    lwz     r29, R13Off_m0x7fa4(r13)
    lfs     f0, -0x76bc(r2)
    stfs    f0, 0x68(r28)
    stfs    f1, 0x6c(r28)
branch_0x8002dfdc:
    addi    r6, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x48
    addi    r7, r31, 0x3c
    li      r4, 0x100
    addi    r5, r2, R2Off_m0x76b8
    bl      snprintf
    addi    r3, sp, 0x48
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1002
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    lwz     r30, 0x8(sp)
    stw     r3, 0x10(r30)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8002e034
    lwz     r4, 0x10(r30)
    addi    r3, r27, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8002e034:
    lwz     r30, 0x8(sp)
    addi    r6, r29, 0x0
    addi    r3, sp, 0x48
    crxor   6, 6, 6
    stw     r27, 0x14(r30)
    addi    r7, r31, 0x48
    li      r4, 0x100
    addi    r5, r2, R2Off_m0x76b8
    bl      snprintf
    addi    r3, sp, 0x48
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x18(r30)
    lwz     r3, 0x18(r30)
    lwz     r4, 0x10(r30)
    bl      searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
    addi    r6, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x48
    addi    r7, r31, 0x54
    li      r4, 0x100
    addi    r5, r2, R2Off_m0x76b8
    bl      snprintf
    addi    r3, sp, 0x48
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x30(r30)
    lwz     r3, 0x30(r30)
    lwz     r4, 0x10(r30)
    bl      searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
    lwz     r4, 0x10(r30)
    lis     r3, __vvt__14J3DMaterialAnm@h
    addi    r30, r3, __vvt__14J3DMaterialAnm@l
    lhz     r27, 0x24(r4)
    li      r29, 0x0
    b       branch_0x8002e10c

branch_0x8002e0c4:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8002e0e0
    stw     r30, 0x0(r26)
    mr      r3, r26
    bl      initialize__14J3DMaterialAnmFv
branch_0x8002e0e0:
    lwz     r31, 0x8(sp)
    clrlslwi  r28, r29, 16, 2
    lwz     r3, 0x10(r31)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r28
    bl      change__11J3DMaterialFv
    lwz     r3, 0x10(r31)
    addi    r29, r29, 0x1
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r28
    stw     r26, 0x38(r3)
branch_0x8002e10c:
    clrlwi  r0, r29, 16
    cmpw    r0, r27
    blt+    branch_0x8002e0c4
    lwz     r28, 0x8(sp)
    lwz     r3, 0x10(r28)
    lwz     r4, 0x18(r28)
    bl      entryTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey
    lwz     r3, 0x10(r28)
    lwz     r4, 0x30(r28)
    bl      entryTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKey
    lwz     r4, 0x18(r28)
    addi    r3, r28, 0x1c
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x28(r28)
    li      r31, 0x2
    addi    r3, r28, 0x34
    stb     r31, 0x20(r28)
    lwz     r4, 0x30(r28)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x40(r28)
    mr      r3, r28
    stb     r31, 0x38(r28)
    lfs     f0, -0x76b0(r2)
    stfs    f0, 0x74(r28)
    stfs    f0, 0x78(r28)
    lfs     f0, -0x76f0(r2)
    stfs    f0, 0x7c(r28)
    lfs     f0, 0x6c(r28)
    stfs    f0, 0x64(r28)
    stfs    f0, 0x60(r28)
    lmw     r26, 0x148(sp)
    lwz     r0, 0x164(sp)
    addi    sp, sp, 0x160
    mtlr    r0
    blr


.globl __dt__12J3DFrameCtrlFv
__dt__12J3DFrameCtrlFv: # 0x8002e1a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8002e1dc
    lis     r3, __vvt__12J3DFrameCtrl@ha
    addi    r3, r3, __vvt__12J3DFrameCtrl@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x8002e1dc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8002e1dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

