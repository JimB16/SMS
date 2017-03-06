
.globl checkCollision__6TMarioFv
checkCollision__6TMarioFv: # 0x80280fe8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x238(sp)
    stfd    f31, 0x230(sp)
    stfd    f30, 0x228(sp)
    stfd    f29, 0x220(sp)
    stfd    f28, 0x218(sp)
    stmw    r14, 0x1d0(sp)
    mr      r31, r3
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80281020
    li      r0, 0x1
    b       branch_0x80281024

branch_0x80281020:
    li      r0, 0x0
branch_0x80281024:
    clrlwi. r0, r0, 24
    bne-    branch_0x80282330
    lwz     r3, 0x3f0(r31)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x6
    beq-    branch_0x80281044
    cmplwi  r0, 0x2
    bne-    branch_0x8028104c
branch_0x80281044:
    li      r0, 0x1
    b       branch_0x80281050

branch_0x8028104c:
    li      r0, 0x0
branch_0x80281050:
    cmpwi   r0, 0x1
    bne-    branch_0x80281288
    lfs     f2, 0x14(r31)
    addi    r4, r3, 0x20
    lfs     f1, 0x24(r3)
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x80281288
    lfs     f0, -0x730(rtoc)
    fadds   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x80281288
    lfs     f1, 0x8(r4)
    lfs     f0, 0x18(r31)
    lfs     f2, 0x0(r4)
    fsubs   f3, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f0, -0x72c(rtoc)
    fsubs   f2, f2, f1
    fmuls   f1, f3, f3
    fmadds  f4, f2, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x802810f8
    frsqrte f1, f4
    lfd     f3, -0x728(rtoc)
    lfd     f2, -0x720(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0xa8(sp)
    lfs     f4, 0xa8(sp)
branch_0x802810f8:
    lwz     r3, 0x7c(r31)
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x8028110c
    li      r0, 0x1
    b       branch_0x80281110

branch_0x8028110c:
    li      r0, 0x0
branch_0x80281110:
    clrlwi. r0, r0, 24
    beq-    branch_0x80281278
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8028112c
    li      r0, 0x1
    b       branch_0x80281130

branch_0x8028112c:
    li      r0, 0x0
branch_0x80281130:
    clrlwi. r0, r0, 24
    bne-    branch_0x80281278
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x72c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80281278
    lfs     f1, 0x4(r4)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80281278
    cmplwi  r3, 0x89c
    beq-    branch_0x80281278
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x8b8
    beq-    branch_0x80281278
    cmplwi  r3, 0x883
    beq-    branch_0x80281278
    lfs     f0, -0x718(rtoc)
    fcmpo   cr0, f4, f0
    bge-    branch_0x80281278
    lwz     r4, 0x3f0(r31)
    lwz     r3, 0x20(r4)
    lwz     r0, 0x24(r4)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x28(r4)
    stw     r0, 0x18(r31)
    lwz     r3, 0x3f0(r31)
    lha     r0, 0x70(r3)
    sth     r0, 0x96(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802811c4
    li      r0, 0x1
    b       branch_0x802811c8

branch_0x802811c4:
    li      r0, 0x0
branch_0x802811c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80281218
    lwz     r3, 0x3e4(r31)
    lbz     r0, 0x1c85(r3)
    stw     r0, 0x3e8(r31)
    lwz     r24, 0x3e4(r31)
    mr      r3, r24
    bl      getCurrentNozzle__9TWaterGunCFv
    addi    r3, r3, 0xbc
    lwz     r4, 0x1c80(r24)
    lwz     r3, 0x10(r3)
    lis     r0, 0x4330
    lfd     f1, -0x700(rtoc)
    divw    r3, r4, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x1cc(sp)
    stw     r0, 0x1c8(sp)
    lfd     f0, 0x1c8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x3ec(r31)
branch_0x80281218:
    lwz     r3, 0x3f0(r31)
    bl      ride__6TYoshiFv
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0x118(r31)
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80281240
    li      r0, 0x1
    b       branch_0x80281244

branch_0x80281240:
    li      r0, 0x0
branch_0x80281244:
    clrlwi. r0, r0, 24
    beq-    branch_0x8028125c
    lwz     r3, 0x3e4(r31)
    li      r4, 0x3
    li      r5, 0x1
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
branch_0x8028125c:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, 0x201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80282330

branch_0x80281278:
    lfs     f1, -0x714(rtoc)
    mr      r3, r31
    lfs     f2, -0x72c(rtoc)
    bl      keepDistance__6TMarioFRCQ29JGeometry8TVec3_f_ff
branch_0x80281288:
    lis     r4, 0x1000
    lfs     f30, -0x72c(rtoc)
    lis     r5, 0x800
    lfs     f31, -0x710(rtoc)
    addi    r0, r4, 0x1e
    lfs     f28, -0x70c(rtoc)
    stw     r0, 0xec(sp)
    addi    r0, r5, 0x14
    lis     r3, 0x4000
    lfs     f29, -0x708(rtoc)
    stw     r0, 0xbc(sp)
    addi    r0, r4, 0x19
    stw     r0, 0xf0(sp)
    addi    r0, r3, 0x396
    lis     r6, 0x2000
    stw     r0, 0x1c0(sp)
    addi    r0, r3, 0x390
    lis     r7, 0x8000
    stw     r0, 0x1bc(sp)
    addi    r0, r3, 0x393
    addi    r14, r4, 0x1
    stw     r0, 0x1b4(sp)
    addi    r0, r3, 0x2bc
    addi    r16, r5, 0x11
    stw     r0, 0x1b8(sp)
    addi    r0, r3, 0x246
    addi    r15, r5, 0xf
    stw     r0, 0x1b0(sp)
    addi    r0, r3, 0x264
    addi    r19, r5, 0xd
    stw     r0, 0x1a4(sp)
    addi    r0, r3, 0x244
    addi    r18, r5, 0x8
    stw     r0, 0x1a8(sp)
    addi    r0, r3, 0x233
    addi    r17, r5, 0xb
    stw     r0, 0x1ac(sp)
    addi    r0, r3, 0x228
    addi    r20, r5, 0x1
    stw     r0, 0x1a0(sp)
    addi    r0, r3, 0x1a6
    addi    r24, r5, 0x6
    stw     r0, 0x198(sp)
    addi    r0, r3, 0x19a
    addi    r23, r5, 0x2
    stw     r0, 0x19c(sp)
    addi    r0, r3, 0x136
    addi    r21, r7, 0x1
    stw     r0, 0x194(sp)
    addi    r0, r3, 0x9e
    addi    r27, r6, 0xc
    stw     r0, 0x190(sp)
    addi    r0, r3, 0x139
    addi    r26, r4, 0xe
    stw     r0, 0x180(sp)
    addi    r0, r3, 0xdb
    addi    r25, r5, 0x12
    stw     r0, 0x184(sp)
    addi    r0, r3, 0xbb
    addi    r22, r5, 0x4
    stw     r0, 0x188(sp)
    addi    r0, r3, 0x64
    li      r28, 0x0
    stw     r0, 0x178(sp)
    addi    r0, r3, 0x5a
    li      r29, 0x0
    stw     r0, 0x174(sp)
    addi    r0, r3, 0x5d
    stw     r0, 0x16c(sp)
    addi    r0, r3, 0x46
    stw     r0, 0x168(sp)
    addi    r0, r3, 0x47
    stw     r0, 0x164(sp)
    addi    r0, r3, 0x49
    stw     r0, 0x154(sp)
    addi    r0, r3, 0x3c
    stw     r0, 0x158(sp)
    addi    r0, r3, 0x32
    stw     r0, 0x150(sp)
    addi    r0, r3, 0x2d
    stw     r0, 0x14c(sp)
    addi    r0, r3, 0x30
    stw     r0, 0x144(sp)
    addi    r0, r3, 0x26
    stw     r0, 0x148(sp)
    addi    r0, r3, 0x17
    stw     r0, 0x140(sp)
    addi    r0, r6, 0x68
    stw     r0, 0x13c(sp)
    addi    r0, r3, 0x1b
    stw     r0, 0x130(sp)
    addi    r0, r3, 0x10
    stw     r0, 0x134(sp)
    addi    r0, r3, 0x2
    stw     r0, 0x138(sp)
    addi    r0, r3, 0x7e
    stw     r0, 0x128(sp)
    addi    r0, r6, 0xa
    stw     r0, 0x124(sp)
    addi    r0, r6, 0x8
    stw     r0, 0x118(sp)
    addi    r0, r4, 0x37
    stw     r0, 0x11c(sp)
    addi    r0, r4, 0x31
    stw     r0, 0x114(sp)
    addi    r0, r4, 0x34
    stw     r0, 0x104(sp)
    addi    r0, r4, 0x2e
    stw     r0, 0x108(sp)
    addi    r0, r4, 0x2c
    stw     r0, 0x10c(sp)
    addi    r0, r4, 0x28
    stw     r0, 0x100(sp)
    addi    r0, r4, 0x25
    stw     r0, 0xf8(sp)
    addi    r0, r4, 0x2a
    stw     r0, 0xd8(sp)
    addi    r0, r4, 0x21
    stw     r0, 0xdc(sp)
    addi    r0, r4, 0x17
    stw     r0, 0xe0(sp)
    addi    r0, r4, 0x15
    stw     r0, 0xe4(sp)
    addi    r0, r4, 0x7
    stw     r0, 0xcc(sp)
    addi    r0, r5, 0x83
    stw     r0, 0xc4(sp)
    addi    r0, r5, 0x24
    stw     r0, 0xb4(sp)
    addi    r0, r5, 0x16
    stw     r0, 0xb8(sp)
    addi    r0, r5, 0x22
    stw     r0, 0xc0(sp)
    addi    r0, r4, 0x9
    stw     r0, 0xc8(sp)
    addi    r0, r4, 0x5
    stw     r0, 0xd0(sp)
    addi    r0, r4, 0xb
    stw     r0, 0xd4(sp)
    addi    r0, r4, 0x14
    stw     r0, 0xe8(sp)
    addi    r0, r4, 0x26
    stw     r0, 0xf4(sp)
    addi    r0, r4, 0x23
    stw     r0, 0xfc(sp)
    addi    r0, r4, 0x32
    stw     r0, 0x110(sp)
    addi    r0, r4, 0x36
    stw     r0, 0x120(sp)
    addi    r0, r3, 0x33
    stw     r0, 0x12c(sp)
    addi    r0, r3, 0x38
    stw     r0, 0x15c(sp)
    addi    r0, r3, 0x3b
    stw     r0, 0x160(sp)
    addi    r0, r3, 0x5b
    stw     r0, 0x170(sp)
    addi    r0, r3, 0x22b
    stw     r0, 0x17c(sp)
    addi    r0, r3, 0xa1
    stw     r0, 0x18c(sp)
    b       branch_0x80282324

branch_0x80281510:
    lwz     r3, 0x44(r31)
    lwzx    r30, r3, r29
    lwz     r0, 0x4c(r30)
    rlwinm. r3, r0, 0, 5, 5
    beq-    branch_0x8028152c
    li      r3, 0x1
    b       branch_0x80281530

branch_0x8028152c:
    li      r3, 0x0
branch_0x80281530:
    clrlwi. r3, r3, 24
    beq-    branch_0x8028162c
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x8028154c
    li      r0, 0x1
    b       branch_0x80281550

branch_0x8028154c:
    li      r0, 0x0
branch_0x80281550:
    clrlwi. r0, r0, 24
    bne-    branch_0x802815e0
    lwz     r3, 0x7c(r31)
    rlwinm. r0, r3, 0, 18, 18
    beq-    branch_0x8028156c
    li      r0, 0x1
    b       branch_0x80281570

branch_0x8028156c:
    li      r0, 0x0
branch_0x80281570:
    clrlwi. r0, r0, 24
    bne-    branch_0x802815e0
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x80281588
    li      r0, 0x1
    b       branch_0x8028158c

branch_0x80281588:
    li      r0, 0x0
branch_0x8028158c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802815e0
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    beq-    branch_0x802815e0
    lfs     f0, 0xa8(r31)
    fcmpo   cr0, f0, f30
    bge-    branch_0x802815e0
    lfs     f1, 0x14(r30)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802815e0
    mr      r3, r30
    bl      isBeTrampledNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802815e0
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      trampleExec__6TMarioFP9THitActor
    cmpwi   r3, 0x1
    beq-    branch_0x8028231c
branch_0x802815e0:
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x8028231c
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      canTake__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x8028231c
    stw     r30, 0x384(r31)
    addi    r3, r31, 0x0
    li      r4, 0x383
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8028231c

branch_0x8028162c:
    cmpw    r0, r27
    beq-    branch_0x80281b8c
    bge-    branch_0x802818a4
    cmpw    r0, r26
    beq-    branch_0x80281ef0
    bge-    branch_0x8028175c
    cmpw    r0, r25
    beq-    branch_0x8028231c
    bge-    branch_0x802816c8
    cmpw    r0, r24
    beq-    branch_0x80281f6c
    bge-    branch_0x80281690
    cmpw    r0, r23
    beq-    branch_0x80281f58
    bge-    branch_0x80281680
    cmpw    r0, r21
    beq-    branch_0x80281b14
    blt-    branch_0x8028231c
    cmpw    r0, r20
    bge-    branch_0x80281b9c
    b       branch_0x8028231c

branch_0x80281680:
    cmpw    r0, r22
    beq-    branch_0x8028231c
    bge-    branch_0x80281f58
    b       branch_0x80281b9c

branch_0x80281690:
    cmpw    r0, r19
    beq-    branch_0x80281f6c
    bge-    branch_0x802816b4
    cmpw    r0, r18
    beq-    branch_0x80281f6c
    blt-    branch_0x80281f58
    cmpw    r0, r17
    bge-    branch_0x80281f44
    b       branch_0x8028231c

branch_0x802816b4:
    cmpw    r0, r16
    bge-    branch_0x80281bac
    cmpw    r0, r15
    bge-    branch_0x80281f44
    b       branch_0x8028231c

branch_0x802816c8:
    cmpw    r0, r14
    bge-    branch_0x8028171c
    lwz     r3, 0xb4(sp)
    cmpw    r0, r3
    beq-    branch_0x80281b9c
    bge-    branch_0x8028170c
    lwz     r3, 0xb8(sp)
    cmpw    r0, r3
    bge-    branch_0x802816fc
    lwz     r3, 0xbc(sp)
    cmpw    r0, r3
    bge-    branch_0x80281f44
    b       branch_0x80281b9c

branch_0x802816fc:
    lwz     r3, 0xc0(sp)
    cmpw    r0, r3
    bge-    branch_0x80281edc
    b       branch_0x8028231c

branch_0x8028170c:
    lwz     r3, 0xc4(sp)
    cmpw    r0, r3
    beq-    branch_0x80281f6c
    b       branch_0x8028231c

branch_0x8028171c:
    lwz     r3, 0xc8(sp)
    cmpw    r0, r3
    beq-    branch_0x8028231c
    bge-    branch_0x8028174c
    lwz     r3, 0xcc(sp)
    cmpw    r0, r3
    beq-    branch_0x80281ef0
    bge-    branch_0x80281df8
    lwz     r3, 0xd0(sp)
    cmpw    r0, r3
    bge-    branch_0x8028231c
    b       branch_0x80281b9c

branch_0x8028174c:
    lwz     r3, 0xd4(sp)
    cmpw    r0, r3
    beq-    branch_0x8028231c
    b       branch_0x80281b9c

branch_0x8028175c:
    lwz     r3, 0xd8(sp)
    cmpw    r0, r3
    beq-    branch_0x80281ef0
    bge-    branch_0x8028180c
    lwz     r3, 0xdc(sp)
    cmpw    r0, r3
    beq-    branch_0x80281c40
    bge-    branch_0x802817cc
    lwz     r3, 0xe0(sp)
    cmpw    r0, r3
    beq-    branch_0x80281b9c
    bge-    branch_0x802817ac
    lwz     r3, 0xe4(sp)
    cmpw    r0, r3
    beq-    branch_0x80281ef0
    bge-    branch_0x80281f34
    lwz     r3, 0xe8(sp)
    cmpw    r0, r3
    bge-    branch_0x8028231c
    b       branch_0x80281b9c

branch_0x802817ac:
    lwz     r3, 0xec(sp)
    cmpw    r0, r3
    beq-    branch_0x80281d50
    bge-    branch_0x80281b9c
    lwz     r3, 0xf0(sp)
    cmpw    r0, r3
    bge-    branch_0x80281b9c
    b       branch_0x80281d50

branch_0x802817cc:
    lwz     r3, 0xf4(sp)
    cmpw    r0, r3
    beq-    branch_0x8028231c
    bge-    branch_0x802817f8
    lwz     r3, 0xf8(sp)
    cmpw    r0, r3
    bge-    branch_0x80281b9c
    lwz     r3, 0xfc(sp)
    cmpw    r0, r3
    bge-    branch_0x8028231c
    b       branch_0x80281f58

branch_0x802817f8:
    lwz     r3, 0x100(sp)
    cmpw    r0, r3
    beq-    branch_0x80281f6c
    bge-    branch_0x8028231c
    b       branch_0x80281f44

branch_0x8028180c:
    lwz     r3, 0x104(sp)
    cmpw    r0, r3
    beq-    branch_0x80281c94
    bge-    branch_0x80281860
    lwz     r3, 0x108(sp)
    cmpw    r0, r3
    beq-    branch_0x80281b9c
    bge-    branch_0x80281840
    lwz     r3, 0x10c(sp)
    cmpw    r0, r3
    beq-    branch_0x80281c00
    bge-    branch_0x80281ef0
    b       branch_0x8028231c

branch_0x80281840:
    lwz     r3, 0x110(sp)
    cmpw    r0, r3
    beq-    branch_0x8028231c
    bge-    branch_0x80281edc
    lwz     r3, 0x114(sp)
    cmpw    r0, r3
    bge-    branch_0x80281b9c
    b       branch_0x8028231c

branch_0x80281860:
    lwz     r3, 0x118(sp)
    cmpw    r0, r3
    beq-    branch_0x80281b8c
    bge-    branch_0x80281890
    lwz     r3, 0x11c(sp)
    cmpw    r0, r3
    beq-    branch_0x80281b9c
    bge-    branch_0x8028231c
    lwz     r3, 0x120(sp)
    cmpw    r0, r3
    bge-    branch_0x8028231c
    b       branch_0x80281f44

branch_0x80281890:
    lwz     r3, 0x124(sp)
    cmpw    r0, r3
    beq-    branch_0x80281b8c
    bge-    branch_0x8028231c
    b       branch_0x802821b0

branch_0x802818a4:
    lwz     r3, 0x128(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x802819f4
    lwz     r3, 0x12c(sp)
    cmpw    r0, r3
    beq-    branch_0x8028231c
    bge-    branch_0x80281954
    lwz     r3, 0x130(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x80281914
    lwz     r3, 0x134(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x80281904
    lwz     r3, 0x138(sp)
    cmpw    r0, r3
    beq-    branch_0x80282070
    bge-    branch_0x8028231c
    lwz     r3, 0x13c(sp)
    cmpw    r0, r3
    beq-    branch_0x80281ff4
    b       branch_0x8028231c

branch_0x80281904:
    lwz     r3, 0x140(sp)
    cmpw    r0, r3
    beq-    branch_0x802821d4
    b       branch_0x8028231c

branch_0x80281914:
    lwz     r3, 0x144(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x80281944
    lwz     r3, 0x148(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    blt-    branch_0x8028231c
    lwz     r3, 0x14c(sp)
    cmpw    r0, r3
    bge-    branch_0x802821c4
    b       branch_0x8028231c

branch_0x80281944:
    lwz     r3, 0x150(sp)
    cmpw    r0, r3
    bge-    branch_0x802821c4
    b       branch_0x8028231c

branch_0x80281954:
    lwz     r3, 0x154(sp)
    cmpw    r0, r3
    beq-    branch_0x802821c4
    bge-    branch_0x802819b4
    lwz     r3, 0x158(sp)
    cmpw    r0, r3
    beq-    branch_0x802821c4
    bge-    branch_0x80281994
    lwz     r3, 0x15c(sp)
    cmpw    r0, r3
    beq-    branch_0x8028231c
    blt-    branch_0x802821c4
    lwz     r3, 0x160(sp)
    cmpw    r0, r3
    bge-    branch_0x8028231c
    b       branch_0x802821c4

branch_0x80281994:
    lwz     r3, 0x164(sp)
    cmpw    r0, r3
    beq-    branch_0x802821c4
    bge-    branch_0x8028231c
    lwz     r3, 0x168(sp)
    cmpw    r0, r3
    bge-    branch_0x802821b0
    b       branch_0x8028231c

branch_0x802819b4:
    lwz     r3, 0x16c(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x802819e4
    lwz     r3, 0x170(sp)
    cmpw    r0, r3
    beq-    branch_0x8028231c
    bge-    branch_0x802820d8
    lwz     r3, 0x174(sp)
    cmpw    r0, r3
    bge-    branch_0x802820d8
    b       branch_0x8028231c

branch_0x802819e4:
    lwz     r3, 0x178(sp)
    cmpw    r0, r3
    beq-    branch_0x80282018
    b       branch_0x8028231c

branch_0x802819f4:
    lwz     r3, 0x17c(sp)
    cmpw    r0, r3
    beq-    branch_0x8028231c
    bge-    branch_0x80281a90
    lwz     r3, 0x180(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x80281a60
    lwz     r3, 0x184(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x80281a50
    lwz     r3, 0x188(sp)
    cmpw    r0, r3
    beq-    branch_0x802821c4
    bge-    branch_0x8028231c
    lwz     r3, 0x18c(sp)
    cmpw    r0, r3
    bge-    branch_0x8028231c
    lwz     r3, 0x190(sp)
    cmpw    r0, r3
    bge-    branch_0x802821b0
    b       branch_0x8028231c

branch_0x80281a50:
    lwz     r3, 0x194(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    b       branch_0x8028231c

branch_0x80281a60:
    lwz     r3, 0x198(sp)
    cmpw    r0, r3
    beq-    branch_0x80281edc
    bge-    branch_0x80281a80
    lwz     r3, 0x19c(sp)
    cmpw    r0, r3
    beq-    branch_0x80281b9c
    b       branch_0x8028231c

branch_0x80281a80:
    lwz     r3, 0x1a0(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    b       branch_0x8028231c

branch_0x80281a90:
    lwz     r3, 0x1a4(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x80281ad0
    lwz     r3, 0x1a8(sp)
    cmpw    r0, r3
    beq-    branch_0x802821c4
    bge-    branch_0x80281ac0
    lwz     r3, 0x1ac(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    b       branch_0x8028231c

branch_0x80281ac0:
    lwz     r3, 0x1b0(sp)
    cmpw    r0, r3
    beq-    branch_0x802821c4
    b       branch_0x8028231c

branch_0x80281ad0:
    lwz     r3, 0x1b4(sp)
    cmpw    r0, r3
    beq-    branch_0x80282260
    bge-    branch_0x80281b00
    lwz     r3, 0x1b8(sp)
    cmpw    r0, r3
    beq-    branch_0x802822b8
    blt-    branch_0x8028231c
    lwz     r3, 0x1bc(sp)
    cmpw    r0, r3
    bge-    branch_0x80282220
    b       branch_0x8028231c

branch_0x80281b00:
    lwz     r3, 0x1c0(sp)
    cmpw    r0, r3
    beq-    branch_0x802821b0
    bge-    branch_0x8028231c
    b       branch_0x80282220

branch_0x80281b14:
    lwz     r0, 0x6c(r31)
    cmplw   r0, r30
    beq-    branch_0x80281b3c
    lwz     r0, 0x68(r31)
    cmplw   r0, r30
    beq-    branch_0x80281b3c
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
branch_0x80281b3c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      canTake__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x80281b68
    stw     r30, 0x384(r31)
    addi    r3, r31, 0x0
    li      r4, 0x383
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80281b68:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    lwz     r4, 0x44(r31)
    mr      r3, r31
    lfs     f1, -0x72c(rtoc)
    lwzx    r4, r4, r29
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80281b8c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    b       branch_0x8028231c

branch_0x80281b9c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    b       branch_0x8028231c

branch_0x80281bac:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x8028231c
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    beq-    branch_0x80281bd0
    cmplwi  r0, 0x3
    bne-    branch_0x8028231c
branch_0x80281bd0:
    lfs     f1, 0x14(r30)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8028231c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8028231c

branch_0x80281c00:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80281c40
    lwz     r4, 0x44(r31)
    mr      r3, r31
    lfs     f1, -0x72c(rtoc)
    lwzx    r4, r4, r29
    bl      keepDistance__6TMarioFRC9THitActorf
branch_0x80281c40:
    lwz     r3, 0x7c(r31)
    lwz     r4, 0x44(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    lwzx    r3, r4, r29
    bne-    branch_0x80281c94
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x2
    beq-    branch_0x80281c6c
    cmplwi  r0, 0x3
    bne-    branch_0x80281c94
branch_0x80281c6c:
    lfs     f1, 0x14(r3)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80281c94
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80281c94:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xd000
    cmplwi  r0, 0x36a
    bne-    branch_0x80281cf0
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80281cf0
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f0, f28
    bge-    branch_0x80281cf0
    lwz     r3, 0x44(r31)
    addi    r4, r31, 0x0
    li      r5, 0xc
    lwzx    r3, r3, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80281cf0:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xffe0
    cmplwi  r0, 0x347
    bne-    branch_0x8028231c
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f28, f0
    cror    2, 0, 2
    bne-    branch_0x8028231c
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f0, f29
    bge-    branch_0x8028231c
    lwz     r3, 0x44(r31)
    addi    r4, r31, 0x0
    li      r5, 0xc
    lwzx    r3, r3, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8028231c

branch_0x80281d50:
    lbz     r0, 0x164(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80281dbc
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80281d70
    li      r0, 0x1
    b       branch_0x80281d74

branch_0x80281d70:
    li      r0, 0x0
branch_0x80281d74:
    clrlwi. r0, r0, 24
    bne-    branch_0x80281dbc
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      canTake__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x8028231c
    stw     r30, 0x384(r31)
    addi    r3, r31, 0x0
    li      r4, 0x383
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8028231c

branch_0x80281dbc:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028231c
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80281df8:
    lwz     r12, 0x0(r30)
    mr      r3, r30
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80281e2c
    lwz     r4, 0x44(r31)
    mr      r3, r31
    lfs     f1, -0x72c(rtoc)
    lwzx    r4, r4, r29
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80281e2c:
    lwz     r3, 0x44(r31)
    lwzx    r30, r3, r29
    lbz     r0, 0x164(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80281ea0
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80281e54
    li      r0, 0x1
    b       branch_0x80281e58

branch_0x80281e54:
    li      r0, 0x0
branch_0x80281e58:
    clrlwi. r0, r0, 24
    bne-    branch_0x80281ea0
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      canTake__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x8028231c
    stw     r30, 0x384(r31)
    addi    r3, r31, 0x0
    li      r4, 0x383
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8028231c

branch_0x80281ea0:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028231c
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80281edc:
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80281ef0:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028231c
    lwz     r4, 0x44(r31)
    mr      r3, r31
    lfs     f1, -0x72c(rtoc)
    lwzx    r4, r4, r29
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80281f34:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    b       branch_0x8028231c

branch_0x80281f44:
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80281f58:
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80281f6c:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x560
    beq-    branch_0x80281fe4
    cmplwi  r0, 0x894
    beq-    branch_0x80281fe4
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      canTake__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x80281fe4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80281fe4
    addi    r3, r31, 0x0
    li      r4, 0x560
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0x704(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xea
    bl      setAnimation__6TMarioFif
    stw     r30, 0x6c(r31)
    b       branch_0x8028231c

branch_0x80281fe4:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    b       branch_0x8028231c

branch_0x80281ff4:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    lwz     r4, 0x44(r31)
    mr      r3, r31
    lfs     f1, -0x72c(rtoc)
    lwzx    r4, r4, r29
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x80282018:
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x8028202c
    li      r0, 0x1
    b       branch_0x80282030

branch_0x8028202c:
    li      r0, 0x0
branch_0x80282030:
    clrlwi. r0, r0, 24
    beq-    branch_0x80282060
    lfs     f0, 0xa8(r31)
    fcmpo   cr0, f0, f30
    ble-    branch_0x80282060
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x2
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80282060:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    b       branch_0x8028231c

branch_0x80282070:
    lwz     r3, 0x7c(r31)
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x80282084
    li      r0, 0x1
    b       branch_0x80282088

branch_0x80282084:
    li      r0, 0x0
branch_0x80282088:
    clrlwi. r0, r0, 24
    beq-    branch_0x8028231c
    lfs     f0, 0xa8(r31)
    fcmpo   cr0, f0, f30
    bge-    branch_0x8028231c
    lfs     f1, 0x14(r30)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8028231c
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x8028231c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8028231c

branch_0x802820d8:
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      canTake__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x80282114
    stw     r30, 0x384(r31)
    addi    r3, r31, 0x0
    li      r4, 0x383
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80282114:
    lwz     r3, 0x7c(r31)
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x80282128
    li      r0, 0x1
    b       branch_0x8028212c

branch_0x80282128:
    li      r0, 0x0
branch_0x8028212c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8028231c
    lfs     f0, 0xa8(r31)
    fcmpo   cr0, f0, f30
    bge-    branch_0x8028231c
    lfs     f1, 0x14(r30)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8028231c
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x8028231c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8028218c
    li      r0, 0x1
    b       branch_0x80282190

branch_0x8028218c:
    li      r0, 0x0
branch_0x80282190:
    clrlwi. r0, r0, 24
    beq-    branch_0x8028231c
    lwz     r30, 0x3e4(r31)
    mr      r3, r30
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r0, 0xcc(r3)
    stw     r0, 0x1c80(r30)
    b       branch_0x8028231c

branch_0x802821b0:
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    b       branch_0x8028231c

branch_0x802821c4:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hangPole__6TMarioFP9THitActor
    b       branch_0x8028231c

branch_0x802821d4:
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    lbz     r0, 0x138(r30)
    extsb.  r0, r0
    bne-    branch_0x8028231c
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      canTake__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x8028231c
    stw     r30, 0x384(r31)
    addi    r3, r31, 0x0
    li      r4, 0x383
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8028231c

branch_0x80282220:
    lfs     f1, -0x72c(rtoc)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      keepDistance__6TMarioFRC9THitActorf
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      canTake__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x8028231c
    stw     r30, 0x384(r31)
    addi    r3, r31, 0x0
    li      r4, 0x383
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8028231c

branch_0x80282260:
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80282274
    li      r0, 0x1
    b       branch_0x80282278

branch_0x80282274:
    li      r0, 0x0
branch_0x80282278:
    clrlwi. r0, r0, 24
    beq-    branch_0x802822a8
    lfs     f0, 0xa8(r31)
    fcmpo   cr0, f0, f30
    ble-    branch_0x802822a8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x2
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x802822a8:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitNormal__6TMarioFP9THitActor
    b       branch_0x8028231c

branch_0x802822b8:
    lwz     r3, 0x7c(r31)
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x802822cc
    li      r0, 0x1
    b       branch_0x802822d0

branch_0x802822cc:
    li      r0, 0x0
branch_0x802822d0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8028231c
    lfs     f0, 0xa8(r31)
    fcmpo   cr0, f0, f30
    bge-    branch_0x8028231c
    lfs     f1, 0x14(r30)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8028231c
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x8028231c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8028231c:
    addi    r28, r28, 0x1
    addi    r29, r29, 0x4
branch_0x80282324:
    lhz     r0, 0x48(r31)
    cmpw    r28, r0
    blt+    branch_0x80281510
branch_0x80282330:
    lmw     r14, 0x1d0(sp)
    lwz     r0, 0x23c(sp)
    lfd     f31, 0x230(sp)
    lfd     f30, 0x228(sp)
    mtlr    r0
    lfd     f29, 0x220(sp)
    lfd     f28, 0x218(sp)
    addi    sp, sp, 0x238
    blr


.globl hangPole__6TMarioFP9THitActor
hangPole__6TMarioFP9THitActor: # 0x80282354
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r29, 0x4c(sp)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x80282388
    li      r0, 0x1
    b       branch_0x8028238c

branch_0x80282388:
    li      r0, 0x0
branch_0x8028238c:
    clrlwi. r0, r0, 24
    bne-    branch_0x802825cc
    lwz     r0, 0x6c(r30)
    li      r29, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x802823b8
    mr      r3, r30
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802823b8
    li      r29, 0x1
branch_0x802823b8:
    clrlwi. r0, r29, 24
    bne-    branch_0x802823c8
    li      r0, 0x0
    b       branch_0x80282410

branch_0x802823c8:
    lwz     r3, 0x7c(r30)
    clrlwi  r0, r3, 23
    cmplwi  r0, 0x80
    blt-    branch_0x802823e8
    cmplwi  r0, 0x9f
    bgt-    branch_0x802823e8
    li      r0, 0x1
    b       branch_0x80282410

branch_0x802823e8:
    rlwinm. r0, r3, 0, 10, 10
    beq-    branch_0x802823f8
    li      r0, 0x1
    b       branch_0x802823fc

branch_0x802823f8:
    li      r0, 0x0
branch_0x802823fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8028240c
    li      r0, 0x1
    b       branch_0x80282410

branch_0x8028240c:
    li      r0, 0x0
branch_0x80282410:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802825a4
    lfs     f1, 0x18(r31)
    lfs     f0, 0x18(r30)
    lfs     f2, 0x10(r31)
    fsubs   f6, f1, f0
    lfs     f1, 0x10(r30)
    lfs     f0, -0x72c(rtoc)
    fsubs   f5, f2, f1
    fmuls   f1, f6, f6
    fmadds  f4, f5, f5, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x80282494
    frsqrte f1, f4
    lfd     f3, -0x728(rtoc)
    lfd     f2, -0x720(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x34(sp)
    lfs     f4, 0x34(sp)
branch_0x80282494:
    lfs     f0, -0x72c(rtoc)
    fmr     f7, f4
    fcmpu   cr0, f0, f4
    bne-    branch_0x802824a8
    lfs     f7, -0x704(rtoc)
branch_0x802824a8:
    fdivs   f0, f6, f7
    lwz     r0, 0x80(r30)
    lhz     r4, 0x96(r30)
    li      r6, 0x1
    lwz     r3, -0x5eac(r13)
    sraw    r4, r4, r3
    fdivs   f2, f5, f7
    slwi    r5, r4, 2
    lwz     r3, -0x5ea4(r13)
    lwz     r4, -0x5ea8(r13)
    rlwinm. r0, r0, 0, 11, 11
    lfsx    f1, r3, r5
    lfs     f4, -0x6f8(rtoc)
    lfs     f3, 0x58(r31)
    fmuls   f0, f1, f0
    lfsx    f5, r4, r5
    fadds   f3, f4, f3
    lfs     f1, 0x1630(r30)
    fmadds  f2, f5, f2, f0
    fadds   f1, f3, f1
    beq-    branch_0x80282500
    li      r6, 0x0
branch_0x80282500:
    lfs     f0, 0x1644(r30)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80282510
    li      r6, 0x0
branch_0x80282510:
    fcmpo   cr0, f7, f1
    ble-    branch_0x8028251c
    li      r6, 0x0
branch_0x8028251c:
    lfs     f1, -0x730(rtoc)
    lfs     f0, 0x14(r31)
    lfs     f2, 0x14(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80282538
    li      r6, 0x0
branch_0x80282538:
    clrlwi  r0, r6, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802825a4
    mr      r3, r30
    bl      dropObject__6TMarioFv
    stw     r31, 0x68(r30)
    lis     r4, 0x1010
    addi    r3, r30, 0x0
    lfs     f0, -0x72c(rtoc)
    addi    r4, r4, 0x341
    li      r5, 0x0
    stfs    f0, 0xa8(r30)
    li      r6, 0x0
    stfs    f0, 0xb0(r30)
    bl      changePlayerStatus__6TMarioFUlUlb
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x5
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x14(r30)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x38c(r30)
    b       branch_0x802825cc

branch_0x802825a4:
    mr      r3, r31
    lfs     f1, 0x14(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xb0(r12)
    mtlr    r12
    blrl
    lfs     f2, -0x72c(rtoc)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    bl      keepDistance__6TMarioFRCQ29JGeometry8TVec3_f_ff
branch_0x802825cc:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl hitNormal__6TMarioFP9THitActor
hitNormal__6TMarioFP9THitActor: # 0x802825e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r3, 0x7c(r3)
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x80282618
    li      r0, 0x1
    b       branch_0x8028261c

branch_0x80282618:
    li      r0, 0x0
branch_0x8028261c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802826c4
    lfs     f1, 0xa8(r30)
    lfs     f0, -0x72c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802826c4
    lfs     f1, 0x14(r31)
    lfs     f0, 0x14(r30)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802826c4
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x802826b0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x802827e0
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x1
    bne-    branch_0x8028268c
    li      r0, 0x1
    b       branch_0x80282690

branch_0x8028268c:
    li      r0, 0x0
branch_0x80282690:
    clrlwi. r0, r0, 24
    beq-    branch_0x802827e0
    mr      r3, r30
    bl      changePlayerTriJump__6TMarioFv
    lwz     r0, 0x78(r30)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r30)
    b       branch_0x802827e0

branch_0x802826b0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      trampleExec__6TMarioFP9THitActor
    cmpwi   r3, 0x1
    beq-    branch_0x802827e0
branch_0x802826c4:
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802826d8
    li      r0, 0x1
    b       branch_0x802826dc

branch_0x802826d8:
    li      r0, 0x0
branch_0x802826dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80282714
    lfs     f1, 0x14(r31)
    lfs     f0, 0x14(r30)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80282714
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x3
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x802827e0

branch_0x80282714:
    lwz     r4, 0x7c(r30)
    addis   r3, r4, 0xff80
    cmplwi  r3, 0x456
    beq-    branch_0x80282738
    addis   r0, r4, 0xff7c
    cmplwi  r0, 0x45d
    beq-    branch_0x80282738
    cmplwi  r3, 0x88a
    bne-    branch_0x80282770
branch_0x80282738:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0xc
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80282770:
    lwz     r3, 0x3e4(r30)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x802827e0
    lbz     r0, 0x1c86(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802827e0
    lis     r3, 0x8040
    lwz     r0, 0x10(r30)
    subi    r3, r3, 0x3d4c
    lwz     r5, 0x14(r30)
    mr      r4, r3
    stw     r0, 0x10(r3)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r5, 0x14(r4)
    li      r5, 0xf
    lwz     r6, 0x18(r30)
    stw     r6, 0x18(r4)
    lfs     f1, 0x14(r4)
    lfs     f0, -0x714(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r4)
    stw     r0, 0x68(r4)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x802827e0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __sinit_MarioCheckCol_cpp
__sinit_MarioCheckCol_cpp: # 0x802827f8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x3c00
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80282840
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80282840:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80282870
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80282870:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802828a0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x802828a0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802828d0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802828d0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80282900
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80282900:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80282930
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80282930:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80282960
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80282960:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80282990
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80282990:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802829c0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802829c0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802829f0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802829f0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80282a20
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80282a20:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80282a50
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80282a50:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80282a80
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80282a80:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80282ab0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80282ab0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80282ae0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80282ae0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
