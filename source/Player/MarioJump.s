
.globl jumpMain__6TMarioFv
jumpMain__6TMarioFv: # 0x8024922c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    lwz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8024928c
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80249268
    li      r0, 0x1
    b       branch_0x8024926c

branch_0x80249268:
    li      r0, 0x0
branch_0x8024926c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024928c
    lis     r4, 0x8200
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8ab
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8024928c:
    lis     r29, 0x2
    lwz     r5, 0x7c(r31)
    addi    r0, r29, 0x8b4
    cmpw    r5, r0
    beq-    branch_0x80249ae0
    bge-    branch_0x80249380
    cmpwi   r5, 0x892
    beq-    branch_0x80249d5c
    bge-    branch_0x80249318
    cmpwi   r5, 0x887
    beq-    branch_0x80249828
    bge-    branch_0x802492ec
    cmpwi   r5, 0x882
    beq-    branch_0x80249638
    bge-    branch_0x802492dc
    lis     r3, 0x8200
    addi    r0, r3, 0x8ab
    cmpw    r5, r0
    beq-    branch_0x80249fd4
    b       branch_0x8024a28c

branch_0x802492dc:
    cmpwi   r5, 0x884
    beq-    branch_0x80249474
    bge-    branch_0x8024a28c
    b       branch_0x8024971c

branch_0x802492ec:
    cmpwi   r5, 0x88b
    beq-    branch_0x80249c10
    bge-    branch_0x80249304
    cmpwi   r5, 0x889
    bge-    branch_0x8024a28c
    b       branch_0x80249bb4

branch_0x80249304:
    cmpwi   r5, 0x891
    bge-    branch_0x8024a26c
    cmpwi   r5, 0x88e
    bge-    branch_0x8024a28c
    b       branch_0x80249628

branch_0x80249318:
    cmpwi   r5, 0x8a6
    beq-    branch_0x8024a19c
    bge-    branch_0x80249348
    cmpwi   r5, 0x897
    bge-    branch_0x8024933c
    cmpwi   r5, 0x894
    beq-    branch_0x80249f04
    bge-    branch_0x80249c20
    b       branch_0x80249e30

branch_0x8024933c:
    cmpwi   r5, 0x89c
    beq-    branch_0x80249474
    b       branch_0x8024a28c

branch_0x80249348:
    addi    r0, r29, 0x8b1
    cmpw    r5, r0
    beq-    branch_0x8024a080
    bge-    branch_0x80249370
    addi    r0, r29, 0x8b0
    cmpw    r5, r0
    bge-    branch_0x8024a03c
    cmpwi   r5, 0x8a8
    bge-    branch_0x8024a28c
    b       branch_0x8024a18c

branch_0x80249370:
    addi    r0, r29, 0x8b3
    cmpw    r5, r0
    bge-    branch_0x8024a108
    b       branch_0x8024a0c4

branch_0x80249380:
    lis     r4, 0x200
    addi    r0, r4, 0x880
    cmpw    r5, r0
    beq-    branch_0x80249474
    bge-    branch_0x80249404
    lis     r4, 0x80
    addi    r0, r4, 0x88a
    cmpw    r5, r0
    beq-    branch_0x80249fc4
    bge-    branch_0x802493e0
    addi    r0, r29, 0x8b8
    cmpw    r5, r0
    beq-    branch_0x8024a1cc
    bge-    branch_0x802493cc
    addi    r0, r29, 0x8b6
    cmpw    r5, r0
    beq-    branch_0x8024a14c
    bge-    branch_0x8024a1bc
    b       branch_0x80249b68

branch_0x802493cc:
    addi    r0, r29, 0x8ba
    cmpw    r5, r0
    beq-    branch_0x8024a16c
    bge-    branch_0x8024a28c
    b       branch_0x8024a27c

branch_0x802493e0:
    lis     r3, 0x81
    addi    r0, r3, 0x89b
    cmpw    r5, r0
    beq-    branch_0x80249c00
    bge-    branch_0x8024a28c
    addi    r0, r4, 0x8a9
    cmpw    r5, r0
    beq-    branch_0x8024a25c
    b       branch_0x8024a28c

branch_0x80249404:
    addi    r0, r4, 0x88e
    cmpw    r5, r0
    beq-    branch_0x8024a1ac
    bge-    branch_0x80249450
    addi    r0, r4, 0x886
    cmpw    r5, r0
    beq-    branch_0x8024994c
    bge-    branch_0x80249440
    addi    r0, r4, 0x885
    cmpw    r5, r0
    bge-    branch_0x80249a24
    addi    r0, r4, 0x882
    cmpw    r5, r0
    bge-    branch_0x8024a28c
    b       branch_0x80249564

branch_0x80249440:
    addi    r0, r4, 0x889
    cmpw    r5, r0
    beq-    branch_0x80249be0
    b       branch_0x8024a28c

branch_0x80249450:
    lis     r3, 0x281
    addi    r0, r3, 0x89a
    cmpw    r5, r0
    beq-    branch_0x80249c00
    bge-    branch_0x8024a28c
    addi    r0, r4, 0x890
    cmpw    r5, r0
    beq-    branch_0x8024a1dc
    b       branch_0x8024a28c

branch_0x80249474:
    mr      r3, r31
    bl      checkBackTrig__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024948c
    li      r0, 0x1
    b       branch_0x802494c0

branch_0x8024948c:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802494a4
    li      r0, 0x1
    b       branch_0x802494c0

branch_0x802494a4:
    mr      r3, r31
    bl      considerJumpRotate__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802494bc
    li      r0, 0x1
    b       branch_0x802494c0

branch_0x802494bc:
    li      r0, 0x0
branch_0x802494c0:
    cmpwi   r0, 0x0
    beq-    branch_0x802494d0
    li      r0, 0x1
    b       branch_0x8024955c

branch_0x802494d0:
    lwz     r0, 0x7c(r31)
    cmpwi   r0, 0x89c
    beq-    branch_0x802494ec
    bge-    branch_0x80249540
    cmpwi   r0, 0x884
    beq-    branch_0x80249508
    b       branch_0x80249540

branch_0x802494ec:
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b8
    li      r5, 0x120
    li      r6, 0x0
    bl      jumpingBasic__6TMarioFiii
    b       branch_0x80249558

branch_0x80249508:
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80249524
    li      r5, 0x50
    b       branch_0x80249528

branch_0x80249524:
    li      r5, 0x4c
branch_0x80249528:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x470
    li      r6, 0x3
    bl      jumpingBasic__6TMarioFiii
    b       branch_0x80249558

branch_0x80249540:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x470
    li      r5, 0x4d
    li      r6, 0x3
    bl      jumpingBasic__6TMarioFiii
branch_0x80249558:
    li      r0, 0x0
