
.globl THPGXYuv2RgbDraw
THPGXYuv2RgbDraw: # 0x8001de28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r24, 0x80(sp)
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    lha     r27, 0xaa(sp)
    addi    r24, r4, 0x0
    addi    r25, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    addi    r26, r10, 0x0
    addi    r4, r3, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r3, sp, 0x60
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x79e4(rtoc)
    addi    r3, sp, 0x60
    li      r4, 0x0
    fmr     f2, f1
    li      r5, 0x0
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, sp, 0x60
    li      r4, 0x0
    bl      GXLoadTexObj
    extsh   r0, r28
    srawi   r28, r0, 1
    extsh   r0, r29
    srawi   r29, r0, 1
    addi    r4, r24, 0x0
    addi    r3, sp, 0x40
    clrlwi  r5, r28, 16
    clrlwi  r6, r29, 16
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x79e4(rtoc)
    addi    r3, sp, 0x40
    li      r4, 0x0
    fmr     f2, f1
    li      r5, 0x0
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, sp, 0x40
    li      r4, 0x1
    bl      GXLoadTexObj
    addi    r4, r25, 0x0
    addi    r3, sp, 0x20
    clrlwi  r5, r28, 16
    clrlwi  r6, r29, 16
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x79e4(rtoc)
    addi    r3, sp, 0x20
    li      r4, 0x0
    fmr     f2, f1
    li      r5, 0x0
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, sp, 0x20
    li      r4, 0x2
    bl      GXLoadTexObj
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lis     r6, 0xcc01
    sth     r30, -0x8000(r6)
    extsh   r0, r31
    add     r7, r0, r27
    sth     r31, -0x8000(r6)
    li      r5, 0x0
    extsh   r3, r30
    sth     r5, -0x8000(r6)
    extsh   r0, r26
    add     r0, r3, r0
    sth     r5, -0x8000(r6)
    extsh   r4, r0
    li      r3, 0x1
    sth     r5, -0x8000(r6)
    extsh   r0, r7
    sth     r4, -0x8000(r6)
    sth     r31, -0x8000(r6)
    sth     r5, -0x8000(r6)
    sth     r3, -0x8000(r6)
    sth     r5, -0x8000(r6)
    sth     r4, -0x8000(r6)
    sth     r0, -0x8000(r6)
    sth     r5, -0x8000(r6)
    sth     r3, -0x8000(r6)
    sth     r3, -0x8000(r6)
    sth     r30, -0x8000(r6)
    sth     r0, -0x8000(r6)
    sth     r5, -0x8000(r6)
    sth     r5, -0x8000(r6)
    sth     r3, -0x8000(r6)
    lwz     r0, 0xa4(sp)
    lmw     r24, 0x80(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl THPGXYuv2RgbSetup
THPGXYuv2RgbSetup: # 0x8001e00c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stmw    r26, 0xd8(sp)
    mr.     r26, r3
    beq-    branch_0x8001e0f4
    lhz     r28, 0x4(r26)
    li      r3, 0x0
    lhz     r27, 0x6(r26)
    li      r4, 0x0
    bl      GXSetPixelFmt
    xoris   r29, r27, 0x8000
    lfs     f1, -0x79e4(rtoc)
    xoris   r31, r28, 0x8000
    stw     r29, 0xd4(sp)
    lis     r30, 0x4330
    lfd     f4, -0x79d8(rtoc)
    stw     r31, 0xcc(sp)
    fmr     f3, f1
    fmr     f5, f1
    lfs     f6, -0x79e0(rtoc)
    stw     r30, 0xd0(sp)
    addi    r3, sp, 0x74
    stw     r30, 0xc8(sp)
    lfd     f2, 0xd0(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f2, f2, f4
    fsubs   f4, f0, f4
    bl      C_MTXOrtho
    addi    r3, sp, 0x74
    li      r4, 0x1
    bl      GXSetProjection
    stw     r31, 0xc4(sp)
    lfs     f1, -0x79e4(rtoc)
    stw     r29, 0xbc(sp)
    lfd     f4, -0x79d8(rtoc)
    fmr     f2, f1
    stw     r30, 0xc0(sp)
    fmr     f5, f1
    lfs     f6, -0x79dc(rtoc)
    stw     r30, 0xb8(sp)
    lfd     f3, 0xc0(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      GXSetViewport
    addi    r5, r28, 0x0
    addi    r6, r27, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetScissor
    addi    r3, sp, 0x44
    bl      PSMTXIdentity
    addi    r3, sp, 0x44
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
branch_0x8001e0f4:
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    cmplwi  r26, 0x0
    beq-    branch_0x8001e138
    li      r3, 0x0
    bl      GXSetDispCopyGamma
branch_0x8001e138:
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x2
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    bl      GXInvalidateTexAll
    bl      GXClearVtxDesc
    li      r3, 0x9
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
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x4
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xe
    li      r7, 0x2
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x6
    li      r7, 0x1
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    li      r4, 0xc
    bl      GXSetTevKColorSel
    li      r3, 0x0
    li      r4, 0x1c
    bl      GXSetTevKAlphaSel
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x2
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xe
    li      r7, 0x0
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x6
    li      r7, 0x0
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0xd
    bl      GXSetTevKColorSel
    li      r3, 0x1
    li      r4, 0x1d
    bl      GXSetTevKAlphaSel
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x2
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xc
    li      r7, 0x0
    bl      GXSetTevColorIn
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x2
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetTevAlphaIn
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    li      r3, 0x3
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x3
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0xe
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x3
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    li      r3, 0x3
    li      r4, 0xe
    bl      GXSetTevKColorSel
    lwz     r3, -0x79f8(rtoc)
    addi    r4, sp, 0x3c
    lwz     r0, -0x79f4(rtoc)
    stw     r3, 0x34(sp)
    li      r3, 0x1
    stw     r0, 0x38(sp)
    lwz     r5, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    bl      GXSetTevColorS10
    lwz     r0, -0x79f0(rtoc)
    addi    r4, sp, 0x30
    li      r3, 0x0
    stw     r0, 0x2c(sp)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x30(sp)
    bl      GXSetTevKColor
    lwz     r0, -0x79ec(rtoc)
    addi    r4, sp, 0x28
    li      r3, 0x1
    stw     r0, 0x24(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x28(sp)
    bl      GXSetTevKColor
    lwz     r0, -0x79e8(rtoc)
    addi    r4, sp, 0x20
    li      r3, 0x2
    stw     r0, 0x1c(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      GXSetTevKColor
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x3
    bl      GXSetTevSwapModeTable
    lmw     r26, 0xd8(sp)
    lwz     r0, 0xf4(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl THPGXRestore
THPGXRestore: # 0x8001e4f0
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    li      r4, 0x7
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    bl      GXSetZMode
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0xf
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x3
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
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
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

