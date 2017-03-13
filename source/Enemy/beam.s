
.globl __dt__12TBeamManagerFv
__dt__12TBeamManagerFv: # 0x800deb4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800deba4
    lis     r3, 0x803c
    subi    r0, r3, 0x6340
    stw     r0, 0x0(r30)
    beq-    branch_0x800deb94
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800deb94:
    extsh.  r0, r31
    ble-    branch_0x800deba4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800deba4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__12TBeamManagerFUlPQ26JDrama9TGraphics
perform__12TBeamManagerFUlPQ26JDrama9TGraphics: # 0x800debc0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x800decd4
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
    li      r5, 0x0
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x2
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x3a8(r29)
    addi    r4, sp, 0x14
    li      r3, 0x4
    stw     r0, 0x14(sp)
    bl      GXSetChanMatColor
    mr      r3, r29
    bl      setupMaterial__12TBeamManagerFv
    li      r30, 0x0
    addi    r31, r30, 0x0
    b       branch_0x800decc0

branch_0x800deca8:
    addi    r3, r31, 0x10
    add     r3, r29, r3
    addi    r4, r29, 0x3a8
    bl      drawConeBeam__9TConeBeamFRC8_GXColor
    addi    r30, r30, 0x1
    addi    r31, r31, 0xb8
branch_0x800decc0:
    lwz     r0, 0x3b0(r29)
    cmpw    r30, r0
    blt+    branch_0x800deca8
    li      r0, 0x0
    stw     r0, 0x3b0(r29)
