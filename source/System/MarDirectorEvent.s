
.globl fireStreamingMovie__12TMarDirectorFUc
fireStreamingMovie__12TMarDirectorFUc: # 0x8029a044
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    clrlwi  r31, r4, 24
    cmplwi  r31, 0xc
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    bgt-    branch_0x8029a1e0
    lis     r4, 0x803e
    subi    r4, r4, 0xf70
    slwi    r0, r31, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    lhz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x8029a214
    lhz     r0, 0x4c(r3)
    li      r4, 0x1
    li      r5, 0x0
    ori     r0, r0, 0x100
    sth     r0, 0x4c(r3)
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r5, r4, 0x389
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lis     r4, 0x3
    lwz     r3, -0x6060(r13)
    addi    r5, r4, 0x4
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    stw     r31, 0x18(r3)
    b       branch_0x8029a214


.incbin "./baserom/code/Text_0x80005600.bin", 0x294adc, 0x8029a1e0 - 0x8029a0dc
branch_0x8029a1e0:
    lhz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x8029a214
    lhz     r0, 0x4c(r3)
    li      r4, 0xf
    li      r5, 0x0
    ori     r0, r0, 0x100
    sth     r0, 0x4c(r3)
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
    lis     r3, 0x803f
    clrlwi  r0, r30, 24
    subi    r3, r3, 0x6900
    stw     r0, 0x18(r3)
branch_0x8029a214:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl fireEndDemoCamera__12TMarDirectorFv
fireEndDemoCamera__12TMarDirectorFv: # 0x8029a22c
    lhz     r0, 0x4c(r3)
    ori     r0, r0, 0x80
    sth     r0, 0x4c(r3)
    blr


.globl fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_: # 0x8029a23c
    stwu    sp, -0x38(sp)
    lbz     r12, 0x24d(r3)
    lbz     r0, 0x24c(r3)
    lwz     r11, 0x40(sp)
    subf    r0, r12, r0
    clrlwi  r0, r0, 29
    cmpwi   r0, 0x7
    bge-    branch_0x8029a314
    lhz     r0, 0x4c(r3)
    ori     r0, r0, 0x40
    sth     r0, 0x4c(r3)
    lbz     r0, 0x24c(r3)
    mulli   r0, r0, 0x24
    add     r12, r3, r0
    stw     r4, 0x12c(r12)
    lbz     r0, 0x24c(r3)
    mulli   r0, r0, 0x24
    add     r4, r3, r0
    stw     r5, 0x130(r4)
    lbz     r0, 0x24c(r3)
    mulli   r0, r0, 0x24
    add     r4, r3, r0
    stw     r6, 0x134(r4)
    lbz     r0, 0x24c(r3)
    mulli   r0, r0, 0x24
    add     r4, r3, r0
    stfs    f1, 0x138(r4)
    lbz     r0, 0x24c(r3)
    mulli   r0, r0, 0x24
    add     r4, r3, r0
    stb     r7, 0x13c(r4)
    lbz     r0, 0x24c(r3)
    mulli   r0, r0, 0x24
    add     r4, r3, r0
    stw     r8, 0x140(r4)
    lbz     r0, 0x24c(r3)
    mulli   r0, r0, 0x24
    add     r4, r3, r0
    stw     r9, 0x144(r4)
    lbz     r0, 0x24c(r3)
    mulli   r0, r0, 0x24
    add     r4, r3, r0
    stw     r10, 0x148(r4)
    lbz     r0, 0x24c(r3)
    lhz     r5, 0x0(r11)
    mulli   r4, r0, 0x24
    addi    r0, r4, 0x14c
    sthx    r5, r3, r0
    lbz     r4, 0x24c(r3)
    addi    r0, r4, 0x1
    stb     r0, 0x24c(r3)
    lbz     r0, 0x24c(r3)
    clrlwi  r0, r0, 29
    stb     r0, 0x24c(r3)
branch_0x8029a314:
    addi    sp, sp, 0x38
    blr


