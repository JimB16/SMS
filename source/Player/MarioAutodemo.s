
.globl demoMain__6TMarioFv
demoMain__6TMarioFv: # 0x8023fd30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x60(sp)
    lis     r30, 0x2
    addi    r0, r30, 0x338
    lwz     r5, 0x7c(r3)
    li      r3, 0x0
    cmpw    r5, r0
    beq-    branch_0x80240020
    bge-    branch_0x8023fdc0
    cmpwi   r5, 0x1336
    beq-    branch_0x80240014
    bge-    branch_0x8023fd9c
    cmpwi   r5, 0x1310
    beq-    branch_0x8023fe2c
    bge-    branch_0x8023fd88
    cmpwi   r5, 0x1302
    beq-    branch_0x8023fe14
    b       branch_0x80240058

branch_0x8023fd88:
    cmpwi   r5, 0x1322
    bge-    branch_0x80240058
    cmpwi   r5, 0x1320
    bge-    branch_0x8023fe5c
    b       branch_0x80240058

branch_0x8023fd9c:
    cmpwi   r5, 0x133e
    beq-    branch_0x80240038
    bge-    branch_0x8023fdb4
    cmpwi   r5, 0x1338
    bge-    branch_0x80240058
    b       branch_0x80240008

branch_0x8023fdb4:
    cmpwi   r5, 0x1340
    bge-    branch_0x80240058
    b       branch_0x80240048

branch_0x8023fdc0:
    lis     r4, 0x1000
    addi    r0, r4, 0x1123
    cmpw    r5, r0
    beq-    branch_0x8023ff70
    bge-    branch_0x8023fdf4
    addi    r0, r30, 0x1313
    cmpw    r5, r0
    beq-    branch_0x8023fe44
    bge-    branch_0x80240058
    addi    r0, r30, 0x33c
    cmpw    r5, r0
    beq-    branch_0x8024002c
    b       branch_0x80240058

branch_0x8023fdf4:
    addi    r0, r4, 0x192a
    cmpw    r5, r0
    beq-    branch_0x8023ffbc
    bge-    branch_0x80240058
    addi    r0, r4, 0x1308
    cmpw    r5, r0
    beq-    branch_0x8023fe20
    b       branch_0x80240058

branch_0x8023fe14:
    mr      r3, r31
    bl      winDemo__6TMarioFv
    b       branch_0x80240058

branch_0x8023fe20:
    mr      r3, r31
    bl      readBillboard__6TMarioFv
    b       branch_0x80240058

branch_0x8023fe2c:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x122
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
    b       branch_0x80240058

branch_0x8023fe44:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x79
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
    b       branch_0x80240058

branch_0x8023fe5c:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8023fe7c
    addi    r3, r31, 0x0
    li      r4, SOUND_7884
    bl      startVoice__6TMarioFUl
    li      r0, 0x1
    sth     r0, 0x84(r31)
branch_0x8023fe7c:
    mr      r3, r31
    bl      stopProcess__6TMarioFv
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8023ff68
    lhz     r0, 0xfa(r31)
    cmplwi  r0, 0x5f
    beq-    branch_0x8023feb0
    cmplwi  r0, 0x60
    beq-    branch_0x8023feb0
    cmplwi  r0, 0xe9
    bne-    branch_0x8023ff00
