
/* CPolarSubCamera::ctrlNormalOrTowerCamera_((void))
r3: PolarSubCamera
*/
.globl ctrlNormalOrTowerCamera___15CPolarSubCameraFv
ctrlNormalOrTowerCamera___15CPolarSubCameraFv: # 0x80029d5c

.set var_40, -0x40
.set var_28, -0x28
.set var_20, -0x20
.set var_1C, -0x1C
.set var_18, -0x18
.set var_10, -0x10
.set var_8, -8
.set arg_4,  4

    mflr    r0
    stw     r0, arg_4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xB0+var_8(sp)
    stfd    f30, 0xB0+var_10(sp)
    stfd    f29, 0xB0+var_18(sp)
    stw     r31, 0xB0+var_1C(sp)
    stw     r30, 0xB0+var_20(sp)

    mr      r30, r3
    lwz     r3, PolarSubCamera_120(r3)
    lfs     f0, -0x7828(rtoc)
    lfs     f29, PolarSubCamera_120_c0(r3)
    lfs     f31, PolarSubCamera_120_c4(r3)
    stfs    f0, PolarSubCamera_250(r30)
    lwz     r0, PolarSubCamera_7c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80029dbc
    lwz     r3, -0x7110(r13)
    lfs     f0, 0x0(r3)
    stfs    f0, PolarSubCamera_8c(r30)
    lfs     f0, 0x4(r3)
    stfs    f0, PolarSubCamera_90(r30)
    lfs     f0, 0x8(r3)
    stfs    f0, PolarSubCamera_94(r30)
branch_0x80029dbc:
    lwz     r0, PolarSubCamera_78(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8002a1e4
    lhz     r0, PolarSubCamera_64(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80029e1c
    lha     r4, PolarSubCamera_274(r30)
    addi    r3, r30, PolarSubCamera_a6
    lha     r5, PolarSubCamera_276(r30)
    bl      CLBChaseAngleDecrease__FPsss
    cmpwi   r3, 0x0
    bne-    branch_0x8002a1d8
    lhz     r0, PolarSubCamera_64(r30)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, PolarSubCamera_64(r30)
    lhz     r3, PolarSubCamera_64(r30)
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8002a1d8
    rlwinm  r0, r3, 0, 29, 27
    sth     r0, PolarSubCamera_64(r30)
    lhz     r0, PolarSubCamera_64(r30)
    ori     r0, r0, 0x10
    sth     r0, PolarSubCamera_64(r30)
    b       branch_0x8002a1d8

branch_0x80029e1c:
    mr      r3, r30
    lwz     r4, PolarSubCamera_50(r30)
    bl      isTowerCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80029e98
    lfs     f0, -0x7828(rtoc)
    fcmpu   cr0, f0, f29
    beq-    branch_0x80029e60
    mr      r3, r30
    fmr     f1, f29
    bl      rotateY_ByStickX___15CPolarSubCameraFf
    mr      r3, r30
    bl      execInvalidAutoChase___15CPolarSubCameraFv
    lhz     r0, PolarSubCamera_64(r30)
    ori     r0, r0, 0x80
    sth     r0, PolarSubCamera_64(r30)
    b       branch_0x8002a1d8

branch_0x80029e60:
    lhz     r0, PolarSubCamera_64(r30)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8002a1d8
    mr      r3, r30
    bl      isMarioCrabWalk___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8002a1d8
    addi    r3, r30, 0x0
    addi    r4, sp, 0x70
    bl      calcTowerCenterPos___15CPolarSubCameraFP3Vec
    addi    r3, r30, 0x0
    addi    r4, sp, 0x70
    bl      calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec
    b       branch_0x8002a1d8

branch_0x80029e98:
    lfs     f0, -0x7828(rtoc)
    fcmpu   cr0, f0, f29
    beq-    branch_0x80029ebc
    mr      r3, r30
    fmr     f1, f29
    bl      rotateY_ByStickX___15CPolarSubCameraFf
    mr      r3, r30
    bl      execInvalidAutoChase___15CPolarSubCameraFv
    b       branch_0x8002a1d8

branch_0x80029ebc:
    lwz     r0, PolarSubCamera_50(r30)
    cmpwi   r0, 0x39
    bne-    branch_0x80029eec
    mr      r3, r30
    bl      isChangeToBossGesoCamera___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002a1d8
    lwz     r4, PolarSubCamera_2a8(r30)
    addi    r3, r30, 0x0
    addi    r4, r4, 0x10
    bl      calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec
    b       branch_0x8002a1d8

branch_0x80029eec:
    cmpwi   r0, 0x43
    bne-    branch_0x80029f20
    mr      r3, r30
    bl      isChangeToCancanCamera___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002a1d8
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_6c(r3)
    bl      getHostPos__18TFireWanwanTailHitCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec
    b       branch_0x8002a1d8

branch_0x80029f20:
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x80029f48
    lwz     r3, PolarSubCamera_68(r30)
    lfs     f3, PolarSubCamera_a8(r30)
    lfs     f1, 0x74(r3)
    lfs     f2, 0x78(r3)
    bl      CLBLinearInbetween_f___Ffff
    stfs    f1, PolarSubCamera_250(r30)
    b       branch_0x80029f60

branch_0x80029f48:
    lwz     r3, PolarSubCamera_68(r30)
    lfs     f3, PolarSubCamera_a8(r30)
    lfs     f1, 0x6c(r3)
    lfs     f2, 0x70(r3)
    bl      CLBLinearInbetween_f___Ffff
    stfs    f1, PolarSubCamera_250(r30)
branch_0x80029f60:
    mr      r3, r30
    bl      isMomentDefinite___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80029f94
    lfs     f3, PolarSubCamera_bc(r30)
    lfs     f1, PolarSubCamera_94(r30)
    lfs     f2, PolarSubCamera_b4(r30)
    lfs     f0, PolarSubCamera_8c(r30)
    fsubs   f1, f3, f1
    fsubs   f2, f2, f0
    bl      matan__Fff
    sth     r3, PolarSubCamera_a6(r30)
    b       branch_0x8002a1d8

branch_0x80029f94:
    lhz     r0, PolarSubCamera_64(r30)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8002a1d8
    mr      r3, r30
    bl      isMarioCrabWalk___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8002a1d8
    mr      r3, r30
    bl      isMarioAimWithGun___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002a030
    mr      r3, r30
    bl      isChangeToParallelCameraByMoveBG___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8002a030
    mr      r3, r30
    bl      isChangeToParallelCameraCByMoveBG___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8002a030
    lfs     f1, -0x7828(rtoc)
    lfs     f0, PolarSubCamera_288(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x8002a1d8
    lfs     f2, -0x7824(rtoc)
    lfs     f3, PolarSubCamera_a8(r30)
    bl      CLBEaseInInbetween_f___Ffff
    lwz     r3, PolarSubCamera_2d4(r30)
    addi    r4, r3, 0x1a8
    addi    r3, r3, 0x194
    lha     r4, 0x0(r4)
    lha     r3, 0x0(r3)
    bl      CLBEaseInInbetween_s___Fssf
    lwz     r4, -0x60ac(r13)
    addi    r5, r3, 0x0
    addi    r3, r30, PolarSubCamera_a6
    lha     r4, 0x0(r4)
    subi    r4, r4, 0x8000
    bl      CLBChaseAngleDecrease__FPsss
    b       branch_0x8002a1d8

branch_0x8002a030:
    lwz     r3, -0x60ac(r13)
    lwz     r0, PolarSubCamera_50(r30)
    lha     r3, 0x0(r3)
    cmpwi   r0, 0x2b
    subi    r31, r3, 0x8000
    beq-    branch_0x8002a058
    bge-    branch_0x8002a0a4
    cmpwi   r0, 0x12
    beq-    branch_0x8002a058
    b       branch_0x8002a0a4

branch_0x8002a058:
    lha     r0, PolarSubCamera_258(r30)
    extsh   r3, r31
    subf    r3, r0, r3
    extsh.  r0, r3
    blt-    branch_0x8002a074
    extsh   r0, r3
    b       branch_0x8002a07c

branch_0x8002a074:
    extsh   r0, r3
    neg     r0, r0
branch_0x8002a07c:
    xoris   r0, r0, 0x8000
    lfd     f1, -0x7810(rtoc)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfs     f2, -0x7820(rtoc)
    stw     r0, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f1
    fmuls   f29, f2, f0
    b       branch_0x8002a0d4

branch_0x8002a0a4:
    lha     r3, PolarSubCamera_258(r30)
    lwz     r0, -0x5eac(r13)
    subf    r3, r3, r31
    lwz     r4, -0x5ea4(r13)
    clrlslwi  r3, r3, 17, 1
    lfs     f1, -0x7824(rtoc)
    sraw    r0, r3, r0
    lfs     f2, -0x781c(rtoc)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fsubs   f0, f1, f0
    fmuls   f29, f2, f0
branch_0x8002a0d4:
    lha     r0, PolarSubCamera_2ca(r30)
    lfs     f30, -0x7824(rtoc)
    cmpwi   r0, -0x1
    beq-    branch_0x8002a100
    lwz     r3, PolarSubCamera_68(r30)
    lfs     f3, PolarSubCamera_a8(r30)
    lfs     f1, 0x84(r3)
    lfs     f2, 0x88(r3)
    bl      CLBLinearInbetween_f___Ffff
    fmr     f30, f1
    b       branch_0x8002a13c

branch_0x8002a100:
    lwz     r3, MarioFlags(r13)
    lwz     r0, 0x0(r3)
    clrlwi. r0, r0, 31 # MARIOFLAG_1
    beq-    branch_0x8002a118
    li      r0, 0x1
    b       branch_0x8002a11c

branch_0x8002a118:
    li      r0, 0x0
branch_0x8002a11c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002a13c
    lwz     r3, PolarSubCamera_68(r30)
    lfs     f3, PolarSubCamera_a8(r30)
    lfs     f1, 0x7c(r3)
    lfs     f2, 0x80(r3)
    bl      CLBLinearInbetween_f___Ffff
    fmr     f30, f1
branch_0x8002a13c:
    lwz     r3, PolarSubCamera_120(r30)
    lfs     f0, PolarSubCamera_120_b0(r3)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    clrlwi. r0, r0, 24
    beq-    branch_0x8002a170
    lwz     r3, PolarSubCamera_68(r30)
    lfs     f3, PolarSubCamera_a8(r30)
    lfs     f1, 0x8c(r3)
    lfs     f2, 0x90(r3)
    bl      CLBLinearInbetween_f___Ffff
    fmuls   f30, f30, f1
branch_0x8002a170:
    lwz     r0, PolarSubCamera_50(r30)
    cmpwi   r0, 0x2b
    beq-    branch_0x8002a18c
    bge-    branch_0x8002a194
    cmpwi   r0, 0x12
    beq-    branch_0x8002a18c
    b       branch_0x8002a194

branch_0x8002a18c:
    lfs     f3, -0x7818(rtoc)
    b       branch_0x8002a19c

branch_0x8002a194:
    lwz     r3, -0x7110(r13)
    lfs     f3, 0xc(r3)
branch_0x8002a19c:
    lfs     f0, PolarSubCamera_250(r30)
    lfs     f2, PolarSubCamera_288(r30)
    fmuls   f1, f0, f29
    lfs     f0, -0x7814(rtoc)
    fmuls   f1, f30, f1
    fmuls   f1, f3, f1
    fmuls   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8002a1c4
    fmr     f1, f0
branch_0x8002a1c4:
    bl      CLBRoundf_s___Ff
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r30, PolarSubCamera_a6
    bl      CLBChaseGeneralConstantSpecifySpeed_s___FPsss
branch_0x8002a1d8:
    mr      r3, r30
    fmr     f1, f31
    bl      rotateX_ByStickY___15CPolarSubCameraFf
branch_0x8002a1e4:
    mr      r3, r30
    bl      calcPosAndAt___15CPolarSubCameraFv

    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0xb0
    blr


.globl calcTowerCenterPos___15CPolarSubCameraFP3Vec
calcTowerCenterPos___15CPolarSubCameraFP3Vec: # 0x8002a210
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0x37
    beq-    branch_0x8002a294
    bge-    branch_0x8002a25c
    cmpwi   r0, 0x28
    beq-    branch_0x8002a274
    bge-    branch_0x8002a250
    cmpwi   r0, 0x27
    bge-    branch_0x8002a268
    b       branch_0x8002a2b4

branch_0x8002a250:
    cmpwi   r0, 0x2a
    bge-    branch_0x8002a2b4
    b       branch_0x8002a284

branch_0x8002a25c:
    cmpwi   r0, 0x41
    beq-    branch_0x8002a2a4
    b       branch_0x8002a2b4

branch_0x8002a268:
    lis     r3, 0x803b
    lwz     r31, -0x2f40(r3)
    b       branch_0x8002a2c8

branch_0x8002a274:
    lis     r3, 0x803b
    subi    r3, r3, 0x2f40
    lwz     r31, 0x4(r3)
    b       branch_0x8002a2c8

branch_0x8002a284:
    lis     r3, 0x803b
    subi    r3, r3, 0x2f40
    lwz     r31, 0x8(r3)
    b       branch_0x8002a2c8

branch_0x8002a294:
    lis     r3, 0x803b
    subi    r3, r3, 0x2f40
    lwz     r31, 0xc(r3)
    b       branch_0x8002a2c8

branch_0x8002a2a4:
    lis     r3, 0x803b
    subi    r3, r3, 0x2f40
    lwz     r31, 0x10(r3)
    b       branch_0x8002a2c8

branch_0x8002a2b4:
    lfs     f0, -0x7828(rtoc)
    stfs    f0, 0x0(r30)
    stfs    f0, 0x4(r30)
    stfs    f0, 0x8(r30)
    b       branch_0x8002a320

branch_0x8002a2c8:
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, -0x6000(r13)
    mr      r5, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8002a310
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0x14(r3)
    stw     r0, 0x8(r30)
    b       branch_0x8002a320

branch_0x8002a310:
    lfs     f0, -0x7828(rtoc)
    stfs    f0, 0x0(r30)
    stfs    f0, 0x4(r30)
    stfs    f0, 0x8(r30)
branch_0x8002a320:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl CLBEaseInInbetween_s___Fssf
CLBEaseInInbetween_s___Fssf: # 0x8002a338
    mflr    r0
    extsh   r5, r3
    stw     r0, 0x4(sp)
    extsh   r0, r4
    subf    r0, r5, r0
    stwu    sp, -0x18(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfd     f2, -0x7810(rtoc)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f2, f0, f2
    bl      CLBTwoDegreeGeneralInbetween_s___Fssff
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl CLBTwoDegreeGeneralInbetween_s___Fssff
CLBTwoDegreeGeneralInbetween_s___Fssff: # 0x8002a380
    extsh   r3, r3
    stwu    sp, -0x30(sp)
    extsh   r0, r4
    fmuls   f3, f2, f1
    subf    r0, r3, r0
    lfd     f4, -0x7810(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    stw     r0, 0x20(sp)
    xoris   r3, r3, 0x8000
    lfd     f0, 0x20(sp)
    stw     r3, 0x2c(sp)
    fsubs   f0, f0, f4
    stw     r0, 0x28(sp)
    fsubs   f0, f0, f2
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f4
    fmuls   f0, f1, f0
    fmadds  f0, f1, f3, f0
    fadds   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    addi    sp, sp, 0x30
    blr

