
.globl moveMain__6TMarioFv
moveMain__6TMarioFv: # 0x80258308
    mflr    r0
    lis     r4, unk_803dd1e0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r4, unk_803dd1e0@l
    stw     r30, 0x58(sp)
    li      r30, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x50(sp)
    bl      checkEnforceJump__6TMarioFv
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc4(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x7c(r29)
    rlwinm. r0, r4, 0, 13, 13
    beq-    branch_0x80258360
    li      r0, 0x1
    b       branch_0x80258364

branch_0x80258360:
    li      r0, 0x0
branch_0x80258364:
    clrlwi. r0, r0, 24
    beq-    branch_0x802583e4
    lis     r3, unk_0004045c@h
    addi    r0, r3, unk_0004045c@l
    and.    r0, r4, r0
    beq-    branch_0x80258384
    li      r0, 0x1
    b       branch_0x80258388

branch_0x80258384:
    li      r0, 0x0
branch_0x80258388:
    clrlwi. r0, r0, 24
    bne-    branch_0x802583e4
    lis     r3, unk_0084045d@h
    addi    r0, r3, unk_0084045d@l
    and.    r0, r4, r0
    beq-    branch_0x802583a8
    li      r0, 0x1
    b       branch_0x802583ac

branch_0x802583a8:
    li      r0, 0x0
branch_0x802583ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x802583e4
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x1009
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802583e4
    addi    r4, r29, 0x10
    li      r3, 0x1009
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802583e4:
    lis     r6, unk_00800447@h
    lwz     r0, 0x7c(r29)
    addi    r3, r6, unk_00800447@l
    cmpw    r0, r3
    beq-    branch_0x80258740
    bge-    branch_0x802584e0
    lis     r4, unk_00020461@h
    addi    r3, r4, unk_00020461@l
    cmpw    r0, r3
    beq-    branch_0x802589a8
    bge-    branch_0x8025846c
    cmpwi   r0, 0x44c
    beq-    branch_0x80258768
    bge-    branch_0x80258440
    cmpwi   r0, 0x443
    beq-    branch_0x802585e0
    bge-    branch_0x80258434
    cmpwi   r0, 0x441
    bge-    branch_0x802585d0
    b       branch_0x80258d00

branch_0x80258434:
    cmpwi   r0, 0x445
    bge-    branch_0x80258d00
    b       branch_0x802585f0

branch_0x80258440:
    addi    r3, r4, 0x449
    cmpw    r0, r3
    beq-    branch_0x802587cc
    bge-    branch_0x8025845c
    cmpwi   r0, 0x479
    beq-    branch_0x80258cb8
    b       branch_0x80258d00

branch_0x8025845c:
    addi    r3, r4, 0x460
    cmpw    r0, r3
    bge-    branch_0x8025895c
    b       branch_0x80258d00

branch_0x8025846c:
    addi    r3, r4, 0x467
    cmpw    r0, r3
    beq-    branch_0x80258b70
    bge-    branch_0x802584ac
    addi    r3, r4, 0x464
    cmpw    r0, r3
    beq-    branch_0x80258a8c
    bge-    branch_0x8025849c
    addi    r3, r4, 0x463
    cmpw    r0, r3
    bge-    branch_0x80258a40
    b       branch_0x802589f4

branch_0x8025849c:
    addi    r3, r4, 0x466
    cmpw    r0, r3
    bge-    branch_0x80258b24
    b       branch_0x80258ad8

branch_0x802584ac:
    lis     r3, unk_0004045d@h
    addi    r4, r3, unk_0004045d@l
    cmpw    r0, r4
    beq-    branch_0x80258d00
    bge-    branch_0x802584d0
    addi    r3, r3, 0x45c
    cmpw    r0, r3
    bge-    branch_0x802588c8
    b       branch_0x80258d00

branch_0x802584d0:
    addi    r3, r3, 0x45f
    cmpw    r0, r3
    bge-    branch_0x80258d00
    b       branch_0x802588e8

branch_0x802584e0:
    lis     r5, unk_04000445@h
    addi    r28, r5, unk_04000445@l
    cmpw    r0, r28
    beq-    branch_0x80258600
    bge-    branch_0x8025855c
    lis     r4, unk_00840453@h
    addi    r3, r4, unk_00840453@l
    cmpw    r0, r3
    beq-    branch_0x80258804
    bge-    branch_0x8025853c
    lis     r3, unk_00810446@h
    addi    r3, r3, unk_00810446@l
    cmpw    r0, r3
    beq-    branch_0x80258730
    bge-    branch_0x8025852c
    addi    r3, r6, 0x456
    cmpw    r0, r3
    beq-    branch_0x80258820
    b       branch_0x80258d00

branch_0x8025852c:
    addi    r3, r4, 0x452
    cmpw    r0, r3
    bge-    branch_0x802587dc
    b       branch_0x80258d00

branch_0x8025853c:
    addi    r3, r5, 0x440
    cmpw    r0, r3
    beq-    branch_0x802585c0
    bge-    branch_0x80258d00
    addi    r3, r4, 0x45d
    cmpw    r0, r3
    beq-    branch_0x802588d8
    b       branch_0x80258d00

branch_0x8025855c:
    addi    r3, r5, 0x473
    cmpw    r0, r3
    beq-    branch_0x80258c28
    bge-    branch_0x8025859c
    addi    r3, r5, 0x470
    cmpw    r0, r3
    beq-    branch_0x80258b80
    bge-    branch_0x8025858c
    addi    r3, r5, 0x44a
    cmpw    r0, r3
    beq-    branch_0x80258758
    b       branch_0x80258d00

branch_0x8025858c:
    addi    r3, r5, 0x472
    cmpw    r0, r3
    bge-    branch_0x80258bf0
    b       branch_0x80258bb8

branch_0x8025859c:
    lis     r3, unk_04808459@ha
    addi    r3, r3, unk_04808459@l
    cmpw    r0, r3
    beq-    branch_0x80258830
    bge-    branch_0x80258d00
    addi    r3, r5, 0x478
    cmpw    r0, r3
    beq-    branch_0x80258c80
    b       branch_0x80258d00

branch_0x802585c0:
    mr      r3, r29
    bl      running__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x802585d0:
    mr      r3, r29
    bl      rotating__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x802585e0:
    mr      r3, r29
    bl      turnning__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x802585f0:
    mr      r3, r29
    bl      turnEnd__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x80258600:
    lwz     r3, 0x74(r29)
    rlwinm. r0, r3, 0, 27, 27
    bne-    branch_0x80258620
    clrlwi. r0, r3, 28
    beq-    branch_0x80258620
    mr      r3, r29
    bl      checkAllMotions__6TMarioFv
    b       branch_0x80258728

branch_0x80258620:
    lfs     f3, -0xea8(r2)
    li      r28, 0x0
    lfs     f1, 0xb0(r29)
    fmr     f4, f3
    lfs     f2, -0xea4(r2)
    bl      FConverge__Fffff
    stfs    f1, 0xb0(r29)
    lfs     f0, -0xea4(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8025864c
    li      r28, 0x1
branch_0x8025864c:
    mr      r3, r29
    bl      slopeProcess__6TMarioFv
    cmpwi   r28, 0x0
    beq-    branch_0x80258678
    lis     r4, unk_0c00023d@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_0c00023d@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80258728

branch_0x80258678:
    mr      r3, r29
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x1
    beq-    branch_0x80258714
    bge-    branch_0x80258698
    cmpwi   r3, 0x0
    bge-    branch_0x802586a4
    b       branch_0x80258714

branch_0x80258698:
    cmpwi   r3, 0x3
    bge-    branch_0x80258714
    b       branch_0x802586bc

branch_0x802586a4:
    addi    r3, r29, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80258714

branch_0x802586bc:
    lfs     f1, 0xb0(r29)
    lfs     f0, -0xea0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802586f0
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      playerRefrection__6TMarioFi
    lis     r4, unk_00020462@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_00020462@l
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x80258714

branch_0x802586f0:
    mr      r3, r29
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, unk_0c00023d@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_0c00023d@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80258714:
    lfs     f1, -0xe9c(r2)
    addi    r3, r29, 0x0
    li      r4, 0xf
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
branch_0x80258728:
    mr      r30, r3
    b       branch_0x80258d00

branch_0x80258730:
    mr      r3, r29
    bl      surfing__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x80258740:
    mr      r3, r29
    bl      soundTorocco__6TMarioFv
    mr      r3, r29
    bl      toroccoEffect__6TMarioFv
    li      r30, 0x0
    b       branch_0x80258d00

branch_0x80258758:
    mr      r3, r29
    bl      walkEnd__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x80258768:
    lha     r28, 0x96(r29)
    mr      r3, r29
    bl      getSlideStopNormal__6TMarioFv
    mr      r3, r29
    bl      doSliding__6TMarioFf
    cmpwi   r3, 0x0
    beq-    branch_0x802587a0
    lis     r4, unk_0c00023e@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_0c00023e@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802587c4

branch_0x802587a0:
    lis     r4, unk_0c00023e@h
    lis     r5, unk_0200088e@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_0c00023e@l
    addi    r5, r5, unk_0200088e@l
    li      r6, 0xf
    bl      slippingBasic__6TMarioFiii
    sth     r28, 0x96(r29)
    li      r3, 0x0
branch_0x802587c4:
    mr      r30, r3
    b       branch_0x80258d00

branch_0x802587cc:
    mr      r3, r29
    bl      fireDashing__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x802587dc:
    lis     r6, unk_02000880@h
    lis     r4, unk_0c00023e@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_0c00023e@l
    addi    r5, r6, unk_02000880@l
    addi    r6, r6, 0x88e
    li      r7, 0x91
    bl      slipForeCommon__6TMarioFiiii
    mr      r30, r3
    b       branch_0x80258d00

branch_0x80258804:
    addi    r3, r29, 0x0
    li      r4, 0x386
    li      r5, 0x88c
    li      r6, 0x89
    bl      slipBackCommon__6TMarioFiii
    mr      r30, r3
    b       branch_0x80258d00

branch_0x80258820:
    mr      r3, r29
    bl      catching__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x80258830:
    mr      r3, r29
    bl      setNormalAttackArea__6TMarioFv
    lwz     r3, 0x74(r29)
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80258860
    lis     r4, unk_00840452@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_00840452@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802588c0

branch_0x80258860:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80258880
    lis     r4, unk_02000880@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_02000880@l
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x802588c0

branch_0x80258880:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x802588a0
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802588c0

branch_0x802588a0:
    lis     r4, unk_0c008220@ha
    lis     r5, unk_02000880@h
    addi    r3, r29, 0x0
    addi    r4, r4, unk_0c008220@l
    addi    r5, r5, unk_02000880@l
    li      r6, 0x88c
    li      r7, 0x97
    bl      slipForeCommon__6TMarioFiiii
branch_0x802588c0:
    mr      r30, r3
    b       branch_0x80258d00

branch_0x802588c8:
    mr      r3, r29
    bl      oilRun__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x802588d8:
    mr      r3, r29
    bl      oilSlip__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x802588e8:
    lha     r3, 0x13c(r29)
    addi    r0, r3, -0x1
    sth     r0, 0x13c(r29)
    lha     r0, 0x13c(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x80258924
    li      r0, 0x0
    sth     r0, 0x13c(r29)
    addi    r3, r29, 0x0
    addi    r4, r6, 0x456
    lfs     f0, -0xea4(r2)
    li      r5, 0x0
    li      r6, 0x0
    stfs    f0, 0x138(r29)
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80258924:
    lfs     f4, 0x269c(r29)
    li      r4, 0x1
    lfs     f3, 0x18(r29)
    lfs     f2, 0x14(r29)
    lfs     f1, 0x10(r29)
    lwz     r3, R13Off_m0x62f0(r13)
    bl      stamp__17TPollutionManagerFUsffff
    addi    r3, r29, 0x0
    li      r4, 0x386
    li      r5, 0x88c
    li      r6, 0x89
    bl      slipBackCommon__6TMarioFiii
    mr      r30, r3
    b       branch_0x80258d00

branch_0x8025895c:
    lhz     r3, 0x86(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x8025898c
    addi    r0, r3, 0x1
    sth     r0, 0x86(r29)
    addi    r3, r29, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lha     r5, 0x27f8(r29)
    addi    r3, r29, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
branch_0x8025898c:
    lfs     f1, -0xe98(r2)
    mr      r3, r29
    lwz     r5, 0x88(r29)
    li      r4, 0x1
    bl      downingCommon__6TMarioFifi
    li      r30, 0x0
    b       branch_0x80258d00

branch_0x802589a8:
    lhz     r3, 0x86(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x802589d8
    addi    r0, r3, 0x1
    sth     r0, 0x86(r29)
    addi    r3, r29, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lha     r5, 0x27f8(r29)
    addi    r3, r29, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
branch_0x802589d8:
    lfs     f1, -0xe94(r2)
    mr      r3, r29
    lwz     r5, 0x88(r29)
    li      r4, 0x2c
    bl      downingCommon__6TMarioFifi
    li      r30, 0x0
    b       branch_0x80258d00

branch_0x802589f4:
    lhz     r3, 0x86(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x80258a24
    addi    r0, r3, 0x1
    sth     r0, 0x86(r29)
    addi    r3, r29, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lha     r5, 0x27f8(r29)
    addi    r3, r29, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
branch_0x80258a24:
    lfs     f1, -0xe90(r2)
    mr      r3, r29
    lwz     r5, 0x88(r29)
    li      r4, 0x7b
    bl      downingCommon__6TMarioFifi
    li      r30, 0x0
    b       branch_0x80258d00

branch_0x80258a40:
    lhz     r3, 0x86(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x80258a70
    addi    r0, r3, 0x1
    sth     r0, 0x86(r29)
    addi    r3, r29, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lha     r5, 0x27f8(r29)
    addi    r3, r29, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
branch_0x80258a70:
    lfs     f1, -0xe8c(r2)
    mr      r3, r29
    lwz     r5, 0x88(r29)
    li      r4, 0x7c
    bl      downingCommon__6TMarioFifi
    li      r30, 0x0
    b       branch_0x80258d00

branch_0x80258a8c:
    lhz     r3, 0x86(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x80258abc
    addi    r0, r3, 0x1
    sth     r0, 0x86(r29)
    addi    r3, r29, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lha     r5, 0x27f8(r29)
    addi    r3, r29, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
branch_0x80258abc:
    lfs     f1, -0xe88(r2)
    mr      r3, r29
    lwz     r5, 0x88(r29)
    li      r4, 0x74
    bl      downingCommon__6TMarioFifi
    li      r30, 0x0
    b       branch_0x80258d00

branch_0x80258ad8:
    lhz     r3, 0x86(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x80258b08
    addi    r0, r3, 0x1
    sth     r0, 0x86(r29)
    addi    r3, r29, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lha     r5, 0x27f8(r29)
    addi    r3, r29, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
branch_0x80258b08:
    lfs     f1, -0xe84(r2)
    mr      r3, r29
    lwz     r5, 0x88(r29)
    li      r4, 0x75
    bl      downingCommon__6TMarioFifi
    li      r30, 0x0
    b       branch_0x80258d00

branch_0x80258b24:
    lhz     r3, 0x86(r29)
    cmplwi  r3, 0x0
    bne-    branch_0x80258b54
    addi    r0, r3, 0x1
    sth     r0, 0x86(r29)
    addi    r3, r29, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lha     r5, 0x27f8(r29)
    addi    r3, r29, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
branch_0x80258b54:
    lfs     f1, -0xe80(r2)
    mr      r3, r29
    lwz     r5, 0x88(r29)
    li      r4, 0x8a
    bl      downingCommon__6TMarioFifi
    li      r30, 0x0
    b       branch_0x80258d00

branch_0x80258b70:
    mr      r3, r29
    bl      loserDown__6TMarioFv
    mr      r30, r3
    b       branch_0x80258d00

branch_0x80258b80:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x38
    bl      jumpSlipEvents__6TMarioFPQ26TMario14JumpSlipRecord
    cmpwi   r3, 0x0
    beq-    branch_0x80258b9c
    li      r0, 0x1
    b       branch_0x80258bb0

branch_0x80258b9c:
    addi    r3, r29, 0x0
    li      r4, 0x4e
    li      r5, 0x88c
    bl      jumpSlipCommon__6TMarioFsUl
    li      r0, 0x0
branch_0x80258bb0:
    mr      r30, r0
    b       branch_0x80258d00

branch_0x80258bb8:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4c
    bl      jumpSlipEvents__6TMarioFPQ26TMario14JumpSlipRecord
    cmpwi   r3, 0x0
    beq-    branch_0x80258bd4
    li      r0, 0x1
    b       branch_0x80258be8

branch_0x80258bd4:
    addi    r3, r29, 0x0
    li      r4, 0x57
    li      r5, 0x88c
    bl      jumpSlipCommon__6TMarioFsUl
    li      r0, 0x0
branch_0x80258be8:
    mr      r30, r0
    b       branch_0x80258d00

branch_0x80258bf0:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x60
    bl      jumpSlipEvents__6TMarioFPQ26TMario14JumpSlipRecord
    cmpwi   r3, 0x0
    beq-    branch_0x80258c0c
    li      r0, 0x1
    b       branch_0x80258c20

branch_0x80258c0c:
    addi    r3, r29, 0x0
    li      r4, 0x4b
    li      r5, 0x88c
    bl      jumpSlipCommon__6TMarioFsUl
    li      r0, 0x0
branch_0x80258c20:
    mr      r30, r0
    b       branch_0x80258d00

branch_0x80258c28:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x74
    bl      jumpSlipEvents__6TMarioFPQ26TMario14JumpSlipRecord
    cmpwi   r3, 0x0
    beq-    branch_0x80258c44
    li      r0, 0x1
    b       branch_0x80258c78

branch_0x80258c44:
    addi    r3, r29, 0x0
    li      r4, 0xbe
    li      r5, 0x88c
    bl      jumpSlipCommon__6TMarioFsUl
    cmpwi   r3, 0x2
    beq-    branch_0x80258c74
    li      r0, 0x0
    sth     r0, 0x94(r29)
    lha     r3, 0x9a(r29)
    addis   r3, r3, 0x1
    addi    r0, r3, -0x8000
    sth     r0, 0x9a(r29)
branch_0x80258c74:
    li      r0, 0x0
branch_0x80258c78:
    mr      r30, r0
    b       branch_0x80258d00

branch_0x80258c80:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x88
    bl      jumpSlipEvents__6TMarioFPQ26TMario14JumpSlipRecord
    cmpwi   r3, 0x0
    beq-    branch_0x80258c9c
    li      r0, 0x1
    b       branch_0x80258cb0

branch_0x80258c9c:
    addi    r3, r29, 0x0
    li      r4, 0xc0
    li      r5, 0x88c
    bl      jumpSlipCommon__6TMarioFsUl
    li      r0, 0x0
branch_0x80258cb0:
    mr      r30, r0
    b       branch_0x80258d00

branch_0x80258cb8:
    lwz     r3, 0x74(r29)
    rlwinm. r0, r3, 0, 17, 17
    bne-    branch_0x80258ccc
    rlwinm  r0, r3, 0, 31, 29
    stw     r0, 0x74(r29)
branch_0x80258ccc:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x9c
    bl      jumpSlipEvents__6TMarioFPQ26TMario14JumpSlipRecord
    cmpwi   r3, 0x0
    beq-    branch_0x80258ce8
    li      r0, 0x1
    b       branch_0x80258cfc

branch_0x80258ce8:
    addi    r3, r29, 0x0
    li      r4, 0x98
    li      r5, 0x88c
    bl      jumpSlipCommon__6TMarioFsUl
    li      r0, 0x0
branch_0x80258cfc:
    mr      r30, r0
branch_0x80258d00:
    lwz     r0, 0x64(sp)
    mr      r3, r30
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl jumpSlipEvents__6TMarioFPQ26TMario14JumpSlipRecord
jumpSlipEvents__6TMarioFPQ26TMario14JumpSlipRecord: # 0x80258d24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80258d50
    lwz     r4, 0x4(r4)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80258e4c

branch_0x80258d50:
    lhz     r5, 0x86(r3)
    addi    r0, r5, 0x1
    sth     r0, 0x86(r3)
    lhz     r5, 0x86(r3)
    lha     r0, 0x0(r4)
    cmpw    r5, r0
    blt-    branch_0x80258d80
    lwz     r4, 0x4(r4)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80258e4c

branch_0x80258d80:
    lwz     r5, 0x74(r3)
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x80258e04
    lwz     r4, 0x8(r4)
    addis   r0, r4, 0xfe00
    cmplwi  r0, 0x881
    bne-    branch_0x80258dc4
    lfs     f1, 0xb0(r3)
    lfs     f0, 0xd20(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80258dc4
    lis     r4, unk_02000881@h
    addi    r4, r4, unk_02000881@l
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x80258e4c

branch_0x80258dc4:
    cmplwi  r4, 0x882
    bne-    branch_0x80258df0
    lfs     f1, 0xb0(r3)
    lfs     f0, 0xd70(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80258df0
    li      r4, 0x882
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x80258e4c

branch_0x80258df0:
    lis     r4, unk_02000880@h
    addi    r4, r4, unk_02000880@l
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x80258e4c

branch_0x80258e04:
    rlwinm. r0, r5, 0, 16, 16
    beq-    branch_0x80258e2c
    lfs     f0, -0xe78(r2)
    lis     r4, unk_0080088a@h
    addi    r4, r4, unk_0080088a@l
    stfs    f0, 0xa8(r3)
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80258e4c

branch_0x80258e2c:
    rlwinm. r0, r5, 0, 29, 29
    beq-    branch_0x80258e48
    lwz     r4, 0xc(r4)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80258e4c

branch_0x80258e48:
    li      r3, 0x0
branch_0x80258e4c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl jumpSlipCommon__6TMarioFsUl
jumpSlipCommon__6TMarioFsUl: # 0x80258e5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x20(sp)
    mr      r28, r3
    lwz     r0, 0x74(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80258ecc
    mr      r3, r28
    bl      slopeProcess__6TMarioFv
    lfs     f1, 0xb0(r28)
    lfs     f0, -0xe7c(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r28)
    lfs     f1, 0xb0(r28)
    lfs     f0, -0xe9c(r2)
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80258f08
    mr      r3, r28
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x80258f08

branch_0x80258ecc:
    lfs     f1, 0xb0(r28)
    lfs     f0, -0xea0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80258f00
    lfs     f3, -0xea8(r2)
    lfs     f2, -0xea4(r2)
    fmr     f4, f3
    bl      FConverge__Fffff
    stfs    f1, 0xb0(r28)
    mr      r3, r28
    bl      slopeProcess__6TMarioFv
    b       branch_0x80258f08

branch_0x80258f00:
    lfs     f0, -0xea4(r2)
    stfs    f0, 0xa8(r28)
branch_0x80258f08:
    mr      r3, r28
    bl      walkProcess__6TMarioFv
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    beq-    branch_0x80258f60
    bge-    branch_0x80258f2c
    cmpwi   r31, 0x0
    bge-    branch_0x80258f38
    b       branch_0x80258f60

branch_0x80258f2c:
    cmpwi   r31, 0x3
    bge-    branch_0x80258f60
    b       branch_0x80258f50

branch_0x80258f38:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80258f60

branch_0x80258f50:
    lfs     f1, -0xe9c(r2)
    addi    r3, r28, 0x0
    li      r4, 0x6c
    bl      setAnimation__6TMarioFif
branch_0x80258f60:
    lfs     f1, -0xe9c(r2)
    addi    r3, r28, 0x0
    extsh   r4, r29
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl loserDown__6TMarioFv
loserDown__6TMarioFv: # 0x80258f94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      slopeProcess__6TMarioFv
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xe74(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xe9c(r2)
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80258fdc
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
branch_0x80258fdc:
    lfs     f1, -0xe9c(r2)
    addi    r3, r31, 0x0
    li      r4, 0x113
    bl      setAnimation__6TMarioFif
    lhz     r0, 0x84(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x80259064
    bge-    branch_0x8025900c
    cmpwi   r0, 0x0
    beq-    branch_0x8025901c
    bge-    branch_0x80259038
    b       branch_0x802590a0

branch_0x8025900c:
    cmpwi   r0, 0x4
    beq-    branch_0x802590a0
    bge-    branch_0x802590a0
    b       branch_0x80259088

branch_0x8025901c:
    addi    r3, r31, 0x0
    li      r4, 0x785d
    bl      startVoice__6TMarioFUl
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x802590a0

branch_0x80259038:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      checkMarioVoicePlaying__6MSoundFUc
    cmplwi  r3, 0x0
    bne-    branch_0x802590a0
    li      r0, 0x0
    sth     r0, 0x86(r31)
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x802590a0

branch_0x80259064:
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    cmplwi  r3, 0x3c
    sth     r0, 0x86(r31)
    ble-    branch_0x802590a0
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x802590a0

branch_0x80259088:
    addi    r3, r31, 0x0
    li      r4, 0x7861
    bl      startVoice__6TMarioFUl
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
branch_0x802590a0:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl downingCommon__6TMarioFifi
downingCommon__6TMarioFifi: # 0x802590b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    fmr     f30, f1
    stw     r31, 0x24(sp)
    mr      r31, r5
    stw     r30, 0x20(sp)
    mr      r30, r3
    lfs     f1, -0xe9c(r2)
    bl      setAnimation__6TMarioFif
    fmr     f31, f1
    fcmpo   cr0, f31, f30
    bge-    branch_0x80259130
    mr      r3, r30
    bl      slopeProcess__6TMarioFv
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xe70(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xe9c(r2)
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80259160
    mr      r3, r30
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x80259160

branch_0x80259130:
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xea4(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80259154
    mr      r3, r30
    lfs     f1, -0xe6c(r2)
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x80259160

branch_0x80259154:
    mr      r3, r30
    lfs     f1, -0xe68(r2)
    bl      setPlayerVelocity__6TMarioFf
branch_0x80259160:
    mr      r3, r30
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x802591bc
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xea4(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802591a0
    lis     r4, unk_000208b1@h
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    addi    r4, r4, unk_000208b1@l
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802591e4

branch_0x802591a0:
    lis     r4, unk_000208b0@h
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    addi    r4, r4, unk_000208b0@l
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802591e4

branch_0x802591bc:
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802591e4
    lis     r4, unk_0c400201@h
    addi    r3, r30, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802591e4:
    lwz     r0, 0x3c(sp)
    fmr     f1, f31
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    mtlr    r0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x38
    blr


.globl oilSlip__6TMarioFv
oilSlip__6TMarioFv: # 0x80259208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025924c
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, unk_02000880@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_02000880@l
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x80259424

branch_0x8025924c:
    lha     r3, 0x2764(r31)
    lis     r0, unk_43300000@h
    lfd     f1, -0xe58(r2)
    addi    r4, r0, unk_43300000@l
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    lha     r3, 0x96(r31)
    stw     r0, 0x38(sp)
    lha     r0, 0x90(r31)
    lfd     f0, 0x38(sp)
    subf    r0, r3, r0
    fsubs   f0, f0, f1
    extsh   r3, r0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    extsh   r5, r0
    addi    r6, r5, 0x0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
    lha     r3, 0x13c(r31)
    addi    r0, r3, -0x1
    sth     r0, 0x13c(r31)
    lha     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x802592e4
    li      r0, 0x0
    sth     r0, 0x13c(r31)
    lis     r4, unk_00800456@h
    addi    r3, r31, 0x0
    lfs     f0, -0xea4(r2)
    addi    r4, r4, unk_00800456@l
    li      r5, 0x0
    stfs    f0, 0x138(r31)
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802592e4:
    lfs     f4, 0x269c(r31)
    li      r4, 0x1
    lfs     f3, 0x18(r31)
    lfs     f2, 0x14(r31)
    lfs     f1, 0x10(r31)
    lwz     r3, R13Off_m0x62f0(r13)
    bl      stamp__17TPollutionManagerFUsffff
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x1141
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80259330
    addi    r4, r31, 0x10
    li      r3, 0x1141
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80259330:
    lha     r5, 0x90(r31)
    mr      r3, r31
    lha     r4, 0x96(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    subf    r4, r5, r4
    lwz     r5, R13Off_m0x5ea4(r13)
    clrlwi  r4, r4, 16
    lfs     f3, 0x8c(r31)
    sraw    r0, r4, r0
    lfs     f1, 0x273c(r31)
    slwi    r0, r0, 2
    lfs     f0, 0xb0(r31)
    lfsx    f2, r5, r0
    fmuls   f2, f3, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x138(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f0, -0xe64(r2)
    lfs     f1, 0xb0(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x802593c8
    lfs     f0, -0xe9c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802593c8
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x386
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259424

branch_0x802593c8:
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802593e0
    blt-    branch_0x802593f8
    b       branch_0x802593f8

branch_0x802593e0:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259424

branch_0x802593f8:
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, 0x10(r3)
    lfs     f0, -0xe60(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80259420
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, -0xe60(r2)
    stfs    f0, 0x10(r3)
branch_0x80259420:
    li      r3, 0x0
branch_0x80259424:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl oilRun__6TMarioFv
oilRun__6TMarioFv: # 0x80259438
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8025947c
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, unk_02000880@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_02000880@l
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x802596f8

branch_0x8025947c:
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x802594a8
    lfs     f0, -0xe78(r2)
    lis     r4, unk_0080088a@h
    addi    r3, r31, 0x0
    stfs    f0, 0xa8(r31)
    addi    r4, r4, unk_0080088a@l
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802596f8

branch_0x802594a8:
    lfs     f1, -0xe64(r2)
    lfs     f2, 0xa4(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x80259500
    lfs     f0, -0xe9c(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80259500
    lfs     f2, 0xac(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x80259500
    fcmpo   cr0, f2, f0
    bge-    branch_0x80259500
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802596f8

branch_0x80259500:
    lfs     f4, 0x26b0(r31)
    li      r4, 0x1
    lfs     f3, 0x18(r31)
    lfs     f2, 0x14(r31)
    lfs     f1, 0x10(r31)
    lwz     r3, R13Off_m0x62f0(r13)
    bl      stamp__17TPollutionManagerFUsffff
    lha     r3, 0x2750(r31)
    lis     r0, unk_43300000@h
    lfd     f1, -0xe58(r2)
    addi    r4, r0, unk_43300000@l
    xoris   r3, r3, 0x8000
    stw     r3, 0x4c(sp)
    lha     r3, 0x96(r31)
    stw     r0, 0x48(sp)
    lha     r0, 0x90(r31)
    lfd     f0, 0x48(sp)
    subf    r0, r3, r0
    fsubs   f0, f0, f1
    extsh   r3, r0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    extsh   r5, r0
    addi    r6, r5, 0x0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f3, 0x8c(r31)
    slwi    r0, r0, 2
    lfs     f1, 0x2728(r31)
    lfsx    f2, r4, r0
    lfs     f0, 0xa4(r31)
    fmuls   f2, f3, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa4(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f3, 0x8c(r31)
    slwi    r0, r0, 2
    lfs     f1, 0x2728(r31)
    lfsx    f2, r4, r0
    lfs     f0, 0xac(r31)
    fmuls   f2, f3, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xac(r31)
    lha     r3, 0x13c(r31)
    addi    r0, r3, -0x1
    sth     r0, 0x13c(r31)
    lha     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x802595fc
    li      r0, 0x0
    sth     r0, 0x13c(r31)
    lfs     f0, -0xea4(r2)
    stfs    f0, 0x138(r31)
branch_0x802595fc:
    lfs     f1, 0xa4(r31)
    lfs     f0, 0x138(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xa4(r31)
    lfs     f1, 0xac(r31)
    lfs     f0, 0x138(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r31)
    lfs     f0, -0xea4(r2)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb8(r31)
    lfs     f2, 0x8c(r31)
    fcmpu   cr0, f0, f2
    bne-    branch_0x8025966c
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80259658
    lfs     f1, -0xe50(r2)
    addi    r3, r31, 0x0
    li      r4, 0x98
    bl      setAnimation__6TMarioFif
    b       branch_0x802596c4

branch_0x80259658:
    lfs     f1, -0xe50(r2)
    addi    r3, r31, 0x0
    li      r4, 0xc3
    bl      setAnimation__6TMarioFif
    b       branch_0x802596c4

branch_0x8025966c:
    lfs     f1, -0xe50(r2)
    mr      r3, r31
    lfs     f0, 0x2714(r31)
    li      r4, 0x72
    fmuls   f1, f1, f2
    fmuls   f1, f1, f0
    bl      setAnimation__6TMarioFif
    addi    r3, r31, 0x0
    li      r4, 0x78d3
    bl      startVoiceIfNoVoice__6TMarioFUl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x1001
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802596c4
    addi    r4, r31, 0x10
    li      r3, 0x1001
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802596c4:
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802596dc
    blt-    branch_0x802596f4
    b       branch_0x802596f4

branch_0x802596dc:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802596f8

branch_0x802596f4:
    li      r3, 0x0
branch_0x802596f8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl catching__6TMarioFv
catching__6TMarioFv: # 0x8025970c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    rlwinm. r0, r3, 0, 28, 28
    bne-    branch_0x80259778
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80259778
    lfs     f1, 0xb0(r31)
    lfs     f0, 0xcd0(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80259760
    lis     r4, unk_02000889@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_02000889@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025984c

branch_0x80259760:
    addi    r3, r31, 0x0
    li      r4, 0x8a6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025984c

branch_0x80259778:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8025978c
    li      r0, 0x1
    b       branch_0x80259790

branch_0x8025978c:
    li      r0, 0x0
branch_0x80259790:
    clrlwi. r0, r0, 24
    beq-    branch_0x802597a0
    li      r0, 0x1
    sth     r0, 0x84(r31)
branch_0x802597a0:
    mr      r3, r31
    bl      getSlideStopCatch__6TMarioFv
    mr      r3, r31
    bl      doSliding__6TMarioFf
    cmpwi   r3, 0x0
    beq-    branch_0x802597dc
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x386
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025984c

branch_0x802597dc:
    addi    r3, r31, 0x0
    li      r4, 0x386
    li      r5, 0x88c
    li      r6, 0x88
    bl      slippingBasic__6TMarioFiii
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x1009
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80259820
    addi    r4, r31, 0x10
    li      r3, 0x1009
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80259820:
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, 0x10(r3)
    lfs     f0, -0xe60(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80259848
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, -0xe60(r2)
    stfs    f0, 0x10(r3)
branch_0x80259848:
    li      r3, 0x0
branch_0x8025984c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl slipBackCommon__6TMarioFiii
slipBackCommon__6TMarioFiii: # 0x80259860
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lhz     r3, 0x86(r3)
    cmplwi  r3, 0x14
    ble-    branch_0x802598d0
    lwz     r3, 0x74(r28)
    rlwinm. r0, r3, 0, 28, 28
    bne-    branch_0x802598d8
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x802598d8
    mr      r3, r28
    bl      canSlipJump__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802598d8
    addi    r3, r28, 0x0
    li      r4, 0x8a6
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x80259920

branch_0x802598d0:
    addi    r0, r3, 0x1
    sth     r0, 0x86(r28)
branch_0x802598d8:
    mr      r3, r28
    bl      getSlideStopNormal__6TMarioFv
    mr      r3, r28
    bl      doSliding__6TMarioFf
    cmpwi   r3, 0x0
    beq-    branch_0x80259908
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259920

branch_0x80259908:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      slippingBasic__6TMarioFiii
    li      r3, 0x0
branch_0x80259920:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl slipForeCommon__6TMarioFiiii
slipForeCommon__6TMarioFiiii: # 0x80259940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    lhz     r0, 0x86(r3)
    cmplwi  r0, 0x14
    ble-    branch_0x802599a0
    mr      r3, r27
    bl      canSlipJump__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802599a0
    lwz     r0, 0x74(r27)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802599ac
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x802599f4

branch_0x802599a0:
    lhz     r3, 0x86(r27)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r27)
branch_0x802599ac:
    mr      r3, r27
    bl      getSlideStopNormal__6TMarioFv
    mr      r3, r27
    bl      doSliding__6TMarioFf
    cmpwi   r3, 0x0
    beq-    branch_0x802599dc
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802599f4

branch_0x802599dc:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      slippingBasic__6TMarioFiii
    li      r3, 0x0
branch_0x802599f4:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl slippingBasic__6TMarioFiii
slippingBasic__6TMarioFiii: # 0x80259a08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x78(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x74(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x70(sp)
    addi    r28, r4, 0x0
    bl      isForceSlip__6TMarioFv
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80259a70
    mr      r3, r31
    bl      canSlipJump__6TMarioFv
    cmpwi   r3, 0x1
    bne-    branch_0x80259a70
    lis     r4, unk_02000880@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_02000880@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259d04

branch_0x80259a70:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80259aa0
    lfs     f0, -0xe78(r2)
    lis     r4, unk_0080088a@h
    addi    r3, r31, 0x0
    stfs    f0, 0xa8(r31)
    addi    r4, r4, unk_0080088a@l
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259d04

branch_0x80259aa0:
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x1
    beq-    branch_0x80259ae4
    bge-    branch_0x80259ac0
    cmpwi   r3, 0x0
    bge-    branch_0x80259acc
    b       branch_0x80259d04

branch_0x80259ac0:
    cmpwi   r3, 0x3
    bge-    branch_0x80259d04
    b       branch_0x80259b0c

branch_0x80259acc:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259d04

branch_0x80259ae4:
    lfs     f1, -0xe9c(r2)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      setAnimation__6TMarioFif
    lhz     r0, 0x114(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x8
    sth     r0, 0x114(r31)
    bl      frontSlipEffect__6TMarioFv
    b       branch_0x80259d04

branch_0x80259b0c:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80259b2c
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x80259d04

branch_0x80259b2c:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80259b40
    fneg    f1, f1
branch_0x80259b40:
    lfs     f0, 0x8e8(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80259b58
    addi    r3, r31, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
branch_0x80259b58:
    mr      r3, r31
    bl      isSlipStart__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80259ca4
    lwz     r3, 0xd8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80259cf8
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    lfs     f0, 0xb4(r31)
    lfs     f1, 0xb8(r31)
    fmuls   f2, f0, f0
    lfs     f0, -0xea4(r2)
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x80259bd0
    frsqrte f3, f4
    lfd     f2, -0xe48(r2)
    lfd     f0, -0xe40(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x54(sp)
    lfs     f4, 0x54(sp)
branch_0x80259bd0:
    lfd     f1, -0xe38(r2)
    lfs     f0, -0xea8(r2)
    fmul    f1, f4, f1
    frsp    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80259bec
    fmr     f1, f0
branch_0x80259bec:
    lha     r0, 0x9e(r31)
    extsh   r3, r3
    subf    r0, r3, r0
    extsh   r0, r0
    subf    r3, r0, r3
    addis   r3, r3, 0x1
    addi    r0, r3, -0x8000
    sth     r0, 0x9e(r31)
    lhz     r3, 0x9e(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea8(r13)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xa4(r31)
    lhz     r3, 0x9e(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea4(r13)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    stfs    f0, 0xac(r31)
    lwz     r4, 0xd8(r31)
    lwz     r3, R13Off_m0x6044(r13)
    lbz     r4, 0x6(r4)
    lfs     f1, 0xb0(r31)
    bl      getWallSound__6MSoundFUlf
    lwz     r0, R13Off_m0x6044(r13)
    addi    r30, r3, 0x0
    addi    r4, r30, 0x0
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80259cf8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80259cf8

branch_0x80259ca4:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80259cd8
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      playerRefrection__6TMarioFi
    lis     r4, unk_00020466@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_00020466@l
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x80259cf8

branch_0x80259cd8:
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80259cf8:
    lhz     r0, 0x114(r31)
    ori     r0, r0, 0x8
    sth     r0, 0x114(r31)
branch_0x80259d04:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl fireDashing__6TMarioFv
fireDashing__6TMarioFv: # 0x80259d24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80259d60
    lis     r4, unk_000208b4@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000208b4@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259e98

branch_0x80259d60:
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    cmplwi  r3, 0xa0
    sth     r0, 0x86(r31)
    ble-    branch_0x80259d90
    lis     r4, unk_04000440@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000440@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259e98

branch_0x80259d90:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80259da4
    li      r0, 0x1
    b       branch_0x80259da8

branch_0x80259da4:
    li      r0, 0x0
branch_0x80259da8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80259dcc
    lis     r4, unk_04000440@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000440@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259e98

branch_0x80259dcc:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xe30(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80259de0
    stfs    f0, 0xb0(r31)
branch_0x80259de0:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xe2c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80259df4
    stfs    f0, 0xb0(r31)
branch_0x80259df4:
    lfs     f1, 0xb0(r31)
    lfs     f2, -0xe28(r2)
    lfs     f3, -0xea8(r2)
    lfs     f4, -0xe9c(r2)
    bl      FConverge__Fffff
    stfs    f1, 0xb0(r31)
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x80259e44
    lha     r3, 0x96(r31)
    li      r4, 0x0
    lha     r0, 0x90(r31)
    li      r5, 0x600
    li      r6, 0x600
    subf    r0, r3, r0
    extsh   r3, r0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
branch_0x80259e44:
    mr      r3, r31
    bl      slopeProcess__6TMarioFv
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x80259e74
    lis     r4, unk_000208b5@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000208b5@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80259e74:
    lfs     f1, -0xe50(r2)
    mr      r3, r31
    lfs     f0, 0xb0(r31)
    li      r4, 0x29
    lfs     f2, -0xe6c(r2)
    fmuls   f0, f1, f0
    fmuls   f1, f2, f0
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
branch_0x80259e98:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl walkEnd__6TMarioFv
walkEnd__6TMarioFv: # 0x80259eac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    lwz     r3, 0x74(r3)
    rlwinm. r0, r3, 0, 27, 27
    bne-    branch_0x80259f88
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80259f08
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xe6c(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80259f00
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      isFrontSlip__6TMarioFi
    cmpwi   r3, 0x0
    beq-    branch_0x80259f08
branch_0x80259f00:
    li      r0, 0x1
    b       branch_0x80259f0c

branch_0x80259f08:
    li      r0, 0x0
branch_0x80259f0c:
    cmpwi   r0, 0x0
    beq-    branch_0x80259f2c
    addi    r3, r31, 0x0
    li      r4, 0x50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a0dc

branch_0x80259f2c:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80259f44
    mr      r3, r31
    bl      changePlayerTriJump__6TMarioFv
    b       branch_0x8025a0dc

branch_0x80259f44:
    clrlwi. r0, r3, 31
    beq-    branch_0x80259f68
    lis     r4, unk_04000440@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000440@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a0dc

branch_0x80259f68:
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x80259f88
    addi    r3, r31, 0x0
    li      r4, 0x384
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a0dc

branch_0x80259f88:
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x1
    bne-    branch_0x80259ff0
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80259ff0
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80259ff0
    lwz     r0, 0xc(sp)
    cmpwi   r0, 0x0
    ble-    branch_0x80259fd8
    addi    r3, r31, 0x0
    li      r4, 0x441
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259ff4

branch_0x80259fd8:
    addi    r3, r31, 0x0
    li      r4, 0x442
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80259ff4

branch_0x80259ff0:
    li      r3, 0x0
branch_0x80259ff4:
    cmpwi   r3, 0x0
    beq-    branch_0x8025a004
    li      r3, 0x1
    b       branch_0x8025a0dc

branch_0x8025a004:
    lfs     f3, -0xe9c(r2)
    li      r30, 0x0
    lfs     f1, 0xb0(r31)
    fmr     f4, f3
    lfs     f2, -0xea4(r2)
    bl      FConverge__Fffff
    stfs    f1, 0xb0(r31)
    lfs     f0, -0xea4(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8025a030
    li      r30, 0x1
branch_0x8025a030:
    mr      r3, r31
    lfs     f1, 0xb0(r31)
    bl      setPlayerVelocity__6TMarioFf
    cmpwi   r30, 0x0
    beq-    branch_0x8025a060
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a0dc

branch_0x8025a060:
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x1
    beq-    branch_0x8025a0b0
    bge-    branch_0x8025a080
    cmpwi   r3, 0x0
    bge-    branch_0x8025a08c
    b       branch_0x8025a0b0

branch_0x8025a080:
    cmpwi   r3, 0x3
    bge-    branch_0x8025a0b0
    b       branch_0x8025a0a4

branch_0x8025a08c:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a0b0

branch_0x8025a0a4:
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
branch_0x8025a0b0:
    lfs     f2, 0xb0(r31)
    lfs     f1, -0xe24(r2)
    lfs     f0, -0xe6c(r2)
    fmuls   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025a0cc
    fmr     f1, f0
branch_0x8025a0cc:
    addi    r3, r31, 0x0
    li      r4, 0x48
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
branch_0x8025a0dc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl surfing__6TMarioFv
surfing__6TMarioFv: # 0x8025a0f4
    mflr    r0
    li      r4, 0x6d
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    lfs     f1, -0xe9c(r2)
    bl      setAnimation__6TMarioFif
    lhz     r3, 0x86(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025a134
    addi    r0, r3, -0x1
    sth     r0, 0x86(r31)
    li      r3, 0x0
    b       branch_0x8025a3bc

branch_0x8025a134:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025a16c
    lfs     f1, 0x14(r31)
    lis     r4, unk_0281089a@h
    lfs     f0, -0xe9c(r2)
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0281089a@l
    fadds   f0, f1, f0
    li      r5, 0x0
    li      r6, 0x0
    stfs    f0, 0x14(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a3bc

branch_0x8025a16c:
    mr      r3, r31
    bl      doSurfing__6TMarioFv
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x1
    beq-    branch_0x8025a3b8
    bge-    branch_0x8025a19c
    cmpwi   r3, 0x0
    bge-    branch_0x8025a1a8
    b       branch_0x8025a3b8

branch_0x8025a19c:
    cmpwi   r3, 0x3
    bge-    branch_0x8025a3b8
    b       branch_0x8025a1c4

branch_0x8025a1a8:
    lis     r4, unk_0081089b@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0081089b@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a3b8

branch_0x8025a1c4:
    lwz     r3, 0xd8(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8025a1e8
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    mr      r3, r31
    bl      loserExec__6TMarioFv
    b       branch_0x8025a3b8

branch_0x8025a1e8:
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    lwz     r4, 0xe0(r31)
    lha     r0, 0x96(r31)
    lhz     r4, 0x0(r4)
    subf    r5, r0, r3
    cmplwi  r4, 0x100
    beq-    branch_0x8025a230
    cmplwi  r4, 0x101
    beq-    branch_0x8025a230
    addi    r0, r4, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8025a230
    cmplwi  r4, 0x4104
    bne-    branch_0x8025a238
branch_0x8025a230:
    li      r0, 0x1
    b       branch_0x8025a23c

branch_0x8025a238:
    li      r0, 0x0
branch_0x8025a23c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025a2ac
    lbz     r0, 0x389(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8025a268
    bge-    branch_0x8025a270
    cmpwi   r0, 0x1
    bge-    branch_0x8025a260
    b       branch_0x8025a270

branch_0x8025a260:
    addi    r3, r31, 0x19f0
    b       branch_0x8025a274

branch_0x8025a268:
    addi    r3, r31, 0x1d98
    b       branch_0x8025a274

branch_0x8025a270:
    addi    r3, r31, 0x1648
branch_0x8025a274:
    cmpwi   r0, 0x2
    lha     r4, 0x1d0(r3)
    beq-    branch_0x8025a298
    bge-    branch_0x8025a2a0
    cmpwi   r0, 0x1
    bge-    branch_0x8025a290
    b       branch_0x8025a2a0

branch_0x8025a290:
    addi    r3, r31, 0x19f0
    b       branch_0x8025a2a4

branch_0x8025a298:
    addi    r3, r31, 0x1d98
    b       branch_0x8025a2a4

branch_0x8025a2a0:
    addi    r3, r31, 0x1648
branch_0x8025a2a4:
    lfs     f1, 0x1bc(r3)
    b       branch_0x8025a310

branch_0x8025a2ac:
    lbz     r0, 0x389(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8025a2d0
    bge-    branch_0x8025a2d8
    cmpwi   r0, 0x1
    bge-    branch_0x8025a2c8
    b       branch_0x8025a2d8

branch_0x8025a2c8:
    addi    r3, r31, 0x1bc4
    b       branch_0x8025a2dc

branch_0x8025a2d0:
    addi    r3, r31, 0x1f6c
    b       branch_0x8025a2dc

branch_0x8025a2d8:
    addi    r3, r31, 0x181c
branch_0x8025a2dc:
    cmpwi   r0, 0x2
    lha     r4, 0x1d0(r3)
    beq-    branch_0x8025a300
    bge-    branch_0x8025a308
    cmpwi   r0, 0x1
    bge-    branch_0x8025a2f8
    b       branch_0x8025a308

branch_0x8025a2f8:
    addi    r3, r31, 0x1bc4
    b       branch_0x8025a30c

branch_0x8025a300:
    addi    r3, r31, 0x1f6c
    b       branch_0x8025a30c

branch_0x8025a308:
    addi    r3, r31, 0x181c
branch_0x8025a30c:
    lfs     f1, 0x1bc(r3)
branch_0x8025a310:
    extsh   r3, r4
    extsh   r4, r5
    neg     r0, r3
    cmpw    r4, r0
    blt-    branch_0x8025a32c
    cmpw    r3, r4
    bge-    branch_0x8025a3ac
branch_0x8025a32c:
    lfs     f0, 0xb0(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8025a3ac
    lha     r4, 0x58c(r31)
    mr      r3, r31
    bl      decHP__6TMarioFi
    lis     r4, unk_000208b3@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000208b3@l
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f0, 0xb0(r31)
    mr      r30, r3
    lfs     f1, -0xe20(r2)
    li      r4, 0x4823
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f0, -0xe60(r2)
    stfs    f0, 0xa8(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8025a3a4
    li      r3, 0x4823
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8025a3a4:
    mr      r3, r30
    b       branch_0x8025a3bc

branch_0x8025a3ac:
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
branch_0x8025a3b8:
    li      r3, 0x0
branch_0x8025a3bc:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl turnEnd__6TMarioFv
turnEnd__6TMarioFv: # 0x8025a3d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lwz     r3, 0x6c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8025a4d0
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8025a40c
    li      r0, 0x1
    b       branch_0x8025a410

branch_0x8025a40c:
    li      r0, 0x0
branch_0x8025a410:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025a4d0
    lwz     r3, 0x4c(r3)
    rlwinm. r0, r3, 0, 3, 3
    beq-    branch_0x8025a42c
    li      r0, 0x1
    b       branch_0x8025a430

branch_0x8025a42c:
    li      r0, 0x0
branch_0x8025a430:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025a454
    lis     r4, unk_80000588@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_80000588@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a4d4

branch_0x8025a454:
    lis     r30, unk_80000001@h
    addi    r0, r30, unk_80000001@l
    cmpw    r3, r0
    beq-    branch_0x8025a468
    b       branch_0x8025a480

branch_0x8025a468:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x588
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a4d4

branch_0x8025a480:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025a4a8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x588
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a4d4

branch_0x8025a4a8:
    mr      r3, r31
    bl      canPut__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025a4d0
    addi    r3, r31, 0x0
    addi    r4, r30, 0x387
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a4d4

branch_0x8025a4d0:
    li      r3, 0x0
branch_0x8025a4d4:
    cmpwi   r3, 0x0
    beq-    branch_0x8025a4e4
    li      r3, 0x1
    b       branch_0x8025a620

branch_0x8025a4e4:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8025a508
    addi    r3, r31, 0x0
    li      r4, 0x50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a620

branch_0x8025a508:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8025a524
    addi    r3, r31, 0x0
    li      r4, 0x887
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x8025a620

branch_0x8025a524:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x1
    bne-    branch_0x8025a58c
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025a58c
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025a58c
    lwz     r0, 0x18(sp)
    cmpwi   r0, 0x0
    ble-    branch_0x8025a574
    addi    r3, r31, 0x0
    li      r4, 0x441
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a590

branch_0x8025a574:
    addi    r3, r31, 0x0
    li      r4, 0x442
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a590

branch_0x8025a58c:
    li      r3, 0x0
branch_0x8025a590:
    cmpwi   r3, 0x0
    beq-    branch_0x8025a5a0
    li      r3, 0x1
    b       branch_0x8025a620

branch_0x8025a5a0:
    mr      r3, r31
    bl      doRunning__6TMarioFv
    lfs     f1, -0xe9c(r2)
    addi    r3, r31, 0x0
    li      r4, 0xbd
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x8025a5dc
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025a5dc:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025a604
    lis     r4, unk_04000440@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000440@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025a604:
    li      r0, 0x0
    sth     r0, 0x94(r31)
    li      r3, 0x0
    lha     r4, 0x9a(r31)
    addis   r4, r4, 0x1
    addi    r0, r4, -0x8000
    sth     r0, 0x9a(r31)
branch_0x8025a620:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl turnning__6TMarioFv
turnning__6TMarioFv: # 0x8025a638
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lwz     r3, 0x6c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8025a734
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8025a670
    li      r0, 0x1
    b       branch_0x8025a674

branch_0x8025a670:
    li      r0, 0x0
branch_0x8025a674:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025a734
    lwz     r3, 0x4c(r3)
    rlwinm. r0, r3, 0, 3, 3
    beq-    branch_0x8025a690
    li      r0, 0x1
    b       branch_0x8025a694

branch_0x8025a690:
    li      r0, 0x0
branch_0x8025a694:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025a6b8
    lis     r4, unk_80000588@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_80000588@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a738

branch_0x8025a6b8:
    lis     r30, unk_80000001@h
    addi    r0, r30, unk_80000001@l
    cmpw    r3, r0
    beq-    branch_0x8025a6cc
    b       branch_0x8025a6e4

branch_0x8025a6cc:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x588
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a738

branch_0x8025a6e4:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025a70c
    addi    r3, r31, 0x0
    addi    r4, r30, 0x588
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a738

branch_0x8025a70c:
    mr      r3, r31
    bl      canPut__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025a734
    addi    r3, r31, 0x0
    addi    r4, r30, 0x387
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a738

branch_0x8025a734:
    li      r3, 0x0
branch_0x8025a738:
    cmpwi   r3, 0x0
    beq-    branch_0x8025a748
    li      r3, 0x1
    b       branch_0x8025aa0c

branch_0x8025a748:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8025a76c
    addi    r3, r31, 0x0
    li      r4, 0x50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025aa0c

branch_0x8025a76c:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8025a788
    addi    r3, r31, 0x0
    li      r4, 0x887
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x8025aa0c

branch_0x8025a788:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x1
    bne-    branch_0x8025a7f0
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025a7f0
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025a7f0
    lwz     r0, 0x18(sp)
    cmpwi   r0, 0x0
    ble-    branch_0x8025a7d8
    addi    r3, r31, 0x0
    li      r4, 0x441
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a7f4

branch_0x8025a7d8:
    addi    r3, r31, 0x0
    li      r4, 0x442
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025a7f4

branch_0x8025a7f0:
    li      r3, 0x0
branch_0x8025a7f4:
    cmpwi   r3, 0x0
    beq-    branch_0x8025a804
    li      r3, 0x1
    b       branch_0x8025aa0c

branch_0x8025a804:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8025a82c
    lis     r4, unk_04000445@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000445@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025aa0c

branch_0x8025a82c:
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8025a840
    cmplwi  r0, 0x1
    bne-    branch_0x8025a848
branch_0x8025a840:
    li      r0, 0x1
    b       branch_0x8025a84c

branch_0x8025a848:
    li      r0, 0x0
branch_0x8025a84c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025a85c
    li      r0, 0x0
    b       branch_0x8025a8a0

branch_0x8025a85c:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025a874
    li      r0, 0x0
    b       branch_0x8025a8a0

branch_0x8025a874:
    lha     r3, 0x96(r31)
    li      r4, 0x1
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    extsh   r0, r0
    cmpwi   r0, -0x471c
    blt-    branch_0x8025a89c
    cmpwi   r0, 0x471c
    bgt-    branch_0x8025a89c
    li      r4, 0x0
branch_0x8025a89c:
    clrlwi  r0, r4, 24
branch_0x8025a8a0:
    cmpwi   r0, 0x0
    bne-    branch_0x8025a8c4
    lis     r4, unk_04000440@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000440@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025aa0c

branch_0x8025a8c4:
    lfs     f3, -0xea8(r2)
    li      r30, 0x0
    lfs     f1, 0xb0(r31)
    fmr     f4, f3
    lfs     f2, -0xea4(r2)
    bl      FConverge__Fffff
    stfs    f1, 0xb0(r31)
    lfs     f0, -0xea4(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8025a8f0
    li      r30, 0x1
branch_0x8025a8f0:
    mr      r3, r31
    bl      slopeProcess__6TMarioFv
    cmpwi   r30, 0x0
    beq-    branch_0x8025a92c
    lha     r0, 0x90(r31)
    mr      r3, r31
    sth     r0, 0x96(r31)
    lfs     f1, -0xe30(r2)
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x444
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025aa0c

branch_0x8025a92c:
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025a940
    b       branch_0x8025a954

branch_0x8025a940:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025a954:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xe1c(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025a97c
    lfs     f1, -0xe9c(r2)
    addi    r3, r31, 0x0
    li      r4, 0xbc
    bl      setAnimation__6TMarioFif
    b       branch_0x8025aa08

branch_0x8025a97c:
    lfs     f1, -0xe9c(r2)
    addi    r3, r31, 0x0
    li      r4, 0xbd
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025aa08
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025a9dc
    lha     r0, 0x90(r31)
    fneg    f1, f1
    mr      r3, r31
    sth     r0, 0x96(r31)
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, unk_04000440@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000440@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025aa08

branch_0x8025a9dc:
    lha     r0, 0x90(r31)
    mr      r3, r31
    sth     r0, 0x96(r31)
    lfs     f1, -0xe30(r2)
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, unk_04000440@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000440@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025aa08:
    li      r3, 0x0
branch_0x8025aa0c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl rotating__6TMarioFv
rotating__6TMarioFv: # 0x8025aa24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025aa80
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x441
    bne-    branch_0x8025aa68
    addi    r3, r31, 0x0
    li      r4, 0x896
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ab38

branch_0x8025aa68:
    addi    r3, r31, 0x0
    li      r4, 0x895
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ab38

branch_0x8025aa80:
    lfs     f1, -0xe9c(r2)
    addi    r3, r31, 0x0
    li      r4, 0xf4
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      emitRotateShootEffect__6TMarioFv
    mr      r3, r31
    bl      emitBlurSpinJump__6TMarioFv
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x78
    ble-    branch_0x8025aad4
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ab38

branch_0x8025aad4:
    mr      r3, r31
    bl      doRunning__6TMarioFv
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025aaf0
    b       branch_0x8025ab04

branch_0x8025aaf0:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025ab04:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x441
    bne-    branch_0x8025ab24
    lhz     r0, 0x86(r31)
    slwi    r0, r0, 12
    extsh   r0, r0
    sth     r0, 0x9a(r31)
    b       branch_0x8025ab34

branch_0x8025ab24:
    lhz     r0, 0x86(r31)
    slwi    r0, r0, 12
    neg     r0, r0
    sth     r0, 0x9a(r31)
branch_0x8025ab34:
    li      r3, 0x0
branch_0x8025ab38:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl running__6TMarioFv
running__6TMarioFv: # 0x8025ab4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    stw     r30, 0x88(sp)
    lhz     r3, 0x86(r3)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025ac54
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8025ab90
    li      r0, 0x1
    b       branch_0x8025ab94

branch_0x8025ab90:
    li      r0, 0x0
branch_0x8025ab94:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025ac54
    lwz     r3, 0x4c(r3)
    rlwinm. r0, r3, 0, 3, 3
    beq-    branch_0x8025abb0
    li      r0, 0x1
    b       branch_0x8025abb4

branch_0x8025abb0:
    li      r0, 0x0
branch_0x8025abb4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025abd8
    lis     r4, unk_80000588@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_80000588@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ac58

branch_0x8025abd8:
    lis     r30, unk_80000001@h
    addi    r0, r30, unk_80000001@l
    cmpw    r3, r0
    beq-    branch_0x8025abec
    b       branch_0x8025ac04

branch_0x8025abec:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x588
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ac58

branch_0x8025ac04:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025ac2c
    addi    r3, r31, 0x0
    addi    r4, r30, 0x588
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ac58

branch_0x8025ac2c:
    mr      r3, r31
    bl      canPut__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025ac54
    addi    r3, r31, 0x0
    addi    r4, r30, 0x387
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ac58

branch_0x8025ac54:
    li      r3, 0x0
branch_0x8025ac58:
    cmpwi   r3, 0x0
    beq-    branch_0x8025ac68
    li      r3, 0x1
    b       branch_0x8025b2c4

branch_0x8025ac68:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8025aca4
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xe6c(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x8025ac9c
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      isFrontSlip__6TMarioFi
    cmpwi   r3, 0x0
    beq-    branch_0x8025aca4
branch_0x8025ac9c:
    li      r0, 0x1
    b       branch_0x8025aca8

branch_0x8025aca4:
    li      r0, 0x0
branch_0x8025aca8:
    cmpwi   r0, 0x0
    beq-    branch_0x8025acc8
    addi    r3, r31, 0x0
    li      r4, 0x50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025acc8:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8025ad78
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x8025ad08
    lwz     r0, 0x88(r31)
    lis     r4, unk_0c400209@h
    addi    r3, r31, 0x0
    extsh   r0, r0
    sth     r0, 0x96(r31)
    addi    r4, r4, unk_0c400209@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025ad08:
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0xf0
    ble-    branch_0x8025ad5c
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025ad5c
    lwz     r3, 0xe0(r31)
    lfs     f0, -0xe18(r2)
    lfs     f1, 0x38(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025ad5c
    lis     r4, unk_04000445@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000445@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025ad5c:
    lis     r4, unk_0400044a@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0400044a@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025ad78:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x8025ad8c
    li      r0, 0x1
    b       branch_0x8025ad90

branch_0x8025ad8c:
    li      r0, 0x0
branch_0x8025ad90:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025adcc
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8025adcc
    lfs     f1, 0x5b4(r31)
    lfs     f0, -0xe9c(r2)
    lfs     f2, 0xb0(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x8025adcc
    addi    r3, r31, 0x0
    li      r4, 0x888
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x8025b2c4

branch_0x8025adcc:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8025ade0
    mr      r3, r31
    bl      changePlayerTriJump__6TMarioFv
    b       branch_0x8025b2c4

branch_0x8025ade0:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8025ae6c
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8025ae6c
    beq-    branch_0x8025ae44
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x1020(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025ae44
    lfs     f1, 0x8c(r31)
    lfs     f0, -0xe14(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025ae44
    lfs     f0, -0xe78(r2)
    lis     r4, unk_0080088a@h
    addi    r3, r31, 0x0
    stfs    f0, 0xa8(r31)
    addi    r4, r4, unk_0080088a@l
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ae48

branch_0x8025ae44:
    li      r3, 0x0
branch_0x8025ae48:
    cmpwi   r3, 0x0
    beq-    branch_0x8025ae58
    li      r3, 0x1
    b       branch_0x8025b2c4

branch_0x8025ae58:
    addi    r3, r31, 0x0
    li      r4, 0x384
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025ae6c:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8025af1c
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x8025aeac
    lwz     r0, 0x88(r31)
    lis     r4, unk_0c400209@h
    addi    r3, r31, 0x0
    extsh   r0, r0
    sth     r0, 0x96(r31)
    addi    r4, r4, unk_0c400209@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025aeac:
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0xf0
    ble-    branch_0x8025af00
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025af00
    lwz     r3, 0xe0(r31)
    lfs     f0, -0xe18(r2)
    lfs     f1, 0x38(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025af00
    lis     r4, unk_04000445@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_04000445@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025af00:
    lis     r4, unk_0400044a@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0400044a@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025af1c:
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8025af30
    cmplwi  r0, 0x1
    bne-    branch_0x8025af38
branch_0x8025af30:
    li      r0, 0x1
    b       branch_0x8025af3c

branch_0x8025af38:
    li      r0, 0x0
branch_0x8025af3c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025af4c
    li      r0, 0x0
    b       branch_0x8025af90

branch_0x8025af4c:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025af64
    li      r0, 0x0
    b       branch_0x8025af90

branch_0x8025af64:
    lha     r3, 0x96(r31)
    li      r4, 0x1
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    extsh   r0, r0
    cmpwi   r0, -0x471c
    blt-    branch_0x8025af8c
    cmpwi   r0, 0x471c
    bgt-    branch_0x8025af8c
    li      r4, 0x0
branch_0x8025af8c:
    clrlwi  r0, r4, 24
branch_0x8025af90:
    cmpwi   r0, 0x0
    beq-    branch_0x8025b00c
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x1034(r31)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025b00c
    lha     r5, 0x96(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    addis   r5, r5, 0x1
    addi    r5, r5, -0x8000
    bl      emitParticle__6TMarioFis
    lha     r5, 0x96(r31)
    addi    r3, r31, 0x0
    li      r4, 0x17
    addis   r5, r5, 0x1
    addi    r5, r5, -0x8000
    bl      emitParticle__6TMarioFis
    lha     r5, 0x96(r31)
    addi    r3, r31, 0x0
    li      r4, 0x16
    addis   r5, r5, 0x1
    addi    r5, r5, -0x8000
    bl      emitParticle__6TMarioFis
    addi    r3, r31, 0x0
    li      r4, 0x443
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025b00c:
    mr      r3, r31
    bl      canSquat__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025b044
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, unk_0c008220@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0c008220@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025b044:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025b080
    lwz     r5, 0x3e4(r31)
    mr      r3, r31
    lfs     f1, 0xec(r31)
    li      r4, 0x88b
    lfs     f0, 0x1d40(r5)
    li      r5, 0x0
    fadds   f0, f1, f0
    li      r6, 0x0
    stfs    f0, 0x314(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025b080:
    li      r30, 0x0
    sth     r30, 0x84(r31)
    mr      r3, r31
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x80(sp)
    bl      doRunning__6TMarioFv
    mr      r3, r31
    bl      setNormalAttackArea__6TMarioFv
    mr      r3, r31
    bl      walkProcess__6TMarioFv
    cmpwi   r3, 0x1
    beq-    branch_0x8025b104
    bge-    branch_0x8025b0d0
    cmpwi   r3, 0x0
    bge-    branch_0x8025b0dc
    b       branch_0x8025b280

branch_0x8025b0d0:
    cmpwi   r3, 0x3
    bge-    branch_0x8025b280
    b       branch_0x8025b110

branch_0x8025b0dc:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0xe9c(r2)
    addi    r3, r31, 0x0
    li      r4, 0x56
    bl      setAnimation__6TMarioFif
    b       branch_0x8025b280

branch_0x8025b104:
    mr      r3, r31
    bl      doRunningAnimation__6TMarioFv
    b       branch_0x8025b280

branch_0x8025b110:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025b130
    mr      r3, r31
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x8025b280

branch_0x8025b130:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025b140
    li      r30, 0x1
branch_0x8025b140:
    clrlwi. r0, r30, 24
    bne-    branch_0x8025b280
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x8e8(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025b17c
    addi    r3, r31, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lis     r4, unk_000208b0@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000208b0@l
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8025b2c4

branch_0x8025b17c:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025b1f4
    lfs     f1, 0x14(r31)
    lfs     f0, 0x80c(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, -0xe60(r2)
    bl      isTouchedOneWall__4TMapCFffff
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8025b1f4
    lfs     f0, -0xe10(r2)
    mr      r3, r31
    stfs    f0, 0xa8(r31)
    lha     r4, 0x96(r31)
    addis   r4, r4, 0x1
    addi    r0, r4, -0x8000
    sth     r0, 0x96(r31)
    lfs     f1, -0xe60(r2)
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, unk_02000886@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_02000886@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025b1f4:
    lwz     r3, 0xd8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025b260
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x8025b214
    li      r0, 0x1
    b       branch_0x8025b218

branch_0x8025b214:
    li      r0, 0x0
branch_0x8025b218:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025b260
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    addis   r3, r3, 0x1
    addi    r0, r3, -0x8000
    sth     r0, 0x96(r31)
    lis     r4, unk_3000036b@h
    addi    r3, r31, 0x0
    lha     r0, 0x96(r31)
    addi    r4, r4, unk_3000036b@l
    li      r5, 0x0
    sth     r0, 0x9a(r31)
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025b2c4

branch_0x8025b260:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x78
    bl      doPushingAnimation__6TMarioFRC3Vec
    li      r0, 0x0
    sth     r0, 0xc4(r31)
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 18, 16
    stw     r0, 0x118(r31)
branch_0x8025b280:
    mr      r3, r31
    bl      checkDescent__6TMarioFv
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x8025b29c
    li      r0, 0x1
    b       branch_0x8025b2a0

branch_0x8025b29c:
    li      r0, 0x0
branch_0x8025b2a0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025b2c0
    lfs     f1, 0x5b4(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x19
    bl      startSoundActor__6TMarioFUl
branch_0x8025b2c0:
    li      r3, 0x0
branch_0x8025b2c4:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl doPushingAnimation__6TMarioFRC3Vec
doPushingAnimation__6TMarioFRC3Vec: # 0x8025b2dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lfs     f1, -0xe0c(r2)
    lfs     f0, 0xb0(r3)
    lfs     f4, 0x10(r3)
    lfs     f3, 0x0(r4)
    fcmpo   cr0, f0, f1
    lfs     f2, 0x18(r3)
    lfs     f0, 0x8(r4)
    fsubs   f31, f4, f3
    fsubs   f30, f2, f0
    ble-    branch_0x8025b330
    mr      r3, r29
    bl      setPlayerVelocity__6TMarioFf
branch_0x8025b330:
    lwz     r0, 0xd8(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8025b350
    mr      r3, r29
    bl      getWallAngle__6TMarioCFv
    lha     r0, 0x96(r29)
    addi    r31, r3, 0x0
    subf    r30, r0, r31
branch_0x8025b350:
    lwz     r0, 0xd8(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8025b370
    extsh   r0, r30
    cmpwi   r0, -0x71c7
    blt-    branch_0x8025b370
    cmpwi   r0, 0x71c7
    ble-    branch_0x8025b390
branch_0x8025b370:
    lfs     f1, -0xe9c(r2)
    addi    r3, r29, 0x0
    li      r4, 0x6c
    bl      setAnimation__6TMarioFif
    addi    r3, r29, 0x0
    li      r4, 0x7094
    bl      startVoice__6TMarioFUl
    b       branch_0x8025b410

branch_0x8025b390:
    fmuls   f1, f30, f30
    lfs     f0, -0xea4(r2)
    fmadds  f4, f31, f31, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x8025b3d0
    frsqrte f3, f4
    lfd     f2, -0xe48(r2)
    lfd     f0, -0xe40(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f4, 0x10(sp)
branch_0x8025b3d0:
    lfs     f0, -0xe08(r2)
    extsh.  r0, r30
    fmuls   f1, f0, f4
    bge-    branch_0x8025b3f0
    addi    r3, r29, 0x0
    li      r4, 0x80
    bl      setAnimation__6TMarioFif
    b       branch_0x8025b3fc

branch_0x8025b3f0:
    addi    r3, r29, 0x0
    li      r4, 0x7f
    bl      setAnimation__6TMarioFif
branch_0x8025b3fc:
    li      r0, 0x0
    addis   r3, r31, 0x1
    sth     r0, 0x94(r29)
    addi    r0, r3, -0x8000
    sth     r0, 0x9a(r29)
branch_0x8025b410:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    mtlr    r0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x38
    blr


.globl doSurfing__6TMarioFv
doSurfing__6TMarioFv: # 0x8025b434
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r3
    addi    r4, sp, 0x94
    lfs     f2, 0x14(r31)
    lfs     f0, 0xa8(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fsubs   f2, f2, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x94(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8025b498
    cmplwi  r3, 0x101
    beq-    branch_0x8025b498
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8025b498
    cmplwi  r3, 0x4104
    bne-    branch_0x8025b4a0
branch_0x8025b498:
    li      r0, 0x1
    b       branch_0x8025b4a4

branch_0x8025b4a0:
    li      r0, 0x0
branch_0x8025b4a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025b574
    lbz     r0, 0x389(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8025b4d0
    bge-    branch_0x8025b4d8
    cmpwi   r0, 0x1
    bge-    branch_0x8025b4c8
    b       branch_0x8025b4d8

branch_0x8025b4c8:
    addi    r3, r31, 0x19f0
    b       branch_0x8025b4dc

branch_0x8025b4d0:
    addi    r3, r31, 0x1d98
    b       branch_0x8025b4dc

branch_0x8025b4d8:
    addi    r3, r31, 0x1648
branch_0x8025b4dc:
    cmpwi   r0, 0x2
    lfs     f4, 0x18(r3)
    beq-    branch_0x8025b500
    bge-    branch_0x8025b508
    cmpwi   r0, 0x1
    bge-    branch_0x8025b4f8
    b       branch_0x8025b508

branch_0x8025b4f8:
    addi    r3, r31, 0x19f0
    b       branch_0x8025b50c

branch_0x8025b500:
    addi    r3, r31, 0x1d98
    b       branch_0x8025b50c

branch_0x8025b508:
    addi    r3, r31, 0x1648
branch_0x8025b50c:
    cmpwi   r0, 0x2
    lfs     f5, 0x2c(r3)
    beq-    branch_0x8025b530
    bge-    branch_0x8025b538
    cmpwi   r0, 0x1
    bge-    branch_0x8025b528
    b       branch_0x8025b538

branch_0x8025b528:
    addi    r3, r31, 0x19f0
    b       branch_0x8025b53c

branch_0x8025b530:
    addi    r3, r31, 0x1d98
    b       branch_0x8025b53c

branch_0x8025b538:
    addi    r3, r31, 0x1648
branch_0x8025b53c:
    cmpwi   r0, 0x2
    lfs     f6, 0x40(r3)
    beq-    branch_0x8025b560
    bge-    branch_0x8025b568
    cmpwi   r0, 0x1
    bge-    branch_0x8025b558
    b       branch_0x8025b568

branch_0x8025b558:
    addi    r3, r31, 0x19f0
    b       branch_0x8025b56c

branch_0x8025b560:
    addi    r3, r31, 0x1d98
    b       branch_0x8025b56c

branch_0x8025b568:
    addi    r3, r31, 0x1648
branch_0x8025b56c:
    lfs     f7, 0x54(r3)
    b       branch_0x8025b638

branch_0x8025b574:
    lbz     r0, 0x389(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8025b598
    bge-    branch_0x8025b5a0
    cmpwi   r0, 0x1
    bge-    branch_0x8025b590
    b       branch_0x8025b5a0

branch_0x8025b590:
    addi    r3, r31, 0x1bc4
    b       branch_0x8025b5a4

branch_0x8025b598:
    addi    r3, r31, 0x1f6c
    b       branch_0x8025b5a4

branch_0x8025b5a0:
    addi    r3, r31, 0x181c
branch_0x8025b5a4:
    cmpwi   r0, 0x2
    lfs     f4, 0x18(r3)
    beq-    branch_0x8025b5c8
    bge-    branch_0x8025b5d0
    cmpwi   r0, 0x1
    bge-    branch_0x8025b5c0
    b       branch_0x8025b5d0

branch_0x8025b5c0:
    addi    r3, r31, 0x1bc4
    b       branch_0x8025b5d4

branch_0x8025b5c8:
    addi    r3, r31, 0x1f6c
    b       branch_0x8025b5d4

branch_0x8025b5d0:
    addi    r3, r31, 0x181c
branch_0x8025b5d4:
    cmpwi   r0, 0x2
    lfs     f5, 0x2c(r3)
    beq-    branch_0x8025b5f8
    bge-    branch_0x8025b600
    cmpwi   r0, 0x1
    bge-    branch_0x8025b5f0
    b       branch_0x8025b600

branch_0x8025b5f0:
    addi    r3, r31, 0x1bc4
    b       branch_0x8025b604

branch_0x8025b5f8:
    addi    r3, r31, 0x1f6c
    b       branch_0x8025b604

branch_0x8025b600:
    addi    r3, r31, 0x181c
branch_0x8025b604:
    cmpwi   r0, 0x2
    lfs     f6, 0x40(r3)
    beq-    branch_0x8025b628
    bge-    branch_0x8025b630
    cmpwi   r0, 0x1
    bge-    branch_0x8025b620
    b       branch_0x8025b630

branch_0x8025b620:
    addi    r3, r31, 0x1bc4
    b       branch_0x8025b634

branch_0x8025b628:
    addi    r3, r31, 0x1f6c
    b       branch_0x8025b634

branch_0x8025b630:
    addi    r3, r31, 0x181c
branch_0x8025b634:
    lfs     f7, 0x54(r3)
branch_0x8025b638:
    lfs     f1, -0xe08(r2)
    lfs     f0, 0x8c(r31)
    fmuls   f0, f1, f0
    fcmpo   cr0, f0, f7
    fmr     f3, f0
    ble-    branch_0x8025b654
    fmr     f3, f7
branch_0x8025b654:
    fcmpo   cr0, f3, f6
    bge-    branch_0x8025b660
    fmr     f3, f6
branch_0x8025b660:
    lfs     f2, 0xb0(r31)
    lfs     f0, -0xea4(r2)
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8025b684
    lfs     f0, -0xe04(r2)
    fadds   f0, f2, f0
    stfs    f0, 0xb0(r31)
    b       branch_0x8025b780

branch_0x8025b684:
    fcmpo   cr0, f2, f3
    cror    2, 0, 2
    bne-    branch_0x8025b75c
    lwz     r3, 0xe0(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8025b6c0
    cmplwi  r3, 0x101
    beq-    branch_0x8025b6c0
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8025b6c0
    cmplwi  r3, 0x4104
    bne-    branch_0x8025b6c8
branch_0x8025b6c0:
    li      r0, 0x1
    b       branch_0x8025b6cc

branch_0x8025b6c8:
    li      r0, 0x0
branch_0x8025b6cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025b70c
    lbz     r0, 0x389(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8025b6f8
    bge-    branch_0x8025b700
    cmpwi   r0, 0x1
    bge-    branch_0x8025b6f0
    b       branch_0x8025b700

branch_0x8025b6f0:
    addi    r3, r31, 0x19f0
    b       branch_0x8025b704

branch_0x8025b6f8:
    addi    r3, r31, 0x1d98
    b       branch_0x8025b704

branch_0x8025b700:
    addi    r3, r31, 0x1648
branch_0x8025b704:
    lfs     f0, 0x68(r3)
    b       branch_0x8025b740

branch_0x8025b70c:
    lbz     r0, 0x389(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8025b730
    bge-    branch_0x8025b738
    cmpwi   r0, 0x1
    bge-    branch_0x8025b728
    b       branch_0x8025b738

branch_0x8025b728:
    addi    r3, r31, 0x1bc4
    b       branch_0x8025b73c

branch_0x8025b730:
    addi    r3, r31, 0x1f6c
    b       branch_0x8025b73c

branch_0x8025b738:
    addi    r3, r31, 0x181c
branch_0x8025b73c:
    lfs     f0, 0x68(r3)
branch_0x8025b740:
    fdivs   f0, f2, f0
    lfs     f1, -0xe04(r2)
    lfs     f2, 0xb0(r31)
    fsubs   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0xb0(r31)
    b       branch_0x8025b780

branch_0x8025b75c:
    lwz     r3, 0xe0(r31)
    lfs     f0, -0xe00(r2)
    lfs     f1, 0x38(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025b780
    lfs     f0, -0xe9c(r2)
    fsubs   f0, f2, f0
    stfs    f0, 0xb0(r31)
branch_0x8025b780:
    lfs     f0, 0xb0(r31)
    fcmpo   cr0, f0, f7
    ble-    branch_0x8025b790
    stfs    f7, 0xb0(r31)
branch_0x8025b790:
    fsubs   f2, f3, f6
    lha     r3, 0x96(r31)
    fsubs   f1, f7, f6
    lha     r0, 0x90(r31)
    fsubs   f0, f5, f4
    fdivs   f1, f2, f1
    subf    r0, r3, r0
    extsh   r3, r0
    li      r4, 0x0
    fmadds  f0, f1, f0, f4
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    extsh   r5, r0
    addi    r6, r5, 0x0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
    mr      r3, r31
    bl      slopeProcess__6TMarioFv
    lwz     r3, 0x94(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8025b814
    cmplwi  r3, 0x101
    beq-    branch_0x8025b814
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8025b814
    cmplwi  r3, 0x4104
    bne-    branch_0x8025b81c
branch_0x8025b814:
    li      r0, 0x1
    b       branch_0x8025b820

branch_0x8025b81c:
    li      r0, 0x0
branch_0x8025b820:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025b830
    mr      r3, r31
    bl      surfingEffect__6TMarioFv
branch_0x8025b830:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl getSurfingParamsWater__6TMarioFv
getSurfingParamsWater__6TMarioFv: # 0x8025b844
    lbz     r0, 0x389(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8025b868
    bge-    branch_0x8025b870
    cmpwi   r0, 0x1
    bge-    branch_0x8025b860
    b       branch_0x8025b870

branch_0x8025b860:
    addi    r3, r3, 0x19f0
    blr

branch_0x8025b868:
    addi    r3, r3, 0x1d98
    blr

branch_0x8025b870:
    addi    r3, r3, 0x1648
    blr


.globl doRunning__6TMarioFv
doRunning__6TMarioFv: # 0x8025b878
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    stw     r30, 0xb0(sp)
    lfs     f0, 0xeb8(r3)
    lfs     f1, 0x8c(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025b8a8
    b       branch_0x8025b8ac

branch_0x8025b8a8:
    fmr     f1, f0
branch_0x8025b8ac:
    fmr     f31, f1
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025b8c8
    lfs     f0, 0x2208(r31)
    fmuls   f31, f31, f0
branch_0x8025b8c8:
    lfs     f2, 0xb0(r31)
    lfs     f0, -0xea4(r2)
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8025b8ec
    lfs     f0, 0xecc(r31)
    fadds   f0, f2, f0
    stfs    f0, 0xb0(r31)
    b       branch_0x8025b944

branch_0x8025b8ec:
    fcmpo   cr0, f2, f31
    cror    2, 0, 2
    bne-    branch_0x8025b910
    lfs     f1, 0xef4(r31)
    lfs     f0, 0xee0(r31)
    fnmsubs  f0, f2, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0xb0(r31)
    b       branch_0x8025b944

branch_0x8025b910:
    lwz     r3, 0xe0(r31)
    lfs     f0, 0xf08(r31)
    lfs     f1, 0x38(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025b944
    lfs     f0, 0xf1c(r31)
    fsubs   f0, f2, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x22a8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r31)
branch_0x8025b944:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0xea4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025b958
    stfs    f0, 0xb0(r31)
branch_0x8025b958:
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8025b96c
    cmplwi  r0, 0x1
    bne-    branch_0x8025b974
branch_0x8025b96c:
    li      r0, 0x1
    b       branch_0x8025b978

branch_0x8025b974:
    li      r0, 0x0
branch_0x8025b978:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025b9dc
    lha     r5, 0x654(r31)
    lis     r3, 0x4330
    lha     r4, 0x668(r31)
    xoris   r0, r5, 0x8000
    lfd     f2, -0xe58(r2)
    subf    r4, r5, r4
    stw     r0, 0xa4(sp)
    xoris   r0, r4, 0x8000
    lfs     f3, 0xb0(r31)
    stw     r0, 0xac(sp)
    lfs     f4, -0xdfc(r2)
    stw     r3, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    stw     r3, 0xa0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0xa0(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fmadds  f0, f4, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x98(sp)
    lwz     r30, 0x9c(sp)
    b       branch_0x8025ba34

branch_0x8025b9dc:
    lha     r5, 0x618(r31)
    lis     r3, 0x4330
    lha     r4, 0x62c(r31)
    xoris   r0, r5, 0x8000
    lfd     f2, -0xe58(r2)
    subf    r4, r5, r4
    stw     r0, 0xa4(sp)
    xoris   r0, r4, 0x8000
    lfs     f3, 0xb0(r31)
    stw     r0, 0x9c(sp)
    lfs     f4, -0xdfc(r2)
    stw     r3, 0x98(sp)
    lfd     f0, 0x98(sp)
    stw     r3, 0xa0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0xa0(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fmadds  f0, f4, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xa8(sp)
    lwz     r30, 0xac(sp)
branch_0x8025ba34:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025ba78
    extsh   r0, r30
    lfd     f2, -0xe58(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, 0x2230(r31)
    stw     r0, 0x9c(sp)
    lis     r0, 0x4330
    stw     r0, 0x98(sp)
    lfd     f1, 0x98(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r30, 0xa4(sp)
branch_0x8025ba78:
    lwz     r3, 0x118(r31)
    rlwinm. r0, r3, 0, 17, 17
    beq-    branch_0x8025ba8c
    li      r0, 0x1
    b       branch_0x8025ba90

branch_0x8025ba8c:
    li      r0, 0x0
branch_0x8025ba90:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025ba9c
    lha     r30, 0x1048(r31)
branch_0x8025ba9c:
    rlwinm. r0, r3, 0, 14, 15
    beq-    branch_0x8025baac
    li      r0, 0x1
    b       branch_0x8025bab0

branch_0x8025baac:
    li      r0, 0x0
branch_0x8025bab0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025bad8
    lfs     f1, 0x14(r31)
    lfs     f0, 0xfbc(r31)
    lfs     f2, 0xf0(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8025bad8
    li      r0, 0x1
    b       branch_0x8025badc

branch_0x8025bad8:
    li      r0, 0x0
branch_0x8025badc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025bb14
    lfs     f1, 0xf0(r31)
    lfs     f0, 0x14(r31)
    lfs     f2, 0xfbc(r31)
    fsubs   f3, f1, f0
    lfs     f1, -0xe9c(r2)
    lfs     f0, 0xfd0(r31)
    lfs     f4, 0xb0(r31)
    fdivs   f2, f3, f2
    fsubs   f0, f1, f0
    fnmsubs  f0, f2, f0, f1
    fmuls   f0, f4, f0
    stfs    f0, 0xb0(r31)
branch_0x8025bb14:
    lha     r3, 0x96(r31)
    extsh   r5, r30
    lha     r0, 0x90(r31)
    addi    r6, r5, 0x0
    li      r4, 0x0
    subf    r0, r3, r0
    extsh   r3, r0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
    mr      r3, r31
    bl      slopeProcess__6TMarioFv
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    mtlr    r0
    lwz     r30, 0xb0(sp)
    addi    sp, sp, 0xc0
    blr


.globl slopeProcess__6TMarioFv
slopeProcess__6TMarioFv: # 0x8025bb64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    lwz     r3, 0xe0(r3)
    lfsu    f1, 0x34(r3)
    lfs     f0, -0xea4(r2)
    fmuls   f1, f1, f1
    lfs     f2, 0x8(r3)
    fmadds  f31, f2, f2, f1
    fcmpo   cr0, f31, f0
    ble-    branch_0x8025bbec
    frsqrte f1, f31
    lfd     f3, -0xe48(r2)
    lfd     f2, -0xe40(r2)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f31, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f31, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f31, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f31, f0
    frsp    f0, f0
    stfs    f0, 0x58(sp)
    lfs     f31, 0x58(sp)
branch_0x8025bbec:
    lha     r6, 0x96(r31)
    mr      r3, r31
    lha     r0, 0xf4(r31)
    addi    r4, sp, 0x70
    addi    r5, sp, 0x6c
    subf    r30, r6, r0
    bl      getSlopeNormalAccele__6TMarioFPfPf
    extsh   r0, r30
    cmpwi   r0, -0x4000
    ble-    branch_0x8025bc30
    cmpwi   r0, 0x4000
    bge-    branch_0x8025bc30
    lfs     f1, 0x70(sp)
    lfs     f0, 0xb0(r31)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0xb0(r31)
    b       branch_0x8025bc40

branch_0x8025bc30:
    lfs     f1, 0x6c(sp)
    lfs     f0, 0xb0(r31)
    fnmsubs  f0, f1, f31, f0
    stfs    f0, 0xb0(r31)
branch_0x8025bc40:
    lfs     f0, 0xb0(r31)
    lfs     f1, 0x5a0(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8025bc54
    stfs    f1, 0xb0(r31)
branch_0x8025bc54:
    lha     r0, 0x96(r31)
    sth     r0, 0x9e(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    lfs     f0, 0xb4(r31)
    stfs    f0, 0xa4(r31)
    lfs     f0, -0xea4(r2)
    stfs    f0, 0xa8(r31)
    lfs     f0, 0xb8(r31)
    stfs    f0, 0xac(r31)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl doSliding__6TMarioFf
doSliding__6TMarioFf: # 0x8025bcd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stfd    f28, 0x78(sp)
    fmr     f28, f1
    stw     r31, 0x74(sp)
    li      r31, 0x0
    stw     r30, 0x70(sp)
    mr      r30, r3
    lha     r4, 0x9e(r3)
    lha     r3, 0x90(r3)
    lwz     r0, R13Off_m0x5eac(r13)
    subf    r3, r4, r3
    lwz     r5, R13Off_m0x5ea4(r13)
    clrlwi  r3, r3, 16
    lfs     f0, -0xea4(r2)
    sraw    r0, r3, r0
    lwz     r3, R13Off_m0x5ea8(r13)
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    lfsx    f31, r3, r0
    fcmpo   cr0, f1, f0
    fmr     f29, f1
    bge-    branch_0x8025bd68
    lfs     f3, 0xb0(r30)
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x8025bd68
    lfs     f1, -0xe50(r2)
    lfs     f2, -0xdf8(r2)
    fmuls   f0, f1, f3
    fmadds  f0, f2, f0, f1
    fmuls   f29, f29, f0
branch_0x8025bd68:
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xff7c
    cmplwi  r0, 0x45d
    bne-    branch_0x8025bd80
    lfs     f5, 0x2a48(r30)
    b       branch_0x8025beb4

branch_0x8025bd80:
    mr      r3, r30
    bl      isForceSlip__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025bd98
    lfs     f5, 0x2b2c(r30)
    b       branch_0x8025beb4

branch_0x8025bd98:
    lwz     r3, 0xe0(r30)
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0xc
    beq-    branch_0x8025bdb8
    cmplwi  r4, 0x800c
    beq-    branch_0x8025bdb8
    cmplwi  r4, 0xa00c
    bne-    branch_0x8025bdc0
branch_0x8025bdb8:
    li      r0, 0x1
    b       branch_0x8025bdc4

branch_0x8025bdc0:
    li      r0, 0x0
branch_0x8025bdc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025bdd4
    lfs     f5, 0x2c10(r30)
    b       branch_0x8025beb4

branch_0x8025bdd4:
    cmplwi  r4, 0x2
    beq-    branch_0x8025bde4
    cmplwi  r4, 0x8002
    bne-    branch_0x8025bdec
branch_0x8025bde4:
    li      r0, 0x1
    b       branch_0x8025bdf0

branch_0x8025bdec:
    li      r0, 0x0
branch_0x8025bdf0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025be00
    lfs     f5, 0x2cf4(r30)
    b       branch_0x8025beb4

branch_0x8025be00:
    cmplwi  r4, 0x4
    beq-    branch_0x8025be20
    cmplwi  r4, 0x4004
    beq-    branch_0x8025be20
    cmplwi  r4, 0x8004
    beq-    branch_0x8025be20
    cmplwi  r4, 0xc004
    bne-    branch_0x8025be28
branch_0x8025be20:
    li      r0, 0x1
    b       branch_0x8025be2c

branch_0x8025be28:
    li      r0, 0x0
branch_0x8025be2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025be54
    lfs     f1, 0x38(r3)
    lfs     f0, -0xdf4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025be4c
    lfs     f5, 0x2ebc(r30)
    b       branch_0x8025beb4

branch_0x8025be4c:
    lfs     f5, 0x2dd8(r30)
    b       branch_0x8025beb4

branch_0x8025be54:
    mr      r3, r30
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025be6c
    lfs     f5, 0x2fa0(r30)
    b       branch_0x8025beb4

branch_0x8025be6c:
    lwz     r3, 0x7c(r30)
    lfs     f5, 0x2964(r30)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x456
    bne-    branch_0x8025beb4
    lhz     r0, 0x84(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x8025be90
    lfs     f5, 0x848(r30)
branch_0x8025be90:
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8025bea4
    li      r0, 0x1
    b       branch_0x8025bea8

branch_0x8025bea4:
    li      r0, 0x0
branch_0x8025bea8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025beb4
    lfs     f5, 0x85c(r30)
branch_0x8025beb4:
    lfs     f1, 0xb4(r30)
    lfs     f0, 0xb8(r30)
    fmuls   f2, f1, f1
    lfs     f4, 0x8c(r30)
    fmuls   f1, f0, f0
    lfs     f3, -0xdfc(r2)
    lfs     f0, -0xea4(r2)
    fadds   f30, f2, f1
    lfs     f2, -0xdf0(r2)
    fmuls   f1, f4, f3
    fcmpo   cr0, f30, f0
    fmuls   f0, f1, f29
    fmadds  f29, f2, f0, f5
    ble-    branch_0x8025bf18
    frsqrte f3, f30
    lfd     f2, -0xe48(r2)
    lfd     f0, -0xe40(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f30, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f30, f0
    frsp    f0, f0
    stfs    f0, 0x4c(sp)
    lfs     f30, 0x4c(sp)
branch_0x8025bf18:
    mr      r3, r30
    bl      getSlideStickMult__6TMarioFv
    lfs     f2, 0x8c(r30)
    mr      r3, r30
    lfs     f0, -0xdfc(r2)
    lfs     f3, 0xb8(r30)
    fmuls   f2, f2, f0
    lfs     f0, 0xb4(r30)
    fmuls   f2, f3, f2
    fmuls   f2, f31, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r30)
    bl      getSlideStickMult__6TMarioFv
    lfs     f2, 0x8c(r30)
    lfs     f0, -0xdfc(r2)
    lfs     f3, 0xb4(r30)
    fmuls   f2, f2, f0
    lfs     f0, 0xb8(r30)
    fmuls   f2, f3, f2
    fmuls   f2, f31, f2
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    lfs     f1, 0xb8(r30)
    fmuls   f2, f0, f0
    lfs     f0, -0xea4(r2)
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x8025bfbc
    frsqrte f3, f4
    lfd     f2, -0xe48(r2)
    lfd     f0, -0xe40(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x48(sp)
    lfs     f4, 0x48(sp)
branch_0x8025bfbc:
    lfs     f0, -0xea4(r2)
    fcmpo   cr0, f30, f0
    ble-    branch_0x8025bff0
    fcmpo   cr0, f4, f0
    ble-    branch_0x8025bff0
    lfs     f0, 0xb4(r30)
    fmuls   f0, f0, f30
    fdivs   f0, f0, f4
    stfs    f0, 0xb4(r30)
    lfs     f0, 0xb8(r30)
    fmuls   f0, f0, f30
    fdivs   f0, f0, f4
    stfs    f0, 0xb8(r30)
branch_0x8025bff0:
    fmr     f2, f29
    lfs     f1, -0xea4(r2)
    mr      r3, r30
    bl      slideProcess__6TMarioFff
    lwz     r3, 0xe0(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x1
    beq-    branch_0x8025c028
    cmplwi  r3, 0x4001
    beq-    branch_0x8025c028
    cmplwi  r3, 0x8001
    beq-    branch_0x8025c028
    cmplwi  r3, 0xc001
    bne-    branch_0x8025c030
branch_0x8025c028:
    li      r0, 0x1
    b       branch_0x8025c034

branch_0x8025c030:
    li      r0, 0x0
branch_0x8025c034:
    clrlwi. r0, r0, 24
    bne-    branch_0x8025c098
    cmplwi  r3, 0xc
    beq-    branch_0x8025c054
    cmplwi  r3, 0x800c
    beq-    branch_0x8025c054
    cmplwi  r3, 0xa00c
    bne-    branch_0x8025c05c
branch_0x8025c054:
    li      r0, 0x1
    b       branch_0x8025c060

branch_0x8025c05c:
    li      r0, 0x0
branch_0x8025c060:
    clrlwi. r0, r0, 24
    bne-    branch_0x8025c098
    lfs     f1, 0xb0(r30)
    fmuls   f0, f28, f28
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025c098
    mr      r3, r30
    lfs     f1, -0xea4(r2)
    bl      setPlayerVelocity__6TMarioFf
    lwz     r0, 0x74(r30)
    li      r31, 0x1
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0x74(r30)
branch_0x8025c098:
    lwz     r0, 0x9c(sp)
    mr      r3, r31
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lfd     f28, 0x78(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x98
    blr


.globl slideProcess__6TMarioFff
slideProcess__6TMarioFff: # 0x8025c0c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    fmr     f31, f2
    stfd    f30, 0x78(sp)
    fmr     f30, f1
    stfd    f29, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    lwz     r28, 0xe0(r3)
    lfs     f1, 0x3c(r28)
    lfs     f2, 0x34(r28)
    bl      matan__Fff
    lfs     f0, 0x34(r28)
    mr      r29, r3
    lfs     f1, 0x3c(r28)
    fmuls   f2, f0, f0
    lfs     f0, -0xea4(r2)
    fmuls   f1, f1, f1
    fadds   f29, f2, f1
    fcmpo   cr0, f29, f0
    ble-    branch_0x8025c158
    frsqrte f3, f29
    lfd     f2, -0xe48(r2)
    lfd     f0, -0xe40(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f29, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f29, f0
    frsp    f0, f0
    stfs    f0, 0x34(sp)
    lfs     f29, 0x34(sp)
branch_0x8025c158:
    lha     r6, 0x96(r30)
    mr      r3, r30
    lha     r0, 0xf4(r30)
    addi    r4, sp, 0x3c
    addi    r5, sp, 0x38
    subf    r28, r6, r0
    bl      getSlopeSlideAccele__6TMarioFPfPf
    extsh   r0, r28
    cmpwi   r0, -0x4000
    ble-    branch_0x8025c194
    cmpwi   r0, 0x4000
    bge-    branch_0x8025c194
    lfs     f0, 0x3c(sp)
    fmadds  f30, f0, f29, f30
    b       branch_0x8025c19c

branch_0x8025c194:
    lfs     f0, 0x38(sp)
    fmadds  f30, f0, f29, f30
branch_0x8025c19c:
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r4, r29, 16
    lwz     r3, R13Off_m0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f0, 0xb4(r30)
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    fmadds  f0, f30, f1, f0
    stfs    f0, 0xb4(r30)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r3, R13Off_m0x5ea4(r13)
    sraw    r0, r4, r0
    lfs     f0, 0xb8(r30)
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    fmadds  f0, f30, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0xb4(r30)
    lfs     f0, 0xb8(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0xb8(r30)
    lfs     f1, 0xb8(r30)
    lfs     f2, 0xb4(r30)
    bl      matan__Fff
    sth     r3, 0x9e(r30)
    lfs     f1, -0xe68(r2)
    lfs     f2, 0xb4(r30)
    fcmpo   cr0, f1, f2
    bge-    branch_0x8025c238
    lfs     f0, -0xe6c(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8025c238
    lfs     f2, 0xb8(r30)
    fcmpo   cr0, f1, f2
    bge-    branch_0x8025c238
    fcmpo   cr0, f2, f0
    blt-    branch_0x8025c3a8
branch_0x8025c238:
    lha     r3, 0x9e(r30)
    lha     r0, 0x96(r30)
    subf    r0, r3, r0
    extsh.  r0, r0
    mr      r31, r0
    ble-    branch_0x8025c29c
    cmpwi   r31, 0x4000
    bgt-    branch_0x8025c29c
    mr      r3, r30
    bl      getChangeAngleSpeed__6TMarioFv
    xoris   r0, r31, 0x8000
    lfd     f2, -0xe58(r2)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f2
    fsubs   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r31, 0x54(sp)
    cmpwi   r31, 0x0
    bge-    branch_0x8025c39c
    li      r31, 0x0
    b       branch_0x8025c39c

branch_0x8025c29c:
    cmpwi   r31, -0x4000
    ble-    branch_0x8025c2f0
    cmpwi   r31, 0x0
    bge-    branch_0x8025c2f0
    mr      r3, r30
    bl      getChangeAngleSpeed__6TMarioFv
    xoris   r0, r31, 0x8000
    lfd     f2, -0xe58(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f2
    fadds   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r31, 0x5c(sp)
    cmpwi   r31, 0x0
    ble-    branch_0x8025c39c
    li      r31, 0x0
    b       branch_0x8025c39c

branch_0x8025c2f0:
    cmpwi   r31, 0x4000
    ble-    branch_0x8025c34c
    lis     r3, unk_00008000@ha
    addi    r29, r3, unk_00008000@l
    cmpw    r31, r29
    bge-    branch_0x8025c34c
    mr      r3, r30
    bl      getChangeAngleSpeed__6TMarioFv
    xoris   r0, r31, 0x8000
    lfd     f2, -0xe58(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f2
    fadds   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r31, 0x5c(sp)
    cmpw    r31, r29
    ble-    branch_0x8025c39c
    mr      r31, r29
    b       branch_0x8025c39c

branch_0x8025c34c:
    cmpwi   r31, -0x8000
    ble-    branch_0x8025c39c
    cmpwi   r31, -0x4000
    bge-    branch_0x8025c39c
    mr      r3, r30
    bl      getChangeAngleSpeed__6TMarioFv
    xoris   r0, r31, 0x8000
    lfd     f2, -0xe58(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f2
    fsubs   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r31, 0x5c(sp)
    cmpwi   r31, -0x8000
    bge-    branch_0x8025c39c
    li      r31, -0x8000
branch_0x8025c39c:
    lha     r0, 0x9e(r30)
    add     r0, r0, r31
    sth     r0, 0x96(r30)
branch_0x8025c3a8:
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f2, -0xea4(r2)
    stfs    f2, 0xa8(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
    lfs     f1, 0xb4(r30)
    lfs     f0, 0xb8(r30)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fadds   f4, f1, f0
    fcmpo   cr0, f4, f2
    ble-    branch_0x8025c408
    frsqrte f3, f4
    lfd     f2, -0xe48(r2)
    lfd     f0, -0xe40(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x30(sp)
    lfs     f4, 0x30(sp)
branch_0x8025c408:
    stfs    f4, 0xb0(r30)
    lfs     f1, 0xb0(r30)
    lfs     f2, -0xe84(r2)
    fcmpo   cr0, f1, f2
    ble-    branch_0x8025c440
    lfs     f0, 0xb4(r30)
    fmuls   f0, f2, f0
    fdivs   f0, f0, f1
    stfs    f0, 0xb4(r30)
    lfs     f1, 0xb8(r30)
    lfs     f0, 0xb0(r30)
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0xb8(r30)
branch_0x8025c440:
    cmpwi   r31, -0x4000
    blt-    branch_0x8025c450
    cmpwi   r31, 0x4000
    ble-    branch_0x8025c460
branch_0x8025c450:
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xe64(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
branch_0x8025c460:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    lfd     f29, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x88
    blr


.globl getSlideStickMult__6TMarioFv
getSlideStickMult__6TMarioFv: # 0x8025c48c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      isForceSlip__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025c4b4
    lfs     f1, 0x2bf4(r31)
    b       branch_0x8025c520

branch_0x8025c4b4:
    lwz     r3, 0xe0(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0xc
    beq-    branch_0x8025c4d4
    cmplwi  r3, 0x800c
    beq-    branch_0x8025c4d4
    cmplwi  r3, 0xa00c
    bne-    branch_0x8025c4dc
branch_0x8025c4d4:
    li      r0, 0x1
    b       branch_0x8025c4e0

branch_0x8025c4dc:
    li      r0, 0x0
branch_0x8025c4e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c4f0
    lfs     f1, 0x2cd8(r31)
    b       branch_0x8025c520

branch_0x8025c4f0:
    cmplwi  r3, 0x2
    beq-    branch_0x8025c500
    cmplwi  r3, 0x8002
    bne-    branch_0x8025c508
branch_0x8025c500:
    li      r0, 0x1
    b       branch_0x8025c50c

branch_0x8025c508:
    li      r0, 0x0
branch_0x8025c50c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c51c
    lfs     f1, 0x2dbc(r31)
    b       branch_0x8025c520

branch_0x8025c51c:
    lfs     f1, 0x2a2c(r31)
branch_0x8025c520:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl getChangeAngleSpeed__6TMarioFv
getChangeAngleSpeed__6TMarioFv: # 0x8025c534
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      isForceSlip__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025c578
    lha     r3, 0x2be0(r31)
    lis     r0, 0x4330
    lfd     f1, -0xe58(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f2, f0, f1
    b       branch_0x8025c6c4

branch_0x8025c578:
    lwz     r3, 0xe0(r31)
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0xc
    beq-    branch_0x8025c598
    cmplwi  r4, 0x800c
    beq-    branch_0x8025c598
    cmplwi  r4, 0xa00c
    bne-    branch_0x8025c5a0
branch_0x8025c598:
    li      r0, 0x1
    b       branch_0x8025c5a4

branch_0x8025c5a0:
    li      r0, 0x0
branch_0x8025c5a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c5d0
    lha     r3, 0x2cc4(r31)
    lis     r0, 0x4330
    lfd     f1, -0xe58(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f2, f0, f1
    b       branch_0x8025c6c4

branch_0x8025c5d0:
    cmplwi  r4, 0x2
    beq-    branch_0x8025c5e0
    cmplwi  r4, 0x8002
    bne-    branch_0x8025c5e8
branch_0x8025c5e0:
    li      r0, 0x1
    b       branch_0x8025c5ec

branch_0x8025c5e8:
    li      r0, 0x0
branch_0x8025c5ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c618
    lha     r3, 0x2da8(r31)
    lis     r0, 0x4330
    lfd     f1, -0xe58(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f2, f0, f1
    b       branch_0x8025c6c4

branch_0x8025c618:
    cmplwi  r4, 0x4
    beq-    branch_0x8025c638
    cmplwi  r4, 0x4004
    beq-    branch_0x8025c638
    cmplwi  r4, 0x8004
    beq-    branch_0x8025c638
    cmplwi  r4, 0xc004
    bne-    branch_0x8025c640
branch_0x8025c638:
    li      r0, 0x1
    b       branch_0x8025c644

branch_0x8025c640:
    li      r0, 0x0
branch_0x8025c644:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c6a4
    lfs     f1, 0x38(r3)
    lfs     f0, -0xdf4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025c680
    lha     r3, 0x2f70(r31)
    lis     r0, 0x4330
    lfd     f1, -0xe58(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f2, f0, f1
    b       branch_0x8025c6c4

branch_0x8025c680:
    lha     r3, 0x2e8c(r31)
    lis     r0, 0x4330
    lfd     f1, -0xe58(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f2, f0, f1
    b       branch_0x8025c6c4

branch_0x8025c6a4:
    lha     r3, 0x2a18(r31)
    lis     r0, 0x4330
    lfd     f1, -0xe58(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f2, f0, f1
branch_0x8025c6c4:
    lfs     f0, 0xb0(r31)
    lfs     f1, -0xdfc(r2)
    fmuls   f0, f2, f0
    fmuls   f1, f1, f0
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl getSlopeSlideAccele__6TMarioFPfPf
getSlopeSlideAccele__6TMarioFPfPf: # 0x8025c6e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r3, 0x0
    bl      isForceSlip__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025c72c
    lfs     f0, 0x2b68(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2b7c(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c828

branch_0x8025c72c:
    lwz     r3, 0xe0(r29)
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0xc
    beq-    branch_0x8025c74c
    cmplwi  r4, 0x800c
    beq-    branch_0x8025c74c
    cmplwi  r4, 0xa00c
    bne-    branch_0x8025c754
branch_0x8025c74c:
    li      r0, 0x1
    b       branch_0x8025c758

branch_0x8025c754:
    li      r0, 0x0
branch_0x8025c758:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c774
    lfs     f0, 0x2c4c(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2c60(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c828

branch_0x8025c774:
    cmplwi  r4, 0x2
    beq-    branch_0x8025c784
    cmplwi  r4, 0x8002
    bne-    branch_0x8025c78c
branch_0x8025c784:
    li      r0, 0x1
    b       branch_0x8025c790

branch_0x8025c78c:
    li      r0, 0x0
branch_0x8025c790:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c7ac
    lfs     f0, 0x2d30(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2d44(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c828

branch_0x8025c7ac:
    cmplwi  r4, 0x4
    beq-    branch_0x8025c7cc
    cmplwi  r4, 0x4004
    beq-    branch_0x8025c7cc
    cmplwi  r4, 0x8004
    beq-    branch_0x8025c7cc
    cmplwi  r4, 0xc004
    bne-    branch_0x8025c7d4
branch_0x8025c7cc:
    li      r0, 0x1
    b       branch_0x8025c7d8

branch_0x8025c7d4:
    li      r0, 0x0
branch_0x8025c7d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c818
    lfs     f1, 0x38(r3)
    lfs     f0, -0xdf4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025c804
    lfs     f0, 0x2ef8(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2f0c(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c828

branch_0x8025c804:
    lfs     f0, 0x2e14(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2e28(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c828

branch_0x8025c818:
    lfs     f0, 0x29a0(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x29b4(r29)
    stfs    f0, 0x0(r31)
branch_0x8025c828:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl getSlopeNormalAccele__6TMarioFPfPf
getSlopeNormalAccele__6TMarioFPfPf: # 0x8025c844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r3, 0x0
    bl      isForceSlip__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025c888
    lfs     f0, 0x2b40(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2b54(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c984

branch_0x8025c888:
    lwz     r3, 0xe0(r29)
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0xc
    beq-    branch_0x8025c8a8
    cmplwi  r4, 0x800c
    beq-    branch_0x8025c8a8
    cmplwi  r4, 0xa00c
    bne-    branch_0x8025c8b0
branch_0x8025c8a8:
    li      r0, 0x1
    b       branch_0x8025c8b4

branch_0x8025c8b0:
    li      r0, 0x0
branch_0x8025c8b4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c8d0
    lfs     f0, 0x2c24(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2c38(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c984

branch_0x8025c8d0:
    cmplwi  r4, 0x2
    beq-    branch_0x8025c8e0
    cmplwi  r4, 0x8002
    bne-    branch_0x8025c8e8
branch_0x8025c8e0:
    li      r0, 0x1
    b       branch_0x8025c8ec

branch_0x8025c8e8:
    li      r0, 0x0
branch_0x8025c8ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c908
    lfs     f0, 0x2d08(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2d1c(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c984

branch_0x8025c908:
    cmplwi  r4, 0x4
    beq-    branch_0x8025c928
    cmplwi  r4, 0x4004
    beq-    branch_0x8025c928
    cmplwi  r4, 0x8004
    beq-    branch_0x8025c928
    cmplwi  r4, 0xc004
    bne-    branch_0x8025c930
branch_0x8025c928:
    li      r0, 0x1
    b       branch_0x8025c934

branch_0x8025c930:
    li      r0, 0x0
branch_0x8025c934:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025c974
    lfs     f1, 0x38(r3)
    lfs     f0, -0xdf4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025c960
    lfs     f0, 0x2ed0(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2ee4(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c984

branch_0x8025c960:
    lfs     f0, 0x2dec(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x2e00(r29)
    stfs    f0, 0x0(r31)
    b       branch_0x8025c984

branch_0x8025c974:
    lfs     f0, 0x2978(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x298c(r29)
    stfs    f0, 0x0(r31)
branch_0x8025c984:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl doRunningAnimation__6TMarioFv
doRunningAnimation__6TMarioFv: # 0x8025c9a0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stfd    f28, 0xb8(sp)
    stfd    f27, 0xb0(sp)
    stfd    f26, 0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    mr      r30, r3
    lfs     f1, 0x8c(r3)
    lfs     f0, 0xb0(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025c9e8
    b       branch_0x8025c9ec

branch_0x8025c9e8:
    fmr     f1, f0
branch_0x8025c9ec:
    lfs     f0, -0xea8(r2)
    fmr     f29, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025ca00
    fmr     f29, f0
branch_0x8025ca00:
    lfs     f31, -0xe9c(r2)
    li      r31, 0x0
    lfs     f27, -0xe6c(r2)
    lfs     f26, -0xea4(r2)
    b       branch_0x8025cc54

branch_0x8025ca14:
    lhz     r0, 0xfa(r30)
    cmpwi   r0, 0x92
    beq-    branch_0x8025cbac
    bge-    branch_0x8025ca30
    cmpwi   r0, 0x72
    beq-    branch_0x8025ca38
    b       branch_0x8025ca38

branch_0x8025ca30:
    cmpwi   r0, 0xf5
    beq-    branch_0x8025cbfc
branch_0x8025ca38:
    lfs     f0, 0x5b4(r30)
    lfs     f1, 0xb0(r30)
    fsubs   f0, f0, f31
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8025ca68
    fmr     f1, f31
    addi    r3, r30, 0x0
    li      r4, 0xf5
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
    b       branch_0x8025cc44

branch_0x8025ca68:
    lfs     f0, 0xf44(r30)
    fcmpo   cr0, f29, f0
    bge-    branch_0x8025ca8c
    fmr     f1, f31
    addi    r3, r30, 0x0
    li      r4, 0x92
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
    b       branch_0x8025cc44

branch_0x8025ca8c:
    lwz     r0, 0x118(r30)
    lfs     f1, 0xf80(r30)
    lfs     f0, 0xf6c(r30)
    rlwinm. r0, r0, 0, 14, 15
    fmadds  f30, f29, f1, f0
    beq-    branch_0x8025caac
    li      r0, 0x1
    b       branch_0x8025cab0

branch_0x8025caac:
    li      r0, 0x0
branch_0x8025cab0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025cad8
    lfs     f1, 0x14(r30)
    lfs     f0, 0xfbc(r30)
    lfs     f2, 0xf0(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8025cad8
    li      r0, 0x1
    b       branch_0x8025cadc

branch_0x8025cad8:
    li      r0, 0x0
branch_0x8025cadc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025cb10
    lfs     f2, 0xf0(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0xfd0(r30)
    fsubs   f3, f2, f1
    lfs     f2, 0xfbc(r30)
    fsubs   f1, f31, f0
    lfs     f0, 0xfe4(r30)
    fdivs   f2, f3, f2
    fnmsubs  f1, f2, f1, f31
    fmuls   f0, f1, f0
    fmuls   f30, f30, f0
branch_0x8025cb10:
    fmr     f1, f30
    addi    r3, r30, 0x0
    li      r4, 0x72
    bl      setAnimation__6TMarioFif
    lfs     f0, 0xf94(r30)
    lfs     f2, 0xfa8(r30)
    fcmpo   cr0, f30, f0
    bge-    branch_0x8025cb34
    lfs     f28, -0xea4(r2)
branch_0x8025cb34:
    fcmpo   cr0, f2, f30
    bge-    branch_0x8025cb40
    lfs     f28, -0xe9c(r2)
branch_0x8025cb40:
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x8025cb64
    fcmpo   cr0, f30, f2
    cror    2, 0, 2
    bne-    branch_0x8025cb64
    fsubs   f1, f30, f0
    fsubs   f0, f2, f0
    fdivs   f28, f1, f0
branch_0x8025cb64:
    fsubs   f0, f31, f28
    mr      r3, r30
    stfs    f0, 0x41c(r30)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025cb90
    lwz     r3, 0x3a8(r30)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x18(r3)
    stfs    f26, 0x50(r3)
    b       branch_0x8025cba4

branch_0x8025cb90:
    lwz     r3, 0x3a8(r30)
    lfs     f0, 0x41c(r30)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x18(r3)
    stfs    f0, 0x50(r3)
branch_0x8025cba4:
    li      r0, 0x0
    b       branch_0x8025cc44

branch_0x8025cbac:
    lfs     f0, 0xf30(r30)
    fcmpo   cr0, f29, f0
    ble-    branch_0x8025cbd0
    lfs     f1, -0xe9c(r2)
    addi    r3, r30, 0x0
    li      r4, 0x72
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
    b       branch_0x8025cc44

branch_0x8025cbd0:
    fmr     f1, f29
    fcmpo   cr0, f1, f27
    bge-    branch_0x8025cbe0
    fmr     f1, f27
branch_0x8025cbe0:
    lfs     f0, 0xf58(r30)
    addi    r3, r30, 0x0
    li      r4, 0x92
    fmuls   f1, f1, f0
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
    b       branch_0x8025cc44

branch_0x8025cbfc:
    lfs     f0, 0x5b4(r30)
    lfs     f1, 0xb0(r30)
    fsubs   f0, f0, f31
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025cc28
    fmr     f1, f31
    addi    r3, r30, 0x0
    li      r4, 0x72
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
    b       branch_0x8025cc44

branch_0x8025cc28:
    lfs     f1, 0xf80(r30)
    mr      r3, r30
    lfs     f0, 0xf6c(r30)
    li      r4, 0xf5
    fmadds  f1, f29, f1, f0
    bl      setAnimation__6TMarioFif
    li      r0, 0x0
branch_0x8025cc44:
    addi    r31, r31, 0x1
    cmpwi   r31, 0x4
    addi    r31, r31, 0x1
    bgt-    branch_0x8025cc5c
branch_0x8025cc54:
    cmpwi   r0, 0x0
    bne+    branch_0x8025ca14
branch_0x8025cc5c:
    lwz     r0, 0xdc(sp)
    li      r3, 0x1
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lfd     f28, 0xb8(sp)
    lfd     f27, 0xb0(sp)
    lfd     f26, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    addi    sp, sp, 0xd8
    blr


.globl isRunningInWater__6TMarioFv
isRunningInWater__6TMarioFv: # 0x8025cc90
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8025cca4
    li      r0, 0x1
    b       branch_0x8025cca8

branch_0x8025cca4:
    li      r0, 0x0
branch_0x8025cca8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025ccd0
    lfs     f1, 0x14(r3)
    lfs     f0, 0xfbc(r3)
    lfs     f2, 0xf0(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8025ccd0
    li      r3, 0x1
    blr

branch_0x8025ccd0:
    li      r3, 0x0
    blr


.globl considerRotateStart__6TMarioFv
considerRotateStart__6TMarioFv: # 0x8025ccd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0xc
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x1
    bne-    branch_0x8025cd50
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025cd50
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025cd50
    lwz     r0, 0xc(sp)
    cmpwi   r0, 0x0
    ble-    branch_0x8025cd38
    addi    r3, r31, 0x0
    li      r4, 0x441
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025cd54

branch_0x8025cd38:
    addi    r3, r31, 0x0
    li      r4, 0x442
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025cd54

branch_0x8025cd50:
    li      r3, 0x0
branch_0x8025cd54:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_MarioRun_cpp
__sinit_MarioRun_cpp: # 0x8025cd68
    mflr    r0
    lis     r3, unk_803fb9e8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fb9e8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cdb0
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8025cdb0:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cde0
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8025cde0:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8025ce10
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8025ce10:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8025ce40
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8025ce40:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8025ce70
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8025ce70:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cea0
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8025cea0:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8025ced0
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8025ced0:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cf00
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8025cf00:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cf30
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8025cf30:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cf60
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8025cf60:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cf90
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8025cf90:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cfc0
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8025cfc0:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8025cff0
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8025cff0:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8025d020
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8025d020:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8025d050
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8025d050:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