branch_0x800decd4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl requestCone__12TBeamManagerFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fbbb
requestCone__12TBeamManagerFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fbbb: # 0x800decf0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r8, 24
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    fmr     f31, f1
    stmw    r27, 0x2c(sp)
    mr      r31, r3
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r7, 0x0
    lwz     r3, 0x3b0(r3)
    mulli   r3, r3, 0xb8
    addi    r8, r3, 0x10
    add     r8, r31, r8
    stb     r6, 0x1c(r8)
    addi    r30, r8, 0x0
    lwz     r3, 0x3b0(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x3b0(r31)
    beq-    branch_0x800ded64
    lwz     r3, gpMap(r13)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r7, sp, 0x1c
    li      r6, 0x0
    bl      intersectLine__4TMapCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_
    mr      r5, r3
    b       branch_0x800ded68

branch_0x800ded64:
    li      r5, 0x0
branch_0x800ded68:
    cmplwi  r5, 0x0
    bne-    branch_0x800ded88
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4(r28)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x24(sp)
branch_0x800ded88:
    lwz     r4, 0x0(r27)
    mr      r3, r30
    lwz     r0, 0x4(r27)
    stw     r4, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0x8(r27)
    stw     r0, 0x8(r30)
    stb     r29, 0x1d(r30)
    lwz     r4, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r4, 0xc(r30)
    stw     r0, 0x10(r30)
    lwz     r0, 0x24(sp)
    stw     r0, 0x14(r30)
    stfs    f31, 0x18(r30)
    stw     r5, 0x20(r30)
    lwz     r4, 0x3ac(r31)
    bl      calcVertices__9TConeBeamFi
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl setupMaterial__12TBeamManagerFv
setupMaterial__12TBeamManagerFv: # 0x800dede8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
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
    li      r5, 0x0
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x2
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, 0x3a8(r31)
    addi    r4, sp, 0xc
    li      r3, 0x4
    stw     r0, 0xc(sp)
    bl      GXSetChanMatColor
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12TBeamManagerFPCc
__ct__12TBeamManagerFPCc: # 0x800deec0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r30, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r30)
    stw     r4, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    li      r31, 0x0
    lis     r3, 0x803c
    sth     r31, 0xc(r30)
    subi    r0, r3, 0x6340
    lis     r3, 0x800e
    stw     r0, 0x0(r30)
    subi    r4, r3, 0x6bc
    addi    r3, r30, 0x10
    li      r5, 0x0
    li      r6, 0xb8
    li      r7, 0x5
    bl      __construct_array
    lwz     r4, -0x5c78(rtoc)
    li      r0, 0xa
    addi    r3, r30, 0x0
    stw     r4, 0x14(sp)
    lwz     r4, 0x14(sp)
    stw     r4, 0x3a8(r30)
    stw     r0, 0x3ac(r30)
    stw     r31, 0x3b0(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl drawConeBeam__9TConeBeamFRC8_GXColor
drawConeBeam__9TConeBeamFRC8_GXColor: # 0x800def6c
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x45dc
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    li      r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    mr      r3, r0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      drawConeBeamAux__9TConeBeamFRC8_GXColorb
    li      r3, 0x1
    li      r4, 0x80
    bl      GXSetDstAlpha
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      drawConeBeamAux__9TConeBeamFRC8_GXColorb
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GXSetZMode
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      drawConeBeamAux__9TConeBeamFRC8_GXColorb
    lbz     r0, 0x1c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800df0d0
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    lbz     r5, 0x1d(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      drawConeBeamAux__9TConeBeamFRC8_GXColorb
branch_0x800df0d0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcVertices__9TConeBeamFi
calcVertices__9TConeBeamFi: # 0x800df0e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c8(sp)
    stfd    f31, 0x1c0(sp)
    stfd    f30, 0x1b8(sp)
    stfd    f29, 0x1b0(sp)
    stfd    f28, 0x1a8(sp)
    stfd    f27, 0x1a0(sp)
    stfd    f26, 0x198(sp)
    stfd    f25, 0x190(sp)
    stfd    f24, 0x188(sp)
    stfd    f23, 0x180(sp)
    stmw    r27, 0x16c(sp)
    mr      r28, r3
    lfs     f5, -0x5c74(rtoc)
    lfs     f4, -0x5c70(rtoc)
    stfs    f5, 0x134(sp)
    stfs    f4, 0x138(sp)
    stfs    f5, 0x13c(sp)
    lwz     r3, 0xc(r3)
    lwz     r0, 0x10(r28)
    stw     r3, 0x128(sp)
    stw     r0, 0x12c(sp)
    lwz     r0, 0x14(r28)
    stw     r0, 0x130(sp)
    stw     r4, 0xb4(r28)
    lfs     f1, 0x128(sp)
    lfs     f0, 0x0(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0x128(sp)
    lfs     f1, 0x12c(sp)
    lfs     f0, 0x4(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0x12c(sp)
    lfs     f1, 0x130(sp)
    lfs     f0, 0x8(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0x130(sp)
    lfs     f6, 0x130(sp)
    lfs     f8, 0x138(sp)
    lfs     f2, 0x13c(sp)
    lfs     f9, 0x128(sp)
    fmuls   f0, f6, f8
    lfs     f7, 0x12c(sp)
    fmuls   f1, f9, f2
    lfs     f3, 0x134(sp)
    fmsubs  f2, f7, f2, f0
    fmuls   f0, f7, f3
    fmsubs  f1, f6, f3, f1
    stfs    f2, 0x140(sp)
    fmsubs  f0, f9, f8, f0
    stfs    f1, 0x144(sp)
    stfs    f0, 0x148(sp)
    lfs     f10, 0x140(sp)
    lfs     f8, 0x144(sp)
    lfs     f11, 0x148(sp)
    fmuls   f2, f10, f10
    fmuls   f1, f8, f8
    lfs     f0, -0x5c6c(rtoc)
    fmuls   f3, f11, f11
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800df208
    stfs    f4, 0x134(sp)
    stfs    f5, 0x138(sp)
    stfs    f5, 0x13c(sp)
    stfs    f5, 0x140(sp)
    stfs    f5, 0x144(sp)
    stfs    f4, 0x148(sp)
    b       branch_0x800df244

branch_0x800df208:
    fmuls   f2, f11, f7
    addi    r3, sp, 0x140
    fmuls   f1, f10, f6
    mr      r4, r3
    fmuls   f0, f8, f9
    fmsubs  f2, f8, f6, f2
    fmsubs  f1, f11, f9, f1
    fmsubs  f0, f10, f7, f0
    stfs    f2, 0x134(sp)
    stfs    f1, 0x138(sp)
    stfs    f0, 0x13c(sp)
    bl      PSVECNormalize
    addi    r3, sp, 0x134
    addi    r4, r3, 0x0
    bl      PSVECNormalize
branch_0x800df244:
    lwz     r3, 0x20(r28)
    cmplwi  r3, 0x0
    bne-    branch_0x800df42c
    lfs     f27, -0x5c68(rtoc)
    li      r30, 0x0
    lfs     f31, -0x5c64(rtoc)
    li      r27, 0x0
    lfd     f30, -0x5c58(rtoc)
    lfs     f29, -0x5c60(rtoc)
    lis     r31, 0x4330
    lfs     f28, -0x5c74(rtoc)
    b       branch_0x800df41c

branch_0x800df274:
    xoris   r3, r0, 0x8000
    lwz     r0, -0x5eac(r13)
    stw     r3, 0x15c(sp)
    xoris   r5, r30, 0x8000
    lwz     r6, -0x5ea8(r13)
    addi    r3, sp, 0x84
    stw     r31, 0x158(sp)
    lwz     r4, -0x5ea4(r13)
    lfd     f0, 0x158(sp)
    stw     r5, 0x164(sp)
    fsubs   f0, f0, f30
    lfs     f2, 0x18(r28)
    stw     r31, 0x160(sp)
    fdivs   f0, f29, f0
    lfd     f1, 0x160(sp)
    fsubs   f1, f1, f30
    fmuls   f0, f1, f0
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x150(sp)
    lwz     r5, 0x154(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f1, f2, f1
    stfs    f28, 0x124(sp)
    fmuls   f0, f2, f0
    stfs    f28, 0x120(sp)
    fmuls   f24, f27, f1
    fmuls   f1, f27, f0
    lwz     r0, 0x140(sp)
    lwz     r4, 0x144(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x148(sp)
    stw     r4, 0x88(sp)
    stfs    f28, 0x11c(sp)
    stw     r0, 0x8c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x84(sp)
    fmr     f1, f24
    lwz     r4, 0x88(sp)
    addi    r3, sp, 0x78
    stw     r0, 0xdc(sp)
    lwz     r0, 0x8c(sp)
    stw     r4, 0xe0(sp)
    lfs     f3, 0x11c(sp)
    stw     r0, 0xe4(sp)
    lfs     f2, 0xdc(sp)
    lfs     f0, 0xe0(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x11c(sp)
    lfs     f2, 0x120(sp)
    fadds   f0, f2, f0
    stfs    f0, 0x120(sp)
    lfs     f2, 0x124(sp)
    lfs     f0, 0xe4(sp)
    fadds   f0, f2, f0
    stfs    f0, 0x124(sp)
    lwz     r0, 0x134(sp)
    lwz     r4, 0x138(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x13c(sp)
    stw     r4, 0x7c(sp)
    stw     r0, 0x80(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x78(sp)
    add     r4, r28, r27
    lwz     r3, 0x7c(sp)
    addi    r30, r30, 0x1
    stw     r0, 0xd0(sp)
    lwz     r0, 0x80(sp)
    addi    r27, r27, 0xc
    stw     r3, 0xd4(sp)
    lfs     f2, 0x11c(sp)
    stw     r0, 0xd8(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0xd4(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x11c(sp)
    lfs     f1, 0x120(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x120(sp)
    lfs     f1, 0x124(sp)
    lfs     f0, 0xd8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x124(sp)
    lfs     f1, 0x11c(sp)
    lfs     f0, 0xc(r28)
    fadds   f0, f1, f0
    stfs    f0, 0x11c(sp)
    lfs     f1, 0x120(sp)
    lfs     f0, 0x10(r28)
    fadds   f0, f1, f0
    stfs    f0, 0x120(sp)
    lfs     f1, 0x124(sp)
    lfs     f0, 0x14(r28)
    fadds   f0, f1, f0
    stfs    f0, 0x124(sp)
    lwz     r3, 0x11c(sp)
    lwz     r0, 0x120(sp)
    stw     r3, 0x24(r4)
    stw     r0, 0x28(r4)
    lwz     r0, 0x124(sp)
    stw     r0, 0x2c(r4)
branch_0x800df41c:
    lwz     r0, 0xb4(r28)
    cmpw    r30, r0
    ble+    branch_0x800df274
    b       branch_0x800df740

branch_0x800df42c:
    addi    r4, r3, 0x34
    lfs     f27, 0x40(r3)
    lfs     f26, 0x34(r3)
    addi    r3, sp, 0x128
    lfs     f25, 0x4(r4)
    lfs     f24, 0x8(r4)
    bl      PSVECMag
    lfs     f2, 0x18(r28)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5c58(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5c5c(rtoc)
    stw     r0, 0x154(sp)
    lis     r31, 0x4330
    addi    r3, sp, 0x128
    stw     r31, 0x150(sp)
    mr      r4, r3
    lfd     f1, 0x150(sp)
    fsubs   f1, f1, f2
    fmuls   f30, f0, f1
    bl      PSVECNormalize
    lfs     f28, -0x5c64(rtoc)
    li      r29, 0x0
    lfd     f29, -0x5c58(rtoc)
    li      r27, 0x0
    fmuls   f0, f28, f30
    lfs     f30, -0x5c60(rtoc)
    lfs     f31, -0x5c74(rtoc)
    fctiwz  f0, f0
    stfd    f0, 0x158(sp)
    lwz     r0, 0x15c(sp)
    clrlwi  r30, r0, 16
    b       branch_0x800df734

branch_0x800df4b4:
    xoris   r3, r0, 0x8000
    lwz     r0, -0x5eac(r13)
    stw     r3, 0x15c(sp)
    xoris   r5, r29, 0x8000
    lwz     r6, -0x5ea8(r13)
    addi    r3, sp, 0x64
    stw     r31, 0x158(sp)
    lwz     r4, -0x5ea4(r13)
    lfd     f0, 0x158(sp)
    stw     r5, 0x154(sp)
    fsubs   f0, f0, f29
    stw     r31, 0x150(sp)
    fdivs   f0, f30, f0
    lfd     f1, 0x150(sp)
    fsubs   f1, f1, f29
    fmuls   f0, f1, f0
    fmuls   f0, f28, f0
    fctiwz  f0, f0
    stfd    f0, 0x160(sp)
    lwz     r5, 0x164(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    lfsx    f23, r6, r0
    stfs    f31, 0xf4(sp)
    stfs    f31, 0xf0(sp)
    lwz     r0, 0x140(sp)
    lwz     r4, 0x144(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x148(sp)
    stw     r4, 0x68(sp)
    stfs    f31, 0xec(sp)
    stw     r0, 0x6c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x64(sp)
    fmr     f1, f23
    lwz     r4, 0x68(sp)
    addi    r3, sp, 0x58
    stw     r0, 0xc4(sp)
    lwz     r0, 0x6c(sp)
    stw     r4, 0xc8(sp)
    lfs     f3, 0xec(sp)
    stw     r0, 0xcc(sp)
    lfs     f2, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fadds   f2, f3, f2
    stfs    f2, 0xec(sp)
    lfs     f2, 0xf0(sp)
    fadds   f0, f2, f0
    stfs    f0, 0xf0(sp)
    lfs     f2, 0xf4(sp)
    lfs     f0, 0xcc(sp)
    fadds   f0, f2, f0
    stfs    f0, 0xf4(sp)
    lwz     r0, 0x134(sp)
    lwz     r4, 0x138(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x13c(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x58(sp)
    add     r5, r28, r27
    lwz     r3, 0x5c(sp)
    addi    r29, r29, 0x1
    stw     r0, 0xb8(sp)
    lwz     r0, 0x60(sp)
    addi    r27, r27, 0xc
    stw     r3, 0xbc(sp)
    lfs     f2, 0xec(sp)
    stw     r0, 0xc0(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0xbc(sp)
    fadds   f1, f2, f1
    stfs    f1, 0xec(sp)
    lfs     f1, 0xf0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    lfs     f1, 0xf4(sp)
    lfs     f0, 0xc0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xf4(sp)
    lwz     r0, 0xec(sp)
    lwz     r3, 0xf0(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, -0x5eac(r13)
    stw     r3, 0xac(sp)
    lwz     r4, 0xf4(sp)
    sraw    r0, r30, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    stw     r4, 0xb0(sp)
    lfsx    f1, r3, r0
    lfs     f0, 0xa8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xac(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(sp)
    lfs     f0, 0xb0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x128(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x12c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x130(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lfs     f6, 0x4(r28)
    lfs     f1, 0xac(sp)
    fmuls   f3, f25, f6
    lfs     f5, 0x0(r28)
    fmuls   f1, f25, f1
    lfs     f2, 0xa8(sp)
    lfs     f0, 0x8(r28)
    fmadds  f4, f26, f5, f3
    lfs     f3, 0xb0(sp)
    fmadds  f1, f26, f2, f1
    lwz     r0, 0xa8(sp)
    lwz     r3, 0xac(sp)
    fmadds  f4, f24, f0, f4
    stw     r0, 0xf8(sp)
    fmadds  f2, f24, f3, f1
    lwz     r0, 0xb0(sp)
    stw     r3, 0xfc(sp)
    fadds   f3, f27, f4
    stw     r0, 0x100(sp)
    lfs     f1, 0xf8(sp)
    fneg    f3, f3
    fdivs   f2, f3, f2
    fmuls   f1, f1, f2
    stfs    f1, 0xf8(sp)
    lfs     f1, 0xfc(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0xfc(sp)
    lfs     f1, 0x100(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0x100(sp)
    lfs     f1, 0xf8(sp)
    fadds   f1, f1, f5
    stfs    f1, 0xf8(sp)
    lfs     f1, 0xfc(sp)
    fadds   f1, f1, f6
    stfs    f1, 0xfc(sp)
    lfs     f1, 0x100(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x100(sp)
    lwz     r3, 0xf8(sp)
    lwz     r0, 0xfc(sp)
    stw     r3, 0x24(r5)
    stw     r0, 0x28(r5)
    lwz     r0, 0x100(sp)
    stw     r0, 0x2c(r5)
branch_0x800df734:
    lwz     r0, 0xb4(r28)
    cmpw    r29, r0
    ble+    branch_0x800df4b4
branch_0x800df740:
    lmw     r27, 0x16c(sp)
    lwz     r0, 0x1cc(sp)
    lfd     f31, 0x1c0(sp)
    lfd     f30, 0x1b8(sp)
    mtlr    r0
    lfd     f29, 0x1b0(sp)
    lfd     f28, 0x1a8(sp)
    lfd     f27, 0x1a0(sp)
    lfd     f26, 0x198(sp)
    lfd     f25, 0x190(sp)
    lfd     f24, 0x188(sp)
    lfd     f23, 0x180(sp)
    addi    sp, sp, 0x1c8
    blr


.globl drawConeBeamAux__9TConeBeamFRC8_GXColorb
drawConeBeamAux__9TConeBeamFRC8_GXColorb: # 0x800df778
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x0
    li      r4, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r29, 0x34(sp)
    addi    r29, r5, 0x0
    lwz     r3, 0xb4(r3)
    addi    r5, r3, 0x2
    li      r3, 0xa0
    bl      GXBegin
    lfs     f2, 0x8(r30)
    lis     r4, 0xcc01
    lfs     f1, 0x4(r30)
    clrlwi. r0, r29, 24
    lfs     f0, 0x0(r30)
    stfs    f0, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    beq-    branch_0x800df7f8
    lbz     r6, 0x2(r31)
    li      r0, 0x0
    lbz     r5, 0x1(r31)
    lbz     r3, 0x0(r31)
    stb     r3, -0x8000(r4)
    stb     r5, -0x8000(r4)
    stb     r6, -0x8000(r4)
    stb     r0, -0x8000(r4)
    b       branch_0x800df818

branch_0x800df7f8:
    lbz     r6, 0x3(r31)
    lbz     r5, 0x2(r31)
    lbz     r3, 0x1(r31)
    lbz     r0, 0x0(r31)
    stb     r0, -0x8000(r4)
    stb     r3, -0x8000(r4)
    stb     r5, -0x8000(r4)
    stb     r6, -0x8000(r4)
branch_0x800df818:
    li      r8, 0x0
    li      r3, 0x0
    lis     r4, 0xcc01
    b       branch_0x800df870

branch_0x800df828:
    addi    r5, r3, 0x24
    add     r5, r30, r5
    lfs     f2, 0x8(r5)
    addi    r8, r8, 0x1
    lfs     f1, 0x4(r5)
    addi    r3, r3, 0xc
    lfs     f0, 0x0(r5)
    stfs    f0, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    lbz     r7, 0x3(r31)
    lbz     r6, 0x2(r31)
    lbz     r5, 0x1(r31)
    lbz     r0, 0x0(r31)
    stb     r0, -0x8000(r4)
    stb     r5, -0x8000(r4)
    stb     r6, -0x8000(r4)
    stb     r7, -0x8000(r4)
branch_0x800df870:
    lwz     r5, 0xb4(r30)
    cmpw    r8, r5
    ble+    branch_0x800df828
    addi    r5, r5, 0x2
    li      r3, 0xa0
    li      r4, 0x0
    bl      GXBegin
    lfs     f2, 0x14(r30)
    lis     r4, 0xcc01
    lfs     f1, 0x10(r30)
    li      r8, 0x0
    lfs     f0, 0xc(r30)
    li      r3, 0x0
    stfs    f0, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    lbz     r7, 0x3(r31)
    lbz     r6, 0x2(r31)
    lbz     r5, 0x1(r31)
    lbz     r0, 0x0(r31)
    stb     r0, -0x8000(r4)
    stb     r5, -0x8000(r4)
    stb     r6, -0x8000(r4)
    stb     r7, -0x8000(r4)
    b       branch_0x800df91c

branch_0x800df8d4:
    addi    r5, r3, 0x24
    add     r5, r30, r5
    lfs     f2, 0x8(r5)
    addi    r8, r8, 0x1
    lfs     f1, 0x4(r5)
    addi    r3, r3, 0xc
    lfs     f0, 0x0(r5)
    stfs    f0, -0x8000(r4)
    stfs    f1, -0x8000(r4)
    stfs    f2, -0x8000(r4)
    lbz     r7, 0x3(r31)
    lbz     r6, 0x2(r31)
    lbz     r5, 0x1(r31)
    lbz     r0, 0x0(r31)
    stb     r0, -0x8000(r4)
    stb     r5, -0x8000(r4)
    stb     r6, -0x8000(r4)
    stb     r7, -0x8000(r4)
branch_0x800df91c:
    lwz     r0, 0xb4(r30)
    cmpw    r8, r0
    ble+    branch_0x800df8d4
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl __ct__9TConeBeamFv
__ct__9TConeBeamFv: # 0x800df944
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    li      r6, 0xc
    stwu    sp, -0x18(sp)
    li      r7, 0xc
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x8002
    lfs     f0, -0x5c74(rtoc)
    addi    r4, r3, 0x10dc
    addi    r3, r31, 0x24
    stfs    f0, 0x18(r31)
    stb     r0, 0x1c(r31)
    li      r0, 0x1
    stb     r0, 0x1d(r31)
    bl      __construct_array
    lfs     f0, -0x5c74(rtoc)
    mr      r3, r31
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    stfs    f0, 0x14(r31)
    stfs    f0, 0x10(r31)
    stfs    f0, 0xc(r31)
    stfs    f0, 0x18(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

