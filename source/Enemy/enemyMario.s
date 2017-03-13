
.globl __dt__11TEnemyMarioFv
__dt__11TEnemyMarioFv: # 0x8003f738
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    lis     r3, 0x803b
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    subi    r4, r3, 0x17a8
    beq-    branch_0x8003f7f8
    addi    r0, r4, 0x6cc
    stw     r0, 0x0(r31)
    addi    r3, r4, 0x6f0
    addi    r0, r4, 0x780
    stw     r3, 0x20(r31)
    stw     r0, 0x70(r31)
    beq-    branch_0x8003f7e8
    lis     r3, 0x803e
    subi    r3, r3, 0x29a0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r3, 0xb4
    stw     r0, 0x20(r31)
    addic.  r0, r31, 0x474
    stw     r3, 0x70(r31)
    beq-    branch_0x8003f7c0
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x474(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x474
    stw     r0, 0x494(r31)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8003f7c0:
    cmplwi  r31, 0x0
    beq-    branch_0x8003f7e8
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    li      r4, 0x0
    bl      __dt__9THitActorFv
branch_0x8003f7e8:
    extsh.  r0, r30
    ble-    branch_0x8003f7f8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8003f7f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__11TEnemyMarioFUlPQ26JDrama9TGraphics
perform__11TEnemyMarioFUlPQ26JDrama9TGraphics: # 0x8003f814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b8(sp)
    stmw    r26, 0x1a0(sp)
    mr      r31, r3
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    li      r30, 0x0
    li      r29, 0x0
    lwz     r0, 0x42dc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8003f854
    lwz     r3, 0x42a0(r31)
    lwz     r3, 0x74(r3)
    lwz     r29, 0x4(r3)
    mr      r30, r3
branch_0x8003f854:
    lha     r3, 0x14e(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8003f868
    subi    r0, r3, 0x1
    sth     r0, 0x14e(r31)
branch_0x8003f868:
    lha     r3, 0x42ba(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8003f87c
    subi    r0, r3, 0x1
    sth     r0, 0x42ba(r31)
branch_0x8003f87c:
    clrlwi. r26, r27, 31
    beq-    branch_0x8003f8f4
    lhz     r0, 0x4290(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8003f898
    li      r0, 0x1
    b       branch_0x8003f89c

branch_0x8003f898:
    li      r0, 0x0
branch_0x8003f89c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003f8b8
    li      r0, 0x0
    sth     r0, 0x4294(r31)
    addi    r3, r31, 0x0
    addi    r4, r31, 0x0
    bl      hitWater__11TEnemyMarioFP9THitActor
branch_0x8003f8b8:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x8003f8d4
    lha     r0, 0x14e(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8003f8f4
branch_0x8003f8d4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r28
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      setPositions__6TMarioFv
branch_0x8003f8f4:
    cmplwi  r26, 0x0
    beq-    branch_0x8003fb00
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x8003f918
    lha     r0, 0x14e(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8003f930
branch_0x8003f918:
    addi    r3, r31, 0x0
    addi    r5, r28, 0x0
    li      r4, 0x2
    bl      calcAnim__6TMarioFUlPQ26JDrama9TGraphics
    mr      r3, r31
    bl      animSound__6TMarioFv
branch_0x8003f930:
    lwz     r0, 0x42dc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8003f990
    li      r26, 0x0
    b       branch_0x8003f968

branch_0x8003f944:
    clrlwi  r0, r26, 16
    lwz     r3, 0x42dc(r31)
    mulli   r6, r0, 0x30
    lwz     r0, 0x58(r5)
    lwz     r3, 0x58(r3)
    add     r4, r3, r6
    add     r3, r0, r6
    bl      PSMTXCopy
    addi    r26, r26, 0x1
branch_0x8003f968:
    lwz     r3, 0x3a8(r31)
    clrlwi  r4, r26, 16
    lwz     r5, 0x8(r3)
    lwz     r3, 0x4(r5)
    lhz     r0, 0x1c(r3)
    cmplw   r4, r0
    blt+    branch_0x8003f944
    lwz     r3, 0x42dc(r31)
    bl      calcWeightEnvelopeMtx__8J3DModelFv
    b       branch_0x8003fab8

branch_0x8003f990:
    mr      r3, r30
    bl      calcAnm__6MActorFv
    mr      r3, r31
    bl      animSound__6TMarioFv
    li      r26, 0x0
    b       branch_0x8003f9c8

branch_0x8003f9a8:
    clrlwi  r0, r26, 16
    lwz     r3, 0x58(r29)
    mulli   r6, r0, 0x30
    lwz     r0, 0x58(r5)
    add     r4, r3, r6
    add     r3, r0, r6
    bl      PSMTXCopy
    addi    r26, r26, 0x1
branch_0x8003f9c8:
    lwz     r3, 0x3a8(r31)
    clrlwi  r4, r26, 16
    lwz     r5, 0x8(r3)
    lwz     r3, 0x4(r5)
    lhz     r0, 0x1c(r3)
    cmplw   r4, r0
    blt+    branch_0x8003f9a8
    mr      r3, r29
    bl      calcWeightEnvelopeMtx__8J3DModelFv
    lbz     r0, 0x3ca(r31)
    lwz     r4, 0x42ec(r31)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r29)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x42ec(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x4292(r31)
    cmplwi  r0, 0x13
    bne-    branch_0x8003fa40
    lwz     r3, 0x430c(r31)
    lbz     r0, 0x68(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8003fa40
    li      r0, 0x1
    b       branch_0x8003fa44

branch_0x8003fa40:
    li      r0, 0x0
branch_0x8003fa44:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003fab8
    lfs     f1, 0x42f4(r31)
    addi    r3, sp, 0x16c
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXScale
    lfs     f1, -0x710c(rtoc)
    addi    r3, sp, 0x13c
    lfs     f2, -0x7108(rtoc)
    fmr     f3, f1
    bl      MsMtxSetRotRPH__FPA4_ffff
    lwz     r3, 0x3a8(r31)
    addi    r4, sp, 0x16c
    addi    r5, r4, 0x0
    lwz     r3, 0x8(r3)
    addi    r3, r3, 0x20
    bl      PSMTXConcat
    addi    r3, sp, 0x16c
    addi    r5, r3, 0x0
    addi    r4, sp, 0x13c
    bl      PSMTXConcat
    lwz     r4, 0x42f0(r31)
    addi    r3, sp, 0x16c
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x42f0(r31)
    bl      calcAnm__6MActorFv
branch_0x8003fab8:
    lfs     f0, -0x7104(rtoc)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    lfs     f0, -0x7100(rtoc)
    stfs    f0, 0x54(r31)
    lfs     f0, -0x70fc(rtoc)
    stfs    f0, 0x58(r31)
    lfs     f0, -0x70f8(rtoc)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lha     r3, 0x42b4(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8003faf8
    subi    r0, r3, 0x1
    sth     r0, 0x42b4(r31)
    b       branch_0x8003fb00

branch_0x8003faf8:
    li      r0, 0x0
    sth     r0, 0x42b4(r31)
branch_0x8003fb00:
    rlwinm. r0, r27, 0, 29, 29
    beq-    branch_0x8003fbd8
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      calcView__6TMarioFPQ26JDrama9TGraphics
    lhz     r0, 0x4290(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8003fb28
    li      r0, 0x1
    b       branch_0x8003fb2c

branch_0x8003fb28:
    li      r0, 0x0
branch_0x8003fb2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003fb64
    lwz     r3, 0x390(r31)
    bl      entryDrawShadow__16TMBindShadowBodyFv
    lwz     r5, 0x10(r31)
    addi    r4, sp, 0x130
    lwz     r0, 0x14(r31)
    lwz     r3, -0x6138(r13)
    stw     r5, 0x130(sp)
    lfs     f1, -0x70f4(rtoc)
    stw     r0, 0x134(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x138(sp)
    bl      request__16TQuestionManagerFQ29JGeometry8TVec3_f_f
branch_0x8003fb64:
    lwz     r3, 0x42dc(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8003fb84
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    b       branch_0x8003fbd8

branch_0x8003fb84:
    mr      r3, r30
    bl      viewCalc__6MActorFv
    lwz     r3, 0x42ec(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x4292(r31)
    cmplwi  r0, 0x13
    bne-    branch_0x8003fbc4
    lwz     r3, 0x430c(r31)
    lbz     r0, 0x68(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8003fbc4
    li      r0, 0x1
    b       branch_0x8003fbc8

branch_0x8003fbc4:
    li      r0, 0x0
branch_0x8003fbc8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003fbd8
    lwz     r3, 0x42f0(r31)
    bl      viewCalc__6MActorFv
branch_0x8003fbd8:
    rlwinm. r0, r27, 0, 22, 22
    beq-    branch_0x8003fcc8
    lwz     r0, 0x42dc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8003fc6c
    lha     r0, 0x42b4(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8003fc18
    lwz     r3, 0x42a0(r31)
    addi    r5, r28, 0x0
    addi    r4, r31, 0x10
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    b       branch_0x8003fc2c

branch_0x8003fc18:
    lwz     r3, 0x42a0(r31)
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
branch_0x8003fc2c:
    lhz     r0, 0x4292(r31)
    cmplwi  r0, 0x13
    bne-    branch_0x8003fc50
    lwz     r3, 0x430c(r31)
    lbz     r0, 0x68(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8003fc50
    li      r0, 0x1
    b       branch_0x8003fc54

branch_0x8003fc50:
    li      r0, 0x0
branch_0x8003fc54:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003fc6c
    lwz     r4, 0x42f0(r31)
    lwz     r3, gpPollution(r13)
    lwz     r4, 0x4(r4)
    bl      stampModel__17TPollutionManagerFP8J3DModel
branch_0x8003fc6c:
    lhz     r0, 0x4290(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8003fc80
    li      r0, 0x1
    b       branch_0x8003fc84

branch_0x8003fc80:
    li      r0, 0x0
branch_0x8003fc84:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003fcc8
    lwz     r3, 0x42dc(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8003fcb8
    mr      r3, r30
    bl      entry__6MActorFv
    lwz     r3, 0x42ec(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x8003fcc8

branch_0x8003fcb8:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8003fcc8:
    rlwinm. r0, r27, 0, 28, 28
    beq-    branch_0x8003fdb0
    lwz     r3, 0x53c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8003fce0
    bl      movement__19TTrembleModelEffectFv
branch_0x8003fce0:
    lhz     r0, 0x114(r31)
    li      r4, 0x1
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8003fcf4
    li      r4, 0x0
branch_0x8003fcf4:
    lha     r3, 0x14c(r31)
    extsh.  r0, r3
    ble-    branch_0x8003fd0c
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x8003fd0c
    li      r4, 0x0
branch_0x8003fd0c:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8003fd20
    li      r0, 0x1
    b       branch_0x8003fd24

branch_0x8003fd20:
    li      r0, 0x0
branch_0x8003fd24:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003fd30
    li      r4, 0x0
branch_0x8003fd30:
    lhz     r0, 0x4292(r31)
    cmplwi  r0, 0x7
    bne-    branch_0x8003fd40
    li      r4, 0x0
branch_0x8003fd40:
    lha     r3, 0x14e(r31)
    extsh.  r0, r3
    ble-    branch_0x8003fd58
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x8003fd58
    li      r4, 0x0
branch_0x8003fd58:
    cmpwi   r4, 0x1
    bne-    branch_0x8003fd8c
    lwz     r0, 0x53c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8003fd8c
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r0, 0x7
    stw     r0, 0x4c(r3)
    lwz     r3, 0x394(r31)
    bl      draw__13J3DDrawBufferCFv
    lwz     r3, 0x398(r31)
    bl      draw__13J3DDrawBufferCFv
branch_0x8003fd8c:
    lhz     r0, 0x4290(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8003fdb0
    lha     r0, 0x42ba(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8003fdb0
    addi    r4, r28, 0xb4
    addi    r3, r31, 0x0
    bl      drawHPMeter__11TEnemyMarioFPA4_f
branch_0x8003fdb0:
    lmw     r26, 0x1a0(sp)
    lwz     r0, 0x1bc(sp)
    addi    sp, sp, 0x1b8
    mtlr    r0
    blr


.globl drawHPMeter__11TEnemyMarioFPA4_f
drawHPMeter__11TEnemyMarioFPA4_f: # 0x8003fdc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stfd    f30, 0xb8(sp)
    stfd    f29, 0xb0(sp)
    stfd    f28, 0xa8(sp)
    stfd    f27, 0xa0(sp)
    stfd    f26, 0x98(sp)
    stfd    f25, 0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r3
    lwz     r5, 0x10(r3)
    lwz     r0, 0x14(r3)
    addi    r3, r4, 0x0
    lfs     f0, -0x70f0(rtoc)
    addi    r4, sp, 0x74
    stw     r5, 0x74(sp)
    addi    r5, sp, 0x68
    stw     r0, 0x78(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    bl      PSMTXMultVec
    addi    r3, sp, 0x38
    bl      PSMTXIdentity
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x38
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0x38
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
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
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
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
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetCullMode
    lfs     f1, 0x68(sp)
    addi    r4, sp, 0x28
    lfs     f0, -0x70ec(rtoc)
    li      r3, 0x4
    lwz     r0, -0x7114(rtoc)
    fsubs   f29, f1, f0
    lfs     f0, -0x70e0(rtoc)
    lfs     f3, 0x6c(sp)
    lfs     f2, -0x70e8(rtoc)
    stw     r0, 0x24(sp)
    lfs     f1, -0x70e4(rtoc)
    fsubs   f31, f3, f2
    fadds   f30, f3, f2
    lwz     r0, 0x24(sp)
    fadds   f0, f29, f0
    fsubs   f28, f29, f1
    fsubs   f26, f31, f1
    fadds   f27, f1, f0
    stw     r0, 0x28(sp)
    fadds   f25, f1, f30
    bl      GXSetChanMatColor
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f1, 0x70(sp)
    lis     r31, 0xcc01
    lis     r5, 0x4330
    lfd     f2, -0x70d8(rtoc)
    stfs    f28, -0x8000(r31)
    lwz     r0, -0x7110(rtoc)
    addi    r4, sp, 0x20
    stfs    f26, -0x8000(r31)
    li      r3, 0x4
    lfs     f0, -0x70dc(rtoc)
    stfs    f1, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    lha     r6, 0x4294(r30)
    xoris   r6, r6, 0x8000
    stw     r0, 0x1c(sp)
    stw     r6, 0x84(sp)
    lwz     r0, 0x1c(sp)
    stw     r5, 0x80(sp)
    lfd     f1, 0x80(sp)
    stw     r0, 0x20(sp)
    fsubs   f1, f1, f2
    fmadds  f28, f1, f0, f29
    bl      GXSetChanMatColor
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0x70(sp)
    stfs    f29, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lfd     f30, 0xb8(sp)
    lfd     f29, 0xb0(sp)
    lfd     f28, 0xa8(sp)
    lfd     f27, 0xa0(sp)
    lfd     f26, 0x98(sp)
    lfd     f25, 0x90(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl damageExec__11TEnemyMarioFP9THitActoriiififs
damageExec__11TEnemyMarioFP9THitActoriiififs: # 0x80040068
    blr


.globl playerControl__11TEnemyMarioFPQ26JDrama9TGraphics
playerControl__11TEnemyMarioFPQ26JDrama9TGraphics: # 0x8004006c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lha     r0, 0x96(r3)
    sth     r0, 0x9c(r31)
    lwz     r5, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r5, 0x29c(r31)
    stw     r0, 0x2a0(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x2a4(r31)
    lhz     r0, 0x114(r31)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x114(r31)
    bl      checkPlayerAction__6TMarioFPQ26JDrama9TGraphics
    mr      r3, r31
    bl      stateMachine__6TMarioFv
    mr      r3, r31
    bl      stateMachineUpper__6TMarioFv
    mr      r3, r31
    bl      thinkSituation__6TMarioFv
    mr      r3, r31
    bl      thinkWaterSurface__6TMarioFv
    mr      r3, r31
    bl      thinkSand__6TMarioFv
    mr      r3, r31
    bl      thinkHeight__6TMarioFv
    mr      r3, r31
    bl      thinkParams__6TMarioFv
    mr      r3, r31
    bl      checkRideReCalc__6TMarioFv
    mr      r3, r31
    bl      checkWet__6TMarioFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkController__11TEnemyMarioFPQ26JDrama9TGraphics
checkController__11TEnemyMarioFPQ26JDrama9TGraphics: # 0x8004010c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    lwz     r4, MarioHitActorPos(r13)
    lfs     f2, 0x10(r3)
    lfs     f3, 0x0(r4)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x18(r3)
    fsubs   f31, f3, f2
    fsubs   f30, f1, f0
    fmr     f2, f31
    fmr     f1, f30
    bl      matan__Fff
    fmuls   f1, f30, f30
    sth     r3, 0x4296(r30)
    lfs     f0, -0x710c(rtoc)
    fmadds  f4, f31, f31, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x800401b8
    frsqrte f1, f4
    lfd     f3, -0x70d0(rtoc)
    lfd     f2, -0x70c8(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x50(sp)
    lfs     f4, 0x50(sp)
branch_0x800401b8:
    stfs    f4, 0x429c(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    lwz     r4, 0x108(r30)
    lwz     r31, 0x4(r4)
    sth     r0, 0x0(r4)
    lwz     r4, 0x108(r30)
    sth     r0, 0x2(r4)
    lwz     r4, 0x108(r30)
    stw     r0, 0x4(r4)
    lwz     r4, 0x108(r30)
    stw     r0, 0x8(r4)
    lwz     r4, 0x108(r30)
    stb     r0, 0xc(r4)
    lwz     r4, 0x108(r30)
    stb     r0, 0xd(r4)
    bl      consider__11TEnemyMarioFv
    lfs     f0, -0x710c(rtoc)
    lwz     r3, 0x108(r30)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x108(r30)
    stfs    f0, 0x14(r3)
    lwz     r4, 0x108(r30)
    lha     r3, 0x0(r4)
    cmpwi   r3, -0x7
    bge-    branch_0x80040244
    addi    r0, r3, 0x6
    lfd     f1, -0x70d8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r4)
branch_0x80040244:
    lwz     r4, 0x108(r30)
    lha     r3, 0x0(r4)
    cmpwi   r3, 0x7
    ble-    branch_0x80040278
    subi    r0, r3, 0x6
    lfd     f1, -0x70d8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r4)
branch_0x80040278:
    lwz     r4, 0x108(r30)
    lha     r3, 0x2(r4)
    cmpwi   r3, -0x7
    bge-    branch_0x800402ac
    addi    r0, r3, 0x6
    lfd     f1, -0x70d8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r4)
branch_0x800402ac:
    lwz     r4, 0x108(r30)
    lha     r3, 0x2(r4)
    cmpwi   r3, 0x7
    ble-    branch_0x800402e0
    subi    r0, r3, 0x6
    lfd     f1, -0x70d8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r4)
branch_0x800402e0:
    lwz     r3, 0x108(r30)
    lfs     f0, -0x710c(rtoc)
    lfs     f2, 0x10(r3)
    lfs     f1, 0x14(r3)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x80040350
    frsqrte f1, f4
    lfd     f3, -0x70d0(rtoc)
    lfd     f2, -0x70c8(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x4c(sp)
    lfs     f4, 0x4c(sp)
branch_0x80040350:
    lwz     r3, 0x108(r30)
    stfs    f4, 0x18(r3)
    lwz     r3, 0x108(r30)
    lfs     f2, -0x70c0(rtoc)
    lfs     f0, 0x18(r3)
    fcmpo   cr0, f0, f2
    ble-    branch_0x8004039c
    fdivs   f0, f2, f0
    lfs     f1, 0x10(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x108(r30)
    lfs     f0, 0x18(r3)
    lfs     f1, 0x14(r3)
    fdivs   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r3, 0x108(r30)
    stfs    f2, 0x18(r3)
branch_0x8004039c:
    lwz     r4, 0x108(r30)
    lwz     r3, 0x4(r4)
    xor     r0, r3, r31
    and     r0, r3, r0
    stw     r0, 0x8(r4)
    lwz     r3, 0x108(r30)
    lfs     f0, -0x70bc(rtoc)
    lfs     f1, 0x18(r3)
    lfs     f2, -0x70c0(rtoc)
    fmuls   f1, f1, f0
    lfs     f0, -0x70b8(rtoc)
    fmuls   f1, f1, f1
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    stfs    f0, 0x8c(r30)
    lfs     f1, 0x8c(r30)
    lfs     f0, -0x710c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80040404
    lwz     r3, 0x108(r30)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x10(r3)
    fneg    f1, f0
    bl      matan__Fff
    sth     r3, 0x90(r30)
    b       branch_0x8004040c

branch_0x80040404:
    lha     r0, 0x96(r30)
    sth     r0, 0x90(r30)
branch_0x8004040c:
    lhz     r0, 0x4292(r30)
    cmplwi  r0, 0xb
    bne-    branch_0x80040420
    mr      r3, r30
    bl      emReplay__11TEnemyMarioFv
branch_0x80040420:
    lhz     r0, 0x4292(r30)
    cmplwi  r0, 0x11
    bne-    branch_0x800404c0
    lwz     r0, 0x42a8(r30)
    addi    r4, r30, 0x8c
    lwz     r3, 0x42f8(r30)
    addi    r5, r30, 0x90
    lwz     r9, 0x108(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    addi    r6, r9, 0x4
    addi    r7, r9, 0x8
    addi    r8, r9, 0xd
    addi    r9, r9, 0xc
    bl      play__17TMarioInputReplayFPfPsPUlPUlPUcPUc
    lwz     r0, 0x42a8(r30)
    lwz     r3, 0x42f8(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lhz     r0, 0x2(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80040480
    li      r0, 0x1
    b       branch_0x80040484

branch_0x80040480:
    li      r0, 0x0
branch_0x80040484:
    clrlwi. r0, r0, 24
    bne-    branch_0x800404c0
    addi    r3, r30, 0x0
    li      r4, MARIOSTATUS_133e
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0x70b4(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x114
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
    stw     r0, 0x42a4(r30)
    li      r0, 0x14
    sth     r0, 0x4292(r30)
branch_0x800404c0:
    lhz     r0, 0x4292(r30)
    cmplwi  r0, 0x15
    bne-    branch_0x80040548
    lwz     r9, 0x108(r30)
    addi    r4, r30, 0x8c
    lwz     r3, 0x4300(r30)
    addi    r5, r30, 0x90
    addi    r6, r9, 0x4
    addi    r7, r9, 0x8
    addi    r8, r9, 0xd
    addi    r9, r9, 0xc
    bl      play__17TMarioInputReplayFPfPsPUlPUlPUcPUc
    lwz     r3, 0x4300(r30)
    lhz     r0, 0x2(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80040508
    li      r0, 0x1
    b       branch_0x8004050c

branch_0x80040508:
    li      r0, 0x0
branch_0x8004050c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80040548
    addi    r3, r30, 0x0
    li      r4, MARIOSTATUS_133e
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0x70b4(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x114
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
    stw     r0, 0x42a4(r30)
    li      r0, 0x18
    sth     r0, 0x4292(r30)
branch_0x80040548:
    lhz     r0, 0x4292(r30)
    cmplwi  r0, 0x19
    bne-    branch_0x800405d0
    lwz     r0, 0x42a8(r30)
    addi    r4, r30, 0x8c
    lwz     r3, 0x42f8(r30)
    addi    r5, r30, 0x90
    lwz     r9, 0x108(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    addi    r6, r9, 0x4
    addi    r7, r9, 0x8
    addi    r8, r9, 0xd
    addi    r9, r9, 0xc
    bl      play__17TMarioInputReplayFPfPsPUlPUlPUcPUc
    lwz     r0, 0x42a8(r30)
    lwz     r3, 0x42f8(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lhz     r0, 0x2(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x800405a8
    li      r0, 0x1
    b       branch_0x800405ac

branch_0x800405a8:
    li      r0, 0x0
branch_0x800405ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x800405d0
    lhz     r4, 0x4290(r30)
    li      r3, 0x0
    li      r0, 0x16
    ori     r4, r4, 0x1
    sth     r4, 0x4290(r30)
    stw     r3, 0x42a4(r30)
    sth     r0, 0x4292(r30)
branch_0x800405d0:
    lfs     f1, 0x8c(r30)
    lfs     f0, -0x710c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800405ec
    lwz     r0, 0x74(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x74(r30)
branch_0x800405ec:
    lwz     r3, 0x108(r30)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80040604
    li      r0, 0x1
    b       branch_0x80040608

branch_0x80040604:
    li      r0, 0x0
branch_0x80040608:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004061c
    lwz     r0, 0x74(r30)
    ori     r0, r0, 0x2
    stw     r0, 0x74(r30)
branch_0x8004061c:
    lwz     r3, 0x108(r30)
    lwz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80040634
    li      r0, 0x1
    b       branch_0x80040638

branch_0x80040634:
    li      r0, 0x0
branch_0x80040638:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004064c
    lwz     r0, 0x74(r30)
    ori     r0, r0, 0x80
    stw     r0, 0x74(r30)
branch_0x8004064c:
    lwz     r3, 0x108(r30)
    lwz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x80040664
    li      r0, 0x1
    b       branch_0x80040668

branch_0x80040664:
    li      r0, 0x0
branch_0x80040668:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004067c
    lwz     r0, 0x74(r30)
    ori     r0, r0, 0x4000
    stw     r0, 0x74(r30)
branch_0x8004067c:
    lwz     r3, 0x108(r30)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x80040694
    li      r0, 0x1
    b       branch_0x80040698

branch_0x80040694:
    li      r0, 0x0
branch_0x80040698:
    clrlwi. r0, r0, 24
    beq-    branch_0x800406ac
    lwz     r0, 0x74(r30)
    ori     r0, r0, 0x8000
    stw     r0, 0x74(r30)
branch_0x800406ac:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x78
    blr


.globl checkReturn__11TEnemyMarioFv
checkReturn__11TEnemyMarioFv: # 0x800406cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    stw     r29, 0x8c(sp)
    mr      r29, r3
    stw     r28, 0x88(sp)
    lwz     r3, 0xe0(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80040708
    li      r0, 0x1
    b       branch_0x8004070c

branch_0x80040708:
    li      r0, 0x0
branch_0x8004070c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800407e8
    lwz     r3, 0x42a0(r29)
    addi    r4, r29, 0x10
    li      r5, -0x1
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r29)
    mr      r31, r3
    lfs     f31, -0x70b0(rtoc)
    li      r30, 0x0
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r28, 0x8(r3)
    b       branch_0x800407e0

branch_0x8004074c:
    add     r3, r31, r30
    lwz     r4, 0x42a0(r29)
    divw    r0, r3, r28
    lwz     r4, 0x124(r4)
    lwz     r4, 0x0(r4)
    lwz     r4, 0x0(r4)
    mullw   r0, r0, r28
    subf    r0, r0, r3
    slwi    r0, r0, 4
    add     r3, r4, r0
    addi    r4, sp, 0x74
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r3, MarioHitActorPos(r13)
    lfs     f3, 0x74(sp)
    lfs     f2, 0x0(r3)
    lfs     f1, 0x78(sp)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r3)
    lfs     f2, 0x7c(sp)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r3)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    ble-    branch_0x800407dc
    lwz     r3, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x18(r29)
branch_0x800407dc:
    addi    r30, r30, 0x1
branch_0x800407e0:
    cmpw    r30, r28
    blt+    branch_0x8004074c
branch_0x800407e8:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lwz     r31, 0x94(sp)
    mtlr    r0
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    lwz     r28, 0x88(sp)
    addi    sp, sp, 0xa0
    blr


.globl reachGoal__11TEnemyMarioFv
reachGoal__11TEnemyMarioFv: # 0x8004080c
    lhz     r5, 0x4290(r3)
    li      r4, 0x0
    li      r0, 0x16
    ori     r5, r5, 0x1
    sth     r5, 0x4290(r3)
    stw     r4, 0x42a4(r3)
    sth     r0, 0x4292(r3)
    blr


.globl thinkTrample__11TEnemyMarioFv
thinkTrample__11TEnemyMarioFv: # 0x8004082c
    lwz     r0, 0x42dc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80040840
    li      r3, 0x0
    blr

branch_0x80040840:
    lhz     r0, 0x4292(r3)
    cmpwi   r0, 0xf
    beq-    branch_0x80040850
    b       branch_0x80040880

branch_0x80040850:
    lha     r4, 0x42b8(r3)
    subi    r0, r4, 0x1
    sth     r0, 0x42b8(r3)
    lha     r0, 0x42b8(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80040878
    li      r0, 0x0
    stw     r0, 0x42a4(r3)
    li      r0, 0xd
    sth     r0, 0x4292(r3)
branch_0x80040878:
    li      r3, 0x1
    blr

branch_0x80040880:
    li      r3, 0x0
    blr


.globl hitWater__11TEnemyMarioFP9THitActor
hitWater__11TEnemyMarioFP9THitActor: # 0x80040888
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    addi    r30, r4, 0x0
    lwz     r0, 0x42dc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80040a24
    lwz     r3, 0x430c(r31)
    lbz     r0, 0xa4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80040a24
    lhz     r3, 0x4292(r31)
    subi    r0, r3, 0xb
    cmplwi  r0, 0xe
    bgt-    branch_0x80040a24
    lis     r3, 0x803b
    subi    r3, r3, 0xff0
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x800408E8:		# jumptable 800408E4 cases 0-2
    li      r0, 0x258
    sth     r0, 0x42ba(r31)
    lha     r3, 0x4294(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x800409d4
    subi    r0, r3, 0x1
    sth     r0, 0x4294(r31)
    addi    r5, r30, 0x10
    li      r4, 0xe7
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x70a8(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lha     r0, 0x42b6(r31)
    sth     r0, 0x42b4(r31)
    lhz     r0, 0x4292(r31)
    cmplwi  r0, 0xc
    bne-    branch_0x80040a24
    mr      r3, r31
    bl      sleepingEffectKill__6TMarioFv
    lwz     r3, 0x42a0(r31)
    addi    r4, r31, 0x10
    li      r5, -0x1
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800409c0
    lha     r0, 0x4296(r31)
    sth     r0, 0x96(r31)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x8(r3)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
branch_0x800409c0:
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0xd
    sth     r0, 0x4292(r31)
    b       branch_0x80040a24

branch_0x800409d4:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x80040a24
    mr      r3, r31
    bl      canSleep__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80040a24
    lwz     r4, 0x6c(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80040a14
    lwz     r0, 0xf0(r4)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 12, 10
    stw     r0, 0xf0(r4)
    bl      dropObject__6TMarioFv

branch_0x80040a14:
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0xe
    sth     r0, 0x4292(r31)

def_800408E4:		# jumptable 800408E4 default case
branch_0x80040a24:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl consider__11TEnemyMarioFv
consider__11TEnemyMarioFv: # 0x80040a3c

.set var_134, -0x134
.set var_130, -0x130
.set var_12C, -0x12C
.set var_124, -0x124
.set var_E0, -0xE0
.set var_D0, -0xD0
.set var_C0, -0xC0
.set var_B0, -0xB0
.set var_70, -0x70
.set var_30, -0x30
.set var_28, -0x28
.set var_18, -0x18
.set var_10, -0x10
.set var_8, -8
.set var_4, -4
.set arg_4,  4

    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x220(sp)
    stw     r31, 0x21c(sp)
    mr      r31, r3
    stw     r30, 0x218(sp)
    lhz     r0, 0x4292(r3)
    cmplwi  r0, 0x1b
    bgt-    branch_0x80041278
    lis     r3, 0x803b
    subi    r3, r3, 0xfb4
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80040A78:		# jumptable 80040A74 case 0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    b       branch_0x80041278

branch_0x80040A90:		# jumptable 80040A74 case 1
lfs	  f1, 0x429C(r31)
lfs	  f0, -0x70A4(r2)
fcmpo	  cr0, f1, f0
bge	  branch_0x80040AC0
lwz	  r5, 0x108(r31)
li	  r3, 0
li	  r0, 2
lwz	  r4, 4(r5)
ori	  r4, r4, 0x100
stw	  r4, 4(r5)
stw	  r3, 0x42A4(r31)
sth	  r0, 0x4292(r31)

branch_0x80040AC0:
lfs	  f1, 0x429C(r31)
lfs	  f0, -0x70A0(r2)
fcmpo	  cr0, f1, f0
bge	  branch_0x80040B64
lhz	  r5, 0x4296(r31)
lwz	  r0, -0x5EAC(r13)
lwz	  r3, -0x5EA8(r13)
sraw	  r0, r5, r0
lfs	  f1, -0x710C(r2)
slwi	  r0, r0, 2
lfs	  f2, -0x70B4(r2)
lfsx	  f0, r3, r0
lwz	  r3, 0x108(r31)
fmuls	  f0, f0, f1
fmuls	  f0, f2, f0
fctiwz	  f0, f0
stfd	  f0, 0x220+var_10(r1)
lwz	  r0, 0x220+var_10+4(r1)
sth	  r0, 0(r3)
lwz	  r0, -0x5EAC(r13)
lwz	  r4, -0x5EA4(r13)
sraw	  r0, r5, r0
lwz	  r3, 0x108(r31)
slwi	  r0, r0, 2
lfsx	  f0, r4, r0
fneg	  f0, f0
fmuls	  f0, f0, f1
fmuls	  f0, f2, f0
fctiwz	  f0, f0
stfd	  f0, 0x220+var_18(r1)
lwz	  r0, 0x220+var_18+4(r1)
sth	  r0, 2(r3)
lwz	  r3, 0x108(r31)
lha	  r0, 0(r3)
neg	  r0, r0
sth	  r0, 0(r3)
lwz	  r3, 0x108(r31)
lhau	  r0, 2(r3)
neg	  r0, r0
sth	  r0, 0(r3)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040B64:
li	  r0, 0
sth	  r0, 0x4292(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040B70:		# jumptable 80040A74 case 2
mr	  r3, r31
bl	  emJumping__11TEnemyMarioFv # TEnemyMario::emJumping((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040B7C:		# jumptable 80040A74 case 3
lfs	  f1, 0x429C(r31)
lfs	  f0, -0x709C(r2)
fcmpo	  cr0, f1, f0
ble	  branch_0x80040C00
lhz	  r5, 0x4296(r31)
lwz	  r0, -0x5EAC(r13)
lwz	  r3, -0x5EA8(r13)
sraw	  r0, r5, r0
lfs	  f1, -0x710C(r2)
slwi	  r0, r0, 2
lfs	  f2, -0x70B4(r2)
lfsx	  f0, r3, r0
lwz	  r3, 0x108(r31)
fmuls	  f0, f0, f1
fmuls	  f0, f2, f0
fctiwz	  f0, f0
stfd	  f0, 0x220+var_18(r1)
lwz	  r0, 0x220+var_18+4(r1)
sth	  r0, 0(r3)
lwz	  r0, -0x5EAC(r13)
lwz	  r4, -0x5EA4(r13)
sraw	  r0, r5, r0
lwz	  r3, 0x108(r31)
slwi	  r0, r0, 2
lfsx	  f0, r4, r0
fneg	  f0, f0
fmuls	  f0, f0, f1
fmuls	  f0, f2, f0
fctiwz	  f0, f0
stfd	  f0, 0x220+var_10(r1)
lwz	  r0, 0x220+var_10+4(r1)
sth	  r0, 2(r3)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040C00:
li	  r0, 0
stw	  r0, 0x42A4(r31)
sth	  r0, 0x4292(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040C10:		# jumptable 80040A74 case 5
mr	  r3, r31
bl	  emWalkAround__11TEnemyMarioFv	# TEnemyMario::emWalkAround((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040C1C:		# jumptable 80040A74 case 6
lwz	  r30, 0x42A0(r31)
addi	  r3, r30, 0x104
bl	  getPoint__9TPathNodeCFv # TPathNode::getPoint(const(void))
lwz	  r5, 0(r3)
addi	  r4, r30, 0x10
lwz	  r0, 4(r3)
stw	  r5, 0x220+var_134(r1)
stw	  r0, 0x220+var_130(r1)
lwz	  r0, 8(r3)
addi	  r3, r1, 0x220+var_134
stw	  r0, 0x220+var_12C(r1)
bl	  sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
addi	  r3, r1, 0x220+var_134
addi	  r4, r3, 0
bl	  dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
bl	  sqrt__Q29JGeometry8TUtil_f_Ff
lfs	  f0, -0x7098(r2)
fcmpo	  cr0, f1, f0
bge	  branch_0x80040C8C
lfs	  f1, 0x429C(r31)
lfs	  f0, -0x7094(r2)
fcmpo	  cr0, f1, f0
ble	  branch_0x80040C84
lwz	  r3, 0x42A0(r31)
bl	  goToRandomNextGraphNode__11TSpineEnemyFv # TSpineEnemy::goToRandomNextGraphNode((void))
b	  branch_0x80040C8C

branch_0x80040C84:
lwz	  r3, 0x42A0(r31)
bl	  goToRandomEscapeGraphNode__11TSpineEnemyFv # TSpineEnemy::goToRandomEscapeGraphNode((void))

branch_0x80040C8C:
lwz	  r3, 0x42A0(r31)
addi	  r4, r3, 0xF4
lwz	  r3, 0xF4(r3)
cmplwi	  r3, 0
beq	  branch_0x80040CA8
addi	  r3, r3, 0x10
b	  branch_0x80040CAC

branch_0x80040CA8:
addi	  r3, r4, 4

branch_0x80040CAC:
lfs	  f3, 0(r3)
lfs	  f2, 0x10(r31)
lfs	  f1, 8(r3)
lfs	  f0, 0x18(r31)
fsubs	  f2, f3, f2
fsubs	  f1, f1, f0
bl	  matan__Fff	# matan(float,float)
lwz	  r0, -0x5EAC(r13)
clrlwi	  r6, r3, 16
lis	  r3, 0x51EC # 0x51EB851F
lwz	  r4, -0x5EA8(r13)
sraw	  r0, r6, r0
slwi	  r0, r0, 2
lfs	  f1, -0x710C(r2)
lfsx	  f0, r4, r0
addi	  r0, r3, -0x7AE1 # 0x51EB851F
lfs	  f2, -0x70B4(r2)
fmuls	  f0, f0, f1
lwz	  r3, 0x108(r31)
fmuls	  f0, f2, f0
fctiwz	  f0, f0
stfd	  f0, 0x220+var_18(r1)
lwz	  r4, 0x220+var_18+4(r1)
sth	  r4, 0(r3)
lwz	  r3, -0x5EAC(r13)
lwz	  r5, -0x5EA4(r13)
sraw	  r4, r6, r3
lwz	  r3, 0x108(r31)
slwi	  r4, r4, 2
lfsx	  f0, r5, r4
fneg	  f0, f0
fmuls	  f0, f0, f1
fmuls	  f0, f2, f0
fctiwz	  f0, f0
stfd	  f0, 0x220+var_10(r1)
lwz	  r4, 0x220+var_10+4(r1)
sth	  r4, 2(r3)
lwz	  r3, 0x42A4(r31)
addi	  r3, r3, 1
stw	  r3, 0x42A4(r31)
lwz	  r3, 0x42A4(r31)
mulhwu	  r0, r0, r3
srwi	  r0, r0, 5
mulli	  r0, r0, 0x64
subf.	  r0, r0, r3
bne	  def_80040A74	# jumptable 80040A74 default case
lis	  r4, aGngagngkgGlbGw@h	# "ハムクリマネージャー"
lwz	  r3, -0x70B0(r13)
addi	  r5, r4, aGngagngkgGlbGw@l # "ハムクリマネージャー"
addi	  r4, r31, 0x10
li	  r6, 1
li	  r7, 0
bl	  makeEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCcii
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040D84:		# jumptable 80040A74 case 4
lha	  r3, 0x96(r31)
lha	  r0, 0x4298(r31)
subf	  r30, r3, r0
bl	  rand
cmpwi	  r3, 0x64
bge	  branch_0x80040DC0
lwz	  r5, 0x108(r31)
li	  r3, 0
li	  r0, 2
lwz	  r4, 4(r5)
ori	  r4, r4, 0x100
stw	  r4, 4(r5)
stw	  r3, 0x42A4(r31)
sth	  r0, 0x4292(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040DC0:
extsh	  r0, r30
cmpwi	  r0, -0x1555
blt	  branch_0x80040DD4
cmpwi	  r0, 0x1555
ble	  branch_0x80040E48

branch_0x80040DD4:
lhz	  r5, 0x4298(r31)
lwz	  r0, -0x5EAC(r13)
lwz	  r3, -0x5EA8(r13)
sraw	  r0, r5, r0
lfs	  f1, -0x710C(r2)
slwi	  r0, r0, 2
lfs	  f2, -0x7090(r2)
lfsx	  f0, r3, r0
lwz	  r3, 0x108(r31)
fmuls	  f0, f0, f1
fmuls	  f0, f2, f0
fctiwz	  f0, f0
stfd	  f0, 0x220+var_18(r1)
lwz	  r0, 0x220+var_18+4(r1)
sth	  r0, 0(r3)
lwz	  r0, -0x5EAC(r13)
lwz	  r4, -0x5EA4(r13)
sraw	  r0, r5, r0
lwz	  r3, 0x108(r31)
slwi	  r0, r0, 2
lfsx	  f0, r4, r0
fneg	  f0, f0
fmuls	  f0, f0, f1
fmuls	  f0, f2, f0
fctiwz	  f0, f0
stfd	  f0, 0x220+var_10(r1)
lwz	  r0, 0x220+var_10+4(r1)
sth	  r0, 2(r3)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040E48:
li	  r0, 0
stw	  r0, 0x42A4(r31)
sth	  r0, 0x4292(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040E58:		# jumptable 80040A74 case 7
lwz	  r0, 0x64(r31)
ori	  r0, r0, 1
stw	  r0, 0x64(r31)
lwz	  r3, 0x42A0(r31)
lwz	  r0, 0x64(r3)
ori	  r0, r0, 1
stw	  r0, 0x64(r3)
lwz	  r3, 0x42A4(r31)
addi	  r0, r3, 1
stw	  r0, 0x42A4(r31)
lwz	  r3, gpPollution(r13)
lfs	  f1, 0x10(r31)
lfs	  f2, 0x14(r31)
lfs	  f3, 0x18(r31)
bl	  isPolluted__17TPollutionManagerCFfff # TPollutionManager::isPolluted(const(float,float,float))
clrlwi.	  r0, r3, 24
beq	  branch_0x80040EA8
lwz	  r0, 0x42A4(r31)
cmplwi	  r0, 0x1C20
ble	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040EA8:
li	  r4, 0
stw	  r4, 0x42A4(r31)
li	  r3, 0x78
li	  r0, 8
sth	  r3, 0x14C(r31)
stw	  r4, 0x42A4(r31)
sth	  r0, 0x4292(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040EC8:		# jumptable 80040A74 case 8
lha	  r0, 0x14C(r31)
cmpwi	  r0, 0
bne	  def_80040A74	# jumptable 80040A74 default case
li	  r0, 0
stw	  r0, 0x42A4(r31)
sth	  r0, 0x4292(r31)
lwz	  r0, 0x64(r31)
clrrwi	  r0, r0, 1
stw	  r0, 0x64(r31)
lwz	  r3, 0x42A0(r31)
lwz	  r0, 0x64(r3)
clrrwi	  r0, r0, 1
stw	  r0, 0x64(r3)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040F00:		# jumptable 80040A74 case 9
lwz	  r0, 0x64(r31)
addi	  r3, r31, 0
li	  r4, 0x133E
ori	  r0, r0, 1
stw	  r0, 0x64(r31)
li	  r5, 0
li	  r6, 0
lwz	  r7, 0x42A0(r31)
lwz	  r0, 0x64(r7)
ori	  r0, r0, 1
stw	  r0, 0x64(r7)
lhz	  r0, 0x4290(r31)
rlwinm	  r0, r0, 0,31,29
sth	  r0, 0x4290(r31)
lhz	  r0, 0x114(r31)
rlwinm	  r0, r0, 0,31,29
sth	  r0, 0x114(r31)
bl	  changePlayerStatus__6TMarioFUlUlb # TMario::changePlayerStatus((ulong,ulong,bool))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040F4C:		# jumptable 80040A74 case 10
mr	  r3, r31
bl	  emDisappearToGate__11TEnemyMarioFv # TEnemyMario::emDisappearToGate((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80040F58:		# jumptable 80040A74 case 12
lwz	  r3, MarioHitActorPos(r13)
lfs	  f3, 0x10(r31)
lfs	  f2, 0(r3)
lfs	  f1, 0x14(r31)
fsubs	  f4, f3, f2
lfs	  f0, 4(r3)
lfs	  f2, 0x18(r31)
fsubs	  f3, f1, f0
lfs	  f0, 8(r3)
fsubs	  f2, f2, f0
fmuls	  f1, f4, f4
fmuls	  f0, f3, f3
fmuls	  f2, f2, f2
fadds	  f0, f1, f0
fadds	  f1, f2, f0
bl	  sqrt__Q29JGeometry8TUtil_f_Ff
lwz	  r4, 0x430C(r31)
lfs	  f0, 0x18(r4)
fcmpo	  cr0, f1, f0
bge	  def_80040A74	# jumptable 80040A74 default case
lfs	  f1, 0x14(r31)
lfs	  f0, 0x2C(r4)
lwz	  r3, MarioHitActorPos(r13)
fadds	  f0, f1, f0
lfs	  f1, 4(r3)
fcmpo	  cr0, f1, f0
bge	  def_80040A74	# jumptable 80040A74 default case
lwz	  r3, 0x42A0(r31)
lwz	  r3, 0x124(r3)
bl	  getGraph__12TGraphTracerCFv #	TGraphTracer::getGraph(const(void))
addi	  r4, r31, 0x10
li	  r5, -1
bl	  findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
lwz	  r4, 0x42A0(r31)
mr	  r30, r3
lwz	  r3, 0x124(r4)
bl	  getGraph__12TGraphTracerCFv #	TGraphTracer::getGraph(const(void))
lwz	  r3, 0(r3)
slwi	  r0, r30, 4
lwzx	  r3, r3, r0
lwz	  r0, 8(r3)
rlwinm.	  r0, r0, 0,30,30
beq	  branch_0x8004102C
lha	  r0, 0x4296(r31)
sth	  r0, 0x96(r31)
lwz	  r3, 0x108(r31)
lwz	  r0, 8(r3)
ori	  r0, r0, 0x100
stw	  r0, 8(r3)
lwz	  r3, 0x108(r31)
lwz	  r0, 4(r3)
ori	  r0, r0, 0x100
stw	  r0, 4(r3)

branch_0x8004102C:
li	  r0, 0
stw	  r0, 0x42A4(r31)
li	  r0, 0xD
sth	  r0, 0x4292(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80041040:		# jumptable 80040A74 case 13
mr	  r3, r31
bl	  emReplayJumpToNearestNode__11TEnemyMarioFv # TEnemyMario::emReplayJumpToNearestNode((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x8004104C:		# jumptable 80040A74 case 14
addi	  r3, r31, 0
li	  r4, 0x133E
li	  r5, 0
li	  r6, 1
bl	  changePlayerStatus__6TMarioFUlUlb # TMario::changePlayerStatus((ulong,ulong,bool))
lfs	  f1, -0x70B4(r2)
addi	  r3, r31, 0
li	  r4, 0x2C
bl	  setAnimation__6TMarioFif # TMario::setAnimation((int,float))
mr	  r3, r31
bl	  getMotionFrameCtrl__6TMarioFv	# TMario::getMotionFrameCtrl((void))
lfs	  f1, 0x10(r3)
lfs	  f0, -0x708C(r2)
fcmpo	  cr0, f1, f0
ble	  def_80040A74	# jumptable 80040A74 default case
li	  r0, 0
stw	  r0, 0x42A4(r31)
li	  r0, 0xF
sth	  r0, 0x4292(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x8004109C:		# jumptable 80040A74 case 15
mr	  r3, r31
bl	  emDownAnimation__11TEnemyMarioFv # TEnemyMario::emDownAnimation((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x800410A8:		# jumptable 80040A74 case 16
mr	  r3, r31
bl	  emRunAwayToNearestNode__11TEnemyMarioFv # TEnemyMario::emRunAwayToNearestNode((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x800410B4:		# jumptable 80040A74 case 22
lha	  r3, 0x96(r31)
li	  r4, 0
lha	  r0, 0x4296(r31)
li	  r5, 0x180
li	  r6, 0x180
subf	  r0, r3, r0
extsh	  r3, r0
bl	  IConverge__Fiiii # IConverge(int,int,int,int)
lha	  r0, 0x4296(r31)
lis	  r4, 0xC40 # 0xC400201
addi	  r4, r4, 0x201	# 0xC400201
subf	  r0, r3, r0
sth	  r0, 0x96(r31)
addi	  r3, r31, 0
li	  r5, 0
li	  r6, 0
bl	  changePlayerStatus__6TMarioFUlUlb # TMario::changePlayerStatus((ulong,ulong,bool))
mr	  r3, r31
bl	  changeMontemanWaitingAnim__6TMarioFv # TMario::changeMontemanWaitingAnim((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80041104:		# jumptable 80040A74 case 18
mr	  r3, r31
bl	  tryTake__11TEnemyMarioFv # TEnemyMario::tryTake((void))
clrlwi.	  r0, r3, 24
beq	  def_80040A74	# jumptable 80040A74 default case
lwz	  r3, 0x42F0(r31)
cmplwi	  r3, 0
beq	  branch_0x80041150
lwz	  r4, 0x430C(r31)
lbz	  r0, 0x68(r4)
cmplwi	  r0, 1
bne	  branch_0x80041150
lis	  r4, aStamp_koopa_si@h	# "stamp_koopa_sign_draw1"
addi	  r4, r4, aStamp_koopa_si@l # "stamp_koopa_sign_draw1"
bl	  setBck__6MActorFPCc #	MActor::setBck((char const *))
li	  r0, 0
stw	  r0, 0x42A4(r31)
li	  r0, 0x13
sth	  r0, 0x4292(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80041150:
mr	  r3, r31
bl	  decideDoingAfterCarry__11TEnemyMarioFv # TEnemyMario::decideDoingAfterCarry((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x8004115C:		# jumptable 80040A74 case 19
lwz	  r3, 0x42F0(r31)
li	  r4, 0
li	  r5, 0
bl	  curAnmEndsNext__6MActorFiPc #	MActor::curAnmEndsNext((int,char *))
cmpwi	  r3, 0
beq	  def_80040A74	# jumptable 80040A74 default case
mr	  r3, r31
bl	  decideDoingAfterCarry__11TEnemyMarioFv # TEnemyMario::decideDoingAfterCarry((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80041180:		# jumptable 80040A74 case 20
mr	  r3, r31
bl	  emWaitingToInviteMario__11TEnemyMarioFv # TEnemyMario::emWaitingToInviteMario((void))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x8004118C:		# jumptable 80040A74 cases 24,26
lha	  r3, 0x96(r31)
li	  r4, 0
lha	  r0, 0x4296(r31)
li	  r5, 0x180
li	  r6, 0x180
subf	  r0, r3, r0
extsh	  r3, r0
bl	  IConverge__Fiiii # IConverge(int,int,int,int)
lha	  r0, 0x4296(r31)
subf	  r0, r3, r0
sth	  r0, 0x96(r31)
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x800411BC:		# jumptable 80040A74 case 23
lwz	  r3, 0x42A0(r31)
addi	  r4, r31, 0x10
lwz	  r3, 0x124(r3)
lwz	  r3, 0(r3)
lwz	  r3, 0(r3)
addi	  r3, r3, 0x80
bl	  getPoint__10TGraphNodeCFP3Vec	# TGraphNode::getPoint(const(Vec *))
li	  r0, -0x8000
sth	  r0, 0x96(r31)
mr	  r3, r31
sth	  r0, 0x9A(r31)
bl	  isLast1AnimeFrame__6TMarioFv # TMario::isLast1AnimeFrame((void))
cmpwi	  r3, 0
beq	  def_80040A74	# jumptable 80040A74 default case
addi	  r3, r31, 0
li	  r4, 0xA
bl	  startDisappear__11TEnemyMarioFUs # TEnemyMario::startDisappear((ushort))
b	  def_80040A74	# jumptable 80040A74 default case

branch_0x80041204:		# jumptable 80040A74 case 27
addi	  r3, r1, 0x220+var_E0
li	  r4, 0
li	  r5, 0
li	  r6, 0
li	  r7, 0
bl	  set__7JUTRectFiiii # JUTRect::set((int,int,int,int))
addi	  r3, r1, 0x220+var_D0
li	  r4, 0
li	  r5, 0
li	  r6, 0
li	  r7, 0
bl	  set__7JUTRectFiiii # JUTRect::set((int,int,int,int))
addi	  r3, r1, 0x220+var_C0
li	  r4, 0
li	  r5, 0
li	  r6, 0
li	  r7, 0
bl	  set__7JUTRectFiiii # JUTRect::set((int,int,int,int))
addi	  r3, r1, 0x220+var_B0
bl	  __ct__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f___Fv
addi	  r3, r1, 0x220+var_70
bl	  __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
li	  r0, -1
stw	  r0, 0x220+var_30(r1)
li	  r0, 0
addi	  r3, r31, 0
sth	  r0, 0x220+var_28(r1)
addi	  r4, r1, 0x220+var_124
bl	  checkController__6TMarioFPQ26JDrama9TGraphics	# TMario::checkController((JDrama::TGraphics *))

def_80040A74:		# jumptable 80040A74 default case
branch_0x80041278:
    lwz     r0, 0x224(sp)
    lwz     r31, 0x21c(sp)
    lwz     r30, 0x218(sp)
    mtlr    r0
    addi    sp, sp, 0x220
    blr


.globl __ct__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f___Fv
__ct__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f___Fv: # 0x80041290
    blr


.globl getGraph__12TGraphTracerCFv
getGraph__12TGraphTracerCFv: # 0x80041294
    lwz     r3, 0x0(r3)
    blr


.globl getPoint__9TPathNodeCFv
getPoint__9TPathNodeCFv: # 0x8004129c
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800412b0
    addi    r3, r4, 0x10
    blr

branch_0x800412b0:
    addi    r3, r3, 0x4
    blr


.globl __ct__Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f__Fv
__ct__Q29JGeometry38TMatrix44_Q29JGeometry13SMatrix44C_f__Fv: # 0x800412b8
    blr


.globl startGateDrawing__11TEnemyMarioFv
startGateDrawing__11TEnemyMarioFv: # 0x800412bc
    mflr    r0
    li      r4, MARIOSTATUS_133e
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0x70b4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x129
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x17
    addi    r3, r31, 0x0
    sth     r0, 0x4292(r31)
    li      r4, 0x1980
    bl      startSoundActor__6TMarioFUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emWaitingToInviteMario__11TEnemyMarioFv
emWaitingToInviteMario__11TEnemyMarioFv: # 0x80041320
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    addi    r4, sp, 0x8c
    stw     r30, 0xa0(sp)
    lwz     r3, 0x42a0(r3)
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0x70
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r3, 0x8c(sp)
    li      r4, 0x0
    lwz     r0, 0x90(sp)
    li      r5, 0x180
    li      r6, 0x180
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x94(sp)
    stw     r0, 0x18(r31)
    lha     r3, 0x96(r31)
    lha     r0, 0x4296(r31)
    subf    r0, r3, r0
    extsh   r3, r0
    bl      IConverge__Fiiii
    lha     r0, 0x4296(r31)
    lis     r30, 0xc40
    addi    r4, r30, MARIOSTATUS_201
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
    addi    r3, r31, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    mr      r3, r31
    bl      changeMontemanWaitingAnim__6TMarioFv
    lwz     r3, MarioHitActorPos(r13)
    lfs     f3, 0x10(r31)
    lfs     f2, 0x0(r3)
    lfs     f1, 0x14(r31)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r3)
    lfs     f2, 0x18(r31)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r3)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r4, 0x430c(r31)
    lfs     f0, 0x18(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800414a4
    lfs     f1, 0x14(r31)
    lfs     f0, 0x2c(r4)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f0, f1, f0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800414a4
    lwz     r3, 0x42a0(r31)
    addi    r4, sp, 0x78
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0x80
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f3, 0x78(sp)
    lfs     f2, 0x8c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x94(sp)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    sth     r3, 0x96(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, MARIOSTATUS_201
    lha     r0, 0x96(r31)
    li      r5, 0x0
    li      r6, 0x1
    sth     r0, 0x9a(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r30, 0x0
    stw     r30, 0x42a8(r31)
    lwz     r3, 0x4300(r31)
    bl      reset__17TMarioInputReplayFv
    lwz     r3, 0x4300(r31)
    li      r4, 0x1
    li      r0, 0x15
    sth     r4, 0x2(r3)
    stw     r30, 0x42a4(r31)
    sth     r0, 0x4292(r31)
branch_0x800414a4:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    addi    sp, sp, 0xa8
    blr


.globl decideDoingAfterCarry__11TEnemyMarioFv
decideDoingAfterCarry__11TEnemyMarioFv: # 0x800414bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    lhz     r0, 0x4290(r3)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x800414e4
    li      r0, 0x1
    b       branch_0x800414e8

branch_0x800414e4:
    li      r0, 0x0
branch_0x800414e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80041574
    lhz     r0, 0x4290(r31)
    addi    r4, r31, 0x10
    li      r5, -0x1
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0x4290(r31)
    lwz     r3, 0x42a0(r31)
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80041560
    lha     r0, 0x4296(r31)
    sth     r0, 0x96(r31)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x8(r3)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
branch_0x80041560:
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0xd
    sth     r0, 0x4292(r31)
    b       branch_0x8004160c

branch_0x80041574:
    lwz     r3, 0x430c(r31)
    lbz     r0, 0x54(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80041598
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0xc
    sth     r0, 0x4292(r31)
    b       branch_0x8004160c

branch_0x80041598:
    lwz     r3, 0x42a0(r31)
    addi    r4, r31, 0x10
    li      r5, -0x1
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800415fc
    lha     r0, 0x4296(r31)
    sth     r0, 0x96(r31)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x8(r3)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
branch_0x800415fc:
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0xd
    sth     r0, 0x4292(r31)
branch_0x8004160c:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl emRunAwayToNearestNode__11TEnemyMarioFv
emRunAwayToNearestNode__11TEnemyMarioFv: # 0x80041620
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stw     r31, 0x124(sp)
    mr      r31, r3
    addi    r4, sp, 0x110
    lwz     r3, 0x42a0(r3)
    lha     r0, 0x42cc(r31)
    lwz     r3, 0x124(r3)
    slwi    r0, r0, 4
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x42e0
    li      r4, 0x1aa
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x42e0
    li      r4, 0x1ab
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0x42a4(r31)
    cmplwi  r0, 0x8
    blt-    branch_0x800416ac
    cmplwi  r0, 0x12c
    bge-    branch_0x800416ac
    lhz     r0, 0x4290(r31)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x4290(r31)
    b       branch_0x800416b8

branch_0x800416ac:
    lhz     r0, 0x4290(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x4290(r31)
branch_0x800416b8:
    lwz     r0, 0x42a4(r31)
    cmpwi   r0, 0xc8
    beq-    branch_0x800418d0
    bge-    branch_0x800416ec
    cmpwi   r0, 0x8
    beq-    branch_0x80041ae0
    bge-    branch_0x800416e0
    cmpwi   r0, 0x0
    beq-    branch_0x80041704
    b       branch_0x80041ae0

branch_0x800416e0:
    cmpwi   r0, 0x64
    beq-    branch_0x80041780
    b       branch_0x80041ae0

branch_0x800416ec:
    cmpwi   r0, 0x12c
    beq-    branch_0x80041948
    bge-    branch_0x80041ae0
    cmpwi   r0, 0xdc
    beq-    branch_0x800418fc
    b       branch_0x80041ae0

branch_0x80041704:
    mr      r3, r31
    bl      findRunAwayNearestNode__11TEnemyMarioFv
    lwz     r3, 0x10(r31)
    addi    r5, r31, 0x42e0
    lwz     r0, 0x14(r31)
    li      r4, 0xed
    li      r6, 0x0
    stw     r3, 0x42e0(r31)
    li      r7, 0x0
    stw     r0, 0x42e4(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x42e8(r31)
    lfs     f1, 0x42e4(r31)
    lfs     f0, -0x7088(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x42e4(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    li      r4, 0x1976
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80041ae0
    addi    r4, r31, 0x10
    li      r3, 0x1976
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80041ae0

branch_0x80041780:
    lwz     r0, 0x110(sp)
    addi    r3, sp, 0xb8
    lwz     r5, 0x114(sp)
    addi    r4, r31, 0x42c0
    stw     r0, 0xb8(sp)
    lwz     r0, 0x118(sp)
    stw     r5, 0xbc(sp)
    stw     r0, 0xc0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xb8(sp)
    lwz     r3, 0xbc(sp)
    stw     r0, 0xfc(sp)
    lwz     r0, 0xc0(sp)
    stw     r3, 0x100(sp)
    lfs     f0, -0x7084(rtoc)
    stw     r0, 0x104(sp)
    lfs     f2, 0xfc(sp)
    lfs     f1, 0x100(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x104(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80041800
    lfs     f0, -0x710c(rtoc)
    stfs    f0, 0x104(sp)
    stfs    f0, 0x100(sp)
    stfs    f0, 0xfc(sp)
    b       branch_0x80041830

branch_0x80041800:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x70b4(rtoc)
    lfs     f0, 0xfc(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xfc(sp)
    lfs     f0, 0x100(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x100(sp)
    lfs     f0, 0x104(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x104(sp)
branch_0x80041830:
    lfs     f1, 0x42d0(r31)
    lfs     f0, 0xfc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xfc(sp)
    lfs     f0, 0x100(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x100(sp)
    lfs     f0, 0x104(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x104(sp)
    lfs     f1, 0x42e0(r31)
    lfs     f0, 0xfc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x42e0(r31)
    lfs     f1, 0x42e4(r31)
    lfs     f0, 0x100(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x42e4(r31)
    lfs     f1, 0x42e8(r31)
    lfs     f0, 0x104(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x42e8(r31)
    lfs     f1, 0x118(sp)
    lfs     f0, 0x42e8(r31)
    lfs     f3, 0x42d0(r31)
    fsubs   f4, f1, f0
    lfs     f2, 0x110(sp)
    lfs     f1, 0x42e0(r31)
    fmuls   f0, f3, f3
    fsubs   f2, f2, f1
    fmuls   f1, f4, f4
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800418c0
    li      r0, 0xc8
    stw     r0, 0x42a4(r31)
branch_0x800418c0:
    lwz     r3, 0x42a4(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x42a4(r31)
    b       branch_0x80041ae0

branch_0x800418d0:
    lwz     r3, 0x110(sp)
    lwz     r0, 0x114(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x118(sp)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x70e4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x80041ae0

branch_0x800418fc:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x42e0
    li      r4, 0xed
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    li      r4, 0x197c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80041ae0
    addi    r4, r31, 0x10
    li      r3, 0x197c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80041ae0

branch_0x80041948:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80041a2c
    lwz     r3, 0x42a0(r31)
    addi    r4, sp, 0xf0
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0x70
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f3, 0xf0(sp)
    lfs     f2, 0x110(sp)
    lfs     f1, 0xf8(sp)
    lfs     f0, 0x118(sp)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    sth     r3, 0x96(r31)
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    lha     r0, 0x96(r31)
    addi    r4, r4, 0x201
    li      r5, 0x0
    sth     r0, 0x9a(r31)
    li      r6, 0x1
    lwz     r7, 0x110(sp)
    lwz     r0, 0x114(sp)
    stw     r7, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x118(sp)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x70e4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    lha     r0, 0x42cc(r31)
    stw     r0, 0x42a8(r31)
    lwz     r0, 0x42fc(r31)
    stw     r0, 0x42f8(r31)
    lwz     r0, 0x42a8(r31)
    lwz     r3, 0x42f8(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      reset__17TMarioInputReplayFv
    lwz     r0, 0x42a8(r31)
    li      r5, 0x1
    lwz     r4, 0x42f8(r31)
    li      r3, 0x0
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    li      r0, 0x11
    sth     r5, 0x2(r4)
    stw     r3, 0x42a4(r31)
    sth     r0, 0x4292(r31)
    b       branch_0x80041ae0

branch_0x80041a2c:
    lwz     r5, 0x110(sp)
    lis     r4, 0xc40
    lwz     r0, 0x114(sp)
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    stw     r5, 0x10(r31)
    li      r5, 0x0
    li      r6, 0x1
    stw     r0, 0x14(r31)
    lwz     r0, 0x118(sp)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x70e4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, 0x42a0(r31)
    addi    r4, r31, 0x10
    li      r5, -0x1
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80041ad0
    lha     r0, 0x4296(r31)
    sth     r0, 0x96(r31)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x8(r3)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
branch_0x80041ad0:
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0xd
    sth     r0, 0x4292(r31)
branch_0x80041ae0:
    lwz     r3, 0x42a4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x42a4(r31)
    lwz     r0, 0x12c(sp)
    lwz     r31, 0x124(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl findRunAwayNearestNode__11TEnemyMarioFv
findRunAwayNearestNode__11TEnemyMarioFv: # 0x80041b00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stfd    f30, 0x128(sp)
    stmw    r27, 0x114(sp)
    addi    r28, r3, 0x0
    li      r31, 0x0
    li      r30, 0x0
    li      r29, 0x0
    li      r27, 0x0
    lfs     f31, -0x7080(rtoc)
    fmr     f30, f31
    b       branch_0x80041c48

branch_0x80041b38:
    lwz     r0, 0x0(r3)
    addi    r4, sp, 0x104
    add     r3, r0, r27
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r0, 0x104(sp)
    lwz     r3, 0x108(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x10c(sp)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x10(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lfs     f1, 0xb4(sp)
    lfs     f0, 0x14(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xb4(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0x18(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xb8(sp)
    lwz     r0, 0xb0(sp)
    lwz     r3, 0xb4(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0xe0(sp)
    lfs     f2, 0xe4(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    bge-    branch_0x80041c18
    lwz     r0, 0xf8(sp)
    fmr     f30, f31
    lwz     r3, 0xfc(sp)
    mr      r30, r31
    stw     r0, 0xec(sp)
    lwz     r4, 0x100(sp)
    lwz     r0, 0x104(sp)
    fmr     f31, f1
    stw     r3, 0xf0(sp)
    mr      r31, r29
    lwz     r3, 0x108(sp)
    stw     r0, 0xf8(sp)
    lwz     r0, 0x10c(sp)
    stw     r3, 0xfc(sp)
    stw     r4, 0xf4(sp)
    stw     r0, 0x100(sp)
    b       branch_0x80041c40

branch_0x80041c18:
    fcmpo   cr0, f1, f30
    bge-    branch_0x80041c40
    lwz     r0, 0x104(sp)
    fmr     f30, f1
    lwz     r3, 0x108(sp)
    mr      r30, r29
    stw     r0, 0xec(sp)
    lwz     r0, 0x10c(sp)
    stw     r3, 0xf0(sp)
    stw     r0, 0xf4(sp)
branch_0x80041c40:
    addi    r29, r29, 0x1
    addi    r27, r27, 0x10
branch_0x80041c48:
    lwz     r3, 0x42a0(r28)
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    cmpw    r29, r0
    blt+    branch_0x80041b38
    lwz     r3, 0x10(r28)
    lwz     r0, 0x14(r28)
    lfs     f2, 0xec(sp)
    stw     r3, 0x88(sp)
    lfs     f1, 0xf0(sp)
    stw     r0, 0x8c(sp)
    lfs     f0, 0xf4(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0x90(sp)
    lfs     f3, 0x88(sp)
    fsubs   f2, f3, f2
    stfs    f2, 0x88(sp)
    lfs     f2, 0x8c(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x8c(sp)
    lfs     f1, 0x90(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(sp)
    lwz     r0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    lfs     f2, 0xcc(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r3, 0x10(r28)
    fmr     f30, f1
    lwz     r0, 0x14(r28)
    lfs     f2, 0xf8(sp)
    stw     r3, 0x98(sp)
    lfs     f1, 0xfc(sp)
    stw     r0, 0x9c(sp)
    lfs     f0, 0x100(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0xa0(sp)
    lfs     f3, 0x98(sp)
    fsubs   f2, f3, f2
    stfs    f2, 0x98(sp)
    lfs     f2, 0x9c(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lwz     r0, 0x98(sp)
    lwz     r3, 0x9c(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0xa0(sp)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0xd4(sp)
    lfs     f2, 0xd8(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f30
    bge-    branch_0x80041d80
    extsh   r0, r31
    sth     r0, 0x42cc(r28)
    b       branch_0x80041d88

branch_0x80041d80:
    extsh   r0, r30
    sth     r0, 0x42cc(r28)
branch_0x80041d88:
    lmw     r27, 0x114(sp)
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lfd     f30, 0x128(sp)
    mtlr    r0
    addi    sp, sp, 0x138
    blr


.globl startRunAway__11TEnemyMarioFv
startRunAway__11TEnemyMarioFv: # 0x80041da4
    li      r0, 0x0
    stw     r0, 0x42a4(r3)
    li      r0, 0x10
    sth     r0, 0x4292(r3)
    blr


.globl emDownAnimation__11TEnemyMarioFv
emDownAnimation__11TEnemyMarioFv: # 0x80041db8
    mflr    r0
    li      r4, MARIOSTATUS_133e
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x1
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0x70b4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x13e
    bl      setAnimation__6TMarioFif
    lwz     r3, gpMarDirector(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x80041e24
    cmplwi  r3, 0x4
    beq-    branch_0x80041e24
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x80041e1c
    cmplwi  r3, 0x2
    beq-    branch_0x80041e1c
    li      r0, 0x0
branch_0x80041e1c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80041e58
branch_0x80041e24:
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x42c0(r31)
    stw     r0, 0x42c4(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x42c8(r31)
    lwz     r3, 0x42c0(r31)
    lwz     r0, 0x42c4(r31)
    stw     r3, 0x42e0(r31)
    stw     r0, 0x42e4(r31)
    lwz     r0, 0x42c8(r31)
    stw     r0, 0x42e8(r31)
    b       branch_0x80041ed0

branch_0x80041e58:
    lwz     r3, 0x42a4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x42a4(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x42c0(r31)
    stw     r0, 0x42c4(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x42c8(r31)
    lwz     r3, 0x42c0(r31)
    lwz     r0, 0x42c4(r31)
    stw     r3, 0x42e0(r31)
    stw     r0, 0x42e4(r31)
    lwz     r0, 0x42c8(r31)
    stw     r0, 0x42e8(r31)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x80041ed0
    lwz     r5, 0x430c(r31)
    lwz     r3, 0x42a4(r31)
    lha     r0, 0xcc(r5)
    cmplw   r3, r0
    ble-    branch_0x80041ed0
    lha     r4, 0x40(r5)
    li      r3, 0x0
    li      r0, 0x10
    sth     r4, 0x4294(r31)
    stw     r3, 0x42a4(r31)
    sth     r0, 0x4292(r31)
branch_0x80041ed0:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl emReplayJumpToNearestNode__11TEnemyMarioFv
emReplayJumpToNearestNode__11TEnemyMarioFv: # 0x80041ee4
    mflr    r0
    li      r5, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x2c0(sp)
    stfd    f31, 0x2b8(sp)
    stfd    f30, 0x2b0(sp)
    stfd    f29, 0x2a8(sp)
    stfd    f28, 0x2a0(sp)
    stfd    f27, 0x298(sp)
    stfd    f26, 0x290(sp)
    stmw    r20, 0x260(sp)
    mr      r31, r3
    addi    r4, r31, 0x10
    lwz     r3, 0x42a0(r3)
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80041f80
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x8(r3)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
    lfs     f0, 0xa8(r31)
    lfs     f1, 0x42bc(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80041f80
    stfs    f1, 0xa8(r31)
branch_0x80041f80:
    lwz     r3, 0x42a4(r31)
    addi    r4, r31, 0x10
    li      r5, -0x1
    addi    r0, r3, 0x1
    stw     r0, 0x42a4(r31)
    lwz     r3, 0x42a0(r31)
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    addi    r30, r3, 0x0
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    addi    r4, sp, 0x248
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r28, r3, r0
    addi    r3, r28, 0x0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f2, 0x10(r31)
    lfs     f0, 0x248(sp)
    lfs     f1, -0x707c(rtoc)
    fsubs   f0, f0, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x10(r31)
    lfs     f2, 0x18(r31)
    lfs     f0, 0x250(sp)
    fsubs   f0, f0, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x18(r31)
    lfs     f2, 0x14(r31)
    lfs     f0, 0x24c(sp)
    fsubs   f0, f0, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x14(r31)
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x201
    beq-    branch_0x80042058
    lwz     r3, 0x42a0(r31)
    addi    r4, r31, 0x10
    li      r5, -0x1
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8004269c
branch_0x80042058:
    lwz     r4, 0x248(sp)
    mr      r3, r31
    lwz     r0, 0x24c(sp)
    stw     r4, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x250(sp)
    stw     r0, 0x18(r31)
    lfs     f0, -0x710c(rtoc)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    bl      resetHistory__6TMarioFv
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r27, 0x4304(r31)
    addi    r3, r28, 0x0
    addi    r4, r31, 0x10
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r6, MarioHitActorPos(r13)
    addi    r3, sp, 0x148
    addi    r4, sp, 0x248
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x148(sp)
    stw     r0, 0x14c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x150(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x148(sp)
    lwz     r3, 0x14c(sp)
    stw     r0, 0x23c(sp)
    lwz     r0, 0x150(sp)
    stw     r3, 0x240(sp)
    lfs     f0, -0x7084(rtoc)
    stw     r0, 0x244(sp)
    lfs     f2, 0x23c(sp)
    lfs     f1, 0x240(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x244(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80042138
    lfs     f0, -0x710c(rtoc)
    stfs    f0, 0x244(sp)
    stfs    f0, 0x240(sp)
    stfs    f0, 0x23c(sp)
    b       branch_0x80042168

branch_0x80042138:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x70b4(rtoc)
    lfs     f0, 0x23c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x23c(sp)
    lfs     f0, 0x240(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x240(sp)
    lfs     f0, 0x244(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x244(sp)
branch_0x80042168:
    lwz     r3, 0x430c(r31)
    li      r28, 0x0
    lfs     f26, -0x70b4(rtoc)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800422c4
    mulli   r0, r30, 0x6
    fmr     f30, f26
    lfs     f28, 0x240(sp)
    lfs     f27, 0x244(sp)
    add     r30, r27, r0
    lfs     f29, -0x7084(rtoc)
    li      r27, 0x0
    lfs     f31, -0x710c(rtoc)
    li      r21, 0x0
branch_0x800421a4:
    add     r29, r30, r21
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0xff
    beq-    branch_0x800422b0
    lwz     r3, 0x42a0(r31)
    slwi    r0, r0, 4
    addi    r4, sp, 0x230
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r20, r3, r0
    addi    r3, r20, 0x0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r0, 0x230(sp)
    addi    r3, sp, 0x130
    lwz     r5, 0x234(sp)
    addi    r4, sp, 0x248
    stw     r0, 0x130(sp)
    lwz     r0, 0x238(sp)
    stw     r5, 0x134(sp)
    stw     r0, 0x138(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x130(sp)
    lwz     r3, 0x134(sp)
    stw     r0, 0x224(sp)
    lwz     r0, 0x138(sp)
    stw     r3, 0x228(sp)
    stw     r0, 0x22c(sp)
    lfs     f1, 0x224(sp)
    lfs     f0, 0x228(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x22c(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80042250
    stfs    f31, 0x22c(sp)
    stfs    f31, 0x228(sp)
    stfs    f31, 0x224(sp)
    b       branch_0x8004227c

branch_0x80042250:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    lfs     f0, 0x224(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x224(sp)
    lfs     f0, 0x228(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x228(sp)
    lfs     f0, 0x22c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x22c(sp)
branch_0x8004227c:
    lfs     f0, 0x228(sp)
    lfs     f2, 0x23c(sp)
    fmuls   f0, f28, f0
    lfs     f1, 0x224(sp)
    lfs     f3, 0x22c(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f27, f3, f0
    fcmpo   cr0, f0, f26
    bge-    branch_0x800422b0
    lbz     r0, 0x1(r29)
    fmr     f26, f0
    mr      r28, r20
    stw     r0, 0x42a8(r31)
branch_0x800422b0:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x3
    addi    r21, r21, 0x2
    blt+    branch_0x800421a4
    b       branch_0x800425e0

branch_0x800422c4:
    mulli   r29, r30, 0x6
    lfs     f27, 0x240(sp)
    lfs     f28, 0x244(sp)
    lfs     f30, -0x7084(rtoc)
    lfs     f31, -0x710c(rtoc)
    add     r28, r27, r29
    addi    r30, sp, 0x214
    addi    r20, sp, 0x208
    li      r26, 0x0
    li      r23, 0x0
    li      r25, 0x0
    li      r22, 0x0
    li      r21, 0x0
branch_0x800422f8:
    stfsx   f31, r30, r21
    lbzx    r0, r28, r22
    cmplwi  r0, 0xff
    beq-    branch_0x800423f8
    lwz     r3, 0x42a0(r31)
    slwi    r0, r0, 4
    addi    r4, sp, 0x230
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r0, 0x230(sp)
    addi    r3, sp, 0x11c
    lwz     r5, 0x234(sp)
    addi    r4, sp, 0x248
    stw     r0, 0x11c(sp)
    lwz     r0, 0x238(sp)
    stw     r5, 0x120(sp)
    stw     r0, 0x124(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x11c(sp)
    lwz     r3, 0x120(sp)
    stw     r0, 0x1fc(sp)
    lwz     r0, 0x124(sp)
    stw     r3, 0x200(sp)
    stw     r0, 0x204(sp)
    lfs     f1, 0x1fc(sp)
    lfs     f0, 0x200(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x204(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    bne-    branch_0x800423a0
    stfs    f31, 0x204(sp)
    stfs    f31, 0x200(sp)
    stfs    f31, 0x1fc(sp)
    b       branch_0x800423cc

branch_0x800423a0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f26, f1
    lfs     f0, 0x1fc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1fc(sp)
    lfs     f0, 0x200(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x200(sp)
    lfs     f0, 0x204(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x204(sp)
branch_0x800423cc:
    lfs     f0, 0x200(sp)
    addi    r26, r26, 0x1
    lfs     f2, 0x23c(sp)
    fmuls   f0, f27, f0
    lfs     f1, 0x1fc(sp)
    lfs     f3, 0x204(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f28, f3, f0
    stfsx   f0, r30, r23
    stwx    r25, r20, r23
    addi    r23, r23, 0x4
branch_0x800423f8:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r22, r22, 0x2
    addi    r21, r21, 0x4
    blt+    branch_0x800422f8
    lfs     f26, -0x710c(rtoc)
    addi    r21, sp, 0x214
    lfs     f27, -0x70b4(rtoc)
    li      r22, 0x0
    li      r25, 0x0
    b       branch_0x8004245c

branch_0x80042424:
    lfsx    f0, r21, r25
    addi    r20, sp, 0x1f0
    add     r20, r20, r25
    fsubs   f0, f27, f0
    stfs    f0, 0x0(r20)
    lwz     r3, 0x430c(r31)
    lfs     f1, 0x0(r20)
    lfs     f2, 0xb8(r3)
    bl      powf
    stfs    f1, 0x0(r20)
    addi    r22, r22, 0x1
    addi    r25, r25, 0x4
    lfs     f0, 0x0(r20)
    fadds   f26, f26, f0
branch_0x8004245c:
    cmpw    r22, r26
    blt+    branch_0x80042424
    cmpwi   r26, 0x0
    li      r5, 0x0
    li      r3, 0x0
    ble-    branch_0x80042534
    cmpwi   r26, 0x8
    subi    r4, r26, 0x8
    ble-    branch_0x80042508
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmpwi   r4, 0x0
    mtctr   r0
    ble-    branch_0x80042508
branch_0x80042494:
    addi    r4, sp, 0x1f0
    add     r4, r4, r3
    lfs     f0, 0x0(r4)
    addi    r5, r5, 0x8
    addi    r3, r3, 0x20
    fdivs   f0, f0, f26
    stfs    f0, 0x0(r4)
    lfs     f0, 0x4(r4)
    fdivs   f0, f0, f26
    stfs    f0, 0x4(r4)
    lfs     f0, 0x8(r4)
    fdivs   f0, f0, f26
    stfs    f0, 0x8(r4)
    lfs     f0, 0xc(r4)
    fdivs   f0, f0, f26
    stfs    f0, 0xc(r4)
    lfs     f0, 0x10(r4)
    fdivs   f0, f0, f26
    stfs    f0, 0x10(r4)
    lfs     f0, 0x14(r4)
    fdivs   f0, f0, f26
    stfs    f0, 0x14(r4)
    lfs     f0, 0x18(r4)
    fdivs   f0, f0, f26
    stfs    f0, 0x18(r4)
    lfs     f0, 0x1c(r4)
    fdivs   f0, f0, f26
    stfs    f0, 0x1c(r4)
    bdnz+      branch_0x80042494
branch_0x80042508:
    subf    r0, r5, r26
    cmpw    r5, r26
    mtctr   r0
    addi    r4, sp, 0x1f0
    slwi    r3, r5, 2
    bge-    branch_0x80042534
branch_0x80042520:
    lfsx    f0, r4, r3
    fdivs   f0, f0, f26
    stfsx   f0, r4, r3
    addi    r3, r3, 0x4
    bdnz+      branch_0x80042520
branch_0x80042534:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x70d8(rtoc)
    stw     r0, 0x25c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x7078(rtoc)
    cmpwi   r26, 0x0
    stw     r0, 0x258(sp)
    mtctr   r26
    lfs     f0, -0x710c(rtoc)
    lfd     f2, 0x258(sp)
    addi    r4, sp, 0x1f0
    li      r5, 0x0
    fsubs   f2, f2, f3
    li      r3, 0x0
    fmuls   f1, f1, f2
    fmr     f2, f1
    ble-    branch_0x800425a4
branch_0x8004257c:
    lfsx    f1, r4, r3
    fsubs   f2, f2, f1
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80042598
    mr      r24, r5
    b       branch_0x800425a4

branch_0x80042598:
    addi    r5, r5, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x8004257c
branch_0x800425a4:
    slwi    r0, r24, 2
    addi    r3, sp, 0x208
    lwzx    r0, r3, r0
    add     r3, r27, r29
    slwi    r4, r0, 1
    add     r3, r3, r4
    lbz     r0, 0x1(r3)
    stw     r0, 0x42a8(r31)
    lwz     r3, 0x42a0(r31)
    lbzx    r0, r28, r4
    lwz     r3, 0x124(r3)
    slwi    r0, r0, 4
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r28, r3, r0
branch_0x800425e0:
    cmplwi  r28, 0x0
    beq-    branch_0x800425f4
    addi    r3, r28, 0x0
    addi    r4, sp, 0x230
    bl      getPoint__10TGraphNodeCFP3Vec
branch_0x800425f4:
    lwz     r3, 0x248(sp)
    lwz     r0, 0x24c(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x250(sp)
    stw     r0, 0x18(r31)
    lfs     f3, 0x230(sp)
    lfs     f2, 0x248(sp)
    lfs     f1, 0x238(sp)
    lfs     f0, 0x250(sp)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    sth     r3, 0x96(r31)
    mr      r3, r31
    lfs     f0, -0x710c(rtoc)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    bl      resetHistory__6TMarioFv
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r0, 0x42a8(r31)
    lwz     r3, 0x42f8(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      reset__17TMarioInputReplayFv
    lwz     r0, 0x42a8(r31)
    li      r5, 0x1
    lwz     r4, 0x42f8(r31)
    li      r3, 0x0
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    li      r0, 0xb
    sth     r5, 0x2(r4)
    stw     r3, 0x42a4(r31)
    sth     r0, 0x4292(r31)
branch_0x8004269c:
    lmw     r20, 0x260(sp)
    lwz     r0, 0x2c4(sp)
    lfd     f31, 0x2b8(sp)
    lfd     f30, 0x2b0(sp)
    mtlr    r0
    lfd     f29, 0x2a8(sp)
    lfd     f28, 0x2a0(sp)
    lfd     f27, 0x298(sp)
    lfd     f26, 0x290(sp)
    addi    sp, sp, 0x2c0
    blr


.globl emReplay__11TEnemyMarioFv
emReplay__11TEnemyMarioFv: # 0x800426c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    mr      r31, r3
    addi    r4, r31, 0x8c
    stw     r30, 0xd8(sp)
    addi    r5, r31, 0x90
    lwz     r0, 0x42a8(r3)
    lwz     r3, 0x42f8(r3)
    lwz     r9, 0x108(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    addi    r6, r9, 0x4
    addi    r7, r9, 0x8
    addi    r8, r9, 0xd
    addi    r9, r9, 0xc
    bl      play__17TMarioInputReplayFPfPsPUlPUlPUcPUc
    lwz     r4, 0x430c(r31)
    lbz     r0, 0xe0(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80042744
    lwz     r3, gpPollution(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80042744
    lfs     f4, 0xf4(r4)
    li      r4, 0x1
    lfs     f3, 0x18(r31)
    lfs     f2, 0x14(r31)
    lfs     f1, 0x10(r31)
    bl      stamp__17TPollutionManagerFUsffff
branch_0x80042744:
    lwz     r0, 0x42a8(r31)
    lwz     r3, 0x42f8(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lhz     r0, 0x2(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80042768
    li      r0, 0x1
    b       branch_0x8004276c

branch_0x80042768:
    li      r0, 0x0
branch_0x8004276c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800428e4
    lwz     r4, 0x430c(r31)
    lbz     r0, 0x90(r4)
    cmplwi  r0, 0x1
    bne-    branch_0x800427a4
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800427a4
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x12
    sth     r0, 0x4292(r31)
    b       branch_0x800428e4

branch_0x800427a4:
    lwz     r3, 0x42f0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80042808
    lbz     r0, 0x68(r4)
    cmplwi  r0, 0x1
    bne-    branch_0x80042808
    lis     r4, 0x8037
    addi    r4, r4, 0x785c
    bl      setBck__6MActorFPCc
    lwz     r30, 0x42f0(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x13
    addi    r3, r31, 0x0
    sth     r0, 0x4292(r31)
    li      r4, 0x1980
    bl      startSoundActor__6TMarioFUl
    addi    r3, r31, 0x0
    li      r4, 0x1981
    bl      startSoundActor__6TMarioFUl
    b       branch_0x800428e4

branch_0x80042808:
    lwz     r3, 0x42a0(r31)
    addi    r4, r31, 0x10
    li      r5, -0x1
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r4, 0x0(r3)
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80042858
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x16
    sth     r0, 0x4292(r31)
    b       branch_0x800428e4

branch_0x80042858:
    lwz     r4, 0x430c(r31)
    lbz     r0, 0x54(r4)
    cmplwi  r0, 0x1
    bne-    branch_0x8004287c
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0xc
    sth     r0, 0x4292(r31)
    b       branch_0x800428e4

branch_0x8004287c:
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r31)
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800428d4
    lha     r0, 0x4296(r31)
    sth     r0, 0x96(r31)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x8(r3)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
branch_0x800428d4:
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0xd
    sth     r0, 0x4292(r31)
branch_0x800428e4:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    addi    sp, sp, 0xe0
    blr


.globl emDisappearToGate__11TEnemyMarioFv
emDisappearToGate__11TEnemyMarioFv: # 0x800428fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, 0x42a4(r3)
    cmplwi  r0, 0x8
    blt-    branch_0x8004292c
    lhz     r0, 0x4290(r31)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x4290(r31)
    b       branch_0x80042938

branch_0x8004292c:
    lhz     r0, 0x4290(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x4290(r31)
branch_0x80042938:
    lwz     r0, 0x64(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x42e0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    li      r4, 0x1aa
    li      r6, 0x1
    lwz     r3, 0x42a0(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x42e0
    li      r4, 0x1ab
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0x42a4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800429f0
    lwz     r3, 0x178(r31)
    addi    r5, r31, 0x42e0
    lwz     r0, 0x17c(r31)
    li      r4, 0xed
    li      r6, 0x0
    stw     r3, 0x42e0(r31)
    li      r7, 0x0
    stw     r0, 0x42e4(r31)
    lwz     r0, 0x180(r31)
    stw     r0, 0x42e8(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    li      r4, 0x1976
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800429f0
    addi    r4, r31, 0x10
    li      r3, 0x1976
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800429f0:
    lwz     r0, 0x42a4(r31)
    cmplwi  r0, 0x64
    ble-    branch_0x80042a48
    stw     r0, 0x24(sp)
    lis     r3, 0x4330
    lfd     f3, -0x7068(rtoc)
    stw     r3, 0x20(sp)
    lfs     f2, -0x7074(rtoc)
    lfd     f1, 0x20(sp)
    lfs     f0, 0x42e4(r31)
    fsubs   f1, f1, f3
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x42e4(r31)
    lwz     r0, 0x42a4(r31)
    lfs     f2, -0x7070(rtoc)
    stw     r0, 0x1c(sp)
    lfs     f0, 0x42e8(r31)
    stw     r3, 0x18(sp)
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f3
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x42e8(r31)
branch_0x80042a48:
    lwz     r3, 0x42a4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x42a4(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl startDisappear__11TEnemyMarioFUs
startDisappear__11TEnemyMarioFUs: # 0x80042a68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    li      r4, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r30)
    stw     r3, 0x42e0(r30)
    stw     r0, 0x42e4(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x42e8(r30)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    lbz     r3, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80042ac4
    cmplwi  r3, 0x1
    bne-    branch_0x80042ac4
    li      r4, 0x1
    b       branch_0x80042ad8

branch_0x80042ac4:
    cmplwi  r0, 0x1
    bne-    branch_0x80042ad8
    cmplwi  r3, 0x9
    bne-    branch_0x80042ad8
    li      r4, 0x1
branch_0x80042ad8:
    clrlwi. r0, r4, 24
    bne-    branch_0x80042ae8
    li      r3, 0x0
    bl      setBossLivesFlag__10MSMainProcFb
branch_0x80042ae8:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x42e0
    li      r4, 0xed
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x0
    stw     r0, 0x42a4(r30)
    sth     r31, 0x4292(r30)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl emWalkAround__11TEnemyMarioFv
emWalkAround__11TEnemyMarioFv: # 0x80042b24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lfs     f0, -0x709c(rtoc)
    lfs     f1, 0x429c(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80042b58
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    sth     r0, 0x4292(r31)
    b       branch_0x80042cd8

branch_0x80042b58:
    bl      rand
    cmpwi   r3, 0xa
    bge-    branch_0x80042b74
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x3
    sth     r0, 0x4292(r31)
branch_0x80042b74:
    bl      rand
    cmpwi   r3, 0x64
    bge-    branch_0x80042ba4
    lwz     r5, 0x108(r31)
    li      r3, 0x0
    li      r0, 0x2
    lwz     r4, 0x4(r5)
    ori     r4, r4, 0x100
    stw     r4, 0x4(r5)
    stw     r3, 0x42a4(r31)
    sth     r0, 0x4292(r31)
    b       branch_0x80042cd8

branch_0x80042ba4:
    bl      rand
    cmpwi   r3, 0x64
    bge-    branch_0x80042bcc
    bl      rand
    sth     r3, 0x4298(r31)
    li      r3, 0x0
    li      r0, 0x4
    stw     r3, 0x42a4(r31)
    sth     r0, 0x4292(r31)
    b       branch_0x80042cd8

branch_0x80042bcc:
    bl      rand
    cmpwi   r3, 0x32
    bge-    branch_0x80042c00
    lwz     r3, 0x42a0(r31)
    li      r0, -0x1
    lwz     r4, 0x124(r3)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x6
    sth     r0, 0x4292(r31)
    b       branch_0x80042cd8

branch_0x80042c00:
    bl      rand
    cmpwi   r3, 0x32
    bge-    branch_0x80042c38
    lfs     f3, 0x18(r31)
    li      r4, 0x1
    lfs     f2, 0x14(r31)
    lfs     f1, 0x10(r31)
    lwz     r3, gpPollution(r13)
    lfs     f4, -0x7060(rtoc)
    bl      stamp__17TPollutionManagerFUsffff
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x7
    sth     r0, 0x4292(r31)
branch_0x80042c38:
    lwz     r0, 0xd8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80042c68
    lwz     r5, 0x108(r31)
    li      r3, 0x0
    li      r0, 0x2
    lwz     r4, 0x4(r5)
    ori     r4, r4, 0x100
    stw     r4, 0x4(r5)
    stw     r3, 0x42a4(r31)
    sth     r0, 0x4292(r31)
    b       branch_0x80042cd8

branch_0x80042c68:
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, -0x710c(rtoc)
    slwi    r0, r0, 2
    lfs     f2, -0x70b8(rtoc)
    lfsx    f0, r3, r0
    lwz     r3, 0x108(r31)
    fmuls   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    sth     r0, 0x0(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r5, r0
    lwz     r3, 0x108(r31)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fneg    f0, f0
    fmuls   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    sth     r0, 0x2(r3)
branch_0x80042cd8:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl emJumping__11TEnemyMarioFv
emJumping__11TEnemyMarioFv: # 0x80042cec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r3, 0x7c(r3)
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x80042dd8
    cmplwi  r3, 0x8a7
    bne-    branch_0x80042d20
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0xa
    blt-    branch_0x80042e34
branch_0x80042d20:
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, -0x710c(rtoc)
    slwi    r0, r0, 2
    lfs     f2, -0x70b4(rtoc)
    lfsx    f0, r3, r0
    lwz     r3, 0x108(r31)
    fmuls   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    sth     r0, 0x0(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r5, r0
    lwz     r3, 0x108(r31)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fneg    f0, f0
    fmuls   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    sth     r0, 0x2(r3)
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
    lfs     f0, -0x705c(rtoc)
    lfs     f1, 0xa8(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80042e34
    fcmpo   cr0, f1, f2
    bge-    branch_0x80042e34
    bl      rand
    cmpwi   r3, 0xfff
    bge-    branch_0x80042e34
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x200
    stw     r0, 0x4(r3)
    b       branch_0x80042e34

branch_0x80042dd8:
    addis   r0, r3, 0xc800
    cmplwi  r0, 0x34b
    bne-    branch_0x80042e04
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0xa
    blt-    branch_0x80042e34
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
    b       branch_0x80042e34

branch_0x80042e04:
    rlwinm. r0, r3, 0, 21, 22
    beq-    branch_0x80042e34
    lfs     f3, 0x18(r31)
    li      r4, 0x1
    lfs     f2, 0x14(r31)
    lfs     f1, 0x10(r31)
    lwz     r3, gpPollution(r13)
    lfs     f4, -0x7060(rtoc)
    bl      stamp__17TPollutionManagerFUsffff
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    sth     r0, 0x4292(r31)
branch_0x80042e34:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl emWaiting__11TEnemyMarioFv
emWaiting__11TEnemyMarioFv: # 0x80042e48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lha     r0, 0x96(r3)
    lha     r3, 0x4296(r3)
    subf    r0, r0, r3
    extsh   r0, r0
    cmpwi   r0, -0x1555
    blt-    branch_0x80042e7c
    cmpwi   r0, 0x1555
    ble-    branch_0x80042eec
branch_0x80042e7c:
    lwz     r0, -0x5eac(r13)
    clrlwi  r5, r3, 16
    lwz     r3, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, -0x710c(rtoc)
    slwi    r0, r0, 2
    lfs     f2, -0x7090(rtoc)
    lfsx    f0, r3, r0
    lwz     r3, 0x108(r31)
    fmuls   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    sth     r0, 0x0(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r5, r0
    lwz     r3, 0x108(r31)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fneg    f0, f0
    fmuls   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    sth     r0, 0x2(r3)
branch_0x80042eec:
    lfs     f1, 0x429c(r31)
    lfs     f0, -0x7104(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80042f0c
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x1
    sth     r0, 0x4292(r31)
branch_0x80042f0c:
    lfs     f1, 0x429c(r31)
    lfs     f0, -0x709c(rtoc)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x80042f28
    bl      rand
    cmpwi   r3, 0x88
    bge-    branch_0x80042f4c
branch_0x80042f28:
    lwz     r3, 0x42a0(r31)
    li      r0, -0x1
    lwz     r4, 0x124(r3)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    li      r0, 0x0
    stw     r0, 0x42a4(r31)
    li      r0, 0x6
    sth     r0, 0x4292(r31)
branch_0x80042f4c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl tryTake__11TEnemyMarioFv
tryTake__11TEnemyMarioFv: # 0x80042f60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80042f9c
    lwz     r0, 0x7c(r29)
    cmplwi  r0, 0x383
    beq-    branch_0x80042f9c
    li      r3, 0x1
    b       branch_0x80043034

branch_0x80042f9c:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80043020

branch_0x80042fa8:
    lwz     r3, 0x44(r3)
    lwzx    r3, r3, r31
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x18
    beq-    branch_0x80042fdc
    addis   r0, r4, 0xe000
    cmplwi  r0, 0x2a
    beq-    branch_0x80042fdc
    cmplwi  r0, 0x22
    beq-    branch_0x80042fdc
    cmplwi  r0, 0x9
    bne-    branch_0x80043018
branch_0x80042fdc:
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x80043000
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x10
    stw     r0, 0xf0(r3)
    lhz     r0, 0x4290(r29)
    ori     r0, r0, 0x20
    sth     r0, 0x4290(r29)
branch_0x80043000:
    stw     r3, 0x384(r29)
    addi    r3, r29, 0x0
    li      r4, MARIOSTATUS_383
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80043018:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80043020:
    lwz     r3, 0x42a0(r29)
    lhz     r0, 0x48(r3)
    cmpw    r30, r0
    blt+    branch_0x80042fa8
    li      r3, 0x0
branch_0x80043034:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl startMonteReplay__11TEnemyMarioFUl
startMonteReplay__11TEnemyMarioFUl: # 0x80043050
    mflr    r0
    li      r5, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x90(sp)
    mr      r30, r3
    addi    r4, r30, 0x10
    stw     r29, 0x8c(sp)
    lwz     r3, 0x42a0(r3)
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x42a0(r30)
    addi    r29, r3, 0x0
    slwi    r0, r3, 4
    lwz     r3, 0x124(r4)
    addi    r4, sp, 0x7c
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r5, 0x7c(sp)
    addi    r0, r29, 0x1
    lwz     r3, 0x80(sp)
    slwi    r0, r0, 4
    addi    r4, sp, 0x70
    stw     r5, 0x10(r30)
    stw     r3, 0x14(r30)
    lwz     r3, 0x84(sp)
    stw     r3, 0x18(r30)
    lwz     r3, 0x42a0(r30)
    lwz     r3, 0x124(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f3, 0x70(sp)
    lfs     f2, 0x7c(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x84(sp)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    sth     r3, 0x96(r30)
    mr      r3, r30
    lfs     f0, -0x710c(rtoc)
    stfs    f0, 0xa4(r30)
    stfs    f0, 0xa8(r30)
    stfs    f0, 0xac(r30)
    stfs    f0, 0xb0(r30)
    bl      resetHistory__6TMarioFv
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    stw     r31, 0x42a8(r30)
    lwz     r0, 0x42a8(r30)
    lwz     r3, 0x42f8(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      reset__17TMarioInputReplayFv
    lwz     r0, 0x42a8(r30)
    li      r5, 0x1
    lwz     r4, 0x42f8(r30)
    li      r3, 0x0
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    li      r0, 0x19
    sth     r5, 0x2(r4)
    stw     r3, 0x42a4(r30)
    sth     r0, 0x4292(r30)
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl initEnemyValues__11TEnemyMarioFv
initEnemyValues__11TEnemyMarioFv: # 0x80043198
    mflr    r0
    lis     r5, 0x8037
    stw     r0, 0x4(sp)
    li      r0, 0x2
    lis     r4, 0x803b
    stwu    sp, -0x590(sp)
    stmw    r18, 0x558(sp)
    li      r19, 0x0
    addi    r31, r3, 0x0
    addi    r29, r5, 0x7068
    subi    r26, r4, 0x17a8
    li      r18, 0x6
    li      r20, 0x0
    sth     r0, 0x4290(r3)
    li      r0, 0x1a
    sth     r0, 0x4292(r3)
    li      r0, 0x3
    sth     r19, 0x4294(r3)
    li      r3, 0x78
    sth     r19, 0x4296(r31)
    sth     r19, 0x4298(r31)
    lfs     f0, -0x710c(rtoc)
    stfs    f0, 0x429c(r31)
    stw     r19, 0x42a4(r31)
    stw     r19, 0x42a8(r31)
    lfs     f0, -0x7058(rtoc)
    stfs    f0, 0x42ac(r31)
    stb     r19, 0x42d4(r31)
    lfs     f0, -0x7054(rtoc)
    stfs    f0, 0x42b0(r31)
    sth     r19, 0x42b4(r31)
    sth     r3, 0x42b6(r31)
    sth     r0, 0x42b8(r31)
    sth     r19, 0x42ba(r31)
    lfs     f0, -0x7050(rtoc)
    stfs    f0, 0x42bc(r31)
    sth     r19, 0x42cc(r31)
    lfs     f0, -0x70e8(rtoc)
    stfs    f0, 0x42d0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x42a0(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x80043250:
    lwz     r4, 0x42a0(r31)
    add     r3, r26, r19
    lwz     r3, 0x69c(r3)
    lwz     r4, 0x4(r4)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80043274
    mr      r18, r20
    b       branch_0x80043284

branch_0x80043274:
    addi    r20, r20, 0x1
    cmpwi   r20, 0x5
    addi    r19, r19, 0x4
    blt+    branch_0x80043250
branch_0x80043284:
    cmpwi   r18, 0x4
    li      r19, 0x0
    beq-    branch_0x800432ac
    bge-    branch_0x800432d0
    cmpwi   r18, 0x0
    bge-    branch_0x800432a0
    b       branch_0x800432d0

branch_0x800432a0:
    li      r0, 0x1
    stb     r0, 0x388(r31)
    b       branch_0x800432d0

branch_0x800432ac:
    slwi    r0, r18, 2
    add     r3, r26, r0
    lwz     r3, 0x6b0(r3)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1004
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    li      r0, 0x2
    stb     r0, 0x388(r31)
    mr      r19, r3
branch_0x800432d0:
    li      r4, 0x0
    stw     r4, 0x42ec(r31)
    cmplwi  r19, 0x0
    stw     r4, 0x42f0(r31)
    lfs     f0, -0x70ac(rtoc)
    stfs    f0, 0x42f4(r31)
    beq-    branch_0x80043320
    li      r0, 0x2
    stb     r0, 0x388(r31)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r18, r3
    beq-    branch_0x80043318
    addi    r3, r18, 0x0
    addi    r4, r19, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80043318:
    stw     r18, 0x42dc(r31)
    b       branch_0x8004342c

branch_0x80043320:
    li      r0, 0x1
    stb     r0, 0x388(r31)
    addi    r3, r29, 0x80c
    stw     r4, 0x42dc(r31)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1104
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r18, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x80043364
    addi    r3, r19, 0x0
    addi    r4, r18, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80043364:
    stw     r19, 0x42ec(r31)
    addi    r3, r29, 0xe0
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r5, r3
    beq-    branch_0x80043384
    addi    r3, r18, 0x0
    addi    r4, r29, 0x104
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80043384:
    addi    r3, r29, 0x834
    addi    r4, r29, 0x858
    li      r5, 0x3
    lis     r6, 0x1021
    bl      SMS_MakeMActor__FPCcPCcUlUl
    lis     r4, 0x8040
    stw     r3, 0x42f0(r31)
    subi    r3, r4, 0x2f98
    addi    r19, r3, 0xed
    lbz     r0, 0xed(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800433cc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r29, 0x898
    li      r5, 0xed
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r19)
branch_0x800433cc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r19, r3, 0x1aa
    lbz     r0, 0x1aa(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800433fc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r29, 0x8c0
    li      r5, 0x1aa
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r19)
branch_0x800433fc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r19, r3, 0x1ab
    lbz     r0, 0x1ab(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8004342c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r29, 0x8e8
    li      r5, 0x1ab
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r19)
branch_0x8004342c:
    lfs     f0, -0x710c(rtoc)
    lis     r3, 0x6
    addi    r4, r3, 0x3
    stfs    f0, 0x42e8(r31)
    stfs    f0, 0x42e4(r31)
    stfs    f0, 0x42e0(r31)
    lwz     r3, -0x6060(r13)
    bl      getFlag__12TFlagManagerCFUl
    mr.     r20, r3
    bne-    branch_0x80043474
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x42a0(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    b       branch_0x80043490

branch_0x80043474:
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x42a0(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
branch_0x80043490:
    cmpwi   r20, 0x2
    beq-    branch_0x80043718
    bge-    branch_0x800434a8
    cmpwi   r20, 0x0
    bge-    branch_0x800434b4
    b       branch_0x80043be0

branch_0x800434a8:
    cmpwi   r20, 0x4
    bge-    branch_0x80043be0
    b       branch_0x8004397c

branch_0x800434b4:
    li      r25, 0x0
    stb     r25, 0x42d4(r31)
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80043710
    addi    r0, r29, 0x910
    stw     r0, 0x0(r30)
    addi    r3, r29, 0x928
    stw     r25, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x8
    addi    r6, r29, 0x928
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r24, r3, 0x42c4
    stw     r24, 0x8(r30)
    lis     r3, 0x803b
    subi    r23, r3, 0x42d0
    lfs     f0, -0x70b0(rtoc)
    addi    r3, r29, 0x934
    stfs    f0, 0x18(r30)
    stw     r23, 0x8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x1c
    addi    r6, r29, 0x934
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x1c(r30)
    addi    r3, r29, 0x944
    lfs     f0, -0x704c(rtoc)
    stfs    f0, 0x2c(r30)
    stw     r23, 0x1c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x30
    addi    r6, r29, 0x944
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r22, r3, 0x2f04
    stw     r22, 0x30(r30)
    li      r0, 0x40
    lis     r3, 0x803b
    sth     r0, 0x40(r30)
    subi    r21, r3, 0x2f10
    addi    r3, r29, 0x950
    stw     r21, 0x30(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x44
    addi    r6, r29, 0x950
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x2f1c
    stw     r28, 0x44(r30)
    li      r19, 0x1
    lis     r3, 0x803b
    stb     r19, 0x54(r30)
    subi    r27, r3, 0x2f28
    addi    r3, r29, 0x95c
    stw     r27, 0x44(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x58
    addi    r6, r29, 0x95c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x58(r30)
    addi    r3, r29, 0x968
    stb     r19, 0x68(r30)
    stw     r27, 0x58(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x6c
    addi    r6, r29, 0x968
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6c(r30)
    addi    r3, r29, 0x974
    stb     r19, 0x7c(r30)
    stw     r27, 0x6c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x80
    addi    r6, r29, 0x974
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x80(r30)
    addi    r3, r29, 0x980
    stb     r25, 0x90(r30)
    stw     r27, 0x80(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x94
    addi    r6, r29, 0x980
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x94(r30)
    addi    r3, r29, 0x990
    stb     r25, 0xa4(r30)
    stw     r27, 0x94(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xa8
    addi    r6, r29, 0x990
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0xa8(r30)
    addi    r3, r29, 0x99c
    lfs     f0, -0x70b4(rtoc)
    stfs    f0, 0xb8(r30)
    stw     r23, 0xa8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xbc
    addi    r6, r29, 0x99c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r22, 0xbc(r30)
    li      r0, 0x4b0
    addi    r3, r29, 0x9a8
    sth     r0, 0xcc(r30)
    stw     r21, 0xbc(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xd0
    addi    r6, r29, 0x9a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xd0(r30)
    addi    r3, r29, 0x9b8
    stb     r25, 0xe0(r30)
    stw     r27, 0xd0(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xe4
    addi    r6, r29, 0x9b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0xe4(r30)
    mr      r3, r30
    lfs     f0, -0x7048(rtoc)
    stfs    f0, 0xf4(r30)
    stw     r23, 0xe4(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
branch_0x80043710:
    stw     r30, 0x430c(r31)
    b       branch_0x80043be0

branch_0x80043718:
    li      r25, 0x1
    stb     r25, 0x42d4(r31)
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80043974
    addi    r0, r29, 0x9c8
    stw     r0, 0x0(r30)
    li      r24, 0x0
    addi    r3, r29, 0x928
    stw     r24, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x8
    addi    r6, r29, 0x928
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r23, r3, 0x42c4
    stw     r23, 0x8(r30)
    lis     r3, 0x803b
    subi    r22, r3, 0x42d0
    lfs     f0, -0x70b0(rtoc)
    addi    r3, r29, 0x934
    stfs    f0, 0x18(r30)
    stw     r22, 0x8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x1c
    addi    r6, r29, 0x934
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x1c(r30)
    addi    r3, r29, 0x944
    lfs     f0, -0x704c(rtoc)
    stfs    f0, 0x2c(r30)
    stw     r22, 0x1c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x30
    addi    r6, r29, 0x944
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r21, r3, 0x2f04
    stw     r21, 0x30(r30)
    li      r0, 0x40
    lis     r3, 0x803b
    sth     r0, 0x40(r30)
    subi    r19, r3, 0x2f10
    addi    r3, r29, 0x950
    stw     r19, 0x30(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x44
    addi    r6, r29, 0x950
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x2f1c
    stw     r28, 0x44(r30)
    lis     r3, 0x803b
    subi    r27, r3, 0x2f28
    stb     r25, 0x54(r30)
    addi    r3, r29, 0x95c
    stw     r27, 0x44(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x58
    addi    r6, r29, 0x95c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x58(r30)
    addi    r3, r29, 0x968
    stb     r25, 0x68(r30)
    stw     r27, 0x58(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x6c
    addi    r6, r29, 0x968
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6c(r30)
    addi    r3, r29, 0x974
    stb     r25, 0x7c(r30)
    stw     r27, 0x6c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x80
    addi    r6, r29, 0x974
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x80(r30)
    addi    r3, r29, 0x980
    stb     r24, 0x90(r30)
    stw     r27, 0x80(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x94
    addi    r6, r29, 0x980
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x94(r30)
    addi    r3, r29, 0x990
    stb     r24, 0xa4(r30)
    stw     r27, 0x94(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xa8
    addi    r6, r29, 0x990
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0xa8(r30)
    addi    r3, r29, 0x99c
    lfs     f0, -0x70b4(rtoc)
    stfs    f0, 0xb8(r30)
    stw     r22, 0xa8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xbc
    addi    r6, r29, 0x99c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r21, 0xbc(r30)
    li      r0, 0x4b0
    addi    r3, r29, 0x9a8
    sth     r0, 0xcc(r30)
    stw     r19, 0xbc(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xd0
    addi    r6, r29, 0x9a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xd0(r30)
    addi    r3, r29, 0x9b8
    stb     r24, 0xe0(r30)
    stw     r27, 0xd0(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xe4
    addi    r6, r29, 0x9b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0xe4(r30)
    mr      r3, r30
    lfs     f0, -0x7048(rtoc)
    stfs    f0, 0xf4(r30)
    stw     r22, 0xe4(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
branch_0x80043974:
    stw     r30, 0x430c(r31)
    b       branch_0x80043be0

branch_0x8004397c:
    li      r0, 0x2
    stb     r0, 0x42d4(r31)
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80043bdc
    addi    r0, r29, 0x9e4
    stw     r0, 0x0(r30)
    li      r25, 0x0
    addi    r3, r29, 0x928
    stw     r25, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x8
    addi    r6, r29, 0x928
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r24, r3, 0x42c4
    stw     r24, 0x8(r30)
    lis     r3, 0x803b
    subi    r23, r3, 0x42d0
    lfs     f0, -0x70b0(rtoc)
    addi    r3, r29, 0x934
    stfs    f0, 0x18(r30)
    stw     r23, 0x8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x1c
    addi    r6, r29, 0x934
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x1c(r30)
    addi    r3, r29, 0x944
    lfs     f0, -0x704c(rtoc)
    stfs    f0, 0x2c(r30)
    stw     r23, 0x1c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x30
    addi    r6, r29, 0x944
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r22, r3, 0x2f04
    stw     r22, 0x30(r30)
    li      r0, 0x40
    lis     r3, 0x803b
    sth     r0, 0x40(r30)
    subi    r21, r3, 0x2f10
    addi    r3, r29, 0x950
    stw     r21, 0x30(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x44
    addi    r6, r29, 0x950
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x2f1c
    stw     r28, 0x44(r30)
    li      r19, 0x1
    lis     r3, 0x803b
    stb     r19, 0x54(r30)
    subi    r27, r3, 0x2f28
    addi    r3, r29, 0x95c
    stw     r27, 0x44(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x58
    addi    r6, r29, 0x95c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x58(r30)
    addi    r3, r29, 0x968
    stb     r19, 0x68(r30)
    stw     r27, 0x58(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x6c
    addi    r6, r29, 0x968
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x6c(r30)
    addi    r3, r29, 0x974
    stb     r19, 0x7c(r30)
    stw     r27, 0x6c(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x80
    addi    r6, r29, 0x974
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x80(r30)
    addi    r3, r29, 0x980
    stb     r25, 0x90(r30)
    stw     r27, 0x80(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x94
    addi    r6, r29, 0x980
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x94(r30)
    addi    r3, r29, 0x990
    stb     r25, 0xa4(r30)
    stw     r27, 0x94(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xa8
    addi    r6, r29, 0x990
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0xa8(r30)
    addi    r3, r29, 0x99c
    lfs     f0, -0x70b4(rtoc)
    stfs    f0, 0xb8(r30)
    stw     r23, 0xa8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xbc
    addi    r6, r29, 0x99c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r22, 0xbc(r30)
    li      r0, 0x4b0
    addi    r3, r29, 0x9a8
    sth     r0, 0xcc(r30)
    stw     r21, 0xbc(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xd0
    addi    r6, r29, 0x9a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xd0(r30)
    addi    r3, r29, 0x9b8
    stb     r25, 0xe0(r30)
    stw     r27, 0xd0(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xe4
    addi    r6, r29, 0x9b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0xe4(r30)
    mr      r3, r30
    lfs     f0, -0x7048(rtoc)
    stfs    f0, 0xf4(r30)
    stw     r23, 0xe4(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
branch_0x80043bdc:
    stw     r30, 0x430c(r31)
branch_0x80043be0:
    lwz     r3, 0x430c(r31)
    li      r22, 0x0
    li      r18, 0x0
    lha     r0, 0x40(r3)
    sth     r0, 0x4294(r31)
    lbz     r6, 0x42d4(r31)
    cmplwi  r6, 0x0
    bne-    branch_0x80043c18
    addi    r3, sp, 0x454
    crxor   6, 6, 6
    addi    r5, r29, 0xa00
    li      r4, 0x100
    bl      snprintf
    b       branch_0x80043c2c

branch_0x80043c18:
    crxor   6, 6, 6
    addi    r3, sp, 0x454
    addi    r5, r29, 0xa20
    li      r4, 0x100
    bl      snprintf
branch_0x80043c2c:
    addi    r3, sp, 0x454
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r19, r3
    beq-    branch_0x80043e58
    subi    r3, rtoc, 0x7044
    bl      getVolume__13JKRFileLoaderFPCc
    lwz     r12, 0x0(r3)
    mr      r4, r19
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r21, sp, 0x440
    stw     r21, 0x128(sp)
    lis     r5, 0x803b
    subi    r0, r5, 0xf0c
    lwz     r6, 0x128(sp)
    lis     r4, 0x803e
    lis     r5, 0x803e
    stw     r0, 0x0(r6)
    li      r0, 0x0
    stb     r0, 0x4(r6)
    addi    r0, r4, 0x184
    lis     r4, 0x803e
    stw     r0, 0x0(r6)
    addi    r0, r5, 0x160
    addi    r5, r3, 0x0
    stw     r0, 0x0(r6)
    addi    r0, r4, 0x1c8
    addi    r3, r6, 0x0
    stw     r0, 0x0(r6)
    mr      r4, r19
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r21, 0x0
    li      r4, 0x6
    bl      skip__20JSURandomInputStreamFl
    mr      r3, r21
    bl      readString__14JSUInputStreamFv
    addi    r3, r21, 0x0
    li      r4, 0x2
    bl      skip__20JSURandomInputStreamFl
    mr      r3, r21
    bl      readString__14JSUInputStreamFv
    addi    r3, r21, 0x0
    addi    r4, sp, 0x124
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r21, 0x124(sp)
    mulli   r3, r21, 0x6
    bl      __nwa__FUl
    mulli   r23, r21, 0x3
    stw     r3, 0x4304(r31)
    slwi    r3, r23, 2
    bl      __nwa__FUl
    addi    r22, r3, 0x0
    li      r18, 0x0
    li      r19, 0x0
    b       branch_0x80043d24

branch_0x80043d10:
    li      r3, 0x3
    bl      __nwa__FUl
    stwx    r3, r22, r19
    addi    r18, r18, 0x1
    addi    r19, r19, 0x4
branch_0x80043d24:
    cmplw   r18, r23
    blt+    branch_0x80043d10
    li      r23, 0x0
    li      r28, 0x0
    li      r24, 0x0
    li      r27, 0x0
    b       branch_0x80043e28

branch_0x80043d40:
    addi    r3, sp, 0x440
    li      r4, 0x6
    bl      skip__20JSURandomInputStreamFl
    addi    r3, sp, 0x440
    bl      readString__14JSUInputStreamFv
    addi    r3, sp, 0x440
    li      r4, 0x2
    bl      skip__20JSURandomInputStreamFl
    addi    r3, sp, 0x440
    bl      readString__14JSUInputStreamFv
    addi    r19, r24, 0x41
    extsb   r19, r19
    li      r25, 0x0
    li      r30, 0x0
branch_0x80043d78:
    addi    r3, sp, 0x440
    li      r4, 0x2
    bl      skip__20JSURandomInputStreamFl
    addi    r3, sp, 0x440
    addi    r4, sp, 0x120
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x120(sp)
    extsb   r18, r0
    cmpwi   r18, 0x2a
    bne-    branch_0x80043dc8
    lwz     r0, 0x4304(r31)
    li      r4, 0xff
    add     r0, r0, r30
    stbx    r4, r27, r0
    lwz     r0, 0x4304(r31)
    add     r3, r0, r30
    addi    r0, r3, 0x1
    stbx    r4, r27, r0
    b       branch_0x80043e10

branch_0x80043dc8:
    lwzx    r3, r22, r28
    addi    r6, r19, 0x0
    crxor   6, 6, 6
    addi    r7, r18, 0x0
    li      r4, 0x3
    subi    r5, rtoc, 0x703c
    bl      snprintf
    lwz     r0, 0x4304(r31)
    addi    r4, r23, 0x0
    subi    r3, r18, 0x41
    add     r0, r0, r30
    stbx    r3, r27, r0
    addi    r23, r23, 0x1
    addi    r28, r28, 0x4
    lwz     r0, 0x4304(r31)
    add     r3, r0, r30
    addi    r0, r3, 0x1
    stbx    r4, r27, r0
branch_0x80043e10:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r30, r30, 0x2
    blt+    branch_0x80043d78
    addi    r24, r24, 0x1
    addi    r27, r27, 0x6
branch_0x80043e28:
    cmplw   r24, r21
    blt+    branch_0x80043d40
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x440(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x440(sp)
    addi    r18, r23, 0x0
    addi    r3, sp, 0x440
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
branch_0x80043e58:
    lbz     r6, 0x42d4(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80043e90
    crxor   6, 6, 6
    addi    r3, sp, 0x340
    addi    r5, r29, 0xa44
    li      r4, 0x100
    bl      snprintf
    lwz     r3, -0x70b0(r13)
    addi    r4, sp, 0x340
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x42a0(r31)
    lwz     r4, 0x124(r4)
    stw     r3, 0x0(r4)
branch_0x80043e90:
    lfs     f0, -0x7058(rtoc)
    mr      r19, r18
    stfs    f0, 0x42ac(r31)
    lbz     r0, 0x388(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x80043eb0
    addi    r22, r26, 0x690
    li      r19, 0x3
branch_0x80043eb0:
    cmpwi   r19, 0x0
    ble-    branch_0x80043f4c
    slwi    r3, r19, 2
    bl      __nwa__FUl
    stw     r3, 0x42f8(r31)
    li      r18, 0x0
    li      r21, 0x0
    b       branch_0x80043f44

branch_0x80043ed0:
    lbz     r6, 0x42d4(r31)
    cmplwi  r6, 0x0
    bne-    branch_0x80043ef8
    lwzx    r6, r22, r21
    addi    r3, sp, 0x240
    addi    r5, r29, 0xa54
    crxor   6, 6, 6
    li      r4, 0x100
    bl      snprintf
    b       branch_0x80043f10

branch_0x80043ef8:
    lwzx    r7, r22, r21
    addi    r3, sp, 0x240
    crxor   6, 6, 6
    addi    r5, r29, 0xa78
    li      r4, 0x100
    bl      snprintf
branch_0x80043f10:
    addi    r3, sp, 0x240
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r23, r3, 0x0
    li      r3, 0x9c
    bl      __nw__FUl
    lwz     r5, 0x42f8(r31)
    mr      r4, r23
    stwx    r3, r5, r21
    lwz     r3, 0x42f8(r31)
    lwzx    r3, r3, r21
    bl      init__17TMarioInputReplayFPUc
    addi    r18, r18, 0x1
    addi    r21, r21, 0x4
branch_0x80043f44:
    cmpw    r18, r19
    blt+    branch_0x80043ed0
branch_0x80043f4c:
    lwz     r3, gpMarDirector(r13)
    li      r0, 0x2
    lwz     r3, 0x18(r3)
    lwz     r3, 0x4(r3)
    stw     r3, 0x4fc(r31)
    sth     r0, 0x4290(r31)
    lwz     r3, 0x42a0(r31)
    lwz     r0, 0x154(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80043fac
    bge-    branch_0x80043f88
    cmpwi   r0, 0x0
    beq-    branch_0x80043f94
    bge-    branch_0x80043fa0
    b       branch_0x80043fc4

branch_0x80043f88:
    cmpwi   r0, 0x4
    bge-    branch_0x80043fc4
    b       branch_0x80043fb8

branch_0x80043f94:
    li      r0, 0xc
    sth     r0, 0x4292(r31)
    b       branch_0x80043fcc

branch_0x80043fa0:
    li      r0, 0xb
    sth     r0, 0x4292(r31)
    b       branch_0x80043fcc

branch_0x80043fac:
    li      r0, 0x12
    sth     r0, 0x4292(r31)
    b       branch_0x80043fcc

branch_0x80043fb8:
    li      r0, 0x16
    sth     r0, 0x4292(r31)
    b       branch_0x80043fcc

branch_0x80043fc4:
    li      r0, 0x9
    sth     r0, 0x4292(r31)
branch_0x80043fcc:
    cmpwi   r20, 0x0
    bne-    branch_0x80043fdc
    li      r0, 0x9
    sth     r0, 0x4292(r31)
branch_0x80043fdc:
    cmpwi   r20, 0x2
    beq-    branch_0x80044010
    bge-    branch_0x80043ff4
    cmpwi   r20, 0x0
    bge-    branch_0x80044000
    b       branch_0x8004402c

branch_0x80043ff4:
    cmpwi   r20, 0x4
    bge-    branch_0x8004402c
    b       branch_0x80044020

branch_0x80044000:
    lwz     r3, 0x42a0(r31)
    lwz     r0, 0x158(r3)
    stw     r0, 0x42a8(r31)
    b       branch_0x8004402c

branch_0x80044010:
    lwz     r3, 0x42a0(r31)
    lwz     r0, 0x15c(r3)
    stw     r0, 0x42a8(r31)
    b       branch_0x8004402c

branch_0x80044020:
    lwz     r3, 0x42a0(r31)
    lwz     r0, 0x160(r3)
    stw     r0, 0x42a8(r31)
branch_0x8004402c:
    lwz     r3, 0x42a0(r31)
    addi    r4, r31, 0x10
    lwz     r0, 0x42a8(r31)
    lwz     r3, 0x124(r3)
    slwi    r0, r0, 4
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r4, 0x42a0(r31)
    cmpwi   r19, 0x0
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    ble-    branch_0x800440a4
    lwz     r0, 0x42a8(r31)
    lwz     r3, 0x42f8(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      reset__17TMarioInputReplayFv
    lwz     r0, 0x42a8(r31)
    li      r4, 0x1
    lwz     r3, 0x42f8(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    sth     r4, 0x2(r3)
    b       branch_0x800440ac

branch_0x800440a4:
    li      r0, 0x0
    stw     r0, 0x42f8(r31)
branch_0x800440ac:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80044174
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80044174
    li      r3, 0x20
    bl      __nwa__FUl
    stw     r3, 0x42fc(r31)
    li      r18, 0x0
    li      r19, 0x0
branch_0x800440dc:
    add     r3, r26, r19
    lwz     r6, 0x670(r3)
    cmplwi  r6, 0x0
    beq-    branch_0x80044130
    crxor   6, 6, 6
    addi    r3, sp, 0x140
    addi    r5, r29, 0xa54
    li      r4, 0x100
    bl      snprintf
    addi    r3, sp, 0x140
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r20, r3, 0x0
    li      r3, 0x9c
    bl      __nw__FUl
    lwz     r5, 0x42fc(r31)
    mr      r4, r20
    stwx    r3, r5, r19
    lwz     r3, 0x42fc(r31)
    lwzx    r3, r3, r19
    bl      init__17TMarioInputReplayFPUc
    b       branch_0x8004413c

branch_0x80044130:
    lwz     r3, 0x42fc(r31)
    li      r0, 0x0
    stwx    r0, r3, r19
branch_0x8004413c:
    addi    r18, r18, 0x1
    cmpwi   r18, 0x8
    addi    r19, r19, 0x4
    blt+    branch_0x800440dc
    addi    r3, r29, 0xa9c
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r18, r3, 0x0
    li      r3, 0x9c
    bl      __nw__FUl
    stw     r3, 0x4300(r31)
    mr      r4, r18
    lwz     r3, 0x4300(r31)
    bl      init__17TMarioInputReplayFPUc
    b       branch_0x80044180

branch_0x80044174:
    li      r0, 0x0
    stw     r0, 0x42fc(r31)
    stw     r0, 0x4300(r31)
branch_0x80044180:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xc
    bne-    branch_0x80044260
    lwz     r3, 0x42a0(r31)
    addi    r4, r29, 0xac0
    lwz     r3, 0x4(r3)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x800441c0
    li      r0, 0x3
    stb     r0, 0x388(r31)
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x18(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4fc(r31)
branch_0x800441c0:
    lwz     r3, 0x42a0(r31)
    addi    r4, r29, 0xacc
    lwz     r3, 0x4(r3)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x800441f0
    li      r0, 0x4
    stb     r0, 0x388(r31)
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x18(r3)
    lwz     r0, 0x8(r3)
    stw     r0, 0x4fc(r31)
branch_0x800441f0:
    lwz     r3, 0x42a0(r31)
    addi    r4, r29, 0xad8
    lwz     r3, 0x4(r3)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80044220
    li      r0, 0x5
    stb     r0, 0x388(r31)
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x18(r3)
    lwz     r0, 0xc(r3)
    stw     r0, 0x4fc(r31)
branch_0x80044220:
    li      r0, 0x1b
    sth     r0, 0x4292(r31)
    lbz     r3, 0x388(r31)
    cmplwi  r3, 0x3
    beq-    branch_0x80044244
    subi    r0, r3, 0x4
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bgt-    branch_0x80044260
branch_0x80044244:
    li      r3, 0x40
    bl      __nw__FUl
    stw     r3, 0x53c(r31)
    lwz     r4, 0x3a8(r31)
    lwz     r3, 0x53c(r31)
    lwz     r4, 0x8(r4)
    bl      init__19TTrembleModelEffectFP8J3DModel
branch_0x80044260:
    lwz     r3, 0x53c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80044274
    lfs     f1, 0x42ac(r31)
    bl      clash__19TTrembleModelEffectFf
branch_0x80044274:
    lhz     r4, 0x114(r31)
    lis     r3, 0xc40
    addi    r0, r3, 0x201
    ori     r3, r4, 0x2
    sth     r3, 0x114(r31)
    stw     r0, 0x7c(r31)
    stw     r0, 0x80(r31)
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0x118(r31)
    lbz     r0, 0x42d4(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x800442b0
    lwz     r3, gpMapObjWave(r13)
    bl      noWave__11TMapObjWaveFv
branch_0x800442b0:
    li      r0, 0x0
    stw     r0, 0x3b0(r31)
    stw     r0, 0x3b4(r31)
    stw     r0, 0x3b8(r31)
    stw     r0, 0x3bc(r31)
    stw     r0, 0x3e4(r31)
    stw     r0, 0x3e0(r31)
    stw     r0, 0x3f0(r31)
    stw     r0, 0x420(r31)
    lwz     r0, 0x594(sp)
    lmw     r18, 0x558(sp)
    addi    sp, sp, 0x590
    mtlr    r0
    blr


.globl __dt__20JSUMemoryInputStreamFv
__dt__20JSUMemoryInputStreamFv: # 0x800442e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80044340
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    stw     r0, 0x0(r30)
    beq-    branch_0x80044330
    lis     r3, 0x803e
    addi    r0, r3, 0x160
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
branch_0x80044330:
    extsh.  r0, r31
    ble-    branch_0x80044340
    mr      r3, r30
    bl      __dl__FPv
branch_0x80044340:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__20JSURandomInputStreamFv
__dt__20JSURandomInputStreamFv: # 0x8004435c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800443a4
    lis     r3, 0x803e
    addi    r0, r3, 0x160
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    extsh.  r0, r31
    ble-    branch_0x800443a4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800443a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10JSUIosBaseFv
__dt__10JSUIosBaseFv: # 0x800443c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800443f4
    lis     r3, 0x803b
    subi    r3, r3, 0xf0c
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x800443f4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800443f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initModel__11TEnemyMarioFv
initModel__11TEnemyMarioFv: # 0x8004440c
    mflr    r0
    subi    r4, rtoc, 0x7034
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x2f8(sp)
    stmw    r19, 0x2c4(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x394(r3)
    lis     r3, 0x8037
    addi    r30, r3, 0x7068
    stw     r0, 0x398(r31)
    stw     r0, 0x39c(r31)
    stw     r0, 0x3a0(r31)
    lwz     r26, MarioActor(r13)
    lwz     r3, 0x3a8(r26)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3ac(r31)
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c4(r31)
    addi    r4, r30, 0xae4
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c6(r31)
    addi    r4, r30, 0xaf0
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c5(r31)
    addi    r4, r30, 0xafc
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c7(r31)
    addi    r4, r30, 0xb08
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c8(r31)
    addi    r4, r30, 0xb14
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c9(r31)
    addi    r4, r30, 0xb20
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3ca(r31)
    addi    r4, r30, 0xb2c
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3cb(r31)
    addi    r4, r30, 0xb38
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3cc(r31)
    addi    r4, r30, 0xb44
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3cd(r31)
    addi    r4, r30, 0xb50
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3ce(r31)
    addi    r4, r30, 0xb5c
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3cf(r31)
    subi    r4, rtoc, 0x702c
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3d0(r31)
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80044578
    lwz     r4, 0x3ac(r31)
    addi    r3, r29, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80044578:
    li      r22, 0x0
    stw     r22, 0x3b0(r31)
    li      r3, 0x31c
    stw     r22, 0x3b4(r31)
    stw     r22, 0x3b8(r31)
    stw     r22, 0x3bc(r31)
    bl      __nwa__FUl
    lis     r4, 0x803b
    stw     r3, 0x4e0(r31)
    subi    r21, r4, 0x1770
    li      r19, 0x0
    li      r20, 0x0
branch_0x800445a8:
    add     r3, r21, r22
    crxor   6, 6, 6
    lwz     r6, 0x4(r3)
    addi    r3, sp, 0x1b8
    addi    r5, r30, 0xb68
    li      r4, 0xff
    bl      snprintf
    lwz     r0, 0x4e0(r31)
    addi    r3, r31, 0x0
    addi    r5, sp, 0x1b8
    add     r4, r0, r20
    bl      loadBas__6TMarioFPPvPCc
    addi    r19, r19, 0x1
    cmpwi   r19, 0xc7
    addi    r20, r20, 0x4
    addi    r22, r22, 0x8
    blt+    branch_0x800445a8
    li      r3, 0x60
    bl      __nwa__FUl
    addi    r27, r3, 0x0
    li      r3, 0x60
    bl      __nwa__FUl
    lis     r6, 0x803e
    lis     r5, 0x8004
    lis     r4, 0x8004
    addi    r28, r3, 0x0
    subi    r23, r6, 0x2fc0
    addi    r24, r5, 0x4c88
    addi    r25, r4, 0x4c3c
    li      r21, 0x0
    li      r20, 0x0
branch_0x80044624:
    add     r3, r23, r20
    lwz     r6, 0x3ac(r31)
    add     r22, r27, r20
    lwz     r5, 0x0(r3)
    addi    r3, r31, 0x0
    addi    r4, r22, 0x0
    bl      loadAnmTexPattern__6TMarioFPP16J3DAnmTexPatternPcP12J3DModelData
    lwz     r3, 0x0(r22)
    lhz     r19, 0x1a(r3)
    mulli   r3, r19, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    addi    r7, r19, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    add     r6, r28, r20
    stw     r3, 0x0(r6)
    li      r7, 0x0
    li      r3, 0x0
    b       branch_0x800446a0

branch_0x8004467c:
    lwz     r4, 0x0(r6)
    addi    r0, r3, 0x4
    sthx    r7, r4, r0
    addi    r0, r3, 0x8
    addi    r7, r7, 0x1
    lwz     r5, 0x0(r22)
    addi    r3, r3, 0xc
    lwz     r4, 0x0(r6)
    stwx    r5, r4, r0
branch_0x800446a0:
    lwz     r4, 0x0(r22)
    lhz     r0, 0x1a(r4)
    cmpw    r7, r0
    blt+    branch_0x8004467c
    addi    r21, r21, 0x1
    cmpwi   r21, 0x18
    addi    r20, r20, 0x4
    blt+    branch_0x80044624
    li      r3, 0xe0
    bl      __nwa__FUl
    lis     r4, 0x8004
    lis     r5, 0x8004
    addi    r4, r4, 0x4c18
    addi    r5, r5, 0x4b5c
    li      r6, 0x6c
    li      r7, 0x2
    bl      __construct_new_array
    lfs     f0, -0x710c(rtoc)
    mr      r21, r3
    stfs    f0, 0x50(r3)
    li      r3, 0x44
    bl      __nwa__FUl
    lis     r4, 0x8004
    lis     r5, 0x8003
    addi    r4, r4, 0x4b1c
    subi    r5, r5, 0x1e58
    li      r6, 0x14
    li      r7, 0x3
    bl      __construct_new_array
    addi    r22, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x80044754
    lis     r3, 0x803e
    subi    r0, r3, 0x441c
    stw     r0, 0x0(r23)
    li      r4, 0x0
    lis     r3, 0x803b
    stw     r4, 0x4(r23)
    subi    r0, r3, 0xf18
    stw     r4, 0x8(r23)
    stw     r4, 0x10(r23)
    stw     r4, 0x14(r23)
    stw     r0, 0x0(r23)
branch_0x80044754:
    lwz     r4, 0x3a8(r26)
    li      r3, 0x80
    lwz     r4, 0x4(r4)
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r23)
    stw     r21, 0x18(r23)
    stw     r27, 0x8(r23)
    lwz     r4, 0x3a8(r26)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r23)
    stw     r28, 0xc(r23)
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x8004480c
    lis     r3, 0x803e
    subi    r0, r3, 0x4440
    stw     r0, 0x0(r21)
    addi    r19, r21, 0x28
    li      r6, 0x0
    stw     r6, 0x4(r21)
    lis     r4, 0x803e
    lis     r3, 0x803b
    stw     r6, 0x8(r21)
    subi    r5, r4, 0x40e8
    addi    r20, r19, 0x50
    stw     r6, 0xc(r21)
    subi    r0, r3, 0xf38
    addi    r3, r19, 0x0
    sth     r6, 0x10(r21)
    li      r4, 0x0
    stw     r6, 0x14(r21)
    stw     r6, 0x1c(r21)
    stw     r5, 0x0(r21)
    stw     r20, 0x28(r21)
    stw     r0, 0x78(r21)
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, 0x803e
    addi    r3, r3, 0x8b0
    stw     r3, 0x4c(r19)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r19)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r19)
    subf    r0, r3, r20
    stw     r0, 0x4(r3)
branch_0x8004480c:
    stw     r29, 0x8(r21)
    stw     r23, 0x4(r21)
    stw     r23, 0x20(r21)
    stw     r22, 0xc(r21)
    bl      SMSGetAnmFrameRate__Fv
    li      r3, 0x14
    stfs    f1, 0x34(r22)
    bl      __nwa__FUl
    lwz     r5, 0x730(r30)
    li      r0, 0x2
    lwz     r4, 0x734(r30)
    stw     r5, 0x14c(sp)
    stw     r4, 0x150(sp)
    lhz     r4, 0x738(r30)
    sth     r4, 0x154(sp)
    lwz     r5, 0x14c(sp)
    lwz     r4, 0x150(sp)
    stw     r5, 0x0(r3)
    stw     r4, 0x4(r3)
    lhz     r4, 0x154(sp)
    sth     r4, 0x8(r3)
    lwz     r5, 0x73c(r30)
    lwz     r4, 0x740(r30)
    stw     r5, 0x140(sp)
    stw     r4, 0x144(sp)
    lhz     r4, 0x744(r30)
    sth     r4, 0x148(sp)
    lbz     r4, 0x3c5(r31)
    sth     r4, 0x140(sp)
    lwz     r5, 0x140(sp)
    lwz     r4, 0x144(sp)
    stw     r5, 0xa(r3)
    stw     r4, 0xe(r3)
    lhz     r4, 0x148(sp)
    sth     r4, 0x12(r3)
    sth     r0, 0x10(r21)
    stw     r3, 0x24(r21)
    li      r3, 0x2
    bl      __nw__FUl
    lhz     r0, -0x7118(rtoc)
    li      r4, 0x0
    li      r5, 0x0
    sth     r0, 0x13c(sp)
    li      r6, 0x3e
    lhz     r0, 0x13c(sp)
    sth     r0, 0x0(r3)
    stw     r3, 0x1c(r21)
    mr      r3, r21
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    addi    r3, r21, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x41
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    lfs     f0, -0x710c(rtoc)
    mr      r3, r31
    lwz     r5, 0xc(r21)
    li      r4, 0xc3
    stfs    f0, 0x20(r5)
    lwz     r5, 0x18(r23)
    stfs    f0, 0xbc(r5)
    stw     r21, 0x3a8(r31)
    lfs     f1, -0x70b4(rtoc)
    bl      setAnimation__6TMarioFif
    lfs     f0, -0x70b4(rtoc)
    addi    r3, sp, 0x158
    addi    r4, sp, 0x178
    stfs    f0, 0x158(sp)
    stfs    f0, 0x15c(sp)
    stfs    f0, 0x160(sp)
    lha     r0, 0x94(r31)
    sth     r0, 0x164(sp)
    lha     r0, 0x9a(r31)
    sth     r0, 0x166(sp)
    lha     r0, 0x98(r31)
    sth     r0, 0x168(sp)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x16c(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x170(sp)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x174(sp)
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
    lwz     r4, 0x3a8(r31)
    addi    r3, sp, 0x178
    lwz     r4, 0x8(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r31)
    bl      updateInMotion__13M3UModelMarioFv
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r20, 0x0
    stw     r20, 0x3f4(r31)
    li      r3, 0x14
    stw     r20, 0x3f8(r31)
    stw     r20, 0x3fc(r31)
    stw     r20, 0x400(r31)
    bl      __nw__FUl
    stw     r3, 0x420(r31)
    li      r0, 0x3
    li      r3, 0x6
    lwz     r4, 0x420(r31)
    sth     r0, 0x0(r4)
    bl      __nwa__FUl
    lbz     r0, 0x3c5(r31)
    sth     r0, 0x0(r3)
    lbz     r0, 0x3c7(r31)
    sth     r0, 0x2(r3)
    lbz     r0, 0x3c8(r31)
    sth     r0, 0x4(r3)
    lwz     r4, 0x420(r31)
    stw     r3, 0x8(r4)
    li      r3, 0x3
    bl      __nwa__FUl
    stb     r20, 0x0(r3)
    subi    r5, rtoc, 0x7024
    stb     r20, 0x1(r3)
    stb     r20, 0x2(r3)
    lwz     r4, 0x420(r31)
    stw     r3, 0x4(r4)
    lwz     r4, 0x3a8(r31)
    lwz     r3, 0x420(r31)
    lwz     r4, 0x8(r4)
    bl      setup__15TMultiMtxEffectFP8J3DModelPCc
    lmw     r19, 0x2c4(sp)
    lwz     r0, 0x2fc(sp)
    addi    sp, sp, 0x2f8
    mtlr    r0
    blr


.globl __dt__19J3DMtxCalcSoftimageFv
__dt__19J3DMtxCalcSoftimageFv: # 0x80044a24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80044a9c
    lis     r3, 0x803e
    addi    r3, r3, 0x8b0
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    addi    r5, r31, 0x50
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
    beq-    branch_0x80044a8c
    lis     r3, 0x803e
    addi    r3, r3, 0x8f4
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
branch_0x80044a8c:
    extsh.  r0, r4
    ble-    branch_0x80044a9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80044a9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15J3DMtxCalcBasicFv
__dt__15J3DMtxCalcBasicFv: # 0x80044ab4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80044b04
    lis     r3, 0x803e
    addi    r3, r3, 0x8f4
    stw     r3, 0x4c(r31)
    addi    r6, r3, 0x24
    addi    r3, r31, 0x50
    lwz     r5, 0x0(r31)
    extsh.  r0, r4
    stw     r6, 0x0(r5)
    lwz     r4, 0x0(r31)
    subf    r0, r4, r3
    stw     r0, 0x4(r4)
    ble-    branch_0x80044b04
    mr      r3, r31
    bl      __dl__FPv
branch_0x80044b04:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12J3DFrameCtrlFv
__ct__12J3DFrameCtrlFv: # 0x80044b1c
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    subi    r0, r4, 0x2eac
    li      r4, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    bl      init__12J3DFrameCtrlFs
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__24M3UMtxCalcSIAnmBlendQuatFv
__dt__24M3UMtxCalcSIAnmBlendQuatFv: # 0x80044b5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80044c00
    lis     r3, 0x803e
    subi    r3, r3, 0x4484
    stw     r3, 0x4c(r31)
    addi    r5, r3, 0x24
    addi    r0, r31, 0x64
    lwz     r3, 0x0(r31)
    stw     r5, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x80044bf0
    lis     r3, 0x803e
    addi    r3, r3, 0x8b0
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    addi    r5, r31, 0x50
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
    beq-    branch_0x80044bf0
    lis     r3, 0x803e
    addi    r3, r3, 0x8f4
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
branch_0x80044bf0:
    extsh.  r0, r4
    ble-    branch_0x80044c00
    mr      r3, r31
    bl      __dl__FPv
branch_0x80044c00:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__24M3UMtxCalcSIAnmBlendQuatFv
__ct__24M3UMtxCalcSIAnmBlendQuatFv: # 0x80044c18
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      __ct__24M3UMtxCalcSIAnmBlendQuatFb
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__11J3DTexNoAnmFv
__dt__11J3DTexNoAnmFv: # 0x80044c3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80044c70
    lis     r3, 0x803e
    addi    r3, r3, 0x17a8
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x80044c70
    mr      r3, r31
    bl      __dl__FPv
branch_0x80044c70:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__11J3DTexNoAnmFv
__ct__11J3DTexNoAnmFv: # 0x80044c88
    lis     r4, 0x803e
    addi    r0, r4, 0x17a8
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    sth     r0, 0x4(r3)
    blr


.globl initValues__11TEnemyMarioFv
initValues__11TEnemyMarioFv: # 0x80044ca4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r3
    lha     r0, 0x58c(r3)
    lis     r3, 0x8037
    addi    r30, r3, 0x7068
    sth     r0, 0x120(r29)
    li      r3, 0x24
    lfs     f1, -0x710c(rtoc)
    stfs    f1, 0x134(r29)
    lfs     f0, -0x70b4(rtoc)
    stfs    f0, 0x138(r29)
    sth     r31, 0x13c(r29)
    stfs    f1, 0x140(r29)
    bl      __nw__FUl
    stw     r3, 0x108(r29)
    li      r3, 0x160
    lwz     r4, 0x108(r29)
    sth     r31, 0x0(r4)
    lwz     r4, 0x108(r29)
    sth     r31, 0x2(r4)
    lfs     f2, -0x710c(rtoc)
    lwz     r4, 0x108(r29)
    fmr     f1, f2
    stfs    f2, 0x10(r4)
    fmr     f0, f2
    lwz     r4, 0x108(r29)
    stfs    f2, 0x14(r4)
    lwz     r4, 0x108(r29)
    stfs    f1, 0x18(r4)
    lwz     r4, 0x108(r29)
    stw     r31, 0x4(r4)
    lwz     r4, 0x108(r29)
    stw     r31, 0x8(r4)
    lwz     r4, 0x108(r29)
    stb     r31, 0xc(r4)
    lwz     r4, 0x108(r29)
    stb     r31, 0xd(r4)
    stfs    f0, 0x10c(r29)
    stfs    f2, 0x110(r29)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80044d70
    addi    r3, r31, 0x0
    addi    r4, r30, 0xb80
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x80044d70:
    stw     r31, 0x154(r29)
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80044d90
    addi    r3, r31, 0x0
    addi    r4, r30, 0xb9c
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x80044d90:
    stw     r31, 0x158(r29)
    li      r0, 0x1
    li      r31, 0x0
    stb     r0, 0x388(r29)
    li      r3, 0x78
    stw     r31, 0x530(r29)
    stb     r31, 0x534(r29)
    sth     r31, 0x536(r29)
    sth     r31, 0x538(r29)
    stb     r31, 0x53a(r29)
    stb     r31, 0x53b(r29)
    bl      __nwa__FUl
    li      r0, 0x7
    stw     r3, 0x530(r29)
    mtctr   r0
    li      r10, 0x0
branch_0x80044dd0:
    lwz     r3, 0x530(r29)
    li      r9, 0x0
    addi    r0, r31, 0x2
    sthx    r9, r3, r31
    addi    r7, r31, 0x4
    addi    r6, r31, 0x6
    lwz     r3, 0x530(r29)
    addi    r5, r31, 0x8
    addi    r4, r31, 0xa
    sthx    r9, r3, r0
    addi    r3, r31, 0xc
    addi    r0, r31, 0xe
    lwz     r8, 0x530(r29)
    addi    r10, r10, 0x8
    addi    r31, r31, 0x10
    sthx    r9, r8, r7
    lwz     r7, 0x530(r29)
    sthx    r9, r7, r6
    lwz     r6, 0x530(r29)
    sthx    r9, r6, r5
    lwz     r5, 0x530(r29)
    sthx    r9, r5, r4
    lwz     r4, 0x530(r29)
    sthx    r9, r4, r3
    lwz     r3, 0x530(r29)
    sthx    r9, r3, r0
    bdnz+      branch_0x80044dd0
    subfic  r0, r10, 0x3c
    cmpwi   r10, 0x3c
    mtctr   r0
    slwi    r3, r10, 1
    bge-    branch_0x80044e60
branch_0x80044e50:
    lwz     r4, 0x530(r29)
    sthx    r9, r4, r3
    addi    r3, r3, 0x2
    bdnz+      branch_0x80044e50
branch_0x80044e60:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x710c(rtoc)
    li      r0, 0x0
    li      r3, 0x84
    stfs    f0, 0x3d8(r29)
    stfs    f0, 0x3dc(r29)
    stw     r0, 0x3e0(r29)
    stw     r0, 0x3e4(r29)
    stw     r0, 0x3f0(r29)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80044ec0
    addi    r3, r31, 0x0
    addi    r4, r30, 0xbb4
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803e
    subi    r3, r3, 0x2a70
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r31)
branch_0x80044ec0:
    stw     r31, 0x424(r29)
    mr      r4, r29
    lwz     r3, 0x424(r29)
    bl      init__12TMarioEffectFP6TMario
    lfs     f1, -0x710c(rtoc)
    li      r3, 0x98
    stfs    f1, 0x414(r29)
    stfs    f1, 0x418(r29)
    lfs     f0, -0x70b4(rtoc)
    stfs    f0, 0x41c(r29)
    stfs    f1, 0x450(r29)
    stfs    f1, 0x454(r29)
    stfs    f1, 0x458(r29)
    stfs    f1, 0x45c(r29)
    stfs    f1, 0x460(r29)
    stfs    f1, 0x464(r29)
    stfs    f1, 0x468(r29)
    stfs    f1, 0x46c(r29)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80044f2c
    lwz     r4, gpMSound(r13)
    mr      r3, r30
    bl      __ct__9MAnmSoundFP6MSound
    lis     r3, 0x803b
    subi    r0, r3, 0x3bb0
    stw     r0, 0x94(r30)
branch_0x80044f2c:
    stw     r30, 0x4dc(r29)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x4dc(r29)
    lfs     f1, -0x710c(rtoc)
    bl      initAnmSound__9MAnmSoundFPvUlf
    li      r4, 0x0
    stb     r4, 0x4ec(r29)
    li      r0, 0xa
    li      r3, 0x1c
    stb     r0, 0x4ed(r29)
    sth     r4, 0x4ee(r29)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80044f80
    lwz     r5, 0x3a8(r29)
    mr      r3, r30
    lfs     f1, -0x70b4(rtoc)
    mr      r4, r29
    lwz     r5, 0x8(r5)
    bl      __ct__16TMBindShadowBodyFP9THitActorP8J3DModelf
branch_0x80044f80:
    stw     r30, 0x390(r29)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl init__10J3DMtxCalcFRC3VecRA3_A4_Cf
init__10J3DMtxCalcFRC3VecRA3_A4_Cf: # 0x80044fa0
    blr


.globl recursiveUpdate__10J3DMtxCalcFP7J3DNode
recursiveUpdate__10J3DMtxCalcFP7J3DNode: # 0x80044fa4
    blr


.globl recursiveCalc__10J3DMtxCalcFP7J3DNode
recursiveCalc__10J3DMtxCalcFP7J3DNode: # 0x80044fa8
    blr


.globl recursiveEntry__10J3DMtxCalcFP7J3DNode
recursiveEntry__10J3DMtxCalcFP7J3DNode: # 0x80044fac
    blr


.globl calcTransform__10J3DMtxCalcFUsRC16J3DTransformInfo
calcTransform__10J3DMtxCalcFUsRC16J3DTransformInfo: # 0x80044fb0
    blr


.globl calc__10J3DMtxCalcFUs
calc__10J3DMtxCalcFUs: # 0x80044fb4
    blr


.globl getMtxCalc__19M3UModelCommonMarioFRC17M3UMtxCalcSetInfo
getMtxCalc__19M3UModelCommonMarioFRC17M3UMtxCalcSetInfo: # 0x80044fb8
    lbz     r0, 0x3(r4)
    lwz     r3, 0x18(r3)
    mulli   r0, r0, 0x6c
    add.    r3, r3, r0
    beqlr-    

    lwz     r3, 0x0(r3)
    blr


.globl __sinit_enemyMario_cpp
__sinit_enemyMario_cpp: # 0x80044fd4
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x1c8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8004501c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8004501c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8004504c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8004504c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8004507c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8004507c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800450ac
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800450ac:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800450dc
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800450dc:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8004510c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8004510c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8004513c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8004513c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8004516c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8004516c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8004519c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8004519c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800451cc
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800451cc:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800451fc
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800451fc:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8004522c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8004522c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8004525c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8004525c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8004528c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8004528c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800452bc
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800452bc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TEnemyMarioFv
_32___dt__11TEnemyMarioFv: # 0x800452d0
    subi    r3, r3, 0x20
    b       __dt__11TEnemyMarioFv


.globl _112_drawSyncCallback__6TMarioFUs
_112_drawSyncCallback__6TMarioFUs: # 0x800452d8
    subi    r3, r3, 0x70
    b       drawSyncCallback__6TMarioFUs

