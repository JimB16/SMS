
.globl __ct__6J3DSysFv
__ct__6J3DSysFv: # 0x802e069c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      makeTexCoordTable__Fv
    bl      makeTevSwapTable__Fv
    bl      makeAlphaCmpTable__Fv
    bl      makeZModeTable__Fv
    li      r31, 0x0
    stw     r31, 0x34(r30)
    mr      r3, r30
    bl      PSMTXIdentity
    li      r0, 0x1
    stw     r0, 0x4c(r30)
    lis     r3, sTexCoordScaleTable__6J3DSys@h
    addi    r4, r3, sTexCoordScaleTable__6J3DSys@l
    stw     r31, 0x50(r30)
    mr      r3, r30
    stw     r31, 0x38(r30)
    stw     r31, 0x40(r30)
    stw     r31, 0x44(r30)
    stw     r31, 0x48(r30)
    stw     r31, 0x54(r30)
    stw     r31, 0x104(r30)
    stw     r31, 0x108(r30)
    stw     r31, 0x10c(r30)
    stw     r31, 0x110(r30)
    stw     r31, 0x114(r30)
    stw     r31, 0x118(r30)
    stw     r31, 0x100(r30)
    stw     r31, 0x11c(r30)
    sth     r0, 0x0(r4)
    sth     r0, 0x2(r4)
    sth     r31, 0x4(r4)
    sth     r31, 0x6(r4)
    sth     r0, 0x8(r4)
    sth     r0, 0xa(r4)
    sth     r31, 0xc(r4)
    sth     r31, 0xe(r4)
    sth     r0, 0x10(r4)
    sth     r0, 0x12(r4)
    sth     r31, 0x14(r4)
    sth     r31, 0x16(r4)
    sth     r0, 0x18(r4)
    sth     r0, 0x1a(r4)
    sth     r31, 0x1c(r4)
    sth     r31, 0x1e(r4)
    sth     r0, 0x20(r4)
    sth     r0, 0x22(r4)
    sth     r31, 0x24(r4)
    sth     r31, 0x26(r4)
    sth     r0, 0x28(r4)
    sth     r0, 0x2a(r4)
    sth     r31, 0x2c(r4)
    sth     r31, 0x2e(r4)
    sth     r0, 0x30(r4)
    sth     r0, 0x32(r4)
    sth     r31, 0x34(r4)
    sth     r31, 0x36(r4)
    sth     r0, 0x38(r4)
    sth     r0, 0x3a(r4)
    sth     r31, 0x3c(r4)
    sth     r31, 0x3e(r4)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl loadPosMtxIndx__6J3DSysCFiUs
