
.globl specMain__6TMarioFv
specMain__6TMarioFv: # 0x8025d064
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    addi    r4, r31, 0x1478
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    lfs     f0, 0x444(r3)
    li      r3, 0x0
    stfs    f0, 0x448(r31)
    lfs     f2, 0x44c(r31)
    lfs     f1, 0x1400(r31)
    lfs     f0, 0x444(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x444(r31)
    lfs     f1, 0x44c(r31)
    lfs     f0, 0x444(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x44c(r31)
    lfs     f1, 0x44c(r31)
    lfs     f0, 0x1464(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x44c(r31)
    lfs     f0, 0x1478(r31)
    lfs     f1, 0x44c(r31)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025d0dc
    stfs    f0, 0x44c(r31)
branch_0x8025d0dc:
    lfs     f1, 0x0(r4)
    lfs     f0, 0x44c(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025d0f0
    stfs    f1, 0x44c(r31)
branch_0x8025d0f0:
    lis     r7, 0x1000
    lwz     r0, 0x7c(r31)
    addi    r4, r7, 0x554
    cmpw    r0, r4
    beq-    branch_0x8025d94c
    bge-    branch_0x8025d1f0
    lis     r29, 0x20
    addi    r4, r29, 0x345
    cmpw    r0, r4
    beq-    branch_0x8025d3b8
    bge-    branch_0x8025d17c
    cmpwi   r0, 0x35b
    beq-    branch_0x8025dafc
    bge-    branch_0x8025d150
    cmpwi   r0, 0x352
    beq-    branch_0x8025d844
    bge-    branch_0x8025d144
    cmpwi   r0, 0x350
    beq-    branch_0x8025d82c
    bge-    branch_0x8025d838
    b       branch_0x8025de14

branch_0x8025d144:
    cmpwi   r0, 0x354
    bge-    branch_0x8025de14
    b       branch_0x8025d89c

branch_0x8025d150:
    cmpwi   r0, 0x560
    beq-    branch_0x8025dbac
    bge-    branch_0x8025d168
    cmpwi   r0, 0x35d
    bge-    branch_0x8025de14
    b       branch_0x8025db54

branch_0x8025d168:
    lis     r4, 0x4
    addi    r4, r4, 0x561
    cmpw    r0, r4
    beq-    branch_0x8025dbac
    b       branch_0x8025de14

branch_0x8025d17c:
    addi    r30, r29, 0x54a
    cmpw    r0, r30
    beq-    branch_0x8025d688
    bge-    branch_0x8025d1bc
    addi    r4, r29, 0x348
    cmpw    r0, r4
    beq-    branch_0x8025de14
    bge-    branch_0x8025d1ac
    addi    r3, r29, 0x347
    cmpw    r0, r3
    bge-    branch_0x8025d488
    b       branch_0x8025d448

branch_0x8025d1ac:
    addi    r4, r29, 0x34a
    cmpw    r0, r4
    bge-    branch_0x8025de14
    b       branch_0x8025d5e8

branch_0x8025d1bc:
    addi    r4, r7, 0x357
    cmpw    r0, r4
    beq-    branch_0x8025dae4
    bge-    branch_0x8025d1e0
    lis     r4, 0x820
    addi    r4, r4, 0x348
    cmpw    r0, r4
    beq-    branch_0x8025d4fc
    b       branch_0x8025de14

branch_0x8025d1e0:
    addi    r4, r7, 0x359
    cmpw    r0, r4
    bge-    branch_0x8025de14
    b       branch_0x8025daf0

branch_0x8025d1f0:
    lis     r6, 0x3000
    addi    r4, r6, 0x36c
    cmpw    r0, r4
    beq-    branch_0x8025dcfc
    bge-    branch_0x8025d288
    lis     r5, 0x1010
    addi    r4, r5, 0x342
    cmpw    r0, r4
    beq-    branch_0x8025de14
    bge-    branch_0x8025d250
    lis     r4, 0x1002
    addi    r4, r4, 0x370
    cmpw    r0, r4
    beq-    branch_0x8025d7d8
    bge-    branch_0x8025d240
    addi    r4, r7, 0x556
    cmpw    r0, r4
    beq-    branch_0x8025da90
    bge-    branch_0x8025de14
    b       branch_0x8025d9f0

branch_0x8025d240:
    addi    r4, r5, 0x341
    cmpw    r0, r4
    bge-    branch_0x8025d2f8
    b       branch_0x8025de14

branch_0x8025d250:
    lis     r4, 0x1810
    addi    r4, r4, 0x340
    cmpw    r0, r4
    beq-    branch_0x8025d2ec
    bge-    branch_0x8025d274
    addi    r4, r5, 0x344
    cmpw    r0, r4
    bge-    branch_0x8025de14
    b       branch_0x8025d3ac

branch_0x8025d274:
    addi    r4, r6, 0x36a
    cmpw    r0, r4
    beq-    branch_0x8025de0c
    bge-    branch_0x8025dbb8
    b       branch_0x8025de14

branch_0x8025d288:
    addi    r4, r6, 0x569
    cmpw    r0, r4
    beq-    branch_0x8025de00
    bge-    branch_0x8025d2c8
    addi    r4, r6, 0x54e
    cmpw    r0, r4
    beq-    branch_0x8025d708
    bge-    branch_0x8025d2b8
    addi    r4, r6, 0x54c
    cmpw    r0, r4
    beq-    branch_0x8025d6a0
    b       branch_0x8025de14

branch_0x8025d2b8:
    addi    r4, r6, 0x550
    cmpw    r0, r4
    bge-    branch_0x8025de14
    b       branch_0x8025d770

branch_0x8025d2c8:
    lis     r4, 0x3800
    addi    r5, r4, 0x368
    cmpw    r0, r5
    beq-    branch_0x8025de00
    bge-    branch_0x8025de14
    addi    r4, r4, 0x34b
    cmpw    r0, r4
    beq-    branch_0x8025d694
    b       branch_0x8025de14

branch_0x8025d2ec:
    mr      r3, r31
    bl      barWait__6TMarioFv
    b       branch_0x8025de14

branch_0x8025d2f8:
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8025d320
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
branch_0x8025d320:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8025d348
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025d348:
    lfs     f0, -0xde8(rtoc)
    mr      r3, r31
    stfs    f0, 0xa8(r31)
    bl      barProcess__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x8025d398
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x6
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d398
    lis     r4, 0x1810
    addi    r3, r31, 0x0
    addi    r4, r4, 0x340
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025d398:
    li      r3, 0x0
    sth     r3, 0x94(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    b       branch_0x8025de14

branch_0x8025d3ac:
    mr      r3, r31
    bl      barClimb__6TMarioFv
    b       branch_0x8025de14

branch_0x8025d3b8:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x102
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      kickRoofEffect__6TMarioFv
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    cmplwi  r3, 0x8
    sth     r0, 0x86(r31)
    bne-    branch_0x8025d3f0
    addi    r3, r31, 0x0
    li      r4, 0x7890
    bl      startVoice__6TMarioFUl
branch_0x8025d3f0:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d440
    lfs     f1, 0x14(r31)
    lis     r4, 0xc40
    lfs     f0, -0xde0(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x201
    fadds   f0, f1, f0
    li      r5, 0x0
    li      r6, 0x0
    stfs    f0, 0x14(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xec(r31)
    lwz     r0, 0x74(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x74(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025d440:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d448:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x103
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d480
    addi    r3, r31, 0x0
    addi    r4, r29, 0x349
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025d480:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d488:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x101
    bl      setAnimation__6TMarioFif
    lfs     f0, 0xae8(r31)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0xafc(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r31
    bl      kickRoofEffect__6TMarioFv
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d4f4
    lwz     r0, 0x74(r31)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x349
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x74(r31)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025d4f4:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d4fc:
    lfs     f1, -0xddc(rtoc)
    addi    r4, r31, 0xdc
    lfs     f0, 0x14(r31)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xe8(r31)
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8025d55c
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x78
    ble-    branch_0x8025d55c
    addi    r3, r31, 0x0
    addi    r4, r29, 0x349
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025d55c:
    mr      r3, r31
    bl      roofCommonEvents__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d574
    li      r3, 0x1
    b       branch_0x8025de14

branch_0x8025d574:
    lha     r0, 0x96(r31)
    addi    r3, r31, 0x0
    li      r4, 0x35
    sth     r0, 0x9a(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setAnimation__6TMarioFif
    lfs     f2, -0xde8(rtoc)
    mr      r3, r31
    stfs    f2, 0xb0(r31)
    stfs    f2, 0xb4(r31)
    stfs    f2, 0xb8(r31)
    lfs     f1, 0xe8(r31)
    lfs     f0, -0xde0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    stfs    f2, 0xac(r31)
    stfs    f2, 0xa8(r31)
    stfs    f2, 0xa4(r31)
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d5e0
    lis     r4, 0x20
    addi    r3, r31, 0x0
    addi    r4, r4, 0x349
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025d5e0:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d5e8:
    mr      r3, r31
    bl      roofCommonEvents__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d600
    li      r3, 0x1
    b       branch_0x8025de14

branch_0x8025d600:
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8025d624
    lwz     r5, 0x88(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025d624:
    lwz     r0, 0x88(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8025d644
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xc6
    bl      setAnimation__6TMarioFif
    b       branch_0x8025d654

branch_0x8025d644:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xc7
    bl      setAnimation__6TMarioFif
branch_0x8025d654:
    lfs     f2, -0xde8(rtoc)
    li      r3, 0x0
    stfs    f2, 0xb0(r31)
    stfs    f2, 0xb4(r31)
    stfs    f2, 0xb8(r31)
    lfs     f1, 0xe8(r31)
    lfs     f0, -0xde0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    stfs    f2, 0xac(r31)
    stfs    f2, 0xa8(r31)
    stfs    f2, 0xa4(r31)
    b       branch_0x8025de14

branch_0x8025d688:
    mr      r3, r31
    bl      moveRoof__6TMarioFv
    b       branch_0x8025de14

branch_0x8025d694:
    mr      r3, r31
    bl      hanging__6TMarioFv
    b       branch_0x8025de14

branch_0x8025d6a0:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8025d6c0
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b6
    bl      startHangLanding__6TMarioFUl
    b       branch_0x8025de14

branch_0x8025d6c0:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d700
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, 0x201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025d700:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d708:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8025d728
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b6
    bl      startHangLanding__6TMarioFUl
    b       branch_0x8025de14

branch_0x8025d728:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x1c
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d768
    lis     r4, 0x3800
    addi    r3, r31, 0x0
    addi    r4, r4, 0x34b
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025d768:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d770:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8025d790
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b6
    bl      startHangLanding__6TMarioFUl
    b       branch_0x8025de14

branch_0x8025d790:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x34
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d7d0
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, 0x201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025d7d0:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d7d8:
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xc(r3)
    li      r0, 0x0
    li      r4, 0x120
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x2c(r3)
    mr      r3, r31
    stfs    f0, 0x18(r31)
    sth     r0, 0x94(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d82c:
    mr      r3, r31
    bl      wireWait__6TMarioFv
    b       branch_0x8025de14

branch_0x8025d838:
    mr      r3, r31
    bl      wireSWait__6TMarioFv
    b       branch_0x8025de14

branch_0x8025d844:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0x9a
    bl      getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps
    lha     r5, 0x9a(r31)
    addi    r3, r31, 0x0
    li      r4, 0xde
    addi    r0, r5, 0x4000
    sth     r0, 0x96(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d894
    addi    r3, r31, 0x0
    li      r4, 0x351
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025d894:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d89c:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0x9a
    bl      getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps
    lha     r5, 0x9a(r31)
    addi    r3, r31, 0x0
    li      r4, 0xdf
    subi    r0, r5, 0x4000
    sth     r0, 0x96(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d944
    addi    r3, r31, 0x0
    li      r4, 0x351
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, 0x428(r31)
    lwz     r0, 0x42c(r31)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x430(r31)
    stw     r0, 0x70(sp)
    lwz     r3, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r3, 0x428(r31)
    stw     r0, 0x42c(r31)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x430(r31)
    lwz     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0x434(r31)
    stw     r0, 0x438(r31)
    lwz     r0, 0x70(sp)
    stw     r0, 0x43c(r31)
    lfs     f1, -0xde4(rtoc)
    lfs     f0, 0x440(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x440(r31)
branch_0x8025d944:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d94c:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0x9a
    bl      getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps
    lha     r5, 0x9a(r31)
    addi    r3, r31, 0x0
    li      r4, 0xe1
    addi    r0, r5, 0x4000
    sth     r0, 0x96(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025d9e8
    lwz     r0, 0x6c(r31)
    li      r29, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8025d9ac
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8025d9ac
    li      r29, 0x1
branch_0x8025d9ac:
    clrlwi. r0, r29, 24
    beq-    branch_0x8025d9d0
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    addi    r4, r4, 0x357
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025d9d0:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025d9e8:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025d9f0:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0x96
    bl      getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps
    lha     r0, 0x96(r31)
    addi    r3, r31, 0x0
    li      r4, 0xe2
    sth     r0, 0x9a(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025da88
    lwz     r0, 0x6c(r31)
    li      r29, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8025da4c
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8025da4c
    li      r29, 0x1
branch_0x8025da4c:
    clrlwi. r0, r29, 24
    beq-    branch_0x8025da70
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    addi    r4, r4, 0x357
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025da70:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025da88:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025da90:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0x96
    bl      getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps
    lha     r0, 0x96(r31)
    addi    r3, r31, 0x0
    li      r4, 0xe4
    sth     r0, 0x9a(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025dadc
    addi    r3, r31, 0x0
    li      r4, 0x350
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025dadc:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025dae4:
    mr      r3, r31
    bl      wireHanging__6TMarioFv
    b       branch_0x8025de14

branch_0x8025daf0:
    mr      r3, r31
    bl      wireRolling__6TMarioFv
    b       branch_0x8025de14

branch_0x8025dafc:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0x9a
    bl      getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps
    lha     r5, 0x9a(r31)
    addi    r3, r31, 0x0
    li      r4, 0xdf
    subi    r0, r5, 0x4000
    sth     r0, 0x96(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setReverseAnimation__6TMarioFif
    mr      r3, r31
    bl      isAnimeLoopOrStop__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025db4c
    addi    r3, r31, 0x0
    li      r4, 0x350
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025db4c:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025db54:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x10
    addi    r5, r31, 0x9a
    bl      getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps
    lha     r5, 0x9a(r31)
    addi    r3, r31, 0x0
    li      r4, 0xde
    addi    r0, r5, 0x4000
    sth     r0, 0x96(r31)
    lfs     f1, -0xde4(rtoc)
    bl      setReverseAnimation__6TMarioFif
    mr      r3, r31
    bl      isAnimeLoopOrStop__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025dba4
    addi    r3, r31, 0x0
    li      r4, 0x350
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025dba4:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025dbac:
    mr      r3, r31
    bl      pulling__6TMarioFv
    b       branch_0x8025de14

branch_0x8025dbb8:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xf9
    bl      setAnimation__6TMarioFif
    lwz     r5, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    addi    r4, sp, 0x5c
    lwz     r7, -0x5eac(r13)
    stw     r5, 0x5c(sp)
    lwz     r6, -0x5ea8(r13)
    stw     r0, 0x60(sp)
    lfs     f2, -0xdd4(rtoc)
    lwz     r0, 0x18(r31)
    lfs     f4, -0xdd8(rtoc)
    stw     r0, 0x64(sp)
    lwz     r5, -0x5ea4(r13)
    lhz     r0, 0x96(r31)
    lfs     f0, 0x5c(sp)
    sraw    r0, r0, r7
    lfs     f1, -0xdd0(rtoc)
    slwi    r0, r0, 2
    lfsx    f3, r6, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x5c(sp)
    lhz     r0, 0x96(r31)
    lfs     f0, 0x64(sp)
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x64(sp)
    bl      checkWallPlane__6TMarioFP3Vecff
    cmplwi  r3, 0x0
    bne-    branch_0x8025dc88
    lha     r4, 0x96(r31)
    addi    r3, r31, 0x0
    addis   r4, r4, 0x1
    subi    r0, r4, 0x8000
    sth     r0, 0x96(r31)
    lfs     f1, -0xde8(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f0, -0xde8(rtoc)
    lis     r4, 0x2
    addi    r3, r31, 0x0
    stfs    f0, 0xa8(r31)
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025dc88:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025dcf4
    lfs     f2, -0xdcc(rtoc)
    lfs     f1, 0xec(r31)
    lfs     f0, 0x14(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025dcb8
    fadds   f0, f0, f2
    stfs    f0, 0x14(r31)
branch_0x8025dcb8:
    lfs     f1, 0xe8(r31)
    lfs     f2, -0xdcc(rtoc)
    lfs     f0, 0x14(r31)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025dcd8
    fsubs   f0, f0, f2
    stfs    f0, 0x14(r31)
branch_0x8025dcd8:
    lis     r4, 0x3800
    addi    r3, r31, 0x0
    addi    r4, r4, 0x368
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025dcf4:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025dcfc:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xfa
    bl      setAnimation__6TMarioFif
    lwz     r5, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    addi    r4, sp, 0x50
    lwz     r7, -0x5eac(r13)
    stw     r5, 0x50(sp)
    lwz     r6, -0x5ea8(r13)
    stw     r0, 0x54(sp)
    lfs     f2, -0xdd4(rtoc)
    lwz     r0, 0x18(r31)
    lfs     f4, -0xdd8(rtoc)
    stw     r0, 0x58(sp)
    lwz     r5, -0x5ea4(r13)
    lhz     r0, 0x96(r31)
    lfs     f0, 0x50(sp)
    sraw    r0, r0, r7
    lfs     f1, -0xdd0(rtoc)
    slwi    r0, r0, 2
    lfsx    f3, r6, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x50(sp)
    lhz     r0, 0x96(r31)
    lfs     f0, 0x58(sp)
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x58(sp)
    bl      checkWallPlane__6TMarioFP3Vecff
    cmplwi  r3, 0x0
    bne-    branch_0x8025ddcc
    lha     r4, 0x96(r31)
    addi    r3, r31, 0x0
    addis   r4, r4, 0x1
    subi    r0, r4, 0x8000
    sth     r0, 0x96(r31)
    lfs     f1, -0xde8(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f0, -0xde8(rtoc)
    lis     r4, 0x2
    addi    r3, r31, 0x0
    stfs    f0, 0xa8(r31)
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025ddcc:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025ddf8
    lis     r4, 0x3800
    addi    r3, r31, 0x0
    addi    r4, r4, 0x368
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025de14

branch_0x8025ddf8:
    li      r3, 0x0
    b       branch_0x8025de14

branch_0x8025de00:
    mr      r3, r31
    bl      fenceMove__6TMarioFv
    b       branch_0x8025de14

branch_0x8025de0c:
    mr      r3, r31
    bl      fencePunch__6TMarioFv
branch_0x8025de14:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl fencePunch__6TMarioFv
fencePunch__6TMarioFv: # 0x8025de30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r31)
    lwz     r7, -0x5eac(r13)
    stw     r4, 0x70(sp)
    addi    r4, sp, 0x70
    lwz     r6, -0x5ea8(r13)
    stw     r0, 0x74(sp)
    lfs     f2, -0xdd4(rtoc)
    lwz     r0, 0x18(r31)
    lfs     f4, -0xdc8(rtoc)
    stw     r0, 0x78(sp)
    lwz     r5, -0x5ea4(r13)
    lhz     r0, 0x96(r31)
    lfs     f0, 0x70(sp)
    sraw    r0, r0, r7
    lfs     f1, -0xddc(rtoc)
    slwi    r0, r0, 2
    lfsx    f3, r6, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x70(sp)
    lhz     r0, 0x96(r31)
    lfs     f0, 0x78(sp)
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x78(sp)
    bl      checkWallPlane__6TMarioFP3Vecff
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025df14
    lwz     r3, -0x6044(r13)
    li      r4, 0x193a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8025def8
    addi    r4, r31, 0x10
    li      r3, 0x193a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8025def8:
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    mr      r3, r31
    bl      startJumpWall__6TMarioFv
    b       branch_0x8025e0d4

branch_0x8025df14:
    cmplwi  r3, 0x0
    beq-    branch_0x8025df38
    lwz     r3, 0x70(sp)
    lwz     r0, 0x74(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x78(sp)
    stw     r0, 0x18(r31)
    b       branch_0x8025df74

branch_0x8025df38:
    lha     r4, 0x96(r31)
    addi    r3, r31, 0x0
    addis   r4, r4, 0x1
    subi    r0, r4, 0x8000
    sth     r0, 0x96(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lfs     f1, -0xde8(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025e0d4

branch_0x8025df74:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x100
    bl      setAnimation__6TMarioFif
    lfs     f0, 0xab8(r31)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0xacc(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xdcc(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8025e0a0
    addi    r3, r31, 0x0
    addi    r5, r31, 0x184
    li      r4, 0x39
    bl      emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lwz     r3, 0x2c0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025e0a0
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x3
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    li      r4, 0x7890
    bl      startVoice__6TMarioFUl
    lwz     r3, 0x2c0(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x6a
    bne-    branch_0x8025e0a0
    lfs     f1, 0x2f4(r31)
    lfs     f0, -0xdc4(rtoc)
    lfs     f2, 0x2f8(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025e04c
    fmr     f1, f0
branch_0x8025e04c:
    lfs     f0, -0xdc0(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8025e05c
    fmr     f1, f0
branch_0x8025e05c:
    lfs     f0, -0xdbc(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8025e06c
    fmr     f2, f0
branch_0x8025e06c:
    lfs     f0, -0xdb8(rtoc)
    fcmpo   cr0, f0, f2
    bge-    branch_0x8025e07c
    fmr     f2, f0
branch_0x8025e07c:
    stfs    f1, 0x2f4(r31)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x40
    stfs    f2, 0x2f8(r31)
    bl      getRidingMtx__6TMarioFPA4_f
    addi    r3, sp, 0x40
    addi    r4, r31, 0x2f4
    addi    r5, r31, 0x10
    bl      PSMTXMultVec
branch_0x8025e0a0:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025e0d0
    lis     r4, 0x3800
    addi    r3, r31, 0x0
    addi    r4, r4, 0x368
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x8025e0d4

branch_0x8025e0d0:
    li      r3, 0x0
branch_0x8025e0d4:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl fenceMove__6TMarioFv
fenceMove__6TMarioFv: # 0x8025e0e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b8(sp)
    stfd    f31, 0x1b0(sp)
    stfd    f30, 0x1a8(sp)
    stfd    f29, 0x1a0(sp)
    stw     r31, 0x19c(sp)
    stw     r30, 0x198(sp)
    mr      r30, r3
    stw     r29, 0x194(sp)
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r30)
    lwz     r7, -0x5eac(r13)
    stw     r4, 0x170(sp)
    addi    r4, sp, 0x170
    lwz     r6, -0x5ea8(r13)
    stw     r0, 0x174(sp)
    lfs     f2, -0xdd4(rtoc)
    lwz     r0, 0x18(r30)
    lfs     f4, -0xdc8(rtoc)
    stw     r0, 0x178(sp)
    lwz     r5, -0x5ea4(r13)
    lhz     r0, 0x96(r30)
    lfs     f0, 0x170(sp)
    sraw    r0, r0, r7
    lfs     f1, -0xddc(rtoc)
    slwi    r0, r0, 2
    lfsx    f3, r6, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x170(sp)
    lhz     r0, 0x96(r30)
    lfs     f0, 0x178(sp)
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x178(sp)
    bl      checkWallPlane__6TMarioFP3Vecff
    mr.     r31, r3
    beq-    branch_0x8025e3c4
    lwz     r0, 0x74(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x8025e380
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    lfs     f2, -0xdb4(rtoc)
    stw     r3, 0x164(sp)
    lwz     r3, -0x7118(r13)
    stw     r0, 0x168(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x16c(sp)
    lwz     r4, 0x108(r30)
    lfs     f6, 0xba4(r30)
    lfs     f1, 0x14(r4)
    lfs     f0, 0x168(sp)
    fmuls   f1, f2, f1
    fmadds  f0, f1, f6, f0
    stfs    f0, 0x168(sp)
    lha     r3, 0x258(r3)
    lha     r0, 0x96(r30)
    subf    r0, r3, r0
    extsh   r0, r0
    cmpwi   r0, -0x4000
    ble-    branch_0x8025e208
    cmpwi   r0, 0x4000
    bge-    branch_0x8025e208
    lfs     f0, 0x3c(r31)
    lfs     f7, 0x34(r31)
    fneg    f3, f0
    b       branch_0x8025e214

branch_0x8025e208:
    lfs     f0, 0x34(r31)
    lfs     f3, 0x3c(r31)
    fneg    f7, f0
branch_0x8025e214:
    lfs     f0, 0x10(r4)
    mr      r3, r30
    lfs     f1, -0xdb4(rtoc)
    addi    r4, sp, 0x158
    lwz     r8, -0x5eac(r13)
    fmuls   f1, f1, f0
    lfs     f0, 0x164(sp)
    lwz     r6, -0x5ea8(r13)
    lfs     f2, -0xdd4(rtoc)
    fmuls   f5, f3, f1
    fmuls   f3, f7, f1
    lfs     f4, -0xdc8(rtoc)
    lwz     r5, -0x5ea4(r13)
    fmadds  f0, f5, f6, f0
    lfs     f1, -0xdd0(rtoc)
    stfs    f0, 0x164(sp)
    lfs     f0, 0x16c(sp)
    fmadds  f0, f3, f6, f0
    stfs    f0, 0x16c(sp)
    lwz     r0, 0x164(sp)
    lwz     r7, 0x168(sp)
    stw     r0, 0x158(sp)
    lwz     r0, 0x16c(sp)
    stw     r7, 0x15c(sp)
    stw     r0, 0x160(sp)
    lhz     r0, 0x96(r30)
    lfs     f0, 0x158(sp)
    sraw    r0, r0, r8
    slwi    r0, r0, 2
    lfsx    f3, r6, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x158(sp)
    lhz     r0, 0x96(r30)
    lfs     f0, 0x160(sp)
    sraw    r0, r0, r8
    slwi    r0, r0, 2
    lfsx    f3, r5, r0
    fmuls   f3, f2, f3
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x160(sp)
    lwz     r0, 0x158(sp)
    lwz     r5, 0x15c(sp)
    stw     r0, 0x14c(sp)
    lwz     r0, 0x160(sp)
    stw     r5, 0x150(sp)
    stw     r0, 0x154(sp)
    bl      checkWallPlane__6TMarioFP3Vecff
    lfs     f1, -0xdb0(rtoc)
    mr      r29, r3
    lfs     f2, -0xdd4(rtoc)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x14c
    bl      checkWallPlane__6TMarioFP3Vecff
    cmplwi  r29, 0x0
    beq-    branch_0x8025e3a8
    lhz     r0, 0x0(r29)
    cmplwi  r0, 0x10a
    bne-    branch_0x8025e308
    li      r0, 0x1
    b       branch_0x8025e30c

branch_0x8025e308:
    li      r0, 0x0
branch_0x8025e30c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025e3a8
    cmplwi  r3, 0x0
    beq-    branch_0x8025e3a8
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x8025e330
    li      r0, 0x1
    b       branch_0x8025e334

branch_0x8025e330:
    li      r0, 0x0
branch_0x8025e334:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025e3a8
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xc800
    cmplwi  r0, 0x368
    bne-    branch_0x8025e364
    lis     r4, 0x3000
    addi    r3, r30, 0x0
    addi    r4, r4, 0x569
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025e364:
    lwz     r3, 0x164(sp)
    lwz     r0, 0x168(sp)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x16c(sp)
    stw     r0, 0x18(r30)
    b       branch_0x8025e3a8

branch_0x8025e380:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0xfb
    bl      setAnimation__6TMarioFif
    lis     r4, 0x3800
    addi    r3, r30, 0x0
    addi    r4, r4, 0x368
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025e3a8:
    lfs     f1, 0x3c(r31)
    lfs     f2, 0x34(r31)
    bl      matan__Fff
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r30)
    b       branch_0x8025e400

branch_0x8025e3c4:
    lha     r4, 0x96(r30)
    addi    r3, r30, 0x0
    addis   r4, r4, 0x1
    subi    r0, r4, 0x8000
    sth     r0, 0x96(r30)
    lha     r0, 0x96(r30)
    sth     r0, 0x9a(r30)
    lfs     f1, -0xde8(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r30, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025e880

branch_0x8025e400:
    lha     r0, 0x96(r30)
    addi    r3, r30, 0x0
    li      r4, 0x1
    sth     r0, 0x9a(r30)
    lhz     r5, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f2, -0xdd4(rtoc)
    slwi    r0, r0, 2
    lfs     f3, -0xdc8(rtoc)
    lfsx    f1, r6, r0
    lfs     f0, 0x10(r30)
    fmuls   f1, f2, f1
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x10(r30)
    lhz     r5, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f0, 0x18(r30)
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    fmuls   f1, f2, f1
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x18(r30)
    lfs     f0, -0xde8(rtoc)
    stfs    f0, 0xa4(r30)
    stfs    f0, 0xa8(r30)
    stfs    f0, 0xac(r30)
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x2
    beq-    branch_0x8025e554
    bge-    branch_0x8025e494
    cmpwi   r3, 0x1
    bge-    branch_0x8025e4a0
    b       branch_0x8025e554

branch_0x8025e494:
    cmpwi   r3, 0x4
    bge-    branch_0x8025e554
    b       branch_0x8025e4c8

branch_0x8025e4a0:
    lha     r5, 0x96(r30)
    addi    r3, r30, 0x0
    li      r4, 0x88c
    addis   r5, r5, 0x1
    subi    r0, r5, 0x8000
    sth     r0, 0x96(r30)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025e880

branch_0x8025e4c8:
    lhz     r5, 0x96(r30)
    mr      r3, r30
    lwz     r0, -0x5eac(r13)
    li      r4, 0x0
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f3, -0xdd4(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r30)
    lfsx    f1, r6, r0
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, -0xde4(rtoc)
    lfs     f0, 0xec(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lhz     r5, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f0, 0x18(r30)
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x18(r30)
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x74(r30)
    lis     r4, 0x3000
    addi    r3, r30, 0x0
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x74(r30)
    addi    r4, r4, 0x54c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8025e880

branch_0x8025e554:
    lwz     r0, 0xdc(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8025e598
    lfs     f1, -0xde0(rtoc)
    lfs     f0, 0x14(r30)
    lfs     f2, 0xe8(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8025e598
    fsubs   f0, f2, f1
    lis     r4, 0x3800
    addi    r3, r30, 0x0
    addi    r4, r4, 0x368
    stfs    f0, 0x14(r30)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025e598:
    lwz     r3, 0x74(r30)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8025e5f0
    lwz     r3, -0x6044(r13)
    li      r4, 0x193a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8025e5d4
    addi    r4, r30, 0x10
    li      r3, 0x193a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8025e5d4:
    lha     r5, 0x27f8(r30)
    addi    r3, r30, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    mr      r3, r30
    bl      startJumpWall__6TMarioFv
    b       branch_0x8025e880

branch_0x8025e5f0:
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x8025e61c
    rlwinm  r0, r3, 0, 17, 15
    lis     r4, 0x3000
    stw     r0, 0x74(r30)
    addi    r3, r30, 0x0
    addi    r4, r4, 0x36a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025e880

branch_0x8025e61c:
    lfs     f1, 0x8c(r30)
    lfs     f0, -0xde8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025e87c
    lwz     r0, 0x2c0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8025e718
    lhz     r5, 0x96(r30)
    addi    r3, sp, 0xb8
    lwz     r0, -0x5eac(r13)
    addi    r4, r30, 0x29c
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lwz     r5, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfs     f1, 0x14(r30)
    lfs     f0, 0x2a0(r30)
    lfsx    f31, r6, r0
    lfsx    f29, r5, r0
    fsubs   f30, f1, f0
    lwz     r5, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r5, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0xc0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xb8(sp)
    lfs     f5, -0xde8(rtoc)
    stw     r0, 0x11c(sp)
    lwz     r3, 0xbc(sp)
    fmuls   f0, f5, f31
    lwz     r0, 0xc0(sp)
    stw     r3, 0x120(sp)
    lfs     f2, -0xde4(rtoc)
    fmsubs  f1, f5, f29, f0
    stw     r0, 0x124(sp)
    fmsubs  f3, f2, f31, f5
    lfs     f6, 0x120(sp)
    fnmsubs  f4, f2, f29, f5
    lfs     f2, 0x11c(sp)
    fmuls   f0, f6, f6
    fmuls   f1, f1, f6
    lfs     f7, 0x124(sp)
    fmadds  f0, f2, f2, f0
    fmadds  f1, f3, f2, f1
    fmadds  f6, f7, f7, f0
    fmadds  f31, f4, f7, f1
    fcmpo   cr0, f6, f5
    cror    2, 0, 2
    bne-    branch_0x8025e6ec
    b       branch_0x8025e710

branch_0x8025e6ec:
    frsqrte f3, f6
    lfs     f2, -0xdc8(rtoc)
    lfs     f0, -0xdac(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f6, f1, f0
    fmuls   f0, f2, f0
    fmuls   f6, f6, f0
branch_0x8025e710:
    fmr     f1, f6
    b       branch_0x8025e7f0

branch_0x8025e718:
    lha     r3, 0x96(r30)
    lis     r0, 0x4330
    lfd     f1, -0xda0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f3, -0xda8(rtoc)
    stw     r3, 0x18c(sp)
    lfs     f2, 0x30c(r30)
    stw     r0, 0x188(sp)
    lfs     f4, 0x2f8(r30)
    lfd     f0, 0x188(sp)
    lfs     f6, 0x304(r30)
    fsubs   f0, f0, f1
    lfs     f1, 0x2f4(r30)
    lfs     f5, 0x300(r30)
    fsubs   f30, f4, f6
    fmsubs  f0, f3, f2, f0
    fsubs   f31, f1, f5
    fctiwz  f0, f0
    stfd    f0, 0x180(sp)
    lwz     r0, 0x184(sp)
    extsh.  r0, r0
    beq-    branch_0x8025e774
    fneg    f31, f31
branch_0x8025e774:
    lwz     r3, 0x2f4(r30)
    lwz     r0, 0x2f8(r30)
    stw     r3, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x2fc(r30)
    stw     r0, 0xe0(sp)
    lfs     f0, 0xd8(sp)
    fsubs   f0, f0, f5
    stfs    f0, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fsubs   f0, f0, f6
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0x308(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lwz     r0, 0xd8(sp)
    lwz     r3, 0xdc(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0xe0(sp)
    stw     r3, 0x104(sp)
    stw     r0, 0x108(sp)
    lfs     f1, 0x100(sp)
    lfs     f0, 0x104(sp)
    lfs     f2, 0x108(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
branch_0x8025e7f0:
    lfs     f0, -0xde8(rtoc)
    fmr     f2, f31
    fcmpo   cr0, f31, f0
    bge-    branch_0x8025e804
    fneg    f2, f31
branch_0x8025e804:
    lfs     f0, -0xde8(rtoc)
    fmr     f3, f30
    fcmpo   cr0, f30, f0
    bge-    branch_0x8025e818
    fneg    f3, f30
branch_0x8025e818:
    lfs     f0, -0xdcc(rtoc)
    fmuls   f0, f0, f2
    fcmpo   cr0, f3, f0
    ble-    branch_0x8025e854
    lfs     f0, -0xde8(rtoc)
    fcmpo   cr0, f30, f0
    ble-    branch_0x8025e844
    addi    r3, r30, 0x0
    li      r4, 0xfe
    bl      setAnimation__6TMarioFif
    b       branch_0x8025e87c

branch_0x8025e844:
    addi    r3, r30, 0x0
    li      r4, 0xff
    bl      setAnimation__6TMarioFif
    b       branch_0x8025e87c

branch_0x8025e854:
    lfs     f0, -0xde8(rtoc)
    fcmpo   cr0, f31, f0
    ble-    branch_0x8025e870
    addi    r3, r30, 0x0
    li      r4, 0xfc
    bl      setAnimation__6TMarioFif
    b       branch_0x8025e87c

branch_0x8025e870:
    addi    r3, r30, 0x0
    li      r4, 0xfd
    bl      setAnimation__6TMarioFif
branch_0x8025e87c:
    li      r3, 0x0
branch_0x8025e880:
    lwz     r0, 0x1bc(sp)
    lfd     f31, 0x1b0(sp)
    lfd     f30, 0x1a8(sp)
    mtlr    r0
    lfd     f29, 0x1a0(sp)
    lwz     r31, 0x19c(sp)
    lwz     r30, 0x198(sp)
    lwz     r29, 0x194(sp)
    addi    sp, sp, 0x1b8
    blr


.globl pulling__6TMarioFv
pulling__6TMarioFv: # 0x8025e8a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    stw     r30, 0x98(sp)
    lwz     r4, 0x74(r3)
    rlwinm. r0, r4, 0, 29, 29
    beq-    branch_0x8025e91c
    lwz     r3, 0x6c(r31)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x6c(r31)
    addi    r3, r31, 0x0
    li      r4, 0x78e0
    bl      startVoice__6TMarioFUl
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ed8c

branch_0x8025e91c:
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x8025e978
    lwz     r3, 0x6c(r31)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x6c(r31)
    addi    r3, r31, 0x0
    li      r4, 0x78e0
    bl      startVoice__6TMarioFUl
    lis     r4, 0xc00
    addi    r3, r31, 0x0
    addi    r4, r4, 0x22f
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ed8c

branch_0x8025e978:
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x8025e9a4
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xf0
    bl      setAnimation__6TMarioFif
    addi    r3, r31, 0x0
    li      r4, 0x894
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x8025ed8c

branch_0x8025e9a4:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x561
    bne-    branch_0x8025e9e8
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8025e9c8
    li      r0, 0x1
    b       branch_0x8025e9cc

branch_0x8025e9c8:
    li      r0, 0x0
branch_0x8025e9cc:
    clrlwi. r0, r0, 24
    bne-    branch_0x8025e9e8
    addi    r3, r31, 0x0
    li      r4, 0x560
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025e9e8:
    lwz     r3, 0x6c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x28(r3)
    lfs     f0, 0x8(r3)
    fneg    f1, f1
    fneg    f2, f0
    bl      matan__Fff
    sth     r3, 0x96(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lwz     r5, -0x5eac(r13)
    stw     r3, 0x88(sp)
    lwz     r3, -0x5ea4(r13)
    stw     r0, 0x8c(sp)
    lfs     f0, -0xde8(rtoc)
    lwz     r0, 0x18(r31)
    stw     r0, 0x90(sp)
    lha     r4, 0x96(r31)
    lha     r0, 0x90(r31)
    addis   r4, r4, 0x1
    subi    r4, r4, 0x8000
    extsh   r30, r4
    subf    r0, r0, r30
    extsh   r4, r0
    clrlwi  r0, r4, 16
    sraw    r0, r0, r5
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    fcmpo   cr0, f1, f0
    fmr     f31, f1
    bge-    branch_0x8025ea7c
    fmr     f31, f0
branch_0x8025ea7c:
    clrlwi  r0, r4, 16
    lfs     f0, 0x8c(r31)
    sraw    r0, r0, r5
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    fmuls   f31, f31, f0
    lfsx    f30, r3, r0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x84
    fmuls   f30, f30, f0
    addi    r5, sp, 0x80
    bl      getCurrentPullParams__6TMarioFPfPf
    lwz     r3, -0x5eac(r13)
    clrlwi  r5, r30, 16
    lwz     r0, -0x5ea4(r13)
    addi    r4, sp, 0x88
    sraw    r3, r5, r3
    slwi    r5, r3, 2
    lwz     r3, -0x5ea8(r13)
    add     r6, r0, r5
    lfs     f3, 0x80(sp)
    lfs     f0, 0x0(r6)
    add     r3, r3, r5
    lfs     f1, 0x0(r3)
    fmuls   f0, f30, f0
    lfs     f4, 0x84(sp)
    fmuls   f1, f31, f1
    lfs     f2, 0x88(sp)
    fmuls   f0, f3, f0
    fmsubs  f0, f4, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x88(sp)
    lfs     f0, 0x0(r3)
    lfs     f1, 0x0(r6)
    fmuls   f0, f30, f0
    lfs     f2, 0x90(sp)
    fmuls   f1, f31, f1
    fmuls   f0, f3, f0
    fmadds  f0, f4, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x90(sp)
    lwz     r3, 0x6c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8025eb54
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x90(sp)
    stw     r0, 0x18(r31)
branch_0x8025eb54:
    mr      r3, r31
    bl      stopProcess__6TMarioFv
    lwz     r3, 0x7c(r31)
    lfs     f30, -0xde4(rtoc)
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x561
    bne-    branch_0x8025eb74
    lfs     f30, -0xdcc(rtoc)
branch_0x8025eb74:
    lhz     r0, 0xfa(r31)
    cmpwi   r0, 0xf2
    beq-    branch_0x8025eb90
    bge-    branch_0x8025ebb4
    cmpwi   r0, 0xea
    beq-    branch_0x8025eb90
    b       branch_0x8025ebb4

branch_0x8025eb90:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8025ed88
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xeb
    bl      setAnimation__6TMarioFif
    b       branch_0x8025ed88

branch_0x8025ebb4:
    lwz     r4, 0x6c(r31)
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x6
    bne-    branch_0x8025ebd0
    li      r0, 0x1
    b       branch_0x8025ebd4

branch_0x8025ebd0:
    li      r0, 0x0
branch_0x8025ebd4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8025ec00
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x8
    bne-    branch_0x8025ebf4
    li      r0, 0x1
    b       branch_0x8025ebf8

branch_0x8025ebf4:
    li      r0, 0x0
branch_0x8025ebf8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025ec40
branch_0x8025ec00:
    lwz     r0, 0x88(sp)
    addi    r3, sp, 0x44
    lwz     r5, 0x8c(sp)
    addi    r4, r31, 0x29c
    stw     r0, 0x44(sp)
    lwz     r0, 0x90(sp)
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x44(sp)
    lwz     r3, 0x48(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    b       branch_0x8025ec7c

branch_0x8025ec40:
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x38
    lwz     r0, 0x14(r31)
    addi    r4, r31, 0x29c
    stw     r5, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x40(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
branch_0x8025ec7c:
    lfs     f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    fmuls   f2, f0, f0
    lfs     f3, 0x74(sp)
    fmuls   f4, f1, f1
    lfs     f0, -0xde8(rtoc)
    fmadds  f2, f3, f3, f2
    fadds   f5, f4, f2
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8025ecac
    b       branch_0x8025ecd0

branch_0x8025ecac:
    frsqrte f4, f5
    lfs     f3, -0xdc8(rtoc)
    lfs     f0, -0xdac(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f5, f2, f0
    fmuls   f0, f3, f0
    fmuls   f5, f5, f0
branch_0x8025ecd0:
    lfs     f0, -0xde4(rtoc)
    fcmpo   cr0, f5, f0
    bge-    branch_0x8025ecf0
    fmr     f1, f30
    addi    r3, r31, 0x0
    li      r4, 0xeb
    bl      setAnimation__6TMarioFif
    b       branch_0x8025ed88

branch_0x8025ecf0:
    lfs     f2, 0x74(sp)
    bl      matan__Fff
    lha     r4, 0x96(r31)
    extsh   r0, r3
    subf    r0, r4, r0
    extsh   r30, r0
    cmpwi   r30, -0x2000
    blt-    branch_0x8025ed28
    cmpwi   r30, 0x2000
    bgt-    branch_0x8025ed28
    fmr     f1, f30
    addi    r3, r31, 0x0
    li      r4, 0xef
    bl      setAnimation__6TMarioFif
branch_0x8025ed28:
    cmpwi   r30, -0x6000
    ble-    branch_0x8025ed38
    cmpwi   r30, 0x6000
    blt-    branch_0x8025ed48
branch_0x8025ed38:
    fmr     f1, f30
    addi    r3, r31, 0x0
    li      r4, 0xec
    bl      setAnimation__6TMarioFif
branch_0x8025ed48:
    cmpwi   r30, -0x6000
    ble-    branch_0x8025ed68
    cmpwi   r30, -0x2000
    bge-    branch_0x8025ed68
    fmr     f1, f30
    addi    r3, r31, 0x0
    li      r4, 0xed
    bl      setAnimation__6TMarioFif
branch_0x8025ed68:
    cmpwi   r30, 0x2000
    ble-    branch_0x8025ed88
    cmpwi   r30, 0x6000
    bge-    branch_0x8025ed88
    fmr     f1, f30
    addi    r3, r31, 0x0
    li      r4, 0xee
    bl      setAnimation__6TMarioFif
branch_0x8025ed88:
    li      r3, 0x0
branch_0x8025ed8c:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    addi    sp, sp, 0xb0
    blr


.globl getCurrentPullParams__6TMarioFPfPf
getCurrentPullParams__6TMarioFPfPf: # 0x8025edac
    lwz     r7, 0x6c(r3)
    lis     r6, 0x800
    addi    r0, r6, 0xd
    lwz     r7, 0x4c(r7)
    li      r8, 0x0
    cmpw    r7, r0
    beq-    branch_0x8025ee20
    bge-    branch_0x8025edfc
    addi    r0, r6, 0x7
    cmpw    r7, r0
    beq-    branch_0x8025ee2c
    bge-    branch_0x8025edec
    addi    r0, r6, 0x6
    cmpw    r7, r0
    bge-    branch_0x8025ee18
    b       branch_0x8025ee2c

branch_0x8025edec:
    addi    r0, r6, 0x9
    cmpw    r7, r0
    bge-    branch_0x8025ee2c
    b       branch_0x8025ee10

branch_0x8025edfc:
    lis     r6, 0x1000
    addi    r0, r6, 0x28
    cmpw    r7, r0
    beq-    branch_0x8025ee28
    b       branch_0x8025ee2c

branch_0x8025ee10:
    addi    r8, r3, 0x147c
    b       branch_0x8025ee2c

branch_0x8025ee18:
    addi    r8, r3, 0x14d4
    b       branch_0x8025ee2c

branch_0x8025ee20:
    addi    r8, r3, 0x152c
    b       branch_0x8025ee2c

branch_0x8025ee28:
    addi    r8, r3, 0x1584
branch_0x8025ee2c:
    cmplwi  r8, 0x0
    beqlr-    

    lwz     r0, 0x7c(r3)
    cmplwi  r0, 0x560
    bne-    branch_0x8025ee54
    lfs     f0, 0x18(r8)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x2c(r8)
    stfs    f0, 0x0(r5)
    blr

branch_0x8025ee54:
    lfs     f0, 0x40(r8)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x54(r8)
    stfs    f0, 0x0(r5)
    blr


.globl wireRolling__6TMarioFv
wireRolling__6TMarioFv: # 0x8025ee68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stfd    f31, 0x198(sp)
    addi    r4, sp, 0x7c
    stmw    r27, 0x184(sp)
    mr      r27, r3
    lha     r30, 0x94(r3)
    addi    r3, sp, 0x64
    lwz     r5, 0x428(r27)
    lwz     r0, 0x42c(r27)
    stw     r5, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x430(r27)
    stw     r0, 0x84(sp)
    lwz     r5, 0x434(r27)
    lwz     r0, 0x438(r27)
    stw     r5, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x43c(r27)
    stw     r0, 0x6c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x64(sp)
    addi    r3, sp, 0x4c
    lwz     r5, 0x68(sp)
    addi    r4, sp, 0x94
    stw     r0, 0x94(sp)
    lwz     r0, 0x6c(sp)
    stw     r5, 0x98(sp)
    stw     r0, 0x9c(sp)
    lfs     f31, 0x440(r27)
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x4c
    fmr     f1, f31
    bl      __amu__Q29JGeometry8TVec3_f_Ff
    addi    r3, sp, 0x158
    addi    r4, sp, 0x4c
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x7c(sp)
    addi    r3, sp, 0x58
    lwz     r5, 0x80(sp)
    addi    r4, sp, 0x158
    stw     r0, 0x58(sp)
    lwz     r0, 0x84(sp)
    stw     r5, 0x5c(sp)
    stw     r0, 0x60(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x58(sp)
    addi    r6, sp, 0xa4
    lwz     r0, 0x5c(sp)
    li      r4, 0x0
    li      r5, 0x0
    stw     r3, 0x10(r27)
    stw     r0, 0x14(r27)
    lwz     r0, 0x60(sp)
    stw     r0, 0x18(r27)
    lfs     f1, 0x14(r27)
    lfs     f0, -0xde0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r27)
    lfs     f1, -0xde8(rtoc)
    lha     r3, 0x94(r27)
    fmr     f2, f1
    fmr     f3, f1
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    lfs     f1, -0xde8(rtoc)
    addi    r6, sp, 0xd4
    lha     r4, 0x96(r27)
    li      r3, 0x0
    fmr     f2, f1
    fmr     f3, f1
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    addi    r3, sp, 0xd4
    addi    r4, sp, 0xa4
    addi    r5, sp, 0x104
    bl      PSMTXConcat
    lfs     f1, 0x44c(r27)
    addi    r4, sp, 0x134
    lfs     f0, -0xde8(rtoc)
    mr      r5, r4
    fneg    f2, f1
    lfs     f1, -0xde4(rtoc)
    addi    r3, sp, 0x104
    stfs    f0, 0x134(sp)
    fmuls   f1, f2, f1
    stfs    f1, 0x138(sp)
    stfs    f0, 0x13c(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x10(r27)
    lfs     f0, 0x134(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r27)
    lfs     f1, 0x14(r27)
    lfs     f0, 0x138(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r27)
    lfs     f1, 0x18(r27)
    lfs     f0, 0x13c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r27)
    lfs     f1, 0x9c(sp)
    lfs     f2, 0x94(sp)
    bl      matan__Fff
    lwz     r0, 0x74(r27)
    addi    r31, r3, 0x0
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025f024
    lhz     r0, 0x84(r27)
    ori     r0, r0, 0x1
    sth     r0, 0x84(r27)
branch_0x8025f024:
    lhz     r0, 0x84(r27)
    lha     r29, 0x139c(r27)
    clrlwi. r4, r0, 31
    beq-    branch_0x8025f070
    lha     r0, 0xf6(r27)
    cmpwi   r0, 0x0
    bge-    branch_0x8025f070
    lha     r3, 0x94(r27)
    cmpwi   r3, -0x2000
    ble-    branch_0x8025f070
    subi    r0, r29, 0x2000
    cmpw    r3, r0
    bgt-    branch_0x8025f070
    addi    r3, r27, 0x0
    li      r4, 0x893
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025f584

branch_0x8025f070:
    cmpwi   r4, 0x0
    beq-    branch_0x8025f0b4
    lha     r0, 0xf6(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x8025f0b4
    lha     r3, 0x94(r27)
    subfic  r0, r29, 0x6000
    cmpw    r0, r3
    bgt-    branch_0x8025f0b4
    cmpwi   r3, 0x6000
    bge-    branch_0x8025f0b4
    addi    r3, r27, 0x0
    li      r4, 0x893
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025f584

branch_0x8025f0b4:
    lwz     r0, 0x74(r27)
    clrlwi. r0, r0, 31
    beq-    branch_0x8025f108
    lha     r3, 0x90(r27)
    extsh   r0, r31
    subf    r0, r3, r0
    extsh   r28, r0
    cmpwi   r28, -0x2000
    ble-    branch_0x8025f0ec
    cmpwi   r28, 0x3555
    bge-    branch_0x8025f0ec
    mr      r3, r27
    lfs     f1, -0xdac(rtoc)
    bl      wireMove__6TMarioFf
branch_0x8025f0ec:
    cmpwi   r28, -0x6000
    blt-    branch_0x8025f0fc
    cmpwi   r28, 0x4aaa
    ble-    branch_0x8025f108
branch_0x8025f0fc:
    mr      r3, r27
    lfs     f1, -0xd98(rtoc)
    bl      wireMove__6TMarioFf
branch_0x8025f108:
    lwz     r0, 0x380(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x8025f198
    lwz     r3, 0x3e4(r27)
    cmplwi  r3, 0x0
    beq-    branch_0x8025f198
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025f198
    lwz     r3, 0x3e4(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x8025f140
    li      r3, 0x0
    b       branch_0x8025f18c

branch_0x8025f140:
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x8025f174
    bge-    branch_0x8025f160
    cmpwi   r0, 0x1
    beq-    branch_0x8025f16c
    bge-    branch_0x8025f184
    b       branch_0x8025f184

branch_0x8025f160:
    cmpwi   r0, 0x6
    bge-    branch_0x8025f184
    b       branch_0x8025f17c

branch_0x8025f16c:
    lha     r0, 0x1388(r27)
    b       branch_0x8025f188

branch_0x8025f174:
    lha     r0, 0x1360(r27)
    b       branch_0x8025f188

branch_0x8025f17c:
    lha     r0, 0x1374(r27)
    b       branch_0x8025f188

branch_0x8025f184:
    lha     r0, 0x134c(r27)
branch_0x8025f188:
    extsh   r3, r0
branch_0x8025f18c:
    lha     r0, 0xf6(r27)
    add     r0, r0, r3
    sth     r0, 0xf6(r27)
branch_0x8025f198:
    lha     r0, 0x13c4(r27)
    lis     r4, 0x4330
    lhz     r3, 0x94(r27)
    xoris   r5, r0, 0x8000
    lwz     r0, -0x5eac(r13)
    stw     r5, 0x17c(sp)
    sraw    r0, r3, r0
    lfd     f2, -0xda0(rtoc)
    stw     r4, 0x178(sp)
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    lfd     f1, 0x178(sp)
    lfsx    f0, r3, r0
    fsubs   f1, f1, f2
    lha     r0, 0xf6(r27)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x170(sp)
    lwz     r3, 0x174(sp)
    subf    r0, r3, r0
    sth     r0, 0xf6(r27)
    lwz     r0, 0x74(r27)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x8025f200
    li      r0, 0x1
    b       branch_0x8025f204

branch_0x8025f200:
    li      r0, 0x0
branch_0x8025f204:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025f244
    lha     r3, 0xf6(r27)
    lis     r0, 0x4330
    lfd     f2, -0xda0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x13d8(r27)
    stw     r3, 0x174(sp)
    stw     r0, 0x170(sp)
    lfd     f1, 0x170(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x178(sp)
    lwz     r0, 0x17c(sp)
    sth     r0, 0xf6(r27)
branch_0x8025f244:
    lha     r0, 0xf6(r27)
    neg     r3, r29
    cmpw    r0, r3
    bge-    branch_0x8025f25c
    extsh   r0, r3
    sth     r0, 0xf6(r27)
branch_0x8025f25c:
    lha     r0, 0xf6(r27)
    cmpw    r0, r29
    ble-    branch_0x8025f26c
    sth     r29, 0xf6(r27)
branch_0x8025f26c:
    lha     r4, 0x94(r27)
    lis     r0, 0x4330
    lha     r3, 0xf6(r27)
    cmpwi   r30, -0x4000
    add     r3, r4, r3
    sth     r3, 0x94(r27)
    lha     r3, 0xf6(r27)
    lfd     f2, -0xda0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, -0xd94(rtoc)
    stw     r3, 0x174(sp)
    stw     r0, 0x170(sp)
    lfd     f1, 0x170(sp)
    fsubs   f1, f1, f2
    fabs    f1, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x44c(r27)
    lfs     f0, -0xde8(rtoc)
    stfs    f0, 0x444(r27)
    bge-    branch_0x8025f2d8
    lha     r0, 0x94(r27)
    cmpwi   r0, 0x4000
    ble-    branch_0x8025f2d8
    lhz     r0, 0x84(r27)
    ori     r0, r0, 0x2
    sth     r0, 0x84(r27)
    b       branch_0x8025f2f0

branch_0x8025f2d8:
    lha     r0, 0x94(r27)
    cmpw    r30, r0
    bge-    branch_0x8025f2f0
    lhz     r0, 0x84(r27)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x84(r27)
branch_0x8025f2f0:
    lhz     r0, 0x84(r27)
    li      r29, 0x0
    li      r28, 0x0
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025f40c
    lha     r0, 0x94(r27)
    lha     r3, 0x550(r27)
    cmpw    r0, r3
    bge-    branch_0x8025f3c8
    cmpw    r3, r30
    bgt-    branch_0x8025f3c8
    li      r0, 0x381e
    stw     r0, 0x548(r27)
    li      r29, 0x1817
    li      r28, 0x1
    lbz     r0, 0x54d(r27)
    stb     r0, 0x54c(r27)
    lhz     r0, 0x84(r27)
    rlwinm. r0, r0, 0, 28, 29
    bne-    branch_0x8025f390
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0xda0(rtoc)
    stw     r0, 0x174(sp)
    lis     r0, 0x4330
    lfs     f1, -0xd90(rtoc)
    stw     r0, 0x170(sp)
    lfs     f0, -0xdc8(rtoc)
    lfd     f2, 0x170(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025f384
    lhz     r0, 0x84(r27)
    ori     r0, r0, 0x4
    sth     r0, 0x84(r27)
    b       branch_0x8025f390

branch_0x8025f384:
    lhz     r0, 0x84(r27)
    ori     r0, r0, 0x8
    sth     r0, 0x84(r27)
branch_0x8025f390:
    lhz     r0, 0x84(r27)
    rlwinm  r0, r0, 0, 28, 29
    cmpwi   r0, 0x4
    bne-    branch_0x8025f3ac
    addi    r3, r27, 0x0
    li      r4, 0x78c1
    bl      startVoice__6TMarioFUl
branch_0x8025f3ac:
    lhz     r0, 0x84(r27)
    rlwinm  r0, r0, 0, 28, 29
    cmpwi   r0, 0x8
    bne-    branch_0x8025f3c8
    addi    r3, r27, 0x0
    li      r4, 0x78c4
    bl      startVoice__6TMarioFUl
branch_0x8025f3c8:
    lha     r3, 0x94(r27)
    lha     r0, 0x552(r27)
    cmpw    r3, r0
    bge-    branch_0x8025f3e8
    cmpw    r0, r30
    bgt-    branch_0x8025f3e8
    li      r29, 0x180f
    li      r28, 0x1
branch_0x8025f3e8:
    extsh.  r0, r30
    ble-    branch_0x8025f46c
    extsh.  r0, r3
    bgt-    branch_0x8025f46c
    li      r0, 0x381e
    stw     r0, 0x548(r27)
    lbz     r0, 0x54d(r27)
    stb     r0, 0x54c(r27)
    b       branch_0x8025f46c

branch_0x8025f40c:
    lha     r0, 0x94(r27)
    lha     r3, 0x554(r27)
    cmpw    r0, r3
    bge-    branch_0x8025f43c
    cmpw    r3, r30
    bgt-    branch_0x8025f43c
    li      r0, 0x381f
    stw     r0, 0x548(r27)
    li      r29, 0x1815
    li      r28, 0x1
    lbz     r0, 0x54d(r27)
    stb     r0, 0x54c(r27)
branch_0x8025f43c:
    lha     r3, 0x554(r27)
    cmpw    r30, r3
    bge-    branch_0x8025f46c
    lha     r0, 0x94(r27)
    cmpw    r3, r0
    bgt-    branch_0x8025f46c
    li      r0, 0x3820
    stw     r0, 0x548(r27)
    li      r29, 0x1816
    li      r28, 0x1
    lbz     r0, 0x54d(r27)
    stb     r0, 0x54c(r27)
branch_0x8025f46c:
    cmpwi   r28, 0x1
    bne-    branch_0x8025f4b4
    lwz     r3, -0x6044(r13)
    mr      r4, r29
    lfs     f31, 0x44c(r27)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8025f4b4
    fmr     f1, f31
    addi    r3, r29, 0x0
    addi    r4, r27, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x8025f4b4:
    mr      r3, r27
    bl      blurEffect__6TMarioFv
    lha     r0, 0x94(r27)
    lha     r4, 0x13b0(r27)
    cmpwi   r0, -0x200
    ble-    branch_0x8025f560
    cmpwi   r0, 0x200
    bge-    branch_0x8025f560
    lha     r3, 0xf6(r27)
    neg     r0, r4
    cmpw    r0, r3
    bge-    branch_0x8025f560
    cmpw    r3, r4
    bge-    branch_0x8025f560
    li      r28, 0x0
    sth     r28, 0x94(r27)
    sth     r28, 0xf6(r27)
    lfs     f0, -0xde8(rtoc)
    stfs    f0, 0x444(r27)
    stfs    f0, 0x44c(r27)
    lwz     r0, 0x6c(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x8025f524
    mr      r3, r27
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8025f524
    li      r28, 0x1
branch_0x8025f524:
    clrlwi. r0, r28, 24
    beq-    branch_0x8025f548
    lis     r4, 0x1000
    addi    r3, r27, 0x0
    addi    r4, r4, 0x357
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025f584

branch_0x8025f548:
    addi    r3, r27, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025f584

branch_0x8025f560:
    addi    r0, r31, 0x4000
    sth     r0, 0x96(r27)
    addi    r3, r27, 0x0
    li      r4, 0x33
    lha     r0, 0x96(r27)
    sth     r0, 0x9a(r27)
    lfs     f1, -0xde4(rtoc)
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
branch_0x8025f584:
    lmw     r27, 0x184(sp)
    lwz     r0, 0x1a4(sp)
    lfd     f31, 0x198(sp)
    addi    sp, sp, 0x1a0
    mtlr    r0
    blr


.globl wireHanging__6TMarioFv
wireHanging__6TMarioFv: # 0x8025f59c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x198(sp)
    stfd    f31, 0x190(sp)
    addi    r4, sp, 0x9c
    stw     r31, 0x18c(sp)
    mr      r31, r3
    stw     r30, 0x188(sp)
    lwz     r5, 0x428(r3)
    addi    r3, sp, 0x78
    lwz     r0, 0x42c(r31)
    stw     r5, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x430(r31)
    stw     r0, 0xa4(sp)
    lwz     r5, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r5, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x80(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x78(sp)
    addi    r3, sp, 0x60
    lwz     r5, 0x7c(sp)
    addi    r4, sp, 0xb4
    stw     r0, 0xb4(sp)
    lwz     r0, 0x80(sp)
    stw     r5, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lfs     f31, 0x440(r31)
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x60
    fmr     f1, f31
    bl      __amu__Q29JGeometry8TVec3_f_Ff
    addi    r3, sp, 0x178
    addi    r4, sp, 0x60
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x9c(sp)
    addi    r3, sp, 0x6c
    lwz     r5, 0xa0(sp)
    addi    r4, sp, 0x178
    stw     r0, 0x6c(sp)
    lwz     r0, 0xa4(sp)
    stw     r5, 0x70(sp)
    stw     r0, 0x74(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x6c(sp)
    addi    r6, sp, 0xc4
    lwz     r0, 0x70(sp)
    li      r4, 0x0
    li      r5, 0x0
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x74(sp)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0xde0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, -0xde8(rtoc)
    lha     r3, 0x94(r31)
    fmr     f2, f1
    fmr     f3, f1
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    lfs     f1, -0xde8(rtoc)
    addi    r6, sp, 0xf4
    lha     r4, 0x96(r31)
    li      r3, 0x0
    fmr     f2, f1
    fmr     f3, f1
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    addi    r3, sp, 0xf4
    addi    r4, sp, 0xc4
    addi    r5, sp, 0x124
    bl      PSMTXConcat
    lfs     f1, 0x44c(r31)
    addi    r4, sp, 0x154
    lfs     f0, -0xde8(rtoc)
    mr      r5, r4
    fneg    f2, f1
    lfs     f1, -0xde4(rtoc)
    addi    r3, sp, 0x124
    stfs    f0, 0x154(sp)
    fmuls   f1, f2, f1
    stfs    f1, 0x158(sp)
    stfs    f0, 0x15c(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x10(r31)
    lfs     f0, 0x154(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x158(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x15c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0xbc(sp)
    lfs     f2, 0xb4(sp)
    bl      matan__Fff
    lfs     f1, 0xe8(r31)
    lfs     f0, 0xec(r31)
    lwz     r5, 0x74(r31)
    fsubs   f1, f1, f0
    lfs     f0, -0xde0(rtoc)
    rlwinm  r0, r5, 0, 30, 30
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    mfcr    r4
    cmplwi  r0, 0x0
    extrwi  r0, r4, 1, 2
    beq-    branch_0x8025f798
    cmpwi   r0, 0x0
    beq-    branch_0x8025f798
    lfs     f0, -0xdcc(rtoc)
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    stfs    f0, 0x444(r31)
    addi    r4, r4, 0x556
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025fb74

branch_0x8025f798:
    rlwinm. r0, r5, 0, 16, 16
    beq-    branch_0x8025f870
    lwz     r3, 0x68(r31)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x68(r31)
    addi    r4, sp, 0x98
    lfs     f0, -0xde8(rtoc)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xb0(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, -0xdb8(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f0, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x14(r31)
    lfs     f0, -0xd8c(rtoc)
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025f850
    stfs    f0, 0x14(r31)
    b       branch_0x8025f854

branch_0x8025f850:
    stfs    f1, 0x14(r31)
branch_0x8025f854:
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8ba
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025fb74

branch_0x8025f870:
    li      r30, 0x0
    sth     r30, 0xf6(r31)
    extsh   r4, r3
    addi    r0, r4, 0x4000
    sth     r30, 0x94(r31)
    sth     r0, 0x96(r31)
    sth     r3, 0x9a(r31)
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8025fa24
    lha     r0, 0x90(r31)
    subf    r0, r0, r4
    extsh   r30, r0
    cmpwi   r30, -0x2000
    ble-    branch_0x8025f8ec
    cmpwi   r30, 0x3555
    bge-    branch_0x8025f8ec
    mr      r3, r31
    lfs     f1, -0xdac(rtoc)
    bl      wireMove__6TMarioFf
    cmpwi   r3, 0x0
    beq-    branch_0x8025f8dc
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xe5
    bl      setAnimation__6TMarioFif
    b       branch_0x8025f8ec

branch_0x8025f8dc:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xe3
    bl      setAnimation__6TMarioFif
branch_0x8025f8ec:
    cmpwi   r30, -0x6000
    blt-    branch_0x8025f8fc
    cmpwi   r30, 0x4aaa
    ble-    branch_0x8025f934
branch_0x8025f8fc:
    mr      r3, r31
    lfs     f1, -0xd98(rtoc)
    bl      wireMove__6TMarioFf
    cmpwi   r3, 0x0
    beq-    branch_0x8025f924
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xe6
    bl      setAnimation__6TMarioFif
    b       branch_0x8025f934

branch_0x8025f924:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xe3
    bl      setAnimation__6TMarioFif
branch_0x8025f934:
    cmpwi   r30, -0x6000
    blt-    branch_0x8025f968
    cmpwi   r30, -0x2000
    bgt-    branch_0x8025f968
    lfs     f0, -0xdcc(rtoc)
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    stfs    f0, 0x444(r31)
    addi    r4, r4, 0x556
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025fb74

branch_0x8025f968:
    cmpwi   r30, 0x3555
    blt-    branch_0x8025fb70
    cmpwi   r30, 0x4aaa
    bgt-    branch_0x8025fb70
    lfs     f0, -0xde8(rtoc)
    addi    r4, sp, 0x94
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xb0(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, -0xdb8(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f0, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x14(r31)
    lfs     f0, -0xd8c(rtoc)
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025fa04
    stfs    f0, 0x14(r31)
    b       branch_0x8025fa08

branch_0x8025fa04:
    stfs    f1, 0x14(r31)
branch_0x8025fa08:
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8ba
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025fb70

branch_0x8025fa24:
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8025fb60
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025fb60
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8025fb60
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8025fa58
    b       branch_0x8025faa4

branch_0x8025fa58:
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x8025fa8c
    bge-    branch_0x8025fa78
    cmpwi   r0, 0x1
    beq-    branch_0x8025fa84
    bge-    branch_0x8025fa9c
    b       branch_0x8025fa9c

branch_0x8025fa78:
    cmpwi   r0, 0x6
    bge-    branch_0x8025fa9c
    b       branch_0x8025fa94

branch_0x8025fa84:
    lha     r0, 0x1388(r31)
    b       branch_0x8025faa0

branch_0x8025fa8c:
    lha     r0, 0x1360(r31)
    b       branch_0x8025faa0

branch_0x8025fa94:
    lha     r0, 0x1374(r31)
    b       branch_0x8025faa0

branch_0x8025fa9c:
    lha     r0, 0x134c(r31)
branch_0x8025faa0:
    extsh   r30, r0
branch_0x8025faa4:
    extsh.  r0, r30
    ble-    branch_0x8025fac4
    lha     r0, 0x13b0(r31)
    lha     r3, 0xf6(r31)
    slwi    r0, r0, 1
    add     r0, r3, r0
    sth     r0, 0xf6(r31)
    b       branch_0x8025fad8

branch_0x8025fac4:
    lha     r3, 0x13b0(r31)
    lha     r0, 0xf6(r31)
    slwi    r3, r3, 1
    subf    r0, r3, r0
    sth     r0, 0xf6(r31)
branch_0x8025fad8:
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8025faec
    li      r5, 0x0
    b       branch_0x8025fb38

branch_0x8025faec:
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x8025fb20
    bge-    branch_0x8025fb0c
    cmpwi   r0, 0x1
    beq-    branch_0x8025fb18
    bge-    branch_0x8025fb30
    b       branch_0x8025fb30

branch_0x8025fb0c:
    cmpwi   r0, 0x6
    bge-    branch_0x8025fb30
    b       branch_0x8025fb28

branch_0x8025fb18:
    lha     r0, 0x1388(r31)
    b       branch_0x8025fb34

branch_0x8025fb20:
    lha     r0, 0x1360(r31)
    b       branch_0x8025fb34

branch_0x8025fb28:
    lha     r0, 0x1374(r31)
    b       branch_0x8025fb34

branch_0x8025fb30:
    lha     r0, 0x134c(r31)
branch_0x8025fb34:
    extsh   r5, r0
branch_0x8025fb38:
    lha     r0, 0xf6(r31)
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    add     r0, r0, r5
    sth     r0, 0xf6(r31)
    addi    r4, r4, 0x358
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025fb74

branch_0x8025fb60:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xe3
    bl      setAnimation__6TMarioFif
branch_0x8025fb70:
    li      r3, 0x0
branch_0x8025fb74:
    lwz     r0, 0x19c(sp)
    lfd     f31, 0x190(sp)
    lwz     r31, 0x18c(sp)
    mtlr    r0
    lwz     r30, 0x188(sp)
    addi    sp, sp, 0x198
    blr


.globl changeWireHanging__6TMarioFv
changeWireHanging__6TMarioFv: # 0x8025fb90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8025fbcc
    mr      r3, r30
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8025fbcc
    li      r31, 0x1
branch_0x8025fbcc:
    clrlwi. r0, r31, 24
    beq-    branch_0x8025fbf0
    lis     r4, 0x1000
    addi    r3, r30, 0x0
    addi    r4, r4, 0x357
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025fc04

branch_0x8025fbf0:
    addi    r3, r30, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025fc04:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl wireSWait__6TMarioFv
wireSWait__6TMarioFv: # 0x8025fc1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stfd    f31, 0x140(sp)
    addi    r4, sp, 0x50
    stw     r31, 0x13c(sp)
    mr      r31, r3
    stw     r30, 0x138(sp)
    lwz     r5, 0x428(r3)
    addi    r3, sp, 0x34
    lwz     r0, 0x42c(r31)
    stw     r5, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x430(r31)
    stw     r0, 0x58(sp)
    lwz     r5, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x3c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x34(sp)
    addi    r3, sp, 0x1c
    lwz     r5, 0x38(sp)
    addi    r4, sp, 0x68
    stw     r0, 0x68(sp)
    lwz     r0, 0x3c(sp)
    stw     r5, 0x6c(sp)
    stw     r0, 0x70(sp)
    lfs     f31, 0x440(r31)
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x1c
    fmr     f1, f31
    bl      __amu__Q29JGeometry8TVec3_f_Ff
    addi    r3, sp, 0x12c
    addi    r4, sp, 0x1c
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x50(sp)
    addi    r3, sp, 0x28
    lwz     r5, 0x54(sp)
    addi    r4, sp, 0x12c
    stw     r0, 0x28(sp)
    lwz     r0, 0x58(sp)
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x28(sp)
    addi    r6, sp, 0x78
    lwz     r0, 0x2c(sp)
    li      r4, 0x0
    li      r5, 0x0
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x30(sp)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0xde0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, -0xde8(rtoc)
    lha     r3, 0x94(r31)
    fmr     f2, f1
    fmr     f3, f1
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    lfs     f1, -0xde8(rtoc)
    addi    r6, sp, 0xa8
    lha     r4, 0x96(r31)
    li      r3, 0x0
    fmr     f2, f1
    fmr     f3, f1
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    addi    r3, sp, 0xa8
    addi    r4, sp, 0x78
    addi    r5, sp, 0xd8
    bl      PSMTXConcat
    lfs     f1, 0x44c(r31)
    addi    r4, sp, 0x108
    lfs     f0, -0xde8(rtoc)
    mr      r5, r4
    fneg    f2, f1
    lfs     f1, -0xde4(rtoc)
    addi    r3, sp, 0xd8
    stfs    f0, 0x108(sp)
    fmuls   f1, f2, f1
    stfs    f1, 0x10c(sp)
    stfs    f0, 0x110(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x10(r31)
    lfs     f0, 0x108(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x10c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x110(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0x70(sp)
    lfs     f2, 0x68(sp)
    bl      matan__Fff
    lwz     r0, 0x74(r31)
    addi    r30, r3, 0x0
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8025fdd8
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x100
    stw     r0, 0x118(r31)
branch_0x8025fdd8:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x8025fdec
    li      r0, 0x1
    b       branch_0x8025fdf0

branch_0x8025fdec:
    li      r0, 0x0
branch_0x8025fdf0:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8025fe7c
    lfs     f1, 0x44c(r31)
    lfs     f0, -0xde8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025fe7c
    lwz     r3, 0x68(r31)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x68(r31)
    addi    r3, r31, 0x0
    li      r4, 0x892
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0xde8(rtoc)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      setPlayerVelocity__6TMarioFf
    lfs     f2, 0x444(r31)
    lfs     f0, -0xde8(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8025fe74
    lfs     f1, -0xdcc(rtoc)
    lfs     f0, 0xa8(r31)
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0xa8(r31)
branch_0x8025fe74:
    mr      r3, r30
    b       branch_0x8025ff8c

branch_0x8025fe7c:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x8025feb8
    lfs     f0, -0xdcc(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x78e0
    stfs    f0, 0x444(r31)
    bl      startVoice__6TMarioFUl
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    addi    r4, r4, 0x554
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ff8c

branch_0x8025feb8:
    clrlwi. r0, r3, 31
    beq-    branch_0x8025ff68
    lha     r3, 0x90(r31)
    extsh   r0, r30
    subf    r0, r3, r0
    extsh   r0, r0
    cmpwi   r0, -0x4000
    ble-    branch_0x8025fef8
    cmpwi   r0, 0x4000
    bge-    branch_0x8025fef8
    addi    r3, r31, 0x0
    li      r4, 0x35c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ff8c

branch_0x8025fef8:
    lwz     r6, 0x428(r31)
    mr      r3, r31
    lwz     r0, 0x42c(r31)
    li      r4, 0x35b
    li      r5, 0x0
    stw     r6, 0x40(sp)
    li      r6, 0x0
    stw     r0, 0x44(sp)
    lwz     r0, 0x430(r31)
    stw     r0, 0x48(sp)
    lwz     r7, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r7, 0x428(r31)
    stw     r0, 0x42c(r31)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x430(r31)
    lwz     r7, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r7, 0x434(r31)
    stw     r0, 0x438(r31)
    lwz     r0, 0x48(sp)
    stw     r0, 0x43c(r31)
    lfs     f1, -0xde4(rtoc)
    lfs     f0, 0x440(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x440(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025ff8c

branch_0x8025ff68:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xe0
    bl      setAnimation__6TMarioFif
    sth     r30, 0x9a(r31)
    li      r3, 0x0
    lha     r4, 0x9a(r31)
    addi    r0, r4, 0x4000
    sth     r0, 0x96(r31)
branch_0x8025ff8c:
    lwz     r0, 0x14c(sp)
    lfd     f31, 0x140(sp)
    lwz     r31, 0x13c(sp)
    mtlr    r0
    lwz     r30, 0x138(sp)
    addi    sp, sp, 0x148
    blr


.globl wireWait__6TMarioFv
wireWait__6TMarioFv: # 0x8025ffa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    addi    r4, sp, 0x54
    stw     r31, 0x14c(sp)
    mr      r31, r3
    stw     r30, 0x148(sp)
    stw     r29, 0x144(sp)
    lwz     r5, 0x428(r3)
    addi    r3, sp, 0x44
    lwz     r0, 0x42c(r31)
    stw     r5, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x430(r31)
    stw     r0, 0x5c(sp)
    lwz     r5, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x4c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x44(sp)
    addi    r3, sp, 0x2c
    lwz     r5, 0x48(sp)
    addi    r4, sp, 0x6c
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4c(sp)
    stw     r5, 0x70(sp)
    stw     r0, 0x74(sp)
    lfs     f31, 0x440(r31)
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x2c
    fmr     f1, f31
    bl      __amu__Q29JGeometry8TVec3_f_Ff
    addi    r3, sp, 0x130
    addi    r4, sp, 0x2c
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x54(sp)
    addi    r3, sp, 0x38
    lwz     r5, 0x58(sp)
    addi    r4, sp, 0x130
    stw     r0, 0x38(sp)
    lwz     r0, 0x5c(sp)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x38(sp)
    addi    r6, sp, 0x7c
    lwz     r0, 0x3c(sp)
    li      r4, 0x0
    li      r5, 0x0
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x40(sp)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0xde0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, -0xde8(rtoc)
    lha     r3, 0x94(r31)
    fmr     f2, f1
    fmr     f3, f1
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    lfs     f1, -0xde8(rtoc)
    addi    r6, sp, 0xac
    lha     r4, 0x96(r31)
    li      r3, 0x0
    fmr     f2, f1
    fmr     f3, f1
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    addi    r3, sp, 0xac
    addi    r4, sp, 0x7c
    addi    r5, sp, 0xdc
    bl      PSMTXConcat
    lfs     f1, 0x44c(r31)
    addi    r4, sp, 0x10c
    lfs     f0, -0xde8(rtoc)
    mr      r5, r4
    fneg    f2, f1
    lfs     f1, -0xde4(rtoc)
    addi    r3, sp, 0xdc
    stfs    f0, 0x10c(sp)
    fmuls   f1, f2, f1
    stfs    f1, 0x110(sp)
    stfs    f0, 0x114(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x10(r31)
    lfs     f0, 0x10c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x110(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x114(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0x74(sp)
    lfs     f2, 0x6c(sp)
    bl      matan__Fff
    lwz     r0, 0x74(r31)
    addi    r30, r3, 0x0
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80260168
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x100
    stw     r0, 0x118(r31)
branch_0x80260168:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x8026017c
    li      r0, 0x1
    b       branch_0x80260180

branch_0x8026017c:
    li      r0, 0x0
branch_0x80260180:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026029c
    lfs     f1, 0x44c(r31)
    lfs     f0, -0xde8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8026029c
    lwz     r3, 0x68(r31)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x68(r31)
    addi    r3, r31, 0x0
    li      r4, 0x892
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0xde8(rtoc)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      setPlayerVelocity__6TMarioFf
    lfs     f2, 0x444(r31)
    lfs     f0, -0xde8(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80260208
    lfs     f1, 0x143c(r31)
    lfs     f0, 0xa8(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xa8(r31)
branch_0x80260208:
    lfs     f1, 0xa8(r31)
    lfs     f0, 0x1450(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(r31)
    lfs     f1, 0x444(r31)
    lfs     f0, 0x544(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80260230
    li      r29, 0x1812
    b       branch_0x80260248

branch_0x80260230:
    lfs     f0, 0x540(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80260244
    li      r29, 0x1811
    b       branch_0x80260248

branch_0x80260244:
    li      r29, 0x1810
branch_0x80260248:
    lwz     r3, -0x6044(r13)
    mr      r4, r29
    lfs     f31, 0x44c(r31)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80260288
    fmr     f1, f31
    addi    r3, r29, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80260288:
    lwz     r0, 0x78(r31)
    addi    r3, r30, 0x0
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r31)
    b       branch_0x802603d8

branch_0x8026029c:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x802602cc
    lfs     f0, -0xdcc(rtoc)
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    stfs    f0, 0x444(r31)
    addi    r4, r4, 0x554
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802603d8

branch_0x802602cc:
    clrlwi. r0, r3, 31
    beq-    branch_0x802603b8
    lha     r3, 0x90(r31)
    extsh   r0, r30
    subf    r0, r3, r0
    extsh   r29, r0
    cmpwi   r29, -0x2000
    ble-    branch_0x80260360
    cmpwi   r29, 0x2000
    bge-    branch_0x80260360
    lfs     f1, -0xd88(rtoc)
    mr      r3, r31
    lfs     f2, 0x8c(r31)
    lfs     f0, -0xd94(rtoc)
    fmuls   f31, f1, f2
    fmuls   f1, f0, f2
    bl      wireMove__6TMarioFf
    cmpwi   r3, 0x0
    beq-    branch_0x80260350
    lfs     f1, 0x8c(r31)
    lfs     f0, -0xd84(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026033c
    fmr     f1, f31
    addi    r3, r31, 0x0
    li      r4, 0xdc
    bl      setAnimation__6TMarioFif
    b       branch_0x80260360

branch_0x8026033c:
    fmr     f1, f31
    addi    r3, r31, 0x0
    li      r4, 0xdb
    bl      setAnimation__6TMarioFif
    b       branch_0x80260360

branch_0x80260350:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xdd
    bl      setAnimation__6TMarioFif
branch_0x80260360:
    cmpwi   r29, -0x2000
    bge-    branch_0x8026038c
    addi    r3, r31, 0x0
    li      r4, 0x78e0
    bl      startVoice__6TMarioFUl
    addi    r3, r31, 0x0
    li      r4, 0x352
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802603d8

branch_0x8026038c:
    cmpwi   r29, 0x2000
    ble-    branch_0x802603c8
    addi    r3, r31, 0x0
    li      r4, 0x78e0
    bl      startVoice__6TMarioFUl
    addi    r3, r31, 0x0
    li      r4, 0x353
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802603d8

branch_0x802603b8:
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xdd
    bl      setAnimation__6TMarioFif
branch_0x802603c8:
    sth     r30, 0x96(r31)
    li      r3, 0x0
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
branch_0x802603d8:
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lwz     r31, 0x14c(sp)
    mtlr    r0
    lwz     r30, 0x148(sp)
    lwz     r29, 0x144(sp)
    addi    sp, sp, 0x158
    blr


.globl wireMove__6TMarioFf
wireMove__6TMarioFf: # 0x802603f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f1
    addi    r4, sp, 0x4c
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r5, 0x428(r3)
    addi    r3, sp, 0x18
    lwz     r0, 0x42c(r31)
    stw     r5, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x430(r31)
    stw     r0, 0x54(sp)
    lwz     r5, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r5, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x20(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x20(sp)
    stw     r3, 0x38(sp)
    lfs     f0, -0xde8(rtoc)
    stw     r0, 0x3c(sp)
    lfs     f1, 0x38(sp)
    lfs     f3, 0x3c(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x34(sp)
    fmuls   f3, f3, f3
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80260498
    b       branch_0x802604bc

branch_0x80260498:
    frsqrte f3, f4
    lfs     f2, -0xdc8(rtoc)
    lfs     f0, -0xdac(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x802604bc:
    lfs     f2, -0xd8c(rtoc)
    fdivs   f3, f31, f4
    lfs     f1, 0x440(r31)
    li      r3, 0x1
    lfs     f0, -0xde4(rtoc)
    fdivs   f2, f2, f4
    fadds   f1, f1, f3
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x802604ec
    stfs    f0, 0x440(r31)
    li      r3, 0x0
branch_0x802604ec:
    lfs     f0, 0x440(r31)
    fadds   f0, f0, f3
    fcmpo   cr0, f0, f2
    bge-    branch_0x80260504
    stfs    f2, 0x440(r31)
    li      r3, 0x0
branch_0x80260504:
    cmpwi   r3, 0x1
    bne-    branch_0x80260518
    lfs     f0, 0x440(r31)
    fadds   f0, f0, f3
    stfs    f0, 0x440(r31)
branch_0x80260518:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps
getOnWirePosAngle__6TMarioFPQ29JGeometry8TVec3_f_Ps: # 0x80260530
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stw     r31, 0x144(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x140(sp)
    mr      r30, r4
    addi    r4, sp, 0x12c
    stw     r29, 0x13c(sp)
    mr      r29, r3
    lwz     r6, 0x428(r3)
    lwz     r0, 0x42c(r3)
    addi    r3, sp, 0x44
    stw     r6, 0x12c(sp)
    stw     r0, 0x130(sp)
    lwz     r0, 0x430(r29)
    stw     r0, 0x134(sp)
    lwz     r5, 0x434(r29)
    lwz     r0, 0x438(r29)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x43c(r29)
    stw     r0, 0x4c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x44(sp)
    addi    r3, sp, 0x2c
    lwz     r4, 0x48(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x4c(sp)
    stw     r4, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r5, 0x14(sp)
    lwz     r4, 0x18(sp)
    stw     r5, 0x114(sp)
    lwz     r0, 0x1c(sp)
    stw     r4, 0x118(sp)
    stw     r0, 0x11c(sp)
    lfs     f1, 0x440(r29)
    stw     r5, 0x2c(sp)
    stw     r4, 0x30(sp)
    stw     r0, 0x34(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r5, 0x2c(sp)
    addi    r3, sp, 0x38
    lwz     r0, 0x12c(sp)
    addi    r4, sp, 0x50
    stw     r5, 0x50(sp)
    lwz     r5, 0x30(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x130(sp)
    stw     r5, 0x54(sp)
    lwz     r5, 0x34(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x134(sp)
    stw     r5, 0x58(sp)
    stw     r0, 0x40(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x38(sp)
    addi    r6, sp, 0xe0
    lwz     r0, 0x3c(sp)
    li      r4, 0x0
    li      r5, 0x0
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0x40(sp)
    stw     r0, 0x8(r30)
    lfs     f1, 0x4(r30)
    lfs     f0, -0xde0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r30)
    lfs     f1, -0xde8(rtoc)
    lha     r3, 0x94(r29)
    fmr     f2, f1
    fmr     f3, f1
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    lfs     f1, -0xde8(rtoc)
    addi    r6, sp, 0xb0
    lha     r4, 0x96(r29)
    li      r3, 0x0
    fmr     f2, f1
    fmr     f3, f1
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    addi    r3, sp, 0xb0
    addi    r4, sp, 0xe0
    addi    r5, sp, 0x80
    bl      PSMTXConcat
    lfs     f1, 0x44c(r29)
    addi    r4, sp, 0x74
    lfs     f0, -0xde8(rtoc)
    mr      r5, r4
    fneg    f2, f1
    lfs     f1, -0xde4(rtoc)
    addi    r3, sp, 0x80
    stfs    f0, 0x74(sp)
    fmuls   f1, f2, f1
    stfs    f1, 0x78(sp)
    stfs    f0, 0x7c(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x0(r30)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r30)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r30)
    lfs     f1, 0x8(r30)
    lfs     f0, 0x7c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r30)
    lfs     f1, 0x11c(sp)
    lfs     f2, 0x114(sp)
    bl      matan__Fff
    sth     r3, 0x0(r31)
    lwz     r0, 0x14c(sp)
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    mtlr    r0
    lwz     r29, 0x13c(sp)
    addi    sp, sp, 0x148
    blr


.globl hanging__6TMarioFv
hanging__6TMarioFv: # 0x80260718
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x278(sp)
    stfd    f31, 0x270(sp)
    stmw    r20, 0x240(sp)
    mr      r21, r3
    li      r22, 0x0
    lfs     f2, 0xe8(r3)
    lfs     f1, 0xec(r3)
    lfs     f0, -0xde0(rtoc)
    fsubs   f1, f2, f1
    lhz     r0, 0x86(r3)
    lha     r4, 0x96(r3)
    lha     r3, 0x90(r3)
    fcmpo   cr0, f1, f0
    subf    r23, r4, r3
    cror    2, 1, 2
    mfcr    r3
    cmplwi  r0, 0x0
    extrwi  r30, r3, 1, 2
    bne-    branch_0x80260774
    li      r0, 0x0
    sth     r0, 0xf6(r21)
branch_0x80260774:
    addi    r24, r21, 0x12ec
    lhz     r3, 0x86(r21)
    lha     r0, 0x12ec(r21)
    cmpw    r3, r0
    bge-    branch_0x80260790
    addi    r0, r3, 0x1
    sth     r0, 0x86(r21)
branch_0x80260790:
    lwz     r4, 0x74(r21)
    andi.   r0, r4, 0x8004
    bne-    branch_0x8026080c
    lwz     r3, 0xe0(r21)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x1
    beq-    branch_0x802607c4
    cmplwi  r3, 0x4001
    beq-    branch_0x802607c4
    cmplwi  r3, 0x8001
    beq-    branch_0x802607c4
    cmplwi  r3, 0xc001
    bne-    branch_0x802607cc
branch_0x802607c4:
    li      r0, 0x1
    b       branch_0x802607d0

branch_0x802607cc:
    li      r0, 0x0
branch_0x802607d0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026080c
    cmplwi  r3, 0x6
    beq-    branch_0x802607f8
    cmplwi  r3, 0x4006
    beq-    branch_0x802607f8
    cmplwi  r3, 0x8006
    beq-    branch_0x802607f8
    cmplwi  r3, 0xc006
    bne-    branch_0x80260800
branch_0x802607f8:
    li      r0, 0x1
    b       branch_0x80260804

branch_0x80260800:
    li      r0, 0x0
branch_0x80260804:
    clrlwi. r0, r0, 24
    beq-    branch_0x802608cc
branch_0x8026080c:
    lwz     r0, 0x74(r21)
    addi    r4, sp, 0x17c
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x74(r21)
    lwz     r0, 0x74(r21)
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0x74(r21)
    lfs     f0, -0xde8(rtoc)
    stfs    f0, 0xa8(r21)
    stfs    f0, 0xb0(r21)
    lhz     r3, 0x96(r21)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, -0xdb8(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r21)
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r21)
    lhz     r3, 0x96(r21)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f0, 0x18(r21)
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r21)
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r21)
    lfs     f2, 0x14(r21)
    lfs     f3, 0x18(r21)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x14(r21)
    lfs     f0, -0xd8c(rtoc)
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x802608b0
    stfs    f0, 0x14(r21)
    b       branch_0x802608b4

branch_0x802608b0:
    stfs    f1, 0x14(r21)
branch_0x802608b4:
    addi    r3, r21, 0x0
    li      r4, 0x8a7
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8026112c

branch_0x802608cc:
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x80260904
    cmpwi   r30, 0x0
    beq-    branch_0x80260904
    addi    r3, r21, 0x0
    li      r4, 0x788f
    bl      startVoice__6TMarioFUl
    lis     r4, 0x3000
    addi    r3, r21, 0x0
    addi    r4, r4, 0x54f
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8026112c

branch_0x80260904:
    lfs     f2, 0x14(r21)
    li      r0, 0x4
    lfs     f0, -0xd80(rtoc)
    li      r28, 0x0
    lfs     f3, 0x18(r21)
    lfs     f1, 0x10(r21)
    fsubs   f2, f2, f0
    lfs     f0, -0xd7c(rtoc)
    addi    r4, sp, 0x210
    stfs    f1, 0x210(sp)
    lwz     r3, -0x6328(r13)
    stfs    f2, 0x214(sp)
    stfs    f3, 0x218(sp)
    stfs    f0, 0x21c(sp)
    stw     r0, 0x220(sp)
    stw     r28, 0x228(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lfs     f31, -0xdd4(rtoc)
    addi    r29, r28, 0x0
    addi    r20, r28, 0x0
    addi    r31, sp, 0x210
    b       branch_0x802609f0

branch_0x8026095c:
    addi    r26, r20, 0x1c
    add     r26, r31, r26
    lwz     r27, 0x0(r26)
    lfs     f1, 0x3c(r27)
    lfs     f2, 0x34(r27)
    bl      matan__Fff
    lha     r4, 0x96(r21)
    addis   r4, r4, 0x1
    subi    r0, r4, 0x8000
    subf    r0, r0, r3
    extsh   r0, r0
    cmpwi   r0, -0x2000
    ble-    branch_0x802609e8
    cmpwi   r0, 0x2000
    bge-    branch_0x802609e8
    lwz     r3, 0x10(r21)
    lwz     r0, 0x14(r21)
    stw     r3, 0x16c(sp)
    stw     r0, 0x170(sp)
    lwz     r0, 0x18(r21)
    stw     r0, 0x174(sp)
    lfs     f1, 0x38(r27)
    lfs     f0, 0x170(sp)
    lfs     f2, 0x34(r27)
    fmuls   f0, f1, f0
    lfs     f1, 0x16c(sp)
    lfs     f4, 0x3c(r27)
    lfs     f3, 0x174(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, 0x40(r27)
    fmadds  f0, f4, f3, f0
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x802609e8
    lwz     r28, 0x0(r26)
branch_0x802609e8:
    addi    r29, r29, 0x1
    addi    r20, r20, 0x4
branch_0x802609f0:
    lwz     r0, 0x224(sp)
    cmpw    r29, r0
    blt+    branch_0x8026095c
    cmplwi  r28, 0x0
    bne-    branch_0x80260a18
    addi    r3, r21, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80260a18:
    cmplwi  r28, 0x0
    beq-    branch_0x80260ab8
    lhz     r0, 0x0(r28)
    cmplwi  r0, 0x10a
    bne-    branch_0x80260a34
    li      r0, 0x1
    b       branch_0x80260a38

branch_0x80260a34:
    li      r0, 0x0
branch_0x80260a38:
    clrlwi. r0, r0, 24
    beq-    branch_0x80260ab8
    lhz     r5, 0x96(r21)
    lis     r4, 0x3000
    lwz     r0, -0x5eac(r13)
    mr      r3, r21
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f2, -0xd78(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r21)
    lfsx    f1, r6, r0
    addi    r4, r4, 0x36b
    li      r5, 0x0
    fnmsubs  f0, f2, f1, f0
    li      r6, 0x0
    stfs    f0, 0x10(r21)
    lfs     f1, 0x14(r21)
    lfs     f0, -0xde0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r21)
    lhz     r7, 0x96(r21)
    lwz     r0, -0x5eac(r13)
    lwz     r8, -0x5ea4(r13)
    sraw    r0, r7, r0
    lfs     f0, 0x18(r21)
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r21)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8026112c

branch_0x80260ab8:
    lfs     f2, -0xd80(rtoc)
    li      r5, 0x1
    lfs     f0, 0x14(r21)
    li      r0, 0x0
    lfs     f3, 0x18(r21)
    lfs     f1, 0x10(r21)
    fadds   f2, f2, f0
    lfs     f0, -0xdd4(rtoc)
    addi    r4, sp, 0x1e0
    stfs    f1, 0x1e0(sp)
    lwz     r3, -0x6328(r13)
    stfs    f2, 0x1e4(sp)
    stfs    f3, 0x1e8(sp)
    stfs    f0, 0x1ec(sp)
    stw     r5, 0x1f0(sp)
    stw     r0, 0x1f8(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lwz     r3, 0x1e0(sp)
    lwz     r0, 0x1e4(sp)
    stw     r3, 0x10(r21)
    stw     r0, 0x14(r21)
    lwz     r0, 0x1e8(sp)
    stw     r0, 0x18(r21)
    lhz     r4, 0x86(r21)
    cmplwi  r4, 0x28
    blt-    branch_0x80260f34
    lwz     r0, 0x74(r21)
    clrlwi. r0, r0, 31
    beq-    branch_0x80260f34
    extsh   r0, r23
    cmpwi   r0, -0x400
    blt-    branch_0x80260b74
    cmpwi   r0, 0x400
    bgt-    branch_0x80260b74
    cmpwi   r30, 0x0
    beq-    branch_0x80260b74
    lfs     f1, -0xde4(rtoc)
    addi    r3, r21, 0x0
    li      r4, 0x0
    bl      setAnimation__6TMarioFif
    lis     r4, 0x3000
    addi    r3, r21, 0x0
    addi    r4, r4, 0x54c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8026112c

branch_0x80260b74:
    extsh   r3, r23
    cmpwi   r3, -0x71c7
    ble-    branch_0x80260b88
    cmpwi   r3, 0x71c7
    blt-    branch_0x80260c34
branch_0x80260b88:
    lfs     f0, -0xde8(rtoc)
    addi    r4, sp, 0x154
    stfs    f0, 0xa8(r21)
    stfs    f0, 0xb0(r21)
    lhz     r3, 0x96(r21)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, -0xdb8(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r21)
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r21)
    lhz     r3, 0x96(r21)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f0, 0x18(r21)
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r21)
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r21)
    lfs     f2, 0x14(r21)
    lfs     f3, 0x18(r21)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x14(r21)
    lfs     f0, -0xd8c(rtoc)
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x80260c14
    stfs    f0, 0x14(r21)
    b       branch_0x80260c18

branch_0x80260c14:
    stfs    f1, 0x14(r21)
branch_0x80260c18:
    lis     r4, 0x2
    addi    r3, r21, 0x0
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8026112c

branch_0x80260c34:
    lha     r0, 0x12d8(r21)
    cmpw    r4, r0
    bge-    branch_0x80260f34
    lwz     r0, 0x224(sp)
    cmpwi   r0, 0x0
    ble-    branch_0x80260f34
    cmpwi   r3, 0x400
    lfs     f3, 0x12b0(r21)
    ble-    branch_0x80260c94
    cmpwi   r3, 0x71c7
    bge-    branch_0x80260c94
    lfs     f2, 0x8c(r21)
    lfs     f1, 0x3c(r28)
    lfs     f0, 0x10(r21)
    fmuls   f1, f2, f1
    fnmsubs  f0, f3, f1, f0
    stfs    f0, 0x1c8(sp)
    lfs     f0, 0x14(r21)
    stfs    f0, 0x1cc(sp)
    lfs     f1, 0x34(r28)
    lfs     f0, 0x18(r21)
    fmuls   f1, f2, f1
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x1d0(sp)
branch_0x80260c94:
    extsh   r0, r23
    cmpwi   r0, -0x71c7
    ble-    branch_0x80260cdc
    cmpwi   r0, -0x400
    bge-    branch_0x80260cdc
    lfs     f2, 0x8c(r21)
    lfs     f1, 0x3c(r28)
    lfs     f0, 0x10(r21)
    fmuls   f1, f2, f1
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x1c8(sp)
    lfs     f0, 0x14(r21)
    stfs    f0, 0x1cc(sp)
    lfs     f1, 0x34(r28)
    lfs     f0, 0x18(r21)
    fmuls   f1, f2, f1
    fnmsubs  f0, f3, f1, f0
    stfs    f0, 0x1d0(sp)
branch_0x80260cdc:
    lfs     f0, 0x1c8(sp)
    li      r0, 0x1
    lfs     f1, -0xd80(rtoc)
    li      r27, 0x0
    stfs    f0, 0x198(sp)
    addi    r4, sp, 0x198
    lfs     f0, 0x1cc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x19c(sp)
    lfs     f0, 0x1d0(sp)
    stfs    f0, 0x1a0(sp)
    lfs     f0, -0xdd4(rtoc)
    stfs    f0, 0x1a4(sp)
    stw     r0, 0x1a8(sp)
    stw     r27, 0x1b0(sp)
    lwz     r3, -0x6328(r13)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lwz     r0, 0x198(sp)
    addi    r4, sp, 0x1c4
    lwz     r3, 0x19c(sp)
    stw     r0, 0x1c8(sp)
    lwz     r0, 0x1a0(sp)
    stw     r3, 0x1cc(sp)
    lfs     f1, -0xdd4(rtoc)
    stw     r0, 0x1d0(sp)
    lwz     r3, -0x6328(r13)
    lfs     f0, 0x1cc(sp)
    lfs     f31, 0x1d0(sp)
    fadds   f2, f1, f0
    lfs     f1, 0x1c8(sp)
    fmr     f3, f31
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x14(r21)
    lfs     f0, -0xd8c(rtoc)
    fsubs   f0, f2, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x80260f34
    lfs     f0, -0xdd4(rtoc)
    fadds   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x80260f34
    lhz     r6, 0x96(r21)
    li      r0, 0x4
    lwz     r5, -0x5eac(r13)
    addi    r4, sp, 0x198
    lwz     r3, -0x5ea8(r13)
    sraw    r5, r6, r5
    lfs     f0, -0xdd0(rtoc)
    slwi    r6, r5, 2
    lfs     f3, -0xd7c(rtoc)
    lwz     r5, -0x5ea4(r13)
    fsubs   f1, f1, f0
    lfsx    f2, r3, r6
    lfs     f0, 0x1c8(sp)
    lfsx    f4, r5, r6
    fnmsubs  f2, f3, f2, f0
    fnmsubs  f0, f3, f4, f31
    stfs    f2, 0x198(sp)
    stfs    f1, 0x19c(sp)
    stfs    f0, 0x1a0(sp)
    stfs    f3, 0x1a4(sp)
    stw     r0, 0x1a8(sp)
    stw     r27, 0x1b0(sp)
    lwz     r3, -0x6328(r13)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lfs     f31, -0xdd4(rtoc)
    addi    r29, r27, 0x0
    addi    r31, sp, 0x198
    li      r20, 0x0
    b       branch_0x80260e88

branch_0x80260df4:
    addi    r25, r20, 0x1c
    add     r25, r31, r25
    lwz     r26, 0x0(r25)
    lfs     f1, 0x3c(r26)
    lfs     f2, 0x34(r26)
    bl      matan__Fff
    lha     r4, 0x96(r21)
    addis   r4, r4, 0x1
    subi    r0, r4, 0x8000
    subf    r0, r0, r3
    extsh   r0, r0
    cmpwi   r0, -0x2000
    ble-    branch_0x80260e80
    cmpwi   r0, 0x2000
    bge-    branch_0x80260e80
    lwz     r3, 0x10(r21)
    lwz     r0, 0x14(r21)
    stw     r3, 0x130(sp)
    stw     r0, 0x134(sp)
    lwz     r0, 0x18(r21)
    stw     r0, 0x138(sp)
    lfs     f1, 0x38(r26)
    lfs     f0, 0x134(sp)
    lfs     f2, 0x34(r26)
    fmuls   f0, f1, f0
    lfs     f1, 0x130(sp)
    lfs     f4, 0x3c(r26)
    lfs     f3, 0x138(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, 0x40(r26)
    fmadds  f0, f4, f3, f0
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x80260e80
    lwz     r27, 0x0(r25)
branch_0x80260e80:
    addi    r29, r29, 0x1
    addi    r20, r20, 0x4
branch_0x80260e88:
    lwz     r0, 0x1ac(sp)
    cmpw    r29, r0
    blt+    branch_0x80260df4
    cmplwi  r27, 0x0
    beq-    branch_0x80260f34
    lfs     f1, 0x38(r28)
    addi    r20, r27, 0x3c
    lfs     f0, 0x38(r27)
    lfs     f2, 0x34(r28)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r27)
    lfs     f4, 0x3c(r28)
    lfs     f3, 0x3c(r27)
    fmadds  f0, f2, f1, f0
    lfs     f1, 0x8fc(r21)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x80260f34
    lfs     f1, 0x3c(r27)
    lfs     f2, 0x34(r27)
    bl      matan__Fff
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r21)
    addi    r4, sp, 0x188
    lfs     f2, -0xd78(rtoc)
    lfs     f1, 0x34(r27)
    lfs     f0, 0x198(sp)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r21)
    lfs     f1, 0x0(r20)
    lfs     f0, 0x1a0(sp)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r21)
    lfs     f1, -0xde0(rtoc)
    lfs     f0, 0x14(r21)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r21)
    lfs     f3, 0x18(r21)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x14(r21)
    li      r22, 0x1
branch_0x80260f34:
    lhz     r3, 0x86(r21)
    lha     r0, 0x0(r24)
    cmpw    r3, r0
    blt-    branch_0x80260ff0
    lfs     f0, -0xde8(rtoc)
    addi    r4, sp, 0x124
    stfs    f0, 0xa8(r21)
    stfs    f0, 0xb0(r21)
    lhz     r3, 0x96(r21)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, -0xdb8(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r21)
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r21)
    lhz     r3, 0x96(r21)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f0, 0x18(r21)
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r21)
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r21)
    lfs     f2, 0x14(r21)
    lfs     f3, 0x18(r21)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x14(r21)
    lfs     f0, -0xd8c(rtoc)
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x80260fd0
    stfs    f0, 0x14(r21)
    b       branch_0x80260fd4

branch_0x80260fd0:
    stfs    f1, 0x14(r21)
branch_0x80260fd4:
    lis     r4, 0x2
    addi    r3, r21, 0x0
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8026112c

branch_0x80260ff0:
    lfs     f1, -0xd7c(rtoc)
    addi    r3, r21, 0x0
    li      r4, -0x8000
    bl      checkPlayerAround__6TMarioFif
    lfs     f0, 0x14(r21)
    cmpwi   r30, 0x0
    fsubs   f1, f0, f1
    beq-    branch_0x80261044
    lfs     f0, -0xd8c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80261044
    addi    r3, r21, 0x0
    li      r4, 0x788f
    bl      startVoice__6TMarioFUl
    lis     r4, 0x3000
    addi    r3, r21, 0x0
    addi    r4, r4, 0x54f
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8026112c

branch_0x80261044:
    mr      r3, r21
    lfs     f1, -0xde8(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f3, -0xde8(rtoc)
    cmpwi   r22, 0x1
    stfs    f3, 0xa8(r21)
    lfs     f0, 0xec(r21)
    stfs    f0, 0x14(r21)
    lha     r0, 0x96(r21)
    sth     r0, 0x9a(r21)
    bne-    branch_0x802610f4
    lfs     f1, 0x18(r21)
    lfs     f0, 0x2a4(r21)
    lfs     f2, 0x10(r21)
    fsubs   f4, f1, f0
    lfs     f0, 0x29c(r21)
    fsubs   f1, f2, f0
    fmuls   f0, f4, f4
    fmadds  f4, f1, f1, f0
    fcmpo   cr0, f4, f3
    ble-    branch_0x802610c4
    frsqrte f3, f4
    lfd     f2, -0xd70(rtoc)
    lfd     f0, -0xd68(rtoc)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x120(sp)
    lfs     f4, 0x120(sp)
branch_0x802610c4:
    lfs     f0, 0x12c4(r21)
    extsh.  r0, r23
    fmuls   f1, f4, f0
    bge-    branch_0x802610e4
    addi    r3, r21, 0x0
    li      r4, 0xd7
    bl      setAnimation__6TMarioFif
    b       branch_0x80261128

branch_0x802610e4:
    addi    r3, r21, 0x0
    li      r4, 0xd8
    bl      setAnimation__6TMarioFif
    b       branch_0x80261128

branch_0x802610f4:
    lhz     r3, 0x86(r21)
    lha     r0, 0x12d8(r21)
    cmpw    r3, r0
    bge-    branch_0x80261118
    lfs     f1, -0xde4(rtoc)
    addi    r3, r21, 0x0
    li      r4, 0x33
    bl      setAnimation__6TMarioFif
    b       branch_0x80261128

branch_0x80261118:
    lfs     f1, 0x1300(r21)
    addi    r3, r21, 0x0
    li      r4, 0x33
    bl      setAnimation__6TMarioFif
branch_0x80261128:
    li      r3, 0x0
branch_0x8026112c:
    lmw     r20, 0x240(sp)
    lwz     r0, 0x27c(sp)
    lfd     f31, 0x270(sp)
    addi    sp, sp, 0x278
    mtlr    r0
    blr


.globl startHangLanding__6TMarioFUl
startHangLanding__6TMarioFUl: # 0x80261144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    addi    r4, sp, 0x24
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    lfs     f0, -0xde8(rtoc)
    stfs    f0, 0xa8(r3)
    stfs    f0, 0xb0(r3)
    lhz     r3, 0x96(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, -0xdb8(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r30)
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f0, 0x18(r30)
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r30)
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x14(r30)
    lfs     f0, -0xd8c(rtoc)
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x802611ec
    stfs    f0, 0x14(r30)
    b       branch_0x802611f0

branch_0x802611ec:
    stfs    f1, 0x14(r30)
branch_0x802611f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl moveRoof__6TMarioFv
moveRoof__6TMarioFv: # 0x8026121c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    lwz     r3, 0x74(r3)
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x80261260
    rlwinm  r0, r3, 0, 17, 15
    stw     r0, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261300

branch_0x80261260:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x802612fc
    lwz     r3, 0xdc(r31)
    lwz     r30, 0x44(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x802612e0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x3
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x6a
    bne-    branch_0x802612e0
    addi    r3, r31, 0x0
    addi    r5, r31, 0x16c
    li      r4, 0x39
    bl      emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lis     r4, 0x20
    addi    r3, r31, 0x0
    addi    r4, r4, 0x345
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261300

branch_0x802612e0:
    lis     r4, 0x20
    addi    r3, r31, 0x0
    addi    r4, r4, 0x347
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261300

branch_0x802612fc:
    li      r3, 0x0
branch_0x80261300:
    cmpwi   r3, 0x0
    beq-    branch_0x80261310
    li      r3, 0x1
    b       branch_0x80261468

branch_0x80261310:
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8026136c
    mr      r3, r31
    bl      doRoofMovingProcess__6TMarioFv
    cmpwi   r3, 0x3
    beq-    branch_0x80261354
    bge-    branch_0x8026136c
    cmpwi   r3, 0x2
    bge-    branch_0x8026133c
    b       branch_0x8026136c

branch_0x8026133c:
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261468

branch_0x80261354:
    lis     r4, 0x3000
    addi    r3, r31, 0x0
    addi    r4, r4, 0x36b
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8026136c:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80261394
    lis     r4, 0x20
    lwz     r5, 0x88(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x349
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261468

branch_0x80261394:
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x48(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x29c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x2a0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x2a4(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x40(sp)
    lwz     r3, 0x44(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x50(sp)
    stw     r0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x50(sp)
    lfs     f2, 0x54(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r0, 0x88(r31)
    lfs     f0, 0x1330(r31)
    clrlwi. r0, r0, 31
    fmuls   f1, f1, f0
    beq-    branch_0x8026143c
    addi    r3, r31, 0x0
    li      r4, 0x5c
    bl      setAnimation__6TMarioFif
    b       branch_0x80261448

branch_0x8026143c:
    addi    r3, r31, 0x0
    li      r4, 0x5d
    bl      setAnimation__6TMarioFif
branch_0x80261448:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80261464
    lwz     r0, 0x88(r31)
    subfic  r0, r0, 0x1
    stw     r0, 0x88(r31)
branch_0x80261464:
    li      r3, 0x0
branch_0x80261468:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl roofCommonEvents__6TMarioFv
roofCommonEvents__6TMarioFv: # 0x80261480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x74(r3)
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x802614c4
    rlwinm  r0, r3, 0, 17, 15
    stw     r0, 0x74(r30)
    addi    r3, r30, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261568

branch_0x802614c4:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80261564
    lwz     r3, 0xdc(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x80261548
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x3
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x6a
    bne-    branch_0x80261548
    addi    r3, r30, 0x0
    addi    r5, r30, 0x16c
    li      r4, 0x39
    bl      emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_
    lha     r5, 0x27f8(r30)
    addi    r3, r30, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lis     r4, 0x20
    addi    r3, r30, 0x0
    addi    r4, r4, 0x345
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261568

branch_0x80261548:
    lis     r4, 0x20
    addi    r3, r30, 0x0
    addi    r4, r4, 0x347
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261568

branch_0x80261564:
    li      r3, 0x0
branch_0x80261568:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl doRoofMovingProcess__6TMarioFv
doRoofMovingProcess__6TMarioFv: # 0x80261580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lfs     f0, -0xde4(rtoc)
    lfs     f1, 0xb0(r3)
    fadds   f1, f1, f0
    stfs    f1, 0xb0(r3)
    lfs     f0, -0xd60(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802615b4
    stfs    f0, 0xb0(r31)
branch_0x802615b4:
    lfs     f1, 0x8c(r31)
    lfs     f0, -0xde8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802615f0
    lha     r3, 0x96(r31)
    li      r4, 0x0
    lha     r0, 0x90(r31)
    li      r5, 0x800
    li      r6, 0x800
    subf    r0, r3, r0
    extsh   r3, r0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
branch_0x802615f0:
    lha     r0, 0x96(r31)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x3c
    sth     r0, 0x9e(r31)
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    lfs     f0, 0xb4(r31)
    stfs    f0, 0xa4(r31)
    lfs     f0, -0xde8(rtoc)
    stfs    f0, 0xa8(r31)
    lfs     f0, 0xb8(r31)
    stfs    f0, 0xac(r31)
    lwz     r5, 0xdc(r31)
    lfs     f2, 0xa4(r31)
    lfs     f1, 0x38(r5)
    lfs     f0, 0x10(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x3c(sp)
    lwz     r5, 0xdc(r31)
    lfs     f2, 0xac(r31)
    lfs     f1, 0x38(r5)
    lfs     f0, 0x18(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x40(sp)
    bl      hangingCheckRoof__6TMarioFPQ29JGeometry8TVec3_f_
    cmpwi   r3, 0x2
    bne-    branch_0x802616ac
    li      r3, 0x0
    b       branch_0x802616c4

branch_0x802616ac:
    lwz     r4, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r4, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x44(sp)
    stw     r0, 0x18(r31)
branch_0x802616c4:
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl hangingCheckRoof__6TMarioFPQ29JGeometry8TVec3_f_
hangingCheckRoof__6TMarioFPQ29JGeometry8TVec3_f_: # 0x802616e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lfs     f1, -0xdd4(rtoc)
    fmr     f2, f1
    bl      checkWallPlane__6TMarioFP3Vecff
    cmplwi  r3, 0x0
    beq-    branch_0x80261760
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x80261728
    li      r0, 0x1
    b       branch_0x8026172c

branch_0x80261728:
    li      r0, 0x0
branch_0x8026172c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80261760
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r30)
    li      r3, 0x3
    lha     r0, 0x96(r30)
    sth     r0, 0x9a(r30)
    b       branch_0x80261860

branch_0x80261760:
    lwz     r3, -0x6328(r13)
    addi    r4, sp, 0x14
    lfs     f1, 0x0(r31)
    lfs     f2, 0x4(r31)
    lfs     f3, 0x8(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f31, f1
    lfs     f0, -0xddc(rtoc)
    lwz     r3, -0x6328(r13)
    addi    r4, sp, 0x18
    lfs     f1, 0x0(r31)
    fadds   f2, f0, f31
    lfs     f3, 0x8(r31)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lwz     r0, 0x14(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x802617ac
    li      r3, 0x1
    b       branch_0x80261860

branch_0x802617ac:
    lwz     r3, 0x18(sp)
    cmplwi  r3, 0x0
    bne-    branch_0x802617c0
    li      r3, 0x2
    b       branch_0x80261860

branch_0x802617c0:
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x802617d4
    li      r0, 0x1
    b       branch_0x802617d8

branch_0x802617d4:
    li      r0, 0x0
branch_0x802617d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x802617e8
    li      r3, 0x2
    b       branch_0x80261860

branch_0x802617e8:
    fsubs   f0, f1, f31
    lfs     f3, -0xde0(rtoc)
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x80261804
    li      r3, 0x1
    b       branch_0x80261860

branch_0x80261804:
    lfs     f2, 0x4(r31)
    lfs     f0, -0xd5c(rtoc)
    fadds   f2, f3, f2
    fsubs   f2, f1, f2
    fcmpo   cr0, f2, f0
    bge-    branch_0x80261824
    li      r3, 0x1
    b       branch_0x80261860

branch_0x80261824:
    lfs     f0, -0xd7c(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x80261838
    li      r3, 0x2
    b       branch_0x80261860

branch_0x80261838:
    lfs     f0, 0xe8(r30)
    li      r3, 0x0
    fsubs   f0, f0, f3
    stfs    f0, 0x4(r31)
    lwz     r0, 0x14(sp)
    stw     r0, 0xe0(r30)
    stfs    f31, 0xec(r30)
    lwz     r0, 0x18(sp)
    stw     r0, 0xdc(r30)
    stfs    f1, 0xe8(r30)
branch_0x80261860:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl barClimb__6TMarioFv
barClimb__6TMarioFv: # 0x8026187c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x802618b8
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261b34

branch_0x802618b8:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8026193c
    lhz     r5, 0x96(r31)
    lis     r4, 0x200
    lwz     r0, -0x5eac(r13)
    mr      r3, r31
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f2, -0xd58(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f1, r6, r0
    addi    r4, r4, 0x886
    li      r5, 0x0
    fnmsubs  f0, f2, f1, f0
    li      r6, 0x0
    stfs    f0, 0x10(r31)
    lhz     r7, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r8, -0x5ea4(r13)
    sraw    r0, r7, r0
    lfs     f0, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    lha     r7, 0x96(r31)
    addis   r7, r7, 0x1
    subi    r0, r7, 0x8000
    sth     r0, 0x96(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261b34

branch_0x8026193c:
    lfs     f0, 0x10(r3)
    stfs    f0, 0x10(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x18(r31)
    lwz     r3, 0x108(r31)
    lfs     f0, -0xd54(rtoc)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80261994
    lis     r4, 0x1810
    addi    r3, r31, 0x0
    addi    r4, r4, 0x340
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261b34

branch_0x80261994:
    lfs     f1, -0xde8(rtoc)
    stfs    f1, 0xa8(r31)
    lwz     r3, 0x108(r31)
    lfs     f2, 0x15f4(r31)
    lfs     f3, 0x14(r3)
    lfs     f0, 0x14(r31)
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x68(r31)
    lfs     f2, 0x14(r31)
    lfs     f0, 0x14(r3)
    fsubs   f0, f2, f0
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x5c(r3)
    lfs     f0, 0x14(r3)
    fadds   f0, f0, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x80261a10
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x200
    addi    r3, r31, 0x0
    addi    r4, r4, 0x880
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r0, 0x78(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r31)
branch_0x80261a10:
    mr      r3, r31
    bl      barProcess__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x80261a40
    lwz     r5, 0x108(r31)
    mr      r3, r31
    lfs     f1, 0x161c(r31)
    li      r4, 0x5
    lfs     f2, 0x14(r5)
    lfs     f0, -0xde4(rtoc)
    fmadds  f1, f2, f1, f0
    bl      setAnimation__6TMarioFif
branch_0x80261a40:
    lwz     r3, 0x68(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x39
    bne-    branch_0x80261a7c
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd50(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261a7c
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x80261a7c:
    lwz     r3, 0x68(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x246
    bne-    branch_0x80261b30
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x80261acc
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd4c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261b30
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x80261b30

branch_0x80261acc:
    cmplwi  r0, 0x9
    bne-    branch_0x80261b00
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd4c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261b30
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x80261b30

branch_0x80261b00:
    cmplwi  r0, 0x4
    bne-    branch_0x80261b30
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd48(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261b30
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x80261b30:
    li      r3, 0x0
branch_0x80261b34:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl barWait__6TMarioFv
barWait__6TMarioFv: # 0x80261b48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80261b84
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261f98

branch_0x80261b84:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80261c08
    lhz     r5, 0x96(r31)
    lis     r4, 0x200
    lwz     r0, -0x5eac(r13)
    mr      r3, r31
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f2, -0xd58(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f1, r6, r0
    addi    r4, r4, 0x886
    li      r5, 0x0
    fnmsubs  f0, f2, f1, f0
    li      r6, 0x0
    stfs    f0, 0x10(r31)
    lhz     r7, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r8, -0x5ea4(r13)
    sraw    r0, r7, r0
    lfs     f0, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    lha     r7, 0x96(r31)
    addis   r7, r7, 0x1
    subi    r0, r7, 0x8000
    sth     r0, 0x96(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261f98

branch_0x80261c08:
    lfs     f0, 0x10(r3)
    stfs    f0, 0x10(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x18(r31)
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    bne-    branch_0x80261c50
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd8c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80261cc4
branch_0x80261c50:
    mr      r3, r31
    lfs     f1, -0xd44(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lhz     r5, 0x96(r31)
    lis     r4, 0x2
    lwz     r0, -0x5eac(r13)
    mr      r3, r31
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f2, -0xd58(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f1, r6, r0
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    fnmsubs  f0, f2, f1, f0
    li      r6, 0x0
    stfs    f0, 0x10(r31)
    lhz     r7, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r8, -0x5ea4(r13)
    sraw    r0, r7, r0
    lfs     f0, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261f98

branch_0x80261cc4:
    lwz     r3, 0x108(r31)
    lfs     f0, -0xd84(rtoc)
    lfs     f2, 0x14(r3)
    fcmpo   cr0, f2, f0
    ble-    branch_0x80261cf4
    lis     r4, 0x1010
    addi    r3, r31, 0x0
    addi    r4, r4, 0x343
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80261f98

branch_0x80261cf4:
    lfs     f0, -0xd40(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80261d6c
    lfs     f1, -0xd3c(rtoc)
    mr      r3, r31
    lfs     f0, 0xa8(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xa8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r4, 0x68(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x14(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x38c(r31)
    bl      treeSlipEffect__6TMarioFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x1140
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80261d6c
    addi    r4, r31, 0x10
    li      r3, 0x1140
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80261d6c:
    lwz     r3, 0x68(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xbb
    bne-    branch_0x80261df0
    lwz     r3, 0x108(r31)
    lfs     f0, -0xde8(rtoc)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80261dbc
    lfs     f1, 0x14(r31)
    lfs     f0, -0xd38(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x68(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x38c(r31)
branch_0x80261dbc:
    lwz     r3, 0x68(r31)
    lfs     f1, -0xd58(rtoc)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80261df0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x68(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x38c(r31)
branch_0x80261df0:
    lwz     r3, 0x68(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x39
    bne-    branch_0x80261e2c
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd50(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261e2c
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x80261e2c:
    lwz     r3, 0x68(r31)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x246
    bne-    branch_0x80261ee0
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x80261e7c
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd4c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261ee0
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x80261ee0

branch_0x80261e7c:
    cmplwi  r0, 0x9
    bne-    branch_0x80261eb0
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd4c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261ee0
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x80261ee0

branch_0x80261eb0:
    cmplwi  r0, 0x4
    bne-    branch_0x80261ee0
    lfs     f1, 0x38c(r31)
    lfs     f0, -0xd48(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261ee0
    stfs    f0, 0x38c(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x38c(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x80261ee0:
    lwz     r4, 0x108(r31)
    li      r0, 0x0
    lfs     f0, 0x1608(r31)
    mr      r3, r31
    lfs     f1, 0x10(r4)
    lha     r5, 0x96(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x98(sp)
    lwz     r4, 0x9c(sp)
    add     r4, r5, r4
    sth     r4, 0x96(r31)
    sth     r0, 0x94(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    bl      barProcess__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x80261f94
    lwz     r3, 0x108(r31)
    lfs     f1, -0xde8(rtoc)
    lfs     f0, 0x10(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80261f4c
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xd
    bl      setAnimation__6TMarioFif
branch_0x80261f4c:
    lwz     r3, 0x108(r31)
    lfs     f0, -0xde8(rtoc)
    lfs     f1, 0x10(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80261f70
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x112
    bl      setAnimation__6TMarioFif
branch_0x80261f70:
    lwz     r3, 0x108(r31)
    lfs     f0, -0xde8(rtoc)
    lfs     f1, 0x10(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80261f94
    lfs     f1, -0xde4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x111
    bl      setAnimation__6TMarioFif
branch_0x80261f94:
    li      r3, 0x0
branch_0x80261f98:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl __sinit_MarioSpecial_cpp
__sinit_MarioSpecial_cpp: # 0x80261fac
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4560
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80261ff4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80261ff4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80262024
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80262024:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80262054
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80262054:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80262084
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80262084:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802620b4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802620b4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802620e4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802620e4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80262114
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80262114:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80262144
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80262144:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80262174
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80262174:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802621a4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802621a4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802621d4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802621d4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80262204
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80262204:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80262234
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80262234:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80262264
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80262264:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80262294
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80262294:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
