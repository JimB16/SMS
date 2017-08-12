
.globl execCameraModeChangeProc___15CPolarSubCameraFi
execCameraModeChangeProc___15CPolarSubCameraFi: # 0x80021120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stmw    r26, 0xe8(sp)
    addi    r31, r3, 0x0
    addi    r27, r4, 0x0
    bl      SMS_isMultiPlayerMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80021178
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    lwz     r4, 0x70(r31)
    extsh   r5, r3
    li      r0, 0x0
    stw     r4, 0x74(r31)
    mr      r3, r31
    li      r4, 0x2
    stw     r0, 0x70(r31)
    li      r6, 0x0
    bl      changeCamModeSub___15CPolarSubCameraFiib
    b       branch_0x80021afc

branch_0x80021178:
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x447
    bne-    branch_0x800211bc
    addi    r3, r31, 0x0
    li      r4, 0x2e
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    lwz     r4, 0x70(r31)
    extsh   r5, r3
    li      r0, 0x0
    stw     r4, 0x74(r31)
    mr      r3, r31
    li      r4, 0x2e
    stw     r0, 0x70(r31)
    li      r6, 0x0
    bl      changeCamModeSub___15CPolarSubCameraFiib
    b       branch_0x80021afc

branch_0x800211bc:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    li      r26, 0x1
    bl      isFixCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800211ec
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800211ec
    li      r26, 0x0
