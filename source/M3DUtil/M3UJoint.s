
.globl calc__24M3UMtxCalcSIAnmBlendQuatFUs
calc__24M3UMtxCalcSIAnmBlendQuatFUs: # 0x80237054
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xa4(sp)
    mr.     r29, r3
    addi    r0, r29, 0x0
    beq-    branch_0x80237080
    lwz     r0, 0x0(r29)
branch_0x80237080:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    stw     r0, 0x30(r3)
    lwz     r3, 0x54(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x802370a4
    lwz     r0, 0x58(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x802370d8
branch_0x802370a4:
    cmplwi  r3, 0x0
    bne-    branch_0x802370bc
    lfs     f1, -0x1568(rtoc)
    lfs     f0, 0x50(r29)
    fcmpu   cr0, f1, f0
    beq-    branch_0x802370d8
branch_0x802370bc:
    lwz     r0, 0x58(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8023715c
    lfs     f1, -0x1564(rtoc)
    lfs     f0, 0x50(r29)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8023715c
branch_0x802370d8:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r3, 0x38(r3)
    clrlslwi  r0, r30, 16, 2
    addi    r4, r30, 0x0
    lwz     r5, 0x4(r3)
    addi    r3, r29, 0x0
    lwz     r6, 0x20(r5)
    addi    r5, sp, 0x7c
    lwzx    r6, r6, r0
    lfsu    f0, 0x1c(r6)
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x4(r6)
    stfs    f0, 0x80(sp)
    lfs     f0, 0x8(r6)
    stfs    f0, 0x84(sp)
    lha     r0, 0xc(r6)
    sth     r0, 0x88(sp)
    lha     r0, 0xe(r6)
    sth     r0, 0x8a(sp)
    lha     r0, 0x10(r6)
    sth     r0, 0x8c(sp)
    lfs     f0, 0x14(r6)
    stfs    f0, 0x90(sp)
    lfs     f0, 0x18(r6)
    stfs    f0, 0x94(sp)
    lfs     f0, 0x1c(r6)
    stfs    f0, 0x98(sp)
    lwz     r12, 0x4c(r29)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x8023724c

branch_0x8023715c:
    lfs     f0, -0x1568(rtoc)
    lfs     f1, 0x50(r29)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80237174
    cmplwi  r0, 0x0
    bne-    branch_0x802371ac
branch_0x80237174:
    lwz     r12, 0xc(r3)
    addi    r4, r30, 0x0
    addi    r5, sp, 0x7c
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x4c(r29)
    addi    r4, r30, 0x0
    addi    r5, sp, 0x7c
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x8023724c

branch_0x802371ac:
    lfs     f0, -0x1564(rtoc)
    fcmpu   cr0, f0, f1
    beq-    branch_0x802371c0
    cmplwi  r3, 0x0
    bne-    branch_0x802371fc
branch_0x802371c0:
    mr      r3, r0
    lwz     r12, 0xc(r3)
    addi    r4, r30, 0x0
    addi    r5, sp, 0x7c
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x4c(r29)
    addi    r4, r30, 0x0
    addi    r5, sp, 0x7c
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x8023724c

branch_0x802371fc:
    lwz     r12, 0xc(r3)
    addi    r4, r30, 0x0
    addi    r5, sp, 0x3c
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x58(r29)
    addi    r31, sp, 0x5c
    addi    r4, r30, 0x0
    lwz     r12, 0xc(r3)
    mr      r5, r31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x50(r29)
    mr      r3, r30
    lbz     r6, 0x5c(r29)
    addi    r5, r31, 0x0
    addi    r4, sp, 0x3c
    bl      M3UMtxCalcBlendAux__FUsP16J3DTransformInfoP16J3DTransformInfofb
branch_0x8023724c:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf
init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf: # 0x80237268
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    lbz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80237390
    lis     r6, 0x8040
    lwz     r3, 0x0(r4)
    addi    r9, r6, 0x47b8
    lwz     r0, 0x4(r4)
    lis     r7, 0x803e
    stw     r3, 0x0(r9)
    lis     r6, 0x8040
    subi    r8, r7, 0x4490
    stw     r0, 0x4(r9)
    addi    r7, r6, 0x47c4
    lis     r3, 0x8040
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r9)
    lwz     r6, 0x0(r8)
    lwz     r0, 0x4(r8)
    stw     r6, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r8)
    stw     r0, 0x20(sp)
    lwz     r6, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stw     r6, 0x0(r7)
    stw     r0, 0x4(r7)
    lwz     r0, 0x20(sp)
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
    b       branch_0x802373c4

branch_0x80237390:
    lis     r3, 0x8040
    lwz     r0, 0x0(r4)
    lwz     r6, 0x4(r4)
    addi    r7, r3, 0x47b8
    lis     r3, 0x8040
    stw     r0, 0x0(r7)
    addi    r0, r3, 0x4788
    addi    r3, r5, 0x0
    stw     r6, 0x4(r7)
    lwz     r5, 0x8(r4)
    mr      r4, r0
    stw     r5, 0x8(r7)
    bl      PSMTXCopy
branch_0x802373c4:
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo
calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo: # 0x802373d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802373f4
    bl      calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo
    b       branch_0x802373f8

branch_0x802373f4:
    bl      calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo
branch_0x802373f8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__24M3UMtxCalcSIAnmBlendQuatFb
__ct__24M3UMtxCalcSIAnmBlendQuatFb: # 0x80237408
    mflr    r0
    stw     r0, 0x4(sp)
    extsh.  r0, r4
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x80237440
    addi    r0, r30, 0x64
    lis     r3, 0x803b
    stw     r0, 0x0(r30)
    subi    r0, r3, 0xf38
    stw     r0, 0x64(r30)
branch_0x80237440:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, 0x803e
    addi    r4, r3, 0x8b0
    stw     r4, 0x4c(r30)
    lis     r3, 0x803e
    subi    r5, r3, 0x4484
    lwz     r3, 0x0(r30)
    addi    r0, r4, 0x24
    addi    r7, r30, 0x50
    stw     r0, 0x0(r3)
    addi    r6, r5, 0x24
    addi    r4, r30, 0x64
    lwz     r8, 0x0(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    subf    r7, r8, r7
    stw     r7, 0x4(r8)
    stw     r5, 0x4c(r30)
    lwz     r5, 0x0(r30)
    stw     r6, 0x0(r5)
    lwz     r5, 0x0(r30)
    subf    r4, r5, r4
    stw     r4, 0x4(r5)
    lfs     f0, -0x1568(rtoc)
    stfs    f0, 0x50(r30)
    stfs    f0, 0x60(r30)
    stw     r0, 0x58(r30)
    stw     r0, 0x54(r30)
    stb     r31, 0x5c(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl M3UMtxCalcBlendAux__FUsP16J3DTransformInfoP16J3DTransformInfofb
M3UMtxCalcBlendAux__FUsP16J3DTransformInfoP16J3DTransformInfofb: # 0x802374d4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 24
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stfd    f30, 0xf0(sp)
    stfd    f29, 0xe8(sp)
    stfd    f28, 0xe0(sp)
    stfd    f27, 0xd8(sp)
    fmr     f27, f1
    stmw    r24, 0xb8(sp)
    mr      r28, r6
    lis     r6, 0x8040
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r31, r6, 0x47b8
    lfs     f0, -0x1564(rtoc)
    fsubs   f28, f0, f27
    beq-    branch_0x80237530
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x78(sp)
    stfs    f0, 0x74(sp)
    b       branch_0x80237548

branch_0x80237530:
    lwz     r4, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x7c(sp)
branch_0x80237548:
    lfs     f1, 0x0(r27)
    lfs     f0, 0x4(r27)
    fmuls   f2, f1, f27
    lfs     f5, 0x0(r26)
    lfs     f1, 0x8(r27)
    fmuls   f3, f0, f27
    lfs     f4, 0x4(r26)
    fmadds  f29, f5, f28, f2
    lfs     f0, 0x0(r31)
    lfs     f2, 0x8(r26)
    fmuls   f1, f1, f27
    fmadds  f31, f4, f28, f3
    fmuls   f0, f0, f29
    fmadds  f30, f2, f28, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f31
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f30
    stfs    f0, 0x8(r31)
    lwz     r4, 0x0(r31)
    lwz     r0, 0x4(r31)
    lfs     f1, -0x1564(rtoc)
    stw     r4, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x34(sp)
    lfs     f0, 0x2c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802375e4
    lfs     f0, 0x30(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802375e4
    lfs     f0, 0x34(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802375e4
    li      r25, 0x1
    b       branch_0x802375e8

branch_0x802375e4:
    li      r25, 0x0
branch_0x802375e8:
    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    addi    r30, r4, 0x38
    lwz     r4, 0x38(r4)
    clrlwi  r29, r3, 16
    lwz     r3, 0x50(r4)
    addi    r6, sp, 0x48
    stbx    r25, r3, r29
    lha     r3, 0xc(r26)
    lha     r4, 0xe(r26)
    lha     r5, 0x10(r26)
    bl      JMAEulerToQuat__FsssP10Quaternion
    addi    r24, sp, 0x58
    lha     r3, 0xc(r27)
    lha     r4, 0xe(r27)
    mr      r6, r24
    lha     r5, 0x10(r27)
    bl      JMAEulerToQuat__FsssP10Quaternion
    fmr     f1, f27
    addi    r4, r24, 0x0
    addi    r3, sp, 0x48
    addi    r5, sp, 0x38
    bl      JMAQuatLerp__FP10QuaternionP10QuaternionfP10Quaternion
    addi    r3, sp, 0x84
    addi    r4, sp, 0x38
    bl      PSMTXQuat
    lfs     f0, 0x14(r27)
    clrlwi. r0, r28, 24
    lfs     f1, 0x14(r26)
    fmuls   f0, f0, f27
    lfs     f4, 0x74(sp)
    lfs     f3, 0x78(sp)
    lfs     f2, 0x7c(sp)
    fmadds  f0, f1, f28, f0
    fmuls   f0, f4, f0
    stfs    f0, 0x90(sp)
    lfs     f0, 0x18(r27)
    lfs     f1, 0x18(r26)
    fmuls   f0, f0, f27
    fmadds  f0, f1, f28, f0
    fmuls   f0, f3, f0
    stfs    f0, 0xa0(sp)
    lfs     f0, 0x1c(r27)
    lfs     f1, 0x1c(r26)
    fmuls   f0, f0, f27
    fmadds  f0, f1, f28, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xb0(sp)
    beq-    branch_0x80237754
    cmpwi   r25, 0x0
    bne-    branch_0x80237720
    lfs     f0, 0x84(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x84(sp)
    lfs     f0, 0x88(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x88(sp)
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x94(sp)
    lfs     f0, 0x98(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x98(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xa4(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0xa4(sp)
    lfs     f0, 0xa8(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xac(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0xac(sp)
branch_0x80237720:
    lis     r3, 0x8040
    addi    r26, r3, 0x4788
    addi    r3, r26, 0x0
    addi    r5, r26, 0x0
    addi    r4, sp, 0x84
    bl      PSMTXConcat
    lwz     r3, 0x0(r30)
    mulli   r0, r29, 0x30
    lwz     r4, 0x58(r3)
    addi    r3, r26, 0x0
    add     r4, r4, r0
    bl      PSMTXCopy
    b       branch_0x80237850

branch_0x80237754:
    lis     r3, 0x8040
    addi    r26, r3, 0x4788
    addi    r3, r26, 0x0
    addi    r5, r26, 0x0
    addi    r4, sp, 0x84
    bl      PSMTXConcat
    cmpwi   r25, 0x0
    beq-    branch_0x80237790
    lwz     r3, 0x0(r30)
    mulli   r0, r29, 0x30
    lwz     r4, 0x58(r3)
    addi    r3, r26, 0x0
    add     r4, r4, r0
    bl      PSMTXCopy
    b       branch_0x80237850

branch_0x80237790:
    lfs     f1, 0x0(r26)
    mulli   r0, r29, 0x30
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    addi    r3, sp, 0x84
    stfs    f0, 0x84(sp)
    lfs     f1, 0x4(r26)
    lfs     f0, 0x4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x88(sp)
    lfs     f1, 0x8(r26)
    lfs     f0, 0x8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f0, 0xc(r26)
    stfs    f0, 0x90(sp)
    lfs     f1, 0x10(r26)
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0x14(r26)
    lfs     f0, 0x4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x98(sp)
    lfs     f1, 0x18(r26)
    lfs     f0, 0x8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f0, 0x1c(r26)
    stfs    f0, 0xa0(sp)
    lfs     f1, 0x20(r26)
    lfs     f0, 0x0(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0x24(r26)
    lfs     f0, 0x4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0x28(r26)
    lfs     f0, 0x8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f0, 0x2c(r26)
    stfs    f0, 0xb0(sp)
    lwz     r4, 0x0(r30)
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      PSMTXCopy
branch_0x80237850:
    lmw     r24, 0xb8(sp)
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lfd     f30, 0xf0(sp)
    mtlr    r0
    lfd     f29, 0xe8(sp)
    lfd     f28, 0xe0(sp)
    lfd     f27, 0xd8(sp)
    addi    sp, sp, 0x100
    blr


.globl _100_4_calc__24M3UMtxCalcSIAnmBlendQuatFUs
_100_4_calc__24M3UMtxCalcSIAnmBlendQuatFUs: # 0x80237878
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x64
    b       calc__24M3UMtxCalcSIAnmBlendQuatFUs


.globl _100_4_calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo
_100_4_calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo: # 0x8023788c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x64
    b       calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo


.globl _100_4_recursiveEntry__15J3DMtxCalcBasicFP7J3DNode
_100_4_recursiveEntry__15J3DMtxCalcBasicFP7J3DNode: # 0x802378a0
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x64
    b       recursiveEntry__15J3DMtxCalcBasicFP7J3DNode


.globl _100_4_recursiveCalc__15J3DMtxCalcBasicFP7J3DNode
_100_4_recursiveCalc__15J3DMtxCalcBasicFP7J3DNode: # 0x802378b4
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x64
    b       recursiveCalc__15J3DMtxCalcBasicFP7J3DNode


.globl _100_4_recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode
_100_4_recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode: # 0x802378c8
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x64
    b       recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode


.globl _100_4_init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf
_100_4_init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf: # 0x802378dc
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x64
    b       init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf

