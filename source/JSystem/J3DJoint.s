
.globl calc__13J3DMtxCalcAnmFUs
calc__13J3DMtxCalcAnmFUs: # 0x802d49f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    mr.     r30, r3
    addi    r0, r30, 0x0
    beq-    branch_0x802d4a20
    lwz     r0, 0x0(r30)
branch_0x802d4a20:
    lis     r3, 0x8040
    addi    r4, r3, 0x45dc
    stw     r0, 0x30(r4)
    lwz     r3, 0x8(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d4a54
    lwz     r12, 0xc(r3)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x3c
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802d4ab0

branch_0x802d4a54:
    lwz     r3, 0x38(r4)
    clrlslwi  r0, r31, 16, 2
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    lfsu    f0, 0x1c(r3)
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x40(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x44(sp)
    lha     r0, 0xc(r3)
    sth     r0, 0x48(sp)
    lha     r0, 0xe(r3)
    sth     r0, 0x4a(sp)
    lha     r0, 0x10(r3)
    sth     r0, 0x4c(sp)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x50(sp)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x54(sp)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x58(sp)
branch_0x802d4ab0:
    lwz     r3, 0x0(r30)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x3c
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __ct__15J3DMtxCalcBasicFv
__ct__15J3DMtxCalcBasicFv: # 0x802d4ae4
    extsh.  r0, r4
    beq-    branch_0x802d4b00
    addi    r0, r3, 0x50
    lis     r4, 0x803b
    stw     r0, 0x0(r3)
    subi    r0, r4, 0xf38
    stw     r0, 0x50(r3)
branch_0x802d4b00:
    lis     r4, 0x803e
    addi    r4, r4, 0x8f4
    stw     r4, 0x4c(r3)
    addi    r5, r4, 0x24
    addi    r0, r3, 0x50
    lwz     r4, 0x0(r3)
    stw     r5, 0x0(r4)
    lwz     r4, 0x0(r3)
    subf    r0, r4, r0
    stw     r0, 0x4(r4)
    blr


.globl recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode
recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode: # 0x802d4b2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr.     r28, r4
    addi    r27, r3, 0x0
    beq-    branch_0x802d4cd4
    addi    r31, sp, 0x78
    lis     r3, 0x803b
    stw     r31, 0x28(sp)
    subi    r0, r3, 0xf38
    lis     r3, 0x803e
    stw     r0, 0x78(sp)
    addi    r5, r3, 0x8f4
    stw     r5, 0x74(sp)
    lis     r3, 0x8040
    addi    r29, r5, 0x24
    lwz     r4, 0x28(sp)
    addi    r30, sp, 0x2c
    addi    r3, r3, 0x4788
    stw     r29, 0x0(r4)
    mr      r4, r30
    lwz     r5, 0x28(sp)
    subf    r0, r5, r31
    stw     r0, 0x4(r5)
    bl      PSMTXCopy
    lis     r3, 0x8040
    addi    r6, r3, 0x47b8
    lwz     r4, 0x0(r6)
    lis     r3, 0x8040
    lwz     r0, 0x4(r6)
    addi    r5, r3, 0x47c4
    addi    r3, r28, 0x0
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x64(sp)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x70(sp)
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x8(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x802d4c04
    mtlr    r12
    addi    r3, r28, 0x0
    li      r4, 0x0
    blrl
branch_0x802d4c04:
    lwz     r12, 0x4c(r27)
    mr      r3, r27
    lwz     r4, 0x10(r28)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lis     r3, 0x8040
    addi    r4, r3, 0x4788
    addi    r3, r30, 0x0
    bl      PSMTXCopy
    lis     r3, 0x8040
    lwz     r4, 0x5c(sp)
    lwz     r0, 0x60(sp)
    addi    r6, r3, 0x47b8
    lis     r3, 0x8040
    stw     r4, 0x0(r6)
    addi    r5, r3, 0x47c4
    addi    r3, r28, 0x0
    stw     r0, 0x4(r6)
    lwz     r0, 0x64(sp)
    stw     r0, 0x8(r6)
    lwz     r4, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x70(sp)
    stw     r0, 0x8(r5)
    lwz     r12, 0x0(r28)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x8(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x802d4c9c
    mtlr    r12
    addi    r3, r28, 0x0
    li      r4, 0x1
    blrl
branch_0x802d4c9c:
    lwz     r12, 0x4c(r27)
    mr      r3, r27
    lwz     r4, 0x14(r28)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lis     r3, 0x803e
    addi    r0, r3, 0x8f4
    stw     r0, 0x74(sp)
    lwz     r3, 0x28(sp)
    stw     r29, 0x0(r3)
    lwz     r3, 0x28(sp)
    subf    r0, r3, r31
    stw     r0, 0x4(r3)
branch_0x802d4cd4:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl updateOut__7J3DNodeFv
updateOut__7J3DNodeFv: # 0x802d4ce8
    blr


.globl updateIn__7J3DNodeFv
updateIn__7J3DNodeFv: # 0x802d4cec
    blr


.globl recursiveCalc__15J3DMtxCalcBasicFP7J3DNode
recursiveCalc__15J3DMtxCalcBasicFP7J3DNode: # 0x802d4cf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr.     r28, r4
    addi    r27, r3, 0x0
    beq-    branch_0x802d4e98
    addi    r31, sp, 0x78
    lis     r3, 0x803b
    stw     r31, 0x28(sp)
    subi    r0, r3, 0xf38
    lis     r3, 0x803e
    stw     r0, 0x78(sp)
    addi    r5, r3, 0x8f4
    stw     r5, 0x74(sp)
    lis     r3, 0x8040
    addi    r29, r5, 0x24
    lwz     r4, 0x28(sp)
    addi    r30, sp, 0x2c
    addi    r3, r3, 0x4788
    stw     r29, 0x0(r4)
    mr      r4, r30
    lwz     r5, 0x28(sp)
    subf    r0, r5, r31
    stw     r0, 0x4(r5)
    bl      PSMTXCopy
    lis     r3, 0x8040
    addi    r6, r3, 0x47b8
    lwz     r4, 0x0(r6)
    lis     r3, 0x8040
    lwz     r0, 0x4(r6)
    addi    r5, r3, 0x47c4
    addi    r3, r28, 0x0
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x64(sp)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x70(sp)
    lwz     r12, 0x0(r28)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x8(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x802d4dc8
    mtlr    r12
    addi    r3, r28, 0x0
    li      r4, 0x0
    blrl
branch_0x802d4dc8:
    lwz     r12, 0x4c(r27)
    mr      r3, r27
    lwz     r4, 0x10(r28)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lis     r3, 0x8040
    addi    r4, r3, 0x4788
    addi    r3, r30, 0x0
    bl      PSMTXCopy
    lis     r3, 0x8040
    lwz     r4, 0x5c(sp)
    lwz     r0, 0x60(sp)
    addi    r6, r3, 0x47b8
    lis     r3, 0x8040
    stw     r4, 0x0(r6)
    addi    r5, r3, 0x47c4
    addi    r3, r28, 0x0
    stw     r0, 0x4(r6)
    lwz     r0, 0x64(sp)
    stw     r0, 0x8(r6)
    lwz     r4, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x70(sp)
    stw     r0, 0x8(r5)
    lwz     r12, 0x0(r28)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x8(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x802d4e60
    mtlr    r12
    addi    r3, r28, 0x0
    li      r4, 0x1
    blrl
branch_0x802d4e60:
    lwz     r12, 0x4c(r27)
    mr      r3, r27
    lwz     r4, 0x14(r28)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lis     r3, 0x803e
    addi    r0, r3, 0x8f4
    stw     r0, 0x74(sp)
    lwz     r3, 0x28(sp)
    stw     r29, 0x0(r3)
    lwz     r3, 0x28(sp)
    subf    r0, r3, r31
    stw     r0, 0x4(r3)
branch_0x802d4e98:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl calcOut__7J3DNodeFv
calcOut__7J3DNodeFv: # 0x802d4eac
    blr


.globl calcIn__7J3DNodeFv
calcIn__7J3DNodeFv: # 0x802d4eb0
    blr


.globl recursiveEntry__15J3DMtxCalcBasicFP7J3DNode
recursiveEntry__15J3DMtxCalcBasicFP7J3DNode: # 0x802d4eb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x802d4f18
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x4c(r30)
    mr      r3, r30
    lwz     r4, 0x10(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x4c(r30)
    mr      r3, r30
    lwz     r4, 0x14(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x802d4f18:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl entryIn__7J3DNodeFv
entryIn__7J3DNodeFv: # 0x802d4f30
    blr


.globl calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo
calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo: # 0x802d4f34
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r5, 0x0
    addi    r5, r3, 0x47b8
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    lfs     f0, 0x0(r31)
    lfs     f1, 0x0(r5)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r5)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r5)
    lfs     f1, 0x8(r5)
    lfs     f0, 0x8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r5)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lfs     f1, 0x248(rtoc)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x30(sp)
    lfs     f0, 0x28(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802d4fd4
    lfs     f0, 0x2c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802d4fd4
    lfs     f0, 0x30(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802d4fd4
    li      r0, 0x1
    b       branch_0x802d4fd8

branch_0x802d4fd4:
    li      r0, 0x0
branch_0x802d4fd8:
    cmpwi   r0, 0x0
    beq-    branch_0x802d5004
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r3, 0x38(r3)
    clrlwi  r0, r30, 16
    li      r4, 0x1
    lwz     r3, 0x50(r3)
    li      r29, 0x1
    stbx    r4, r3, r0
    b       branch_0x802d5024

branch_0x802d5004:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r3, 0x38(r3)
    clrlwi  r0, r30, 16
    li      r4, 0x0
    lwz     r3, 0x50(r3)
    li      r29, 0x0
    stbx    r4, r3, r0
branch_0x802d5024:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x34
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
    cmpwi   r29, 0x0
    bne-    branch_0x802d50c8
    lfs     f1, 0x34(sp)
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x5c(sp)
branch_0x802d50c8:
    lis     r3, 0x8040
    addi    r31, r3, 0x4788
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0x34
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    clrlwi  r0, r30, 16
    lwz     r3, 0x38(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r3)
    addi    r3, r31, 0x0
    add     r4, r4, r0
    bl      PSMTXCopy
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl calc__15J3DMtxCalcBasicFUs
calc__15J3DMtxCalcBasicFUs: # 0x802d5120
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x0
    stwu    sp, -0x8(sp)
    beq-    branch_0x802d513c
    lwz     r0, 0x0(r3)
branch_0x802d513c:
    lis     r5, 0x8040
    addi    r5, r5, 0x45dc
    stw     r0, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    lwz     r5, 0x38(r5)
    lwz     r12, 0x4c(r3)
    lwz     r5, 0x4(r5)
    lwz     r12, 0x1c(r12)
    lwz     r5, 0x20(r5)
    mtlr    r12
    lwzx    r5, r5, r0
    addi    r5, r5, 0x1c
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo
calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo: # 0x802d5180
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    addi    r28, r3, 0x47b8
    mr      r29, r4
    addi    r27, r5, 0x0
    addi    r31, r28, 0x4
    addi    r30, r28, 0x8
    addi    r6, sp, 0x38
    lfs     f0, 0x0(r28)
    lfs     f1, 0x14(r5)
    lfs     f4, 0x18(r5)
    lfs     f2, 0x4(r28)
    fmuls   f1, f1, f0
    lfs     f3, 0x1c(r5)
    lfs     f0, 0x8(r28)
    fmuls   f2, f4, f2
    lha     r3, 0xc(r5)
    lha     r4, 0xe(r5)
    fmuls   f3, f3, f0
    lha     r5, 0x10(r5)
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, sp, 0x38
    bl      PSMTXConcat
    lfs     f1, 0x0(r28)
    lfs     f0, 0x0(r27)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r28)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r27)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x0(r30)
    lfs     f0, 0x8(r27)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r30)
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4(r28)
    lfs     f1, 0x248(rtoc)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x34(sp)
    lfs     f0, 0x2c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802d526c
    lfs     f0, 0x30(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802d526c
    lfs     f0, 0x34(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802d526c
    li      r0, 0x1
    b       branch_0x802d5270

branch_0x802d526c:
    li      r0, 0x0
branch_0x802d5270:
    cmpwi   r0, 0x0
    beq-    branch_0x802d529c
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r3, 0x38(r3)
    clrlwi  r0, r29, 16
    li      r4, 0x1
    lwz     r3, 0x50(r3)
    li      r5, 0x1
    stbx    r4, r3, r0
    b       branch_0x802d52bc

branch_0x802d529c:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r3, 0x38(r3)
    clrlwi  r0, r29, 16
    li      r4, 0x0
    lwz     r3, 0x50(r3)
    li      r5, 0x0
    stbx    r4, r3, r0
branch_0x802d52bc:
    cmpwi   r5, 0x0
    bne-    branch_0x802d53a8
    lis     r3, 0x8040
    addi    r4, r3, 0x4788
    lis     r3, 0x8040
    lfs     f1, 0x0(r4)
    addi    r5, r3, 0x47b8
    lfs     f0, 0x0(r5)
    clrlwi  r0, r29, 16
    addi    r7, r4, 0x4
    fmuls   f0, f1, f0
    lis     r3, 0x8040
    addi    r4, r3, 0x45dc
    mulli   r0, r0, 0x30
    stfs    f0, 0x38(sp)
    lfs     f1, 0x0(r7)
    addi    r3, sp, 0x38
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x4(r7)
    lfs     f0, 0x0(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f0, 0x8(r7)
    stfs    f0, 0x44(sp)
    lfs     f1, 0xc(r7)
    lfs     f0, 0x0(r5)
    fmuls   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x10(r7)
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x14(r7)
    lfs     f0, 0x0(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f0, 0x18(r7)
    stfs    f0, 0x54(sp)
    lfs     f1, 0x1c(r7)
    lfs     f0, 0x0(r5)
    fmuls   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x20(r7)
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x24(r7)
    lfs     f0, 0x0(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f0, 0x28(r7)
    stfs    f0, 0x64(sp)
    lwz     r4, 0x38(r4)
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      PSMTXCopy
    b       branch_0x802d53d0

branch_0x802d53a8:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    clrlwi  r0, r29, 16
    lwz     r3, 0x38(r3)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r3)
    lis     r3, 0x8040
    addi    r3, r3, 0x4788
    add     r4, r4, r0
    bl      PSMTXCopy
branch_0x802d53d0:
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl calcTransform__14J3DMtxCalcMayaFUsRC16J3DTransformInfo
calcTransform__14J3DMtxCalcMayaFUsRC16J3DTransformInfo: # 0x802d53e4
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x45dc
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r29, r4, 0x0
    addi    r31, r3, 0x38
    clrlslwi  r0, r29, 16, 2
    addi    r30, r5, 0x0
    clrlwi  r4, r4, 16
    lwz     r6, 0x38(r3)
    lfs     f1, 0x248(rtoc)
    lwz     r3, 0x4(r6)
    lfs     f0, 0x0(r5)
    lwz     r3, 0x20(r3)
    fcmpu   cr0, f1, f0
    lwzx    r3, r3, r0
    lbz     r28, 0x1b(r3)
    bne-    branch_0x802d5460
    lfs     f0, 0x4(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802d5460
    lfs     f0, 0x8(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802d5460
    lwz     r3, 0x50(r6)
    li      r0, 0x1
    li      r27, 0x1
    stbx    r0, r3, r4
    b       branch_0x802d5474

branch_0x802d5460:
    lwz     r3, 0x50(r6)
    clrlwi  r0, r29, 16
    li      r4, 0x0
    stbx    r4, r3, r0
    li      r27, 0x0
branch_0x802d5474:
    addi    r3, r30, 0x0
    addi    r4, sp, 0x58
    bl      J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
    cmpwi   r27, 0x0
    bne-    branch_0x802d5518
    lfs     f1, 0x58(sp)
    lfs     f0, 0x0(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x4(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x8(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x0(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x4(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x8(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x0(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x4(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x8(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x80(sp)
branch_0x802d5518:
    cmplwi  r28, 0x1
    bne-    branch_0x802d55f0
    lis     r3, 0x8040
    lfsu    f0, 0x47c4(r3)
    lfs     f3, 0x248(rtoc)
    addi    r10, sp, 0x58
    lfs     f2, 0x4(r3)
    addi    r4, r10, 0x0
    fdivs   f4, f3, f0
    lfs     f0, 0x0(r10)
    addi    r10, r10, 0x4
    lfs     f1, 0x8(r3)
    addi    r3, r10, 0x0
    fmuls   f0, f0, f4
    addi    r10, r10, 0x4
    fdivs   f2, f3, f2
    addi    r9, r10, 0x0
    addi    r10, r10, 0x8
    stfs    f0, 0x0(r4)
    addi    r8, r10, 0x0
    lfs     f0, 0x0(r3)
    addi    r10, r10, 0x4
    addi    r7, r10, 0x0
    fdivs   f1, f3, f1
    addi    r10, r10, 0x4
    addi    r6, r10, 0x0
    addi    r10, r10, 0x8
    addi    r5, r10, 0x0
    fmuls   f0, f0, f4
    addi    r10, r10, 0x4
    addi    r4, r10, 0x0
    addi    r10, r10, 0x4
    stfs    f0, 0x0(r3)
    lfs     f0, 0x0(r9)
    fmuls   f0, f0, f4
    stfs    f0, 0x0(r9)
    lfs     f0, 0x0(r8)
    fmuls   f0, f0, f2
    stfs    f0, 0x0(r8)
    lfs     f0, 0x0(r7)
    fmuls   f0, f0, f2
    stfs    f0, 0x0(r7)
    lfs     f0, 0x0(r6)
    fmuls   f0, f0, f2
    stfs    f0, 0x0(r6)
    lfs     f0, 0x0(r5)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r5)
    lfs     f0, 0x0(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r4)
    lfs     f0, 0x0(r10)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r10)
branch_0x802d55f0:
    lis     r3, 0x8040
    addi    r28, r3, 0x4788
    addi    r3, r28, 0x0
    addi    r5, r28, 0x0
    addi    r4, sp, 0x58
    bl      PSMTXConcat
    clrlwi  r0, r29, 16
    lwz     r3, 0x0(r31)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r3)
    addi    r3, r28, 0x0
    add     r4, r4, r0
    bl      PSMTXCopy
    lfs     f0, 0x0(r30)
    lis     r3, 0x8040
    stfsu   f0, 0x47c4(r3)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x8(r3)
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl J3DNewMtxCalcAnm__FUlP15J3DAnmTransform
J3DNewMtxCalcAnm__FUlP15J3DAnmTransform: # 0x802d5654
    mflr    r0
    cmpwi   r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    beq-    branch_0x802d573c
    bge-    branch_0x802d5688
    cmpwi   r3, 0x0
    bge-    branch_0x802d5694
    b       branch_0x802d58a4

branch_0x802d5688:
    cmpwi   r3, 0x3
    bge-    branch_0x802d58a4
    b       branch_0x802d57f0

branch_0x802d5694:
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802d5728
    stw     r31, 0x18(sp)
    addi    r5, r31, 0x68
    lis     r4, 0x803b
    stw     r5, 0x0(r31)
    lis     r3, 0x803e
    addi    r6, r3, 0x8f4
    lwz     r29, 0x18(sp)
    subi    r4, r4, 0xf38
    addi    r0, r6, 0x24
    stw     r5, 0x50(r29)
    addi    r3, r29, 0x50
    addi    r5, r30, 0x0
    stw     r4, 0x68(r29)
    li      r4, 0x0
    stw     r6, 0x4c(r29)
    lwz     r6, 0x0(r29)
    stw     r0, 0x0(r6)
    lwz     r6, 0x0(r29)
    subf    r0, r6, r3
    stw     r0, 0x4(r6)
    bl      __ct__13J3DMtxCalcAnmFP15J3DAnmTransform
    lis     r3, 0x803e
    subi    r3, r3, 0x4ed0
    stw     r3, 0x4c(r29)
    addi    r5, r3, 0x34
    addi    r3, r3, 0x24
    lwz     r4, 0x0(r29)
    addi    r0, r29, 0x68
    stw     r5, 0x0(r4)
    stw     r3, 0x54(r29)
    lwz     r3, 0x0(r29)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
branch_0x802d5728:
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x802d58a8
    lwz     r3, 0x0(r31)
    b       branch_0x802d58a8

branch_0x802d573c:
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802d57dc
    stw     r29, 0x14(sp)
    addi    r5, r29, 0x68
    lis     r3, 0x803b
    stw     r5, 0x0(r29)
    subi    r0, r3, 0xf38
    li      r4, 0x0
    lwz     r31, 0x14(sp)
    stw     r5, 0x50(r31)
    mr      r3, r31
    stw     r0, 0x68(r31)
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, 0x803e
    addi    r4, r3, 0x8b0
    stw     r4, 0x4c(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x50
    lwz     r4, 0x0(r31)
    mr      r5, r30
    stw     r0, 0x0(r4)
    li      r4, 0x0
    lwz     r6, 0x0(r31)
    subf    r0, r6, r3
    stw     r0, 0x4(r6)
    bl      __ct__13J3DMtxCalcAnmFP15J3DAnmTransform
    lis     r3, 0x803b
    subi    r3, r3, 0xd64
    stw     r3, 0x4c(r31)
    addi    r5, r3, 0x34
    addi    r3, r3, 0x24
    lwz     r4, 0x0(r31)
    addi    r0, r31, 0x68
    stw     r5, 0x0(r4)
    stw     r3, 0x54(r31)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
branch_0x802d57dc:
    cmplwi  r29, 0x0
    addi    r3, r29, 0x0
    beq-    branch_0x802d58a8
    lwz     r3, 0x0(r29)
    b       branch_0x802d58a8

branch_0x802d57f0:
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802d5890
    stw     r29, 0x10(sp)
    addi    r5, r29, 0x68
    lis     r3, 0x803b
    stw     r5, 0x0(r29)
    subi    r0, r3, 0xf38
    li      r4, 0x0
    lwz     r31, 0x10(sp)
    stw     r5, 0x50(r31)
    mr      r3, r31
    stw     r0, 0x68(r31)
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, 0x803e
    addi    r4, r3, 0x86c
    stw     r4, 0x4c(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x50
    lwz     r4, 0x0(r31)
    mr      r5, r30
    stw     r0, 0x0(r4)
    li      r4, 0x0
    lwz     r6, 0x0(r31)
    subf    r0, r6, r3
    stw     r0, 0x4(r6)
    bl      __ct__13J3DMtxCalcAnmFP15J3DAnmTransform
    lis     r3, 0x803e
    addi    r3, r3, 0x818
    stw     r3, 0x4c(r31)
    addi    r5, r3, 0x34
    addi    r3, r3, 0x24
    lwz     r4, 0x0(r31)
    addi    r0, r31, 0x68
    stw     r5, 0x0(r4)
    stw     r3, 0x54(r31)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
branch_0x802d5890:
    cmplwi  r29, 0x0
    addi    r3, r29, 0x0
    beq-    branch_0x802d58a8
    lwz     r3, 0x0(r29)
    b       branch_0x802d58a8

branch_0x802d58a4:
    li      r3, 0x0
branch_0x802d58a8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __dt__14J3DMtxCalcMayaFv
__dt__14J3DMtxCalcMayaFv: # 0x802d58c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d593c
    lis     r3, 0x803e
    addi    r3, r3, 0x86c
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    addi    r5, r31, 0x50
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
    beq-    branch_0x802d592c
    lis     r3, 0x803e
    addi    r3, r3, 0x8f4
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
branch_0x802d592c:
    extsh.  r0, r4
    ble-    branch_0x802d593c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d593c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initialize__8J3DJointFv
initialize__8J3DJointFv: # 0x802d5954
    stwu    sp, -0x30(sp)
    li      r8, 0x0
    lis     r6, 0x803e
    sth     r8, 0x18(r3)
    li      r0, 0x1
    addi    r7, r6, 0x788
    stb     r0, 0x1a(r3)
    lis     r5, 0x803b
    lis     r4, 0x803b
    stb     r8, 0x1b(r3)
    subi    r6, r5, 0x608c
    subi    r5, r4, 0x6080
    lfs     f0, 0x0(r7)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x4(r7)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x8(r7)
    stfs    f0, 0x24(r3)
    lha     r0, 0xc(r7)
    sth     r0, 0x28(r3)
    lha     r0, 0xe(r7)
    sth     r0, 0x2a(r3)
    lha     r0, 0x10(r7)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x14(r7)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x18(r7)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x1c(r7)
    stfs    f0, 0x38(r3)
    lfs     f0, 0x24c(rtoc)
    stfs    f0, 0x3c(r3)
    lwz     r4, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r4, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x28(sp)
    lwz     r4, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r4, 0x40(r3)
    stw     r0, 0x44(r3)
    lwz     r0, 0x28(sp)
    stw     r0, 0x48(r3)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1c(sp)
    lwz     r4, 0x14(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0x4c(r3)
    stw     r0, 0x50(r3)
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x30
    stw     r0, 0x54(r3)
    stw     r8, 0x58(r3)
    stw     r8, 0x5c(r3)
    stw     r8, 0x60(r3)
    blr


.globl addMesh__8J3DJointFP11J3DMaterial
addMesh__8J3DJointFP11J3DMaterial: # 0x802d5a48
    lwz     r0, 0x60(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802d5a5c
    stw     r4, 0x60(r3)
    blr

branch_0x802d5a5c:
    stw     r0, 0x0(r4)
    stw     r4, 0x60(r3)
    blr


.globl updateIn__8J3DJointFv
updateIn__8J3DJointFv: # 0x802d5a68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r25, 0xbc(sp)
    mr      r26, r3
    lwz     r0, 0x58(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802d5ab4
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x30(r3)
    stw     r0, 0x5c(r26)
    lwz     r3, 0x58(r26)
    lhz     r4, 0x18(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x802d5adc

branch_0x802d5ab4:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r3, 0x30(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802d5adc
    lwz     r12, 0x0(r3)
    lhz     r4, 0x18(r26)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
branch_0x802d5adc:
    lis     r3, 0x8040
    lhz     r0, 0x18(r26)
    addi    r30, r3, 0x45dc
    addi    r29, r30, 0x38
    lwz     r3, 0x44(r30)
    lwz     r4, 0x38(r30)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    lis     r31, 0xc000
    add     r0, r4, r0
    stw     r0, 0x1c(r3)
    lhz     r0, 0x18(r26)
    lwz     r4, 0x38(r30)
    mulli   r0, r0, 0x30
    lwz     r3, 0x48(r30)
    lwz     r4, 0x58(r4)
    add     r0, r4, r0
    stw     r0, 0x1c(r3)
    lwz     r27, 0x60(r26)
    b       branch_0x802d5c84

branch_0x802d5b2c:
    lwz     r4, 0x4(r27)
    lwz     r0, 0x8(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x802d5b44
    li      r0, 0x1
    b       branch_0x802d5b48

branch_0x802d5b44:
    li      r0, 0x0
branch_0x802d5b48:
    cmpwi   r0, 0x0
    beq-    branch_0x802d5b58
    lwz     r27, 0x0(r27)
    b       branch_0x802d5c84

branch_0x802d5b58:
    lhz     r3, 0xc(r27)
    lhz     r0, 0x4(r4)
    lwz     r7, 0x0(r29)
    mulli   r5, r3, 0x48
    lwz     r3, 0x38(r27)
    lwz     r6, 0x80(r7)
    mulli   r0, r0, 0x34
    lwz     r4, 0x84(r7)
    cmplw   r3, r31
    add     r28, r6, r5
    add     r25, r4, r0
    bge-    branch_0x802d5b90
    mr      r0, r3
    b       branch_0x802d5b94

branch_0x802d5b90:
    li      r0, 0x0
branch_0x802d5b94:
    cmplwi  r0, 0x0
    beq-    branch_0x802d5bc0
    cmplw   r3, r31
    bge-    branch_0x802d5ba8
    b       branch_0x802d5bac

branch_0x802d5ba8:
    li      r3, 0x0
branch_0x802d5bac:
    lwz     r12, 0x0(r3)
    mr      r4, r27
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802d5bc0:
    lhz     r0, 0x18(r26)
    mr      r3, r27
    lwz     r4, 0x0(r29)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      calc__11J3DMaterialFPA4_f
    mr      r3, r27
    bl      setCurrentMtx__11J3DMaterialFv
    lwz     r0, 0x38(r27)
    cmplw   r0, r31
    bge-    branch_0x802d5bf4
    b       branch_0x802d5bf8

branch_0x802d5bf4:
    li      r0, 0x0
branch_0x802d5bf8:
    stw     r0, 0x44(r28)
    stw     r25, 0x34(r28)
    lwz     r0, 0x8(r27)
    clrlwi. r0, r0, 30
    beq-    branch_0x802d5c14
    li      r0, 0x1
    b       branch_0x802d5c18

branch_0x802d5c14:
    li      r0, 0x0
branch_0x802d5c18:
    clrlwi  r0, r0, 24
    lwz     r12, 0x0(r28)
    cntlzw  r0, r0
    rlwinm  r0, r0, 29, 22, 29
    lwz     r12, 0xc(r12)
    add     r4, r30, r0
    lwz     r4, 0x44(r4)
    mtlr    r12
    addi    r3, r28, 0x0
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x802d5c80
    stw     r28, 0x3c(r30)
    lwz     r0, 0x1c(r27)
    clrlwi. r0, r0, 31
    beq-    branch_0x802d5c60
    li      r0, 0x1
    b       branch_0x802d5c64

branch_0x802d5c60:
    li      r0, 0x0
branch_0x802d5c64:
    cmpwi   r0, 0x0
    bne-    branch_0x802d5c78
    mr      r3, r27
    bl      makeDisplayList__11J3DMaterialFv
    b       branch_0x802d5c80

branch_0x802d5c78:
    mr      r3, r27
    bl      safeMakeDisplayList__11J3DMaterialFv
branch_0x802d5c80:
    lwz     r27, 0x0(r27)
branch_0x802d5c84:
    cmplwi  r27, 0x0
    bne+    branch_0x802d5b2c
    lmw     r25, 0xbc(sp)
    lwz     r0, 0xdc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl updateOut__8J3DJointFv
updateOut__8J3DJointFv: # 0x802d5ca0
    lwz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    stw     r0, 0x30(r4)
    li      r0, 0x0
    stw     r0, 0x5c(r3)
    blr


.globl calcIn__8J3DJointFv
calcIn__8J3DJointFv: # 0x802d5cc4
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x58(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802d5d0c
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x30(r3)
    stw     r0, 0x5c(r4)
    lwz     r3, 0x58(r4)
    lhz     r4, 0x18(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x802d5d34

branch_0x802d5d0c:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r3, 0x30(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802d5d34
    lwz     r12, 0x0(r3)
    lhz     r4, 0x18(r4)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
branch_0x802d5d34:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcOut__8J3DJointFv
calcOut__8J3DJointFv: # 0x802d5d44
    lwz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    stw     r0, 0x30(r4)
    li      r0, 0x0
    stw     r0, 0x5c(r3)
    blr


.globl entryIn__8J3DJointFv
entryIn__8J3DJointFv: # 0x802d5d68
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r25, 0xbc(sp)
    addi    r30, r4, 0x45dc
    addi    r26, r3, 0x0
    addi    r28, r30, 0x38
    lis     r31, 0xc000
    lhz     r0, 0x18(r26)
    lwz     r4, 0x38(r30)
    mulli   r0, r0, 0x30
    lwz     r3, 0x44(r30)
    lwz     r4, 0x58(r4)
    add     r0, r4, r0
    stw     r0, 0x1c(r3)
    lhz     r0, 0x18(r26)
    lwz     r4, 0x38(r30)
    mulli   r0, r0, 0x30
    lwz     r3, 0x48(r30)
    lwz     r4, 0x58(r4)
    add     r0, r4, r0
    stw     r0, 0x1c(r3)
    lwz     r27, 0x60(r26)
    b       branch_0x802d5f24

branch_0x802d5dcc:
    lwz     r3, 0x4(r27)
    lwz     r0, 0x8(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x802d5de4
    li      r0, 0x1
    b       branch_0x802d5de8

branch_0x802d5de4:
    li      r0, 0x0
branch_0x802d5de8:
    cmpwi   r0, 0x0
    beq-    branch_0x802d5df8
    lwz     r27, 0x0(r27)
    b       branch_0x802d5f24

branch_0x802d5df8:
    lhz     r0, 0xc(r27)
    lwz     r4, 0x0(r28)
    mulli   r0, r0, 0x48
    lhz     r3, 0x4(r3)
    lwz     r5, 0x80(r4)
    lwz     r4, 0x84(r4)
    add     r29, r5, r0
    lwz     r0, 0x10(r29)
    mulli   r3, r3, 0x34
    clrlwi. r0, r0, 31
    add     r25, r4, r3
    beq-    branch_0x802d5e30
    li      r0, 0x1
    b       branch_0x802d5e34

branch_0x802d5e30:
    li      r0, 0x0
branch_0x802d5e34:
    cmpwi   r0, 0x0
    bne-    branch_0x802d5ea4
    lwz     r3, 0x38(r27)
    cmplw   r3, r31
    bge-    branch_0x802d5e50
    mr      r0, r3
    b       branch_0x802d5e54

branch_0x802d5e50:
    li      r0, 0x0
branch_0x802d5e54:
    cmplwi  r0, 0x0
    beq-    branch_0x802d5e80
    cmplw   r3, r31
    bge-    branch_0x802d5e68
    b       branch_0x802d5e6c

branch_0x802d5e68:
    li      r3, 0x0
branch_0x802d5e6c:
    lwz     r12, 0x0(r3)
    mr      r4, r27
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802d5e80:
    lhz     r0, 0x18(r26)
    mr      r3, r27
    lwz     r4, 0x0(r28)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      calc__11J3DMaterialFPA4_f
    mr      r3, r27
    bl      setCurrentMtx__11J3DMaterialFv
branch_0x802d5ea4:
    lwz     r0, 0x38(r27)
    cmplw   r0, r31
    bge-    branch_0x802d5eb4
    b       branch_0x802d5eb8

branch_0x802d5eb4:
    li      r0, 0x0
branch_0x802d5eb8:
    stw     r0, 0x44(r29)
    stw     r25, 0x34(r29)
    lwz     r0, 0x8(r27)
    clrlwi. r0, r0, 30
    beq-    branch_0x802d5ed4
    li      r0, 0x1
    b       branch_0x802d5ed8

branch_0x802d5ed4:
    li      r0, 0x0
branch_0x802d5ed8:
    clrlwi  r0, r0, 24
    lwz     r12, 0x0(r29)
    cntlzw  r0, r0
    rlwinm  r0, r0, 29, 22, 29
    lwz     r12, 0xc(r12)
    add     r4, r30, r0
    lwz     r4, 0x44(r4)
    mtlr    r12
    addi    r3, r29, 0x0
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x802d5f20
    stw     r29, 0x3c(r30)
    mr      r3, r27
    lwz     r4, -0x5e00(r13)
    addi    r0, r4, 0x1
    stw     r0, -0x5e00(r13)
    bl      makeDisplayList__11J3DMaterialFv
branch_0x802d5f20:
    lwz     r27, 0x0(r27)
branch_0x802d5f24:
    cmplwi  r27, 0x0
    bne+    branch_0x802d5dcc
    lmw     r25, 0xbc(sp)
    lwz     r0, 0xdc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl getType__8J3DJointCFv
getType__8J3DJointCFv: # 0x802d5f40
    lis     r3, 0x4e4a
    addi    r3, r3, 0x4e54
    blr


.globl __dt__8J3DJointFv
__dt__8J3DJointFv: # 0x802d5f4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802d5f94
    lis     r3, 0x803e
    addi    r0, r3, 0x7f0
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7J3DNodeFv
    extsh.  r0, r31
    ble-    branch_0x802d5f94
    mr      r3, r30
    bl      __dl__FPv
branch_0x802d5f94:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__7J3DNodeFP12J3DModelData
init__7J3DNodeFP12J3DModelData: # 0x802d5fb0
    blr


.globl __dt__17J3DMtxCalcMayaAnmFv
__dt__17J3DMtxCalcMayaAnmFv: # 0x802d5fb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr.     r31, r3
    beq-    branch_0x802d60a8
    lis     r3, 0x803e
    addi    r3, r3, 0x818
    stw     r3, 0x4c(r31)
    addi    r7, r3, 0x34
    addi    r3, r3, 0x24
    lwz     r5, 0x0(r31)
    addi    r6, r31, 0x68
    addic.  r0, r31, 0x50
    stw     r7, 0x0(r5)
    stw     r3, 0x54(r31)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r6
    stw     r0, 0x4(r3)
    beq-    branch_0x802d6040
    lis     r3, 0x803e
    addi    r3, r3, 0x938
    stw     r3, 0x54(r31)
    addi    r5, r3, 0x10
    li      r0, 0x0
    lwz     r3, 0x50(r31)
    stw     r5, 0x0(r3)
    lwz     r5, 0x50(r31)
    subf    r3, r5, r6
    stw     r3, 0x4(r5)
    stw     r0, 0x58(r31)
    lfs     f0, 0x248(rtoc)
    stfs    f0, 0x60(r31)
    stw     r0, 0x5c(r31)
    stfs    f0, 0x64(r31)
branch_0x802d6040:
    cmplwi  r31, 0x0
    beq-    branch_0x802d6098
    lis     r3, 0x803e
    addi    r3, r3, 0x86c
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    addi    r5, r31, 0x50
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
    beq-    branch_0x802d6098
    lis     r3, 0x803e
    addi    r3, r3, 0x8f4
    stw     r3, 0x4c(r31)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r31)
    subf    r0, r3, r5
    stw     r0, 0x4(r3)
branch_0x802d6098:
    extsh.  r0, r4
    ble-    branch_0x802d60a8
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d60a8:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__14J3DMtxCalcMayaFRC3VecRA3_A4_Cf
init__14J3DMtxCalcMayaFRC3VecRA3_A4_Cf: # 0x802d60c0
    lis     r3, 0x803b
    stwu    sp, -0x28(sp)
    subi    r9, r3, 0x6098
    lwz     r8, 0x0(r9)
    lis     r7, 0x8040
    lwz     r0, 0x4(r9)
    lis     r6, 0x8040
    lis     r3, 0x8040
    stw     r8, 0x18(sp)
    addi    r8, r7, 0x47c4
    addi    r7, r6, 0x47b8
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r9)
    stw     r0, 0x20(sp)
    lwz     r6, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stw     r6, 0x0(r8)
    stw     r0, 0x4(r8)
    lwz     r0, 0x20(sp)
    addi    sp, sp, 0x28
    stw     r0, 0x8(r8)
    lwz     r6, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r6, 0x0(r7)
    stw     r0, 0x4(r7)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r7)
    lfs     f1, 0x0(r5)
    lfs     f0, 0x0(r4)
    fmuls   f0, f1, f0
    stfsu   f0, 0x4788(r3)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x4(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r5)
    lfs     f0, 0x8(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r5)
    stfs    f0, 0xc(r3)
    lfs     f1, 0x10(r5)
    lfs     f0, 0x0(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f1, 0x14(r5)
    lfs     f0, 0x4(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f1, 0x18(r5)
    lfs     f0, 0x8(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x18(r3)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x1c(r3)
    lfs     f1, 0x20(r5)
    lfs     f0, 0x0(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x20(r3)
    lfs     f1, 0x24(r5)
    lfs     f0, 0x4(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x24(r3)
    lfs     f1, 0x28(r5)
    lfs     f0, 0x8(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r3)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x2c(r3)
    blr


.globl calc__17J3DMtxCalcMayaAnmFUs
calc__17J3DMtxCalcMayaAnmFUs: # 0x802d61d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    addic.  r0, r30, 0x50
    addi    r5, r30, 0x50
    beq-    branch_0x802d6204
    lwz     r5, 0x0(r5)
branch_0x802d6204:
    lis     r3, 0x8040
    addi    r4, r3, 0x45dc
    stw     r5, 0x30(r4)
    lwz     r3, 0x58(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802d6238
    lwz     r12, 0xc(r3)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x3c
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802d6294

branch_0x802d6238:
    lwz     r3, 0x38(r4)
    clrlslwi  r0, r31, 16, 2
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    lfsu    f0, 0x1c(r3)
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x40(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x44(sp)
    lha     r0, 0xc(r3)
    sth     r0, 0x48(sp)
    lha     r0, 0xe(r3)
    sth     r0, 0x4a(sp)
    lha     r0, 0x10(r3)
    sth     r0, 0x4c(sp)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x50(sp)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x54(sp)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x58(sp)
branch_0x802d6294:
    lwz     r3, 0x50(r30)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x3c
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl _24_4_calc__13J3DMtxCalcAnmFUs
_24_4_calc__13J3DMtxCalcAnmFUs: # 0x802d62c8
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x18
    b       calc__13J3DMtxCalcAnmFUs


.globl _80_4_calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo
_80_4_calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo: # 0x802d62dc
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo


.globl _80_4_init__15J3DMtxCalcBasicFRC3VecRA3_A4_Cf
_80_4_init__15J3DMtxCalcBasicFRC3VecRA3_A4_Cf: # 0x802d62f0
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       init__15J3DMtxCalcBasicFRC3VecRA3_A4_Cf


.globl _80_4_calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo
_80_4_calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo: # 0x802d6304
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo


.globl _80_4_init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf
_80_4_init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf: # 0x802d6318
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf


.globl _80_4_calc__15J3DMtxCalcBasicFUs
_80_4_calc__15J3DMtxCalcBasicFUs: # 0x802d632c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       calc__15J3DMtxCalcBasicFUs


.globl _80_4_calcTransform__14J3DMtxCalcMayaFUsRC16J3DTransformInfo
_80_4_calcTransform__14J3DMtxCalcMayaFUsRC16J3DTransformInfo: # 0x802d6340
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       calcTransform__14J3DMtxCalcMayaFUsRC16J3DTransformInfo


.globl _80_4_recursiveEntry__15J3DMtxCalcBasicFP7J3DNode
_80_4_recursiveEntry__15J3DMtxCalcBasicFP7J3DNode: # 0x802d6354
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       recursiveEntry__15J3DMtxCalcBasicFP7J3DNode


.globl _80_4_recursiveCalc__15J3DMtxCalcBasicFP7J3DNode
_80_4_recursiveCalc__15J3DMtxCalcBasicFP7J3DNode: # 0x802d6368
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       recursiveCalc__15J3DMtxCalcBasicFP7J3DNode


.globl _80_4_recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode
_80_4_recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode: # 0x802d637c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode


.globl _80_4_init__14J3DMtxCalcMayaFRC3VecRA3_A4_Cf
_80_4_init__14J3DMtxCalcMayaFRC3VecRA3_A4_Cf: # 0x802d6390
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x50
    b       init__14J3DMtxCalcMayaFRC3VecRA3_A4_Cf


.globl _104_4_calc__17J3DMtxCalcMayaAnmFUs
_104_4_calc__17J3DMtxCalcMayaAnmFUs: # 0x802d63a4
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calc__17J3DMtxCalcMayaAnmFUs


.globl _104_4_calcTransform__14J3DMtxCalcMayaFUsRC16J3DTransformInfo
_104_4_calcTransform__14J3DMtxCalcMayaFUsRC16J3DTransformInfo: # 0x802d63b8
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calcTransform__14J3DMtxCalcMayaFUsRC16J3DTransformInfo


.globl _104_4_init__14J3DMtxCalcMayaFRC3VecRA3_A4_Cf
_104_4_init__14J3DMtxCalcMayaFRC3VecRA3_A4_Cf: # 0x802d63cc
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       init__14J3DMtxCalcMayaFRC3VecRA3_A4_Cf


.globl _80_calc__17J3DMtxCalcMayaAnmFUs
_80_calc__17J3DMtxCalcMayaAnmFUs: # 0x802d63e0
    subi    r3, r3, 0x50
    b       calc__17J3DMtxCalcMayaAnmFUs


.globl _80___dt__17J3DMtxCalcMayaAnmFv
_80___dt__17J3DMtxCalcMayaAnmFv: # 0x802d63e8
    subi    r3, r3, 0x50
    b       __dt__17J3DMtxCalcMayaAnmFv

