
.globl receiveMessage__6TMarioFP9THitActorUl
receiveMessage__6TMarioFP9THitActorUl: # 0x80282af4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x220(sp)
    stw     r31, 0x21c(sp)
    mr      r31, r3
    stw     r30, 0x218(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x214(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80282b2c
    li      r0, 0x1
    b       branch_0x80282b30

branch_0x80282b2c:
    li      r0, 0x0
branch_0x80282b30:
    clrlwi. r0, r0, 24
    beq-    branch_0x80282b40
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x80282b40:
    lwz     r3, 0x4c(r29)
    rlwinm. r0, r3, 0, 2, 2
    beq-    branch_0x80282b54
    li      r0, 0x1
    b       branch_0x80282b58

branch_0x80282b54:
    li      r0, 0x0
branch_0x80282b58:
    clrlwi. r0, r0, 24
    beq-    branch_0x80282c30
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    li      r4, 0x1
    bne-    branch_0x80282b74
    li      r4, 0x0
branch_0x80282b74:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xf
    bne-    branch_0x80282b84
    li      r4, 0x0
branch_0x80282b84:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x80282b94
    li      r4, 0x0
branch_0x80282b94:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x11
    bne-    branch_0x80282ba4
    li      r4, 0x0
branch_0x80282ba4:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x13
    bne-    branch_0x80282bb4
    li      r4, 0x0
branch_0x80282bb4:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x1f
    bne-    branch_0x80282bc4
    li      r4, 0x0
branch_0x80282bc4:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x26
    bne-    branch_0x80282bd4
    li      r4, 0x0
branch_0x80282bd4:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x22
    bne-    branch_0x80282be4
    li      r4, 0x0
branch_0x80282be4:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x2a
    bne-    branch_0x80282bf4
    li      r4, 0x0
branch_0x80282bf4:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80282c30
    lwz     r3, -0x6044(r13)
    li      r4, 0x180c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80282c30
    addi    r4, r31, 0x10
    li      r3, 0x180c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80282c30:
    cmplwi  r30, 0x7
    bne-    branch_0x80282d98
    lwz     r3, 0x4c(r29)
    clrrwi. r0, r3, 31
    beq-    branch_0x80282c4c
    li      r0, 0x1
    b       branch_0x80282c50

branch_0x80282c4c:
    li      r0, 0x0
branch_0x80282c50:
    clrlwi. r0, r0, 24
    bne-    branch_0x80282cac
    rlwinm. r0, r3, 0, 5, 5
    beq-    branch_0x80282c68
    li      r0, 0x1
    b       branch_0x80282c6c

branch_0x80282c68:
    li      r0, 0x0
branch_0x80282c6c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80282cac
    rlwinm. r0, r3, 0, 3, 3
    beq-    branch_0x80282c84
    li      r0, 0x1
    b       branch_0x80282c88

branch_0x80282c84:
    li      r0, 0x0
branch_0x80282c88:
    clrlwi. r0, r0, 24
    bne-    branch_0x80282cac
    rlwinm. r0, r3, 0, 4, 4
    beq-    branch_0x80282ca0
    li      r0, 0x1
    b       branch_0x80282ca4

branch_0x80282ca0:
    li      r0, 0x0
branch_0x80282ca4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80282cdc
branch_0x80282cac:
    lwz     r3, -0x6044(r13)
    li      r4, 0x193d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80282cdc
    addi    r4, r31, 0x10
    addi    r6, r31, 0x4e4
    li      r3, 0x193d
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80282cdc:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x15
    bne-    branch_0x80282cf8
    addi    r3, r31, 0x0
    li      r4, 0x78cf
    bl      startVoice__6TMarioFUl
branch_0x80282cf8:
    lwz     r0, 0x4c(r29)
    rlwinm. r0, r0, 0, 1, 1
    beq-    branch_0x80282d0c
    li      r0, 0x1
    b       branch_0x80282d10

branch_0x80282d0c:
    li      r0, 0x0
branch_0x80282d10:
    clrlwi. r0, r0, 24
    beq-    branch_0x80282d38
    lwz     r3, -0x6044(r13)
    li      r4, 0x0
    bl      getMarioVoiceID__6MSoundFUc
    cmplwi  r3, 0x78d3
    beq-    branch_0x80282d38
    addi    r3, r31, 0x0
    li      r4, 0x78d3
    bl      startVoice__6TMarioFUl
branch_0x80282d38:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80282d78
    lwz     r3, -0x6044(r13)
    li      r4, 0x791c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80282d78
    addi    r4, r31, 0x10
    li      r3, 0x791c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80282d78:
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b8
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80282d98:
    lwz     r5, 0x4c(r29)
    rlwinm. r0, r5, 0, 2, 2
    beq-    branch_0x80282dac
    li      r0, 0x1
    b       branch_0x80282db0

branch_0x80282dac:
    li      r0, 0x0
branch_0x80282db0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80283570
    addis   r4, r5, 0xe000
    subi    r4, r4, 0x1
    cmplwi  r4, 0x3b
    bgt-    branch_0x80283570
    lis     r3, 0x803e
    subi    r3, r3, 0x14a0
    slwi    r4, r4, 2
    lwzx    r0, r3, r4
    mtctr   r0
    bctr       
    cmplwi  r30, 0xe
    bne-    branch_0x80283570
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80282dfc
    li      r0, 0x1
    b       branch_0x80282e00

branch_0x80282dfc:
    li      r0, 0x0
branch_0x80282e00:
    clrlwi. r0, r0, 24
    beq-    branch_0x80282e4c
    lwz     r3, 0x3e4(r31)
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r29, 0x3e4(r31)
    lwz     r0, 0xcc(r3)
    lwz     r4, 0x1c80(r29)
    addi    r3, r29, 0x0
    srawi   r0, r0, 1
    addze   r0, r0
    add     r0, r4, r0
    stw     r0, 0x1c80(r29)
    bl      getCurrentNozzle__9TWaterGunCFv
    addi    r3, r3, 0xbc
    lwz     r0, 0x1c80(r29)
    lwz     r3, 0x10(r3)
    cmpw    r0, r3
    ble-    branch_0x80282e4c
    stw     r3, 0x1c80(r29)
branch_0x80282e4c:
    mr      r3, r31
    bl      emitGetWaterEffect__6TMarioFv
    li      r3, 0x1
    b       branch_0x80284d9c


.incbin "./baserom/code/Text_0x80005600.bin", 0x27d85c, 0x80283570 - 0x80282e5c
branch_0x80283570:
    rlwinm. r0, r5, 0, 1, 1
    beq-    branch_0x80283580
    li      r0, 0x1
    b       branch_0x80283584

branch_0x80283580:
    li      r0, 0x0
branch_0x80283584:
    clrlwi. r0, r0, 24
    beq-    branch_0x80283a3c
    lis     r3, 0x4000
    addi    r0, r3, 0xc5
    cmpw    r5, r0
    bge-    branch_0x802835cc
    addi    r0, r3, 0x1e
    cmpw    r5, r0
    beq-    branch_0x802836b8
    bge-    branch_0x802835bc
    addi    r0, r3, 0x1d
    cmpw    r5, r0
    bge-    branch_0x802835fc
    b       branch_0x80283a3c

branch_0x802835bc:
    addi    r0, r3, 0x98
    cmpw    r5, r0
    beq-    branch_0x802837d8
    b       branch_0x80283a3c

branch_0x802835cc:
    addi    r0, r3, 0x258
    cmpw    r5, r0
    beq-    branch_0x80283728
    bge-    branch_0x802835ec
    addi    r0, r3, 0xc8
    cmpw    r5, r0
    bge-    branch_0x80283a3c
    b       branch_0x80283714

branch_0x802835ec:
    addi    r0, r3, 0x25b
    cmpw    r5, r0
    beq-    branch_0x80283750
    b       branch_0x80283a3c

branch_0x802835fc:
    cmplwi  r30, 0xa
    bne-    branch_0x80283a3c
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80283a3c
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x36f4
    addi    r5, r31, 0x36b8
    lha     r9, 0x3730(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x371c(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3708(r31)
    lbz     r7, 0x36e0(r31)
    lbz     r6, 0x36cc(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b7
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, -0x6044(r13)
    li      r4, 0x1813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80283698
    addi    r4, r31, 0x10
    li      r3, 0x1813
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80283698:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802836b8:
    cmplwi  r30, 0xe
    bne-    branch_0x80283a3c
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80283a3c
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x3788
    addi    r5, r31, 0x374c
    lha     r9, 0x37c4(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x37b0(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x379c(r31)
    lbz     r7, 0x3774(r31)
    lbz     r6, 0x3760(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283714:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      getGesso__6TMarioFP9THitActor
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283728:
    cmplwi  r30, 0x4
    bne-    branch_0x80283a3c
    stw     r29, 0x68(r31)
    addi    r3, r31, 0x0
    li      r4, 0x133e
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283750:
    cmplwi  r30, 0xa
    bne-    branch_0x80283a3c
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802837d0
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x337c
    addi    r5, r31, 0x3340
    lha     r9, 0x33b8(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x33a4(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3390(r31)
    lbz     r7, 0x3368(r31)
    lbz     r6, 0x3354(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    addi    r3, r31, 0x0
    li      r4, 0x78cf
    bl      startVoice__6TMarioFUl
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b8
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802837d0:
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x802837d8:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80283a34
    lwz     r3, 0x7c(r31)
    cmplwi  r3, 0x892
    bne-    branch_0x80283808
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x6ec(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80283808
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x80283808:
    cmplwi  r3, 0x893
    bne-    branch_0x80283828
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x6ec(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80283828
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x80283828:
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x8ba
    bne-    branch_0x8028383c
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x8028383c:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80283854
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x80283854:
    stw     r29, 0x68(r31)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x428
    addi    r5, r31, 0x434
    bl      getTipPoints__13TMapWireActorCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    mr      r3, r29
    bl      getPosInWire__13TMapWireActorCFv
    stfs    f1, 0x440(r31)
    mr      r3, r31
    lfs     f1, -0x6ec(rtoc)
    bl      wireMove__6TMarioFf
    lwz     r0, 0x118(r31)
    addi    r3, sp, 0x150
    addi    r4, r31, 0x428
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x118(r31)
    lwz     r5, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r5, 0x150(sp)
    stw     r0, 0x154(sp)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x158(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x150(sp)
    lwz     r3, 0x154(sp)
    stw     r0, 0x1f0(sp)
    lwz     r0, 0x158(sp)
    stw     r3, 0x1f4(sp)
    stw     r0, 0x1f8(sp)
    lfs     f1, 0x1f8(sp)
    lfs     f2, 0x1f0(sp)
    bl      matan__Fff
    lfs     f0, 0xa8(r31)
    lha     r0, 0x96(r31)
    fneg    f0, f0
    lfs     f1, -0x6e8(rtoc)
    subf    r0, r0, r3
    extsh   r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x444(r31)
    lfs     f1, -0x6ec(rtoc)
    stfs    f1, 0x44c(r31)
    lwz     r3, 0x7c(r31)
    cmplwi  r3, 0x893
    beq-    branch_0x80283914
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x88a
    bne-    branch_0x8028391c
branch_0x80283914:
    li      r0, 0x1
    b       branch_0x80283934

branch_0x8028391c:
    lfs     f0, 0xa8(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80283930
    li      r0, 0x0
    b       branch_0x80283934

branch_0x80283930:
    li      r0, 0x1
branch_0x80283934:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802839b0
    cmpwi   r4, 0x0
    ble-    branch_0x802839a0
    lwz     r3, 0x428(r31)
    lwz     r0, 0x42c(r31)
    stw     r3, 0x1a0(sp)
    stw     r0, 0x1a4(sp)
    lwz     r0, 0x430(r31)
    stw     r0, 0x1a8(sp)
    lwz     r3, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r3, 0x428(r31)
    stw     r0, 0x42c(r31)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x430(r31)
    lwz     r3, 0x1a0(sp)
    lwz     r0, 0x1a4(sp)
    stw     r3, 0x434(r31)
    stw     r0, 0x438(r31)
    lwz     r0, 0x1a8(sp)
    stw     r0, 0x43c(r31)
    lfs     f1, -0x6e4(rtoc)
    lfs     f0, 0x440(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x440(r31)
branch_0x802839a0:
    mr      r3, r31
    bl      changeWireHanging__6TMarioFv
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802839b0:
    cmpwi   r4, -0x4000
    ble-    branch_0x802839c0
    cmpwi   r4, 0x4000
    ble-    branch_0x80283a18
branch_0x802839c0:
    lwz     r3, 0x428(r31)
    lwz     r0, 0x42c(r31)
    stw     r3, 0x194(sp)
    stw     r0, 0x198(sp)
    lwz     r0, 0x430(r31)
    stw     r0, 0x19c(sp)
    lwz     r3, 0x434(r31)
    lwz     r0, 0x438(r31)
    stw     r3, 0x428(r31)
    stw     r0, 0x42c(r31)
    lwz     r0, 0x43c(r31)
    stw     r0, 0x430(r31)
    lwz     r3, 0x194(sp)
    lwz     r0, 0x198(sp)
    stw     r3, 0x434(r31)
    stw     r0, 0x438(r31)
    lwz     r0, 0x19c(sp)
    stw     r0, 0x43c(r31)
    lfs     f1, -0x6e4(rtoc)
    lfs     f0, 0x440(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x440(r31)
branch_0x80283a18:
    addi    r3, r31, 0x0
    li      r4, 0x350
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283a34:
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x80283a3c:
    lwz     r0, 0x4c(r29)
    rlwinm. r3, r0, 0, 3, 3
    beq-    branch_0x80283a50
    li      r3, 0x1
    b       branch_0x80283a54

branch_0x80283a50:
    li      r3, 0x0
branch_0x80283a54:
    clrlwi. r3, r3, 24
    beq-    branch_0x80284184
    lis     r5, 0x1000
    addi    r3, r5, 0x1f
    cmpw    r0, r3
    beq-    branch_0x80283e10
    bge-    branch_0x80283b50
    addi    r3, r5, 0xd
    cmpw    r0, r3
    beq-    branch_0x80283fd0
    bge-    branch_0x80283af0
    addi    r3, r5, 0x4
    cmpw    r0, r3
    beq-    branch_0x80283ed4
    bge-    branch_0x80283ac0
    addi    r3, r5, 0x2
    cmpw    r0, r3
    beq-    branch_0x80283cf4
    bge-    branch_0x80283c24
    lis     r3, 0x800
    addi    r4, r3, 0x13
    cmpw    r0, r4
    bge-    branch_0x80284184
    addi    r3, r3, 0xf
    cmpw    r0, r3
    bge-    branch_0x80283ed4
    b       branch_0x80284184

branch_0x80283ac0:
    addi    r3, r5, 0xa
    cmpw    r0, r3
    beq-    branch_0x80283d50
    bge-    branch_0x80283ae0
    addi    r3, r5, 0x6
    cmpw    r0, r3
    bge-    branch_0x80283ed4
    b       branch_0x80284068

branch_0x80283ae0:
    addi    r3, r5, 0xc
    cmpw    r0, r3
    bge-    branch_0x80283ed4
    b       branch_0x80283dac

branch_0x80283af0:
    addi    r3, r5, 0x13
    cmpw    r0, r3
    beq-    branch_0x80283c80
    bge-    branch_0x80283b30
    addi    r3, r5, 0x10
    cmpw    r0, r3
    beq-    branch_0x80283ed4
    bge-    branch_0x80283b20
    addi    r3, r5, 0xf
    cmpw    r0, r3
    bge-    branch_0x80284184
    b       branch_0x80284068

branch_0x80283b20:
    addi    r3, r5, 0x12
    cmpw    r0, r3
    bge-    branch_0x80283ed4
    b       branch_0x80284068

branch_0x80283b30:
    addi    r3, r5, 0x15
    cmpw    r0, r3
    beq-    branch_0x8028400c
    blt-    branch_0x80283ed4
    addi    r3, r5, 0x1e
    cmpw    r0, r3
    bge-    branch_0x80284068
    b       branch_0x80283ed4

branch_0x80283b50:
    addi    r3, r5, 0x33
    cmpw    r0, r3
    beq-    branch_0x80283ed4
    bge-    branch_0x80283bd0
    addi    r3, r5, 0x26
    cmpw    r0, r3
    beq-    branch_0x80284068
    bge-    branch_0x80283ba0
    addi    r3, r5, 0x22
    cmpw    r0, r3
    beq-    branch_0x80283ed4
    bge-    branch_0x80283b90
    addi    r3, r5, 0x21
    cmpw    r0, r3
    bge-    branch_0x80283dac
    b       branch_0x80283ed4

branch_0x80283b90:
    addi    r3, r5, 0x24
    cmpw    r0, r3
    bge-    branch_0x80283ed4
    b       branch_0x80284184

branch_0x80283ba0:
    addi    r3, r5, 0x2b
    cmpw    r0, r3
    beq-    branch_0x80283fd0
    bge-    branch_0x80283bc0
    addi    r3, r5, 0x29
    cmpw    r0, r3
    bge-    branch_0x80283ed4
    b       branch_0x80284184

branch_0x80283bc0:
    addi    r3, r5, 0x30
    cmpw    r0, r3
    bge-    branch_0x80284184
    b       branch_0x80283ed4

branch_0x80283bd0:
    lis     r3, 0x4000
    addi    r4, r3, 0x53
    cmpw    r0, r4
    beq-    branch_0x80283f54
    bge-    branch_0x80283c14
    addi    r3, r5, 0x36
    cmpw    r0, r3
    beq-    branch_0x80283ed4
    bge-    branch_0x80283c04
    addi    r3, r5, 0x35
    cmpw    r0, r3
    bge-    branch_0x80284184
    b       branch_0x80283dac

branch_0x80283c04:
    addi    r3, r5, 0x38
    cmpw    r0, r3
    bge-    branch_0x80284184
    b       branch_0x80283c80

branch_0x80283c14:
    addi    r3, r3, 0x19b
    cmpw    r0, r3
    beq-    branch_0x80283cf4
    b       branch_0x80284184

branch_0x80283c24:
    cmplwi  r30, 0xe
    bne-    branch_0x80284184
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284184
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x3254
    addi    r5, r31, 0x3218
    lha     r9, 0x3290(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x327c(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3268(r31)
    lbz     r7, 0x3240(r31)
    lbz     r6, 0x322c(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283c80:
    cmplwi  r30, 0xe
    bne-    branch_0x80284184
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284184
    lwz     r4, 0x3e0(r31)
    addi    r9, r31, 0x3168
    addi    r8, r31, 0x312c
    lhz     r0, 0x4(r4)
    addi    r7, r31, 0x3118
    addi    r5, r31, 0x30f0
    clrrwi  r0, r0, 1
    sth     r0, 0x4(r4)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    lwz     r12, 0x0(r31)
    lbz     r6, 0x3104(r31)
    lwz     r12, 0xdc(r12)
    lbz     r5, 0x0(r5)
    mtlr    r12
    lbz     r7, 0x0(r7)
    lfs     f1, 0x3140(r31)
    lbz     r8, 0x0(r8)
    lfs     f2, 0x3154(r31)
    lha     r9, 0x0(r9)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283cf4:
    cmplwi  r30, 0xe
    bne-    branch_0x80284184
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284184
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x31c0
    addi    r5, r31, 0x3184
    lha     r9, 0x31fc(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x31e8(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x31d4(r31)
    lbz     r7, 0x31ac(r31)
    lbz     r6, 0x3198(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283d50:
    cmplwi  r30, 0xe
    bne-    branch_0x80283dac
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80283dac
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x31c0
    addi    r5, r31, 0x3184
    lha     r9, 0x31fc(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x31e8(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x31d4(r31)
    lbz     r7, 0x31ac(r31)
    lbz     r6, 0x3198(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283dac:
    cmplwi  r30, 0x9
    bne-    branch_0x80283dec
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80283dec
    mr      r3, r31
    bl      elecEffect__6TMarioFv
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x338
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283dec:
    lfs     f1, 0x58(r29)
    mr      r3, r31
    lfs     f0, -0x6e0(rtoc)
    addi    r4, r29, 0x10
    lfs     f2, -0x6ec(rtoc)
    fadds   f1, f0, f1
    bl      keepDistance__6TMarioFRCQ29JGeometry8TVec3_f_ff
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283e10:
    cmplwi  r30, 0xa
    beq-    branch_0x80283e20
    cmplwi  r30, 0xe
    bne-    branch_0x80284184
branch_0x80283e20:
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284184
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x3660
    addi    r5, r31, 0x3624
    lha     r9, 0x369c(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3688(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3674(r31)
    lbz     r7, 0x364c(r31)
    lbz     r6, 0x3638(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b7
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, -0x6044(r13)
    li      r4, 0x1813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80283eb4
    addi    r4, r31, 0x10
    li      r3, 0x1813
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80283eb4:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283ed4:
    cmplwi  r30, 0xe
    bne-    branch_0x80283f30
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80283f30
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x312c
    addi    r5, r31, 0x30f0
    lha     r9, 0x3168(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3154(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3140(r31)
    lbz     r7, 0x3118(r31)
    lbz     r6, 0x3104(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283f30:
    lfs     f1, 0x58(r29)
    mr      r3, r31
    lfs     f0, -0x6e0(rtoc)
    addi    r4, r29, 0x10
    lfs     f2, -0x6ec(rtoc)
    fadds   f1, f0, f1
    bl      keepDistance__6TMarioFRCQ29JGeometry8TVec3_f_ff
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283f54:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80283f68
    li      r0, 0x1
    b       branch_0x80283f6c

branch_0x80283f68:
    li      r0, 0x0
branch_0x80283f6c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80284184
    cmplwi  r30, 0xe
    bne-    branch_0x80284184
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284184
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x312c
    addi    r5, r31, 0x30f0
    lha     r9, 0x3168(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3154(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3140(r31)
    lbz     r7, 0x3118(r31)
    lbz     r6, 0x3104(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80283fd0:
    cmplwi  r30, 0x5
    bne-    branch_0x80284184
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80283fec
    li      r0, 0x1
    b       branch_0x80283ff0

branch_0x80283fec:
    li      r0, 0x0
branch_0x80283ff0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80284184
    lwz     r3, 0x3e4(r31)
    lhz     r0, 0x4(r3)
    ori     r0, r0, 0x4
    sth     r0, 0x4(r3)
    b       branch_0x80284184

branch_0x8028400c:
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284184
    cmplwi  r30, 0xe
    bne-    branch_0x80284184
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x35cc
    addi    r5, r31, 0x3590
    lha     r9, 0x3608(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x35f4(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x35e0(r31)
    lbz     r7, 0x35b8(r31)
    lbz     r6, 0x35a4(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284068:
    cmplwi  r30, 0xe
    bne-    branch_0x802840c4
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802840c4
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x337c
    addi    r5, r31, 0x3340
    lha     r9, 0x33b8(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x33a4(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3390(r31)
    lbz     r7, 0x3368(r31)
    lbz     r6, 0x3354(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802840c4:
    subi    r0, r30, 0x9
    cmplwi  r0, 0x1
    bgt-    branch_0x80284184
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284184
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x337c
    addi    r5, r31, 0x3340
    lha     r9, 0x33b8(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x33a4(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3390(r31)
    lbz     r7, 0x3368(r31)
    lbz     r6, 0x3354(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b7
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, -0x6044(r13)
    li      r4, 0x1813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80284164
    addi    r4, r31, 0x10
    li      r3, 0x1813
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80284164:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284184:
    lis     r4, 0x800
    lwz     r0, 0x4c(r29)
    addi    r3, r4, 0xc0
    cmpw    r0, r3
    beq-    branch_0x80284c94
    bge-    branch_0x8028429c
    addi    r3, r4, 0x16
    cmpw    r0, r3
    bge-    branch_0x80284228
    addi    r3, r4, 0x5
    cmpw    r0, r3
    beq-    branch_0x80284d98
    bge-    branch_0x802841ec
    addi    r3, r4, 0x1
    cmpw    r0, r3
    beq-    branch_0x802844a0
    bge-    branch_0x802841dc
    lis     r3, 0x8000
    addi    r3, r3, 0x1
    cmpw    r0, r3
    beq-    branch_0x80284b64
    b       branch_0x80284d98

branch_0x802841dc:
    addi    r3, r4, 0x3
    cmpw    r0, r3
    bge-    branch_0x80284728
    b       branch_0x80284b64

branch_0x802841ec:
    addi    r3, r4, 0xf
    cmpw    r0, r3
    bge-    branch_0x80284214
    addi    r3, r4, 0xb
    cmpw    r0, r3
    bge-    branch_0x8028466c
    addi    r3, r4, 0x9
    cmpw    r0, r3
    bge-    branch_0x80284d98
    b       branch_0x80284728

branch_0x80284214:
    addi    r3, r4, 0x13
    cmpw    r0, r3
    beq-    branch_0x80284558
    bge-    branch_0x802848dc
    b       branch_0x80284d98

branch_0x80284228:
    addi    r3, r4, 0x27
    cmpw    r0, r3
    beq-    branch_0x80284728
    bge-    branch_0x80284268
    addi    r3, r4, 0x22
    cmpw    r0, r3
    bge-    branch_0x80284254
    addi    r3, r4, 0x1f
    cmpw    r0, r3
    beq-    branch_0x80284728
    b       branch_0x80284d98

branch_0x80284254:
    addi    r3, r4, 0x24
    cmpw    r0, r3
    beq-    branch_0x8028484c
    bge-    branch_0x80284d98
    b       branch_0x80284728

branch_0x80284268:
    addi    r3, r4, 0x2b
    cmpw    r0, r3
    beq-    branch_0x80284d98
    bge-    branch_0x8028428c
    addi    r3, r4, 0x29
    cmpw    r0, r3
    beq-    branch_0x80284380
    bge-    branch_0x80284444
    b       branch_0x80284d98

branch_0x8028428c:
    addi    r3, r4, 0x2d
    cmpw    r0, r3
    bge-    branch_0x80284d98
    b       branch_0x80284444

branch_0x8028429c:
    lis     r5, 0x4000
    addi    r3, r5, 0x3b
    cmpw    r0, r3
    bge-    branch_0x80284320
    addi    r3, r5, 0x2f
    cmpw    r0, r3
    bge-    branch_0x802842f0
    lis     r3, 0x1000
    addi    r4, r3, 0x35
    cmpw    r0, r4
    beq-    branch_0x80284728
    bge-    branch_0x802842dc
    addi    r3, r3, 0xf
    cmpw    r0, r3
    beq-    branch_0x80284728
    b       branch_0x80284d98

branch_0x802842dc:
    addi    r3, r5, 0x2c
    cmpw    r0, r3
    beq-    branch_0x80284938
    bge-    branch_0x80284c68
    b       branch_0x80284d98

branch_0x802842f0:
    addi    r3, r5, 0x33
    cmpw    r0, r3
    beq-    branch_0x80284d98
    bge-    branch_0x80284310
    addi    r3, r5, 0x32
    cmpw    r0, r3
    bge-    branch_0x80284c68
    b       branch_0x80284d98

branch_0x80284310:
    addi    r3, r5, 0x38
    cmpw    r0, r3
    beq-    branch_0x80284d98
    b       branch_0x80284c68

branch_0x80284320:
    addi    r3, r5, 0xa5
    cmpw    r0, r3
    beq-    branch_0x80284d28
    bge-    branch_0x80284360
    addi    r3, r5, 0x64
    cmpw    r0, r3
    beq-    branch_0x80284d54
    bge-    branch_0x80284350
    addi    r3, r5, 0x5a
    cmpw    r0, r3
    beq-    branch_0x80284c68
    b       branch_0x80284d98

branch_0x80284350:
    addi    r3, r5, 0x9c
    cmpw    r0, r3
    beq-    branch_0x80284d28
    b       branch_0x80284d98

branch_0x80284360:
    addi    r3, r5, 0x393
    cmpw    r0, r3
    beq-    branch_0x80284d54
    bge-    branch_0x80284d98
    addi    r3, r5, 0x246
    cmpw    r0, r3
    beq-    branch_0x80284d98
    b       branch_0x80284d98

branch_0x80284380:
    cmplwi  r30, 0xa
    bne-    branch_0x8028443c
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284434
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x337c
    addi    r5, r31, 0x3340
    lha     r9, 0x33b8(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x33a4(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3390(r31)
    lbz     r7, 0x3368(r31)
    lbz     r6, 0x3354(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b7
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, -0x6044(r13)
    li      r4, 0x1813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028441c
    addi    r4, r31, 0x10
    li      r3, 0x1813
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8028441c:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80284434:
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x8028443c:
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x80284444:
    cmplwi  r30, 0xe
    bne-    branch_0x802844a0
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802844a0
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x312c
    addi    r5, r31, 0x30f0
    lha     r9, 0x3168(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3154(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3140(r31)
    lbz     r7, 0x3118(r31)
    lbz     r6, 0x3104(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802844a0:
    cmplwi  r30, 0xe
    bne-    branch_0x802844fc
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802844fc
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x32e8
    addi    r5, r31, 0x32ac
    lha     r9, 0x3324(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3310(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x32fc(r31)
    lbz     r7, 0x32d4(r31)
    lbz     r6, 0x32c0(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802844fc:
    cmplwi  r30, 0x3
    bne-    branch_0x80284d98
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284d98
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x800
    stw     r0, 0x118(r31)
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80284534
    li      r0, 0x1
    b       branch_0x80284538

branch_0x80284534:
    li      r0, 0x0
branch_0x80284538:
    clrlwi. r0, r0, 24
    bne-    branch_0x80284550
    addi    r3, r31, 0x0
    li      r4, 0x15
    li      r5, 0xa
    bl      rumbleStart__6TMarioFii
branch_0x80284550:
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284558:
    cmpwi   r30, 0x8
    beq-    branch_0x8028460c
    bge-    branch_0x80284570
    cmpwi   r30, 0x4
    beq-    branch_0x8028457c
    b       branch_0x80284d98

branch_0x80284570:
    cmpwi   r30, 0xe
    beq-    branch_0x802845b8
    b       branch_0x80284d98

branch_0x8028457c:
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80284d98
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80284d98
    lis     r4, 0xc40
    stw     r29, 0x68(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802845b8:
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284d98
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x3410
    addi    r5, r31, 0x33d4
    lha     r9, 0x344c(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3438(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3424(r31)
    lbz     r7, 0x33fc(r31)
    lbz     r6, 0x33e8(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x8028460c:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80284620
    li      r0, 0x1
    b       branch_0x80284624

branch_0x80284620:
    li      r0, 0x0
branch_0x80284624:
    clrlwi. r0, r0, 24
    beq-    branch_0x80284644
    addi    r3, r31, 0x0
    li      r4, 0x891
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8028465c

branch_0x80284644:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, 0x201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8028465c:
    li      r0, 0x0
    stw     r0, 0x68(r31)
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x8028466c:
    cmplwi  r30, 0xa
    bne-    branch_0x80284d98
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284d98
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x337c
    addi    r5, r31, 0x3340
    lha     r9, 0x33b8(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x33a4(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3390(r31)
    lbz     r7, 0x3368(r31)
    lbz     r6, 0x3354(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b7
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, -0x6044(r13)
    li      r4, 0x1813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80284708
    addi    r4, r31, 0x10
    li      r3, 0x1813
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80284708:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284728:
    cmpwi   r30, 0x8
    beq-    branch_0x802847ec
    bge-    branch_0x80284740
    cmpwi   r30, 0x4
    beq-    branch_0x8028474c
    b       branch_0x80284d98

branch_0x80284740:
    cmpwi   r30, 0xe
    beq-    branch_0x80284798
    b       branch_0x80284d98

branch_0x8028474c:
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284d98
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80284d98
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80284d98
    lis     r4, 0x1002
    stw     r29, 0x68(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x370
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284798:
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284d98
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x3410
    addi    r5, r31, 0x33d4
    lha     r9, 0x344c(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3438(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3424(r31)
    lbz     r7, 0x33fc(r31)
    lbz     r6, 0x33e8(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802847ec:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80284800
    li      r0, 0x1
    b       branch_0x80284804

branch_0x80284800:
    li      r0, 0x0
branch_0x80284804:
    clrlwi. r0, r0, 24
    beq-    branch_0x80284824
    addi    r3, r31, 0x0
    li      r4, 0x891
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8028483c

branch_0x80284824:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, 0x201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8028483c:
    li      r0, 0x0
    stw     r0, 0x68(r31)
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x8028484c:
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802848dc
    cmplwi  r30, 0xe
    bne-    branch_0x802848dc
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x80284880
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x3
    beq-    branch_0x802848dc
branch_0x80284880:
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x3410
    addi    r5, r31, 0x33d4
    lha     r9, 0x344c(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3438(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3424(r31)
    lbz     r7, 0x33fc(r31)
    lbz     r6, 0x33e8(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b8
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x802848dc:
    cmplwi  r30, 0xe
    bne-    branch_0x80284d98
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284d98
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x3538
    addi    r5, r31, 0x34fc
    lha     r9, 0x3574(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3560(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x354c(r31)
    lbz     r7, 0x3524(r31)
    lbz     r6, 0x3510(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284938:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80284d98
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      getAttackAngle__6TMarioFPC9THitActor
    lha     r4, 0x96(r31)
    extsh   r0, r3
    subf    r0, r4, r0
    extsh   r0, r0
    cmpwi   r0, -0x2000
    ble-    branch_0x80284d98
    cmpwi   r0, 0x2000
    bge-    branch_0x80284d98
    lfs     f1, -0x6d8(rtoc)
    lfs     f0, 0x34(r29)
    lfs     f2, -0x6dc(rtoc)
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x200(sp)
    lwz     r0, 0x204(sp)
    stfd    f0, 0x208(sp)
    extsh   r0, r0
    subf    r0, r4, r0
    lwz     r7, 0x20c(sp)
    extsh   r0, r0
    cmpwi   r0, -0x2000
    ble-    branch_0x80284a44
    cmpwi   r0, 0x2000
    bge-    branch_0x80284a44
    lwz     r6, 0x10(r29)
    mr      r3, r31
    lwz     r0, 0x14(r29)
    li      r4, 0x1320
    li      r5, 0x0
    stw     r6, 0x10(r31)
    li      r6, 0x0
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r29)
    stw     r0, 0x18(r31)
    sth     r7, 0x96(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802849f8
    li      r0, 0x1
    b       branch_0x802849fc

branch_0x802849f8:
    li      r0, 0x0
branch_0x802849fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80284a20
    li      r0, 0x2
    stw     r0, 0x380(r31)
    addi    r3, r31, 0x0
    li      r4, 0xe9
    lfs     f1, -0x6e4(rtoc)
    bl      setAnimation__6TMarioFif
    b       branch_0x80284a30

branch_0x80284a20:
    lfs     f1, -0x6e4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x5f
    bl      setAnimation__6TMarioFif
branch_0x80284a30:
    addi    r3, r31, 0x0
    li      r4, 0x78e5
    bl      startVoice__6TMarioFUl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284a44:
    cmpwi   r0, -0x6000
    blt-    branch_0x80284a54
    cmpwi   r0, 0x6000
    ble-    branch_0x80284d98
branch_0x80284a54:
    cmplwi  r30, 0x11
    bne-    branch_0x80284af4
    lwz     r4, 0x10(r29)
    addis   r3, r7, 0x1
    lwz     r6, 0x14(r29)
    subi    r0, r3, 0x8000
    addi    r3, r31, 0x0
    stw     r4, 0x10(r31)
    li      r4, 0x1321
    li      r5, 0x0
    stw     r6, 0x14(r31)
    li      r6, 0x0
    lwz     r7, 0x18(r29)
    stw     r7, 0x18(r31)
    sth     r0, 0x96(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80284aa8
    li      r0, 0x1
    b       branch_0x80284aac

branch_0x80284aa8:
    li      r0, 0x0
branch_0x80284aac:
    clrlwi. r0, r0, 24
    beq-    branch_0x80284ad0
    li      r0, 0x2
    stw     r0, 0x380(r31)
    addi    r3, r31, 0x0
    li      r4, 0xe9
    lfs     f1, -0x6e4(rtoc)
    bl      setAnimation__6TMarioFif
    b       branch_0x80284ae0

branch_0x80284ad0:
    lfs     f1, -0x6e4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x60
    bl      setAnimation__6TMarioFif
branch_0x80284ae0:
    addi    r3, r31, 0x0
    li      r4, 0x78e5
    bl      startVoice__6TMarioFUl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284af4:
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80284b08
    li      r0, 0x1
    b       branch_0x80284b0c

branch_0x80284b08:
    li      r0, 0x0
branch_0x80284b0c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80284d98
    lwz     r4, 0x10(r29)
    addis   r3, r7, 0x1
    lwz     r6, 0x14(r29)
    subi    r0, r3, 0x8000
    addi    r3, r31, 0x0
    stw     r4, 0x10(r31)
    li      r4, 0x1321
    li      r5, 0x0
    stw     r6, 0x14(r31)
    li      r6, 0x0
    lwz     r7, 0x18(r29)
    stw     r7, 0x18(r31)
    sth     r0, 0x96(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f1, -0x6e4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x139
    bl      setAnimation__6TMarioFif
    li      r3, 0x0
    b       branch_0x80284d9c

branch_0x80284b64:
    mr      r3, r31
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80284d98
    cmpwi   r30, 0x8
    bge-    branch_0x80284b94
    cmpwi   r30, 0x5
    beq-    branch_0x80284d98
    bge-    branch_0x80284bdc
    cmpwi   r30, 0x4
    bge-    branch_0x80284ba0
    b       branch_0x80284d98

branch_0x80284b94:
    cmpwi   r30, 0xe
    beq-    branch_0x80284c24
    b       branch_0x80284d98

branch_0x80284ba0:
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80284d98
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80284d98
    lis     r4, 0x1002
    stw     r29, 0x68(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x370
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284bdc:
    li      r0, 0x0
    lis     r4, 0x200
    stw     r0, 0x68(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x880
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    mr      r3, r31
    lfs     f1, -0x6d4(rtoc)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f0, -0x6d0(rtoc)
    li      r3, 0x1
    stfs    f0, 0xa8(r31)
    lwz     r0, 0x78(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r31)
    b       branch_0x80284d9c

branch_0x80284c24:
    lwz     r12, 0x0(r31)
    addi    r8, r31, 0x381c
    addi    r5, r31, 0x37e0
    lha     r9, 0x3858(r31)
    lwz     r12, 0xdc(r12)
    lfs     f2, 0x3844(r31)
    mr      r3, r31
    mtlr    r12
    lfs     f1, 0x3830(r31)
    lbz     r7, 0x3808(r31)
    lbz     r6, 0x37f4(r31)
    mr      r4, r29
    lbz     r5, 0x0(r5)
    lbz     r8, 0x0(r8)
    blrl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284c68:
    cmplwi  r30, 0x8
    bne-    branch_0x80284d98
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, 0x201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r0, 0x0
    stw     r0, 0x6c(r31)
    b       branch_0x80284d98

branch_0x80284c94:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x1336
    beq-    branch_0x80284d98
    cmplwi  r30, 0x4
    bne-    branch_0x80284d98
    stw     r29, 0x68(r31)
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80284cc0
    li      r0, 0x1
    b       branch_0x80284cc4

branch_0x80284cc0:
    li      r0, 0x0
branch_0x80284cc4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80284d10
    lfs     f1, -0x6e4(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x4d
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lha     r29, 0x8(r3)
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    xoris   r0, r29, 0x8000
    lfd     f1, -0x6c8(rtoc)
    stw     r0, 0x204(sp)
    lis     r0, 0x4330
    stw     r0, 0x200(sp)
    lfd     f0, 0x200(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
branch_0x80284d10:
    addi    r3, r31, 0x0
    li      r4, 0x1336
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284d28:
    cmplwi  r30, 0xe
    bne-    branch_0x80284d98
    lfs     f1, 0x58(r29)
    mr      r3, r31
    lfs     f0, -0x6e0(rtoc)
    addi    r4, r29, 0x10
    lfs     f2, -0x6ec(rtoc)
    fadds   f1, f0, f1
    bl      keepDistance__6TMarioFRCQ29JGeometry8TVec3_f_ff
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284d54:
    lha     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x80284d98
    lha     r0, 0x938(r31)
    addi    r5, r31, 0x27f8
    addi    r3, r31, 0x0
    sth     r0, 0x14e(r31)
    li      r4, 0x15
    lha     r5, 0x0(r5)
    bl      rumbleStart__6TMarioFii
    addi    r3, r31, 0x0
    addi    r4, r29, 0x10
    bl      calcDamagePos__6TMarioFRCQ29JGeometry8TVec3_f_
    mr      r3, r31
    bl      kickFruitEffect__6TMarioFv
    li      r3, 0x1
    b       branch_0x80284d9c

branch_0x80284d98:
    li      r3, 0x0
branch_0x80284d9c:
    lwz     r0, 0x224(sp)
    lwz     r31, 0x21c(sp)
    lwz     r30, 0x218(sp)
    mtlr    r0
    lwz     r29, 0x214(sp)
    addi    sp, sp, 0x220
    blr


.globl getGesso__6TMarioFP9THitActor
getGesso__6TMarioFP9THitActor: # 0x80284db8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xffff
    cmplwi  r0, 0x0
    beq-    branch_0x80284ec4
    lfs     f1, -0x6f0(rtoc)
    lis     r4, 0x81
    lfs     f0, 0x34(r30)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x446
    fmuls   f0, f1, f0
    li      r5, 0x0
    li      r6, 0x0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    sth     r0, 0x96(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    lhz     r0, 0x94c(r31)
    mr      r3, r31
    sth     r0, 0x86(r31)
    bl      emitGetEffect__6TMarioFv
    lis     r3, 0x4000
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0xc6
    cmpw    r4, r0
    beq-    branch_0x80284e74
    bge-    branch_0x80284e8c
    addi    r0, r3, 0xc5
    cmpw    r4, r0
    bge-    branch_0x80284e5c
    b       branch_0x80284e8c


.incbin "./baserom/code/Text_0x80005600.bin", 0x27f858, 0x80284e5c - 0x80284e58
branch_0x80284e5c:
    lwz     r3, -0x62b8(r13)
    li      r0, 0x0
    lwz     r3, 0x9c(r3)
    stw     r3, 0x3f4(r31)
    stb     r0, 0x389(r31)
    b       branch_0x80284ea0

branch_0x80284e74:
    lwz     r3, -0x62b8(r13)
    li      r0, 0x1
    lwz     r3, 0xa0(r3)
    stw     r3, 0x3f4(r31)
    stb     r0, 0x389(r31)
    b       branch_0x80284ea0

branch_0x80284e8c:
    li      r0, 0x2
    stb     r0, 0x389(r31)
    lwz     r3, -0x62b8(r13)
    lwz     r0, 0xa4(r3)
    stw     r0, 0x3f4(r31)
branch_0x80284ea0:
    lis     r4, 0x803a
    lwz     r3, 0x3f4(r31)
    addi    r4, r4, 0x1e60
    bl      setBck__6MActorFPCc
    lwz     r3, 0x3f4(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6c0(rtoc)
    stfs    f0, 0xc(r3)
branch_0x80284ec4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __sinit_MarioReceiveMsg_cpp
__sinit_MarioReceiveMsg_cpp: # 0x80284edc
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x3b48
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80284f24
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80284f24:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80284f54
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80284f54:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80284f84
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80284f84:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80284fb4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80284fb4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80284fe4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80284fe4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80285014
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80285014:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80285044
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80285044:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80285074
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80285074:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802850a4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802850a4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802850d4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802850d4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80285104
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80285104:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80285134
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80285134:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80285164
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80285164:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80285194
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80285194:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802851c4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802851c4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
