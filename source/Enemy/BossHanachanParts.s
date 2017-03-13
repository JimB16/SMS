
.globl __dt__22TBossHanachanPartsHeadFv
__dt__22TBossHanachanPartsHeadFv: # 0x800f2f80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800f2fe8
    lis     r3, 0x803c
    subi    r3, r3, 0x50b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800f2fd8
    lis     r3, 0x803c
    subi    r3, r3, 0x35b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x800f2fd8:
    extsh.  r0, r31
    ble-    branch_0x800f2fe8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800f2fe8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl receiveMessage__22TBossHanachanPartsHeadFP9THitActorUl
receiveMessage__22TBossHanachanPartsHeadFP9THitActorUl: # 0x800f3004
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    addi    r30, r3, 0x0
    addi    r31, r5, 0x0
    addi    r3, r4, 0x0
    lwz     r6, gpMarDirector(r13)
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x800f3040
    cmplwi  r0, 0x2
    beq-    branch_0x800f3040
    li      r3, 0x0
branch_0x800f3040:
    clrlwi. r0, r3, 24
    bne-    branch_0x800f3058
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x4
    beq-    branch_0x800f3058
    li      r4, 0x0
branch_0x800f3058:
    clrlwi. r0, r4, 24
    beq-    branch_0x800f3068
    li      r3, 0x0
    b       branch_0x800f3188

branch_0x800f3068:
    lwz     r3, 0xfc(r30)
    li      r27, 0x0
    li      r28, 0x0
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    mr      r29, r3
    bl      theNerve__24TNerveBossHanachanTumbleFv
    cmplw   r29, r3
    beq-    branch_0x800f3098
    bl      theNerve__22TNerveBossHanachanDownFv
    cmplw   r29, r3
    bne-    branch_0x800f30f4