.globl setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
setNextStage__12TMarDirectorFUsPQ26JDrama6TActor: # 0x8029a31c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    stw     r29, 0x44(sp)
    stw     r28, 0x40(sp)
    addi    r28, r4, 0x0
    lhz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8029a48c
    li      r0, 0x0
    sth     r0, 0x3a(sp)
    addi    r29, sp, 0x3a
    addi    r3, sp, 0x24
    sth     r0, 0x2c(sp)
    addi    r4, sp, 0x2c
    stb     r0, 0x38(sp)
    stb     r0, 0x39(sp)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    mr      r3, r29
    lhz     r4, 0x24(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    clrlwi  r4, r28, 16
    cmplwi  r4, 0x100
    blt-    branch_0x8029a3a0
    srawi   r3, r4, 8
    subi    r0, r3, 0x1
    stb     r0, 0x38(sp)
    stb     r4, 0x39(sp)
    b       branch_0x8029a3ac

branch_0x8029a3a0:
    stb     r28, 0x38(sp)
    li      r0, 0xff
    stb     r0, 0x39(sp)
branch_0x8029a3ac:
    lhz     r3, 0x3a(sp)
    lis     r4, 0x803f
    lbz     r0, 0x38(sp)
    subi    r29, r4, 0x6900
    sth     r3, 0x28(sp)
    addi    r3, sp, 0x20
    stb     r0, 0x12(r29)
    addi    r4, sp, 0x28
    lbz     r0, 0x39(sp)
    stb     r0, 0x13(r29)
    bl      __ct__Q26JDrama10TFlagT_Us_FRCQ26JDrama10TFlagT_Us_
    addi    r3, r29, 0x14
    lhz     r4, 0x20(sp)
    bl      set__Q26JDrama10TFlagT_Us_FUs
    cmplwi  r31, 0x0
    addi    r3, r29, 0xe
    beq-    branch_0x8029a404
    lhz     r0, 0x4c(r30)
    ori     r0, r0, 0x4
    sth     r0, 0x4c(r30)
    stw     r31, 0x250(r30)
    b       branch_0x8029a460

branch_0x8029a404:
    lbz     r3, 0x0(r3)
    cmplwi  r3, 0x1
    bne-    branch_0x8029a41c
    lbz     r0, 0x38(sp)
    cmplwi  r0, 0x5
    beq-    branch_0x8029a444
branch_0x8029a41c:
    cmplwi  r3, 0x1
    bne-    branch_0x8029a430
    lbz     r0, 0x38(sp)
    cmplwi  r0, 0x6
    beq-    branch_0x8029a444
branch_0x8029a430:
    cmplwi  r3, 0x1
    bne-    branch_0x8029a454
    lbz     r0, 0x38(sp)
    cmplwi  r0, 0x8
    bne-    branch_0x8029a454
branch_0x8029a444:
    lhz     r0, 0x4c(r30)
    ori     r0, r0, 0x8
    sth     r0, 0x4c(r30)
    b       branch_0x8029a460

branch_0x8029a454:
    lhz     r0, 0x4c(r30)
    ori     r0, r0, 0x2
    sth     r0, 0x4c(r30)
branch_0x8029a460:
    lbz     r0, 0x38(sp)
    cmpwi   r0, 0x37
    beq-    branch_0x8029a470
    b       branch_0x8029a48c

branch_0x8029a470:
    lhz     r0, 0x4c(r30)
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    ori     r0, r0, 0x100
    sth     r0, 0x4c(r30)
    li      r0, 0x6
    stw     r0, 0x18(r3)
branch_0x8029a48c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl movement__12TMarDirectorFv
movement__12TMarDirectorFv: # 0x8029a4ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x64(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x8029a4c8
    b       branch_0x8029a4cc

branch_0x8029a4c8:
    bl      movement_game__12TMarDirectorFv
branch_0x8029a4cc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl fireRideYoshi__12TMarDirectorFP6TYoshi
fireRideYoshi__12TMarDirectorFP6TYoshi: # 0x8029a4dc
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8029a54c
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8029a54c
    lis     r31, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r31, 0x38f
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x8029a54c
    lwz     r3, -0x6060(r13)
    addi    r5, r31, 0x38f
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lhz     r3, 0x4c(r30)
    li      r0, 0x5
    ori     r3, r3, 0x200
    sth     r3, 0x4c(r30)
    stb     r0, 0x261(r30)
branch_0x8029a54c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl fireGetStar__12TMarDirectorFP6TShine
fireGetStar__12TMarDirectorFP6TShine: # 0x8029a564
    mflr    r0
    addi    r7, r4, 0x118
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r4, 0x25c(r3)
    addi    r6, sp, 0x1c
    lhz     r5, 0x4c(r3)
    ori     r5, r5, 0x1
    sth     r5, 0x4c(r3)
    sth     r0, 0x1c(sp)
    lbz     r0, 0x190(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8029a5a4
    lwz     r4, -0x7fd4(r13)
    b       branch_0x8029a5a8

branch_0x8029a5a4:
    lwz     r4, -0x7fd8(r13)
branch_0x8029a5a8:
    stw     r6, 0x8(sp)
    li      r6, -0x1
    li      r8, 0x0
    lwz     r5, -0x60d8(r13)
    li      r9, 0x0
    lfs     f1, 0x4(r7)
    li      r7, 0x0
    addi    r5, r5, 0x10
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl fireGetNozzle__12TMarDirectorFP11TItemNozzle
fireGetNozzle__12TMarDirectorFP11TItemNozzle: # 0x8029a5e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr.     r29, r4
    beq-    branch_0x8029a6d4
    lwz     r3, 0x4c(r29)
    lis     r4, 0x803f
    subi    r4, r4, 0x6900
    addis   r0, r3, 0xe000
    lbz     r30, 0xe(r4)
    cmplwi  r0, 0x22
    bne-    branch_0x8029a628
    li      r0, 0x1
    b       branch_0x8029a62c

branch_0x8029a628:
    li      r0, 0x0
branch_0x8029a62c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8029a674
    lwz     r3, -0x6060(r13)
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x8029a674
    lwz     r3, -0x6060(r13)
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      setNozzleRight__12TFlagManagerFUcUc
    lhz     r3, 0x4c(r31)
    li      r0, 0x3
    ori     r3, r3, 0x200
    sth     r3, 0x4c(r31)
    stb     r0, 0x261(r31)
    b       branch_0x8029a6d4

branch_0x8029a674:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x2a
    bne-    branch_0x8029a68c
    li      r0, 0x1
    b       branch_0x8029a690

branch_0x8029a68c:
    li      r0, 0x0
branch_0x8029a690:
    clrlwi. r0, r0, 24
    beq-    branch_0x8029a6d4
    lwz     r3, -0x6060(r13)
    addi    r4, r30, 0x0
    li      r5, 0x1
    bl      getNozzleRight__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x8029a6d4
    lwz     r3, -0x6060(r13)
    addi    r4, r30, 0x0
    li      r5, 0x1
    bl      setNozzleRight__12TFlagManagerFUcUc
    lhz     r3, 0x4c(r31)
    li      r0, 0x4
    ori     r3, r3, 0x200
    sth     r3, 0x4c(r31)
    stb     r0, 0x261(r31)
branch_0x8029a6d4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl fireGetBlueCoin__12TMarDirectorFP5TCoin
fireGetBlueCoin__12TMarDirectorFP5TCoin: # 0x8029a6f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr.     r31, r4
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8029a770
    lis     r3, 0x803f
    lwz     r0, 0x134(r31)
    subi    r4, r3, 0x6900
    lwz     r3, -0x6060(r13)
    lbz     r4, 0xe(r4)
    clrlwi  r5, r0, 24
    bl      setBlueCoinFlag__12TFlagManagerFUcUc
    lhz     r3, 0x4c(r30)
    li      r0, 0x1
    li      r4, 0x4845
    ori     r3, r3, 0x200
    sth     r3, 0x4c(r30)
    stb     r0, 0x261(r30)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8029a770
    addi    r4, r31, 0x10
    li      r3, 0x4845
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8029a770:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl movement_game__12TMarDirectorFv
movement_game__12TMarDirectorFv: # 0x8029a788
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    lwz     r3, 0x84(r3)
    bl      associateNPC__11TTalkCursorFP8TBaseNPC
    lbz     r0, 0x124(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8029a7c4
    b       branch_0x8029a92c

branch_0x8029a7c4:
    lwz     r3, 0x18(r31)
    lwz     r3, 0x0(r3)
    lhz     r0, 0xe2(r3)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, 0xe2(r3)
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8029a7f0
    li      r0, 0x1
    b       branch_0x8029a7f4

branch_0x8029a7f0:
    li      r0, 0x0
branch_0x8029a7f4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8029a92c
    lwz     r3, -0x7118(r13)
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x8029a92c
    lwz     r30, -0x7118(r13)
    li      r28, 0x1
    addi    r3, r30, 0x0
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8029a84c
    lwz     r0, 0x50(r30)
    cmpwi   r0, 0x49
    bne-    branch_0x8029a83c
    mr      r0, r28
    b       branch_0x8029a840

branch_0x8029a83c:
    li      r0, 0x0
branch_0x8029a840:
    clrlwi. r0, r0, 24
    bne-    branch_0x8029a84c
    li      r28, 0x0
branch_0x8029a84c:
    clrlwi. r0, r28, 24
    beq-    branch_0x8029a85c
    li      r0, 0x1
    b       branch_0x8029a860

branch_0x8029a85c:
    li      r0, 0x0
branch_0x8029a860:
    clrlwi. r0, r0, 24
    bne-    branch_0x8029a92c
    lwz     r29, 0x8c(r31)
    li      r28, 0x0
    b       branch_0x8029a8a4

branch_0x8029a874:
    lwz     r30, 0x0(r29)
    mr      r3, r30
    bl      isNowCanTaken__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8029a8a0
    lwz     r3, -0x60d8(r13)
    mr      r4, r30
    bl      isTakeSituation__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x8029a8a0
    mr      r28, r30
branch_0x8029a8a0:
    addi    r29, r29, 0x4
branch_0x8029a8a4:
    lwz     r0, 0x90(r31)
    cmplw   r29, r0
    bne+    branch_0x8029a874
    mr.     r4, r28
    beq-    branch_0x8029a8c4
    lwz     r3, 0x84(r31)
    bl      associateNPC__11TTalkCursorFP8TBaseNPC
    b       branch_0x8029a92c

branch_0x8029a8c4:
    mr      r3, r31
    bl      findNearestTalkNPC__12TMarDirectorFv
    cmplwi  r3, 0x0
    beq-    branch_0x8029a92c
    stw     r3, 0xa0(r31)
    mr      r4, r3
    lwz     r3, 0x84(r31)
    bl      associateNPC__11TTalkCursorFP8TBaseNPC
    lwz     r3, 0x18(r31)
    lwz     r3, 0x0(r3)
    lhz     r0, 0xe2(r3)
    ori     r0, r0, 0x4
    sth     r0, 0xe2(r3)
    lhz     r0, 0x128(r31)
    ori     r0, r0, 0x1
    sth     r0, 0x128(r31)
    lhz     r0, 0x128(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8029a92c
    lwz     r3, 0x18(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x8029a92c
    li      r0, 0x1
    stb     r0, 0x126(r31)
branch_0x8029a92c:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl findNearestTalkNPC__12TMarDirectorFv
findNearestTalkNPC__12TMarDirectorFv: # 0x8029a94c
    stwu    sp, -0x58(sp)
    li      r6, 0x0
    lwz     r4, -0x60d8(r13)
    lwz     r4, 0x7c(r4)
    addis   r0, r4, 0xf3c0
    cmplwi  r0, 0x201
    bne-    branch_0x8029aa00
    lwz     r5, -0x60b4(r13)
    lfs     f7, -0x5b8(rtoc)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x4c(sp)
    lwz     r7, 0x8c(r3)
    lfs     f4, 0x48(sp)
    lfs     f5, 0x4c(sp)
    lwz     r4, 0x90(r3)
    lfs     f2, 0x44(sp)
    b       branch_0x8029a9f8

branch_0x8029a9a0:
    lwz     r5, 0x0(r7)
    lwz     r3, 0xf0(r5)
    rlwinm. r0, r3, 0, 11, 11
    bne-    branch_0x8029a9f4
    rlwinm. r0, r3, 0, 14, 14
    beq-    branch_0x8029a9f4
    lfs     f1, 0x10(r5)
    lfs     f0, 0x14(r5)
    fsubs   f3, f1, f2
    lfs     f1, 0x18(r5)
    fsubs   f0, f0, f4
    fsubs   f6, f1, f5
    fmuls   f1, f3, f3
    fmuls   f0, f0, f0
    fmuls   f3, f6, f6
    fadds   f0, f1, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f0, f7
    bge-    branch_0x8029a9f4
    fmr     f7, f0
    mr      r6, r5
branch_0x8029a9f4:
    addi    r7, r7, 0x4
branch_0x8029a9f8:
    cmplw   r7, r4
    bne+    branch_0x8029a9a0
branch_0x8029aa00:
    addi    r3, r6, 0x0
    addi    sp, sp, 0x58
    blr


.globl entryNPC__12TMarDirectorFP8TBaseNPC
entryNPC__12TMarDirectorFP8TBaseNPC: # 0x8029aa0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r4, 0xc(sp)
    addi    r4, r3, 0x0
    addi    r3, r4, 0x88
    lwz     r4, 0x90(r4)
    addi    r5, sp, 0xc
    bl      insert__Q27JGadget20TVector_pointer_voidFPPvRCPv
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __sinit_MarDirectorEvent_cpp
__sinit_MarDirectorEvent_cpp: # 0x8029aa40
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x36f8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8029aa88
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8029aa88:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8029aab8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8029aab8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8029aae8
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8029aae8:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ab18
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8029ab18:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ab48
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8029ab48:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ab78
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8029ab78:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8029aba8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8029aba8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8029abd8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8029abd8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ac08
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8029ac08:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ac38
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8029ac38:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ac68
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8029ac68:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ac98
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8029ac98:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8029acc8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8029acc8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8029acf8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8029acf8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8029ad28
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8029ad28:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

