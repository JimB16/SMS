
.globl ReInitTevStages__Fv
ReInitTevStages__Fv: # 0x80233174
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x0
    li      r5, 0x0
    stwu    sp, -0x20(sp)
    li      r6, 0x4
    stw     r31, 0x1c(sp)
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x2
    li      r4, 0x2
    li      r5, 0x2
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x3
    li      r4, 0x3
    li      r5, 0x3
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x4
    li      r4, 0x4
    li      r5, 0x4
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x5
    li      r4, 0x5
    li      r5, 0x5
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x6
    li      r4, 0x6
    li      r5, 0x6
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x7
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x8
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x9
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xa
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xb
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xc
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xd
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xe
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0xf
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    lwz     r0, R13Off_m0x76f4(r13)
    addi    r4, sp, 0x10
    li      r3, 0x1
    stw     r0, 0x10(sp)
    bl      GXSetTevColor
    lwz     r0, R13Off_m0x76f4(r13)
    addi    r4, sp, 0xc
    li      r3, 0x2
    stw     r0, 0xc(sp)
    bl      GXSetTevColor
    lwz     r0, R13Off_m0x76f4(r13)
    addi    r4, sp, 0x8
    li      r3, 0x3
    stw     r0, 0x8(sp)
    bl      GXSetTevColor
    li      r31, 0x0
branch_0x80233304:
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      GXSetTevOp
    addi    r3, r31, 0x0
    li      r4, 0x6
    bl      GXSetTevKColorSel
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXSetTevKAlphaSel
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    addi    r31, r31, 0x1
    cmplwi  r31, 0x10
    blt+    branch_0x80233304
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    li      r3, 0x2
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x1
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    li      r3, 0x3
    li      r4, 0x2
    li      r5, 0x2
    li      r6, 0x2
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    li      r4, 0x11
    li      r5, 0x0
    bl      GXSetZTexture
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl ReInitTransform__Fv
ReInitTransform__Fv: # 0x802333e0
    mflr    r0
    lis     r3, NullTexData@ha
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, NullTexData@l
    addi    r3, r31, 0x10
    bl      GXLoadPosMtxImm
    addi    r3, r31, 0x10
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    addi    r3, r31, 0x10
    li      r4, 0x3c
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    addi    r3, r31, 0x10
    li      r4, 0x7d
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x5
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x2
    li      r4, 0x1
    li      r5, 0x6
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x3
    li      r4, 0x1
    li      r5, 0x7
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x4
    li      r4, 0x1
    li      r5, 0x8
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x5
    li      r4, 0x1
    li      r5, 0x9
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x6
    li      r4, 0x1
    li      r5, 0xa
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x7
    li      r4, 0x1
    li      r5, 0xb
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetTexCoordScaleManually
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTexCoordCylWrap
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetTexCoordScaleManually
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTexCoordCylWrap
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetTexCoordScaleManually
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTexCoordCylWrap
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetTexCoordScaleManually
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTexCoordCylWrap
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetTexCoordScaleManually
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTexCoordCylWrap
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetTexCoordScaleManually
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTexCoordCylWrap
    li      r3, 0x6
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetTexCoordScaleManually
    li      r3, 0x6
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTexCoordCylWrap
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetTexCoordScaleManually
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTexCoordCylWrap
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl ReInitGeometry__Fv
ReInitGeometry__Fv: # 0x8023364c
    mflr    r0
    lis     r3, unk_8039dc18@ha
    stw     r0, 0x4(sp)
    li      r0, 0x1a
    addi    r3, r3, unk_8039dc18@l
    mtctr   r0
    stwu    sp, -0xe0(sp)
    addi    r4, r3, -0x8
    stw     r31, 0xdc(sp)
    addi    r5, sp, 0x0
branch_0x80233674:
    lwzu    r3, 0x8(r4)
    lwz     r0, 0x4(r4)
    stwu    r3, 0x8(r5)
    stw     r0, 0x4(r5)
    bdnz+      branch_0x80233674
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r31, 0x0
branch_0x8023369c:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8
    bl      GXSetVtxAttrFmtv
    addi    r31, r31, 0x1
    cmplwi  r31, 0x8
    blt+    branch_0x8023369c
    li      r3, 0x6
    li      r4, 0x0
    bl      GXSetLineWidth
    li      r3, 0x6
    li      r4, 0x0
    bl      GXSetPointSize
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x6
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    bl      GXEnableTexOffsets
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl ReInitializeGX
ReInitializeGX: # 0x80233760
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    bl      GXSetNumChans
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    bl      GXSetNumIndStages
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetCoPlanar
    bl      ReInitGeometry__Fv
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, R13Off_m0x76f8(r13)
    addi    r4, sp, 0x2c
    li      r3, 0x4
    stw     r0, 0x2c(sp)
    bl      GXSetChanAmbColor
    lwz     r0, R13Off_m0x76f8(r13)
    addi    r4, sp, 0x30
    li      r3, 0x5
    stw     r0, 0x30(sp)
    bl      GXSetChanAmbColor
    lwz     r0, R13Off_m0x76f4(r13)
    addi    r4, sp, 0x34
    li      r3, 0x4
    stw     r0, 0x34(sp)
    bl      GXSetChanMatColor
    lwz     r0, R13Off_m0x76f4(r13)
    addi    r4, sp, 0x38
    li      r3, 0x5
    stw     r0, 0x38(sp)
    bl      GXSetChanMatColor
    bl      ReInitTransform__Fv
    lis     r3, NullTexData@ha
    addi    r4, r3, NullTexData@l
    addi    r3, sp, 0xc
    li      r5, 0x4
    li      r6, 0x4
    li      r7, 0x3
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    addi    r3, sp, 0xc
    li      r4, 0x0
    bl      GXLoadTexObj
    addi    r3, sp, 0xc
    li      r4, 0x1
    bl      GXLoadTexObj
    addi    r3, sp, 0xc
    li      r4, 0x2
    bl      GXLoadTexObj
    addi    r3, sp, 0xc
    li      r4, 0x3
    bl      GXLoadTexObj
    addi    r3, sp, 0xc
    li      r4, 0x4
    bl      GXLoadTexObj
    addi    r3, sp, 0xc
    li      r4, 0x5
    bl      GXLoadTexObj
    addi    r3, sp, 0xc
    li      r4, 0x6
    bl      GXLoadTexObj
    addi    r3, sp, 0xc
    li      r4, 0x7
    bl      GXLoadTexObj
    bl      ReInitTevStages__Fv
    li      r31, 0x0
branch_0x802338c8:
    mr      r3, r31
    bl      GXSetTevDirect
    addi    r31, r31, 0x1
    cmplwi  r31, 0x10
    blt+    branch_0x802338c8
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x0
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    bl      GXSetDither
    lfs     f2, -0x15ec(r2)
    addi    r4, sp, 0x8
    lwz     r0, R13Off_m0x76f8(r13)
    li      r3, 0x0
    fmr     f4, f2
    stw     r0, 0x8(sp)
    lfs     f1, -0x15f0(r2)
    lfs     f3, -0x15e8(r2)
    bl      GXSetFog
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetFogRangeAdj
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    bl      GXSetZCompLoc
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr

