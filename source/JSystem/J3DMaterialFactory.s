
.globl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
__ct__18J3DMaterialFactoryFRC16J3DMaterialBlock: # 0x802e524c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    lhz     r0, 0x8(r4)
    sth     r0, 0x0(r30)
    lwz     r4, 0xc(r4)
    bl      JSUConvertOffsetToPtr_19J3DMaterialInitData___FPCvPCv
    stw     r3, 0x4(r30)
    mr      r3, r31
    lwz     r4, 0x10(r31)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x8(r30)
    lwz     r4, 0x18(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x802e52bc
    lwz     r0, 0x14(r31)
    subf    r0, r0, r4
    cmplwi  r0, 0x4
    ble-    branch_0x802e52bc
    mr      r3, r31
    bl      JSUConvertOffsetToPtr_14J3DIndInitData___FPCvPCv
    stw     r3, 0xc(r30)
    b       branch_0x802e52c4

branch_0x802e52bc:
    li      r0, 0x0
    stw     r0, 0xc(r30)
branch_0x802e52c4:
    mr      r3, r31
    lwz     r4, 0x1c(r31)
    bl      JSUConvertOffsetToPtr_11_GXCullMode___FPCvPCv
    stw     r3, 0x3c(r30)
    mr      r3, r31
    lwz     r4, 0x20(r31)
    bl      JSUConvertOffsetToPtr_8_GXColor___FPCvPCv
    stw     r3, 0x10(r30)
    mr      r3, r31
    lwz     r4, 0x24(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x14(r30)
    mr      r3, r31
    lwz     r4, 0x28(r31)
    bl      JSUConvertOffsetToPtr_16J3DColorChanInfo___FPCvPCv
    stw     r3, 0x18(r30)
    mr      r3, r31
    lwz     r4, 0x2c(r31)
    bl      JSUConvertOffsetToPtr_8_GXColor___FPCvPCv
    stw     r3, 0x1c(r30)
    mr      r3, r31
    lwz     r4, 0x30(r31)
    bl      JSUConvertOffsetToPtr_12J3DLightInfo___FPCvPCv
    stw     r3, 0x20(r30)
    mr      r3, r31
    lwz     r4, 0x34(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x24(r30)
    mr      r3, r31
    lwz     r4, 0x38(r31)
    bl      JSUConvertOffsetToPtr_15J3DTexCoordInfo___FPCvPCv
    stw     r3, 0x28(r30)
    mr      r3, r31
    lwz     r4, 0x3c(r31)
    bl      JSUConvertOffsetToPtr_16J3DTexCoord2Info___FPCvPCv
    stw     r3, 0x2c(r30)
    mr      r3, r31
    lwz     r4, 0x40(r31)
    bl      JSUConvertOffsetToPtr_13J3DTexMtxInfo___FPCvPCv
    stw     r3, 0x30(r30)
    mr      r3, r31
    lwz     r4, 0x44(r31)
    bl      JSUConvertOffsetToPtr_13J3DTexMtxInfo___FPCvPCv
    stw     r3, 0x34(r30)
    mr      r3, r31
    lwz     r4, 0x48(r31)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x38(r30)
    mr      r3, r31
    lwz     r4, 0x4c(r31)
    bl      JSUConvertOffsetToPtr_15J3DTevOrderInfo___FPCvPCv
    stw     r3, 0x40(r30)
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      JSUConvertOffsetToPtr_11_GXColorS10___FPCvPCv
    stw     r3, 0x44(r30)
    mr      r3, r31
    lwz     r4, 0x54(r31)
    bl      JSUConvertOffsetToPtr_8_GXColor___FPCvPCv
    stw     r3, 0x48(r30)
    mr      r3, r31
    lwz     r4, 0x58(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x4c(r30)
    mr      r3, r31
    lwz     r4, 0x5c(r31)
    bl      JSUConvertOffsetToPtr_15J3DTevStageInfo___FPCvPCv
    stw     r3, 0x50(r30)
    mr      r3, r31
    lwz     r4, 0x60(r31)
    bl      JSUConvertOffsetToPtr_18J3DTevSwapModeInfo___FPCvPCv
    stw     r3, 0x54(r30)
    mr      r3, r31
    lwz     r4, 0x64(r31)
    bl      JSUConvertOffsetToPtr_23J3DTevSwapModeTableInfo___FPCvPCv
    stw     r3, 0x58(r30)
    mr      r3, r31
    lwz     r4, 0x68(r31)
    bl      JSUConvertOffsetToPtr_10J3DFogInfo___FPCvPCv
    stw     r3, 0x5c(r30)
    mr      r3, r31
    lwz     r4, 0x6c(r31)
    bl      JSUConvertOffsetToPtr_16J3DAlphaCompInfo___FPCvPCv
    stw     r3, 0x60(r30)
    mr      r3, r31
    lwz     r4, 0x70(r31)
    bl      JSUConvertOffsetToPtr_12J3DBlendInfo___FPCvPCv
    stw     r3, 0x64(r30)
    mr      r3, r31
    lwz     r4, 0x74(r31)
    bl      JSUConvertOffsetToPtr_12J3DZModeInfo___FPCvPCv
    stw     r3, 0x68(r30)
    mr      r3, r31
    lwz     r4, 0x78(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x6c(r30)
    mr      r3, r31
    lwz     r4, 0x7c(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x70(r30)
    mr      r3, r31
    lwz     r4, 0x80(r31)
    bl      JSUConvertOffsetToPtr_15J3DNBTScaleInfo___FPCvPCv
    stw     r3, 0x74(r30)
    mr      r3, r30
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl countUniqueMaterials__18J3DMaterialFactoryFv
countUniqueMaterials__18J3DMaterialFactoryFv: # 0x802e5480
    lhz     r6, 0x0(r3)
    li      r7, 0x0
    b       branch_0x802e54a8

branch_0x802e548c:
    clrlwi  r4, r7, 16
    lwz     r5, 0x8(r3)
    clrlslwi  r0, r7, 16, 1
    lhzx    r0, r5, r0
    cmplw   r0, r4
    blt-    branch_0x802e54b4
    addi    r7, r7, 0x1
branch_0x802e54a8:
    clrlwi  r0, r7, 16
    cmplw   r0, r6
    blt+    branch_0x802e548c
branch_0x802e54b4:
    mr      r3, r7
    blr


.globl countStages__18J3DMaterialFactoryCFi
countStages__18J3DMaterialFactoryCFi: # 0x802e54bc
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    li      r6, 0x0
    lhzx    r0, r5, r0
    li      r5, 0x0
    mulli   r0, r0, 0x14c
    add     r4, r4, r0
    lbz     r0, 0x4(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x802e54f0
    lwz     r3, 0x4c(r3)
    lbzx    r5, r3, r0
branch_0x802e54f0:
    lhz     r0, 0x84(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5500
    li      r6, 0x1
branch_0x802e5500:
    lhz     r0, 0x86(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5510
    addi    r6, r6, 0x1
branch_0x802e5510:
    lhz     r0, 0x88(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5520
    addi    r6, r6, 0x1
branch_0x802e5520:
    lhz     r0, 0x8a(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5530
    addi    r6, r6, 0x1
branch_0x802e5530:
    lhz     r0, 0x8c(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5540
    addi    r6, r6, 0x1
branch_0x802e5540:
    lhz     r0, 0x8e(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5550
    addi    r6, r6, 0x1
branch_0x802e5550:
    lhz     r0, 0x90(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5560
    addi    r6, r6, 0x1
branch_0x802e5560:
    lhz     r0, 0x92(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5570
    addi    r6, r6, 0x1
branch_0x802e5570:
    cmplw   r5, r6
    beq-    branch_0x802e5598
    cmplwi  r6, 0x0
    beq-    branch_0x802e5598
    cmplw   r5, r6
    ble-    branch_0x802e5590
    mr      r3, r5
    blr

branch_0x802e5590:
    mr      r3, r6
    blr

branch_0x802e5598:
    mr      r3, r5
    blr


.globl create__18J3DMaterialFactoryCFP11J3DMaterialiUl
create__18J3DMaterialFactoryCFP11J3DMaterialiUl: # 0x802e55a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stmw    r22, 0xe0(sp)
    addi    r29, r5, 0x0
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    addi    r23, r6, 0x0
    addi    r4, r29, 0x0
    bl      countStages__18J3DMaterialFactoryCFi
    extrwi  r28, r23, 5, 11
    cmplw   r3, r28
    ble-    branch_0x802e55d8
    mr      r28, r3
branch_0x802e55d8:
    cmplwi  r28, 0x8
    ble-    branch_0x802e55e8
    li      r26, 0x8
    b       branch_0x802e55ec

branch_0x802e55e8:
    mr      r26, r28
branch_0x802e55ec:
    rlwinm. r0, r23, 0, 1, 1
    beq-    branch_0x802e55fc
    li      r3, 0x0
    b       branch_0x802e5600

branch_0x802e55fc:
    li      r3, 0x1
branch_0x802e5600:
    rlwinm. r0, r23, 0, 5, 5
    addi    r22, r3, 0x0
    beq-    branch_0x802e5614
    li      r3, 0x0
    b       branch_0x802e5618

branch_0x802e5614:
    li      r3, 0x1
branch_0x802e5618:
    rlwinm. r0, r23, 0, 3, 3
    addi    r24, r3, 0x0
    beq-    branch_0x802e562c
    li      r3, 0x0
    b       branch_0x802e5630

branch_0x802e562c:
    li      r3, 0x1
branch_0x802e5630:
    rlwinm. r0, r23, 0, 7, 7
    addi    r23, r3, 0x0
    beq-    branch_0x802e5644
    li      r0, 0x1
    b       branch_0x802e5648

branch_0x802e5644:
    li      r0, 0x0
branch_0x802e5648:
    cmplwi  r31, 0x0
    mr      r25, r0
    bne-    branch_0x802e5670
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802e566c
    mr      r3, r27
    bl      initialize__11J3DMaterialFv
branch_0x802e566c:
    mr      r31, r27
branch_0x802e5670:
    mr      r3, r22
    bl      createColorBlock__11J3DMaterialFi
    stw     r3, 0x20(r31)
    mr      r3, r24
    bl      createTexGenBlock__11J3DMaterialFi
    stw     r3, 0x24(r31)
    clrlwi  r3, r28, 16
    bl      createTevBlock__11J3DMaterialFi
    stw     r3, 0x28(r31)
    mr      r3, r25
    bl      createIndBlock__11J3DMaterialFi
    stw     r3, 0x2c(r31)
    slwi    r27, r29, 1
    addi    r3, r23, 0x0
    lwz     r4, 0x8(r30)
    lwz     r5, 0x4(r30)
    lhzx    r0, r4, r27
    mulli   r0, r0, 0x14c
    lbzx    r4, r5, r0
    bl      createPEBlock__11J3DMaterialFiUl
    stw     r3, 0x30(r31)
    mr      r3, r30
    mr      r4, r29
    sth     r29, 0xc(r31)
    lwz     r5, 0x8(r30)
    lwz     r6, 0x4(r30)
    lhzx    r0, r5, r27
    mulli   r0, r0, 0x14c
    lbzx    r0, r6, r0
    stw     r0, 0x8(r31)
    bl      newColorChanNum__18J3DMaterialFactoryCFi
    mr      r4, r3
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newCullMode__18J3DMaterialFactoryCFi
    mr      r4, r3
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newTexGenNum__18J3DMaterialFactoryCFi
    mr      r4, r3
    lwz     r3, 0x24(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0xb0
    bl      newNBTScale__18J3DMaterialFactoryCFi
    lwz     r3, 0xb0(sp)
    addi    r4, sp, 0xc0
    lwz     r0, 0xb4(sp)
    stw     r3, 0xc0(sp)
    lwz     r3, 0xb8(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0xbc(sp)
    stw     r3, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lwz     r3, 0x24(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newFog__18J3DMaterialFactoryCFi
    mr      r4, r3
    lwz     r3, 0x30(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0xa8
    bl      newAlphaComp__18J3DMaterialFactoryCFi
    lwz     r0, 0xa8(sp)
    addi    r4, sp, 0xac
    stw     r0, 0xac(sp)
    lwz     r3, 0x30(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0xa0
    bl      newBlend__18J3DMaterialFactoryCFi
    lwz     r0, 0xa0(sp)
    addi    r4, sp, 0xa4
    stw     r0, 0xa4(sp)
    lwz     r3, 0x30(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x98
    bl      newZMode__18J3DMaterialFactoryCFi
    lhz     r0, 0x98(sp)
    addi    r4, sp, 0x9c
    sth     r0, 0x9c(sp)
    lwz     r3, 0x30(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newZCompLoc__18J3DMaterialFactoryCFi
    mr      r4, r3
    lwz     r3, 0x30(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newDither__18J3DMaterialFactoryCFi
    mr      r4, r3
    lwz     r3, 0x30(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newTevStageNum__18J3DMaterialFactoryCFi
    mr      r4, r3
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x60(r12)
    mtlr    r12
    blrl
    li      r22, 0x0
    b       branch_0x802e58e8

branch_0x802e58bc:
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newTexNo__18J3DMaterialFactoryCFii
    mr      r5, r3
    lwz     r3, 0x28(r31)
    clrlwi  r4, r22, 24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e58e8:
    clrlwi  r5, r22, 24
    cmplw   r5, r26
    blt+    branch_0x802e58bc
    addi    r22, sp, 0x94
    li      r23, 0x0
    b       branch_0x802e5938

branch_0x802e5900:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x90
    bl      newTevOrder__18J3DMaterialFactoryCFii
    lwz     r0, 0x90(sp)
    addi    r5, r22, 0x0
    clrlwi  r4, r23, 24
    stw     r0, 0x94(sp)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x802e5938:
    clrlwi  r6, r23, 24
    cmplw   r6, r28
    blt+    branch_0x802e5900
    addi    r26, sp, 0x88
    li      r23, 0x0
    b       branch_0x802e5a34

branch_0x802e5950:
    lwz     r0, 0x8(r30)
    mr      r4, r30
    lwz     r3, 0x4(r30)
    mr      r5, r29
    lhzx    r0, r27, r0
    mulli   r0, r0, 0x14c
    add     r22, r3, r0
    addi    r3, sp, 0x80
    bl      newTevStage__18J3DMaterialFactoryCFii
    lwz     r3, 0x80(sp)
    clrlwi  r25, r23, 24
    lwz     r0, 0x84(sp)
    mr      r4, r25
    stw     r3, 0x88(sp)
    mr      r5, r26
    stw     r0, 0x8c(sp)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x6c(r12)
    mtlr    r12
    blrl
    slwi    r3, r25, 1
    addi    r24, r3, 0x104
    add     r24, r22, r24
    lhz     r0, 0x0(r24)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5a30
    lwz     r3, 0x28(r31)
    slwi    r4, r0, 2
    lwz     r5, 0x54(r30)
    addi    r0, r4, 0x1
    lwz     r12, 0x0(r3)
    lbzx    r22, r5, r0
    mr      r4, r25
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r5, 0x7(r3)
    slwi    r0, r22, 2
    addi    r4, r25, 0x0
    rlwinm  r5, r5, 0, 30, 27
    or      r0, r5, r0
    stb     r0, 0x7(r3)
    lwz     r3, 0x28(r31)
    lhz     r0, 0x0(r24)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x54(r30)
    slwi    r0, r0, 2
    lwz     r12, 0x70(r12)
    lbzx    r22, r5, r0
    mtlr    r12
    blrl
    lbz     r0, 0x7(r3)
    clrrwi  r0, r0, 2
    or      r0, r0, r22
    stb     r0, 0x7(r3)
branch_0x802e5a30:
    addi    r23, r23, 0x1
branch_0x802e5a34:
    clrlwi  r6, r23, 24
    cmplw   r6, r28
    blt+    branch_0x802e5950
    li      r22, 0x0
    b       branch_0x802e5a7c

branch_0x802e5a48:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x7c
    clrlwi  r6, r22, 24
    bl      newTevKColor__18J3DMaterialFactoryCFii
    lwz     r3, 0x28(r31)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x7c
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5a7c:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x4
    blt+    branch_0x802e5a48
    li      r22, 0x0
    b       branch_0x802e5ac4

branch_0x802e5a90:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x74
    clrlwi  r6, r22, 24
    bl      newTevColor__18J3DMaterialFactoryCFii
    lwz     r3, 0x28(r31)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x74
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5ac4:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x4
    blt+    branch_0x802e5a90
    addi    r22, sp, 0x70
    li      r23, 0x0
    b       branch_0x802e5b18

branch_0x802e5adc:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x6c
    clrlwi  r6, r23, 24
    bl      newTevSwapModeTable__18J3DMaterialFactoryCFii
    lbz     r0, 0x6c(sp)
    addi    r5, r22, 0x0
    clrlwi  r4, r23, 24
    stb     r0, 0x70(sp)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x80(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x802e5b18:
    clrlwi  r0, r23, 24
    cmplwi  r0, 0x4
    blt+    branch_0x802e5adc
    li      r22, 0x0
    b       branch_0x802e5b60

branch_0x802e5b2c:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x68
    clrlwi  r6, r22, 24
    bl      newAmbColor__18J3DMaterialFactoryCFii
    lwz     r3, 0x20(r31)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x68
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5b60:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x2
    blt+    branch_0x802e5b2c
    li      r22, 0x0
    b       branch_0x802e5ba8

branch_0x802e5b74:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x64
    clrlwi  r6, r22, 24
    bl      newMatColor__18J3DMaterialFactoryCFii
    lwz     r3, 0x20(r31)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x64
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5ba8:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x2
    blt+    branch_0x802e5b74
    li      r22, 0x0
    b       branch_0x802e5bf8

branch_0x802e5bbc:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x60
    clrlwi  r6, r22, 24
    bl      newColorChan__18J3DMaterialFactoryCFii
    lhz     r0, 0x60(sp)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0xd4
    sth     r0, 0xd4(sp)
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5bf8:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x4
    blt+    branch_0x802e5bbc
    li      r22, 0x0
    b       branch_0x802e5c48

branch_0x802e5c0c:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x5c
    clrlwi  r6, r22, 24
    bl      newTexCoord__18J3DMaterialFactoryCFii
    lwz     r0, 0x5c(sp)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0xd0
    stw     r0, 0xd0(sp)
    lwz     r3, 0x24(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5c48:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x8
    blt+    branch_0x802e5c0c
    li      r22, 0x0
    b       branch_0x802e5c8c

branch_0x802e5c5c:
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    clrlwi  r5, r22, 24
    bl      newTexMtx__18J3DMaterialFactoryCFii
    mr      r5, r3
    lwz     r3, 0x24(r31)
    clrlwi  r4, r22, 24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5c8c:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x8
    blt+    branch_0x802e5c5c
    lwz     r3, 0x8(r30)
    li      r23, 0x0
    lwz     r4, 0x4(r30)
    lhzx    r0, r3, r27
    mulli   r0, r0, 0x14c
    add     r22, r4, r0
    b       branch_0x802e5cd8

branch_0x802e5cb4:
    lwz     r3, 0x28(r31)
    clrlwi  r4, r23, 24
    addi    r0, r4, 0x9c
    lwz     r12, 0x0(r3)
    lbzx    r5, r22, r0
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x802e5cd8:
    clrlwi  r0, r23, 24
    cmplw   r0, r28
    blt+    branch_0x802e5cb4
    li      r23, 0x0
    b       branch_0x802e5d10

branch_0x802e5cec:
    lwz     r3, 0x28(r31)
    clrlwi  r4, r23, 24
    addi    r0, r4, 0xac
    lwz     r12, 0x0(r3)
    lbzx    r5, r22, r0
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x802e5d10:
    clrlwi  r0, r23, 24
    cmplw   r0, r28
    blt+    branch_0x802e5cec
    lwz     r0, 0xc(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802e5eac
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newIndTexStageNum__18J3DMaterialFactoryCFi
    addi    r24, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      newIndTexStageNum__18J3DMaterialFactoryCFi
    mr      r4, r3
    lwz     r3, 0x2c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    clrlwi  r23, r24, 24
    li      r22, 0x0
    b       branch_0x802e5d9c

branch_0x802e5d68:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x40
    clrlwi  r6, r22, 24
    bl      newIndTexMtx__18J3DMaterialFactoryCFii
    lwz     r3, 0x2c(r31)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x40
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5d9c:
    clrlwi  r0, r22, 24
    cmplw   r0, r23
    blt+    branch_0x802e5d68
    addi    r22, sp, 0x3c
    clrlwi  r23, r24, 24
    li      r25, 0x0
    b       branch_0x802e5df4

branch_0x802e5db8:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x38
    clrlwi  r6, r25, 24
    bl      newIndTexOrder__18J3DMaterialFactoryCFii
    lwz     r0, 0x38(sp)
    addi    r5, r22, 0x0
    clrlwi  r4, r25, 24
    stw     r0, 0x3c(sp)
    lwz     r3, 0x2c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
branch_0x802e5df4:
    clrlwi  r0, r25, 24
    cmplw   r0, r23
    blt+    branch_0x802e5db8
    clrlwi  r23, r24, 24
    li      r22, 0x0
    b       branch_0x802e5e40

branch_0x802e5e0c:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x34
    clrlwi  r6, r22, 24
    bl      newIndTexCoordScale__18J3DMaterialFactoryCFii
    lwz     r3, 0x2c(r31)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x34
    lwz     r12, 0x0(r3)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x802e5e40:
    clrlwi  r0, r22, 24
    cmplw   r0, r23
    blt+    branch_0x802e5e0c
    addi    r22, sp, 0x28
    li      r23, 0x0
    b       branch_0x802e5ea0

branch_0x802e5e58:
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x1c
    bl      newIndTevStage__18J3DMaterialFactoryCFii
    lwz     r0, 0x1c(sp)
    mr      r5, r22
    lwz     r3, 0x20(sp)
    clrlwi  r4, r23, 24
    stw     r0, 0x28(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8c(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x802e5ea0:
    clrlwi  r6, r23, 24
    cmplw   r6, r28
    blt+    branch_0x802e5e58
branch_0x802e5eac:
    mr      r3, r31
    lmw     r22, 0xe0(sp)
    lwz     r0, 0x10c(sp)
    addi    sp, sp, 0x108
    mtlr    r0
    blr


.globl newMatColor__18J3DMaterialFactoryCFii
newMatColor__18J3DMaterialFactoryCFii: # 0x802e5ec4
    stwu    sp, -0x38(sp)
    slwi    r0, r5, 1
    slwi    r10, r6, 1
    lwz     r7, 0x2d8(rtoc)
    stw     r7, 0x2c(sp)
    lwz     r5, 0x8(r4)
    lwz     r6, 0x4(r4)
    lhzx    r0, r5, r0
    lbz     r7, 0x2d(sp)
    mulli   r0, r0, 0x14c
    lbz     r8, 0x2e(sp)
    lbz     r9, 0x2f(sp)
    add     r0, r6, r0
    add     r5, r0, r10
    lhz     r0, 0x8(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e5f38
    lwz     r4, 0x10(r4)
    slwi    r0, r0, 2
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r3)
    b       branch_0x802e5f4c

branch_0x802e5f38:
    lbz     r0, 0x2c(sp)
    stb     r0, 0x0(r3)
    stb     r7, 0x1(r3)
    stb     r8, 0x2(r3)
    stb     r9, 0x3(r3)
branch_0x802e5f4c:
    addi    sp, sp, 0x38
    blr


.globl newColorChanNum__18J3DMaterialFactoryCFi
newColorChanNum__18J3DMaterialFactoryCFi: # 0x802e5f54
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x14c
    add     r4, r4, r0
    lbz     r0, 0x2(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x802e5f84
    lwz     r3, 0x14(r3)
    lbzx    r3, r3, r0
    blr

branch_0x802e5f84:
    li      r3, 0x0
    blr


.globl newColorChan__18J3DMaterialFactoryCFii
newColorChan__18J3DMaterialFactoryCFii: # 0x802e5f8c
    mflr    r0
    slwi    r6, r6, 1
    stw     r0, 0x4(sp)
    slwi    r0, r5, 1
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lwz     r7, 0x8(r4)
    lwz     r5, 0x4(r4)
    lhzx    r0, r7, r0
    mulli   r0, r0, 0x14c
    add     r0, r5, r0
    add     r3, r0, r6
    lhz     r0, 0xc(r3)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6008
    lwz     r3, 0x18(r4)
    slwi    r0, r0, 3
    add     r7, r3, r0
    lbz     r8, 0x5(r7)
    cmplwi  r8, 0xff
    bne-    branch_0x802e5fe8
    li      r8, 0x0
branch_0x802e5fe8:
    lbz     r3, 0x0(r7)
    lbz     r4, 0x1(r7)
    lbz     r5, 0x2(r7)
    lbz     r6, 0x3(r7)
    lbz     r7, 0x4(r7)
    bl      calcColorChanID__FUsUcUcUcUcUc
    sth     r3, 0x0(r31)
    b       branch_0x802e6040

branch_0x802e6008:
    subi    r3, r13, 0x7518
    lbz     r8, 0x5(r3)
    addis   r0, r8, 0x0
    cmplwi  r0, 0xffff
    bne-    branch_0x802e6020
    li      r8, 0x0
branch_0x802e6020:
    subi    r7, r13, 0x7518
    lbz     r3, -0x7518(r13)
    lbz     r4, 0x1(r7)
    lbz     r5, 0x2(r7)
    lbz     r6, 0x3(r7)
    lbz     r7, 0x4(r7)
    bl      calcColorChanID__FUsUcUcUcUcUc
    sth     r3, 0x0(r31)
branch_0x802e6040:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl newAmbColor__18J3DMaterialFactoryCFii
newAmbColor__18J3DMaterialFactoryCFii: # 0x802e6054
    stwu    sp, -0x38(sp)
    slwi    r0, r5, 1
    slwi    r10, r6, 1
    lwz     r7, 0x2dc(rtoc)
    stw     r7, 0x2c(sp)
    lwz     r5, 0x8(r4)
    lwz     r6, 0x4(r4)
    lhzx    r0, r5, r0
    lbz     r7, 0x2d(sp)
    mulli   r0, r0, 0x14c
    lbz     r8, 0x2e(sp)
    lbz     r9, 0x2f(sp)
    add     r0, r6, r0
    add     r5, r0, r10
    lhz     r0, 0x14(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e60c8
    lwz     r4, 0x1c(r4)
    slwi    r0, r0, 2
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r3)
    b       branch_0x802e60dc

branch_0x802e60c8:
    lbz     r0, 0x2c(sp)
    stb     r0, 0x0(r3)
    stb     r7, 0x1(r3)
    stb     r8, 0x2(r3)
    stb     r9, 0x3(r3)
branch_0x802e60dc:
    addi    sp, sp, 0x38
    blr


.globl newTexGenNum__18J3DMaterialFactoryCFi
newTexGenNum__18J3DMaterialFactoryCFi: # 0x802e60e4
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x14c
    add     r4, r4, r0
    lbz     r0, 0x3(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x802e6114
    lwz     r3, 0x24(r3)
    lbzx    r3, r3, r0
    blr

branch_0x802e6114:
    li      r3, 0x0
    blr


.globl newTexCoord__18J3DMaterialFactoryCFii
newTexCoord__18J3DMaterialFactoryCFii: # 0x802e611c
    lwz     r7, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    slwi    r6, r6, 1
    lhzx    r0, r7, r0
    mulli   r0, r0, 0x14c
    add     r0, r5, r0
    add     r5, r0, r6
    lhz     r0, 0x28(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6170
    lwz     r4, 0x28(r4)
    slwi    r0, r0, 2
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr

branch_0x802e6170:
    lis     r4, 0x803e
    lbzu    r0, 0x15d8(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr


.globl newTexMtx__18J3DMaterialFactoryCFii
newTexMtx__18J3DMaterialFactoryCFii: # 0x802e6190
    mflr    r0
    slwi    r5, r5, 1
    stw     r0, 0x4(sp)
    slwi    r0, r4, 1
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r29, 0x1c(sp)
    lwz     r3, 0x8(r3)
    lwz     r4, 0x4(r30)
    lhzx    r0, r3, r0
    li      r3, 0x0
    mulli   r0, r0, 0x14c
    add     r0, r4, r0
    add     r31, r0, r5
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6208
    li      r3, 0xc4
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e6204
    lhz     r0, 0x48(r31)
    mr      r3, r29
    lwz     r4, 0x30(r30)
    mulli   r0, r0, 0x64
    add     r4, r4, r0
    bl      __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
branch_0x802e6204:
    mr      r3, r29
branch_0x802e6208:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl newCullMode__18J3DMaterialFactoryCFi
newCullMode__18J3DMaterialFactoryCFi: # 0x802e6224
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x14c
    add     r4, r4, r0
    lbz     r0, 0x1(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x802e625c
    lwz     r3, 0x3c(r3)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    clrlwi  r3, r0, 24
    blr

branch_0x802e625c:
    li      r3, 0xff
    blr


.globl newTexNo__18J3DMaterialFactoryCFii
newTexNo__18J3DMaterialFactoryCFii: # 0x802e6264
    lwz     r6, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    slwi    r5, r5, 1
    lhzx    r0, r6, r0
    mulli   r0, r0, 0x14c
    add     r0, r4, r0
    add     r4, r0, r5
    lhz     r0, 0x84(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e62a0
    lwz     r3, 0x38(r3)
    slwi    r0, r0, 1
    lhzx    r3, r3, r0
    blr

branch_0x802e62a0:
    lis     r3, 0x1
    subi    r3, r3, 0x1
    blr


.globl newTevOrder__18J3DMaterialFactoryCFii
newTevOrder__18J3DMaterialFactoryCFii: # 0x802e62ac
    lwz     r7, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    slwi    r6, r6, 1
    lhzx    r0, r7, r0
    mulli   r0, r0, 0x14c
    add     r0, r5, r0
    add     r5, r0, r6
    lhz     r0, 0xbc(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6300
    lwz     r4, 0x40(r4)
    slwi    r0, r0, 2
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr

branch_0x802e6300:
    lbz     r0, -0x753c(r13)
    subi    r4, r13, 0x753c
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr


.globl newTevColor__18J3DMaterialFactoryCFii
newTevColor__18J3DMaterialFactoryCFii: # 0x802e6320
    stwu    sp, -0x40(sp)
    slwi    r0, r5, 1
    slwi    r10, r6, 1
    lwz     r7, 0x2e0(rtoc)
    lwz     r5, 0x2e4(rtoc)
    stw     r7, 0x2c(sp)
    stw     r5, 0x30(sp)
    lwz     r5, 0x8(r4)
    lwz     r6, 0x4(r4)
    lhzx    r0, r5, r0
    lha     r7, 0x2e(sp)
    mulli   r0, r0, 0x14c
    lha     r8, 0x30(sp)
    lha     r9, 0x32(sp)
    add     r0, r6, r0
    add     r5, r0, r10
    lhz     r0, 0xdc(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e639c
    lwz     r4, 0x44(r4)
    slwi    r0, r0, 3
    add     r4, r4, r0
    lha     r0, 0x0(r4)
    sth     r0, 0x0(r3)
    lha     r0, 0x2(r4)
    sth     r0, 0x2(r3)
    lha     r0, 0x4(r4)
    sth     r0, 0x4(r3)
    lha     r0, 0x6(r4)
    sth     r0, 0x6(r3)
    b       branch_0x802e63b0

branch_0x802e639c:
    lha     r0, 0x2c(sp)
    sth     r0, 0x0(r3)
    sth     r7, 0x2(r3)
    sth     r8, 0x4(r3)
    sth     r9, 0x6(r3)
branch_0x802e63b0:
    addi    sp, sp, 0x40
    blr


.globl newTevKColor__18J3DMaterialFactoryCFii
newTevKColor__18J3DMaterialFactoryCFii: # 0x802e63b8
    stwu    sp, -0x38(sp)
    slwi    r0, r5, 1
    slwi    r10, r6, 1
    lwz     r7, 0x2e8(rtoc)
    stw     r7, 0x2c(sp)
    lwz     r5, 0x8(r4)
    lwz     r6, 0x4(r4)
    lhzx    r0, r5, r0
    lbz     r7, 0x2d(sp)
    mulli   r0, r0, 0x14c
    lbz     r8, 0x2e(sp)
    lbz     r9, 0x2f(sp)
    add     r0, r6, r0
    add     r5, r0, r10
    lhz     r0, 0x94(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e642c
    lwz     r4, 0x48(r4)
    slwi    r0, r0, 2
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r3)
    b       branch_0x802e6440

branch_0x802e642c:
    lbz     r0, 0x2c(sp)
    stb     r0, 0x0(r3)
    stb     r7, 0x1(r3)
    stb     r8, 0x2(r3)
    stb     r9, 0x3(r3)
branch_0x802e6440:
    addi    sp, sp, 0x38
    blr


.globl newTevStageNum__18J3DMaterialFactoryCFi
newTevStageNum__18J3DMaterialFactoryCFi: # 0x802e6448
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x14c
    add     r4, r4, r0
    lbz     r0, 0x4(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x802e6478
    lwz     r3, 0x4c(r3)
    lbzx    r3, r3, r0
    blr

branch_0x802e6478:
    li      r3, 0xff
    blr


.globl newTevStage__18J3DMaterialFactoryCFii
newTevStage__18J3DMaterialFactoryCFii: # 0x802e6480
    mflr    r0
    slwi    r6, r6, 1
    stw     r0, 0x4(sp)
    slwi    r0, r5, 1
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    lwz     r7, 0x8(r4)
    lwz     r5, 0x4(r4)
    lhzx    r0, r7, r0
    mulli   r0, r0, 0x14c
    add     r0, r5, r0
    add     r3, r0, r6
    lhz     r0, 0xe4(r3)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e65d0
    mulli   r0, r0, 0x14
    lwz     r3, 0x50(r4)
    add     r31, r3, r0
    lbz     r4, 0x5(r31)
    mr      r3, r30
    lbz     r5, 0x6(r31)
    lbz     r6, 0x7(r31)
    lbz     r7, 0x8(r31)
    lbz     r8, 0x9(r31)
    bl      setTevColorOp__11J3DTevStageFUcUcUcUcUc
    lbz     r4, 0x1(r31)
    mr      r3, r30
    lbz     r0, 0x2(r31)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x2(r30)
    lbz     r4, 0x3(r31)
    lbz     r0, 0x4(r31)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x3(r30)
    lbz     r0, 0xa(r31)
    lbz     r5, 0xb(r31)
    lbz     r4, 0x6(r30)
    slwi    r0, r0, 5
    lbz     r7, 0xc(r31)
    slwi    r5, r5, 2
    insrwi  r0, r4, 5, 27
    lbz     r8, 0xd(r31)
    srawi   r4, r7, 1
    stb     r0, 0x6(r30)
    slwi    r0, r8, 4
    lbz     r6, 0x6(r30)
    rlwinm  r6, r6, 0, 30, 26
    or      r5, r6, r5
    stb     r5, 0x6(r30)
    lbz     r5, 0x6(r30)
    clrrwi  r5, r5, 2
    or      r4, r5, r4
    stb     r4, 0x6(r30)
    lbz     r4, 0x7(r30)
    rlwinm  r4, r4, 0, 25, 23
    insrwi  r4, r7, 8, 17
    stb     r4, 0x7(r30)
    lbz     r4, 0x7(r30)
    rlwinm  r4, r4, 0, 28, 24
    or      r0, r4, r0
    stb     r0, 0x7(r30)
    lbz     r4, 0xe(r31)
    lbz     r5, 0xf(r31)
    lbz     r6, 0x10(r31)
    lbz     r7, 0x11(r31)
    lbz     r8, 0x12(r31)
    bl      setTevAlphaOp__11J3DTevStageFUcUcUcUcUc
    subi    r3, r13, 0x7524
    lbz     r4, 0x7(r30)
    lbz     r0, 0x1(r3)
    rlwinm  r3, r4, 0, 30, 27
    slwi    r0, r0, 2
    or      r0, r3, r0
    stb     r0, 0x7(r30)
    lbz     r3, 0x7(r30)
    lbz     r0, -0x7524(r13)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x7(r30)
    b       branch_0x802e66d4

branch_0x802e65d0:
    lis     r3, 0x803e
    addi    r31, r3, 0x1678
    lbz     r4, 0x5(r31)
    mr      r3, r30
    lbz     r5, 0x6(r31)
    lbz     r6, 0x7(r31)
    lbz     r7, 0x8(r31)
    lbz     r8, 0x9(r31)
    bl      setTevColorOp__11J3DTevStageFUcUcUcUcUc
    lbz     r4, 0x1(r31)
    mr      r3, r30
    lbz     r0, 0x2(r31)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x2(r30)
    lbz     r4, 0x3(r31)
    lbz     r0, 0x4(r31)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x3(r30)
    lbz     r0, 0xa(r31)
    lbz     r5, 0xb(r31)
    lbz     r4, 0x6(r30)
    slwi    r0, r0, 5
    lbz     r7, 0xc(r31)
    slwi    r5, r5, 2
    insrwi  r0, r4, 5, 27
    lbz     r8, 0xd(r31)
    srawi   r4, r7, 1
    stb     r0, 0x6(r30)
    slwi    r0, r8, 4
    lbz     r6, 0x6(r30)
    rlwinm  r6, r6, 0, 30, 26
    or      r5, r6, r5
    stb     r5, 0x6(r30)
    lbz     r5, 0x6(r30)
    clrrwi  r5, r5, 2
    or      r4, r5, r4
    stb     r4, 0x6(r30)
    lbz     r4, 0x7(r30)
    rlwinm  r4, r4, 0, 25, 23
    insrwi  r4, r7, 8, 17
    stb     r4, 0x7(r30)
    lbz     r4, 0x7(r30)
    rlwinm  r4, r4, 0, 28, 24
    or      r0, r4, r0
    stb     r0, 0x7(r30)
    lbz     r4, 0xe(r31)
    lbz     r5, 0xf(r31)
    lbz     r6, 0x10(r31)
    lbz     r7, 0x11(r31)
    lbz     r8, 0x12(r31)
    bl      setTevAlphaOp__11J3DTevStageFUcUcUcUcUc
    subi    r3, r13, 0x7524
    lbz     r4, 0x7(r30)
    lbz     r0, 0x1(r3)
    rlwinm  r3, r4, 0, 30, 27
    slwi    r0, r0, 2
    or      r0, r3, r0
    stb     r0, 0x7(r30)
    lbz     r3, 0x7(r30)
    lbz     r0, -0x7524(r13)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x7(r30)
branch_0x802e66d4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl newTevSwapModeTable__18J3DMaterialFactoryCFii
newTevSwapModeTable__18J3DMaterialFactoryCFii: # 0x802e66ec
    lwz     r7, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    slwi    r6, r6, 1
    lhzx    r0, r7, r0
    mulli   r0, r0, 0x14c
    add     r0, r5, r0
    add     r5, r0, r6
    lhz     r0, 0x124(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6754
    lwz     r4, 0x58(r4)
    slwi    r0, r0, 2
    add     r6, r4, r0
    lbz     r5, 0x2(r6)
    lbz     r0, 0x1(r6)
    lbz     r4, 0x0(r6)
    slwi    r5, r5, 2
    slwi    r0, r0, 4
    lbz     r6, 0x3(r6)
    add     r0, r0, r5
    slwi    r4, r4, 6
    add     r0, r0, r6
    add     r0, r4, r0
    stb     r0, 0x0(r3)
    blr

branch_0x802e6754:
    subi    r6, r13, 0x7520
    lbz     r4, -0x7520(r13)
    lbz     r5, 0x2(r6)
    lbz     r0, 0x1(r6)
    slwi    r4, r4, 6
    slwi    r5, r5, 2
    lbz     r6, 0x3(r6)
    slwi    r0, r0, 4
    add     r0, r0, r5
    add     r0, r0, r6
    add     r0, r4, r0
    stb     r0, 0x0(r3)
    blr


.globl newIndTexStageNum__18J3DMaterialFactoryCFi
newIndTexStageNum__18J3DMaterialFactoryCFi: # 0x802e6788
    mulli   r4, r4, 0x138
    lwz     r3, 0xc(r3)
    lbzx    r0, r3, r4
    cmplwi  r0, 0x1
    bne-    branch_0x802e67a8
    add     r3, r3, r4
    lbz     r3, 0x1(r3)
    blr

branch_0x802e67a8:
    li      r3, 0x0
    blr


.globl newIndTexOrder__18J3DMaterialFactoryCFii
newIndTexOrder__18J3DMaterialFactoryCFii: # 0x802e67b0
    stwu    sp, -0x38(sp)
    subi    r7, r13, 0x7538
    mulli   r0, r5, 0x138
    lbz     r8, -0x7538(r13)
    stb     r8, 0x34(sp)
    lbz     r5, 0x1(r7)
    stb     r5, 0x35(sp)
    lwz     r4, 0xc(r4)
    add     r5, r4, r0
    lbz     r0, 0x0(r5)
    cmplwi  r0, 0x1
    bne-    branch_0x802e6800
    slwi    r4, r6, 2
    addi    r4, r4, 0x4
    add     r4, r5, r4
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    b       branch_0x802e6808

branch_0x802e6800:
    lwz     r0, 0x34(sp)
    stw     r0, 0x0(r3)
branch_0x802e6808:
    addi    sp, sp, 0x38
    blr


.globl newIndTexMtx__18J3DMaterialFactoryCFii
newIndTexMtx__18J3DMaterialFactoryCFii: # 0x802e6810
    mflr    r0
    lis     r7, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r7, 0x165c
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x18
    stw     r30, 0x40(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x3c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    mr      r4, r0
    bl      __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo
    mulli   r0, r29, 0x138
    lwz     r3, 0xc(r28)
    add     r5, r3, r0
    lbz     r0, 0x0(r5)
    cmplwi  r0, 0x1
    bne-    branch_0x802e6880
    mulli   r3, r30, 0x1c
    addi    r4, r3, 0x14
    add     r4, r5, r4
    addi    r3, r31, 0x0
    bl      __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo
    b       branch_0x802e68b8

branch_0x802e6880:
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x8(r31)
    stw     r0, 0xc(r31)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x30(sp)
    stw     r0, 0x18(r31)
branch_0x802e68b8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl newIndTevStage__18J3DMaterialFactoryCFii
newIndTevStage__18J3DMaterialFactoryCFii: # 0x802e68d8
    lis     r7, 0x803e
    stwu    sp, -0x40(sp)
    addi    r8, r7, 0x168c
    lbz     r7, 0x0(r8)
    mulli   r0, r5, 0x138
    stb     r7, 0x34(sp)
    lbz     r5, 0x1(r8)
    stb     r5, 0x35(sp)
    lbz     r5, 0x2(r8)
    stb     r5, 0x36(sp)
    lbz     r5, 0x3(r8)
    stb     r5, 0x37(sp)
    lbz     r5, 0x4(r8)
    stb     r5, 0x38(sp)
    lbz     r5, 0x5(r8)
    stb     r5, 0x39(sp)
    lbz     r5, 0x6(r8)
    stb     r5, 0x3a(sp)
    lbz     r5, 0x7(r8)
    stb     r5, 0x3b(sp)
    lbz     r5, 0x8(r8)
    stb     r5, 0x3c(sp)
    lwz     r4, 0xc(r4)
    add     r5, r4, r0
    lbz     r0, 0x0(r5)
    cmplwi  r0, 0x1
    bne-    branch_0x802e699c
    mulli   r4, r6, 0xc
    addi    r4, r4, 0x78
    add     r4, r5, r4
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r3)
    lbz     r0, 0x4(r4)
    stb     r0, 0x4(r3)
    lbz     r0, 0x5(r4)
    stb     r0, 0x5(r3)
    lbz     r0, 0x6(r4)
    stb     r0, 0x6(r3)
    lbz     r0, 0x7(r4)
    stb     r0, 0x7(r3)
    lbz     r0, 0x8(r4)
    stb     r0, 0x8(r3)
    b       branch_0x802e69b4

branch_0x802e699c:
    lwz     r4, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x8(r3)
branch_0x802e69b4:
    addi    sp, sp, 0x40
    blr


.globl newIndTexCoordScale__18J3DMaterialFactoryCFii
newIndTexCoordScale__18J3DMaterialFactoryCFii: # 0x802e69bc
    stwu    sp, -0x20(sp)
    subi    r7, r13, 0x752c
    mulli   r0, r5, 0x138
    lbz     r8, -0x752c(r13)
    stb     r8, 0x18(sp)
    lbz     r5, 0x1(r7)
    stb     r5, 0x19(sp)
    lwz     r4, 0xc(r4)
    add     r5, r4, r0
    lbz     r0, 0x0(r5)
    cmplwi  r0, 0x1
    bne-    branch_0x802e6a0c
    slwi    r4, r6, 2
    addi    r4, r4, 0x68
    add     r4, r5, r4
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    b       branch_0x802e6a14

branch_0x802e6a0c:
    lwz     r0, 0x18(sp)
    stw     r0, 0x0(r3)
branch_0x802e6a14:
    addi    sp, sp, 0x20
    blr


.globl newFog__18J3DMaterialFactoryCFi
newFog__18J3DMaterialFactoryCFi: # 0x802e6a1c
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 1
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    lwz     r5, 0x8(r3)
    lwz     r4, 0x4(r3)
    li      r3, 0x0
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x14c
    add     r31, r4, r0
    lhz     r0, 0x144(r31)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6a8c
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e6a88
    lhz     r0, 0x144(r31)
    mr      r3, r29
    lwz     r4, 0x5c(r30)
    mulli   r0, r0, 0x2c
    add     r4, r4, r0
    bl      __as__10J3DFogInfoFRC10J3DFogInfo
branch_0x802e6a88:
    mr      r3, r29
branch_0x802e6a8c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl newAlphaComp__18J3DMaterialFactoryCFi
newAlphaComp__18J3DMaterialFactoryCFi: # 0x802e6aa8
    lwz     r6, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    lhzx    r0, r6, r0
    mulli   r0, r0, 0x14c
    add     r5, r5, r0
    lhz     r0, 0x146(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6b0c
    lwz     r4, 0x60(r4)
    slwi    r0, r0, 3
    add     r6, r4, r0
    lbz     r0, 0x2(r6)
    lbz     r4, 0x0(r6)
    lbz     r5, 0x3(r6)
    slwi    r0, r0, 3
    slwi    r4, r4, 5
    add     r0, r0, r5
    add     r0, r4, r0
    sth     r0, 0x0(r3)
    lbz     r0, 0x1(r6)
    stb     r0, 0x2(r3)
    lbz     r0, 0x4(r6)
    stb     r0, 0x3(r3)
    blr

branch_0x802e6b0c:
    lis     r4, 0x1
    subi    r0, r4, 0x1
    sth     r0, 0x0(r3)
    li      r0, 0x0
    stb     r0, 0x2(r3)
    stb     r0, 0x3(r3)
    blr


.globl newBlend__18J3DMaterialFactoryCFi
newBlend__18J3DMaterialFactoryCFi: # 0x802e6b28
    lwz     r6, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    lhzx    r0, r6, r0
    mulli   r0, r0, 0x14c
    add     r5, r5, r0
    lhz     r0, 0x148(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6b7c
    lwz     r4, 0x64(r4)
    slwi    r0, r0, 2
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r3)
    blr

branch_0x802e6b7c:
    lbz     r0, -0x751c(r13)
    subi    r4, r13, 0x751c
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r3)
    blr


.globl newZMode__18J3DMaterialFactoryCFi
newZMode__18J3DMaterialFactoryCFi: # 0x802e6ba4
    lwz     r6, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    lhzx    r0, r6, r0
    mulli   r0, r0, 0x14c
    add     r5, r5, r0
    lbz     r0, 0x6(r5)
    cmplwi  r0, 0xff
    beq-    branch_0x802e6bf8
    lwz     r4, 0x68(r4)
    slwi    r0, r0, 2
    add     r5, r4, r0
    lbz     r0, 0x0(r5)
    lbz     r4, 0x1(r5)
    lbz     r5, 0x2(r5)
    slwi    r0, r0, 4
    slwi    r4, r4, 1
    add     r0, r0, r5
    add     r0, r4, r0
    sth     r0, 0x0(r3)
    blr

branch_0x802e6bf8:
    lis     r4, 0x1
    subi    r0, r4, 0x1
    sth     r0, 0x0(r3)
    blr


.globl newZCompLoc__18J3DMaterialFactoryCFi
newZCompLoc__18J3DMaterialFactoryCFi: # 0x802e6c08
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x14c
    add     r4, r4, r0
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x802e6c38
    lwz     r3, 0x6c(r3)
    lbzx    r3, r3, r0
    blr

branch_0x802e6c38:
    li      r3, 0xff
    blr


.globl newDither__18J3DMaterialFactoryCFi
newDither__18J3DMaterialFactoryCFi: # 0x802e6c40
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x14c
    add     r4, r4, r0
    lbz     r0, 0x7(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x802e6c70
    lwz     r3, 0x70(r3)
    lbzx    r3, r3, r0
    blr

branch_0x802e6c70:
    li      r3, 0xff
    blr


.globl newNBTScale__18J3DMaterialFactoryCFi
newNBTScale__18J3DMaterialFactoryCFi: # 0x802e6c78
    lis     r6, 0x803e
    stwu    sp, -0x38(sp)
    addi    r7, r6, 0x16c4
    lbz     r6, 0x0(r7)
    slwi    r0, r5, 1
    stb     r6, 0x24(sp)
    lfs     f0, 0x4(r7)
    stfs    f0, 0x28(sp)
    lfs     f0, 0x8(r7)
    stfs    f0, 0x2c(sp)
    lfs     f0, 0xc(r7)
    stfs    f0, 0x30(sp)
    lwz     r5, 0x8(r4)
    lwz     r6, 0x4(r4)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x14c
    add     r5, r6, r0
    lhz     r0, 0x14a(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x802e6cf8
    lwz     r4, 0x74(r4)
    slwi    r0, r0, 4
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0xc(r3)
    b       branch_0x802e6d18

branch_0x802e6cf8:
    lwz     r4, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r4, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r4, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x802e6d18:
    addi    sp, sp, 0x38
    blr


.globl JSUConvertOffsetToPtr_15J3DNBTScaleInfo___FPCvPCv
JSUConvertOffsetToPtr_15J3DNBTScaleInfo___FPCvPCv: # 0x802e6d20
    cmplwi  r4, 0x0
    bne-    branch_0x802e6d30
    li      r3, 0x0
    blr

branch_0x802e6d30:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_12J3DZModeInfo___FPCvPCv
JSUConvertOffsetToPtr_12J3DZModeInfo___FPCvPCv: # 0x802e6d38
    cmplwi  r4, 0x0
    bne-    branch_0x802e6d48
    li      r3, 0x0
    blr

branch_0x802e6d48:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_12J3DBlendInfo___FPCvPCv
JSUConvertOffsetToPtr_12J3DBlendInfo___FPCvPCv: # 0x802e6d50
    cmplwi  r4, 0x0
    bne-    branch_0x802e6d60
    li      r3, 0x0
    blr

branch_0x802e6d60:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_16J3DAlphaCompInfo___FPCvPCv
JSUConvertOffsetToPtr_16J3DAlphaCompInfo___FPCvPCv: # 0x802e6d68
    cmplwi  r4, 0x0
    bne-    branch_0x802e6d78
    li      r3, 0x0
    blr

branch_0x802e6d78:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_10J3DFogInfo___FPCvPCv
JSUConvertOffsetToPtr_10J3DFogInfo___FPCvPCv: # 0x802e6d80
    cmplwi  r4, 0x0
    bne-    branch_0x802e6d90
    li      r3, 0x0
    blr

branch_0x802e6d90:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_23J3DTevSwapModeTableInfo___FPCvPCv
JSUConvertOffsetToPtr_23J3DTevSwapModeTableInfo___FPCvPCv: # 0x802e6d98
    cmplwi  r4, 0x0
    bne-    branch_0x802e6da8
    li      r3, 0x0
    blr

branch_0x802e6da8:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_18J3DTevSwapModeInfo___FPCvPCv
JSUConvertOffsetToPtr_18J3DTevSwapModeInfo___FPCvPCv: # 0x802e6db0
    cmplwi  r4, 0x0
    bne-    branch_0x802e6dc0
    li      r3, 0x0
    blr

branch_0x802e6dc0:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_15J3DTevStageInfo___FPCvPCv
JSUConvertOffsetToPtr_15J3DTevStageInfo___FPCvPCv: # 0x802e6dc8
    cmplwi  r4, 0x0
    bne-    branch_0x802e6dd8
    li      r3, 0x0
    blr

branch_0x802e6dd8:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_11_GXColorS10___FPCvPCv
JSUConvertOffsetToPtr_11_GXColorS10___FPCvPCv: # 0x802e6de0
    cmplwi  r4, 0x0
    bne-    branch_0x802e6df0
    li      r3, 0x0
    blr

branch_0x802e6df0:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_15J3DTevOrderInfo___FPCvPCv
JSUConvertOffsetToPtr_15J3DTevOrderInfo___FPCvPCv: # 0x802e6df8
    cmplwi  r4, 0x0
    bne-    branch_0x802e6e08
    li      r3, 0x0
    blr

branch_0x802e6e08:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_13J3DTexMtxInfo___FPCvPCv
JSUConvertOffsetToPtr_13J3DTexMtxInfo___FPCvPCv: # 0x802e6e10
    cmplwi  r4, 0x0
    bne-    branch_0x802e6e20
    li      r3, 0x0
    blr

branch_0x802e6e20:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_16J3DTexCoord2Info___FPCvPCv
JSUConvertOffsetToPtr_16J3DTexCoord2Info___FPCvPCv: # 0x802e6e28
    cmplwi  r4, 0x0
    bne-    branch_0x802e6e38
    li      r3, 0x0
    blr

branch_0x802e6e38:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_15J3DTexCoordInfo___FPCvPCv
JSUConvertOffsetToPtr_15J3DTexCoordInfo___FPCvPCv: # 0x802e6e40
    cmplwi  r4, 0x0
    bne-    branch_0x802e6e50
    li      r3, 0x0
    blr

branch_0x802e6e50:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_12J3DLightInfo___FPCvPCv
JSUConvertOffsetToPtr_12J3DLightInfo___FPCvPCv: # 0x802e6e58
    cmplwi  r4, 0x0
    bne-    branch_0x802e6e68
    li      r3, 0x0
    blr

branch_0x802e6e68:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_16J3DColorChanInfo___FPCvPCv
JSUConvertOffsetToPtr_16J3DColorChanInfo___FPCvPCv: # 0x802e6e70
    cmplwi  r4, 0x0
    bne-    branch_0x802e6e80
    li      r3, 0x0
    blr

branch_0x802e6e80:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Uc___FPCvPCv
JSUConvertOffsetToPtr_Uc___FPCvPCv: # 0x802e6e88
    cmplwi  r4, 0x0
    bne-    branch_0x802e6e98
    li      r3, 0x0
    blr

branch_0x802e6e98:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_8_GXColor___FPCvPCv
JSUConvertOffsetToPtr_8_GXColor___FPCvPCv: # 0x802e6ea0
    cmplwi  r4, 0x0
    bne-    branch_0x802e6eb0
    li      r3, 0x0
    blr

branch_0x802e6eb0:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_11_GXCullMode___FPCvPCv
JSUConvertOffsetToPtr_11_GXCullMode___FPCvPCv: # 0x802e6eb8
    cmplwi  r4, 0x0
    bne-    branch_0x802e6ec8
    li      r3, 0x0
    blr

branch_0x802e6ec8:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_14J3DIndInitData___FPCvPCv
JSUConvertOffsetToPtr_14J3DIndInitData___FPCvPCv: # 0x802e6ed0
    cmplwi  r4, 0x0
    bne-    branch_0x802e6ee0
    li      r3, 0x0
    blr

branch_0x802e6ee0:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_19J3DMaterialInitData___FPCvPCv
JSUConvertOffsetToPtr_19J3DMaterialInitData___FPCvPCv: # 0x802e6ee8
    cmplwi  r4, 0x0
    bne-    branch_0x802e6ef8
    li      r3, 0x0
    blr

branch_0x802e6ef8:
    add     r3, r3, r4
    blr