branch_0x800211ec:
    clrlwi. r0, r26, 24
    beq-    branch_0x80021230
    lwz     r3, 0x120(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80021afc
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x483d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80021afc
    li      r3, 0x483d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80021afc

branch_0x80021230:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80021248
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      execNoticeOnOffProc___15CPolarSubCameraFQ215CPolarSubCamera19EnumNoticeOnOffMode
branch_0x80021248:
    lwz     r3, R13Off_m0x60d8(r13)
    li      r4, 0x1
    lwz     r28, 0x50(r31)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x202
    beq-    branch_0x80021274
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x203
    beq-    branch_0x80021274
    li      r4, 0x0
branch_0x80021274:
    clrlwi. r0, r4, 24
    bne-    branch_0x800212f8
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80021294
    li      r0, 0x1
    b       branch_0x80021298

branch_0x80021294:
    li      r0, 0x0
branch_0x80021298:
    clrlwi. r0, r0, 24
    bne-    branch_0x800212f8
    bl      SMS_GetMarioStatus__Fv
    rlwinm. r0, r3, 0, 15, 15
    bne-    branch_0x800212f8
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioRocketing__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800212f8
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x800212d4
    li      r0, 0x1
    b       branch_0x800212d8

branch_0x800212d4:
    li      r0, 0x0
branch_0x800212d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x800212f8
    bl      SMS_GetMarioStatus__Fv
    mr      r4, r3
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioClimb__16TCameraMarioDataCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8002136c
branch_0x800212f8:
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80021318
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      doLButtonCameraOff___15CPolarSubCameraFb
branch_0x80021318:
    lwz     r3, 0x120(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80021330
    mr      r3, r31
    bl      execFrontRotate___15CPolarSubCameraFv
branch_0x80021330:
    lwz     r3, 0x120(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80021558
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x483d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80021558
    li      r3, 0x483d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80021558

branch_0x8002136c:
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x800213e0
    bl      SMS_GetMarioStatus__Fv
    rlwinm. r0, r3, 0, 14, 14
    beq-    branch_0x8002139c
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      doLButtonCameraOff___15CPolarSubCameraFb
    b       branch_0x80021558

branch_0x8002139c:
    mr      r3, r31
    bl      isLButtonCameraInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80021558
    lwz     r4, 0x120(r31)
    lis     r3, unk_00014000@h
    addi    r0, r3, unk_00014000@l
    lwz     r3, 0xd4(r4)
    and.    r0, r3, r0
    beq-    branch_0x80021558
    lhz     r0, 0x282(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80021558
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      doLButtonCameraOff___15CPolarSubCameraFb
    b       branch_0x80021558

branch_0x800213e0:
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isNormalCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80021408
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isTowerCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80021558
branch_0x80021408:
    lhz     r3, 0x64(r31)
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x80021490
    rlwinm  r0, r3, 0, 28, 26
    sth     r0, 0x64(r31)
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80021558
    mr      r3, r31
    bl      isLButtonCameraInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80021558
    li      r0, 0x3c
    sth     r0, 0x282(r31)
    li      r4, 0x4824
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80021470
    li      r3, 0x4824
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80021470:
    addi    r3, r31, 0x0
    li      r4, 0x7
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    extsh   r5, r3
    addi    r3, r31, 0x0
    li      r4, 0x7
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
    b       branch_0x80021558

branch_0x80021490:
    lwz     r3, 0x120(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 16, 17
    beq-    branch_0x80021558
    rlwinm. r0, r3, 0, 17, 17
    beq-    branch_0x800214c0
    lhz     r0, 0x282(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80021558
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      execNoticeOnOffProc___15CPolarSubCameraFQ215CPolarSubCamera19EnumNoticeOnOffMode
branch_0x800214c0:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80021540
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80021558
    mr      r3, r31
    bl      isLButtonCameraInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80021558
    li      r0, 0x3c
    sth     r0, 0x282(r31)
    li      r4, 0x4824
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80021520
    li      r3, 0x4824
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80021520:
    addi    r3, r31, 0x0
    li      r4, 0x7
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    extsh   r5, r3
    addi    r3, r31, 0x0
    li      r4, 0x7
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
    b       branch_0x80021558

branch_0x80021540:
    mr      r3, r31
    bl      isLButtonCameraInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80021558
    mr      r3, r31
    bl      execFrontRotate___15CPolarSubCameraFv
branch_0x80021558:
    lwz     r4, 0x50(r31)
    cmpw    r28, r4
    bne-    branch_0x80021afc
    mr      r3, r31
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80021afc
    bl      SMS_GetMarioStatus__Fv
    lwz     r5, R13Off_m0x60d8(r13)
    cmpwi   r27, 0x45
    lwz     r4, R13Off_m0x6048(r13)
    mr      r29, r3
    lwz     r28, 0x80(r5)
    lbz     r30, 0x7c(r4)
    bne-    branch_0x8002159c
    mr      r26, r27
    b       branch_0x80021acc

branch_0x8002159c:
    lwz     r4, 0x118(r5)
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x800215b0
    li      r0, 0x1
    b       branch_0x800215b4

branch_0x800215b0:
    li      r0, 0x0
branch_0x800215b4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800215c4
    li      r26, 0x2b
    b       branch_0x80021acc

branch_0x800215c4:
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800215dc
    li      r0, 0x1
    b       branch_0x800215e0

branch_0x800215dc:
    li      r0, 0x0
branch_0x800215e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80021600
    cmpwi   r30, 0x9
    bne-    branch_0x800215f8
    li      r26, 0x8
    b       branch_0x80021acc

branch_0x800215f8:
    li      r26, 0xd
    b       branch_0x80021acc

branch_0x80021600:
    rlwinm. r0, r4, 0, 17, 17
    beq-    branch_0x80021610
    li      r0, 0x1
    b       branch_0x80021614

branch_0x80021610:
    li      r0, 0x0
branch_0x80021614:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002164c
    cmpwi   r30, 0x7
    beq-    branch_0x80021644
    rlwinm. r0, r29, 0, 18, 18
    bne-    branch_0x8002163c
    rlwinm. r0, r28, 0, 18, 18
    beq-    branch_0x80021644
    rlwinm. r0, r29, 0, 20, 20
    beq-    branch_0x80021644
branch_0x8002163c:
    li      r26, 0x44
    b       branch_0x80021acc

branch_0x80021644:
    li      r26, 0x2c
    b       branch_0x80021acc

branch_0x8002164c:
    cmpwi   r30, 0x7
    beq-    branch_0x80021664
    rlwinm. r0, r29, 0, 18, 18
    beq-    branch_0x80021664
    li      r26, 0x31
    b       branch_0x80021acc

branch_0x80021664:
    bl      SMS_IsMarioOnWire__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80021690
    addis   r3, r29, 0xf000
    cmplwi  r3, 0x554
    beq-    branch_0x80021688
    addi    r0, r3, -0x357
    cmplwi  r0, 0x1
    bgt-    branch_0x80021690
branch_0x80021688:
    li      r26, 0x10
    b       branch_0x80021acc

branch_0x80021690:
    bl      SMS_IsMarioOnWire__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x800216b8
    cmplwi  r29, 0x892
    beq-    branch_0x800216b8
    cmplwi  r28, 0x892
    bne-    branch_0x800216c0
    addis   r0, r29, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x800216c0
branch_0x800216b8:
    li      r26, 0x6
    b       branch_0x80021acc

branch_0x800216c0:
    rlwinm. r0, r29, 0, 15, 15
    beq-    branch_0x800216d0
    li      r26, 0x30
    b       branch_0x80021acc

branch_0x800216d0:
    rlwinm. r0, r29, 0, 2, 2
    beq-    branch_0x80021700
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x2c0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80021700
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x6c
    bne-    branch_0x80021700
    li      r26, 0x34
    b       branch_0x80021acc

branch_0x80021700:
    li      r26, 0x0
    bl      SMS_GetMarioStatus__Fv
    lis     r4, unk_30000569@h
    addi    r0, r4, unk_30000569@l
    cmpw    r3, r0
    beq-    branch_0x8002174c
    bge-    branch_0x80021738
    addi    r0, r4, 0x36d
    cmpw    r3, r0
    bge-    branch_0x80021750
    addi    r0, r4, 0x36a
    cmpw    r3, r0
    bge-    branch_0x8002174c
    b       branch_0x80021750

branch_0x80021738:
    lis     r4, unk_38000368@h
    addi    r0, r4, unk_38000368@l
    cmpw    r3, r0
    beq-    branch_0x8002174c
    b       branch_0x80021750

branch_0x8002174c:
    li      r26, 0x1
branch_0x80021750:
    clrlwi. r0, r26, 24
    beq-    branch_0x80021770
    cmpwi   r30, 0x8
    bne-    branch_0x80021768
    li      r26, 0x3d
    b       branch_0x80021acc

branch_0x80021768:
    li      r26, 0x3c
    b       branch_0x80021acc

branch_0x80021770:
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioSlider__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80021788
    li      r26, 0x2a
    b       branch_0x80021acc

branch_0x80021788:
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioLeanMirror__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800217a0
    li      r26, 0xb
    b       branch_0x80021acc

branch_0x800217a0:
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioIndoor__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800217e0
    cmpwi   r27, 0x0
    blt-    branch_0x800217c8
    cmpwi   r27, 0x49
    bge-    branch_0x800217c8
    mr      r26, r27
    b       branch_0x80021acc

branch_0x800217c8:
    cmpwi   r30, 0x7
    bne-    branch_0x800217d8
    li      r26, 0x14
    b       branch_0x80021acc

branch_0x800217d8:
    li      r26, 0xe
    b       branch_0x80021acc

branch_0x800217e0:
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioRocketing__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80021818
    cmpwi   r27, 0x41
    beq-    branch_0x80021818
    bl      SMS_GetMarioWaterGun__Fv
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x80021810
    li      r26, 0x12
    b       branch_0x80021acc

branch_0x80021810:
    li      r26, 0x5
    b       branch_0x80021acc

branch_0x80021818:
    rlwinm. r0, r29, 0, 10, 10
    beq-    branch_0x80021844
    addis   r0, r29, 0xffe0
    cmplwi  r0, 0x345
    beq-    branch_0x80021844
    cmpwi   r30, 0x8
    bne-    branch_0x8002183c
    li      r26, 0x3e
    b       branch_0x80021acc

branch_0x8002183c:
    li      r26, 0xf
    b       branch_0x80021acc

branch_0x80021844:
    mr      r3, r31
    bl      isChangeToBossGesoCamera___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002185c
    li      r26, 0x39
    b       branch_0x80021acc

branch_0x8002185c:
    lwz     r3, R13Off_m0x60d8(r13)
    li      r4, 0x0
    lwz     r3, 0x6c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80021884
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x28
    bne-    branch_0x80021884
    li      r4, 0x1
branch_0x80021884:
    clrlwi. r0, r4, 24
    beq-    branch_0x80021894
    li      r26, 0x43
    b       branch_0x80021acc

branch_0x80021894:
    li      r26, 0x0
    bl      SMS_GetMarioGrPlane__Fv
    lis     r4, unk_400002c9@h
    addi    r4, r4, unk_400002c9@l
    bl      SMS_GetGroundActor__FPC12TBGCheckDataUl
    cmplwi  r3, 0x0
    beq-    branch_0x800218b4
    li      r26, 0x1
branch_0x800218b4:
    clrlwi. r0, r26, 24
    beq-    branch_0x800218c4
    li      r26, 0x11
    b       branch_0x80021acc

branch_0x800218c4:
    cmpwi   r30, 0x7
    beq-    branch_0x800218dc
    cmplwi  r29, 0x884
    bne-    branch_0x800218dc
    li      r26, 0x13
    b       branch_0x80021acc

branch_0x800218dc:
    mr      r3, r31
    bl      isChangeToParallelCameraByMoveBG___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800218f4
    li      r26, 0x1
    b       branch_0x80021acc

branch_0x800218f4:
    li      r26, 0x0
    bl      SMS_GetMarioGrPlane__Fv
    lis     r4, unk_4000012f@h
    addi    r4, r4, unk_4000012f@l
    bl      SMS_GetGroundActor__FPC12TBGCheckDataUl
    cmplwi  r3, 0x0
    beq-    branch_0x80021914
    li      r26, 0x1
branch_0x80021914:
    clrlwi. r0, r26, 24
    beq-    branch_0x80021924
    li      r26, 0x47
    b       branch_0x80021acc

branch_0x80021924:
    addis   r0, r29, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x80021990
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      isOverHipAttackSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8002194c
    mr      r26, r27
    b       branch_0x80021acc

branch_0x8002194c:
    li      r26, 0x0
    bl      SMS_isExMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80021978
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmpwi   r0, 0x1f
    bge-    branch_0x80021974
    cmpwi   r0, 0x1d
    bge-    branch_0x80021978
branch_0x80021974:
    li      r26, 0x1
branch_0x80021978:
    clrlwi. r0, r26, 24
    beq-    branch_0x80021988
    li      r26, 0x26
    b       branch_0x80021acc

branch_0x80021988:
    li      r26, 0x4
    b       branch_0x80021acc

branch_0x80021990:
    cmpwi   r27, 0x0
    blt-    branch_0x800219bc
    cmpwi   r27, 0x49
    bge-    branch_0x800219bc
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      isFollowCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800219bc
    mr      r26, r27
    b       branch_0x80021acc

branch_0x800219bc:
    lwz     r3, R13Off_m0x7110(r13)
    mr      r4, r29
    bl      isMarioClimb__16TCameraMarioDataCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800219d8
    li      r26, 0x15
    b       branch_0x80021acc

branch_0x800219d8:
    lis     r3, unk_02000886@h
    addi    r0, r3, unk_02000886@l
    cmpw    r29, r0
    beq-    branch_0x800219f8
    bge-    branch_0x80021a70
    cmpwi   r29, 0x8a7
    beq-    branch_0x800219f8
    b       branch_0x80021a70

branch_0x800219f8:
    lwz     r3, R13Off_m0x7110(r13)
    mr      r4, r28
    bl      isMarioClimb__16TCameraMarioDataCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80021a2c
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0x15
    beq-    branch_0x80021a24
    lwz     r0, 0x54(r31)
    cmpwi   r0, 0x15
    bne-    branch_0x80021a2c
branch_0x80021a24:
    li      r26, 0x32
    b       branch_0x80021acc

branch_0x80021a2c:
    li      r26, 0x0
    bl      SMS_isExMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80021a58
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmpwi   r0, 0x1f
    bge-    branch_0x80021a54
    cmpwi   r0, 0x1d
    bge-    branch_0x80021a58
branch_0x80021a54:
    li      r26, 0x1
branch_0x80021a58:
    clrlwi. r0, r26, 24
    beq-    branch_0x80021a68
    li      r26, 0x26
    b       branch_0x80021acc

branch_0x80021a68:
    li      r26, 0x3
    b       branch_0x80021acc

branch_0x80021a70:
    li      r26, 0x0
    bl      SMS_isExMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80021a9c
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmpwi   r0, 0x1f
    bge-    branch_0x80021a98
    cmpwi   r0, 0x1d
    bge-    branch_0x80021a9c
branch_0x80021a98:
    li      r26, 0x1
branch_0x80021a9c:
    clrlwi. r0, r26, 24
    beq-    branch_0x80021aac
    li      r26, 0x26
    b       branch_0x80021acc

branch_0x80021aac:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    bl      isFollowCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80021ac8
    mr      r26, r27
    b       branch_0x80021acc

branch_0x80021ac8:
    li      r26, 0x0
branch_0x80021acc:
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    lwz     r4, 0x70(r31)
    extsh   r5, r3
    li      r0, 0x0
    stw     r4, 0x74(r31)
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    stw     r0, 0x70(r31)
    li      r6, 0x0
    bl      changeCamModeSub___15CPolarSubCameraFiib
branch_0x80021afc:
    lmw     r26, 0xe8(sp)
    lwz     r0, 0x104(sp)
    addi    sp, sp, 0x100
    mtlr    r0
    blr


.globl isChangeToParallelCameraCByMoveBG___15CPolarSubCameraCFv
isChangeToParallelCameraCByMoveBG___15CPolarSubCameraCFv: # 0x80021b10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    bl      SMS_GetMarioGrPlane__Fv
    lis     r4, unk_4000012f@h
    addi    r4, r4, unk_4000012f@l
    bl      SMS_GetGroundActor__FPC12TBGCheckDataUl
    cmplwi  r3, 0x0
    beq-    branch_0x80021b40
    li      r31, 0x1
branch_0x80021b40:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isChangeToParallelCameraByMoveBG___15CPolarSubCameraCFv
isChangeToParallelCameraByMoveBG___15CPolarSubCameraCFv: # 0x80021b58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r4, 0x68(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80021ba8
    lis     r3, unk_400000bb@h
    lwz     r4, 0x4c(r4)
    addi    r0, r3, unk_400000bb@l
    cmpw    r4, r0
    beq-    branch_0x80021ba4
    bge-    branch_0x80021ba8
    addi    r0, r3, 0x49
    cmpw    r4, r0
    beq-    branch_0x80021ba4
    b       branch_0x80021ba8

branch_0x80021ba4:
    li      r31, 0x1
branch_0x80021ba8:
    clrlwi. r0, r31, 24
    bne-    branch_0x80021c3c
    bl      SMS_GetMarioGrPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x80021c3c
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r4, 0x44(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80021c3c
    lis     r3, unk_4000012e@h
    lwz     r4, 0x4c(r4)
    addi    r0, r3, unk_4000012e@l
    cmpw    r4, r0
    beq-    branch_0x80021c24
    bge-    branch_0x80021c04
    addi    r0, r3, 0xa5
    cmpw    r4, r0
    beq-    branch_0x80021c2c
    bge-    branch_0x80021c3c
    addi    r0, r3, 0x9c
    cmpw    r4, r0
    beq-    branch_0x80021c2c
    b       branch_0x80021c3c

branch_0x80021c04:
    addi    r0, r3, 0x249
    cmpw    r4, r0
    beq-    branch_0x80021c2c
    bge-    branch_0x80021c3c
    addi    r0, r3, 0x22e
    cmpw    r4, r0
    beq-    branch_0x80021c2c
    b       branch_0x80021c3c

branch_0x80021c24:
    li      r31, 0x1
    b       branch_0x80021c3c

branch_0x80021c2c:
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80021c3c
    li      r31, 0x1
branch_0x80021c3c:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl isChangeToCancanCamera___15CPolarSubCameraCFv
isChangeToCancanCamera___15CPolarSubCameraCFv: # 0x80021c54
    lwz     r4, R13Off_m0x60d8(r13)
    li      r3, 0x0
    lwz     r4, 0x6c(r4)
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xf000
    cmplwi  r0, 0x28
    bnelr-    

    li      r3, 0x1
    blr


.globl isChangeToBossGesoCamera___15CPolarSubCameraCFv
isChangeToBossGesoCamera___15CPolarSubCameraCFv: # 0x80021c80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    lwz     r4, R13Off_m0x60d8(r13)
    lwz     r4, 0x6c(r4)
    cmplwi  r4, 0x0
    beq-    branch_0x80021cf4
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xf800
    cmplwi  r0, 0x6
    beq-    branch_0x80021cc0
    cmplwi  r0, 0x8
    bne-    branch_0x80021cf4
branch_0x80021cc0:
    lwz     r0, 0x2a8(r3)
    cmplwi  r0, 0x0
    mr      r30, r0
    beq-    branch_0x80021cf4
    mr      r3, r30
    bl      beakHeld__10TBossGessoCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80021cf0
    mr      r3, r30
    bl      tentacleHeld__10TBossGessoCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80021cf4
branch_0x80021cf0:
    li      r31, 0x1
branch_0x80021cf4:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl doLButtonCameraOff___15CPolarSubCameraFb
doLButtonCameraOff___15CPolarSubCameraFb: # 0x80021d10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80021d58
    mr      r3, r31
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80021d58
    li      r30, 0x1
branch_0x80021d58:
    clrlwi. r0, r30, 24
    beq-    branch_0x80021d68
    li      r0, 0x1
    b       branch_0x80021d6c

branch_0x80021d68:
    li      r0, 0x0
branch_0x80021d6c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80021e1c
    li      r3, 0x3c
    clrlwi. r0, r29, 24
    sth     r3, 0x282(r31)
    beq-    branch_0x80021dac
    lwz     r4, 0x70(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r4, 0x74(r31)
    li      r4, -0x1
    li      r5, 0x1
    stw     r0, 0x70(r31)
    li      r6, 0x0
    bl      changeCamModeSub___15CPolarSubCameraFiib
    b       branch_0x80021e04

branch_0x80021dac:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4825
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80021dd4
    li      r3, 0x4825
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80021dd4:
    addi    r3, r31, 0x0
    li      r4, -0x1
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    lwz     r4, 0x70(r31)
    extsh   r5, r3
    li      r0, 0x0
    stw     r4, 0x74(r31)
    mr      r3, r31
    li      r4, -0x1
    stw     r0, 0x70(r31)
    li      r6, 0x0
    bl      changeCamModeSub___15CPolarSubCameraFiib
branch_0x80021e04:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80021e1c
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      execNoticeOnOffProc___15CPolarSubCameraFQ215CPolarSubCamera19EnumNoticeOnOffMode
branch_0x80021e1c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl execFrontRotate___15CPolarSubCameraFv
execFrontRotate___15CPolarSubCameraFv: # 0x80021e38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80021f08
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    beq-    branch_0x80021f08
    lhz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0x64(r31)
    lhz     r0, 0x64(r31)
    ori     r0, r0, 0x4
    sth     r0, 0x64(r31)
    lwz     r3, R13Off_m0x60ac(r13)
    lha     r3, 0x0(r3)
    addi    r0, r3, -0x8000
    sth     r0, 0x274(r31)
    lwz     r3, 0x120(r31)
    lwz     r3, 0xd4(r3)
    rlwinm. r0, r3, 0, 17, 17
    beq-    branch_0x80021ec0
    lwz     r3, 0x2d4(r31)
    lha     r0, 0x11c(r3)
    sth     r0, 0x276(r31)
    lhz     r0, 0x64(r31)
    ori     r0, r0, 0x8
    sth     r0, 0x64(r31)
    b       branch_0x80021f08

branch_0x80021ec0:
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x80021f08
    lwz     r3, 0x2d4(r31)
    li      r4, 0x4826
    lha     r0, 0x130(r3)
    sth     r0, 0x276(r31)
    lhz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x64(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80021f08
    li      r3, 0x4826
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80021f08:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl changeCamModeSpecifyCamMapToolAndFrame___15CPolarSubCameraFPC14TCameraMapTooli
changeCamModeSpecifyCamMapToolAndFrame___15CPolarSubCameraFPC14TCameraMapTooli: # 0x80021f1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x24(r4)
    lwz     r0, 0x50(r3)
    addi    r7, r6, 0x0
    cmpw    r0, r6
    bne-    branch_0x80021f48
    lwz     r0, 0x70(r3)
    cmplw   r0, r4
    beq-    branch_0x80021f60
branch_0x80021f48:
    lwz     r0, 0x70(r3)
    li      r6, 0x1
    stw     r0, 0x74(r3)
    stw     r4, 0x70(r3)
    mr      r4, r7
    bl      changeCamModeSub___15CPolarSubCameraFiib
branch_0x80021f60:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl changeCamModeSpecifyCamMapTool___15CPolarSubCameraFPC14TCameraMapTool
changeCamModeSpecifyCamMapTool___15CPolarSubCameraFPC14TCameraMapTool: # 0x80021f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x24(r4)
    lwz     r0, 0x50(r30)
    addi    r31, r3, 0x0
    cmpw    r0, r3
    bne-    branch_0x80021fa8
    lwz     r0, 0x70(r30)
    cmplw   r0, r4
    beq-    branch_0x80021fd4
branch_0x80021fa8:
    lwz     r0, 0x70(r30)
    mr      r3, r30
    stw     r0, 0x74(r30)
    stw     r4, 0x70(r30)
    mr      r4, r31
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    extsh   r5, r3
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r6, 0x1
    bl      changeCamModeSub___15CPolarSubCameraFiib
branch_0x80021fd4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl changeCamModeSpecifyFrame___15CPolarSubCameraFii
changeCamModeSpecifyFrame___15CPolarSubCameraFii: # 0x80021fec
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x70(r3)
    stw     r0, 0x74(r3)
    li      r0, 0x0
    stw     r0, 0x70(r3)
    bl      changeCamModeSub___15CPolarSubCameraFiib
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl changeCamModeSub___15CPolarSubCameraFiib
changeCamModeSub___15CPolarSubCameraFiib: # 0x80022020
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stw     r31, 0x104(sp)
    addi    r31, r4, 0x0
    cmpwi   r31, -0x1
    stw     r30, 0x100(sp)
    addi    r30, r5, 0x0
    stw     r29, 0xfc(sp)
    addi    r29, r3, 0x0
    li      r3, 0x0
    stw     r28, 0xf8(sp)
    bne-    branch_0x80022084
    lwz     r4, 0x60(r29)
    lwz     r3, 0x4(r4)
    cmpwi   r3, 0x0
    bgt-    branch_0x8002206c
    lwz     r3, 0x8(r4)
    b       branch_0x8002207c

branch_0x8002206c:
    addi    r0, r3, -0x1
    lwz     r3, 0x8(r4)
    slwi    r0, r0, 2
    add     r3, r3, r0
branch_0x8002207c:
    lwz     r31, 0x0(r3)
    li      r3, 0x1
branch_0x80022084:
    clrlwi. r0, r6, 24
    bne-    branch_0x80022098
    lwz     r0, 0x50(r29)
    cmpw    r0, r31
    beq-    branch_0x80022674
branch_0x80022098:
    cmpwi   r30, 0x0
    bge-    branch_0x800220a4
    b       branch_0x80022674

branch_0x800220a4:
    bne-    branch_0x800220ac
    li      r30, 0x1
branch_0x800220ac:
    clrlwi. r0, r3, 24
    lwz     r3, 0x50(r29)
    stw     r3, 0x54(r29)
    beq-    branch_0x800220dc
    lwz     r4, 0x60(r29)
    lwz     r3, 0x4(r4)
    cmpwi   r3, 0x0
    bgt-    branch_0x800220d0
    b       branch_0x80022158

branch_0x800220d0:
    addi    r0, r3, -0x1
    stw     r0, 0x4(r4)
    b       branch_0x80022158

branch_0x800220dc:
    lwz     r5, 0x60(r29)
    lwz     r3, 0x4(r5)
    lwz     r0, 0x0(r5)
    cmpw    r3, r0
    blt-    branch_0x8002213c
    li      r4, 0x0
    addi    r3, r4, 0x0
    b       branch_0x80022114

branch_0x800220fc:
    lwz     r0, 0x8(r5)
    addi    r4, r4, 0x1
    add     r6, r0, r3
    lwz     r0, 0x4(r6)
    addi    r3, r3, 0x4
    stw     r0, 0x0(r6)
branch_0x80022114:
    lwz     r6, 0x0(r5)
    addi    r0, r6, -0x1
    cmpw    r4, r0
    blt+    branch_0x800220fc
    lwz     r3, 0x8(r5)
    slwi    r0, r6, 2
    lwz     r4, 0x50(r29)
    add     r3, r3, r0
    stw     r4, -0x4(r3)
    b       branch_0x80022158

branch_0x8002213c:
    lwz     r4, 0x50(r29)
    slwi    r0, r3, 2
    lwz     r3, 0x8(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x4(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r5)
branch_0x80022158:
    cmpwi   r31, 0x49
    bge-    branch_0x8002224c
    lwz     r4, 0x50(r29)
    cmpwi   r4, 0x14
    bne-    branch_0x80022184
    cmpwi   r31, 0x42
    bne-    branch_0x80022184
    lfs     f0, -0x7978(r2)
    stfs    f0, 0xa8(r29)
    stfs    f0, 0xdc(r29)
    b       branch_0x80022240

branch_0x80022184:
    cmpwi   r4, 0x33
    bne-    branch_0x800221a4
    cmpwi   r31, 0x3e
    bne-    branch_0x800221a4
    lfs     f0, -0x7978(r2)
    stfs    f0, 0xa8(r29)
    stfs    f0, 0xdc(r29)
    b       branch_0x80022240

branch_0x800221a4:
    mr      r3, r29
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80022218
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80022240
    lfs     f0, 0xa8(r29)
    slwi    r0, r31, 2
    add     r4, r29, r0
    stfs    f0, 0xb0(r29)
    addi    r3, sp, 0x38
    lwz     r4, 0x2d8(r4)
    bl      copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam
    lha     r0, 0x90(sp)
    lha     r3, 0x50(sp)
    lha     r4, 0x52(sp)
    neg     r5, r0
    bl      CLBCalcRatio_s___Fsss
    lfs     f2, -0x7974(r2)
    lfs     f3, -0x7978(r2)
    bl      MsClamp_f___Ffff_80022708
    stfs    f1, 0xa8(r29)
    stfs    f1, 0xdc(r29)
    lwz     r3, 0x120(r29)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    b       branch_0x80022240

branch_0x80022218:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x80022240
    lfs     f0, 0xb0(r29)
    stfs    f0, 0xa8(r29)
    stfs    f0, 0xdc(r29)
    lwz     r3, 0x120(r29)
    bl      onNeutralMarioKey__13TMarioGamePadFv
branch_0x80022240:
    lwz     r3, 0x6c(r29)
    mr      r4, r30
    bl      startCameraInbetween__16TCameraInbetweenFi
branch_0x8002224c:
    stw     r31, 0x50(r29)
    lwz     r30, 0x50(r29)
    cmpwi   r30, 0x49
    bge-    branch_0x800225c4
    lwz     r0, 0x54(r29)
    cmpwi   r0, 0x49
    bge-    branch_0x800225c4
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    li      r31, 0x0
    li      r28, 0x1
    bl      isFixCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x8002229c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x8002229c
    mr      r28, r31
branch_0x8002229c:
    clrlwi. r0, r28, 24
    beq-    branch_0x800222b4
    lwz     r0, 0x70(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800222b4
    li      r31, 0x1
branch_0x800222b4:
    lwz     r28, 0x54(r29)
    addi    r3, r29, 0x0
    li      r30, 0x1
    addi    r4, r28, 0x0
    bl      isFixCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800222e8
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800222e8
    li      r30, 0x0
branch_0x800222e8:
    clrlwi. r0, r30, 24
    bne-    branch_0x80022378
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80022378
    lwz     r3, 0x80(r29)
    lwz     r0, 0x84(r29)
    stw     r3, 0xe8(r29)
    stw     r0, 0xec(r29)
    lwz     r0, 0x88(r29)
    stw     r0, 0xf0(r29)
    lwz     r3, 0x8c(r29)
    lwz     r0, 0x90(r29)
    stw     r3, 0xf4(r29)
    stw     r0, 0xf8(r29)
    lwz     r0, 0x94(r29)
    stw     r0, 0xfc(r29)
    lwz     r3, 0x98(r29)
    lwz     r0, 0x9c(r29)
    stw     r3, 0x100(r29)
    stw     r0, 0x104(r29)
    lwz     r0, 0xa0(r29)
    stw     r0, 0x108(r29)
    lha     r0, 0xa4(r29)
    sth     r0, 0x10c(r29)
    lha     r0, 0xa6(r29)
    sth     r0, 0x10e(r29)
    lfs     f0, 0xa8(r29)
    stfs    f0, 0x110(r29)
    lha     r0, 0xac(r29)
    sth     r0, 0x114(r29)
    lfs     f0, 0xb0(r29)
    stfs    f0, 0x118(r29)
    lwz     r3, 0x70(r29)
    lwz     r0, 0x28(r3)
    stw     r0, 0x11c(r29)
branch_0x80022378:
    clrlwi. r0, r30, 24
    beq-    branch_0x80022494
    lwz     r0, 0x11c(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x80022414
    addi    r3, r29, 0x80
    addi    r4, r29, 0xe8
    bl      __as__13TTargetCameraFRC13TTargetCamera
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0xb4(r29)
    stw     r0, 0xb8(r29)
    lwz     r0, 0x8(r3)
    stw     r0, 0xbc(r29)
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0xc0(r29)
    stw     r0, 0xc4(r29)
    lwz     r0, 0x14(r3)
    stw     r0, 0xc8(r29)
    lwz     r4, 0x18(r3)
    lwz     r0, 0x1c(r3)
    stw     r4, 0xcc(r29)
    stw     r0, 0xd0(r29)
    lwz     r0, 0x20(r3)
    stw     r0, 0xd4(r29)
    lha     r0, 0x24(r3)
    sth     r0, 0xd8(r29)
    lha     r0, 0x26(r3)
    sth     r0, 0xda(r29)
    lfs     f0, 0x28(r3)
    stfs    f0, 0xdc(r29)
    lha     r0, 0x2c(r3)
    sth     r0, 0xe0(r29)
    lfs     f0, 0x30(r3)
    mr      r3, r29
    stfs    f0, 0xe4(r29)
    bl      killHeightPan___15CPolarSubCameraFv
    b       branch_0x80022424

branch_0x80022414:
    addi    r3, r29, 0x0
    addi    r4, r29, 0x10
    addi    r5, r29, 0x3c
    bl      calcNowTargetFromPosAndAt___15CPolarSubCameraFRC3VecRC3Vec
branch_0x80022424:
    lwz     r3, 0x54(r29)
    addi    r0, r3, -0x9
    cmplwi  r0, 0x32
    bgt-    branch_0x80022494
    lis     r3, unk_803acbf8@ha
    addi    r3, r3, unk_803acbf8@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8002244c:
    lfs     f1, 0xa8(r29)
    mr      r3, r29
    lha     r4, 0xa6(r29)
    bl      warpPosAndAt__15CPolarSubCameraFfs
    b       branch_0x80022494

branch_0x80022460:
    lwz     r3, R13Off_m0x60ac(r13)
    lha     r3, 0x0(r3)
    addi    r0, r3, -0x8000
    sth     r0, 0xa6(r29)
    b       branch_0x80022494

branch_0x80022474:
    lwz     r4, R13Off_m0x60ac(r13)
    mr      r3, r29
    lha     r4, 0x0(r4)
    addi    r0, r4, -0x8000
    sth     r0, 0xa6(r29)
    lfs     f1, 0xa8(r29)
    lha     r4, 0xa6(r29)
    bl      warpPosAndAt__15CPolarSubCameraFfs
branch_0x80022494:
    clrlwi. r0, r31, 24
    beq-    branch_0x80022588
    lwz     r3, 0x70(r29)
    lwz     r0, 0x50(r29)
    lwz     r4, 0x28(r3)
    cmpwi   r0, 0x1e
    rlwinm  r4, r4, 0, 30, 30
    neg     r5, r4
    subic   r4, r5, 0x1
    subfe   r30, r4, r5
    bge-    branch_0x800224d4
    cmpwi   r0, 0x18
    bge-    branch_0x8002252c
    cmpwi   r0, 0x16
    bge-    branch_0x800224dc
    b       branch_0x8002252c

branch_0x800224d4:
    cmpwi   r0, 0x20
    bge-    branch_0x8002252c
branch_0x800224dc:
    clrlwi. r0, r30, 24
    beq-    branch_0x800224fc
    lwz     r4, 0x80(r29)
    lwz     r0, 0x84(r29)
    stw     r4, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x88(r29)
    stw     r0, 0xf0(sp)
branch_0x800224fc:
    addi    r4, r29, 0x80
    addi    r5, r29, 0x8c
    bl      calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    clrlwi. r0, r30, 24
    beq-    branch_0x80022588
    lfs     f0, 0xe8(sp)
    stfs    f0, 0x80(r29)
    lfs     f0, 0xec(sp)
    stfs    f0, 0x84(r29)
    lfs     f0, 0xf0(sp)
    stfs    f0, 0x88(r29)
    b       branch_0x80022588

branch_0x8002252c:
    clrlwi. r0, r30, 24
    beq-    branch_0x8002254c
    lwz     r4, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r4, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0xf0(sp)
branch_0x8002254c:
    addi    r4, r29, 0x10
    addi    r5, r29, 0x3c
    bl      calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    clrlwi. r0, r30, 24
    beq-    branch_0x80022578
    lfs     f0, 0xe8(sp)
    stfs    f0, 0x10(r29)
    lfs     f0, 0xec(sp)
    stfs    f0, 0x14(r29)
    lfs     f0, 0xf0(sp)
    stfs    f0, 0x18(r29)
branch_0x80022578:
    addi    r3, r29, 0x0
    addi    r4, r29, 0x10
    addi    r5, r29, 0x3c
    bl      warpPosAndAt__15CPolarSubCameraFRC3VecRC3Vec
branch_0x80022588:
    li      r0, 0x0
    stw     r0, 0x78(r29)
    stw     r0, 0x7c(r29)
    lwz     r0, 0x54(r29)
    cmpwi   r0, 0x24
    beq-    branch_0x800225b0
    bge-    branch_0x800225bc
    cmpwi   r0, 0x1c
    beq-    branch_0x800225b0
    b       branch_0x800225bc

branch_0x800225b0:
    mr      r3, r29
    bl      onMoveApproach___15CPolarSubCameraFv
    b       branch_0x800225c4

branch_0x800225bc:
    mr      r3, r29
    bl      offMoveApproach___15CPolarSubCameraFv
branch_0x800225c4:
    mr      r3, r29
    lwz     r4, 0x50(r29)
    bl      isNormalCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800225f8
    mr      r3, r29
    lwz     r4, 0x50(r29)
    bl      isTowerCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800225f8
    lhz     r0, 0x64(r29)
    rlwinm  r0, r0, 0, 30, 26
    sth     r0, 0x64(r29)
branch_0x800225f8:
    lwz     r3, 0x54(r29)
    cmpwi   r3, 0x33
    bne-    branch_0x80022628
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x3e
    bne-    branch_0x80022628
    lhz     r0, 0x278(r29)
    cmplwi  r0, 0x78
    bge-    branch_0x80022650
    li      r0, 0x78
    sth     r0, 0x278(r29)
    b       branch_0x80022650

branch_0x80022628:
    cmpwi   r3, 0x3e
    bne-    branch_0x80022650
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x33
    bne-    branch_0x80022650
    lhz     r0, 0x27a(r29)
    cmplwi  r0, 0x78
    bge-    branch_0x80022650
    li      r0, 0x78
    sth     r0, 0x27a(r29)
branch_0x80022650:
    mr      r3, r29
    bl      killHeightPanWhenChangeCamMode___15CPolarSubCameraFv
    lwz     r3, 0x2ac(r29)
    li      r0, 0x0
    sth     r0, 0x0(r3)
    lfs     f0, -0x7974(r2)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
branch_0x80022674:
    lwz     r0, 0x10c(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    mtlr    r0
    lwz     r29, 0xfc(sp)
    lwz     r28, 0xf8(sp)
    addi    sp, sp, 0x108
    blr


.globl __as__13TTargetCameraFRC13TTargetCamera
__as__13TTargetCameraFRC13TTargetCamera: # 0x80022694
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
    lwz     r5, 0x18(r4)
    lwz     r0, 0x1c(r4)
    stw     r5, 0x18(r3)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x20(r4)
    stw     r0, 0x20(r3)
    lha     r0, 0x24(r4)
    sth     r0, 0x24(r3)
    lha     r0, 0x26(r4)
    sth     r0, 0x26(r3)
    lfs     f0, 0x28(r4)
    stfs    f0, 0x28(r3)
    lha     r0, 0x2c(r4)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x30(r4)
    stfs    f0, 0x30(r3)
    blr


.globl MsClamp_f___Ffff_80022708
MsClamp_f___Ffff_80022708: # 0x80022708
    fcmpo   cr0, f1, f3
    ble-    branch_0x80022718
    fmr     f1, f3
    blr

branch_0x80022718:
    fcmpo   cr0, f1, f2
    bgelr-    

    fmr     f1, f2
    blr


.globl setUpFromLButtonCamera___15CPolarSubCameraFv
setUpFromLButtonCamera___15CPolarSubCameraFv: # 0x80022728
    lfs     f0, 0xb0(r3)
    stfs    f0, 0xa8(r3)
    stfs    f0, 0xdc(r3)
    blr


.globl setUpToLButtonCamera___15CPolarSubCameraFi
setUpToLButtonCamera___15CPolarSubCameraFi: # 0x80022738
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    add     r4, r31, r0
    lfs     f0, 0xa8(r3)
    stfs    f0, 0xb0(r3)
    addi    r3, sp, 0x14
    lwz     r4, 0x2d8(r4)
    bl      copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam
    lha     r0, 0x6c(sp)
    lha     r3, 0x2c(sp)
    lha     r4, 0x2e(sp)
    neg     r5, r0
    bl      CLBCalcRatio_s___Fsss
    lfs     f0, -0x7978(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80022790
    fmr     f1, f0
    b       branch_0x800227a0

branch_0x80022790:
    lfs     f0, -0x7974(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800227a0
    fmr     f1, f0
branch_0x800227a0:
    stfs    f1, 0xa8(r31)
    stfs    f1, 0xdc(r31)
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl getCameraInbetweenFrame___15CPolarSubCameraFi
getCameraInbetweenFrame___15CPolarSubCameraFi: # 0x800227bc
    cmpwi   r4, -0x1
    bne-    branch_0x800227f0
    lwz     r5, 0x60(r3)
    lwz     r4, 0x4(r5)
    cmpwi   r4, 0x0
    bgt-    branch_0x800227dc
    lwz     r4, 0x8(r5)
    b       branch_0x800227ec

branch_0x800227dc:
    addi    r0, r4, -0x1
    lwz     r4, 0x8(r5)
    slwi    r0, r0, 2
    add     r4, r4, r0
branch_0x800227ec:
    lwz     r4, 0x0(r4)
branch_0x800227f0:
    lwz     r0, 0x50(r3)
    li      r5, 0x1
    cmpwi   r0, 0x49
    bge-    branch_0x80022a78
    cmpwi   r4, 0x49
    bge-    branch_0x80022a78
    slwi    r0, r0, 2
    add     r3, r3, r0
    cmplwi  r4, 0x48
    lwz     r6, 0x2d8(r3)
    bgt-    branch_0x80022a78
    lis     r3, unk_803accc4@ha
    addi    r3, r3, unk_803accc4@l
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80022834:
    lha     r5, 0x3c4(r6)
    b       branch_0x80022a78

branch_0x8002283c:
    lha     r5, 0x3d8(r6)
    b       branch_0x80022a78

branch_0x80022844:
    lha     r5, 0x3ec(r6)
    b       branch_0x80022a78

branch_0x8002284c:
    lha     r5, 0x400(r6)
    b       branch_0x80022a78

branch_0x80022854:
    lha     r5, 0x414(r6)
    b       branch_0x80022a78

branch_0x8002285c:
    lha     r5, 0x428(r6)
    b       branch_0x80022a78

branch_0x80022864:
    lha     r5, 0x43c(r6)
    b       branch_0x80022a78

branch_0x8002286c:
    lha     r5, 0x450(r6)
    b       branch_0x80022a78

branch_0x80022874:
    lha     r5, 0x464(r6)
    b       branch_0x80022a78

branch_0x8002287c:
    lha     r5, 0x478(r6)
    b       branch_0x80022a78

branch_0x80022884:
    lha     r5, 0x48c(r6)
    b       branch_0x80022a78

branch_0x8002288c:
    lha     r5, 0x4a0(r6)
    b       branch_0x80022a78

branch_0x80022894:
    lha     r5, 0x4b4(r6)
    b       branch_0x80022a78

branch_0x8002289c:
    lha     r5, 0x4c8(r6)
    b       branch_0x80022a78

branch_0x800228a4:
    lha     r5, 0x4dc(r6)
    b       branch_0x80022a78

branch_0x800228ac:
    lha     r5, 0x4f0(r6)
    b       branch_0x80022a78

branch_0x800228b4:
    lha     r5, 0x504(r6)
    b       branch_0x80022a78

branch_0x800228bc:
    lha     r5, 0x518(r6)
    b       branch_0x80022a78

branch_0x800228c4:
    lha     r5, 0x52c(r6)
    b       branch_0x80022a78

branch_0x800228cc:
    lha     r5, 0x540(r6)
    b       branch_0x80022a78

branch_0x800228d4:
    lha     r5, 0x554(r6)
    b       branch_0x80022a78

branch_0x800228dc:
    lha     r5, 0x568(r6)
    b       branch_0x80022a78

branch_0x800228e4:
    lha     r5, 0x57c(r6)
    b       branch_0x80022a78

branch_0x800228ec:
    lha     r5, 0x590(r6)
    b       branch_0x80022a78

branch_0x800228f4:
    lha     r5, 0x5a4(r6)
    b       branch_0x80022a78

branch_0x800228fc:
    lha     r5, 0x5b8(r6)
    b       branch_0x80022a78

branch_0x80022904:
    lha     r5, 0x5cc(r6)
    b       branch_0x80022a78

branch_0x8002290c:
    lha     r5, 0x5e0(r6)
    b       branch_0x80022a78

branch_0x80022914:
    lha     r5, 0x5f4(r6)
    b       branch_0x80022a78

branch_0x8002291c:
    lha     r5, 0x608(r6)
    b       branch_0x80022a78

branch_0x80022924:
    lha     r5, 0x61c(r6)
    b       branch_0x80022a78

branch_0x8002292c:
    lha     r5, 0x630(r6)
    b       branch_0x80022a78

branch_0x80022934:
    lha     r5, 0x644(r6)
    b       branch_0x80022a78

branch_0x8002293c:
    lha     r5, 0x658(r6)
    b       branch_0x80022a78

branch_0x80022944:
    lha     r5, 0x66c(r6)
    b       branch_0x80022a78

branch_0x8002294c:
    lha     r5, 0x680(r6)
    b       branch_0x80022a78

branch_0x80022954:
    lha     r5, 0x694(r6)
    b       branch_0x80022a78

branch_0x8002295c:
    lha     r5, 0x6a8(r6)
    b       branch_0x80022a78

branch_0x80022964:
    lha     r5, 0x6bc(r6)
    b       branch_0x80022a78

branch_0x8002296c:
    lha     r5, 0x6d0(r6)
    b       branch_0x80022a78

branch_0x80022974:
    lha     r5, 0x6e4(r6)
    b       branch_0x80022a78

branch_0x8002297c:
    lha     r5, 0x6f8(r6)
    b       branch_0x80022a78

branch_0x80022984:
    lha     r5, 0x70c(r6)
    b       branch_0x80022a78

branch_0x8002298c:
    lha     r5, 0x720(r6)
    b       branch_0x80022a78

branch_0x80022994:
    lha     r5, 0x734(r6)
    b       branch_0x80022a78

branch_0x8002299c:
    lha     r5, 0x748(r6)
    b       branch_0x80022a78

branch_0x800229a4:
    lha     r5, 0x75c(r6)
    b       branch_0x80022a78

branch_0x800229ac:
    lha     r5, 0x770(r6)
    b       branch_0x80022a78

branch_0x800229b4:
    lha     r5, 0x784(r6)
    b       branch_0x80022a78

branch_0x800229bc:
    lha     r5, 0x798(r6)
    b       branch_0x80022a78

branch_0x800229c4:
    lha     r5, 0x7ac(r6)
    b       branch_0x80022a78

branch_0x800229cc:
    lha     r5, 0x7c0(r6)
    b       branch_0x80022a78

branch_0x800229d4:
    lha     r5, 0x7d4(r6)
    b       branch_0x80022a78

branch_0x800229dc:
    lha     r5, 0x7e8(r6)
    b       branch_0x80022a78

branch_0x800229e4:
    lha     r5, 0x7fc(r6)
    b       branch_0x80022a78

branch_0x800229ec:
    lha     r5, 0x810(r6)
    b       branch_0x80022a78

branch_0x800229f4:
    lha     r5, 0x824(r6)
    b       branch_0x80022a78

branch_0x800229fc:
    lha     r5, 0x838(r6)
    b       branch_0x80022a78

branch_0x80022a04:
    lha     r5, 0x84c(r6)
    b       branch_0x80022a78

branch_0x80022a0c:
    lha     r5, 0x860(r6)
    b       branch_0x80022a78

branch_0x80022a14:
    lha     r5, 0x874(r6)
    b       branch_0x80022a78

branch_0x80022a1c:
    lha     r5, 0x888(r6)
    b       branch_0x80022a78

branch_0x80022a24:
    lha     r5, 0x89c(r6)
    b       branch_0x80022a78

branch_0x80022a2c:
    lha     r5, 0x8b0(r6)
    b       branch_0x80022a78

branch_0x80022a34:
    lha     r5, 0x8c4(r6)
    b       branch_0x80022a78

branch_0x80022a3c:
    lha     r5, 0x8d8(r6)
    b       branch_0x80022a78

branch_0x80022a44:
    lha     r5, 0x8ec(r6)
    b       branch_0x80022a78

branch_0x80022a4c:
    lha     r5, 0x900(r6)
    b       branch_0x80022a78

branch_0x80022a54:
    lha     r5, 0x914(r6)
    b       branch_0x80022a78

branch_0x80022a5c:
    lha     r5, 0x928(r6)
    b       branch_0x80022a78

branch_0x80022a64:
    lha     r5, 0x93c(r6)
    b       branch_0x80022a78

branch_0x80022a6c:
    lha     r5, 0x950(r6)
    b       branch_0x80022a78

branch_0x80022a74:
    lha     r5, 0x964(r6)
branch_0x80022a78:
    mr      r3, r5
    blr


.globl CLBCalcRatio_s___Fsss
CLBCalcRatio_s___Fsss: # 0x80022a80
    stwu    sp, -0x20(sp)
    extsh   r6, r3
    extsh   r0, r4
    cmpw    r6, r0
    lfs     f1, -0x7974(r2)
    beq-    branch_0x80022ae0
    subf    r0, r6, r0
    lfd     f2, -0x7970(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x7978(r2)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    extsh   r3, r5
    stw     r0, 0x10(sp)
    subf    r3, r6, r3
    xoris   r3, r3, 0x8000
    lfd     f0, 0x10(sp)
    stw     r3, 0x1c(sp)
    fsubs   f0, f0, f2
    stw     r0, 0x18(sp)
    fdivs   f0, f1, f0
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
branch_0x80022ae0:
    addi    sp, sp, 0x20
    blr


.globl __sinit_CameraChange_cpp
__sinit_CameraChange_cpp: # 0x80022ae8
    mflr    r0
    lis     r3, unk_803efcb0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803efcb0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80022b30
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80022b30:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80022b60
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80022b60:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80022b90
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80022b90:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80022bc0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80022bc0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80022bf0
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80022bf0:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80022c20
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80022c20:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80022c50
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80022c50:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80022c80
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80022c80:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80022cb0
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80022cb0:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80022ce0
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80022ce0:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80022d10
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80022d10:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80022d40
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80022d40:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80022d70
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80022d70:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80022da0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80022da0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80022dd0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80022dd0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

