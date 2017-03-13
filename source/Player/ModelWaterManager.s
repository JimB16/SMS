
.globl __dt__18TModelWaterManagerFv
__dt__18TModelWaterManagerFv: # 0x8027be3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8027be94
    lis     r3, 0x803e
    subi    r0, r3, 0x1614
    stw     r0, 0x0(r30)
    beq-    branch_0x8027be84
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8027be84:
    extsh.  r0, r31
    ble-    branch_0x8027be94
    mr      r3, r30
    bl      __dl__FPv
branch_0x8027be94:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__18TModelWaterManagerFUlPQ26JDrama9TGraphics
perform__18TModelWaterManagerFUlPQ26JDrama9TGraphics: # 0x8027beb0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x88(sp)
    stmw    r26, 0x70(sp)
    addi    r30, r5, 0x0
    addi    r28, r4, 0x0
    addi    r31, r3, 0x0
    addi    r29, r30, 0xb4
    beq-    branch_0x8027bef4
    mr      r3, r31
    bl      move__18TModelWaterManagerFv
    mr      r3, r31
    bl      calcWorldMinMax__18TModelWaterManagerFv
    lwz     r3, 0x5e00(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x5e00(r31)
branch_0x8027bef4:
    rlwinm. r0, r28, 0, 29, 29
    beq-    branch_0x8027bfa8
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8027bf54
    li      r0, 0xff
    lwz     r26, -0x5ff8(r13)
    stb     r0, 0x68(sp)
    li      r3, 0x0
    li      r0, 0xfe
    stb     r3, 0x69(sp)
    cmplwi  r26, 0x0
    stb     r3, 0x6a(sp)
    stb     r0, 0x6b(sp)
    lwz     r27, 0x68(sp)
    beq-    branch_0x8027bf54
    bl      OSGetTick
    lwz     r0, 0x814(r26)
    addi    r4, r3, 0x0
    addi    r5, r27, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r26, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8027bf54:
    addi    r26, r30, 0xb4
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    bl      calcDrawVtx__18TModelWaterManagerFPA4_f
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    bl      calcVMAll__18TModelWaterManagerFPA4_f
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8027bfa8
    lwz     r26, -0x5ff8(r13)
    cmplwi  r26, 0x0
    beq-    branch_0x8027bfa8
    bl      OSGetTick
    lwz     r0, 0x814(r26)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r26, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8027bfa8:
    rlwinm. r0, r28, 0, 28, 28
    beq-    branch_0x8027c08c
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8027bfec
    li      r0, 0xff
    lwz     r3, -0x5ff8(r13)
    stb     r0, 0x64(sp)
    li      r4, 0x0
    li      r0, 0xfd
    stb     r4, 0x65(sp)
    cmplwi  r3, 0x0
    stb     r4, 0x66(sp)
    stb     r0, 0x67(sp)
    lwz     r4, 0x64(sp)
    beq-    branch_0x8027bfec
    bl      snapGXTime__8TTimeRecFUl
branch_0x8027bfec:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      drawSilhouette__18TModelWaterManagerFPA4_f
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      drawWaterVolume__18TModelWaterManagerFPA4_f
    lhz     r0, 0x5d60(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8027c040
    lwz     r3, -0x6318(r13)
    lwz     r0, 0x18(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x8027c028
    li      r0, 0x1
    b       branch_0x8027c02c

branch_0x8027c028:
    li      r0, 0x0
branch_0x8027c02c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8027c040
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      drawMirror__18TModelWaterManagerFPA4_f
branch_0x8027c040:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x5e10
    bl      PSMTXCopy
    lhz     r3, 0x5d60(r31)
    rlwinm. r0, r3, 0, 23, 23
    beq-    branch_0x8027c06c
    rlwinm. r0, r3, 0, 22, 22
    bne-    branch_0x8027c06c
    addi    r4, r30, 0xb4
    addi    r3, r31, 0x0
    bl      drawShineShadowVolume__18TModelWaterManagerFPA4_f
branch_0x8027c06c:
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8027c08c
    lwz     r3, -0x5ff8(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8027c08c
    li      r4, 0x0
    bl      snapGXTime__8TTimeRecFUl
branch_0x8027c08c:
    rlwinm. r0, r28, 0, 24, 24
    beq-    branch_0x8027c118
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8027c0d0
    li      r0, 0xff
    lwz     r3, -0x5ff8(r13)
    stb     r0, 0x60(sp)
    li      r4, 0x0
    li      r0, 0xfc
    stb     r4, 0x61(sp)
    cmplwi  r3, 0x0
    stb     r4, 0x62(sp)
    stb     r0, 0x63(sp)
    lwz     r4, 0x60(sp)
    beq-    branch_0x8027c0d0
    bl      snapGXTime__8TTimeRecFUl
branch_0x8027c0d0:
    mr      r3, r31
    bl      drawRefracAndSpec__18TModelWaterManagerCFv
    lhz     r3, 0x5d60(r31)
    rlwinm. r0, r3, 0, 23, 23
    beq-    branch_0x8027c0f8
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x8027c0f8
    addi    r4, r30, 0xb4
    addi    r3, r31, 0x0
    bl      drawShineShadowVolume__18TModelWaterManagerFPA4_f
branch_0x8027c0f8:
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8027c118
    lwz     r3, -0x5ff8(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8027c118
    li      r4, 0x0
    bl      snapGXTime__8TTimeRecFUl
branch_0x8027c118:
    lmw     r26, 0x70(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl drawRefracAndSpec__18TModelWaterManagerCFv
drawRefracAndSpec__18TModelWaterManagerCFv: # 0x8027c12c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x8c
    bl      PSMTXIdentity
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x8c
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0x8c
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x2
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lfs     f3, -0x83c(rtoc)
    addi    r3, sp, 0x5c
    lwz     r4, gpCamera(r13)
    fmr     f5, f3
    lfs     f4, -0x838(rtoc)
    fmr     f6, f3
    lfs     f2, 0x4c(r4)
    lfs     f1, 0x48(r4)
    bl      C_MTXLightPerspective
    addi    r3, sp, 0x5c
    li      r4, 0x1e
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    li      r3, 0x1
    bl      GXSetNumIndStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXSetIndTexOrder
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x1
    bl      GXSetTevIndWarp
    lfs     f0, 0x5d1c(r31)
    addi    r4, sp, 0x44
    lfs     f1, -0x834(rtoc)
    li      r3, 0x1
    stfs    f0, 0x44(sp)
    li      r5, 0x0
    stfs    f1, 0x48(sp)
    stfs    f1, 0x4c(sp)
    stfs    f1, 0x50(sp)
    lfs     f0, 0x5d1c(r31)
    stfs    f0, 0x54(sp)
    stfs    f1, 0x58(sp)
    bl      GXSetIndTexMtx
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x1
    bl      GXSetZCompLoc
    lwz     r3, 0x5d34(r31)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r3, 0x5d38(r31)
    li      r4, 0x1
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r3, 0x5d3c(r31)
    li      r4, 0x2
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r0, -0x844(rtoc)
    addi    r4, sp, 0x3c
    li      r3, 0x1
    stw     r0, 0x38(sp)
    lbz     r0, 0x5d65(r31)
    stb     r0, 0x3b(sp)
    lwz     r0, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      GXSetTevColor
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x8
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
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x2
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x0
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
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
    bl      GXSetTevAlphaOp
    lwz     r0, -0x840(rtoc)
    addi    r4, sp, 0x34
    lfs     f1, -0x834(rtoc)
    li      r3, 0x0
    stw     r0, 0x30(sp)
    fmr     f2, f1
    lwz     r0, 0x30(sp)
    fmr     f3, f1
    fmr     f4, f1
    stw     r0, 0x34(sp)
    bl      GXSetFog
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
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8027c450
    lwz     r3, 0x5d30(r31)
    bl      draw__10TDLTexQuadFv
branch_0x8027c450:
    li      r3, 0x0
    bl      GXSetNumIndStages
    li      r3, 0x0
    bl      GXSetTevDirect
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lbz     r0, 0x5d5f(r31)
    lis     r3, 0x803e
    addi    r4, sp, 0x2c
    slwi    r5, r0, 2
    subi    r0, r3, 0x2768
    add     r3, r0, r5
    lwz     r0, 0x0(r3)
    li      r3, 0x1
    stw     r0, 0x2c(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x2
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
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
    li      r4, 0x7
    li      r5, 0x1
    li      r6, 0x4
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
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8027c570
    lwz     r3, 0x5d30(r31)
    bl      draw__10TDLTexQuadFv
branch_0x8027c570:
    lwz     r3, 0x5d40(r31)
    li      r4, 0x3
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r0, 0x5d20(r31)
    addi    r4, sp, 0x28
    li      r3, 0x1
    stw     r0, 0x28(sp)
    bl      GXSetTevColor
    lwz     r0, 0x5d24(r31)
    addi    r4, sp, 0x24
    li      r3, 0x2
    stw     r0, 0x24(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x3
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x2
    li      r6, 0x8
    li      r7, 0x4
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
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x4
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
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8027c668
    lwz     r3, 0x5d30(r31)
    bl      draw__10TDLTexQuadFv
branch_0x8027c668:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl drawShineShadowVolume__18TModelWaterManagerFPA4_f
drawShineShadowVolume__18TModelWaterManagerFPA4_f: # 0x8027c67c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stfd    f30, 0x128(sp)
    stfd    f29, 0x120(sp)
    stmw    r27, 0x10c(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    lwz     r5, gpMarDirector(r13)
    lbz     r0, 0x7c(r5)
    cmplwi  r0, 0x1
    bne-    branch_0x8027cc0c
    lbz     r0, -0x6077(r13)
    extsb.  r0, r0
    bne-    branch_0x8027c6cc
    li      r3, 0x0
    li      r0, 0x1
    stb     r3, -0x6078(r13)
    stb     r0, -0x6077(r13)
branch_0x8027c6cc:
    lbz     r0, -0x6078(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8027c6f8
    lis     r3, 0x803e
    subi    r0, r3, 0x26e0
    stw     r0, -0x6080(r13)
    li      r0, 0x1
    lwz     r3, -0x6080(r13)
    stb     r0, -0x6078(r13)
    addi    r0, r3, 0x760
    stw     r0, -0x607c(r13)
branch_0x8027c6f8:
    lis     r3, 0x803a
    lfd     f1, -0x830(rtoc)
    addi    r4, r3, 0x1c94
    lwz     r3, 0x0(r4)
    lis     r28, 0x4330
    lwz     r0, 0x4(r4)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x38(sp)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x34(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lbz     r31, 0x5e44(r29)
    lfs     f31, 0x5e0c(r29)
    subi    r0, r31, 0x1
    lfs     f0, 0x5e40(r29)
    xoris   r0, r0, 0x8000
    lbz     r27, 0x5e45(r29)
    stw     r0, 0x104(sp)
    fadds   f0, f31, f0
    stw     r28, 0x100(sp)
    fsubs   f2, f0, f31
    lfd     f0, 0x100(sp)
    fsubs   f0, f0, f1
    fdivs   f30, f2, f0
    bl      ReInitializeGX
    addi    r3, sp, 0x40
    bl      PSMTXIdentity
    lfs     f3, -0x834(rtoc)
    lfs     f2, 0xdc(sp)
    stfs    f3, 0x94(sp)
    lfs     f1, 0xe0(sp)
    stfs    f3, 0x90(sp)
    lfs     f0, 0xe4(sp)
    stfs    f3, 0x88(sp)
    stfs    f3, 0x80(sp)
    stfs    f3, 0x78(sp)
    stfs    f3, 0x74(sp)
    stfs    f2, 0x7c(sp)
    stfs    f1, 0x8c(sp)
    stfs    f0, 0x9c(sp)
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x3
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
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
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
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    stb     r27, 0xd3(sp)
    addi    r4, sp, 0x2c
    li      r3, 0x1
    lwz     r0, 0xd0(sp)
    stw     r0, 0x2c(sp)
    bl      GXSetTevColor
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetCullMode
    addi    r3, sp, 0x40
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    subfic  r0, r27, 0xff
    lfd     f2, -0x830(rtoc)
    xoris   r3, r0, 0x8000
    lfs     f3, -0x83c(rtoc)
    stw     r3, 0xfc(sp)
    xoris   r0, r31, 0x8000
    li      r7, -0x3e8
    stw     r0, 0xf4(sp)
    lis     r6, 0xcc01
    li      r0, 0x3e8
    stw     r28, 0xf8(sp)
    li      r5, -0xc8
    addi    r4, sp, 0x28
    stw     r28, 0xf0(sp)
    li      r3, 0x1
    lfd     f1, 0xf8(sp)
    lfd     f0, 0xf0(sp)
    fsubs   f1, f1, f2
    sth     r7, -0x8000(r6)
    fsubs   f0, f0, f2
    sth     r0, -0x8000(r6)
    fdivs   f0, f1, f0
    sth     r5, -0x8000(r6)
    sth     r0, -0x8000(r6)
    sth     r0, -0x8000(r6)
    sth     r5, -0x8000(r6)
    sth     r0, -0x8000(r6)
    fadds   f0, f3, f0
    sth     r7, -0x8000(r6)
    fctiwz  f0, f0
    sth     r5, -0x8000(r6)
    sth     r7, -0x8000(r6)
    stfd    f0, 0xe8(sp)
    sth     r7, -0x8000(r6)
    lwz     r0, 0xec(sp)
    sth     r5, -0x8000(r6)
    stb     r0, 0xd3(sp)
    lwz     r0, 0xd0(sp)
    stw     r0, 0x28(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x0
    bl      GXSetZMode
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x3
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0xf
    bl      GXSetVtxAttrFmt
    lwz     r4, -0x607c(r13)
    li      r3, 0x9
    li      r5, 0x6
    bl      GXSetArray
    li      r27, 0x0
    lfd     f29, -0x830(rtoc)
branch_0x8027ca2c:
    xoris   r0, r27, 0x8000
    stw     r0, 0xec(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x70
    stw     r28, 0xe8(sp)
    addi    r5, sp, 0xa0
    lfd     f0, 0xe8(sp)
    fsubs   f0, f0, f29
    fmadds  f0, f0, f30, f31
    stfs    f0, 0x98(sp)
    stfs    f0, 0x84(sp)
    stfs    f0, 0x70(sp)
    bl      PSMTXConcat
    addi    r3, sp, 0xa0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetCullMode
    lwz     r3, -0x6080(r13)
    li      r4, 0x760
    bl      GXCallDisplayList
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x2
    bl      GXSetCullMode
    lwz     r3, -0x6080(r13)
    li      r4, 0x760
    bl      GXCallDisplayList
    addi    r27, r27, 0x1
    cmpw    r27, r31
    blt+    branch_0x8027ca2c
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    lbz     r4, 0x5e47(r29)
    li      r0, 0xff
    li      r3, 0x0
    stb     r4, 0x3c(sp)
    li      r4, 0xf
    li      r5, 0xf
    lbz     r8, 0x5e48(r29)
    li      r6, 0xf
    li      r7, 0x2
    stb     r8, 0x3d(sp)
    lbz     r8, 0x5e49(r29)
    stb     r8, 0x3e(sp)
    stb     r0, 0x3f(sp)
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    lwz     r0, 0x3c(sp)
    addi    r4, sp, 0x24
    li      r3, 0x1
    stw     r0, 0x24(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x6
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetCullMode
    addi    r3, sp, 0x40
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    li      r6, -0x3e8
    lis     r5, 0xcc01
    sth     r6, -0x8000(r5)
    li      r4, 0x3e8
    li      r0, -0xc8
    sth     r4, -0x8000(r5)
    li      r3, 0x0
    sth     r0, -0x8000(r5)
    sth     r4, -0x8000(r5)
    sth     r4, -0x8000(r5)
    sth     r0, -0x8000(r5)
    sth     r4, -0x8000(r5)
    sth     r6, -0x8000(r5)
    sth     r0, -0x8000(r5)
    sth     r6, -0x8000(r5)
    sth     r6, -0x8000(r5)
    sth     r0, -0x8000(r5)
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
branch_0x8027cc0c:
    lmw     r27, 0x10c(sp)
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lfd     f30, 0x128(sp)
    mtlr    r0
    lfd     f29, 0x120(sp)
    addi    sp, sp, 0x138
    blr


.globl drawMirror__18TModelWaterManagerFPA4_f
drawMirror__18TModelWaterManagerFPA4_f: # 0x8027cc2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x180(sp)
    stfd    f31, 0x178(sp)
    stmw    r26, 0x160(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
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
    lwz     r0, -0x848(rtoc)
    addi    r4, sp, 0x88
    li      r3, 0x4
    stw     r0, 0x84(sp)
    lwz     r0, 0x84(sp)
    stw     r0, 0x88(sp)
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
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    lwz     r3, 0x5d54(r28)
    li      r4, 0x0
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    lwz     r3, -0x608c(r13)
    li      r30, 0x0
    li      r27, 0x0
    lwz     r3, 0x0(r3)
    li      r26, 0x0
    lfs     f31, 0x40(r3)
    addi    r31, r3, 0x34
    b       branch_0x8027cde0

branch_0x8027cd64:
    addi    r0, r26, 0x414
    lhzx    r0, r28, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    bne-    branch_0x8027cdd4
    lwz     r3, -0x608c(r13)
    lwz     r3, 0x0(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8027cd94
    li      r0, 0x1
    b       branch_0x8027cd98

branch_0x8027cd94:
    li      r0, 0x0
branch_0x8027cd98:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8027cdac
    li      r0, 0x0
    b       branch_0x8027cdb0

branch_0x8027cdac:
    li      r0, 0x1
branch_0x8027cdb0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027cdd4
    addi    r3, r27, 0x2d14
    add     r3, r28, r3
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x5d54(r28)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027cdd4:
    addi    r30, r30, 0x1
    addi    r27, r27, 0x30
    addi    r26, r26, 0x2
branch_0x8027cde0:
    lhz     r0, 0x12(r28)
    cmpw    r30, r0
    blt+    branch_0x8027cd64
    lfs     f1, -0x828(rtoc)
    li      r0, 0x4
    lfs     f0, 0x4(r31)
    mtctr   r0
    lwz     r5, -0x5ea8(r13)
    fdivs   f5, f1, f0
    lwz     r6, -0x5eac(r13)
    lwz     r7, MarioHitActorPos(r13)
    li      r3, 0x0
    lwz     r8, -0x5ea4(r13)
    lfs     f4, -0x824(rtoc)
    li      r4, 0x0
    lfs     f1, -0x820(rtoc)
branch_0x8027ce20:
    clrlwi  r0, r4, 16
    lfs     f0, 0x0(r7)
    sraw    r0, r0, r6
    slwi    r9, r0, 2
    lfsx    f2, r5, r9
    addi    r10, sp, 0xc4
    add     r10, r10, r3
    fmadds  f0, f4, f2, f0
    addi    r4, r4, 0x2000
    clrlwi  r0, r4, 16
    sraw    r0, r0, r6
    stfs    f0, 0x0(r10)
    addi    r3, r3, 0xc
    lfsx    f2, r8, r9
    slwi    r9, r0, 2
    lfs     f0, 0x8(r7)
    addi    r4, r4, 0x2000
    fmadds  f0, f4, f2, f0
    stfs    f0, 0x8(r10)
    lfs     f2, 0x8(r31)
    lfs     f0, 0xcc(sp)
    lfs     f3, 0x0(r31)
    fmuls   f0, f2, f0
    lfs     f2, 0xc4(sp)
    fmadds  f0, f3, f2, f0
    fadds   f0, f31, f0
    fneg    f0, f0
    fmadds  f0, f5, f0, f1
    stfs    f0, 0x4(r10)
    addi    r10, sp, 0xc4
    add     r10, r10, r3
    lfsx    f2, r5, r9
    addi    r3, r3, 0xc
    lfs     f0, 0x0(r7)
    fmadds  f0, f4, f2, f0
    stfs    f0, 0x0(r10)
    lfsx    f2, r8, r9
    lfs     f0, 0x8(r7)
    fmadds  f0, f4, f2, f0
    stfs    f0, 0x8(r10)
    lfs     f2, 0x8(r31)
    lfs     f0, 0xcc(sp)
    lfs     f3, 0x0(r31)
    fmuls   f0, f2, f0
    lfs     f2, 0xc4(sp)
    fmadds  f0, f3, f2, f0
    fadds   f0, f31, f0
    fneg    f0, f0
    fmadds  f0, f5, f0, f1
    stfs    f0, 0x4(r10)
    bdnz+      branch_0x8027ce20
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
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
    addi    r3, sp, 0x94
    bl      PSMTXIdentity
    lwz     r3, -0x6318(r13)
    addi    r4, sp, 0x94
    lwz     r3, 0x24(r3)
    bl      drawSetting__13TMirrorCameraFPA4_f
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, r29, 0x0
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
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x4
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetZCompLoc
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
    li      r3, 0xa0
    li      r4, 0x0
    li      r5, 0xa
    bl      GXBegin
    lwz     r3, MarioHitActorPos(r13)
    lis     r29, 0xcc01
    lfs     f2, -0x820(rtoc)
    li      r27, 0xff
    lfs     f1, 0x4(r3)
    lfs     f3, 0x8(r3)
    li      r26, 0x0
    lfs     f0, 0x0(r3)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r29)
    stfs    f1, -0x8000(r29)
    stfs    f3, -0x8000(r29)
    lbz     r0, 0x5d64(r28)
    stb     r27, -0x8000(r29)
    stb     r27, -0x8000(r29)
    stb     r27, -0x8000(r29)
    stb     r0, -0x8000(r29)
    lfs     f3, 0xcc(sp)
    lfs     f2, 0xc8(sp)
    lfs     f0, 0xc4(sp)
    stfs    f0, -0x8000(r29)
    stfs    f2, -0x8000(r29)
    stfs    f3, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f1, 0xd8(sp)
    lfs     f4, 0xd4(sp)
    lfs     f0, 0xd0(sp)
    stfs    f0, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stfs    f1, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f1, 0xe4(sp)
    lfs     f4, 0xe0(sp)
    lfs     f0, 0xdc(sp)
    stfs    f0, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stfs    f1, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f1, 0xf0(sp)
    lfs     f4, 0xec(sp)
    lfs     f0, 0xe8(sp)
    stfs    f0, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    lfs     f0, 0xc4(sp)
    stfs    f1, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0xfc(sp)
    lfs     f5, 0xf8(sp)
    lfs     f1, 0xf4(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0x108(sp)
    lfs     f5, 0x104(sp)
    lfs     f1, 0x100(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0x114(sp)
    lfs     f5, 0x110(sp)
    lfs     f1, 0x10c(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0x120(sp)
    lfs     f5, 0x11c(sp)
    lfs     f1, 0x118(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stfs    f0, -0x8000(r29)
    stfs    f2, -0x8000(r29)
    stfs    f3, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0xa0
    li      r4, 0x0
    li      r5, 0xa
    bl      GXBegin
    lwz     r3, MarioHitActorPos(r13)
    lfs     f2, -0x820(rtoc)
    lfs     f0, 0x4(r3)
    lfs     f3, 0x8(r3)
    lfs     f1, 0x0(r3)
    fadds   f2, f2, f0
    lfs     f0, 0xc4(sp)
    stfs    f1, -0x8000(r29)
    stfs    f2, -0x8000(r29)
    stfs    f3, -0x8000(r29)
    lbz     r0, 0x5d64(r28)
    stb     r27, -0x8000(r29)
    stb     r27, -0x8000(r29)
    stb     r27, -0x8000(r29)
    stb     r0, -0x8000(r29)
    lfs     f3, 0xcc(sp)
    lfs     f2, 0xc8(sp)
    lfs     f1, 0xc4(sp)
    stfs    f1, -0x8000(r29)
    stfs    f2, -0x8000(r29)
    stfs    f3, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0xd8(sp)
    lfs     f5, 0xd4(sp)
    lfs     f1, 0xd0(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0xe4(sp)
    lfs     f5, 0xe0(sp)
    lfs     f1, 0xdc(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0xf0(sp)
    lfs     f5, 0xec(sp)
    lfs     f1, 0xe8(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0xfc(sp)
    lfs     f5, 0xf8(sp)
    lfs     f1, 0xf4(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0x108(sp)
    lfs     f5, 0x104(sp)
    lfs     f1, 0x100(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0x114(sp)
    lfs     f5, 0x110(sp)
    lfs     f1, 0x10c(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    lfs     f4, 0x120(sp)
    lfs     f5, 0x11c(sp)
    lfs     f1, 0x118(sp)
    stfs    f1, -0x8000(r29)
    stfs    f5, -0x8000(r29)
    stfs    f4, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stfs    f0, -0x8000(r29)
    stfs    f2, -0x8000(r29)
    stfs    f3, -0x8000(r29)
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    li      r3, 0x1
    stb     r26, -0x8000(r29)
    stb     r26, -0x8000(r29)
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    lmw     r26, 0x160(sp)
    lwz     r0, 0x184(sp)
    lfd     f31, 0x178(sp)
    addi    sp, sp, 0x180
    mtlr    r0
    blr


.globl drawWaterVolume__18TModelWaterManagerFPA4_f
drawWaterVolume__18TModelWaterManagerFPA4_f: # 0x8027d418
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r26, 0x90(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    li      r3, 0x0
    bl      SMS_FillScreenAlpha__FUc
    addi    r3, sp, 0x60
    bl      PSMTXIdentity
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x60
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0x60
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
    lwz     r0, -0x85c(rtoc)
    addi    r4, sp, 0x58
    li      r3, 0x4
    stw     r0, 0x54(sp)
    lbz     r0, 0x5d5c(r30)
    stb     r0, 0x57(sp)
    lwz     r0, 0x54(sp)
    stw     r0, 0x58(sp)
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
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    lwz     r3, 0x5d48(r30)
    li      r4, 0x0
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r27, 0x0
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x8027d600

branch_0x8027d56c:
    addi    r0, r29, 0x414
    lhzx    r0, r30, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    bne-    branch_0x8027d5f4
    lfs     f1, 0x5d2c(r30)
    add     r3, r30, r28
    lfs     f0, 0x2d40(r3)
    fneg    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027d5f4
    addi    r3, r3, 0x2d14
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r3, 0x5d48(r30)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
    li      r3, 0x1
    bl      GXSetCullMode
    li      r3, 0x3
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r3, 0x5d48(r30)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027d5f4:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x30
    addi    r29, r29, 0x2
branch_0x8027d600:
    lhz     r0, 0x12(r30)
    cmpw    r27, r0
    blt+    branch_0x8027d56c
    lwz     r3, 0x5d4c(r30)
    li      r4, 0x0
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r27, 0x0
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x8027d6bc

branch_0x8027d628:
    addi    r0, r29, 0x414
    lhzx    r0, r30, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x3
    bne-    branch_0x8027d6b0
    lfs     f1, 0x5d2c(r30)
    add     r3, r30, r28
    lfs     f0, 0x2d40(r3)
    fneg    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027d6b0
    addi    r3, r3, 0x2d14
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r3, 0x5d4c(r30)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
    li      r3, 0x1
    bl      GXSetCullMode
    li      r3, 0x3
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r3, 0x5d4c(r30)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027d6b0:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x30
    addi    r29, r29, 0x2
branch_0x8027d6bc:
    lhz     r0, 0x12(r30)
    cmpw    r27, r0
    blt+    branch_0x8027d628
    lfs     f3, 0x5d7c(r30)
    lfs     f0, 0x5d70(r30)
    lfs     f2, 0x5d84(r30)
    lfs     f1, 0x5d78(r30)
    fsubs   f3, f3, f0
    lfs     f0, 0x5d94(r30)
    fsubs   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027d8e4
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
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
    lwz     r0, -0x858(rtoc)
    addi    r4, sp, 0x50
    li      r3, 0x4
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x50(sp)
    bl      GXSetChanMatColor
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
    li      r4, 0x6
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r27, 0x0
    b       branch_0x8027d7dc

branch_0x8027d7cc:
    addi    r3, r30, 0x5d70
    addi    r4, r30, 0x5d7c
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r27, r27, 0x1
branch_0x8027d7dc:
    lbz     r0, 0x5d62(r30)
    cmpw    r27, r0
    blt+    branch_0x8027d7cc
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
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x1
    bl      GXSetCullMode
    lwz     r0, -0x854(rtoc)
    addi    r4, sp, 0x48
    li      r3, 0x4
    stw     r0, 0x44(sp)
    lbz     r0, 0x5d5d(r30)
    stb     r0, 0x47(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    lhz     r0, 0x5d60(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8027d87c
    addi    r3, r30, 0x5d70
    addi    r4, r30, 0x5d7c
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x8027d87c:
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    lbz     r0, 0x5d5f(r30)
    lis     r3, 0x803e
    addi    r4, sp, 0x40
    slwi    r5, r0, 2
    subi    r0, r3, 0x2768
    add     r3, r0, r5
    lwz     r0, 0x0(r3)
    li      r3, 0x4
    stw     r0, 0x40(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    bl      GXSetBlendMode
    addi    r3, r30, 0x5d70
    addi    r4, r30, 0x5d7c
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    b       branch_0x8027dcb8

branch_0x8027d8e4:
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x60
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
    lwz     r0, -0x850(rtoc)
    addi    r4, sp, 0x3c
    li      r3, 0x4
    stw     r0, 0x38(sp)
    lwz     r0, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      GXSetChanMatColor
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
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    lhz     r0, 0x5d60(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8027da40
    li      r26, 0x0
    b       branch_0x8027da30

branch_0x8027d9c0:
    lwz     r3, 0x5d50(r30)
    li      r4, 0x0
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r27, 0x0
    li      r29, 0x0
    li      r28, 0x0
    b       branch_0x8027da20

branch_0x8027d9dc:
    addi    r0, r28, 0x414
    lhzx    r0, r30, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    beq-    branch_0x8027d9f8
    cmpwi   r0, 0x3
    bne-    branch_0x8027da14
branch_0x8027d9f8:
    addi    r3, r29, 0x2d14
    add     r3, r30, r3
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x5d50(r30)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027da14:
    addi    r27, r27, 0x1
    addi    r29, r29, 0x30
    addi    r28, r28, 0x2
branch_0x8027da20:
    lhz     r0, 0x12(r30)
    cmpw    r27, r0
    blt+    branch_0x8027d9dc
    addi    r26, r26, 0x1
branch_0x8027da30:
    lbz     r0, 0x5d63(r30)
    cmpw    r26, r0
    blt+    branch_0x8027d9c0
    b       branch_0x8027da60

branch_0x8027da40:
    li      r26, 0x0
    b       branch_0x8027da54

branch_0x8027da48:
    mr      r3, r30
    bl      drawTouching__18TModelWaterManagerFv
    addi    r26, r26, 0x1
branch_0x8027da54:
    lbz     r0, 0x5d63(r30)
    cmpw    r26, r0
    blt+    branch_0x8027da48
branch_0x8027da60:
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    bl      GXSetCullMode
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
    lwz     r0, -0x84c(rtoc)
    addi    r4, sp, 0x34
    li      r3, 0x4
    stw     r0, 0x30(sp)
    lbz     r0, 0x5d5d(r30)
    stb     r0, 0x33(sp)
    lwz     r0, 0x30(sp)
    stw     r0, 0x34(sp)
    bl      GXSetChanMatColor
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
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    lhz     r0, 0x5d60(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8027db54
    addi    r3, r30, 0x5d70
    addi    r4, r30, 0x5d7c
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x8027db54:
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
    lbz     r0, 0x5d5f(r30)
    lis     r3, 0x803e
    addi    r4, sp, 0x2c
    slwi    r5, r0, 2
    subi    r0, r3, 0x2768
    add     r3, r0, r5
    lwz     r0, 0x0(r3)
    li      r3, 0x4
    stw     r0, 0x2c(sp)
    bl      GXSetChanMatColor
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    lhz     r0, 0x5d60(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8027dcb0
    lwz     r3, 0x5d50(r30)
    li      r4, 0x0
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r27, 0x0
    li      r31, 0x0
    li      r29, 0x0
    b       branch_0x8027dca0

branch_0x8027dc5c:
    addi    r0, r29, 0x414
    lhzx    r0, r30, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    beq-    branch_0x8027dc78
    cmpwi   r0, 0x3
    bne-    branch_0x8027dc94
branch_0x8027dc78:
    addi    r3, r31, 0x2d14
    add     r3, r30, r3
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x5d50(r30)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027dc94:
    addi    r27, r27, 0x1
    addi    r31, r31, 0x30
    addi    r29, r29, 0x2
branch_0x8027dca0:
    lhz     r0, 0x12(r30)
    cmpw    r27, r0
    blt+    branch_0x8027dc5c
    b       branch_0x8027dcb8

branch_0x8027dcb0:
    mr      r3, r30
    bl      drawTouching__18TModelWaterManagerFv
branch_0x8027dcb8:
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    lmw     r26, 0x90(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl drawSilhouette__18TModelWaterManagerFPA4_f
drawSilhouette__18TModelWaterManagerFPA4_f: # 0x8027dd00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r27, 0x9c(sp)
    mr      r30, r3
    mr      r31, r4
    lwz     r5, -0x6130(r13)
    lfs     f0, -0x834(rtoc)
    lfs     f1, 0x48(r5)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8027dd34
    li      r0, 0x1
    b       branch_0x8027dd38

branch_0x8027dd34:
    li      r0, 0x0
branch_0x8027dd38:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027e0d8
    li      r3, 0x0
    bl      SMS_FillScreenAlpha__FUc
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    addi    r3, sp, 0x54
    bl      PSMTXIdentity
    li      r3, 0x0
    bl      GXSetCurrentMtx
    addi    r3, sp, 0x54
    li      r4, 0x0
    bl      GXLoadPosMtxImm
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
    lwz     r0, -0x868(rtoc)
    addi    r4, sp, 0x4c
    li      r3, 0x4
    stw     r0, 0x48(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x4c(sp)
    bl      GXSetChanMatColor
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r3, 0x5d44(r30)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    lwz     r3, 0x5d30(r30)
    bl      draw__10TDLTexQuadFv
    li      r3, 0x2
    bl      GXSetCullMode
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
    lwz     r3, 0x5d54(r30)
    li      r4, 0x0
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r27, 0x0
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x8027df10

branch_0x8027ded4:
    addi    r0, r29, 0x414
    lhzx    r0, r30, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    bne-    branch_0x8027df04
    addi    r3, r28, 0x2d14
    add     r3, r30, r3
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x5d54(r30)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027df04:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x30
    addi    r29, r29, 0x2
branch_0x8027df10:
    lhz     r0, 0x12(r30)
    cmpw    r27, r0
    blt+    branch_0x8027ded4
    lwz     r3, 0x5d58(r30)
    li      r4, 0x0
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r27, 0x0
    li      r29, 0x0
    li      r28, 0x0
    b       branch_0x8027df74

branch_0x8027df38:
    addi    r0, r28, 0x414
    lhzx    r0, r30, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x3
    bne-    branch_0x8027df68
    addi    r3, r29, 0x2d14
    add     r3, r30, r3
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x5d58(r30)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027df68:
    addi    r27, r27, 0x1
    addi    r29, r29, 0x30
    addi    r28, r28, 0x2
branch_0x8027df74:
    lhz     r0, 0x12(r30)
    cmpw    r27, r0
    blt+    branch_0x8027df38
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
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x1
    bl      GXSetCullMode
    lwz     r3, -0x864(rtoc)
    lis     r0, 0x4330
    lwz     r5, -0x6130(r13)
    addi    r4, sp, 0x44
    stw     r3, 0x40(sp)
    lfs     f0, -0x81c(rtoc)
    li      r3, 0x4
    lbz     r6, 0x5d5d(r30)
    lfs     f1, 0x48(r5)
    stw     r6, 0x94(sp)
    lfd     f2, -0x818(rtoc)
    fmuls   f0, f1, f0
    stw     r0, 0x90(sp)
    lfd     f1, 0x90(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stb     r0, 0x43(sp)
    lwz     r0, 0x40(sp)
    stw     r0, 0x44(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    lhz     r0, 0x5d60(r30)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8027e04c
    addi    r3, r30, 0x5d70
    addi    r4, r30, 0x5d7c
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x8027e04c:
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    lwz     r3, -0x6130(r13)
    addi    r4, sp, 0x3c
    lwz     r0, -0x860(rtoc)
    lwz     r5, 0x12(r3)
    li      r3, 0x4
    stw     r5, 0x50(sp)
    stw     r0, 0x38(sp)
    lbz     r5, 0x50(sp)
    lbz     r0, 0x51(sp)
    stb     r5, 0x38(sp)
    lbz     r5, 0x52(sp)
    stb     r0, 0x39(sp)
    lbz     r0, 0x53(sp)
    stb     r5, 0x3a(sp)
    lbz     r5, 0x5d5d(r30)
    mullw   r0, r5, r0
    stb     r0, 0x3b(sp)
    lwz     r0, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    bl      GXSetBlendMode
    addi    r3, r30, 0x5d70
    addi    r4, r30, 0x5d7c
    bl      SMS_DrawCube__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x8027e0d8:
    lmw     r27, 0x9c(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl drawTouching__18TModelWaterManagerFv
drawTouching__18TModelWaterManagerFv: # 0x8027e0ec
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    lwz     r3, 0x5d48(r3)
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r29, 0x0
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8027e178

branch_0x8027e128:
    addi    r0, r31, 0x414
    lhzx    r0, r28, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    bne-    branch_0x8027e16c
    lfs     f1, 0x5d2c(r28)
    add     r3, r28, r30
    lfs     f0, 0x2d40(r3)
    fneg    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027e16c
    addi    r3, r3, 0x2d14
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x5d48(r28)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027e16c:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x30
    addi    r31, r31, 0x2
branch_0x8027e178:
    lhz     r0, 0x12(r28)
    cmpw    r29, r0
    blt+    branch_0x8027e128
    lwz     r3, 0x5d4c(r28)
    li      r4, 0x0
    bl      SMS_SettingDrawShape__FP12J3DModelDataUs
    li      r29, 0x0
    li      r31, 0x0
    li      r30, 0x0
    b       branch_0x8027e1f0

branch_0x8027e1a0:
    addi    r0, r30, 0x414
    lhzx    r0, r28, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x3
    bne-    branch_0x8027e1e4
    lfs     f1, 0x5d2c(r28)
    add     r3, r28, r31
    lfs     f0, 0x2d40(r3)
    fneg    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027e1e4
    addi    r3, r3, 0x2d14
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r3, 0x5d4c(r28)
    li      r4, 0x0
    bl      SMS_DrawShape__FP12J3DModelDataUs
branch_0x8027e1e4:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x30
    addi    r30, r30, 0x2
branch_0x8027e1f0:
    lhz     r0, 0x12(r28)
    cmpw    r29, r0
    blt+    branch_0x8027e1a0
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl calcVMAll__18TModelWaterManagerFPA4_f
calcVMAll__18TModelWaterManagerFPA4_f: # 0x8027e21c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stmw    r24, 0x40(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    li      r25, 0x0
    li      r26, 0x0
    li      r27, 0x0
    li      r28, 0x0
    li      r29, 0x0
    lfs     f31, -0x828(rtoc)
    b       branch_0x8027e2c8

branch_0x8027e258:
    addi    r0, r29, 0x414
    lhzx    r0, r30, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    bne-    branch_0x8027e2b4
    add     r4, r30, r28
    lfs     f0, 0x5d68(r30)
    lfs     f1, 0x14(r4)
    addi    r5, r27, 0x814
    lwz     r3, 0x2914(r4)
    addi    r7, r26, 0x2d14
    fdivs   f0, f1, f0
    lfs     f3, 0x5d9c(r30)
    addi    r6, r3, 0x34
    lfs     f2, 0x2014(r4)
    addi    r3, r30, 0x0
    fsubs   f1, f31, f3
    addi    r4, r31, 0x0
    add     r5, r30, r5
    add     r7, r30, r7
    fmadds  f0, f1, f0, f3
    fmuls   f1, f2, f0
    bl      calcVMMtxGround__18TModelWaterManagerFPA4_ffRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PA4_f
branch_0x8027e2b4:
    addi    r25, r25, 0x1
    addi    r26, r26, 0x30
    addi    r27, r27, 0xc
    addi    r28, r28, 0x4
    addi    r29, r29, 0x2
branch_0x8027e2c8:
    lhz     r0, 0x12(r30)
    cmpw    r25, r0
    blt+    branch_0x8027e258
    lfs     f31, -0x828(rtoc)
    li      r24, 0x0
    li      r29, 0x0
    li      r28, 0x0
    li      r27, 0x0
    li      r26, 0x0
    b       branch_0x8027e37c

branch_0x8027e2f0:
    addi    r0, r26, 0x414
    lhzx    r0, r30, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x3
    bne-    branch_0x8027e368
    add     r4, r30, r27
    lfs     f5, 0x5d9c(r30)
    lfs     f1, 0x14(r4)
    addi    r25, r4, 0x2914
    lfs     f0, 0x5d6c(r30)
    fsubs   f3, f31, f5
    lwz     r3, 0x2914(r4)
    fdivs   f0, f1, f0
    lfs     f4, 0x2014(r4)
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    fmadds  f0, f3, f0, f5
    fmuls   f30, f4, f0
    bl      matan__Fff
    lwz     r3, 0x0(r25)
    fmr     f1, f30
    addi    r5, r28, 0x814
    addi    r7, r29, 0x2d14
    addi    r6, r3, 0x34
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    add     r5, r30, r5
    add     r7, r30, r7
    bl      calcVMMtxWall__18TModelWaterManagerFPA4_ffRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PA4_f
branch_0x8027e368:
    addi    r24, r24, 0x1
    addi    r29, r29, 0x30
    addi    r28, r28, 0xc
    addi    r27, r27, 0x4
    addi    r26, r26, 0x2
branch_0x8027e37c:
    lhz     r0, 0x12(r30)
    cmpw    r24, r0
    blt+    branch_0x8027e2f0
    lmw     r24, 0x40(sp)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl calcVMMtxWall__18TModelWaterManagerFPA4_ffRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PA4_f
calcVMMtxWall__18TModelWaterManagerFPA4_ffRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PA4_f: # 0x8027e3a4
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stfd    f30, 0x20(sp)
    lfs     f9, 0x0(r6)
    lfs     f10, 0x8(r6)
    fmuls   f11, f1, f9
    lfs     f3, 0x4(r4)
    lfs     f12, 0x4(r5)
    fmuls   f30, f1, f10
    lfs     f31, 0x8(r4)
    fneg    f8, f11
    lfs     f7, -0x810(rtoc)
    lfs     f6, 0x0(r5)
    fmuls   f0, f3, f12
    lfs     f5, 0x8(r5)
    fmuls   f4, f31, f8
    lfs     f13, 0x0(r4)
    fmadds  f6, f7, f9, f6
    fmadds  f5, f7, f10, f5
    lfs     f7, 0xc(r4)
    fmadds  f4, f13, f30, f4
    fmadds  f0, f13, f6, f0
    fmuls   f2, f31, f30
    fmuls   f3, f3, f1
    stfs    f4, 0x0(r7)
    fmadds  f0, f31, f5, f0
    fmadds  f2, f13, f11, f2
    stfs    f3, 0x4(r7)
    fadds   f0, f7, f0
    stfs    f2, 0x8(r7)
    stfs    f0, 0xc(r7)
    lfs     f31, 0x18(r4)
    lfs     f3, 0x14(r4)
    fmuls   f4, f31, f8
    lfs     f13, 0x10(r4)
    fmuls   f0, f3, f12
    lfs     f7, 0x1c(r4)
    fmuls   f2, f31, f30
    fmadds  f4, f13, f30, f4
    fmadds  f0, f13, f6, f0
    fmuls   f3, f3, f1
    stfs    f4, 0x10(r7)
    fmadds  f2, f13, f11, f2
    fmadds  f0, f31, f5, f0
    stfs    f3, 0x14(r7)
    fadds   f0, f7, f0
    stfs    f2, 0x18(r7)
    stfs    f0, 0x1c(r7)
    lfs     f31, 0x28(r4)
    lfs     f3, 0x24(r4)
    fmuls   f4, f31, f8
    lfs     f13, 0x20(r4)
    fmuls   f0, f3, f12
    lfs     f7, 0x2c(r4)
    fmuls   f2, f31, f30
    fmadds  f4, f13, f30, f4
    fmadds  f0, f13, f6, f0
    fmuls   f3, f3, f1
    stfs    f4, 0x20(r7)
    fmadds  f2, f13, f11, f2
    fmadds  f0, f31, f5, f0
    stfs    f3, 0x24(r7)
    fadds   f0, f7, f0
    stfs    f2, 0x28(r7)
    stfs    f0, 0x2c(r7)
    lfd     f31, 0x28(sp)
    lfd     f30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl calcVMMtxGround__18TModelWaterManagerFPA4_ffRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PA4_f
calcVMMtxGround__18TModelWaterManagerFPA4_ffRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PA4_f: # 0x8027e4b8
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stfd    f30, 0x20(sp)
    lfs     f6, 0x0(r6)
    lfs     f2, 0x4(r6)
    fmuls   f8, f1, f6
    lfs     f7, 0x8(r6)
    lfs     f4, -0x810(rtoc)
    fmuls   f30, f1, f2
    lfs     f0, 0x4(r5)
    fmadds  f10, f4, f2, f0
    lfs     f12, 0x4(r4)
    fneg    f5, f8
    lfs     f0, 0x0(r5)
    fmuls   f2, f12, f30
    lfs     f11, 0x0(r4)
    fmuls   f3, f12, f5
    fmadds  f6, f4, f6, f0
    lfs     f13, 0x8(r4)
    fmuls   f0, f12, f10
    fmuls   f9, f1, f7
    lfs     f1, 0x8(r5)
    fmadds  f2, f11, f8, f2
    lfs     f31, 0xc(r4)
    fmadds  f7, f4, f7, f1
    fmadds  f3, f11, f30, f3
    fmadds  f0, f11, f6, f0
    fneg    f4, f9
    fmuls   f1, f13, f30
    stfs    f3, 0x0(r7)
    fmadds  f2, f13, f9, f2
    fmadds  f0, f13, f7, f0
    fmadds  f1, f12, f4, f1
    stfs    f2, 0x4(r7)
    fadds   f0, f31, f0
    stfs    f1, 0x8(r7)
    stfs    f0, 0xc(r7)
    lfs     f12, 0x14(r4)
    lfs     f13, 0x18(r4)
    fmuls   f2, f12, f30
    lfs     f11, 0x10(r4)
    fmuls   f3, f12, f5
    lfs     f31, 0x1c(r4)
    fmuls   f0, f12, f10
    fmadds  f2, f11, f8, f2
    fmadds  f3, f11, f30, f3
    fmadds  f0, f11, f6, f0
    fmuls   f1, f13, f30
    fmadds  f2, f13, f9, f2
    stfs    f3, 0x10(r7)
    fmadds  f0, f13, f7, f0
    fmadds  f1, f12, f4, f1
    stfs    f2, 0x14(r7)
    fadds   f0, f31, f0
    stfs    f1, 0x18(r7)
    stfs    f0, 0x1c(r7)
    lfs     f12, 0x24(r4)
    lfs     f13, 0x28(r4)
    fmuls   f2, f12, f30
    lfs     f11, 0x20(r4)
    fmuls   f3, f12, f5
    lfs     f31, 0x2c(r4)
    fmuls   f0, f12, f10
    fmadds  f2, f11, f8, f2
    fmadds  f3, f11, f30, f3
    fmadds  f0, f11, f6, f0
    fmuls   f1, f13, f30
    fmadds  f2, f13, f9, f2
    stfs    f3, 0x20(r7)
    fmadds  f0, f13, f7, f0
    fmadds  f1, f12, f4, f1
    stfs    f2, 0x24(r7)
    fadds   f0, f31, f0
    stfs    f1, 0x28(r7)
    stfs    f0, 0x2c(r7)
    lfd     f31, 0x28(sp)
    lfd     f30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl calcDrawVtx__18TModelWaterManagerFPA4_f
calcDrawVtx__18TModelWaterManagerFPA4_f: # 0x8027e5f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stfd    f29, 0xc8(sp)
    stfd    f28, 0xc0(sp)
    stfd    f27, 0xb8(sp)
    stfd    f26, 0xb0(sp)
    stmw    r23, 0x8c(sp)
    mr      r28, r3
    mr      r29, r4
    lwz     r3, 0x5d30(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f26, -0x80c(rtoc)
    li      r30, 0x0
    lfs     f27, -0x83c(rtoc)
    li      r27, 0x0
    lfs     f28, -0x828(rtoc)
    lfs     f29, -0x834(rtoc)
    li      r26, 0x0
    lfd     f30, -0x808(rtoc)
    li      r25, 0x0
    lfd     f31, -0x800(rtoc)
    b       branch_0x8027e894

branch_0x8027e664:
    addi    r0, r25, 0x414
    lhzx    r0, r28, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x1
    bne-    branch_0x8027e884
    addi    r23, r30, 0x2414
    lfs     f0, 0x5da4(r28)
    add     r23, r28, r23
    lbz     r0, 0x0(r23)
    add     r31, r28, r26
    lfs     f2, 0x14(r31)
    slwi    r3, r0, 2
    addi    r0, r3, 0x5dbc
    lwzx    r3, r28, r0
    lfs     f1, 0x68(r3)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8027e884
    add     r24, r28, r27
    addi    r3, r29, 0x0
    addi    r4, r24, 0x814
    addi    r5, sp, 0x48
    bl      PSMTXMultVec
    lfs     f1, 0x50(sp)
    fcmpo   cr0, f1, f29
    bgt-    branch_0x8027e884
    lfs     f0, 0x5d28(r28)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    blt-    branch_0x8027e884
    addi    r3, r29, 0x0
    addi    r4, r24, 0x1414
    addi    r5, sp, 0x3c
    bl      PSMTXMultVecSR
    lbz     r0, 0x0(r23)
    lfs     f0, 0x3c(sp)
    slwi    r3, r0, 2
    addi    r0, r3, 0x5dbc
    lwzx    r3, r28, r0
    lfs     f1, 0x18(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x40(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x2014(r31)
    fmuls   f0, f0, f0
    fmuls   f2, f27, f2
    fadds   f0, f1, f0
    fmuls   f3, f26, f2
    fcmpo   cr0, f0, f28
    fmr     f2, f0
    ble-    branch_0x8027e820
    fcmpo   cr0, f2, f29
    ble-    branch_0x8027e780
    frsqrte f1, f2
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f0, f1, f0
    fmul    f0, f2, f0
    frsp    f0, f0
    stfs    f0, 0x28(sp)
    lfs     f0, 0x28(sp)
    b       branch_0x8027e784

branch_0x8027e780:
    fmr     f0, f2
branch_0x8027e784:
    fdivs   f0, f28, f0
    lfs     f7, 0x3c(sp)
    lfs     f9, 0x48(sp)
    lfs     f2, 0x5d18(r28)
    lfs     f8, 0x40(sp)
    fmuls   f0, f0, f3
    lfs     f10, 0x4c(sp)
    fmuls   f3, f7, f0
    fmuls   f11, f8, f0
    fadds   f1, f9, f3
    fneg    f12, f3
    fadds   f0, f10, f11
    fmadds  f1, f7, f2, f1
    fadds   f5, f9, f11
    fadds   f4, f10, f12
    stfs    f1, 0x54(sp)
    fsubs   f3, f9, f3
    fsubs   f2, f10, f11
    lfs     f6, 0x5d18(r28)
    fsubs   f1, f9, f11
    fmadds  f6, f8, f6, f0
    fsubs   f0, f10, f12
    stfs    f6, 0x58(sp)
    lfs     f6, 0x50(sp)
    stfs    f6, 0x5c(sp)
    stfs    f5, 0x60(sp)
    stfs    f4, 0x64(sp)
    stfs    f6, 0x68(sp)
    lfs     f4, 0x5d18(r28)
    fnmsubs  f3, f7, f4, f3
    stfs    f3, 0x6c(sp)
    lfs     f3, 0x5d18(r28)
    fnmsubs  f2, f8, f3, f2
    stfs    f2, 0x70(sp)
    stfs    f6, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f6, 0x80(sp)
    b       branch_0x8027e86c

branch_0x8027e820:
    lfs     f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    fsubs   f2, f0, f3
    fadds   f5, f1, f3
    fadds   f4, f0, f3
    stfs    f2, 0x54(sp)
    fsubs   f1, f1, f3
    stfs    f5, 0x58(sp)
    lfs     f0, 0x50(sp)
    stfs    f0, 0x5c(sp)
    stfs    f4, 0x60(sp)
    stfs    f5, 0x64(sp)
    stfs    f0, 0x68(sp)
    stfs    f4, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f0, 0x74(sp)
    stfs    f2, 0x78(sp)
    stfs    f1, 0x7c(sp)
    stfs    f0, 0x80(sp)
branch_0x8027e86c:
    lwz     r3, 0x5d30(r28)
    addi    r4, sp, 0x54
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x8027e884:
    addi    r30, r30, 0x1
    addi    r27, r27, 0xc
    addi    r26, r26, 0x4
    addi    r25, r25, 0x2
branch_0x8027e894:
    lhz     r0, 0x12(r28)
    cmpw    r30, r0
    blt+    branch_0x8027e664
    lwz     r3, 0x5d30(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lmw     r23, 0x8c(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    lfd     f29, 0xc8(sp)
    lfd     f28, 0xc0(sp)
    lfd     f27, 0xb8(sp)
    lfd     f26, 0xb0(sp)
    addi    sp, sp, 0xe0
    blr


.globl calcWorldMinMax__18TModelWaterManagerFv
calcWorldMinMax__18TModelWaterManagerFv: # 0x8027e8e0
    lhz     r4, 0x12(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8027e974
    lwz     r5, MarioHitActorPos(r13)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x5d70(r3)
    stw     r0, 0x5d74(r3)
    lwz     r0, 0x8(r5)
    stw     r0, 0x5d78(r3)
    lwz     r5, MarioHitActorPos(r13)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x5d7c(r3)
    stw     r0, 0x5d80(r3)
    lwz     r0, 0x8(r5)
    stw     r0, 0x5d84(r3)
    lfs     f0, 0x5d70(r3)
    lfs     f1, -0x828(rtoc)
    fsubs   f0, f0, f1
    stfs    f0, 0x5d70(r3)
    lfs     f0, 0x5d74(r3)
    fsubs   f0, f0, f1
    stfs    f0, 0x5d74(r3)
    lfs     f0, 0x5d78(r3)
    fsubs   f0, f0, f1
    stfs    f0, 0x5d78(r3)
    lfs     f0, 0x5d7c(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x5d7c(r3)
    lfs     f0, 0x5d80(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x5d80(r3)
    lfs     f0, 0x5d84(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x5d84(r3)
    blr

branch_0x8027e974:
    lfs     f1, 0x814(r3)
    subi    r0, r4, 0x1
    lfs     f0, -0x828(rtoc)
    cmpwi   r4, 0x1
    lfs     f2, 0x818(r3)
    lfs     f3, 0x81c(r3)
    fsubs   f5, f1, f0
    fsubs   f6, f2, f0
    mtctr   r0
    fsubs   f7, f3, f0
    fadds   f8, f0, f1
    fadds   f9, f0, f2
    fadds   f10, f0, f3
    li      r4, 0xc
    ble-    branch_0x8027ea10
branch_0x8027e9b0:
    add     r5, r3, r4
    lfs     f0, 0x814(r5)
    fcmpo   cr0, f5, f0
    ble-    branch_0x8027e9c4
    fmr     f5, f0
branch_0x8027e9c4:
    lfs     f1, 0x818(r5)
    fcmpo   cr0, f6, f1
    ble-    branch_0x8027e9d4
    fmr     f6, f1
branch_0x8027e9d4:
    lfs     f2, 0x81c(r5)
    fcmpo   cr0, f7, f2
    ble-    branch_0x8027e9e4
    fmr     f7, f2
branch_0x8027e9e4:
    fcmpo   cr0, f8, f0
    bge-    branch_0x8027e9f0
    fmr     f8, f0
branch_0x8027e9f0:
    fcmpo   cr0, f9, f1
    bge-    branch_0x8027e9fc
    fmr     f9, f1
branch_0x8027e9fc:
    fcmpo   cr0, f10, f2
    bge-    branch_0x8027ea08
    fmr     f10, f2
branch_0x8027ea08:
    addi    r4, r4, 0xc
    bdnz+      branch_0x8027e9b0
branch_0x8027ea10:
    lfs     f4, -0x7f8(rtoc)
    fsubs   f1, f5, f4
    fsubs   f0, f6, f4
    fsubs   f3, f7, f4
    stfs    f1, 0x5d70(r3)
    fadds   f2, f4, f8
    fadds   f1, f4, f9
    stfs    f0, 0x5d74(r3)
    fadds   f0, f4, f10
    stfs    f3, 0x5d78(r3)
    stfs    f2, 0x5d7c(r3)
    stfs    f1, 0x5d80(r3)
    stfs    f0, 0x5d84(r3)
    blr


.globl move__18TModelWaterManagerFv
move__18TModelWaterManagerFv: # 0x8027ea48
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x2e8(sp)
    stfd    f31, 0x2e0(sp)
    stfd    f30, 0x2d8(sp)
    stfd    f29, 0x2d0(sp)
    stfd    f28, 0x2c8(sp)
    stfd    f27, 0x2c0(sp)
    stfd    f26, 0x2b8(sp)
    stfd    f25, 0x2b0(sp)
    stfd    f24, 0x2a8(sp)
    stfd    f23, 0x2a0(sp)
    stmw    r14, 0x258(sp)
    mr      r31, r3
    subi    r17, r4, 0x27a0
    addi    r15, sp, 0x210
    li      r22, 0x0
    li      r21, 0x0
    li      r19, 0x0
    li      r18, 0x0
    lis     r16, 0x4330
    lfs     f0, 0x5e08(r3)
    lis     r3, 0x8040
    lfs     f30, -0x834(rtoc)
    subi    r30, r3, 0x3d58
    fmuls   f23, f0, f0
    lfd     f29, -0x808(rtoc)
    lfd     f28, -0x800(rtoc)
    lfs     f27, -0x828(rtoc)
    lfs     f26, -0x7ec(rtoc)
    lfd     f24, -0x830(rtoc)
    lfs     f25, -0x7f4(rtoc)
    b       branch_0x8027eec0

branch_0x8027ead0:
    add     r27, r31, r18
    addi    r3, r27, 0x2514
    lwz     r0, 0x2514(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x8027eba8
    add     r4, r31, r19
    addi    r26, r4, 0x814
    lwz     r6, 0x814(r4)
    addi    r4, r30, 0xc
    lwz     r0, 0x4(r26)
    li      r5, 0xf
    stw     r6, 0x1c(r30)
    stw     r0, 0x20(r30)
    lwz     r0, 0x8(r26)
    stw     r0, 0x24(r30)
    stw     r22, 0x74(r30)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8027eba8
    lfs     f1, 0x2014(r27)
    mr      r5, r26
    lwz     r3, gpMSound(r13)
    li      r4, 0x6800
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x5da8(r31)
    stw     r0, 0x254(sp)
    stw     r16, 0x250(sp)
    lfd     f1, 0x250(sp)
    fsubs   f1, f1, f24
    fmuls   f1, f25, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027eba0
    lwz     r5, 0x0(r26)
    mr      r4, r15
    lwz     r0, 0x4(r26)
    lwz     r3, -0x60c0(r13)
    stw     r5, 0x210(sp)
    lfs     f1, -0x7f0(rtoc)
    stw     r0, 0x214(sp)
    lwz     r0, 0x8(r26)
    stw     r0, 0x218(sp)
    bl      newSplash__14TSplashManagerFQ29JGeometry8TVec3_f_f
branch_0x8027eba0:
    stfs    f30, 0x14(r27)
    b       branch_0x8027eeb0

branch_0x8027eba8:
    add     r28, r31, r19
    lwz     r3, MarioHitActorPos(r13)
    addi    r24, r28, 0x81c
    lfs     f1, 0x8(r3)
    addi    r23, r28, 0x814
    lfs     f0, 0x81c(r28)
    lfs     f2, 0x0(r3)
    fsubs   f3, f1, f0
    lfs     f0, 0x814(r28)
    fsubs   f1, f2, f0
    fmuls   f0, f3, f3
    fmadds  f0, f1, f1, f0
    fcmpo   cr0, f0, f23
    ble-    branch_0x8027ebe8
    stfs    f30, 0x14(r27)
    b       branch_0x8027eeb0

branch_0x8027ebe8:
    addi    r25, r28, 0x1414
    addi    r26, r28, 0x141c
    lfs     f1, 0x1414(r28)
    lfs     f0, 0x141c(r28)
    addi    r3, r27, 0x2014
    fmuls   f2, f1, f1
    lfs     f3, 0x2014(r27)
    fmuls   f1, f0, f0
    fmuls   f0, f3, f3
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    fmr     f2, f1
    ble-    branch_0x8027eca4
    fcmpo   cr0, f2, f30
    ble-    branch_0x8027ec6c
    frsqrte f1, f2
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f2, f0, f28
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f2, f0, f28
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f2, f0, f28
    fmul    f0, f1, f0
    fmul    f0, f2, f0
    frsp    f0, f0
    stfs    f0, 0x1cc(sp)
    lfs     f0, 0x1cc(sp)
    b       branch_0x8027ec70

branch_0x8027ec6c:
    fmr     f0, f2
branch_0x8027ec70:
    fdivs   f2, f27, f0
    lfs     f1, 0x0(r3)
    lfs     f0, 0x0(r25)
    fsubs   f1, f1, f26
    fmuls   f0, f0, f2
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r25)
    lfs     f1, 0x0(r3)
    lfs     f0, 0x0(r26)
    fsubs   f1, f1, f26
    fmuls   f0, f0, f2
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r26)
branch_0x8027eca4:
    addi    r0, r21, 0x414
    lhzx    r0, r31, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    beq-    branch_0x8027ed40
    bge-    branch_0x8027ecc8
    cmpwi   r0, 0x1
    bge-    branch_0x8027ecd4
    b       branch_0x8027eeb0

branch_0x8027ecc8:
    cmpwi   r0, 0x4
    bge-    branch_0x8027eeb0
    b       branch_0x8027ee5c

branch_0x8027ecd4:
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8027ece8
    lfs     f1, 0x5db8(r31)
    b       branch_0x8027ed00

branch_0x8027ece8:
    addi    r0, r22, 0x2414
    lbzx    r0, r31, r0
    slwi    r3, r0, 2
    addi    r0, r3, 0x5dbc
    lwzx    r3, r31, r0
    lfs     f1, 0x54(r3)
branch_0x8027ed00:
    lfs     f0, 0x1418(r28)
    fadds   f0, f0, f1
    stfs    f0, 0x1418(r28)
    lfs     f1, 0x0(r23)
    lfs     f0, 0x0(r25)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r23)
    lfs     f1, 0x818(r28)
    lfs     f0, 0x1418(r28)
    fadds   f0, f1, f0
    stfs    f0, 0x818(r28)
    lfs     f1, 0x0(r24)
    lfs     f0, 0x0(r26)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r24)
    b       branch_0x8027eeb0

branch_0x8027ed40:
    addi    r20, r27, 0x2914
    lwz     r3, 0x2914(r27)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x500
    beq-    branch_0x8027ed6c
    cmplwi  r0, 0x4004
    beq-    branch_0x8027ed6c
    cmplwi  r0, 0x8004
    beq-    branch_0x8027ed6c
    cmplwi  r0, 0xc004
    bne-    branch_0x8027ed74
branch_0x8027ed6c:
    li      r0, 0x1
    b       branch_0x8027ed78

branch_0x8027ed74:
    li      r0, 0x0
branch_0x8027ed78:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027ed88
    lfs     f2, 0x8c(r17)
    b       branch_0x8027ed8c

branch_0x8027ed88:
    lfs     f2, 0x98(r17)
branch_0x8027ed8c:
    lfs     f1, 0x0(r25)
    lfs     f0, 0x34(r3)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x0(r25)
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8027edb0
    lfs     f0, 0x5db8(r31)
    b       branch_0x8027edc8

branch_0x8027edb0:
    addi    r0, r22, 0x2414
    lbzx    r0, r31, r0
    slwi    r3, r0, 2
    addi    r0, r3, 0x5dbc
    lwzx    r3, r31, r0
    lfs     f0, 0x54(r3)
branch_0x8027edc8:
    addi    r3, r28, 0x1418
    stfs    f0, 0x1418(r28)
    lwz     r4, 0x0(r20)
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x500
    beq-    branch_0x8027edf8
    cmplwi  r0, 0x4004
    beq-    branch_0x8027edf8
    cmplwi  r0, 0x8004
    beq-    branch_0x8027edf8
    cmplwi  r0, 0xc004
    bne-    branch_0x8027ee00
branch_0x8027edf8:
    li      r0, 0x1
    b       branch_0x8027ee04

branch_0x8027ee00:
    li      r0, 0x0
branch_0x8027ee04:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027ee14
    lfs     f2, 0x8c(r17)
    b       branch_0x8027ee18

branch_0x8027ee14:
    lfs     f2, 0x98(r17)
branch_0x8027ee18:
    lfs     f1, 0x0(r26)
    lfs     f0, 0x3c(r4)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x0(r26)
    lfs     f1, 0x0(r23)
    lfs     f0, 0x0(r25)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r23)
    lfs     f1, 0x818(r28)
    lfs     f0, 0x0(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x818(r28)
    lfs     f1, 0x0(r24)
    lfs     f0, 0x0(r26)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r24)
    b       branch_0x8027eeb0

branch_0x8027ee5c:
    lwz     r3, 0x2914(r27)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x500
    beq-    branch_0x8027ee84
    cmplwi  r0, 0x4004
    beq-    branch_0x8027ee84
    cmplwi  r0, 0x8004
    beq-    branch_0x8027ee84
    cmplwi  r0, 0xc004
    bne-    branch_0x8027ee8c
branch_0x8027ee84:
    li      r0, 0x1
    b       branch_0x8027ee90

branch_0x8027ee8c:
    li      r0, 0x0
branch_0x8027ee90:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027eea0
    lfs     f1, 0x90(r17)
    b       branch_0x8027eea4

branch_0x8027eea0:
    lfs     f1, 0x9c(r17)
branch_0x8027eea4:
    lfs     f0, 0x818(r28)
    fadds   f0, f0, f1
    stfs    f0, 0x818(r28)
branch_0x8027eeb0:
    addi    r22, r22, 0x1
    addi    r21, r21, 0x2
    addi    r19, r19, 0xc
    addi    r18, r18, 0x4
branch_0x8027eec0:
    lhz     r0, 0x12(r31)
    cmpw    r22, r0
    blt+    branch_0x8027ead0
    li      r0, 0x0
    lfs     f27, -0x834(rtoc)
    stw     r0, 0x248(sp)
    addi    r0, sp, 0x1a8
    lfd     f29, -0x830(rtoc)
    addi    r14, sp, 0x18c
    stw     r0, 0x24c(sp)
    lfs     f30, -0x7f4(rtoc)
    li      r26, 0x0
    lfs     f28, -0x83c(rtoc)
    li      r16, 0x0
    lfs     f26, -0x828(rtoc)
    li      r20, 0x0
    li      r15, 0x0
    lis     r18, 0x4330
    b       branch_0x8027f6c0

branch_0x8027ef0c:
    add     r29, r31, r15
    addi    r23, r29, 0x1418
    lfs     f2, 0x1418(r29)
    fcmpo   cr0, f2, f27
    bge-    branch_0x8027f284
    addi    r22, r29, 0x818
    lwz     r3, gpMap(r13)
    lfs     f0, 0x818(r29)
    addi    r25, r29, 0x814
    lfs     f1, 0x814(r29)
    addi    r4, sp, 0x248
    fsubs   f2, f0, f2
    lfs     f3, 0x81c(r29)
    bl      checkGroundIgnoreWaterThrough__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x248(sp)
    fmr     f31, f1
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8027ef60
    li      r0, 0x1
    b       branch_0x8027ef64

branch_0x8027ef60:
    li      r0, 0x0
branch_0x8027ef64:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8027ef78
    li      r0, 0x0
    b       branch_0x8027ef7c

branch_0x8027ef78:
    li      r0, 0x1
branch_0x8027ef7c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027f284
    fadds   f1, f26, f31
    lfs     f0, 0x0(r22)
    fcmpo   cr0, f1, f0
    blt-    branch_0x8027f284
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8027efc0
    cmplwi  r3, 0x101
    beq-    branch_0x8027efc0
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8027efc0
    cmplwi  r3, 0x4104
    bne-    branch_0x8027efc8
branch_0x8027efc0:
    li      r0, 0x1
    b       branch_0x8027efcc

branch_0x8027efc8:
    li      r0, 0x0
branch_0x8027efcc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027f034
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x5db4(r31)
    stw     r0, 0x254(sp)
    stw     r18, 0x250(sp)
    lfd     f1, 0x250(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027f004
    addi    r3, r29, 0x814
    bl      SMS_EmitRippleTiny__FPQ29JGeometry8TVec3_f_
branch_0x8027f004:
    addi    r0, r20, 0x14
    fmr     f1, f27
    stfsx   f27, r31, r0
    addi    r5, r29, 0x814
    li      r4, 0x6801
    lwz     r3, gpMSound(r13)
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    b       branch_0x8027f6b0

branch_0x8027f034:
    cmplwi  r3, 0x104
    beq-    branch_0x8027f04c
    cmplwi  r3, 0x105
    beq-    branch_0x8027f04c
    cmplwi  r3, 0x4104
    bne-    branch_0x8027f054
branch_0x8027f04c:
    li      r0, 0x1
    b       branch_0x8027f058

branch_0x8027f054:
    li      r0, 0x0
branch_0x8027f058:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027f0c0
    add     r22, r31, r20
    stfs    f27, 0x14(r22)
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x5db4(r31)
    stw     r0, 0x254(sp)
    stw     r18, 0x250(sp)
    lfd     f1, 0x250(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027f098
    addi    r3, r29, 0x814
    bl      SMS_EmitRippleTiny__FPQ29JGeometry8TVec3_f_
branch_0x8027f098:
    lfs     f1, 0x2014(r22)
    addi    r5, r29, 0x814
    lwz     r3, gpMSound(r13)
    li      r4, 0x6800
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    b       branch_0x8027f6b0

branch_0x8027f0c0:
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8027f0d4
    lfs     f0, 0x5db8(r31)
    b       branch_0x8027f0ec

branch_0x8027f0d4:
    addi    r0, r26, 0x2414
    lbzx    r0, r31, r0
    slwi    r3, r0, 2
    addi    r0, r3, 0x5dbc
    lwzx    r3, r31, r0
    lfs     f0, 0x54(r3)
branch_0x8027f0ec:
    fsubs   f0, f31, f0
    addi    r23, r16, 0x414
    add     r23, r31, r23
    stfs    f0, 0x0(r22)
    lhz     r0, 0x0(r23)
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x3
    bne-    branch_0x8027f118
    addi    r0, r20, 0x14
    stfsx   f27, r31, r0
    b       branch_0x8027f6b0

branch_0x8027f118:
    cmpwi   r0, 0x1
    bne-    branch_0x8027f220
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x5dac(r31)
    stw     r0, 0x254(sp)
    stw     r18, 0x250(sp)
    lfd     f1, 0x250(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027f170
    lwz     r5, 0x0(r25)
    lwz     r0, 0x4(r25)
    lwz     r4, 0x24c(sp)
    stw     r5, 0x1a8(sp)
    lwz     r3, -0x60c0(r13)
    stw     r0, 0x1ac(sp)
    lfs     f1, -0x7f0(rtoc)
    lwz     r0, 0x8(r25)
    stw     r0, 0x1b0(sp)
    bl      newSplash__14TSplashManagerFQ29JGeometry8TVec3_f_f
branch_0x8027f170:
    add     r24, r31, r20
    lwz     r3, gpMSound(r13)
    lfs     f1, 0x2014(r24)
    addi    r22, r24, 0x2014
    addi    r5, r29, 0x814
    li      r4, 0x6800
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    addi    r0, r26, 0x2414
    lfs     f1, 0x0(r22)
    lbzx    r0, r31, r0
    slwi    r3, r0, 2
    addi    r0, r3, 0x5dbc
    lwzx    r3, r31, r0
    lfs     f0, 0x2c(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r22)
    lwz     r3, gpCamera(r13)
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8027f1dc
    lfs     f23, 0x5d8c(r31)
    b       branch_0x8027f1e0

branch_0x8027f1dc:
    lfs     f23, 0x5d88(r31)
branch_0x8027f1e0:
    bl      rand
    xoris   r0, r3, 0x8000
    stw     r0, 0x254(sp)
    stw     r18, 0x250(sp)
    lfd     f0, 0x250(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f30, f0
    fcmpo   cr0, f0, f23
    bge-    branch_0x8027f218
    lhz     r0, 0x0(r23)
    clrrwi  r0, r0, 4
    ori     r0, r0, 0x2
    sth     r0, 0x0(r23)
    b       branch_0x8027f220

branch_0x8027f218:
    stfs    f27, 0x14(r24)
    b       branch_0x8027f6b0

branch_0x8027f220:
    lwz     r0, 0x248(sp)
    add     r22, r31, r20
    stw     r0, 0x2914(r22)
    lwz     r3, 0x248(sp)
    lwzu    r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8027f6b0
    lwz     r6, 0x0(r25)
    addi    r4, r30, 0xc
    lwz     r0, 0x4(r25)
    li      r5, 0xf
    stw     r6, 0x1c(r30)
    stw     r0, 0x20(r30)
    lwz     r0, 0x8(r25)
    stw     r0, 0x24(r30)
    stw     r26, 0x74(r30)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8027f6b0
    stfs    f27, 0x14(r22)
    b       branch_0x8027f6b0

branch_0x8027f284:
    lbz     r0, -0x6084(r13)
    extsb.  r0, r0
    bne-    branch_0x8027f298
    li      r0, 0x1
    stb     r0, -0x6084(r13)
branch_0x8027f298:
    add     r19, r31, r20
    addi    r24, r19, 0x2014
    addi    r25, r29, 0x818
    lfs     f3, 0x2014(r19)
    addi    r22, r29, 0x81c
    lfs     f1, 0x818(r29)
    addi    r28, r29, 0x814
    lfs     f2, 0x81c(r29)
    lfs     f0, 0x814(r29)
    fmadds  f1, f28, f3, f1
    li      r21, 0x1
    stfs    f0, 0x78(r30)
    li      r0, 0x4
    addi    r4, r30, 0x78
    stfs    f1, 0x7c(r30)
    stfs    f2, 0x80(r30)
    stfs    f3, 0x84(r30)
    stw     r21, 0x88(r30)
    stw     r0, 0x90(r30)
    lwz     r3, gpMap(r13)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x8027f5d0
    addi    r23, r16, 0x414
    lwz     r27, 0x94(r30)
    add     r23, r31, r23
    lhz     r0, 0x0(r23)
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    bne-    branch_0x8027f318
    stfs    f27, 0x14(r19)
    b       branch_0x8027f6b0

branch_0x8027f318:
    lwz     r3, 0x248(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x8027f38c
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8027f334
    b       branch_0x8027f338

branch_0x8027f334:
    li      r21, 0x0
branch_0x8027f338:
    clrlwi  r0, r21, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8027f34c
    li      r0, 0x0
    b       branch_0x8027f350

branch_0x8027f34c:
    li      r0, 0x1
branch_0x8027f350:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027f38c
    addi    r0, r26, 0x2414
    lfs     f1, 0x0(r24)
    lbzx    r0, r31, r0
    lfs     f2, 0x0(r25)
    slwi    r3, r0, 2
    addi    r0, r3, 0x5dbc
    lwzx    r3, r31, r0
    lfs     f0, 0x2c(r3)
    fmadds  f0, f1, f0, f31
    fcmpo   cr0, f2, f0
    bge-    branch_0x8027f38c
    stfs    f27, 0x14(r19)
    b       branch_0x8027f6b0

branch_0x8027f38c:
    lwz     r0, 0x44(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x8027f3d0
    lwz     r0, 0x0(r28)
    addi    r4, r30, 0xc
    lwz     r3, 0x4(r28)
    li      r5, 0xf
    stw     r0, 0x1c(r30)
    stw     r3, 0x20(r30)
    lwz     r0, 0x8(r28)
    stw     r0, 0x24(r30)
    stw     r26, 0x74(r30)
    lwz     r3, 0x44(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8027f3d0:
    lfs     f1, 0x0(r25)
    addi    r3, sp, 0x154
    lfs     f0, 0x38(r27)
    lfs     f2, 0x0(r28)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r27)
    lfs     f4, 0x0(r22)
    lfs     f3, 0x3c(r27)
    fmadds  f0, f2, f1, f0
    lfs     f1, 0x40(r27)
    lwz     r0, 0x34(r27)
    lwz     r4, 0x38(r27)
    fmadds  f0, f4, f3, f0
    stw     r0, 0x154(sp)
    fadds   f1, f1, f0
    stw     r4, 0x158(sp)
    lwz     r0, 0x3c(r27)
    stw     r0, 0x15c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x154(sp)
    lwz     r3, 0x158(sp)
    stw     r0, 0x204(sp)
    lwz     r0, 0x15c(sp)
    stw     r3, 0x208(sp)
    stw     r0, 0x20c(sp)
    lfs     f1, 0x0(r28)
    lfs     f0, 0x204(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r28)
    lfs     f1, 0x0(r25)
    lfs     f0, 0x208(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r25)
    lfs     f1, 0x0(r22)
    lfs     f0, 0x20c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r22)
    lhz     r0, 0x0(r23)
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x1
    bne-    branch_0x8027f5c8
    lfs     f1, 0x0(r24)
    addi    r3, sp, 0x114
    lwz     r0, 0x34(r27)
    lwz     r4, 0x38(r27)
    stw     r0, 0x114(sp)
    stw     r4, 0x118(sp)
    lwz     r0, 0x3c(r27)
    stw     r0, 0x11c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x114(sp)
    addi    r3, sp, 0x144
    lwz     r5, 0x118(sp)
    addi    r4, sp, 0x1ec
    stw     r0, 0x1ec(sp)
    lwz     r0, 0x11c(sp)
    stw     r5, 0x1f0(sp)
    stw     r0, 0x1f4(sp)
    lwz     r0, 0x0(r28)
    lwz     r5, 0x4(r28)
    stw     r0, 0x144(sp)
    stw     r5, 0x148(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x14c(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x144(sp)
    lwz     r3, 0x148(sp)
    stw     r0, 0x238(sp)
    lwz     r0, 0x14c(sp)
    stw     r3, 0x23c(sp)
    stw     r0, 0x240(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x5db0(r31)
    stw     r0, 0x254(sp)
    stw     r18, 0x250(sp)
    lfd     f1, 0x250(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027f53c
    lwz     r0, 0x238(sp)
    mr      r4, r14
    lwz     r3, 0x23c(sp)
    stw     r0, 0x18c(sp)
    lwz     r0, 0x240(sp)
    stw     r3, 0x190(sp)
    lwz     r3, -0x60c0(r13)
    stw     r0, 0x194(sp)
    lfs     f1, -0x7f0(rtoc)
    bl      newSplash__14TSplashManagerFQ29JGeometry8TVec3_f_f
branch_0x8027f53c:
    lfs     f1, 0x0(r24)
    addi    r5, r29, 0x814
    lwz     r3, gpMSound(r13)
    li      r4, 0x6800
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    addi    r0, r26, 0x2414
    lfs     f1, 0x0(r24)
    lbzx    r0, r31, r0
    slwi    r3, r0, 2
    addi    r0, r3, 0x5dbc
    lwzx    r3, r31, r0
    lfs     f0, 0x2c(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r24)
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x5d90(r31)
    stw     r0, 0x254(sp)
    stw     r18, 0x250(sp)
    lfd     f1, 0x250(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8027f5c0
    lhz     r0, 0x0(r23)
    clrrwi  r0, r0, 4
    ori     r0, r0, 0x3
    sth     r0, 0x0(r23)
    b       branch_0x8027f5c8

branch_0x8027f5c0:
    stfs    f27, 0x14(r19)
    b       branch_0x8027f6b0

branch_0x8027f5c8:
    stw     r27, 0x2914(r19)
    b       branch_0x8027f6b0

branch_0x8027f5d0:
    lfs     f0, 0x0(r23)
    fcmpo   cr0, f0, f27
    cror    2, 1, 2
    bne-    branch_0x8027f698
    li      r0, 0x0
    lwz     r3, gpMap(r13)
    stw     r0, 0x234(sp)
    addi    r4, sp, 0x234
    lfs     f1, 0x0(r28)
    lfs     f2, 0x0(r25)
    lfs     f3, 0x0(r22)
    bl      checkRoofIgnoreWaterThrough__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x234(sp)
    fmr     f23, f1
    cmplwi  r3, 0x0
    beq-    branch_0x8027f698
    lwzu    r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8027f654
    lwz     r0, 0x0(r28)
    addi    r4, r30, 0xc
    lwz     r6, 0x4(r28)
    li      r5, 0xf
    stw     r0, 0x1c(r30)
    stw     r6, 0x20(r30)
    lwz     r0, 0x8(r28)
    stw     r0, 0x24(r30)
    stw     r26, 0x74(r30)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8027f654:
    lfs     f0, 0x0(r25)
    lfs     f1, 0x0(r24)
    fadds   f0, f0, f1
    fcmpo   cr0, f0, f23
    ble-    branch_0x8027f698
    fsubs   f0, f23, f1
    addi    r3, r16, 0x414
    add     r3, r31, r3
    stfs    f0, 0x0(r25)
    stfs    f27, 0x1414(r29)
    stfs    f27, 0x0(r23)
    stfs    f27, 0x141c(r29)
    lhz     r0, 0x0(r3)
    clrrwi  r0, r0, 4
    ori     r0, r0, 0x1
    sth     r0, 0x0(r3)
    b       branch_0x8027f6b0

branch_0x8027f698:
    addi    r3, r16, 0x414
    add     r3, r31, r3
    lhz     r0, 0x0(r3)
    clrrwi  r0, r0, 4
    ori     r0, r0, 0x1
    sth     r0, 0x0(r3)
branch_0x8027f6b0:
    addi    r26, r26, 0x1
    addi    r16, r16, 0x2
    addi    r20, r20, 0x4
    addi    r15, r15, 0xc
branch_0x8027f6c0:
    lhz     r0, 0x12(r31)
    cmpw    r26, r0
    blt+    branch_0x8027ef0c
    lfs     f25, -0x834(rtoc)
    li      r20, -0x1
    lfs     f24, -0x83c(rtoc)
    li      r26, -0x1
    lfs     f23, -0x7e4(rtoc)
    lfs     f31, -0x7e8(rtoc)
    li      r27, 0x0
    lfs     f30, -0x828(rtoc)
    li      r19, 0x0
    li      r22, 0x0
    li      r16, 0x0
    b       branch_0x8027fa50

branch_0x8027f6fc:
    addi    r0, r16, 0x414
    lhzx    r0, r31, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    beq-    branch_0x8027f740
    bge-    branch_0x8027f720
    cmpwi   r0, 0x1
    bge-    branch_0x8027f72c
    b       branch_0x8027fa40

branch_0x8027f720:
    cmpwi   r0, 0x4
    bge-    branch_0x8027fa40
    b       branch_0x8027f8d4

branch_0x8027f72c:
    addi    r0, r22, 0x14
    lfsx    f0, r31, r0
    fsubs   f0, f0, f30
    stfsx   f0, r31, r0
    b       branch_0x8027fa40

branch_0x8027f740:
    add     r28, r31, r22
    lfs     f1, 0x5d68(r31)
    addi    r25, r28, 0x14
    lfs     f0, 0x14(r28)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8027f75c
    stfs    f1, 0x0(r25)
branch_0x8027f75c:
    add     r23, r31, r19
    lwz     r3, gpMSound(r13)
    lfs     f1, -0x834(rtoc)
    addi    r5, r23, 0x814
    li      r4, 0x804
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r3, 0x2914(r28)
    bl      isWaterSlip__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8027f79c
    lfs     f1, 0x94(r17)
    b       branch_0x8027f7a0

branch_0x8027f79c:
    lfs     f1, 0xa0(r17)
branch_0x8027f7a0:
    lfs     f0, 0x0(r25)
    addi    r0, r27, 0x2414
    addi    r24, r23, 0x814
    fsubs   f0, f0, f1
    stfs    f0, 0x0(r25)
    lbzx    r0, r31, r0
    lwz     r3, gpPollution(r13)
    slwi    r4, r0, 2
    lfs     f1, 0x814(r23)
    addi    r0, r4, 0x5dbc
    lfs     f2, 0x818(r23)
    lwzx    r4, r31, r0
    lfs     f3, 0x81c(r23)
    lfs     f0, 0x40(r4)
    fmuls   f4, f31, f0
    bl      clean__17TPollutionManagerFffff
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8027fa40
    cmpwi   r20, 0x0
    bge-    branch_0x8027f7fc
    mr      r20, r27
    b       branch_0x8027fa40

branch_0x8027f7fc:
    lwz     r4, 0x0(r24)
    mulli   r3, r20, 0xc
    lwz     r0, 0x4(r24)
    stw     r4, 0x130(sp)
    addi    r4, r3, 0x814
    addi    r3, sp, 0x130
    stw     r0, 0x134(sp)
    add     r4, r31, r4
    lwz     r0, 0x8(r24)
    stw     r0, 0x138(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x130(sp)
    slwi    r3, r20, 2
    add     r3, r31, r3
    lwz     r4, 0x134(sp)
    stw     r0, 0x228(sp)
    lwz     r0, 0x138(sp)
    addi    r5, r28, 0x2014
    stw     r4, 0x22c(sp)
    addi    r4, r3, 0x2014
    stw     r0, 0x230(sp)
    lfs     f0, 0x22c(sp)
    lfs     f2, 0x230(sp)
    fmuls   f0, f0, f0
    lfs     f1, 0x228(sp)
    fmuls   f2, f2, f2
    lfs     f4, 0x2014(r28)
    lfs     f3, 0x2014(r3)
    fmadds  f0, f1, f1, f0
    lfs     f5, 0x5da0(r31)
    fadds   f1, f4, f3
    fadds   f2, f2, f0
    fmuls   f3, f5, f1
    fcmpo   cr0, f2, f25
    cror    2, 0, 2
    bne-    branch_0x8027f890
    b       branch_0x8027f8ac

branch_0x8027f890:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f24, f1
    fnmsubs  f0, f2, f0, f23
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x8027f8ac:
    fcmpo   cr0, f2, f3
    bge-    branch_0x8027f8cc
    lfs     f0, 0x0(r5)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x0(r25)
    stfs    f0, 0x14(r3)
    stfs    f25, 0x0(r25)
    b       branch_0x8027fa40

branch_0x8027f8cc:
    mr      r20, r27
    b       branch_0x8027fa40

branch_0x8027f8d4:
    add     r23, r31, r22
    lfs     f1, 0x5d6c(r31)
    addi    r25, r23, 0x14
    lfs     f0, 0x14(r23)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8027f8f0
    stfs    f1, 0x0(r25)
branch_0x8027f8f0:
    lwz     r3, 0x2914(r23)
    bl      isWaterSlip__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8027f908
    lfs     f1, 0x94(r17)
    b       branch_0x8027f90c

branch_0x8027f908:
    lfs     f1, 0xa0(r17)
branch_0x8027f90c:
    lfs     f0, 0x0(r25)
    add     r4, r31, r19
    addi    r0, r27, 0x2414
    fsubs   f0, f0, f1
    addi    r24, r4, 0x814
    stfs    f0, 0x0(r25)
    lbzx    r0, r31, r0
    lwz     r3, gpPollution(r13)
    slwi    r5, r0, 2
    lfs     f1, 0x814(r4)
    addi    r0, r5, 0x5dbc
    lfs     f2, 0x818(r4)
    lwzx    r5, r31, r0
    lfs     f3, 0x81c(r4)
    lfs     f0, 0x40(r5)
    fmuls   f4, f31, f0
    bl      clean__17TPollutionManagerFffff
    lhz     r0, 0x5d60(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8027fa40
    cmpwi   r26, 0x0
    bge-    branch_0x8027f96c
    mr      r26, r27
    b       branch_0x8027fa40

branch_0x8027f96c:
    lwz     r4, 0x0(r24)
    mulli   r3, r26, 0xc
    lwz     r0, 0x4(r24)
    stw     r4, 0x124(sp)
    addi    r4, r3, 0x814
    addi    r3, sp, 0x124
    stw     r0, 0x128(sp)
    add     r4, r31, r4
    lwz     r0, 0x8(r24)
    stw     r0, 0x12c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x124(sp)
    slwi    r3, r26, 2
    add     r3, r31, r3
    lwz     r4, 0x128(sp)
    stw     r0, 0x21c(sp)
    lwz     r0, 0x12c(sp)
    addi    r5, r23, 0x2014
    stw     r4, 0x220(sp)
    addi    r4, r3, 0x2014
    stw     r0, 0x224(sp)
    lfs     f0, 0x220(sp)
    lfs     f2, 0x224(sp)
    fmuls   f0, f0, f0
    lfs     f1, 0x21c(sp)
    fmuls   f2, f2, f2
    lfs     f4, 0x2014(r23)
    lfs     f3, 0x2014(r3)
    fmadds  f0, f1, f1, f0
    lfs     f5, 0x5da0(r31)
    fadds   f1, f4, f3
    fadds   f2, f2, f0
    fmuls   f3, f5, f1
    fcmpo   cr0, f2, f25
    cror    2, 0, 2
    bne-    branch_0x8027fa00
    b       branch_0x8027fa1c

branch_0x8027fa00:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f24, f1
    fnmsubs  f0, f2, f0, f23
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x8027fa1c:
    fcmpo   cr0, f2, f3
    bge-    branch_0x8027fa3c
    lfs     f0, 0x0(r5)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x0(r25)
    stfs    f0, 0x14(r3)
    stfs    f25, 0x0(r25)
    b       branch_0x8027fa40

branch_0x8027fa3c:
    mr      r26, r27
branch_0x8027fa40:
    addi    r27, r27, 0x1
    addi    r19, r19, 0xc
    addi    r22, r22, 0x4
    addi    r16, r16, 0x2
branch_0x8027fa50:
    lhz     r0, 0x12(r31)
    cmpw    r27, r0
    blt+    branch_0x8027f6fc
    mr      r3, r31
    bl      garbageCollect__18TModelWaterManagerFv
    lmw     r14, 0x258(sp)
    lwz     r0, 0x2ec(sp)
    lfd     f31, 0x2e0(sp)
    lfd     f30, 0x2d8(sp)
    mtlr    r0
    lfd     f29, 0x2d0(sp)
    lfd     f28, 0x2c8(sp)
    lfd     f27, 0x2c0(sp)
    lfd     f26, 0x2b8(sp)
    lfd     f25, 0x2b0(sp)
    lfd     f24, 0x2a8(sp)
    lfd     f23, 0x2a0(sp)
    addi    sp, sp, 0x2e8
    blr


.globl isWaterSlip__12TBGCheckDataCFv
isWaterSlip__12TBGCheckDataCFv: # 0x8027fa9c
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x500
    beq-    branch_0x8027fac0
    cmplwi  r0, 0x4004
    beq-    branch_0x8027fac0
    cmplwi  r0, 0x8004
    beq-    branch_0x8027fac0
    cmplwi  r0, 0xc004
    bne-    branch_0x8027fac8
branch_0x8027fac0:
    li      r3, 0x1
    blr

branch_0x8027fac8:
    li      r3, 0x0
    blr


.globl garbageCollect__18TModelWaterManagerFv
garbageCollect__18TModelWaterManagerFv: # 0x8027fad0
    stwu    sp, -0x20(sp)
    li      r4, 0x0
    li      r5, 0x0
    stw     r31, 0x1c(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r30, 0x18(sp)
    li      r8, 0x0
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    lfs     f1, -0x834(rtoc)
    b       branch_0x8027fbc0

branch_0x8027fb00:
    add     r29, r3, r8
    lfs     f0, 0x14(r29)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    beq-    branch_0x8027fbb0
    clrlwi  r10, r4, 16
    cmpw    r5, r10
    beq-    branch_0x8027fbac
    slwi    r0, r10, 2
    add     r28, r3, r0
    stfs    f0, 0x14(r28)
    add     r11, r3, r7
    slwi    r0, r10, 1
    lhz     r9, 0x414(r11)
    add     r12, r3, r0
    mulli   r0, r10, 0xc
    sth     r9, 0x414(r12)
    lha     r9, 0x614(r11)
    add     r30, r3, r6
    add     r31, r3, r0
    sth     r9, 0x614(r12)
    addi    r9, r5, 0x2414
    addi    r0, r10, 0x2414
    lwz     r11, 0x814(r30)
    lwz     r10, 0x818(r30)
    stw     r11, 0x814(r31)
    stw     r10, 0x818(r31)
    lwz     r10, 0x81c(r30)
    stw     r10, 0x81c(r31)
    lwz     r11, 0x1414(r30)
    lwz     r10, 0x1418(r30)
    stw     r11, 0x1414(r31)
    stw     r10, 0x1418(r31)
    lwz     r10, 0x141c(r30)
    stw     r10, 0x141c(r31)
    lfs     f0, 0x2014(r29)
    stfs    f0, 0x2014(r28)
    lbzx    r9, r3, r9
    stbx    r9, r3, r0
    lwz     r0, 0x2514(r29)
    stw     r0, 0x2514(r28)
    lwz     r0, 0x2914(r29)
    stw     r0, 0x2914(r28)
branch_0x8027fbac:
    addi    r4, r4, 0x1
branch_0x8027fbb0:
    addi    r5, r5, 0x1
    addi    r6, r6, 0xc
    addi    r7, r7, 0x2
    addi    r8, r8, 0x4
branch_0x8027fbc0:
    lhz     r0, 0x12(r3)
    cmpw    r5, r0
    blt+    branch_0x8027fb00
    sth     r4, 0x12(r3)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl wind__18TModelWaterManagerFRCQ29JGeometry8TVec3_f_
wind__18TModelWaterManagerFRCQ29JGeometry8TVec3_f_: # 0x8027fbe8
    li      r8, 0x0
    li      r5, 0x0
    li      r6, 0x0
    b       branch_0x8027fc4c

branch_0x8027fbf8:
    addi    r0, r6, 0x414
    lhzx    r0, r3, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x1
    bne-    branch_0x8027fc40
    add     r7, r3, r5
    lfs     f0, 0x0(r4)
    lfs     f1, 0x1414(r7)
    fadds   f0, f1, f0
    stfs    f0, 0x1414(r7)
    lfs     f1, 0x1418(r7)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x1418(r7)
    lfs     f1, 0x141c(r7)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x141c(r7)
branch_0x8027fc40:
    addi    r8, r8, 0x1
    addi    r5, r5, 0xc
    addi    r6, r6, 0x2
branch_0x8027fc4c:
    lhz     r0, 0x12(r3)
    cmpw    r8, r0
    blt+    branch_0x8027fbf8
    blr


.globl askDoWaterHitCheck__18TModelWaterManagerFv
askDoWaterHitCheck__18TModelWaterManagerFv: # 0x8027fc5c
    lwz     r4, 0x5e00(r3)
    lbz     r3, 0x5e04(r3)
    divw    r0, r4, r3
    mullw   r0, r0, r3
    subf.   r0, r0, r4
    bne-    branch_0x8027fc7c
    li      r3, 0x1
    blr

branch_0x8027fc7c:
    li      r3, 0x0
    blr


.globl emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo: # 0x8027fc84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    addi    r31, r29, 0x18
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    lwz     r0, 0x18(r4)
    cmpwi   r0, 0x0
    mr      r30, r0
    bne-    branch_0x8027fcf4
    li      r3, 0x0
    b       branch_0x8027fd08


.incbin "./baserom/code/Text_0x80005600.bin", 0x27a6c4, 0x8027fcc8 - 0x8027fcc4
branch_0x8027fcc8:
    lhz     r3, 0x12(r28)
    lha     r0, 0x10(r28)
    cmpw    r3, r0
    bge-    branch_0x8027fcfc
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      makeEmit__18TModelWaterManagerFRC14TWaterEmitInfo
    lhz     r3, 0x12(r28)
    subi    r30, r30, 0x1
    addi    r0, r3, 0x1
    sth     r0, 0x12(r28)
branch_0x8027fcf4:
    cmpwi   r30, 0x0
    bgt+    branch_0x8027fcc8
branch_0x8027fcfc:
    lwz     r0, 0x0(r31)
    subf    r0, r30, r0
    clrlwi  r3, r0, 24
branch_0x8027fd08:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl makeEmit__18TModelWaterManagerFRC14TWaterEmitInfo
makeEmit__18TModelWaterManagerFRC14TWaterEmitInfo: # 0x8027fd28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    lis     r31, 0x4330
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    mr      r29, r3
    lha     r4, 0x2c(r4)
    lhz     r0, 0x12(r3)
    xoris   r3, r4, 0x8000
    lfd     f1, -0x830(rtoc)
    stw     r3, 0x64(sp)
    slwi    r0, r0, 2
    add     r3, r29, r0
    stw     r31, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r3)
    lhz     r0, 0x12(r29)
    lwz     r3, 0x134(r30)
    slwi    r0, r0, 1
    ori     r4, r3, 0x1
    add     r3, r29, r0
    sth     r4, 0x414(r3)
    lhz     r0, 0x12(r29)
    lha     r4, 0x40(r30)
    slwi    r0, r0, 1
    add     r3, r29, r0
    sth     r4, 0x614(r3)
    lhz     r0, 0x12(r29)
    lwz     r3, 0x70(r30)
    mulli   r4, r0, 0xc
    lwz     r0, 0x74(r30)
    addi    r4, r4, 0x814
    add     r4, r29, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x78(r30)
    stw     r0, 0x8(r4)
    lfs     f0, -0x834(rtoc)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    bl      rand
    clrlwi  r3, r3, 24
    lfd     f2, -0x830(rtoc)
    subi    r0, r3, 0x80
    lfs     f0, -0x7e0(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    stw     r31, 0x58(sp)
    lfd     f1, 0x58(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    bl      rand
    clrlwi  r3, r3, 24
    lfd     f2, -0x830(rtoc)
    subi    r0, r3, 0x80
    lfs     f0, -0x7e0(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r31, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    bl      rand
    clrlwi  r3, r3, 24
    lfd     f2, -0x830(rtoc)
    subi    r0, r3, 0x80
    lfs     f0, -0x7e0(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x4c(sp)
    addi    r3, sp, 0x3c
    mr      r4, r3
    stw     r31, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f1, 0xa8(r30)
    bl      PSVECScale
    addi    r4, sp, 0x3c
    addi    r3, r30, 0x54
    addi    r5, r4, 0x0
    bl      PSVECAdd
    lfs     f1, -0x834(rtoc)
    lfs     f0, 0x3c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8027febc
    lfs     f0, 0x40(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8027febc
    lfs     f0, 0x44(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8027febc
    lfs     f0, -0x7dc(rtoc)
    stfs    f0, 0x40(sp)
branch_0x8027febc:
    addi    r3, sp, 0x3c
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    bl      rand
    clrlwi  r3, r3, 24
    lfd     f4, -0x830(rtoc)
    subi    r0, r3, 0x80
    lfs     f2, -0x7e0(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, 0xd0(r30)
    stw     r0, 0x4c(sp)
    lis     r31, 0x4330
    addi    r3, sp, 0x3c
    lfs     f0, 0xbc(r30)
    stw     r31, 0x48(sp)
    mr      r4, r3
    lfd     f3, 0x48(sp)
    fsubs   f3, f3, f4
    fmuls   f2, f3, f2
    fmadds  f1, f2, f1, f0
    bl      PSVECScale
    addi    r3, sp, 0x3c
    addi    r4, r30, 0x8c
    addi    r5, r3, 0x0
    bl      PSVECAdd
    lhz     r0, 0x12(r29)
    lfs     f0, 0x3c(sp)
    mulli   r0, r0, 0xc
    add     r3, r29, r0
    stfs    f0, 0x1414(r3)
    lhz     r0, 0x12(r29)
    lfs     f0, 0x40(sp)
    mulli   r0, r0, 0xc
    add     r3, r29, r0
    stfs    f0, 0x1418(r3)
    lhz     r0, 0x12(r29)
    lfs     f0, 0x44(sp)
    mulli   r0, r0, 0xc
    add     r3, r29, r0
    stfs    f0, 0x141c(r3)
    bl      rand
    clrlwi  r3, r3, 24
    lhz     r0, 0x12(r29)
    subi    r3, r3, 0x80
    lfd     f4, -0x830(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x7e0(rtoc)
    stw     r3, 0x54(sp)
    slwi    r0, r0, 2
    lfs     f1, 0xf8(r30)
    add     r3, r29, r0
    stw     r31, 0x50(sp)
    lfs     f0, 0xe4(r30)
    li      r4, 0x0
    lfd     f3, 0x50(sp)
    fsubs   f3, f3, f4
    fmuls   f2, f3, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x2014(r3)
    lhz     r0, 0x12(r29)
    lha     r5, 0x148(r30)
    add     r3, r29, r0
    stb     r5, 0x2414(r3)
    lhz     r0, 0x12(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    stw     r4, 0x2914(r3)
    lhz     r0, 0x12(r29)
    slwi    r0, r0, 2
    add     r3, r29, r0
    stw     r4, 0x2514(r3)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl askHitWaterParticleOnGround__18TModelWaterManagerFRCQ29JGeometry8TVec3_f_
askHitWaterParticleOnGround__18TModelWaterManagerFRCQ29JGeometry8TVec3_f_: # 0x8027fff4
    lfs     f0, -0x7d8(rtoc)
    li      r8, 0x0
    li      r5, 0x0
    li      r6, 0x0
    b       branch_0x80280074

branch_0x80280008:
    addi    r0, r6, 0x414
    lhzx    r0, r3, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x2
    bne-    branch_0x80280068
    add     r7, r3, r5
    lfs     f4, 0x4(r4)
    lfs     f2, 0x818(r7)
    lfs     f3, 0x0(r4)
    lfs     f1, 0x814(r7)
    fsubs   f4, f4, f2
    lfs     f2, 0x8(r4)
    fsubs   f3, f3, f1
    lfs     f1, 0x81c(r7)
    fabs    f4, f4
    fsubs   f1, f2, f1
    fabs    f2, f3
    fabs    f3, f1
    fadds   f1, f2, f4
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80280068
    li      r3, 0x1
    blr

branch_0x80280068:
    addi    r8, r8, 0x1
    addi    r5, r5, 0xc
    addi    r6, r6, 0x2
branch_0x80280074:
    lhz     r0, 0x12(r3)
    cmpw    r8, r0
    blt+    branch_0x80280008
    li      r3, 0x0
    blr


.globl loadAfter__18TModelWaterManagerFv
loadAfter__18TModelWaterManagerFv: # 0x80280088
    mflr    r0
    lis     r4, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r4, 0x1ca0
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
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
    lis     r4, 0x4
    stw     r0, 0x5d34(r29)
    lwz     r3, -0x6060(r13)
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x3c
    ble-    branch_0x802800f8
    li      r3, 0x3c
branch_0x802800f8:
    xoris   r0, r3, 0x8000
    lwz     r4, gpMarDirector(r13)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lbz     r3, 0x7c(r4)
    stw     r0, 0x58(sp)
    lfd     f2, -0x830(rtoc)
    cmplwi  r3, 0x1
    lfd     f1, 0x58(sp)
    lfs     f0, -0x7d4(rtoc)
    fsubs   f1, f1, f2
    fdivs   f2, f1, f0
    bne-    branch_0x8028013c
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x2
    bne-    branch_0x8028013c
    lfs     f2, -0x828(rtoc)
branch_0x8028013c:
    lfs     f0, -0x828(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8028015c
    lfs     f1, -0x7cc(rtoc)
    lfs     f0, -0x7d0(rtoc)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x5e0c(r29)
    b       branch_0x80280168

branch_0x8028015c:
    lhz     r0, 0x5d60(r29)
    rlwinm  r0, r0, 0, 24, 22
    sth     r0, 0x5d60(r29)
branch_0x80280168:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl load__18TModelWaterManagerFR20JSUMemoryInputStream
load__18TModelWaterManagerFR20JSUMemoryInputStream: # 0x80280184
    mflr    r0
    lis     r6, 0x803a
    stw     r0, 0x4(sp)
    lis     r5, 0x8040
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stfd    f29, 0x60(sp)
    stfd    f28, 0x58(sp)
    stfd    f27, 0x50(sp)
    stmw    r22, 0x28(sp)
    addi    r31, r3, 0x0
    addi    r30, r6, 0x1a08
    subi    r28, r5, 0x3d58
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r0, 0x100
    sth     r0, 0x10(r31)
    li      r27, 0x0
    li      r22, 0x0
    sth     r27, 0x12(r31)
    li      r24, 0x0
    li      r25, 0x0
    lfs     f31, -0x834(rtoc)
    li      r26, 0x0
    fmr     f30, f31
    fmr     f29, f31
    fmr     f28, f31
    fmr     f27, f31
branch_0x802801f4:
    add     r23, r31, r27
    stfs    f31, 0x14(r23)
    addi    r3, r24, 0x2d14
    add     r4, r31, r26
    li      r29, 0x0
    sth     r29, 0x414(r4)
    add     r5, r31, r25
    addi    r0, r22, 0x2414
    sth     r29, 0x614(r4)
    add     r3, r31, r3
    stfs    f31, 0x814(r5)
    stfs    f30, 0x818(r5)
    stfs    f29, 0x81c(r5)
    stfs    f28, 0x1414(r5)
    stfs    f27, 0x1418(r5)
    stfs    f31, 0x141c(r5)
    stbx    r29, r31, r0
    stw     r29, 0x2914(r23)
    bl      PSMTXIdentity
    addi    r22, r22, 0x1
    stw     r29, 0x2514(r23)
    cmpwi   r22, 0x100
    addi    r24, r24, 0x30
    addi    r25, r25, 0xc
    addi    r26, r26, 0x2
    addi    r27, r27, 0x4
    blt+    branch_0x802801f4
    lwz     r0, 0x50(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80280270
    li      r29, 0x1
branch_0x80280270:
    clrlwi. r0, r29, 24
    bne-    branch_0x802802a8
    lfs     f1, -0x7c8(rtoc)
    lis     r4, 0x100
    lfs     f2, -0x7c4(rtoc)
    addi    r3, r28, 0xc
    fmr     f3, f1
    fmr     f4, f2
    addi    r4, r4, 0x1
    li      r5, 0x1
    lis     r6, 0x5c00
    bl      initHitActor__9THitActorFUlUsiffff
    li      r0, -0x1
    stw     r0, 0x74(r28)
branch_0x802802a8:
    lfs     f0, -0x7c0(rtoc)
    li      r3, 0x20
    stfs    f0, 0x5d14(r31)
    lfs     f0, -0x820(rtoc)
    stfs    f0, 0x5d18(r31)
    lfs     f0, -0x7bc(rtoc)
    stfs    f0, 0x5d1c(r31)
    lwz     r0, -0x870(rtoc)
    stw     r0, 0x20(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x5d20(r31)
    lwz     r0, -0x86c(rtoc)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x5d24(r31)
    lfs     f0, -0x7b8(rtoc)
    stfs    f0, 0x5d28(r31)
    stfs    f0, 0x5d2c(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80280308
    lis     r4, 0x803e
    subi    r0, r4, 0x59e8
    stw     r0, 0x0(r3)
branch_0x80280308:
    stw     r3, 0x5d30(r31)
    li      r4, 0x100
    lwz     r3, 0x5d30(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    li      r24, 0x0
    stw     r24, 0x5d34(r31)
    addi    r3, r30, 0x2b0
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r22, r3, 0x0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x8028035c
    stw     r24, 0x28(r23)
    addi    r3, r23, 0x0
    addi    r4, r22, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x8028035c:
    stw     r23, 0x5d38(r31)
    addi    r3, r30, 0x2cc
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r22, r3, 0x0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x80280394
    li      r24, 0x0
    stw     r24, 0x28(r23)
    addi    r3, r23, 0x0
    addi    r4, r22, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x80280394:
    stw     r23, 0x5d3c(r31)
    addi    r3, r30, 0x2e8
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r22, r3, 0x0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x802803cc
    li      r24, 0x0
    stw     r24, 0x28(r23)
    addi    r3, r23, 0x0
    addi    r4, r22, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x802803cc:
    stw     r23, 0x5d40(r31)
    addi    r3, r30, 0x304
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r22, r3, 0x0
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x80280404
    li      r24, 0x0
    stw     r24, 0x28(r23)
    addi    r3, r23, 0x0
    addi    r4, r22, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r24, 0x50(r23)
branch_0x80280404:
    stw     r23, 0x5d44(r31)
    addi    r3, r30, 0x324
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x5d48(r31)
    addi    r3, r30, 0x348
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x5d4c(r31)
    addi    r3, r30, 0x36c
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x5d50(r31)
    addi    r3, r30, 0x388
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x5d54(r31)
    addi    r3, r30, 0x3ac
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x5d58(r31)
    li      r0, 0x80
    lis     r5, 0x803e
    stb     r0, 0x5d5c(r31)
    li      r0, 0x50
    lis     r4, 0x803b
    stb     r0, 0x5d5d(r31)
    li      r0, 0xc8
    lis     r3, 0x803b
    stb     r0, 0x5d5e(r31)
    li      r6, 0x0
    li      r0, 0x16f
    stb     r6, 0x5d5f(r31)
    li      r7, 0x1
    li      r6, 0x96
    sth     r0, 0x5d60(r31)
    li      r0, 0xff
    subi    r26, r5, 0x2758
    stb     r7, 0x5d62(r31)
    subi    r27, r4, 0x42c4
    subi    r28, r3, 0x42d0
    stb     r7, 0x5d63(r31)
    li      r25, 0x0
    li      r29, 0x0
    stb     r6, 0x5d64(r31)
    stb     r0, 0x5d65(r31)
    lfs     f0, -0x7b4(rtoc)
    stfs    f0, 0x5d68(r31)
    stfs    f0, 0x5d6c(r31)
    lfs     f1, -0x834(rtoc)
    stfs    f1, 0x5d70(r31)
    stfs    f1, 0x5d74(r31)
    stfs    f1, 0x5d78(r31)
    stfs    f1, 0x5d7c(r31)
    stfs    f1, 0x5d80(r31)
    stfs    f1, 0x5d84(r31)
    lfs     f27, -0x83c(rtoc)
    stfs    f27, 0x5d88(r31)
    lfs     f0, -0x7b0(rtoc)
    stfs    f0, 0x5d8c(r31)
    stfs    f27, 0x5d90(r31)
    lfs     f0, -0x7ac(rtoc)
    stfs    f0, 0x5d94(r31)
    lfs     f0, -0x7a8(rtoc)
    stfs    f0, 0x5d98(r31)
    stfs    f1, 0x5d9c(r31)
    lfs     f0, -0x7a4(rtoc)
    stfs    f0, 0x5da0(r31)
    lfs     f0, -0x828(rtoc)
    stfs    f0, 0x5da4(r31)
    lfs     f28, -0x7a0(rtoc)
    stfs    f28, 0x5da8(r31)
    stfs    f27, 0x5dac(r31)
    lfs     f0, -0x79c(rtoc)
    stfs    f0, 0x5db0(r31)
    stfs    f28, 0x5db4(r31)
    lfs     f0, -0x798(rtoc)
    stfs    f0, 0x5db8(r31)
    lfs     f29, -0x794(rtoc)
    lfs     f30, -0x790(rtoc)
    lfs     f31, -0x784(rtoc)
branch_0x8028055c:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x80280654
    add     r3, r26, r29
    lwz     r4, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0x3d0
    stw     r4, 0x0(r24)
    stw     r0, 0x4(r24)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r24, 0x0
    addi    r3, r24, 0x8
    addi    r6, r30, 0x3d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x8(r24)
    addi    r3, r30, 0x3dc
    stfs    f27, 0x18(r24)
    stw     r28, 0x8(r24)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r24, 0x0
    addi    r3, r24, 0x1c
    addi    r6, r30, 0x3dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c(r24)
    addi    r3, r30, 0x3e8
    stfs    f28, 0x2c(r24)
    stw     r28, 0x1c(r24)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r24, 0x0
    addi    r3, r24, 0x30
    addi    r6, r30, 0x3e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x30(r24)
    addi    r3, r30, 0x3f4
    stfs    f29, 0x40(r24)
    stw     r28, 0x30(r24)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r24, 0x0
    addi    r3, r24, 0x44
    addi    r6, r30, 0x3f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x44(r24)
    subi    r3, rtoc, 0x78c
    stfs    f30, 0x54(r24)
    stw     r28, 0x44(r24)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r24, 0x0
    addi    r3, r24, 0x58
    subi    r6, rtoc, 0x78c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x58(r24)
    mr      r3, r24
    stfs    f31, 0x68(r24)
    stw     r28, 0x58(r24)
    lwz     r4, 0x0(r24)
    bl      load__7TParamsFPCc
branch_0x80280654:
    addi    r25, r25, 0x1
    addi    r0, r29, 0x5dbc
    cmpwi   r25, 0x11
    stwx    r24, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x8028055c
    li      r24, 0x0
    stw     r24, 0x5e00(r31)
    li      r0, 0x1
    addi    r3, r31, 0x5e10
    stb     r0, 0x5e04(r31)
    lfs     f0, -0x780(rtoc)
    stfs    f0, 0x5e08(r31)
    lfs     f0, -0x7b8(rtoc)
    stfs    f0, 0x5e0c(r31)
    bl      PSMTXIdentity
    lfs     f0, -0x77c(rtoc)
    li      r0, 0x5
    li      r5, 0x84
    stfs    f0, 0x5e40(r31)
    li      r4, 0x78
    li      r3, 0x14
    stb     r0, 0x5e44(r31)
    li      r0, 0x28
    stb     r5, 0x5e45(r31)
    stb     r4, 0x5e46(r31)
    stb     r24, 0x5e47(r31)
    stb     r3, 0x5e48(r31)
    stb     r0, 0x5e49(r31)
    stw     r31, gpModelWaterManager(r13)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    lfd     f29, 0x60(sp)
    lfd     f28, 0x58(sp)
    lfd     f27, 0x50(sp)
    lmw     r22, 0x28(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl __ct__14TWaterEmitInfoFPCc
__ct__14TWaterEmitInfoFPCc: # 0x802806f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r23, 0x8c(sp)
    mr      r31, r3
    li      r25, 0x0
    stw     r4, 0x0(r3)
    lis     r3, 0x803a
    addi    r30, r3, 0x1a08
    stw     r25, 0x4(r31)
    subi    r3, rtoc, 0x778
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    subi    r6, rtoc, 0x778
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r24, r3, 0x42ac
    stw     r24, 0x8(r31)
    li      r26, 0x1
    lis     r3, 0x803b
    stw     r26, 0x18(r31)
    subi    r23, r3, 0x42b8
    subi    r3, rtoc, 0x78c
    stw     r23, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    subi    r6, rtoc, 0x78c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x2f04
    stw     r29, 0x1c(r31)
    li      r0, 0xff
    lis     r3, 0x803b
    sth     r0, 0x2c(r31)
    subi    r28, r3, 0x2f10
    subi    r3, rtoc, 0x770
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    subi    r6, rtoc, 0x770
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    subi    r3, rtoc, 0x768
    sth     r26, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x834(rtoc)
    addi    r5, r3, 0x0
    lfs     f0, -0x828(rtoc)
    mr      r4, r31
    stfs    f1, 0x70(sp)
    addi    r3, r31, 0x44
    stfs    f0, 0x74(sp)
    subi    r6, rtoc, 0x768
    stfs    f1, 0x78(sp)
    lwz     r0, 0x70(sp)
    lwz     r7, 0x74(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x78(sp)
    stw     r7, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803e
    subi    r27, r3, 0x4fc0
    stw     r27, 0x44(r31)
    lis     r3, 0x803e
    subi    r26, r3, 0x4fa8
    lwz     r4, 0x34(sp)
    subi    r3, rtoc, 0x760
    lwz     r0, 0x38(sp)
    stw     r4, 0x54(r31)
    stw     r0, 0x58(r31)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x5c(r31)
    stw     r26, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f0, -0x834(rtoc)
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    stfs    f0, 0x58(sp)
    addi    r3, r31, 0x60
    subi    r6, rtoc, 0x760
    stfs    f0, 0x5c(sp)
    stfs    f0, 0x60(sp)
    lwz     r0, 0x58(sp)
    lwz     r7, 0x5c(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x60(sp)
    stw     r7, 0x2c(sp)
    stw     r0, 0x30(sp)
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x60(r31)
    subi    r3, rtoc, 0x758
    lwz     r4, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r4, 0x70(r31)
    stw     r0, 0x74(r31)
    lwz     r0, 0x30(sp)
    stw     r0, 0x78(r31)
    stw     r26, 0x60(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f0, -0x834(rtoc)
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    stfs    f0, 0x40(sp)
    addi    r3, r31, 0x7c
    subi    r6, rtoc, 0x758
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    lwz     r0, 0x40(sp)
    lwz     r7, 0x44(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x48(sp)
    stw     r7, 0x20(sp)
    stw     r0, 0x24(sp)
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x7c(r31)
    addi    r3, r30, 0x400
    lwz     r4, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r4, 0x8c(r31)
    stw     r0, 0x90(r31)
    lwz     r0, 0x24(sp)
    stw     r0, 0x94(r31)
    stw     r26, 0x7c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x98
    addi    r6, r30, 0x400
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r26, r3, 0x42c4
    stw     r26, 0x98(r31)
    lis     r3, 0x803b
    subi    r27, r3, 0x42d0
    lfs     f0, -0x834(rtoc)
    subi    r3, rtoc, 0x754
    stfs    f0, 0xa8(r31)
    stw     r27, 0x98(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xac
    subi    r6, rtoc, 0x754
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0xac(r31)
    addi    r3, r30, 0x40c
    lfs     f0, -0x834(rtoc)
    stfs    f0, 0xbc(r31)
    stw     r27, 0xac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xc0
    addi    r6, r30, 0x40c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0xc0(r31)
    subi    r3, rtoc, 0x74c
    lfs     f0, -0x834(rtoc)
    stfs    f0, 0xd0(r31)
    stw     r27, 0xc0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd4
    subi    r6, rtoc, 0x74c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0xd4(r31)
    addi    r3, r30, 0x418
    lfs     f0, -0x744(rtoc)
    stfs    f0, 0xe4(r31)
    stw     r27, 0xd4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe8
    addi    r6, r30, 0x418
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0xe8(r31)
    addi    r3, r30, 0x428
    lfs     f0, -0x834(rtoc)
    stfs    f0, 0xf8(r31)
    stw     r27, 0xe8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xfc
    addi    r6, r30, 0x428
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0xfc(r31)
    addi    r3, r30, 0x434
    lfs     f0, -0x7c8(rtoc)
    stfs    f0, 0x10c(r31)
    stw     r27, 0xfc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x110
    addi    r6, r30, 0x434
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x110(r31)
    subi    r3, rtoc, 0x740
    lfs     f0, -0x7c4(rtoc)
    stfs    f0, 0x120(r31)
    stw     r27, 0x110(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x124
    subi    r6, rtoc, 0x740
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r24, 0x124(r31)
    subi    r3, rtoc, 0x738
    stw     r25, 0x134(r31)
    stw     r23, 0x124(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x138
    subi    r6, rtoc, 0x738
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x138(r31)
    addi    r3, r30, 0x440
    sth     r25, 0x148(r31)
    stw     r28, 0x138(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x14c
    addi    r6, r30, 0x440
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x14c(r31)
    mr      r3, r31
    sth     r25, 0x15c(r31)
    stw     r28, 0x14c(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r23, 0x8c(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl __sinit_ModelWaterManager_cpp
__sinit_ModelWaterManager_cpp: # 0x80280adc
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x3d58
    lis     r3, 0x803a
    stw     r30, 0x8(sp)
    addi    r30, r31, 0xc
    addi    r4, r3, 0x1e54
    addi    r3, r30, 0x0
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x5378
    stw     r3, 0xc(r31)
    addi    r0, r3, 0x24
    lis     r4, 0x800f
    stw     r0, 0x2c(r31)
    addi    r3, r30, 0x0
    subi    r4, r4, 0x3330
    addi    r5, r31, 0x0
    bl      __register_global_object
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80280b64
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xa4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80280b64:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80280b94
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xb0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80280b94:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80280bc4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0xbc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80280bc4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80280bf4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0xc8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80280bf4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80280c24
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xd4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80280c24:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80280c54
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xe0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80280c54:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80280c84
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80280c84:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80280cb4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xf8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80280cb4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80280ce4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x104
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80280ce4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80280d14
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x110
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80280d14:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80280d44
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x11c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80280d44:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80280d74
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x128
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80280d74:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80280da4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x134
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80280da4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80280dd4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x140
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80280dd4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80280e04
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x14c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80280e04:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr
