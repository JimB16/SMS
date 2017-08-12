
.globl __ct__22J3DMaterialFactory_v21FRC20J3DMaterialBlock_v21
__ct__22J3DMaterialFactory_v21FRC20J3DMaterialBlock_v21: # 0x8031e340
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
    bl      JSUConvertOffsetToPtr_23J3DMaterialInitData_v21___FPCvPCv
    stw     r3, 0x4(r30)
    mr      r3, r31
    lwz     r4, 0x10(r31)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x8(r30)
    mr      r3, r31
    lwz     r4, 0x18(r31)
    bl      JSUConvertOffsetToPtr_11_GXCullMode___FPCvPCv
    stw     r3, 0x30(r30)
    mr      r3, r31
    lwz     r4, 0x1c(r31)
    bl      JSUConvertOffsetToPtr_8_GXColor___FPCvPCv
    stw     r3, 0xc(r30)
    mr      r3, r31
    lwz     r4, 0x20(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x10(r30)
    mr      r3, r31
    lwz     r4, 0x24(r31)
    bl      JSUConvertOffsetToPtr_16J3DColorChanInfo___FPCvPCv
    stw     r3, 0x14(r30)
    mr      r3, r31
    lwz     r4, 0x28(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x18(r30)
    mr      r3, r31
    lwz     r4, 0x2c(r31)
    bl      JSUConvertOffsetToPtr_15J3DTexCoordInfo___FPCvPCv
    stw     r3, 0x1c(r30)
    mr      r3, r31
    lwz     r4, 0x30(r31)
    bl      JSUConvertOffsetToPtr_16J3DTexCoord2Info___FPCvPCv
    stw     r3, 0x20(r30)
    mr      r3, r31
    lwz     r4, 0x34(r31)
    bl      JSUConvertOffsetToPtr_13J3DTexMtxInfo___FPCvPCv
    stw     r3, 0x24(r30)
    mr      r3, r31
    lwz     r4, 0x38(r31)
    bl      JSUConvertOffsetToPtr_13J3DTexMtxInfo___FPCvPCv
    stw     r3, 0x28(r30)
    mr      r3, r31
    lwz     r4, 0x3c(r31)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x2c(r30)
    mr      r3, r31
    lwz     r4, 0x40(r31)
    bl      JSUConvertOffsetToPtr_15J3DTevOrderInfo___FPCvPCv
    stw     r3, 0x34(r30)
    mr      r3, r31
    lwz     r4, 0x44(r31)
    bl      JSUConvertOffsetToPtr_11_GXColorS10___FPCvPCv
    stw     r3, 0x38(r30)
    mr      r3, r31
    lwz     r4, 0x48(r31)
    bl      JSUConvertOffsetToPtr_8_GXColor___FPCvPCv
    stw     r3, 0x3c(r30)
    mr      r3, r31
    lwz     r4, 0x4c(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x40(r30)
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      JSUConvertOffsetToPtr_15J3DTevStageInfo___FPCvPCv
    stw     r3, 0x44(r30)
    mr      r3, r31
    lwz     r4, 0x54(r31)
    bl      JSUConvertOffsetToPtr_18J3DTevSwapModeInfo___FPCvPCv
    stw     r3, 0x48(r30)
    mr      r3, r31
    lwz     r4, 0x58(r31)
    bl      JSUConvertOffsetToPtr_23J3DTevSwapModeTableInfo___FPCvPCv
    stw     r3, 0x4c(r30)
    mr      r3, r31
    lwz     r4, 0x5c(r31)
    bl      JSUConvertOffsetToPtr_10J3DFogInfo___FPCvPCv
    stw     r3, 0x50(r30)
    mr      r3, r31
    lwz     r4, 0x60(r31)
    bl      JSUConvertOffsetToPtr_16J3DAlphaCompInfo___FPCvPCv
    stw     r3, 0x54(r30)
    mr      r3, r31
    lwz     r4, 0x64(r31)
    bl      JSUConvertOffsetToPtr_12J3DBlendInfo___FPCvPCv
    stw     r3, 0x58(r30)
    mr      r3, r31
    lwz     r4, 0x68(r31)
    bl      JSUConvertOffsetToPtr_12J3DZModeInfo___FPCvPCv
    stw     r3, 0x5c(r30)
    mr      r3, r31
    lwz     r4, 0x6c(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x60(r30)
    mr      r3, r31
    lwz     r4, 0x70(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x64(r30)
    mr      r3, r31
    lwz     r4, 0x74(r31)
    bl      JSUConvertOffsetToPtr_15J3DNBTScaleInfo___FPCvPCv
    stw     r3, 0x68(r30)
    mr      r3, r30
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl countUniqueMaterials__22J3DMaterialFactory_v21Fv
countUniqueMaterials__22J3DMaterialFactory_v21Fv: # 0x8031e520
    lhz     r5, 0x0(r3)
    li      r6, 0x0
    cmplwi  r5, 0x0
    ble-    branch_0x8031e568
    cmplwi  r5, 0x8
    addi    r0, r5, -0x8
    ble-    branch_0x8031e55c
    clrlwi  r0, r0, 16
    b       branch_0x8031e548

branch_0x8031e544:
    addi    r6, r6, 0x8
branch_0x8031e548:
    clrlwi  r4, r6, 16
    cmplw   r4, r0
    blt+    branch_0x8031e544
    b       branch_0x8031e55c

branch_0x8031e558:
    addi    r6, r6, 0x1
branch_0x8031e55c:
    clrlwi  r0, r6, 16
    cmplw   r0, r5
    blt+    branch_0x8031e558
branch_0x8031e568:
    mr      r3, r6
    blr

branch_0x8031e570:
    b       branch_0x8031e55c

branch_0x8031e574:
    blr


.globl countStages__22J3DMaterialFactory_v21CFi
countStages__22J3DMaterialFactory_v21CFi: # 0x8031e578
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    li      r6, 0x0
    lhzx    r0, r5, r0
    li      r5, 0x0
    mulli   r0, r0, 0x138
    add     r4, r4, r0
    lbz     r0, 0x4(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x8031e5ac
    lwz     r3, 0x40(r3)
    lbzx    r5, r3, r0
branch_0x8031e5ac:
    lhz     r0, 0x70(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031e5bc
    li      r6, 0x1
branch_0x8031e5bc:
    lhz     r0, 0x72(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031e5cc
    addi    r6, r6, 0x1
branch_0x8031e5cc:
    lhz     r0, 0x74(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031e5dc
    addi    r6, r6, 0x1
branch_0x8031e5dc:
    lhz     r0, 0x76(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031e5ec
    addi    r6, r6, 0x1
branch_0x8031e5ec:
    lhz     r0, 0x78(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031e5fc
    addi    r6, r6, 0x1
branch_0x8031e5fc:
    lhz     r0, 0x7a(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031e60c
    addi    r6, r6, 0x1
branch_0x8031e60c:
    lhz     r0, 0x7c(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031e61c
    addi    r6, r6, 0x1
branch_0x8031e61c:
    lhz     r0, 0x7e(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031e62c
    addi    r6, r6, 0x1
branch_0x8031e62c:
    cmplw   r5, r6
    beq-    branch_0x8031e654
    cmplwi  r6, 0x0
    beq-    branch_0x8031e654
    cmplw   r5, r6
    ble-    branch_0x8031e64c
    mr      r3, r5
    blr

branch_0x8031e64c:
    mr      r3, r6
    blr

branch_0x8031e654:
    mr      r3, r5
    blr


.globl create__22J3DMaterialFactory_v21CFP11J3DMaterialiUl
create__22J3DMaterialFactory_v21CFP11J3DMaterialiUl: # 0x8031e65c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stmw    r22, 0xa0(sp)
    addi    r29, r5, 0x0
    addi    r30, r4, 0x0
    addi    r31, r3, 0x0
    addi    r23, r6, 0x0
    addi    r4, r29, 0x0
    bl      countStages__22J3DMaterialFactory_v21CFi
    extrwi  r28, r23, 5, 11
    cmplw   r3, r28
    ble-    branch_0x8031e694
    mr      r28, r3
branch_0x8031e694:
    cmplwi  r28, 0x8
    ble-    branch_0x8031e6a4
    li      r26, 0x8
    b       branch_0x8031e6a8

branch_0x8031e6a4:
    mr      r26, r28
branch_0x8031e6a8:
    rlwinm. r0, r23, 0, 1, 1
    beq-    branch_0x8031e6b8
    li      r3, 0x0
    b       branch_0x8031e6bc

branch_0x8031e6b8:
    li      r3, 0x1
branch_0x8031e6bc:
    rlwinm. r0, r23, 0, 5, 5
    addi    r22, r3, 0x0
    beq-    branch_0x8031e6d0
    li      r3, 0x0
    b       branch_0x8031e6d4

branch_0x8031e6d0:
    li      r3, 0x1
branch_0x8031e6d4:
    rlwinm. r0, r23, 0, 3, 3
    addi    r24, r3, 0x0
    beq-    branch_0x8031e6e8
    li      r3, 0x0
    b       branch_0x8031e6ec

branch_0x8031e6e8:
    li      r3, 0x1
branch_0x8031e6ec:
    rlwinm. r0, r23, 0, 7, 7
    addi    r23, r3, 0x0
    beq-    branch_0x8031e700
    li      r0, 0x1
    b       branch_0x8031e704

branch_0x8031e700:
    li      r0, 0x0
branch_0x8031e704:
    cmplwi  r30, 0x0
    mr      r25, r0
    bne-    branch_0x8031e72c
    li      r3, 0x40
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8031e728
    mr      r3, r27
    bl      initialize__11J3DMaterialFv
branch_0x8031e728:
    mr      r30, r27
branch_0x8031e72c:
    mr      r3, r22
    bl      createColorBlock__11J3DMaterialFi
    stw     r3, 0x20(r30)
    mr      r3, r24
    bl      createTexGenBlock__11J3DMaterialFi
    stw     r3, 0x24(r30)
    clrlwi  r3, r28, 16
    bl      createTevBlock__11J3DMaterialFi
    stw     r3, 0x28(r30)
    mr      r3, r25
    bl      createIndBlock__11J3DMaterialFi
    stw     r3, 0x2c(r30)
    slwi    r27, r29, 1
    addi    r3, r23, 0x0
    lwz     r4, 0x8(r31)
    lwz     r5, 0x4(r31)
    lhzx    r0, r4, r27
    mulli   r0, r0, 0x138
    lbzx    r4, r5, r0
    bl      createPEBlock__11J3DMaterialFiUl
    stw     r3, 0x30(r30)
    mr      r3, r31
    mr      r4, r29
    sth     r29, 0xc(r30)
    lwz     r5, 0x8(r31)
    lwz     r6, 0x4(r31)
    lhzx    r0, r5, r27
    mulli   r0, r0, 0x138
    lbzx    r0, r6, r0
    stw     r0, 0x8(r30)
    bl      newColorChanNum__22J3DMaterialFactory_v21CFi
    mr      r4, r3
    lwz     r3, 0x20(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      newCullMode__22J3DMaterialFactory_v21CFi
    mr      r4, r3
    lwz     r3, 0x20(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      newTexGenNum__22J3DMaterialFactory_v21CFi
    mr      r4, r3
    lwz     r3, 0x24(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x6c
    bl      newNBTScale__22J3DMaterialFactory_v21CFi
    lwz     r3, 0x6c(sp)
    addi    r4, sp, 0x7c
    lwz     r0, 0x70(sp)
    stw     r3, 0x7c(sp)
    lwz     r3, 0x74(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r3, 0x24(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      newFog__22J3DMaterialFactory_v21CFi
    mr      r4, r3
    lwz     r3, 0x30(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x64
    bl      newAlphaComp__22J3DMaterialFactory_v21CFi
    lwz     r0, 0x64(sp)
    addi    r4, sp, 0x68
    stw     r0, 0x68(sp)
    lwz     r3, 0x30(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x5c
    bl      newBlend__22J3DMaterialFactory_v21CFi
    lwz     r0, 0x5c(sp)
    addi    r4, sp, 0x60
    stw     r0, 0x60(sp)
    lwz     r3, 0x30(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x54
    bl      newZMode__22J3DMaterialFactory_v21CFi
    lhz     r0, 0x54(sp)
    addi    r4, sp, 0x58
    sth     r0, 0x58(sp)
    lwz     r3, 0x30(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      newZCompLoc__22J3DMaterialFactory_v21CFi
    mr      r4, r3
    lwz     r3, 0x30(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      newDither__22J3DMaterialFactory_v21CFi
    mr      r4, r3
    lwz     r3, 0x30(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      newTevStageNum__22J3DMaterialFactory_v21CFi
    mr      r4, r3
    lwz     r3, 0x28(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x60(r12)
    mtlr    r12
    blrl
    li      r22, 0x0
    b       branch_0x8031e9a4

branch_0x8031e978:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      newTexNo__22J3DMaterialFactory_v21CFii
    mr      r5, r3
    lwz     r3, 0x28(r30)
    clrlwi  r4, r22, 24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x8031e9a4:
    clrlwi  r5, r22, 24
    cmplw   r5, r26
    blt+    branch_0x8031e978
    addi    r22, sp, 0x50
    li      r23, 0x0
    b       branch_0x8031e9f4

branch_0x8031e9bc:
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x4c
    bl      newTevOrder__22J3DMaterialFactory_v21CFii
    lwz     r0, 0x4c(sp)
    addi    r5, r22, 0x0
    clrlwi  r4, r23, 24
    stw     r0, 0x50(sp)
    lwz     r3, 0x28(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x8031e9f4:
    clrlwi  r6, r23, 24
    cmplw   r6, r28
    blt+    branch_0x8031e9bc
    addi    r26, sp, 0x44
    li      r23, 0x0
    b       branch_0x8031eaf0

branch_0x8031ea0c:
    lwz     r0, 0x8(r31)
    mr      r4, r31
    lwz     r3, 0x4(r31)
    mr      r5, r29
    lhzx    r0, r27, r0
    mulli   r0, r0, 0x138
    add     r22, r3, r0
    addi    r3, sp, 0x3c
    bl      newTevStage__22J3DMaterialFactory_v21CFii
    lwz     r3, 0x3c(sp)
    clrlwi  r25, r23, 24
    lwz     r0, 0x40(sp)
    mr      r4, r25
    stw     r3, 0x44(sp)
    mr      r5, r26
    stw     r0, 0x48(sp)
    lwz     r3, 0x28(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x6c(r12)
    mtlr    r12
    blrl
    slwi    r3, r25, 1
    addi    r24, r3, 0xf0
    add     r24, r22, r24
    lhz     r0, 0x0(r24)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031eaec
    lwz     r3, 0x28(r30)
    slwi    r4, r0, 2
    lwz     r5, 0x48(r31)
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
    lwz     r3, 0x28(r30)
    lhz     r0, 0x0(r24)
    lwz     r12, 0x0(r3)
    lwz     r5, 0x48(r31)
    slwi    r0, r0, 2
    lwz     r12, 0x70(r12)
    lbzx    r22, r5, r0
    mtlr    r12
    blrl
    lbz     r0, 0x7(r3)
    clrrwi  r0, r0, 2
    or      r0, r0, r22
    stb     r0, 0x7(r3)
branch_0x8031eaec:
    addi    r23, r23, 0x1
branch_0x8031eaf0:
    clrlwi  r6, r23, 24
    cmplw   r6, r28
    blt+    branch_0x8031ea0c
    li      r22, 0x0
    b       branch_0x8031eb38

branch_0x8031eb04:
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x38
    clrlwi  r6, r22, 24
    bl      newTevKColor__22J3DMaterialFactory_v21CFii
    lwz     r3, 0x28(r30)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x38
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x8031eb38:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x4
    blt+    branch_0x8031eb04
    li      r22, 0x0
    b       branch_0x8031eb80

branch_0x8031eb4c:
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x30
    clrlwi  r6, r22, 24
    bl      newTevColor__22J3DMaterialFactory_v21CFii
    lwz     r3, 0x28(r30)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x8031eb80:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x4
    blt+    branch_0x8031eb4c
    addi    r22, sp, 0x2c
    li      r23, 0x0
    b       branch_0x8031ebd4

branch_0x8031eb98:
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x28
    clrlwi  r6, r23, 24
    bl      newTevSwapModeTable__22J3DMaterialFactory_v21CFii
    lbz     r0, 0x28(sp)
    addi    r5, r22, 0x0
    clrlwi  r4, r23, 24
    stb     r0, 0x2c(sp)
    lwz     r3, 0x28(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x80(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x8031ebd4:
    clrlwi  r0, r23, 24
    cmplwi  r0, 0x4
    blt+    branch_0x8031eb98
    li      r22, 0x0
    b       branch_0x8031ec1c

branch_0x8031ebe8:
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x24
    clrlwi  r6, r22, 24
    bl      newMatColor__22J3DMaterialFactory_v21CFii
    lwz     r3, 0x20(r30)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x8031ec1c:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x2
    blt+    branch_0x8031ebe8
    li      r22, 0x0
    b       branch_0x8031ec6c

branch_0x8031ec30:
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x20
    clrlwi  r6, r22, 24
    bl      newColorChan__22J3DMaterialFactory_v21CFii
    lhz     r0, 0x20(sp)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x90
    sth     r0, 0x90(sp)
    lwz     r3, 0x20(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x8031ec6c:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x4
    blt+    branch_0x8031ec30
    li      r22, 0x0
    b       branch_0x8031ecbc

branch_0x8031ec80:
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x1c
    clrlwi  r6, r22, 24
    bl      newTexCoord__22J3DMaterialFactory_v21CFii
    lwz     r0, 0x1c(sp)
    clrlwi  r4, r22, 24
    addi    r5, sp, 0x8c
    stw     r0, 0x8c(sp)
    lwz     r3, 0x24(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x8031ecbc:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031ec80
    li      r22, 0x0
    b       branch_0x8031ed00

branch_0x8031ecd0:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    clrlwi  r5, r22, 24
    bl      newTexMtx__22J3DMaterialFactory_v21CFii
    mr      r5, r3
    lwz     r3, 0x24(r30)
    clrlwi  r4, r22, 24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
branch_0x8031ed00:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8031ecd0
    lwz     r3, 0x8(r31)
    li      r23, 0x0
    lwz     r4, 0x4(r31)
    lhzx    r0, r3, r27
    mulli   r0, r0, 0x138
    add     r22, r4, r0
    b       branch_0x8031ed4c

branch_0x8031ed28:
    lwz     r3, 0x28(r30)
    clrlwi  r4, r23, 24
    addi    r0, r4, 0x88
    lwz     r12, 0x0(r3)
    lbzx    r5, r22, r0
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x8031ed4c:
    clrlwi  r0, r23, 24
    cmplw   r0, r28
    blt+    branch_0x8031ed28
    li      r23, 0x0
    b       branch_0x8031ed84

branch_0x8031ed60:
    lwz     r3, 0x28(r30)
    clrlwi  r4, r23, 24
    addi    r0, r4, 0x98
    lwz     r12, 0x0(r3)
    lbzx    r5, r22, r0
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
branch_0x8031ed84:
    clrlwi  r0, r23, 24
    cmplw   r0, r28
    blt+    branch_0x8031ed60
    mr      r3, r30
    lmw     r22, 0xa0(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl newMatColor__22J3DMaterialFactory_v21CFii
newMatColor__22J3DMaterialFactory_v21CFii: # 0x8031eda8
    stwu    sp, -0x38(sp)
    slwi    r0, r5, 1
    slwi    r10, r6, 1
    lwz     r7, R2Off_0x7c0(r2)
    stw     r7, 0x2c(sp)
    lwz     r5, 0x8(r4)
    lwz     r6, 0x4(r4)
    lhzx    r0, r5, r0
    lbz     r7, 0x2d(sp)
    mulli   r0, r0, 0x138
    lbz     r8, 0x2e(sp)
    lbz     r9, 0x2f(sp)
    add     r0, r6, r0
    add     r5, r0, r10
    lhz     r0, 0x8(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031ee1c
    lwz     r4, 0xc(r4)
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
    b       branch_0x8031ee30

branch_0x8031ee1c:
    lbz     r0, 0x2c(sp)
    stb     r0, 0x0(r3)
    stb     r7, 0x1(r3)
    stb     r8, 0x2(r3)
    stb     r9, 0x3(r3)
branch_0x8031ee30:
    addi    sp, sp, 0x38
    blr


.globl newColorChanNum__22J3DMaterialFactory_v21CFi
newColorChanNum__22J3DMaterialFactory_v21CFi: # 0x8031ee38
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x138
    add     r4, r4, r0
    lbz     r0, 0x2(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x8031ee68
    lwz     r3, 0x10(r3)
    lbzx    r3, r3, r0
    blr

branch_0x8031ee68:
    li      r3, 0x0
    blr


.globl newColorChan__22J3DMaterialFactory_v21CFii
newColorChan__22J3DMaterialFactory_v21CFii: # 0x8031ee70
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
    mulli   r0, r0, 0x138
    add     r0, r5, r0
    add     r3, r0, r6
    lhz     r0, 0xc(r3)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031eeec
    lwz     r3, 0x14(r4)
    slwi    r0, r0, 3
    add     r7, r3, r0
    lbz     r8, 0x5(r7)
    cmplwi  r8, 0xff
    bne-    branch_0x8031eecc
    li      r8, 0x0
branch_0x8031eecc:
    lbz     r3, 0x0(r7)
    lbz     r4, 0x1(r7)
    lbz     r5, 0x2(r7)
    lbz     r6, 0x3(r7)
    lbz     r7, 0x4(r7)
    bl      calcColorChanID__FUsUcUcUcUcUc
    sth     r3, 0x0(r31)
    b       branch_0x8031ef24

branch_0x8031eeec:
    addi    r3, r13, R13Off_m0x7518
    lbz     r8, 0x5(r3)
    addis   r0, r8, 0x0
    cmplwi  r0, 0xffff
    bne-    branch_0x8031ef04
    li      r8, 0x0
branch_0x8031ef04:
    addi    r7, r13, R13Off_m0x7518
    lbz     r3, R13Off_m0x7518(r13)
    lbz     r4, 0x1(r7)
    lbz     r5, 0x2(r7)
    lbz     r6, 0x3(r7)
    lbz     r7, 0x4(r7)
    bl      calcColorChanID__FUsUcUcUcUcUc
    sth     r3, 0x0(r31)
branch_0x8031ef24:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl newTexGenNum__22J3DMaterialFactory_v21CFi
newTexGenNum__22J3DMaterialFactory_v21CFi: # 0x8031ef38
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x138
    add     r4, r4, r0
    lbz     r0, 0x3(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x8031ef68
    lwz     r3, 0x18(r3)
    lbzx    r3, r3, r0
    blr

branch_0x8031ef68:
    li      r3, 0x0
    blr


.globl newTexCoord__22J3DMaterialFactory_v21CFii
newTexCoord__22J3DMaterialFactory_v21CFii: # 0x8031ef70
    lwz     r7, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    slwi    r6, r6, 1
    lhzx    r0, r7, r0
    mulli   r0, r0, 0x138
    add     r0, r5, r0
    add     r5, r0, r6
    lhz     r0, 0x14(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031efc4
    lwz     r4, 0x1c(r4)
    slwi    r0, r0, 2
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr

branch_0x8031efc4:
    lis     r4, 0x803e
    lbzu    r0, 0x15d8(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr


.globl newTexMtx__22J3DMaterialFactory_v21CFii
newTexMtx__22J3DMaterialFactory_v21CFii: # 0x8031efe4
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
    mulli   r0, r0, 0x138
    add     r0, r4, r0
    add     r31, r0, r5
    lhz     r0, 0x34(r31)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f05c
    li      r3, 0xc4
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8031f058
    lhz     r0, 0x34(r31)
    mr      r3, r29
    lwz     r4, 0x24(r30)
    mulli   r0, r0, 0x64
    add     r4, r4, r0
    bl      __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
branch_0x8031f058:
    mr      r3, r29
branch_0x8031f05c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl newCullMode__22J3DMaterialFactory_v21CFi
newCullMode__22J3DMaterialFactory_v21CFi: # 0x8031f078
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x138
    add     r4, r4, r0
    lbz     r0, 0x1(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x8031f0b0
    lwz     r3, 0x30(r3)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    clrlwi  r3, r0, 24
    blr

branch_0x8031f0b0:
    li      r3, 0xff
    blr


.globl newTexNo__22J3DMaterialFactory_v21CFii
newTexNo__22J3DMaterialFactory_v21CFii: # 0x8031f0b8
    lwz     r6, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    slwi    r5, r5, 1
    lhzx    r0, r6, r0
    mulli   r0, r0, 0x138
    add     r0, r4, r0
    add     r4, r0, r5
    lhz     r0, 0x70(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f0f4
    lwz     r3, 0x2c(r3)
    slwi    r0, r0, 1
    lhzx    r3, r3, r0
    blr

branch_0x8031f0f4:
    lis     r3, unk_0000ffff@ha
    addi    r3, r3, unk_0000ffff@l
    blr


.globl newTevOrder__22J3DMaterialFactory_v21CFii
newTevOrder__22J3DMaterialFactory_v21CFii: # 0x8031f100
    lwz     r7, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    slwi    r6, r6, 1
    lhzx    r0, r7, r0
    mulli   r0, r0, 0x138
    add     r0, r5, r0
    add     r5, r0, r6
    lhz     r0, 0xa8(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f154
    lwz     r4, 0x34(r4)
    slwi    r0, r0, 2
    add     r4, r4, r0
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr

branch_0x8031f154:
    lbz     r0, R13Off_m0x753c(r13)
    addi    r4, r13, R13Off_m0x753c
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr


.globl newTevColor__22J3DMaterialFactory_v21CFii
newTevColor__22J3DMaterialFactory_v21CFii: # 0x8031f174
    stwu    sp, -0x40(sp)
    slwi    r0, r5, 1
    slwi    r10, r6, 1
    lwz     r7, R2Off_0x7c4(r2)
    lwz     r5, R2Off_0x7c8(r2)
    stw     r7, 0x2c(sp)
    stw     r5, 0x30(sp)
    lwz     r5, 0x8(r4)
    lwz     r6, 0x4(r4)
    lhzx    r0, r5, r0
    lha     r7, 0x2e(sp)
    mulli   r0, r0, 0x138
    lha     r8, 0x30(sp)
    lha     r9, 0x32(sp)
    add     r0, r6, r0
    add     r5, r0, r10
    lhz     r0, 0xc8(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f1f0
    lwz     r4, 0x38(r4)
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
    b       branch_0x8031f204

branch_0x8031f1f0:
    lha     r0, 0x2c(sp)
    sth     r0, 0x0(r3)
    sth     r7, 0x2(r3)
    sth     r8, 0x4(r3)
    sth     r9, 0x6(r3)
branch_0x8031f204:
    addi    sp, sp, 0x40
    blr


.globl newTevKColor__22J3DMaterialFactory_v21CFii
newTevKColor__22J3DMaterialFactory_v21CFii: # 0x8031f20c
    stwu    sp, -0x38(sp)
    slwi    r0, r5, 1
    slwi    r10, r6, 1
    lwz     r7, R2Off_0x7cc(r2)
    stw     r7, 0x2c(sp)
    lwz     r5, 0x8(r4)
    lwz     r6, 0x4(r4)
    lhzx    r0, r5, r0
    lbz     r7, 0x2d(sp)
    mulli   r0, r0, 0x138
    lbz     r8, 0x2e(sp)
    lbz     r9, 0x2f(sp)
    add     r0, r6, r0
    add     r5, r0, r10
    lhz     r0, 0x80(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f280
    lwz     r4, 0x3c(r4)
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
    b       branch_0x8031f294

branch_0x8031f280:
    lbz     r0, 0x2c(sp)
    stb     r0, 0x0(r3)
    stb     r7, 0x1(r3)
    stb     r8, 0x2(r3)
    stb     r9, 0x3(r3)
branch_0x8031f294:
    addi    sp, sp, 0x38
    blr


.globl newTevStageNum__22J3DMaterialFactory_v21CFi
newTevStageNum__22J3DMaterialFactory_v21CFi: # 0x8031f29c
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x138
    add     r4, r4, r0
    lbz     r0, 0x4(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x8031f2cc
    lwz     r3, 0x40(r3)
    lbzx    r3, r3, r0
    blr

branch_0x8031f2cc:
    li      r3, 0xff
    blr


.globl newTevStage__22J3DMaterialFactory_v21CFii
newTevStage__22J3DMaterialFactory_v21CFii: # 0x8031f2d4
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
    mulli   r0, r0, 0x138
    add     r0, r5, r0
    add     r3, r0, r6
    lhz     r0, 0xd0(r3)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f424
    mulli   r0, r0, 0x14
    lwz     r3, 0x44(r4)
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
    addi    r3, r13, R13Off_m0x7524
    lbz     r4, 0x7(r30)
    lbz     r0, 0x1(r3)
    rlwinm  r3, r4, 0, 30, 27
    slwi    r0, r0, 2
    or      r0, r3, r0
    stb     r0, 0x7(r30)
    lbz     r3, 0x7(r30)
    lbz     r0, R13Off_m0x7524(r13)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x7(r30)
    b       branch_0x8031f528

branch_0x8031f424:
    lis     r3, j3dDefaultTevStageInfo@h
    addi    r31, r3, j3dDefaultTevStageInfo@l
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
    addi    r3, r13, R13Off_m0x7524
    lbz     r4, 0x7(r30)
    lbz     r0, 0x1(r3)
    rlwinm  r3, r4, 0, 30, 27
    slwi    r0, r0, 2
    or      r0, r3, r0
    stb     r0, 0x7(r30)
    lbz     r3, 0x7(r30)
    lbz     r0, R13Off_m0x7524(r13)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x7(r30)
branch_0x8031f528:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl newTevSwapModeTable__22J3DMaterialFactory_v21CFii
newTevSwapModeTable__22J3DMaterialFactory_v21CFii: # 0x8031f540
    lwz     r7, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    slwi    r6, r6, 1
    lhzx    r0, r7, r0
    mulli   r0, r0, 0x138
    add     r0, r5, r0
    add     r5, r0, r6
    lhz     r0, 0x110(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f5a8
    lwz     r4, 0x4c(r4)
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

branch_0x8031f5a8:
    addi    r6, r13, R13Off_m0x7520
    lbz     r4, R13Off_m0x7520(r13)
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


.globl newFog__22J3DMaterialFactory_v21CFi
newFog__22J3DMaterialFactory_v21CFi: # 0x8031f5dc
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
    mulli   r0, r0, 0x138
    add     r31, r4, r0
    lhz     r0, 0x130(r31)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f64c
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8031f648
    lhz     r0, 0x130(r31)
    mr      r3, r29
    lwz     r4, 0x50(r30)
    mulli   r0, r0, 0x2c
    add     r4, r4, r0
    bl      __as__10J3DFogInfoFRC10J3DFogInfo
branch_0x8031f648:
    mr      r3, r29
branch_0x8031f64c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl newAlphaComp__22J3DMaterialFactory_v21CFi
newAlphaComp__22J3DMaterialFactory_v21CFi: # 0x8031f668
    lwz     r6, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    lhzx    r0, r6, r0
    mulli   r0, r0, 0x138
    add     r5, r5, r0
    lhz     r0, 0x132(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f6cc
    lwz     r4, 0x54(r4)
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

branch_0x8031f6cc:
    lis     r4, unk_0000ffff@ha
    addi    r0, r4, unk_0000ffff@l
    sth     r0, 0x0(r3)
    li      r0, 0x0
    stb     r0, 0x2(r3)
    stb     r0, 0x3(r3)
    blr


.globl newBlend__22J3DMaterialFactory_v21CFi
newBlend__22J3DMaterialFactory_v21CFi: # 0x8031f6e8
    lwz     r6, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    lhzx    r0, r6, r0
    mulli   r0, r0, 0x138
    add     r5, r5, r0
    lhz     r0, 0x134(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f73c
    lwz     r4, 0x58(r4)
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

branch_0x8031f73c:
    lbz     r0, R13Off_m0x751c(r13)
    addi    r4, r13, R13Off_m0x751c
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r3)
    blr


.globl newZMode__22J3DMaterialFactory_v21CFi
newZMode__22J3DMaterialFactory_v21CFi: # 0x8031f764
    lwz     r6, 0x8(r4)
    slwi    r0, r5, 1
    lwz     r5, 0x4(r4)
    lhzx    r0, r6, r0
    mulli   r0, r0, 0x138
    add     r5, r5, r0
    lbz     r0, 0x6(r5)
    cmplwi  r0, 0xff
    beq-    branch_0x8031f7b8
    lwz     r4, 0x5c(r4)
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

branch_0x8031f7b8:
    lis     r4, unk_0000ffff@ha
    addi    r0, r4, unk_0000ffff@l
    sth     r0, 0x0(r3)
    blr


.globl newZCompLoc__22J3DMaterialFactory_v21CFi
newZCompLoc__22J3DMaterialFactory_v21CFi: # 0x8031f7c8
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x138
    add     r4, r4, r0
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x8031f7f8
    lwz     r3, 0x60(r3)
    lbzx    r3, r3, r0
    blr

branch_0x8031f7f8:
    li      r3, 0xff
    blr


.globl newDither__22J3DMaterialFactory_v21CFi
newDither__22J3DMaterialFactory_v21CFi: # 0x8031f800
    lwz     r5, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r4, 0x4(r3)
    lhzx    r0, r5, r0
    mulli   r0, r0, 0x138
    add     r4, r4, r0
    lbz     r0, 0x7(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x8031f830
    lwz     r3, 0x64(r3)
    lbzx    r3, r3, r0
    blr

branch_0x8031f830:
    li      r3, 0xff
    blr


.globl newNBTScale__22J3DMaterialFactory_v21CFi
newNBTScale__22J3DMaterialFactory_v21CFi: # 0x8031f838
    lis     r6, j3dDefaultNBTScaleInfo@h
    stwu    sp, -0x38(sp)
    addi    r7, r6, j3dDefaultNBTScaleInfo@l
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
    mulli   r0, r0, 0x138
    add     r5, r6, r0
    lhz     r0, 0x136(r5)
    cmplwi  r0, 0xffff
    beq-    branch_0x8031f8b8
    lwz     r4, 0x68(r4)
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
    b       branch_0x8031f8d8

branch_0x8031f8b8:
    lwz     r4, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r4, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r4, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x8031f8d8:
    addi    sp, sp, 0x38
    blr


.globl JSUConvertOffsetToPtr_23J3DMaterialInitData_v21___FPCvPCv
JSUConvertOffsetToPtr_23J3DMaterialInitData_v21___FPCvPCv: # 0x8031f8e0
    cmplwi  r4, 0x0
    bne-    branch_0x8031f8f0
    li      r3, 0x0
    blr

branch_0x8031f8f0:
    add     r3, r3, r4
    blr