branch_0x800f3098:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x15
    bne-    branch_0x800f30f0
    lfs     f0, -0x5908(rtoc)
    li      r0, 0x1
    lfs     f1, 0x38(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800f30cc
    lfs     f0, -0x5904(rtoc)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800f30cc
    li      r0, 0x0
branch_0x800f30cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f30dc
    li      r0, 0x1
    b       branch_0x800f30e0

branch_0x800f30dc:
    li      r0, 0x0
branch_0x800f30e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f30f4
    li      r28, 0x1
    b       branch_0x800f30f4

branch_0x800f30f0:
    li      r28, 0x1
branch_0x800f30f4:
    clrlwi. r0, r28, 24
    beq-    branch_0x800f3184
    cmpwi   r31, 0x1
    beq-    branch_0x800f315c
    bge-    branch_0x800f3184
    cmpwi   r31, 0x0
    bge-    branch_0x800f3114
    b       branch_0x800f3184

branch_0x800f3114:
    lwz     r0, 0xf4(r30)
    cmpwi   r0, 0x5
    bne-    branch_0x800f3138
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x5900(rtoc)
    stfs    f0, 0x10(r3)
    b       branch_0x800f3154

branch_0x800f3138:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x5
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800f3154:
    li      r27, 0x1
    b       branch_0x800f3184

branch_0x800f315c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x6
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x100(r30)
    bl      onWaterHitCounter__14TWaterHitActorFv
    li      r27, 0x1
branch_0x800f3184:
    clrlwi  r3, r27, 24
branch_0x800f3188:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl receiveMessage__22TBossHanachanPartsBodyFP9THitActorUl
receiveMessage__22TBossHanachanPartsBodyFP9THitActorUl: # 0x800f319c
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r29, r3, 0x0
    addi    r30, r5, 0x0
    addi    r3, r4, 0x0
    lwz     r6, gpMarDirector(r13)
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x800f31d8
    cmplwi  r0, 0x2
    beq-    branch_0x800f31d8
    li      r3, 0x0
branch_0x800f31d8:
    clrlwi. r0, r3, 24
    bne-    branch_0x800f31f0
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x4
    beq-    branch_0x800f31f0
    li      r4, 0x0
branch_0x800f31f0:
    clrlwi. r0, r4, 24
    beq-    branch_0x800f3200
    li      r3, 0x0
    b       branch_0x800f33ac

branch_0x800f3200:
    lwz     r3, 0xfc(r29)
    li      r31, 0x0
    li      r27, 0x0
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    mr      r28, r3
    bl      theNerve__24TNerveBossHanachanTumbleFv
    cmplw   r28, r3
    beq-    branch_0x800f3230
    bl      theNerve__22TNerveBossHanachanDownFv
    cmplw   r28, r3
    bne-    branch_0x800f328c
branch_0x800f3230:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x15
    bne-    branch_0x800f3288
    lfs     f0, -0x5908(rtoc)
    li      r0, 0x1
    lfs     f1, 0x38(r29)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800f3264
    lfs     f0, -0x5904(rtoc)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800f3264
    li      r0, 0x0
branch_0x800f3264:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f3274
    li      r0, 0x1
    b       branch_0x800f3278

branch_0x800f3274:
    li      r0, 0x0
branch_0x800f3278:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f328c
    li      r27, 0x1
    b       branch_0x800f328c

branch_0x800f3288:
    li      r27, 0x1
branch_0x800f328c:
    clrlwi. r0, r27, 24
    beq-    branch_0x800f33a8
    cmpwi   r30, 0x1
    beq-    branch_0x800f32f4
    bge-    branch_0x800f33a8
    cmpwi   r30, 0x0
    bge-    branch_0x800f32ac
    b       branch_0x800f33a8

branch_0x800f32ac:
    lwz     r0, 0xf4(r29)
    cmpwi   r0, 0x5
    bne-    branch_0x800f32d0
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x5900(rtoc)
    stfs    f0, 0x10(r3)
    b       branch_0x800f32ec

branch_0x800f32d0:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x5
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800f32ec:
    li      r31, 0x1
    b       branch_0x800f33a8

branch_0x800f32f4:
    lwz     r3, 0xfc(r29)
    lwz     r4, 0x114(r29)
    lwz     r0, 0x174(r3)
    cmpw    r4, r0
    bne-    branch_0x800f3310
    li      r4, 0x1
    b       branch_0x800f3314

branch_0x800f3310:
    li      r4, 0x0
branch_0x800f3314:
    lwz     r5, 0xf4(r29)
    cmplwi  r5, 0x11
    bgt-    branch_0x800f33a8
    lis     r3, 0x803c
    subi    r3, r3, 0x4fb8
    slwi    r0, r5, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x800F3338:		# jumptable 800F3334 cases 2,3,5,13,16,17
    clrlwi. r0, r4, 24
    beq-    branch_0x800f3368
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x6
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xfc(r29)
    bl      execDamage__13TBossHanachanFv
    b       branch_0x800f33a4

branch_0x800f3368:
    cmpwi   r5, 0xd
    bne-    branch_0x800f3388
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x5900(rtoc)
    stfs    f0, 0x10(r3)
    b       branch_0x800f33a4

branch_0x800f3388:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0xd
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800f33a4:
    li      r31, 0x1

def_800F3334:		# jumptable 800F3334 default case
branch_0x800f33a8:
    clrlwi  r3, r31, 24
branch_0x800f33ac:
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl setAnm___22TBossHanachanPartsHeadF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
setAnm___22TBossHanachanPartsHeadF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff: # 0x800f33c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r30, r4, 0x0
    mr      r29, r3
    addi    r26, r5, 0x0
    li      r31, 0x0
    lwz     r0, 0xf4(r3)
    lis     r3, 0x8038
    addi    r28, r3, 0x1e08
    cmpw    r0, r30
    beq-    branch_0x800f34c4
    stw     r0, 0xf8(r29)
    li      r4, 0x0
    stw     r30, 0xf4(r29)
    lwz     r3, 0x74(r29)
    bl      getCurAnmIdx__6MActorCFi
    slwi    r27, r30, 2
    add     r4, r28, r27
    lwz     r4, 0x190(r4)
    cmpw    r4, r3
    beq-    branch_0x800f3454
    lwz     r3, 0x74(r29)
    bl      setBckFromIndex__6MActorFi
    cmpwi   r26, 0x1
    li      r31, 0x1
    bne-    branch_0x800f3440
    lwz     r3, 0x110(r29)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(r3)
    b       branch_0x800f344c

branch_0x800f3440:
    lwz     r3, 0x110(r29)
    li      r0, 0x0
    stw     r0, 0x24(r3)
branch_0x800f344c:
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
branch_0x800f3454:
    lwz     r3, 0x74(r29)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    add     r4, r28, r27
    lwz     r4, 0x1d8(r4)
    cmpw    r4, r3
    beq-    branch_0x800f3478
    lwz     r3, 0x74(r29)
    bl      setBtpFromIndex__6MActorFi
branch_0x800f3478:
    lwz     r3, 0x74(r29)
    li      r4, 0x4
    bl      getCurAnmIdx__6MActorCFi
    add     r4, r28, r27
    lwz     r4, 0x220(r4)
    cmpw    r4, r3
    beq-    branch_0x800f349c
    lwz     r3, 0x74(r29)
    bl      setBtkFromIndex__6MActorFi
branch_0x800f349c:
    cmpwi   r30, 0xf
    bne-    branch_0x800f34c4
    lwz     r3, 0x74(r29)
    li      r4, 0x1
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, 0x74(r29)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    li      r0, 0x0
    stb     r0, 0x4(r3)
branch_0x800f34c4:
    mr      r3, r31
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setAnm___22TBossHanachanPartsBodyF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
setAnm___22TBossHanachanPartsBodyF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff: # 0x800f34dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    stw     r28, 0x30(sp)
    addi    r28, r5, 0x0
    lwz     r0, 0xf4(r3)
    cmpw    r0, r30
    beq-    branch_0x800f35ec
    stw     r0, 0xf8(r29)
    li      r4, 0x0
    stw     r30, 0xf4(r29)
    lwz     r3, 0x74(r29)
    bl      getCurAnmIdx__6MActorCFi
    lis     r4, 0x8038
    slwi    r5, r30, 2
    addi    r0, r4, 0x1f50
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    cmpw    r0, r3
    beq-    branch_0x800f35b8
    lwz     r3, 0xfc(r29)
    mr      r4, r0
    lwz     r5, 0x114(r29)
    lwz     r0, 0x174(r3)
    cmpw    r5, r0
    bne-    branch_0x800f3580
    cmpwi   r30, 0x3
    beq-    branch_0x800f357c
    bge-    branch_0x800f3580
    cmpwi   r30, 0x2
    bge-    branch_0x800f3574
    b       branch_0x800f3580

branch_0x800f3574:
    li      r4, 0xb
    b       branch_0x800f3580

branch_0x800f357c:
    li      r4, 0xe
branch_0x800f3580:
    lwz     r3, 0x74(r29)
    bl      setBckFromIndex__6MActorFi
    cmpwi   r28, 0x1
    li      r31, 0x1
    bne-    branch_0x800f35a4
    lwz     r3, 0x110(r29)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(r3)
    b       branch_0x800f35b0

branch_0x800f35a4:
    lwz     r3, 0x110(r29)
    li      r0, 0x0
    stw     r0, 0x24(r3)
branch_0x800f35b0:
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
branch_0x800f35b8:
    cmpwi   r30, 0xf
    bne-    branch_0x800f35ec
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, 0x74(r29)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    li      r0, 0x0
    stb     r0, 0x4(r3)
    lwz     r3, 0x74(r29)
    lwz     r3, 0x4(r3)
    bl      unlock__8J3DModelFv
branch_0x800f35ec:
    lwz     r0, 0x44(sp)
    mr      r3, r31
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl considerSetAnm___22TBossHanachanPartsBaseF24EnumBossHanachanNerveAnm
considerSetAnm___22TBossHanachanPartsBaseF24EnumBossHanachanNerveAnm: # 0x800f3610
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    stw     r30, 0x108(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x104(sp)
    bne-    branch_0x800f373c
    lwz     r0, 0xf4(r30)
    cmpwi   r0, 0xd
    beq-    branch_0x800f366c
    bge-    branch_0x800f3658
    cmpwi   r0, 0x7
    bge-    branch_0x800f3d28
    cmpwi   r0, 0x5
    bge-    branch_0x800f366c
    b       branch_0x800f3d28

branch_0x800f3658:
    cmpwi   r0, 0x12
    bge-    branch_0x800f3d28
    cmpwi   r0, 0x10
    bge-    branch_0x800f366c
    b       branch_0x800f3d28

branch_0x800f366c:
    lwz     r3, 0x74(r30)
    li      r31, 0x1
    cmplwi  r3, 0x0
    beq-    branch_0x800f3714
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800f3714
    lbz     r5, 0x5(r3)
    addi    r4, r31, 0x0
    clrlwi. r0, r5, 31
    beq-    branch_0x800f36a4
    mr      r0, r31
    b       branch_0x800f36a8

branch_0x800f36a4:
    li      r0, 0x0
branch_0x800f36a8:
    cmpwi   r0, 0x0
    bne-    branch_0x800f36d0
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x800f36c0
    li      r0, 0x1
    b       branch_0x800f36c4

branch_0x800f36c0:
    li      r0, 0x0
branch_0x800f36c4:
    cmpwi   r0, 0x0
    bne-    branch_0x800f36d0
    li      r4, 0x0
branch_0x800f36d0:
    clrlwi. r0, r4, 24
    bne-    branch_0x800f3714
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x58fc(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0xfc(sp)
    lfd     f1, -0x58f8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0xf8(sp)
    lfd     f0, 0xf8(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq-    branch_0x800f3714
    li      r31, 0x0
branch_0x800f3714:
    clrlwi. r0, r31, 24
    beq-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x3
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f373c:
    cmpwi   r4, 0x1
    bne-    branch_0x800f3974
    li      r31, 0x0
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f3774
    lwz     r3, -0x608c(r13)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800f3774
    lwz     r0, 0x44(r3)
    cmplw   r0, r30
    bne-    branch_0x800f3774
    li      r31, 0x1
branch_0x800f3774:
    lwz     r5, 0xf4(r30)
    cmpwi   r5, 0xd
    beq-    branch_0x800f37ac
    bge-    branch_0x800f3798
    cmpwi   r5, 0x7
    bge-    branch_0x800f38b4
    cmpwi   r5, 0x5
    bge-    branch_0x800f37ac
    b       branch_0x800f38b4

branch_0x800f3798:
    cmpwi   r5, 0x12
    bge-    branch_0x800f38b4
    cmpwi   r5, 0x10
    bge-    branch_0x800f37ac
    b       branch_0x800f38b4

branch_0x800f37ac:
    lwz     r3, 0x74(r30)
    li      r29, 0x1
    cmplwi  r3, 0x0
    beq-    branch_0x800f3854
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800f3854
    lbz     r5, 0x5(r3)
    addi    r4, r29, 0x0
    clrlwi. r0, r5, 31
    beq-    branch_0x800f37e4
    mr      r0, r29
    b       branch_0x800f37e8

branch_0x800f37e4:
    li      r0, 0x0
branch_0x800f37e8:
    cmpwi   r0, 0x0
    bne-    branch_0x800f3810
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x800f3800
    li      r0, 0x1
    b       branch_0x800f3804

branch_0x800f3800:
    li      r0, 0x0
branch_0x800f3804:
    cmpwi   r0, 0x0
    bne-    branch_0x800f3810
    li      r4, 0x0
branch_0x800f3810:
    clrlwi. r0, r4, 24
    bne-    branch_0x800f3854
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x58fc(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0xfc(sp)
    lfd     f1, -0x58f8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0xf8(sp)
    lfd     f0, 0xf8(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq-    branch_0x800f3854
    li      r29, 0x0
branch_0x800f3854:
    clrlwi. r0, r29, 24
    beq-    branch_0x800f3d28
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x15
    bne-    branch_0x800f3894
    clrlwi. r0, r31, 24
    beq-    branch_0x800f3894
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    li      r5, 0x1
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3894:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x3
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f38b4:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x15
    bne-    branch_0x800f3d28
    lwz     r4, 0x110(r30)
    li      r3, 0x1
    lwz     r0, 0x24(r4)
    cmpwi   r0, 0x0
    ble-    branch_0x800f38e0
    mr      r0, r3
    b       branch_0x800f38e4

branch_0x800f38e0:
    li      r0, 0x0
branch_0x800f38e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x800f3914
    lfs     f1, 0x28(r4)
    lfs     f0, -0x5900(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800f3904
    li      r0, 0x1
    b       branch_0x800f3908

branch_0x800f3904:
    li      r0, 0x0
branch_0x800f3908:
    clrlwi. r0, r0, 24
    bne-    branch_0x800f3914
    li      r3, 0x0
branch_0x800f3914:
    clrlwi. r0, r3, 24
    bne-    branch_0x800f3d28
    cmpwi   r5, 0x2
    bne-    branch_0x800f394c
    clrlwi. r0, r31, 24
    bne-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x3
    li      r5, 0x1
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f394c:
    clrlwi. r0, r31, 24
    beq-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    li      r5, 0x1
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3974:
    cmpwi   r4, 0x2
    bne-    branch_0x800f3b6c
    lwz     r3, 0x10c(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x800f3990
    subi    r0, r3, 0x1
    stw     r0, 0x10c(r30)
branch_0x800f3990:
    lwz     r0, 0x10c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800f3d28
    lwz     r3, 0x74(r30)
    li      r29, 0x1
    cmplwi  r3, 0x0
    beq-    branch_0x800f3a44
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800f3a44
    lbz     r5, 0x5(r3)
    addi    r4, r29, 0x0
    clrlwi. r0, r5, 31
    beq-    branch_0x800f39d4
    mr      r0, r29
    b       branch_0x800f39d8

branch_0x800f39d4:
    li      r0, 0x0
branch_0x800f39d8:
    cmpwi   r0, 0x0
    bne-    branch_0x800f3a00
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x800f39f0
    li      r0, 0x1
    b       branch_0x800f39f4

branch_0x800f39f0:
    li      r0, 0x0
branch_0x800f39f4:
    cmpwi   r0, 0x0
    bne-    branch_0x800f3a00
    li      r4, 0x0
branch_0x800f3a00:
    clrlwi. r0, r4, 24
    bne-    branch_0x800f3a44
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x58fc(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0xfc(sp)
    lfd     f1, -0x58f8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0xf8(sp)
    lfd     f0, 0xf8(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq-    branch_0x800f3a44
    li      r29, 0x0
branch_0x800f3a44:
    lwz     r0, 0xf4(r30)
    cmpwi   r0, 0xa
    beq-    branch_0x800f3acc
    bge-    branch_0x800f3a6c
    cmpwi   r0, 0x8
    beq-    branch_0x800f3aa4
    bge-    branch_0x800f3d28
    cmpwi   r0, 0x7
    bge-    branch_0x800f3a7c
    b       branch_0x800f3b1c

branch_0x800f3a6c:
    cmpwi   r0, 0xc
    beq-    branch_0x800f3d28
    bge-    branch_0x800f3b1c
    b       branch_0x800f3af4

branch_0x800f3a7c:
    clrlwi. r0, r29, 24
    beq-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x8
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3aa4:
    clrlwi. r0, r29, 24
    beq-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x9
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3acc:
    clrlwi. r0, r29, 24
    beq-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xb
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3af4:
    clrlwi. r0, r29, 24
    beq-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xc
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3b1c:
    lfs     f1, 0x38(r30)
    lfs     f0, -0x5900(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800f3b4c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x7
    li      r5, 0x1
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3b4c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xa
    li      r5, 0x1
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3b6c:
    cmpwi   r4, 0x3
    bne-    branch_0x800f3c90
    lwz     r3, 0x10c(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x800f3bb4
    subi    r0, r3, 0x1
    stw     r0, 0x10c(r30)
    lwz     r0, 0x10c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x6
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3bb4:
    lwz     r0, 0xf4(r30)
    cmpwi   r0, 0x6
    bne-    branch_0x800f3d28
    lwz     r3, 0x74(r30)
    li      r29, 0x1
    cmplwi  r3, 0x0
    beq-    branch_0x800f3c68
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800f3c68
    lbz     r5, 0x5(r3)
    addi    r4, r29, 0x0
    clrlwi. r0, r5, 31
    beq-    branch_0x800f3bf8
    mr      r0, r29
    b       branch_0x800f3bfc

branch_0x800f3bf8:
    li      r0, 0x0
branch_0x800f3bfc:
    cmpwi   r0, 0x0
    bne-    branch_0x800f3c24
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x800f3c14
    li      r0, 0x1
    b       branch_0x800f3c18

branch_0x800f3c14:
    li      r0, 0x0
branch_0x800f3c18:
    cmpwi   r0, 0x0
    bne-    branch_0x800f3c24
    li      r4, 0x0
branch_0x800f3c24:
    clrlwi. r0, r4, 24
    bne-    branch_0x800f3c68
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x58fc(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0xfc(sp)
    lfd     f1, -0x58f8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0xf8(sp)
    lfd     f0, 0xf8(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq-    branch_0x800f3c68
    li      r29, 0x0
branch_0x800f3c68:
    clrlwi. r0, r29, 24
    beq-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x4
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3c90:
    cmpwi   r4, 0x4
    bne-    branch_0x800f3ce4
    lwz     r3, 0x10c(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x800f3cac
    subi    r0, r3, 0x1
    stw     r0, 0x10c(r30)
branch_0x800f3cac:
    lwz     r0, 0x10c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800f3d28
    lwz     r0, 0xf4(r30)
    cmpwi   r0, 0xe
    beq-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xe
    li      r5, 0x1
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f3d28

branch_0x800f3ce4:
    cmpwi   r4, 0x5
    bne-    branch_0x800f3d28
    lwz     r3, 0x10c(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x800f3d00
    subi    r0, r3, 0x1
    stw     r0, 0x10c(r30)
branch_0x800f3d00:
    lwz     r0, 0x10c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800f3d28
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xf
    li      r5, 0x0
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800f3d28:
    lwz     r0, 0x114(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    mtlr    r0
    lwz     r29, 0x104(sp)
    addi    sp, sp, 0x110
    blr


.globl calcRotateZWhenGetUp___22TBossHanachanPartsBaseFv
calcRotateZWhenGetUp___22TBossHanachanPartsBaseFv: # 0x800f3d44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x10c(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800f3de4
    lwz     r0, 0xf4(r31)
    cmpwi   r0, 0xb
    beq-    branch_0x800f3d80
    bge-    branch_0x800f3de4
    cmpwi   r0, 0x8
    beq-    branch_0x800f3d80
    b       branch_0x800f3de4

branch_0x800f3d80:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f3, -0x58f8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f1, 0x10(r3)
    stw     r4, 0x1c(sp)
    lfs     f4, -0x58f0(rtoc)
    stw     r0, 0x18(sp)
    lfs     f0, -0x58ec(rtoc)
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fsubs   f1, f2, f1
    fmuls   f1, f4, f1
    fcmpo   cr0, f1, f0
    fmr     f2, f1
    bge-    branch_0x800f3dd8
    lfs     f0, -0x5900(rtoc)
    stfs    f0, 0x38(r31)
    b       branch_0x800f3de4

branch_0x800f3dd8:
    lfs     f1, -0x5900(rtoc)
    addi    r3, r31, 0x38
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
branch_0x800f3de4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getSandActor___22TBossHanachanPartsBaseCFv
getSandActor___22TBossHanachanPartsBaseCFv: # 0x800f3df8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lis     r31, 0x4000
    addi    r4, r31, 0xcd
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r3, 0xc4(r3)
    bl      SMS_GetGroundActor__FPC12TBGCheckDataUl
    cmplwi  r3, 0x0
    bne-    branch_0x800f3e34
    lwz     r3, 0xc4(r30)
    addi    r4, r31, 0xcb
    bl      SMS_GetGroundActor__FPC12TBGCheckDataUl
branch_0x800f3e34:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv
copyFrameFromOldAnmToNewAnm___22TBossHanachanPartsBaseFv: # 0x800f3e4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r3
    lwz     r3, 0x74(r3)
    lwz     r4, 0xc(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x800f3e80
    li      r30, 0x0
    b       branch_0x800f3e84

branch_0x800f3e80:
    lwz     r30, 0x24(r4)
branch_0x800f3e84:
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r30, 0x0
    addi    r31, r3, 0x0
    beq-    branch_0x800f3ec4
    cmplwi  r31, 0x0
    beq-    branch_0x800f3ec4
    lwz     r3, 0x74(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x800f3eb8
    lfs     f1, -0x5900(rtoc)
    b       branch_0x800f3ebc

branch_0x800f3eb8:
    bl      getOldMotionBlendFrame__12MActorAnmBckCFv
branch_0x800f3ebc:
    stfs    f1, 0x4(r30)
    stfs    f1, 0x10(r31)
branch_0x800f3ec4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl isCurBckAlreadyEnd___22TBossHanachanPartsBaseCFv
isCurBckAlreadyEnd___22TBossHanachanPartsBaseCFv: # 0x800f3ee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x1
    lwz     r3, 0x74(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800f3fa0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800f3fa0
    lbz     r6, 0x5(r3)
    li      r5, 0x1
    addi    r4, r5, 0x0
    clrlwi. r0, r6, 31
    beq-    branch_0x800f3f2c
    mr      r0, r5
    b       branch_0x800f3f30

branch_0x800f3f2c:
    li      r0, 0x0
branch_0x800f3f30:
    cmpwi   r0, 0x0
    bne-    branch_0x800f3f58
    rlwinm. r0, r6, 0, 30, 30
    beq-    branch_0x800f3f48
    li      r0, 0x1
    b       branch_0x800f3f4c

branch_0x800f3f48:
    li      r0, 0x0
branch_0x800f3f4c:
    cmpwi   r0, 0x0
    bne-    branch_0x800f3f58
    li      r4, 0x0
branch_0x800f3f58:
    clrlwi. r0, r4, 24
    bne-    branch_0x800f3f9c
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x58fc(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0x24(sp)
    lfd     f1, -0x58f8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq-    branch_0x800f3f9c
    li      r5, 0x0
branch_0x800f3f9c:
    mr      r31, r5
branch_0x800f3fa0:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setDamageFog___22TBossHanachanPartsBaseFPQ26JDrama9TGraphics
setDamageFog___22TBossHanachanPartsBaseFPQ26JDrama9TGraphics: # 0x800f3fb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    mr      r31, r3
    addi    r26, r4, 0x0
    li      r27, 0x1
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x14
    bne-    branch_0x800f3fe8
    li      r27, 0x0
branch_0x800f3fe8:
    lwz     r3, 0x74(r31)
    lwz     r4, 0x108(r31)
    lwz     r3, 0x4(r3)
    lfs     f2, 0x2c(r4)
    lwz     r29, 0x4(r3)
    lfs     f1, 0x1c(r4)
    lhz     r28, 0x24(r29)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f2, 0x44(sp)
    lwz     r3, 0xfc(r31)
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    mr      r30, r3
    bl      theNerve__24TNerveBossHanachanDamageFv
    cmplw   r30, r3
    bne-    branch_0x800f408c
    addi    r3, r29, 0x0
    addi    r5, r26, 0x0
    addi    r4, sp, 0x3c
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    clrlwi. r0, r27, 24
    beq-    branch_0x800f4070
    li      r27, 0x0
    b       branch_0x800f4064

branch_0x800f4050:
    lwz     r3, 0x28(r29)
    clrlslwi  r0, r27, 16, 2
    lwzx    r3, r3, r0
    bl      change__11J3DMaterialFv
    addi    r27, r27, 0x1
branch_0x800f4064:
    clrlwi  r0, r27, 16
    cmplw   r0, r28
    blt+    branch_0x800f4050
branch_0x800f4070:
    lwz     r0, 0x10c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800f4094
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    bl      unlock__8J3DModelFv
    b       branch_0x800f4094

branch_0x800f408c:
    mr      r3, r29
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
branch_0x800f4094:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl entryCircleShadow___22TBossHanachanPartsBaseFv
entryCircleShadow___22TBossHanachanPartsBaseFv: # 0x800f40a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    lwz     r3, 0xfc(r3)
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    bl      theNerve__22TNerveBossHanachanDeadFv
    cmplw   r31, r3
    bne-    branch_0x800f40ec
    lwz     r3, 0xfc(r30)
    lwz     r3, 0x8c(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0xc8
    bgt-    branch_0x800f4158
branch_0x800f40ec:
    lfs     f0, -0x5900(rtoc)
    li      r3, 0x0
    li      r0, 0x1
    stfs    f0, 0x48(sp)
    addi    r4, sp, 0x3c
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
    stb     r3, 0x58(sp)
    stb     r0, 0x59(sp)
    stw     r3, 0x5c(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    lwz     r3, 0x108(r30)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f2, 0x44(sp)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x48(sp)
    lwz     r5, 0x4c(r30)
    lwz     r3, -0x6100(r13)
    bl      forceRequest__19TMBindShadowManagerFRC20TCircleShadowRequestUl
branch_0x800f4158:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl moveMapCollision___22TBossHanachanPartsBaseFv
moveMapCollision___22TBossHanachanPartsBaseFv: # 0x800f4170
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x108(r3)
    addi    r4, sp, 0x10
    lfs     f2, 0x2c(r5)
    lfs     f1, 0x1c(r5)
    lfs     f0, 0xc(r5)
    stfs    f0, 0x10(sp)
    stfs    f1, 0x14(sp)
    stfs    f2, 0x18(sp)
    lwz     r3, 0x104(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl changeTumbleAnmRate___22TBossHanachanPartsBaseFv
changeTumbleAnmRate___22TBossHanachanPartsBaseFv: # 0x800f41c0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0xf4(r31)
    addi    r31, r3, 0x0
    cmpwi   r0, 0x12
    bge-    branch_0x800f425c
    cmpwi   r0, 0x10
    bge-    branch_0x800f4200
    b       branch_0x800f425c

branch_0x800f4200:
    lfs     f3, 0x10(r31)
    lfs     f0, -0x58e8(rtoc)
    fcmpo   cr0, f3, f0
    cror    2, 0, 2
    beq-    branch_0x800f4264
    lha     r3, 0x8(r31)
    lis     r0, 0x4330
    lfs     f0, 0xc(r31)
    xoris   r3, r3, 0x8000
    lfd     f2, -0x58f8(rtoc)
    stw     r3, 0x2c(sp)
    stw     r0, 0x28(sp)
    lfd     f1, 0x28(sp)
    stfs    f0, 0x20(sp)
    fsubs   f0, f1, f2
    fsubs   f31, f0, f3
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, sp, 0x20
    fmr     f2, f31
    bl      CLBChaseConstantSpecifyFrame_f___FPfff
    lfs     f0, 0x20(sp)
    stfs    f0, 0xc(r31)
    b       branch_0x800f4264

branch_0x800f425c:
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r31)
branch_0x800f4264:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl initFootHitActor___22TBossHanachanPartsBodyFP12TIdxGroupObj
initFootHitActor___22TBossHanachanPartsBodyFP12TIdxGroupObj: # 0x800f427c
    mflr    r0
    lis     r5, 0x803c
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stmw    r14, 0xa8(sp)
    subi    r29, r5, 0x5378
    mr      r18, r3
    addi    r27, r29, 0x24
    addi    r28, r4, 0x10
    addi    r17, sp, 0x60
    li      r20, 0x0
    li      r31, 0x0
    lwz     r6, 0x74(r3)
    lwz     r7, 0xfc(r3)
    lis     r3, 0x803c
    lwz     r6, 0x4(r6)
    subi    r30, r3, 0x4f70
    lwz     r7, 0x1bc(r7)
    lwz     r5, 0x4(r6)
    lis     r3, 0x8038
    addi    r26, r30, 0x24
    lwz     r19, 0xb0(r5)
    addi    r25, r7, 0x158
    addi    r24, r7, 0x144
    addi    r23, r7, 0x130
    addi    r22, r7, 0x11c
    addi    r14, r3, 0x2070
branch_0x800f42e8:
    subi    r3, r13, 0x7d5c
    lwzx    r4, r3, r31
    mr      r3, r19
    bl      getIndex__10JUTNameTabCFPCc
    addi    r21, sp, 0x9c
    add     r21, r21, r31
    stw     r3, 0x0(r21)
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r15, r3
    beq-    branch_0x800f4338
    addi    r3, r15, 0x0
    addi    r4, r14, 0x0
    bl      __ct__9THitActorFPCc
    stw     r29, 0x0(r15)
    li      r0, 0x0
    stw     r27, 0x20(r15)
    sth     r0, 0x68(r15)
    stw     r30, 0x0(r15)
    stw     r26, 0x20(r15)
branch_0x800f4338:
    add     r3, r18, r31
    stw     r15, 0x118(r3)
    addi    r16, r3, 0x118
    li      r5, 0x1
    lwz     r4, 0x4c(r18)
    lis     r6, 0x8000
    lwz     r3, 0x118(r3)
    lfs     f1, 0x0(r22)
    lfs     f2, 0x0(r23)
    lfs     f3, 0x0(r24)
    lfs     f4, 0x0(r25)
    bl      initHitActor__9THitActorFUlUsiffff
    addi    r3, sp, 0x54
    addi    r4, r28, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x54(sp)
    addi    r3, sp, 0x84
    addi    r4, sp, 0x50
    stw     r0, 0x50(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x84(sp)
    addi    r4, r28, 0x0
    addi    r5, r17, 0x0
    stw     r0, 0x80(sp)
    addi    r6, r16, 0x0
    addi    r3, sp, 0x5c
    lwz     r0, 0x80(sp)
    stw     r0, 0x60(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x0(r16)
    addi    r20, r20, 0x1
    cmpwi   r20, 0x2
    lwz     r0, 0x64(r3)
    addi    r31, r31, 0x4
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x74(r18)
    lwz     r0, 0x0(r21)
    lwz     r4, 0x4(r3)
    clrlwi  r0, r0, 16
    lwz     r3, 0x0(r16)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    stw     r4, 0x6c(r3)
    lwz     r3, 0x0(r16)
    lfs     f2, 0x2c(r4)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    blt+    branch_0x800f42e8
    lmw     r14, 0xa8(sp)
    lwz     r0, 0xf4(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl initMapCollisionAndHitActor___22TBossHanachanPartsBaseFP12TIdxGroupObj
initMapCollisionAndHitActor___22TBossHanachanPartsBaseFP12TIdxGroupObj: # 0x800f4420
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r4
    stw     r29, 0xbc(sp)
    mr      r29, r3
    stw     r28, 0xb8(sp)
    lwz     r6, 0xfc(r3)
    lis     r3, 0x800
    lwz     r5, 0x4c(r29)
    addi    r0, r3, 0x15
    lwz     r6, 0x1bc(r6)
    cmpw    r5, r0
    lwz     r31, -0x7d74(r13)
    lfs     f31, 0xb8(r6)
    lfs     f30, 0xcc(r6)
    lfs     f29, 0xe0(r6)
    lfs     f28, 0xf4(r6)
    lfs     f27, 0xa4(r6)
    beq-    branch_0x800f44b8
    bge-    branch_0x800f44b8
    addi    r0, r3, 0x14
    cmpw    r5, r0
    bge-    branch_0x800f44a0
    b       branch_0x800f44b8

branch_0x800f44a0:
    lwz     r31, -0x7d70(r13)
    lfs     f31, 0x54(r6)
    lfs     f30, 0x68(r6)
    lfs     f29, 0x7c(r6)
    lfs     f28, 0x90(r6)
    lfs     f27, 0x40(r6)
branch_0x800f44b8:
    lwz     r3, 0x74(r29)
    lwz     r4, -0x7d78(r13)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x74(r29)
    clrlwi  r0, r3, 16
    mulli   r0, r0, 0x30
    lwz     r3, 0x4(r4)
    lwz     r4, 0x58(r3)
    li      r3, 0x60
    add     r0, r4, r0
    stw     r0, 0x108(r29)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800f4504
    mr      r3, r28
    bl      __ct__17TMapCollisionMoveFv
branch_0x800f4504:
    stw     r28, 0x104(r29)
    lis     r5, 0x1
    addi    r4, r31, 0x0
    lwz     r3, 0x104(r29)
    addi    r6, r29, 0x0
    subi    r5, r5, 0x8000
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800f4568
    lis     r4, 0x8038
    addi    r3, r28, 0x0
    addi    r4, r4, 0x2084
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x5378
    stw     r3, 0x0(r28)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r28)
    sth     r0, 0x68(r28)
branch_0x800f4568:
    stw     r28, 0x100(r29)
    fmr     f1, f31
    fmr     f2, f30
    li      r5, 0x1
    fmr     f3, f29
    fmr     f4, f28
    lwz     r4, 0x4c(r29)
    lwz     r3, 0x100(r29)
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    addi    r30, r30, 0x10
    addi    r3, sp, 0x7c
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x7c(sp)
    addi    r3, sp, 0x9c
    addi    r4, sp, 0x78
    stw     r0, 0x78(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x9c(sp)
    addi    r5, sp, 0x88
    addi    r4, r30, 0x0
    stw     r0, 0x98(sp)
    addi    r3, sp, 0x84
    addi    r6, r29, 0x100
    lwz     r0, 0x98(sp)
    stw     r0, 0x88(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x100(r29)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r4, 0x108(r29)
    lwz     r3, 0x100(r29)
    lfs     f1, 0x1c(r4)
    lfs     f2, 0x2c(r4)
    lfs     f0, 0xc(r4)
    fsubs   f1, f1, f27
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    lwz     r29, 0xbc(sp)
    lwz     r28, 0xb8(sp)
    addi    sp, sp, 0xf0
    blr


.globl __ct__22TBossHanachanPartsHeadFP13TBossHanachanPCc
__ct__22TBossHanachanPartsHeadFP13TBossHanachanPCc: # 0x800f4640
    mflr    r0
    lis     r6, 0x800
    stw     r0, 0x4(sp)
    addi    r7, r5, 0x0
    addi    r5, r6, 0x14
    stwu    sp, -0x50(sp)
    li      r6, 0x1
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__22TBossHanachanPartsBaseFP13TBossHanachanUliPCc
    lwz     r30, 0x8(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x50b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    bl      getModel__10TLiveActorCFv
    mr      r31, r3
    lwz     r3, 0x4(r3)
    lwz     r4, -0x7d64(r13)
    lwz     r29, 0xb0(r3)
    mr      r3, r29
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    lwz     r3, 0x58(r31)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x114(r30)
    mr      r3, r29
    lwz     r4, -0x7d60(r13)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    lwz     r3, 0x58(r31)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x118(r30)
    mr      r3, r30
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __dt__22TBossHanachanPartsBaseFv
__dt__22TBossHanachanPartsBaseFv: # 0x800f4700
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800f4750
    lis     r3, 0x803c
    subi    r3, r3, 0x35b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
    extsh.  r0, r31
    ble-    branch_0x800f4750
    mr      r3, r30
    bl      __dl__FPv
branch_0x800f4750:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__22TBossHanachanPartsBodyFP13TBossHanachanPCc
__ct__22TBossHanachanPartsBodyFP13TBossHanachanPCc: # 0x800f476c
    mflr    r0
    lis     r6, 0x800
    stw     r0, 0x4(sp)
    addi    r7, r5, 0x0
    addi    r5, r6, 0x15
    stwu    sp, -0x50(sp)
    li      r6, 0x0
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__22TBossHanachanPartsBaseFP13TBossHanachanUliPCc
    lis     r3, 0x803c
    lwz     r30, 0x8(sp)
    subi    r3, r3, 0x4ecc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r0, 0x0
    stw     r0, 0x114(r30)
    lfs     f0, -0x5900(rtoc)
    stfs    f0, 0x120(r30)
    stfs    f0, 0x124(r30)
    stfs    f0, 0x128(r30)
    stfs    f0, 0x12c(r30)
    stfs    f0, 0x130(r30)
    stfs    f0, 0x134(r30)
    stfs    f0, 0x138(r30)
    stfs    f0, 0x13c(r30)
    stfs    f0, 0x140(r30)
    stfs    f0, 0x144(r30)
    stfs    f0, 0x148(r30)
    stfs    f0, 0x154(r30)
    stfs    f0, 0x158(r30)
    stfs    f0, 0x15c(r30)
    bl      getModel__10TLiveActorCFv
    mr      r31, r3
    lwz     r3, 0x4(r3)
    lwz     r4, -0x7d6c(r13)
    lwz     r29, 0xb0(r3)
    mr      r3, r29
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    lwz     r3, 0x58(r31)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x14c(r30)
    mr      r3, r29
    lwz     r4, -0x7d68(r13)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    lwz     r3, 0x58(r31)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x150(r30)
    mr      r3, r30
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__22TBossHanachanPartsBaseFP13TBossHanachanUliPCc
__ct__22TBossHanachanPartsBaseFP13TBossHanachanUliPCc: # 0x800f4870
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x40(sp)
    mr      r28, r4
    addi    r4, r7, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__10TLiveActorFPCc
    lis     r3, 0x803c
    lwz     r30, 0x8(sp)
    subi    r3, r3, 0x35b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    li      r3, 0x12
    stw     r0, 0x20(r30)
    li      r0, 0x0
    addi    r4, r29, 0x0
    stw     r3, 0xf4(r30)
    li      r5, 0x0
    stw     r3, 0xf8(r30)
    stw     r28, 0xfc(r30)
    stw     r0, 0x100(r30)
    stw     r0, 0x104(r30)
    stw     r0, 0x108(r30)
    stw     r0, 0x10c(r30)
    stw     r0, 0x110(r30)
    lwz     r3, 0xfc(r30)
    lwz     r0, 0x78(r3)
    stw     r0, 0x78(r30)
    lwz     r3, 0x78(r30)
    bl      createMActorFromNthData__13TMActorKeeperFiUl
    stw     r3, 0x74(r30)
    lwz     r3, 0x74(r30)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800f491c
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x800f491c:
    lfs     f1, -0x5900(rtoc)
    mr      r4, r31
    lwz     r3, 0x8(sp)
    li      r5, 0x0
    fmr     f2, f1
    fmr     f3, f1
    li      r6, 0x0
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r5, 0x8(sp)
    lis     r3, 0x800
    addi    r0, r3, 0x15
    lwz     r4, 0x64(r5)
    cmpw    r31, r0
    ori     r0, r4, 0x1
    stw     r0, 0x64(r5)
    beq-    branch_0x800f4974
    bge-    branch_0x800f4998
    addi    r0, r3, 0x14
    cmpw    r31, r0
    bge-    branch_0x800f4988
    b       branch_0x800f4998

branch_0x800f4974:
    lwz     r3, 0xfc(r5)
    lwz     r3, 0x1bc(r3)
    lfs     f0, 0x1a8(r3)
    stfs    f0, 0xb8(r5)
    b       branch_0x800f4998

branch_0x800f4988:
    lwz     r3, 0xfc(r5)
    lwz     r3, 0x1bc(r3)
    lfs     f0, 0x194(r3)
    stfs    f0, 0xb8(r5)
branch_0x800f4998:
    lwz     r31, 0x8(sp)
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    bl      initAnmSound__10TLiveActorFv
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setLightType__6MActorFi
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800f4a1c
    lwz     r3, 0xfc(r31)
    lwz     r3, 0x1bc(r3)
    addi    r3, r3, 0x248
    lha     r3, 0x0(r3)
    bl      CLBPalFrame_s___Fs
    li      r0, 0x1
    stw     r0, 0x0(r28)
    extsh   r3, r3
    li      r0, 0x0
    stw     r3, 0x4(r28)
    stw     r0, 0x8(r28)
    lfs     f0, -0x5900(rtoc)
    stfs    f0, 0xc(r28)
    stfs    f0, 0x10(r28)
    stfs    f0, 0x14(r28)
    stfs    f0, 0x18(r28)
    stfs    f0, 0x1c(r28)
    stfs    f0, 0x20(r28)
    stw     r0, 0x24(r28)
    stfs    f0, 0x28(r28)
branch_0x800f4a1c:
    lwz     r3, 0x8(sp)
    stw     r28, 0x110(r3)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl __dt__13TFootHitActorFv
__dt__13TFootHitActorFv: # 0x800f4a44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800f4ac4
    lis     r3, 0x803c
    subi    r3, r3, 0x4f70
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800f4ab4
    lis     r3, 0x803c
    subi    r3, r3, 0x5378
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800f4ab4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800f4ab4:
    extsh.  r0, r31
    ble-    branch_0x800f4ac4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800f4ac4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__22TBossHanachanPartsBodyFv
__dt__22TBossHanachanPartsBodyFv: # 0x800f4ae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800f4b48
    lis     r3, 0x803c
    subi    r3, r3, 0x4ecc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800f4b38
    lis     r3, 0x803c
    subi    r3, r3, 0x35b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x800f4b38:
    extsh.  r0, r31
    ble-    branch_0x800f4b48
    mr      r3, r30
    bl      __dl__FPv
branch_0x800f4b48:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl CLBPalFrame_s___Fs
CLBPalFrame_s___Fs: # 0x800f4b64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x58e4(rtoc)
    extsh   r0, r31
    xoris   r0, r0, 0x8000
    lfd     f2, -0x58f8(rtoc)
    fdivs   f0, f0, f1
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    stw     r0, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      CLBRoundf_s___Ff
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __sinit_BossHanachanParts_cpp
__sinit_BossHanachanParts_cpp: # 0x800f4bc0
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2680
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4c08
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800f4c08:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4c38
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800f4c38:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4c68
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800f4c68:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4c98
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800f4c98:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4cc8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800f4cc8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4cf8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800f4cf8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4d28
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800f4d28:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4d58
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800f4d58:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4d88
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800f4d88:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4db8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800f4db8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4de8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800f4de8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4e18
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800f4e18:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4e48
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800f4e48:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4e78
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800f4e78:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800f4ea8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800f4ea8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__22TBossHanachanPartsBodyFv
_32___dt__22TBossHanachanPartsBodyFv: # 0x800f4ebc
    subi    r3, r3, 0x20
    b       __dt__22TBossHanachanPartsBodyFv


.globl _32___dt__13TFootHitActorFv
_32___dt__13TFootHitActorFv: # 0x800f4ec4
    subi    r3, r3, 0x20
    b       __dt__13TFootHitActorFv


.globl _32___dt__22TBossHanachanPartsHeadFv
_32___dt__22TBossHanachanPartsHeadFv: # 0x800f4ecc
    subi    r3, r3, 0x20
    b       __dt__22TBossHanachanPartsHeadFv

