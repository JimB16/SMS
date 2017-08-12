
.globl execGroundCheck___15CPolarSubCameraF3Vec
execGroundCheck___15CPolarSubCameraF3Vec: # 0x800202e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stfd    f30, 0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r29, 0x34(sp)
    mr      r29, r4
    lwz     r6, 0x2d4(r3)
    lwz     r3, 0x2ac(r3)
    lfs     f31, 0xa4(r6)
    lfs     f2, 0xcc(r6)
    lfs     f1, 0xb8(r6)
    lfs     f3, 0x8(r3)
    bl      CLBLinearInbetween_f___Ffff
    lwz     r0, 0x50(r30)
    fmr     f30, f1
    cmpwi   r0, 0x2a
    bne-    branch_0x80020368
    lfs     f0, -0x79b8(r2)
    fcmpo   cr0, f31, f0
    ble-    branch_0x80020350
    fmr     f0, f31
branch_0x80020350:
    lfs     f1, -0x79b4(r2)
    fmr     f31, f0
    fcmpo   cr0, f30, f1
    ble-    branch_0x80020364
    fmr     f1, f30
branch_0x80020364:
    fmr     f30, f1
branch_0x80020368:
    lfs     f0, 0xb8(r30)
    addi    r4, sp, 0x28
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f0, f31
    lfs     f1, 0x0(r29)
    lfs     f3, 0x8(r29)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    lwz     r4, 0x28(sp)
    li      r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x800203f0
    lhz     r0, 0x4(r4)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800203a8
    li      r0, 0x1
    b       branch_0x800203ac

branch_0x800203a8:
    mr      r0, r3
branch_0x800203ac:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x800203c0
    li      r0, 0x0
    b       branch_0x800203c4

branch_0x800203c0:
    li      r0, 0x1
branch_0x800203c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800203f0
    lhz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x800203e0
    li      r0, 0x1
    b       branch_0x800203e4

branch_0x800203e0:
    li      r0, 0x0
branch_0x800203e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800203f0
    li      r3, 0x1
branch_0x800203f0:
    clrlwi. r0, r3, 24
    beq-    branch_0x80020410
    fadds   f1, f1, f30
    lfs     f0, 0x84(r30)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80020410
    stfs    f1, 0x84(r30)
    li      r31, 0x1
branch_0x80020410:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    mtlr    r0
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x50
    blr


.globl execRoofCheck___15CPolarSubCameraF3Vec
execRoofCheck___15CPolarSubCameraF3Vec: # 0x80020438
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    li      r31, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x3c(sp)
    li      r29, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r0, 0x30(sp)
    bl      SMS_GetMonteVillageAreaInMario__Fv
    cmpwi   r3, 0x0
    bne-    branch_0x80020494
    lwz     r3, R13Off_m0x7118(r13)
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0x3e
    beq-    branch_0x80020494
    lfs     f1, -0x79b0(r2)
    li      r29, 0x1
    b       branch_0x800204bc

branch_0x80020494:
    lwz     r3, 0x2d4(r30)
    addi    r4, sp, 0x30
    lfs     f2, 0xb8(r30)
    addi    r5, r3, 0xe0
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f0, 0x0(r5)
    lfs     f1, 0x0(r28)
    fsubs   f2, f2, f0
    lfs     f3, 0x8(r28)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
branch_0x800204bc:
    clrlwi. r0, r29, 24
    bne-    branch_0x80020538
    lwz     r4, 0x30(sp)
    li      r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x80020530
    lhz     r0, 0x4(r4)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800204e8
    li      r0, 0x1
    b       branch_0x800204ec

branch_0x800204e8:
    mr      r0, r3
branch_0x800204ec:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80020500
    li      r0, 0x0
    b       branch_0x80020504

branch_0x80020500:
    li      r0, 0x1
branch_0x80020504:
    clrlwi. r0, r0, 24
    beq-    branch_0x80020530
    lhz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80020520
    li      r0, 0x1
    b       branch_0x80020524

