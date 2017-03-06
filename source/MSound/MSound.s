
.globl getMapInfoGround__6MSoundFUl
getMapInfoGround__6MSoundFUl: # 0x80013210
    li      r3, 0x0
    blr


.globl getSwitch__6MSoundFUlUlUl
getSwitch__6MSoundFUlUlUl: # 0x80013218
    mflr    r0
    stw     r0, 0x4(sp)
    mr      r0, r3
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    mr      r4, r0
    lwz     r3, -0x7160(r13)
    bl      getSoundInfoFromID__8JAIBasicFUl
    cmplwi  r3, 0x0
    bne-    branch_0x80013254
    li      r0, -0x1
    b       branch_0x80013258

branch_0x80013254:
    lwz     r0, 0x0(r3)
branch_0x80013258:
    and     r0, r0, r30
    lwz     r30, 0x18(sp)
    srw     r3, r0, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl getBstSwitch__6MSoundFUl
getBstSwitch__6MSoundFUl: # 0x80013278
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x7160(r13)
    bl      getSoundInfoFromID__8JAIBasicFUl
    cmplwi  r3, 0x0
    bne-    branch_0x800132a0
    li      r3, -0x1
    b       branch_0x800132a4

branch_0x800132a0:
    lwz     r3, 0x0(r3)
branch_0x800132a4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl gateCheck__6MSoundFUl
gateCheck__6MSoundFUl: # 0x800132b4
    lbz     r3, 0xac(r3)
    clrlwi. r0, r3, 31
    bne-    branch_0x800132d8
    rlwinm  r0, r4, 8, 24, 25
    rlwimi  r0, r4, 21, 31, 31
    clrlwi. r0, r0, 24
    bne-    branch_0x800132d8
    li      r3, 0x0
    blr

branch_0x800132d8:
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x800132fc
    rlwinm  r0, r4, 8, 24, 25
    rlwimi  r0, r4, 21, 31, 31
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x800132fc
    li      r3, 0x0
    blr

branch_0x800132fc:
    li      r3, 0x1
    blr


.globl cameraLooksAtMario__6MSoundFv
cameraLooksAtMario__6MSoundFv: # 0x80013304
    li      r5, 0x0
    b       branch_0x80013348

branch_0x8001330c:
    clrlwi. r4, r5, 24
    bne-    branch_0x8001332c
    addi    r0, r4, 0xcc
    lbzx    r0, r3, r0
    cmplwi  r0, 0x0
    bne-    branch_0x80013344
    li      r3, 0x0
    blr

branch_0x8001332c:
    addi    r0, r4, 0xcc
    lbzx    r0, r3, r0
    cmplwi  r0, 0x1
    bne-    branch_0x80013344
    li      r3, 0x0
    blr

branch_0x80013344:
    addi    r5, r5, 0x1
branch_0x80013348:
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x5
    blt+    branch_0x8001330c
    li      r3, 0x1
    blr


.globl startSoundActorSpecial__6MSoundFUlPC3VecffUlPP8JAISoundUlUc
startSoundActorSpecial__6MSoundFUlPC3VecffUlPP8JAISoundUlUc: # 0x8001335c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    fmr     f31, f2
    stfd    f30, 0x68(sp)
    fmr     f30, f1
    stmw    r26, 0x50(sp)
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    addi    r31, r9, 0x0
    lbz     r3, 0xac(r3)
    clrlwi. r0, r3, 31
    bne-    branch_0x800133b8
    rlwinm  r0, r26, 8, 24, 25
    rlwimi  r0, r26, 21, 31, 31
    clrlwi. r0, r0, 24
    bne-    branch_0x800133b8
    li      r0, 0x0
    b       branch_0x800133e0

branch_0x800133b8:
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x800133dc
    rlwinm  r0, r26, 8, 24, 25
    rlwimi  r0, r26, 21, 31, 31
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x800133dc
    li      r0, 0x0
    b       branch_0x800133e0

branch_0x800133dc:
    li      r0, 0x1
branch_0x800133e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800134b0
    mr      r3, r26
    fmr     f1, f30
    bl      gateCheckFunc__9JALSystemFUlf
    clrlwi. r0, r3, 24
    bne-    branch_0x800134b0
    mr      r3, r26
    fmr     f1, f31
    bl      gateCheckFunc__9JALSystemFUlf
    clrlwi. r0, r3, 24
    bne-    branch_0x800134b0
    stw     r27, 0x3c(sp)
    addi    r3, r26, 0x0
    addi    r4, r29, 0x0
    stw     r27, 0x40(sp)
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    stw     r27, 0x44(sp)
    addi    r5, sp, 0x3c
    stw     r28, 0x48(sp)
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    mr.     r27, r3
    beq-    branch_0x800134b0
    cmpwi   r26, 0x212f
    beq-    branch_0x8001344c
    b       branch_0x800134b0

branch_0x8001344c:
    lfs     f0, -0x7d04(rtoc)
    fmr     f1, f30
    mr      r3, r26
    stfs    f0, 0x38(sp)
    addi    r4, sp, 0x38
    stfs    f0, 0x34(sp)
    bl      calc__31JALSeModData_15JALSeModVolFunk_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x80013484
    lfs     f1, 0x38(sp)
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
branch_0x80013484:
    fmr     f1, f31
    addi    r3, r26, 0x0
    addi    r4, sp, 0x34
    bl      calcGrp__34JALSeModDataGrp_15JALSeModPitFGrp_FUlfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x800134b0
    lfs     f1, 0x34(sp)
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setPitch__8JAISoundFfUlUc
branch_0x800134b0:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl startBeeSe__6MSoundFP3VecUl
startBeeSe__6MSoundFP3VecUl: # 0x800134cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r5, 0x0
    cmplwi  r29, 0x3
    stw     r28, 0x40(sp)
    addi    r28, r3, 0x0
    ble-    branch_0x8001358c
    lbz     r0, 0xac(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x80013510
    li      r0, 0x0
    b       branch_0x80013514

branch_0x80013510:
    li      r0, 0x1
branch_0x80013514:
    clrlwi. r0, r0, 24
    bne-    branch_0x80013524
    li      r3, 0x0
    b       branch_0x80013540

branch_0x80013524:
    addi    r4, r31, 0x0
    li      r3, 0x2106
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80013540:
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    beq-    branch_0x8001358c
    stw     r29, 0x3c(sp)
    lis     r0, 0x4330
    lfd     f1, -0x7cf8(rtoc)
    li      r3, 0x0
    stw     r0, 0x38(sp)
    lfs     f2, -0x7d00(rtoc)
    lfd     f0, 0x38(sp)
    lfs     f3, -0x7cfc(rtoc)
    fsubs   f1, f0, f1
    lfs     f4, -0x7d08(rtoc)
    lfs     f5, -0x7d04(rtoc)
    bl      linearTransform__7JALCalcFfffffb
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
branch_0x8001358c:
    cmplwi  r29, 0x2
    ble-    branch_0x800135d4
    lbz     r0, 0xac(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x800135a8
    li      r0, 0x0
    b       branch_0x800135ac

branch_0x800135a8:
    li      r0, 0x1
branch_0x800135ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x8001365c
    addi    r4, r31, 0x0
    li      r3, 0x2107
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8001365c

branch_0x800135d4:
    bne-    branch_0x80013618
    lbz     r0, 0xac(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x800135ec
    li      r0, 0x0
    b       branch_0x800135f0

branch_0x800135ec:
    li      r0, 0x1
branch_0x800135f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8001365c
    addi    r4, r31, 0x0
    li      r3, 0x2108
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8001365c

branch_0x80013618:
    cmplwi  r29, 0x1
    bne-    branch_0x8001365c
    lbz     r0, 0xac(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x80013634
    li      r0, 0x0
    b       branch_0x80013638

branch_0x80013634:
    li      r0, 0x1
branch_0x80013638:
    clrlwi. r0, r0, 24
    beq-    branch_0x8001365c
    addi    r4, r31, 0x0
    li      r3, 0x2109
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8001365c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl getWallSound__6MSoundFUlf
getWallSound__6MSoundFUlf: # 0x8001367c
    lfs     f0, -0x7cf0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800136a0
    cmplwi  r4, 0x1c
    bne-    branch_0x80013698
    li      r3, 0x194b
    blr

branch_0x80013698:
    li      r3, 0x194a
    blr

branch_0x800136a0:
    lfs     f0, -0x7cec(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800136c4
    cmplwi  r4, 0x1c
    bne-    branch_0x800136bc
    li      r3, 0x1802
    blr

branch_0x800136bc:
    li      r3, 0x1949
    blr

branch_0x800136c4:
    cmplwi  r4, 0x1c
    bne-    branch_0x800136d4
    li      r3, 0x1803
    blr

branch_0x800136d4:
    li      r3, 0x1948
    blr


.globl checkMarioVoicePlaying__6MSoundFUc
checkMarioVoicePlaying__6MSoundFUc: # 0x800136dc
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x800136ec
    li      r0, 0x1
    b       branch_0x800136f0

branch_0x800136ec:
    li      r0, 0x0
branch_0x800136f0:
    clrlslwi  r0, r0, 24, 2
    add     r3, r3, r0
    lwz     r3, 0x8c(r3)
    blr


.globl stopMarioVoice__6MSoundFUlUc
stopMarioVoice__6MSoundFUlUc: # 0x80013700
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r5, 0, 30, 30
    stwu    sp, -0x8(sp)
    beq-    branch_0x8001371c
    li      r0, 0x1
    b       branch_0x80013720

branch_0x8001371c:
    li      r0, 0x0
branch_0x80013720:
    clrlslwi  r0, r0, 24, 2
    add     r3, r3, r0
    lwz     r3, 0x8c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80013760
    addis   r0, r4, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80013758
    lwz     r0, 0x8(r3)
    cmplw   r4, r0
    bne-    branch_0x80013760
    li      r4, 0x1
    bl      stop__8JAISoundFUl
    b       branch_0x80013760

branch_0x80013758:
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x80013760:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getMarioVoiceID__6MSoundFUc
getMarioVoiceID__6MSoundFUc: # 0x80013770
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x80013780
    li      r0, 0x1
    b       branch_0x80013784

branch_0x80013780:
    li      r0, 0x0
branch_0x80013784:
    clrlslwi  r0, r0, 24, 2
    add     r3, r3, r0
    lwz     r3, 0x8c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800137a0
    lwz     r3, 0x8(r3)
    blr

branch_0x800137a0:
    li      r3, -0x1
    blr


.globl startMarioVoice__6MSoundFUlsUc
startMarioVoice__6MSoundFUlsUc: # 0x800137a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r25, 0x84(sp)
    addi    r27, r6, 0x0
    clrlwi. r0, r27, 31
    clrlwi  r6, r6, 24
    addi    r25, r3, 0x0
    addi    r26, r4, 0x0
    beq-    branch_0x800137d8
    li      r0, 0x1
    b       branch_0x800137dc

branch_0x800137d8:
    li      r0, 0x0
branch_0x800137dc:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x800137f0
    li      r3, 0x0
    b       branch_0x80013e7c

branch_0x800137f0:
    rlwinm. r29, r6, 0, 30, 30
    beq-    branch_0x80013800
    li      r31, 0x1
    b       branch_0x80013804

branch_0x80013800:
    li      r31, 0x0
branch_0x80013804:
    cmpwi   r29, 0x0
    beq-    branch_0x80013814
    li      r3, 0x1
    b       branch_0x80013818

branch_0x80013814:
    li      r3, 0x0
branch_0x80013818:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x6
    clrlwi  r30, r3, 24
    li      r3, 0x1
    bne-    branch_0x800138a4
    subi    r0, r26, 0x78ab
    cmplwi  r0, 0x14
    bgt-    branch_0x8001389c
    lis     r3, 0x803b
    subi    r3, r3, 0x3b08
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    mulli   r0, r30, 0xc
    add     r3, r25, r0
    lwz     r5, 0xb0(r3)
    clrlslwi  r3, r31, 24, 2
    addi    r4, r3, 0x8c
    stw     r5, 0x68(sp)
    lis     r26, 0x1
    li      r0, 0x0
    stw     r5, 0x6c(sp)
    subi    r3, r26, 0x7674
    add     r4, r25, r4
    stw     r5, 0x70(sp)
    addi    r5, sp, 0x68
    li      r6, 0x1
    stw     r0, 0x74(sp)
    li      r7, 0x4
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    subi    r3, r26, 0x7674
    b       branch_0x80013e7c

branch_0x8001389c:
    li      r3, -0x1
    b       branch_0x80013e7c

branch_0x800138a4:
    clrlslwi  r0, r31, 24, 2
    add     r28, r25, r0
    lwzu    r0, 0x8c(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80013940
    cmpwi   r26, 0x78cf
    beq-    branch_0x80013918
    bge-    branch_0x800138f4
    cmpwi   r26, 0x78a8
    beq-    branch_0x80013918
    bge-    branch_0x800138e8
    cmpwi   r26, 0x7865
    beq-    branch_0x80013918
    bge-    branch_0x8001391c
    cmpwi   r26, 0x7852
    beq-    branch_0x80013918
    b       branch_0x8001391c

branch_0x800138e8:
    cmpwi   r26, 0x78c7
    beq-    branch_0x80013918
    b       branch_0x8001391c

branch_0x800138f4:
    cmpwi   r26, 0x78d9
    beq-    branch_0x80013918
    bge-    branch_0x8001390c
    cmpwi   r26, 0x78d3
    beq-    branch_0x80013918
    b       branch_0x8001391c

branch_0x8001390c:
    cmpwi   r26, 0x78e0
    beq-    branch_0x80013918
    b       branch_0x8001391c

branch_0x80013918:
    li      r3, 0x0
branch_0x8001391c:
    clrlwi. r0, r3, 24
    bne-    branch_0x80013940
    lwz     r3, 0x8c(r25)
    cmplwi  r3, 0x0
    beq-    branch_0x80013938
    lwz     r3, 0x8(r3)
    b       branch_0x80013e7c

branch_0x80013938:
    li      r3, -0x1
    b       branch_0x80013e7c

branch_0x80013940:
    cmpwi   r26, 0x7884
    beq-    branch_0x80013bd8
    bge-    branch_0x800139fc
    cmpwi   r26, 0x7849
    beq-    branch_0x80013d98
    bge-    branch_0x800139b4
    cmpwi   r26, 0x7830
    beq-    branch_0x80013ad8
    bge-    branch_0x80013990
    cmpwi   r26, -0x2
    beq-    branch_0x80013d80
    bge-    branch_0x80013984
    lis     r3, 0xffff
    addi    r0, r3, 0x3
    cmpw    r26, r0
    beq-    branch_0x80013a98
    b       branch_0x80013d98

branch_0x80013984:
    cmpwi   r26, 0x7094
    beq-    branch_0x80013d98
    b       branch_0x80013d98

branch_0x80013990:
    cmpwi   r26, 0x783b
    beq-    branch_0x80013b20
    bge-    branch_0x800139a8
    cmpwi   r26, 0x7833
    beq-    branch_0x80013afc
    b       branch_0x80013d98

branch_0x800139a8:
    cmpwi   r26, 0x7844
    beq-    branch_0x80013d98
    b       branch_0x80013d98

branch_0x800139b4:
    cmpwi   r26, 0x7865
    beq-    branch_0x80013b7c
    bge-    branch_0x800139e4
    cmpwi   r26, 0x7852
    beq-    branch_0x80013b44
    bge-    branch_0x800139d8
    cmpwi   r26, 0x784f
    beq-    branch_0x80013d98
    b       branch_0x80013d98

branch_0x800139d8:
    cmpwi   r26, 0x785d
    beq-    branch_0x80013b58
    b       branch_0x80013d98

branch_0x800139e4:
    cmpwi   r26, 0x7881
    beq-    branch_0x80013bc4
    bge-    branch_0x80013d98
    cmpwi   r26, 0x786b
    beq-    branch_0x80013d98
    b       branch_0x80013d98

branch_0x800139fc:
    cmpwi   r26, 0x78b6
    beq-    branch_0x80013c90
    bge-    branch_0x80013a50
    cmpwi   r26, 0x78a3
    beq-    branch_0x80013d98
    bge-    branch_0x80013a38
    cmpwi   r26, 0x7899
    beq-    branch_0x80013c00
    bge-    branch_0x80013a2c
    cmpwi   r26, 0x788f
    beq-    branch_0x80013bec
    b       branch_0x80013d98

branch_0x80013a2c:
    cmpwi   r26, 0x789e
    beq-    branch_0x80013d98
    b       branch_0x80013d98

branch_0x80013a38:
    cmpwi   r26, 0x78b1
    beq-    branch_0x80013c4c
    bge-    branch_0x80013d98
    cmpwi   r26, 0x78ab
    beq-    branch_0x80013c14
    b       branch_0x80013d98

branch_0x80013a50:
    cmpwi   r26, 0x78c4
    beq-    branch_0x80013d98
    bge-    branch_0x80013a80
    cmpwi   r26, 0x78bf
    beq-    branch_0x80013d00
    bge-    branch_0x80013a74
    cmpwi   r26, 0x78b9
    beq-    branch_0x80013cc8
    b       branch_0x80013d98

branch_0x80013a74:
    cmpwi   r26, 0x78c1
    beq-    branch_0x80013d98
    b       branch_0x80013d98

branch_0x80013a80:
    cmpwi   r26, 0x78e5
    beq-    branch_0x80013d6c
    bge-    branch_0x80013d98
    cmpwi   r26, 0x78c7
    beq-    branch_0x80013d14
    b       branch_0x80013d98

branch_0x80013a98:
    lwz     r0, 0x94(r25)
    cmplwi  r0, 0x7884
    beq-    branch_0x80013ac4
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013ac4
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013ac4
    li      r26, 0x7806
branch_0x80013ac4:
    addis   r0, r26, 0x1
    cmplwi  r0, 0x3
    bne-    branch_0x80013d98
    li      r26, 0x7817
    b       branch_0x80013d98

branch_0x80013ad8:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x7818
    b       branch_0x80013d98

branch_0x80013afc:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x781c
    b       branch_0x80013d98

branch_0x80013b20:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x781c
    b       branch_0x80013d98

branch_0x80013b44:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d98
    li      r26, 0x78ee
    b       branch_0x80013d98

branch_0x80013b58:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x781b
    b       branch_0x80013d98

branch_0x80013b7c:
    lbz     r0, 0xac(r25)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80013b90
    li      r0, 0x0
    b       branch_0x80013b94

branch_0x80013b90:
    li      r0, 0x1
branch_0x80013b94:
    clrlwi. r0, r0, 24
    beq-    branch_0x80013ba8
    li      r3, 0x7865
    li      r4, 0x0
    bl      startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl
branch_0x80013ba8:
    lwz     r3, 0x8c(r25)
    cmplwi  r3, 0x0
    beq-    branch_0x80013bbc
    lwz     r3, 0x8(r3)
    b       branch_0x80013e7c

branch_0x80013bbc:
    li      r3, -0x1
    b       branch_0x80013e7c

branch_0x80013bc4:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d98
    li      r26, 0x78ee
    b       branch_0x80013d98

branch_0x80013bd8:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d98
    li      r26, 0x78fb
    b       branch_0x80013d98

branch_0x80013bec:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d98
    li      r26, 0x78fe
    b       branch_0x80013d98

branch_0x80013c00:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d98
    li      r26, 0x78fb
    b       branch_0x80013d98

branch_0x80013c14:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013c28
    li      r26, 0x7901
    b       branch_0x80013d98

branch_0x80013c28:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7cdc(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x7807
    b       branch_0x80013d98

branch_0x80013c4c:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013c60
    li      r26, 0x7901
    b       branch_0x80013d98

branch_0x80013c60:
    lwz     r0, 0x94(r25)
    cmplwi  r0, 0x7884
    beq-    branch_0x80013d98
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7cd8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x7803
    b       branch_0x80013d98

branch_0x80013c90:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013ca4
    li      r26, 0x7901
    b       branch_0x80013d98

branch_0x80013ca4:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x7800
    b       branch_0x80013d98

branch_0x80013cc8:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013cdc
    li      r26, 0x7901
    b       branch_0x80013d98

branch_0x80013cdc:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x780a
    b       branch_0x80013d98

branch_0x80013d00:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d98
    li      r26, 0x7906
    b       branch_0x80013d98

branch_0x80013d14:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d28
    li      r26, 0x78ee
    b       branch_0x80013d98

branch_0x80013d28:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d48
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d48
    li      r26, 0x780e
branch_0x80013d48:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    beq-    branch_0x80013d98
    bl      getRandom_0_1__7JALCalcFv
    lfs     f0, -0x7ce8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80013d98
    li      r26, 0x7813
    b       branch_0x80013d98

branch_0x80013d6c:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d98
    li      r26, 0x790b
    b       branch_0x80013d98

branch_0x80013d80:
    extsh   r0, r5
    cmpwi   r0, 0x2
    bgt-    branch_0x80013d94
    li      r26, 0x790e
    b       branch_0x80013d98

branch_0x80013d94:
    li      r26, 0x78e5
branch_0x80013d98:
    mulli   r0, r30, 0xc
    add     r3, r25, r0
    lwz     r5, 0xb0(r3)
    clrlslwi  r30, r31, 24, 2
    addi    r4, r30, 0x8c
    stw     r5, 0x58(sp)
    li      r0, 0x0
    addi    r3, r26, 0x0
    stw     r5, 0x5c(sp)
    add     r4, r25, r4
    li      r6, 0x1
    stw     r5, 0x60(sp)
    addi    r5, sp, 0x58
    li      r7, 0x4
    stw     r0, 0x64(sp)
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    stw     r26, 0x94(r25)
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80013e48
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x2
    bne-    branch_0x80013e34
    add     r26, r25, r30
    lwzu    r3, 0x8c(r26)
    li      r4, 0xb
    li      r5, 0x1
    bl      setPortData__8JAISoundFUcUs
    lwz     r3, 0x0(r26)
    li      r4, 0x0
    lfs     f1, -0x7cd4(rtoc)
    li      r5, 0x0
    bl      setPitch__8JAISoundFfUlUc
    lwz     r3, 0x0(r26)
    li      r4, 0x0
    lfs     f1, -0x7cd0(rtoc)
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
    b       branch_0x80013e48

branch_0x80013e34:
    add     r3, r25, r30
    lwz     r3, 0x8c(r3)
    li      r4, 0xb
    li      r5, 0x0
    bl      setPortData__8JAISoundFUcUs
branch_0x80013e48:
    cmpwi   r29, 0x0
    beq-    branch_0x80013e58
    li      r0, 0x1
    b       branch_0x80013e5c

branch_0x80013e58:
    li      r0, 0x0
branch_0x80013e5c:
    clrlslwi  r0, r0, 24, 2
    add     r3, r25, r0
    lwz     r3, 0x8c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80013e78
    lwz     r3, 0x8(r3)
    b       branch_0x80013e7c

branch_0x80013e78:
    li      r3, -0x1
branch_0x80013e7c:
    lmw     r25, 0x84(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl playTimer__6MSoundFUl
playTimer__6MSoundFUl: # 0x80013e90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lbz     r0, 0xac(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x80013ec0
    li      r0, 0x0
    b       branch_0x80013ec4

branch_0x80013ec0:
    li      r0, 0x1
branch_0x80013ec4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80013f64
    li      r3, 0x403a
    li      r4, 0x0
    li      r5, -0x1
    li      r6, 0x0
    li      r7, 0x4
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    cmplwi  r31, 0x7530
    ble-    branch_0x80013ef8
    li      r0, 0x6e
    sth     r0, 0x9a(r30)
    b       branch_0x80013f64

branch_0x80013ef8:
    cmplwi  r31, 0x3a98
    ble-    branch_0x80013f0c
    li      r0, 0x32
    sth     r0, 0x9a(r30)
    b       branch_0x80013f64

branch_0x80013f0c:
    cmplwi  r31, 0x2710
    ble-    branch_0x80013f20
    li      r0, 0x23
    sth     r0, 0x9a(r30)
    b       branch_0x80013f64

branch_0x80013f20:
    cmplwi  r31, 0x1388
    ble-    branch_0x80013f34
    li      r0, 0x19
    sth     r0, 0x9a(r30)
    b       branch_0x80013f64

branch_0x80013f34:
    cmplwi  r31, 0x7d0
    ble-    branch_0x80013f48
    li      r0, 0xa
    sth     r0, 0x9a(r30)
    b       branch_0x80013f64

branch_0x80013f48:
    cmplwi  r31, 0x3e8
    ble-    branch_0x80013f5c
    li      r0, 0x3
    sth     r0, 0x9a(r30)
    b       branch_0x80013f64

branch_0x80013f5c:
    li      r0, 0x0
    sth     r0, 0x9a(r30)
branch_0x80013f64:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl setSeExtParameter__6MSoundFP8JAISound
setSeExtParameter__6MSoundFP8JAISound: # 0x80013f7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr.     r29, r4
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x80014044
    lwz     r30, 0x8(r29)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      getInfoPointerFromID__8JAIBasicFUl
    lwz     r31, 0x3c(r29)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    addi    r5, r30, 0x0
    bl      getInfoFormat__8JAIBasicFP13JAISoundTableUl
    lwz     r3, 0x0(r31)
    rlwinm. r0, r3, 0, 8, 9
    beq-    branch_0x80013fdc
    bl      getRandomVolumeNormal__Q214MSoundSESystem9MSRandVolFUl
    b       branch_0x80013fe0

branch_0x80013fdc:
    lfs     f1, -0x7d04(rtoc)
branch_0x80013fe0:
    lbz     r3, 0xc(r31)
    lis     r0, 0x4330
    lfd     f3, -0x7cf8(rtoc)
    stw     r3, 0x1c(sp)
    lfs     f0, -0x7ccc(rtoc)
    stw     r0, 0x18(sp)
    lfs     f4, -0x7d04(rtoc)
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fdivs   f0, f2, f0
    fmuls   f0, f1, f0
    fcmpo   cr0, f0, f4
    ble-    branch_0x80014018
    b       branch_0x8001401c

branch_0x80014018:
    fmr     f4, f0
branch_0x8001401c:
    fmr     f1, f4
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      setVolume__8JAISoundFfUlUc
    lfs     f1, 0x8(r31)
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      setPitch__8JAISoundFfUlUc
branch_0x80014044:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl getRandomVolumeNormal__Q214MSoundSESystem9MSRandVolFUl
getRandomVolumeNormal__Q214MSoundSESystem9MSRandVolFUl: # 0x80014064
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x5544
    stwu    sp, -0x8(sp)
    lwz     r4, 0x0(r4)
    cmplwi  r4, 0x0
    bne-    branch_0x8001408c
    lfs     f1, -0x7d04(rtoc)
    b       branch_0x800140a8

branch_0x8001408c:
    lwz     r0, 0x0(r4)
    addi    r4, r3, 0x0
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x800140a8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stopAllSound__6MSoundFv
stopAllSound__6MSoundFv: # 0x800140b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    b       branch_0x80014100

branch_0x800140d8:
    clrlslwi  r3, r31, 24, 1
    lwz     r4, 0x0(r30)
    addi    r0, r3, 0x8a
    lhzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x800140fc
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      stopAllSe__8JAIBasicFUc
branch_0x800140fc:
    addi    r31, r31, 0x1
branch_0x80014100:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    clrlwi  r0, r31, 24
    cmplw   r0, r3
    blt+    branch_0x800140d8
    li      r3, 0x7
    li      r4, 0x0
    bl      stopTrackBGMs__5MSBgmFUcUl
    lwz     r3, 0xc8(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80014130
    li      r4, 0x0
    bl      stop__8JAISoundFUl
branch_0x80014130:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl fadeOutAllSound__6MSoundFUl
fadeOutAllSound__6MSoundFUl: # 0x80014148
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    mr      r30, r3
    addi    r31, r4, 0x0
    li      r27, 0x0
    lbz     r0, 0xac(r3)
    clrlwi  r0, r0, 31
    stb     r0, 0xac(r3)
    b       branch_0x800141e0

branch_0x80014174:
    clrlwi  r4, r27, 24
    lwz     r5, 0x0(r30)
    clrlslwi  r3, r27, 24, 1
    addi    r0, r3, 0x8a
    lhzx    r0, r5, r0
    cmplwi  r0, 0x0
    beq-    branch_0x800141dc
    cmplwi  r4, 0x4
    beq-    branch_0x800141dc
    mulli   r3, r4, 0xc
    lwz     r4, 0x1e8(r5)
    addi    r0, r3, 0x4
    lwzx    r28, r4, r0
    li      r29, 0x0
    b       branch_0x800141d4

branch_0x800141b0:
    cmplwi  r29, 0x64
    bge-    branch_0x800141dc
    lfs     f1, -0x7d08(rtoc)
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x2
    bl      setVolume__8JAISoundFfUlUc
    lwz     r28, 0x30(r28)
    addi    r29, r29, 0x1
branch_0x800141d4:
    cmplwi  r28, 0x0
    bne+    branch_0x800141b0
branch_0x800141dc:
    addi    r27, r27, 0x1
branch_0x800141e0:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    clrlwi  r0, r27, 24
    cmplw   r0, r3
    blt+    branch_0x80014174
    li      r28, 0x0
    li      r29, 0x7
    b       branch_0x80014224

branch_0x800141fc:
    clrlwi  r0, r28, 24
    sraw    r0, r29, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x80014220
    lfs     f1, -0x7d08(rtoc)
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80014220:
    addi    r28, r28, 0x1
branch_0x80014224:
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800141fc
    lwz     r3, 0xc8(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80014244
    mr      r4, r31
    bl      stop__8JAISoundFUl
branch_0x80014244:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl resetAudioAll__6MSoundFUs
resetAudioAll__6MSoundFUs: # 0x80014258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lbz     r0, 0xd4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8001428c
    li      r3, 0x1
    b       branch_0x80014310

branch_0x8001428c:
    bl      getParamOutputGainUp__18JAIGlobalParameterFv
    fmr     f31, f1
    lfs     f0, -0x7cc8(rtoc)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x800142c8
    lfs     f1, -0x7cc4(rtoc)
    lfs     f2, -0x7d08(rtoc)
    bl      setMixerLevel__Q28JASystem6DriverFff
    bl      stop__Q28JASystem11AudioThreadFv
    li      r0, 0x0
    stb     r0, 0xac(r30)
    li      r3, 0x1
    stb     r0, 0xd4(r30)
    b       branch_0x80014310

branch_0x800142c8:
    clrlwi  r0, r31, 16
    lfd     f2, -0x7cf8(rtoc)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfs     f3, -0x7d04(rtoc)
    stw     r0, 0x10(sp)
    lfs     f1, -0x7cc0(rtoc)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fdivs   f2, f3, f0
    bl      powf
    fmuls   f31, f31, f1
    lfs     f1, -0x7cc4(rtoc)
    fmr     f2, f31
    bl      setMixerLevel__Q28JASystem6DriverFff
    fmr     f1, f31
    bl      setParamOutputGainUp__18JAIGlobalParameterFf
    li      r3, 0x0
branch_0x80014310:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl setCategoryVOLs__6MSoundFUsf
setCategoryVOLs__6MSoundFUsf: # 0x8001432c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    lfs     f0, -0x7ccc(rtoc)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    stfd    f0, 0x28(sp)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x7f
    lwz     r0, 0x2c(sp)
    ble-    branch_0x80014374
    li      r30, 0x7f
    b       branch_0x80014378

branch_0x80014374:
    mr      r30, r0
branch_0x80014378:
    clrlwi  r31, r4, 16
    li      r29, 0x0
    b       branch_0x800143c0

branch_0x80014384:
    lwz     r3, -0x7164(r13)
    clrlwi  r5, r29, 24
    clrlslwi  r4, r29, 24, 1
    lwz     r6, 0x0(r3)
    addi    r0, r4, 0x8a
    lhzx    r0, r6, r0
    cmplwi  r0, 0x0
    beq-    branch_0x800143bc
    sraw    r0, r31, r5
    clrlwi. r0, r0, 31
    beq-    branch_0x800143bc
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x800143bc:
    addi    r29, r29, 0x1
branch_0x800143c0:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x10
    blt+    branch_0x80014384
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl talkModeOut__6MSoundFv
talkModeOut__6MSoundFv: # 0x800143e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    lbz     r0, 0xac(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80014414
    li      r0, 0x0
    b       branch_0x80014418

branch_0x80014414:
    li      r0, 0x1
branch_0x80014418:
    clrlwi. r0, r0, 24
    beq-    branch_0x80014434
    li      r3, 0x4805
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80014434:
    lis     r3, 0x803b
    lfs     f31, -0x7ccc(rtoc)
    subi    r30, r3, 0x3714
    li      r31, 0x0
    b       branch_0x800144c8

branch_0x80014448:
    lwz     r4, -0x7164(r13)
    clrlwi  r5, r31, 24
    clrlslwi  r3, r31, 24, 1
    lwz     r4, 0x0(r4)
    addi    r0, r3, 0x8a
    lhzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x800144c4
    li      r0, 0x1ff
    sraw    r0, r0, r5
    clrlwi. r0, r0, 31
    beq-    branch_0x800144c4
    lwz     r3, -0x5d90(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x800144c4
    slwi    r0, r5, 4
    add     r4, r30, r0
    lfs     f0, 0x8(r4)
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    stfd    f0, 0x28(sp)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x7f
    lwz     r5, 0x2c(sp)
    bge-    branch_0x800144b8
    b       branch_0x800144bc

branch_0x800144b8:
    li      r5, 0x7f
branch_0x800144bc:
    mr      r4, r31
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x800144c4:
    addi    r31, r31, 0x1
branch_0x800144c8:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x80014448
    li      r30, 0x0
    li      r31, 0x7
    b       branch_0x80014508

branch_0x800144e0:
    clrlwi  r0, r30, 24
    sraw    r0, r31, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x80014504
    lfs     f1, -0x7d04(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0xf
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80014504:
    addi    r30, r30, 0x1
branch_0x80014508:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800144e0
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl talkModeIn__6MSoundFb
talkModeIn__6MSoundFb: # 0x80014530
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    beq-    branch_0x80014580
    lbz     r0, 0xac(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80014560
    li      r0, 0x0
    b       branch_0x80014564

branch_0x80014560:
    li      r0, 0x1
branch_0x80014564:
    clrlwi. r0, r0, 24
    beq-    branch_0x80014580
    li      r3, 0x4804
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80014580:
    li      r30, 0x0
    li      r31, 0x44
    b       branch_0x800145c8

branch_0x8001458c:
    lwz     r3, -0x7164(r13)
    clrlwi  r5, r30, 24
    clrlslwi  r4, r30, 24, 1
    lwz     r6, 0x0(r3)
    addi    r0, r4, 0x8a
    lhzx    r0, r6, r0
    cmplwi  r0, 0x0
    beq-    branch_0x800145c4
    sraw    r0, r31, r5
    clrlwi. r0, r0, 31
    beq-    branch_0x800145c4
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x800145c4:
    addi    r30, r30, 0x1
branch_0x800145c8:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x10
    blt+    branch_0x8001458c
    li      r30, 0x0
    li      r31, 0x7
    b       branch_0x80014608

branch_0x800145e0:
    clrlwi  r0, r30, 24
    sraw    r0, r31, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x80014604
    lfs     f1, -0x7cbc(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x1e
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80014604:
    addi    r30, r30, 0x1
branch_0x80014608:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800145e0
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl demoModeOut__6MSoundFb
demoModeOut__6MSoundFb: # 0x8001462c
    mflr    r0
    lis     r3, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x2c(sp)
    subi    r29, r3, 0x3714
    lfs     f31, -0x7ccc(rtoc)
    b       branch_0x800146d0

branch_0x80014660:
    lwz     r4, -0x7164(r13)
    clrlwi  r5, r31, 24
    clrlslwi  r3, r31, 24, 1
    lwz     r4, 0x0(r4)
    addi    r0, r3, 0x8a
    lhzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x800146cc
    lwz     r3, -0x5d90(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x800146cc
    slwi    r0, r5, 4
    add     r4, r29, r0
    lfs     f0, 0x8(r4)
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stfd    f0, 0x20(sp)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x7f
    lwz     r5, 0x24(sp)
    bge-    branch_0x800146c0
    b       branch_0x800146c4

branch_0x800146c0:
    li      r5, 0x7f
branch_0x800146c4:
    mr      r4, r31
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x800146cc:
    addi    r31, r31, 0x1
branch_0x800146d0:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x80014660
    clrlwi. r0, r30, 24
    beq-    branch_0x80014724
    li      r29, 0x0
    li      r30, 0x7
    b       branch_0x80014718

branch_0x800146f0:
    clrlwi  r0, r29, 24
    sraw    r0, r30, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x80014714
    lfs     f1, -0x7d04(rtoc)
    addi    r3, r29, 0x0
    li      r4, 0xf
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80014714:
    addi    r29, r29, 0x1
branch_0x80014718:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800146f0
branch_0x80014724:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x40
    blr


.globl demoModeIn__6MSoundFUsb
demoModeIn__6MSoundFUsb: # 0x80014744
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    clrlwi  r30, r4, 16
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    b       branch_0x800147a8

branch_0x8001476c:
    clrlwi  r4, r31, 24
    sraw    r0, r30, r4
    clrlwi. r0, r0, 31
    beq-    branch_0x800147a4
    lwz     r3, -0x7164(r13)
    slwi    r4, r4, 1
    addi    r0, r4, 0x8a
    lwz     r4, 0x0(r3)
    lhzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x800147a4
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x800147a4:
    addi    r31, r31, 0x1
branch_0x800147a8:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x8001476c
    clrlwi. r0, r29, 24
    beq-    branch_0x800147fc
    li      r30, 0x0
    li      r31, 0x7
    b       branch_0x800147f0

branch_0x800147c8:
    clrlwi  r0, r30, 24
    sraw    r0, r31, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x800147ec
    lfs     f1, -0x7d08(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0xf
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x800147ec:
    addi    r30, r30, 0x1
branch_0x800147f0:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800147c8
branch_0x800147fc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl pauseOff__6MSoundFUc
pauseOff__6MSoundFUc: # 0x80014818
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x1
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    beq-    branch_0x80014968
    bge-    branch_0x8001484c
    cmpwi   r0, 0x0
    bge-    branch_0x80014858
    b       branch_0x80014a1c

branch_0x8001484c:
    cmpwi   r0, 0x3
    bge-    branch_0x80014a1c
    b       branch_0x8001488c

branch_0x80014858:
    lbz     r0, 0xac(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8001486c
    li      r0, 0x0
    b       branch_0x80014870

branch_0x8001486c:
    li      r0, 0x1
branch_0x80014870:
    clrlwi. r0, r0, 24
    beq-    branch_0x8001488c
    li      r3, 0x4803
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8001488c:
    lis     r3, 0x803b
    lfs     f31, -0x7ccc(rtoc)
    subi    r30, r3, 0x3714
    li      r31, 0x0
    b       branch_0x80014918

branch_0x800148a0:
    clrlwi  r5, r31, 24
    cmplwi  r5, 0x4
    beq-    branch_0x80014914
    lwz     r4, -0x7164(r13)
    slwi    r3, r5, 1
    addi    r0, r3, 0x8a
    lwz     r3, 0x0(r4)
    lhzx    r0, r3, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80014914
    lwz     r3, -0x5d90(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80014914
    slwi    r0, r5, 4
    add     r4, r30, r0
    lfs     f0, 0x8(r4)
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    stfd    f0, 0x38(sp)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x7f
    lwz     r5, 0x3c(sp)
    bge-    branch_0x80014908
    b       branch_0x8001490c

branch_0x80014908:
    li      r5, 0x7f
branch_0x8001490c:
    mr      r4, r31
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x80014914:
    addi    r31, r31, 0x1
branch_0x80014918:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x800148a0
    li      r30, 0x0
    li      r31, 0x7
    b       branch_0x80014958

branch_0x80014930:
    clrlwi  r0, r30, 24
    sraw    r0, r31, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x80014954
    lfs     f1, -0x7d04(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0xa
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80014954:
    addi    r30, r30, 0x1
branch_0x80014958:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    blt+    branch_0x80014930
    b       branch_0x80014a1c

branch_0x80014968:
    lbz     r0, 0xac(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8001497c
    li      r0, 0x0
    b       branch_0x80014980

branch_0x8001497c:
    li      r0, 0x1
branch_0x80014980:
    clrlwi. r0, r0, 24
    beq-    branch_0x8001499c
    li      r3, 0x481b
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8001499c:
    li      r30, 0x0
    b       branch_0x800149d0

branch_0x800149a4:
    lwz     r3, -0x7164(r13)
    clrlslwi  r4, r30, 24, 1
    addi    r0, r4, 0x8a
    lwz     r5, 0x0(r3)
    lhzx    r0, r5, r0
    cmplwi  r0, 0x0
    beq-    branch_0x800149cc
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x800149cc:
    addi    r30, r30, 0x1
branch_0x800149d0:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x10
    blt+    branch_0x800149a4
    li      r30, 0x0
    li      r31, 0x7
    b       branch_0x80014a10

branch_0x800149e8:
    clrlwi  r0, r30, 24
    sraw    r0, r31, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x80014a0c
    lfs     f1, -0x7d08(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0xf
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80014a0c:
    addi    r30, r30, 0x1
branch_0x80014a10:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800149e8
branch_0x80014a1c:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl pauseOn__6MSoundFb
pauseOn__6MSoundFb: # 0x80014a38
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    beq-    branch_0x80014a8c
    lbz     r0, 0xac(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80014a6c
    li      r0, 0x0
    b       branch_0x80014a70

branch_0x80014a6c:
    li      r0, 0x1
branch_0x80014a70:
    clrlwi. r0, r0, 24
    beq-    branch_0x80014a8c
    li      r3, 0x4802
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80014a8c:
    li      r30, 0x0
    b       branch_0x80014acc

branch_0x80014a94:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x4
    beq-    branch_0x80014ac8
    lwz     r3, -0x7164(r13)
    slwi    r4, r0, 1
    addi    r0, r4, 0x8a
    lwz     r4, 0x0(r3)
    lhzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80014ac8
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x80014ac8:
    addi    r30, r30, 0x1
branch_0x80014acc:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x10
    blt+    branch_0x80014a94
    clrlwi. r0, r31, 24
    beq-    branch_0x80014b24
    li      r30, 0x0
    li      r31, 0x7
    b       branch_0x80014b14

branch_0x80014aec:
    clrlwi  r0, r30, 24
    sraw    r0, r31, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x80014b10
    lfs     f1, -0x7d08(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x3c
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80014b10:
    addi    r30, r30, 0x1
branch_0x80014b14:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    blt+    branch_0x80014aec
    b       branch_0x80014b64

branch_0x80014b24:
    li      r30, 0x0
    li      r31, 0x7
    b       branch_0x80014b58

branch_0x80014b30:
    clrlwi  r0, r30, 24
    sraw    r0, r31, r0
    clrlwi. r0, r0, 31
    beq-    branch_0x80014b54
    lfs     f1, -0x7d08(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x3
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80014b54:
    addi    r30, r30, 0x1
branch_0x80014b58:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    blt+    branch_0x80014b30
branch_0x80014b64:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl initSound__6MSoundFv
initSound__6MSoundFv: # 0x80014b7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r29, 0x2c(sp)
    lbz     r0, 0xac(r3)
    lis     r3, 0x803b
    subi    r29, r3, 0x3714
    ori     r0, r0, 0x2
    stb     r0, 0xac(r30)
    lfs     f31, -0x7ccc(rtoc)
    b       branch_0x80014c2c

branch_0x80014bbc:
    lwz     r4, -0x7164(r13)
    clrlwi  r5, r31, 24
    clrlslwi  r3, r31, 24, 1
    lwz     r4, 0x0(r4)
    addi    r0, r3, 0x8a
    lhzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80014c28
    lwz     r3, -0x5d90(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80014c28
    slwi    r0, r5, 4
    add     r4, r29, r0
    lfs     f0, 0x8(r4)
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stfd    f0, 0x20(sp)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x7f
    lwz     r5, 0x24(sp)
    bge-    branch_0x80014c1c
    b       branch_0x80014c20

branch_0x80014c1c:
    li      r5, 0x7f
branch_0x80014c20:
    mr      r4, r31
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x80014c28:
    addi    r31, r31, 0x1
branch_0x80014c2c:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x10
    blt+    branch_0x80014bbc
    lwz     r3, 0x7c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80014c54
    li      r4, 0x1
    bl      stop__8JAISoundFUl
    li      r0, 0x0
    stw     r0, 0x7c(r30)
branch_0x80014c54:
    lwz     r3, 0x80(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80014c70
    li      r4, 0x1
    bl      stop__8JAISoundFUl
    li      r0, 0x0
    stw     r0, 0x80(r30)
branch_0x80014c70:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x40
    blr


.globl startSoundSetGrp__6MSoundFUlPC3VecUlfUlUlUc
startSoundSetGrp__6MSoundFUlPC3VecUlfUlUlUc: # 0x80014c90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r3, 0xac(r3)
    clrlwi. r0, r3, 31
    bne-    branch_0x80014cc0
    rlwinm  r0, r4, 8, 24, 25
    rlwimi  r0, r4, 21, 31, 31
    clrlwi. r0, r0, 24
    bne-    branch_0x80014cc0
    li      r0, 0x0
    b       branch_0x80014ce8

branch_0x80014cc0:
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x80014ce4
    rlwinm  r0, r4, 8, 24, 25
    rlwimi  r0, r4, 21, 31, 31
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80014ce4
    li      r0, 0x0
    b       branch_0x80014ce8

branch_0x80014ce4:
    li      r0, 0x1
branch_0x80014ce8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80014d0c
    addi    r3, r4, 0x0
    addi    r4, r5, 0x0
    addi    r5, r6, 0x0
    addi    r6, r7, 0x0
    addi    r7, r8, 0x0
    addi    r8, r9, 0x0
    bl      startSoundSetGrp__13MSSetSoundGrpFUlPC3VecUlfUlUlUc
branch_0x80014d0c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
startSoundSet__6MSoundFUlPC3VecUlfUlUlUc: # 0x80014d1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r3, 0xac(r3)
    clrlwi. r0, r3, 31
    bne-    branch_0x80014d4c
    rlwinm  r0, r4, 8, 24, 25
    rlwimi  r0, r4, 21, 31, 31
    clrlwi. r0, r0, 24
    bne-    branch_0x80014d4c
    li      r0, 0x0
    b       branch_0x80014d74

branch_0x80014d4c:
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x80014d70
    rlwinm  r0, r4, 8, 24, 25
    rlwimi  r0, r4, 21, 31, 31
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80014d70
    li      r0, 0x0
    b       branch_0x80014d74

branch_0x80014d70:
    li      r0, 0x1
branch_0x80014d74:
    clrlwi. r0, r0, 24
    beq-    branch_0x80014d98
    addi    r3, r4, 0x0
    addi    r4, r5, 0x0
    addi    r5, r6, 0x0
    addi    r6, r7, 0x0
    addi    r7, r8, 0x0
    addi    r8, r9, 0x0
    bl      startSoundSet__10MSSetSoundFUlPC3VecUlfUlUlUc
branch_0x80014d98:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl mainLoop__6MSoundFv
mainLoop__6MSoundFv: # 0x80014da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    lbz     r0, 0xd3(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80014dd8
    lbz     r0, 0xac(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80014e58
branch_0x80014dd8:
    lbz     r0, 0xcd(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80014df8
    lwz     r3, 0xa8(r30)
    bl      entranceDemoLoop__10MSMainProcFUl
    lwz     r3, 0xa8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0xa8(r30)
branch_0x80014df8:
    lwz     r31, -0x72a0(r13)
    b       branch_0x80014e18

branch_0x80014e00:
    lwz     r3, 0x0(r31)
    lwz     r12, 0x18(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r31, 0xc(r31)
branch_0x80014e18:
    cmplwi  r31, 0x0
    bne+    branch_0x80014e00
    lwz     r31, -0x72ac(r13)
    b       branch_0x80014e40

branch_0x80014e28:
    lwz     r3, 0x0(r31)
    lwz     r12, 0x18(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r31, 0xc(r31)
branch_0x80014e40:
    cmplwi  r31, 0x0
    bne+    branch_0x80014e28
    mr      r3, r30
    bl      startFrameInterfaceWork__8JAIBasicFv
    lwz     r3, 0x9c(r30)
    bl      loop__8MSModBgmFv
branch_0x80014e58:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl __ct__6MSoundFP7JKRHeapP7JKRHeapUlPUcPUcUl
__ct__6MSoundFP7JKRHeapP7JKRHeapUlPUcPUcUl: # 0x80014e70
    mflr    r0
    lis     r9, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stmw    r24, 0x58(sp)
    addi    r31, r3, 0x0
    addi    r24, r4, 0x0
    addi    r25, r5, 0x0
    addi    r28, r6, 0x0
    addi    r26, r7, 0x0
    addi    r27, r8, 0x0
    addi    r30, r9, 0x3e80
    bl      __ct__8JAIBasicFv
    lis     r3, 0x803b
    subi    r0, r3, 0x3b40
    lis     r3, 0x8001
    stw     r0, 0x4(r31)
    addi    r4, r3, 0x51b4
    addi    r3, r31, 0xb0
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x2
    bl      __construct_array
    lis     r3, 0x15
    addi    r3, r3, 0x1800
    addi    r29, r28, 0x0
    addi    r4, r24, 0x0
    li      r5, 0x0
    bl      create__12JKRSolidHeapFUlP7JKRHeapb
    cmplwi  r25, 0x0
    addi    r28, r3, 0x0
    beq-    branch_0x80014f00
    stw     r25, -0x5d78(r13)
    stw     r25, -0x5db0(r13)
branch_0x80014f00:
    addi    r3, r30, 0x20
    bl      setParamInitDataFileName__18JAIGlobalParameterFPc
    addi    r0, r30, 0x38
    stw     r0, -0x74e8(r13)
    addi    r3, r30, 0x50
    bl      setParamWavePath__18JAIGlobalParameterFPc
    addi    r3, r30, 0x64
    bl      setParamSequenceArchivesPath__18JAIGlobalParameterFPc
    addi    r3, r30, 0x74
    bl      setParamStreamPath__18JAIGlobalParameterFPc
    li      r3, 0xb9
    bl      setParamSystemTrackMax__18JAIGlobalParameterFl
    li      r3, 0x4
    bl      setParamSeqPlayTrackMax__18JAIGlobalParameterFUl
    li      r3, 0x8
    bl      setParamSeqControlBufferMax__18JAIGlobalParameterFUl
    li      r3, 0x8
    bl      setParamSystemRootTrackMax__18JAIGlobalParameterFl
    lis     r30, 0x1
    subi    r3, r30, 0x1000
    bl      setParamStayHeapSize__18JAIGlobalParameterFUl
    li      r3, 0x3
    bl      setParamAutoHeapMax__18JAIGlobalParameterFUl
    subi    r3, r30, 0x5d01
    bl      setParamAutoHeapRoomSize__18JAIGlobalParameterFUl
    li      r3, 0x1
    bl      setParamStayHeapMax__18JAIGlobalParameterFUl
    li      r3, 0x1
    bl      setParamStreamInsideBufferCut__18JAIGlobalParameterFb
    lfs     f1, -0x7cc4(rtoc)
    bl      setParamInputGainDown__18JAIGlobalParameterFf
    lfs     f1, -0x7cb8(rtoc)
    bl      setParamOutputGainUp__18JAIGlobalParameterFf
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      setInitFileLoadSwitch__8JAIBasicFUc
    cmplwi  r26, 0x0
    beq-    branch_0x80014fa0
    mr      r3, r26
    bl      setParamInitDataPointer__18JAIGlobalParameterFPv
branch_0x80014fa0:
    cmplwi  r27, 0x0
    beq-    branch_0x80014fac
    stw     r27, -0x5d98(r13)
branch_0x80014fac:
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    li      r6, 0x1
    bl      initDriver__8JAIBasicFP12JKRSolidHeapUlUc
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      initInterface__8JAIBasicFUc
    lis     r3, 0x803b
    lfs     f30, -0x7d08(rtoc)
    lfs     f31, -0x7ccc(rtoc)
    subi    r30, r3, 0x3714
    li      r28, 0x0
    b       branch_0x80015068

branch_0x80014fe4:
    clrlwi  r5, r28, 24
    lwz     r4, 0x0(r31)
    clrlslwi  r3, r28, 24, 1
    addi    r0, r3, 0x8a
    lhzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80015064
    slwi    r0, r5, 4
    add     r3, r30, r0
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f30, f0
    bge-    branch_0x8001501c
    fmr     f1, f0
    b       branch_0x80015020

branch_0x8001501c:
    fmr     f1, f30
branch_0x80015020:
    lfs     f0, 0x8(r3)
    fmr     f30, f1
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stfd    f0, 0x50(sp)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x7f
    lwz     r0, 0x54(sp)
    bge-    branch_0x80015050
    b       branch_0x80015054

branch_0x80015050:
    li      r0, 0x7f
branch_0x80015054:
    mr      r5, r0
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      setSeCategoryVolume__8JAIBasicFUcUc
branch_0x80015064:
    addi    r28, r28, 0x1
branch_0x80015068:
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x10
    blt+    branch_0x80014fe4
    fmr     f1, f30
    bl      setParamDistanceMax__18JAIGlobalParameterFf
    lfs     f1, -0x7d08(rtoc)
    bl      setParamMinDistanceVolume__18JAIGlobalParameterFf
    lfs     f1, -0x7cb4(rtoc)
    bl      setParamMaxVolumeDistance__18JAIGlobalParameterFf
    li      r0, 0x3
    stb     r0, 0xac(r31)
    lwz     r0, -0x5d90(r13)
    stw     r31, -0x7164(r13)
    stw     r0, -0x7160(r13)
    bl      init__9JALSystemFv
    bl      construct__Q214MSoundSESystem8MSoundSEFv
    bl      init__5MSBgmFv
    li      r0, 0x0
    stb     r0, 0x88(r31)
    li      r3, 0x8
    bl      __nw__FUl
    stw     r3, 0x9c(r31)
    li      r3, 0x4
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x800150d8
    lfs     f0, -0x7d08(rtoc)
    stfs    f0, 0x0(r3)
branch_0x800150d8:
    stw     r3, 0xa0(r31)
    li      r3, 0x0
    li      r0, -0x1
    stw     r3, 0x7c(r31)
    stw     r3, 0x80(r31)
    stw     r0, 0x94(r31)
    stb     r3, 0x98(r31)
    sth     r3, -0x7168(r13)
    lwz     r3, -0x7164(r13)
    lbz     r0, 0x98(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80015110
    li      r0, 0x78
    sth     r0, -0x7168(r13)
branch_0x80015110:
    li      r8, 0x0
    stb     r8, 0xcc(r31)
    lis     r3, 0x8040
    addi    r7, r3, 0x74ec
    stb     r8, 0xcd(r31)
    li      r4, 0x1
    li      r0, 0xff
    stb     r8, 0xce(r31)
    mr      r3, r31
    stb     r8, 0xcf(r31)
    stb     r8, 0xd0(r31)
    lwz     r6, 0x0(r7)
    lwz     r5, 0x4(r7)
    stw     r6, 0xb0(r31)
    stw     r5, 0xb4(r31)
    lwz     r5, 0x8(r7)
    stw     r5, 0xb8(r31)
    lwz     r6, 0x0(r7)
    lwz     r5, 0x4(r7)
    stw     r6, 0xbc(r31)
    stw     r5, 0xc0(r31)
    lwz     r5, 0x8(r7)
    stw     r5, 0xc4(r31)
    stw     r8, 0x84(r31)
    sth     r8, 0x9a(r31)
    stw     r8, 0x8c(r31)
    stw     r8, 0x90(r31)
    stw     r8, 0xc8(r31)
    stb     r4, 0xd3(r31)
    stb     r4, 0xd4(r31)
    stb     r0, 0xd1(r31)
    stb     r0, 0xd2(r31)
    stw     r8, 0xa4(r31)
    stw     r8, 0xa8(r31)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    lmw     r24, 0x58(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl __ct__9JAICameraFv
__ct__9JAICameraFv: # 0x800151b4
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    blr


.globl getDistPowFromCamera__6MSoundFRC3Vec
getDistPowFromCamera__6MSoundFRC3Vec: # 0x800151c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stfd    f31, 0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    lwz     r3, 0x8(r3)
    lfs     f1, 0x4(r4)
    lwz     r31, 0x0(r3)
    lfs     f2, -0x7cb0(rtoc)
    lfs     f0, 0x4(r31)
    fsubs   f1, f1, f0
    bl      powf
    lfs     f3, 0x0(r30)
    fmr     f31, f1
    lfs     f0, 0x0(r31)
    lfs     f2, -0x7cb0(rtoc)
    fsubs   f1, f3, f0
    bl      powf
    lfs     f3, 0x8(r30)
    fadds   f31, f1, f31
    lfs     f0, 0x8(r31)
    lfs     f2, -0x7cb0(rtoc)
    fsubs   f1, f3, f0
    bl      powf
    lwz     r0, 0x24(sp)
    fadds   f1, f1, f31
    lfd     f31, 0x18(sp)
    lwz     r31, 0x14(sp)
    mtlr    r0
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl getDistFromCamera__6MSoundFP3Vec
getDistFromCamera__6MSoundFP3Vec: # 0x80015250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x8(r3)
    mr      r3, r4
    lwz     r4, 0x0(r5)
    bl      getDist__7JALCalcFP3VecP3Vec
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPlayerInfo__6MSoundFP3VecP3VecPA4_fb
setPlayerInfo__6MSoundFP3VecP3VecPA4_fb: # 0x8001527c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r7, 24
    cmplwi  r0, 0x1
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    bne-    branch_0x800152a4
    li      r0, 0x0
    b       branch_0x800152a8

branch_0x800152a4:
    li      r0, 0x1
branch_0x800152a8:
    cmplwi  r31, 0x0
    clrlwi  r0, r0, 24
    bne-    branch_0x80015308
    li      r4, 0x0
    stw     r4, 0x20(sp)
    mulli   r0, r0, 0xc
    stw     r4, 0x24(sp)
    add     r6, r3, r0
    stw     r4, 0x28(sp)
    lis     r3, 0x8040
    addi    r4, r3, 0x74ec
    lwz     r5, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r5, 0xb0(r6)
    stw     r0, 0xb4(r6)
    lwz     r0, 0x28(sp)
    stw     r0, 0xb8(r6)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xb0(r6)
    stw     r0, 0xb4(r6)
    lwz     r0, 0x8(r4)
    stw     r0, 0xb8(r6)
    b       branch_0x80015364

branch_0x80015308:
    mulli   r0, r0, 0xc
    add     r7, r3, r0
    stw     r31, 0xb0(r7)
    li      r3, 0x7865
    li      r4, 0x1
    stw     r5, 0xb4(r7)
    stw     r6, 0xb8(r7)
    bl      createRandPlayVec__Q214MSoundSESystem10MSRandPlayFUlUs
    li      r3, 0x7865
    addi    r4, r31, 0x0
    bl      registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec
    li      r3, 0x7094
    li      r4, 0x1
    bl      createRandPlayVec__Q214MSoundSESystem10MSRandPlayFUlUs
    li      r3, 0x7094
    addi    r4, r31, 0x0
    bl      registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec
    li      r3, 0x1950
    li      r4, 0x1
    bl      createRandPlayVec__Q214MSoundSESystem10MSRandPlayFUlUs
    li      r3, 0x1950
    addi    r4, r31, 0x0
    bl      registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec
branch_0x80015364:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setCameraInfo__6MSoundFP3VecP3VecPA4_fUl
setCameraInfo__6MSoundFP3VecP3VecPA4_fUl: # 0x80015378
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x800153b8
    lis     r4, 0x8040
    lwz     r6, 0x8(r3)
    mulli   r5, r7, 0xc
    lwzu    r3, 0x74ec(r4)
    lwz     r0, 0x4(r4)
    add     r5, r6, r5
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r5)
    b       branch_0x800153bc

branch_0x800153b8:
    bl      setCameraInfo__8JAIBasicFP3VecP3VecPA4_fUl
branch_0x800153bc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkWaveOnAram__6MSoundF13MS_SCENE_WAVE
checkWaveOnAram__6MSoundF13MS_SCENE_WAVE: # 0x800153cc
    mflr    r0
    cmpwi   r4, 0x210
    stw     r0, 0x4(sp)
    srawi   r0, r4, 8
    clrlwi  r0, r0, 24
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    clrlwi  r31, r4, 24
    stw     r30, 0x10(sp)
    bne-    branch_0x800154cc
    mr      r3, r0
    bl      getWaveBank__Q28JASystem11WaveBankMgrFi
    mr.     r30, r3
    bne-    branch_0x8001540c
    li      r3, 0x0
    b       branch_0x800154d8

branch_0x8001540c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xbdad
    cmplwi  r0, 0x4943
    bne-    branch_0x80015474
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      getWaveGroup__Q28JASystem14TBasicWaveBankFi
    cmplwi  r3, 0x0
    bne-    branch_0x80015448
    li      r3, 0x0
    b       branch_0x800154d8

branch_0x80015448:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8001546c
    li      r3, 0x1
    b       branch_0x800154d8

branch_0x8001546c:
    li      r3, 0x0
    b       branch_0x800154d8

branch_0x80015474:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xacb3
    cmplwi  r0, 0x504c
    bne-    branch_0x800154c4
    lwz     r12, 0x0(r30)
    mr      r3, r30
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800154bc
    li      r3, 0x1
    b       branch_0x800154d8

branch_0x800154bc:
    li      r3, 0x0
    b       branch_0x800154d8

branch_0x800154c4:
    li      r3, 0x0
    b       branch_0x800154d8

branch_0x800154cc:
    mr      r4, r0
    addi    r5, r31, 0x0
    bl      checkSceneWaveOnMemory__8JAIBasicFll
branch_0x800154d8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getLoadFlagPtr__Q28JASystem15TSimpleWaveBankFv
getLoadFlagPtr__Q28JASystem15TSimpleWaveBankFv: # 0x800154f0
    addi    r3, r3, 0x40
    blr


.globl getLoadFlagPtr__Q38JASystem14TBasicWaveBank10TWaveGroupFv
getLoadFlagPtr__Q38JASystem14TBasicWaveBank10TWaveGroupFv: # 0x800154f8
    addi    r3, r3, 0x30
    blr


.globl exitStage__6MSoundFv
exitStage__6MSoundFv: # 0x80015500
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x38(sp)
    li      r30, 0x0
    b       branch_0x80015548

branch_0x80015520:
    clrlslwi  r3, r30, 24, 1
    lwz     r4, 0x0(r31)
    addi    r0, r3, 0x8a
    lhzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80015544
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      stopAllSe__8JAIBasicFUc
branch_0x80015544:
    addi    r30, r30, 0x1
branch_0x80015548:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    clrlwi  r0, r30, 24
    cmplw   r0, r3
    blt+    branch_0x80015520
    li      r3, 0x7
    li      r4, 0x0
    bl      stopTrackBGMs__5MSBgmFUcUl
    lwz     r3, 0xc8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80015578
    li      r4, 0x0
    bl      stop__8JAISoundFUl
branch_0x80015578:
    lis     r3, 0x8040
    lwz     r7, 0x8(r31)
    addi    r6, r3, 0x74ec
    lwz     r4, 0x0(r6)
    li      r5, 0x0
    lwz     r3, 0x4(r6)
    li      r0, 0xff
    stw     r4, 0x0(r7)
    stw     r3, 0x4(r7)
    lwz     r3, 0x8(r6)
    stw     r3, 0x8(r7)
    stw     r5, 0x2c(sp)
    stw     r5, 0x30(sp)
    stw     r5, 0x34(sp)
    lwz     r4, 0x2c(sp)
    lwz     r3, 0x30(sp)
    stw     r4, 0xb0(r31)
    stw     r3, 0xb4(r31)
    lwz     r3, 0x34(sp)
    stw     r3, 0xb8(r31)
    lwz     r4, 0x0(r6)
    lwz     r3, 0x4(r6)
    stw     r4, 0xb0(r31)
    stw     r3, 0xb4(r31)
    lwz     r3, 0x8(r6)
    stw     r3, 0xb8(r31)
    stw     r5, 0x1c(sp)
    stw     r5, 0x20(sp)
    stw     r5, 0x24(sp)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r4, 0xbc(r31)
    stw     r3, 0xc0(r31)
    lwz     r3, 0x24(sp)
    stw     r3, 0xc4(r31)
    lwz     r4, 0x0(r6)
    lwz     r3, 0x4(r6)
    stw     r4, 0xbc(r31)
    stw     r3, 0xc0(r31)
    lwz     r3, 0x8(r6)
    stw     r3, 0xc4(r31)
    stb     r0, 0xd1(r31)
    stb     r0, 0xd2(r31)
    stb     r5, 0xcc(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl enterStage__6MSoundF13MS_SCENE_WAVEUcUc
enterStage__6MSoundF13MS_SCENE_WAVEUcUc: # 0x80015640
    mflr    r0
    cmpwi   r4, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stb     r5, 0xd1(r3)
    stb     r6, 0xd2(r3)
    beq-    branch_0x8001568c
    beq-    branch_0x8001568c
    cmpwi   r4, 0x210
    srawi   r0, r4, 8
    clrlwi  r0, r0, 24
    clrlwi  r5, r4, 24
    bne-    branch_0x80015684
    mr      r3, r0
    addi    r4, r5, 0x0
    bl      loadWave__Q28JASystem11WaveBankMgrFii
    b       branch_0x8001568c

branch_0x80015684:
    mr      r4, r0
    bl      loadSceneWave__8JAIBasicFll
branch_0x8001568c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadWave__6MSoundF13MS_SCENE_WAVE
loadWave__6MSoundF13MS_SCENE_WAVE: # 0x8001569c
    mflr    r0
    cmpwi   r4, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    beq-    branch_0x800156dc
    cmpwi   r4, 0x210
    srawi   r0, r4, 8
    clrlwi  r0, r0, 24
    clrlwi  r5, r4, 24
    bne-    branch_0x800156d4
    mr      r3, r0
    addi    r4, r5, 0x0
    bl      loadWave__Q28JASystem11WaveBankMgrFii
    b       branch_0x800156dc

branch_0x800156d4:
    mr      r4, r0
    bl      loadSceneWave__8JAIBasicFll
branch_0x800156dc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadGroupWave__6MSoundFll
loadGroupWave__6MSoundFll: # 0x800156ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    cmpwi   r30, 0x2
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x8001574c
    cmpwi   r31, 0x10
    beq-    branch_0x8001574c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      loadWaveBackword__10MSLoadWaveFii
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      setSceneSetFinishCallback__8JAIBasicFll
    lwz     r3, 0x60(r29)
    slwi    r0, r30, 2
    stwx    r31, r3, r0
    b       branch_0x80015794

branch_0x8001574c:
    cmpwi   r30, 0x2
    bne-    branch_0x8001576c
    cmpwi   r31, 0x10
    bne-    branch_0x8001576c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      loadWave__Q28JASystem11WaveBankMgrFii
    b       branch_0x80015794

branch_0x8001576c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      loadWave__Q28JASystem11WaveBankMgrFii
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      setSceneSetFinishCallback__8JAIBasicFll
    lwz     r3, 0x60(r29)
    slwi    r0, r30, 2
    stwx    r31, r3, r0
branch_0x80015794:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl setRegisterTrackCallback__6MSoundFv
setRegisterTrackCallback__6MSoundFv: # 0x800157b0
    mflr    r0
    lis     r3, 0x8001
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x58a8
    stwu    sp, -0x8(sp)
    bl      registerTrackCallback__Q28JASystem8TrackMgrFPFPQ28JASystem6TTrackUs_Us
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeSound__6MSoundFUl
makeSound__6MSoundFUl: # 0x800157d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80015828
    addi    r31, r4, 0x0
    mulli   r3, r31, 0x44
    mr      r4, r0
    addi    r3, r3, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8001
    addi    r4, r4, 0x586c
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0x44
    bl      __construct_new_array
    b       branch_0x80015858

branch_0x80015828:
    mr      r31, r4
    lwz     r4, -0x5b30(r13)
    mulli   r3, r31, 0x44
    addi    r3, r3, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8001
    addi    r4, r4, 0x586c
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0x44
    bl      __construct_new_array
branch_0x80015858:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__8MSHandleFv
__ct__8MSHandleFv: # 0x8001586c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__8JAISoundFv
    lis     r3, 0x803b
    subi    r0, r3, 0x3614
    stw     r0, 0x40(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setParameterSeqSync__12MSSeCallBackFPQ28JASystem6TTrackUs
setParameterSeqSync__12MSSeCallBackFPQ28JASystem6TTrackUs: # 0x800158a8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    cmpwi   r0, 0x14
    stwu    sp, -0x88(sp)
    stmw    r24, 0x68(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x80015950
    bge-    branch_0x80015908
    cmpwi   r0, 0xc
    beq-    branch_0x80015a08
    bge-    branch_0x800158f0
    cmpwi   r0, 0x1
    beq-    branch_0x80015d98
    bge-    branch_0x80015d98
    cmpwi   r0, 0x0
    bge-    branch_0x80015bc0
    b       branch_0x80015d98

branch_0x800158f0:
    cmpwi   r0, 0xf
    beq-    branch_0x80015944
    bge-    branch_0x80015d98
    cmpwi   r0, 0xe
    bge-    branch_0x80015d98
    b       branch_0x80015b70

branch_0x80015908:
    cmpwi   r0, 0x78
    beq-    branch_0x80015d60
    bge-    branch_0x8001592c
    cmpwi   r0, 0x6e
    beq-    branch_0x80015d2c
    bge-    branch_0x80015d98
    cmpwi   r0, 0x1e
    beq-    branch_0x80015bec
    b       branch_0x80015d98

branch_0x8001592c:
    cmpwi   r0, 0x7f
    beq-    branch_0x80015d98
    bge-    branch_0x80015d98
    cmpwi   r0, 0x7a
    bge-    branch_0x80015d98
    b       branch_0x80015d90

branch_0x80015944:
    lwz     r3, -0x7164(r13)
    lhz     r3, 0x9a(r3)
    b       branch_0x80015da0

branch_0x80015950:
    lis     r4, 0x803b
    lis     r3, 0x803b
    subi    r27, r4, 0x3b90
    subi    r28, r3, 0x3b50
    li      r30, 0x0
    b       branch_0x800159d8

branch_0x80015968:
    clrlslwi  r0, r30, 16, 2
    add     r26, r31, r0
    clrlslwi  r25, r30, 16, 4
    li      r29, 0x0
    b       branch_0x800159c8

branch_0x8001597c:
    clrlwi  r4, r29, 16
    lwz     r3, 0x2c4(r26)
    clrlslwi  r5, r29, 16, 2
    addi    r0, r5, 0x2c4
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    beq-    branch_0x800159d4
    or      r0, r25, r4
    clrlslwi  r0, r0, 16, 1
    add     r24, r27, r0
    addi    r5, r24, 0x0
    li      r4, 0x9
    bl      readPortAppDirect__Q28JASystem6TTrackFUlPUs
    lhz     r0, 0x0(r24)
    addi    r29, r29, 0x1
    add     r4, r28, r0
    lbz     r3, 0x0(r4)
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
branch_0x800159c8:
    clrlwi  r0, r29, 16
    cmplwi  r0, 0x10
    blt+    branch_0x8001597c
branch_0x800159d4:
    addi    r30, r30, 0x1
branch_0x800159d8:
    clrlwi  r0, r30, 16
    cmplwi  r0, 0x2
    blt+    branch_0x80015968
    li      r24, 0x0
    b       branch_0x800159f0

branch_0x800159ec:
    addi    r24, r24, 0x1
branch_0x800159f0:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    clrlwi  r0, r24, 16
    cmplw   r0, r3
    blt+    branch_0x800159ec
    li      r3, 0x0
    b       branch_0x80015da0

branch_0x80015a08:
    lwz     r3, 0x2c0(r31)
    addi    r5, sp, 0x5e
    li      r4, 0x8
    bl      readPortAppDirect__Q28JASystem6TTrackFUlPUs
    addi    r3, r31, 0x0
    addi    r5, sp, 0x5c
    li      r4, 0xf
    bl      readPortAppDirect__Q28JASystem6TTrackFUlPUs
    lhz     r24, 0x5e(sp)
    lhz     r0, -0x7168(r13)
    cmplw   r24, r0
    ble-    branch_0x80015a3c
    b       branch_0x80015a40

branch_0x80015a3c:
    mr      r24, r0
branch_0x80015a40:
    lhz     r0, 0x5c(sp)
    clrlwi  r29, r24, 16
    cmplw   r29, r0
    beq-    branch_0x80015aac
    addi    r3, r31, 0x0
    addi    r5, sp, 0x5a
    li      r4, 0xe
    bl      readPortAppDirect__Q28JASystem6TTrackFUlPUs
    lhz     r0, 0x5a(sp)
    cmplw   r0, r29
    ble-    branch_0x80015a7c
    lis     r3, 0x1
    subi    r0, r3, 0x14
    sth     r0, 0x58(sp)
    b       branch_0x80015a84

branch_0x80015a7c:
    li      r0, 0x14
    sth     r0, 0x58(sp)
branch_0x80015a84:
    lhz     r5, 0x58(sp)
    addi    r3, r31, 0x0
    li      r4, 0xd
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
    addi    r3, r31, 0x0
    addi    r5, r24, 0x0
    li      r4, 0xf
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
    sth     r24, 0x5c(sp)
    b       branch_0x80015abc

branch_0x80015aac:
    addi    r3, r31, 0x0
    addi    r5, sp, 0x58
    li      r4, 0xd
    bl      readPortAppDirect__Q28JASystem6TTrackFUlPUs
branch_0x80015abc:
    lhz     r0, 0x58(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x80015b68
    addi    r3, r31, 0x0
    addi    r5, sp, 0x5a
    li      r4, 0xe
    bl      readPortAppDirect__Q28JASystem6TTrackFUlPUs
    lhz     r3, 0x5a(sp)
    lhz     r0, 0x58(sp)
    add     r0, r3, r0
    sth     r0, 0x5a(sp)
    lhz     r0, 0x5a(sp)
    cmplwi  r0, 0x7fff
    bgt-    branch_0x80015afc
    cmplwi  r0, 0x0
    bne-    branch_0x80015b1c
branch_0x80015afc:
    li      r0, 0x0
    sth     r0, 0x58(sp)
    addi    r3, r31, 0x0
    li      r4, 0xd
    sth     r0, 0x5a(sp)
    lhz     r5, 0x58(sp)
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
    b       branch_0x80015b4c

branch_0x80015b1c:
    lhz     r3, 0x5c(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x80015b4c
    cmplw   r0, r3
    ble-    branch_0x80015b4c
    li      r0, 0x0
    sth     r3, 0x5a(sp)
    mr      r3, r31
    sth     r0, 0x58(sp)
    li      r4, 0xd
    lhz     r5, 0x58(sp)
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
branch_0x80015b4c:
    lhz     r5, 0x5a(sp)
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
    lhz     r0, 0x5a(sp)
    subfic  r3, r0, 0x7f
    b       branch_0x80015da0

branch_0x80015b68:
    li      r3, 0xff
    b       branch_0x80015da0

branch_0x80015b70:
    lwz     r3, 0x2c0(r31)
    addi    r5, sp, 0x5e
    li      r4, 0x8
    bl      readPortAppDirect__Q28JASystem6TTrackFUlPUs
    lhz     r24, 0x5e(sp)
    lhz     r0, -0x7168(r13)
    cmplw   r24, r0
    ble-    branch_0x80015b94
    b       branch_0x80015b98

branch_0x80015b94:
    mr      r24, r0
branch_0x80015b98:
    addi    r3, r31, 0x0
    addi    r5, r24, 0x0
    li      r4, 0xe
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
    addi    r3, r31, 0x0
    addi    r5, r24, 0x0
    li      r4, 0xf
    bl      writePortAppDirect__Q28JASystem6TTrackFUlUs
    subfic  r3, r24, 0x7f
    b       branch_0x80015da0

branch_0x80015bc0:
    mr      r3, r31
    bl      setParameterSeqSync__8JAIBasicFPQ28JASystem6TTrackUs
    li      r0, 0x4a
    stb     r0, 0x3c1(r31)
    lwz     r4, 0x2c0(r31)
    lwz     r0, 0x300(r4)
    cmplw   r0, r31
    bne-    branch_0x80015da0
    li      r0, 0x1
    stb     r0, 0x3c2(r31)
    b       branch_0x80015da0

branch_0x80015bec:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setParameterSeqSync__8JAIBasicFPQ28JASystem6TTrackUs
    addi    r24, r3, 0x0
    addi    r3, r31, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      setPanSwitchParent__Q28JASystem6TTrackFUcUc
    addi    r3, r31, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      setPanSwitchParent__Q28JASystem6TTrackFUcUc
    addi    r3, r31, 0x0
    li      r4, 0x1
    li      r5, 0x2
    bl      setPanSwitchParent__Q28JASystem6TTrackFUcUc
    addi    r3, r31, 0x0
    li      r4, 0x8
    li      r5, 0x0
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    addi    r3, r31, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    addi    r3, r31, 0x0
    li      r4, 0xb
    li      r5, 0x0
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    addi    r3, r31, 0x0
    li      r4, 0xc
    li      r5, 0x7fff
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    lwz     r27, 0x2c0(r31)
    cmplwi  r27, 0x0
    addi    r25, r27, 0x0
    beq-    branch_0x80015d18
    addi    r3, r25, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      setPanSwitchExt__Q28JASystem6TTrackFUcUc
    addi    r3, r25, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      setPanSwitchExt__Q28JASystem6TTrackFUcUc
    addi    r3, r25, 0x0
    li      r4, 0x1
    li      r5, 0x2
    bl      setPanSwitchExt__Q28JASystem6TTrackFUcUc
    addi    r3, r25, 0x0
    li      r4, 0x8
    li      r5, 0x0
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    addi    r3, r25, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    addi    r3, r25, 0x0
    li      r4, 0xb
    li      r5, 0x7fff
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    addi    r3, r25, 0x0
    li      r4, 0xc
    li      r5, 0x0
    bl      writeRegDirect__Q28JASystem6TTrackFUcUs
    lwz     r3, 0x304(r27)
    cmplwi  r3, 0x0
    beq-    branch_0x80015d18
    li      r4, 0x8
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
    lwz     r3, 0x304(r27)
    li      r4, 0x4
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
    lwz     r3, 0x304(r27)
    li      r4, 0x10
    bl      onSwitch__Q38JASystem6TTrack11TOuterParamFUs
branch_0x80015d18:
    lis     r3, 0x1
    subi    r0, r3, 0x1
    sth     r0, 0x13a(r31)
    mr      r3, r24
    b       branch_0x80015da0

branch_0x80015d2c:
    lwz     r4, -0x7164(r13)
    lbz     r3, 0xd1(r4)
    lbz     r0, 0xd2(r4)
    cmplwi  r3, 0x8
    bne-    branch_0x80015da0
    cmplwi  r0, 0x6
    beq-    branch_0x80015d50
    cmplwi  r0, 0x1
    bne-    branch_0x80015da0
branch_0x80015d50:
    lis     r3, 0x1
    subi    r3, r3, 0x1
    b       branch_0x80015da0


.incbin "./baserom/code/Text_0x80005600.bin", 0x1075c, 0x80015d60 - 0x80015d5c
branch_0x80015d60:
    lbz     r0, -0x7165(r13)
    extsb.  r0, r0
    bne-    branch_0x80015d7c
    li      r3, 0x0
    li      r0, 0x1
    stb     r3, -0x7166(r13)
    stb     r0, -0x7165(r13)
branch_0x80015d7c:
    lbz     r0, -0x7166(r13)
    xori     r0, r0, 0x1
    stb     r0, -0x7166(r13)
    lbz     r3, -0x7166(r13)
    b       branch_0x80015da0

branch_0x80015d90:
    lbz     r3, -0x7166(r13)
    b       branch_0x80015da0

branch_0x80015d98:
    mr      r3, r31
    bl      setParameterSeqSync__8JAIBasicFPQ28JASystem6TTrackUs
branch_0x80015da0:
    lmw     r24, 0x68(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl setWaterCameraFir__12MSSeCallBackFb
setWaterCameraFir__12MSSeCallBackFb: # 0x80015db4
    clrlwi. r0, r3, 24
    beq-    branch_0x80015dc8
    li      r0, 0x78
    sth     r0, -0x7168(r13)
    b       branch_0x80015dd0

branch_0x80015dc8:
    li      r0, 0x0
    sth     r0, -0x7168(r13)
branch_0x80015dd0:
    lwz     r3, -0x7164(r13)
    lbz     r0, 0x98(r3)
    cmplwi  r0, 0x1
    bnelr-    

    li      r0, 0x78
    sth     r0, -0x7168(r13)
    blr


.globl loadWaveBackword__10MSLoadWaveFPQ38JASystem13WaveArcLoader7TObject
loadWaveBackword__10MSLoadWaveFPQ38JASystem13WaveArcLoader7TObject: # 0x80015dec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stw     r31, 0x124(sp)
    stw     r30, 0x120(sp)
    stw     r29, 0x11c(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr.     r31, r3
    bne-    branch_0x80015e28
    li      r3, 0x0
    b       branch_0x80015f10

branch_0x80015e28:
    lwz     r0, 0x8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80015e3c
    li      r3, 0x0
    b       branch_0x80015f10

branch_0x80015e3c:
    bl      getCurrentDir__Q28JASystem13WaveArcLoaderFv
    addi    r4, r3, 0x0
    addi    r3, sp, 0x18
    bl      strcpy
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, sp, 0x18
    bl      strcat
    addi    r3, sp, 0x18
    bl      checkFileExtend__Q28JASystem3DvdFPc
    mr.     r30, r3
    bne-    branch_0x80015e84
    li      r3, 0x0
    b       branch_0x80015f10

branch_0x80015e84:
    bl      getRootHeap__Q28JASystem13WaveArcLoaderFv
    mr      r4, r3
    lwz     r6, 0x8(r3)
    lwz     r0, 0x10(r4)
    mr      r3, r31
    addi    r5, r30, 0x0
    add     r6, r6, r0
    subf    r6, r30, r6
    bl      selfAlloc__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUlUl
    cmpwi   r3, 0x0
    bne-    branch_0x80015eb8
    li      r3, 0x0
    b       branch_0x80015f10

branch_0x80015eb8:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x0(r3)
    addi    r8, r3, 0x0
    addi    r7, r30, 0x0
    lwz     r5, 0x8(r31)
    addi    r4, sp, 0x18
    li      r3, 0x0
    li      r6, 0x0
    li      r9, 0x0
    bl      loadToAramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v
    cmpwi   r3, -0x1
    bne-    branch_0x80015f0c
    mr      r3, r31
    bl      free__Q38JASystem6Kernel5THeapFv
    li      r3, 0x0
    b       branch_0x80015f10

branch_0x80015f0c:
    li      r3, 0x1
branch_0x80015f10:
    lwz     r0, 0x12c(sp)
    lwz     r31, 0x124(sp)
    lwz     r30, 0x120(sp)
    mtlr    r0
    lwz     r29, 0x11c(sp)
    addi    sp, sp, 0x128
    blr


.globl loadWaveBackword__10MSLoadWaveFii
loadWaveBackword__10MSLoadWaveFii: # 0x80015f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    bl      getWaveBank__Q28JASystem11WaveBankMgrFi
    mr.     r31, r3
    bne-    branch_0x80015f58
    li      r3, 0x0
    b       branch_0x80015ffc

branch_0x80015f58:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xbdad
    cmplwi  r0, 0x4943
    bne-    branch_0x80015fc0
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      getWaveGroup__Q28JASystem14TBasicWaveBankFi
    mr.     r30, r3
    bne-    branch_0x80015f94
    li      r3, 0x0
    b       branch_0x80015ffc

branch_0x80015f94:
    mr      r3, r30
    bl      loadWaveBackword__10MSLoadWaveFPQ38JASystem13WaveArcLoader7TObject
    clrlwi. r0, r3, 24
    bne-    branch_0x80015fac
    li      r3, 0x0
    b       branch_0x80015ffc

branch_0x80015fac:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      incWaveTable__Q28JASystem14TBasicWaveBankFPCQ38JASystem14TBasicWaveBank10TWaveGroup
    li      r3, 0x1
    b       branch_0x80015ffc

branch_0x80015fc0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xacb3
    cmplwi  r0, 0x504c
    bne-    branch_0x80015ff8
    mr.     r0, r31
    mr      r3, r0
    beq-    branch_0x80015ff0
    addi    r3, r3, 0x4
branch_0x80015ff0:
    bl      loadWaveBackword__10MSLoadWaveFPQ38JASystem13WaveArcLoader7TObject
    b       branch_0x80015ffc

branch_0x80015ff8:
    li      r3, 0x0
branch_0x80015ffc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl frameLoopDyna__29MSSetSoundTL_13MSSetSoundGrp_Fv
frameLoopDyna__29MSSetSoundTL_13MSSetSoundGrp_Fv: # 0x80016014
    lbz     r0, 0x58(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80016040
    lwz     r4, 0x54(r3)
    addis   r0, r4, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x80016038
    li      r0, 0x0
    b       branch_0x8001603c

branch_0x80016038:
    addi    r0, r4, 0x1
branch_0x8001603c:
    stw     r0, 0x54(r3)
branch_0x80016040:
    li      r0, 0x0
    stb     r0, 0xb8(r3)
    blr


.globl frameLoopDyna__26MSSetSoundTL_10MSSetSound_Fv
frameLoopDyna__26MSSetSoundTL_10MSSetSound_Fv: # 0x8001604c
    lbz     r0, 0x58(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80016078
    lwz     r4, 0x54(r3)
    addis   r0, r4, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x80016070
    li      r0, 0x0
    b       branch_0x80016074

branch_0x80016070:
    addi    r0, r4, 0x1
branch_0x80016074:
    stw     r0, 0x54(r3)
branch_0x80016078:
    li      r0, 0x0
    stb     r0, 0xb8(r3)
    blr


.globl calcGrp__34JALSeModDataGrp_15JALSeModPitFGrp_FUlfPf
calcGrp__34JALSeModDataGrp_15JALSeModPitFGrp_FUlfPf: # 0x80016084
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      searchGroup__54JALListGrp_15JALSeModPitFGrp_Ul_19JALSeModDataGrpMemb_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x800160cc
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x0(r31)
    li      r3, 0x1
    b       branch_0x800160d0

branch_0x800160cc:
    li      r3, 0x0
branch_0x800160d0:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcDyna__31JALSeModData_15JALSeModPitFGrp_Ff
calcDyna__31JALSeModData_15JALSeModPitFGrp_Ff: # 0x800160e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calc__31JALSeModData_15JALSeModVolFunk_FUlfPf
calc__31JALSeModData_15JALSeModVolFunk_FUlfPf: # 0x80016120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      search__30JALListS_15JALSeModVolFunk_Ul_FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80016168
    lwz     r12, 0x14(r3)
    fmr     f1, f31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x0(r31)
    li      r3, 0x1
    b       branch_0x8001616c

branch_0x80016168:
    li      r3, 0x0
branch_0x8001616c:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcDyna__31JALSeModData_15JALSeModVolFunk_Ff
calcDyna__31JALSeModData_15JALSeModVolFunk_Ff: # 0x80016184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0x18(r3)
    lfs     f3, 0x1c(r3)
    lfs     f4, 0x28(r3)
    lfs     f5, 0x20(r3)
    lfs     f6, 0x24(r3)
    lbz     r3, 0x2c(r3)
    bl      getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl search__30JALListS_15JALSeModVolFunk_Ul_FUl
search__30JALListS_15JALSeModVolFunk_Ul_FUl: # 0x800161bc
    lwz     r4, -0x7210(r13)
    b       branch_0x800161e0

branch_0x800161c4:
    lwz     r5, 0x0(r4)
    lwz     r0, 0x10(r5)
    cmplw   r3, r0
    bne-    branch_0x800161dc
    mr      r3, r5
    blr

branch_0x800161dc:
    lwz     r4, 0xc(r4)
branch_0x800161e0:
    cmplwi  r4, 0x0
    bne+    branch_0x800161c4
    li      r3, 0x0
    blr


.globl searchGroup__54JALListGrp_15JALSeModPitFGrp_Ul_19JALSeModDataGrpMemb_FUl
searchGroup__54JALListGrp_15JALSeModPitFGrp_Ul_19JALSeModDataGrpMemb_FUl: # 0x800161f0
    lwz     r4, -0x7264(r13)
    b       branch_0x8001623c

branch_0x800161f8:
    lwz     r7, 0x0(r4)
    lwz     r5, 0x30(r7)
    b       branch_0x8001621c

branch_0x80016204:
    lwz     r6, 0x0(r5)
    lwz     r0, 0x0(r6)
    cmplw   r3, r0
    bne-    branch_0x80016218
    b       branch_0x80016228

branch_0x80016218:
    lwz     r5, 0xc(r5)
branch_0x8001621c:
    cmplwi  r5, 0x0
    bne+    branch_0x80016204
    li      r6, 0x0
branch_0x80016228:
    cmplwi  r6, 0x0
    beq-    branch_0x80016238
    mr      r3, r7
    blr

branch_0x80016238:
    lwz     r4, 0xc(r4)
branch_0x8001623c:
    cmplwi  r4, 0x0
    bne+    branch_0x800161f8
    li      r3, 0x0
    blr


.globl __sinit_MSound_cpp
__sinit_MSound_cpp: # 0x8001624c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6438
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80016294
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80016294:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800162c4
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800162c4:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800162f4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800162f4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80016324
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80016324:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80016354
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80016354:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80016384
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80016384:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800163b4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800163b4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800163e4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800163e4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80016414
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80016414:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80016444
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80016444:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80016474
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80016474:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800164a4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800164a4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800164d4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800164d4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80016504
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80016504:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80016534
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80016534:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

