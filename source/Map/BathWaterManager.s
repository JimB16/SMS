
.globl __dt__17TBathWaterManagerFv
__dt__17TBathWaterManagerFv: # 0x801a6c68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801a6cf8
    lis     r3, 0x803c
    addi    r3, r3, 0x2788
    addic.  r0, r30, 0x34
    stw     r3, 0x0(r30)
    beq-    branch_0x801a6cc8
    lis     r3, 0x803c
    addi    r3, r3, 0x288c
    addic.  r0, r30, 0x34
    stw     r3, 0x34(r30)
    beq-    branch_0x801a6cc8
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x34(r30)
    addi    r3, r30, 0x34
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801a6cc8:
    cmplwi  r30, 0x0
    beq-    branch_0x801a6ce8
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801a6ce8:
    extsh.  r0, r31
    ble-    branch_0x801a6cf8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801a6cf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__17TBathWaterManagerFUlPQ26JDrama9TGraphics
perform__17TBathWaterManagerFUlPQ26JDrama9TGraphics: # 0x801a6d14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x418(sp)
    stfd    f31, 0x410(sp)
    stfd    f30, 0x408(sp)
    stfd    f29, 0x400(sp)
    stfd    f28, 0x3f8(sp)
    stfd    f27, 0x3f0(sp)
    stfd    f26, 0x3e8(sp)
    stfd    f25, 0x3e0(sp)
    stfd    f24, 0x3d8(sp)
    stfd    f23, 0x3d0(sp)
    stfd    f22, 0x3c8(sp)
    stfd    f21, 0x3c0(sp)
    stfd    f20, 0x3b8(sp)
    stfd    f19, 0x3b0(sp)
    stfd    f18, 0x3a8(sp)
    stfd    f17, 0x3a0(sp)
    stfd    f16, 0x398(sp)
    stmw    r17, 0x35c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a6d88
    mr      r3, r27
    bl      initializeIfYet___17TBathWaterManagerFv
    b       branch_0x801a8010

branch_0x801a6d88:
    clrlwi. r0, r28, 31
    beq-    branch_0x801a7fdc
    lwz     r3, 0x18(r27)
    lbz     r0, 0x180(r3)
    slwi    r0, r0, 2
    add     r3, r27, r0
    lwz     r0, 0x28(r3)
    stw     r0, 0x30(r27)
    lbz     r3, 0x1c(r27)
    addi    r0, r3, 0x1
    stb     r0, 0x1c(r27)
    clrlwi. r0, r0, 30
    bne-    branch_0x801a7bb4
    lis     r3, 0x6666
    lfs     f22, -0x3f5c(rtoc)
    lfs     f31, -0x3f60(rtoc)
    addi    r25, r3, 0x6667
    lfs     f25, -0x3f54(rtoc)
    li      r30, 0x0
    lfs     f26, -0x3f58(rtoc)
    lfs     f23, -0x3f50(rtoc)
    li      r26, 0x0
    lfs     f24, -0x3f4c(rtoc)
    lis     r24, 0x4330
    lfd     f21, -0x3f30(rtoc)
    lfs     f27, -0x3f48(rtoc)
branch_0x801a6df0:
    lwz     r4, 0x20(r27)
    addi    r3, sp, 0x300
    lwz     r5, 0x24(r27)
    lwzx    r19, r4, r26
    addi    r31, r5, 0x170
    lwz     r6, 0x8c(r19)
    mr      r4, r31
    lfs     f16, 0x108(r6)
    lfs     f1, 0x16c(r6)
    bl      getGravityDir__12TBathtubDataCFf
    fneg    f3, f16
    lfs     f2, 0x300(sp)
    lfs     f1, 0x304(sp)
    li      r0, 0x0
    lfs     f0, 0x308(sp)
    fmuls   f2, f2, f3
    stfs    f31, 0x2cc(sp)
    fmuls   f1, f1, f3
    stfs    f3, 0x2d0(sp)
    fmuls   f0, f0, f3
    stfs    f2, 0x2c0(sp)
    stfs    f1, 0x2c4(sp)
    stfs    f0, 0x2c8(sp)
    stfs    f31, 0x2d4(sp)
    lwz     r3, 0x8c(r19)
    lwz     r4, 0x74(r19)
    lwz     r5, 0x88(r19)
    lfs     f19, 0x90(r3)
    mulli   r3, r4, 0x50
    stw     r0, 0x2f0(sp)
    add     r20, r5, r3
    stfs    f31, 0x2fc(sp)
    stfs    f31, 0x2f8(sp)
    stfs    f31, 0x2f4(sp)
    lfs     f0, 0x28(r31)
    fcmpo   cr0, f0, f31
    ble-    branch_0x801a6f1c
    lwz     r17, 0x88(r19)
    b       branch_0x801a6f10

branch_0x801a6e8c:
    lfs     f2, 0x0(r17)
    fmr     f1, f19
    lfs     f0, 0xc(r17)
    addi    r3, r17, 0x0
    addi    r4, r31, 0x0
    fadds   f0, f2, f0
    addi    r5, sp, 0x2c0
    addi    r6, sp, 0x2cc
    stfs    f0, 0x0(r17)
    addi    r7, sp, 0x2f0
    addi    r8, sp, 0x2f4
    lfs     f2, 0x4(r17)
    lfs     f0, 0x10(r17)
    fadds   f0, f2, f0
    stfs    f0, 0x4(r17)
    lfs     f2, 0x8(r17)
    lfs     f0, 0x14(r17)
    fadds   f0, f2, f0
    stfs    f0, 0x8(r17)
    stfs    f31, 0x20(r17)
    stfs    f31, 0x1c(r17)
    stfs    f31, 0x18(r17)
    stfs    f31, 0x2c(r17)
    stfs    f31, 0x28(r17)
    stfs    f31, 0x24(r17)
    stfs    f31, 0x38(r17)
    stfs    f31, 0x34(r17)
    stfs    f31, 0x30(r17)
    stfs    f31, 0x44(r17)
    stfs    f31, 0x40(r17)
    stfs    f31, 0x3c(r17)
    bl      calcBathtub__Q210TBathWater5TDropFRC12TBathtubDatafRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RiRQ29JGeometry8TVec3_f_
    addi    r17, r17, 0x50
branch_0x801a6f10:
    cmplw   r17, r20
    blt+    branch_0x801a6e8c
    b       branch_0x801a6fe8

branch_0x801a6f1c:
    lwz     r17, 0x88(r19)
    b       branch_0x801a6fe0

branch_0x801a6f24:
    lfs     f1, 0x0(r17)
    addi    r18, r17, 0x30
    lfs     f0, 0xc(r17)
    addi    r3, r18, 0x0
    addi    r4, sp, 0x2cc
    fadds   f0, f1, f0
    stfs    f0, 0x0(r17)
    lfs     f1, 0x4(r17)
    lfs     f0, 0x10(r17)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r17)
    lfs     f1, 0x8(r17)
    lfs     f0, 0x14(r17)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r17)
    stfs    f31, 0x20(r17)
    stfs    f31, 0x1c(r17)
    stfs    f31, 0x18(r17)
    stfs    f31, 0x2c(r17)
    stfs    f31, 0x28(r17)
    stfs    f31, 0x24(r17)
    stfs    f31, 0x38(r17)
    stfs    f31, 0x34(r17)
    stfs    f31, 0x30(r17)
    stfs    f31, 0x44(r17)
    stfs    f31, 0x40(r17)
    stfs    f31, 0x3c(r17)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r18, 0xc
    addi    r4, sp, 0x2cc
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f1, 0x2f4(sp)
    lfs     f0, 0x0(r17)
    fadds   f0, f1, f0
    stfs    f0, 0x2f4(sp)
    lfs     f1, 0x2f8(sp)
    lfs     f0, 0x4(r17)
    fadds   f0, f1, f0
    stfs    f0, 0x2f8(sp)
    lfs     f0, 0x8(r17)
    addi    r17, r17, 0x50
    lfs     f1, 0x2fc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x2fc(sp)
    lwz     r3, 0x2f0(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x2f0(sp)
branch_0x801a6fe0:
    cmplw   r17, r20
    blt+    branch_0x801a6f24
branch_0x801a6fe8:
    lwz     r4, 0x2f0(sp)
    lwz     r0, 0x74(r19)
    mulli   r3, r4, 0x1e
    lfs     f0, -0x3f60(rtoc)
    cmpw    r3, r0
    ble-    branch_0x801a70a8
    xoris   r0, r4, 0x8000
    lfs     f2, 0x2f4(sp)
    stw     r0, 0x354(sp)
    stw     r24, 0x350(sp)
    lfd     f1, 0x350(sp)
    stw     r0, 0x34c(sp)
    fsubs   f1, f1, f21
    stw     r24, 0x348(sp)
    fdivs   f3, f22, f1
    lfd     f1, 0x348(sp)
    fmuls   f2, f2, f3
    fsubs   f1, f1, f21
    stfs    f2, 0x2f4(sp)
    fmuls   f2, f26, f1
    lfs     f1, 0x2f8(sp)
    fmuls   f1, f1, f3
    stfs    f1, 0x2f8(sp)
    lfs     f1, 0x2fc(sp)
    fmuls   f1, f1, f3
    stfs    f1, 0x2fc(sp)
    lwz     r0, 0x74(r19)
    xoris   r0, r0, 0x8000
    stw     r0, 0x344(sp)
    stw     r24, 0x340(sp)
    lfd     f1, 0x340(sp)
    fsubs   f1, f1, f21
    fdivs   f2, f2, f1
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x801a707c
    b       branch_0x801a7098

branch_0x801a707c:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f25, f1
    fnmsubs  f0, f2, f0, f26
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x801a7098:
    fcmpo   cr0, f2, f22
    fmr     f0, f2
    ble-    branch_0x801a70a8
    fmr     f0, f22
branch_0x801a70a8:
    lfs     f1, 0x2f4(sp)
    stfs    f1, 0x78(r19)
    lfs     f1, 0x2f8(sp)
    stfs    f1, 0x7c(r19)
    lfs     f1, 0x2fc(sp)
    stfs    f1, 0x80(r19)
    stfs    f0, 0x84(r19)
    lwz     r3, 0x8c(r19)
    lbz     r0, 0x40(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a731c
    fmuls   f0, f19, f19
    lwz     r22, 0x88(r19)
    fmuls   f17, f24, f19
    fmuls   f18, f23, f0
    b       branch_0x801a7314

branch_0x801a70e8:
    lwz     r3, 0x8c(r19)
    addi    r23, r22, 0x18
    addi    r17, r22, 0x30
    lbz     r0, 0x40(r3)
    mulli   r0, r0, 0x50
    add     r21, r22, r0
branch_0x801a7100:
    lfs     f1, 0x0(r21)
    lfs     f0, 0x0(r22)
    fsubs   f0, f1, f0
    stfs    f0, 0x2d8(sp)
    lfs     f1, 0x4(r21)
    lfs     f0, 0x4(r22)
    fsubs   f0, f1, f0
    stfs    f0, 0x2dc(sp)
    lfs     f1, 0x8(r21)
    lfs     f0, 0x8(r22)
    fsubs   f0, f1, f0
    stfs    f0, 0x2e0(sp)
    lfs     f1, 0x2d8(sp)
    lfs     f0, 0x2dc(sp)
    lfs     f2, 0x2e0(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f2, f2, f0
    fcmpo   cr0, f2, f18
    bgt-    branch_0x801a72f8
    fcmpo   cr0, f2, f31
    cror    2, 0, 2
    bne-    branch_0x801a7168
    b       branch_0x801a7184

branch_0x801a7168:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f25, f1
    fnmsubs  f0, f2, f0, f26
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x801a7184:
    fdivs   f1, f22, f2
    lfs     f0, 0x2d8(sp)
    addi    r18, r21, 0x18
    addi    r3, r18, 0x0
    addi    r4, sp, 0x2d8
    fmuls   f0, f0, f1
    fsubs   f20, f17, f2
    stfs    f0, 0x2e4(sp)
    fmuls   f16, f25, f20
    lfs     f0, 0x2dc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x2e8(sp)
    lfs     f0, 0x2e0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x2ec(sp)
    lfs     f0, 0x2e4(sp)
    fmuls   f2, f0, f16
    stfs    f2, 0x2d8(sp)
    lfs     f3, 0x2e8(sp)
    fmuls   f1, f3, f16
    fadds   f0, f22, f3
    stfs    f1, 0x2dc(sp)
    lfs     f1, 0x2ec(sp)
    fmuls   f1, f1, f16
    fmuls   f16, f16, f3
    stfs    f1, 0x2e0(sp)
    fmuls   f0, f0, f16
    stfs    f2, 0x2d8(sp)
    stfs    f1, 0x2e0(sp)
    stfs    f0, 0x2dc(sp)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r18, 0xc
    addi    r4, sp, 0x2d8
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x2d8(sp)
    addi    r3, r23, 0x0
    addi    r4, sp, 0x2d8
    fneg    f0, f0
    stfs    f0, 0x2d8(sp)
    lfs     f0, 0x2e0(sp)
    fneg    f0, f0
    stfs    f0, 0x2e0(sp)
    lfs     f0, 0x2e8(sp)
    fsubs   f0, f0, f22
    fmuls   f0, f0, f16
    stfs    f0, 0x2dc(sp)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r23, 0xc
    addi    r4, sp, 0x2d8
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    fcmpo   cr0, f16, f20
    bge-    branch_0x801a7258
    fmr     f16, f20
branch_0x801a7258:
    lwz     r4, 0x8c(r19)
    addi    r18, r21, 0x30
    lfs     f1, 0x2e4(sp)
    mr      r3, r18
    lfs     f0, 0x130(r4)
    addi    r4, sp, 0x2e4
    fmuls   f0, f16, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x2e4(sp)
    lwz     r5, 0x8c(r19)
    lfs     f1, 0x2e8(sp)
    lfs     f0, 0x11c(r5)
    fmuls   f0, f16, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x2e8(sp)
    lwz     r5, 0x8c(r19)
    lfs     f1, 0x2ec(sp)
    lfs     f0, 0x130(r5)
    fmuls   f0, f16, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x2ec(sp)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r18, 0xc
    addi    r4, sp, 0x2e4
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x2e4(sp)
    addi    r3, r17, 0x0
    addi    r4, sp, 0x2e4
    fneg    f0, f0
    stfs    f0, 0x2e4(sp)
    lfs     f0, 0x2e8(sp)
    fneg    f0, f0
    stfs    f0, 0x2e8(sp)
    lfs     f0, 0x2ec(sp)
    fneg    f0, f0
    stfs    f0, 0x2ec(sp)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r17, 0xc
    addi    r4, sp, 0x2e4
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
branch_0x801a72f8:
    lwz     r3, 0x8c(r19)
    lbz     r0, 0x40(r3)
    mulli   r0, r0, 0x50
    add     r21, r21, r0
    cmplw   r21, r20
    blt+    branch_0x801a7100
    addi    r22, r22, 0x50
branch_0x801a7314:
    cmplw   r22, r20
    blt+    branch_0x801a70e8
branch_0x801a731c:
    lbz     r0, 0x65(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x3c(r31)
    cmplwi  r0, 0x0
    fsubs   f20, f1, f0
    beq-    branch_0x801a7338
    fnmsubs  f20, f27, f0, f1
branch_0x801a7338:
    lwz     r22, 0x88(r19)
    li      r21, 0x0
    b       branch_0x801a7690

branch_0x801a7344:
    lfs     f0, 0x4(r22)
    fcmpo   cr0, f0, f20
    bge-    branch_0x801a75a0
    lwz     r3, 0x8c(r19)
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a73fc
    lbz     r0, 0x65(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801a73fc
    addi    r3, r19, 0x68
    bl      get_ufloat_1__Q25JMath13TRandom_fast_Fv
    fmuls   f16, f22, f1
    mr      r5, r21
    fmr     f1, f19
    lwz     r6, 0x70(r19)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x30c
    addi    r21, r21, 0x1
    bl      getPos__12TBathtubDataCFiif
    fadds   f0, f31, f16
    li      r0, 0x0
    stfs    f0, 0x48(r22)
    lfs     f0, 0x30c(sp)
    stfs    f0, 0x0(r22)
    lfs     f0, 0x310(sp)
    stfs    f0, 0x4(r22)
    lfs     f0, 0x314(sp)
    stfs    f0, 0x8(r22)
    stfs    f31, 0x14(r22)
    stfs    f31, 0x10(r22)
    stfs    f31, 0xc(r22)
    stfs    f31, 0x20(r22)
    stfs    f31, 0x1c(r22)
    stfs    f31, 0x18(r22)
    stfs    f31, 0x2c(r22)
    stfs    f31, 0x28(r22)
    stfs    f31, 0x24(r22)
    stfs    f31, 0x38(r22)
    stfs    f31, 0x34(r22)
    stfs    f31, 0x30(r22)
    stfs    f31, 0x44(r22)
    stfs    f31, 0x40(r22)
    stfs    f31, 0x3c(r22)
    stw     r0, 0x4c(r22)
    b       branch_0x801a768c

branch_0x801a73fc:
    lwz     r0, 0x88(r19)
    lwz     r3, 0x74(r19)
    subf    r0, r0, r22
    mulhw   r0, r25, r0
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r4, r0, r4
    cmpw    r4, r3
    bge-    branch_0x801a74a0
    subi    r0, r3, 0x1
    stw     r0, 0x74(r19)
    lwz     r0, 0x74(r19)
    cmpw    r4, r0
    bge-    branch_0x801a7498
    mulli   r0, r0, 0x50
    lwz     r3, 0x88(r19)
    add     r17, r3, r0
    lwz     r5, 0x0(r17)
    addi    r3, r22, 0x18
    lwz     r0, 0x4(r17)
    addi    r4, r17, 0x18
    stw     r5, 0x0(r22)
    stw     r0, 0x4(r22)
    lwz     r0, 0x8(r17)
    stw     r0, 0x8(r22)
    lwz     r5, 0xc(r17)
    lwz     r0, 0x10(r17)
    stw     r5, 0xc(r22)
    stw     r0, 0x10(r22)
    lwz     r0, 0x14(r17)
    stw     r0, 0x14(r22)
    bl      __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
    addi    r3, r22, 0x30
    addi    r4, r17, 0x30
    bl      __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
    lfs     f0, 0x48(r17)
    stfs    f0, 0x48(r22)
    lwz     r0, 0x4c(r17)
    stw     r0, 0x4c(r22)
branch_0x801a7498:
    li      r0, 0x1
    b       branch_0x801a74a4

branch_0x801a74a0:
    li      r0, 0x0
branch_0x801a74a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a768c
    lfs     f1, 0x0(r22)
    subi    r20, r20, 0x50
    lfs     f0, 0x18(r22)
    lwz     r3, 0x8c(r19)
    fadds   f1, f1, f0
    lfs     f0, 0x144(r3)
    stfs    f1, 0x0(r22)
    lfs     f2, 0x4(r22)
    lfs     f1, 0x1c(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x4(r22)
    lfs     f2, 0x8(r22)
    lfs     f1, 0x20(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x8(r22)
    lfs     f2, 0x0(r22)
    lfs     f1, 0x24(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x0(r22)
    lfs     f2, 0x4(r22)
    lfs     f1, 0x28(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x4(r22)
    lfs     f2, 0x8(r22)
    lfs     f1, 0x2c(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x8(r22)
    lfs     f1, 0xc(r22)
    fmuls   f1, f1, f0
    stfs    f1, 0xc(r22)
    lfs     f1, 0x10(r22)
    fmuls   f1, f1, f0
    stfs    f1, 0x10(r22)
    lfs     f1, 0x14(r22)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r22)
    lfs     f1, 0xc(r22)
    lfs     f0, 0x30(r22)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r22)
    lfs     f1, 0x10(r22)
    lfs     f0, 0x34(r22)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r22)
    lfs     f1, 0x14(r22)
    lfs     f0, 0x38(r22)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r22)
    lfs     f1, 0xc(r22)
    lfs     f0, 0x3c(r22)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r22)
    lfs     f1, 0x10(r22)
    lfs     f0, 0x40(r22)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r22)
    lfs     f1, 0x14(r22)
    lfs     f0, 0x44(r22)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r22)
    b       branch_0x801a768c

branch_0x801a75a0:
    lfs     f1, 0x0(r22)
    lfs     f0, 0x18(r22)
    lwz     r3, 0x8c(r19)
    fadds   f1, f1, f0
    lfs     f0, 0x144(r3)
    stfs    f1, 0x0(r22)
    lfs     f2, 0x4(r22)
    lfs     f1, 0x1c(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x4(r22)
    lfs     f2, 0x8(r22)
    lfs     f1, 0x20(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x8(r22)
    lfs     f2, 0x0(r22)
    lfs     f1, 0x24(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x0(r22)
    lfs     f2, 0x4(r22)
    lfs     f1, 0x28(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x4(r22)
    lfs     f2, 0x8(r22)
    lfs     f1, 0x2c(r22)
    fadds   f1, f2, f1
    stfs    f1, 0x8(r22)
    lfs     f1, 0xc(r22)
    fmuls   f1, f1, f0
    stfs    f1, 0xc(r22)
    lfs     f1, 0x10(r22)
    fmuls   f1, f1, f0
    stfs    f1, 0x10(r22)
    lfs     f1, 0x14(r22)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r22)
    lfs     f1, 0xc(r22)
    lfs     f0, 0x30(r22)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r22)
    lfs     f1, 0x10(r22)
    lfs     f0, 0x34(r22)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r22)
    lfs     f1, 0x14(r22)
    lfs     f0, 0x38(r22)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r22)
    lfs     f1, 0xc(r22)
    lfs     f0, 0x3c(r22)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r22)
    lfs     f1, 0x10(r22)
    lfs     f0, 0x40(r22)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r22)
    lfs     f1, 0x14(r22)
    lfs     f0, 0x44(r22)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r22)
branch_0x801a768c:
    addi    r22, r22, 0x50
branch_0x801a7690:
    cmplw   r22, r20
    blt+    branch_0x801a7344
    lwz     r3, 0x8c(r19)
    lwz     r22, 0x194(r3)
    cmpwi   r22, 0x0
    ble-    branch_0x801a7770
    lwz     r23, 0x88(r19)
    b       branch_0x801a7768

branch_0x801a76b0:
    lwz     r3, 0x4c(r23)
    addi    r0, r3, 0x1
    cmpw    r0, r22
    stw     r0, 0x4c(r23)
    ble-    branch_0x801a7760
    lwz     r0, 0x88(r19)
    lwz     r3, 0x74(r19)
    subf    r0, r0, r23
    mulhw   r0, r25, r0
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r4, r0, r4
    cmpw    r4, r3
    bge-    branch_0x801a7760
    subi    r0, r3, 0x1
    stw     r0, 0x74(r19)
    lwz     r0, 0x74(r19)
    cmpw    r4, r0
    bge-    branch_0x801a7760
    mulli   r0, r0, 0x50
    lwz     r3, 0x88(r19)
    add     r17, r3, r0
    lwz     r5, 0x0(r17)
    addi    r3, r23, 0x18
    lwz     r0, 0x4(r17)
    addi    r4, r17, 0x18
    stw     r5, 0x0(r23)
    stw     r0, 0x4(r23)
    lwz     r0, 0x8(r17)
    stw     r0, 0x8(r23)
    lwz     r5, 0xc(r17)
    lwz     r0, 0x10(r17)
    stw     r5, 0xc(r23)
    stw     r0, 0x10(r23)
    lwz     r0, 0x14(r17)
    stw     r0, 0x14(r23)
    bl      __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
    addi    r3, r23, 0x30
    addi    r4, r17, 0x30
    bl      __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
    lfs     f0, 0x48(r17)
    stfs    f0, 0x48(r23)
    lwz     r0, 0x4c(r17)
    stw     r0, 0x4c(r23)
branch_0x801a7760:
    subi    r20, r20, 0x50
    addi    r23, r23, 0x50
branch_0x801a7768:
    cmplw   r23, r20
    blt+    branch_0x801a76b0
branch_0x801a7770:
    lwz     r3, 0x8c(r19)
    lwz     r5, 0x74(r19)
    lwz     r0, 0x7c(r3)
    cmpw    r5, r0
    bge-    branch_0x801a7840
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a7848
    lbz     r0, 0x65(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801a7848
    addi    r3, r19, 0x68
    bl      get_ufloat_1__Q25JMath13TRandom_fast_Fv
    fmuls   f16, f22, f1
    lwz     r6, 0x70(r19)
    fmr     f1, f19
    mr      r5, r21
    addi    r4, r31, 0x0
    addi    r3, sp, 0x318
    bl      getPos__12TBathtubDataCFiif
    lwz     r4, 0x74(r19)
    fadds   f0, f31, f16
    lwz     r5, 0x88(r19)
    li      r0, 0x0
    mulli   r3, r4, 0x50
    addi    r4, r4, 0x1
    stw     r4, 0x74(r19)
    add     r3, r5, r3
    stfs    f0, 0x48(r3)
    lfs     f0, 0x318(sp)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x31c(sp)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x320(sp)
    stfs    f0, 0x8(r3)
    stfs    f31, 0x14(r3)
    stfs    f31, 0x10(r3)
    stfs    f31, 0xc(r3)
    stfs    f31, 0x20(r3)
    stfs    f31, 0x1c(r3)
    stfs    f31, 0x18(r3)
    stfs    f31, 0x2c(r3)
    stfs    f31, 0x28(r3)
    stfs    f31, 0x24(r3)
    stfs    f31, 0x38(r3)
    stfs    f31, 0x34(r3)
    stfs    f31, 0x30(r3)
    stfs    f31, 0x44(r3)
    stfs    f31, 0x40(r3)
    stfs    f31, 0x3c(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x801a7848

branch_0x801a7840:
    ble-    branch_0x801a7848
    stw     r0, 0x74(r19)
branch_0x801a7848:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x2
    addi    r26, r26, 0x4
    blt+    branch_0x801a6df0
    lwz     r3, 0x24(r27)
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a7bb4
    lfs     f16, -0x3f4c(rtoc)
    li      r17, 0x0
    li      r18, 0x0
branch_0x801a7874:
    lwz     r3, -0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x801a788c
    li      r0, 0x1
    b       branch_0x801a7890

branch_0x801a788c:
    li      r0, 0x0
branch_0x801a7890:
    clrlwi. r0, r0, 24
    bne-    branch_0x801a79f4
    lwz     r3, 0x14(r27)
    lwzx    r3, r3, r18
    lbz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a79f4
    bl      SMS_GetMarioHitActor__Fv
    lwz     r4, 0x20(r27)
    mr      r20, r3
    lfs     f1, 0x58(r3)
    li      r0, 0x50
    lwzx    r19, r4, r18
    lfs     f4, 0x10(r20)
    lwz     r3, 0x74(r19)
    lwz     r5, 0x8c(r19)
    mulli   r3, r3, 0x50
    lwz     r21, 0x88(r19)
    lfs     f2, 0xb8(r5)
    lfs     f0, 0x90(r5)
    add     r4, r21, r3
    addi    r3, r4, 0x4f
    fmuls   f2, f0, f2
    subf    r3, r21, r3
    lfs     f0, 0x5c(r20)
    divwu   r3, r3, r0
    lfs     f3, 0x14(r20)
    fadds   f1, f2, f1
    fadds   f5, f0, f2
    fneg    f6, f2
    cmplw   r21, r4
    fmuls   f7, f1, f1
    mtctr   r3
    lfs     f2, 0x18(r20)
    bge-    branch_0x801a79d4
branch_0x801a791c:
    lfs     f0, 0x4(r21)
    fsubs   f0, f0, f3
    fcmpo   cr0, f0, f5
    bgt-    branch_0x801a79cc
    fcmpo   cr0, f0, f6
    blt-    branch_0x801a79cc
    lfs     f0, 0x8(r21)
    lfs     f1, 0x0(r21)
    fsubs   f0, f2, f0
    fsubs   f1, f4, f1
    fmuls   f0, f0, f0
    fmadds  f0, f1, f1, f0
    fcmpo   cr0, f0, f7
    bge-    branch_0x801a79cc
    lfs     f0, 0x90(r5)
    mr      r3, r19
    stfs    f0, 0x50(r19)
    bl      calcEntryRadius__9THitActorFv
    lwz     r4, 0x8c(r19)
    mr      r3, r19
    lfs     f0, 0x90(r4)
    fmuls   f0, f0, f16
    stfs    f0, 0x50(r19)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0x0(r21)
    addi    r3, r20, 0x0
    addi    r4, r19, 0x0
    stfs    f0, 0x10(r19)
    li      r5, 0xa
    lfs     f0, 0x4(r21)
    stfs    f0, 0x14(r19)
    lfs     f0, 0x8(r21)
    stfs    f0, 0x18(r19)
    lwz     r6, 0x8c(r19)
    lfs     f1, 0x14(r19)
    lfs     f0, 0x90(r6)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r19)
    lwz     r12, 0x0(r20)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    b       branch_0x801a79d8

branch_0x801a79cc:
    addi    r21, r21, 0x50
    bdnz+      branch_0x801a791c
branch_0x801a79d4:
    li      r0, 0x0
branch_0x801a79d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a79f4
    lwz     r4, 0x14(r27)
    mr      r3, r27
    lwzx    r4, r4, r18
    lfs     f1, 0x158(r4)
    bl      throwMario__17TBathWaterManagerFf
branch_0x801a79f4:
    addi    r17, r17, 0x1
    cmpwi   r17, 0x2
    addi    r18, r18, 0x4
    blt+    branch_0x801a7874
    lwz     r3, -0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x801a7a1c
    li      r0, 0x1
    b       branch_0x801a7a20

branch_0x801a7a1c:
    li      r0, 0x0
branch_0x801a7a20:
    clrlwi. r0, r0, 24
    bne-    branch_0x801a7bb4
    lwz     r3, 0x24(r27)
    addi    r19, r3, 0x170
    bl      SMS_GetMarioHitActor__Fv
    lfs     f1, 0x4(r19)
    mr      r18, r3
    lfs     f0, 0x44(r19)
    lwz     r3, 0x20(r27)
    fsubs   f2, f1, f0
    lfs     f3, 0x8(r19)
    lwz     r17, 0x0(r3)
    addi    r3, sp, 0x290
    lfs     f1, 0x0(r19)
    lfs     f20, 0x10(r18)
    lfs     f16, 0x14(r18)
    lfs     f19, 0x18(r18)
    lfs     f21, 0x5c(r18)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lfs     f0, 0x3c(r19)
    lfs     f1, 0x44(r19)
    fmuls   f2, f0, f0
    lfs     f0, -0x3f60(rtoc)
    fmuls   f1, f1, f1
    fsubs   f4, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x801a7a94
    b       branch_0x801a7ab8

branch_0x801a7a94:
    frsqrte f3, f4
    lfs     f2, -0x3f54(rtoc)
    lfs     f0, -0x3f58(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801a7ab8:
    lfs     f3, 0x294(sp)
    fcmpo   cr0, f3, f16
    bge-    branch_0x801a7acc
    li      r0, 0x0
    b       branch_0x801a7b98

branch_0x801a7acc:
    lfs     f2, 0x3c(r19)
    fadds   f1, f16, f21
    lfs     f0, 0x44(r19)
    fsubs   f17, f2, f0
    fsubs   f0, f3, f17
    fcmpo   cr0, f1, f0
    bge-    branch_0x801a7af0
    li      r0, 0x0
    b       branch_0x801a7b98

branch_0x801a7af0:
    lfs     f1, 0x298(sp)
    fmuls   f0, f4, f4
    lfs     f2, 0x290(sp)
    fsubs   f1, f19, f1
    fsubs   f2, f20, f2
    fmuls   f1, f1, f1
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801a7b20
    li      r0, 0x0
    b       branch_0x801a7b98

branch_0x801a7b20:
    stfs    f4, 0x50(r17)
    mr      r3, r17
    bl      calcEntryRadius__9THitActorFv
    lfs     f1, 0x4(r19)
    addi    r3, sp, 0x29c
    lfs     f0, 0x44(r19)
    lfs     f3, 0x8(r19)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r19)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lfs     f0, 0x29c(sp)
    mr      r3, r17
    stfs    f0, 0x10(r17)
    lfs     f0, 0x2a0(sp)
    stfs    f0, 0x14(r17)
    lfs     f0, 0x2a4(sp)
    stfs    f0, 0x18(r17)
    lfs     f0, 0x14(r17)
    fsubs   f0, f0, f17
    stfs    f0, 0x14(r17)
    stfs    f17, 0x54(r17)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r18
    lwz     r12, 0x0(r18)
    addi    r4, r17, 0x0
    li      r5, 0xa
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
branch_0x801a7b98:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a7bb4
    lwz     r4, 0x14(r27)
    mr      r3, r27
    lwz     r4, 0x0(r4)
    lfs     f1, 0x158(r4)
    bl      throwMario__17TBathWaterManagerFf
branch_0x801a7bb4:
    lbz     r0, 0x1c(r27)
    clrlwi  r0, r0, 29
    cmpwi   r0, 0x4
    bne-    branch_0x801a7f68
    lwz     r3, 0x24(r27)
    lbz     r0, 0x1d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a7f68
    lis     r3, 0x19
    lwz     r4, 0x10(r27)
    addi    r0, r3, 0x660d
    mullw   r3, r4, r0
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x10(r27)
    lwz     r0, 0x10(r27)
    lfs     f0, -0x3f5c(rtoc)
    srwi    r0, r0, 9
    lfs     f3, -0x3f44(rtoc)
    oris    r0, r0, 0x3f80
    lfs     f2, -0x3f4c(rtoc)
    stw     r0, 0x144(sp)
    lfs     f4, -0x3f60(rtoc)
    lwz     r4, 0x14(r27)
    lwz     r3, 0x24(r27)
    lwz     r4, 0x4(r4)
    lfs     f1, 0x144(sp)
    addi    r17, r3, 0x170
    lfs     f31, 0x90(r4)
    fsubs   f1, f1, f0
    lfs     f5, 0x19c(r3)
    lfs     f0, 0x194(r3)
    stfs    f0, 0x21c(sp)
    fmuls   f0, f2, f1
    stfs    f4, 0x220(sp)
    fadds   f19, f3, f0
    stfs    f5, 0x224(sp)
    lfs     f1, 0x21c(sp)
    lfs     f3, 0x224(sp)
    lfs     f0, 0x220(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x3f40(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801a7c80
    li      r0, 0x0
    b       branch_0x801a7e64

branch_0x801a7c80:
    fcmpo   cr0, f1, f4
    cror    2, 0, 2
    addi    r3, sp, 0x21c
    lfs     f16, -0x3f5c(rtoc)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x3f40(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801a7cbc
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x238(sp)
    stfs    f0, 0x234(sp)
    stfs    f0, 0x230(sp)
    b       branch_0x801a7cd0

branch_0x801a7cbc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f16, f1
    addi    r3, sp, 0x230
    addi    r4, sp, 0x21c
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801a7cd0:
    lfs     f1, -0x3f60(rtoc)
    addi    r3, sp, 0x248
    lfs     f2, -0x3f5c(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lfs     f3, 0x238(sp)
    addi    r3, sp, 0x23c
    lfs     f6, 0x24c(sp)
    mr      r4, r3
    lfs     f2, 0x250(sp)
    lfs     f7, 0x230(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x234(sp)
    fmuls   f1, f7, f2
    lfs     f4, 0x248(sp)
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x23c(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x240(sp)
    stfs    f0, 0x244(sp)
    lfs     f16, -0x3f5c(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x3f40(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801a7d54
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x244(sp)
    stfs    f0, 0x240(sp)
    stfs    f0, 0x23c(sp)
    b       branch_0x801a7d68

branch_0x801a7d54:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f16, f1
    addi    r3, sp, 0x23c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801a7d68:
    lfs     f0, -0x3f3c(rtoc)
    addi    r3, sp, 0x230
    lfs     f1, 0x23c(sp)
    mr      r4, r3
    fmuls   f2, f0, f19
    lfs     f0, 0x230(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x230(sp)
    lfs     f1, 0x240(sp)
    lfs     f0, 0x234(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x234(sp)
    lfs     f1, 0x244(sp)
    lfs     f0, 0x238(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x238(sp)
    lfs     f0, 0x3c(r17)
    lfs     f1, -0x3f38(rtoc)
    fsubs   f0, f0, f31
    fmuls   f16, f1, f0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x3f40(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801a7de0
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x238(sp)
    stfs    f0, 0x234(sp)
    stfs    f0, 0x230(sp)
    b       branch_0x801a7df4

branch_0x801a7de0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f16, f1
    addi    r3, sp, 0x230
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801a7df4:
    lfs     f1, -0x3f60(rtoc)
    addi    r3, sp, 0x254
    lfs     f2, -0x3f5c(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lfs     f1, 0x4(r17)
    addi    r3, sp, 0x260
    lfs     f0, 0x44(r17)
    lfs     f8, 0x254(sp)
    fsubs   f2, f1, f0
    lfs     f7, 0x230(sp)
    lfs     f6, 0x258(sp)
    lfs     f5, 0x234(sp)
    fmadds  f30, f8, f31, f7
    lfs     f4, 0x25c(sp)
    fmadds  f29, f6, f31, f5
    lfs     f0, 0x238(sp)
    lfs     f3, 0x8(r17)
    fmadds  f28, f4, f31, f0
    lfs     f1, 0x0(r17)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lfs     f2, 0x260(sp)
    li      r0, 0x1
    lfs     f1, 0x264(sp)
    lfs     f0, 0x268(sp)
    fadds   f30, f30, f2
    fadds   f29, f29, f1
    fadds   f28, f28, f0
branch_0x801a7e64:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a7f68
    addi    r3, r27, 0x10
    bl      get__Q25JMath13TRandom_fast_Fv
    srwi    r0, r3, 9
    lfs     f0, -0x3f5c(rtoc)
    oris    r0, r0, 0x3f80
    lfs     f2, -0x3f34(rtoc)
    stw     r0, 0x130(sp)
    lfs     f3, -0x3f60(rtoc)
    lfs     f1, 0x130(sp)
    lwz     r3, 0x20(r27)
    fsubs   f0, f1, f0
    lwz     r19, 0x4(r3)
    lwz     r3, 0x8c(r19)
    fmuls   f0, f2, f0
    lwz     r4, 0x74(r19)
    lwz     r0, 0x7c(r3)
    fadds   f16, f3, f0
    cmpw    r4, r0
    bge-    branch_0x801a7f68
    addi    r3, r19, 0x68
    bl      get_ufloat_1__Q25JMath13TRandom_fast_Fv
    lfs     f0, -0x3f5c(rtoc)
    lis     r3, 0x8039
    lwz     r0, 0x74(r19)
    subi    r3, r3, 0x583c
    fmuls   f0, f0, f1
    lfs     f1, -0x3f60(rtoc)
    mulli   r0, r0, 0x50
    lwz     r4, 0x88(r19)
    crxor   6, 6, 6
    fadds   f0, f1, f0
    add     r5, r4, r0
    li      r0, 0x0
    li      r4, 0x28f
    stfs    f0, 0x48(r5)
    stfs    f30, 0x0(r5)
    stfs    f29, 0x4(r5)
    stfs    f28, 0x8(r5)
    stfs    f1, 0x14(r5)
    stfs    f1, 0x10(r5)
    stfs    f1, 0xc(r5)
    stfs    f1, 0x20(r5)
    stfs    f1, 0x1c(r5)
    stfs    f1, 0x18(r5)
    stfs    f1, 0x2c(r5)
    stfs    f1, 0x28(r5)
    stfs    f1, 0x24(r5)
    stfs    f1, 0x38(r5)
    stfs    f1, 0x34(r5)
    stfs    f1, 0x30(r5)
    stfs    f1, 0x44(r5)
    stfs    f1, 0x40(r5)
    stfs    f1, 0x3c(r5)
    stw     r0, 0x4c(r5)
    lwz     r0, 0x74(r19)
    lwz     r5, 0x88(r19)
    mulli   r0, r0, 0x50
    add     r5, r5, r0
    stfs    f16, 0x10(r5)
    lwz     r5, 0x74(r19)
    addi    r0, r5, 0x1
    stw     r0, 0x74(r19)
    bl      OSReport
branch_0x801a7f68:
    lwz     r3, 0x20(r27)
    lfs     f0, -0x3f60(rtoc)
    lwz     r3, 0x0(r3)
    lfs     f1, 0x78(r3)
    stfs    f1, 0x328(sp)
    lfs     f1, 0x7c(r3)
    stfs    f1, 0x32c(sp)
    lfs     f1, 0x80(r3)
    stfs    f1, 0x330(sp)
    lfs     f1, 0x84(r3)
    fcmpo   cr0, f1, f0
    fmr     f16, f1
    ble-    branch_0x801a7fdc
    lis     r17, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r17, 0x7e63
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a7fdc
    fmr     f1, f16
    subi    r3, r17, 0x7e63
    addi    r4, sp, 0x328
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801a7fdc:
    rlwinm. r0, r28, 0, 28, 28
    beq-    branch_0x801a8010
    lwz     r3, 0x30(r27)
    mr      r4, r29
    lwz     r5, 0x24(r27)
    li      r8, 0x2
    lwz     r12, 0x0(r3)
    lwz     r6, 0x20(r27)
    addi    r5, r5, 0x170
    lwz     r12, 0xc(r12)
    lwz     r7, 0x14(r27)
    mtlr    r12
    blrl
branch_0x801a8010:
    lmw     r17, 0x35c(sp)
    lwz     r0, 0x41c(sp)
    lfd     f31, 0x410(sp)
    lfd     f30, 0x408(sp)
    mtlr    r0
    lfd     f29, 0x400(sp)
    lfd     f28, 0x3f8(sp)
    lfd     f27, 0x3f0(sp)
    lfd     f26, 0x3e8(sp)
    lfd     f25, 0x3e0(sp)
    lfd     f24, 0x3d8(sp)
    lfd     f23, 0x3d0(sp)
    lfd     f22, 0x3c8(sp)
    lfd     f21, 0x3c0(sp)
    lfd     f20, 0x3b8(sp)
    lfd     f19, 0x3b0(sp)
    lfd     f18, 0x3a8(sp)
    lfd     f17, 0x3a0(sp)
    lfd     f16, 0x398(sp)
    addi    sp, sp, 0x418
    blr


.globl get__Q25JMath13TRandom_fast_Fv
get__Q25JMath13TRandom_fast_Fv: # 0x801a8064
    lis     r4, 0x19
    lwz     r5, 0x0(r3)
    addi    r0, r4, 0x660d
    mullw   r4, r5, r0
    addis   r4, r4, 0x3c6f
    subi    r0, r4, 0xca1
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r3)
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
set_f___Q29JGeometry8TVec3_f_Ffff_801a8088: # 0x801a8088
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
__as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__: # 0x801a8098
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r3)
    lwz     r5, 0xc(r4)
    lwz     r0, 0x10(r4)
    stw     r5, 0xc(r3)
    stw     r0, 0x10(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0x14(r3)
    blr


.globl getPos__12TBathtubDataCFiif
getPos__12TBathtubDataCFiif: # 0x801a80cc
    mflr    r0
    xoris   r7, r5, 0x8000
    stw     r0, 0x4(sp)
    xoris   r0, r6, 0x8000
    lis     r5, 0x4330
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    fmr     f30, f1
    stfd    f29, 0x58(sp)
    stfd    f28, 0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    stw     r30, 0x48(sp)
    mr      r30, r3
    stw     r0, 0x34(sp)
    lfd     f3, -0x3f30(rtoc)
    stw     r7, 0x3c(sp)
    lfs     f0, 0x3c(r4)
    stw     r5, 0x38(sp)
    lwz     r3, 0x0(r4)
    fsubs   f0, f0, f30
    stw     r5, 0x30(sp)
    lfd     f2, 0x38(sp)
    lfd     f1, 0x30(sp)
    fsubs   f2, f2, f3
    stw     r7, 0x44(sp)
    fsubs   f1, f1, f3
    lwz     r0, 0x4(r4)
    stw     r5, 0x40(sp)
    fdivs   f31, f2, f1
    lfd     f2, 0x40(sp)
    stw     r3, 0x24(sp)
    lfs     f1, -0x3f28(rtoc)
    stw     r0, 0x28(sp)
    fsubs   f2, f2, f3
    lwz     r0, 0x8(r4)
    fmuls   f28, f31, f0
    stw     r0, 0x2c(sp)
    fmuls   f29, f2, f1
    fmr     f1, f29
    bl      sinf
    fmuls   f3, f28, f1
    lfs     f2, 0x18(r31)
    lfs     f0, 0x24(sp)
    fmr     f1, f29
    fmadds  f0, f2, f3, f0
    stfs    f0, 0x24(sp)
    lfs     f2, 0x1c(r31)
    lfs     f0, 0x28(sp)
    fmadds  f0, f2, f3, f0
    stfs    f0, 0x28(sp)
    lfs     f2, 0x20(r31)
    lfs     f0, 0x2c(sp)
    fmadds  f0, f2, f3, f0
    stfs    f0, 0x2c(sp)
    bl      cosf
    fmuls   f2, f28, f1
    lfs     f1, 0x30(r31)
    lfs     f0, 0x24(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x34(r31)
    lfs     f0, 0x28(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x38(r31)
    lfs     f0, 0x2c(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x2c(sp)
    lfs     f0, 0x44(r31)
    lfs     f3, -0x3f5c(rtoc)
    fsubs   f2, f0, f30
    lfs     f1, 0x24(r31)
    fsubs   f3, f3, f31
    lfs     f0, 0x24(sp)
    fneg    f2, f2
    fmuls   f2, f3, f2
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x28(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(r31)
    lfs     f0, 0x2c(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x2c(sp)
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x8(r30)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    lfd     f29, 0x58(sp)
    lfd     f28, 0x50(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl get_ufloat_1__Q25JMath13TRandom_fast_Fv
get_ufloat_1__Q25JMath13TRandom_fast_Fv: # 0x801a826c
    stwu    sp, -0x18(sp)
    lis     r4, 0x19
    addi    r0, r4, 0x660d
    lwz     r5, 0x0(r3)
    mullw   r4, r5, r0
    addis   r4, r4, 0x3c6f
    subi    r0, r4, 0xca1
    stw     r0, 0x0(r3)
    lwz     r0, 0x0(r3)
    lfs     f0, -0x3f5c(rtoc)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x14(sp)
    lfs     f1, 0x14(sp)
    addi    sp, sp, 0x18
    fsubs   f1, f1, f0
    blr


.globl setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_: # 0x801a82b0
    lfs     f0, 0x0(r3)
    lfs     f1, 0x0(r4)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a82c8
    stfs    f1, 0x0(r3)
branch_0x801a82c8:
    lfs     f0, 0x4(r3)
    lfs     f1, 0x4(r4)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a82e0
    stfs    f1, 0x4(r3)
branch_0x801a82e0:
    lfs     f0, 0x8(r3)
    lfs     f1, 0x8(r4)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bnelr-    

    stfs    f1, 0x8(r3)
    blr


.globl setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_: # 0x801a82fc
    lfs     f0, 0x0(r3)
    lfs     f1, 0x0(r4)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a8314
    stfs    f1, 0x0(r3)
branch_0x801a8314:
    lfs     f0, 0x4(r3)
    lfs     f1, 0x4(r4)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a832c
    stfs    f1, 0x4(r3)
branch_0x801a832c:
    lfs     f0, 0x8(r3)
    lfs     f1, 0x8(r4)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bnelr-    

    stfs    f1, 0x8(r3)
    blr


.globl calcBathtub__Q210TBathWater5TDropFRC12TBathtubDatafRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RiRQ29JGeometry8TVec3_f_
calcBathtub__Q210TBathWater5TDropFRC12TBathtubDatafRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RiRQ29JGeometry8TVec3_f_: # 0x801a8348
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    stfd    f27, 0x80(sp)
    stfd    f26, 0x78(sp)
    stfd    f25, 0x70(sp)
    fmr     f25, f1
    stw     r31, 0x6c(sp)
    mr      r31, r6
    stw     r30, 0x68(sp)
    mr      r30, r3
    lfs     f5, 0x4(r4)
    lfs     f6, 0x4(r3)
    lfs     f0, 0x40(r4)
    fsubs   f30, f6, f5
    lfs     f2, 0x0(r3)
    lfs     f1, 0x0(r4)
    fadds   f4, f0, f25
    lfs     f3, 0x3c(r4)
    fsubs   f31, f2, f1
    lfs     f2, 0x8(r3)
    fmuls   f0, f30, f30
    lfs     f1, 0x8(r4)
    lfs     f8, 0x28(r4)
    fsubs   f29, f2, f1
    lfs     f7, 0x24(r4)
    fmadds  f0, f31, f31, f0
    lfs     f9, 0x2c(r4)
    fmuls   f2, f8, f30
    fmadds  f1, f29, f29, f0
    fmuls   f4, f4, f4
    fsubs   f10, f3, f25
    fmadds  f0, f7, f31, f2
    fcmpo   cr0, f1, f4
    fmuls   f11, f10, f10
    fmadds  f3, f9, f29, f0
    cror    2, 0, 2
    bne-    branch_0x801a87f8
    lfs     f2, -0x3f60(rtoc)
    fcmpo   cr0, f3, f2
    bge-    branch_0x801a8728
    fcmpo   cr0, f1, f11
    cror    2, 1, 2
    bne-    branch_0x801a85a4
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x801a8418
    b       branch_0x801a843c

branch_0x801a8418:
    frsqrte f4, f1
    lfs     f3, -0x3f54(rtoc)
    lfs     f0, -0x3f58(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f1, f1, f0
branch_0x801a843c:
    lfs     f2, -0x3f44(rtoc)
    fsubs   f3, f1, f10
    lfs     f0, 0x18(r30)
    fdivs   f1, f2, f1
    fmuls   f4, f31, f1
    fmuls   f5, f30, f1
    fmuls   f6, f29, f1
    fmuls   f1, f4, f3
    fmuls   f2, f5, f3
    fmuls   f3, f6, f3
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a8474
    stfs    f1, 0x18(r30)
branch_0x801a8474:
    lfs     f0, 0x1c(r30)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x801a8488
    stfs    f2, 0x1c(r30)
branch_0x801a8488:
    lfs     f0, 0x20(r30)
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x801a849c
    stfs    f3, 0x20(r30)
branch_0x801a849c:
    lfs     f0, 0x24(r30)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a84b0
    stfs    f1, 0x24(r30)
branch_0x801a84b0:
    lfs     f0, 0x28(r30)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x801a84c4
    stfs    f2, 0x28(r30)
branch_0x801a84c4:
    lfs     f0, 0x2c(r30)
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x801a84d8
    stfs    f3, 0x2c(r30)
branch_0x801a84d8:
    lfs     f0, 0x10(r30)
    lfs     f2, 0xc(r30)
    fmuls   f1, f5, f0
    lfs     f3, 0x14(r30)
    lfs     f0, -0x3f60(rtoc)
    fmadds  f1, f4, f2, f1
    fmadds  f1, f6, f3, f1
    fneg    f3, f1
    fcmpo   cr0, f3, f0
    bge-    branch_0x801a8504
    fmr     f3, f0
branch_0x801a8504:
    fmuls   f4, f4, f3
    lfs     f1, 0x58(r4)
    lfs     f0, 0x30(r30)
    fmuls   f5, f5, f3
    lfs     f2, 0x5c(r4)
    fadds   f4, f4, f1
    lfs     f1, 0x60(r4)
    fmuls   f3, f6, f3
    fadds   f5, f5, f2
    fcmpo   cr0, f0, f4
    fadds   f3, f3, f1
    cror    2, 1, 2
    bne-    branch_0x801a853c
    stfs    f4, 0x30(r30)
branch_0x801a853c:
    lfs     f0, 0x34(r30)
    fcmpo   cr0, f0, f5
    cror    2, 1, 2
    bne-    branch_0x801a8550
    stfs    f5, 0x34(r30)
branch_0x801a8550:
    lfs     f0, 0x38(r30)
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x801a8564
    stfs    f3, 0x38(r30)
branch_0x801a8564:
    lfs     f0, 0x3c(r30)
    fcmpo   cr0, f0, f4
    cror    2, 0, 2
    bne-    branch_0x801a8578
    stfs    f4, 0x3c(r30)
branch_0x801a8578:
    lfs     f0, 0x40(r30)
    fcmpo   cr0, f0, f5
    cror    2, 0, 2
    bne-    branch_0x801a858c
    stfs    f5, 0x40(r30)
branch_0x801a858c:
    lfs     f0, 0x44(r30)
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x801a8764
    stfs    f3, 0x44(r30)
    b       branch_0x801a8764

branch_0x801a85a4:
    lfs     f0, 0x44(r4)
    fsubs   f0, f5, f0
    fadds   f1, f25, f0
    fcmpo   cr0, f6, f1
    bge-    branch_0x801a86e8
    lfs     f0, 0x18(r30)
    fsubs   f3, f1, f6
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x801a85d0
    stfs    f2, 0x18(r30)
branch_0x801a85d0:
    lfs     f0, 0x1c(r30)
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x801a85e4
    stfs    f3, 0x1c(r30)
branch_0x801a85e4:
    lfs     f1, 0x20(r30)
    lfs     f0, -0x3f60(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801a85fc
    stfs    f0, 0x20(r30)
branch_0x801a85fc:
    lfs     f1, 0x24(r30)
    lfs     f0, -0x3f60(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801a8614
    stfs    f0, 0x24(r30)
branch_0x801a8614:
    lfs     f0, 0x28(r30)
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x801a8628
    stfs    f3, 0x28(r30)
branch_0x801a8628:
    lfs     f1, 0x2c(r30)
    lfs     f0, -0x3f60(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801a8640
    stfs    f0, 0x2c(r30)
branch_0x801a8640:
    lfs     f4, -0x3f60(rtoc)
    lfs     f0, 0x58(r4)
    fmr     f5, f4
    lfs     f1, 0x60(r4)
    fadds   f4, f4, f0
    lfs     f0, 0x30(r30)
    lfs     f3, -0x3f44(rtoc)
    lfs     f2, 0x10(r30)
    fcmpo   cr0, f0, f4
    lfs     f0, 0x5c(r4)
    fadds   f5, f5, f1
    fmuls   f1, f3, f2
    fadds   f1, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801a8680
    stfs    f4, 0x30(r30)
branch_0x801a8680:
    lfs     f0, 0x34(r30)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a8694
    stfs    f1, 0x34(r30)
branch_0x801a8694:
    lfs     f0, 0x38(r30)
    fcmpo   cr0, f0, f5
    cror    2, 1, 2
    bne-    branch_0x801a86a8
    stfs    f5, 0x38(r30)
branch_0x801a86a8:
    lfs     f0, 0x3c(r30)
    fcmpo   cr0, f0, f4
    cror    2, 0, 2
    bne-    branch_0x801a86bc
    stfs    f4, 0x3c(r30)
branch_0x801a86bc:
    lfs     f0, 0x40(r30)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a86d0
    stfs    f1, 0x40(r30)
branch_0x801a86d0:
    lfs     f0, 0x44(r30)
    fcmpo   cr0, f0, f5
    cror    2, 0, 2
    bne-    branch_0x801a8764
    stfs    f5, 0x44(r30)
    b       branch_0x801a8764

branch_0x801a86e8:
    lwz     r3, 0x0(r7)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r7)
    lfs     f1, 0x0(r8)
    lfs     f0, 0x0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r8)
    lfs     f1, 0x4(r8)
    lfs     f0, 0x4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r8)
    lfs     f1, 0x8(r8)
    lfs     f0, 0x8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r8)
    b       branch_0x801a8764

branch_0x801a8728:
    lwz     r3, 0x0(r7)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r7)
    lfs     f1, 0x0(r8)
    lfs     f0, 0x0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r8)
    lfs     f1, 0x4(r8)
    lfs     f0, 0x4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r8)
    lfs     f1, 0x8(r8)
    lfs     f0, 0x8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r8)
branch_0x801a8764:
    lfs     f0, 0x30(r30)
    lfs     f1, 0x0(r5)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a877c
    stfs    f1, 0x30(r30)
branch_0x801a877c:
    lfs     f0, 0x34(r30)
    lfs     f1, 0x4(r5)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a8794
    stfs    f1, 0x34(r30)
branch_0x801a8794:
    lfs     f0, 0x38(r30)
    lfs     f1, 0x8(r5)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a87ac
    stfs    f1, 0x38(r30)
branch_0x801a87ac:
    lfs     f0, 0x3c(r30)
    lfs     f1, 0x0(r5)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a87c4
    stfs    f1, 0x3c(r30)
branch_0x801a87c4:
    lfs     f0, 0x40(r30)
    lfs     f1, 0x4(r5)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a87dc
    stfs    f1, 0x40(r30)
branch_0x801a87dc:
    lfs     f0, 0x44(r30)
    lfs     f1, 0x8(r5)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a8b08
    stfs    f1, 0x44(r30)
    b       branch_0x801a8b08

branch_0x801a87f8:
    lfs     f0, -0x3f60(rtoc)
    fcmpo   cr0, f3, f0
    ble-    branch_0x801a8a3c
    lfs     f0, 0x48(r4)
    fadds   f0, f25, f0
    fcmpo   cr0, f3, f0
    bge-    branch_0x801a8a3c
    fcmpo   cr0, f1, f11
    ble-    branch_0x801a8a3c
    fcmpo   cr0, f1, f4
    bge-    branch_0x801a8a3c
    fsubs   f2, f0, f3
    lfs     f0, 0x18(r30)
    fmuls   f4, f7, f2
    fmuls   f3, f8, f2
    fmuls   f2, f9, f2
    fcmpo   cr0, f0, f4
    cror    2, 1, 2
    bne-    branch_0x801a8848
    stfs    f4, 0x18(r30)
branch_0x801a8848:
    lfs     f0, 0x1c(r30)
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x801a885c
    stfs    f3, 0x1c(r30)
branch_0x801a885c:
    lfs     f0, 0x20(r30)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x801a8870
    stfs    f2, 0x20(r30)
branch_0x801a8870:
    lfs     f0, 0x24(r30)
    fcmpo   cr0, f0, f4
    cror    2, 0, 2
    bne-    branch_0x801a8884
    stfs    f4, 0x24(r30)
branch_0x801a8884:
    lfs     f0, 0x28(r30)
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x801a8898
    stfs    f3, 0x28(r30)
branch_0x801a8898:
    lfs     f0, 0x2c(r30)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x801a88ac
    stfs    f2, 0x2c(r30)
branch_0x801a88ac:
    lfs     f5, 0x28(r4)
    lfs     f2, 0x10(r30)
    lfs     f0, -0x3f40(rtoc)
    fmuls   f2, f5, f2
    lfs     f4, 0x24(r4)
    lfs     f3, 0xc(r30)
    fcmpo   cr0, f1, f0
    lfs     f6, 0x2c(r4)
    fmadds  f0, f4, f3, f2
    lfs     f2, 0x14(r30)
    lfs     f3, -0x3f24(rtoc)
    cror    2, 0, 2
    fmadds  f0, f6, f2, f0
    fneg    f0, f0
    fmuls   f0, f3, f0
    fmuls   f28, f4, f0
    fmuls   f27, f5, f0
    fmuls   f26, f6, f0
    bne-    branch_0x801a8908
    lfs     f3, -0x3f60(rtoc)
    fmr     f2, f3
    fmr     f1, f2
    b       branch_0x801a8924

branch_0x801a8908:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x3f20(rtoc)
    fmuls   f0, f0, f25
    fmuls   f0, f0, f1
    fmuls   f1, f31, f0
    fmuls   f2, f30, f0
    fmuls   f3, f29, f0
branch_0x801a8924:
    fadds   f28, f28, f1
    lfs     f0, 0x30(r30)
    fadds   f27, f27, f2
    fadds   f26, f26, f3
    fcmpo   cr0, f0, f28
    cror    2, 1, 2
    bne-    branch_0x801a8944
    stfs    f28, 0x30(r30)
branch_0x801a8944:
    lfs     f0, 0x34(r30)
    fcmpo   cr0, f0, f27
    cror    2, 1, 2
    bne-    branch_0x801a8958
    stfs    f27, 0x34(r30)
branch_0x801a8958:
    lfs     f0, 0x38(r30)
    fcmpo   cr0, f0, f26
    cror    2, 1, 2
    bne-    branch_0x801a896c
    stfs    f26, 0x38(r30)
branch_0x801a896c:
    lfs     f0, 0x3c(r30)
    fcmpo   cr0, f0, f28
    cror    2, 0, 2
    bne-    branch_0x801a8980
    stfs    f28, 0x3c(r30)
branch_0x801a8980:
    lfs     f0, 0x40(r30)
    fcmpo   cr0, f0, f27
    cror    2, 0, 2
    bne-    branch_0x801a8994
    stfs    f27, 0x40(r30)
branch_0x801a8994:
    lfs     f0, 0x44(r30)
    fcmpo   cr0, f0, f26
    cror    2, 0, 2
    bne-    branch_0x801a89a8
    stfs    f26, 0x44(r30)
branch_0x801a89a8:
    lfs     f0, 0x30(r30)
    lfs     f1, 0x0(r31)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a89c0
    stfs    f1, 0x30(r30)
branch_0x801a89c0:
    lfs     f0, 0x34(r30)
    lfs     f1, 0x4(r31)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a89d8
    stfs    f1, 0x34(r30)
branch_0x801a89d8:
    lfs     f0, 0x38(r30)
    lfs     f1, 0x8(r31)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a89f0
    stfs    f1, 0x38(r30)
branch_0x801a89f0:
    lfs     f0, 0x3c(r30)
    lfs     f1, 0x0(r31)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a8a08
    stfs    f1, 0x3c(r30)
branch_0x801a8a08:
    lfs     f0, 0x40(r30)
    lfs     f1, 0x4(r31)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a8a20
    stfs    f1, 0x40(r30)
branch_0x801a8a20:
    lfs     f0, 0x44(r30)
    lfs     f1, 0x8(r31)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a8b08
    stfs    f1, 0x44(r30)
    b       branch_0x801a8b08

branch_0x801a8a3c:
    lfs     f0, 0x30(r30)
    lfs     f1, 0x0(r31)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a8a54
    stfs    f1, 0x30(r30)
branch_0x801a8a54:
    lfs     f0, 0x34(r30)
    lfs     f1, 0x4(r31)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a8a6c
    stfs    f1, 0x34(r30)
branch_0x801a8a6c:
    lfs     f0, 0x38(r30)
    lfs     f1, 0x8(r31)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x801a8a84
    stfs    f1, 0x38(r30)
branch_0x801a8a84:
    lfs     f0, 0x3c(r30)
    lfs     f1, 0x0(r31)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a8a9c
    stfs    f1, 0x3c(r30)
branch_0x801a8a9c:
    lfs     f0, 0x40(r30)
    lfs     f1, 0x4(r31)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a8ab4
    stfs    f1, 0x40(r30)
branch_0x801a8ab4:
    lfs     f0, 0x44(r30)
    lfs     f1, 0x8(r31)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801a8acc
    stfs    f1, 0x44(r30)
branch_0x801a8acc:
    lwz     r3, 0x0(r7)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r7)
    lfs     f1, 0x0(r8)
    lfs     f0, 0x0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r8)
    lfs     f1, 0x4(r8)
    lfs     f0, 0x4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r8)
    lfs     f1, 0x8(r8)
    lfs     f0, 0x8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r8)
branch_0x801a8b08:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lfd     f27, 0x80(sp)
    lfd     f26, 0x78(sp)
    lfd     f25, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0xa8
    blr


.globl getGravityDir__12TBathtubDataCFf
getGravityDir__12TBathtubDataCFf: # 0x801a8b3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stfd    f28, 0xb0(sp)
    stfd    f27, 0xa8(sp)
    stfd    f26, 0xa0(sp)
    stfd    f25, 0x98(sp)
    fmr     f25, f1
    stw     r31, 0x94(sp)
    addi    r31, r3, 0x0
    lbz     r0, 0x65(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801a8d34
    lfs     f3, -0x3f60(rtoc)
    lfs     f0, -0x3f5c(rtoc)
    stfs    f3, 0x80(sp)
    stfs    f0, 0x84(sp)
    stfs    f3, 0x88(sp)
    lfs     f27, 0x88(sp)
    lfs     f5, 0xc(r4)
    lfs     f1, 0x14(r4)
    lfs     f26, 0x84(sp)
    fmuls   f0, f5, f27
    lfs     f6, 0x80(sp)
    fmuls   f2, f1, f26
    lfs     f4, 0x10(r4)
    fmsubs  f29, f1, f6, f0
    fmuls   f1, f4, f6
    fmsubs  f30, f4, f27, f2
    fmuls   f0, f29, f29
    fmsubs  f28, f5, f26, f1
    fmadds  f0, f30, f30, f0
    fmadds  f31, f28, f28, f0
    fcmpo   cr0, f31, f3
    cror    2, 0, 2
    bne-    branch_0x801a8bdc
    b       branch_0x801a8c00

branch_0x801a8bdc:
    frsqrte f3, f31
    lfs     f2, -0x3f54(rtoc)
    lfs     f0, -0x3f58(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x801a8c00:
    lfs     f0, -0x3f40(rtoc)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x801a8c2c
    lfs     f1, -0x3f60(rtoc)
    lfs     f0, -0x3f5c(rtoc)
    stfs    f1, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f0, 0x7c(sp)
    b       branch_0x801a8c8c

branch_0x801a8c2c:
    lfs     f0, 0x10(r4)
    fmr     f1, f31
    lfs     f3, 0xc(r4)
    fmuls   f0, f0, f26
    lfs     f2, 0x80(sp)
    lfs     f4, 0x14(r4)
    fmadds  f0, f3, f2, f0
    fmadds  f2, f4, f27, f0
    bl      atan2f
    lfs     f0, -0x3f54(rtoc)
    fmuls   f0, f0, f1
    fmuls   f25, f25, f0
    fmr     f1, f25
    bl      sinf
    fdivs   f1, f1, f31
    fmuls   f0, f30, f1
    fmuls   f2, f29, f1
    stfs    f0, 0x70(sp)
    fmuls   f0, f28, f1
    fmr     f1, f25
    stfs    f2, 0x74(sp)
    stfs    f0, 0x78(sp)
    bl      cosf
    stfs    f1, 0x7c(sp)
branch_0x801a8c8c:
    lfs     f7, 0x78(sp)
    lfs     f12, 0x80(sp)
    lfs     f3, 0x70(sp)
    fmuls   f2, f7, f26
    fmuls   f1, f7, f12
    lfs     f9, 0x74(sp)
    fneg    f10, f3
    fmuls   f0, f9, f12
    lfs     f8, 0x7c(sp)
    fmadds  f1, f10, f27, f1
    fmsubs  f2, f9, f27, f2
    fneg    f11, f7
    fmadds  f6, f8, f26, f1
    fmsubs  f4, f3, f26, f0
    fmuls   f1, f9, f26
    fmadds  f5, f8, f12, f2
    fmuls   f2, f6, f11
    fmuls   f0, f6, f8
    fmsubs  f3, f10, f12, f1
    fmadds  f4, f8, f27, f4
    fmadds  f1, f5, f7, f0
    fneg    f9, f9
    fmadds  f2, f5, f8, f2
    fmuls   f0, f6, f10
    fnmsubs  f3, f7, f27, f3
    fnmsubs  f2, f4, f9, f2
    fmsubs  f0, f5, f9, f0
    fmadds  f1, f4, f10, f1
    fmadds  f2, f3, f10, f2
    fmadds  f0, f4, f8, f0
    fmadds  f1, f3, f9, f1
    stfs    f2, 0x80(sp)
    fmadds  f0, f3, f11, f0
    stfs    f1, 0x84(sp)
    stfs    f0, 0x88(sp)
    lwz     r3, 0x80(sp)
    lwz     r0, 0x84(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0x88(sp)
    stw     r0, 0x8(r31)
    b       branch_0x801a8d48

branch_0x801a8d34:
    lfs     f1, -0x3f60(rtoc)
    stfs    f1, 0x0(r31)
    lfs     f0, -0x3f5c(rtoc)
    stfs    f0, 0x4(r31)
    stfs    f1, 0x8(r31)
branch_0x801a8d48:
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    lfd     f29, 0xb8(sp)
    lfd     f28, 0xb0(sp)
    lfd     f27, 0xa8(sp)
    lfd     f26, 0xa0(sp)
    lfd     f25, 0x98(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0xd0
    blr


.globl throwMario__17TBathWaterManagerFf
throwMario__17TBathWaterManagerFf: # 0x801a8d78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    fmr     f31, f1
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stw     r31, 0x94(sp)
    lwz     r4, 0x24(r3)
    addi    r3, sp, 0x4c
    lwz     r5, -0x60b4(r13)
    lfs     f0, 0x174(r4)
    addi    r31, r4, 0x170
    lfs     f1, 0x4(r5)
    lfs     f4, 0x0(r5)
    fsubs   f7, f1, f0
    lfs     f3, 0x170(r4)
    lfs     f2, 0x1a4(r4)
    fsubs   f6, f4, f3
    lfs     f0, 0x18c(r4)
    lfs     f1, 0x198(r4)
    fmuls   f4, f2, f7
    lfs     f5, 0x1a0(r4)
    fmuls   f2, f1, f7
    lfs     f3, 0x194(r4)
    fmadds  f5, f5, f6, f4
    fmuls   f0, f0, f7
    lfs     f1, 0x188(r4)
    fmadds  f2, f3, f6, f2
    lfs     f4, 0x8(r5)
    fmadds  f0, f1, f6, f0
    lfs     f3, 0x178(r4)
    lfs     f1, 0x190(r4)
    fsubs   f6, f4, f3
    lfs     f3, 0x1a8(r4)
    lfs     f4, 0x19c(r4)
    fmadds  f3, f3, f6, f5
    fmadds  f2, f4, f6, f2
    fmadds  f1, f1, f6, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x50(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x68(sp)
    lfs     f3, -0x3f60(rtoc)
    stw     r0, 0x6c(sp)
    stfs    f3, 0x68(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x68(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x6c(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f3
    cror    2, 0, 2
    bne-    branch_0x801a8e6c
    fmr     f2, f1
    b       branch_0x801a8e90

branch_0x801a8e6c:
    frsqrte f4, f1
    lfs     f3, -0x3f54(rtoc)
    lfs     f0, -0x3f58(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f2, f1, f0
branch_0x801a8e90:
    lfd     f0, -0x3f18(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x801a8fe0
    lfs     f0, -0x3f40(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801a8ec0
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x68(sp)
    stfs    f0, 0x64(sp)
    b       branch_0x801a8ef0

branch_0x801a8ec0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x3f10(rtoc)
    lfs     f0, 0x64(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x64(sp)
    lfs     f0, 0x68(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(sp)
    lfs     f0, 0x6c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x6c(sp)
branch_0x801a8ef0:
    lfs     f1, 0x4(r31)
    lfs     f5, 0x64(sp)
    lfs     f0, 0x1c(r31)
    lfs     f3, 0x0(r31)
    lfs     f2, 0x18(r31)
    fmadds  f7, f0, f5, f1
    lfs     f4, 0x8(r31)
    lfs     f1, 0x20(r31)
    fmadds  f6, f2, f5, f3
    lfs     f3, 0x6c(sp)
    lfs     f0, 0x34(r31)
    fmadds  f4, f1, f5, f4
    lfs     f2, 0x30(r31)
    lfs     f1, 0x38(r31)
    fmadds  f30, f0, f3, f7
    lfs     f0, -0x3f0c(rtoc)
    fmadds  f31, f2, f3, f6
    fmadds  f29, f1, f3, f4
    fadds   f30, f30, f0
    bl      SMS_GetMarioGravity__Fv
    lwz     r4, -0x60b4(r13)
    li      r3, 0x1
    lfs     f3, -0x3f08(rtoc)
    lfs     f4, 0x4(r4)
    lfs     f0, -0x3f04(rtoc)
    lfs     f2, -0x3f60(rtoc)
branch_0x801a8f58:
    fcmpo   cr0, f3, f2
    fadds   f4, f4, f3
    bge-    branch_0x801a8f70
    fcmpo   cr0, f4, f30
    cror    2, 0, 2
    beq-    branch_0x801a8f88
branch_0x801a8f70:
    fsubs   f3, f3, f1
    fcmpo   cr0, f3, f0
    bge-    branch_0x801a8f80
    fmr     f3, f0
branch_0x801a8f80:
    addi    r3, r3, 0x1
    b       branch_0x801a8f58

branch_0x801a8f88:
    xoris   r3, r3, 0x8000
    lfs     f0, 0x0(r4)
    stw     r3, 0x84(sp)
    lis     r0, 0x4330
    lfs     f1, 0x8(r4)
    fsubs   f2, f31, f0
    stw     r0, 0x80(sp)
    lfd     f4, -0x3f30(rtoc)
    fsubs   f5, f29, f1
    stw     r3, 0x8c(sp)
    lfd     f0, 0x80(sp)
    stw     r0, 0x88(sp)
    fsubs   f1, f0, f4
    lfs     f0, -0x3f08(rtoc)
    lfd     f3, 0x88(sp)
    fdivs   f1, f2, f1
    fsubs   f2, f3, f4
    stfs    f1, 0x74(sp)
    stfs    f0, 0x78(sp)
    fdivs   f0, f5, f2
    stfs    f0, 0x7c(sp)
    b       branch_0x801a8ff0

branch_0x801a8fe0:
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x74(sp)
    stfs    f31, 0x78(sp)
    stfs    f0, 0x7c(sp)
branch_0x801a8ff0:
    lfs     f1, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x7c(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x3f60(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801a9024
    b       branch_0x801a9048

branch_0x801a9024:
    frsqrte f4, f1
    lfs     f3, -0x3f54(rtoc)
    lfs     f0, -0x3f58(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f1, f1, f0
branch_0x801a9048:
    addi    r3, sp, 0x74
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0xb0
    blr


.globl getWaterHeight__17TBathWaterManagerCFff
getWaterHeight__17TBathWaterManagerCFff: # 0x801a9070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a90a8
    lwz     r3, 0x30(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801a90a8
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801a90ac

branch_0x801a90a8:
    lfs     f1, -0x3f60(rtoc)
branch_0x801a90ac:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initializeIfYet___17TBathWaterManagerFv
initializeIfYet___17TBathWaterManagerFv: # 0x801a90bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x280(sp)
    stfd    f31, 0x278(sp)
    stfd    f30, 0x270(sp)
    stfd    f29, 0x268(sp)
    stfd    f28, 0x260(sp)
    stfd    f27, 0x258(sp)
    stfd    f26, 0x250(sp)
    stfd    f25, 0x248(sp)
    stfd    f24, 0x240(sp)
    stfd    f23, 0x238(sp)
    stfd    f22, 0x230(sp)
    stfd    f21, 0x228(sp)
    stfd    f20, 0x220(sp)
    stfd    f19, 0x218(sp)
    stmw    r15, 0x1d4(sp)
    mr      r27, r3
    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a9d30
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8039
    subi    r15, r3, 0x581c
    lwz     r16, 0x4(r4)
    mr      r3, r15
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r16)
    addi    r4, r3, 0x0
    addi    r3, r16, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r15, 0x0
    mtlr    r12
    blrl
    mr.     r15, r3
    beq-    branch_0x801a9d30
    lbz     r0, 0x298(r15)
    cmplwi  r0, 0x0
    beq-    branch_0x801a9d30
    addi    r30, r15, 0x170
    lfs     f25, -0x3f5c(rtoc)
    lis     r3, 0x6666
    lfs     f31, -0x3f60(rtoc)
    lfs     f28, -0x3f54(rtoc)
    mr      r22, r30
    lfs     f29, -0x3f58(rtoc)
    addi    r25, r3, 0x6667
    lfs     f26, -0x3f50(rtoc)
    lfs     f27, -0x3f4c(rtoc)
    li      r29, 0x0
    lfd     f24, -0x3f30(rtoc)
    li      r26, 0x0
    lfs     f30, -0x3f48(rtoc)
    lis     r24, 0x4330
    lis     r23, 0x4000
branch_0x801a9198:
    lwz     r4, 0x14(r27)
    li      r16, 0x0
    lwz     r3, 0x20(r27)
    lwzx    r4, r4, r26
    lwzx    r17, r3, r26
    stw     r4, 0x8c(r17)
    lwz     r0, 0x7c(r4)
    stw     r0, 0x74(r17)
    lwz     r0, 0x70(r17)
    lwz     r18, 0x88(r17)
    mulli   r0, r0, 0x50
    add     r19, r18, r0
    b       branch_0x801a9260

branch_0x801a91cc:
    addi    r3, r17, 0x68
    bl      get_ufloat_1__Q25JMath13TRandom_fast_Fv
    lwz     r3, 0x8c(r17)
    fmuls   f19, f25, f1
    mr      r5, r16
    lwz     r6, 0x70(r17)
    lfs     f1, 0x90(r3)
    addi    r4, r22, 0x0
    addi    r3, sp, 0x1ac
    addi    r16, r16, 0x1
    bl      getPos__12TBathtubDataCFiif
    fadds   f0, f31, f19
    li      r0, 0x0
    stfs    f0, 0x48(r18)
    lfs     f0, 0x1ac(sp)
    stfs    f0, 0x0(r18)
    lfs     f0, 0x1b0(sp)
    stfs    f0, 0x4(r18)
    lfs     f0, 0x1b4(sp)
    stfs    f0, 0x8(r18)
    stfs    f31, 0x14(r18)
    stfs    f31, 0x10(r18)
    stfs    f31, 0xc(r18)
    stfs    f31, 0x20(r18)
    stfs    f31, 0x1c(r18)
    stfs    f31, 0x18(r18)
    stfs    f31, 0x2c(r18)
    stfs    f31, 0x28(r18)
    stfs    f31, 0x24(r18)
    stfs    f31, 0x38(r18)
    stfs    f31, 0x34(r18)
    stfs    f31, 0x30(r18)
    stfs    f31, 0x44(r18)
    stfs    f31, 0x40(r18)
    stfs    f31, 0x3c(r18)
    stw     r0, 0x4c(r18)
    addi    r18, r18, 0x50
branch_0x801a9260:
    cmplw   r18, r19
    blt+    branch_0x801a91cc
    lwz     r5, 0x8c(r17)
    mr      r3, r17
    lfsu    f2, 0x90(r5)
    addi    r4, r23, 0x25b
    lfs     f3, -0x3f60(rtoc)
    lfs     f1, 0x0(r5)
    fmuls   f2, f2, f27
    fmr     f4, f3
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r17)
    li      r28, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r17)
    lwz     r0, 0x64(r17)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r17)
    stfs    f31, 0x80(r17)
    stfs    f31, 0x7c(r17)
    stfs    f31, 0x78(r17)
    stfs    f31, 0x84(r17)
branch_0x801a92c0:
    lwz     r0, 0x20(r27)
    addi    r4, r30, 0x0
    addi    r3, sp, 0x188
    lwzx    r18, r26, r0
    lwz     r6, 0x8c(r18)
    lfs     f19, 0x108(r6)
    lfs     f1, 0x16c(r6)
    bl      getGravityDir__12TBathtubDataCFf
    fneg    f3, f19
    lfs     f2, 0x188(sp)
    lfs     f1, 0x18c(sp)
    li      r0, 0x0
    lfs     f0, 0x190(sp)
    fmuls   f2, f2, f3
    stfs    f31, 0x154(sp)
    fmuls   f1, f1, f3
    stfs    f3, 0x158(sp)
    fmuls   f0, f0, f3
    stfs    f2, 0x148(sp)
    stfs    f1, 0x14c(sp)
    stfs    f0, 0x150(sp)
    stfs    f31, 0x15c(sp)
    lwz     r3, 0x8c(r18)
    lwz     r4, 0x74(r18)
    lwz     r5, 0x88(r18)
    lfs     f22, 0x90(r3)
    mulli   r3, r4, 0x50
    stw     r0, 0x178(sp)
    add     r19, r5, r3
    stfs    f31, 0x184(sp)
    stfs    f31, 0x180(sp)
    stfs    f31, 0x17c(sp)
    lfs     f0, 0x28(r30)
    fcmpo   cr0, f0, f31
    ble-    branch_0x801a93e4
    lwz     r16, 0x88(r18)
    b       branch_0x801a93d8

branch_0x801a9354:
    lfs     f2, 0x0(r16)
    fmr     f1, f22
    lfs     f0, 0xc(r16)
    addi    r3, r16, 0x0
    addi    r4, r30, 0x0
    fadds   f0, f2, f0
    addi    r5, sp, 0x148
    addi    r6, sp, 0x154
    stfs    f0, 0x0(r16)
    addi    r7, sp, 0x178
    addi    r8, sp, 0x17c
    lfs     f2, 0x4(r16)
    lfs     f0, 0x10(r16)
    fadds   f0, f2, f0
    stfs    f0, 0x4(r16)
    lfs     f2, 0x8(r16)
    lfs     f0, 0x14(r16)
    fadds   f0, f2, f0
    stfs    f0, 0x8(r16)
    stfs    f31, 0x20(r16)
    stfs    f31, 0x1c(r16)
    stfs    f31, 0x18(r16)
    stfs    f31, 0x2c(r16)
    stfs    f31, 0x28(r16)
    stfs    f31, 0x24(r16)
    stfs    f31, 0x38(r16)
    stfs    f31, 0x34(r16)
    stfs    f31, 0x30(r16)
    stfs    f31, 0x44(r16)
    stfs    f31, 0x40(r16)
    stfs    f31, 0x3c(r16)
    bl      calcBathtub__Q210TBathWater5TDropFRC12TBathtubDatafRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RiRQ29JGeometry8TVec3_f_
    addi    r16, r16, 0x50
branch_0x801a93d8:
    cmplw   r16, r19
    blt+    branch_0x801a9354
    b       branch_0x801a94b0

branch_0x801a93e4:
    lwz     r16, 0x88(r18)
    b       branch_0x801a94a8

branch_0x801a93ec:
    lfs     f1, 0x0(r16)
    addi    r17, r16, 0x30
    lfs     f0, 0xc(r16)
    addi    r3, r17, 0x0
    addi    r4, sp, 0x154
    fadds   f0, f1, f0
    stfs    f0, 0x0(r16)
    lfs     f1, 0x4(r16)
    lfs     f0, 0x10(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r16)
    lfs     f1, 0x8(r16)
    lfs     f0, 0x14(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r16)
    stfs    f31, 0x20(r16)
    stfs    f31, 0x1c(r16)
    stfs    f31, 0x18(r16)
    stfs    f31, 0x2c(r16)
    stfs    f31, 0x28(r16)
    stfs    f31, 0x24(r16)
    stfs    f31, 0x38(r16)
    stfs    f31, 0x34(r16)
    stfs    f31, 0x30(r16)
    stfs    f31, 0x44(r16)
    stfs    f31, 0x40(r16)
    stfs    f31, 0x3c(r16)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r17, 0xc
    addi    r4, sp, 0x154
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f1, 0x17c(sp)
    lfs     f0, 0x0(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x17c(sp)
    lfs     f1, 0x180(sp)
    lfs     f0, 0x4(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x180(sp)
    lfs     f0, 0x8(r16)
    addi    r16, r16, 0x50
    lfs     f1, 0x184(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x184(sp)
    lwz     r3, 0x178(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x178(sp)
branch_0x801a94a8:
    cmplw   r16, r19
    blt+    branch_0x801a93ec
branch_0x801a94b0:
    lwz     r4, 0x178(sp)
    lwz     r0, 0x74(r18)
    mulli   r3, r4, 0x1e
    lfs     f3, -0x3f60(rtoc)
    cmpw    r3, r0
    ble-    branch_0x801a9570
    xoris   r0, r4, 0x8000
    lfs     f1, 0x17c(sp)
    stw     r0, 0x1cc(sp)
    stw     r24, 0x1c8(sp)
    lfd     f0, 0x1c8(sp)
    stw     r0, 0x1c4(sp)
    fsubs   f0, f0, f24
    stw     r24, 0x1c0(sp)
    fdivs   f2, f25, f0
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f24
    stfs    f1, 0x17c(sp)
    fmuls   f1, f29, f0
    lfs     f0, 0x180(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x180(sp)
    lfs     f0, 0x184(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x184(sp)
    lwz     r0, 0x74(r18)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    stw     r24, 0x1b8(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f0, f0, f24
    fdivs   f2, f1, f0
    fcmpo   cr0, f2, f3
    cror    2, 0, 2
    bne-    branch_0x801a9544
    b       branch_0x801a9560

branch_0x801a9544:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f28, f1
    fnmsubs  f0, f2, f0, f29
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x801a9560:
    fcmpo   cr0, f2, f25
    fmr     f3, f2
    ble-    branch_0x801a9570
    fmr     f3, f25
branch_0x801a9570:
    lfs     f0, 0x17c(sp)
    stfs    f0, 0x78(r18)
    lfs     f0, 0x180(sp)
    stfs    f0, 0x7c(r18)
    lfs     f0, 0x184(sp)
    stfs    f0, 0x80(r18)
    stfs    f3, 0x84(r18)
    lwz     r3, 0x8c(r18)
    lbz     r0, 0x40(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a97e4
    fmuls   f0, f22, f22
    lwz     r20, 0x88(r18)
    fmuls   f20, f27, f22
    fmuls   f21, f26, f0
    b       branch_0x801a97dc

branch_0x801a95b0:
    lwz     r3, 0x8c(r18)
    addi    r16, r20, 0x18
    addi    r31, r20, 0x30
    lbz     r0, 0x40(r3)
    mulli   r0, r0, 0x50
    add     r21, r20, r0
branch_0x801a95c8:
    lfs     f1, 0x0(r21)
    lfs     f0, 0x0(r20)
    fsubs   f0, f1, f0
    stfs    f0, 0x160(sp)
    lfs     f1, 0x4(r21)
    lfs     f0, 0x4(r20)
    fsubs   f0, f1, f0
    stfs    f0, 0x164(sp)
    lfs     f1, 0x8(r21)
    lfs     f0, 0x8(r20)
    fsubs   f0, f1, f0
    stfs    f0, 0x168(sp)
    lfs     f1, 0x160(sp)
    lfs     f0, 0x164(sp)
    lfs     f2, 0x168(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f2, f2, f0
    fcmpo   cr0, f2, f21
    bgt-    branch_0x801a97c0
    fcmpo   cr0, f2, f31
    cror    2, 0, 2
    bne-    branch_0x801a9630
    b       branch_0x801a964c

branch_0x801a9630:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f28, f1
    fnmsubs  f0, f2, f0, f29
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x801a964c:
    fdivs   f1, f25, f2
    lfs     f0, 0x160(sp)
    addi    r17, r21, 0x18
    addi    r3, r17, 0x0
    addi    r4, sp, 0x160
    fmuls   f0, f0, f1
    fsubs   f23, f20, f2
    stfs    f0, 0x16c(sp)
    fmuls   f19, f28, f23
    lfs     f0, 0x164(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x170(sp)
    lfs     f0, 0x168(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x174(sp)
    lfs     f0, 0x16c(sp)
    fmuls   f2, f0, f19
    stfs    f2, 0x160(sp)
    lfs     f3, 0x170(sp)
    fmuls   f1, f3, f19
    fadds   f0, f25, f3
    stfs    f1, 0x164(sp)
    lfs     f1, 0x174(sp)
    fmuls   f1, f1, f19
    fmuls   f19, f19, f3
    stfs    f1, 0x168(sp)
    fmuls   f0, f0, f19
    stfs    f2, 0x160(sp)
    stfs    f1, 0x168(sp)
    stfs    f0, 0x164(sp)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r17, 0xc
    addi    r4, sp, 0x160
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x160(sp)
    addi    r3, r16, 0x0
    addi    r4, sp, 0x160
    fneg    f0, f0
    stfs    f0, 0x160(sp)
    lfs     f0, 0x168(sp)
    fneg    f0, f0
    stfs    f0, 0x168(sp)
    lfs     f0, 0x170(sp)
    fsubs   f0, f0, f25
    fmuls   f0, f0, f19
    stfs    f0, 0x164(sp)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r16, 0xc
    addi    r4, sp, 0x160
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    fcmpo   cr0, f19, f23
    bge-    branch_0x801a9720
    fmr     f19, f23
branch_0x801a9720:
    lwz     r4, 0x8c(r18)
    addi    r17, r21, 0x30
    lfs     f1, 0x16c(sp)
    mr      r3, r17
    lfs     f0, 0x130(r4)
    addi    r4, sp, 0x16c
    fmuls   f0, f19, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x16c(sp)
    lwz     r5, 0x8c(r18)
    lfs     f1, 0x170(sp)
    lfs     f0, 0x11c(r5)
    fmuls   f0, f19, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x170(sp)
    lwz     r5, 0x8c(r18)
    lfs     f1, 0x174(sp)
    lfs     f0, 0x130(r5)
    fmuls   f0, f19, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x174(sp)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r17, 0xc
    addi    r4, sp, 0x16c
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x16c(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x16c
    fneg    f0, f0
    stfs    f0, 0x16c(sp)
    lfs     f0, 0x170(sp)
    fneg    f0, f0
    stfs    f0, 0x170(sp)
    lfs     f0, 0x174(sp)
    fneg    f0, f0
    stfs    f0, 0x174(sp)
    bl      setMin__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0xc
    addi    r4, sp, 0x16c
    bl      setMax__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
branch_0x801a97c0:
    lwz     r3, 0x8c(r18)
    lbz     r0, 0x40(r3)
    mulli   r0, r0, 0x50
    add     r21, r21, r0
    cmplw   r21, r19
    blt+    branch_0x801a95c8
    addi    r20, r20, 0x50
branch_0x801a97dc:
    cmplw   r20, r19
    blt+    branch_0x801a95b0
branch_0x801a97e4:
    lbz     r0, 0x65(r30)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x3c(r30)
    cmplwi  r0, 0x0
    fsubs   f23, f1, f0
    beq-    branch_0x801a9800
    fnmsubs  f23, f30, f0, f1
branch_0x801a9800:
    lwz     r16, 0x88(r18)
    li      r20, 0x0
    b       branch_0x801a9b58

branch_0x801a980c:
    lfs     f0, 0x4(r16)
    fcmpo   cr0, f0, f23
    bge-    branch_0x801a9a68
    lwz     r3, 0x8c(r18)
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a98c4
    lbz     r0, 0x65(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801a98c4
    addi    r3, r18, 0x68
    bl      get_ufloat_1__Q25JMath13TRandom_fast_Fv
    fmuls   f19, f25, f1
    mr      r5, r20
    fmr     f1, f22
    lwz     r6, 0x70(r18)
    addi    r4, r30, 0x0
    addi    r3, sp, 0x194
    addi    r20, r20, 0x1
    bl      getPos__12TBathtubDataCFiif
    fadds   f0, f31, f19
    li      r0, 0x0
    stfs    f0, 0x48(r16)
    lfs     f0, 0x194(sp)
    stfs    f0, 0x0(r16)
    lfs     f0, 0x198(sp)
    stfs    f0, 0x4(r16)
    lfs     f0, 0x19c(sp)
    stfs    f0, 0x8(r16)
    stfs    f31, 0x14(r16)
    stfs    f31, 0x10(r16)
    stfs    f31, 0xc(r16)
    stfs    f31, 0x20(r16)
    stfs    f31, 0x1c(r16)
    stfs    f31, 0x18(r16)
    stfs    f31, 0x2c(r16)
    stfs    f31, 0x28(r16)
    stfs    f31, 0x24(r16)
    stfs    f31, 0x38(r16)
    stfs    f31, 0x34(r16)
    stfs    f31, 0x30(r16)
    stfs    f31, 0x44(r16)
    stfs    f31, 0x40(r16)
    stfs    f31, 0x3c(r16)
    stw     r0, 0x4c(r16)
    b       branch_0x801a9b54

branch_0x801a98c4:
    lwz     r0, 0x88(r18)
    lwz     r3, 0x74(r18)
    subf    r0, r0, r16
    mulhw   r0, r25, r0
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r4, r0, r4
    cmpw    r4, r3
    bge-    branch_0x801a9968
    subi    r0, r3, 0x1
    stw     r0, 0x74(r18)
    lwz     r0, 0x74(r18)
    cmpw    r4, r0
    bge-    branch_0x801a9960
    mulli   r0, r0, 0x50
    lwz     r3, 0x88(r18)
    add     r17, r3, r0
    lwz     r5, 0x0(r17)
    addi    r3, r16, 0x18
    lwz     r0, 0x4(r17)
    addi    r4, r17, 0x18
    stw     r5, 0x0(r16)
    stw     r0, 0x4(r16)
    lwz     r0, 0x8(r17)
    stw     r0, 0x8(r16)
    lwz     r5, 0xc(r17)
    lwz     r0, 0x10(r17)
    stw     r5, 0xc(r16)
    stw     r0, 0x10(r16)
    lwz     r0, 0x14(r17)
    stw     r0, 0x14(r16)
    bl      __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
    addi    r3, r16, 0x30
    addi    r4, r17, 0x30
    bl      __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
    lfs     f0, 0x48(r17)
    stfs    f0, 0x48(r16)
    lwz     r0, 0x4c(r17)
    stw     r0, 0x4c(r16)
branch_0x801a9960:
    li      r0, 0x1
    b       branch_0x801a996c

branch_0x801a9968:
    li      r0, 0x0
branch_0x801a996c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a9b54
    lfs     f1, 0x0(r16)
    subi    r19, r19, 0x50
    lfs     f0, 0x18(r16)
    lwz     r3, 0x8c(r18)
    fadds   f1, f1, f0
    lfs     f0, 0x144(r3)
    stfs    f1, 0x0(r16)
    lfs     f2, 0x4(r16)
    lfs     f1, 0x1c(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x4(r16)
    lfs     f2, 0x8(r16)
    lfs     f1, 0x20(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x8(r16)
    lfs     f2, 0x0(r16)
    lfs     f1, 0x24(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x0(r16)
    lfs     f2, 0x4(r16)
    lfs     f1, 0x28(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x4(r16)
    lfs     f2, 0x8(r16)
    lfs     f1, 0x2c(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x8(r16)
    lfs     f1, 0xc(r16)
    fmuls   f1, f1, f0
    stfs    f1, 0xc(r16)
    lfs     f1, 0x10(r16)
    fmuls   f1, f1, f0
    stfs    f1, 0x10(r16)
    lfs     f1, 0x14(r16)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r16)
    lfs     f1, 0xc(r16)
    lfs     f0, 0x30(r16)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r16)
    lfs     f1, 0x10(r16)
    lfs     f0, 0x34(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r16)
    lfs     f1, 0x14(r16)
    lfs     f0, 0x38(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r16)
    lfs     f1, 0xc(r16)
    lfs     f0, 0x3c(r16)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r16)
    lfs     f1, 0x10(r16)
    lfs     f0, 0x40(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r16)
    lfs     f1, 0x14(r16)
    lfs     f0, 0x44(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r16)
    b       branch_0x801a9b54

branch_0x801a9a68:
    lfs     f1, 0x0(r16)
    lfs     f0, 0x18(r16)
    lwz     r3, 0x8c(r18)
    fadds   f1, f1, f0
    lfs     f0, 0x144(r3)
    stfs    f1, 0x0(r16)
    lfs     f2, 0x4(r16)
    lfs     f1, 0x1c(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x4(r16)
    lfs     f2, 0x8(r16)
    lfs     f1, 0x20(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x8(r16)
    lfs     f2, 0x0(r16)
    lfs     f1, 0x24(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x0(r16)
    lfs     f2, 0x4(r16)
    lfs     f1, 0x28(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x4(r16)
    lfs     f2, 0x8(r16)
    lfs     f1, 0x2c(r16)
    fadds   f1, f2, f1
    stfs    f1, 0x8(r16)
    lfs     f1, 0xc(r16)
    fmuls   f1, f1, f0
    stfs    f1, 0xc(r16)
    lfs     f1, 0x10(r16)
    fmuls   f1, f1, f0
    stfs    f1, 0x10(r16)
    lfs     f1, 0x14(r16)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r16)
    lfs     f1, 0xc(r16)
    lfs     f0, 0x30(r16)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r16)
    lfs     f1, 0x10(r16)
    lfs     f0, 0x34(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r16)
    lfs     f1, 0x14(r16)
    lfs     f0, 0x38(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r16)
    lfs     f1, 0xc(r16)
    lfs     f0, 0x3c(r16)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r16)
    lfs     f1, 0x10(r16)
    lfs     f0, 0x40(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r16)
    lfs     f1, 0x14(r16)
    lfs     f0, 0x44(r16)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r16)
branch_0x801a9b54:
    addi    r16, r16, 0x50
branch_0x801a9b58:
    cmplw   r16, r19
    blt+    branch_0x801a980c
    lwz     r3, 0x8c(r18)
    lwz     r17, 0x194(r3)
    cmpwi   r17, 0x0
    ble-    branch_0x801a9c38
    lwz     r16, 0x88(r18)
    b       branch_0x801a9c30

branch_0x801a9b78:
    lwz     r3, 0x4c(r16)
    addi    r0, r3, 0x1
    cmpw    r0, r17
    stw     r0, 0x4c(r16)
    ble-    branch_0x801a9c28
    lwz     r0, 0x88(r18)
    lwz     r3, 0x74(r18)
    subf    r0, r0, r16
    mulhw   r0, r25, r0
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r4, r0, r4
    cmpw    r4, r3
    bge-    branch_0x801a9c28
    subi    r0, r3, 0x1
    stw     r0, 0x74(r18)
    lwz     r0, 0x74(r18)
    cmpw    r4, r0
    bge-    branch_0x801a9c28
    mulli   r0, r0, 0x50
    lwz     r3, 0x88(r18)
    add     r21, r3, r0
    lwz     r5, 0x0(r21)
    addi    r3, r16, 0x18
    lwz     r0, 0x4(r21)
    addi    r4, r21, 0x18
    stw     r5, 0x0(r16)
    stw     r0, 0x4(r16)
    lwz     r0, 0x8(r21)
    stw     r0, 0x8(r16)
    lwz     r5, 0xc(r21)
    lwz     r0, 0x10(r21)
    stw     r5, 0xc(r16)
    stw     r0, 0x10(r16)
    lwz     r0, 0x14(r21)
    stw     r0, 0x14(r16)
    bl      __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
    addi    r3, r16, 0x30
    addi    r4, r21, 0x30
    bl      __as__Q29JGeometry27TBox_Q29JGeometry8TVec3_f__FRCQ29JGeometry27TBox_Q29JGeometry8TVec3_f__
    lfs     f0, 0x48(r21)
    stfs    f0, 0x48(r16)
    lwz     r0, 0x4c(r21)
    stw     r0, 0x4c(r16)
branch_0x801a9c28:
    subi    r19, r19, 0x50
    addi    r16, r16, 0x50
branch_0x801a9c30:
    cmplw   r16, r19
    blt+    branch_0x801a9b78
branch_0x801a9c38:
    lwz     r3, 0x8c(r18)
    lwz     r5, 0x74(r18)
    lwz     r0, 0x7c(r3)
    cmpw    r5, r0
    bge-    branch_0x801a9d08
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801a9d10
    lbz     r0, 0x65(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801a9d10
    addi    r3, r18, 0x68
    bl      get_ufloat_1__Q25JMath13TRandom_fast_Fv
    fmuls   f19, f25, f1
    lwz     r6, 0x70(r18)
    fmr     f1, f22
    mr      r5, r20
    addi    r4, r30, 0x0
    addi    r3, sp, 0x1a0
    bl      getPos__12TBathtubDataCFiif
    lwz     r4, 0x74(r18)
    fadds   f0, f31, f19
    lwz     r5, 0x88(r18)
    li      r0, 0x0
    mulli   r3, r4, 0x50
    addi    r4, r4, 0x1
    stw     r4, 0x74(r18)
    add     r3, r5, r3
    stfs    f0, 0x48(r3)
    lfs     f0, 0x1a0(sp)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x1a4(sp)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x1a8(sp)
    stfs    f0, 0x8(r3)
    stfs    f31, 0x14(r3)
    stfs    f31, 0x10(r3)
    stfs    f31, 0xc(r3)
    stfs    f31, 0x20(r3)
    stfs    f31, 0x1c(r3)
    stfs    f31, 0x18(r3)
    stfs    f31, 0x2c(r3)
    stfs    f31, 0x28(r3)
    stfs    f31, 0x24(r3)
    stfs    f31, 0x38(r3)
    stfs    f31, 0x34(r3)
    stfs    f31, 0x30(r3)
    stfs    f31, 0x44(r3)
    stfs    f31, 0x40(r3)
    stfs    f31, 0x3c(r3)
    stw     r0, 0x4c(r3)
    b       branch_0x801a9d10

branch_0x801a9d08:
    ble-    branch_0x801a9d10
    stw     r0, 0x74(r18)
branch_0x801a9d10:
    addi    r28, r28, 0x1
    cmpwi   r28, 0xc8
    blt+    branch_0x801a92c0
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r26, r26, 0x4
    blt+    branch_0x801a9198
    stw     r15, 0x24(r27)
branch_0x801a9d30:
    lmw     r15, 0x1d4(sp)
    lwz     r0, 0x284(sp)
    lfd     f31, 0x278(sp)
    lfd     f30, 0x270(sp)
    mtlr    r0
    lfd     f29, 0x268(sp)
    lfd     f28, 0x260(sp)
    lfd     f27, 0x258(sp)
    lfd     f26, 0x250(sp)
    lfd     f25, 0x248(sp)
    lfd     f24, 0x240(sp)
    lfd     f23, 0x238(sp)
    lfd     f22, 0x230(sp)
    lfd     f21, 0x228(sp)
    lfd     f20, 0x220(sp)
    lfd     f19, 0x218(sp)
    addi    sp, sp, 0x280
    blr


.globl loadAfter__17TBathWaterManagerFv
loadAfter__17TBathWaterManagerFv: # 0x801a9d78
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r25, 0x74(sp)
    subi    r30, r5, 0x5958
    addi    r29, r3, 0x0
    addi    r3, r30, 0x148
    lwz     r4, -0x5db8(r13)
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x148
    mtlr    r12
    blrl
    addi    r26, r3, 0x0
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801a9e20
    lis     r3, 0x803c
    lwz     r4, 0x18(r29)
    addi    r0, r3, 0x2878
    lis     r3, 0x803c
    stw     r0, 0x0(r25)
    addi    r0, r3, 0x2864
    stw     r0, 0x0(r25)
    lis     r3, 0x15
    subi    r3, r3, 0x6000
    stw     r4, 0x2c(r25)
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x28(r25)
    addi    r3, r30, 0x160
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x24(r25)
    addi    r3, r25, 0x4
    lwz     r4, 0x24(r25)
    bl      init_tobj_resource__FP9_GXTexObjPv
branch_0x801a9e20:
    lis     r3, 0x8
    stw     r25, 0x28(r29)
    addi    r3, r3, 0x160
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801aa140
    lis     r3, 0x803c
    lwz     r25, 0x10(r26)
    lwz     r27, 0x18(r29)
    addi    r0, r3, 0x2878
    lis     r4, 0x803c
    lis     r3, 0x8002
    stw     r0, 0x0(r31)
    addi    r0, r4, 0x2850
    addi    r26, r3, 0x10dc
    stw     r0, 0x0(r31)
    addi    r4, r26, 0x0
    addi    r3, r31, 0x20
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x4000
    bl      __construct_array
    addis   r3, r31, 0x3
    addi    r4, r26, 0x0
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x4000
    addi    r3, r3, 0x20
    bl      __construct_array
    lis     r4, 0x8003
    addis   r3, r31, 0x6
    subi    r4, r4, 0x83c
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x4000
    addi    r3, r3, 0x20
    bl      __construct_array
    addis   r3, r31, 0x8
    addi    r3, r3, 0x20
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addis   r26, r31, 0x8
    addi    r3, r26, 0x0
    addi    r3, r3, 0x50
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    stw     r27, 0x134(r26)
    lis     r28, 0x5
    li      r27, 0x0
    stw     r25, 0x138(r26)
    addi    r3, r28, 0x5668
    li      r4, 0x20
    sth     r27, 0xae(r26)
    bl      __nwa__FUli
    stw     r3, 0x150(r26)
    lis     r3, 0x3
    addi    r3, r3, 0x23
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x154(r26)
    lis     r3, 0x1
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0xa4(r26)
    addi    r3, r28, 0x5668
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0xa8(r26)
    addi    r3, r30, 0x178
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x24
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x144(r26)
    addi    r3, r30, 0x190
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, 0x24
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r3, 0x148(r26)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801a9f7c
    addi    r3, r30, 0x1ac
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r27, 0x28(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r27, 0x50(r25)
branch_0x801a9f7c:
    addis   r3, r31, 0x8
    stw     r25, 0x13c(r3)
    li      r3, 0x54
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801a9fb4
    addi    r3, r30, 0x1cc
    bl      getGlbResource__13JKRFileLoaderFPCc
    li      r28, 0x0
    stw     r28, 0x28(r25)
    addi    r4, r3, 0x0
    mr      r3, r25
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r28, 0x50(r25)
branch_0x801a9fb4:
    addis   r28, r31, 0x8
    stw     r25, 0x140(r28)
    addi    r3, r30, 0x160
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r3, r3, 0xb4
    bl      init_tobj_resource__FP9_GXTexObjPv
    addi    r3, r30, 0x1ec
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r3, r3, 0xf4
    bl      init_tobj_resource__FP9_GXTexObjPv
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x148
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x148
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    lwz     r3, 0x148(r28)
    lwz     r5, 0x20(r4)
    lwz     r6, 0xac(r3)
    lwz     r3, 0x0(r5)
    lwz     r4, 0x4(r6)
    lwz     r0, 0x4(r5)
    stw     r3, 0x20(r4)
    stw     r0, 0x24(r4)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r3, 0x28(r4)
    stw     r0, 0x2c(r4)
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r3, 0x30(r4)
    stw     r0, 0x34(r4)
    lwz     r3, 0x18(r5)
    lwz     r0, 0x1c(r5)
    stw     r3, 0x38(r4)
    stw     r0, 0x3c(r4)
    lwz     r3, 0x4(r6)
    lwz     r0, 0x3c(r3)
    addi    r4, r3, 0x3c
    addi    r3, r3, 0x20
    add     r0, r5, r0
    subf    r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, 0x4(r6)
    lwz     r0, 0x2c(r3)
    addi    r4, r3, 0x2c
    addi    r3, r3, 0x20
    add     r0, r5, r0
    subf    r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r3, 0x148(r28)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    bl      makeDisplayList__11J3DMaterialFv
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801aa0d8
    lwz     r4, 0x148(r28)
    addi    r3, r25, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x801aa0d8:
    addis   r28, r31, 0x8
    lis     r4, 0x803c
    stw     r25, 0x14c(r28)
    addi    r3, r28, 0x0
    addi    r4, r4, 0x2740
    li      r5, 0x4
    li      r6, 0x4
    li      r7, 0x16
    li      r8, 0x1
    li      r9, 0x1
    li      r10, 0x0
    addi    r3, r3, 0x114
    bl      GXInitTexObj
    lfs     f1, -0x3f60(rtoc)
    mr      r3, r28
    li      r4, 0x0
    fmr     f2, f1
    li      r5, 0x0
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    addi    r3, r3, 0x114
    bl      GXInitTexObjLOD
    mr      r3, r31
    bl      clearHeightMap__22TBathWaterMeshRendererFv
branch_0x801aa140:
    stw     r31, 0x2c(r29)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x30(r29)
    lwz     r0, 0x94(sp)
    lmw     r25, 0x74(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl clearHeightMap__22TBathWaterMeshRendererFv
clearHeightMap__22TBathWaterMeshRendererFv: # 0x801aa160
    lfs     f0, -0x3f60(rtoc)
    li      r7, 0x0
    li      r4, 0x0
branch_0x801aa16c:
    li      r0, 0x2
    mtctr   r0
    add     r0, r3, r4
    li      r5, 0x0
branch_0x801aa17c:
    add     r6, r0, r5
    stfs    f0, 0x24(r6)
    addi    r5, r5, 0x60
    stfs    f0, 0x30(r6)
    stfs    f0, 0x3c(r6)
    stfs    f0, 0x48(r6)
    stfs    f0, 0x54(r6)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x6c(r6)
    stfs    f0, 0x78(r6)
    add     r6, r0, r5
    addi    r5, r5, 0x60
    stfs    f0, 0x24(r6)
    stfs    f0, 0x30(r6)
    stfs    f0, 0x3c(r6)
    stfs    f0, 0x48(r6)
    stfs    f0, 0x54(r6)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x6c(r6)
    stfs    f0, 0x78(r6)
    add     r6, r0, r5
    addi    r5, r5, 0x60
    stfs    f0, 0x24(r6)
    stfs    f0, 0x30(r6)
    stfs    f0, 0x3c(r6)
    stfs    f0, 0x48(r6)
    stfs    f0, 0x54(r6)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x6c(r6)
    stfs    f0, 0x78(r6)
    add     r6, r0, r5
    addi    r5, r5, 0x60
    stfs    f0, 0x24(r6)
    stfs    f0, 0x30(r6)
    stfs    f0, 0x3c(r6)
    stfs    f0, 0x48(r6)
    stfs    f0, 0x54(r6)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x6c(r6)
    stfs    f0, 0x78(r6)
    add     r6, r0, r5
    addi    r5, r5, 0x60
    stfs    f0, 0x24(r6)
    stfs    f0, 0x30(r6)
    stfs    f0, 0x3c(r6)
    stfs    f0, 0x48(r6)
    stfs    f0, 0x54(r6)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x6c(r6)
    stfs    f0, 0x78(r6)
    add     r6, r0, r5
    addi    r5, r5, 0x60
    stfs    f0, 0x24(r6)
    stfs    f0, 0x30(r6)
    stfs    f0, 0x3c(r6)
    stfs    f0, 0x48(r6)
    stfs    f0, 0x54(r6)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x6c(r6)
    stfs    f0, 0x78(r6)
    add     r6, r0, r5
    addi    r5, r5, 0x60
    stfs    f0, 0x24(r6)
    stfs    f0, 0x30(r6)
    stfs    f0, 0x3c(r6)
    stfs    f0, 0x48(r6)
    stfs    f0, 0x54(r6)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x6c(r6)
    stfs    f0, 0x78(r6)
    add     r6, r0, r5
    addi    r5, r5, 0x60
    stfs    f0, 0x24(r6)
    stfs    f0, 0x30(r6)
    stfs    f0, 0x3c(r6)
    stfs    f0, 0x48(r6)
    stfs    f0, 0x54(r6)
    stfs    f0, 0x60(r6)
    stfs    f0, 0x6c(r6)
    stfs    f0, 0x78(r6)
    bdnz+      branch_0x801aa17c
    addi    r7, r7, 0x1
    cmpwi   r7, 0x80
    addi    r4, r4, 0x600
    blt+    branch_0x801aa16c
    lfs     f1, -0x3f5c(rtoc)
    addis   r3, r3, 0x8
    stfs    f1, 0x80(r3)
    stfs    f1, 0x84(r3)
    stfs    f1, 0x88(r3)
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x7c(r3)
    stfs    f0, 0x6c(r3)
    stfs    f0, 0x5c(r3)
    stfs    f0, 0x68(r3)
    stfs    f0, 0x58(r3)
    stfs    f0, 0x74(r3)
    stfs    f0, 0x54(r3)
    stfs    f0, 0x70(r3)
    stfs    f0, 0x60(r3)
    stfs    f1, 0x78(r3)
    stfs    f1, 0x64(r3)
    stfs    f1, 0x50(r3)
    blr


.globl load__17TBathWaterManagerFR20JSUMemoryInputStream
load__17TBathWaterManagerFR20JSUMemoryInputStream: # 0x801aa31c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr      r28, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    li      r3, 0x224
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801aa34c
    mr      r3, r29
    bl      __ct__22TBathWaterGlobalParamsFv
branch_0x801aa34c:
    lis     r3, 0x803c
    stw     r29, 0x18(r28)
    addi    r30, r3, 0x2780
    li      r29, 0x0
    li      r31, 0x0
branch_0x801aa360:
    li      r3, 0x198
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801aa380
    add     r3, r30, r31
    lwz     r4, 0x0(r3)
    mr      r3, r27
    bl      __ct__16TBathWaterParamsFPCc
branch_0x801aa380:
    lwz     r3, 0x14(r28)
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    stwx    r27, r3, r31
    addi    r31, r31, 0x4
    blt+    branch_0x801aa360
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__17TBathWaterManagerFv
__ct__17TBathWaterManagerFv: # 0x801aa3ac
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r23, 0x24(sp)
    subi    r29, r4, 0x5958
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r23, 0x8(sp)
    addi    r3, r29, 0x204
    stw     r0, 0x0(r23)
    stw     r3, 0x4(r23)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r23)
    lis     r3, 0x803b
    subi    r24, r3, 0x497c
    stw     r24, 0x0(r23)
    li      r30, 0x0
    lis     r3, 0x803c
    sth     r30, 0xc(r23)
    addi    r0, r3, 0x2788
    addi    r3, r23, 0x10
    stw     r0, 0x0(r23)
    li      r4, 0x0
    bl      __ct__Q25JMath13TRandom_fast_FUl
    addi    r25, r23, 0x34
    stw     r25, 0x14(sp)
    addi    r4, r29, 0x214
    lwz     r3, 0x14(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x14(sp)
    li      r4, 0x0
    stw     r24, 0x0(r3)
    addi    r3, r3, 0xc
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803c
    addi    r0, r3, 0x288c
    stw     r0, 0x0(r25)
    li      r3, 0x8
    stw     r23, 0x10(r25)
    bl      __nwa__FUl
    stw     r3, 0x14(r23)
    li      r3, 0x8
    stw     r30, 0x18(r23)
    stb     r30, 0x1c(r23)
    bl      __nwa__FUl
    lis     r4, 0x803c
    stw     r3, 0x20(r23)
    addi    r31, r4, 0x27ac
    lis     r3, 0x801b
    addi    r28, r31, 0x24
    subi    r25, r3, 0x5ad0
    li      r27, 0x0
branch_0x801aa484:
    li      r3, 0x90
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x801aa4f4
    stw     r26, 0x18(sp)
    addi    r4, r29, 0x220
    lwz     r3, 0x18(sp)
    bl      __ct__9THitActorFPCc
    lwz     r24, 0x18(sp)
    li      r4, 0x0
    stw     r31, 0x0(r24)
    addi    r3, r24, 0x68
    stw     r28, 0x20(r24)
    bl      __ct__Q25JMath13TRandom_fast_FUl
    li      r0, 0x1f4
    stw     r0, 0x70(r24)
    lwz     r23, 0x70(r24)
    mulli   r3, r23, 0x50
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r25, 0x0
    addi    r7, r23, 0x0
    li      r5, 0x0
    li      r6, 0x50
    bl      __construct_new_array
    stw     r3, 0x88(r24)
    li      r0, 0x0
    stw     r0, 0x8c(r24)
branch_0x801aa4f4:
    lwz     r3, 0x8(sp)
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    lwz     r4, 0x20(r3)
    stwx    r26, r4, r30
    addi    r30, r30, 0x4
    blt+    branch_0x801aa484
    li      r0, 0x0
    stw     r0, 0x24(r3)
    stw     r0, 0x30(r3)
    lmw     r23, 0x24(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __ct__Q210TBathWater5TDropFv
__ct__Q210TBathWater5TDropFv: # 0x801aa530
    blr


.globl __dt__22TBathWaterPreprocessorFv
__dt__22TBathWaterPreprocessorFv: # 0x801aa534
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801aa58c
    lis     r3, 0x803c
    addi    r0, r3, 0x288c
    stw     r0, 0x0(r30)
    beq-    branch_0x801aa57c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801aa57c:
    extsh.  r0, r31
    ble-    branch_0x801aa58c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801aa58c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__22TBathWaterPreprocessorFUlPQ26JDrama9TGraphics
perform__22TBathWaterPreprocessorFUlPQ26JDrama9TGraphics: # 0x801aa5a8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x8(sp)
    beq-    branch_0x801aa600
    lwz     r7, 0x10(r3)
    lwz     r4, 0x24(r7)
    cmplwi  r4, 0x0
    beq-    branch_0x801aa600
    lwz     r3, 0x30(r7)
    cmplwi  r3, 0x0
    beq-    branch_0x801aa600
    lwz     r12, 0x0(r3)
    addi    r0, r4, 0x170
    lwz     r6, 0x20(r7)
    mr      r4, r5
    lwz     r12, 0x8(r12)
    lwz     r7, 0x14(r7)
    mr      r5, r0
    mtlr    r12
    li      r8, 0x2
    blrl
branch_0x801aa600:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init_tobj_resource__FP9_GXTexObjPv
init_tobj_resource__FP9_GXTexObjPv: # 0x801aa610
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    li      r7, 0x0
    stwu    sp, -0x38(sp)
    stmw    r23, 0x14(sp)
    mr      r23, r3
    lbz     r31, 0x0(r4)
    lhz     r30, 0x2(r4)
    lwz     r0, 0x1c(r4)
    mr      r5, r31
    lhz     r29, 0x4(r4)
    mr      r3, r30
    lbz     r28, 0x6(r4)
    lbz     r27, 0x7(r4)
    add     r24, r4, r0
    lbz     r26, 0x14(r4)
    lbz     r25, 0x15(r4)
    addi    r4, r29, 0x0
    bl      GXGetTexBufferSize
    addi    r4, r3, 0x0
    addi    r3, r24, 0x0
    bl      DCStoreRange
    addi    r3, r23, 0x0
    addi    r4, r24, 0x0
    addi    r5, r30, 0x0
    addi    r6, r29, 0x0
    addi    r7, r31, 0x0
    addi    r8, r28, 0x0
    addi    r9, r27, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x3f60(rtoc)
    addi    r3, r23, 0x0
    addi    r4, r26, 0x0
    fmr     f2, f1
    mr      r5, r25
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    lmw     r23, 0x14(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl draw_mist__FUsUsUsUsPv
draw_mist__FUsUsUsUsPv: # 0x801aa6cc
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stfd    f29, 0x128(sp)
    stfd    f28, 0x120(sp)
    stfd    f27, 0x118(sp)
    stfd    f26, 0x110(sp)
    stfd    f25, 0x108(sp)
    stfd    f24, 0x100(sp)
    stmw    r23, 0xdc(sp)
    mr      r24, r6
    clrlwi  r26, r5, 16
    clrlwi  r28, r24, 16
    stw     r26, 0xcc(sp)
    clrlwi  r25, r3, 16
    stw     r28, 0xbc(sp)
    clrlwi  r29, r4, 16
    mr      r27, r5
    stw     r0, 0xc8(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    stw     r0, 0xb8(sp)
    mr      r23, r7
    lfd     f3, 0xc8(sp)
    addi    r3, sp, 0x44
    stw     r25, 0xd4(sp)
    lfd     f4, -0x3ef8(rtoc)
    lfd     f2, 0xb8(sp)
    fsubs   f26, f3, f4
    lfs     f1, -0x3f50(rtoc)
    fsubs   f27, f2, f4
    lfs     f0, -0x3f4c(rtoc)
    stw     r29, 0xc4(sp)
    fdivs   f31, f1, f26
    stw     r0, 0xd0(sp)
    lwz     r8, -0x3f7c(rtoc)
    lfd     f1, 0xd0(sp)
    lwz     r6, -0x3f80(rtoc)
    fsubs   f24, f1, f4
    stw     r0, 0xc0(sp)
    fdivs   f30, f0, f27
    lhz     r5, -0x3f78(rtoc)
    lfd     f1, 0xc0(sp)
    stw     r8, 0x18(sp)
    lbz     r4, -0x3f76(rtoc)
    fsubs   f25, f1, f4
    sth     r5, 0x1c(sp)
    fadds   f4, f24, f26
    lfs     f5, -0x3f60(rtoc)
    fmr     f3, f24
    fadds   f2, f25, f27
    lfs     f6, -0x3f5c(rtoc)
    fmr     f1, f25
    stw     r6, 0x20(sp)
    stb     r4, 0x1e(sp)
    bl      C_MTXOrtho
    addi    r3, sp, 0x84
    bl      PSMTXIdentity
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, r27, 0x0
    addi    r6, r24, 0x0
    bl      GXSetTexCopySrc
    addi    r6, sp, 0x18
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      GXSetCopyFilter
    srawi   r24, r26, 1
    srawi   r27, r28, 1
    clrlwi  r3, r24, 16
    clrlwi  r4, r27, 16
    li      r5, 0x4
    li      r6, 0x1
    bl      GXSetTexCopyDst
    addi    r3, r23, 0x0
    li      r4, 0x0
    bl      GXCopyTex
    bl      GXPixModeSync
    addi    r4, r23, 0x0
    addi    r3, sp, 0x24
    clrlwi  r5, r24, 16
    clrlwi  r6, r27, 16
    li      r7, 0x4
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x3f60(rtoc)
    addi    r3, sp, 0x24
    li      r4, 0x1
    fmr     f2, f1
    li      r5, 0x1
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xe
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xf
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x10
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xe
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0x10
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x4
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
    addi    r3, sp, 0x24
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x4
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xd
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
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    bl      GXSetTevDirect
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xd
    li      r7, 0x0
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    bl      GXSetTevDirect
    li      r3, 0x2
    li      r4, 0x2
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x2
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xd
    li      r7, 0x0
    bl      GXSetTevColorIn
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x2
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x2
    bl      GXSetTevDirect
    li      r3, 0x3
    li      r4, 0x3
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x3
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xd
    li      r7, 0x0
    bl      GXSetTevColorIn
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x3
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
    bl      GXSetTevDirect
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    lwz     r0, 0x20(sp)
    addi    r4, sp, 0x14
    li      r3, 0x1
    stw     r0, 0x14(sp)
    bl      GXSetTevColor
    addi    r3, sp, 0x44
    li      r4, 0x1
    bl      GXSetProjection
    fmr     f1, f24
    lfs     f5, -0x3f60(rtoc)
    fmr     f2, f25
    lfs     f6, -0x3f5c(rtoc)
    fmr     f3, f26
    fmr     f4, f27
    bl      GXSetViewport
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    addi    r5, r26, 0x0
    addi    r6, r28, 0x0
    bl      GXSetScissor
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    bl      GXSetColorUpdate
    addi    r3, sp, 0x84
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lis     r27, 0xcc01
    lfs     f0, -0x3f5c(rtoc)
    sth     r30, -0x8000(r27)
    add     r0, r25, r26
    fneg    f26, f31
    add     r7, r29, r28
    sth     r31, -0x8000(r27)
    lfs     f1, -0x3f60(rtoc)
    fneg    f29, f30
    stfs    f26, -0x8000(r27)
    clrlwi  r28, r0, 16
    fsubs   f28, f0, f31
    clrlwi  r29, r7, 16
    stfs    f1, -0x8000(r27)
    fadds   f27, f0, f31
    li      r3, 0x1
    stfs    f31, -0x8000(r27)
    fsubs   f25, f0, f30
    fadds   f24, f0, f30
    stfs    f1, -0x8000(r27)
    li      r4, 0x1
    li      r5, 0x1
    stfs    f1, -0x8000(r27)
    li      r6, 0x5
    stfs    f29, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f30, -0x8000(r27)
    sth     r0, -0x8000(r27)
    sth     r31, -0x8000(r27)
    stfs    f28, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f27, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f29, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f30, -0x8000(r27)
    sth     r0, -0x8000(r27)
    sth     r7, -0x8000(r27)
    stfs    f28, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f27, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f25, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f24, -0x8000(r27)
    sth     r30, -0x8000(r27)
    sth     r7, -0x8000(r27)
    stfs    f26, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f31, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f25, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f24, -0x8000(r27)
    bl      GXSetBlendMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    sth     r30, -0x8000(r27)
    lfs     f1, -0x3f60(rtoc)
    sth     r31, -0x8000(r27)
    lfs     f0, -0x3f5c(rtoc)
    stfs    f26, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f31, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f29, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f30, -0x8000(r27)
    sth     r28, -0x8000(r27)
    sth     r31, -0x8000(r27)
    stfs    f28, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f27, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f29, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f30, -0x8000(r27)
    sth     r28, -0x8000(r27)
    sth     r29, -0x8000(r27)
    stfs    f28, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f27, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f25, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f24, -0x8000(r27)
    sth     r30, -0x8000(r27)
    sth     r29, -0x8000(r27)
    stfs    f26, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f31, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f25, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f24, -0x8000(r27)
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    lfd     f29, 0x128(sp)
    lfd     f28, 0x120(sp)
    lfd     f27, 0x118(sp)
    lfd     f26, 0x110(sp)
    lfd     f25, 0x108(sp)
    lfd     f24, 0x100(sp)
    lmw     r23, 0xdc(sp)
    addi    sp, sp, 0x140
    mtlr    r0
    blr


.globl clearEFB_alpha__9_unnamed_FssssUc
clearEFB_alpha__9_unnamed_FssssUc: # 0x801aae98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stfd    f29, 0xd0(sp)
    stfd    f28, 0xc8(sp)
    stmw    r25, 0xac(sp)
    addi    r26, r5, 0x0
    extsh.  r0, r26
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r28, r6, 0x0
    addi    r31, r7, 0x0
    bgt-    branch_0x801aaedc
    bl      SMSGetGameRenderWidth__Fv
    mr      r26, r3
branch_0x801aaedc:
    extsh.  r0, r28
    bgt-    branch_0x801aaeec
    bl      SMSGetGameRenderHeight__Fv
    mr      r28, r3
branch_0x801aaeec:
    extsh   r25, r29
    lfd     f2, -0x3f30(rtoc)
    extsh   r26, r26
    lfs     f5, -0x3f60(rtoc)
    xoris   r0, r25, 0x8000
    lfs     f6, -0x3f5c(rtoc)
    xoris   r4, r26, 0x8000
    stw     r0, 0xa4(sp)
    extsh   r27, r30
    extsh   r28, r28
    stw     r4, 0x9c(sp)
    lis     r4, 0x4330
    xoris   r3, r27, 0x8000
    stw     r4, 0xa0(sp)
    xoris   r0, r28, 0x8000
    stw     r3, 0x94(sp)
    addi    r3, sp, 0x14
    lfd     f1, 0xa0(sp)
    stw     r0, 0x8c(sp)
    fsubs   f31, f1, f2
    stw     r4, 0x98(sp)
    stw     r4, 0x90(sp)
    fmr     f3, f31
    lfd     f0, 0x98(sp)
    lfd     f1, 0x90(sp)
    fsubs   f29, f0, f2
    stw     r4, 0x88(sp)
    fsubs   f30, f1, f2
    lfd     f0, 0x88(sp)
    fadds   f4, f31, f29
    fsubs   f28, f0, f2
    fmr     f1, f30
    fadds   f2, f30, f28
    bl      C_MTXOrtho
    addi    r3, sp, 0x54
    bl      PSMTXIdentity
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    addi    r3, sp, 0x14
    li      r4, 0x1
    bl      GXSetProjection
    fmr     f1, f31
    lfs     f5, -0x3f60(rtoc)
    fmr     f2, f30
    lfs     f6, -0x3f5c(rtoc)
    fmr     f3, f29
    fmr     f4, f28
    bl      GXSetViewport
    addi    r3, r25, 0x0
    addi    r4, r27, 0x0
    addi    r5, r26, 0x0
    addi    r6, r28, 0x0
    bl      GXSetScissor
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    addi    r4, r31, 0x0
    bl      GXSetDstAlpha
    addi    r3, sp, 0x54
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lis     r5, 0xcc01
    sth     r29, -0x8000(r5)
    add     r0, r25, r26
    add     r3, r27, r28
    sth     r30, -0x8000(r5)
    extsh   r4, r0
    extsh   r0, r3
    sth     r4, -0x8000(r5)
    li      r3, 0x1
    sth     r30, -0x8000(r5)
    sth     r4, -0x8000(r5)
    sth     r0, -0x8000(r5)
    sth     r29, -0x8000(r5)
    sth     r0, -0x8000(r5)
    bl      GXSetColorUpdate
    li      r3, 0x0
    addi    r4, r31, 0x0
    bl      GXSetDstAlpha
    lmw     r25, 0xac(sp)
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    mtlr    r0
    lfd     f29, 0xd0(sp)
    lfd     f28, 0xc8(sp)
    addi    sp, sp, 0xe8
    blr


.globl drawCap__FRCQ29JGeometry8TVec3_f_f
drawCap__FRCQ29JGeometry8TVec3_f_f: # 0x801ab1a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stfd    f29, 0x28(sp)
    stfd    f28, 0x20(sp)
    fmr     f28, f1
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    lbz     r0, -0x62bc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ab1f4
    lfs     f0, -0x3ef0(rtoc)
    li      r0, 0x1
    stb     r0, -0x62bc(r13)
    stfs    f0, -0x62c0(r13)
branch_0x801ab1f4:
    lfs     f1, -0x3f54(rtoc)
    lfs     f0, -0x62c0(r13)
    fmuls   f1, f1, f0
    bl      cosf
    fdivs   f28, f28, f1
    lfs     f29, -0x3f60(rtoc)
    li      r3, 0xa0
    li      r4, 0x0
    li      r5, 0x1e
    bl      GXBegin
    li      r29, 0x0
    lis     r30, 0xcc01
    li      r31, 0x40
branch_0x801ab228:
    fmr     f1, f29
    bl      sinf
    lfs     f0, 0x8(r28)
    lfs     f31, 0x4(r28)
    fmadds  f30, f28, f1, f0
    fmr     f1, f29
    bl      cosf
    lfs     f2, 0x0(r28)
    addi    r29, r29, 0x1
    lfs     f0, -0x62c0(r13)
    cmpwi   r29, 0x1e
    fmadds  f1, f28, f1, f2
    fadds   f29, f29, f0
    stfs    f1, -0x8000(r30)
    stfs    f31, -0x8000(r30)
    stfs    f30, -0x8000(r30)
    stb     r31, -0x8000(r30)
    stb     r31, -0x8000(r30)
    blt+    branch_0x801ab228
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lfd     f29, 0x28(sp)
    lfd     f28, 0x20(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x40
    blr


.globl __ct__22TBathWaterGlobalParamsFv
__ct__22TBathWaterGlobalParamsFv: # 0x801ab2a4
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    subi    r30, r4, 0x5958
    addi    r0, r30, 0x22c
    addi    r31, r3, 0x0
    li      r27, 0x0
    stw     r0, 0x0(r3)
    subi    r3, rtoc, 0x3eec
    stw     r27, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    subi    r6, rtoc, 0x3eec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x2f1c
    stw     r29, 0x8(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x2f28
    stb     r27, 0x18(r31)
    subi    r3, rtoc, 0x3ee4
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    subi    r6, rtoc, 0x3ee4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    subi    r3, rtoc, 0x3edc
    stb     r27, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    subi    r6, rtoc, 0x3edc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    subi    r3, rtoc, 0x3ed4
    stb     r27, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    subi    r6, rtoc, 0x3ed4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    li      r24, 0xff
    subi    r3, rtoc, 0x3ecc
    stb     r24, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    subi    r6, rtoc, 0x3ecc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    li      r0, 0x90
    subi    r3, rtoc, 0x3ec4
    stb     r0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    subi    r6, rtoc, 0x3ec4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    li      r0, 0x18
    subi    r3, rtoc, 0x3ebc
    stb     r0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    subi    r6, rtoc, 0x3ebc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    subi    r3, rtoc, 0x3eb4
    stb     r27, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    subi    r6, rtoc, 0x3eb4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x248
    stb     r24, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x248
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x254
    stb     r24, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x254
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x260
    stb     r24, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x260
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    li      r0, 0x97
    addi    r3, r30, 0x26c
    stb     r0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x26c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r25, r3, 0x42c4
    stw     r25, 0xe4(r31)
    lis     r3, 0x803b
    subi    r24, r3, 0x42d0
    lfs     f0, -0x3f24(rtoc)
    addi    r3, r30, 0x278
    stfs    f0, 0xf4(r31)
    stw     r24, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x278
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    li      r26, 0x1
    addi    r3, r30, 0x284
    stb     r26, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x284
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x290
    stb     r27, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x290
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x29c
    stb     r27, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x29c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    subi    r3, rtoc, 0x3eac
    stb     r26, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    subi    r6, rtoc, 0x3eac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    li      r0, 0xc8
    subi    r3, rtoc, 0x3ea4
    stb     r0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    subi    r6, rtoc, 0x3ea4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x2a8
    stb     r26, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x2a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    subi    r3, rtoc, 0x3e9c
    stb     r27, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    subi    r6, rtoc, 0x3e9c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    subi    r3, rtoc, 0x3e94
    stb     r27, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    subi    r6, rtoc, 0x3e94
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x2b8
    stb     r26, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x2b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x1ac(r31)
    li      r0, -0x3
    lis     r3, 0x803b
    stw     r0, 0x1bc(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x2c8
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    li      r0, 0x3c
    addi    r3, r30, 0x2d4
    stw     r0, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1d4(r31)
    li      r0, 0x50
    addi    r3, r30, 0x2e4
    stw     r0, 0x1e4(r31)
    stw     r26, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x2e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x1e8(r31)
    addi    r3, r30, 0x2f0
    lfs     f0, -0x3e8c(rtoc)
    stfs    f0, 0x1f8(r31)
    stw     r24, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x2f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x1fc(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0x3e88(rtoc)
    stfs    f0, 0x20c(r31)
    stw     r24, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x210(r31)
    mr      r3, r31
    lfs     f0, -0x3e84(rtoc)
    stfs    f0, 0x220(r31)
    stw     r24, 0x210(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__16TBathWaterParamsFPCc
__ct__16TBathWaterParamsFPCc: # 0x801ab790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    mr      r31, r3
    li      r25, 0x0
    stw     r4, 0x0(r3)
    lis     r3, 0x8039
    subi    r30, r3, 0x5958
    stw     r25, 0x4(r31)
    addi    r3, r30, 0x308
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x308
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x2f1c
    stw     r28, 0x8(r31)
    li      r27, 0x1
    lis     r3, 0x803b
    stb     r27, 0x18(r31)
    subi    r26, r3, 0x2f28
    addi    r3, r30, 0x318
    stw     r26, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x318
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x1c(r31)
    addi    r3, r30, 0x328
    stb     r27, 0x2c(r31)
    stw     r26, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x328
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x30(r31)
    addi    r3, r30, 0x334
    stb     r27, 0x40(r31)
    stw     r26, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x44(r31)
    addi    r3, r30, 0x340
    stb     r27, 0x54(r31)
    stw     r26, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x340
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x58(r31)
    addi    r3, r30, 0x34c
    stb     r27, 0x68(r31)
    stw     r26, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x34c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x6c(r31)
    li      r0, 0x78
    lis     r3, 0x803b
    stw     r0, 0x7c(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x358
    stw     r26, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x358
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x80(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x3e80(rtoc)
    addi    r3, r30, 0x364
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x364
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x370
    lfs     f0, -0x3f58(rtoc)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x370
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x37c
    lfs     f0, -0x3e7c(rtoc)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x37c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x388
    lfs     f0, -0x3f24(rtoc)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x388
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x394
    lfs     f0, -0x3f5c(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x394
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    subi    r3, rtoc, 0x3e78
    lfs     f0, -0x3f5c(rtoc)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    subi    r6, rtoc, 0x3e78
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    subi    r3, rtoc, 0x3e6c
    lfs     f0, -0x3e70(rtoc)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    subi    r6, rtoc, 0x3e6c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x3a0
    lfs     f0, -0x3e64(rtoc)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x3a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    subi    r3, rtoc, 0x3e60
    lfs     f0, -0x3f54(rtoc)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    subi    r6, rtoc, 0x3e60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    subi    r3, rtoc, 0x3e54
    lfs     f0, -0x3e58(rtoc)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    subi    r6, rtoc, 0x3e54
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x3ac
    lfs     f0, -0x3e4c(rtoc)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x3ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    subi    r3, rtoc, 0x3e48
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    subi    r6, rtoc, 0x3e48
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x3b8
    lfs     f0, -0x3e40(rtoc)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x3b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x184(r31)
    mr      r3, r31
    stw     r25, 0x194(r31)
    stw     r26, 0x184(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__10TBathWaterFv
__dt__10TBathWaterFv: # 0x801abb68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801abbd0
    lis     r3, 0x803c
    addi    r3, r3, 0x27ac
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801abbc0
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801abbc0:
    extsh.  r0, r31
    ble-    branch_0x801abbd0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801abbd0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getHeight__22TBathWaterMeshRendererCFff
getHeight__22TBathWaterMeshRendererCFff: # 0x801abbec
    stwu    sp, -0x30(sp)
    addis   r4, r3, 0x8
    lha     r5, 0xac(r4)
    cmpwi   r5, 0x1
    bge-    branch_0x801abc08
    lfs     f1, -0x3f60(rtoc)
    b       branch_0x801abcac

branch_0x801abc08:
    lfs     f3, 0x5c(r4)
    lfs     f0, 0x80(r4)
    fsubs   f1, f1, f3
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    stfd    f0, 0x28(sp)
    cmpwi   r0, 0x0
    lwz     r6, 0x2c(sp)
    bge-    branch_0x801abc3c
    li      r6, 0x0
    b       branch_0x801abc48

branch_0x801abc3c:
    cmpw    r6, r5
    blt-    branch_0x801abc48
    subi    r6, r5, 0x1
branch_0x801abc48:
    addis   r4, r3, 0x8
    lfs     f1, 0x7c(r4)
    lfs     f0, 0x88(r4)
    fsubs   f1, f2, f1
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stfd    f0, 0x20(sp)
    cmpwi   r0, 0x0
    lwz     r0, 0x24(sp)
    bge-    branch_0x801abc80
    li      r0, 0x0
    b       branch_0x801abc8c

branch_0x801abc80:
    cmpw    r0, r5
    blt-    branch_0x801abc8c
    subi    r0, r5, 0x1
branch_0x801abc8c:
    mulli   r4, r6, 0x600
    mulli   r0, r0, 0xc
    add     r4, r3, r4
    add     r4, r4, r0
    addis   r3, r3, 0x8
    lfs     f1, 0x24(r4)
    lfs     f0, 0x6c(r3)
    fadds   f1, f1, f0
branch_0x801abcac:
    addi    sp, sp, 0x30
    blr


.globl prerender__22TBathWaterMeshRendererFPQ26JDrama9TGraphicsRC12TBathtubDataPP10TBathWaterPP16TBathWaterParamsi
prerender__22TBathWaterMeshRendererFPQ26JDrama9TGraphicsRC12TBathtubDataPP10TBathWaterPP16TBathWaterParamsi: # 0x801abcb4
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x380(sp)
    stfd    f31, 0x378(sp)
    stfd    f30, 0x370(sp)
    stfd    f29, 0x368(sp)
    stfd    f28, 0x360(sp)
    stfd    f27, 0x358(sp)
    stfd    f26, 0x350(sp)
    stfd    f25, 0x348(sp)
    stfd    f24, 0x340(sp)
    stfd    f23, 0x338(sp)
    stfd    f22, 0x330(sp)
    stfd    f21, 0x328(sp)
    stmw    r16, 0x2e8(sp)
    mr      r27, r3
    addis   r4, r27, 0x8
    mr      r28, r5
    addi    r29, r6, 0x0
    mr      r30, r7
    addi    r31, r8, 0x0
    lwz     r3, 0x134(r4)
    lfs     f0, 0x3c(r5)
    lwz     r3, 0x1e4(r3)
    lfs     f4, -0x3f58(rtoc)
    fneg    f31, f0
    clrrwi  r3, r3, 2
    sth     r3, 0xac(r4)
    fmuls   f26, f4, f0
    lha     r3, 0xac(r4)
    lfd     f1, -0x3f30(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x3f5c(rtoc)
    stw     r3, 0x2e4(sp)
    addi    r3, sp, 0x1cc
    stw     r0, 0x2e0(sp)
    lfd     f0, 0x2e0(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0xb0(r4)
    lfs     f5, 0x3c(r5)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x44(r5)
    fneg    f30, f5
    fmuls   f21, f4, f5
    lfs     f3, 0x8(r5)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r5)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lfs     f0, 0x3c(r28)
    lfs     f1, 0x44(r28)
    fmuls   f2, f0, f0
    lfs     f0, -0x3f60(rtoc)
    fmuls   f1, f1, f1
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    lfs     f1, 0x4(r28)
    addi    r3, sp, 0x1d8
    lfs     f0, 0x44(r28)
    lfs     f3, 0x8(r28)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r28)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lfs     f28, 0x1dc(sp)
    addi    r3, sp, 0x1e4
    lfs     f1, 0x4(r28)
    lfs     f0, 0x44(r28)
    fadds   f28, f28, f21
    lfs     f3, 0x8(r28)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r28)
    lfs     f29, 0x1d8(sp)
    lfs     f27, 0x1e0(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lfs     f1, 0x1e8(sp)
    addis   r3, r27, 0x8
    lfs     f0, 0x1e4(sp)
    addi    r4, sp, 0x158
    fadds   f1, f1, f30
    fsubs   f2, f0, f29
    lfs     f4, -0x3f60(rtoc)
    lfs     f0, 0x1ec(sp)
    addi    r5, sp, 0x1c0
    stfs    f4, 0x1c0(sp)
    fsubs   f1, f1, f28
    lfs     f3, -0x3f44(rtoc)
    stfs    f2, 0x158(sp)
    fsubs   f0, f0, f27
    addi    r3, r3, 0x20
    stfs    f4, 0x1c4(sp)
    stfs    f1, 0x15c(sp)
    stfs    f3, 0x1c8(sp)
    stfs    f0, 0x160(sp)
    bl      setLookDir__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addis   r25, r27, 0x8
    lfs     f1, 0x20(r25)
    lis     r3, 0x8040
    lfs     f0, 0x24(r25)
    addi    r3, r3, 0x45dc
    fneg    f1, f1
    fmuls   f0, f28, f0
    lfs     f2, 0x28(r25)
    fmsubs  f0, f29, f1, f0
    fnmsubs  f0, f27, f2, f0
    stfs    f0, 0x2c(r25)
    lfs     f1, 0x30(r25)
    lfs     f0, 0x34(r25)
    fneg    f1, f1
    lfs     f2, 0x38(r25)
    fmuls   f0, f28, f0
    fmsubs  f0, f29, f1, f0
    fnmsubs  f0, f27, f2, f0
    stfs    f0, 0x3c(r25)
    lfs     f1, 0x40(r25)
    lfs     f0, 0x44(r25)
    fneg    f1, f1
    lfs     f2, 0x48(r25)
    fmuls   f0, f28, f0
    fmsubs  f0, f29, f1, f0
    fnmsubs  f0, f27, f2, f0
    stfs    f0, 0x4c(r25)
    lwz     r4, -0x7118(r13)
    addi    r16, r4, 0x16c
    bl      drawInit__6J3DSysFv
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x3ef8(rtoc)
    stw     r0, 0x2e4(sp)
    lis     r17, 0x4330
    stw     r17, 0x2e0(sp)
    lfd     f0, 0x2e0(sp)
    fsubs   f21, f0, f1
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfs     f1, -0x3f60(rtoc)
    stw     r0, 0x2dc(sp)
    fmr     f4, f21
    lfd     f3, -0x3ef8(rtoc)
    fmr     f2, f1
    stw     r17, 0x2d8(sp)
    fmr     f5, f1
    lfd     f0, 0x2d8(sp)
    lfs     f6, -0x3f5c(rtoc)
    fsubs   f3, f0, f3
    bl      GXSetViewport
    addi    r3, sp, 0x280
    bl      __ct__Q29JGeometry13SMatrix44C_f_Fv
    lwz     r3, 0x134(r25)
    lfs     f0, -0x3f54(rtoc)
    lfs     f30, 0x220(r3)
    fmuls   f27, f0, f30
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f2, -0x3ef8(rtoc)
    stw     r0, 0x2d4(sp)
    lfs     f0, 0xb0(r25)
    stw     r17, 0x2d0(sp)
    lfd     f1, 0x2d0(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f30, f1
    fnmsubs  f21, f0, f1, f27
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    fsubs   f0, f27, f21
    stw     r0, 0x2cc(sp)
    fadds   f1, f27, f21
    lfs     f4, -0x3f4c(rtoc)
    fsubs   f7, f26, f31
    stw     r17, 0x2c8(sp)
    fdivs   f2, f4, f0
    lfd     f6, -0x3ef8(rtoc)
    addi    r3, sp, 0x280
    lfd     f5, 0x2c8(sp)
    lfs     f3, 0xb0(r25)
    fsubs   f0, f5, f6
    li      r4, 0x1
    fmuls   f0, f30, f0
    fmsubs  f3, f3, f0, f27
    fadds   f0, f3, f27
    fsubs   f3, f3, f27
    fdivs   f0, f4, f0
    stfs    f0, 0x280(sp)
    lfs     f4, -0x3f60(rtoc)
    lfs     f6, -0x3f00(rtoc)
    lfs     f5, 0x280(sp)
    fsubs   f0, f7, f4
    fmuls   f5, f6, f5
    fmadds  f3, f5, f3, f4
    stfs    f3, 0x28c(sp)
    stfs    f2, 0x294(sp)
    lfs     f2, 0x294(sp)
    fmuls   f2, f6, f2
    fmadds  f1, f2, f1, f4
    stfs    f1, 0x29c(sp)
    lfs     f1, -0x3f44(rtoc)
    fdivs   f0, f1, f0
    stfs    f0, 0x2a8(sp)
    lfs     f0, 0x2a8(sp)
    fmuls   f0, f0, f7
    stfs    f0, 0x2ac(sp)
    stfs    f4, 0x2b8(sp)
    stfs    f4, 0x298(sp)
    stfs    f4, 0x288(sp)
    stfs    f4, 0x2b4(sp)
    stfs    f4, 0x2a4(sp)
    stfs    f4, 0x284(sp)
    stfs    f4, 0x2b0(sp)
    stfs    f4, 0x2a0(sp)
    stfs    f4, 0x290(sp)
    lfs     f0, -0x3f5c(rtoc)
    stfs    f0, 0x2bc(sp)
    bl      GXSetProjection
    lha     r5, 0xac(r25)
    li      r3, 0x0
    li      r4, 0x0
    addi    r6, r5, 0x0
    bl      GXSetScissor
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    addi    r3, r25, 0x0
    li      r4, 0x0
    addi    r3, r3, 0x114
    bl      GXLoadTexObj
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x8
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetPixelFmt
    li      r3, 0x2
    bl      GXSetCullMode
    lwz     r17, 0x144(r25)
    li      r3, 0x9
    lwz     r4, 0x4c(r17)
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
    lwz     r4, 0x50(r17)
    li      r3, 0xa
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
    lwz     r4, 0x58(r17)
    li      r3, 0xb
    bl      J3DLoadArrayBasePtr__F7_GXAttrPv
    lwz     r3, 0x30(r17)
    li      r4, 0xc0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    bl      GXCallDisplayList
    addi    r3, r25, 0x20
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    lfs     f30, -0x3f5c(rtoc)
    li      r18, 0x0
    lfs     f29, -0x3f60(rtoc)
    li      r26, 0x0
    b       branch_0x801ac3d4

branch_0x801ac1e4:
    add     r20, r30, r26
    lwz     r3, 0x0(r20)
    lbz     r0, 0x54(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ac3cc
    add     r19, r29, r26
    lwz     r3, 0x0(r19)
    lwz     r17, 0x88(r3)
    b       branch_0x801ac3b0

branch_0x801ac208:
    lfs     f3, 0x48(r17)
    addi    r3, sp, 0x20c
    lwz     r5, 0x0(r20)
    fsubs   f0, f30, f3
    lwz     r4, 0x0(r17)
    lfs     f2, 0xe0(r5)
    lfs     f1, 0xcc(r5)
    fmuls   f0, f0, f2
    lfs     f4, 0x90(r5)
    lfs     f2, 0xf4(r5)
    fmadds  f0, f3, f1, f0
    lwz     r0, 0x4(r17)
    stw     r4, 0x23c(sp)
    fmuls   f9, f4, f0
    stw     r0, 0x240(sp)
    fneg    f0, f9
    lwz     r0, 0x8(r17)
    stw     r0, 0x244(sp)
    fmadds  f0, f2, f4, f0
    lfs     f1, 0x240(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x240(sp)
    lfs     f3, 0x44(r25)
    lfs     f8, 0x34(r25)
    fmuls   f1, f3, f29
    lfs     f4, 0x240(sp)
    lfs     f7, 0x40(r25)
    fmuls   f0, f3, f9
    lfs     f10, 0x24(r25)
    fmadds  f21, f7, f9, f1
    lfs     f2, 0x48(r25)
    fmadds  f22, f7, f29, f0
    lfs     f25, 0x23c(sp)
    fmuls   f6, f3, f4
    fmadds  f23, f7, f29, f1
    lfs     f3, 0x30(r25)
    fmuls   f13, f8, f29
    lfs     f5, 0x20(r25)
    fmuls   f27, f10, f29
    fmuls   f12, f10, f4
    lfs     f1, 0x244(sp)
    fmuls   f4, f8, f4
    lfs     f0, 0x4c(r25)
    fmadds  f6, f7, f25, f6
    fmuls   f26, f10, f9
    lfs     f7, 0x38(r25)
    fmuls   f11, f8, f9
    lfs     f8, 0x3c(r25)
    fmadds  f10, f3, f25, f4
    fmadds  f24, f2, f1, f6
    lfs     f6, 0x28(r25)
    fmadds  f12, f5, f25, f12
    lfs     f4, 0x2c(r25)
    fmadds  f21, f2, f29, f21
    fmadds  f25, f5, f9, f27
    fmadds  f28, f5, f29, f26
    stfs    f21, 0x8(sp)
    fmadds  f22, f2, f29, f22
    fmadds  f27, f5, f29, f27
    fmadds  f26, f6, f1, f12
    fmadds  f5, f3, f9, f13
    stfs    f22, 0xc(sp)
    fmadds  f2, f2, f9, f23
    fmadds  f12, f3, f29, f11
    fmadds  f11, f3, f29, f13
    fmadds  f10, f7, f1, f10
    stfs    f2, 0x10(sp)
    fadds   f0, f0, f24
    fmadds  f1, f6, f29, f25
    fmadds  f2, f6, f29, f28
    fmadds  f3, f6, f9, f27
    stfs    f0, 0x14(sp)
    fadds   f4, f4, f26
    fmadds  f5, f7, f29, f5
    fmadds  f6, f7, f29, f12
    fmadds  f7, f7, f9, f11
    fadds   f8, f8, f10
    bl      set__Q29JGeometry13SMatrix34C_f_Fffffffffffff
    addi    r3, sp, 0x20c
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    lwz     r21, 0x144(r25)
    li      r22, 0x0
    b       branch_0x801ac39c

branch_0x801ac358:
    lwz     r3, 0x30(r21)
    clrlslwi  r0, r22, 16, 2
    li      r24, 0x0
    lwzx    r23, r3, r0
    b       branch_0x801ac388

branch_0x801ac36c:
    lwz     r3, 0x38(r23)
    clrlslwi  r0, r24, 16, 2
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    beq-    branch_0x801ac384
    bl      draw__12J3DShapeDrawCFv
branch_0x801ac384:
    addi    r24, r24, 0x1
branch_0x801ac388:
    lhz     r0, 0x6(r23)
    clrlwi  r3, r24, 16
    cmplw   r3, r0
    blt+    branch_0x801ac36c
    addi    r22, r22, 0x1
branch_0x801ac39c:
    lhz     r0, 0x2c(r21)
    clrlwi  r3, r22, 16
    cmplw   r3, r0
    blt+    branch_0x801ac358
    addi    r17, r17, 0x50
branch_0x801ac3b0:
    lwz     r3, 0x0(r19)
    lwz     r0, 0x74(r3)
    lwz     r3, 0x88(r3)
    mulli   r0, r0, 0x50
    add     r0, r3, r0
    cmplw   r17, r0
    blt+    branch_0x801ac208
branch_0x801ac3cc:
    addi    r18, r18, 0x1
    addi    r26, r26, 0x4
branch_0x801ac3d4:
    cmpw    r18, r31
    blt+    branch_0x801ac1e4
    addis   r4, r27, 0x8
    lwz     r3, 0x134(r4)
    lbz     r0, 0x108(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ac630
    lbz     r0, 0x65(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x801ac630
    addi    r3, r4, 0x20
    li      r4, 0x0
    bl      GXLoadPosMtxImm
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
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    lfs     f1, 0x4(r28)
    addi    r3, sp, 0x1f4
    lfs     f0, 0x44(r28)
    lfs     f3, 0x8(r28)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r28)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lwz     r0, 0x1f4(sp)
    lwz     r3, 0x1f8(sp)
    stw     r0, 0x200(sp)
    lwz     r0, 0x1fc(sp)
    stw     r3, 0x204(sp)
    lfs     f0, -0x3f60(rtoc)
    stw     r0, 0x208(sp)
    lfs     f2, 0x3c(r28)
    lfs     f1, 0x44(r28)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fsubs   f27, f2, f1
    fcmpo   cr0, f27, f0
    cror    2, 0, 2
    bne-    branch_0x801ac4b0
    b       branch_0x801ac4d4

branch_0x801ac4b0:
    frsqrte f3, f27
    lfs     f2, -0x3f54(rtoc)
    lfs     f0, -0x3f58(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f27, f1, f0
    fmuls   f0, f2, f0
    fmuls   f27, f27, f0
branch_0x801ac4d4:
    lbz     r0, -0x62bc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ac4f0
    lfs     f0, -0x3ef0(rtoc)
    li      r0, 0x1
    stb     r0, -0x62bc(r13)
    stfs    f0, -0x62c0(r13)
branch_0x801ac4f0:
    lfs     f1, -0x3f54(rtoc)
    lfs     f0, -0x62c0(r13)
    fmuls   f1, f1, f0
    bl      cosf
    fdivs   f22, f27, f1
    lfs     f21, -0x3f60(rtoc)
    li      r3, 0xa0
    li      r4, 0x0
    li      r5, 0x1e
    bl      GXBegin
    lfs     f24, 0x208(sp)
    li      r19, 0x0
    lfs     f25, 0x204(sp)
    lis     r18, 0xcc01
    li      r17, 0x40
branch_0x801ac52c:
    fmr     f1, f21
    bl      sinf
    fmadds  f23, f22, f1, f24
    fmr     f1, f21
    bl      cosf
    lfs     f2, 0x200(sp)
    addi    r19, r19, 0x1
    lfs     f0, -0x62c0(r13)
    cmpwi   r19, 0x1e
    fmadds  f1, f22, f1, f2
    fadds   f21, f21, f0
    stfs    f1, -0x8000(r18)
    stfs    f25, -0x8000(r18)
    stfs    f23, -0x8000(r18)
    stb     r17, -0x8000(r18)
    stb     r17, -0x8000(r18)
    blt+    branch_0x801ac52c
    lfs     f1, -0x3f54(rtoc)
    addis   r4, r27, 0x8
    lfs     f0, 0x204(sp)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x204(sp)
    lwz     r3, 0x134(r4)
    lbz     r0, -0x62bc(r13)
    lfs     f1, 0xb0(r4)
    lfs     f0, 0x220(r3)
    extsb.  r0, r0
    fmadds  f21, f1, f0, f27
    bne-    branch_0x801ac5b0
    lfs     f0, -0x3ef0(rtoc)
    li      r0, 0x1
    stb     r0, -0x62bc(r13)
    stfs    f0, -0x62c0(r13)
branch_0x801ac5b0:
    lfs     f1, -0x3f54(rtoc)
    lfs     f0, -0x62c0(r13)
    fmuls   f1, f1, f0
    bl      cosf
    fdivs   f22, f21, f1
    lfs     f21, -0x3f60(rtoc)
    li      r3, 0xa0
    li      r4, 0x0
    li      r5, 0x1e
    bl      GXBegin
    lfs     f24, 0x208(sp)
    li      r19, 0x0
    lfs     f25, 0x204(sp)
    lis     r18, 0xcc01
    li      r17, 0x40
branch_0x801ac5ec:
    fmr     f1, f21
    bl      sinf
    fmadds  f23, f22, f1, f24
    fmr     f1, f21
    bl      cosf
    lfs     f2, 0x200(sp)
    addi    r19, r19, 0x1
    lfs     f0, -0x62c0(r13)
    cmpwi   r19, 0x1e
    fmadds  f1, f22, f1, f2
    fadds   f21, f21, f0
    stfs    f1, -0x8000(r18)
    stfs    f25, -0x8000(r18)
    stfs    f23, -0x8000(r18)
    stb     r17, -0x8000(r18)
    stb     r17, -0x8000(r18)
    blt+    branch_0x801ac5ec
branch_0x801ac630:
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetCopyFilter
    addis   r17, r27, 0x8
    lha     r5, 0xac(r17)
    li      r3, 0x0
    li      r4, 0x0
    addi    r6, r5, 0x0
    bl      GXSetTexCopySrc
    lha     r3, 0xac(r17)
    li      r5, 0x16
    li      r6, 0x0
    addi    r4, r3, 0x0
    bl      GXSetTexCopyDst
    lwz     r3, 0xa4(r17)
    li      r4, 0x0
    bl      GXCopyTex
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetPixelFmt
    addi    r3, r16, 0x0
    li      r4, 0x0
    bl      GXSetProjection
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r16, r3, 16
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r5, r3, 16
    addi    r6, r16, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetScissor
    lmw     r16, 0x2e8(sp)
    lwz     r0, 0x384(sp)
    lfd     f31, 0x378(sp)
    lfd     f30, 0x370(sp)
    mtlr    r0
    lfd     f29, 0x368(sp)
    lfd     f28, 0x360(sp)
    lfd     f27, 0x358(sp)
    lfd     f26, 0x350(sp)
    lfd     f25, 0x348(sp)
    lfd     f24, 0x340(sp)
    lfd     f23, 0x338(sp)
    lfd     f22, 0x330(sp)
    lfd     f21, 0x328(sp)
    addi    sp, sp, 0x380
    blr


.globl __ct__Q29JGeometry13SMatrix44C_f_Fv
__ct__Q29JGeometry13SMatrix44C_f_Fv: # 0x801ac6f4
    blr


.globl setLookDir__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
setLookDir__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801ac6f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stfd    f28, 0xb8(sp)
    stfd    f27, 0xb0(sp)
    stfd    f26, 0xa8(sp)
    stfd    f25, 0xa0(sp)
    stfd    f24, 0x98(sp)
    stfd    f23, 0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r5
    stw     r30, 0x88(sp)
    mr      r30, r4
    stw     r29, 0x84(sp)
    mr      r29, r3
    lfs     f2, 0x0(r4)
    lfs     f1, 0x4(r4)
    fmuls   f2, f2, f2
    lfs     f3, 0x8(r4)
    fmuls   f1, f1, f1
    lfs     f0, -0x3f40(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801ac780
    lfs     f0, -0x3f60(rtoc)
    fmr     f1, f0
    fmr     f2, f1
    b       branch_0x801ac7a4

branch_0x801ac780:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x3f5c(rtoc)
    lfs     f2, 0x0(r30)
    fmuls   f3, f0, f1
    lfs     f1, 0x4(r30)
    lfs     f0, 0x8(r30)
    fmuls   f2, f2, f3
    fmuls   f1, f1, f3
    fmuls   f0, f0, f3
branch_0x801ac7a4:
    fneg    f25, f0
    lfs     f6, 0x0(r31)
    fneg    f23, f2
    lfs     f5, 0x4(r31)
    fneg    f24, f1
    lfs     f4, 0x8(r31)
    fmuls   f2, f6, f25
    fmuls   f1, f5, f23
    lfs     f0, -0x3f40(rtoc)
    fmuls   f3, f4, f24
    fmsubs  f30, f4, f23, f2
    fmsubs  f29, f6, f24, f1
    fmsubs  f31, f5, f25, f3
    fmuls   f1, f30, f30
    fmuls   f4, f25, f30
    fmuls   f3, f23, f29
    fmadds  f1, f31, f31, f1
    fmuls   f2, f24, f31
    fmsubs  f28, f24, f29, f4
    fmadds  f1, f29, f29, f1
    fmsubs  f27, f25, f31, f3
    fmsubs  f26, f23, f30, f2
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801ac818
    lfs     f29, -0x3f60(rtoc)
    fmr     f30, f29
    fmr     f31, f30
    b       branch_0x801ac830

branch_0x801ac818:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x3f5c(rtoc)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    fmuls   f30, f30, f0
    fmuls   f29, f29, f0
branch_0x801ac830:
    fmuls   f1, f27, f27
    lfs     f0, -0x3f40(rtoc)
    fmadds  f1, f28, f28, f1
    fmadds  f1, f26, f26, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801ac85c
    lfs     f0, -0x3f60(rtoc)
    fmr     f2, f0
    fmr     f1, f2
    b       branch_0x801ac874

branch_0x801ac85c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x3f5c(rtoc)
    fmuls   f0, f0, f1
    fmuls   f1, f28, f0
    fmuls   f2, f27, f0
    fmuls   f0, f26, f0
branch_0x801ac874:
    stfs    f31, 0x0(r29)
    stfs    f30, 0x4(r29)
    stfs    f29, 0x8(r29)
    stfs    f1, 0x10(r29)
    stfs    f2, 0x14(r29)
    stfs    f0, 0x18(r29)
    stfs    f23, 0x20(r29)
    stfs    f24, 0x24(r29)
    stfs    f25, 0x28(r29)
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    lfd     f29, 0xc0(sp)
    lfd     f28, 0xb8(sp)
    lfd     f27, 0xb0(sp)
    lfd     f26, 0xa8(sp)
    lfd     f25, 0xa0(sp)
    lfd     f24, 0x98(sp)
    lfd     f23, 0x90(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl render__22TBathWaterMeshRendererFPQ26JDrama9TGraphicsRC12TBathtubDataPP10TBathWaterPP16TBathWaterParamsi
render__22TBathWaterMeshRendererFPQ26JDrama9TGraphicsRC12TBathtubDataPP10TBathWaterPP16TBathWaterParamsi: # 0x801ac8d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x480(sp)
    stfd    f31, 0x478(sp)
    stfd    f30, 0x470(sp)
    stfd    f29, 0x468(sp)
    stfd    f28, 0x460(sp)
    stfd    f27, 0x458(sp)
    stfd    f26, 0x450(sp)
    stfd    f25, 0x448(sp)
    stfd    f24, 0x440(sp)
    stfd    f23, 0x438(sp)
    stfd    f22, 0x430(sp)
    stfd    f21, 0x428(sp)
    stfd    f20, 0x420(sp)
    stmw    r16, 0x3e0(sp)
    addi    r31, r3, 0x0
    addi    r16, r4, 0x0
    addi    r25, r5, 0x0
    addi    r27, r6, 0x0
    addi    r21, r7, 0x0
    addi    r26, r8, 0x0
    lwz     r9, -0x7118(r13)
    addi    r0, r9, 0x1ec
    mr      r30, r0
    addi    r22, r9, 0x16c
    bl      SMSGetGameRenderWidth__Fv
    mr      r28, r3
    bl      SMSGetGameRenderHeight__Fv
    addi    r29, r3, 0x0
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      clearEFB_alpha__9_unnamed_FssssUc
    lwz     r18, -0x7118(r13)
    addi    r17, r18, 0x1ec
    bl      SMSGetGameRenderWidth__Fv
    mr      r23, r3
    bl      SMSGetGameRenderHeight__Fv
    addi    r0, r18, 0x16c
    addi    r24, r3, 0x0
    mr      r3, r0
    li      r4, 0x0
    bl      GXSetProjection
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
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    addis   r3, r31, 0x8
    li      r4, 0x0
    addi    r3, r3, 0xb4
    bl      GXLoadTexObj
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x4
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    bl      GXSetCullMode
    addi    r3, r17, 0x0
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r18, 0x0
    lfs     f31, 0x0(r17)
    lfs     f30, 0x4(r17)
    mr      r20, r18
    lfs     f29, 0x8(r17)
    lis     r19, 0xcc01
    lfs     f28, 0x10(r17)
    lfs     f27, 0x14(r17)
    lfs     f26, 0x18(r17)
    b       branch_0x801acc80

branch_0x801acb74:
    lwzx    r6, r21, r20
    add     r17, r27, r20
    lwz     r5, 0x0(r17)
    li      r3, 0x80
    lfs     f1, 0xa4(r6)
    lfs     f0, 0x90(r6)
    li      r4, 0x0
    lwz     r0, 0x74(r5)
    fmuls   f1, f1, f0
    clrlslwi  r5, r0, 18, 2
    fmuls   f25, f28, f1
    fmuls   f24, f27, f1
    fmuls   f23, f26, f1
    fmuls   f22, f31, f1
    fmuls   f21, f30, f1
    fmuls   f20, f29, f1
    bl      GXBegin
    lwz     r3, 0x0(r17)
    lwz     r4, 0x88(r3)
    b       branch_0x801acc5c

branch_0x801acbc4:
    lfs     f3, 0x0(r4)
    li      r3, 0x0
    lfs     f4, 0x4(r4)
    li      r0, 0x80
    fadds   f0, f3, f22
    lfs     f5, 0x8(r4)
    fadds   f1, f4, f21
    fadds   f2, f3, f25
    addi    r4, r4, 0x50
    stfs    f0, -0x8000(r19)
    fadds   f0, f5, f20
    fadds   f6, f4, f24
    stfs    f1, -0x8000(r19)
    fadds   f7, f5, f23
    fsubs   f1, f3, f22
    stfs    f0, -0x8000(r19)
    fsubs   f0, f3, f25
    stb     r3, -0x8000(r19)
    fsubs   f8, f4, f21
    fsubs   f9, f5, f20
    stb     r3, -0x8000(r19)
    fsubs   f3, f4, f24
    stfs    f2, -0x8000(r19)
    fsubs   f2, f5, f23
    stfs    f6, -0x8000(r19)
    stfs    f7, -0x8000(r19)
    stb     r3, -0x8000(r19)
    stb     r0, -0x8000(r19)
    stfs    f1, -0x8000(r19)
    stfs    f8, -0x8000(r19)
    stfs    f9, -0x8000(r19)
    stb     r0, -0x8000(r19)
    stb     r0, -0x8000(r19)
    stfs    f0, -0x8000(r19)
    stfs    f3, -0x8000(r19)
    stfs    f2, -0x8000(r19)
    stb     r0, -0x8000(r19)
    stb     r3, -0x8000(r19)
branch_0x801acc5c:
    lwz     r3, 0x0(r17)
    lwz     r0, 0x74(r3)
    lwz     r3, 0x88(r3)
    mulli   r0, r0, 0x50
    add     r0, r3, r0
    cmplw   r4, r0
    blt+    branch_0x801acbc4
    addi    r18, r18, 0x1
    addi    r20, r20, 0x4
branch_0x801acc80:
    cmpw    r18, r26
    blt+    branch_0x801acb74
    addis   r3, r31, 0x8
    lwz     r3, 0x134(r3)
    lbz     r0, 0x108(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801acd1c
    lbz     r0, 0x65(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x801acd1c
    lfs     f0, 0x3c(r25)
    lfs     f1, 0x44(r25)
    fmuls   f2, f0, f0
    lfs     f0, -0x3f60(rtoc)
    fmuls   f1, f1, f1
    fsubs   f20, f2, f1
    fcmpo   cr0, f20, f0
    cror    2, 0, 2
    bne-    branch_0x801accd0
    b       branch_0x801accf4

branch_0x801accd0:
    frsqrte f3, f20
    lfs     f2, -0x3f54(rtoc)
    lfs     f0, -0x3f58(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f20, f1, f0
    fmuls   f0, f2, f0
    fmuls   f20, f20, f0
branch_0x801accf4:
    lfs     f1, 0x4(r25)
    addi    r3, sp, 0x2fc
    lfs     f0, 0x44(r25)
    lfs     f3, 0x8(r25)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r25)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    fmr     f1, f20
    addi    r3, sp, 0x2fc
    bl      drawCap__FRCQ29JGeometry8TVec3_f_f
branch_0x801acd1c:
    addis   r26, r31, 0x8
    addis   r3, r31, 0x8
    lwz     r4, 0xa8(r26)
    addi    r5, r23, 0x0
    addi    r6, r24, 0x0
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    addi    r3, r3, 0xd4
    bl      GXInitTexObj
    lfs     f1, -0x3f60(rtoc)
    mr      r3, r26
    li      r4, 0x0
    fmr     f2, f1
    li      r5, 0x0
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    addi    r3, r3, 0xd4
    bl      GXInitTexObjLOD
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetCopyFilter
    addi    r5, r23, 0x0
    addi    r6, r24, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTexCopySrc
    addi    r3, r23, 0x0
    addi    r4, r24, 0x0
    li      r5, 0x27
    li      r6, 0x0
    bl      GXSetTexCopyDst
    lwz     r3, 0xa8(r26)
    li      r4, 0x0
    bl      GXCopyTex
    bl      GXPixModeSync
    addi    r3, r22, 0x0
    li      r4, 0x0
    bl      GXSetProjection
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x2
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x3f74(rtoc)
    addi    r4, sp, 0x324
    lwz     r5, -0x3f70(rtoc)
    li      r3, 0x4
    stw     r0, 0x3c4(sp)
    lwz     r6, 0x134(r26)
    lbz     r0, 0xb8(r6)
    stb     r0, 0x3c4(sp)
    lbz     r0, 0xcc(r6)
    stb     r0, 0x3c5(sp)
    lbz     r0, 0xe0(r6)
    stb     r0, 0x3c6(sp)
    lwz     r0, 0x3c4(sp)
    stw     r5, 0x3c0(sp)
    stw     r0, 0x324(sp)
    bl      GXSetChanMatColor
    lwz     r0, 0x3c0(sp)
    addi    r4, sp, 0x320
    li      r3, 0x4
    stw     r0, 0x320(sp)
    bl      GXSetChanAmbColor
    li      r3, 0x4
    bl      GXSetNumTexGens
    lwz     r3, 0x138(r26)
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r3, 0x13c(r26)
    li      r4, 0x1
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r3, 0x140(r26)
    li      r4, 0x2
    bl      load__10JUTTextureF11_GXTexMapID
    addi    r3, r26, 0x0
    li      r4, 0x3
    addi    r3, r3, 0xd4
    bl      GXLoadTexObj
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x21
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x4
    li      r6, 0x24
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x3
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r3, 0x134(r26)
    lfs     f2, 0x3c(r25)
    lfs     f1, -0x3f58(rtoc)
    lfs     f3, 0x220(r3)
    fneg    f0, f2
    fmuls   f20, f1, f2
    lfs     f4, 0xb0(r26)
    addi    r3, sp, 0x290
    fmuls   f1, f4, f3
    fsubs   f0, f0, f20
    stfs    f1, 0x80(r26)
    stfs    f0, 0x84(r26)
    stfs    f1, 0x88(r26)
    lfs     f1, -0x3f5c(rtoc)
    stfs    f1, 0x50(r26)
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x60(r26)
    stfs    f0, 0x70(r26)
    stfs    f0, 0x54(r26)
    stfs    f1, 0x64(r26)
    stfs    f0, 0x74(r26)
    stfs    f0, 0x58(r26)
    stfs    f0, 0x68(r26)
    stfs    f1, 0x78(r26)
    lfs     f1, 0x4(r25)
    lfs     f0, 0x44(r25)
    lfs     f3, 0x8(r25)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r25)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lwz     r0, 0x290(sp)
    lis     r4, 0x8040
    lwz     r5, 0x294(sp)
    addi    r3, r30, 0x0
    stw     r0, 0x284(sp)
    lwz     r0, 0x298(sp)
    addi    r4, r4, 0x45dc
    stw     r5, 0x288(sp)
    lfs     f2, -0x3f00(rtoc)
    stw     r0, 0x28c(sp)
    lwz     r5, 0x134(r26)
    lfs     f0, 0x284(sp)
    lfs     f1, 0x220(r5)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x5c(r26)
    lfs     f0, 0x288(sp)
    fadds   f0, f0, f20
    stfs    f0, 0x6c(r26)
    lwz     r5, 0x134(r26)
    lfs     f0, 0x28c(sp)
    lfs     f1, 0x220(r5)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x7c(r26)
    bl      PSMTXCopy
    lwz     r3, 0x148(r26)
    li      r4, 0x0
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r17, 0x24(r3)
    mr      r3, r17
    lwz     r12, 0x0(r17)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x3f5c(rtoc)
    li      r4, 0x1
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x1c(r3)
    lfs     f0, -0x3f54(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    mr      r3, r17
    lwz     r12, 0x0(r17)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x134(r26)
    li      r4, 0x2
    lfs     f0, 0x1f8(r5)
    stfs    f0, 0x10(r3)
    lwz     r5, 0x134(r26)
    lfs     f0, 0x1f8(r5)
    stfs    f0, 0x14(r3)
    lfs     f0, -0x3f60(rtoc)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x20(r3)
    lfs     f0, -0x3f54(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    mr      r3, r17
    lwz     r12, 0x0(r17)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x134(r26)
    lis     r5, 0x4330
    li      r4, 0x1
    lfs     f0, 0xf4(r6)
    stfs    f0, 0x10(r3)
    lwz     r6, 0x134(r26)
    lfs     f0, 0xf4(r6)
    stfs    f0, 0x14(r3)
    lwz     r7, 0x134(r26)
    lwz     r6, 0x0(r27)
    lwz     r8, 0x1d0(r7)
    lwz     r7, 0x6c(r6)
    xoris   r0, r8, 0x8000
    lfd     f2, -0x3ef8(rtoc)
    divwu   r6, r7, r8
    stw     r0, 0x3d4(sp)
    lfd     f1, -0x3f30(rtoc)
    stw     r5, 0x3d0(sp)
    lfd     f0, 0x3d0(sp)
    mullw   r0, r6, r8
    fsubs   f0, f0, f1
    subf    r0, r0, r7
    stw     r0, 0x3dc(sp)
    stw     r5, 0x3d8(sp)
    lfd     f1, 0x3d8(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x20(r3)
    lfs     f0, -0x3f54(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    mr      r3, r17
    lwz     r12, 0x0(r17)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r3, sp, 0x370
    bl      __ct__Q29JGeometry13SMatrix44C_f_Fv
    addi    r3, sp, 0x370
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    mr      r3, r17
    lwz     r12, 0x0(r17)
    addi    r18, sp, 0x370
    li      r4, 0x0
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    mr      r4, r18
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
    lwz     r12, 0x0(r17)
    mr      r3, r17
    addi    r4, r26, 0x50
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r17
    lwz     r12, 0x0(r17)
    li      r4, 0x0
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r3, r3, 0x64
    li      r4, 0x1e
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    mr      r3, r17
    lwz     r12, 0x0(r17)
    li      r4, 0x1
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r3, r3, 0x64
    li      r4, 0x21
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    mr      r3, r17
    lwz     r12, 0x0(r17)
    li      r4, 0x2
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r3, r3, 0x64
    li      r4, 0x24
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    li      r3, 0x1
    bl      GXSetNumIndStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetIndTexCoordScale
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x2
    bl      GXSetIndTexOrder
    lfs     f1, -0x3e8c(rtoc)
    addi    r4, sp, 0x358
    lfs     f0, -0x3f60(rtoc)
    li      r3, 0x1
    stfs    f1, 0x358(sp)
    stfs    f0, 0x35c(sp)
    stfs    f0, 0x360(sp)
    stfs    f0, 0x364(sp)
    stfs    f1, 0x368(sp)
    stfs    f0, 0x36c(sp)
    lwz     r5, 0x134(r26)
    lwz     r0, 0x1bc(r5)
    extsb   r5, r0
    bl      GXSetIndTexMtx
    lwz     r3, 0x134(r26)
    lbz     r0, 0x194(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x801ad264
    li      r3, 0x1
    bl      GXSetNumTevStages
    b       branch_0x801ad26c

branch_0x801ad264:
    li      r3, 0x3
    bl      GXSetNumTevStages
branch_0x801ad26c:
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x4
    bl      GXSetTevOrder
    addis   r3, r31, 0x8
    lwz     r3, 0x134(r3)
    lbz     r0, 0x194(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x801ad2cc
    bge-    branch_0x801ad2a4
    cmpwi   r0, 0x0
    bge-    branch_0x801ad2b0
    b       branch_0x801ad300

branch_0x801ad2a4:
    cmpwi   r0, 0x3
    bge-    branch_0x801ad300
    b       branch_0x801ad2e8

branch_0x801ad2b0:
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0x2
    li      r7, 0xe
    bl      GXSetTevColorIn
    b       branch_0x801ad300

branch_0x801ad2cc:
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    b       branch_0x801ad300

branch_0x801ad2e8:
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
branch_0x801ad300:
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x1
    bl      GXSetTevIndWarp
    li      r3, 0x0
    li      r4, 0xc
    bl      GXSetTevKColorSel
    lwz     r0, -0x3f6c(rtoc)
    addis   r17, r31, 0x8
    addi    r4, sp, 0x31c
    stw     r0, 0x318(sp)
    li      r3, 0x0
    lwz     r5, 0x134(r17)
    lbz     r0, 0x68(r5)
    stb     r0, 0x318(sp)
    lbz     r0, 0x7c(r5)
    stb     r0, 0x319(sp)
    lbz     r0, 0x90(r5)
    stb     r0, 0x31a(sp)
    lbz     r0, 0xa4(r5)
    stb     r0, 0x31b(sp)
    lwz     r0, 0x318(sp)
    stw     r0, 0x31c(sp)
    bl      GXSetTevKColor
    lwz     r0, -0x3f68(rtoc)
    addi    r4, sp, 0x314
    li      r3, 0x1
    stw     r0, 0x310(sp)
    lwz     r5, 0x134(r17)
    lbz     r0, 0x18(r5)
    stb     r0, 0x310(sp)
    lbz     r0, 0x2c(r5)
    stb     r0, 0x311(sp)
    lbz     r0, 0x40(r5)
    stb     r0, 0x312(sp)
    lbz     r0, 0x54(r5)
    stb     r0, 0x313(sp)
    lwz     r0, 0x310(sp)
    stw     r0, 0x314(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xf
    li      r5, 0x8
    li      r6, 0xa
    li      r7, 0x0
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x1
    bl      GXSetTevIndWarp
    li      r3, 0x2
    li      r4, 0x3
    li      r5, 0x3
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
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
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x2
    bl      GXSetTevDirect
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    bl      GXSetZCompLoc
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    bl      GXSetCullMode
    addi    r3, r30, 0x0
    addi    r4, r17, 0x50
    addi    r5, sp, 0x328
    bl      PSMTXConcat
    lha     r4, 0xac(r17)
    lwz     r3, 0xa4(r17)
    slwi    r0, r4, 2
    mullw   r4, r4, r0
    bl      DCInvalidateRange
    addi    r3, sp, 0x328
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r3, 0x134(r17)
    lbz     r0, 0x1a8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ad57c
    lbz     r4, 0x158(r3)
    li      r3, 0x6
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    b       branch_0x801ad594

branch_0x801ad57c:
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
branch_0x801ad594:
    addis   r17, r31, 0x8
    lfs     f1, 0x84(r17)
    mr      r3, r31
    bl      makeHeightMap__22TBathWaterMeshRendererFf
    mr      r3, r31
    bl      makeNormalMap__22TBathWaterMeshRendererFv
    mr      r3, r31
    bl      calcCoord__22TBathWaterMeshRendererFv
    addi    r3, r31, 0x20
    lis     r4, 0x3
    bl      DCStoreRange
    addis   r3, r31, 0x3
    lis     r4, 0x3
    addi    r3, r3, 0x20
    bl      DCStoreRange
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x3
    bl      GXSetVtxDesc
    li      r3, 0xa
    li      r4, 0x3
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x3
    bl      GXSetVtxDesc
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
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    addi    r4, r31, 0x20
    li      r3, 0x9
    li      r5, 0xc
    bl      GXSetArray
    addis   r4, r31, 0x3
    li      r3, 0xa
    li      r5, 0xc
    addi    r4, r4, 0x20
    bl      GXSetArray
    addis   r4, r31, 0x6
    li      r3, 0xd
    li      r5, 0x8
    addi    r4, r4, 0x20
    bl      GXSetArray
    lwz     r3, 0x154(r17)
    lwz     r4, 0x158(r17)
    bl      GXCallDisplayList
    lwz     r3, 0x134(r17)
    lbz     r0, 0x130(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ad6ac
    lwz     r7, 0x150(r17)
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      draw_mist__FUsUsUsUsPv
branch_0x801ad6ac:
    addi    r3, r16, 0x74
    li      r4, 0x0
    bl      GXSetProjection
    lmw     r16, 0x3e0(sp)
    lwz     r0, 0x484(sp)
    lfd     f31, 0x478(sp)
    lfd     f30, 0x470(sp)
    mtlr    r0
    lfd     f29, 0x468(sp)
    lfd     f28, 0x460(sp)
    lfd     f27, 0x458(sp)
    lfd     f26, 0x450(sp)
    lfd     f25, 0x448(sp)
    lfd     f24, 0x440(sp)
    lfd     f23, 0x438(sp)
    lfd     f22, 0x430(sp)
    lfd     f21, 0x428(sp)
    lfd     f20, 0x420(sp)
    addi    sp, sp, 0x480
    blr


.globl calcCoord__22TBathWaterMeshRendererFv
calcCoord__22TBathWaterMeshRendererFv: # 0x801ad6fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r22, 0x38(sp)
    addi    r23, r3, 0x0
    addis   r8, r23, 0x8
    lha     r0, 0xae(r8)
    lha     r3, 0xac(r8)
    cmpw    r0, r3
    beq-    branch_0x801adb1c
    sth     r3, 0xae(r8)
    li      r10, 0x0
    li      r3, 0x0
    lfd     f2, -0x3f30(rtoc)
    lis     r7, 0x4330
    b       branch_0x801ad7ac

branch_0x801ad73c:
    add     r9, r23, r3
    xoris   r6, r10, 0x8000
    li      r11, 0x0
    li      r4, 0x0
    b       branch_0x801ad798

branch_0x801ad750:
    stw     r6, 0x2c(sp)
    xoris   r0, r11, 0x8000
    add     r5, r9, r4
    lfs     f3, 0xb0(r8)
    stw     r0, 0x34(sp)
    addis   r5, r5, 0x6
    stw     r7, 0x28(sp)
    addi    r11, r11, 0x1
    addi    r4, r4, 0x8
    stw     r7, 0x30(sp)
    lfd     f0, 0x28(sp)
    lfd     f1, 0x30(sp)
    fsubs   f0, f0, f2
    fsubs   f1, f1, f2
    fmuls   f0, f0, f3
    fmuls   f1, f1, f3
    stfs    f0, 0x20(r5)
    stfs    f1, 0x24(r5)
branch_0x801ad798:
    lha     r0, 0xae(r8)
    cmpw    r11, r0
    blt+    branch_0x801ad750
    addi    r10, r10, 0x1
    addi    r3, r3, 0x400
branch_0x801ad7ac:
    lha     r0, 0xae(r8)
    cmpw    r10, r0
    blt+    branch_0x801ad73c
    addis   r3, r23, 0x6
    lis     r4, 0x2
    addi    r3, r3, 0x20
    bl      DCStoreRange
    lfd     f2, -0x3f30(rtoc)
    addis   r22, r23, 0x8
    li      r9, 0x0
    li      r3, 0x0
    lis     r5, 0x4330
    b       branch_0x801ad850

branch_0x801ad7e0:
    add     r7, r23, r3
    xoris   r6, r9, 0x8000
    li      r10, 0x0
    li      r4, 0x0
    b       branch_0x801ad83c

branch_0x801ad7f4:
    stw     r6, 0x2c(sp)
    xoris   r0, r10, 0x8000
    add     r8, r7, r4
    lfs     f1, 0x80(r22)
    stw     r5, 0x28(sp)
    addi    r10, r10, 0x1
    lfd     f0, 0x28(sp)
    addi    r4, r4, 0xc
    stw     r0, 0x34(sp)
    fsubs   f0, f0, f2
    stw     r5, 0x30(sp)
    fmuls   f1, f1, f0
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f2
    stfs    f1, 0x20(r8)
    lfs     f1, 0x88(r22)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r8)
branch_0x801ad83c:
    lha     r0, 0xae(r22)
    cmpw    r10, r0
    blt+    branch_0x801ad7f4
    addi    r9, r9, 0x1
    addi    r3, r3, 0x600
branch_0x801ad850:
    lha     r0, 0xae(r22)
    cmpw    r9, r0
    blt+    branch_0x801ad7e0
    lis     r5, 0x3
    lwz     r4, 0x154(r22)
    addi    r3, sp, 0x14
    addi    r5, r5, 0x40
    bl      GDInitGDLObj
    addi    r0, sp, 0x14
    stw     r0, -0x5778(r13)
    lha     r3, 0xac(r22)
    lwz     r5, -0x5778(r13)
    subi    r0, r3, 0x1
    mullw   r4, r3, r0
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    clrlslwi  r22, r4, 17, 1
    ble-    branch_0x801ad8a4
    bl      GDOverflowed
branch_0x801ad8a4:
    lwz     r4, -0x5778(r13)
    li      r5, 0x98
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x801ad8d8
    bl      GDOverflowed
branch_0x801ad8d8:
    lwz     r4, -0x5778(r13)
    srawi   r5, r22, 8
    addis   r31, r23, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r22, 0x0(r3)
    lha     r3, 0xac(r31)
    subi    r28, r3, 0x1
    b       branch_0x801adaec

branch_0x801ad914:
    subi    r27, r28, 0x1
    li      r26, 0x0
    li      r22, 0x0
    b       branch_0x801adadc

branch_0x801ad924:
    lwz     r4, -0x5778(r13)
    add     r25, r28, r22
    add     r24, r27, r22
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x801ad948
    bl      GDOverflowed
branch_0x801ad948:
    lwz     r4, -0x5778(r13)
    extrwi  r30, r25, 8, 16
    clrlwi  r29, r25, 24
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r25, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x801ad994
    bl      GDOverflowed
branch_0x801ad994:
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x801ad9d8
    bl      GDOverflowed
branch_0x801ad9d8:
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x801ada1c
    bl      GDOverflowed
branch_0x801ada1c:
    lwz     r4, -0x5778(r13)
    extrwi  r29, r24, 8, 16
    clrlwi  r30, r24, 24
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r24, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x801ada68
    bl      GDOverflowed
branch_0x801ada68:
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x801adaac
    bl      GDOverflowed
branch_0x801adaac:
    lwz     r4, -0x5778(r13)
    addi    r26, r26, 0x1
    addi    r22, r22, 0x80
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
branch_0x801adadc:
    lha     r0, 0xac(r31)
    cmpw    r26, r0
    blt+    branch_0x801ad924
    subi    r28, r28, 0x1
branch_0x801adaec:
    cmpwi   r28, 0x0
    bgt+    branch_0x801ad914
    bl      GDPadCurr32
    bl      GDFlushCurrToMem
    lwz     r4, -0x5778(r13)
    addis   r3, r23, 0x8
    li      r0, 0x0
    lwz     r5, 0x0(r4)
    lwz     r4, 0x8(r4)
    subf    r4, r5, r4
    stw     r4, 0x158(r3)
    stw     r0, -0x5778(r13)
branch_0x801adb1c:
    lmw     r22, 0x38(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl makeNormalMap__22TBathWaterMeshRendererFv
makeNormalMap__22TBathWaterMeshRendererFv: # 0x801adb30
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stfd    f29, 0x68(sp)
    stfd    f28, 0x60(sp)
    stfd    f27, 0x58(sp)
    stmw    r22, 0x30(sp)
    mr      r28, r3
    addis   r4, r28, 0x8
    lha     r3, 0xac(r4)
    lwz     r4, 0x134(r4)
    xoris   r3, r3, 0x8000
    lfd     f1, -0x3f30(rtoc)
    stw     r3, 0x2c(sp)
    lfs     f0, 0x220(r4)
    stw     r0, 0x28(sp)
    fneg    f2, f0
    lbz     r0, 0x11c(r4)
    lfd     f0, 0x28(sp)
    cmplwi  r0, 0x0
    fsubs   f0, f0, f1
    fdivs   f30, f2, f0
    bne-    branch_0x801adba0
    lfs     f0, -0x3f4c(rtoc)
    fmuls   f30, f30, f0
branch_0x801adba0:
    fmuls   f31, f30, f30
    lfs     f27, -0x3f40(rtoc)
    lfs     f28, -0x3f60(rtoc)
    addis   r25, r28, 0x8
    lfs     f29, -0x3f5c(rtoc)
    li      r30, 0x0
    li      r27, 0x0
    b       branch_0x801add0c

branch_0x801adbc0:
    add     r31, r28, r27
    li      r29, 0x0
    li      r26, 0x0
    b       branch_0x801adcf8

branch_0x801adbd0:
    cmpwi   r30, 0x0
    ble-    branch_0x801adbe0
    subi    r0, r30, 0x1
    b       branch_0x801adbe4

branch_0x801adbe0:
    li      r0, 0x0
branch_0x801adbe4:
    mulli   r0, r0, 0x600
    add     r3, r0, r26
    subi    r4, r4, 0x1
    addi    r0, r3, 0x24
    cmpw    r30, r4
    lfsx    f0, r28, r0
    bge-    branch_0x801adc08
    addi    r0, r30, 0x1
    b       branch_0x801adc0c

branch_0x801adc08:
    mr      r0, r30
branch_0x801adc0c:
    mulli   r0, r0, 0x600
    add     r3, r0, r26
    addi    r0, r3, 0x24
    cmpwi   r29, 0x0
    lfsx    f1, r28, r0
    ble-    branch_0x801adc2c
    subi    r0, r29, 0x1
    b       branch_0x801adc30

branch_0x801adc2c:
    li      r0, 0x0
branch_0x801adc30:
    mulli   r3, r0, 0xc
    addi    r0, r3, 0x24
    cmpw    r29, r4
    lfsx    f2, r31, r0
    bge-    branch_0x801adc4c
    addi    r0, r29, 0x1
    b       branch_0x801adc50

branch_0x801adc4c:
    mr      r0, r29
branch_0x801adc50:
    mulli   r3, r0, 0xc
    fsubs   f0, f1, f0
    addi    r0, r3, 0x24
    fmuls   f0, f30, f0
    lfsx    f1, r31, r0
    add     r3, r31, r26
    addis   r23, r3, 0x3
    fsubs   f1, f1, f2
    stfs    f0, 0x20(r23)
    addis   r24, r3, 0x3
    addis   r22, r3, 0x3
    fmuls   f0, f1, f30
    stfs    f31, 0x24(r24)
    stfs    f0, 0x28(r22)
    lfsu    f1, 0x20(r23)
    lfsu    f0, 0x24(r24)
    fmuls   f1, f1, f1
    lfsu    f2, 0x28(r22)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f27
    cror    2, 0, 2
    bne-    branch_0x801adcc4
    stfs    f28, 0x0(r22)
    stfs    f28, 0x0(r24)
    stfs    f28, 0x0(r23)
    b       branch_0x801adcf0

branch_0x801adcc4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f29, f1
    lfs     f0, 0x0(r23)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r23)
    lfs     f0, 0x0(r24)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r24)
    lfs     f0, 0x0(r22)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r22)
branch_0x801adcf0:
    addi    r29, r29, 0x1
    addi    r26, r26, 0xc
branch_0x801adcf8:
    lha     r4, 0xac(r25)
    cmpw    r29, r4
    blt+    branch_0x801adbd0
    addi    r30, r30, 0x1
    addi    r27, r27, 0x600
branch_0x801add0c:
    lha     r0, 0xac(r25)
    cmpw    r30, r0
    blt+    branch_0x801adbc0
    lmw     r22, 0x30(sp)
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lfd     f29, 0x68(sp)
    lfd     f28, 0x60(sp)
    lfd     f27, 0x58(sp)
    addi    sp, sp, 0x80
    blr


.globl makeHeightMap__22TBathWaterMeshRendererFf
makeHeightMap__22TBathWaterMeshRendererFf: # 0x801add40
    stwu    sp, -0x40(sp)
    addis   r4, r3, 0x8
    li      r7, 0x0
    stmw    r25, 0x24(sp)
    lis     r12, 0x4330
    lha     r0, 0xac(r4)
    lfs     f3, -0x3e3c(rtoc)
    srawi   r0, r0, 2
    lfd     f2, -0x3f30(rtoc)
    extsh   r6, r0
    b       branch_0x801ade38

branch_0x801add6c:
    extsh   r5, r7
    slwi    r0, r5, 2
    li      r8, 0x0
    b       branch_0x801ade28

branch_0x801add7c:
    extsh   r11, r8
    lwz     r10, 0xa4(r4)
    mullw   r9, r11, r6
    add     r9, r5, r9
    slwi    r9, r9, 6
    add     r9, r10, r9
    slwi    r27, r11, 2
    li      r10, 0x0
    b       branch_0x801ade18

branch_0x801adda0:
    extsh   r30, r10
    add     r11, r30, r0
    mulli   r11, r11, 0x600
    slwi    r30, r30, 1
    add     r29, r9, r30
    add     r28, r3, r11
    li      r25, 0x0
    b       branch_0x801ade08

branch_0x801addc0:
    extsh   r26, r25
    slwi    r11, r26, 3
    add     r31, r29, r11
    lhz     r30, 0x0(r31)
    add     r11, r26, r27
    lhz     r31, 0x20(r31)
    mulli   r11, r11, 0xc
    insrwi  r31, r30, 8, 8
    xoris   r31, r31, 0x8000
    stw     r31, 0x1c(sp)
    addi    r11, r11, 0x24
    addi    r25, r25, 0x1
    stw     r12, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f3, f0
    fmuls   f0, f1, f0
    stfsx   f0, r28, r11
branch_0x801ade08:
    extsh   r11, r25
    cmpwi   r11, 0x4
    blt+    branch_0x801addc0
    addi    r10, r10, 0x1
branch_0x801ade18:
    extsh   r11, r10
    cmpwi   r11, 0x4
    blt+    branch_0x801adda0
    addi    r8, r8, 0x1
branch_0x801ade28:
    extsh   r9, r8
    cmpw    r9, r6
    blt+    branch_0x801add7c
    addi    r7, r7, 0x1
branch_0x801ade38:
    extsh   r0, r7
    cmpw    r0, r6
    blt+    branch_0x801add6c
    lmw     r25, 0x24(sp)
    addi    sp, sp, 0x40
    blr


.globl prerender__22TBathWaterFlatRendererFPQ26JDrama9TGraphicsRC12TBathtubDataPP10TBathWaterPP16TBathWaterParamsi
prerender__22TBathWaterFlatRendererFPQ26JDrama9TGraphicsRC12TBathtubDataPP10TBathWaterPP16TBathWaterParamsi: # 0x801ade50
    blr


.globl getHeight__22TBathWaterFlatRendererCFff
getHeight__22TBathWaterFlatRendererCFff: # 0x801ade54
    lfs     f1, -0x3f60(rtoc)
    blr


.globl render__22TBathWaterFlatRendererFPQ26JDrama9TGraphicsRC12TBathtubDataPP10TBathWaterPP16TBathWaterParamsi
render__22TBathWaterFlatRendererFPQ26JDrama9TGraphicsRC12TBathtubDataPP10TBathWaterPP16TBathWaterParamsi: # 0x801ade5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x258(sp)
    stfd    f31, 0x250(sp)
    stfd    f30, 0x248(sp)
    stfd    f29, 0x240(sp)
    stfd    f28, 0x238(sp)
    stfd    f27, 0x230(sp)
    stfd    f26, 0x228(sp)
    stfd    f25, 0x220(sp)
    stfd    f24, 0x218(sp)
    stfd    f23, 0x210(sp)
    stfd    f22, 0x208(sp)
    stfd    f21, 0x200(sp)
    stfd    f20, 0x1f8(sp)
    stmw    r20, 0x1c8(sp)
    addi    r21, r3, 0x0
    addi    r22, r4, 0x0
    addi    r23, r5, 0x0
    addi    r24, r6, 0x0
    addi    r25, r7, 0x0
    addi    r26, r8, 0x0
    bl      SMSGetGameRenderWidth__Fv
    mr      r29, r3
    bl      SMSGetGameRenderHeight__Fv
    lwz     r4, 0x2c(r21)
    mr      r28, r3
    lbz     r0, 0x144(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x801adeec
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      clearEFB_alpha__9_unnamed_FssssUc
branch_0x801adeec:
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
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
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    addi    r3, r21, 0x4
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x8
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x4
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    bl      GXSetCullMode
    addi    r3, r22, 0x74
    li      r4, 0x0
    bl      GXSetProjection
    addi    r3, r22, 0xb4
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    lfs     f31, 0xb4(r22)
    li      r27, 0x0
    lfs     f30, 0xb8(r22)
    li      r20, 0x0
    lfs     f29, 0xbc(r22)
    lfs     f28, 0xc4(r22)
    lis     r31, 0xcc01
    lfs     f27, 0xc8(r22)
    lfs     f26, 0xcc(r22)
    b       branch_0x801ae258

branch_0x801ae140:
    lwzx    r3, r25, r20
    lbz     r0, 0x54(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ae250
    lfs     f1, 0xa4(r3)
    add     r30, r24, r20
    lfs     f0, 0x90(r3)
    li      r3, 0x80
    lwz     r5, 0x0(r30)
    fmuls   f1, f1, f0
    li      r4, 0x0
    lwz     r0, 0x74(r5)
    fmuls   f25, f28, f1
    clrlslwi  r5, r0, 18, 2
    fmuls   f24, f27, f1
    fmuls   f23, f26, f1
    fmuls   f22, f31, f1
    fmuls   f21, f30, f1
    fmuls   f20, f29, f1
    bl      GXBegin
    lwz     r3, 0x0(r30)
    lwz     r4, 0x88(r3)
    b       branch_0x801ae234

branch_0x801ae19c:
    lfs     f3, 0x0(r4)
    li      r3, 0x0
    lfs     f4, 0x4(r4)
    li      r0, 0x80
    fadds   f0, f3, f22
    lfs     f5, 0x8(r4)
    fadds   f1, f4, f21
    fadds   f2, f3, f25
    addi    r4, r4, 0x50
    stfs    f0, -0x8000(r31)
    fadds   f0, f5, f20
    fadds   f6, f4, f24
    stfs    f1, -0x8000(r31)
    fadds   f7, f5, f23
    fsubs   f1, f3, f22
    stfs    f0, -0x8000(r31)
    fsubs   f0, f3, f25
    stb     r3, -0x8000(r31)
    fsubs   f8, f4, f21
    fsubs   f9, f5, f20
    stb     r3, -0x8000(r31)
    fsubs   f3, f4, f24
    stfs    f2, -0x8000(r31)
    fsubs   f2, f5, f23
    stfs    f6, -0x8000(r31)
    stfs    f7, -0x8000(r31)
    stb     r3, -0x8000(r31)
    stb     r0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f8, -0x8000(r31)
    stfs    f9, -0x8000(r31)
    stb     r0, -0x8000(r31)
    stb     r0, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f3, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    stb     r0, -0x8000(r31)
    stb     r3, -0x8000(r31)
branch_0x801ae234:
    lwz     r3, 0x0(r30)
    lwz     r0, 0x74(r3)
    lwz     r3, 0x88(r3)
    mulli   r0, r0, 0x50
    add     r0, r3, r0
    cmplw   r4, r0
    blt+    branch_0x801ae19c
branch_0x801ae250:
    addi    r27, r27, 0x1
    addi    r20, r20, 0x4
branch_0x801ae258:
    cmpw    r27, r26
    blt+    branch_0x801ae140
    lwz     r3, 0x2c(r21)
    lbz     r0, 0x108(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ae380
    lbz     r0, 0x65(r23)
    cmplwi  r0, 0x0
    bne-    branch_0x801ae380
    lfs     f0, 0x3c(r23)
    lfs     f1, 0x44(r23)
    fmuls   f2, f0, f0
    lfs     f0, -0x3f60(rtoc)
    fmuls   f1, f1, f1
    fsubs   f20, f2, f1
    fcmpo   cr0, f20, f0
    cror    2, 0, 2
    bne-    branch_0x801ae2a4
    b       branch_0x801ae2c8

branch_0x801ae2a4:
    frsqrte f3, f20
    lfs     f2, -0x3f54(rtoc)
    lfs     f0, -0x3f58(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f20, f1, f0
    fmuls   f0, f2, f0
    fmuls   f20, f20, f0
branch_0x801ae2c8:
    lfs     f1, 0x4(r23)
    addi    r3, sp, 0x144
    lfs     f0, 0x44(r23)
    lfs     f3, 0x8(r23)
    fsubs   f2, f1, f0
    lfs     f1, 0x0(r23)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801a8088
    lbz     r0, -0x62bc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae300
    lfs     f0, -0x3ef0(rtoc)
    li      r0, 0x1
    stb     r0, -0x62bc(r13)
    stfs    f0, -0x62c0(r13)
branch_0x801ae300:
    lfs     f1, -0x3f54(rtoc)
    lfs     f0, -0x62c0(r13)
    fmuls   f1, f1, f0
    bl      cosf
    fdivs   f21, f20, f1
    lfs     f20, -0x3f60(rtoc)
    li      r3, 0xa0
    li      r4, 0x0
    li      r5, 0x1e
    bl      GXBegin
    li      r24, 0x0
    lis     r23, 0xcc01
    li      r20, 0x40
branch_0x801ae334:
    fmr     f1, f20
    bl      sinf
    lfs     f0, 0x14c(sp)
    lfs     f22, 0x148(sp)
    fmadds  f23, f21, f1, f0
    fmr     f1, f20
    bl      cosf
    lfs     f2, 0x144(sp)
    addi    r24, r24, 0x1
    lfs     f0, -0x62c0(r13)
    cmpwi   r24, 0x1e
    fmadds  f1, f21, f1, f2
    fadds   f20, f20, f0
    stfs    f1, -0x8000(r23)
    stfs    f22, -0x8000(r23)
    stfs    f23, -0x8000(r23)
    stb     r20, -0x8000(r23)
    stb     r20, -0x8000(r23)
    blt+    branch_0x801ae334
branch_0x801ae380:
    lwz     r0, -0x3f64(rtoc)
    addi    r5, r29, 0x0
    addi    r6, r28, 0x0
    stw     r0, 0x150(sp)
    addi    r3, sp, 0x154
    li      r7, 0x1
    lwz     r4, 0x2c(r21)
    li      r8, 0x0
    li      r9, 0x0
    lbz     r0, 0x158(r4)
    li      r10, 0x0
    stb     r0, 0x153(sp)
    lwz     r4, 0x28(r21)
    bl      GXInitTexObj
    lfs     f1, -0x3f60(rtoc)
    addi    r3, sp, 0x154
    li      r4, 0x0
    fmr     f2, f1
    li      r5, 0x0
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r5, r29, 0x0
    addi    r6, r28, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTexCopySrc
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x27
    li      r6, 0x0
    bl      GXSetTexCopyDst
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetCopyFilter
    lwz     r3, 0x28(r21)
    li      r4, 0x0
    bl      GXCopyTex
    bl      GXPixModeSync
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x3
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    addi    r3, sp, 0x154
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x2
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x1
    li      r6, 0x6
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0xe
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    li      r4, 0x3
    bl      GXSetTevKAlphaSel
    lwz     r0, 0x150(sp)
    addi    r4, sp, 0x140
    li      r3, 0x1
    stw     r0, 0x140(sp)
    bl      GXSetTevColor
    bl      SMSGetGameRenderWidth__Fv
    mr      r23, r3
    bl      SMSGetGameRenderHeight__Fv
    addi    r20, r3, 0x0
    addi    r3, sp, 0x88
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f1, -0x3f60(rtoc)
    extsh   r26, r20
    extsh   r23, r23
    lfs     f6, -0x3f5c(rtoc)
    stfs    f1, 0xb4(sp)
    xoris   r25, r26, 0x8000
    lfd     f4, -0x3f30(rtoc)
    stfs    f1, 0xa4(sp)
    xoris   r20, r23, 0x8000
    lis     r24, 0x4330
    fmr     f3, f1
    stfs    f1, 0x94(sp)
    lfs     f5, -0x3f44(rtoc)
    addi    r3, sp, 0xb8
    stfs    f1, 0xa0(sp)
    stfs    f1, 0x90(sp)
    stfs    f1, 0xac(sp)
    stfs    f1, 0x8c(sp)
    stfs    f1, 0xa8(sp)
    stw     r25, 0x1c4(sp)
    stw     r20, 0x1bc(sp)
    stfs    f1, 0x98(sp)
    stw     r24, 0x1c0(sp)
    stw     r24, 0x1b8(sp)
    lfd     f2, 0x1c0(sp)
    stfs    f6, 0xb0(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f2, f2, f4
    stfs    f6, 0x9c(sp)
    fsubs   f4, f0, f4
    stfs    f6, 0x88(sp)
    bl      C_MTXOrtho
    addi    r3, sp, 0xb8
    li      r4, 0x1
    bl      GXSetProjection
    stw     r20, 0x1b4(sp)
    lfs     f1, -0x3f60(rtoc)
    stw     r25, 0x1ac(sp)
    lfd     f4, -0x3f30(rtoc)
    fmr     f2, f1
    stw     r24, 0x1b0(sp)
    fmr     f5, f1
    lfs     f6, -0x3f5c(rtoc)
    stw     r24, 0x1a8(sp)
    lfd     f3, 0x1b0(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      GXSetViewport
    addi    r5, r23, 0x0
    addi    r6, r26, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetScissor
    addi    r3, sp, 0x88
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    li      r0, 0x0
    lfs     f1, -0x3f60(rtoc)
    lis     r3, 0xcc01
    lfs     f0, -0x3f5c(rtoc)
    sth     r0, -0x8000(r3)
    sth     r0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    sth     r29, -0x8000(r3)
    sth     r0, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    sth     r29, -0x8000(r3)
    sth     r28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    sth     r0, -0x8000(r3)
    sth     r28, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    lwz     r3, 0x2c(r21)
    lbz     r0, 0x130(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801ae774
    lwz     r7, 0x28(r21)
    addi    r5, r29, 0x0
    addi    r6, r28, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      draw_mist__FUsUsUsUsPv
branch_0x801ae774:
    addi    r3, r22, 0x74
    li      r4, 0x0
    bl      GXSetProjection
    lmw     r20, 0x1c8(sp)
    lwz     r0, 0x25c(sp)
    lfd     f31, 0x250(sp)
    lfd     f30, 0x248(sp)
    mtlr    r0
    lfd     f29, 0x240(sp)
    lfd     f28, 0x238(sp)
    lfd     f27, 0x230(sp)
    lfd     f26, 0x228(sp)
    lfd     f25, 0x220(sp)
    lfd     f24, 0x218(sp)
    lfd     f23, 0x210(sp)
    lfd     f22, 0x208(sp)
    lfd     f21, 0x200(sp)
    lfd     f20, 0x1f8(sp)
    addi    sp, sp, 0x258
    blr


.globl __sinit_BathWaterManager_cpp
__sinit_BathWaterManager_cpp: # 0x801ae7c4
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x70f8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae80c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801ae80c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae83c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801ae83c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae86c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801ae86c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae89c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801ae89c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae8cc
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801ae8cc:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae8fc
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801ae8fc:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae92c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801ae92c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae95c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801ae95c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae98c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801ae98c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae9bc
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801ae9bc:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801ae9ec
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801ae9ec:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801aea1c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801aea1c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801aea4c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801aea4c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801aea7c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801aea7c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801aeaac
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801aeaac:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__10TBathWaterFv
_32___dt__10TBathWaterFv: # 0x801aeac0
    subi    r3, r3, 0x20
    b       __dt__10TBathWaterFv
