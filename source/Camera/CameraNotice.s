
.globl ctrlLButtonCamera___15CPolarSubCameraFv
ctrlLButtonCamera___15CPolarSubCameraFv: # 0x800291d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0x120(r3)
    lwz     r0, 0x7c(r31)
    lfs     f1, 0xb8(r3)
    lfs     f0, 0xbc(r3)
    cmplwi  r0, 0x0
    fneg    f31, f1
    fneg    f30, f0
    bne-    branch_0x80029358
    lwz     r3, MarioFlags(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 16, 16 # MARIOFLAG_8000
    beq-    branch_0x80029228
    li      r0, 0x1
    b       branch_0x8002922c

branch_0x80029228:
    li      r0, 0x0
branch_0x8002922c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80029254
    lwz     r3, -0x7110(r13)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x8c(r31)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x94(r31)
    b       branch_0x80029358

branch_0x80029254:
    bl      SMS_GetMarioWaterGun__Fv
    cmplwi  r3, 0x0
    bne-    branch_0x80029280
    lwz     r3, -0x7110(r13)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x8c(r31)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x94(r31)
    b       branch_0x80029358

branch_0x80029280:
    bl      SMS_GetMarioWaterGun__Fv
    bl      getNozzleMtx__9TWaterGunFv
    lfs     f0, 0xc(r3)
    stfs    f0, 0x8c(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x94(r31)
    lfs     f2, 0x24(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x4(r3)
    addi    r3, sp, 0x34
    addi    r4, r3, 0x0
    stfs    f0, 0x34(sp)
    stfs    f1, 0x38(sp)
    stfs    f2, 0x3c(sp)
    lfs     f29, -0x7858(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x7854(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800292ec
    lfs     f0, -0x7850(rtoc)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x34(sp)
    b       branch_0x80029300

branch_0x800292ec:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f29, f1
    addi    r3, sp, 0x34
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80029300:
    lfs     f0, 0x34(sp)
    lfs     f1, -0x784c(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(sp)
    lfs     f0, 0x38(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(sp)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x8c(r31)
    lfs     f0, 0x34(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8c(r31)
    lfs     f1, 0x90(r31)
    lfs     f0, 0x38(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x90(r31)
    lfs     f1, 0x94(r31)
    lfs     f0, 0x3c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
branch_0x80029358:
    lwz     r0, 0x78(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800293b8
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x800293a0
    lfs     f0, -0x7850(rtoc)
    fcmpu   cr0, f0, f31
    beq-    branch_0x8002938c
    mr      r3, r31
    fmr     f1, f31
    bl      rotateY_ByStickX___15CPolarSubCameraFf
    b       branch_0x800293ac

branch_0x8002938c:
    lwz     r4, 0x2a4(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x10
    bl      calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec
    b       branch_0x800293ac

branch_0x800293a0:
    mr      r3, r31
    fmr     f1, f31
    bl      rotateY_ByStickX___15CPolarSubCameraFf
branch_0x800293ac:
    mr      r3, r31
    fmr     f1, f30
    bl      rotateX_ByStickY___15CPolarSubCameraFf
branch_0x800293b8:
    mr      r3, r31
    bl      calcPosAndAt___15CPolarSubCameraFv
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x70
    blr


.globl getNozzleTopPos___15CPolarSubCameraCFPQ29JGeometry8TVec3_f_
getNozzleTopPos___15CPolarSubCameraCFPQ29JGeometry8TVec3_f_: # 0x800293e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stfd    f29, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    bl      SMS_GetMarioWaterGun__Fv
    cmplwi  r3, 0x0
    bne-    branch_0x8002942c
    lwz     r3, -0x7110(r13)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x8(r31)
    b       branch_0x800294d0

branch_0x8002942c:
    bl      SMS_GetMarioWaterGun__Fv
    bl      getNozzleMtx__9TWaterGunFv
    lfs     f0, 0xc(r3)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x8(r31)
    lfs     f30, 0x14(r3)
    lfs     f31, 0x4(r3)
    fmuls   f1, f30, f30
    lfs     f29, 0x24(r3)
    lfs     f0, -0x7854(rtoc)
    fmadds  f1, f31, f31, f1
    fmadds  f1, f29, f29, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80029484
    lfs     f4, -0x7850(rtoc)
    fmr     f3, f4
    fmr     f2, f3
    b       branch_0x8002949c

branch_0x80029484:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7858(rtoc)
    fmuls   f0, f0, f1
    fmuls   f2, f31, f0
    fmuls   f3, f30, f0
    fmuls   f4, f29, f0
branch_0x8002949c:
    lfs     f1, -0x784c(rtoc)
    lfs     f0, 0x0(r31)
    fmuls   f2, f2, f1
    fmuls   f3, f3, f1
    fmuls   f4, f4, f1
    fadds   f0, f0, f2
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fadds   f0, f0, f3
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fadds   f0, f0, f4
    stfs    f0, 0x8(r31)
branch_0x800294d0:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lfd     f29, 0x40(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x58
    blr


.globl calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec
calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec: # 0x800294f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x80(sp)
    addi    r30, r4, 0x0
    lwz     r5, -0x7110(r13)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x74(sp)
    lfs     f31, 0x74(sp)
    lfs     f0, 0x8(r4)
    fsubs   f1, f31, f0
    bl      CLBSquared_f___Ff
    lfs     f2, 0x6c(sp)
    fmr     f28, f1
    lfs     f0, 0x0(r30)
    fsubs   f1, f2, f0
    bl      CLBSquared_f___Ff
    lwz     r3, 0x2d0(r31)
    fadds   f30, f1, f28
    lfs     f1, 0x90(r3)
    bl      CLBSquared_f___Ff
    lwz     r3, 0x2d0(r31)
    fmr     f29, f1
    lfs     f1, 0xa4(r3)
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f30, f29
    fmr     f28, f1
    ble-    branch_0x800296cc
    lfs     f1, 0x6c(sp)
    addi    r3, sp, 0x60
    lfs     f0, 0x0(r30)
    mr      r4, r3
    lfs     f3, 0x70(sp)
    lfs     f2, 0x4(r30)
    fsubs   f0, f1, f0
    lfs     f1, 0x8(r30)
    fsubs   f2, f3, f2
    stfs    f0, 0x60(sp)
    fsubs   f0, f31, f1
    stfs    f2, 0x64(sp)
    stfs    f0, 0x68(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f3, 0x60(sp)
    lfs     f2, -0x7848(rtoc)
    lfs     f0, 0x6c(sp)
    lfs     f1, 0x68(sp)
    fmadds  f3, f3, f2, f0
    lfs     f0, 0x8c(r31)
    fmadds  f4, f1, f2, f31
    lfs     f1, 0x94(r31)
    fsubs   f2, f3, f0
    fsubs   f1, f4, f1
    bl      matan__Fff
    lha     r0, 0xa6(r31)
    extsh   r4, r3
    addi    r30, r3, 0x0
    subf    r4, r4, r0
    extsh.  r0, r4
    blt-    branch_0x8002960c
    extsh   r0, r4
    b       branch_0x80029614

branch_0x8002960c:
    extsh   r0, r4
    neg     r0, r0
branch_0x80029614:
    xoris   r0, r0, 0x8000
    lfd     f1, -0x7838(rtoc)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    fcmpo   cr0, f30, f28
    lfs     f2, -0x7844(rtoc)
    stw     r0, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f1
    fmuls   f31, f2, f0
    ble-    branch_0x80029648
    lfs     f28, -0x7858(rtoc)
    b       branch_0x8002965c

branch_0x80029648:
    fmr     f1, f29
    fmr     f2, f28
    fmr     f3, f30
    bl      CLBCalcRatio_f___Ffff
    fmr     f28, f1
branch_0x8002965c:
    lwz     r3, 0x2d0(r31)
    lfs     f1, -0x7858(rtoc)
    lfs     f3, 0xa8(r31)
    lfs     f2, 0xb8(r3)
    bl      CLBLinearInbetween_f___Ffff
    lwz     r3, 0x2d0(r31)
    lis     r0, 0x4330
    lfd     f3, -0x7838(rtoc)
    lha     r3, 0x7c(r3)
    lfs     f4, 0x288(r31)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x7840(rtoc)
    stw     r3, 0x7c(sp)
    stw     r0, 0x78(sp)
    lfd     f2, 0x78(sp)
    fsubs   f2, f2, f3
    fmuls   f2, f31, f2
    fmuls   f2, f28, f2
    fmuls   f1, f1, f2
    fmuls   f1, f4, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800296b8
    fmr     f1, f0
branch_0x800296b8:
    bl      CLBRoundf_s___Ff
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r31, 0xa6
    bl      CLBChaseGeneralConstantSpecifySpeed_s___FPsss
branch_0x800296cc:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0xa8
    blr


.globl execNoticeOnOffProc___15CPolarSubCameraFQ215CPolarSubCamera19EnumNoticeOnOffMode
execNoticeOnOffProc___15CPolarSubCameraFQ215CPolarSubCamera19EnumNoticeOnOffMode: # 0x800296f4
    mflr    r0
    cmpwi   r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x80029744
    bge-    branch_0x80029720
    cmpwi   r4, 0x0
    bge-    branch_0x8002972c
    b       branch_0x800297a4

branch_0x80029720:
    cmpwi   r4, 0x3
    bge-    branch_0x800297a4
    b       branch_0x80029778

branch_0x8002972c:
    li      r0, 0x0
    stw     r0, 0x2a4(r31)
    lhz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0x64(r31)
    b       branch_0x800297a4

branch_0x80029744:
    mr      r3, r31
    bl      getNoticeActor___15CPolarSubCameraFv
    lwz     r0, 0x2a4(r31)
    cmplw   r3, r0
    beq-    branch_0x800297a4
    cmplwi  r3, 0x0
    bne-    branch_0x800297a4
    li      r0, 0x0
    stw     r0, 0x2a4(r31)
    lhz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0x64(r31)
    b       branch_0x800297a4

branch_0x80029778:
    mr      r3, r31
    bl      getNoticeActor___15CPolarSubCameraFv
    lwz     r0, 0x2a4(r31)
    cmplw   r3, r0
    beq-    branch_0x800297a4
    cmplwi  r3, 0x0
    beq-    branch_0x800297a4
    stw     r3, 0x2a4(r31)
    lhz     r0, 0x64(r31)
    ori     r0, r0, 0x20
    sth     r0, 0x64(r31)
branch_0x800297a4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getNoticeActor___15CPolarSubCameraFv
getNoticeActor___15CPolarSubCameraFv: # 0x800297b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    stmw    r25, 0xac(sp)
    mr      r27, r3
    lwz     r3, 0x2a4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80029908
    lwz     r4, 0xf0(r3)
    clrlwi. r0, r4, 31
    bne-    branch_0x80029908
    rlwinm. r0, r4, 0, 30, 30
    bne-    branch_0x80029908
    lwz     r5, MarioHitActorPos(r13)
    addi    r4, r3, 0x10
    lfs     f3, 0x0(r4)
    lfs     f2, 0x0(r5)
    lfs     f1, 0x4(r4)
    fsubs   f2, f3, f2
    lfs     f0, 0x4(r5)
    lfs     f3, 0x8(r4)
    fsubs   f4, f1, f0
    lfs     f0, 0x8(r5)
    fsubs   f3, f3, f0
    lwz     r3, 0x2d0(r27)
    fmuls   f2, f2, f2
    fmuls   f0, f4, f4
    lfs     f1, 0x2c(r3)
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f28, f3, f0
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f28, f1
    bge-    branch_0x80029908
    lwz     r6, 0x2d0(r27)
    addi    r5, r27, 0x1ec
    lwz     r3, 0x2a4(r27)
    addi    r4, r27, 0x16c
    lfs     f29, 0x54(r6)
    addi    r6, r3, 0x10
    addi    r3, sp, 0x84
    li      r7, 0x0
    li      r8, 0x0
    bl      CLBCalc2DFPos__FPQ29JGeometry8TVec2_f_PA4_CfPA4_CfRC3VecPUlb
    fneg    f1, f29
    li      r3, 0x0
    lfs     f0, 0x84(sp)
    addi    r4, r3, 0x0
    addi    r0, r3, 0x0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800298ac
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x800298ac
    li      r0, 0x1
branch_0x800298ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x800298c8
    lfs     f0, 0x88(sp)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800298c8
    li      r4, 0x1
branch_0x800298c8:
    clrlwi. r0, r4, 24
    beq-    branch_0x800298e4
    lfs     f0, 0x88(sp)
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x800298e4
    li      r3, 0x1
branch_0x800298e4:
    clrlwi. r0, r3, 24
    beq-    branch_0x800298f4
    li      r0, 0x1
    b       branch_0x800298f8

branch_0x800298f4:
    li      r0, 0x0
branch_0x800298f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80029908
    lwz     r3, 0x2a4(r27)
    b       branch_0x80029ac8

branch_0x80029908:
    lwz     r3, 0x2d0(r27)
    li      r29, 0x0
    lfs     f1, 0x18(r3)
    bl      CLBSquared_f___Ff
    fmr     f31, f1
    lfs     f29, -0x7830(rtoc)
    lfd     f30, -0x7838(rtoc)
    addi    r30, r27, 0x1ec
    addi    r31, r27, 0x16c
    li      r28, 0x0
    li      r26, 0x0
    lis     r25, 0x4330
    b       branch_0x80029ab8

branch_0x8002993c:
    lwz     r3, 0x2a0(r27)
    lwzx    r4, r3, r26
    lwz     r3, 0xf0(r4)
    clrlwi. r0, r3, 31
    bne-    branch_0x80029ab0
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x80029ab0
    lwz     r0, 0x2a4(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x8002996c
    cmplw   r0, r4
    beq-    branch_0x80029ab0
branch_0x8002996c:
    lwz     r3, MarioHitActorPos(r13)
    addi    r6, r4, 0x10
    lfs     f3, 0x10(r4)
    lfs     f2, 0x0(r3)
    lfs     f1, 0x14(r4)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r3)
    lfs     f2, 0x18(r4)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r3)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f27, f2, f0
    fcmpo   cr0, f27, f31
    bge-    branch_0x80029ab0
    lwz     r3, 0x2d0(r27)
    mr      r4, r31
    addi    r5, r30, 0x0
    lfs     f28, 0x40(r3)
    addi    r3, sp, 0x6c
    li      r7, 0x0
    li      r8, 0x0
    bl      CLBCalc2DFPos__FPQ29JGeometry8TVec2_f_PA4_CfPA4_CfRC3VecPUlb
    fneg    f1, f28
    li      r3, 0x0
    lfs     f0, 0x6c(sp)
    addi    r4, r3, 0x0
    addi    r0, r3, 0x0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80029a04
    fcmpo   cr0, f0, f28
    cror    2, 0, 2
    bne-    branch_0x80029a04
    li      r0, 0x1
branch_0x80029a04:
    clrlwi. r0, r0, 24
    beq-    branch_0x80029a20
    lfs     f0, 0x70(sp)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80029a20
    li      r4, 0x1
branch_0x80029a20:
    clrlwi. r0, r4, 24
    beq-    branch_0x80029a3c
    lfs     f0, 0x70(sp)
    fcmpo   cr0, f0, f28
    cror    2, 0, 2
    bne-    branch_0x80029a3c
    li      r3, 0x1
branch_0x80029a3c:
    clrlwi. r0, r3, 24
    beq-    branch_0x80029a4c
    li      r0, 0x1
    b       branch_0x80029a50

branch_0x80029a4c:
    li      r0, 0x0
branch_0x80029a50:
    clrlwi. r0, r0, 24
    beq-    branch_0x80029ab0
    lwz     r3, -0x60ac(r13)
    fmr     f2, f27
    lwz     r4, 0x2a0(r27)
    lha     r0, 0x0(r3)
    lwz     r5, 0x2d0(r27)
    xoris   r0, r0, 0x8000
    lwzx    r4, r4, r26
    stw     r0, 0xa4(sp)
    lwz     r3, MarioHitActorPos(r13)
    addi    r4, r4, 0x10
    stw     r25, 0xa0(sp)
    lfs     f3, 0x68(r5)
    lfd     f0, 0xa0(sp)
    lfs     f4, -0x782c(rtoc)
    fsubs   f0, f0, f30
    fmuls   f1, f29, f0
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x80029ab0
    lwz     r3, 0x2a0(r27)
    fmr     f31, f27
    lwzx    r29, r3, r26
branch_0x80029ab0:
    addi    r28, r28, 0x1
    addi    r26, r26, 0x4
branch_0x80029ab8:
    lwz     r0, 0x29c(r27)
    cmpw    r28, r0
    blt+    branch_0x8002993c
    mr      r3, r29
branch_0x80029ac8:
    lmw     r25, 0xac(sp)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    addi    sp, sp, 0xf0
    blr


.globl setNoticeInfo__15CPolarSubCameraFv
setNoticeInfo__15CPolarSubCameraFv: # 0x80029af0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x40
    bl      __nwa__FUl
    stw     r3, 0x2a0(r31)
    li      r0, 0x0
    lis     r3, 0x803b
    stw     r0, 0x2a4(r31)
    subi    r29, r3, 0x2f50
    li      r30, 0x0
    stw     r0, 0x29c(r31)
    b       branch_0x80029cfc

branch_0x80029b2c:
    lwz     r3, -0x70b0(r13)
    bl      getManagerByName__10TConductorFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x80029cf8
    lwz     r4, 0x14(r3)
    li      r5, 0x0
    li      r6, 0x0
    cmpw    r5, r4
    bge-    branch_0x80029cf8
    cmpwi   r4, 0x8
    subi    r7, r4, 0x8
    ble-    branch_0x80029cb8
    addi    r0, r7, 0x7
    srwi    r0, r0, 3
    cmpwi   r7, 0x0
    mtctr   r0
    ble-    branch_0x80029cb8
branch_0x80029b70:
    lwz     r7, 0x18(r3)
    addi    r27, r6, 0x4
    lwz     r0, 0x29c(r31)
    addi    r12, r6, 0x8
    lwzx    r8, r7, r6
    lwz     r7, 0x2a0(r31)
    slwi    r0, r0, 2
    addi    r11, r6, 0xc
    stwx    r8, r7, r0
    addi    r10, r6, 0x10
    addi    r9, r6, 0x14
    lwz     r28, 0x29c(r31)
    addi    r8, r6, 0x18
    addi    r7, r6, 0x1c
    addi    r0, r28, 0x1
    stw     r0, 0x29c(r31)
    addi    r5, r5, 0x8
    addi    r6, r6, 0x20
    lwz     r28, 0x18(r3)
    lwz     r0, 0x29c(r31)
    lwzx    r27, r28, r27
    lwz     r28, 0x2a0(r31)
    slwi    r0, r0, 2
    stwx    r27, r28, r0
    lwz     r28, 0x29c(r31)
    addi    r0, r28, 0x1
    stw     r0, 0x29c(r31)
    lwz     r28, 0x18(r3)
    lwz     r0, 0x29c(r31)
    lwzx    r28, r28, r12
    lwz     r12, 0x2a0(r31)
    slwi    r0, r0, 2
    stwx    r28, r12, r0
    lwz     r12, 0x29c(r31)
    addi    r0, r12, 0x1
    stw     r0, 0x29c(r31)
    lwz     r12, 0x18(r3)
    lwz     r0, 0x29c(r31)
    lwzx    r12, r12, r11
    lwz     r11, 0x2a0(r31)
    slwi    r0, r0, 2
    stwx    r12, r11, r0
    lwz     r11, 0x29c(r31)
    addi    r0, r11, 0x1
    stw     r0, 0x29c(r31)
    lwz     r11, 0x18(r3)
    lwz     r0, 0x29c(r31)
    lwzx    r11, r11, r10
    lwz     r10, 0x2a0(r31)
    slwi    r0, r0, 2
    stwx    r11, r10, r0
    lwz     r10, 0x29c(r31)
    addi    r0, r10, 0x1
    stw     r0, 0x29c(r31)
    lwz     r10, 0x18(r3)
    lwz     r0, 0x29c(r31)
    lwzx    r10, r10, r9
    lwz     r9, 0x2a0(r31)
    slwi    r0, r0, 2
    stwx    r10, r9, r0
    lwz     r9, 0x29c(r31)
    addi    r0, r9, 0x1
    stw     r0, 0x29c(r31)
    lwz     r9, 0x18(r3)
    lwz     r0, 0x29c(r31)
    lwzx    r9, r9, r8
    lwz     r8, 0x2a0(r31)
    slwi    r0, r0, 2
    stwx    r9, r8, r0
    lwz     r8, 0x29c(r31)
    addi    r0, r8, 0x1
    stw     r0, 0x29c(r31)
    lwz     r8, 0x18(r3)
    lwz     r0, 0x29c(r31)
    lwzx    r8, r8, r7
    lwz     r7, 0x2a0(r31)
    slwi    r0, r0, 2
    stwx    r8, r7, r0
    lwz     r7, 0x29c(r31)
    addi    r0, r7, 0x1
    stw     r0, 0x29c(r31)
    bdnz+      branch_0x80029b70
branch_0x80029cb8:
    subf    r0, r5, r4
    cmpw    r5, r4
    mtctr   r0
    slwi    r4, r5, 2
    bge-    branch_0x80029cf8
branch_0x80029ccc:
    lwz     r5, 0x18(r3)
    lwz     r0, 0x29c(r31)
    lwzx    r6, r5, r4
    addi    r4, r4, 0x4
    lwz     r5, 0x2a0(r31)
    slwi    r0, r0, 2
    stwx    r6, r5, r0
    lwz     r5, 0x29c(r31)
    addi    r0, r5, 0x1
    stw     r0, 0x29c(r31)
    bdnz+      branch_0x80029ccc
branch_0x80029cf8:
    addi    r30, r30, 0x4
branch_0x80029cfc:
    add     r3, r29, r30
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    bne+    branch_0x80029b2c
    lwz     r3, -0x5db8(r13)
    lwz     r27, -0x7fb0(r13)
    lwz     r28, 0x4(r3)
    mr      r3, r27
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r27
    mtlr    r12
    blrl
    stw     r3, 0x2a8(r31)
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl CLBSquared_f___Ff
CLBSquared_f___Ff: # 0x80029d54
    fmuls   f1, f1, f1
    blr

