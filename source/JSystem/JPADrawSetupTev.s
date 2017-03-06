
.globl setupTev__15JPADrawSetupTevFP12JPABaseShapeP13JPAExTexShape
setupTev__15JPADrawSetupTevFP12JPABaseShapeP13JPAExTexShape: # 0x80328f6c
    mflr    r0
    addi    r7, r4, 0x48
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x20(sp)
    li      r28, 0x0
    stb     r0, 0x1(r3)
    stb     r0, 0x0(r3)
    li      r3, 0x0
    stb     r28, 0x2(r29)
    lwz     r4, 0x48(r4)
    lwz     r5, 0x4(r7)
    lwz     r6, 0x8(r7)
    lwz     r7, 0xc(r7)
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    cmplwi  r30, 0x0
    beq-    branch_0x80329274
    lbz     r0, 0x25(r30)
    li      r31, 0x1
    li      r4, 0x1
    cmpwi   r0, 0x2
    li      r5, 0x1
    beq-    branch_0x803290d4
    bge-    branch_0x803291dc
    cmpwi   r0, 0x1
    bge-    branch_0x80329054
    b       branch_0x803291dc

branch_0x80329054:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXSetIndTexOrder
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    lbz     r5, 0x24(r30)
    addi    r4, r30, 0x8
    li      r3, 0x1
    bl      GXSetIndTexMtx
    lwz     r7, 0x20(r30)
    li      r3, 0x0
    li      r4, 0x0
    stw     r28, 0x8(sp)
    li      r5, 0x0
    li      r6, 0x7
    stw     r28, 0xc(sp)
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXSetTevIndirect
    lbz     r3, 0x2(r29)
    li      r4, 0x2
    li      r5, 0x2
    addi    r0, r3, 0x1
    stb     r0, 0x2(r29)
    lbz     r3, 0x1(r29)
    addi    r0, r3, 0x1
    stb     r0, 0x1(r29)
    b       branch_0x803291dc

branch_0x803290d4:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXSetIndTexOrder
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    lbz     r5, 0x24(r30)
    addi    r4, r30, 0x8
    li      r3, 0x1
    bl      GXSetIndTexMtx
    lwz     r7, 0x20(r30)
    li      r3, 0x1
    li      r4, 0x0
    stw     r28, 0x8(sp)
    li      r5, 0x0
    li      r6, 0x7
    stw     r28, 0xc(sp)
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXSetTevIndirect
    li      r3, 0x1
    li      r4, 0x2
    li      r5, 0x2
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0x0
    li      r7, 0x9
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    lbz     r3, 0x0(r29)
    li      r31, 0x2
    li      r4, 0x3
    addi    r0, r3, 0x1
    stb     r0, 0x0(r29)
    li      r5, 0x3
    lbz     r3, 0x1(r29)
    addi    r0, r3, 0x2
    stb     r0, 0x1(r29)
    lbz     r3, 0x2(r29)
    addi    r0, r3, 0x1
    stb     r0, 0x2(r29)
branch_0x803291dc:
    lbz     r0, 0x28(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x80329274
    addi    r3, r31, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    addi    r3, r31, 0x0
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0x0
    li      r7, 0xf
    bl      GXSetTevColorIn
    addi    r3, r31, 0x0
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    lbz     r3, 0x0(r29)
    addi    r0, r3, 0x1
    stb     r0, 0x0(r29)
    lbz     r3, 0x1(r29)
    addi    r0, r3, 0x1
    stb     r0, 0x1(r29)
branch_0x80329274:
    lbz     r3, 0x1(r29)
    bl      GXSetNumTexGens
    lbz     r3, 0x0(r29)
    bl      GXSetNumTevStages
    lbz     r3, 0x2(r29)
    bl      GXSetNumIndStages
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr

