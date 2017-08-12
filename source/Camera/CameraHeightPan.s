
.globl killHeightPan___15CPolarSubCameraFv
killHeightPan___15CPolarSubCameraFv: # 0x80026430
    lhz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    sth     r0, 0x64(r3)
    lhz     r0, 0x64(r3)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x64(r3)
    lfs     f0, 0x9c(r3)
    stfs    f0, 0x84(r3)
    lfs     f0, -0x78e8(r2)
    stfs    f0, 0x24c(r3)
    blr


.globl execHeightPan___15CPolarSubCameraFv
execHeightPan___15CPolarSubCameraFv: # 0x8002645c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r29, 0x2c(sp)
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi  r0, r3, 24
    lfs     f1, -0x78e8(r2)
    neg     r0, r0
    cntlzw  r0, r0
    srwi    r31, r0, 5
    extrwi. r0, r0, 8, 19
    beq-    branch_0x800264a4
    lwz     r3, 0x68(r30)
    lfs     f1, 0x2c(r3)
branch_0x800264a4:
    lwz     r4, 0x68(r30)
    addi    r3, r30, 0x24c
    lfs     f2, 0x30(r4)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f1, 0x90(r30)
    mr      r3, r30
    lfs     f0, 0x24c(r30)
    li      r29, 0x0
    fadds   f0, f1, f0
    stfs    f0, 0x90(r30)
    lfs     f1, 0x9c(r30)
    lfs     f0, 0xd0(r30)
    fsubs   f31, f1, f0
    bl      isNotHeightPanCamMode___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80026520
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x80026520
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioGoDown__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80026520
    bl      SMS_IsMarioOnWire__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x80026520
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xffe0
    cmplwi  r0, 0x345
    beq-    branch_0x80026520
    li      r29, 0x1
branch_0x80026520:
    clrlwi. r0, r29, 24
    beq-    branch_0x80026580
    lhz     r0, 0x64(r30)
    addi    r3, r30, 0x84
    ori     r0, r0, 0x1
    sth     r0, 0x64(r30)
    lhz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x64(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0x84(r30)
    lwz     r4, 0x68(r30)
    lfs     f1, 0x9c(r30)
    lfs     f2, 0x34(r4)
    lfs     f3, -0x78e8(r2)
    bl      CLBChaseDecrease__FPffff
    lfs     f1, 0xa8(r30)
    lfs     f0, 0xdc(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80026688
    lfs     f0, 0x84(r30)
    fadds   f0, f0, f31
    stfs    f0, 0x84(r30)
    b       branch_0x80026688

branch_0x80026580:
    lhz     r0, 0x64(r30)
    clrlwi. r0, r0, 30
    beq-    branch_0x80026680
    lfs     f1, 0xa8(r30)
    lfs     f0, 0xdc(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800265a8
    lfs     f0, 0x84(r30)
    fadds   f0, f0, f31
    stfs    f0, 0x84(r30)
branch_0x800265a8:
    lhz     r3, 0x64(r30)
    clrlwi. r0, r3, 31
    beq-    branch_0x80026624
    clrrwi  r0, r3, 1
    sth     r0, 0x64(r30)
    li      r5, 0x0
    lwz     r0, 0x50(r30)
    cmpwi   r0, 0x13
    beq-    branch_0x800265dc
    bge-    branch_0x800265f4
    cmpwi   r0, 0x5
    beq-    branch_0x800265dc
    b       branch_0x800265f4

branch_0x800265dc:
    lwz     r3, 0x2d4(r30)
    lha     r4, 0x256(r30)
    lha     r0, 0x54(r3)
    cmpw    r4, r0
    bge-    branch_0x800265f4
    li      r5, 0x1
branch_0x800265f4:
    clrlwi. r0, r5, 24
    beq-    branch_0x80026618
    lfs     f0, 0x9c(r30)
    stfs    f0, 0x84(r30)
    stfs    f0, 0x14(r30)
    lhz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x64(r30)
    b       branch_0x80026624

branch_0x80026618:
    lhz     r0, 0x64(r30)
    ori     r0, r0, 0x2
    sth     r0, 0x64(r30)
branch_0x80026624:
    lfs     f0, 0x84(r30)
    lfs     f1, 0x9c(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80026668
    lwz     r5, 0x2d4(r30)
    addi    r3, r30, 0x84
    lfs     f3, 0x40(r5)
    lfs     f2, 0x2c(r5)
    bl      CLBChaseSpecialDecrease__FPffff
    cmpwi   r3, 0x0
    bne-    branch_0x80026688
    clrlwi. r0, r31, 24
    bne-    branch_0x80026688
    lhz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x64(r30)
    b       branch_0x80026688

branch_0x80026668:
    clrlwi. r0, r31, 24
    bne-    branch_0x80026688
    lhz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x64(r30)
    b       branch_0x80026688

branch_0x80026680:
    lfs     f0, 0x9c(r30)
    stfs    f0, 0x84(r30)
branch_0x80026688:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x40
    blr


.globl isNotHeightPanCamMode___15CPolarSubCameraCFv
isNotHeightPanCamMode___15CPolarSubCameraCFv: # 0x800266a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800266e8
    mr      r3, r30
    lwz     r4, 0x50(r30)
    bl      isRailCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x800266f0
branch_0x800266e8:
    li      r31, 0x1
    b       branch_0x8002671c

branch_0x800266f0:
    lwz     r3, 0x50(r30)
    addi    r0, r3, -0x8
    cmplwi  r0, 0x39
    bgt-    branch_0x8002671c
    lis     r3, unk_803acee0@ha
    addi    r3, r3, unk_803acee0@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80026718:
    li      r31, 0x1
branch_0x8002671c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl killHeightPanWhenChangeCamMode___15CPolarSubCameraFv
killHeightPanWhenChangeCamMode___15CPolarSubCameraFv: # 0x80026738
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80026780
    mr      r3, r29
    lwz     r4, 0x50(r29)
    bl      isRailCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80026788
branch_0x80026780:
    li      r31, 0x1
    b       branch_0x800267b4

branch_0x80026788:
    lwz     r3, 0x50(r29)
    addi    r0, r3, -0x8
    cmplwi  r0, 0x39
    bgt-    branch_0x800267b4
    lis     r3, unk_803acfc8@ha
    addi    r3, r3, unk_803acfc8@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x800267b0:
    li      r31, 0x1
branch_0x800267b4:
    clrlwi. r0, r31, 24
    beq-    branch_0x800267c0
    li      r30, 0x1
branch_0x800267c0:
    lwz     r0, 0x54(r29)
    cmpwi   r0, 0x3e
    beq-    branch_0x800267dc
    bge-    branch_0x800267e0
    cmpwi   r0, 0xf
    beq-    branch_0x800267dc
    b       branch_0x800267e0

branch_0x800267dc:
    li      r30, 0x1
branch_0x800267e0:
    clrlwi. r0, r30, 24
    beq-    branch_0x80026810
    lhz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    sth     r0, 0x64(r29)
    lhz     r0, 0x64(r29)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x64(r29)
    lfs     f0, 0x9c(r29)
    stfs    f0, 0x84(r29)
    lfs     f0, -0x78e8(r2)
    stfs    f0, 0x24c(r29)
branch_0x80026810:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr

