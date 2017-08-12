
.globl changeAnmRateAndFrameUpdate___13TBossHanachanFv
changeAnmRateAndFrameUpdate___13TBossHanachanFv: # 0x800f2144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stmw    r26, 0xf8(sp)
    addi    r30, r3, 0x0
    li      r31, 0x1
    bl      SMSGetAnmFrameRate__Fv
    lwz     r3, 0x8c(r30)
    fmr     f31, f1
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x800f217c
    b       branch_0x800f2180

branch_0x800f217c:
    lwz     r29, 0x1c(r3)
branch_0x800f2180:
    bl      theNerve__24TNerveBossHanachanTumbleFv
    cmplw   r29, r3
    bne-    branch_0x800f2230
    lwz     r3, 0x170(r30)
    lfs     f0, -0x5960(r2)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x150(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x154(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x158(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x15c(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x160(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x164(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x168(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x16c(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x170(r30)
    bl      changeTumbleAnmRate___22TBossHanachanPartsBaseFv
    li      r26, 0x0
    li      r29, 0x0
branch_0x800f220c:
    addi    r0, r29, 0x150
    lwzx    r3, r30, r0
    bl      changeTumbleAnmRate___22TBossHanachanPartsBaseFv
    addi    r26, r26, 0x1
    cmpwi   r26, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x800f220c
    li      r31, 0x0
    b       branch_0x800f26fc

branch_0x800f2230:
    lwz     r3, 0x170(r30)
    lwz     r0, 0xf4(r3)
    cmpwi   r0, 0x2
    bge-    branch_0x800f2688
    cmpwi   r0, 0x0
    bge-    branch_0x800f224c
    b       branch_0x800f2688

branch_0x800f224c:
    lwz     r4, 0x1c0(r30)
    lfs     f3, 0x140(r30)
    lfs     f1, 0x40(r4)
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x800f2344
    lfs     f0, -0x5960(r2)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x150(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x154(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x158(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x15c(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x160(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x164(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x168(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x16c(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x170(r30)
    lwz     r0, 0xf4(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x800f22f0
    bge-    branch_0x800f2330
    cmpwi   r0, 0x0
    bge-    branch_0x800f265c
    b       branch_0x800f2330

branch_0x800f22f0:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
    lwz     r3, 0x170(r30)
    bl      copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
    li      r28, 0x0
    li      r29, 0x0
branch_0x800f2310:
    addi    r0, r29, 0x150
    lwzx    r3, r30, r0
    bl      copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
    addi    r28, r28, 0x1
    cmpwi   r28, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x800f2310
    b       branch_0x800f265c

branch_0x800f2330:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
    b       branch_0x800f265c

branch_0x800f2344:
    lfs     f2, 0x54(r4)
    fcmpo   cr0, f3, f2
    cror    2, 1, 2
    bne-    branch_0x800f2434
    lfs     f0, -0x5960(r2)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x150(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x154(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x158(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x15c(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x160(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x164(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x168(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x16c(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x170(r30)
    lwz     r0, 0xf4(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x800f265c
    bge-    branch_0x800f2420
    cmpwi   r0, 0x0
    bge-    branch_0x800f23e0
    b       branch_0x800f2420

branch_0x800f23e0:
    addi    r3, r30, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
    lwz     r3, 0x170(r30)
    bl      copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
    li      r28, 0x0
    li      r29, 0x0
branch_0x800f2400:
    addi    r0, r29, 0x150
    lwzx    r3, r30, r0
    bl      copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
    addi    r28, r28, 0x1
    cmpwi   r28, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x800f2400
    b       branch_0x800f265c

branch_0x800f2420:
    addi    r3, r30, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
    b       branch_0x800f265c

branch_0x800f2434:
    bl      CLBCalcRatio_f___Ffff
    lwz     r4, 0x170(r30)
    fmr     f31, f1
    lwz     r0, 0xf4(r4)
    cmpwi   r0, 0x1
    beq-    branch_0x800f251c
    bge-    branch_0x800f25e0
    cmpwi   r0, 0x0
    bge-    branch_0x800f245c
    b       branch_0x800f25e0

branch_0x800f245c:
    lwz     r0, 0xf8(r4)
    cmpwi   r0, 0x1
    beq-    branch_0x800f24ac
    addi    r3, r30, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
    lwz     r3, 0x170(r30)
    bl      copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
    li      r28, 0x0
    li      r29, 0x0
branch_0x800f2488:
    addi    r0, r29, 0x150
    lwzx    r3, r30, r0
    bl      copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
    addi    r28, r28, 0x1
    cmpwi   r28, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x800f2488
    lfs     f0, -0x595c(r2)
    fsubs   f31, f0, f31
branch_0x800f24ac:
    lwz     r3, 0x170(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x150(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x154(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x158(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x15c(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x160(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x164(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x168(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x16c(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    b       branch_0x800f265c

branch_0x800f251c:
    lwz     r0, 0xf8(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f2534
    lfs     f0, -0x595c(r2)
    fsubs   f31, f0, f31
    b       branch_0x800f2570

branch_0x800f2534:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
    lwz     r3, 0x170(r30)
    bl      copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
    li      r28, 0x0
    li      r29, 0x0
branch_0x800f2554:
    addi    r0, r29, 0x150
    lwzx    r3, r30, r0
    bl      copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
    addi    r28, r28, 0x1
    cmpwi   r28, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x800f2554
branch_0x800f2570:
    lwz     r3, 0x170(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x150(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x154(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x158(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x15c(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x160(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x164(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x168(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    lwz     r3, 0x16c(r30)
    lwz     r3, 0x110(r3)
    stfs    f31, 0x28(r3)
    b       branch_0x800f265c

branch_0x800f25e0:
    lfs     f0, -0x5960(r2)
    mr      r3, r30
    lwz     r6, 0x110(r4)
    li      r4, 0x0
    li      r5, 0x1
    stfs    f0, 0x28(r6)
    lwz     r6, 0x150(r30)
    lwz     r6, 0x110(r6)
    stfs    f0, 0x28(r6)
    lwz     r6, 0x154(r30)
    lwz     r6, 0x110(r6)
    stfs    f0, 0x28(r6)
    lwz     r6, 0x158(r30)
    lwz     r6, 0x110(r6)
    stfs    f0, 0x28(r6)
    lwz     r6, 0x15c(r30)
    lwz     r6, 0x110(r6)
    stfs    f0, 0x28(r6)
    lwz     r6, 0x160(r30)
    lwz     r6, 0x110(r6)
    stfs    f0, 0x28(r6)
    lwz     r6, 0x164(r30)
    lwz     r6, 0x110(r6)
    stfs    f0, 0x28(r6)
    lwz     r6, 0x168(r30)
    lwz     r6, 0x110(r6)
    stfs    f0, 0x28(r6)
    lwz     r6, 0x16c(r30)
    lwz     r6, 0x110(r6)
    stfs    f0, 0x28(r6)
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
branch_0x800f265c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, 0x140(r30)
    lwz     r3, 0x1c0(r30)
    fmuls   f2, f0, f1
    lfs     f1, 0x18(r3)
    lfs     f0, 0x2c(r3)
    fmuls   f31, f2, f1
    fcmpo   cr0, f31, f0
    bge-    branch_0x800f26fc
    fmr     f31, f0
    b       branch_0x800f26fc

branch_0x800f2688:
    lfs     f0, -0x5960(r2)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x150(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x154(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x158(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x15c(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x160(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x164(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x168(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x16c(r30)
    lwz     r3, 0x110(r3)
    stfs    f0, 0x28(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmr     f31, f1
branch_0x800f26fc:
    lwz     r3, 0x170(r30)
    clrlwi. r0, r31, 24
    lwz     r26, 0x74(r3)
    beq-    branch_0x800f271c
    addi    r3, r26, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x800f271c:
    lwz     r3, 0x170(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
    mr      r3, r26
    bl      frameUpdate__6MActorFv
    clrlwi  r29, r31, 24
    li      r27, 0x0
    li      r31, 0x0
branch_0x800f2744:
    addi    r28, r31, 0x150
    add     r28, r30, r28
    lwz     r3, 0x0(r28)
    cmplwi  r29, 0x0
    lwz     r26, 0x74(r3)
    beq-    branch_0x800f276c
    addi    r3, r26, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x800f276c:
    lwz     r3, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
    mr      r3, r26
    bl      frameUpdate__6MActorFv
    addi    r27, r27, 0x1
    cmpwi   r27, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x800f2744
    lmw     r26, 0xf8(sp)
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl isAllBckAlreadyEnd__13TBossHanachanCF23EnumBossHanachanAnmKind
isAllBckAlreadyEnd__13TBossHanachanCF23EnumBossHanachanAnmKind: # 0x800f27b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    mr      r26, r3
    addi    r27, r4, 0x0
    li      r29, 0x1
    li      r31, 0x0
    lwz     r3, 0x170(r3)
    lwz     r0, 0xf4(r3)
    cmpw    r0, r27
    bne-    branch_0x800f27f0
    bl      isCurBckAlreadyEnd___22TBossHanachanPartsBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f27f0
    li      r31, 0x1
branch_0x800f27f0:
    clrlwi. r0, r31, 24
    bne-    branch_0x800f2800
    li      r29, 0x0
    b       branch_0x800f2850

branch_0x800f2800:
    li      r28, 0x0
    li      r31, 0x0
branch_0x800f2808:
    addi    r0, r31, 0x150
    lwzx    r3, r26, r0
    li      r30, 0x0
    lwz     r0, 0xf4(r3)
    cmpw    r0, r27
    bne-    branch_0x800f2830
    bl      isCurBckAlreadyEnd___22TBossHanachanPartsBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f2830
    li      r30, 0x1
branch_0x800f2830:
    clrlwi. r0, r30, 24
    bne-    branch_0x800f2840
    li      r29, 0x0
    b       branch_0x800f2850

branch_0x800f2840:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x800f2808
branch_0x800f2850:
    mr      r3, r29
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl isFinishedGetUp__13TBossHanachanCFv
isFinishedGetUp__13TBossHanachanCFv: # 0x800f2868
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    lwz     r3, 0x170(r3)
    lwz     r0, 0xf4(r3)
    cmpwi   r0, 0xc
    beq-    branch_0x800f289c
    bge-    branch_0x800f28ac
    cmpwi   r0, 0x9
    beq-    branch_0x800f289c
    b       branch_0x800f28ac

branch_0x800f289c:
    bl      isCurBckAlreadyEnd___22TBossHanachanPartsBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f28ac
    li      r31, 0x1
branch_0x800f28ac:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl considerSetAnm__13TBossHanachanF24EnumBossHanachanNerveAnm
considerSetAnm__13TBossHanachanF24EnumBossHanachanNerveAnm: # 0x800f28c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    lwz     r3, 0x170(r3)
    bl      considerSetAnm___22TBossHanachanPartsBaseF24EnumBossHanachanNerveAnm
    li      r30, 0x0
    li      r31, 0x0
branch_0x800f28f8:
    addi    r0, r31, 0x150
    lwzx    r3, r28, r0
    mr      r4, r29
    bl      considerSetAnm___22TBossHanachanPartsBaseF24EnumBossHanachanNerveAnm
    addi    r30, r30, 0x1
    cmpwi   r30, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x800f28f8
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl setAnmTimerWhenDead__13TBossHanachanFv
setAnmTimerWhenDead__13TBossHanachanFv: # 0x800f2938
    lwz     r0, 0x174(r3)
    li      r6, 0x0
    lwz     r4, 0x1c0(r3)
    subf.   r0, r6, r0
    lbz     r5, 0x234(r4)
    blt-    branch_0x800f2954
    b       branch_0x800f2958

branch_0x800f2954:
    neg     r0, r0
branch_0x800f2958:
    mullw   r0, r5, r0
    lwz     r4, 0x150(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x1
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2978
    b       branch_0x800f297c

branch_0x800f2978:
    neg     r0, r0
branch_0x800f297c:
    mullw   r0, r5, r0
    lwz     r4, 0x154(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x2
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f299c
    b       branch_0x800f29a0

branch_0x800f299c:
    neg     r0, r0
branch_0x800f29a0:
    mullw   r0, r5, r0
    lwz     r4, 0x158(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x3
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f29c0
    b       branch_0x800f29c4

branch_0x800f29c0:
    neg     r0, r0
branch_0x800f29c4:
    mullw   r0, r5, r0
    lwz     r4, 0x15c(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x4
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f29e4
    b       branch_0x800f29e8

branch_0x800f29e4:
    neg     r0, r0
branch_0x800f29e8:
    mullw   r0, r5, r0
    lwz     r4, 0x160(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x5
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2a08
    b       branch_0x800f2a0c

branch_0x800f2a08:
    neg     r0, r0
branch_0x800f2a0c:
    mullw   r0, r5, r0
    lwz     r4, 0x164(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x6
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2a2c
    b       branch_0x800f2a30

branch_0x800f2a2c:
    neg     r0, r0
branch_0x800f2a30:
    mullw   r0, r5, r0
    lwz     r4, 0x168(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x7
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2a50
    b       branch_0x800f2a54

branch_0x800f2a50:
    neg     r0, r0
branch_0x800f2a54:
    mullw   r0, r5, r0
    lwz     r4, 0x16c(r3)
    stw     r0, 0x10c(r4)
    lwz     r0, 0x174(r3)
    addic.  r0, r0, 0x1
    blt-    branch_0x800f2a70
    b       branch_0x800f2a74

branch_0x800f2a70:
    neg     r0, r0
branch_0x800f2a74:
    mullw   r0, r5, r0
    lwz     r3, 0x170(r3)
    stw     r0, 0x10c(r3)
    blr


.globl setAnmTimerWhenDamage__13TBossHanachanFv
setAnmTimerWhenDamage__13TBossHanachanFv: # 0x800f2a84
    lwz     r0, 0x174(r3)
    li      r6, 0x0
    lwz     r4, 0x1c0(r3)
    subf.   r0, r6, r0
    lbz     r5, 0x220(r4)
    blt-    branch_0x800f2aa0
    b       branch_0x800f2aa4

branch_0x800f2aa0:
    neg     r0, r0
branch_0x800f2aa4:
    mullw   r0, r5, r0
    lwz     r4, 0x150(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x1
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2ac4
    b       branch_0x800f2ac8

branch_0x800f2ac4:
    neg     r0, r0
branch_0x800f2ac8:
    mullw   r0, r5, r0
    lwz     r4, 0x154(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x2
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2ae8
    b       branch_0x800f2aec

branch_0x800f2ae8:
    neg     r0, r0
branch_0x800f2aec:
    mullw   r0, r5, r0
    lwz     r4, 0x158(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x3
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2b0c
    b       branch_0x800f2b10

branch_0x800f2b0c:
    neg     r0, r0
branch_0x800f2b10:
    mullw   r0, r5, r0
    lwz     r4, 0x15c(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x4
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2b30
    b       branch_0x800f2b34

branch_0x800f2b30:
    neg     r0, r0
branch_0x800f2b34:
    mullw   r0, r5, r0
    lwz     r4, 0x160(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x5
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2b54
    b       branch_0x800f2b58

branch_0x800f2b54:
    neg     r0, r0
branch_0x800f2b58:
    mullw   r0, r5, r0
    lwz     r4, 0x164(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x6
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2b78
    b       branch_0x800f2b7c

branch_0x800f2b78:
    neg     r0, r0
branch_0x800f2b7c:
    mullw   r0, r5, r0
    lwz     r4, 0x168(r3)
    stw     r0, 0x10c(r4)
    li      r6, 0x7
    lwz     r0, 0x174(r3)
    subf.   r0, r6, r0
    blt-    branch_0x800f2b9c
    b       branch_0x800f2ba0

branch_0x800f2b9c:
    neg     r0, r0
branch_0x800f2ba0:
    mullw   r0, r5, r0
    lwz     r4, 0x16c(r3)
    stw     r0, 0x10c(r4)
    lwz     r0, 0x174(r3)
    addic.  r0, r0, 0x1
    blt-    branch_0x800f2bbc
    b       branch_0x800f2bc0

branch_0x800f2bbc:
    neg     r0, r0
branch_0x800f2bc0:
    mullw   r0, r5, r0
    lwz     r3, 0x170(r3)
    stw     r0, 0x10c(r3)
    blr


.globl setAnmTimerWhenSnort__13TBossHanachanFv
setAnmTimerWhenSnort__13TBossHanachanFv: # 0x800f2bd0
    lwz     r5, 0x1c0(r3)
    li      r0, 0x0
    lwz     r4, 0x170(r3)
    lbz     r9, 0x20c(r5)
    stw     r0, 0x10c(r4)
    rotlwi  r6, r9, 0
    slwi    r5, r9, 1
    lwz     r4, 0x150(r3)
    mulli   r0, r9, 0x3
    stw     r6, 0x10c(r4)
    slwi    r8, r9, 2
    lwz     r4, 0x154(r3)
    mulli   r7, r9, 0x5
    stw     r5, 0x10c(r4)
    mulli   r6, r9, 0x6
    lwz     r4, 0x158(r3)
    stw     r0, 0x10c(r4)
    mulli   r5, r9, 0x7
    lwz     r4, 0x15c(r3)
    slwi    r0, r9, 3
    stw     r8, 0x10c(r4)
    lwz     r4, 0x160(r3)
    stw     r7, 0x10c(r4)
    lwz     r4, 0x164(r3)
    stw     r6, 0x10c(r4)
    lwz     r4, 0x168(r3)
    stw     r5, 0x10c(r4)
    lwz     r3, 0x16c(r3)
    stw     r0, 0x10c(r3)
    blr


.globl setAnmTimerWhenGetUp__13TBossHanachanFv
setAnmTimerWhenGetUp__13TBossHanachanFv: # 0x800f2c48
    lwz     r5, 0x1c0(r3)
    li      r0, 0x0
    lwz     r4, 0x16c(r3)
    lbz     r9, 0x1f8(r5)
    stw     r0, 0x10c(r4)
    slwi    r5, r9, 1
    mulli   r0, r9, 0x3
    lwz     r4, 0x168(r3)
    stw     r9, 0x10c(r4)
    slwi    r8, r9, 2
    mulli   r7, r9, 0x5
    lwz     r4, 0x164(r3)
    stw     r5, 0x10c(r4)
    mulli   r6, r9, 0x6
    lwz     r4, 0x160(r3)
    mulli   r5, r9, 0x7
    stw     r0, 0x10c(r4)
    lwz     r4, 0x15c(r3)
    slwi    r0, r9, 3
    stw     r8, 0x10c(r4)
    lwz     r4, 0x158(r3)
    stw     r7, 0x10c(r4)
    lwz     r4, 0x154(r3)
    stw     r6, 0x10c(r4)
    lwz     r4, 0x150(r3)
    stw     r5, 0x10c(r4)
    lwz     r3, 0x170(r3)
    stw     r0, 0x10c(r3)
    blr


.globl setTumbleAnm__13TBossHanachanF36EnumBossHanachanStopMotionBlendOnOff
setTumbleAnm__13TBossHanachanF36EnumBossHanachanStopMotionBlendOnOff: # 0x800f2cbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stfd    f29, 0x48(sp)
    stfd    f28, 0x40(sp)
    stfd    f27, 0x38(sp)
    stmw    r25, 0x1c(sp)
    mr      r25, r3
    mr      r26, r4
    lfs     f0, -0x5958(r2)
    lfs     f1, 0x194(r3)
    fcmpu   cr0, f0, f1
    bne-    branch_0x800f2d00
    li      r28, 0x11
    b       branch_0x800f2d18

branch_0x800f2d00:
    lfs     f0, -0x5954(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x800f2e38
    li      r28, 0x10
    b       branch_0x800f2d18

branch_0x800f2d14:
    b       branch_0x800f2e38

branch_0x800f2d18:
    lwz     r3, 0x170(r25)
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r31, 0x170(r25)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f2, 0x194(r25)
    mr      r30, r3
    lfs     f1, 0x38(r31)
    lfs     f0, -0x5960(r2)
    fsubs   f2, f2, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800f2d68
    b       branch_0x800f2d6c

branch_0x800f2d68:
    fneg    f2, f2
branch_0x800f2d6c:
    lfs     f1, -0x595c(r2)
    lfs     f0, 0x198(r25)
    fdivs   f0, f1, f0
    fmuls   f29, f0, f2
    bl      SMSGetAnmFrameRate__Fv
    lfs     f30, -0x595c(r2)
    li      r27, 0x0
    lfs     f28, -0x594c(r2)
    li      r31, 0x0
    fdivs   f0, f30, f29
    lfs     f29, -0x5950(r2)
    fmuls   f1, f28, f1
    fmuls   f1, f29, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r30)
    lfs     f31, -0x5960(r2)
branch_0x800f2dac:
    addi    r29, r31, 0x150
    add     r29, r25, r29
    lwz     r3, 0x0(r29)
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x0(r29)
    li      r4, 0x0
    lwz     r3, 0x74(r29)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x194(r25)
    mr      r30, r3
    lfs     f0, 0x38(r29)
    fsubs   f1, f1, f0
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    bne-    branch_0x800f2e00
    b       branch_0x800f2e04

branch_0x800f2e00:
    fneg    f1, f1
branch_0x800f2e04:
    lfs     f0, 0x198(r25)
    fdivs   f0, f30, f0
    fmuls   f27, f0, f1
    bl      SMSGetAnmFrameRate__Fv
    fdivs   f0, f30, f27
    addi    r27, r27, 0x1
    cmpwi   r27, 0x8
    addi    r31, r31, 0x4
    fmuls   f1, f28, f1
    fmuls   f1, f29, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r30)
    blt+    branch_0x800f2dac
branch_0x800f2e38:
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lfd     f28, 0x40(sp)
    lfd     f27, 0x38(sp)
    addi    sp, sp, 0x60
    blr


.globl setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff: # 0x800f2e60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stmw    r25, 0x3c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r3, 0x170(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfd     f31, -0x5948(r2)
    li      r31, 0x0
    li      r26, 0x0
    lis     r25, 0x4330
branch_0x800f2ea8:
    addi    r0, r26, 0x150
    lwzx    r30, r27, r0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800f2f54
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r6, 0x1c0(r27)
    li      r4, 0x3
    lha     r5, 0x8(r3)
    lbz     r0, 0x1e4(r6)
    mullw   r6, r31, r0
    divw    r0, r6, r5
    mullw   r0, r0, r5
    subf    r0, r0, r6
    xoris   r0, r0, 0x8000
    stw     r0, 0x2c(sp)
    stw     r25, 0x28(sp)
    lfd     f0, 0x28(sp)
    stw     r0, 0x34(sp)
    fsubs   f0, f0, f31
    stw     r25, 0x30(sp)
    stfs    f0, 0x10(r3)
    lfd     f0, 0x30(sp)
    lwz     r3, 0x74(r30)
    fsubs   f30, f0, f31
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800f2f3c
    stfs    f30, 0x10(r3)
branch_0x800f2f3c:
    lwz     r3, 0x74(r30)
    li      r4, 0x4
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800f2f54
    stfs    f30, 0x10(r3)
branch_0x800f2f54:
    addi    r31, r31, 0x1
    cmpwi   r31, 0x8
    addi    r26, r26, 0x4
    blt+    branch_0x800f2ea8
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr

