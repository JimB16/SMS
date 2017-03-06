
.globl addMoveCameraAndMario__15CPolarSubCameraFRC3Vec
addMoveCameraAndMario__15CPolarSubCameraFRC3Vec: # 0x8003312c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xc4(sp)
    addi    r29, r3, 0x0
    lfs     f1, 0x10(r3)
    addi    r3, sp, 0x38
    lfs     f0, 0x0(r4)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0x10(r29)
    lfs     f0, 0x14(r29)
    fadds   f0, f0, f2
    stfs    f0, 0x14(r29)
    lfs     f0, 0x18(r29)
    fadds   f0, f0, f1
    stfs    f0, 0x18(r29)
    lfs     f1, 0x3c(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0x3c(r29)
    lfs     f0, 0x40(r29)
    fadds   f0, f0, f2
    stfs    f0, 0x40(r29)
    lfs     f0, 0x44(r29)
    fadds   f0, f0, f1
    stfs    f0, 0x44(r29)
    lfs     f1, 0x124(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0x124(r29)
    lfs     f0, 0x128(r29)
    fadds   f0, f0, f2
    stfs    f0, 0x128(r29)
    lfs     f0, 0x12c(r29)
    fadds   f0, f0, f1
    stfs    f0, 0x12c(r29)
    lfs     f1, 0x148(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0x148(r29)
    lfs     f0, 0x14c(r29)
    fadds   f0, f0, f2
    stfs    f0, 0x14c(r29)
    lfs     f0, 0x150(r29)
    fadds   f0, f0, f1
    stfs    f0, 0x150(r29)
    lwz     r31, -0x7110(r13)
    bl      set__Q29JGeometry8TVec3_f_FRC3Vec
    lfs     f1, 0x0(r31)
    mr      r4, r30
    lfs     f0, 0x38(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x3c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x40(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
    lwz     r3, 0x6c(r29)
    bl      addMoveCameraAndMario__16TCameraInbetweenFRC3Vec
    lfs     f1, 0x80(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0x80(r29)
    lfs     f0, 0x84(r29)
    fadds   f0, f0, f2
    stfs    f0, 0x84(r29)
    lfs     f0, 0x88(r29)
    fadds   f0, f0, f1
    stfs    f0, 0x88(r29)
    lfs     f1, 0x8c(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0x8c(r29)
    lfs     f0, 0x90(r29)
    fadds   f0, f0, f2
    stfs    f0, 0x90(r29)
    lfs     f0, 0x94(r29)
    fadds   f0, f0, f1
    stfs    f0, 0x94(r29)
    lfs     f1, 0x98(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0x98(r29)
    lfs     f0, 0x9c(r29)
    fadds   f0, f0, f2
    stfs    f0, 0x9c(r29)
    lfs     f0, 0xa0(r29)
    fadds   f0, f0, f1
    stfs    f0, 0xa0(r29)
    lfs     f1, 0xb4(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0xb4(r29)
    lfs     f0, 0xb8(r29)
    fadds   f0, f0, f2
    stfs    f0, 0xb8(r29)
    lfs     f0, 0xbc(r29)
    fadds   f0, f0, f1
    stfs    f0, 0xbc(r29)
    lfs     f1, 0xc0(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0xc0(r29)
    lfs     f0, 0xc4(r29)
    fadds   f0, f0, f2
    stfs    f0, 0xc4(r29)
    lfs     f0, 0xc8(r29)
    fadds   f0, f0, f1
    stfs    f0, 0xc8(r29)
    lfs     f1, 0xcc(r29)
    lfs     f0, 0x0(r30)
    lfs     f2, 0x4(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x8(r30)
    stfs    f0, 0xcc(r29)
    lfs     f0, 0xd0(r29)
    fadds   f0, f0, f2
    stfs    f0, 0xd0(r29)
    lfs     f0, 0xd4(r29)
    fadds   f0, f0, f1
    stfs    f0, 0xd4(r29)
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl warpPosAndAt__15CPolarSubCameraFfs
warpPosAndAt__15CPolarSubCameraFfs: # 0x80033390
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f1
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0x49
    bge-    branch_0x800335b8
    slwi    r0, r0, 2
    lwz     r3, 0x68(r31)
    add     r4, r31, r0
    lwz     r4, 0x2d8(r4)
    bl      copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam
    addi    r3, sp, 0x20
    addi    r4, r31, 0x0
    bl      getUsualLookat__15CPolarSubCameraCFv
    lfs     f1, 0x20(sp)
    mr      r3, r31
    lfs     f0, 0x24(sp)
    stfs    f1, 0x2c(sp)
    stfs    f0, 0x30(sp)
    lfs     f0, 0x28(sp)
    stfs    f0, 0x34(sp)
    lwz     r4, 0x50(r31)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8003343c
    lfs     f0, -0x7530(rtoc)
    fmr     f1, f31
    fcmpo   cr0, f31, f0
    ble-    branch_0x80033424
    fmr     f1, f0
    b       branch_0x80033434

branch_0x80033424:
    lfs     f0, -0x752c(rtoc)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80033434
    fmr     f1, f0
branch_0x80033434:
    stfs    f1, 0xa8(r31)
    b       branch_0x80033468

branch_0x8003343c:
    lfs     f2, 0x26c(r31)
    fmr     f0, f31
    lfs     f1, 0x268(r31)
    fcmpo   cr0, f31, f2
    ble-    branch_0x80033458
    fmr     f0, f2
    b       branch_0x80033464

branch_0x80033458:
    fcmpo   cr0, f31, f1
    bge-    branch_0x80033464
    fmr     f0, f1
branch_0x80033464:
    stfs    f0, 0xa8(r31)
branch_0x80033468:
    mr      r3, r31
    bl      calcAngleXFromXRotRatio___15CPolarSubCameraCFv
    sth     r3, 0xa4(r31)
    mr      r3, r31
    sth     r30, 0xa6(r31)
    bl      calcDistFromXRotRatio___15CPolarSubCameraCFv
    lha     r5, 0xa4(r31)
    addi    r3, sp, 0x2c
    lha     r6, 0xa6(r31)
    addi    r4, sp, 0x38
    bl      CLBPolarToCross__FRC3VecP3Vecfss
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0x49
    bge-    branch_0x800335b8
    slwi    r0, r0, 2
    lwz     r3, 0x68(r31)
    add     r4, r31, r0
    lwz     r4, 0x2d8(r4)
    bl      copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam
    mr      r3, r31
    bl      killHeightPan___15CPolarSubCameraFv
    lfs     f0, 0x38(sp)
    addi    r4, sp, 0x38
    addi    r5, sp, 0x2c
    stfs    f0, 0x10(r31)
    lfs     f0, 0x3c(sp)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x2c(sp)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x30(sp)
    stfs    f0, 0x40(r31)
    lfs     f0, 0x34(sp)
    stfs    f0, 0x44(r31)
    lfs     f0, 0x38(sp)
    stfs    f0, 0x124(r31)
    lfs     f0, 0x3c(sp)
    stfs    f0, 0x128(r31)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x12c(r31)
    lfs     f0, 0x2c(sp)
    stfs    f0, 0x148(r31)
    lfs     f0, 0x30(sp)
    stfs    f0, 0x14c(r31)
    lfs     f0, 0x34(sp)
    stfs    f0, 0x150(r31)
    lwz     r3, 0x6c(r31)
    bl      warpPosAndAt__16TCameraInbetweenFRC3VecRC3Vec
    lwz     r4, 0x6c(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x4(r4)
    addi    r4, sp, 0x38
    addi    r5, sp, 0x2c
    bl      calcNowTargetFromPosAndAt___15CPolarSubCameraFRC3VecRC3Vec
    lwz     r3, 0x80(r31)
    lwz     r0, 0x84(r31)
    stw     r3, 0xb4(r31)
    stw     r0, 0xb8(r31)
    lwz     r0, 0x88(r31)
    stw     r0, 0xbc(r31)
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x90(r31)
    stw     r3, 0xc0(r31)
    stw     r0, 0xc4(r31)
    lwz     r0, 0x94(r31)
    stw     r0, 0xc8(r31)
    lwz     r3, 0x98(r31)
    lwz     r0, 0x9c(r31)
    stw     r3, 0xcc(r31)
    stw     r0, 0xd0(r31)
    lwz     r0, 0xa0(r31)
    stw     r0, 0xd4(r31)
    lha     r0, 0xa4(r31)
    sth     r0, 0xd8(r31)
    lha     r0, 0xa6(r31)
    sth     r0, 0xda(r31)
    lfs     f0, 0xa8(r31)
    stfs    f0, 0xdc(r31)
    lha     r0, 0xac(r31)
    sth     r0, 0xe0(r31)
    lfs     f0, 0xb0(r31)
    stfs    f0, 0xe4(r31)
branch_0x800335b8:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl warpPosAndAt__15CPolarSubCameraFRC3VecRC3Vec
warpPosAndAt__15CPolarSubCameraFRC3VecRC3Vec: # 0x800335d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0x49
    bge-    branch_0x8003371c
    slwi    r0, r0, 2
    lwz     r3, 0x68(r31)
    add     r4, r31, r0
    lwz     r4, 0x2d8(r4)
    bl      copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam
    mr      r3, r31
    bl      killHeightPan___15CPolarSubCameraFv
    lfs     f0, 0x0(r29)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    stfs    f0, 0x10(r31)
    lfs     f0, 0x4(r29)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x8(r29)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x0(r30)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x40(r31)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x44(r31)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x124(r31)
    lfs     f0, 0x4(r29)
    stfs    f0, 0x128(r31)
    lfs     f0, 0x8(r29)
    stfs    f0, 0x12c(r31)
    lfs     f0, 0x0(r30)
    stfs    f0, 0x148(r31)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x14c(r31)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x150(r31)
    lwz     r3, 0x6c(r31)
    bl      warpPosAndAt__16TCameraInbetweenFRC3VecRC3Vec
    lwz     r4, 0x6c(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x4(r4)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      calcNowTargetFromPosAndAt___15CPolarSubCameraFRC3VecRC3Vec
    lwz     r3, 0x80(r31)
    lwz     r0, 0x84(r31)
    stw     r3, 0xb4(r31)
    stw     r0, 0xb8(r31)
    lwz     r0, 0x88(r31)
    stw     r0, 0xbc(r31)
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x90(r31)
    stw     r3, 0xc0(r31)
    stw     r0, 0xc4(r31)
    lwz     r0, 0x94(r31)
    stw     r0, 0xc8(r31)
    lwz     r3, 0x98(r31)
    lwz     r0, 0x9c(r31)
    stw     r3, 0xcc(r31)
    stw     r0, 0xd0(r31)
    lwz     r0, 0xa0(r31)
    stw     r0, 0xd4(r31)
    lha     r0, 0xa4(r31)
    sth     r0, 0xd8(r31)
    lha     r0, 0xa6(r31)
    sth     r0, 0xda(r31)
    lfs     f0, 0xa8(r31)
    stfs    f0, 0xdc(r31)
    lha     r0, 0xac(r31)
    sth     r0, 0xe0(r31)
    lfs     f0, 0xb0(r31)
    stfs    f0, 0xe4(r31)
branch_0x8003371c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr

