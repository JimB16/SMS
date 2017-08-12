
.globl addDamageFog__6TMarioFPQ26JDrama9TGraphics
addDamageFog__6TMarioFPQ26JDrama9TGraphics: # 0x80243d70
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stmw    r22, 0x128(sp)
    addi    r25, r3, 0x0
    addi    r26, r4, 0x0
    lwz     r0, R2Off_m0x1128(r2)
    stw     r0, 0x11c(sp)
    lwz     r0, 0x11c(sp)
    stw     r0, 0x124(sp)
    lha     r0, 0x14c(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80243dac
    li      r5, 0x0
branch_0x80243dac:
    lwz     r4, 0x118(r25)
    rlwinm. r0, r4, 0, 25, 25
    beq-    branch_0x80243dc0
    li      r0, 0x1
    b       branch_0x80243dc4

branch_0x80243dc0:
    li      r0, 0x0
branch_0x80243dc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80243e10
    lwz     r0, 0x350(r25)
    cmpwi   r0, 0x2
    bne-    branch_0x80243e10
    lhz     r3, 0x34e(r25)
    li      r5, 0x1
    lha     r0, 0x278c(r25)
    cmpw    r3, r0
    ble-    branch_0x80243e00
    lwz     r0, R2Off_m0x1124(r2)
    stw     r0, 0x118(sp)
    lwz     r0, 0x118(sp)
    stw     r0, 0x124(sp)
    b       branch_0x80243e10

branch_0x80243e00:
    lwz     r0, R2Off_m0x1120(r2)
    stw     r0, 0x114(sp)
    lwz     r0, 0x114(sp)
    stw     r0, 0x124(sp)
branch_0x80243e10:
    rlwinm. r0, r4, 0, 28, 28
    beq-    branch_0x80243e20
    li      r0, 0x1
    b       branch_0x80243e24

branch_0x80243e20:
    li      r0, 0x0
branch_0x80243e24:
    clrlwi. r0, r0, 24
    beq-    branch_0x80243e30
    li      r5, 0x0
branch_0x80243e30:
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80243fd4
    lwz     r3, 0x3a8(r25)
    li      r22, 0x0
    lwz     r3, 0x8(r3)
    lwz     r23, 0x4(r3)
    b       branch_0x80243e7c

branch_0x80243e50:
    lwz     r3, 0x28(r23)
    clrlslwi  r0, r22, 16, 2
    lwzx    r3, r3, r0
    lwz     r3, 0x30(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x124(sp)
    addi    r22, r22, 0x1
    stw     r0, 0x14(r3)
branch_0x80243e7c:
    lhz     r0, 0x24(r23)
    clrlwi  r3, r22, 16
    cmplw   r3, r0
    blt+    branch_0x80243e50
    lwz     r3, 0x3a8(r25)
    addi    r5, r26, 0x0
    addi    r4, r25, 0x10
    lwz     r3, 0x8(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    lwz     r3, 0x3e0(r25)
    cmplwi  r3, 0x0
    beq-    branch_0x80243f14
    lwz     r3, 0xc(r3)
    li      r22, 0x0
    lwz     r23, 0x4(r3)
    b       branch_0x80243eec

branch_0x80243ec0:
    lwz     r3, 0x28(r23)
    clrlslwi  r0, r22, 16, 2
    lwzx    r3, r3, r0
    lwz     r3, 0x30(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x124(sp)
    addi    r22, r22, 0x1
    stw     r0, 0x14(r3)
branch_0x80243eec:
    lhz     r0, 0x24(r23)
    clrlwi  r3, r22, 16
    cmplw   r3, r0
    blt+    branch_0x80243ec0
    lwz     r3, 0x3e0(r25)
    addi    r5, r26, 0x0
    addi    r4, r25, 0x10
    lwz     r3, 0xc(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
branch_0x80243f14:
    lwz     r0, 0x3b0(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x80244058
    li      r29, 0x0
    li      r24, 0x0
branch_0x80243f28:
    add     r31, r25, r24
    li      r28, 0x0
    li      r23, 0x0
branch_0x80243f34:
    addi    r30, r23, 0x3b0
    add     r30, r31, r30
    lwz     r3, 0x0(r30)
    li      r27, 0x0
    lwz     r22, 0x4(r3)
    b       branch_0x80243f78

branch_0x80243f4c:
    lwz     r3, 0x28(r22)
    clrlslwi  r0, r27, 16, 2
    lwzx    r3, r3, r0
    lwz     r3, 0x30(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x124(sp)
    addi    r27, r27, 0x1
    stw     r0, 0x14(r3)
branch_0x80243f78:
    lhz     r0, 0x24(r22)
    clrlwi  r3, r27, 16
    cmplw   r3, r0
    blt+    branch_0x80243f4c
    lwz     r3, 0x0(r30)
    addi    r5, r26, 0x0
    addi    r4, r25, 0x10
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    addi    r23, r23, 0x4
    blt+    branch_0x80243f34
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r24, r24, 0x8
    blt+    branch_0x80243f28
    lwz     r3, 0x3c0(r25)
    addi    r5, r26, 0x0
    addi    r4, r25, 0x10
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    b       branch_0x80244058

branch_0x80243fd4:
    lwz     r3, 0x3a8(r25)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
    lwz     r3, 0x3e0(r25)
    cmplwi  r3, 0x0
    beq-    branch_0x80243ffc
    lwz     r3, 0xc(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
branch_0x80243ffc:
    lwz     r0, 0x3b0(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x80244058
    li      r23, 0x0
    li      r26, 0x0
branch_0x80244010:
    add     r22, r25, r26
    li      r24, 0x0
    li      r27, 0x0
branch_0x8024401c:
    addi    r0, r27, 0x3b0
    lwzx    r3, r22, r0
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
    addi    r24, r24, 0x1
    cmpwi   r24, 0x2
    addi    r27, r27, 0x4
    blt+    branch_0x8024401c
    addi    r23, r23, 0x1
    cmpwi   r23, 0x2
    addi    r26, r26, 0x8
    blt+    branch_0x80244010
    lwz     r3, 0x3c0(r25)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
branch_0x80244058:
    lmw     r22, 0x128(sp)
    lwz     r0, 0x154(sp)
    addi    sp, sp, 0x150
    mtlr    r0
    blr


.globl addDirty__6TMarioFv
addDirty__6TMarioFv: # 0x8024406c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r24, 0x50(sp)
    addi    r31, r3, 0x0
    li      r26, 0x0
    b       branch_0x802440c4

branch_0x80244088:
    lwz     r3, 0x28(r4)
    clrlslwi  r0, r26, 16, 2
    li      r4, 0x0
    lwzx    r3, r3, r0
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x134(r31)
    addi    r26, r26, 0x1
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stb     r0, 0x3(r3)
branch_0x802440c4:
    lwz     r4, 0x3ac(r31)
    clrlwi  r0, r26, 16
    lhz     r3, 0x24(r4)
    cmplw   r0, r3
    blt+    branch_0x80244088
    lwz     r0, 0x3b0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80244178
    li      r25, 0x0
    li      r30, 0x0
branch_0x802440ec:
    add     r27, r31, r30
    li      r24, 0x0
    li      r29, 0x0
branch_0x802440f8:
    addi    r0, r29, 0x3b0
    lwzx    r3, r27, r0
    li      r26, 0x0
    lwz     r28, 0x4(r3)
    b       branch_0x80244148

branch_0x8024410c:
    lwz     r3, 0x28(r28)
    clrlslwi  r0, r26, 16, 2
    li      r4, 0x0
    lwzx    r3, r3, r0
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x134(r31)
    addi    r26, r26, 0x1
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stb     r0, 0x3(r3)
branch_0x80244148:
    lhz     r0, 0x24(r28)
    clrlwi  r3, r26, 16
    cmplw   r3, r0
    blt+    branch_0x8024410c
    addi    r24, r24, 0x1
    cmpwi   r24, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x802440f8
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r30, r30, 0x8
    blt+    branch_0x802440ec
branch_0x80244178:
    lmw     r24, 0x50(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl boxDrawPrepare__6TMarioFPA4_f
boxDrawPrepare__6TMarioFPA4_f: # 0x8024418c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x90(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x70
    bl      GXGetProjectionv
    addi    r3, sp, 0x58
    bl      GXGetViewportv
    lwz     r4, 0x10(r30)
    mr      r3, r31
    lwz     r0, 0x14(r30)
    addi    r5, sp, 0x58
    lfs     f0, -0x1114(r2)
    stw     r4, 0x4c(sp)
    addi    r4, sp, 0x70
    addi    r6, r30, 0x450
    stw     r0, 0x50(sp)
    addi    r7, r30, 0x454
    addi    r8, r30, 0x458
    lwz     r0, 0x18(r30)
    stw     r0, 0x54(sp)
    lfs     f1, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f31, 0x50(sp)
    lfs     f30, 0x54(sp)
    fmr     f2, f31
    lfs     f1, 0x4c(sp)
    fmr     f3, f30
    bl      GXProject
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
    li      r3, 0x0
    bl      GXSetCurrentMtx
    lfs     f1, -0x1110(r2)
    addi    r3, sp, 0x1c
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXScale
    lfs     f0, 0x4c(sp)
    addi    r4, sp, 0x1c
    addi    r3, r31, 0x0
    stfs    f0, 0x28(sp)
    mr      r5, r4
    stfs    f31, 0x38(sp)
    stfs    f30, 0x48(sp)
    bl      PSMTXConcat
    addi    r3, sp, 0x1c
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
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
    lwz     r0, R2Off_m0x112c(r2)
    addi    r4, sp, 0x18
    li      r3, 0x4
    stw     r0, 0x14(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      GXSetChanMatColor
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
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0xa8
    blr


.globl drawLogic__6TMarioFv
drawLogic__6TMarioFv: # 0x80244388
    mflr    r0
    lis     r4, j3dSys@h
    stw     r0, 0x4(sp)
    addi    r5, r4, j3dSys@l
    li      r0, 0x7
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x34
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x34(r5)
    ori     r3, r4, 0x2
    stw     r3, 0x34(r5)
    stw     r0, 0x4c(r5)
    bl      SMS_DrawInit__Fv
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
    lwz     r0, R2Off_m0x1130(r2)
    addi    r4, sp, 0x18
    li      r3, 0x4
    stw     r0, 0x14(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      GXSetChanMatColor
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
    lbz     r6, 0x4ed(r30)
    li      r3, 0x2
    li      r4, 0x1
    li      r5, 0x0
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    lwz     r3, 0x394(r30)
    bl      draw__13J3DDrawBufferCFv
    lwz     r3, 0x398(r30)
    bl      draw__13J3DDrawBufferCFv
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    lhz     r0, 0x114(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x802444e0
    li      r0, 0x1
    b       branch_0x802444e4

branch_0x802444e0:
    li      r0, 0x0
branch_0x802444e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802444fc
    lwz     r3, 0x394(r30)
    bl      draw__13J3DDrawBufferCFv
    lwz     r3, 0x398(r30)
    bl      draw__13J3DDrawBufferCFv
branch_0x802444fc:
    lwz     r0, 0x0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x0(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl drawSpecial__6TMarioFPQ26JDrama9TGraphics
drawSpecial__6TMarioFPQ26JDrama9TGraphics: # 0x80244520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x7c(r3)
    addis   r0, r4, 0xfffe
    cmplwi  r0, 0x338
    bne-    branch_0x80244554
    li      r0, 0x1
    stb     r0, 0x4ec(r3)
    lhz     r0, 0x114(r3)
    ori     r0, r0, 0x20
    sth     r0, 0x114(r3)
    b       branch_0x80244568

branch_0x80244554:
    li      r0, 0x0
    stb     r0, 0x4ec(r3)
    lhz     r0, 0x114(r3)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0x114(r3)
branch_0x80244568:
    lbz     r0, 0x4ec(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80244578
    b       branch_0x8024457c

branch_0x80244578:
    bl      drawLogic__6TMarioFv
branch_0x8024457c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl entryModels__6TMarioFPQ26JDrama9TGraphics
entryModels__6TMarioFPQ26JDrama9TGraphics: # 0x8024458c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    addi    r5, r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    li      r4, 0x200
    lwz     r3, 0x3a8(r3)
    bl      perform__8M3UModelFUlPQ26JDrama9TGraphics
    lwz     r3, 0x3b0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80244624
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b4(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b8(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3bc(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80244624:
    lwz     r3, 0x3e0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80244648
    lwz     r12, 0x0(r3)
    addi    r5, r31, 0x0
    li      r4, 0x200
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x80244648:
    lwz     r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x8024465c
    li      r0, 0x1
    b       branch_0x80244660

branch_0x8024465c:
    li      r0, 0x0
branch_0x80244660:
    clrlwi. r0, r0, 24
    beq-    branch_0x80244688
    lwz     r3, 0x3f4(r30)
    addi    r5, r30, 0x10
    lwz     r4, 0xe0(r30)
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x3f4(r30)
    addi    r5, r31, 0x0
    li      r4, 0x200
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80244688:
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x447
    bne-    branch_0x802446a8
    lwz     r3, 0x3f8(r30)
    addi    r5, r31, 0x0
    li      r4, 0x200
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x802446a8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcView__6TMarioFPQ26JDrama9TGraphics
calcView__6TMarioFPQ26JDrama9TGraphics: # 0x802446c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    lis     r4, j3dSys@h
    stw     r30, 0x20(sp)
    addi    r0, r31, 0xb4
    addi    r30, r3, 0x0
    addi    r4, r4, j3dSys@l
    mr      r3, r0
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r30)
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80244774
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b4(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b8(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3bc(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x80244774:
    lwz     r3, 0x3e0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80244798
    lwz     r12, 0x0(r3)
    addi    r5, r31, 0x0
    li      r4, 0x4
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x80244798:
    lwz     r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x802447ac
    li      r0, 0x1
    b       branch_0x802447b0

branch_0x802447ac:
    li      r0, 0x0
branch_0x802447b0:
    clrlwi. r0, r0, 24
    beq-    branch_0x802447c8
    lwz     r3, 0x3f4(r30)
    addi    r5, r31, 0x0
    li      r4, 0x4
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x802447c8:
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x447
    bne-    branch_0x802447e8
    lwz     r3, 0x3f8(r30)
    addi    r5, r31, 0x0
    li      r4, 0x4
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x802447e8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcAnim__6TMarioFUlPQ26JDrama9TGraphics
calcAnim__6TMarioFUlPQ26JDrama9TGraphics: # 0x80244800
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x328(sp)
    stfd    f31, 0x320(sp)
    stw     r31, 0x31c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x318(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x314(sp)
    addi    r29, r4, 0x0
    addi    r4, r31, 0x0
    bl      addCallBack__6TMarioFPQ26JDrama9TGraphics
    mr      r3, r30
    bl      addUpper__6TMarioFv
    addi    r3, r30, 0x0
    addi    r4, sp, 0x2dc
    bl      calcBaseMtx__6TMarioFPA4_f
    mr      r3, r30
    bl      considerWaist__6TMarioFv
    lwz     r4, 0x3a8(r30)
    addi    r3, sp, 0x2dc
    lwz     r4, 0x8(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r30)
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    bl      perform__8M3UModelFUlPQ26JDrama9TGraphics
    li      r4, 0x0
    stw     r4, R13Off_m0x60e0(r13)
    lwz     r3, 0x3a8(r30)
    lbz     r0, 0x3cf(r30)
    lwz     r3, 0x8(r3)
    slwi    r0, r0, 2
    lwz     r5, 0x4(r3)
    lwz     r3, 0x20(r5)
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lbz     r0, 0x3c6(r30)
    lwz     r3, 0x20(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lbz     r0, 0x3cb(r30)
    lwz     r3, 0x20(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lbz     r0, 0x3cc(r30)
    lwz     r3, 0x20(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lbz     r0, 0x3cd(r30)
    lwz     r3, 0x20(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lbz     r0, 0x3ce(r30)
    lwz     r3, 0x20(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lwz     r4, 0x3b0(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x80244a1c
    lwz     r3, 0x3a8(r30)
    addi    r4, r4, 0x20
    lbz     r0, 0x3c9(r30)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r30)
    lbz     r0, 0x3ca(r30)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x3b4(r30)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r30)
    lbz     r0, 0x3c9(r30)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x3b8(r30)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r30)
    lbz     r0, 0x3ca(r30)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x3bc(r30)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r30)
    lbz     r0, 0x3c9(r30)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x3c0(r30)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3b0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b4(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b8(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3bc(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80244a1c:
    lwz     r4, 0x3e0(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x80244ab8
    lwz     r3, 0x3a8(r30)
    lbz     r0, 0x3d0(r30)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0xc(r4)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r30)
    lbz     r0, 0x3cf(r30)
    lwz     r4, 0x8(r3)
    lwz     r3, 0x3e0(r30)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    lwz     r5, 0x18(r3)
    add     r3, r4, r0
    addi    r4, r5, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r30)
    lbz     r0, 0x3d0(r30)
    lwz     r4, 0x8(r3)
    lwz     r3, 0x3e0(r30)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    lwz     r5, 0x1c(r3)
    add     r3, r4, r0
    addi    r4, r5, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3e0(r30)
    addi    r5, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x80244ab8:
    lwz     r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80244acc
    li      r0, 0x1
    b       branch_0x80244ad0

branch_0x80244acc:
    li      r0, 0x0
branch_0x80244ad0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80244b04
    lwz     r4, 0x3a8(r30)
    lwz     r3, 0x3f4(r30)
    lwz     r4, 0x8(r4)
    lwz     r5, 0x4(r3)
    addi    r3, r4, 0x20
    addi    r4, r5, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3f4(r30)
    addi    r5, r31, 0x0
    li      r4, 0x2
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80244b04:
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x447
    bne-    branch_0x80244b24
    lwz     r3, 0x3f8(r30)
    addi    r5, r31, 0x0
    li      r4, 0x2
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80244b24:
    lwz     r3, 0x3f0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80244bcc
    lwz     r31, 0x34(r3)
    li      r4, 0x0
    addi    r3, r31, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0xf
    bne-    branch_0x80244b90
    lwz     r3, 0xc(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80244b58
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x80244b58:
    lwz     r0, 0xc(r31)
    lfs     f1, 0x41c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80244b70
    lwz     r3, 0xc(r31)
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x80244b70:
    lwz     r5, 0x3a8(r30)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r5, 0xc(r5)
    lfs     f31, 0xc(r5)
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x80244bcc

branch_0x80244b90:
    lwz     r3, 0xc(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80244ba0
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x80244ba0:
    lwz     r0, 0xc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80244bb8
    lwz     r3, 0xc(r31)
    lfs     f1, -0x1118(r2)
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x80244bb8:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x110c(r2)
    stfs    f0, 0xc(r3)
branch_0x80244bcc:
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x80244c48
    lhz     r0, 0xfa(r30)
    cmplwi  r0, 0x92
    beq-    branch_0x80244c48
    lfs     f31, 0x41c(r30)
    lfs     f0, -0x1108(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80244c04
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      changeHand__6TMarioFi
branch_0x80244c04:
    lfs     f0, -0x1108(r2)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x80244c30
    lfs     f0, -0x1104(r2)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80244c30
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      changeHand__6TMarioFi
branch_0x80244c30:
    lfs     f0, -0x1104(r2)
    fcmpo   cr0, f0, f31
    bge-    branch_0x80244c48
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      changeHand__6TMarioFi
branch_0x80244c48:
    lhz     r0, 0xfa(r30)
    cmplwi  r0, 0x12d
    bne-    branch_0x80244e54
    lwz     r3, 0x3a8(r30)
    li      r4, 0x0
    lwz     r3, 0x8(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x14(r3)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
    lwz     r3, 0x3a8(r30)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x18(r3)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
    lwz     r3, 0x3b0(r30)
    lwz     r5, 0x4(r3)
    b       branch_0x80244cc0

branch_0x80244ca4:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80244cc0:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80244ca4
    lwz     r3, 0x3b4(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80244cfc

branch_0x80244ce0:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80244cfc:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80244ce0
    lwz     r3, 0x3bc(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80244d38

branch_0x80244d1c:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80244d38:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80244d1c
    lwz     r3, 0x3a8(r30)
    lfs     f0, -0x1100(r2)
    lwz     r3, 0xc(r3)
    lfs     f1, 0x10(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80244ddc
    lwz     r3, 0x3b8(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80244d8c

branch_0x80244d70:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80244d8c:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80244d70
    lwz     r3, 0x3c0(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80244dc8

branch_0x80244dac:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80244dc8:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80244dac
    b       branch_0x80244e54

branch_0x80244ddc:
    lwz     r3, 0x3b8(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80244e08

branch_0x80244dec:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80244e08:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80244dec
    lwz     r3, 0x3c0(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80244e44

branch_0x80244e28:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80244e44:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80244e28
branch_0x80244e54:
    lwz     r0, 0x32c(sp)
    lfd     f31, 0x320(sp)
    lwz     r31, 0x31c(sp)
    mtlr    r0
    lwz     r30, 0x318(sp)
    lwz     r29, 0x314(sp)
    addi    sp, sp, 0x328
    blr


.globl addUpper__6TMarioFv
addUpper__6TMarioFv: # 0x80244e74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    lwz     r0, 0x380(r3)
    lwz     r4, 0x3a8(r3)
    cmplwi  r0, 0x4
    lwz     r3, 0xc(r4)
    addi    r31, r3, 0x14
    beq-    branch_0x80245010
    cmpwi   r0, 0x2
    beq-    branch_0x80244f3c
    bge-    branch_0x80244ebc
    cmpwi   r0, 0x0
    bge-    branch_0x80244ec8
    b       branch_0x80244f6c

branch_0x80244ebc:
    cmpwi   r0, 0x5
    beq-    branch_0x80244f60
    b       branch_0x80244f6c

branch_0x80244ec8:
    mr      r3, r30
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80244eec
    lwz     r3, 0x3a8(r30)
    li      r0, 0xff
    lwz     r3, 0x24(r3)
    stb     r0, 0xd(r3)
    b       branch_0x80245010

branch_0x80244eec:
    lhz     r0, 0xfa(r30)
    lis     r3, gMarioAnimeData@ha
    addi    r3, r3, gMarioAnimeData@l
    addi    r6, r3, 0x2
    slwi    r0, r0, 3
    lhzx    r0, r6, r0
    cmplwi  r0, 0xc8
    beq-    branch_0x80244f6c
    lwz     r3, 0x3a8(r30)
    li      r0, 0x1
    li      r4, 0x1
    lwz     r3, 0x24(r3)
    li      r5, 0x0
    stb     r0, 0xd(r3)
    lhz     r0, 0xfa(r30)
    lwz     r3, 0x3a8(r30)
    slwi    r0, r0, 3
    lhzx    r6, r6, r0
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    b       branch_0x80244f6c

branch_0x80244f3c:
    lwz     r3, 0x24(r4)
    li      r0, 0x1
    li      r4, 0x1
    stb     r0, 0xd(r3)
    li      r5, 0x0
    li      r6, 0x4b
    lwz     r3, 0x3a8(r30)
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    b       branch_0x80244f6c

branch_0x80244f60:
    lwz     r3, 0x24(r4)
    li      r0, 0xff
    stb     r0, 0xd(r3)
branch_0x80244f6c:
    lwz     r0, 0x380(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80245010
    li      r0, 0x4
    stb     r0, 0x4(r31)
    lwz     r3, 0x4fc(r30)
    lfs     f0, 0x3098(r30)
    lfs     f1, 0xb4(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x348(r30)
    lwz     r3, 0x3e4(r30)
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x80245010
    lfs     f1, 0xc(r31)
    lfs     f0, -0x1118(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80244fe4
    lfs     f0, 0x348(r30)
    mr      r3, r31
    stfs    f0, 0xc(r31)
    lfs     f1, -0x10fc(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80245010
    addi    r3, r30, 0x0
    li      r4, 0x816
    bl      startSoundActor__6TMarioFUl
    b       branch_0x80245010

branch_0x80244fe4:
    lfs     f0, 0x348(r30)
    mr      r3, r31
    fneg    f0, f0
    stfs    f0, 0xc(r31)
    lfs     f1, -0x10f8(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80245010
    addi    r3, r30, 0x0
    li      r4, 0x817
    bl      startSoundActor__6TMarioFUl
branch_0x80245010:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl setUpperDamageRun__6TMarioFv
setUpperDamageRun__6TMarioFv: # 0x80245028
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    li      r0, 0x1
    li      r5, 0x0
    stwu    sp, -0x30(sp)
    li      r6, 0x4a
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r3, 0x3a8(r3)
    lwz     r7, 0xc(r3)
    lwz     r3, 0x24(r3)
    addi    r31, r7, 0x14
    stb     r0, 0xd(r3)
    lwz     r3, 0x3a8(r30)
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    lha     r4, 0x6(r31)
    lis     r3, 0x4330
    lfd     f1, -0x10f0(r2)
    li      r0, 0x4
    xoris   r4, r4, 0x8000
    stw     r4, 0x24(sp)
    stw     r3, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r31)
    lfs     f0, -0x111c(r2)
    stfs    f0, 0xc(r31)
    lfs     f0, -0x110c(r2)
    stfs    f0, 0xc(r31)
    stw     r0, 0x380(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl addCallBack__6TMarioFPQ26JDrama9TGraphics
addCallBack__6TMarioFPQ26JDrama9TGraphics: # 0x802450c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stw     r31, 0x124(sp)
    stw     r30, 0x120(sp)
    mr      r30, r4
    stw     r29, 0x11c(sp)
    mr      r29, r3
    stw     r29, R13Off_m0x60e0(r13)
    lwz     r4, 0x3a8(r29)
    lwz     r4, 0x8(r4)
    lwz     r31, 0x4(r4)
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80245118
    lbz     r0, 0x3cf(r29)
    lis     r4, MarioHeadCtrl__FP7J3DNodei@ha
    lwz     r3, 0x20(r31)
    addi    r4, r4, MarioHeadCtrl__FP7J3DNodei@l
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
branch_0x80245118:
    lbz     r0, 0x3c6(r29)
    lis     r4, MarioWaistCtrl__FP7J3DNodei@ha
    lwz     r3, 0x20(r31)
    addi    r4, r4, MarioWaistCtrl__FP7J3DNodei@l
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r0, 0x58(r3)
    cmpwi   r0, 0x4b0
    blt-    branch_0x8024516c
    lwz     r4, 0x380(r29)
    cmplwi  r4, 0x0
    beq-    branch_0x80245158
    cmplwi  r4, 0x1
    bne-    branch_0x80245160
branch_0x80245158:
    li      r0, 0x1
    b       branch_0x80245164

branch_0x80245160:
    li      r0, 0x0
branch_0x80245164:
    clrlwi. r0, r0, 24
    beq-    branch_0x802451fc
branch_0x8024516c:
    lwz     r6, 0x420(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x802451ac
    li      r5, 0x0
    addi    r3, r5, 0x0
    b       branch_0x802451a0

branch_0x80245184:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    clrrwi  r0, r0, 1
    sth     r0, 0x4(r4)
branch_0x802451a0:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x80245184
branch_0x802451ac:
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802451c0
    li      r0, 0x1
    b       branch_0x802451c4

branch_0x802451c0:
    li      r0, 0x0
branch_0x802451c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802451e8
    lwz     r3, 0x3e4(r29)
    lwz     r3, 0x1cdc(r3)
    lwz     r3, 0x10(r3)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x4(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0x4(r3)
branch_0x802451e8:
    lwz     r3, 0x3e0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802452b8
    bl      mtxEffectHide__9TMarioCapFv
    b       branch_0x802452b8

branch_0x802451fc:
    lhz     r0, 0xfa(r29)
    lis     r3, gMarioAnimeData@ha
    addi    r3, r3, gMarioAnimeData@l
    slwi    r0, r0, 3
    add     r3, r3, r0
    lbz     r0, 0x6(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80245268
    cmplwi  r4, 0x5
    bne-    branch_0x80245268
    lwz     r6, 0x420(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x802452a8
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80245258

branch_0x8024523c:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    ori     r0, r0, 0x1
    sth     r0, 0x4(r4)
branch_0x80245258:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x8024523c
    b       branch_0x802452a8

branch_0x80245268:
    lwz     r6, 0x420(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x802452a8
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x8024529c

branch_0x80245280:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    clrrwi  r0, r0, 1
    sth     r0, 0x4(r4)
branch_0x8024529c:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x80245280
branch_0x802452a8:
    lwz     r3, 0x3e0(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802452b8
    bl      mtxEffectShow__9TMarioCapFv
branch_0x802452b8:
    lhz     r0, 0xfa(r29)
    lis     r3, gMarioAnimeData@ha
    addi    r3, r3, gMarioAnimeData@l
    slwi    r0, r0, 3
    add     r3, r3, r0
    lbz     r0, 0x6(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80245324
    lwz     r0, 0x380(r29)
    cmplwi  r0, 0x5
    bne-    branch_0x80245324
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802452f8
    li      r0, 0x1
    b       branch_0x802452fc

branch_0x802452f8:
    li      r0, 0x0
branch_0x802452fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80245360
    lwz     r3, 0x3e4(r29)
    lwz     r3, 0x1cdc(r3)
    lwz     r3, 0x10(r3)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x4(r3)
    ori     r0, r0, 0x1
    sth     r0, 0x4(r3)
    b       branch_0x80245360

branch_0x80245324:
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80245338
    li      r0, 0x1
    b       branch_0x8024533c

branch_0x80245338:
    li      r0, 0x0
branch_0x8024533c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80245360
    lwz     r3, 0x3e4(r29)
    lwz     r3, 0x1cdc(r3)
    lwz     r3, 0x10(r3)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x4(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0x4(r3)
branch_0x80245360:
    lhz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802453e0
    lbz     r0, 0x3cb(r29)
    lis     r4, MarioFootPosRCtrl__FP7J3DNodei@ha
    lwz     r3, 0x20(r31)
    lis     r5, MarioFootDirRCtrl__FP7J3DNodei@ha
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    addi    r0, r4, MarioFootPosRCtrl__FP7J3DNodei@l
    lis     r4, MarioFootPosLCtrl__FP7J3DNodei@ha
    stw     r0, 0x8(r3)
    lis     r3, MarioFootDirLCtrl__FP7J3DNodei@ha
    addi    r7, r5, MarioFootDirRCtrl__FP7J3DNodei@l
    lbz     r0, 0x3cc(r29)
    addi    r5, r4, MarioFootPosLCtrl__FP7J3DNodei@l
    lwz     r6, 0x20(r31)
    addi    r4, r3, MarioFootDirLCtrl__FP7J3DNodei@l
    slwi    r0, r0, 2
    lwzx    r3, r6, r0
    stw     r7, 0x8(r3)
    lbz     r0, 0x3cd(r29)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r5, 0x8(r3)
    lbz     r0, 0x3ce(r29)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    b       branch_0x80245434

branch_0x802453e0:
    lbz     r0, 0x3cb(r29)
    li      r4, 0x0
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lbz     r0, 0x3cc(r29)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lbz     r0, 0x3cd(r29)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
    lbz     r0, 0x3ce(r29)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stw     r4, 0x8(r3)
branch_0x80245434:
    lwz     r0, 0x12c(sp)
    lwz     r31, 0x124(sp)
    lwz     r30, 0x120(sp)
    mtlr    r0
    lwz     r29, 0x11c(sp)
    addi    sp, sp, 0x128
    blr


.globl calcBaseMtx__6TMarioFPA4_f
calcBaseMtx__6TMarioFPA4_f: # 0x80245450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2f0(sp)
    stfd    f31, 0x2e8(sp)
    stfd    f30, 0x2e0(sp)
    stfd    f29, 0x2d8(sp)
    stfd    f28, 0x2d0(sp)
    stw     r31, 0x2cc(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x2c8(sp)
    mr      r30, r3
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x447
    bne-    branch_0x8024557c
    lha     r0, 0x412(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x802454bc
    lwz     r3, 0x3fc(r30)
    bl      calcAnm__6MActorFv
    lwz     r4, 0x3fc(r30)
    lwz     r3, 0x3f8(r30)
    lwz     r4, 0x4(r4)
    lwz     r5, 0x4(r3)
    lwz     r3, 0x58(r4)
    addi    r4, r5, 0x20
    bl      PSMTXCopy
branch_0x802454bc:
    lha     r0, 0x412(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x802454ec
    lwz     r3, 0x400(r30)
    bl      calcAnm__6MActorFv
    lwz     r4, 0x400(r30)
    lwz     r3, 0x3f8(r30)
    lwz     r4, 0x4(r4)
    lwz     r5, 0x4(r3)
    lwz     r3, 0x58(r4)
    addi    r4, r5, 0x20
    bl      PSMTXCopy
branch_0x802454ec:
    lwz     r3, 0x3f8(r30)
    bl      calcAnm__6MActorFv
    lha     r4, 0x410(r30)
    lis     r0, 0x4330
    lfs     f1, -0x1118(r2)
    addi    r3, sp, 0x1ac
    xoris   r4, r4, 0x8000
    stw     r4, 0x2c4(sp)
    fmr     f3, f1
    lfd     f2, -0x10f0(r2)
    stw     r0, 0x2c0(sp)
    lfs     f4, -0x10e8(r2)
    lfd     f0, 0x2c0(sp)
    fsubs   f0, f0, f2
    fmuls   f2, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lwz     r3, 0x3f8(r30)
    addi    r5, r31, 0x0
    addi    r4, sp, 0x1ac
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x60
    bl      PSMTXConcat
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x404(r30)
    stw     r0, 0x408(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x40c(r30)
    lfs     f0, 0xc(r31)
    stfs    f0, 0x10(r30)
    lfs     f0, 0x1c(r31)
    stfs    f0, 0x14(r30)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x18(r30)
    b       branch_0x80245f98

branch_0x8024557c:
    rlwinm. r0, r3, 0, 11, 11
    beq-    branch_0x8024558c
    li      r0, 0x1
    b       branch_0x80245590

branch_0x8024558c:
    li      r0, 0x0
branch_0x80245590:
    clrlwi. r0, r0, 24
    beq-    branch_0x80245630
    lfs     f0, -0x111c(r2)
    li      r3, 0x0
    stfs    f0, 0x18c(sp)
    stfs    f0, 0x190(sp)
    stfs    f0, 0x194(sp)
    sth     r3, 0x198(sp)
    lha     r0, 0x9a(r30)
    sth     r0, 0x19a(sp)
    sth     r3, 0x19c(sp)
    lwz     r3, 0x68(r30)
    lfs     f1, 0x14(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb0(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x9a(r30)
    mr      r4, r31
    lwz     r7, R13Off_m0x5eac(r13)
    addi    r3, sp, 0x18c
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r0, r0, r7
    lfs     f0, 0x10(r30)
    slwi    r0, r0, 2
    lwz     r5, R13Off_m0x5ea4(r13)
    lfsx    f2, r6, r0
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x1a0(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1a4(sp)
    lhz     r0, 0x9a(r30)
    lfs     f0, 0x18(r30)
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x1a8(sp)
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
    b       branch_0x80245f98

branch_0x80245630:
    rlwinm. r0, r3, 0, 18, 18
    beq-    branch_0x80245640
    li      r0, 0x1
    b       branch_0x80245644

branch_0x80245640:
    li      r0, 0x0
branch_0x80245644:
    clrlwi. r0, r0, 24
    beq-    branch_0x802456c0
    lfs     f0, -0x111c(r2)
    li      r3, 0x0
    stfs    f0, 0x16c(sp)
    stfs    f0, 0x170(sp)
    stfs    f0, 0x174(sp)
    sth     r3, 0x178(sp)
    lha     r0, 0x9a(r30)
    sth     r0, 0x17a(sp)
    sth     r3, 0x17c(sp)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x180(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x184(sp)
    lfs     f0, 0x18(r30)
    lwz     r3, R13Off_m0x626c(r13)
    stfs    f0, 0x188(sp)
    lfs     f1, 0x10(r30)
    lfs     f2, 0xf0(r30)
    lfs     f3, 0x18(r30)
    bl      getHeight__11TMapObjWaveCFfff
    lfs     f0, 0xf0(r30)
    mr      r4, r31
    lfs     f2, 0x184(sp)
    addi    r3, sp, 0x16c
    fsubs   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x184(sp)
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
    b       branch_0x80245f98

branch_0x802456c0:
    lwz     r3, 0x68(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80245704
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80245704
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    mr      r4, r31
    bl      PSMTXCopy
    b       branch_0x80245f98

branch_0x80245704:
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x88a
    beq-    branch_0x80245728
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x358
    beq-    branch_0x80245728
    li      r0, 0x0
    sth     r0, 0x94(r30)
branch_0x80245728:
    lhz     r0, 0x114(r30)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8024573c
    li      r0, 0x1
    b       branch_0x80245740

branch_0x8024573c:
    li      r0, 0x0
branch_0x80245740:
    clrlwi. r0, r0, 24
    beq-    branch_0x80245acc
    lha     r5, 0x96(r30)
    addi    r4, sp, 0x298
    lwz     r0, R13Off_m0x5eac(r13)
    addi    r3, r30, 0x0
    addi    r5, r5, 0x2aaa
    clrlwi  r5, r5, 16
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r5, r5, r0
    lfs     f2, -0x10e4(r2)
    slwi    r5, r5, 2
    lfs     f0, 0x10(r30)
    lfsx    f1, r6, r5
    addi    r5, sp, 0x2a0
    lwz     r7, R13Off_m0x5ea4(r13)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x294(sp)
    lha     r8, 0x96(r30)
    lfs     f0, 0x18(r30)
    addi    r8, r8, 0x2aaa
    clrlwi  r8, r8, 16
    sraw    r8, r8, r0
    slwi    r8, r8, 2
    lfsx    f1, r7, r8
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x29c(sp)
    lha     r8, 0x96(r30)
    lfs     f0, 0x10(r30)
    addis   r8, r8, 0x1
    addi    r8, r8, -0x8000
    clrlwi  r8, r8, 16
    sraw    r8, r8, r0
    slwi    r8, r8, 2
    lfsx    f1, r6, r8
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x288(sp)
    lha     r8, 0x96(r30)
    lfs     f0, 0x18(r30)
    addis   r8, r8, 0x1
    addi    r8, r8, -0x8000
    clrlwi  r8, r8, 16
    sraw    r8, r8, r0
    slwi    r8, r8, 2
    lfsx    f1, r7, r8
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x290(sp)
    lha     r8, 0x96(r30)
    lfs     f0, 0x10(r30)
    addis   r8, r8, 0x1
    addi    r8, r8, -0x2aab
    clrlwi  r8, r8, 16
    sraw    r8, r8, r0
    slwi    r8, r8, 2
    lfsx    f1, r6, r8
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x27c(sp)
    lha     r6, 0x96(r30)
    lfs     f0, 0x18(r30)
    addis   r6, r6, 0x1
    addi    r6, r6, -0x2aab
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f1, r7, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x284(sp)
    lfs     f2, -0x10e0(r2)
    lfs     f0, 0x14(r30)
    lfs     f1, 0x294(sp)
    fadds   f2, f2, f0
    lfs     f3, 0x29c(sp)
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f2, -0x10e0(r2)
    addi    r4, sp, 0x28c
    lfs     f0, 0x14(r30)
    mr      r3, r30
    lfs     f1, 0x288(sp)
    fadds   f2, f2, f0
    lfs     f3, 0x290(sp)
    addi    r5, sp, 0x2a0
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f2, -0x10e0(r2)
    addi    r4, sp, 0x280
    lfs     f0, 0x14(r30)
    mr      r3, r30
    lfs     f1, 0x27c(sp)
    fadds   f2, f2, f0
    lfs     f3, 0x284(sp)
    addi    r5, sp, 0x2a0
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f1, 0x298(sp)
    lfs     f2, 0x14(r30)
    lfs     f0, -0x10dc(r2)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802458c8
    stfs    f2, 0x298(sp)
branch_0x802458c8:
    lfs     f1, 0x28c(sp)
    lfs     f2, 0x14(r30)
    lfs     f0, -0x10dc(r2)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802458e4
    stfs    f2, 0x28c(sp)
branch_0x802458e4:
    lfs     f1, 0x280(sp)
    lfs     f2, 0x14(r30)
    lfs     f0, -0x10dc(r2)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80245900
    stfs    f2, 0x280(sp)
branch_0x80245900:
    lfs     f0, 0x298(sp)
    addi    r3, sp, 0x238
    lfs     f7, 0x28c(sp)
    lfs     f8, 0x280(sp)
    fadds   f1, f0, f7
    lfs     f3, -0x10d8(r2)
    lfs     f9, 0x288(sp)
    fsubs   f6, f7, f0
    lfs     f0, 0x294(sp)
    fadds   f4, f8, f1
    lfs     f1, 0x27c(sp)
    lfs     f10, 0x290(sp)
    fsubs   f5, f9, f0
    lfs     f2, 0x29c(sp)
    fdivs   f29, f4, f3
    lfs     f0, 0x284(sp)
    lhz     r4, 0x96(r30)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r5, R13Off_m0x5ea8(r13)
    fsubs   f7, f8, f7
    sraw    r0, r4, r0
    fsubs   f8, f0, f10
    slwi    r0, r0, 2
    lwz     r4, R13Off_m0x5ea4(r13)
    fsubs   f3, f10, f2
    lfsx    f31, r5, r0
    fsubs   f4, f1, f9
    lfsx    f30, r4, r0
    fmuls   f1, f8, f6
    fmuls   f2, f4, f3
    fmuls   f0, f7, f5
    fmsubs  f1, f7, f3, f1
    fmsubs  f2, f8, f5, f2
    fmsubs  f3, f4, f6, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80245fc0
    addi    r3, sp, 0x238
    lfs     f1, -0x111c(r2)
    mr      r4, r3
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lfs     f1, 0x23c(sp)
    addi    r3, sp, 0x264
    lfs     f0, 0x298(sp)
    mr      r4, r3
    lfs     f2, 0x238(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x294(sp)
    lfs     f4, 0x240(sp)
    lfs     f3, 0x29c(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x244(sp)
    lfs     f0, 0x238(sp)
    fneg    f0, f0
    stfs    f0, 0x258(sp)
    lfs     f0, 0x23c(sp)
    fneg    f0, f0
    stfs    f0, 0x25c(sp)
    lfs     f0, 0x240(sp)
    fneg    f0, f0
    stfs    f0, 0x260(sp)
    lfs     f4, 0x260(sp)
    lfs     f3, -0x1118(r2)
    lfs     f6, 0x258(sp)
    lfs     f5, 0x25c(sp)
    fmuls   f2, f4, f3
    fmuls   f1, f6, f30
    fmuls   f0, f5, f31
    fmsubs  f2, f5, f30, f2
    fmsubs  f1, f4, f31, f1
    fmsubs  f0, f6, f3, f0
    stfs    f2, 0x264(sp)
    stfs    f1, 0x268(sp)
    stfs    f0, 0x26c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f5, 0x268(sp)
    addi    r3, sp, 0x258
    lfs     f4, 0x258(sp)
    mr      r4, r3
    lfs     f2, 0x260(sp)
    lfs     f7, 0x264(sp)
    fmuls   f0, f5, f4
    lfs     f6, 0x25c(sp)
    lfs     f3, 0x26c(sp)
    fmuls   f1, f7, f2
    fmsubs  f28, f7, f6, f0
    fmuls   f0, f3, f6
    fmsubs  f31, f3, f4, f1
    fmsubs  f30, f5, f2, f0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x264(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x258(sp)
    stfs    f0, 0x4(r31)
    stfs    f30, 0x8(r31)
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x268(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x25c(sp)
    stfs    f0, 0x14(r31)
    stfs    f31, 0x18(r31)
    lfs     f0, 0x14(r30)
    fcmpo   cr0, f29, f0
    bge-    branch_0x80245aa4
    b       branch_0x80245aa8

branch_0x80245aa4:
    fmr     f0, f29
branch_0x80245aa8:
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x26c(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0x260(sp)
    stfs    f0, 0x24(r31)
    stfs    f28, 0x28(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    b       branch_0x80245b18

branch_0x80245acc:
    lfs     f0, -0x111c(r2)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x218
    stfs    f0, 0x218(sp)
    stfs    f0, 0x21c(sp)
    stfs    f0, 0x220(sp)
    lha     r0, 0x94(r30)
    sth     r0, 0x224(sp)
    lha     r0, 0x9a(r30)
    sth     r0, 0x226(sp)
    lha     r0, 0x98(r30)
    sth     r0, 0x228(sp)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x22c(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x230(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x234(sp)
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
branch_0x80245b18:
    lwz     r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80245b2c
    li      r0, 0x1
    b       branch_0x80245b30

branch_0x80245b2c:
    li      r0, 0x0
branch_0x80245b30:
    clrlwi. r0, r0, 24
    beq-    branch_0x80245e48
    lwz     r3, 0xe0(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80245b68
    cmplwi  r3, 0x101
    beq-    branch_0x80245b68
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80245b68
    cmplwi  r3, 0x4104
    bne-    branch_0x80245b70
branch_0x80245b68:
    li      r0, 0x1
    b       branch_0x80245b74

branch_0x80245b70:
    li      r0, 0x0
branch_0x80245b74:
    clrlwi. r0, r0, 24
    beq-    branch_0x80245ca4
    lha     r4, 0x9c(r30)
    lis     r0, 0x4330
    lha     r3, 0x96(r30)
    lha     r5, 0x1750(r30)
    subf    r3, r4, r3
    lfd     f2, -0x10f0(r2)
    extsh   r3, r3
    lfs     f4, 0xb0(r30)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x1728(r30)
    stw     r3, 0x2bc(sp)
    mr      r3, r5
    fmuls   f3, f4, f0
    lfs     f0, 0x1714(r30)
    stw     r0, 0x2b8(sp)
    lha     r6, 0x173c(r30)
    lfd     f1, 0x2b8(sp)
    fctiwz  f3, f3
    fsubs   f1, f1, f2
    stfd    f3, 0x2a8(sp)
    fmuls   f1, f1, f4
    lwz     r0, 0x2ac(sp)
    stfd    f3, 0x2c0(sp)
    fmuls   f0, f1, f0
    extsh   r0, r0
    cmpw    r0, r5
    lwz     r4, 0x2c4(sp)
    fctiwz  f0, f0
    stfd    f0, 0x2b0(sp)
    lwz     r5, 0x2b4(sp)
    ble-    branch_0x80245bfc
    mr      r4, r3
branch_0x80245bfc:
    extsh   r0, r3
    neg     r0, r0
    extsh   r3, r4
    extsh   r0, r0
    cmpw    r3, r0
    bge-    branch_0x80245c18
    mr      r4, r0
branch_0x80245c18:
    extsh   r0, r5
    cmpw    r0, r6
    ble-    branch_0x80245c28
    mr      r5, r6
branch_0x80245c28:
    neg     r0, r6
    extsh   r3, r5
    extsh   r0, r0
    cmpw    r3, r0
    bge-    branch_0x80245c40
    mr      r5, r0
branch_0x80245c40:
    extsh   r0, r4
    lfd     f1, -0x10f0(r2)
    xoris   r0, r0, 0x8000
    lfs     f4, 0x418(r30)
    stw     r0, 0x2ac(sp)
    lis     r3, 0x4330
    extsh   r0, r5
    lfs     f2, 0x1764(r30)
    stw     r3, 0x2a8(sp)
    xoris   r0, r0, 0x8000
    lfd     f0, 0x2a8(sp)
    stw     r0, 0x2b4(sp)
    fsubs   f0, f0, f1
    stw     r3, 0x2b0(sp)
    fsubs   f3, f0, f4
    lfd     f0, 0x2b0(sp)
    fsubs   f1, f0, f1
    fmadds  f0, f3, f2, f4
    stfs    f0, 0x418(r30)
    lfs     f2, 0x414(r30)
    lfs     f0, 0x1764(r30)
    fsubs   f1, f1, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x414(r30)
    b       branch_0x80245dc8

branch_0x80245ca4:
    lha     r4, 0x9c(r30)
    lis     r0, 0x4330
    lha     r3, 0x96(r30)
    lha     r5, 0x1924(r30)
    subf    r3, r4, r3
    lfd     f2, -0x10f0(r2)
    extsh   r3, r3
    lfs     f4, 0xb0(r30)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x18fc(r30)
    stw     r3, 0x2b4(sp)
    mr      r3, r5
    fmuls   f3, f4, f0
    lfs     f0, 0x18e8(r30)
    stw     r0, 0x2b0(sp)
    lha     r6, 0x1910(r30)
    lfd     f1, 0x2b0(sp)
    fctiwz  f3, f3
    fsubs   f1, f1, f2
    stfd    f3, 0x2c0(sp)
    fmuls   f1, f1, f4
    lwz     r0, 0x2c4(sp)
    stfd    f3, 0x2a8(sp)
    fmuls   f0, f1, f0
    extsh   r0, r0
    cmpw    r0, r5
    lwz     r4, 0x2ac(sp)
    fctiwz  f0, f0
    stfd    f0, 0x2b8(sp)
    lwz     r5, 0x2bc(sp)
    ble-    branch_0x80245d24
    mr      r4, r3
branch_0x80245d24:
    extsh   r0, r3
    neg     r0, r0
    extsh   r3, r4
    extsh   r0, r0
    cmpw    r3, r0
    bge-    branch_0x80245d40
    mr      r4, r0
branch_0x80245d40:
    extsh   r0, r5
    cmpw    r0, r6
    ble-    branch_0x80245d50
    mr      r5, r6
branch_0x80245d50:
    neg     r0, r6
    extsh   r3, r5
    extsh   r0, r0
    cmpw    r3, r0
    bge-    branch_0x80245d68
    mr      r5, r0
branch_0x80245d68:
    extsh   r0, r4
    lfd     f1, -0x10f0(r2)
    xoris   r0, r0, 0x8000
    lfs     f4, 0x418(r30)
    stw     r0, 0x2ac(sp)
    lis     r3, 0x4330
    extsh   r0, r5
    lfs     f2, 0x1938(r30)
    stw     r3, 0x2a8(sp)
    xoris   r0, r0, 0x8000
    lfd     f0, 0x2a8(sp)
    stw     r0, 0x2b4(sp)
    fsubs   f0, f0, f1
    stw     r3, 0x2b0(sp)
    fsubs   f3, f0, f4
    lfd     f0, 0x2b0(sp)
    fsubs   f1, f0, f1
    fmadds  f0, f3, f2, f4
    stfs    f0, 0x418(r30)
    lfs     f2, 0x414(r30)
    lfs     f0, 0x1938(r30)
    fsubs   f1, f1, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x414(r30)
branch_0x80245dc8:
    lfs     f1, 0x414(r30)
    lis     r4, 0x4330
    lfs     f0, 0x418(r30)
    addi    r3, sp, 0x1e8
    fctiwz  f1, f1
    fctiwz  f0, f0
    lfd     f3, -0x10f0(r2)
    lfs     f4, -0x10e8(r2)
    stfd    f1, 0x2a8(sp)
    lfs     f2, -0x1118(r2)
    stfd    f0, 0x2b8(sp)
    lwz     r5, 0x2ac(sp)
    lwz     r0, 0x2bc(sp)
    extsh   r5, r5
    extsh   r0, r0
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r5, 0x2b4(sp)
    stw     r0, 0x2c4(sp)
    stw     r4, 0x2b0(sp)
    stw     r4, 0x2c0(sp)
    lfd     f1, 0x2b0(sp)
    lfd     f0, 0x2c0(sp)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0x1e8
    bl      PSMTXConcat
branch_0x80245e48:
    addi    r3, r30, 0x318
    bl      PSMTXIdentity
    lfs     f5, 0x368(r30)
    lfs     f0, -0x1118(r2)
    fcmpo   cr0, f5, f0
    ble-    branch_0x80245e68
    li      r0, 0x1
    b       branch_0x80245e6c

branch_0x80245e68:
    li      r0, 0x0
branch_0x80245e6c:
    cmpwi   r0, 0x0
    beq-    branch_0x80245eb4
    lha     r4, 0x2428(r30)
    lis     r0, 0x4330
    lfs     f1, -0x1118(r2)
    addi    r3, r30, 0x318
    xoris   r4, r4, 0x8000
    stw     r4, 0x2ac(sp)
    fmr     f3, f1
    lfd     f4, -0x10f0(r2)
    stw     r0, 0x2a8(sp)
    lfs     f0, 0x2450(r30)
    lfd     f2, 0x2a8(sp)
    fsubs   f2, f2, f4
    fdivs   f2, f5, f2
    fneg    f2, f2
    fmuls   f2, f2, f0
    bl      PSMTXTrans
branch_0x80245eb4:
    lfs     f2, 0x378(r30)
    lfs     f0, -0x1118(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80245ecc
    li      r0, 0x1
    b       branch_0x80245ed0

branch_0x80245ecc:
    li      r0, 0x0
branch_0x80245ed0:
    cmpwi   r0, 0x0
    beq-    branch_0x80245ee8
    lfs     f1, -0x1118(r2)
    addi    r3, r30, 0x318
    fmr     f3, f1
    bl      PSMTXTrans
branch_0x80245ee8:
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xff7f
    cmplwi  r0, 0x446
    bne-    branch_0x80245f88
    lfs     f1, -0x10e0(r2)
    addi    r4, sp, 0x1e0
    lfs     f0, 0x14(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r30)
    lfs     f3, 0x18(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x1e0(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80245f48
    cmplwi  r3, 0x101
    beq-    branch_0x80245f48
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80245f48
    cmplwi  r3, 0x4104
    bne-    branch_0x80245f50
branch_0x80245f48:
    li      r0, 0x1
    b       branch_0x80245f54

branch_0x80245f50:
    li      r0, 0x0
branch_0x80245f54:
    clrlwi. r0, r0, 24
    beq-    branch_0x80245f88
    lwz     r3, R13Off_m0x626c(r13)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    bl      getHeight__11TMapObjWaveCFfff
    fmr     f0, f1
    lfs     f1, -0x1118(r2)
    addi    r3, r30, 0x318
    fmr     f3, f1
    fmr     f2, f0
    bl      PSMTXTrans
branch_0x80245f88:
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, r30, 0x318
    bl      PSMTXConcat
branch_0x80245f98:
    lwz     r0, 0x2f4(sp)
    lfd     f31, 0x2e8(sp)
    lfd     f30, 0x2e0(sp)
    mtlr    r0
    lfd     f29, 0x2d8(sp)
    lfd     f28, 0x2d0(sp)
    lwz     r31, 0x2cc(sp)
    lwz     r30, 0x2c8(sp)
    addi    sp, sp, 0x2f0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80245fc0
set_f___Q29JGeometry8TVec3_f_Ffff_80245fc0: # 0x80245fc0
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl considerWaist__6TMarioFv
considerWaist__6TMarioFv: # 0x80245fd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    mr      r30, r3
    stw     r29, 0x9c(sp)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80246000
    li      r0, 0x1
    b       branch_0x80246004

branch_0x80246000:
    li      r0, 0x0
branch_0x80246004:
    clrlwi. r0, r0, 24
    beq-    branch_0x802460a8
    lwz     r3, 0xe0(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8024603c
    cmplwi  r3, 0x101
    beq-    branch_0x8024603c
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8024603c
    cmplwi  r3, 0x4104
    bne-    branch_0x80246044
branch_0x8024603c:
    li      r0, 0x1
    b       branch_0x80246048

branch_0x80246044:
    li      r0, 0x0
branch_0x80246048:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024607c
    lha     r3, 0x1700(r30)
    lis     r0, 0x4330
    lfd     f1, -0x10f0(r2)
    xoris   r3, r3, 0x8000
    lfs     f3, 0x16d8(r30)
    stw     r3, 0x94(sp)
    lfs     f2, 0x1778(r30)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f1, f0, f1
    b       branch_0x8024615c

branch_0x8024607c:
    lha     r3, 0x18d4(r30)
    lis     r0, 0x4330
    lfd     f1, -0x10f0(r2)
    xoris   r3, r3, 0x8000
    lfs     f3, 0x18ac(r30)
    stw     r3, 0x94(sp)
    lfs     f2, 0x194c(r30)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f1, f0, f1
    b       branch_0x8024615c

branch_0x802460a8:
    lwz     r0, 0x118(r30)
    li      r31, 0x0
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802460c0
    li      r0, 0x1
    b       branch_0x802460c4

branch_0x802460c0:
    mr      r0, r31
branch_0x802460c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802460e0
    mr      r3, r30
    bl      isUpperPumpingStyle__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802460e0
    li      r31, 0x1
branch_0x802460e0:
    clrlwi. r0, r31, 24
    bne-    branch_0x80246108
    lwz     r0, 0x6c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802460fc
    li      r0, 0x1
    b       branch_0x80246100

branch_0x802460fc:
    li      r0, 0x0
branch_0x80246100:
    clrlwi. r0, r0, 24
    beq-    branch_0x80246134
branch_0x80246108:
    lha     r3, 0xa88(r30)
    lis     r0, 0x4330
    lfd     f1, -0x10f0(r2)
    xoris   r3, r3, 0x8000
    lfs     f3, 0xa60(r30)
    stw     r3, 0x94(sp)
    lfs     f2, 0xa9c(r30)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f1, f0, f1
    b       branch_0x8024615c

branch_0x80246134:
    lha     r3, 0xa08(r30)
    lis     r0, 0x4330
    lfd     f1, -0x10f0(r2)
    xoris   r3, r3, 0x8000
    lfs     f3, 0x9e0(r30)
    stw     r3, 0x94(sp)
    lfs     f2, 0xa1c(r30)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f1, f0, f1
branch_0x8024615c:
    lfs     f0, 0xb0(r30)
    fmuls   f0, f3, f0
    fcmpo   cr0, f0, f1
    fmr     f3, f0
    ble-    branch_0x80246174
    fmr     f3, f1
branch_0x80246174:
    fneg    f0, f1
    fcmpo   cr0, f3, f0
    bge-    branch_0x80246184
    fmr     f3, f0
branch_0x80246184:
    lfs     f1, 0x3dc(r30)
    fsubs   f0, f3, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x3dc(r30)
    lwz     r0, 0x7c(r30)
    lha     r4, 0x9c(r30)
    lha     r3, 0x96(r30)
    rlwinm. r0, r0, 0, 15, 15
    subf    r31, r4, r3
    beq-    branch_0x802461b4
    li      r0, 0x1
    b       branch_0x802461b8

branch_0x802461b4:
    li      r0, 0x0
branch_0x802461b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024625c
    lwz     r3, 0xe0(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x802461f0
    cmplwi  r3, 0x101
    beq-    branch_0x802461f0
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x802461f0
    cmplwi  r3, 0x4104
    bne-    branch_0x802461f8
branch_0x802461f0:
    li      r0, 0x1
    b       branch_0x802461fc

branch_0x802461f8:
    li      r0, 0x0
branch_0x802461fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80246230
    lha     r3, 0x16ec(r30)
    lis     r0, 0x4330
    lfd     f1, -0x10f0(r2)
    xoris   r3, r3, 0x8000
    lfs     f4, 0x16c4(r30)
    stw     r3, 0x94(sp)
    lfs     f3, 0x1778(r30)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f5, f0, f1
    b       branch_0x802462f0

branch_0x80246230:
    lha     r3, 0x18c0(r30)
    lis     r0, 0x4330
    lfd     f1, -0x10f0(r2)
    xoris   r3, r3, 0x8000
    lfs     f4, 0x1898(r30)
    stw     r3, 0x94(sp)
    lfs     f3, 0x194c(r30)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f5, f0, f1
    b       branch_0x802462f0

branch_0x8024625c:
    lwz     r0, 0x118(r30)
    li      r29, 0x0
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80246274
    li      r0, 0x1
    b       branch_0x80246278

branch_0x80246274:
    mr      r0, r29
branch_0x80246278:
    clrlwi. r0, r0, 24
    beq-    branch_0x80246294
    mr      r3, r30
    bl      isUpperPumpingStyle__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80246294
    li      r29, 0x1
branch_0x80246294:
    clrlwi. r0, r29, 24
    beq-    branch_0x802462c8
    lha     r3, 0xa74(r30)
    lis     r0, 0x4330
    lfd     f1, -0x10f0(r2)
    xoris   r3, r3, 0x8000
    lfs     f4, 0xa4c(r30)
    stw     r3, 0x94(sp)
    lfs     f3, 0xa9c(r30)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f5, f0, f1
    b       branch_0x802462f0

branch_0x802462c8:
    lha     r3, 0x9f4(r30)
    lis     r0, 0x4330
    lfd     f1, -0x10f0(r2)
    xoris   r3, r3, 0x8000
    lfs     f4, 0x9cc(r30)
    stw     r3, 0x94(sp)
    lfs     f3, 0xa1c(r30)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f5, f0, f1
branch_0x802462f0:
    extsh   r0, r31
    lfd     f2, -0x10f0(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, 0xb0(r30)
    stw     r0, 0x94(sp)
    lis     r0, 0x4330
    stw     r0, 0x90(sp)
    lfd     f1, 0x90(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fmuls   f0, f4, f0
    fcmpo   cr0, f0, f5
    fmr     f2, f0
    ble-    branch_0x8024632c
    fmr     f2, f5
branch_0x8024632c:
    fneg    f0, f5
    fcmpo   cr0, f2, f0
    bge-    branch_0x8024633c
    fmr     f2, f0
branch_0x8024633c:
    lfs     f1, 0x3d8(r30)
    fsubs   f0, f2, f1
    fmadds  f0, f3, f0, f1
    stfs    f0, 0x3d8(r30)
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl isUpperPumpingStyle__6TMarioCFv
isUpperPumpingStyle__6TMarioCFv: # 0x80246368
    lwz     r0, 0x380(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8024637c
    cmplwi  r0, 0x1
    bne-    branch_0x80246384
branch_0x8024637c:
    li      r3, 0x1
    blr

branch_0x80246384:
    li      r3, 0x0
    blr


.globl finalDrawInitialize__6TMarioFv
finalDrawInitialize__6TMarioFv: # 0x8024638c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    bl      changeHand__6TMarioFi
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x8(r3)
    bl      SMS_MakeDLAndLock__FP8J3DModel
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x80246400

branch_0x802463c4:
    lhz     r0, 0x3d4(r31)
    cmpw    r6, r0
    beq-    branch_0x802463dc
    lhz     r0, 0x3d6(r31)
    cmpw    r6, r0
    bne-    branch_0x802463f8
branch_0x802463dc:
    lwz     r5, 0x3a8(r31)
    addi    r4, r3, 0x10
    lwz     r5, 0x8(r5)
    lwz     r5, 0x80(r5)
    lwzx    r0, r5, r4
    clrrwi  r0, r0, 1
    stwx    r0, r5, r4
branch_0x802463f8:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x48
branch_0x80246400:
    lwz     r4, 0x3ac(r31)
    lhz     r0, 0x24(r4)
    cmpw    r6, r0
    blt+    branch_0x802463c4
    li      r30, 0x0
    b       branch_0x80246434

branch_0x80246418:
    lwz     r3, 0x3a8(r31)
    clrlwi  r4, r30, 16
    li      r5, 0x0
    lwz     r3, 0x8(r3)
    li      r6, 0x0
    bl      SMS_InitPacket_OneTevKColorAndFog__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    addi    r30, r30, 0x1
branch_0x80246434:
    lwz     r3, 0x3ac(r31)
    lhz     r0, 0x24(r3)
    cmpw    r30, r0
    blt+    branch_0x80246418
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl initMirrorModel__6TMarioFv
initMirrorModel__6TMarioFv: # 0x8024645c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r24, 0x20(sp)
    mr      r31, r3
    lbz     r0, 0x388(r3)
    lis     r3, unk_8039dfb0@ha
    addi    r28, r3, unk_8039dfb0@l
    cmplwi  r0, 0x0
    bne-    branch_0x80246564
    lwz     r3, 0x3e0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80246494
    bl      createMirrorCap__9TMarioCapFv
branch_0x80246494:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802464b0
    addi    r3, r25, 0x0
    addi    r4, r28, 0xa50
    bl      __ct__12TMirrorActorFPCc
branch_0x802464b0:
    lwz     r4, 0x3a8(r31)
    mr      r3, r25
    li      r5, 0x4
    lwz     r4, 0x8(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
    li      r26, 0x0
    li      r30, 0x0
branch_0x802464cc:
    add     r27, r31, r30
    li      r25, 0x0
    li      r29, 0x0
branch_0x802464d8:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x802464f4
    addi    r3, r24, 0x0
    addi    r4, r28, 0xa5c
    bl      __ct__12TMirrorActorFPCc
branch_0x802464f4:
    addi    r0, r29, 0x3b0
    lwzx    r4, r27, r0
    addi    r3, r24, 0x0
    li      r5, 0x4
    bl      init__12TMirrorActorFP8J3DModelUs
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x802464d8
    addi    r26, r26, 0x1
    cmpwi   r26, 0x2
    addi    r30, r30, 0x8
    blt+    branch_0x802464cc
    lwz     r0, 0x3f8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80246564
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80246550
    addi    r3, r24, 0x0
    addi    r4, r28, 0xa6c
    bl      __ct__12TMirrorActorFPCc
branch_0x80246550:
    lwz     r4, 0x3f8(r31)
    mr      r3, r24
    li      r5, 0x2
    lwz     r4, 0x4(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
branch_0x80246564:
    lmw     r24, 0x20(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl initModel__6TMarioFv
initModel__6TMarioFv: # 0x80246578
    mflr    r0
    lis     r4, unk_8039dfb0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x5c0(sp)
    stmw    r19, 0x58c(sp)
    addi    r31, r3, 0x0
    addi    r30, r4, unk_8039dfb0@l
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x802465b0
    addi    r3, r19, 0x0
    li      r4, 0x20
    bl      __ct__13J3DDrawBufferFUl
branch_0x802465b0:
    stw     r19, 0x394(r31)
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x802465d0
    addi    r3, r19, 0x0
    li      r4, 0x20
    bl      __ct__13J3DDrawBufferFUl
branch_0x802465d0:
    stw     r19, 0x398(r31)
    li      r0, 0x0
    addi    r3, r30, 0xa7c
    stw     r0, 0x39c(r31)
    stw     r0, 0x3a0(r31)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1010
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x3ac(r31)
    addi    r4, r2, R2Off_m0x10d4
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c4(r31)
    addi    r4, r30, 0xa94
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c6(r31)
    addi    r4, r30, 0xaa0
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c5(r31)
    addi    r4, r30, 0xaac
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c7(r31)
    addi    r4, r30, 0xab8
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c8(r31)
    addi    r4, r30, 0xac4
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3c9(r31)
    addi    r4, r30, 0xad0
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3ca(r31)
    addi    r4, r30, 0xadc
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3cb(r31)
    addi    r4, r30, 0xae8
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3cc(r31)
    addi    r4, r30, 0xaf4
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3cd(r31)
    addi    r4, r30, 0xb00
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3ce(r31)
    addi    r4, r30, 0xb0c
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3cf(r31)
    addi    r4, r2, R2Off_m0x10cc
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    stb     r3, 0x3d0(r31)
    addi    r3, r30, 0x6f0
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x470(r31)
    lwz     r5, 0x470(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8024671c
    lwz     r3, 0x3ac(r31)
    addi    r4, r30, 0x714
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x8024671c:
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x80246740
    lwz     r4, 0x3ac(r31)
    addi    r3, r21, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80246740:
    addi    r3, r30, 0xb18
    lis     r4, 0x1010
    bl      SMS_CreatePartsModel__FPcUl
    stw     r3, 0x3b0(r31)
    addi    r3, r30, 0xb30
    lis     r4, 0x1010
    bl      SMS_CreatePartsModel__FPcUl
    stw     r3, 0x3b4(r31)
    addi    r3, r30, 0xb48
    lis     r4, 0x1010
    bl      SMS_CreatePartsModel__FPcUl
    stw     r3, 0x3b8(r31)
    addi    r3, r30, 0xb60
    lis     r4, 0x1010
    bl      SMS_CreatePartsModel__FPcUl
    stw     r3, 0x3bc(r31)
    addi    r3, r30, 0xb78
    lis     r4, 0x1010
    bl      SMS_CreatePartsModel__FPcUl
    stw     r3, 0x3c0(r31)
    li      r4, 0x20
    lwz     r5, 0x3ac(r31)
    lwz     r3, 0x3b0(r31)
    lwz     r5, 0xac(r5)
    lwz     r7, 0x4(r3)
    lwz     r6, 0x4(r5)
    lwz     r8, 0xac(r7)
    lwz     r3, 0x0(r6)
    lwz     r5, 0x4(r8)
    lwz     r0, 0x4(r6)
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
    lwz     r3, 0x4(r8)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r8)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r7)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    lwz     r5, 0x3ac(r31)
    li      r4, 0x20
    lwz     r3, 0x3b4(r31)
    lwz     r5, 0xac(r5)
    lwz     r7, 0x4(r3)
    lwz     r6, 0x4(r5)
    lwz     r8, 0xac(r7)
    lwz     r3, 0x0(r6)
    lwz     r5, 0x4(r8)
    lwz     r0, 0x4(r6)
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
    lwz     r3, 0x4(r8)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r8)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r7)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    lwz     r5, 0x3ac(r31)
    li      r4, 0x20
    lwz     r3, 0x3b8(r31)
    lwz     r5, 0xac(r5)
    lwz     r7, 0x4(r3)
    lwz     r6, 0x4(r5)
    lwz     r8, 0xac(r7)
    lwz     r3, 0x0(r6)
    lwz     r5, 0x4(r8)
    lwz     r0, 0x4(r6)
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
    lwz     r3, 0x4(r8)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r8)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r7)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    lwz     r5, 0x3ac(r31)
    li      r4, 0x20
    lwz     r3, 0x3bc(r31)
    lwz     r5, 0xac(r5)
    lwz     r7, 0x4(r3)
    lwz     r6, 0x4(r5)
    lwz     r8, 0xac(r7)
    lwz     r3, 0x0(r6)
    lwz     r5, 0x4(r8)
    lwz     r0, 0x4(r6)
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
    lwz     r3, 0x4(r8)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r8)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r7)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    lwz     r5, 0x3ac(r31)
    li      r4, 0x20
    lwz     r3, 0x3c0(r31)
    lwz     r5, 0xac(r5)
    lwz     r7, 0x4(r3)
    lwz     r6, 0x4(r5)
    lwz     r8, 0xac(r7)
    lwz     r3, 0x0(r6)
    lwz     r5, 0x4(r8)
    lwz     r0, 0x4(r6)
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
    lwz     r3, 0x4(r8)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r8)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r7)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x10(r3)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
    lwz     r0, 0x470(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80246ae4
    li      r23, 0x0
    li      r20, 0x0
branch_0x80246aa0:
    add     r19, r31, r20
    li      r24, 0x0
    li      r22, 0x0
branch_0x80246aac:
    addi    r0, r22, 0x3b0
    lwz     r5, 0x470(r31)
    lwzx    r3, r19, r0
    addi    r4, r30, 0x714
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    addi    r24, r24, 0x1
    cmpwi   r24, 0x2
    addi    r22, r22, 0x4
    blt+    branch_0x80246aac
    addi    r23, r23, 0x1
    cmpwi   r23, 0x2
    addi    r20, r20, 0x8
    blt+    branch_0x80246aa0
branch_0x80246ae4:
    li      r3, 0x31c
    bl      __nwa__FUl
    addi    r22, r3, 0x0
    li      r3, 0x31c
    bl      __nwa__FUl
    lis     r4, marioAnimeFiles_803dbf88@ha
    stw     r3, 0x4e0(r31)
    addi    r25, r4, marioAnimeFiles_803dbf88@l
    li      r20, 0x0
    li      r23, 0x0
    li      r24, 0x0
branch_0x80246b10:
    add     r3, r25, r24
    crxor   6, 6, 6
    addi    r19, r3, 0x4
    lwz     r6, 0x4(r3)
    addi    r3, sp, 0x480
    addi    r5, r30, 0xb90
    li      r4, 0xff
    bl      snprintf
    add     r26, r22, r23
    addi    r3, sp, 0x480
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x80246b4c
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x0(r26)
branch_0x80246b4c:
    lwz     r6, 0x0(r19)
    addi    r3, sp, 0x480
    addi    r5, r30, 0xba8
    crxor   6, 6, 6
    li      r4, 0xff
    bl      snprintf
    lwz     r3, 0x4e0(r31)
    addic.  r0, sp, 0x480
    add     r26, r3, r23
    beq-    branch_0x80246b84
    addi    r3, sp, 0x480
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x0(r26)
    b       branch_0x80246b8c

branch_0x80246b84:
    li      r0, 0x0
    stw     r0, 0x0(r26)
branch_0x80246b8c:
    addi    r20, r20, 0x1
    cmpwi   r20, 0xc7
    addi    r23, r23, 0x4
    addi    r24, r24, 0x8
    blt+    branch_0x80246b10
    li      r3, 0x60
    bl      __nwa__FUl
    addi    r29, r3, 0x0
    li      r3, 0x60
    bl      __nwa__FUl
    lis     r6, marioAnimeTexPatternFilenames@ha
    lis     r5, __ct__11J3DTexNoAnmFv@h
    lis     r4, __dt__11J3DTexNoAnmFv@h
    addi    r28, r3, 0x0
    addi    r24, r6, marioAnimeTexPatternFilenames@l
    addi    r25, r5, __ct__11J3DTexNoAnmFv@l
    addi    r26, r4, __dt__11J3DTexNoAnmFv@l
    li      r23, 0x0
    li      r27, 0x0
branch_0x80246bd8:
    add     r3, r24, r27
    lwz     r20, 0x3ac(r31)
    lwz     r3, 0x0(r3)
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x80246bfc
    li      r0, 0x0
    stwx    r0, r29, r27
    b       branch_0x80246c14

branch_0x80246bfc:
    bl      load__20J3DAnmLoaderDataBaseFPCv
    add     r5, r29, r27
    stw     r3, 0x0(r5)
    mr      r4, r20
    lwz     r3, 0x0(r5)
    bl      searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
branch_0x80246c14:
    add     r20, r29, r27
    lwz     r3, 0x0(r20)
    lhz     r19, 0x1a(r3)
    mulli   r3, r19, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r7, r19, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    add     r6, r28, r27
    stw     r3, 0x0(r6)
    li      r7, 0x0
    li      r3, 0x0
    b       branch_0x80246c78

branch_0x80246c54:
    lwz     r4, 0x0(r6)
    addi    r0, r3, 0x4
    sthx    r7, r4, r0
    addi    r0, r3, 0x8
    addi    r7, r7, 0x1
    lwz     r5, 0x0(r20)
    addi    r3, r3, 0xc
    lwz     r4, 0x0(r6)
    stwx    r5, r4, r0
branch_0x80246c78:
    lwz     r4, 0x0(r20)
    lhz     r0, 0x1a(r4)
    cmpw    r7, r0
    blt+    branch_0x80246c54
    addi    r23, r23, 0x1
    cmpwi   r23, 0x18
    addi    r27, r27, 0x4
    blt+    branch_0x80246bd8
    li      r3, 0xe0
    bl      __nwa__FUl
    lis     r4, __ct__24M3UMtxCalcSIAnmBlendQuatFv@h
    lis     r5, __dt__24M3UMtxCalcSIAnmBlendQuatFv@h
    addi    r4, r4, __ct__24M3UMtxCalcSIAnmBlendQuatFv@l
    addi    r5, r5, __dt__24M3UMtxCalcSIAnmBlendQuatFv@l
    li      r6, 0x6c
    li      r7, 0x2
    bl      __construct_new_array
    lfs     f0, -0x1118(r2)
    mr      r20, r3
    stfs    f0, 0x50(r3)
    li      r3, 0x44
    bl      __nwa__FUl
    lis     r4, __ct__12J3DFrameCtrlFv@h
    lis     r5, __dt__12J3DFrameCtrlFv@ha
    addi    r4, r4, __ct__12J3DFrameCtrlFv@l
    addi    r5, r5, __dt__12J3DFrameCtrlFv@l
    li      r6, 0x14
    li      r7, 0x3
    bl      __construct_new_array
    addi    r23, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80246d2c
    lis     r3, __vvt__14M3UModelCommon@ha
    addi    r0, r3, __vvt__14M3UModelCommon@l
    stw     r0, 0x0(r24)
    li      r4, 0x0
    lis     r3, __vvt__19M3UModelCommonMario@ha
    stw     r4, 0x4(r24)
    addi    r0, r3, __vvt__19M3UModelCommonMario@l
    stw     r4, 0x8(r24)
    stw     r4, 0x10(r24)
    stw     r4, 0x14(r24)
    stw     r0, 0x0(r24)
branch_0x80246d2c:
    stw     r22, 0x4(r24)
    addi    r4, r30, 0xbc0
    stw     r20, 0x18(r24)
    stw     r29, 0x8(r24)
    stw     r28, 0xc(r24)
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x3ac(r31)
    clrlwi  r22, r3, 16
    addi    r4, r30, 0xbcc
    lwz     r3, 0xb4(r5)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x3ac(r31)
    clrlwi  r25, r3, 16
    slwi    r19, r22, 2
    lwz     r3, 0x28(r4)
    lwzx    r3, r3, r19
    bl      change__11J3DMaterialFv
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x80246d9c
    lis     r3, __vvt__14J3DMaterialAnm@h
    addi    r0, r3, __vvt__14J3DMaterialAnm@l
    stw     r0, 0x0(r26)
    mr      r3, r26
    bl      initialize__14J3DMaterialAnmFv
branch_0x80246d9c:
    lwz     r3, 0x3ac(r31)
    slwi    r20, r25, 2
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r19
    stw     r26, 0x38(r3)
    lwz     r3, 0x3ac(r31)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r20
    bl      change__11J3DMaterialFv
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x80246de4
    lis     r3, __vvt__14J3DMaterialAnm@h
    addi    r0, r3, __vvt__14J3DMaterialAnm@l
    stw     r0, 0x0(r19)
    mr      r3, r19
    bl      initialize__14J3DMaterialAnmFv
branch_0x80246de4:
    lwz     r4, 0x3ac(r31)
    li      r3, 0x80
    lwz     r4, 0x28(r4)
    lwzx    r4, r4, r20
    stw     r19, 0x38(r4)
    sth     r22, 0x3d4(r31)
    sth     r25, 0x3d6(r31)
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x80246e88
    lis     r3, __vvt__8M3UModel@ha
    addi    r0, r3, __vvt__8M3UModel@l
    stw     r0, 0x0(r20)
    addi    r19, r20, 0x28
    li      r6, 0x0
    stw     r6, 0x4(r20)
    lis     r4, __vvt__13M3UModelMario@ha
    lis     r3, __vvt__10J3DMtxCalc@ha
    stw     r6, 0x8(r20)
    addi    r5, r4, __vvt__13M3UModelMario@l
    addi    r22, r19, 0x50
    stw     r6, 0xc(r20)
    addi    r0, r3, __vvt__10J3DMtxCalc@l
    addi    r3, r19, 0x0
    sth     r6, 0x10(r20)
    li      r4, 0x0
    stw     r6, 0x14(r20)
    stw     r6, 0x1c(r20)
    stw     r5, 0x0(r20)
    stw     r22, 0x28(r20)
    stw     r0, 0x78(r20)
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, __vvt__19J3DMtxCalcSoftimage@h
    addi    r3, r3, __vvt__19J3DMtxCalcSoftimage@l
    stw     r3, 0x4c(r19)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r19)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r19)
    subf    r0, r3, r22
    stw     r0, 0x4(r3)
branch_0x80246e88:
    stw     r21, 0x8(r20)
    stw     r24, 0x4(r20)
    stw     r24, 0x20(r20)
    stw     r23, 0xc(r20)
    bl      SMSGetAnmFrameRate__Fv
    li      r3, 0x14
    stfs    f1, 0x34(r23)
    bl      __nwa__FUl
    lwz     r5, 0xa38(r30)
    li      r0, 0x2
    lwz     r4, 0xa3c(r30)
    stw     r5, 0x3b0(sp)
    stw     r4, 0x3b4(sp)
    lhz     r4, 0xa40(r30)
    sth     r4, 0x3b8(sp)
    lwz     r5, 0x3b0(sp)
    lwz     r4, 0x3b4(sp)
    stw     r5, 0x0(r3)
    stw     r4, 0x4(r3)
    lhz     r4, 0x3b8(sp)
    sth     r4, 0x8(r3)
    lwz     r5, 0xa44(r30)
    lwz     r4, 0xa48(r30)
    stw     r5, 0x3a4(sp)
    stw     r4, 0x3a8(sp)
    lhz     r4, 0xa4c(r30)
    sth     r4, 0x3ac(sp)
    lbz     r4, 0x3c5(r31)
    sth     r4, 0x3a4(sp)
    lwz     r5, 0x3a4(sp)
    lwz     r4, 0x3a8(sp)
    stw     r5, 0xa(r3)
    stw     r4, 0xe(r3)
    lhz     r4, 0x3ac(sp)
    sth     r4, 0x12(r3)
    sth     r0, 0x10(r20)
    stw     r3, 0x24(r20)
    li      r3, 0x2
    bl      __nw__FUl
    lhz     r0, -0x1134(r2)
    li      r4, 0x0
    li      r5, 0x0
    sth     r0, 0x3a0(sp)
    li      r6, 0x3e
    lhz     r0, 0x3a0(sp)
    sth     r0, 0x0(r3)
    stw     r3, 0x1c(r20)
    mr      r3, r20
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    addi    r3, r20, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x41
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    lfs     f0, -0x1118(r2)
    mr      r3, r31
    lwz     r5, 0xc(r20)
    li      r4, 0xc3
    stfs    f0, 0x20(r5)
    lwz     r5, 0x18(r24)
    stfs    f0, 0xbc(r5)
    stw     r20, 0x3a8(r31)
    lfs     f1, -0x111c(r2)
    bl      setAnimation__6TMarioFif
    lfs     f1, -0x111c(r2)
    addi    r3, sp, 0x420
    addi    r4, sp, 0x440
    stfs    f1, 0x420(sp)
    fmr     f0, f1
    stfs    f1, 0x424(sp)
    stfs    f0, 0x428(sp)
    lha     r0, 0x94(r31)
    sth     r0, 0x42c(sp)
    lha     r0, 0x9a(r31)
    sth     r0, 0x42e(sp)
    lha     r0, 0x98(r31)
    sth     r0, 0x430(sp)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x434(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x438(sp)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x43c(sp)
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
    lwz     r4, 0x3a8(r31)
    addi    r3, sp, 0x440
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
    lwz     r4, 0x3b0(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8024712c
    lwz     r3, 0x3a8(r31)
    addi    r4, r4, 0x20
    lbz     r0, 0x3c9(r31)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r31)
    lbz     r0, 0x3ca(r31)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x3b4(r31)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r31)
    lbz     r0, 0x3c9(r31)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x3b8(r31)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r31)
    lbz     r0, 0x3ca(r31)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x3bc(r31)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3a8(r31)
    lbz     r0, 0x3c9(r31)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x3c0(r31)
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3b0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3b8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3bc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x3c0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8024712c:
    li      r0, 0x0
    stw     r0, 0x3f4(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3a
    bne-    branch_0x80247434
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80247158
    cmplwi  r0, 0x1
    bne-    branch_0x80247434
branch_0x80247158:
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x80247170
    mr      r3, r19
    bl      __ct__13MActorAnmDataFv
branch_0x80247170:
    addi    r3, r19, 0x0
    addi    r4, r30, 0xbd8
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8024719c
    addi    r3, r20, 0x0
    addi    r4, r19, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8024719c:
    stw     r20, 0x3f8(r31)
    addi    r3, r30, 0xbf0
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r19, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802471dc
    addi    r3, r19, 0x0
    lis     r4, 0x1004
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x802471dc:
    lwz     r3, 0x3f8(r31)
    addi    r4, r20, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802472ec
    li      r0, 0x0
    sth     r0, 0x412(r31)
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x8024721c
    mr      r3, r19
    bl      __ct__13MActorAnmDataFv
branch_0x8024721c:
    addi    r3, r19, 0x0
    addi    r4, r30, 0xc14
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x80247248
    addi    r3, r20, 0x0
    addi    r4, r19, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x80247248:
    stw     r20, 0x3fc(r31)
    addi    r3, r30, 0xc30
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r19, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x80247288
    addi    r3, r19, 0x0
    lis     r4, 0x1004
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80247288:
    lwz     r3, 0x3fc(r31)
    addi    r4, r20, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, 0x3fc(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x110c(r2)
    stfs    f0, 0xc(r3)
    addi    r3, sp, 0x3f0
    bl      PSMTXIdentity
    lwz     r4, 0x3fc(r31)
    addi    r3, sp, 0x3f0
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x3fc(r31)
    bl      calcAnm__6MActorFv
    lwz     r4, 0x3fc(r31)
    lwz     r3, 0x3f8(r31)
    lwz     r4, 0x4(r4)
    lwz     r5, 0x4(r3)
    lwz     r3, 0x58(r4)
    addi    r4, r5, 0x20
    bl      PSMTXCopy
branch_0x802472ec:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802473ec
    li      r0, 0x1
    sth     r0, 0x412(r31)
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x8024731c
    mr      r3, r19
    bl      __ct__13MActorAnmDataFv
branch_0x8024731c:
    addi    r3, r19, 0x0
    addi    r4, r30, 0xc5c
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x80247348
    addi    r3, r20, 0x0
    addi    r4, r19, 0x0
    bl      __ct__6MActorFP13MActorAnmData
branch_0x80247348:
    stw     r20, 0x400(r31)
    addi    r3, r30, 0xc78
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r19, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x80247388
    addi    r3, r19, 0x0
    lis     r4, 0x1004
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80247388:
    lwz     r3, 0x400(r31)
    addi    r4, r20, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, 0x400(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x110c(r2)
    stfs    f0, 0xc(r3)
    addi    r3, sp, 0x3c0
    bl      PSMTXIdentity
    lwz     r4, 0x400(r31)
    addi    r3, sp, 0x3c0
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x400(r31)
    bl      calcAnm__6MActorFv
    lwz     r4, 0x400(r31)
    lwz     r3, 0x3f8(r31)
    lwz     r4, 0x4(r4)
    lwz     r5, 0x4(r3)
    lwz     r3, 0x58(r4)
    addi    r4, r5, 0x20
    bl      PSMTXCopy
branch_0x802473ec:
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0x118(r31)
    lwz     r3, 0x3f8(r31)
    bl      calcAnm__6MActorFv
    lwz     r3, 0x3f8(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x60
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x18(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x410(r31)
    b       branch_0x80247444

branch_0x80247434:
    li      r0, 0x0
    stw     r0, 0x3f8(r31)
    stw     r0, 0x3fc(r31)
    stw     r0, 0x400(r31)
branch_0x80247444:
    li      r3, 0x14
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
    li      r0, 0x0
    stb     r0, 0x0(r3)
    addi    r5, r2, R2Off_m0x10c4
    stb     r0, 0x1(r3)
    stb     r0, 0x2(r3)
    lwz     r4, 0x420(r31)
    stw     r3, 0x4(r4)
    lwz     r4, 0x3a8(r31)
    lwz     r3, 0x420(r31)
    lwz     r4, 0x8(r4)
    bl      setup__15TMultiMtxEffectFP8J3DModelPCc
    li      r3, 0x40
    bl      __nw__FUl
    stw     r3, 0x53c(r31)
    lwz     r4, 0x3a8(r31)
    lwz     r3, 0x53c(r31)
    lwz     r4, 0x8(r4)
    bl      init__19TTrembleModelEffectFP8J3DModel
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x802474f0
    mr      r3, r19
    lwz     r4, 0x3ac(r31)
    bl      __ct__19SampleCtrlModelDataFP12J3DModelData
branch_0x802474f0:
    stw     r19, 0x3a4(r31)
    lmw     r19, 0x58c(sp)
    lwz     r0, 0x5c4(sp)
    addi    sp, sp, 0x5c0
    mtlr    r0
    blr


.globl loadAnmTexPattern__6TMarioFPP16J3DAnmTexPatternPcP12J3DModelData
loadAnmTexPattern__6TMarioFPP16J3DAnmTexPatternPcP12J3DModelData: # 0x80247508
    mflr    r0
    addi    r3, r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x80247540
    li      r0, 0x0
    stw     r0, 0x0(r30)
    b       branch_0x80247554

branch_0x80247540:
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x0(r30)
    mr      r4, r31
    lwz     r3, 0x0(r30)
    bl      searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
branch_0x80247554:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl loadBas__6TMarioFPPvPCc
loadBas__6TMarioFPPvPCc: # 0x8024756c
    mflr    r0
    cmplwi  r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    beq-    branch_0x80247598
    mr      r3, r5
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x0(r31)
    b       branch_0x802475a0

branch_0x80247598:
    li      r0, 0x0
    stw     r0, 0x0(r31)
branch_0x802475a0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setReverseAnimation__6TMarioFif
setReverseAnimation__6TMarioFif: # 0x802475b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f1
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lhz     r0, 0xfa(r3)
    cmpw    r4, r0
    beq-    branch_0x8024764c
    fmr     f1, f31
    mr      r3, r31
    bl      setAnimation__6TMarioFif
    lfs     f0, -0x10bc(r2)
    lis     r3, 0x4330
    lwz     r4, 0x3a8(r31)
    fmuls   f3, f0, f31
    lwz     r4, 0xc(r4)
    stfs    f3, 0xc(r4)
    lha     r0, 0x8(r4)
    lfd     f2, -0x10f0(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x10b8(r2)
    stw     r0, 0x54(sp)
    stw     r3, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f2
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r4)
    stfs    f3, 0x34(r4)
    lha     r0, 0x30(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x4c(sp)
    stw     r3, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f2
    fsubs   f0, f0, f1
    stfs    f0, 0x38(r4)
branch_0x8024764c:
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0xc(r3)
    lfs     f1, 0x10(r3)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl setAnimation__6TMarioFif
setAnimation__6TMarioFif: # 0x80247670
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    fmr     f31, f1
    stw     r31, 0xfc(sp)
    stw     r30, 0xf8(sp)
    stw     r29, 0xf4(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xf0(sp)
    addi    r28, r4, 0x0
    lis     r4, unk_803dbf50@ha
    addi    r31, r4, unk_803dbf50@l
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x802477dc
    cmpwi   r28, 0x5a
    bne-    branch_0x802476c4
    lwz     r3, 0x3f0(r29)
    li      r4, 0x12
    bl      changeAnimation__6TYoshiFi
branch_0x802476c4:
    lwz     r3, 0x3f0(r29)
    li      r4, 0x0
    lwz     r3, 0x34(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmplwi  r3, 0x18
    bgt-    branch_0x8024777c
    lis     r4, unk_803dd0a0@ha
    addi    r4, r4, unk_803dd0a0@l
    slwi    r0, r3, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
branch_0x802476f4:
    li      r28, 0xb6
    b       branch_0x80247780

branch_0x802476fc:
    li      r28, 0xb7
    b       branch_0x80247780

branch_0x80247704:
    li      r28, 0xb8
    b       branch_0x80247780

branch_0x8024770c:
    li      r28, 0xb9
    b       branch_0x80247780

branch_0x80247714:
    li      r28, 0xbf
    b       branch_0x80247780

branch_0x8024771c:
    li      r28, 0xba
    b       branch_0x80247780

branch_0x80247724:
    li      r28, 0xbb
    b       branch_0x80247780

branch_0x8024772c:
    li      r28, 0xbc
    b       branch_0x80247780

branch_0x80247734:
    li      r28, 0xbd
    b       branch_0x80247780

branch_0x8024773c:
    li      r28, 0xbe
    b       branch_0x80247780

branch_0x80247744:
    li      r28, 0xb8
    b       branch_0x80247780

branch_0x8024774c:
    li      r28, 0xc0
    b       branch_0x80247780

branch_0x80247754:
    li      r28, 0xc1
    b       branch_0x80247780

branch_0x8024775c:
    li      r28, 0xc2
    b       branch_0x80247780

branch_0x80247764:
    li      r28, 0xc4
    b       branch_0x80247780

branch_0x8024776c:
    li      r28, 0xc5
    b       branch_0x80247780

branch_0x80247774:
    li      r28, 0xc6
    b       branch_0x80247780

branch_0x8024777c:
    li      r28, 0xb6
branch_0x80247780:
    lwz     r0, 0x118(r29)
    li      r30, 0x0
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80247798
    li      r0, 0x1
    b       branch_0x8024779c

branch_0x80247798:
    li      r0, 0x0
branch_0x8024779c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802477b8
    lwz     r3, 0x3e4(r29)
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802477b8
    li      r30, 0x1
branch_0x802477b8:
    lwz     r3, 0x7c(r29)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x1308
    bne-    branch_0x802477cc
    li      r30, 0x1
branch_0x802477cc:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802477dc
    li      r28, 0xb8
branch_0x802477dc:
    lhz     r0, 0xfa(r29)
    cmpw    r28, r0
    beq-    branch_0x80247958
    clrlwi  r30, r28, 16
    sth     r28, 0xfa(r29)
    mr      r3, r29
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80247860
    lwz     r3, 0x3a8(r29)
    addi    r6, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    lwz     r4, 0x3a8(r29)
    slwi    r0, r28, 2
    lfs     f0, -0x1118(r2)
    mr      r3, r29
    lwz     r5, 0x20(r4)
    li      r4, 0x0
    lwz     r5, 0x18(r5)
    stfs    f0, 0x50(r5)
    lwz     r5, 0x3a8(r29)
    lwz     r6, 0x4(r5)
    lwz     r5, 0xc(r5)
    lwz     r6, 0x4(r6)
    lwzx    r6, r6, r0
    lbz     r0, 0x0(r6)
    stb     r0, 0x4(r5)
    bl      changeHand__6TMarioFi
    lwz     r3, 0x4dc(r29)
    bl      stop__13JAIAnimeSoundFv
    b       branch_0x80247958

branch_0x80247860:
    slwi    r30, r28, 3
    lwz     r3, 0x3a8(r29)
    add     r28, r31, r30
    lhzu    r6, 0x670(r28)
    li      r4, 0x0
    li      r5, 0x0
    bl      changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
    lwz     r4, 0x3a8(r29)
    add     r3, r31, r30
    lfs     f0, -0x1118(r2)
    lwz     r4, 0x20(r4)
    lwz     r4, 0x18(r4)
    stfs    f0, 0x50(r4)
    lwz     r4, 0x3a8(r29)
    lhz     r0, 0x0(r28)
    lwz     r5, 0x4(r4)
    slwi    r0, r0, 2
    lwz     r4, 0xc(r4)
    lwz     r5, 0x4(r5)
    lwzx    r5, r5, r0
    lbz     r0, 0x0(r5)
    stb     r0, 0x4(r4)
    lwz     r4, 0x53c(r29)
    lbz     r5, 0x674(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x802478ec
    lbz     r0, 0x8(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x802478dc
    li      r0, 0x1
    b       branch_0x802478e0

branch_0x802478dc:
    li      r0, 0x0
branch_0x802478e0:
    cmpwi   r0, 0x0
    beq-    branch_0x802478ec
    li      r5, 0x8
branch_0x802478ec:
    cmpwi   r5, 0x18
    bge-    branch_0x80247910
    lwz     r3, 0x3a8(r29)
    clrlwi  r5, r5, 24
    li      r4, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80247910:
    lfs     f0, -0x1118(r2)
    lhz     r0, 0x0(r28)
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    bne-    branch_0x8024792c
    li      r5, 0x1
    b       branch_0x80247930

branch_0x8024792c:
    li      r5, -0x1
branch_0x80247930:
    lwz     r4, 0x4e0(r29)
    slwi    r0, r0, 2
    lwz     r3, 0x4dc(r29)
    lwzx    r4, r4, r0
    lfs     f1, -0x1118(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    add     r3, r31, r30
    lbz     r4, 0x675(r3)
    mr      r3, r29
    bl      changeHand__6TMarioFi
branch_0x80247958:
    lfs     f0, -0x110c(r2)
    lwz     r3, 0x3a8(r29)
    fmuls   f0, f0, f31
    lwz     r3, 0xc(r3)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x3a8(r29)
    lwz     r3, 0xc(r3)
    stfs    f0, 0x34(r3)
    lwz     r3, 0x3a8(r29)
    lwz     r3, 0xc(r3)
    lfs     f1, 0x10(r3)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    lwz     r29, 0xf4(sp)
    lwz     r28, 0xf0(sp)
    addi    sp, sp, 0x108
    mtlr    r0
    blr


.globl changeHand__6TMarioFi
changeHand__6TMarioFi: # 0x802479a8
    lwz     r0, 0x3b0(r3)
    cmplwi  r0, 0x0
    beqlr-    

    cmpwi   r4, 0x1
    beq-    branch_0x80247b04
    bge-    branch_0x802479c4
    b       branch_0x802479d0

branch_0x802479c4:
    cmpwi   r4, 0x3
    bge-    branch_0x802479d0
    b       branch_0x80247c38

branch_0x802479d0:
    lwz     r4, 0x3a8(r3)
    li      r5, 0x0
    lwz     r4, 0x8(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x30(r4)
    lwz     r4, 0x14(r4)
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
    lwz     r4, 0x3a8(r3)
    lwz     r4, 0x8(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x30(r4)
    lwz     r4, 0x18(r4)
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
    lwz     r4, 0x3b0(r3)
    lwz     r6, 0x4(r4)
    b       branch_0x80247a3c

branch_0x80247a20:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80247a3c:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247a20
    lwz     r4, 0x3b4(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247a78

branch_0x80247a5c:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80247a78:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247a5c
    lwz     r4, 0x3b8(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247ab4

branch_0x80247a98:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80247ab4:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247a98
    lwz     r4, 0x3bc(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247af0

branch_0x80247ad4:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80247af0:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247ad4
    b       branch_0x80247d68

branch_0x80247b04:
    lwz     r4, 0x3a8(r3)
    li      r5, 0x0
    lwz     r4, 0x8(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x30(r4)
    lwz     r4, 0x14(r4)
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
    lwz     r4, 0x3a8(r3)
    lwz     r4, 0x8(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x30(r4)
    lwz     r4, 0x18(r4)
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
    lwz     r4, 0x3b0(r3)
    lwz     r6, 0x4(r4)
    b       branch_0x80247b70

branch_0x80247b54:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
branch_0x80247b70:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247b54
    lwz     r4, 0x3b4(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247bac

branch_0x80247b90:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
branch_0x80247bac:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247b90
    lwz     r4, 0x3b8(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247be8

branch_0x80247bcc:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80247be8:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247bcc
    lwz     r4, 0x3bc(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247c24

branch_0x80247c08:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80247c24:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247c08
    b       branch_0x80247d68

branch_0x80247c38:
    lwz     r4, 0x3a8(r3)
    li      r5, 0x0
    lwz     r4, 0x8(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x30(r4)
    lwz     r4, 0x14(r4)
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
    lwz     r4, 0x3a8(r3)
    lwz     r4, 0x8(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x30(r4)
    lwz     r4, 0x18(r4)
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
    lwz     r4, 0x3b0(r3)
    lwz     r6, 0x4(r4)
    b       branch_0x80247ca4

branch_0x80247c88:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80247ca4:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247c88
    lwz     r4, 0x3b4(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247ce0

branch_0x80247cc4:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80247ce0:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247cc4
    lwz     r4, 0x3b8(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247d1c

branch_0x80247d00:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
branch_0x80247d1c:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247d00
    lwz     r4, 0x3bc(r3)
    li      r5, 0x0
    lwz     r6, 0x4(r4)
    b       branch_0x80247d58

branch_0x80247d3c:
    lwz     r4, 0x30(r6)
    clrlslwi  r0, r5, 16, 2
    addi    r5, r5, 0x1
    lwzx    r4, r4, r0
    lwz     r0, 0x8(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r4)
branch_0x80247d58:
    lhz     r0, 0x2c(r6)
    clrlwi  r4, r5, 16
    cmplw   r4, r0
    blt+    branch_0x80247d3c
branch_0x80247d68:
    lwz     r3, 0x3c0(r3)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80247d94

branch_0x80247d78:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80247d94:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80247d78
    blr


.globl isAnimeLoopOrStop__6TMarioFv
isAnimeLoopOrStop__6TMarioFv: # 0x80247da8
    lwz     r3, 0x3a8(r3)
    lwz     r3, 0xc(r3)
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x80247dc4
    li      r3, 0x1
    blr

branch_0x80247dc4:
    li      r3, 0x0
    blr


.globl isLast1AnimeFrame__6TMarioFv
isLast1AnimeFrame__6TMarioFv: # 0x80247dcc
    stwu    sp, -0x30(sp)
    lis     r0, 0x4330
    lwz     r3, 0x3a8(r3)
    lfd     f2, -0x10f0(r2)
    lwz     r4, 0xc(r3)
    lfs     f0, -0x111c(r2)
    lha     r3, 0x8(r4)
    lfs     f3, 0x10(r4)
    xoris   r3, r3, 0x8000
    stw     r3, 0x2c(sp)
    stw     r0, 0x28(sp)
    lfd     f1, 0x28(sp)
    addi    sp, sp, 0x30
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    mfcr    r0
    extrwi  r3, r0, 1, 2
    blr


.globl getMotionFrameCtrl__6TMarioFv
getMotionFrameCtrl__6TMarioFv: # 0x80247e1c
    lwz     r3, 0x3a8(r3)
    lwz     r3, 0xc(r3)
    blr


.globl getCurrentFrame__6TMarioFi
getCurrentFrame__6TMarioFi: # 0x80247e28
    mulli   r4, r4, 0x14
    lwz     r3, 0x3a8(r3)
    lwz     r3, 0xc(r3)
    addi    r0, r4, 0x10
    lfsx    f1, r3, r0
    blr


.globl getTakenMtx__6TMarioFv
getTakenMtx__6TMarioFv: # 0x80247e40
    lwz     r3, 0x3a8(r3)
    lwz     r3, 0x8(r3)
    addi    r3, r3, 0x20
    blr


.globl getTakingMtx__6TMarioFv
getTakingMtx__6TMarioFv: # 0x80247e50
    lwz     r4, 0x3a8(r3)
    lbz     r0, 0x3c9(r3)
    lwz     r3, 0x8(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl getTrampleCt__6TMarioFv
getTrampleCt__6TMarioFv: # 0x80247e6c
    lhz     r0, 0xfa(r3)
    cmpwi   r0, 0xd2
    beq-    branch_0x80247e9c
    bge-    branch_0x80247e88
    cmpwi   r0, 0xd1
    bge-    branch_0x80247e94
    b       branch_0x80247eac

branch_0x80247e88:
    cmpwi   r0, 0xd4
    bge-    branch_0x80247eac
    b       branch_0x80247ea4

branch_0x80247e94:
    li      r3, 0x1
    blr

branch_0x80247e9c:
    li      r3, 0x2
    blr

branch_0x80247ea4:
    li      r3, 0x3
    blr

branch_0x80247eac:
    li      r3, 0x0
    blr


.globl setPositions__6TMarioFv
setPositions__6TMarioFv: # 0x80247eb4
    lwz     r4, 0x3a8(r3)
    lwz     r4, 0x8(r4)
    lwz     r4, 0x58(r4)
    addi    r4, r4, 0x30
    lfs     f0, 0xc(r4)
    stfs    f0, 0x160(r3)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x164(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x168(r3)
    lfs     f0, 0x1cc(r3)
    stfs    f0, 0x16c(r3)
    lfs     f0, 0x1dc(r3)
    stfs    f0, 0x170(r3)
    lfs     f0, 0x1ec(r3)
    stfs    f0, 0x174(r3)
    lwz     r4, 0x3a8(r3)
    lbz     r0, 0x3c4(r3)
    lwz     r4, 0x8(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    lfs     f0, 0xc(r4)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x17c(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x180(r3)
    lwz     r4, 0x3a8(r3)
    lbz     r0, 0x3c9(r3)
    lwz     r4, 0x8(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    lfs     f0, 0xc(r4)
    stfs    f0, 0x184(r3)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x188(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x18c(r3)
    blr


.globl takeOffGlass__6TMarioFv
takeOffGlass__6TMarioFv: # 0x80247f58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x3e0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80247f90
    mr      r3, r31
    bl      emitGetEffect__6TMarioFv
    lwz     r3, 0x3e0(r31)
    lhz     r0, 0x4(r3)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, 0x4(r3)
branch_0x80247f90:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl wearGlass__6TMarioFv
wearGlass__6TMarioFv: # 0x80247fa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x3e0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80247fdc
    mr      r3, r31
    bl      emitGetEffect__6TMarioFv
    lwz     r3, 0x3e0(r31)
    lhz     r0, 0x4(r3)
    ori     r0, r0, 0x4
    sth     r0, 0x4(r3)
branch_0x80247fdc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isWearingHelm__6TMarioFv
isWearingHelm__6TMarioFv: # 0x80247ff0
    lwz     r3, 0x3e0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80248004
    li      r3, 0x0
    blr

branch_0x80248004:
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80248018
    li      r3, 0x1
    blr

branch_0x80248018:
    li      r3, 0x0
    blr


.globl isWearingCap__6TMarioFv
isWearingCap__6TMarioFv: # 0x80248020
    lwz     r3, 0x3e0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80248034
    li      r3, 0x1
    blr

branch_0x80248034:
    lhz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80248048
    li      r3, 0x1
    blr

branch_0x80248048:
    li      r3, 0x0
    blr


.globl setDivHelm__6TMarioFv
setDivHelm__6TMarioFv: # 0x80248050
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x3e0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80248094
    mr      r3, r31
    bl      emitGetEffect__6TMarioFv
    addi    r3, r31, 0x0
    li      r4, 0x1968
    bl      startSoundActor__6TMarioFUl
    lwz     r3, 0x3e0(r31)
    lhz     r0, 0x4(r3)
    ori     r0, r0, 0x2
    sth     r0, 0x4(r3)
branch_0x80248094:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getWallAngle__6TMarioCFv
getWallAngle__6TMarioCFv: # 0x802480a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xd8(r3)
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getPumpFrame__6TMarioCFv
getPumpFrame__6TMarioCFv: # 0x802480d8
    lwz     r3, 0x3a8(r3)
    lwz     r3, 0xc(r3)
    lfs     f1, 0x24(r3)
    blr


.globl getCenterAnmMtx__6TMarioFv
getCenterAnmMtx__6TMarioFv: # 0x802480e8
    lwz     r4, 0x3a8(r3)
    lbz     r0, 0x3c4(r3)
    lwz     r3, 0x8(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl getRootAnmMtx__6TMarioFv
getRootAnmMtx__6TMarioFv: # 0x80248104
    lwz     r3, 0x3a8(r3)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x58(r3)
    blr


.globl MarioFootDirLCtrl__FP7J3DNodei
MarioFootDirLCtrl__FP7J3DNodei: # 0x80248114
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stw     r31, 0x104(sp)
    stw     r30, 0x100(sp)
    stw     r29, 0xfc(sp)
    stw     r28, 0xf8(sp)
    bne-    branch_0x80248380
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r4, 0x7c(r3)
    rlwinm. r0, r4, 0, 23, 25
    bne-    branch_0x80248198
    addis   r0, r4, 0xf400
    cmplwi  r0, 0x23d
    beq-    branch_0x80248198
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80248198
    lwz     r3, R13Off_m0x60e0(r13)
    li      r4, 0x1
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x202
    beq-    branch_0x80248188
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x203
    beq-    branch_0x80248188
    li      r4, 0x0
branch_0x80248188:
    clrlwi. r0, r4, 24
    bne-    branch_0x80248198
    li      r0, 0x1
    b       branch_0x8024819c

branch_0x80248198:
    li      r0, 0x0
branch_0x8024819c:
    cmpwi   r0, 0x0
    beq-    branch_0x80248380
    lwz     r6, R13Off_m0x60e0(r13)
    addi    r4, sp, 0xf0
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r5, 0x3a8(r6)
    lbz     r0, 0x3ce(r6)
    lwz     r5, 0x8(r5)
    mulli   r0, r0, 0x30
    lwz     r5, 0x58(r5)
    add     r29, r5, r0
    lfs     f1, 0xc(r29)
    lfs     f2, 0x1c(r29)
    lfs     f3, 0x2c(r29)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r6, 0xf0(sp)
    lhz     r0, 0x4(r6)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802481f0
    li      r0, 0x1
    b       branch_0x802481f4

branch_0x802481f0:
    li      r0, 0x0
branch_0x802481f4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80248380
    lis     r3, unk_8039e9c4@ha
    addi    r5, r3, unk_8039e9c4@l
    lwz     r4, 0x0(r5)
    lis     r3, mCurrentMtx__6J3DSys@h
    lwz     r0, 0x4(r5)
    addi    r28, r3, mCurrentMtx__6J3DSys@l
    lis     r3, unk_8039e9dc@ha
    stw     r4, 0xa4(sp)
    addi    r31, r28, 0x10
    addi    r30, r28, 0x20
    stw     r0, 0xa8(sp)
    addi    r7, r3, unk_8039e9dc@l
    addi    r8, r6, 0x34
    lwz     r0, 0x8(r5)
    addi    r3, sp, 0xe0
    addi    r4, sp, 0xc8
    stw     r0, 0xac(sp)
    addi    r5, sp, 0xb0
    lfs     f0, 0x0(r28)
    stfs    f0, 0xa4(sp)
    lfs     f0, 0x10(r28)
    stfs    f0, 0xa8(sp)
    lfs     f0, 0x20(r28)
    stfs    f0, 0xac(sp)
    lwz     r0, 0xa4(sp)
    lwz     r6, 0xa8(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0xac(sp)
    stw     r6, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x94(sp)
    lfs     f0, 0x0(r8)
    fneg    f0, f0
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x4(r8)
    fneg    f0, f0
    stfs    f0, 0x90(sp)
    lfs     f0, 0x8(r8)
    fneg    f0, f0
    stfs    f0, 0x94(sp)
    lwz     r0, 0x8c(sp)
    lwz     r6, 0x90(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x94(sp)
    stw     r6, 0xcc(sp)
    stw     r0, 0xd0(sp)
    bl      PSVECCrossProduct
    addi    r3, sp, 0xc8
    addi    r4, sp, 0xb0
    addi    r5, sp, 0xbc
    bl      PSVECCrossProduct
    addi    r3, sp, 0xb0
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    addi    r3, sp, 0xbc
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, 0xbc(sp)
    stfs    f1, 0x0(r28)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x0(r30)
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x4(r28)
    lfs     f0, 0xcc(sp)
    stfs    f0, 0x14(r28)
    lfs     f0, 0xd0(sp)
    stfs    f0, 0x24(r28)
    lfs     f0, 0xb0(sp)
    stfs    f0, 0x8(r28)
    lfs     f0, 0xb4(sp)
    stfs    f0, 0x18(r28)
    lfs     f0, 0xb8(sp)
    stfs    f0, 0x28(r28)
    stfs    f1, 0x0(r29)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x10(r29)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x20(r29)
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x4(r29)
    lfs     f0, 0xcc(sp)
    stfs    f0, 0x14(r29)
    lfs     f0, 0xd0(sp)
    stfs    f0, 0x28(r29)
    lfs     f0, 0xb0(sp)
    stfs    f0, 0x8(r29)
    lfs     f0, 0xb4(sp)
    stfs    f0, 0x18(r29)
    lfs     f0, 0xb8(sp)
    stfs    f0, 0x28(r29)
branch_0x80248380:
    lwz     r0, 0x10c(sp)
    li      r3, 0x1
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    mtlr    r0
    lwz     r29, 0xfc(sp)
    lwz     r28, 0xf8(sp)
    addi    sp, sp, 0x108
    blr


.globl MarioFootPosLCtrl__FP7J3DNodei
MarioFootPosLCtrl__FP7J3DNodei: # 0x802483a4
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    bne-    branch_0x802484c4
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r4, 0x7c(r3)
    rlwinm. r0, r4, 0, 23, 25
    bne-    branch_0x8024841c
    addis   r0, r4, 0xf400
    cmplwi  r0, 0x23d
    beq-    branch_0x8024841c
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024841c
    lwz     r3, R13Off_m0x60e0(r13)
    li      r4, 0x1
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x202
    beq-    branch_0x8024840c
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x203
    beq-    branch_0x8024840c
    li      r4, 0x0
branch_0x8024840c:
    clrlwi. r0, r4, 24
    bne-    branch_0x8024841c
    li      r0, 0x1
    b       branch_0x80248420

branch_0x8024841c:
    li      r0, 0x0
branch_0x80248420:
    cmpwi   r0, 0x0
    beq-    branch_0x802484c4
    lwz     r6, R13Off_m0x60e0(r13)
    addi    r4, sp, 0x54
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r5, 0x3a8(r6)
    lbz     r0, 0x3cd(r6)
    lwz     r5, 0x8(r5)
    mulli   r0, r0, 0x30
    lwz     r5, 0x58(r5)
    add     r31, r5, r0
    lfs     f1, 0xc(r31)
    lfs     f2, 0x1c(r31)
    lfs     f3, 0x2c(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x54(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80248474
    li      r0, 0x1
    b       branch_0x80248478

branch_0x80248474:
    li      r0, 0x0
branch_0x80248478:
    clrlwi. r0, r0, 24
    bne-    branch_0x802484c4
    lfs     f0, 0x1c(r31)
    lfs     f2, -0x10b4(r2)
    fsubs   f1, f1, f0
    lfs     f0, -0x10b0(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x802484a0
    fmr     f1, f0
branch_0x802484a0:
    lfs     f0, -0x10ac(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802484b0
    fmr     f1, f0
branch_0x802484b0:
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r3, r3, mCurrentMtx__6J3DSys@l
    lfs     f0, 0x1c(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x1c(r3)
branch_0x802484c4:
    lwz     r0, 0x64(sp)
    li      r3, 0x1
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl MarioFootDirRCtrl__FP7J3DNodei
MarioFootDirRCtrl__FP7J3DNodei: # 0x802484dc
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stw     r31, 0x104(sp)
    stw     r30, 0x100(sp)
    stw     r29, 0xfc(sp)
    stw     r28, 0xf8(sp)
    bne-    branch_0x80248748
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r4, 0x7c(r3)
    rlwinm. r0, r4, 0, 23, 25
    bne-    branch_0x80248560
    addis   r0, r4, 0xf400
    cmplwi  r0, 0x23d
    beq-    branch_0x80248560
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80248560
    lwz     r3, R13Off_m0x60e0(r13)
    li      r4, 0x1
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x202
    beq-    branch_0x80248550
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x203
    beq-    branch_0x80248550
    li      r4, 0x0
branch_0x80248550:
    clrlwi. r0, r4, 24
    bne-    branch_0x80248560
    li      r0, 0x1
    b       branch_0x80248564

branch_0x80248560:
    li      r0, 0x0
branch_0x80248564:
    cmpwi   r0, 0x0
    beq-    branch_0x80248748
    lwz     r6, R13Off_m0x60e0(r13)
    addi    r4, sp, 0xf0
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r5, 0x3a8(r6)
    lbz     r0, 0x3cc(r6)
    lwz     r5, 0x8(r5)
    mulli   r0, r0, 0x30
    lwz     r5, 0x58(r5)
    add     r29, r5, r0
    lfs     f1, 0xc(r29)
    lfs     f2, 0x1c(r29)
    lfs     f3, 0x2c(r29)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r6, 0xf0(sp)
    lhz     r0, 0x4(r6)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802485b8
    li      r0, 0x1
    b       branch_0x802485bc

branch_0x802485b8:
    li      r0, 0x0
branch_0x802485bc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80248748
    lis     r3, unk_8039e9a0@ha
    addi    r5, r3, unk_8039e9a0@l
    lwz     r4, 0x0(r5)
    lis     r3, mCurrentMtx__6J3DSys@h
    lwz     r0, 0x4(r5)
    addi    r28, r3, mCurrentMtx__6J3DSys@l
    lis     r3, unk_8039e9b8@ha
    stw     r4, 0xa4(sp)
    addi    r31, r28, 0x10
    addi    r30, r28, 0x20
    stw     r0, 0xa8(sp)
    addi    r7, r3, unk_8039e9b8@l
    addi    r8, r6, 0x34
    lwz     r0, 0x8(r5)
    addi    r3, sp, 0xe0
    addi    r4, sp, 0xc8
    stw     r0, 0xac(sp)
    addi    r5, sp, 0xb0
    lfs     f0, 0x0(r28)
    stfs    f0, 0xa4(sp)
    lfs     f0, 0x10(r28)
    stfs    f0, 0xa8(sp)
    lfs     f0, 0x20(r28)
    stfs    f0, 0xac(sp)
    lwz     r0, 0xa4(sp)
    lwz     r6, 0xa8(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0xac(sp)
    stw     r6, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x94(sp)
    lfs     f0, 0x0(r8)
    fneg    f0, f0
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x4(r8)
    fneg    f0, f0
    stfs    f0, 0x90(sp)
    lfs     f0, 0x8(r8)
    fneg    f0, f0
    stfs    f0, 0x94(sp)
    lwz     r0, 0x8c(sp)
    lwz     r6, 0x90(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x94(sp)
    stw     r6, 0xcc(sp)
    stw     r0, 0xd0(sp)
    bl      PSVECCrossProduct
    addi    r3, sp, 0xc8
    addi    r4, sp, 0xb0
    addi    r5, sp, 0xbc
    bl      PSVECCrossProduct
    addi    r3, sp, 0xb0
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    addi    r3, sp, 0xbc
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, 0xbc(sp)
    stfs    f1, 0x0(r28)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x0(r30)
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x4(r28)
    lfs     f0, 0xcc(sp)
    stfs    f0, 0x14(r28)
    lfs     f0, 0xd0(sp)
    stfs    f0, 0x24(r28)
    lfs     f0, 0xb0(sp)
    stfs    f0, 0x8(r28)
    lfs     f0, 0xb4(sp)
    stfs    f0, 0x18(r28)
    lfs     f0, 0xb8(sp)
    stfs    f0, 0x28(r28)
    stfs    f1, 0x0(r29)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x10(r29)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x20(r29)
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x4(r29)
    lfs     f0, 0xcc(sp)
    stfs    f0, 0x14(r29)
    lfs     f0, 0xd0(sp)
    stfs    f0, 0x28(r29)
    lfs     f0, 0xb0(sp)
    stfs    f0, 0x8(r29)
    lfs     f0, 0xb4(sp)
    stfs    f0, 0x18(r29)
    lfs     f0, 0xb8(sp)
    stfs    f0, 0x28(r29)
branch_0x80248748:
    lwz     r0, 0x10c(sp)
    li      r3, 0x1
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    mtlr    r0
    lwz     r29, 0xfc(sp)
    lwz     r28, 0xf8(sp)
    addi    sp, sp, 0x108
    blr


.globl MarioFootPosRCtrl__FP7J3DNodei
MarioFootPosRCtrl__FP7J3DNodei: # 0x8024876c
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    bne-    branch_0x8024888c
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r4, 0x7c(r3)
    rlwinm. r0, r4, 0, 23, 25
    bne-    branch_0x802487e4
    addis   r0, r4, 0xf400
    cmplwi  r0, 0x23d
    beq-    branch_0x802487e4
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802487e4
    lwz     r3, R13Off_m0x60e0(r13)
    li      r4, 0x1
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x202
    beq-    branch_0x802487d4
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x203
    beq-    branch_0x802487d4
    li      r4, 0x0
branch_0x802487d4:
    clrlwi. r0, r4, 24
    bne-    branch_0x802487e4
    li      r0, 0x1
    b       branch_0x802487e8

branch_0x802487e4:
    li      r0, 0x0
branch_0x802487e8:
    cmpwi   r0, 0x0
    beq-    branch_0x8024888c
    lwz     r6, R13Off_m0x60e0(r13)
    addi    r4, sp, 0x54
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r5, 0x3a8(r6)
    lbz     r0, 0x3cb(r6)
    lwz     r5, 0x8(r5)
    mulli   r0, r0, 0x30
    lwz     r5, 0x58(r5)
    add     r31, r5, r0
    lfs     f1, 0xc(r31)
    lfs     f2, 0x1c(r31)
    lfs     f3, 0x2c(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x54(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8024883c
    li      r0, 0x1
    b       branch_0x80248840

branch_0x8024883c:
    li      r0, 0x0
branch_0x80248840:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024888c
    lfs     f0, 0x1c(r31)
    lfs     f2, -0x10b4(r2)
    fsubs   f1, f1, f0
    lfs     f0, -0x10b0(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80248868
    fmr     f1, f0
branch_0x80248868:
    lfs     f0, -0x10ac(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80248878
    fmr     f1, f0
branch_0x80248878:
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r3, r3, mCurrentMtx__6J3DSys@l
    lfs     f0, 0x1c(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x1c(r3)
branch_0x8024888c:
    lwz     r0, 0x64(sp)
    li      r3, 0x1
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl MarioWaistCtrl__FP7J3DNodei
MarioWaistCtrl__FP7J3DNodei: # 0x802488a4
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    bne-    branch_0x80248b00
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r0, R13Off_m0x60d8(r13)
    addi    r31, r3, 0xfc
    cmplw   r3, r0
    bne-    branch_0x80248980
    lwz     r3, R13Off_m0x7118(r13)
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80248980
    lwz     r3, R13Off_m0x60e0(r13)
    bl      canBendBody__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80248980
    lwz     r3, R13Off_m0x7118(r13)
    lha     r3, 0xa4(r3)
    extsh.  r0, r3
    ble-    branch_0x80248980
    sth     r3, 0x0(r31)
    lis     r4, 0x4330
    addi    r3, sp, 0x88
    lha     r0, 0x4(r31)
    lha     r5, 0x0(r31)
    neg     r0, r0
    lfd     f3, -0x10f0(r2)
    extsh   r0, r0
    lfs     f4, -0x10e8(r2)
    xoris   r5, r5, 0x8000
    lfs     f2, -0x1118(r2)
    xoris   r0, r0, 0x8000
    stw     r5, 0xd4(sp)
    stw     r0, 0xcc(sp)
    stw     r4, 0xd0(sp)
    stw     r4, 0xc8(sp)
    lfd     f1, 0xd0(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x88
    bl      PSMTXConcat
    li      r3, 0x1
    b       branch_0x80248b04

branch_0x80248980:
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80248998
    li      r0, 0x1
    b       branch_0x8024899c

branch_0x80248998:
    li      r0, 0x0
branch_0x8024899c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80248a28
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80248a28
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r3, 0x3e4(r3)
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r12, 0x364(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    extsh.  r0, r3
    ble-    branch_0x80248a28
    extsh   r0, r3
    lfs     f1, -0x1118(r2)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x10f0(r2)
    stw     r0, 0xcc(sp)
    lis     r0, 0x4330
    lfs     f4, -0x10e8(r2)
    fmr     f2, f1
    stw     r0, 0xc8(sp)
    addi    r3, sp, 0x88
    lfd     f0, 0xc8(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x88
    bl      PSMTXConcat
    li      r3, 0x1
    b       branch_0x80248b04

branch_0x80248a28:
    lwz     r3, R13Off_m0x60e0(r13)
    lhz     r0, 0xfa(r3)
    cmplwi  r0, 0x48
    beq-    branch_0x80248a48
    cmplwi  r0, 0x72
    beq-    branch_0x80248a48
    cmplwi  r0, 0x6d
    bne-    branch_0x80248af4
branch_0x80248a48:
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80248a5c
    li      r0, 0x1
    b       branch_0x80248a60

branch_0x80248a5c:
    li      r0, 0x0
branch_0x80248a60:
    clrlwi. r0, r0, 24
    bne-    branch_0x80248af4
    lfs     f1, 0x3dc(r3)
    lis     r4, 0x4330
    lfs     f0, 0x3d8(r3)
    addi    r3, sp, 0x88
    fctiwz  f1, f1
    fctiwz  f0, f0
    lfd     f3, -0x10f0(r2)
    lfs     f4, -0x10e8(r2)
    stfd    f1, 0xc8(sp)
    lfs     f2, -0x1118(r2)
    stfd    f0, 0xc0(sp)
    lwz     r5, 0xcc(sp)
    lwz     r0, 0xc4(sp)
    extsh   r5, r5
    extsh   r0, r0
    xoris   r5, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r5, 0xd4(sp)
    stw     r0, 0xbc(sp)
    stw     r4, 0xd0(sp)
    stw     r4, 0xb8(sp)
    lfd     f1, 0xd0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x88
    bl      PSMTXConcat
    li      r3, 0x1
    b       branch_0x80248b04

branch_0x80248af4:
    li      r0, 0x0
    sth     r0, 0x0(r31)
    sth     r0, 0x4(r31)
branch_0x80248b00:
    li      r3, 0x1
branch_0x80248b04:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl MarioHeadCtrl__FP7J3DNodei
MarioHeadCtrl__FP7J3DNodei: # 0x80248b18
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x188(sp)
    stw     r31, 0x184(sp)
    stw     r30, 0x180(sp)
    stw     r29, 0x17c(sp)
    bne-    branch_0x80248ef4
    lwz     r4, R13Off_m0x60e0(r13)
    lwz     r3, 0x7c(r4)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x1308
    bne-    branch_0x80248c98
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r0, 0xa0(r3)
    cmplwi  r0, 0x0
    mr      r4, r0
    bne-    branch_0x80248b68
    li      r3, 0x0
    b       branch_0x80248ef8

branch_0x80248b68:
    lwz     r12, 0x0(r4)
    addi    r3, sp, 0xd4
    lwz     r12, 0xf0(r12)
    mtlr    r12
    blrl
    lwz     r6, R13Off_m0x60e0(r13)
    addi    r3, sp, 0x7c
    lfs     f0, -0x10a8(r2)
    addi    r4, sp, 0x124
    lwz     r5, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r5, 0x124(sp)
    stw     r0, 0x128(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0x12c(sp)
    lfs     f1, 0x128(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x128(sp)
    lwz     r5, 0xd4(sp)
    lwz     r0, 0xd8(sp)
    stw     r5, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0xdc(sp)
    stw     r0, 0x84(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x7c(sp)
    lwz     r3, 0x80(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0x84(sp)
    stw     r3, 0x11c(sp)
    lfs     f0, -0x1118(r2)
    stw     r0, 0x120(sp)
    lfs     f1, 0x120(sp)
    lfs     f2, 0x118(sp)
    fmuls   f1, f1, f1
    fmadds  f4, f2, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x80248c4c
    frsqrte f1, f4
    lfd     f3, -0x10a0(r2)
    lfd     f2, -0x1098(r2)
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
    stfs    f0, 0xb8(sp)
    lfs     f4, 0xb8(sp)
branch_0x80248c4c:
    fmr     f1, f4
    lfs     f2, 0x11c(sp)
    bl      matan__Fff
    neg     r0, r3
    lfs     f1, -0x1118(r2)
    extsh   r0, r0
    lfd     f3, -0x10f0(r2)
    xoris   r0, r0, 0x8000
    lfs     f4, -0x10e8(r2)
    stw     r0, 0x174(sp)
    lis     r0, 0x4330
    fmr     f2, f1
    addi    r3, sp, 0x130
    stw     r0, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    b       branch_0x80248ee0

branch_0x80248c98:
    cmplwi  r3, 0x88b
    bne-    branch_0x80248cf4
    lwz     r3, 0x3e4(r4)
    bl      isEmitting__9TWaterGunFv
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80248cf4
    lwz     r4, R13Off_m0x60e0(r13)
    lis     r0, 0x4330
    lfs     f1, -0x1118(r2)
    addi    r3, sp, 0x130
    lha     r4, 0x30ac(r4)
    lfd     f3, -0x10f0(r2)
    fmr     f2, f1
    xoris   r4, r4, 0x8000
    lfs     f4, -0x10e8(r2)
    stw     r4, 0x174(sp)
    stw     r0, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    b       branch_0x80248ee0

branch_0x80248cf4:
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r4, 0x7c(r3)
    addis   r0, r4, 0xf3c0
    cmplwi  r0, 0x201
    bne-    branch_0x80248db4
    lfs     f1, 0x370(r3)
    lfs     f0, 0x8ac(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80248d20
    li      r0, 0x1
    b       branch_0x80248d24

branch_0x80248d20:
    li      r0, 0x0
branch_0x80248d24:
    clrlwi. r0, r0, 24
    beq-    branch_0x80248d68
    lha     r4, 0x30c0(r3)
    lis     r0, 0x4330
    lfs     f1, -0x1118(r2)
    addi    r3, sp, 0x130
    xoris   r4, r4, 0x8000
    stw     r4, 0x174(sp)
    fmr     f2, f1
    lfd     f3, -0x10f0(r2)
    stw     r0, 0x170(sp)
    lfs     f4, -0x10e8(r2)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    b       branch_0x80248ee0

branch_0x80248d68:
    bl      isWallInFront__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80248db4
    lwz     r4, R13Off_m0x60e0(r13)
    lis     r0, 0x4330
    lfs     f1, -0x1118(r2)
    addi    r3, sp, 0x130
    lha     r4, 0x30d4(r4)
    lfd     f3, -0x10f0(r2)
    fmr     f2, f1
    xoris   r4, r4, 0x8000
    lfs     f4, -0x10e8(r2)
    stw     r4, 0x174(sp)
    stw     r0, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    b       branch_0x80248ee0

branch_0x80248db4:
    lwz     r29, R13Off_m0x60e0(r13)
    li      r30, 0x0
    lwz     r0, 0x118(r29)
    addi    r31, r29, 0xfc
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80248dd4
    li      r0, 0x1
    b       branch_0x80248dd8

branch_0x80248dd4:
    mr      r0, r30
branch_0x80248dd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80248df4
    mr      r3, r29
    bl      isUpperPumpingStyle__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80248df4
    li      r30, 0x1
branch_0x80248df4:
    clrlwi. r0, r30, 24
    beq-    branch_0x80248e04
    lfs     f5, 0xa38(r29)
    b       branch_0x80248e08

branch_0x80248e04:
    lfs     f5, 0x9b8(r29)
branch_0x80248e08:
    lha     r0, 0x4(r31)
    lis     r31, 0x4330
    lfs     f1, -0x1118(r2)
    addi    r3, sp, 0x130
    neg     r0, r0
    xoris   r0, r0, 0x8000
    lfd     f2, -0x10f0(r2)
    stw     r0, 0x174(sp)
    fmr     f3, f1
    lfs     f4, -0x10e8(r2)
    stw     r31, 0x170(sp)
    lfd     f0, 0x170(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f0, f5
    fctiwz  f0, f0
    stfd    f0, 0x168(sp)
    lwz     r0, 0x16c(sp)
    extsh   r0, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x164(sp)
    stw     r31, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f0, f0, f2
    fmuls   f2, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lwz     r3, R13Off_m0x60e0(r13)
    lwz     r3, 0x3e4(r3)
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r12, 0x364(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    extsh   r0, r3
    srawi   r0, r0, 1
    addze   r0, r0
    extsh   r3, r0
    extsh.  r0, r3
    bge-    branch_0x80248ee0
    xoris   r0, r3, 0x8000
    lfs     f1, -0x1118(r2)
    stw     r0, 0x164(sp)
    addi    r3, sp, 0xe0
    lfd     f3, -0x10f0(r2)
    fmr     f2, f1
    stw     r31, 0x160(sp)
    lfs     f4, -0x10e8(r2)
    lfd     f0, 0x160(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, sp, 0x130
    addi    r5, r3, 0x0
    addi    r4, sp, 0xe0
    bl      PSMTXConcat
branch_0x80248ee0:
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x130
    bl      PSMTXConcat
branch_0x80248ef4:
    li      r3, 0x1
branch_0x80248ef8:
    lwz     r0, 0x18c(sp)
    lwz     r31, 0x184(sp)
    lwz     r30, 0x180(sp)
    mtlr    r0
    lwz     r29, 0x17c(sp)
    addi    sp, sp, 0x188
    blr


.globl isPumpOK__15TMarioAnimeDataCFv
isPumpOK__15TMarioAnimeDataCFv: # 0x80248f14
    lhz     r0, 0x2(r3)
    cmplwi  r0, 0xc8
    bne-    branch_0x80248f28
    li      r3, 0x0
    blr

branch_0x80248f28:
    li      r3, 0x1
    blr


.globl __sinit_MarioDraw_cpp
__sinit_MarioDraw_cpp: # 0x80248f30
    mflr    r0
    lis     r3, unk_803fb648@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fb648@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80248f78
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80248f78:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80248fa8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80248fa8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80248fd8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80248fd8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80249008
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80249008:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80249038
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80249038:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80249068
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80249068:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80249098
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80249098:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802490c8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x802490c8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802490f8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x802490f8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80249128
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80249128:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80249158
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80249158:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80249188
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80249188:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802491b8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x802491b8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802491e8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x802491e8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80249218
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80249218:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

