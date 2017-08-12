
.globl __ct__15J3DShapeFactoryFRC13J3DShapeBlock
__ct__15J3DShapeFactoryFRC13J3DShapeBlock: # 0x802e881c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r4, 0xc(r4)
    bl      JSUConvertOffsetToPtr_16J3DShapeInitData___FPCvUl
    stw     r3, 0x0(r30)
    mr      r3, r31
    lwz     r4, 0x10(r31)
    bl      JSUConvertOffsetToPtr_Us___FPCvUl
    stw     r3, 0x4(r30)
    mr      r3, r31
    lwz     r4, 0x18(r31)
    bl      JSUConvertOffsetToPtr_14_GXVtxDescList___FPCvUl
    stw     r3, 0x8(r30)
    mr      r3, r31
    lwz     r4, 0x1c(r31)
    bl      JSUConvertOffsetToPtr_Us___FPCvUl
    stw     r3, 0xc(r30)
    mr      r3, r31
    lwz     r4, 0x20(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvUl
    stw     r3, 0x10(r30)
    mr      r3, r31
    lwz     r4, 0x24(r31)
    bl      JSUConvertOffsetToPtr_19J3DShapeMtxInitData___FPCvUl
    stw     r3, 0x14(r30)
    mr      r3, r31
    lwz     r4, 0x28(r31)
    bl      JSUConvertOffsetToPtr_20J3DShapeDrawInitData___FPCvUl
    stw     r3, 0x18(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl create__15J3DShapeFactoryFi14J3DMdlDataFlagP14_GXVtxDescList
create__15J3DShapeFactoryFi14J3DMdlDataFlagP14_GXVtxDescList: # 0x802e88cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r25, 0x34(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802e8924
    li      r0, 0x3c
    stb     r0, 0x3c(r26)
    mr      r3, r26
    stb     r0, 0x3d(r26)
    stb     r0, 0x3e(r26)
    stb     r0, 0x3f(r26)
    stb     r0, 0x40(r26)
    stb     r0, 0x41(r26)
    stb     r0, 0x42(r26)
    stb     r0, 0x43(r26)
    bl      initialize__8J3DShapeFv
branch_0x802e8924:
    lwz     r3, 0x4(r27)
    slwi    r31, r28, 1
    lwz     r4, 0x0(r27)
    lhzx    r0, r3, r31
    mulli   r0, r0, 0x28
    add     r3, r4, r0
    lhz     r0, 0x2(r3)
    sth     r0, 0x6(r26)
    lwz     r3, 0x4(r27)
    lwz     r4, 0x0(r27)
    lhzx    r0, r3, r31
    mulli   r0, r0, 0x28
    add     r3, r4, r0
    lfs     f0, 0xc(r3)
    stfs    f0, 0xc(r26)
    lwz     r3, 0x4(r27)
    lwz     r4, 0x0(r27)
    lhzx    r0, r3, r31
    lwz     r5, 0x8(r27)
    mulli   r0, r0, 0x28
    add     r3, r4, r0
    lhz     r0, 0x4(r3)
    add     r0, r5, r0
    stw     r0, 0x2c(r26)
    lhz     r0, 0x6(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x34(r26)
    lhz     r0, 0x6(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x38(r26)
    mulli   r0, r28, 0xc0
    lwz     r3, 0x4(r27)
    lwz     r4, 0x0(r27)
    li      r30, 0x0
    lhzx    r3, r3, r31
    li      r25, 0x0
    mulli   r3, r3, 0x28
    addi    r3, r3, 0x10
    add     r5, r4, r3
    lwz     r4, 0x0(r5)
    lwz     r3, 0x4(r5)
    stw     r4, 0x10(r26)
    stw     r3, 0x14(r26)
    lwz     r3, 0x8(r5)
    stw     r3, 0x18(r26)
    lwz     r3, 0x4(r27)
    lwz     r4, 0x0(r27)
    lhzx    r3, r3, r31
    mulli   r3, r3, 0x28
    addi    r3, r3, 0x1c
    add     r5, r4, r3
    lwz     r4, 0x0(r5)
    lwz     r3, 0x4(r5)
    stw     r4, 0x1c(r26)
    stw     r3, 0x20(r26)
    lwz     r3, 0x8(r5)
    stw     r3, 0x24(r26)
    lwz     r3, 0x1c(r27)
    add     r0, r3, r0
    stw     r0, 0x28(r26)
    b       branch_0x802e8a5c

branch_0x802e8a20:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      newShapeMtx__15J3DShapeFactoryCFii
    lwz     r6, 0x34(r26)
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    stwx    r3, r6, r25
    addi    r3, r27, 0x0
    addi    r6, r29, 0x0
    bl      newShapeDraw__15J3DShapeFactoryCFii14J3DMdlDataFlag
    lwz     r4, 0x38(r26)
    addi    r30, r30, 0x1
    stwx    r3, r4, r25
    addi    r25, r25, 0x4
branch_0x802e8a5c:
    lhz     r0, 0x6(r26)
    cmpw    r30, r0
    blt+    branch_0x802e8a20
    sth     r28, 0x4(r26)
    mr      r3, r26
    lmw     r25, 0x34(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl newShapeMtx__15J3DShapeFactoryCFii
newShapeMtx__15J3DShapeFactoryCFii: # 0x802e8a84
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 1
    slwi    r4, r5, 3
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x4(r3)
    lwz     r7, 0x0(r30)
    lhzx    r0, r3, r0
    li      r3, 0x0
    lwz     r6, 0x14(r30)
    mulli   r0, r0, 0x28
    add     r7, r7, r0
    lhz     r5, 0x6(r7)
    lbz     r0, 0x0(r7)
    slwi    r5, r5, 3
    add     r31, r5, r4
    cmpwi   r0, 0x3
    add     r31, r6, r31
    beq-    branch_0x802e8b14
    bge-    branch_0x802e8b60
    cmpwi   r0, 0x0
    bge-    branch_0x802e8aec
    b       branch_0x802e8b60

branch_0x802e8aec:
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802e8b60
    lis     r4, __vvt__11J3DShapeMtx@h
    lhz     r5, 0x0(r31)
    addi    r0, r4, __vvt__11J3DShapeMtx@l
    stw     r0, 0x0(r3)
    sth     r5, 0x4(r3)
    b       branch_0x802e8b60

branch_0x802e8b14:
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802e8b60
    lwz     r5, 0x4(r31)
    lis     r4, __vvt__11J3DShapeMtx@h
    lwz     r6, 0xc(r30)
    addi    r0, r4, __vvt__11J3DShapeMtx@l
    lhz     r8, 0x2(r31)
    lhz     r7, 0x0(r31)
    lis     r4, __vvt__16J3DShapeMtxMulti@h
    slwi    r5, r5, 1
    stw     r0, 0x0(r3)
    addi    r0, r4, __vvt__16J3DShapeMtxMulti@l
    add     r4, r6, r5
    sth     r7, 0x4(r3)
    stw     r0, 0x0(r3)
    sth     r8, 0x8(r3)
    stw     r4, 0xc(r3)
branch_0x802e8b60:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl newShapeDraw__15J3DShapeFactoryCFii14J3DMdlDataFlag
newShapeDraw__15J3DShapeFactoryCFii14J3DMdlDataFlag: # 0x802e8b78
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r5, 3
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    stw     r29, 0x24(sp)
    lwz     r6, 0x4(r3)
    slwi    r3, r4, 1
    lwz     r7, 0x0(r30)
    lhzx    r4, r6, r3
    li      r3, 0xc
    lwz     r5, 0x18(r30)
    mulli   r4, r4, 0x28
    addi    r4, r4, 0x8
    lhzx    r4, r7, r4
    slwi    r4, r4, 3
    add     r31, r4, r0
    add     r31, r5, r31
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e8bec
    lwz     r4, 0x10(r30)
    mr      r3, r29
    lwz     r0, 0x4(r31)
    lwz     r5, 0x0(r31)
    add     r4, r4, r0
    bl      __ct__12J3DShapeDrawFPCUcUl
branch_0x802e8bec:
    lwz     r0, 0x34(sp)
    mr      r3, r29
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl allocVcdVatCmdBuffer__15J3DShapeFactoryFUl
allocVcdVatCmdBuffer__15J3DShapeFactoryFUl: # 0x802e8c0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    mulli   r3, r4, 0xc0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x1c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl JSUConvertOffsetToPtr_20J3DShapeDrawInitData___FPCvUl
JSUConvertOffsetToPtr_20J3DShapeDrawInitData___FPCvUl: # 0x802e8c44
    cmplwi  r4, 0x0
    bne-    branch_0x802e8c54
    li      r3, 0x0
    blr

branch_0x802e8c54:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_19J3DShapeMtxInitData___FPCvUl
JSUConvertOffsetToPtr_19J3DShapeMtxInitData___FPCvUl: # 0x802e8c5c
    cmplwi  r4, 0x0
    bne-    branch_0x802e8c6c
    li      r3, 0x0
    blr

branch_0x802e8c6c:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_Uc___FPCvUl
JSUConvertOffsetToPtr_Uc___FPCvUl: # 0x802e8c74
    cmplwi  r4, 0x0
    bne-    branch_0x802e8c84
    li      r3, 0x0
    blr

branch_0x802e8c84:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_14_GXVtxDescList___FPCvUl
JSUConvertOffsetToPtr_14_GXVtxDescList___FPCvUl: # 0x802e8c8c
    cmplwi  r4, 0x0
    bne-    branch_0x802e8c9c
    li      r3, 0x0
    blr

branch_0x802e8c9c:
    add     r3, r3, r4
    blr

