
.globl execShake__12TCameraShakeFRCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
execShake__12TCameraShakeFRCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x8002c1c0
    mflr    r0
    li      r8, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x4
    mtctr   r0
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stw     r31, 0x10c(sp)
    mr      r31, r6
    stw     r30, 0x108(sp)
    mr      r30, r5
    stw     r29, 0x104(sp)
    addi    r29, r4, 0x0
    addi    r4, r8, 0x0
    stw     r28, 0x100(sp)
    addi    r28, r3, 0x0
    addi    r3, r28, 0x4
    lwz     r7, 0x0(r5)
    lwz     r5, 0x4(r5)
    stw     r7, 0xdc(sp)
    stw     r5, 0xe0(sp)
    lwz     r0, 0x8(r30)
    stw     r0, 0xe4(sp)
    sth     r8, 0x0(r28)
branch_0x8002c220:
    lhz     r0, 0x6(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8002c234
    li      r0, 0x1
    b       branch_0x8002c238

branch_0x8002c234:
    li      r0, 0x0
branch_0x8002c238:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c248
    li      r8, 0x1
    b       branch_0x8002c3a0

branch_0x8002c248:
    lhz     r0, 0x36(r3)
    addi    r3, r3, 0x30
    cmplwi  r0, 0x0
    beq-    branch_0x8002c260
    li      r0, 0x1
    b       branch_0x8002c264

branch_0x8002c260:
    li      r0, 0x0
branch_0x8002c264:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c274
    li      r8, 0x1
    b       branch_0x8002c3a0

branch_0x8002c274:
    lhz     r0, 0x36(r3)
    addi    r3, r3, 0x30
    addi    r4, r4, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002c290
    li      r0, 0x1
    b       branch_0x8002c294

branch_0x8002c290:
    li      r0, 0x0
branch_0x8002c294:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c2a4
    li      r8, 0x1
    b       branch_0x8002c3a0

branch_0x8002c2a4:
    lhz     r0, 0x36(r3)
    addi    r3, r3, 0x30
    addi    r4, r4, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002c2c0
    li      r0, 0x1
    b       branch_0x8002c2c4

branch_0x8002c2c0:
    li      r0, 0x0
branch_0x8002c2c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c2d4
    li      r8, 0x1
    b       branch_0x8002c3a0

branch_0x8002c2d4:
    lhz     r0, 0x36(r3)
    addi    r3, r3, 0x30
    addi    r4, r4, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002c2f0
    li      r0, 0x1
    b       branch_0x8002c2f4

branch_0x8002c2f0:
    li      r0, 0x0
branch_0x8002c2f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c304
    li      r8, 0x1
    b       branch_0x8002c3a0

branch_0x8002c304:
    lhz     r0, 0x36(r3)
    addi    r3, r3, 0x30
    addi    r4, r4, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002c320
    li      r0, 0x1
    b       branch_0x8002c324

branch_0x8002c320:
    li      r0, 0x0
branch_0x8002c324:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c334
    li      r8, 0x1
    b       branch_0x8002c3a0

branch_0x8002c334:
    lhz     r0, 0x36(r3)
    addi    r3, r3, 0x30
    addi    r4, r4, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002c350
    li      r0, 0x1
    b       branch_0x8002c354

branch_0x8002c350:
    li      r0, 0x0
branch_0x8002c354:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c364
    li      r8, 0x1
    b       branch_0x8002c3a0

branch_0x8002c364:
    lhz     r0, 0x36(r3)
    addi    r3, r3, 0x30
    addi    r4, r4, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002c380
    li      r0, 0x1
    b       branch_0x8002c384

branch_0x8002c380:
    li      r0, 0x0
branch_0x8002c384:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c394
    li      r8, 0x1
    b       branch_0x8002c3a0

branch_0x8002c394:
    addi    r4, r4, 0x1
    addi    r3, r3, 0x30
    bdnz+      branch_0x8002c220
branch_0x8002c3a0:
    clrlwi. r0, r8, 24
    beq-    branch_0x8002c590
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, sp, 0xd8
    addi    r6, sp, 0xd6
    addi    r7, sp, 0xd4
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    li      r0, 0x20
    lfs     f0, -0x7768(rtoc)
    mtctr   r0
    addi    r5, r28, 0x4
branch_0x8002c3d0:
    lhz     r0, 0x6(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8002c3e4
    li      r0, 0x1
    b       branch_0x8002c3e8

branch_0x8002c3e4:
    li      r0, 0x0
branch_0x8002c3e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c570
    lha     r6, 0x14(r5)
    li      r0, 0x0
    lhz     r3, 0x8(r5)
    lwz     r4, -0x5eac(r13)
    mullw   r6, r6, r3
    lwz     r3, -0x5ea8(r13)
    lfs     f1, 0xc(r5)
    lha     r7, 0xd6(sp)
    lha     r8, 0xd4(sp)
    clrlwi  r6, r6, 16
    sraw    r6, r6, r4
    slwi    r6, r6, 2
    lfsx    f2, r3, r6
    fmuls   f1, f1, f2
    fctiwz  f1, f1
    stfd    f1, 0xf8(sp)
    lwz     r6, 0xfc(sp)
    add     r6, r7, r6
    sth     r6, 0xd6(sp)
    lha     r7, 0x20(r5)
    lhz     r6, 0x8(r5)
    lfs     f2, 0x18(r5)
    mullw   r6, r7, r6
    clrlwi  r6, r6, 16
    sraw    r6, r6, r4
    slwi    r6, r6, 2
    lfsx    f1, r3, r6
    fmuls   f1, f2, f1
    fctiwz  f1, f1
    stfd    f1, 0xf0(sp)
    lwz     r6, 0xf4(sp)
    add     r6, r8, r6
    sth     r6, 0xd4(sp)
    lha     r7, 0x2c(r5)
    lhz     r6, 0x8(r5)
    lfs     f2, 0x24(r5)
    mullw   r6, r7, r6
    lha     r7, 0x0(r28)
    clrlwi  r6, r6, 16
    sraw    r4, r6, r4
    slwi    r4, r4, 2
    lfsx    f1, r3, r4
    fmuls   f1, f2, f1
    fctiwz  f1, f1
    stfd    f1, 0xe8(sp)
    lwz     r3, 0xec(sp)
    add     r3, r7, r3
    sth     r3, 0x0(r28)
    lhz     r3, 0x8(r5)
    addi    r3, r3, 0x1
    sth     r3, 0x8(r5)
    lbz     r3, 0x4(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x8002c4dc
    lhz     r3, 0x6(r5)
    addi    r3, r3, 0x1
    sth     r3, 0x6(r5)
    stb     r0, 0x4(r5)
    b       branch_0x8002c528

branch_0x8002c4dc:
    li      r6, 0x1
    stb     r6, 0x5(r5)
    lfs     f2, 0xc(r5)
    lfs     f1, 0x10(r5)
    fsubs   f1, f2, f1
    stfs    f1, 0xc(r5)
    lfs     f2, 0x18(r5)
    lfs     f1, 0x1c(r5)
    fsubs   f1, f2, f1
    stfs    f1, 0x18(r5)
    lfs     f2, 0x24(r5)
    lfs     f1, 0x28(r5)
    fsubs   f1, f2, f1
    stfs    f1, 0x24(r5)
    lhz     r4, 0x8(r5)
    lhz     r3, 0x6(r5)
    cmplw   r4, r3
    blt-    branch_0x8002c528
    mr      r0, r6
branch_0x8002c528:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002c570
    li      r0, 0x1
    stw     r0, 0x0(r5)
    li      r0, 0x0
    stb     r0, 0x4(r5)
    stb     r0, 0x5(r5)
    sth     r0, 0x8(r5)
    sth     r0, 0x6(r5)
    stfs    f0, 0x10(r5)
    stfs    f0, 0xc(r5)
    sth     r0, 0x14(r5)
    stfs    f0, 0x1c(r5)
    stfs    f0, 0x18(r5)
    sth     r0, 0x20(r5)
    stfs    f0, 0x28(r5)
    stfs    f0, 0x24(r5)
    sth     r0, 0x2c(r5)
branch_0x8002c570:
    addi    r5, r5, 0x30
    bdnz+      branch_0x8002c3d0
    lfs     f1, 0xd8(sp)
    mr      r3, r29
    lha     r5, 0xd6(sp)
    mr      r4, r30
    lha     r6, 0xd4(sp)
    bl      CLBPolarToCross__FRC3VecP3Vecfss
branch_0x8002c590:
    lfs     f1, 0xdc(sp)
    addi    r3, sp, 0xc8
    lfs     f0, 0x0(r29)
    mr      r4, r3
    lfs     f3, 0xe0(sp)
    lfs     f2, 0x4(r29)
    fsubs   f0, f1, f0
    lfs     f1, 0x8(r29)
    lfs     f4, 0xe4(sp)
    fsubs   f2, f3, f2
    stfs    f0, 0xc8(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    lfs     f31, -0x7764(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x7760(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8002c5f4
    lfs     f0, -0x7768(rtoc)
    stfs    f0, 0xd0(sp)
    stfs    f0, 0xcc(sp)
    stfs    f0, 0xc8(sp)
    b       branch_0x8002c608

branch_0x8002c5f4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0xc8
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8002c608:
    lha     r3, 0x0(r28)
    lis     r0, 0x4330
    lfs     f4, -0x775c(rtoc)
    addi    r4, sp, 0xc8
    lfs     f3, -0x7758(rtoc)
    xoris   r3, r3, 0x8000
    lfd     f2, -0x7750(rtoc)
    stw     r3, 0xec(sp)
    addi    r3, sp, 0x90
    lfs     f0, -0x7768(rtoc)
    stw     r0, 0xe8(sp)
    stfs    f0, 0xa4(sp)
    lfd     f1, 0xe8(sp)
    stfs    f0, 0x98(sp)
    fsubs   f1, f1, f2
    stfs    f0, 0xac(sp)
    stfs    f0, 0x94(sp)
    fmuls   f1, f3, f1
    stfs    f0, 0xa8(sp)
    fmuls   f1, f4, f1
    stfs    f0, 0x9c(sp)
    lfs     f0, -0x7764(rtoc)
    fneg    f1, f1
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0x90(sp)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    lfs     f1, 0x90(sp)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0xbc(sp)
    lfs     f4, 0xb8(sp)
    lfs     f0, 0x9c(sp)
    lfs     f2, 0xb4(sp)
    fmuls   f0, f4, f0
    lfs     f5, 0xbc(sp)
    lfs     f3, 0xa8(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x0(r31)
    lfs     f0, 0xa0(sp)
    lfs     f2, 0xb4(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x94(sp)
    lfs     f3, 0xac(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x4(r31)
    lfs     f0, 0xa4(sp)
    lfs     f2, 0xb4(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x98(sp)
    lfs     f3, 0xb0(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x8(r31)
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    lwz     r28, 0x100(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl keepShake__12TCameraShakeF16EnumCamShakeModef
keepShake__12TCameraShakeF16EnumCamShakeModef: # 0x8002c718
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f1
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r4
    add     r4, r3, r0
    lwz     r31, 0x604(r4)
    lha     r30, 0x18(r31)
    clrlwi. r0, r30, 16
    beq-    branch_0x8002c97c
    li      r0, 0x4
    mtctr   r0
    addi    r4, r3, 0x4
    li      r5, 0x0
branch_0x8002c764:
    lwz     r0, 0x0(r4)
    cmpw    r0, r29
    bne-    branch_0x8002c788
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8002c788
    li      r0, 0x1
    stb     r0, 0x4(r4)
    b       branch_0x8002c97c

branch_0x8002c788:
    lwzu    r0, 0x30(r4)
    cmpw    r0, r29
    bne-    branch_0x8002c7ac
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8002c7ac
    li      r0, 0x1
    stb     r0, 0x4(r4)
    b       branch_0x8002c97c

branch_0x8002c7ac:
    lwzu    r0, 0x30(r4)
    addi    r5, r5, 0x1
    cmpw    r0, r29
    bne-    branch_0x8002c7d4
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8002c7d4
    li      r0, 0x1
    stb     r0, 0x4(r4)
    b       branch_0x8002c97c

branch_0x8002c7d4:
    lwzu    r0, 0x30(r4)
    addi    r5, r5, 0x1
    cmpw    r0, r29
    bne-    branch_0x8002c7fc
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8002c7fc
    li      r0, 0x1
    stb     r0, 0x4(r4)
    b       branch_0x8002c97c

branch_0x8002c7fc:
    lwzu    r0, 0x30(r4)
    addi    r5, r5, 0x1
    cmpw    r0, r29
    bne-    branch_0x8002c824
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8002c824
    li      r0, 0x1
    stb     r0, 0x4(r4)
    b       branch_0x8002c97c

branch_0x8002c824:
    lwzu    r0, 0x30(r4)
    addi    r5, r5, 0x1
    cmpw    r0, r29
    bne-    branch_0x8002c84c
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8002c84c
    li      r0, 0x1
    stb     r0, 0x4(r4)
    b       branch_0x8002c97c

branch_0x8002c84c:
    lwzu    r0, 0x30(r4)
    addi    r5, r5, 0x1
    cmpw    r0, r29
    bne-    branch_0x8002c874
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8002c874
    li      r0, 0x1
    stb     r0, 0x4(r4)
    b       branch_0x8002c97c

branch_0x8002c874:
    lwzu    r0, 0x30(r4)
    addi    r5, r5, 0x1
    cmpw    r0, r29
    bne-    branch_0x8002c89c
    lbz     r0, 0x5(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8002c89c
    li      r0, 0x1
    stb     r0, 0x4(r4)
    b       branch_0x8002c97c

branch_0x8002c89c:
    addi    r5, r5, 0x1
    addi    r4, r4, 0x30
    bdnz+      branch_0x8002c764
    bl      getUseShakeData___12TCameraShakeFv
    stw     r29, 0x0(r3)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0x4(r3)
    stb     r0, 0x5(r3)
    sth     r30, 0x6(r3)
    sth     r0, 0x8(r3)
    lfs     f0, -0x7768(rtoc)
    lfs     f3, 0x2c(r31)
    fcmpo   cr0, f31, f0
    lha     r5, 0x40(r31)
    fmuls   f3, f3, f31
    bge-    branch_0x8002c8e8
    fneg    f3, f3
    neg     r5, r5
branch_0x8002c8e8:
    clrlwi  r4, r30, 16
    stfs    f3, 0xc(r3)
    lis     r0, 0x4330
    stw     r4, 0x34(sp)
    lfd     f1, -0x7748(rtoc)
    stw     r0, 0x30(sp)
    lfs     f2, -0x7764(rtoc)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fdivs   f2, f2, f0
    fmuls   f0, f3, f2
    stfs    f0, 0x10(r3)
    sth     r5, 0x14(r3)
    lfs     f0, -0x7768(rtoc)
    lfs     f1, 0x54(r31)
    fcmpo   cr0, f31, f0
    lha     r0, 0x68(r31)
    fmuls   f1, f1, f31
    bge-    branch_0x8002c93c
    fneg    f1, f1
    neg     r0, r0
branch_0x8002c93c:
    fmuls   f0, f1, f2
    stfs    f1, 0x18(r3)
    stfs    f0, 0x1c(r3)
    sth     r0, 0x20(r3)
    lfs     f0, -0x7768(rtoc)
    lfs     f1, 0x7c(r31)
    fcmpo   cr0, f31, f0
    lha     r0, 0x90(r31)
    fmuls   f1, f1, f31
    bge-    branch_0x8002c96c
    fneg    f1, f1
    neg     r0, r0
branch_0x8002c96c:
    fmuls   f0, f1, f2
    stfs    f1, 0x24(r3)
    stfs    f0, 0x28(r3)
    sth     r0, 0x2c(r3)
branch_0x8002c97c:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl startShake__12TCameraShakeF16EnumCamShakeModef
startShake__12TCameraShakeF16EnumCamShakeModef: # 0x8002c99c
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f1
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r4
    add     r4, r3, r0
    lwz     r31, 0x604(r4)
    lha     r30, 0x18(r31)
    clrlwi. r0, r30, 16
    beq-    branch_0x8002caa8
    bl      getUseShakeData___12TCameraShakeFv
    stw     r29, 0x0(r3)
    li      r0, 0x0
    stb     r0, 0x4(r3)
    stb     r0, 0x5(r3)
    sth     r30, 0x6(r3)
    sth     r0, 0x8(r3)
    lfs     f0, -0x7768(rtoc)
    lfs     f3, 0x2c(r31)
    fcmpo   cr0, f31, f0
    lha     r5, 0x40(r31)
    fmuls   f3, f3, f31
    bge-    branch_0x8002ca14
    fneg    f3, f3
    neg     r5, r5
branch_0x8002ca14:
    clrlwi  r4, r30, 16
    stfs    f3, 0xc(r3)
    lis     r0, 0x4330
    stw     r4, 0x34(sp)
    lfd     f1, -0x7748(rtoc)
    stw     r0, 0x30(sp)
    lfs     f2, -0x7764(rtoc)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fdivs   f2, f2, f0
    fmuls   f0, f3, f2
    stfs    f0, 0x10(r3)
    sth     r5, 0x14(r3)
    lfs     f0, -0x7768(rtoc)
    lfs     f1, 0x54(r31)
    fcmpo   cr0, f31, f0
    lha     r0, 0x68(r31)
    fmuls   f1, f1, f31
    bge-    branch_0x8002ca68
    fneg    f1, f1
    neg     r0, r0
branch_0x8002ca68:
    fmuls   f0, f1, f2
    stfs    f1, 0x18(r3)
    stfs    f0, 0x1c(r3)
    sth     r0, 0x20(r3)
    lfs     f0, -0x7768(rtoc)
    lfs     f1, 0x7c(r31)
    fcmpo   cr0, f31, f0
    lha     r0, 0x90(r31)
    fmuls   f1, f1, f31
    bge-    branch_0x8002ca98
    fneg    f1, f1
    neg     r0, r0
branch_0x8002ca98:
    fmuls   f0, f1, f2
    stfs    f1, 0x24(r3)
    stfs    f0, 0x28(r3)
    sth     r0, 0x2c(r3)
branch_0x8002caa8:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl getUseShakeData___12TCameraShakeFv
getUseShakeData___12TCameraShakeFv: # 0x8002cac8
    li      r0, 0x4
    mtctr   r0
    li      r6, 0x0
    li      r4, 0x0
branch_0x8002cad8:
    add     r5, r3, r4
    lhz     r0, 0xa(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8002caf0
    li      r0, 0x1
    b       branch_0x8002caf4

branch_0x8002caf0:
    li      r0, 0x0
branch_0x8002caf4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002cb04
    addi    r3, r5, 0x4
    blr

branch_0x8002cb04:
    addi    r4, r4, 0x30
    add     r5, r3, r4
    lhz     r0, 0xa(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8002cb20
    li      r0, 0x1
    b       branch_0x8002cb24

branch_0x8002cb20:
    li      r0, 0x0
branch_0x8002cb24:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002cb34
    addi    r3, r5, 0x4
    blr

branch_0x8002cb34:
    addi    r4, r4, 0x30
    add     r5, r3, r4
    lhz     r0, 0xa(r5)
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002cb54
    li      r0, 0x1
    b       branch_0x8002cb58

branch_0x8002cb54:
    li      r0, 0x0
branch_0x8002cb58:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002cb68
    addi    r3, r5, 0x4
    blr

branch_0x8002cb68:
    addi    r4, r4, 0x30
    add     r5, r3, r4
    lhz     r0, 0xa(r5)
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002cb88
    li      r0, 0x1
    b       branch_0x8002cb8c

branch_0x8002cb88:
    li      r0, 0x0
branch_0x8002cb8c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002cb9c
    addi    r3, r5, 0x4
    blr

branch_0x8002cb9c:
    addi    r4, r4, 0x30
    add     r5, r3, r4
    lhz     r0, 0xa(r5)
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002cbbc
    li      r0, 0x1
    b       branch_0x8002cbc0

branch_0x8002cbbc:
    li      r0, 0x0
branch_0x8002cbc0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002cbd0
    addi    r3, r5, 0x4
    blr

branch_0x8002cbd0:
    addi    r4, r4, 0x30
    add     r5, r3, r4
    lhz     r0, 0xa(r5)
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002cbf0
    li      r0, 0x1
    b       branch_0x8002cbf4

branch_0x8002cbf0:
    li      r0, 0x0
branch_0x8002cbf4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002cc04
    addi    r3, r5, 0x4
    blr

branch_0x8002cc04:
    addi    r4, r4, 0x30
    add     r5, r3, r4
    lhz     r0, 0xa(r5)
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002cc24
    li      r0, 0x1
    b       branch_0x8002cc28

branch_0x8002cc24:
    li      r0, 0x0
branch_0x8002cc28:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002cc38
    addi    r3, r5, 0x4
    blr

branch_0x8002cc38:
    addi    r4, r4, 0x30
    add     r5, r3, r4
    lhz     r0, 0xa(r5)
    addi    r6, r6, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002cc58
    li      r0, 0x1
    b       branch_0x8002cc5c

branch_0x8002cc58:
    li      r0, 0x0
branch_0x8002cc5c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002cc6c
    addi    r3, r5, 0x4
    blr

branch_0x8002cc6c:
    addi    r6, r6, 0x1
    addi    r4, r4, 0x30
    bdnz+      branch_0x8002cad8
    li      r0, 0x8
    lis     r4, 0x1
    mtctr   r0
    addi    r9, r3, 0x4
    subi    r10, r4, 0x1
    li      r8, 0x0
    li      r4, 0x0
branch_0x8002cc94:
    add     r7, r3, r4
    lbz     r0, 0x9(r7)
    cmplwi  r0, 0x0
    beq-    branch_0x8002ccc8
    lhz     r6, 0xc(r7)
    clrlwi  r0, r10, 16
    lhz     r5, 0xa(r7)
    subf    r5, r6, r5
    clrlwi  r5, r5, 16
    cmplw   r5, r0
    bge-    branch_0x8002ccc8
    addi    r10, r5, 0x0
    addi    r9, r7, 0x4
branch_0x8002ccc8:
    addi    r4, r4, 0x30
    add     r7, r3, r4
    lbz     r0, 0x9(r7)
    cmplwi  r0, 0x0
    beq-    branch_0x8002cd00
    lhz     r6, 0xc(r7)
    clrlwi  r0, r10, 16
    lhz     r5, 0xa(r7)
    subf    r5, r6, r5
    clrlwi  r5, r5, 16
    cmplw   r5, r0
    bge-    branch_0x8002cd00
    addi    r10, r5, 0x0
    addi    r9, r7, 0x4
branch_0x8002cd00:
    addi    r4, r4, 0x30
    add     r7, r3, r4
    lbz     r0, 0x9(r7)
    addi    r8, r8, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002cd3c
    lhz     r6, 0xc(r7)
    clrlwi  r0, r10, 16
    lhz     r5, 0xa(r7)
    subf    r5, r6, r5
    clrlwi  r5, r5, 16
    cmplw   r5, r0
    bge-    branch_0x8002cd3c
    addi    r10, r5, 0x0
    addi    r9, r7, 0x4
branch_0x8002cd3c:
    addi    r4, r4, 0x30
    add     r7, r3, r4
    lbz     r0, 0x9(r7)
    addi    r8, r8, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8002cd78
    lhz     r6, 0xc(r7)
    clrlwi  r0, r10, 16
    lhz     r5, 0xa(r7)
    subf    r5, r6, r5
    clrlwi  r5, r5, 16
    cmplw   r5, r0
    bge-    branch_0x8002cd78
    addi    r10, r5, 0x0
    addi    r9, r7, 0x4
branch_0x8002cd78:
    addi    r8, r8, 0x1
    addi    r4, r4, 0x30
    bdnz+      branch_0x8002cc94
    mr      r3, r9
    blr


.globl __ct__12TCameraShakeFv
__ct__12TCameraShakeFv: # 0x8002cd8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r28, r3, 0x0
    li      r30, 0x0
    lis     r3, 0x803b
    subi    r31, r3, 0x2750
    li      r29, 0x0
    sth     r30, 0x0(r28)
branch_0x8002cdb4:
    li      r3, 0x94
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8002cdd4
    add     r3, r31, r30
    lwz     r4, 0x0(r3)
    mr      r3, r27
    bl      __ct__13TCamSaveShakeFPCc
branch_0x8002cdd4:
    addi    r29, r29, 0x1
    addi    r0, r30, 0x604
    cmpwi   r29, 0x29
    stwx    r27, r28, r0
    addi    r30, r30, 0x4
    blt+    branch_0x8002cdb4
    li      r0, 0x8
    lfs     f0, -0x7768(rtoc)
    mtctr   r0
    li      r3, 0x0
branch_0x8002cdfc:
    add     r5, r28, r3
    li      r4, 0x1
    stw     r4, 0x4(r5)
    li      r0, 0x0
    addi    r3, r3, 0x30
    stb     r0, 0x8(r5)
    stb     r0, 0x9(r5)
    sth     r0, 0xc(r5)
    sth     r0, 0xa(r5)
    stfs    f0, 0x14(r5)
    stfs    f0, 0x10(r5)
    sth     r0, 0x18(r5)
    stfs    f0, 0x20(r5)
    stfs    f0, 0x1c(r5)
    sth     r0, 0x24(r5)
    stfs    f0, 0x2c(r5)
    stfs    f0, 0x28(r5)
    sth     r0, 0x30(r5)
    add     r5, r28, r3
    addi    r3, r3, 0x30
    stw     r4, 0x4(r5)
    stb     r0, 0x8(r5)
    stb     r0, 0x9(r5)
    sth     r0, 0xc(r5)
    sth     r0, 0xa(r5)
    stfs    f0, 0x14(r5)
    stfs    f0, 0x10(r5)
    sth     r0, 0x18(r5)
    stfs    f0, 0x20(r5)
    stfs    f0, 0x1c(r5)
    sth     r0, 0x24(r5)
    stfs    f0, 0x2c(r5)
    stfs    f0, 0x28(r5)
    sth     r0, 0x30(r5)
    add     r5, r28, r3
    addi    r3, r3, 0x30
    stw     r4, 0x4(r5)
    stb     r0, 0x8(r5)
    stb     r0, 0x9(r5)
    sth     r0, 0xc(r5)
    sth     r0, 0xa(r5)
    stfs    f0, 0x14(r5)
    stfs    f0, 0x10(r5)
    sth     r0, 0x18(r5)
    stfs    f0, 0x20(r5)
    stfs    f0, 0x1c(r5)
    sth     r0, 0x24(r5)
    stfs    f0, 0x2c(r5)
    stfs    f0, 0x28(r5)
    sth     r0, 0x30(r5)
    add     r5, r28, r3
    addi    r3, r3, 0x30
    stw     r4, 0x4(r5)
    stb     r0, 0x8(r5)
    stb     r0, 0x9(r5)
    sth     r0, 0xc(r5)
    sth     r0, 0xa(r5)
    stfs    f0, 0x14(r5)
    stfs    f0, 0x10(r5)
    sth     r0, 0x18(r5)
    stfs    f0, 0x20(r5)
    stfs    f0, 0x1c(r5)
    sth     r0, 0x24(r5)
    stfs    f0, 0x2c(r5)
    stfs    f0, 0x28(r5)
    sth     r0, 0x30(r5)
    bdnz+      branch_0x8002cdfc
    mr      r3, r28
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