branch_0x80020520:
    li      r0, 0x0
branch_0x80020524:
    clrlwi. r0, r0, 24
    beq-    branch_0x80020530
    li      r3, 0x1
branch_0x80020530:
    clrlwi. r0, r3, 24
    beq-    branch_0x80020558
branch_0x80020538:
    lwz     r3, 0x2d4(r30)
    lfs     f0, 0x84(r30)
    lfs     f2, 0xf4(r3)
    fsubs   f1, f1, f2
    fcmpo   cr0, f0, f1
    ble-    branch_0x80020558
    stfs    f1, 0x84(r30)
    li      r31, 0x1
branch_0x80020558:
    lwz     r0, 0x4c(sp)
    mr      r3, r31
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl execWallCheck___15CPolarSubCameraFP3Vec
execWallCheck___15CPolarSubCameraFP3Vec: # 0x8002057c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    li      r30, 0x0
    stw     r29, 0x9c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x98(sp)
    mr      r28, r3
    lwz     r3, 0x2d4(r3)
    lfs     f0, -0x79ac(r2)
    lfs     f31, 0x7c(r3)
    fcmpo   cr0, f31, f0
    ble-    branch_0x80020788
    lfs     f2, -0x79a8(r2)
    li      r0, 0x4
    lfs     f1, 0xb8(r28)
    li      r31, 0x0
    lfs     f3, 0x88(r28)
    lfs     f0, 0x80(r28)
    fadds   f1, f2, f1
    lwz     r3, R13Off_m0x6328(r13)
    addi    r4, sp, 0x6c
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f3, 0x74(sp)
    stfs    f31, 0x78(sp)
    stw     r0, 0x7c(sp)
    stw     r31, 0x84(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x80020788
    lwz     r0, 0x80(sp)
    addi    r4, sp, 0x6c
    lfs     f2, -0x79ac(r2)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x80020788
branch_0x8002061c:
    addi    r0, r31, 0x1c
    lwzx    r5, r4, r0
    li      r3, 0x0
    cmplwi  r5, 0x0
    beq-    branch_0x8002068c
    lhz     r0, 0x4(r5)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80020644
    li      r0, 0x1
    b       branch_0x80020648

branch_0x80020644:
    mr      r0, r3
branch_0x80020648:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8002065c
    li      r0, 0x0
    b       branch_0x80020660

branch_0x8002065c:
    li      r0, 0x1
branch_0x80020660:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002068c
    lhz     r0, 0x0(r5)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8002067c
    li      r0, 0x1
    b       branch_0x80020680

branch_0x8002067c:
    li      r0, 0x0
branch_0x80020680:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002068c
    li      r3, 0x1
branch_0x8002068c:
    clrlwi. r0, r3, 24
    beq-    branch_0x80020780
    lwz     r3, 0x80(r28)
    lwz     r0, 0x84(r28)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x88(r28)
    stw     r0, 0x68(sp)
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x68(sp)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x38(r5)
    lfs     f3, 0x54(sp)
    fmuls   f0, f1, f0
    lfs     f4, 0x34(r5)
    lfs     f1, 0x5c(sp)
    lfs     f5, 0x3c(r5)
    fmadds  f0, f3, f4, f0
    lfs     f3, 0x40(r5)
    fmadds  f0, f1, f5, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f0, f2
    fmr     f1, f0
    cror    2, 1, 2
    bne-    branch_0x80020708
    fmr     f0, f1
    b       branch_0x8002070c

branch_0x80020708:
    fneg    f0, f1
branch_0x8002070c:
    fcmpo   cr0, f0, f31
    bge-    branch_0x80020780
    lwz     r3, 0x2d4(r28)
    fsubs   f3, f31, f1
    lfs     f0, 0x54(sp)
    li      r30, 0x1
    lfs     f1, 0x90(r3)
    fmuls   f1, f3, f1
    fmadds  f0, f1, f4, f0
    stfs    f0, 0x54(sp)
    lfs     f0, 0x5c(sp)
    fmadds  f0, f1, f5, f0
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x54(sp)
    stfs    f0, 0x80(r28)
    lfs     f0, 0x5c(sp)
    stfs    f0, 0x88(r28)
    lfs     f1, 0x34(r5)
    lfs     f0, 0x60(sp)
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x3c(r5)
    lfs     f0, 0x68(sp)
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f0, 0x60(sp)
    stfs    f0, 0x0(r29)
    lfs     f0, 0x68(sp)
    stfs    f0, 0x8(r29)
branch_0x80020780:
    addi    r31, r31, 0x4
    bdnz+      branch_0x8002061c
branch_0x80020788:
    lwz     r0, 0xb4(sp)
    mr      r3, r30
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xb0
    blr


.globl isNeedWallCheck___15CPolarSubCameraCFv
isNeedWallCheck___15CPolarSubCameraCFv: # 0x800207b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x1
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r4, 0x50(r3)
    cmpwi   r4, 0x49
    beq-    branch_0x80020850
    mr      r3, r30
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80020850
    mr      r3, r30
    bl      isLButtonCameraInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80020850
    mr      r3, r30
    lwz     r4, 0x50(r30)
    bl      isTalkCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80020850
    mr      r3, r30
    bl      isTalkCameraInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80020850
    mr      r3, r30
    lwz     r4, 0x50(r30)
    bl      isRailCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80020850
    lwz     r0, 0x50(r30)
    cmpwi   r0, 0x2
    beq-    branch_0x80020850
    cmpwi   r0, 0xd
    beq-    branch_0x80020850
    lhz     r0, 0x64(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80020854
branch_0x80020850:
    li      r31, 0x0
branch_0x80020854:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isNeedRoofCheck___15CPolarSubCameraCFv
isNeedRoofCheck___15CPolarSubCameraCFv: # 0x80020870
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    li      r30, 0x1
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r4, 0x50(r3)
    cmpwi   r4, 0x49
    beq-    branch_0x8002090c
    addi    r3, r29, 0x0
    li      r31, 0x0
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x800208c4
    mr      r3, r29
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800208c4
    li      r31, 0x1
branch_0x800208c4:
    clrlwi. r0, r31, 24
    beq-    branch_0x800208d4
    li      r0, 0x1
    b       branch_0x800208d8

branch_0x800208d4:
    li      r0, 0x0
branch_0x800208d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8002090c
    mr      r3, r29
    lwz     r4, 0x50(r29)
    bl      isRailCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x8002090c
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x2
    beq-    branch_0x8002090c
    lhz     r0, 0x27a(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80020910
branch_0x8002090c:
    li      r30, 0x0
branch_0x80020910:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl isNeedGroundCheck___15CPolarSubCameraFv
isNeedGroundCheck___15CPolarSubCameraFv: # 0x80020930
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x1
    stw     r30, 0x28(sp)
    mr      r30, r3
    stw     r29, 0x24(sp)
    lwz     r4, 0x50(r3)
    cmpwi   r4, 0x49
    beq-    branch_0x800209cc
    addi    r3, r30, 0x0
    li      r29, 0x0
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80020984
    mr      r3, r30
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80020984
    li      r29, 0x1
branch_0x80020984:
    clrlwi. r0, r29, 24
    beq-    branch_0x80020994
    li      r0, 0x1
    b       branch_0x80020998

branch_0x80020994:
    li      r0, 0x0
branch_0x80020998:
    clrlwi. r0, r0, 24
    bne-    branch_0x800209cc
    mr      r3, r30
    lwz     r4, 0x50(r30)
    bl      isRailCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800209cc
    lwz     r4, 0x50(r30)
    cmpwi   r4, 0x2
    beq-    branch_0x800209cc
    lhz     r0, 0x278(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800209d4
branch_0x800209cc:
    li      r31, 0x0
    b       branch_0x80020a7c

branch_0x800209d4:
    cmpwi   r4, 0x2a
    beq-    branch_0x80020a7c
    mr      r3, r30
    bl      isNormalCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80020a00
    mr      r3, r30
    lwz     r4, 0x50(r30)
    bl      isTowerCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80020a7c
branch_0x80020a00:
    lwz     r4, 0x68(r30)
    lwz     r5, R13Off_m0x5eac(r13)
    lhz     r3, 0x18(r4)
    lhz     r0, 0x1a(r4)
    sraw    r3, r3, r5
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r0, r0, r5
    lfs     f2, 0x8(r4)
    slwi    r3, r3, 2
    lfs     f1, 0xc(r4)
    slwi    r0, r0, 2
    lfsx    f3, r6, r3
    lfsx    f0, r6, r0
    fmuls   f3, f2, f3
    lfs     f2, 0x14(r30)
    fmuls   f1, f1, f0
    lfs     f0, 0x40(r30)
    fsubs   f2, f2, f0
    fcmpo   cr0, f3, f1
    ble-    branch_0x80020a54
    fmr     f1, f3
branch_0x80020a54:
    lfs     f0, -0x79a4(r2)
    fmuls   f0, f0, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x80020a7c
    lhz     r0, 0x278(r30)
    li      r31, 0x0
    cmplwi  r0, 0x78
    bge-    branch_0x80020a7c
    li      r0, 0x78
    sth     r0, 0x278(r30)
branch_0x80020a7c:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl calcInHouseNo___15CPolarSubCameraFb
calcInHouseNo___15CPolarSubCameraFb: # 0x80020a9c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    li      r4, 0x1
    stwu    sp, -0x1c0(sp)
    stfd    f31, 0x1b8(sp)
    stfd    f30, 0x1b0(sp)
    stfd    f29, 0x1a8(sp)
    stmw    r24, 0x188(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x80020b6c
    lfs     f1, 0x13c(r31)
    li      r3, 0x0
    lfs     f0, 0x124(r31)
    mr      r0, r3
    fcmpu   cr0, f1, f0
    bne-    branch_0x80020af4
    lfs     f1, 0x140(r31)
    lfs     f0, 0x128(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80020af4
    li      r0, 0x1
branch_0x80020af4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80020b10
    lfs     f1, 0x144(r31)
    lfs     f0, 0x12c(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80020b10
    li      r3, 0x1
branch_0x80020b10:
    clrlwi. r0, r3, 24
    beq-    branch_0x80020b6c
    lfs     f1, 0x160(r31)
    li      r3, 0x0
    lfs     f0, 0x148(r31)
    mr      r0, r3
    fcmpu   cr0, f1, f0
    bne-    branch_0x80020b44
    lfs     f1, 0x164(r31)
    lfs     f0, 0x14c(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80020b44
    li      r0, 0x1
branch_0x80020b44:
    clrlwi. r0, r0, 24
    beq-    branch_0x80020b60
    lfs     f1, 0x168(r31)
    lfs     f0, 0x150(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80020b60
    li      r3, 0x1
branch_0x80020b60:
    clrlwi. r0, r3, 24
    beq-    branch_0x80020b6c
    li      r4, 0x0
branch_0x80020b6c:
    clrlwi. r0, r4, 24
    beq-    branch_0x80021000
    lwz     r3, 0x2ac(r31)
    li      r28, 0x0
    lfs     f0, -0x79a0(r2)
    lfs     f1, 0x8(r3)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x80020c1c
    lwz     r4, 0x50(r31)
    addi    r29, r28, 0x0
    addi    r3, r31, 0x0
    bl      isTalkCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80020bb8
    mr      r3, r31
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80020bb8
    li      r29, 0x1
branch_0x80020bb8:
    clrlwi. r0, r29, 24
    beq-    branch_0x80020bc8
    li      r0, 0x1
    b       branch_0x80020bcc

branch_0x80020bc8:
    li      r0, 0x0
branch_0x80020bcc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80020c1c
    lwz     r4, 0x50(r31)
    addi    r3, r31, 0x0
    li      r29, 0x0
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80020c00
    mr      r3, r31
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80020c00
    li      r29, 0x1
branch_0x80020c00:
    clrlwi. r0, r29, 24
    beq-    branch_0x80020c10
    li      r0, 0x1
    b       branch_0x80020c14

branch_0x80020c10:
    li      r0, 0x0
branch_0x80020c14:
    clrlwi. r0, r0, 24
    beq-    branch_0x80020c20
branch_0x80020c1c:
    li      r28, 0x1
branch_0x80020c20:
    clrlwi. r0, r28, 24
    beq-    branch_0x80020cec
    li      r6, -0x1
    sth     r6, 0x2ca(r31)
    lha     r0, 0x2ca(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x80020c88
    sth     r0, 0x2c8(r31)
    lis     r4, 0x4330
    lwz     r3, 0x2d4(r31)
    lbz     r5, 0x2cc(r31)
    lbz     r0, 0x108(r3)
    stw     r5, 0x184(sp)
    lfd     f2, -0x7988(r2)
    stw     r0, 0x17c(sp)
    stw     r4, 0x180(sp)
    stw     r4, 0x178(sp)
    lfd     f1, 0x180(sp)
    lfd     f0, 0x178(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x800210bc
    addi    r0, r5, 0x1
    stb     r0, 0x2cc(r31)
    b       branch_0x800210bc

branch_0x80020c88:
    lha     r0, 0x2c8(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x800210bc
    lwz     r3, 0x2d4(r31)
    lis     r4, 0x4330
    lbz     r5, 0x2cc(r31)
    lbz     r0, 0x108(r3)
    stw     r5, 0x17c(sp)
    lfd     f2, -0x7988(r2)
    stw     r0, 0x184(sp)
    stw     r4, 0x178(sp)
    stw     r4, 0x180(sp)
    lfd     f1, 0x178(sp)
    lfd     f0, 0x180(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80020cdc
    addi    r0, r5, 0x1
    stb     r0, 0x2cc(r31)
    b       branch_0x800210bc

branch_0x80020cdc:
    sth     r6, 0x2c8(r31)
    li      r0, 0x0
    stb     r0, 0x2cc(r31)
    b       branch_0x800210bc

branch_0x80020cec:
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    addi    r4, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    addi    r3, sp, 0xa0
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x12
    bl      __construct_array
    lfs     f29, 0x4c(r31)
    mr      r3, r31
    lfs     f30, 0x48(r31)
    lfs     f31, 0x28(r31)
    bl      getFinalAngleZ__15CPolarSubCameraCFv
    lfs     f0, -0x7998(r2)
    mr      r28, r3
    lfs     f1, -0x799c(r2)
    fmuls   f0, f0, f30
    fmuls   f1, f1, f0
    bl      CLBRoundf_s___Ff
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r4, r3, 16
    lwz     r3, R13Off_m0x5ea4(r13)
    fmr     f1, f31
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lwz     r4, R13Off_m0x5ea8(r13)
    lfsx    f0, r3, r0
    lfs     f2, -0x7994(r2)
    mr      r7, r28
    lfsx    f3, r4, r0
    addi    r3, sp, 0xa0
    fdivs   f0, f2, f0
    lfs     f2, -0x7990(r2)
    addi    r4, sp, 0x8c
    addi    r5, r31, 0x124
    addi    r6, r31, 0x148
    fmuls   f0, f3, f0
    addi    r8, sp, 0x80
    fmuls   f0, f31, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x84(sp)
    lfs     f0, 0x84(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x80(sp)
    bl      CLBCalcNearNinePos__FPQ29JGeometry8TVec3_f_P6S16VecRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_sfRCQ29JGeometry8TVec2_f_
    li      r0, 0x3
    lfs     f2, 0x2c4(r31)
    mtctr   r0
    li      r6, 0x0
    li      r3, 0x0
branch_0x80020db0:
    addi    r4, sp, 0xa0
    lfs     f1, 0x25c(r31)
    add     r4, r4, r3
    lfs     f0, 0x0(r4)
    addi    r5, r4, 0x6c
    addi    r3, r3, 0xc
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x6c(r4)
    lfs     f1, 0x260(r31)
    lfs     f0, 0x4(r4)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x70(r4)
    lfs     f0, 0x8(r4)
    addi    r4, sp, 0xa0
    lfs     f1, 0x264(r31)
    add     r4, r4, r3
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x8(r5)
    lfs     f1, 0x25c(r31)
    addi    r5, r4, 0x6c
    lfs     f0, 0x0(r4)
    addi    r3, r3, 0xc
    addi    r6, r6, 0x1
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x6c(r4)
    lfs     f1, 0x260(r31)
    lfs     f0, 0x4(r4)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x70(r4)
    lfs     f0, 0x8(r4)
    addi    r4, sp, 0xa0
    lfs     f1, 0x264(r31)
    add     r4, r4, r3
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x8(r5)
    lfs     f1, 0x25c(r31)
    addi    r6, r6, 0x1
    lfs     f0, 0x0(r4)
    addi    r3, r3, 0xc
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x6c(r4)
    lfs     f1, 0x260(r31)
    lfs     f0, 0x4(r4)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x70(r4)
    lfs     f1, 0x264(r31)
    lfs     f0, 0x8(r4)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x74(r4)
    bdnz+      branch_0x80020db0
    lfs     f30, 0x2c0(r31)
    addi    r28, sp, 0xa0
    lfs     f31, -0x798c(r2)
    li      r26, 0x0
    li      r30, 0x0
branch_0x80020e8c:
    li      r25, 0x0
    li      r29, 0x0
branch_0x80020e94:
    add     r27, r29, r30
    lfs     f29, -0x79ac(r2)
    add     r27, r28, r27
    li      r24, 0x0
branch_0x80020ea4:
    lfs     f0, 0x0(r27)
    addi    r4, sp, 0x94
    lwz     r3, R13Off_m0x6328(r13)
    addi    r5, sp, 0x88
    stfs    f0, 0x94(sp)
    lfs     f0, 0x4(r27)
    fsubs   f0, f0, f29
    fadds   f0, f31, f0
    stfs    f0, 0x98(sp)
    lfs     f0, 0x8(r27)
    stfs    f0, 0x9c(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    lwz     r3, 0x88(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x80020fc8
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x600
    bne-    branch_0x80020ef4
    li      r0, 0x1
    b       branch_0x80020ef8

branch_0x80020ef4:
    li      r0, 0x0
branch_0x80020ef8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80020fc8
    lha     r0, 0x2(r3)
    sth     r0, 0x2ca(r31)
    lha     r0, 0x2ca(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x80020f60
    sth     r0, 0x2c8(r31)
    lis     r4, 0x4330
    lwz     r3, 0x2d4(r31)
    lbz     r5, 0x2cc(r31)
    lbz     r0, 0x108(r3)
    stw     r5, 0x17c(sp)
    lfd     f2, -0x7988(r2)
    stw     r0, 0x184(sp)
    stw     r4, 0x178(sp)
    stw     r4, 0x180(sp)
    lfd     f1, 0x178(sp)
    lfd     f0, 0x180(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x800210bc
    addi    r0, r5, 0x1
    stb     r0, 0x2cc(r31)
    b       branch_0x800210bc

branch_0x80020f60:
    lha     r0, 0x2c8(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x800210bc
    lwz     r3, 0x2d4(r31)
    lis     r4, 0x4330
    lbz     r5, 0x2cc(r31)
    lbz     r0, 0x108(r3)
    stw     r5, 0x17c(sp)
    lfd     f2, -0x7988(r2)
    stw     r0, 0x184(sp)
    stw     r4, 0x178(sp)
    stw     r4, 0x180(sp)
    lfd     f1, 0x178(sp)
    lfd     f0, 0x180(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80020fb4
    addi    r0, r5, 0x1
    stb     r0, 0x2cc(r31)
    b       branch_0x800210bc

branch_0x80020fb4:
    li      r0, -0x1
    sth     r0, 0x2c8(r31)
    li      r0, 0x0
    stb     r0, 0x2cc(r31)
    b       branch_0x800210bc

branch_0x80020fc8:
    addi    r24, r24, 0x1
    fadds   f29, f29, f30
    cmpwi   r24, 0x2
    blt+    branch_0x80020ea4
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r29, r29, 0x6c
    blt+    branch_0x80020e94
    addi    r26, r26, 0x1
    cmpwi   r26, 0x9
    addi    r30, r30, 0xc
    blt+    branch_0x80020e8c
    li      r0, -0x1
    sth     r0, 0x2ca(r31)
branch_0x80021000:
    lha     r0, 0x2ca(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x80021058
    sth     r0, 0x2c8(r31)
    lis     r4, 0x4330
    lwz     r3, 0x2d4(r31)
    lbz     r5, 0x2cc(r31)
    lbz     r0, 0x108(r3)
    stw     r5, 0x17c(sp)
    lfd     f2, -0x7988(r2)
    stw     r0, 0x184(sp)
    stw     r4, 0x178(sp)
    stw     r4, 0x180(sp)
    lfd     f1, 0x178(sp)
    lfd     f0, 0x180(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x800210bc
    addi    r0, r5, 0x1
    stb     r0, 0x2cc(r31)
    b       branch_0x800210bc

branch_0x80021058:
    lha     r0, 0x2c8(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x800210bc
    lwz     r3, 0x2d4(r31)
    lis     r4, 0x4330
    lbz     r5, 0x2cc(r31)
    lbz     r0, 0x108(r3)
    stw     r5, 0x17c(sp)
    lfd     f2, -0x7988(r2)
    stw     r0, 0x184(sp)
    stw     r4, 0x178(sp)
    stw     r4, 0x180(sp)
    lfd     f1, 0x178(sp)
    lfd     f0, 0x180(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x800210ac
    addi    r0, r5, 0x1
    stb     r0, 0x2cc(r31)
    b       branch_0x800210bc

branch_0x800210ac:
    li      r0, -0x1
    sth     r0, 0x2c8(r31)
    li      r0, 0x0
    stb     r0, 0x2cc(r31)
branch_0x800210bc:
    lmw     r24, 0x188(sp)
    lwz     r0, 0x1c4(sp)
    lfd     f31, 0x1b8(sp)
    lfd     f30, 0x1b0(sp)
    mtlr    r0
    lfd     f29, 0x1a8(sp)
    addi    sp, sp, 0x1c0
    blr


.globl __ct__Q29JGeometry8TVec3_f_Fv
__ct__Q29JGeometry8TVec3_f_Fv: # 0x800210dc
    blr


.globl CLBLinearInbetween_f___Ffff
CLBLinearInbetween_f___Ffff: # 0x800210e0
    fsubs   f0, f2, f1
    fmadds  f1, f3, f0, f1
    blr


.globl CLBRoundf_s___Ff
CLBRoundf_s___Ff: # 0x800210ec
    stwu    sp, -0x18(sp)
    lfs     f0, -0x79ac(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80021104
    lfs     f0, -0x7998(r2)
    b       branch_0x80021108

branch_0x80021104:
    lfs     f0, -0x7980(r2)
branch_0x80021108:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    blr