branch_0x8024955c:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x80249564:
    lhz     r3, 0x86(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x80249588
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    mr      r3, r31
    li      r4, 0x14
    lha     r5, 0x27f8(r31)
    bl      rumbleStart__6TMarioFii
branch_0x80249588:
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802495a4
    li      r29, 0x50
    b       branch_0x802495a8

branch_0x802495a4:
    li      r29, 0x4c
branch_0x802495a8:
    mr      r3, r31
    bl      checkBackTrig__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802495c0
    li      r0, 0x1
    b       branch_0x802495f4

branch_0x802495c0:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802495d8
    li      r0, 0x1
    b       branch_0x802495f4

branch_0x802495d8:
    mr      r3, r31
    bl      considerJumpRotate__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802495f0
    li      r0, 0x1
    b       branch_0x802495f4

branch_0x802495f0:
    li      r0, 0x0
branch_0x802495f4:
    cmpwi   r0, 0x0
    beq-    branch_0x80249604
    li      r0, 0x1
    b       branch_0x80249620

branch_0x80249604:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r5, r29, 0x0
    addi    r4, r4, 0x472
    li      r6, 0x3
    bl      jumpingBasic__6TMarioFiii
    li      r0, 0x0
branch_0x80249620:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x80249628:
    mr      r3, r31
    bl      landing__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x80249638:
    lhz     r3, 0x86(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8024965c
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    mr      r3, r31
    li      r4, 0x15
    lha     r5, 0x27f8(r31)
    bl      rumbleStart__6TMarioFii
branch_0x8024965c:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802496cc
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80249694
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802496d0

branch_0x80249694:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802496cc
    lfs     f1, 0xe74(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802496d0

branch_0x802496cc:
    li      r3, 0x0
branch_0x802496d0:
    cmpwi   r3, 0x0
    beq-    branch_0x802496e0
    li      r0, 0x1
    b       branch_0x80249714

branch_0x802496e0:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802496f8
    li      r0, 0x1
    b       branch_0x80249714

branch_0x802496f8:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x478
    li      r5, 0x6f
    li      r6, 0x0
    bl      jumpingBasic__6TMarioFiii
    li      r0, 0x0
branch_0x80249714:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x8024971c:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024978c
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80249754
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80249790

branch_0x80249754:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024978c
    lfs     f1, 0xe74(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80249790

branch_0x8024978c:
    li      r3, 0x0
branch_0x80249790:
    cmpwi   r3, 0x0
    beq-    branch_0x802497a0
    li      r0, 0x1
    b       branch_0x80249820

branch_0x802497a0:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802497b8
    li      r0, 0x1
    b       branch_0x80249820

branch_0x802497b8:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802497dc
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802497dc
    li      r0, 0x1
    sth     r0, 0x84(r31)
branch_0x802497dc:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80249804
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x472
    li      r5, 0xf7
    li      r6, 0x0
    bl      jumpingBasic__6TMarioFiii
    b       branch_0x8024981c

branch_0x80249804:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x472
    li      r5, 0x56
    li      r6, 0x0
    bl      jumpingBasic__6TMarioFiii
branch_0x8024981c:
    li      r0, 0x0
branch_0x80249820:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x80249828:
    mr      r3, r31
    bl      checkBackTrig__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249840
    li      r0, 0x1
    b       branch_0x80249874

branch_0x80249840:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249858
    li      r0, 0x1
    b       branch_0x80249874

branch_0x80249858:
    mr      r3, r31
    bl      considerJumpRotate__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249870
    li      r0, 0x1
    b       branch_0x80249874

branch_0x80249870:
    li      r0, 0x0
branch_0x80249874:
    cmpwi   r0, 0x0
    beq-    branch_0x80249884
    li      r0, 0x1
    b       branch_0x80249944

branch_0x80249884:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802498f4
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x802498bc
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802498f8

branch_0x802498bc:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802498f4
    lfs     f1, 0xe74(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802498f8

branch_0x802498f4:
    li      r3, 0x0
branch_0x802498f8:
    cmpwi   r3, 0x0
    beq-    branch_0x80249908
    li      r0, 0x1
    b       branch_0x80249944

branch_0x80249908:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x473
    li      r5, 0xbf
    li      r6, 0x1
    bl      jumpingBasic__6TMarioFiii
    cmpwi   r3, 0x3
    beq-    branch_0x80249940
    li      r0, 0x0
    sth     r0, 0x94(r31)
    lha     r3, 0x9a(r31)
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x9a(r31)
branch_0x80249940:
    li      r0, 0x0
branch_0x80249944:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x8024994c:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802499bc
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80249984
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802499c0

branch_0x80249984:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802499bc
    lfs     f1, 0xe74(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802499c0

branch_0x802499bc:
    li      r3, 0x0
branch_0x802499c0:
    cmpwi   r3, 0x0
    beq-    branch_0x802499d0
    li      r0, 0x1
    b       branch_0x80249a1c

branch_0x802499d0:
    mr      r3, r31
    bl      considerJumpRotate__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802499e8
    li      r0, 0x1
    b       branch_0x80249a1c

branch_0x802499e8:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249a00
    li      r0, 0x1
    b       branch_0x80249a1c

branch_0x80249a00:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x470
    li      r5, 0xcb
    li      r6, 0x3
    bl      jumpingBasic__6TMarioFiii
    li      r0, 0x0
branch_0x80249a1c:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x80249a24:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80249a4c
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80249ad8

branch_0x80249a4c:
    lfs     f1, -0x108c(rtoc)
    mr      r3, r31
    lfs     f0, 0xb0(r31)
    fmuls   f1, f1, f0
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x2
    beq-    branch_0x80249ab8
    bge-    branch_0x80249ac4
    cmpwi   r3, 0x1
    bge-    branch_0x80249a84
    b       branch_0x80249ac4

branch_0x80249a84:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80249a9c
    li      r4, 0x50
    b       branch_0x80249aa4

branch_0x80249a9c:
    lis     r3, 0x400
    addi    r4, r3, 0x470
branch_0x80249aa4:
    addi    r3, r31, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80249ac4

branch_0x80249ab8:
    mr      r3, r31
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
branch_0x80249ac4:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x4d
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
branch_0x80249ad8:
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x80249ae0:
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x80249af8
    addi    r3, r31, 0x0
    li      r4, 0x7849
    bl      startVoice__6TMarioFUl
branch_0x80249af8:
    lhz     r4, 0x86(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    sth     r0, 0x86(r31)
    lfs     f1, 0xb0(r31)
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x80249b3c
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x449
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80249b3c:
    lwz     r0, 0x88(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80249b50
    li      r4, 0x4d
    b       branch_0x80249b54

branch_0x80249b50:
    li      r4, 0x29
branch_0x80249b54:
    lfs     f1, -0x1088(rtoc)
    mr      r3, r31
    bl      setAnimation__6TMarioFif
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x80249b68:
    mr      r3, r31
    lfs     f1, 0xb0(r31)
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x80249b9c
    addi    r3, r31, 0x0
    addi    r4, r29, 0x449
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80249b9c:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x56
    bl      setAnimation__6TMarioFif
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x80249bb4:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x440
    li      r5, 0xf6
    li      r6, 0x1
    bl      jumpingBasic__6TMarioFiii
    lwz     r0, 0x118(r31)
    li      r30, 0x0
    ori     r0, r0, 0x4000
    stw     r0, 0x118(r31)
    b       branch_0x8024a28c

branch_0x80249be0:
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x440
    li      r5, 0x10f
    li      r6, 0x1
    bl      jumpingBasic__6TMarioFiii
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x80249c00:
    mr      r3, r31
    bl      boardJumping__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x80249c10:
    mr      r3, r31
    bl      rocketing__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x80249c20:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80249c90
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80249c58
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80249c94

branch_0x80249c58:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80249c90
    lfs     f1, 0xe74(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80249c94

branch_0x80249c90:
    li      r3, 0x0
branch_0x80249c94:
    cmpwi   r3, 0x0
    beq-    branch_0x80249ca4
    li      r0, 0x1
    b       branch_0x80249d54

branch_0x80249ca4:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249cbc
    li      r0, 0x1
    b       branch_0x80249d54

branch_0x80249cbc:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xf4
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      emitBlurSpinJump__6TMarioFv
    lis     r4, 0x400
    lhz     r5, 0xfa(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x472
    li      r6, 0x0
    bl      jumpingBasic__6TMarioFiii
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x896
    bne-    branch_0x80249d18
    lhz     r0, 0x86(r31)
    slwi    r0, r0, 12
    extsh   r0, r0
    sth     r0, 0x9a(r31)
    b       branch_0x80249d28

branch_0x80249d18:
    lhz     r0, 0x86(r31)
    slwi    r0, r0, 12
    neg     r0, r0
    sth     r0, 0x9a(r31)
branch_0x80249d28:
    lwz     r3, -0x6048(r13)
    lwz     r0, 0x58(r3)
    clrlwi. r0, r0, 26
    bne-    branch_0x80249d50
    lha     r0, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x14
    srawi   r5, r0, 1
    addze   r5, r5
    bl      rumbleStart__6TMarioFii
branch_0x80249d50:
    li      r0, 0x0
branch_0x80249d54:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x80249d5c:
    lwz     r3, 0x80(r31)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x358
    bne-    branch_0x80249da0
    lwz     r0, 0x88(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80249d8c
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xf8
    bl      setAnimation__6TMarioFif
    b       branch_0x80249db0

branch_0x80249d8c:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x6f
    bl      setAnimation__6TMarioFif
    b       branch_0x80249db0

branch_0x80249da0:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x4d
    bl      setAnimation__6TMarioFif
branch_0x80249db0:
    mr      r3, r31
    bl      checkBackTrig__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249dc8
    li      r0, 0x1
    b       branch_0x80249dfc

branch_0x80249dc8:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249de0
    li      r0, 0x1
    b       branch_0x80249dfc

branch_0x80249de0:
    mr      r3, r31
    bl      considerJumpRotate__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249df8
    li      r0, 0x1
    b       branch_0x80249dfc

branch_0x80249df8:
    li      r0, 0x0
branch_0x80249dfc:
    cmpwi   r0, 0x0
    beq-    branch_0x80249e0c
    li      r0, 0x1
    b       branch_0x80249e28

branch_0x80249e0c:
    lis     r4, 0x400
    lhz     r5, 0xfa(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x472
    li      r6, 0x3
    bl      jumpingBasic__6TMarioFiii
    li      r0, 0x0
branch_0x80249e28:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x80249e30:
    lwz     r3, 0x80(r31)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x358
    bne-    branch_0x80249e74
    lwz     r0, 0x88(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80249e60
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xf8
    bl      setAnimation__6TMarioFif
    b       branch_0x80249e84

branch_0x80249e60:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x6f
    bl      setAnimation__6TMarioFif
    b       branch_0x80249e84

branch_0x80249e74:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x4d
    bl      setAnimation__6TMarioFif
branch_0x80249e84:
    mr      r3, r31
    bl      checkBackTrig__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249e9c
    li      r0, 0x1
    b       branch_0x80249ed0

branch_0x80249e9c:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249eb4
    li      r0, 0x1
    b       branch_0x80249ed0

branch_0x80249eb4:
    mr      r3, r31
    bl      considerJumpRotate__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249ecc
    li      r0, 0x1
    b       branch_0x80249ed0

branch_0x80249ecc:
    li      r0, 0x0
branch_0x80249ed0:
    cmpwi   r0, 0x0
    beq-    branch_0x80249ee0
    li      r0, 0x1
    b       branch_0x80249efc

branch_0x80249ee0:
    lis     r4, 0x400
    lhz     r5, 0xfa(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x472
    li      r6, 0x3
    bl      jumpingBasic__6TMarioFiii
    li      r0, 0x0
branch_0x80249efc:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x80249f04:
    lhz     r0, 0xfa(r31)
    cmplwi  r0, 0xf0
    bne-    branch_0x80249f30
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80249f30
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xf1
    bl      setAnimation__6TMarioFif
branch_0x80249f30:
    lfs     f0, -0x1090(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x560
    stfs    f0, 0xb0(r31)
    li      r6, 0x3
    stfs    f0, 0x8c(r31)
    lhz     r5, 0xfa(r31)
    bl      jumpingBasic__6TMarioFiii
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x560
    bne-    branch_0x80249f6c
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xf2
    bl      setAnimation__6TMarioFif
branch_0x80249f6c:
    lwz     r3, 0x10(r31)
    addi    r4, sp, 0x60
    lwz     r0, 0x14(r31)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x68(sp)
    lwz     r3, 0x6c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x80249fbc
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x68(sp)
    stw     r0, 0x18(r31)
branch_0x80249fbc:
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x80249fc4:
    mr      r3, r31
    bl      jumpCatch__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x80249fd4:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x65
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      checkThrowObject__6TMarioFv
    mr      r3, r31
    bl      doJumping__6TMarioFv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x2
    beq-    branch_0x8024a028
    bge-    branch_0x8024a034
    cmpwi   r3, 0x1
    bge-    branch_0x8024a018
    b       branch_0x8024a034

branch_0x8024a018:
    lis     r3, 0x8000
    addi    r0, r3, 0xa36
    stw     r0, 0x7c(r31)
    b       branch_0x8024a034

branch_0x8024a028:
    mr      r3, r31
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
branch_0x8024a034:
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x8024a03c:
    lhz     r3, 0x86(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8024a060
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    li      r5, 0x14
    bl      rumbleStart__6TMarioFii
branch_0x8024a060:
    lis     r4, 0x2
    lfs     f1, -0x1084(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x462
    li      r5, 0x2
    bl      jumpDownCommon__6TMarioFiif
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x8024a080:
    lhz     r3, 0x86(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8024a0a4
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    li      r5, 0x14
    bl      rumbleStart__6TMarioFii
branch_0x8024a0a4:
    lis     r4, 0x2
    lfs     f1, -0x1080(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x463
    li      r5, 0x2d
    bl      jumpDownCommon__6TMarioFiif
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x8024a0c4:
    lhz     r3, 0x86(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8024a0e8
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    li      r5, 0x14
    bl      rumbleStart__6TMarioFii
branch_0x8024a0e8:
    lis     r4, 0x2
    lfs     f1, -0x1080(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x461
    li      r5, 0x2d
    bl      jumpDownCommon__6TMarioFiif
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x8024a108:
    lhz     r3, 0x86(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8024a12c
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    li      r5, 0x14
    bl      rumbleStart__6TMarioFii
branch_0x8024a12c:
    lis     r4, 0x2
    lfs     f1, -0x1084(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x460
    li      r5, 0x2
    bl      jumpDownCommon__6TMarioFiif
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x8024a14c:
    lis     r4, 0x400
    lfs     f1, 0xb0(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x471
    li      r5, 0x56
    bl      jumpDownCommon__6TMarioFiif
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x8024a16c:
    lis     r4, 0x400
    lfs     f1, 0xb0(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x471
    li      r5, 0x56
    bl      jumpDownCommon__6TMarioFiif
    li      r30, 0x0
    b       branch_0x8024a28c

branch_0x8024a18c:
    mr      r3, r31
    bl      stayWall__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x8024a19c:
    mr      r3, r31
    bl      catchStop__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x8024a1ac:
    mr      r3, r31
    bl      slipFalling__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x8024a1bc:
    mr      r3, r31
    bl      fireDowning__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x8024a1cc:
    mr      r3, r31
    bl      thrownDowning__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x8024a1dc:
    mr      r3, r31
    bl      checkBackTrig__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024a1f4
    li      r0, 0x1
    b       branch_0x8024a228

branch_0x8024a1f4:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024a20c
    li      r0, 0x1
    b       branch_0x8024a228

branch_0x8024a20c:
    mr      r3, r31
    bl      considerJumpRotate__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024a224
    li      r0, 0x1
    b       branch_0x8024a228

branch_0x8024a224:
    li      r0, 0x0
branch_0x8024a228:
    cmpwi   r0, 0x0
    beq-    branch_0x8024a238
    li      r0, 0x1
    b       branch_0x8024a254

branch_0x8024a238:
    lis     r4, 0x400
    lhz     r5, 0xfa(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x472
    li      r6, 0x3
    bl      jumpingBasic__6TMarioFiii
    li      r0, 0x0
branch_0x8024a254:
    mr      r30, r0
    b       branch_0x8024a28c

branch_0x8024a25c:
    mr      r3, r31
    bl      hipAttacking__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x8024a26c:
    mr      r3, r31
    bl      diving__6TMarioFv
    mr      r30, r3
    b       branch_0x8024a28c

branch_0x8024a27c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    li      r30, 0x0
branch_0x8024a28c:
    lwz     r0, 0x8c(sp)
    mr      r3, r30
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl diving__6TMarioFv
diving__6TMarioFv: # 0x8024a2ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    stw     r30, 0xb0(sp)
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8024a328
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xc(r3)
    li      r5, 0x0
    li      r4, 0x120
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x2c(r3)
    mr      r3, r31
    stfs    f0, 0x18(r31)
    sth     r5, 0x94(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    sth     r5, 0x98(r31)
    lfs     f1, -0x1088(rtoc)
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
    b       branch_0x8024a68c

branch_0x8024a328:
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8024a4f8
    lha     r3, 0x96(r31)
    lha     r0, 0x90(r31)
    lfs     f31, 0x8c(r31)
    subf    r0, r3, r0
    extsh   r30, r0
    cmpwi   r30, -0x1555
    ble-    branch_0x8024a358
    cmpwi   r30, 0x1555
    blt-    branch_0x8024a368
branch_0x8024a358:
    cmpwi   r30, -0x6aaa
    blt-    branch_0x8024a368
    cmpwi   r30, 0x6aaa
    ble-    branch_0x8024a424
branch_0x8024a368:
    lwz     r3, 0x3e4(r31)
    bl      getCurrentNozzle__9TWaterGunCFv
    lha     r4, 0x310(r3)
    lis     r3, 0x4330
    lwz     r0, 0x118(r31)
    fneg    f0, f31
    xoris   r4, r4, 0x8000
    stw     r4, 0xac(sp)
    clrlwi  r5, r30, 16
    lfs     f1, -0x107c(rtoc)
    stw     r3, 0xa8(sp)
    rlwinm. r0, r0, 0, 16, 16
    fmuls   f2, f1, f0
    lwz     r3, -0x5eac(r13)
    lfd     f1, -0x1070(rtoc)
    lfd     f0, 0xa8(sp)
    sraw    r3, r5, r3
    fsubs   f1, f0, f1
    lwz     r4, -0x5ea4(r13)
    slwi    r3, r3, 2
    lfsx    f0, r4, r3
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r4, 0xa4(sp)
    beq-    branch_0x8024a3dc
    li      r0, 0x1
    b       branch_0x8024a3e0

branch_0x8024a3dc:
    li      r0, 0x0
branch_0x8024a3e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024a4e4
    lwz     r3, 0x3e4(r31)
    sth     r4, 0x1cc2(r3)
    lwz     r3, 0x3e4(r31)
    sth     r4, 0x1cc4(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x21c4(r31)
    slwi    r0, r0, 2
    lfs     f0, 0xb0(r31)
    lfsx    f2, r3, r0
    fmuls   f2, f31, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r31)
    b       branch_0x8024a4e4

branch_0x8024a424:
    lwz     r3, 0x3e4(r31)
    bl      getCurrentNozzle__9TWaterGunCFv
    lha     r4, 0x310(r3)
    lis     r3, 0x4330
    lwz     r0, 0x118(r31)
    fneg    f0, f31
    xoris   r4, r4, 0x8000
    stw     r4, 0xa4(sp)
    clrlwi  r4, r30, 16
    lfs     f1, -0x107c(rtoc)
    stw     r3, 0xa0(sp)
    rlwinm. r0, r0, 0, 16, 16
    fmuls   f2, f1, f0
    lwz     r3, -0x5eac(r13)
    lfd     f1, -0x1070(rtoc)
    lfd     f0, 0xa0(sp)
    sraw    r3, r4, r3
    fsubs   f1, f0, f1
    lwz     r4, -0x5ea8(r13)
    slwi    r3, r3, 2
    lfsx    f0, r4, r3
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xa8(sp)
    lwz     r5, 0xac(sp)
    beq-    branch_0x8024a498
    li      r0, 0x1
    b       branch_0x8024a49c

branch_0x8024a498:
    li      r0, 0x0
branch_0x8024a49c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024a4e4
    lwz     r3, 0x3e4(r31)
    neg     r0, r5
    li      r4, 0x0
    sth     r0, 0x1cc2(r3)
    lwz     r3, 0x3e4(r31)
    sth     r5, 0x1cc4(r3)
    lha     r3, 0x96(r31)
    lha     r0, 0x90(r31)
    lha     r5, 0x219c(r31)
    subf    r0, r3, r0
    addi    r6, r5, 0x0
    extsh   r3, r0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
branch_0x8024a4e4:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x137
    bl      setAnimation__6TMarioFif
    b       branch_0x8024a5cc

branch_0x8024a4f8:
    lfs     f1, -0x1078(rtoc)
    lfs     f0, 0xec(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8024a51c
    li      r0, 0x1
    b       branch_0x8024a520

branch_0x8024a51c:
    li      r0, 0x0
branch_0x8024a520:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024a588
    mr      r3, r31
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lhz     r0, 0xfa(r31)
    cmpwi   r0, 0x138
    beq-    branch_0x8024a550
    bge-    branch_0x8024a574
    cmpwi   r0, 0xc3
    beq-    branch_0x8024a598
    b       branch_0x8024a574

branch_0x8024a550:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024a598
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xc3
    bl      setAnimation__6TMarioFif
    b       branch_0x8024a598

branch_0x8024a574:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x138
    bl      setAnimation__6TMarioFif
    b       branch_0x8024a598

branch_0x8024a588:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x137
    bl      setAnimation__6TMarioFif
branch_0x8024a598:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024a5ac
    li      r0, 0x1
    b       branch_0x8024a5b0

branch_0x8024a5ac:
    li      r0, 0x0
branch_0x8024a5b0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024a5cc
    lwz     r3, 0x3e4(r31)
    li      r0, 0x0
    sth     r0, 0x1cc2(r3)
    lwz     r3, 0x3e4(r31)
    sth     r0, 0x1cc4(r3)
branch_0x8024a5cc:
    lwz     r3, -0x6044(r13)
    li      r4, 0x101f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024a5fc
    li      r3, 0x101f
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8024a5fc:
    mr      r3, r31
    bl      bubbleFromBody__6TMarioFv
    lfs     f1, 0xb0(r31)
    mr      r3, r31
    lfs     f0, 0x21d8(r31)
    li      r4, 0x0
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
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
    lfs     f1, 0xa8(r31)
    lfs     f0, 0x21ec(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r31)
    lfs     f0, 0xb8(r31)
    stfs    f0, 0xac(r31)
    bl      jumpProcess__6TMarioFi
    li      r3, 0x0
branch_0x8024a68c:
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    mtlr    r0
    lwz     r30, 0xb0(sp)
    addi    sp, sp, 0xc0
    blr


.globl hipAttacking__6TMarioFv
hipAttacking__6TMarioFv: # 0x8024a6a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x90(sp)
    li      r30, 0x0
    stw     r29, 0x8c(sp)
    li      r29, 0x0
    lfs     f31, -0x1068(rtoc)
    b       branch_0x8024a770

branch_0x8024a6d8:
    lwz     r3, 0x44(r31)
    lwzx    r4, r3, r30
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xb
    bne-    branch_0x8024a6f8
    li      r0, 0x1
    b       branch_0x8024a6fc

branch_0x8024a6f8:
    li      r0, 0x0
branch_0x8024a6fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024a768
    lfs     f2, 0x10(r31)
    lfs     f3, 0x10(r4)
    lfs     f1, 0x14(r4)
    fsubs   f4, f3, f2
    lfs     f0, 0x14(r31)
    lfs     f2, 0x18(r4)
    fsubs   f3, f1, f0
    lfs     f0, 0x18(r31)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    ble-    branch_0x8024a768
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r30
    lfs     f0, 0x10(r3)
    stfs    f0, 0x10(r31)
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r30
    lfs     f0, 0x18(r3)
    stfs    f0, 0x18(r31)
branch_0x8024a768:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8024a770:
    lhz     r0, 0x48(r31)
    cmpw    r29, r0
    blt+    branch_0x8024a6d8
    lhz     r0, 0x84(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8024a7b8
    bge-    branch_0x8024a798
    cmpwi   r0, 0x0
    bge-    branch_0x8024a7a4
    b       branch_0x8024ac38

branch_0x8024a798:
    cmpwi   r0, 0x4
    bge-    branch_0x8024ac38
    b       branch_0x8024a920

branch_0x8024a7a4:
    addi    r3, r31, 0x0
    li      r4, 0x788f
    bl      startVoice__6TMarioFUl
    li      r0, 0x1
    sth     r0, 0x84(r31)
branch_0x8024a7b8:
    lfs     f1, 0xec(r31)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024a7ec
    lfs     f0, -0x1088(rtoc)
    lis     r4, 0x80
    addi    r3, r31, 0x0
    fadds   f0, f0, f1
    addi    r4, r4, 0x23c
    li      r5, 0x0
    li      r6, 0x0
    stfs    f0, 0x14(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8024a7ec:
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x28
    bge-    branch_0x8024a850
    subfic  r0, r0, 0x28
    lfd     f5, -0x1070(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x1064(rtoc)
    stw     r0, 0x84(sp)
    lis     r0, 0x4330
    lfs     f2, 0x14(r31)
    stw     r0, 0x80(sp)
    lfs     f3, -0x1060(rtoc)
    lfd     f4, 0x80(sp)
    lfs     f0, 0xe8(r31)
    fsubs   f4, f4, f5
    fmuls   f4, f4, f1
    fadds   f1, f2, f4
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024a850
    lfs     f0, -0x105c(rtoc)
    fmadds  f0, f4, f0, f2
    stfs    f0, 0x14(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x104(r31)
branch_0x8024a850:
    mr      r3, r31
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f0, -0x1090(rtoc)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x3c
    bl      setAnimation__6TMarioFif
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x3c
    blt-    branch_0x8024a8a4
    li      r0, 0x0
    sth     r0, 0x86(r31)
    li      r0, 0x2
    sth     r0, 0x84(r31)
branch_0x8024a8a4:
    lfs     f0, -0x1090(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x0
    stfs    f0, 0xa8(r31)
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x8024a8dc
    lis     r4, 0xc00
    addi    r3, r31, 0x0
    addi    r4, r4, 0x230
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024ac44

branch_0x8024a8dc:
    cmpwi   r3, 0x2
    bne-    branch_0x8024ac38
    mr      r3, r31
    lfs     f1, -0x1084(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024a904
    stfs    f0, 0xa8(r31)
branch_0x8024a904:
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024ac44

branch_0x8024a920:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x3d
    bl      setAnimation__6TMarioFif
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lhz     r3, 0x86(r31)
    lha     r0, 0xe9c(r31)
    cmpw    r3, r0
    ble-    branch_0x8024a954
    li      r0, 0x3
    sth     r0, 0x84(r31)
branch_0x8024a954:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8024a96c
    lfs     f0, 0xc80(r31)
    stfs    f0, 0xa8(r31)
    b       branch_0x8024a974

branch_0x8024a96c:
    lfs     f0, 0xc94(r31)
    stfs    f0, 0xa8(r31)
branch_0x8024a974:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8024a98c
    mr      r3, r31
    bl      emitBlurHipDrop__6TMarioFv
    b       branch_0x8024a994

branch_0x8024a98c:
    mr      r3, r31
    bl      emitBlurHipDropSuper__6TMarioFv
branch_0x8024a994:
    lfs     f0, 0x794(r31)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0x744(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    bne-    branch_0x8024abb8
    mr      r3, r31
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024aa28
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8024aa08
    lwz     r3, -0x60f0(r13)
    li      r4, 0x0
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    lwz     r3, -0x7108(r13)
    li      r4, 0x0
    lfs     f1, -0x1088(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    b       branch_0x8024aa28

branch_0x8024aa08:
    addi    r3, r31, 0x0
    li      r4, 0x15
    li      r5, 0x1e
    bl      rumbleStart__6TMarioFii
    lwz     r3, -0x7108(r13)
    li      r4, 0x27
    lfs     f1, -0x1088(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x8024aa28:
    lwz     r3, 0xe0(r31)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8024ab38
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024aac8
    lwz     r3, 0xe0(r31)
    lwz     r3, 0x44(r3)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x6a
    bne-    branch_0x8024aac8
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x39
    bl      emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_
    lfs     f1, 0x14(r31)
    mr      r4, r31
    lfs     f0, -0x1060(rtoc)
    li      r5, 0x3
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0xe0(r31)
    lwz     r3, 0x44(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    li      r4, 0x78d3
    bl      startVoice__6TMarioFUl
    lis     r4, 0x20
    addi    r3, r31, 0x0
    addi    r4, r4, 0x346
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024ac44

branch_0x8024aac8:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8024aaf8
    lwz     r3, 0xe0(r31)
    addi    r4, r31, 0x0
    li      r5, 0x1
    lwz     r3, 0x44(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8024ab38

branch_0x8024aaf8:
    lwz     r3, 0xe0(r31)
    addi    r4, r31, 0x0
    li      r5, 0x3
    lwz     r3, 0x44(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xe0(r31)
    addi    r4, r31, 0x0
    li      r5, 0x1
    lwz     r3, 0x44(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8024ab38:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8024ab6c
    addi    r3, r31, 0x0
    li      r4, 0x14
    bl      emitParticle__6TMarioFi
    addi    r3, r31, 0x0
    li      r4, 0x13
    bl      emitParticle__6TMarioFi
    addi    r3, r31, 0x0
    li      r4, 0x12
    bl      emitParticle__6TMarioFi
    b       branch_0x8024ab9c

branch_0x8024ab6c:
    addi    r3, r31, 0x0
    li      r4, 0x43
    bl      emitParticle__6TMarioFi
    addi    r3, r31, 0x0
    li      r4, 0x44
    bl      emitParticle__6TMarioFi
    addi    r3, r31, 0x0
    li      r4, 0x45
    bl      emitParticle__6TMarioFi
    addi    r3, r31, 0x0
    li      r4, 0x46
    bl      emitParticle__6TMarioFi
branch_0x8024ab9c:
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x23c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024ac38

branch_0x8024abb8:
    cmpwi   r3, 0x2
    bne-    branch_0x8024ac38
    mr      r3, r31
    lfs     f1, -0x1084(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024abe0
    stfs    f0, 0xa8(r31)
branch_0x8024abe0:
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lwz     r3, -0x6044(r13)
    li      r4, 0x180e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024ac38
    addi    r4, r31, 0x10
    li      r3, 0x180e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8024ac38:
    lha     r0, 0x96(r31)
    li      r3, 0x0
    sth     r0, 0x9a(r31)
branch_0x8024ac44:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lwz     r31, 0x94(sp)
    mtlr    r0
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0xa0
    blr


.globl rocketing__6TMarioFv
rocketing__6TMarioFv: # 0x8024ac64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stw     r31, 0xd4(sp)
    stw     r30, 0xd0(sp)
    mr      r30, r3
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024ac94
    li      r0, 0x1
    b       branch_0x8024ac98

branch_0x8024ac94:
    li      r0, 0x0
branch_0x8024ac98:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024acb8
    addi    r3, r30, 0x0
    li      r4, 0x88d
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024b080

branch_0x8024acb8:
    lwz     r3, 0x3e4(r30)
    bl      getCurrentNozzle__9TWaterGunCFv
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x8024ace4
    addi    r3, r30, 0x0
    li      r4, 0x88d
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024b080

branch_0x8024ace4:
    lwz     r0, 0x380(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8024acf8
    li      r0, 0x1
    b       branch_0x8024acfc

branch_0x8024acf8:
    li      r0, 0x0
branch_0x8024acfc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024ad14
    lwz     r3, 0x3e4(r30)
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8024ad2c
branch_0x8024ad14:
    addi    r3, r30, 0x0
    li      r4, 0x88d
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024b080

branch_0x8024ad2c:
    lwz     r0, 0x74(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x8024af4c
    lwz     r3, 0x3e4(r30)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x8024ad4c
    b       branch_0x8024af60

branch_0x8024ad4c:
    lha     r4, 0x96(r30)
    lha     r0, 0x90(r30)
    lfs     f31, 0x8c(r30)
    subf    r0, r4, r0
    extsh   r31, r0
    cmpwi   r31, -0x1555
    ble-    branch_0x8024ad70
    cmpwi   r31, 0x1555
    blt-    branch_0x8024ad80
branch_0x8024ad70:
    cmpwi   r31, -0x6aaa
    blt-    branch_0x8024ad80
    cmpwi   r31, 0x6aaa
    ble-    branch_0x8024ae8c
branch_0x8024ad80:
    cmpwi   r31, -0x4000
    blt-    branch_0x8024adf0
    cmpwi   r31, 0x4000
    bgt-    branch_0x8024adf0
    bl      getCurrentNozzle__9TWaterGunCFv
    lha     r3, 0x324(r3)
    lis     r0, 0x4330
    fneg    f0, f31
    lfs     f1, -0x107c(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0xcc(sp)
    clrlwi  r3, r31, 16
    stw     r0, 0xc8(sp)
    fmuls   f2, f1, f0
    lwz     r0, -0x5eac(r13)
    lfd     f1, -0x1070(rtoc)
    lfd     f0, 0xc8(sp)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea4(r13)
    slwi    r0, r0, 2
    fsubs   f1, f0, f1
    lfsx    f0, r3, r0
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    b       branch_0x8024ae4c

branch_0x8024adf0:
    bl      getCurrentNozzle__9TWaterGunCFv
    lha     r3, 0x338(r3)
    lis     r0, 0x4330
    fneg    f0, f31
    lfs     f1, -0x107c(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0xc4(sp)
    clrlwi  r3, r31, 16
    stw     r0, 0xc0(sp)
    fmuls   f2, f1, f0
    lwz     r0, -0x5eac(r13)
    lfd     f1, -0x1070(rtoc)
    lfd     f0, 0xc0(sp)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea4(r13)
    slwi    r0, r0, 2
    fsubs   f1, f0, f1
    lfsx    f0, r3, r0
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
branch_0x8024ae4c:
    lwz     r4, 0x3e4(r30)
    clrlwi  r3, r31, 16
    sth     r0, 0x1cc2(r4)
    lwz     r4, 0x3e4(r30)
    sth     r0, 0x1cc4(r4)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f1, 0x21c4(r30)
    slwi    r0, r0, 2
    lfs     f0, 0xb0(r30)
    lfsx    f2, r4, r0
    fmuls   f2, f31, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r30)
    b       branch_0x8024af60

branch_0x8024ae8c:
    bl      getCurrentNozzle__9TWaterGunCFv
    lha     r4, 0x310(r3)
    lis     r3, 0x4330
    lwz     r0, 0x118(r30)
    fneg    f0, f31
    xoris   r4, r4, 0x8000
    stw     r4, 0xc4(sp)
    clrlwi  r4, r31, 16
    lfs     f1, -0x107c(rtoc)
    stw     r3, 0xc0(sp)
    rlwinm. r0, r0, 0, 16, 16
    fmuls   f2, f1, f0
    lwz     r3, -0x5eac(r13)
    lfd     f1, -0x1070(rtoc)
    lfd     f0, 0xc0(sp)
    sraw    r3, r4, r3
    fsubs   f1, f0, f1
    lwz     r4, -0x5ea8(r13)
    slwi    r3, r3, 2
    lfsx    f0, r4, r3
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r5, 0xcc(sp)
    beq-    branch_0x8024aefc
    li      r0, 0x1
    b       branch_0x8024af00

branch_0x8024aefc:
    li      r0, 0x0
branch_0x8024af00:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024af60
    lwz     r3, 0x3e4(r30)
    neg     r0, r5
    li      r4, 0x0
    sth     r0, 0x1cc2(r3)
    lwz     r3, 0x3e4(r30)
    sth     r5, 0x1cc4(r3)
    lha     r3, 0x96(r30)
    lha     r0, 0x90(r30)
    lha     r5, 0x2158(r30)
    subf    r0, r3, r0
    addi    r6, r5, 0x0
    extsh   r3, r0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r30)
    subf    r0, r3, r0
    sth     r0, 0x96(r30)
    b       branch_0x8024af60

branch_0x8024af4c:
    lwz     r3, 0x3e4(r30)
    li      r0, 0x0
    sth     r0, 0x1cc2(r3)
    lwz     r3, 0x3e4(r30)
    sth     r0, 0x1cc4(r3)
branch_0x8024af60:
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
    lwz     r3, 0x3e4(r30)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x8024afcc
    b       branch_0x8024aff4

branch_0x8024afcc:
    lfs     f2, 0x314(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x216c(r30)
    fsubs   f1, f2, f1
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, 0x2180(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
branch_0x8024aff4:
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x3
    beq-    branch_0x8024b040
    bge-    branch_0x8024b010
    b       branch_0x8024b040

branch_0x8024b010:
    cmpwi   r3, 0x5
    bge-    branch_0x8024b040
    lha     r5, 0x27f8(r30)
    addi    r3, r30, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lis     r4, 0x820
    addi    r3, r30, 0x0
    addi    r4, r4, 0x348
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8024b040:
    lwz     r0, 0xdc(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8024b06c
    lfs     f1, -0x1060(rtoc)
    lfs     f0, 0x14(r30)
    lfs     f2, 0xe8(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x8024b06c
    fsubs   f0, f2, f1
    stfs    f0, 0x14(r30)
branch_0x8024b06c:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x56
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
branch_0x8024b080:
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lwz     r31, 0xd4(sp)
    mtlr    r0
    lwz     r30, 0xd0(sp)
    addi    sp, sp, 0xe0
    blr


.globl rocketCheck__6TMarioFv
rocketCheck__6TMarioFv: # 0x8024b09c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x1
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r0, 0x7c(r3)
    cmplwi  r0, 0x88b
    bne-    branch_0x8024b0c8
    li      r31, 0x0
branch_0x8024b0c8:
    cmplwi  r0, 0x88d
    bne-    branch_0x8024b0d4
    li      r31, 0x0
branch_0x8024b0d4:
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024b0e8
    li      r0, 0x1
    b       branch_0x8024b0ec

branch_0x8024b0e8:
    li      r0, 0x0
branch_0x8024b0ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024b148
    lwz     r3, 0x3e4(r30)
    bl      getCurrentNozzle__9TWaterGunCFv
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x8024b10c
    li      r31, 0x0
branch_0x8024b10c:
    lwz     r0, 0x380(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8024b120
    li      r0, 0x1
    b       branch_0x8024b124

branch_0x8024b120:
    li      r0, 0x0
branch_0x8024b124:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024b130
    li      r31, 0x0
branch_0x8024b130:
    lwz     r3, 0x3e4(r30)
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8024b14c
    li      r31, 0x0
    b       branch_0x8024b14c

branch_0x8024b148:
    li      r31, 0x0
branch_0x8024b14c:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024b184
    lwz     r5, 0x3e4(r30)
    mr      r3, r30
    lfs     f1, 0x14(r30)
    li      r4, 0x88b
    lfs     f0, 0x1d40(r5)
    li      r5, 0x0
    fadds   f0, f1, f0
    li      r6, 0x0
    stfs    f0, 0x314(r30)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024b188

branch_0x8024b184:
    li      r3, 0x0
branch_0x8024b188:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl boardJumping__6TMarioFv
boardJumping__6TMarioFv: # 0x8024b1a0
    mflr    r0
    li      r4, 0x6d
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lfs     f1, -0x1088(rtoc)
    bl      setAnimation__6TMarioFif
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024b1f4
    lfs     f0, 0x758(r31)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0x744(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x8024b214

branch_0x8024b1f4:
    lfs     f0, 0x76c(r31)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0x780(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x8024b214:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x2
    beq-    branch_0x8024b264
    bge-    branch_0x8024b334
    cmpwi   r3, 0x1
    bge-    branch_0x8024b238
    b       branch_0x8024b334

branch_0x8024b238:
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024b334
    lis     r4, 0x81
    addi    r3, r31, 0x0
    addi    r4, r4, 0x446
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024b334

branch_0x8024b264:
    lwz     r3, 0xd8(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8024b2b0
    mr      r3, r31
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    mr      r3, r31
    bl      loserExec__6TMarioFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x4823
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024b334
    li      r3, 0x4823
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x8024b334

branch_0x8024b2b0:
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    lha     r0, 0x96(r31)
    lha     r4, 0x1818(r31)
    subf    r0, r0, r3
    extsh   r3, r0
    neg     r0, r4
    cmpw    r3, r0
    blt-    branch_0x8024b2e4
    cmpw    r4, r3
    bge-    branch_0x8024b328
branch_0x8024b2e4:
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x1804(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024b328
    mr      r3, r31
    bl      loserExec__6TMarioFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x4823
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024b334
    li      r3, 0x4823
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x8024b334

branch_0x8024b328:
    mr      r3, r31
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
branch_0x8024b334:
    lwz     r0, 0x64(sp)
    li      r3, 0x0
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl thrownDowning__6TMarioFv
thrownDowning__6TMarioFv: # 0x8024b34c
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lha     r6, 0x96(r3)
    lha     r5, 0x90(r3)
    lwz     r4, -0x5eac(r13)
    subf    r5, r6, r5
    lfs     f1, -0x107c(rtoc)
    clrlwi  r8, r5, 16
    lfs     f0, 0x8c(r31)
    sraw    r4, r8, r4
    lwz     r5, -0x5ea4(r13)
    fmuls   f3, f1, f0
    slwi    r4, r4, 2
    lfsx    f0, r5, r4
    li      r4, 0x0
    lfs     f1, 0xdd4(r31)
    fmuls   f2, f3, f0
    lfs     f0, 0xb0(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r31)
    lha     r5, 0x96(r31)
    lwz     r6, -0x5eac(r13)
    xoris   r5, r5, 0x8000
    lwz     r7, -0x5ea8(r13)
    stw     r5, 0x44(sp)
    sraw    r5, r8, r6
    slwi    r5, r5, 2
    lfd     f1, -0x1070(rtoc)
    stw     r0, 0x40(sp)
    lfsx    f2, r7, r5
    lfd     f0, 0x40(sp)
    fmuls   f3, f3, f2
    lfs     f2, 0xde8(r31)
    fsubs   f0, f0, f1
    fmadds  f0, f3, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    sth     r0, 0x96(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, 0xdfc(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xa4(r31)
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    stfs    f0, 0xac(r31)
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x2
    beq-    branch_0x8024b4e0
    bge-    branch_0x8024b4ec
    cmpwi   r3, 0x1
    bge-    branch_0x8024b474
    b       branch_0x8024b4ec

branch_0x8024b474:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    bge-    branch_0x8024b4c4
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024b4c4
    fneg    f0, f1
    lfs     f1, -0x1058(rtoc)
    mr      r3, r31
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r31)
    lfs     f1, -0x1064(rtoc)
    lfs     f0, 0xb0(r31)
    fmuls   f1, f1, f0
    bl      setPlayerVelocity__6TMarioFf
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x8024b4ec

branch_0x8024b4c4:
    lis     r4, 0xc00
    addi    r3, r31, 0x0
    addi    r4, r4, 0x223
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024b500

branch_0x8024b4e0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      playerRefrection__6TMarioFi
branch_0x8024b4ec:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x120
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
branch_0x8024b500:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl fireDowning__6TMarioFv
fireDowning__6TMarioFv: # 0x8024b514
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lhz     r0, 0x86(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8024b540
    addi    r3, r31, 0x0
    li      r4, 0x7849
    bl      startVoice__6TMarioFUl
branch_0x8024b540:
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x8024b570
    lfs     f3, -0x1054(rtoc)
    lfs     f1, 0xb0(r31)
    fmr     f4, f3
    lfs     f2, -0x1090(rtoc)
    bl      FConverge__Fffff
    stfs    f1, 0xb0(r31)
branch_0x8024b570:
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8024b65c
    lfs     f1, -0x107c(rtoc)
    lis     r0, 0x4330
    lfs     f0, 0x8c(r31)
    lha     r4, 0x96(r31)
    lha     r3, 0x90(r31)
    fmuls   f1, f1, f0
    lfs     f0, 0xbcc(r31)
    subf    r4, r4, r3
    lwz     r3, -0x5eac(r13)
    clrlwi  r6, r4, 16
    sraw    r3, r6, r3
    lwz     r4, -0x5ea4(r13)
    slwi    r3, r3, 2
    fmuls   f3, f1, f0
    lfsx    f1, r4, r3
    lfs     f0, 0xb0(r31)
    fmadds  f0, f3, f1, f0
    stfs    f0, 0xb0(r31)
    lha     r3, 0x96(r31)
    lwz     r4, -0x5eac(r13)
    xoris   r3, r3, 0x8000
    lwz     r5, -0x5ea8(r13)
    stw     r3, 0x44(sp)
    sraw    r3, r6, r4
    slwi    r3, r3, 2
    lfd     f1, -0x1070(rtoc)
    stw     r0, 0x40(sp)
    lfsx    f2, r5, r3
    lfd     f0, 0x40(sp)
    fmuls   f2, f3, f2
    lfs     f3, -0x1050(rtoc)
    fsubs   f0, f0, f1
    fmadds  f0, f3, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    sth     r0, 0x96(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024b640
    lha     r3, 0x96(r31)
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x104c(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
branch_0x8024b640:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1048(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024b65c
    lfs     f0, -0x1044(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r31)
branch_0x8024b65c:
    lhz     r5, 0x96(r31)
    mr      r3, r31
    lwz     r0, -0x5eac(r13)
    li      r4, 0x0
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xa4(r31)
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    stfs    f0, 0xac(r31)
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x2
    beq-    branch_0x8024b748
    bge-    branch_0x8024b754
    cmpwi   r3, 0x1
    bge-    branch_0x8024b6d0
    b       branch_0x8024b754

branch_0x8024b6d0:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    bge-    branch_0x8024b720
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024b720
    fneg    f0, f1
    lfs     f1, -0x1058(rtoc)
    mr      r3, r31
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r31)
    lfs     f1, -0x1064(rtoc)
    lfs     f0, 0xb0(r31)
    fmuls   f1, f1, f0
    bl      setPlayerVelocity__6TMarioFf
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x8024b754

branch_0x8024b720:
    addi    r3, r31, 0x0
    li      r4, 0x7852
    bl      startVoice__6TMarioFUl
    lis     r4, 0x800
    addi    r3, r31, 0x0
    addi    r4, r4, 0x239
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024b754

branch_0x8024b748:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      playerRefrection__6TMarioFi
branch_0x8024b754:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x29
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x54(sp)
    li      r3, 0x0
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl slipFalling__6TMarioFv
slipFalling__6TMarioFv: # 0x8024b77c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    lhz     r3, 0x86(r3)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x78
    ble-    branch_0x8024b7e4
    lfs     f2, 0x14(r31)
    lfs     f1, 0xec(r31)
    lfs     f0, -0x1040(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024b7e4
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024ba04

branch_0x8024b7e4:
    lfs     f1, 0xb0(r31)
    lfs     f0, 0xb54(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8024b89c
    lha     r5, 0x96(r31)
    mr      r3, r31
    lha     r4, 0x90(r31)
    lwz     r0, -0x5eac(r13)
    subf    r4, r5, r4
    lfs     f1, -0x107c(rtoc)
    clrlwi  r30, r4, 16
    lfs     f0, 0x8c(r31)
    sraw    r0, r30, r0
    lwz     r4, -0x5ea4(r13)
    slwi    r0, r0, 2
    fmuls   f31, f1, f0
    lfsx    f30, r4, r0
    bl      getJumpAccelControl__6TMarioCFv
    fmuls   f2, f31, f30
    lfs     f0, 0xb0(r31)
    mr      r3, r31
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r30, r0
    slwi    r0, r0, 2
    lfsx    f30, r4, r0
    bl      getJumpSlideControl__6TMarioCFv
    lha     r3, 0x96(r31)
    lis     r0, 0x4330
    lfd     f2, -0x1070(rtoc)
    fmuls   f3, f31, f30
    xoris   r3, r3, 0x8000
    stw     r3, 0x54(sp)
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    sth     r0, 0x96(r31)
branch_0x8024b89c:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1048(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024b8b8
    lfs     f0, -0x103c(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r31)
branch_0x8024b8b8:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1084(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024b8d4
    lfs     f0, -0x1058(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r31)
branch_0x8024b8d4:
    lhz     r5, 0x96(r31)
    mr      r3, r31
    lwz     r0, -0x5eac(r13)
    li      r4, 0x0
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xa4(r31)
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    stfs    f0, 0xac(r31)
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x2
    beq-    branch_0x8024b9b4
    bge-    branch_0x8024b9f0
    cmpwi   r3, 0x1
    bge-    branch_0x8024b948
    b       branch_0x8024b9f0

branch_0x8024b948:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8024b998
    lfs     f2, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8024b998
    lwz     r3, 0xe0(r31)
    lfs     f0, -0x1038(rtoc)
    lfs     f1, 0x38(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8024b998
    fneg    f1, f2
    lfs     f0, -0x1064(rtoc)
    li      r0, 0x1
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r31)
    sth     r0, 0x84(r31)
    b       branch_0x8024b9f0

branch_0x8024b998:
    lis     r4, 0x84
    addi    r3, r31, 0x0
    addi    r4, r4, 0x452
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024b9f0

branch_0x8024b9b4:
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024b9c8
    stfs    f0, 0xa8(r31)
branch_0x8024b9c8:
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8024b9f0:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x91
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
branch_0x8024ba04:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x70
    blr


.globl catchStop__6TMarioFv
catchStop__6TMarioFv: # 0x8024ba24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lhz     r0, 0x84(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8024ba54
    lfs     f0, -0x1034(rtoc)
    li      r0, 0x1
    stfs    f0, 0xa8(r31)
    sth     r0, 0x84(r31)
branch_0x8024ba54:
    mr      r3, r31
    bl      doJumping__6TMarioFv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    beq-    branch_0x8024bac0
    bge-    branch_0x8024ba80
    cmpwi   r3, 0x0
    bge-    branch_0x8024ba8c
    b       branch_0x8024bae8

branch_0x8024ba80:
    cmpwi   r3, 0x3
    bge-    branch_0x8024bae8
    b       branch_0x8024badc

branch_0x8024ba8c:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x8024baac
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x6f
    bl      setAnimation__6TMarioFif
    b       branch_0x8024bae8

branch_0x8024baac:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x56
    bl      setAnimation__6TMarioFif
    b       branch_0x8024bae8

branch_0x8024bac0:
    lis     r4, 0xc00
    addi    r3, r31, 0x0
    addi    r4, r4, 0x232
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024bae8

branch_0x8024badc:
    mr      r3, r31
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
branch_0x8024bae8:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x8024bb0c
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024bb0c
    li      r0, 0x2
    sth     r0, 0x84(r31)
branch_0x8024bb0c:
    lwz     r0, 0x1c(sp)
    li      r3, 0x0
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stayWall__6TMarioFv
stayWall__6TMarioFv: # 0x8024bb24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    lhz     r3, 0x86(r3)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x3c
    ble-    branch_0x8024bb5c
    li      r0, 0x3c
    sth     r0, 0x86(r31)
branch_0x8024bb5c:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8024bc0c
    lwz     r3, 0xd8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024bbac
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    addis   r30, r3, 0x1
    subi    r30, r30, 0x8000
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    li      r4, 0x18
    bl      emitParticle__6TMarioFis
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    li      r4, 0x19
    bl      emitParticle__6TMarioFis
branch_0x8024bbac:
    lfs     f0, -0x1030(rtoc)
    stfs    f0, 0xa8(r31)
    lha     r3, 0x96(r31)
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r31)
    lfs     f1, -0x1060(rtoc)
    lfs     f0, 0x14(r31)
    lfs     f2, 0xa8(r31)
    fadds   f1, f1, f0
    lfs     f0, 0xe8(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8024bbf0
    lfs     f0, -0x1088(rtoc)
    stfs    f0, 0xa8(r31)
branch_0x8024bbf0:
    lis     r4, 0x200
    addi    r3, r31, 0x0
    addi    r4, r4, 0x886
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024bdf4

branch_0x8024bc0c:
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x8024bc78
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8024bc40
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024bc7c

branch_0x8024bc40:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024bc78
    lfs     f1, 0xe74(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024bc7c

branch_0x8024bc78:
    li      r3, 0x0
branch_0x8024bc7c:
    cmpwi   r3, 0x0
    beq-    branch_0x8024bc8c
    li      r3, 0x1
    b       branch_0x8024bdf4

branch_0x8024bc8c:
    lhz     r3, 0x86(r31)
    cmplwi  r3, 0x14
    bge-    branch_0x8024bcb4
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lfs     f0, -0x1090(rtoc)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xac(r31)
    b       branch_0x8024bce0

branch_0x8024bcb4:
    neg     r0, r3
    lfd     f1, -0x1070(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x1064(rtoc)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0xa8(r31)
branch_0x8024bce0:
    lwz     r3, 0xd8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024bd10
    lfs     f1, 0x10(r31)
    lfs     f0, 0x34(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x10(r31)
    lwz     r3, 0xd8(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x3c(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(r31)
branch_0x8024bd10:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    beq-    branch_0x8024bd28
    b       branch_0x8024bd50

branch_0x8024bd28:
    lha     r5, 0x96(r31)
    addi    r3, r31, 0x0
    li      r4, 0x88c
    addis   r5, r5, 0x1
    subi    r0, r5, 0x8000
    sth     r0, 0x96(r31)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024bdf4

branch_0x8024bd50:
    lwz     r0, 0xd8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8024bd98
    lha     r4, 0x96(r31)
    addi    r3, r31, 0x0
    addis   r4, r4, 0x1
    subi    r0, r4, 0x8000
    sth     r0, 0x96(r31)
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f0, -0x1090(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x88c
    stfs    f0, 0xa8(r31)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024bdf4

branch_0x8024bd98:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xcc
    bl      setAnimation__6TMarioFif
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x102c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024bdf0
    mr      r3, r31
    bl      wallSlipEffect__6TMarioFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x113f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024bdf0
    addi    r4, r31, 0x10
    li      r3, 0x113f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8024bdf0:
    li      r3, 0x0
branch_0x8024bdf4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl jumpDownCommon__6TMarioFiif
jumpDownCommon__6TMarioFiif: # 0x8024be0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    beq-    branch_0x8024be88
    bge-    branch_0x8024be68
    cmpwi   r31, 0x0
    bge-    branch_0x8024be74
    b       branch_0x8024bedc

branch_0x8024be68:
    cmpwi   r31, 0x3
    bge-    branch_0x8024bedc
    b       branch_0x8024bea0

branch_0x8024be74:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      setAnimation__6TMarioFif
    b       branch_0x8024bedc

branch_0x8024be88:
    lwz     r5, 0x88(r28)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024bedc

branch_0x8024bea0:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r28, 0x0
    li      r4, 0x2
    bl      setAnimation__6TMarioFif
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      playerRefrection__6TMarioFi
    lfs     f1, 0xa8(r28)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024bed0
    stfs    f0, 0xa8(r28)
branch_0x8024bed0:
    mr      r3, r28
    fneg    f1, f31
    bl      setPlayerVelocity__6TMarioFf
branch_0x8024bedc:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl jumpCatch__6TMarioFv
jumpCatch__6TMarioFv: # 0x8024bf04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024bf54
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8024bf54
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024c1b8

branch_0x8024bf54:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x88
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      doJumping__6TMarioFv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x1
    beq-    branch_0x8024bf94
    bge-    branch_0x8024bf88
    b       branch_0x8024c1b4

branch_0x8024bf88:
    cmpwi   r3, 0x3
    bge-    branch_0x8024c1b4
    b       branch_0x8024c130

branch_0x8024bf94:
    lhz     r0, 0x114(r31)
    li      r30, 0x1
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x8024bfac
    mr      r0, r30
    b       branch_0x8024bfb0

branch_0x8024bfac:
    li      r0, 0x0
branch_0x8024bfb0:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024bfc0
    li      r30, 0x0
branch_0x8024bfc0:
    lfs     f2, 0x2ac(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x8c0(r31)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8024bfe0
    li      r30, 0x0
branch_0x8024bfe0:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024bff4
    li      r30, 0x0
branch_0x8024bff4:
    lwz     r3, 0xe0(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0xa
    beq-    branch_0x8024c088
    cmplwi  r3, 0x800a
    beq-    branch_0x8024c088
    cmplwi  r3, 0x108
    beq-    branch_0x8024c088
    cmplwi  r3, 0x7
    beq-    branch_0x8024c024
    cmplwi  r3, 0x8007
    bne-    branch_0x8024c02c
branch_0x8024c024:
    li      r0, 0x1
    b       branch_0x8024c030

branch_0x8024c02c:
    li      r0, 0x0
branch_0x8024c030:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024c088
    cmplwi  r3, 0x108
    beq-    branch_0x8024c050
    cmplwi  r3, 0x8
    beq-    branch_0x8024c050
    cmplwi  r3, 0x8008
    bne-    branch_0x8024c058
branch_0x8024c050:
    li      r0, 0x1
    b       branch_0x8024c05c

branch_0x8024c058:
    li      r0, 0x0
branch_0x8024c05c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024c088
    cmplwi  r3, 0x9
    beq-    branch_0x8024c074
    cmplwi  r3, 0x8009
    bne-    branch_0x8024c07c
branch_0x8024c074:
    li      r0, 0x1
    b       branch_0x8024c080

branch_0x8024c07c:
    li      r0, 0x0
branch_0x8024c080:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c090
branch_0x8024c088:
    li      r0, 0x1
    b       branch_0x8024c094

branch_0x8024c090:
    li      r0, 0x0
branch_0x8024c094:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c0a0
    li      r30, 0x0
branch_0x8024c0a0:
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1028(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024c0b4
    li      r30, 0x0
branch_0x8024c0b4:
    mr      r3, r31
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024c0c8
    li      r30, 0x0
branch_0x8024c0c8:
    clrlwi. r0, r30, 24
    beq-    branch_0x8024c114
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x8024c0e4
    li      r0, 0x1
    b       branch_0x8024c0e8

branch_0x8024c0e4:
    li      r0, 0x0
branch_0x8024c0e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c114
    mr      r3, r31
    bl      sinkInSandEffect__6TMarioFv
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x33c
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024c1b4

branch_0x8024c114:
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x456
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024c1b4

branch_0x8024c130:
    lwz     r3, 0xd8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024c174
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x8024c150
    li      r0, 0x1
    b       branch_0x8024c154

branch_0x8024c150:
    li      r0, 0x0
branch_0x8024c154:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c174
    lis     r4, 0x3000
    addi    r3, r31, 0x0
    addi    r4, r4, 0x36c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8024c1b8

branch_0x8024c174:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      playerRefrection__6TMarioFi
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024c194
    stfs    f0, 0xa8(r31)
branch_0x8024c194:
    addi    r3, r31, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b0
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
branch_0x8024c1b4:
    li      r3, 0x0
branch_0x8024c1b8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl landing__6TMarioFv
landing__6TMarioFv: # 0x8024c1d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lfs     f0, -0x1090(rtoc)
    lfs     f1, 0xa8(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024c234
    lwz     r0, 0x88(r30)
    cmplwi  r0, 0x3
    bge-    branch_0x8024c234
    lhz     r3, 0x86(r30)
    addi    r0, r3, 0x1
    cmplwi  r3, 0xf0
    sth     r0, 0x86(r30)
    ble-    branch_0x8024c234
    li      r0, 0xf0
    sth     r0, 0x86(r30)
    addi    r3, r30, 0x0
    li      r4, 0x786b
    bl      startVoice__6TMarioFUl
    li      r0, 0x3
    stw     r0, 0x88(r30)
branch_0x8024c234:
    lwz     r0, 0x74(r30)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024c2a4
    lwz     r3, 0x4fc(r30)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8024c26c
    lis     r4, 0x80
    addi    r3, r30, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024c2a8

branch_0x8024c26c:
    mr      r3, r30
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024c2a4
    lfs     f1, 0xe74(r30)
    mr      r3, r30
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x80
    addi    r3, r30, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024c2a8

branch_0x8024c2a4:
    li      r3, 0x0
branch_0x8024c2a8:
    cmpwi   r3, 0x0
    beq-    branch_0x8024c2b8
    li      r3, 0x1
    b       branch_0x8024c32c

branch_0x8024c2b8:
    mr      r3, r30
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024c2d0
    li      r3, 0x1
    b       branch_0x8024c32c

branch_0x8024c2d0:
    lwz     r0, 0x88(r30)
    cmpwi   r0, 0x2
    beq-    branch_0x8024c310
    bge-    branch_0x8024c2f0
    cmpwi   r0, 0x0
    beq-    branch_0x8024c2fc
    bge-    branch_0x8024c304
    b       branch_0x8024c310

branch_0x8024c2f0:
    cmpwi   r0, 0x4
    bge-    branch_0x8024c310
    b       branch_0x8024c30c

branch_0x8024c2fc:
    li      r31, 0x56
    b       branch_0x8024c310

branch_0x8024c304:
    li      r31, 0x90
    b       branch_0x8024c310

branch_0x8024c30c:
    li      r31, 0x120
branch_0x8024c310:
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    addi    r4, r4, 0x471
    li      r6, 0x3
    bl      jumpingBasic__6TMarioFiii
    li      r3, 0x0
branch_0x8024c32c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl checkBackTrig__6TMarioFv
checkBackTrig__6TMarioFv: # 0x8024c344
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024c3c8
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8024c390
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8a9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024c3cc

branch_0x8024c390:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024c3c8
    lfs     f1, 0xe74(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    lis     r4, 0x80
    addi    r3, r31, 0x0
    addi    r4, r4, 0x88a
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024c3cc

branch_0x8024c3c8:
    li      r3, 0x0
branch_0x8024c3cc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl considerJumpRotate__6TMarioFv
considerJumpRotate__6TMarioFv: # 0x8024c3e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0xc
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x1
    bne-    branch_0x8024c43c
    lwz     r0, 0xc(sp)
    cmpwi   r0, 0x3
    beq-    branch_0x8024c42c
    bge-    branch_0x8024c434
    cmpwi   r0, 0x2
    bge-    branch_0x8024c420
    b       branch_0x8024c434

branch_0x8024c420:
    li      r0, 0x896
    stw     r0, 0x7c(r31)
    b       branch_0x8024c434

branch_0x8024c42c:
    li      r0, 0x895
    stw     r0, 0x7c(r31)
branch_0x8024c434:
    li      r3, 0x1
    b       branch_0x8024c440

branch_0x8024c43c:
    li      r3, 0x0
branch_0x8024c440:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl jumpingBasic__6TMarioFiii
jumpingBasic__6TMarioFiii: # 0x8024c454
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r27, r6, 0x0
    bl      doJumping__6TMarioFv
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    bl      jumpProcess__6TMarioFi
    addi    r31, r3, 0x0
    cmpwi   r31, 0x2
    beq-    branch_0x8024c7b4
    bge-    branch_0x8024c4a4
    cmpwi   r31, 0x0
    beq-    branch_0x8024c4b4
    bge-    branch_0x8024c4c8
    b       branch_0x8024cac0

branch_0x8024c4a4:
    cmpwi   r31, 0x4
    beq-    branch_0x8024ca98
    bge-    branch_0x8024cac0
    b       branch_0x8024ca70

branch_0x8024c4b4:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      setAnimation__6TMarioFif
    b       branch_0x8024cac0

branch_0x8024c4c8:
    lwz     r3, 0xe0(r28)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8024c4f0
    lwz     r12, 0x0(r3)
    addi    r4, r28, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8024c4f0:
    lhz     r0, 0x114(r28)
    li      r30, 0x0
    li      r27, 0x1
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x8024c50c
    mr      r0, r27
    b       branch_0x8024c510

branch_0x8024c50c:
    li      r0, 0x0
branch_0x8024c510:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024c520
    li      r27, 0x0
branch_0x8024c520:
    lfs     f2, 0x2ac(r28)
    lfs     f1, 0x14(r28)
    lfs     f0, 0x8c0(r28)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8024c540
    li      r27, 0x0
branch_0x8024c540:
    mr      r3, r28
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024c554
    li      r27, 0x0
branch_0x8024c554:
    lwz     r3, 0xe0(r28)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0xa
    beq-    branch_0x8024c5e8
    cmplwi  r3, 0x800a
    beq-    branch_0x8024c5e8
    cmplwi  r3, 0x108
    beq-    branch_0x8024c5e8
    cmplwi  r3, 0x7
    beq-    branch_0x8024c584
    cmplwi  r3, 0x8007
    bne-    branch_0x8024c58c
branch_0x8024c584:
    li      r0, 0x1
    b       branch_0x8024c590

branch_0x8024c58c:
    li      r0, 0x0
branch_0x8024c590:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024c5e8
    cmplwi  r3, 0x108
    beq-    branch_0x8024c5b0
    cmplwi  r3, 0x8
    beq-    branch_0x8024c5b0
    cmplwi  r3, 0x8008
    bne-    branch_0x8024c5b8
branch_0x8024c5b0:
    li      r0, 0x1
    b       branch_0x8024c5bc

branch_0x8024c5b8:
    li      r0, 0x0
branch_0x8024c5bc:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024c5e8
    cmplwi  r3, 0x9
    beq-    branch_0x8024c5d4
    cmplwi  r3, 0x8009
    bne-    branch_0x8024c5dc
branch_0x8024c5d4:
    li      r0, 0x1
    b       branch_0x8024c5e0

branch_0x8024c5dc:
    li      r0, 0x0
branch_0x8024c5e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c5f0
branch_0x8024c5e8:
    li      r0, 0x1
    b       branch_0x8024c5f4

branch_0x8024c5f0:
    li      r0, 0x0
branch_0x8024c5f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c600
    li      r27, 0x0
branch_0x8024c600:
    lfs     f1, 0xa8(r28)
    lfs     f0, -0x1028(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024c614
    li      r27, 0x0
branch_0x8024c614:
    mr      r3, r28
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024c628
    li      r27, 0x0
branch_0x8024c628:
    clrlwi. r0, r27, 24
    beq-    branch_0x8024c740
    lwz     r3, 0x118(r28)
    rlwinm. r0, r3, 0, 13, 13
    beq-    branch_0x8024c644
    li      r0, 0x1
    b       branch_0x8024c648

branch_0x8024c644:
    li      r0, 0x0
branch_0x8024c648:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c674
    mr      r3, r28
    bl      sinkInSandEffect__6TMarioFv
    lis     r4, 0x2
    addi    r3, r28, 0x0
    addi    r4, r4, 0x33c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024cac4

branch_0x8024c674:
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x8024c684
    li      r0, 0x1
    b       branch_0x8024c688

branch_0x8024c684:
    li      r0, 0x0
branch_0x8024c688:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c740
    lwz     r3, 0x3e4(r28)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8024c740
    addi    r4, r28, 0xe4c
    lwz     r3, 0x53c(r28)
    lha     r4, 0x0(r4)
    lfs     f3, 0xe38(r28)
    lfs     f2, 0xe24(r28)
    lfs     f1, 0xe10(r28)
    bl      tremble__19TTrembleModelEffectFfffi
    addi    r3, r28, 0x0
    li      r4, 0x479
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lha     r5, 0x27e4(r28)
    addi    r3, r28, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    addi    r3, r28, 0x0
    li      r30, 0x1
    li      r4, 0x789e
    bl      startVoice__6TMarioFUl
    lwz     r3, -0x6044(r13)
    li      r4, 0x193e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024c720
    addi    r4, r28, 0x10
    li      r3, 0x193e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8024c720:
    mr      r3, r28
    bl      strongTouchDownEffect__6TMarioFv
    lha     r7, 0x27bc(r28)
    addi    r3, r28, 0x0
    li      r4, 0x1
    li      r5, 0x3
    li      r6, 0x0
    bl      floorDamageExec__6TMarioFiiii
branch_0x8024c740:
    lfs     f0, 0x14(r28)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    stfs    f0, 0x2ac(r28)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    clrlwi. r0, r30, 24
    bne-    branch_0x8024c784
    lha     r0, 0x27f8(r28)
    addi    r3, r28, 0x0
    li      r4, 0x14
    srawi   r5, r0, 1
    addze   r5, r5
    bl      rumbleStart__6TMarioFii
    mr      r3, r28
    bl      stopVoice__6TMarioFv
branch_0x8024c784:
    lwz     r3, 0x80(r28)
    cmplwi  r3, 0x887
    beq-    branch_0x8024c79c
    subi    r0, r3, 0x895
    cmplwi  r0, 0x1
    bgt-    branch_0x8024c7a8
branch_0x8024c79c:
    mr      r3, r28
    bl      strongTouchDownEffect__6TMarioFv
    b       branch_0x8024cac0

branch_0x8024c7a8:
    mr      r3, r28
    bl      smallTouchDownEffect__6TMarioFv
    b       branch_0x8024cac0

branch_0x8024c7b4:
    lwz     r0, 0x7c(r28)
    cmplwi  r0, 0x893
    beq-    branch_0x8024c7f8
    lfs     f1, 0xb0(r28)
    lfs     f0, 0x8e8(r28)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024c7f8
    addi    r3, r28, 0x0
    li      r4, 0xc
    bl      emitParticle__6TMarioFi
    lis     r4, 0x2
    addi    r3, r28, 0x0
    addi    r4, r4, 0x8b0
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    mr      r3, r31
    b       branch_0x8024cac4

branch_0x8024c7f8:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      setAnimation__6TMarioFif
    mr      r3, r28
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024c828
    mr      r3, r28
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x8024cac0

branch_0x8024c828:
    lwz     r3, 0xd8(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x8024c880
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x8024c848
    cmplwi  r0, 0x8005
    bne-    branch_0x8024c850
branch_0x8024c848:
    li      r0, 0x1
    b       branch_0x8024c854

branch_0x8024c850:
    li      r0, 0x0
branch_0x8024c854:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c880
    addi    r3, r28, 0x0
    li      r4, 0x88d
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    mr      r3, r28
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x8024cac0

branch_0x8024c880:
    cmplwi  r3, 0x0
    beq-    branch_0x8024c910
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x8024c89c
    li      r0, 0x1
    b       branch_0x8024c8a0

branch_0x8024c89c:
    li      r0, 0x0
branch_0x8024c8a0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024c910
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r28)
    lha     r0, 0x96(r28)
    sth     r0, 0x9a(r28)
    lwz     r0, 0x7c(r28)
    cmplwi  r0, 0x887
    bne-    branch_0x8024c8e4
    lha     r3, 0x9a(r28)
    subi    r0, r3, 0x8000
    sth     r0, 0x9a(r28)
branch_0x8024c8e4:
    lha     r5, 0x27f8(r28)
    addi    r3, r28, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lis     r4, 0x3000
    addi    r3, r28, 0x0
    addi    r4, r4, 0x36c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024cac4

branch_0x8024c910:
    lfs     f1, 0xb0(r28)
    lfs     f0, -0x1080(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024ca60
    lwz     r0, 0x7c(r28)
    cmplwi  r0, 0x88d
    beq-    branch_0x8024ca60
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      playerRefrection__6TMarioFi
    lha     r3, 0x96(r28)
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r28)
    lwz     r0, 0xd8(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8024c9e8
    addi    r3, r28, 0x0
    li      r4, 0x8a7
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    mr      r3, r28
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024cac0
    lha     r5, 0x27f8(r28)
    addi    r3, r28, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lwz     r3, -0x7108(r13)
    li      r4, 0x1
    lfs     f1, -0x1088(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r4, 0xd8(r28)
    lwz     r3, -0x6044(r13)
    lbz     r4, 0x6(r4)
    lfs     f1, 0xb0(r28)
    bl      getWallSound__6MSoundFUlf
    lwz     r0, -0x6044(r13)
    addi    r27, r3, 0x0
    addi    r4, r27, 0x0
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024cac0
    addi    r3, r27, 0x0
    addi    r4, r28, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8024cac0

branch_0x8024c9e8:
    lfs     f1, 0xa8(r28)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024c9fc
    stfs    f0, 0xa8(r28)
branch_0x8024c9fc:
    lfs     f1, 0xb0(r28)
    lfs     f0, -0x1024(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8024ca2c
    lis     r4, 0x2
    addi    r3, r28, 0x0
    addi    r4, r4, 0x8b0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024cac0

branch_0x8024ca2c:
    lfs     f0, -0x1020(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024ca44
    mr      r3, r28
    lfs     f1, -0x101c(rtoc)
    bl      setPlayerVelocity__6TMarioFf
branch_0x8024ca44:
    lis     r4, 0x2
    addi    r3, r28, 0x0
    addi    r4, r4, 0x8b6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024cac4

branch_0x8024ca60:
    mr      r3, r28
    lfs     f1, -0x1090(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    b       branch_0x8024cac0

branch_0x8024ca70:
    lfs     f1, -0x1088(rtoc)
    addi    r3, r28, 0x0
    li      r4, 0x33
    bl      setAnimation__6TMarioFif
    lis     r4, 0x3800
    addi    r3, r28, 0x0
    addi    r4, r4, 0x34b
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8024cac0

branch_0x8024ca98:
    lha     r5, 0x27f8(r28)
    addi    r3, r28, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lis     r4, 0x820
    addi    r3, r28, 0x0
    addi    r4, r4, 0x348
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8024cac0:
    mr      r3, r31
branch_0x8024cac4:
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl doJumping__6TMarioFv
doJumping__6TMarioFv: # 0x8024cad8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    lfs     f1, 0xb0(r3)
    lfs     f0, 0xb54(r3)
    lfs     f2, -0x1090(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r3)
    lwz     r0, 0x74(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8024cc54
    lwz     r0, 0x7c(r31)
    lha     r4, 0x96(r31)
    lha     r3, 0x90(r31)
    cmplwi  r0, 0x88b
    lfs     f30, 0x8c(r31)
    subf    r30, r4, r3
    bne-    branch_0x8024cb70
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024cb48
    li      r0, 0x1
    b       branch_0x8024cb4c

branch_0x8024cb48:
    li      r0, 0x0
branch_0x8024cb4c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024cb70
    lwz     r3, 0x3e4(r31)
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8024cb70
    lfs     f1, -0x1018(rtoc)
    lfs     f0, 0x8c(r31)
    fmuls   f30, f1, f0
branch_0x8024cb70:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfe00
    cmplwi  r0, 0x886
    bne-    branch_0x8024cba8
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024cba8
    extsh   r0, r30
    cmpwi   r0, -0x4000
    blt-    branch_0x8024cba4
    cmpwi   r0, 0x4000
    ble-    branch_0x8024cba8
branch_0x8024cba4:
    lfs     f30, -0x1090(rtoc)
branch_0x8024cba8:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024cc00
    lwz     r3, 0x3f0(r31)
    lbz     r0, 0xb8(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8024cbd0
    li      r0, 0x1
    b       branch_0x8024cbd4

branch_0x8024cbd0:
    li      r0, 0x0
branch_0x8024cbd4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024cc00
    extsh   r0, r30
    cmpwi   r0, -0x4000
    ble-    branch_0x8024cbf8
    cmpwi   r0, 0x4000
    bge-    branch_0x8024cbf8
    lfs     f1, 0x226c(r31)
    b       branch_0x8024cc08

branch_0x8024cbf8:
    lfs     f1, 0x2280(r31)
    b       branch_0x8024cc08

branch_0x8024cc00:
    mr      r3, r31
    bl      getJumpAccelControl__6TMarioCFv
branch_0x8024cc08:
    lwz     r0, -0x5eac(r13)
    clrlwi  r5, r30, 16
    lwz     r4, -0x5ea4(r13)
    addi    r3, r31, 0x0
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfs     f0, 0xb0(r31)
    lfsx    f2, r4, r0
    fmuls   f2, f30, f2
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xb0(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f31, r4, r0
    bl      getJumpSlideControl__6TMarioCFv
    fmuls   f0, f30, f31
    fmuls   f2, f0, f1
branch_0x8024cc54:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1048(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024cc70
    lfs     f0, -0x103c(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r31)
branch_0x8024cc70:
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x1084(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024cc8c
    lfs     f0, -0x1058(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r31)
branch_0x8024cc8c:
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r31)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
    lha     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    addi    r3, r3, 0x4000
    lwz     r4, -0x5ea8(r13)
    clrlwi  r3, r3, 16
    lfs     f0, 0xb4(r31)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r31)
    lha     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    addi    r3, r3, 0x4000
    lwz     r4, -0x5ea4(r13)
    clrlwi  r3, r3, 16
    lfs     f0, 0xb8(r31)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb8(r31)
    lfs     f0, 0xb4(r31)
    stfs    f0, 0xa4(r31)
    lfs     f0, 0xb8(r31)
    stfs    f0, 0xac(r31)
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x1090(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024cd70
    lfs     f0, 0x758(r31)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0x744(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x8024cd90

branch_0x8024cd70:
    lfs     f0, 0x76c(r31)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0x780(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x8024cd90:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x90
    blr


.globl startJumpWall__6TMarioFv
startJumpWall__6TMarioFv: # 0x8024cdb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r3, 0xd8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8024ce0c
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    addis   r31, r3, 0x1
    subi    r31, r31, 0x8000
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    li      r4, 0x18
    bl      emitParticle__6TMarioFis
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    li      r4, 0x19
    bl      emitParticle__6TMarioFis
branch_0x8024ce0c:
    lfs     f0, -0x1030(rtoc)
    stfs    f0, 0xa8(r30)
    lha     r3, 0x96(r30)
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r30)
    lfs     f1, -0x1060(rtoc)
    lfs     f0, 0x14(r30)
    lfs     f2, 0xa8(r30)
    fadds   f1, f1, f0
    lfs     f0, 0xe8(r30)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8024ce50
    lfs     f0, -0x1088(rtoc)
    stfs    f0, 0xa8(r30)
branch_0x8024ce50:
    lis     r4, 0x200
    addi    r3, r30, 0x0
    addi    r4, r4, 0x886
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __sinit_MarioJump_cpp
__sinit_MarioJump_cpp: # 0x8024ce80
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4900
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8024cec8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8024cec8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8024cef8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8024cef8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8024cf28
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8024cf28:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8024cf58
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8024cf58:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8024cf88
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8024cf88:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8024cfb8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8024cfb8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8024cfe8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8024cfe8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8024d018
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8024d018:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8024d048
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8024d048:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8024d078
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8024d078:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8024d0a8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8024d0a8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8024d0d8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8024d0d8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8024d108
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8024d108:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8024d138
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8024d138:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8024d168
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8024d168:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