loadPosMtxIndx__6J3DSysCFiUs: # 0x802e07b8
    mflr    r0
    mulli   r4, r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    addi    r3, r5, 0x0
    bl      GXLoadPosMtxIndx
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadNrmMtxIndx__6J3DSysCFiUs
loadNrmMtxIndx__6J3DSysCFiUs: # 0x802e07e0
    mflr    r0
    mulli   r4, r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    addi    r3, r5, 0x0
    bl      GXLoadNrmMtxIndx3x3
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setTexCacheRegion__6J3DSysF15_GXTexCacheSize
setTexCacheRegion__6J3DSysF15_GXTexCacheSize: # 0x802e0808
    mflr    r0
    lis     r5, unk_803a9fa0@ha
    stw     r0, 0x4(sp)
    addi    r7, r5, unk_803a9fa0@l
    lis     r5, 0x803b
    stwu    sp, -0x50(sp)
    stmw    r24, 0x30(sp)
    mr      r30, r3
    mr      r31, r4
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x20(sp)
    slwi    r6, r4, 2
    addi    r4, sp, 0x10
    stw     r0, 0x24(sp)
    lwz     r3, 0x8(r7)
    lwz     r0, 0xc(r7)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwzu    r3, -0x6050(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwzx    r27, r4, r6
    stw     r27, 0x5c(r30)
    lwz     r0, 0x34(r30)
    clrrwi. r0, r0, 31
    beq-    branch_0x802e0890
    li      r0, 0x1
    b       branch_0x802e0894

branch_0x802e0890:
    li      r0, 0x0
branch_0x802e0894:
    cmpwi   r0, 0x0
    beq-    branch_0x802e0950
    addi    r3, sp, 0x20
    lwzx    r28, r3, r6
    li      r24, 0x0
    li      r29, 0x0
    b       branch_0x802e0944

branch_0x802e08b0:
    clrlwi. r0, r24, 31
    beq-    branch_0x802e08fc
    mullw   r26, r24, r28
    addi    r3, r29, 0x60
    addis   r25, r26, 0x8
    addi    r5, r25, 0x0
    addi    r6, r31, 0x0
    addi    r7, r26, 0x0
    addi    r8, r31, 0x0
    add     r3, r30, r3
    li      r4, 0x0
    bl      GXInitTexCacheRegion
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    addi    r6, r26, 0x0
    addi    r7, r31, 0x0
    bl      JRNLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
    b       branch_0x802e093c

branch_0x802e08fc:
    mullw   r25, r24, r28
    addi    r3, r29, 0x60
    addis   r26, r25, 0x8
    addi    r5, r25, 0x0
    addi    r6, r31, 0x0
    addi    r7, r26, 0x0
    addi    r8, r31, 0x0
    add     r3, r30, r3
    li      r4, 0x0
    bl      GXInitTexCacheRegion
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    addi    r6, r26, 0x0
    addi    r7, r31, 0x0
    bl      JRNLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
branch_0x802e093c:
    addi    r24, r24, 0x1
    addi    r29, r29, 0x10
branch_0x802e0944:
    cmplw   r24, r27
    blt+    branch_0x802e08b0
    b       branch_0x802e09b4

branch_0x802e0950:
    addi    r3, sp, 0x20
    lwzx    r28, r3, r6
    li      r24, 0x0
    li      r29, 0x0
    b       branch_0x802e09ac

branch_0x802e0964:
    mullw   r25, r24, r28
    addi    r3, r29, 0x60
    addis   r26, r25, 0x8
    addi    r5, r25, 0x0
    addi    r6, r31, 0x0
    addi    r7, r26, 0x0
    addi    r8, r31, 0x0
    add     r3, r30, r3
    li      r4, 0x0
    bl      GXInitTexCacheRegion
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    addi    r6, r26, 0x0
    addi    r7, r31, 0x0
    bl      JRNLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
    addi    r24, r24, 0x1
    addi    r29, r29, 0x10
branch_0x802e09ac:
    cmplw   r24, r27
    blt+    branch_0x802e0964
branch_0x802e09b4:
    lmw     r24, 0x30(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl drawInit__6J3DSysFv
drawInit__6J3DSysFv: # 0x802e09c8
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    li      r3, 0x2
    stw     r29, 0x84(sp)
    stw     r28, 0x80(sp)
    bl      GXSetMisc
    bl      GXInvalidateVtxCache
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetCoPlanar
    li      r3, 0x0
    bl      GXSetClipMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetDither
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
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
    li      r4, 0xc
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xe
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0x10
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0x11
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0x12
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0x13
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0x14
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    bl      GXSetNumIndStages
    mr      r3, r30
    bl      reinitTexture__6J3DSysFv
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x2
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x3
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x4
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x5
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x6
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x7
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
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
    addi    r3, sp, 0x50
    bl      PSMTXIdentity
    li      r31, 0x0
    b       branch_0x802e0d00

branch_0x802e0ce4:
    clrlwi  r0, r31, 24
    mulli   r4, r0, 0x3
    addi    r3, sp, 0x50
    addi    r4, r4, 0x1e
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    addi    r31, r31, 0x1
branch_0x802e0d00:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0xa
    blt+    branch_0x802e0ce4
    lis     r4, unk_803a9fc0@ha
    addi    r5, r4, unk_803a9fc0@l
    lwz     r4, 0x0(r5)
    li      r31, 0x0
    lwz     r0, 0x4(r5)
    stw     r4, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x48(sp)
    stw     r0, 0x4c(sp)
    b       branch_0x802e0d64

branch_0x802e0d4c:
    clrlwi  r4, r31, 24
    addi    r3, r4, 0x1
    addi    r4, sp, 0x38
    li      r5, 0x1
    bl      GXSetIndTexMtx
    addi    r31, r31, 0x1
branch_0x802e0d64:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x3
    blt+    branch_0x802e0d4c
    lwz     r0, R13Off_m0x7548(r13)
    addi    r4, sp, 0x24
    li      r3, 0x4
    stw     r0, 0x24(sp)
    bl      GXSetChanMatColor
    lwz     r0, R13Off_m0x7548(r13)
    addi    r4, sp, 0x20
    li      r3, 0x5
    stw     r0, 0x20(sp)
    bl      GXSetChanMatColor
    lbz     r3, R13Off_m0x7540(r13)
    bl      GXSetNumChans
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    lis     r4, unk_803a9fd8@ha
    addi    r5, r4, unk_803a9fd8@l
    lwz     r4, 0x0(r5)
    addi    r29, sp, 0x28
    lwz     r0, 0x4(r5)
    li      r28, 0x0
    li      r31, 0x0
    stw     r4, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x30(sp)
    stw     r0, 0x34(sp)
branch_0x802e0de4:
    lwzx    r3, r29, r31
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x2
    li      r9, 0x2
    bl      GXSetChanCtrl
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x802e0de4
    lis     r4, j3dDefaultTexCoordInfo@h
    addi    r29, r4, j3dDefaultTexCoordInfo@l
    li      r31, 0x0
    b       branch_0x802e0e4c

branch_0x802e0e24:
    clrlslwi  r0, r31, 24, 2
    add     r4, r29, r0
    lbz     r6, 0x2(r4)
    clrlwi  r3, r31, 24
    lbz     r5, 0x1(r4)
    li      r7, 0x0
    lbz     r4, 0x0(r4)
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    addi    r31, r31, 0x1
branch_0x802e0e4c:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x8
    blt+    branch_0x802e0e24
    li      r31, 0x0
    b       branch_0x802e0e74

branch_0x802e0e60:
    clrlwi  r3, r31, 24
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    addi    r31, r31, 0x1
branch_0x802e0e74:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x4
    blt+    branch_0x802e0e60
    addi    r29, sp, 0x1c
    li      r31, 0x0
    b       branch_0x802e0ea4

branch_0x802e0e8c:
    lwz     r0, R13Off_m0x7528(r13)
    addi    r4, r29, 0x0
    clrlwi  r3, r31, 24
    stw     r0, 0x1c(sp)
    bl      GXSetTevKColor
    addi    r31, r31, 0x1
branch_0x802e0ea4:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x4
    blt+    branch_0x802e0e8c
    addi    r29, sp, 0x14
    li      r31, 0x0
    b       branch_0x802e0edc

branch_0x802e0ebc:
    lwz     r5, R13Off_m0x7534(r13)
    mr      r4, r29
    lwz     r0, R13Off_m0x7530(r13)
    clrlwi  r3, r31, 24
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      GXSetTevColorS10
    addi    r31, r31, 0x1
branch_0x802e0edc:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x4
    blt+    branch_0x802e0ebc
    li      r31, 0x0
    b       branch_0x802e0f5c

branch_0x802e0ef0:
    clrlwi  r3, r31, 24
    li      r4, 0xa
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    clrlwi  r3, r31, 24
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    clrlwi  r3, r31, 24
    li      r4, 0x5
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    clrlwi  r3, r31, 24
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    addi    r31, r31, 0x1
branch_0x802e0f5c:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x802e0ef0
    li      r31, 0x0
    b       branch_0x802e0f84

branch_0x802e0f70:
    clrlwi  r3, r31, 24
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetTevSwapMode
    addi    r31, r31, 0x1
branch_0x802e0f84:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x802e0f70
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
    li      r31, 0x0
    li      r29, 0x0
    b       branch_0x802e102c

branch_0x802e0ffc:
    stw     r29, 0x8(sp)
    clrlwi  r3, r31, 24
    li      r4, 0x0
    stw     r29, 0xc(sp)
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXSetTevIndirect
    addi    r31, r31, 0x1
branch_0x802e102c:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x802e0ffc
    li      r3, 0x4
    oris    r3, r3, 0x4
    mtspr   914, r3
    li      r3, 0x5
    oris    r3, r3, 0x5
    mtspr   915, r3
    li      r3, 0x6
    oris    r3, r3, 0x6
    mtspr   916, r3
    li      r3, 0x7
    oris    r3, r3, 0x7
    mtspr   917, r3
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setTexCacheRegion__6J3DSysF15_GXTexCacheSize
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl reinitTexture__6J3DSysFv
reinitTexture__6J3DSysFv: # 0x802e1094
    mflr    r0
    lis     r3, NullTexData_803e1280@h
    stw     r0, 0x4(sp)
    addi    r4, r3, NullTexData_803e1280@l
    li      r5, 0x4
    stwu    sp, -0x30(sp)
    li      r6, 0x4
    li      r7, 0x3
    addi    r3, sp, 0xc
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
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __sinit_J3DSys_cpp
__sinit_J3DSys_cpp: # 0x802e1138
    mflr    r0
    lis     r3, j3dSys@h
    stw     r0, 0x4(sp)
    addi    r3, r3, j3dSys@l
    stwu    sp, -0x8(sp)
    bl      __ct__6J3DSysFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