branch_0x8023feb0:
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, -0x149c(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f1, r4, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f0, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    b       branch_0x8023ff4c

branch_0x8023ff00:
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, -0x149c(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f1, r4, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f0, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
branch_0x8023ff4c:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80240058

branch_0x8023ff68:
    li      r3, 0x0
    b       branch_0x80240058

branch_0x8023ff70:
    mr      r3, r31
    lfs     f1, -0x1498(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xe8
    bl      setAnimation__6TMarioFif
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x8023ffb4
    addi    r3, r31, 0x0
    addi    r4, r30, MARIOSTATUS_467
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8023ffb4:
    li      r3, 0x0
    b       branch_0x80240058

branch_0x8023ffbc:
    mr      r3, r31
    lfs     f1, -0x1498(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x56
    bl      setAnimation__6TMarioFif
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x80240000
    addi    r3, r31, 0x0
    addi    r4, r30, MARIOSTATUS_467
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80240000:
    li      r3, 0x0
    b       branch_0x80240058

branch_0x80240008:
    mr      r3, r31
    bl      warpOut__6TMarioFv
    b       branch_0x80240058

branch_0x80240014:
    mr      r3, r31
    bl      warpIn__6TMarioFv
    b       branch_0x80240058

branch_0x80240020:
    mr      r3, r31
    bl      electricDamage__6TMarioFv
    b       branch_0x80240058

branch_0x8024002c:
    mr      r3, r31
    bl      footDowning__6TMarioFv
    b       branch_0x80240058

branch_0x80240038:
    mr      r3, r31
    bl      stopProcess__6TMarioFv
    li      r3, 0x0
    b       branch_0x80240058

branch_0x80240048:
    lhz     r0, 0x114(r31)
    li      r3, 0x0
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x114(r31)
branch_0x80240058:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl footDowning__6TMarioFv
footDowning__6TMarioFv: # 0x80240070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x88(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80240100
    bge-    branch_0x802400a4
    cmpwi   r0, 0x0
    beq-    branch_0x802400b0
    bge-    branch_0x802400d8
    b       branch_0x80240198

branch_0x802400a4:
    cmpwi   r0, 0x4
    bge-    branch_0x80240198
    b       branch_0x8024013c

branch_0x802400b0:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x125
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80240198
    li      r0, 0x2
    stw     r0, 0x88(r31)
    b       branch_0x80240198

branch_0x802400d8:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x123
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80240198
    li      r0, 0x3
    stw     r0, 0x88(r31)
    b       branch_0x80240198

branch_0x80240100:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x126
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80240198
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802401a4

branch_0x8024013c:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x124
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0x1494(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8024016c
    mr      r3, r31
    bl      sinkInSandEffect__6TMarioFv
branch_0x8024016c:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80240198
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802401a4

branch_0x80240198:
    mr      r3, r31
    bl      stopProcess__6TMarioFv
    li      r3, 0x0
branch_0x802401a4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl electricDamage__6TMarioFv
electricDamage__6TMarioFv: # 0x802401b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lhz     r0, 0x84(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8024021c
    addi    r3, r31, 0x0
    li      r4, SOUND_7844
    bl      startVoice__6TMarioFUl
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x7a
    bl      setAnimation__6TMarioFif
    lbz     r4, 0x3a30(r31)
    mr      r3, r31
    bl      decHP__6TMarioFi
    addi    r3, r31, 0x0
    li      r4, 0x16
    li      r5, 0x1
    bl      rumbleStart__6TMarioFii
    li      r0, 0x1
    sth     r0, 0x84(r31)
branch_0x8024021c:
    mr      r3, r31
    bl      elecEffect__6TMarioFv
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x78
    ble-    branch_0x80240320
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, -0x1498(rtoc)
    li      r4, SOUND_7852
    stfs    f0, 0x10(r3)
    mr      r3, r31
    lhz     r5, 0x86(r31)
    addi    r0, r5, 0x1
    sth     r0, 0x86(r31)
    bl      startVoice__6TMarioFUl
    lwz     r3, 0x53c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80240284
    lfs     f1, -0x1490(rtoc)
    li      r4, 0x258
    lfs     f2, -0x148c(rtoc)
    lfs     f3, -0x1488(rtoc)
    bl      tremble__19TTrembleModelEffectFfffi
branch_0x80240284:
    mr      r3, r31
    bl      elecEndEffect__6TMarioFv
    lhz     r4, 0x96(r31)
    mr      r3, r31
    lwz     r0, -0x5eac(r13)
    li      r6, 0x3
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0x10(r31)
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    addi    r4, r31, 0x474
    li      r5, 0x0
    fadds   f0, f1, f0
    li      r9, 0x3c
    stfs    f0, 0x484(r31)
    lhz     r7, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r8, -0x5ea4(r13)
    sraw    r0, r7, r0
    lfs     f1, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f0, r8, r0
    fadds   f0, f1, f0
    stfs    f0, 0x48c(r31)
    lwz     r12, 0x0(r31)
    lbz     r7, 0x3a58(r31)
    lwz     r12, 0xdc(r12)
    lfs     f1, 0x3a80(r31)
    mtlr    r12
    lbz     r8, 0x3a6c(r31)
    lfs     f2, -0x1498(rtoc)
    blrl
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_88d
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80240324

branch_0x80240320:
    li      r3, 0x0
branch_0x80240324:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl warpOut__6TMarioFv
warpOut__6TMarioFv: # 0x8024033c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lhz     r3, 0x86(r3)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lhz     r0, 0x114(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    lhz     r0, 0x84(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x802404b4
    bge-    branch_0x80240388
    cmpwi   r0, 0x0
    beq-    branch_0x80240394
    bge-    branch_0x80240440
    b       branch_0x802405e0

branch_0x80240388:
    cmpwi   r0, 0x4
    bge-    branch_0x802405e0
    b       branch_0x80240514

branch_0x80240394:
    lhz     r0, 0x114(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    lwz     r0, 0x88(r31)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x2
    bne-    branch_0x802403c4
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x13b
    bl      setAnimation__6TMarioFif
    b       branch_0x802403d4

branch_0x802403c4:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x12e
    bl      setAnimation__6TMarioFif
branch_0x802403d4:
    lha     r0, 0x96(r31)
    lis     r5, 0x4330
    lwz     r4, 0x88(r31)
    addi    r3, r31, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    clrlwi  r0, r4, 24
    lfd     f1, -0x1470(rtoc)
    extrwi  r4, r4, 8, 16
    stw     r5, 0x20(sp)
    lfd     f3, -0x1478(rtoc)
    stw     r0, 0x2c(sp)
    lfd     f0, 0x20(sp)
    stw     r5, 0x28(sp)
    fsubs   f0, f0, f1
    lfs     f1, -0x1480(rtoc)
    lfd     f2, 0x28(sp)
    lfs     f4, -0x1484(rtoc)
    fsubs   f2, f2, f3
    fmuls   f0, f1, f0
    fmadds  f1, f4, f2, f0
    bl      warpOutEffect__6TMarioFif
    li      r0, 0x1
    sth     r0, 0x84(r31)
    li      r0, 0x0
    sth     r0, 0x86(r31)
    b       branch_0x802405e0

branch_0x80240440:
    lwz     r0, 0x88(r31)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x80240454
    li      r3, 0x70
    b       branch_0x80240458

branch_0x80240454:
    li      r3, 0xb4
branch_0x80240458:
    lhz     r0, 0x86(r31)
    cmpw    r0, r3
    blt-    branch_0x802405e0
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80240478
    li      r0, 0x1
    b       branch_0x8024047c

branch_0x80240478:
    li      r0, 0x0
branch_0x8024047c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802404a8
    lhz     r0, 0x114(r31)
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_891
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802405e4

branch_0x802404a8:
    li      r0, 0x2
    sth     r0, 0x84(r31)
    b       branch_0x802405e0

branch_0x802404b4:
    lhz     r0, 0x114(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    lwz     r0, 0x88(r31)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x2
    bne-    branch_0x802404e4
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x13c
    bl      setAnimation__6TMarioFif
    b       branch_0x802404f4

branch_0x802404e4:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x13d
    bl      setAnimation__6TMarioFif
branch_0x802404f4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x802405e0
    li      r0, 0x3
    sth     r0, 0x84(r31)
    b       branch_0x802405e0

branch_0x80240514:
    lhz     r0, 0x114(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    lwz     r0, 0x88(r31)
    clrlwi  r0, r0, 24
    cmpwi   r0, 0x1
    beq-    branch_0x80240568
    bge-    branch_0x80240540
    cmpwi   r0, 0x0
    bge-    branch_0x8024054c
    b       branch_0x802405e0

branch_0x80240540:
    cmpwi   r0, 0x3
    bge-    branch_0x802405e0
    b       branch_0x802405a4

branch_0x8024054c:
    lis     r4, 0xc00
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_230
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802405e4

branch_0x80240568:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x10e
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802405e0
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802405e4

branch_0x802405a4:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x12d
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802405e0
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802405e4

branch_0x802405e0:
    li      r3, 0x0
branch_0x802405e4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl toroccoStart__6TMarioFv
toroccoStart__6TMarioFv: # 0x802405f8
    mflr    r0
    lis     r4, 0x80
    stw     r0, 0x4(sp)
    addi    r4, r4, MARIOSTATUS_447
    li      r5, 0x0
    stwu    sp, -0x18(sp)
    li      r6, 0x1
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lhz     r0, 0x114(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    lwz     r3, 0x3fc(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80240668
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x3fc(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1468(rtoc)
    li      r4, 0x0
    stfs    f0, 0xc(r3)
    lwz     r3, 0x3fc(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1498(rtoc)
    stfs    f0, 0x10(r3)
branch_0x80240668:
    lwz     r3, 0x400(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802406a4
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x400(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1468(rtoc)
    li      r4, 0x0
    stfs    f0, 0xc(r3)
    lwz     r3, 0x400(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1498(rtoc)
    stfs    f0, 0x10(r3)
branch_0x802406a4:
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl waitingStart__6TMarioFPCQ29JGeometry8TVec3_f_f
waitingStart__6TMarioFPCQ29JGeometry8TVec3_f_f: # 0x802406bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      isUnUsualStageStart__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802406f4
    li      r3, 0x1
    b       branch_0x802407a0

branch_0x802406f4:
    lhz     r0, 0x114(r30)
    cmplwi  r31, 0x0
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x114(r30)
    beq-    branch_0x8024073c
    fmr     f1, f31
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      warpRequest__6TMarioFRCQ29JGeometry8TVec3_f_f
    li      r3, 0x0
    sth     r3, 0x94(r30)
    lfs     f0, -0x1464(rtoc)
    fmuls   f0, f0, f31
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x96(r30)
    sth     r3, 0x98(r30)
branch_0x8024073c:
    lfs     f2, -0x1460(rtoc)
    mr      r3, r30
    lfs     f0, 0x14(r30)
    addi    r4, r30, 0xec
    lfs     f1, 0x10(r30)
    fadds   f2, f2, f0
    lfs     f3, 0x18(r30)
    addi    r5, r30, 0xe0
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f0, 0xec(r30)
    addi    r3, r30, 0x0
    li      r4, 0xc3
    stfs    f0, 0x2bc(r30)
    lfs     f1, -0x14a0(rtoc)
    bl      setAnimation__6TMarioFif
    lhz     r0, 0x114(r30)
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    ori     r0, r0, 0x2
    sth     r0, 0x114(r30)
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
branch_0x802407a0:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl returnStart__6TMarioFPCQ29JGeometry8TVec3_f_fbi
returnStart__6TMarioFPCQ29JGeometry8TVec3_f_fbi: # 0x802407bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r0, 0x7c(r3)
    cmplwi  r0, 0x133f
    bne-    branch_0x80240934
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x1
    slwi    r31, r6, 8
    bne-    branch_0x80240890
    lhz     r0, 0x114(r30)
    cmplwi  r4, 0x0
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x114(r30)
    beq-    branch_0x8024083c
    fmr     f1, f31
    mr      r3, r30
    bl      warpRequest__6TMarioFRCQ29JGeometry8TVec3_f_f
    li      r3, 0x0
    sth     r3, 0x94(r30)
    lfs     f0, -0x1464(rtoc)
    fmuls   f0, f0, f31
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    sth     r0, 0x96(r30)
    sth     r3, 0x98(r30)
branch_0x8024083c:
    lfs     f2, -0x1460(rtoc)
    mr      r3, r30
    lfs     f0, 0x14(r30)
    addi    r4, r30, 0xec
    lfs     f1, 0x10(r30)
    fadds   f2, f2, f0
    lfs     f3, 0x18(r30)
    addi    r5, r30, 0xe0
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f0, 0xec(r30)
    addi    r3, r30, 0x0
    li      r4, 0xc3
    stfs    f0, 0x2bc(r30)
    lfs     f1, -0x14a0(rtoc)
    bl      setAnimation__6TMarioFif
    addi    r3, r30, 0x0
    ori     r5, r31, 0x2
    li      r4, MARIOSTATUS_1337
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024092c

branch_0x80240890:
    lhz     r0, 0x114(r30)
    cmplwi  r4, 0x0
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x114(r30)
    beq-    branch_0x802408dc
    lfs     f0, -0x1484(rtoc)
    mr      r3, r30
    fadds   f31, f0, f31
    fmr     f1, f31
    bl      warpRequest__6TMarioFRCQ29JGeometry8TVec3_f_f
    li      r3, 0x0
    sth     r3, 0x94(r30)
    lfs     f0, -0x1464(rtoc)
    fmuls   f0, f0, f31
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    sth     r0, 0x96(r30)
    sth     r3, 0x98(r30)
branch_0x802408dc:
    lfs     f2, -0x1460(rtoc)
    mr      r3, r30
    lfs     f0, 0x14(r30)
    addi    r4, r30, 0xec
    lfs     f1, 0x10(r30)
    fadds   f2, f2, f0
    lfs     f3, 0x18(r30)
    addi    r5, r30, 0xe0
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f0, 0xec(r30)
    addi    r3, r30, 0x0
    li      r4, 0xc3
    stfs    f0, 0x2bc(r30)
    lfs     f1, -0x14a0(rtoc)
    bl      setAnimation__6TMarioFif
    addi    r3, r30, 0x0
    ori     r5, r31, 0x1
    li      r4, MARIOSTATUS_1337
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8024092c:
    li      r3, 0x1
    b       branch_0x80240938

branch_0x80240934:
    li      r3, 0x0
branch_0x80240938:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl rollingStart__6TMarioFPCQ29JGeometry8TVec3_f_f
rollingStart__6TMarioFPCQ29JGeometry8TVec3_f_f: # 0x80240954
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      isUnUsualStageStart__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8024098c
    li      r3, 0x1
    b       branch_0x80240a3c

branch_0x8024098c:
    lwz     r0, 0x7c(r30)
    cmplwi  r0, 0x133f
    bne-    branch_0x80240a38
    lhz     r0, 0x114(r30)
    cmplwi  r31, 0x0
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x114(r30)
    beq-    branch_0x802409e0
    fmr     f1, f31
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      warpRequest__6TMarioFRCQ29JGeometry8TVec3_f_f
    li      r3, 0x0
    sth     r3, 0x94(r30)
    lfs     f0, -0x1464(rtoc)
    fmuls   f0, f0, f31
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x96(r30)
    sth     r3, 0x98(r30)
branch_0x802409e0:
    lfs     f2, -0x1460(rtoc)
    mr      r3, r30
    lfs     f0, 0x14(r30)
    addi    r4, r30, 0xec
    lfs     f1, 0x10(r30)
    fadds   f2, f2, f0
    lfs     f3, 0x18(r30)
    addi    r5, r30, 0xe0
    bl      checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
    lfs     f0, 0xec(r30)
    addi    r3, r30, 0x0
    li      r4, 0xc3
    stfs    f0, 0x2bc(r30)
    lfs     f1, -0x14a0(rtoc)
    bl      setAnimation__6TMarioFif
    addi    r3, r30, 0x0
    li      r4, MARIOSTATUS_1337
    li      r5, 0x200
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80240a3c

branch_0x80240a38:
    li      r3, 0x0
branch_0x80240a3c:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl isUnUsualStageStart__6TMarioFv
isUnUsualStageStart__6TMarioFv: # 0x80240a58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r4, gpMarDirector(r13)
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x3a
    bne-    branch_0x80240b34
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80240a90
    cmplwi  r0, 0x1
    bne-    branch_0x80240b34
branch_0x80240a90:
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_447
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lhz     r0, 0x114(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    lwz     r3, 0x3fc(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80240af0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x3fc(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1468(rtoc)
    li      r4, 0x0
    stfs    f0, 0xc(r3)
    lwz     r3, 0x3fc(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1498(rtoc)
    stfs    f0, 0x10(r3)
branch_0x80240af0:
    lwz     r3, 0x400(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80240b2c
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x400(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1468(rtoc)
    li      r4, 0x0
    stfs    f0, 0xc(r3)
    lwz     r3, 0x400(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1498(rtoc)
    stfs    f0, 0x10(r3)
branch_0x80240b2c:
    li      r3, 0x1
    b       branch_0x80240c08

branch_0x80240b34:
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80240c04
    lhz     r0, 0x114(r31)
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x1000
    stw     r0, 0x118(r31)
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x2000
    stw     r0, 0x118(r31)
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0x118(r31)
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80240b84
    li      r0, 0x1
    b       branch_0x80240b88

branch_0x80240b84:
    li      r0, 0x0
branch_0x80240b88:
    clrlwi. r0, r0, 24
    beq-    branch_0x80240ba0
    lwz     r3, 0x3e4(r31)
    li      r4, 0x2
    li      r5, 0x1
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
branch_0x80240ba0:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80240bb4
    li      r0, 0x1
    b       branch_0x80240bb8

branch_0x80240bb4:
    li      r0, 0x0
branch_0x80240bb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80240bd0
    lwz     r3, 0x3e4(r31)
    li      r5, 0x1
    lbz     r4, 0x1c85(r3)
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
branch_0x80240bd0:
    lwz     r3, 0x3e0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80240be8
    lhz     r0, 0x4(r3)
    ori     r0, r0, 0x2
    sth     r0, 0x4(r3)
branch_0x80240be8:
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_891
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80240c08

branch_0x80240c04:
    li      r3, 0x0
branch_0x80240c08:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl warpIn__6TMarioFv
warpIn__6TMarioFv: # 0x80240c1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stw     r31, 0xf4(sp)
    mr      r31, r3
    stw     r30, 0xf0(sp)
    lhz     r3, 0x86(r3)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, -0x145c(rtoc)
    addi    r30, r3, 0xac
    lwz     r3, 0xac(r3)
    lwz     r0, 0x4(r30)
    stw     r3, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x8(r30)
    stw     r0, 0xd8(sp)
    lfs     f1, 0xd4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lhz     r0, 0x84(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x80241020
    bge-    branch_0x80240c90
    cmpwi   r0, 0x0
    beq-    branch_0x80240c9c
    bge-    branch_0x80240f68
    b       branch_0x802410cc

branch_0x80240c90:
    cmpwi   r0, 0x4
    bge-    branch_0x802410cc
    b       branch_0x802410c0

branch_0x80240c9c:
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x1
    bgt-    branch_0x80240ddc
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80240cc4
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      getOffYoshi__6TMarioFb
branch_0x80240cc4:
    lwz     r4, 0x68(r31)
    lfs     f0, 0x0(r30)
    lwz     r3, 0x78(r4)
    lhz     r0, 0x72(r4)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f1, 0xc(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x45c(r31)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0x4(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x460(r31)
    lfs     f1, 0x2c(r3)
    lfs     f0, 0x8(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x464(r31)
    lfs     f1, 0x45c(r31)
    lfs     f3, 0x464(r31)
    lfs     f0, 0x460(r31)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x1458(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80240d54
    lfs     f0, -0x1498(rtoc)
    stfs    f0, 0x464(r31)
    stfs    f0, 0x460(r31)
    stfs    f0, 0x45c(r31)
    b       branch_0x80240d84

branch_0x80240d54:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x14a0(rtoc)
    lfs     f0, 0x45c(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x45c(r31)
    lfs     f0, 0x460(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x460(r31)
    lfs     f0, 0x464(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x464(r31)
branch_0x80240d84:
    mr      r3, r31
    bl      warpInLight__6TMarioFv
    lwz     r5, 0x68(r31)
    li      r4, 0x2
    lbz     r0, 0x71(r5)
    cmpwi   r0, 0x1
    beq-    branch_0x80240dc4
    bge-    branch_0x80240db0
    cmpwi   r0, 0x0
    bge-    branch_0x80240dbc
    b       branch_0x80240dd0

branch_0x80240db0:
    cmpwi   r0, 0x3
    bge-    branch_0x80240dd0
    b       branch_0x80240dcc

branch_0x80240dbc:
    li      r4, 0x2
    b       branch_0x80240dd0

branch_0x80240dc4:
    li      r4, 0x3
    b       branch_0x80240dd0

branch_0x80240dcc:
    li      r4, 0x4
branch_0x80240dd0:
    lwz     r3, gpMarDirector(r13)
    clrlwi  r4, r4, 24
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
branch_0x80240ddc:
    lhz     r0, 0x114(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x2
    sth     r0, 0x114(r31)
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, -0x1498(rtoc)
    addi    r4, r31, 0x10
    stfs    f0, 0xc(r3)
    addi    r3, sp, 0x74
    lwz     r0, 0xd0(sp)
    lwz     r5, 0xd4(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0xd8(sp)
    stw     r5, 0x78(sp)
    stw     r0, 0x7c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x74(sp)
    addi    r3, sp, 0x5c
    lwz     r4, 0x78(sp)
    stw     r0, 0xc(sp)
    lwz     r0, 0x7c(sp)
    stw     r4, 0x10(sp)
    lfs     f1, -0x1454(rtoc)
    stw     r0, 0x14(sp)
    lwz     r5, 0xc(sp)
    lwz     r4, 0x10(sp)
    stw     r5, 0xc0(sp)
    lwz     r0, 0x14(sp)
    stw     r5, 0x5c(sp)
    stw     r4, 0xc4(sp)
    stw     r4, 0x60(sp)
    stw     r0, 0xc8(sp)
    stw     r0, 0x64(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x5c(sp)
    addi    r3, sp, 0x68
    lwz     r5, 0x60(sp)
    addi    r4, sp, 0x98
    stw     r0, 0x98(sp)
    lwz     r0, 0x64(sp)
    stw     r5, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r5, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r5, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x70(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x70(sp)
    stw     r0, 0x18(r31)
    lfs     f0, 0xc4(sp)
    lfs     f3, 0xc8(sp)
    fmuls   f1, f0, f0
    lfs     f2, 0xc0(sp)
    fmuls   f3, f3, f3
    lfs     f0, -0x1498(rtoc)
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80240ee8
    b       branch_0x80240f0c

branch_0x80240ee8:
    frsqrte f3, f4
    lfs     f2, -0x1468(rtoc)
    lfs     f0, -0x1450(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80240f0c:
    lfs     f2, -0x144c(rtoc)
    lfs     f1, 0x41f0(r31)
    lfs     f0, -0x1498(rtoc)
    fnmsubs  f1, f2, f4, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80240f2c
    lwz     r3, 0x53c(r31)
    bl      clash__19TTrembleModelEffectFf
branch_0x80240f2c:
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x78
    ble-    branch_0x802410cc
    li      r0, 0x0
    sth     r0, 0x86(r31)
    mr      r3, r31
    bl      warpInEffect__6TMarioFv
    lfs     f0, -0x1498(rtoc)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stfs    f0, 0x468(r31)
    li      r4, SOUND_fffe
    sth     r0, 0x84(r31)
    bl      startVoice__6TMarioFUl
    b       branch_0x802410cc

branch_0x80240f68:
    lha     r0, 0x41b4(r31)
    lis     r3, 0x4330
    lhz     r4, 0x86(r31)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x1478(rtoc)
    stw     r4, 0xec(sp)
    lfd     f1, -0x1470(rtoc)
    stw     r0, 0xe4(sp)
    stw     r3, 0xe8(sp)
    stw     r3, 0xe0(sp)
    lfd     f2, 0xe8(sp)
    lfd     f0, 0xe0(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x80240fc4
    lhz     r0, 0x114(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x114(r31)
    li      r5, 0x14
    bl      rumbleStart__6TMarioFii
branch_0x80240fc4:
    lha     r0, 0x41c8(r31)
    lis     r3, 0x4330
    lhz     r4, 0x86(r31)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x1478(rtoc)
    stw     r4, 0xe4(sp)
    lfd     f1, -0x1470(rtoc)
    stw     r0, 0xec(sp)
    stw     r3, 0xe0(sp)
    stw     r3, 0xe8(sp)
    lfd     f2, 0xe0(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x802410cc
    li      r0, 0x0
    sth     r0, 0x86(r31)
    li      r0, 0x2
    lfs     f0, 0x4204(r31)
    stfs    f0, 0x468(r31)
    sth     r0, 0x84(r31)
    b       branch_0x802410cc

branch_0x80241020:
    lhz     r0, 0x114(r31)
    addi    r3, r31, 0x0
    li      r4, 0x14
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x114(r31)
    lha     r0, 0x27f8(r31)
    srawi   r5, r0, 1
    addze   r5, r5
    bl      rumbleStart__6TMarioFii
    lha     r0, 0x41dc(r31)
    lis     r3, 0x4330
    lhz     r4, 0x86(r31)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x1478(rtoc)
    stw     r4, 0xe4(sp)
    lfd     f1, -0x1470(rtoc)
    stw     r0, 0xec(sp)
    stw     r3, 0xe0(sp)
    stw     r3, 0xe8(sp)
    lfd     f2, 0xe0(sp)
    lfd     f0, 0xe8(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x802410cc
    lhz     r3, 0x114(r31)
    li      r0, 0x0
    addi    r4, r31, 0x0
    rlwinm  r3, r3, 0, 31, 29
    sth     r3, 0x114(r31)
    li      r5, 0xe
    sth     r0, 0x86(r31)
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x3
    sth     r0, 0x84(r31)
    b       branch_0x802410cc

branch_0x802410c0:
    lwz     r0, 0x118(r31)
    oris    r0, r0, 0x20
    stw     r0, 0x118(r31)
branch_0x802410cc:
    lwz     r0, 0xfc(sp)
    li      r3, 0x0
    lwz     r31, 0xf4(sp)
    lwz     r30, 0xf0(sp)
    mtlr    r0
    addi    sp, sp, 0xf8
    blr


.globl jumpingDemoCommon__6TMarioFUlif
jumpingDemoCommon__6TMarioFUlif: # 0x802410e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      setPlayerVelocity__6TMarioFf
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      setAnimation__6TMarioFif
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x80241150
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80241154

branch_0x80241150:
    li      r3, 0x0
branch_0x80241154:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl readBillboard__6TMarioFv
readBillboard__6TMarioFv: # 0x80241170
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    lwz     r3, gpMarDirector(r13)
    lhz     r0, 0x84(r31)
    lwz     r5, 0xa0(r3)
    cmpwi   r0, 0x1
    addi    r30, r5, 0x0
    beq-    branch_0x802412c8
    bge-    branch_0x802411b0
    cmpwi   r0, 0x0
    bge-    branch_0x802411bc
    b       branch_0x8024134c

branch_0x802411b0:
    cmpwi   r0, 0x3
    bge-    branch_0x8024134c
    b       branch_0x80241320

branch_0x802411bc:
    lfs     f2, 0x10(r31)
    lfs     f1, 0x10(r5)
    lfs     f0, -0x1498(rtoc)
    fsubs   f3, f2, f1
    lfs     f2, 0x18(r31)
    lfs     f1, 0x18(r5)
    fcmpu   cr0, f0, f3
    fmr     f4, f3
    fsubs   f7, f2, f1
    bne-    branch_0x802411f4
    fcmpu   cr0, f0, f7
    bne-    branch_0x802411f4
    lfs     f0, -0x14a0(rtoc)
    fadds   f4, f4, f0
branch_0x802411f4:
    fmuls   f1, f7, f7
    lfs     f0, -0x1498(rtoc)
    fmadds  f6, f4, f4, f1
    fcmpo   cr0, f6, f0
    ble-    branch_0x80241254
    frsqrte f1, f6
    lfd     f3, -0x1448(rtoc)
    lfd     f2, -0x1440(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f6, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f6, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f6, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f6, f0
    frsp    f0, f0
    stfs    f0, 0x4c(sp)
    lfs     f6, 0x4c(sp)
branch_0x80241254:
    lfs     f0, -0x1438(rtoc)
    fcmpo   cr0, f6, f0
    bge-    branch_0x802412b0
    fdivs   f1, f4, f6
    lfs     f4, -0x1434(rtoc)
    lfs     f5, -0x148c(rtoc)
    mr      r3, r31
    lfs     f2, 0x10(r5)
    fdivs   f0, f7, f6
    addi    r4, sp, 0x54
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    fmadds  f0, f5, f3, f2
    stfs    f0, 0x54(sp)
    lfs     f0, 0x18(r5)
    fmadds  f0, f5, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f0, 0xec(r31)
    stfs    f0, 0x58(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
branch_0x802412b0:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xd9
    bl      setAnimation__6TMarioFif
    li      r0, 0x1
    sth     r0, 0x84(r31)
branch_0x802412c8:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      getAttackAngle__6TMarioFPC9THitActor
    lha     r0, 0x96(r31)
    extsh   r30, r3
    lha     r5, 0x422c(r31)
    li      r4, 0x0
    subf    r0, r0, r30
    addi    r6, r5, 0x0
    extsh   r3, r0
    bl      IConverge__Fiiii
    subf    r0, r3, r30
    extsh   r0, r0
    sth     r0, 0x96(r31)
    lha     r0, 0x96(r31)
    cmpw    r30, r0
    bne-    branch_0x8024134c
    lwz     r3, gpMarDirector(r13)
    li      r0, 0x2
    stb     r0, 0x126(r3)
    sth     r0, 0x84(r31)
    b       branch_0x8024134c

branch_0x80241320:
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80241334
    cmplwi  r0, 0x5
    bne-    branch_0x8024134c
branch_0x80241334:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8024134c:
    li      r0, 0x0
    sth     r0, 0x94(r31)
    li      r3, 0x0
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl winDemo__6TMarioFv
winDemo__6TMarioFv: # 0x80241378
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lhz     r0, 0x84(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8024142c
    bge-    branch_0x80241444
    cmpwi   r0, 0x0
    bge-    branch_0x802413a8
    b       branch_0x80241444

branch_0x802413a8:
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802413d4
    lwz     r12, 0x0(r3)
    addi    r4, r3, 0x0
    li      r5, 0xd
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x6c(r31)
branch_0x802413d4:
    lwz     r3, -0x70b0(r13)
    addi    r4, r31, 0x10
    lfs     f1, -0x1430(rtoc)
    bl      killEnemiesWithin__10TConductorFRCQ29JGeometry8TVec3_f_f
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x80241444
    lwz     r3, gpMarDirector(r13)
    lwz     r4, 0x384(r31)
    bl      fireGetStar__12TMarDirectorFP6TShine
    lwz     r3, 0x384(r31)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x80241444

branch_0x8024142c:
    lfs     f1, -0x14a0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xcd
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      stopProcess__6TMarioFv
branch_0x80241444:
    lwz     r0, 0x1c(sp)
    li      r3, 0x0
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_MarioAutodemo_cpp
__sinit_MarioAutodemo_cpp: # 0x8024145c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4b28
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802414a4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802414a4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802414d4
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802414d4:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80241504
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80241504:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80241534
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80241534:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80241564
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80241564:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80241594
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80241594:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802415c4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802415c4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802415f4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802415f4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80241624
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80241624:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80241654
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80241654:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80241684
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80241684:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802416b4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802416b4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802416e4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802416e4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80241714
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80241714:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80241744
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80241744:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

