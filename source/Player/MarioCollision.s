
.globl considerTake__6TMarioFv
considerTake__6TMarioFv: # 0x80242618
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0x380(r3)
    cmplwi  r3, 0x2
    bne-    branch_0x80242644
    li      r0, 0x1
    b       branch_0x80242648

branch_0x80242644:
    li      r0, 0x0
branch_0x80242648:
    clrlwi. r0, r0, 24
    beq-    branch_0x80242654
    li      r4, 0x1
branch_0x80242654:
    cmplwi  r3, 0x3
    bne-    branch_0x80242664
    li      r0, 0x1
    b       branch_0x80242668

branch_0x80242664:
    li      r0, 0x0
branch_0x80242668:
    clrlwi. r0, r0, 24
    beq-    branch_0x80242674
    li      r4, 0x1
branch_0x80242674:
    lwz     r3, 0x7c(r31)
    cmplwi  r3, 0x383
    beq-    branch_0x8024269c
    clrrwi. r0, r3, 31
    beq-    branch_0x80242690
    li      r0, 0x1
    b       branch_0x80242694

branch_0x80242690:
    li      r0, 0x0
branch_0x80242694:
    clrlwi. r0, r0, 24
    beq-    branch_0x802426a0
branch_0x8024269c:
    li      r4, 0x1
branch_0x802426a0:
    cmplwi  r3, 0x560
    beq-    branch_0x802426bc
    cmplwi  r3, 0x894
    beq-    branch_0x802426bc
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x561
    bne-    branch_0x802426c0
branch_0x802426bc:
    li      r4, 0x1
branch_0x802426c0:
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802426e0
    lwz     r0, 0x68(r3)
    cmplw   r0, r31
    beq-    branch_0x802426e0
    li      r0, 0x0
    stw     r0, 0x6c(r31)
branch_0x802426e0:
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80242700
    lwz     r0, 0x6c(r3)
    cmplw   r0, r31
    beq-    branch_0x80242700
    li      r0, 0x0
    stw     r0, 0x68(r31)
branch_0x80242700:
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80242750
    clrlwi. r0, r4, 24
    bne-    branch_0x80242750
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x7
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x6c(r31)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x6c(r31)
branch_0x80242750:
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802427f8
    lwz     r4, 0x7c(r31)
    li      r5, 0x0
    clrlwi  r0, r4, 23
    cmplwi  r0, 0x150
    blt-    branch_0x80242778
    cmplwi  r0, 0x15c
    ble-    branch_0x802427b0
branch_0x80242778:
    cmplwi  r0, 0x140
    blt-    branch_0x80242788
    cmplwi  r0, 0x143
    ble-    branch_0x802427b0
branch_0x80242788:
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x80242798
    li      r0, 0x1
    b       branch_0x8024279c

branch_0x80242798:
    li      r0, 0x0
branch_0x8024279c:
    clrlwi. r0, r0, 24
    bne-    branch_0x802427b0
    addis   r0, r4, 0xeffe
    cmplwi  r0, 0x370
    bne-    branch_0x802427b4
branch_0x802427b0:
    li      r5, 0x1
branch_0x802427b4:
    cmpwi   r5, 0x0
    bne-    branch_0x802427f8
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x68(r31)
    addi    r4, r31, 0x0
    li      r5, 0x7
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x68(r31)
branch_0x802427f8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl damageExec__6TMarioFP9THitActoriiififs
damageExec__6TMarioFP9THitActoriiififs: # 0x8024280c
    mflr    r0
    lis     r10, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stfd    f31, 0x148(sp)
    fmr     f31, f2
    stfd    f30, 0x140(sp)
    fmr     f30, f1
    stmw    r23, 0x11c(sp)
    addi    r25, r4, 0x0
    mr      r24, r3
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    lwzu    r11, -0x2090(r10)
    lwz     r0, 0x4(r10)
    stw     r11, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lwz     r4, 0x8(r10)
    lwz     r0, 0xc(r10)
    stw     r4, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r4, 0x10(r10)
    lwz     r0, 0x14(r10)
    stw     r4, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r4, 0x18(r10)
    lwz     r0, 0x1c(r10)
    stw     r4, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r4, 0x20(r10)
    lwz     r0, 0x24(r10)
    stw     r4, 0xf4(sp)
    stw     r0, 0xf8(sp)
    lwz     r4, 0x28(r10)
    lwz     r0, 0x2c(r10)
    stw     r4, 0xfc(sp)
    stw     r0, 0x100(sp)
    lwz     r4, 0x30(r10)
    lwz     r0, 0x34(r10)
    stw     r4, 0x104(sp)
    stw     r0, 0x108(sp)
    lwz     r4, 0x38(r10)
    lwz     r0, 0x3c(r10)
    stw     r4, 0x10c(sp)
    stw     r0, 0x110(sp)
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80242d88
    lwz     r0, 0x118(r24)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x802428ec
    li      r0, 0x1
    b       branch_0x802428f0

branch_0x802428ec:
    li      r0, 0x0
branch_0x802428f0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80242d88
    lha     r0, 0x120(r24)
    cmpwi   r0, 0x0
    beq-    branch_0x80242d88
    mr      r3, r24
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80242954
    addi    r3, r24, 0x0
    li      r4, 0x1
    bl      getOffYoshi__6TMarioFb
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x7918
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80242d88
    addi    r4, r24, 0x10
    li      r3, 0x7918
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80242d88

branch_0x80242954:
    lwz     r0, 0x7c(r24)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80242968
    li      r0, 0x1
    b       branch_0x8024296c

branch_0x80242968:
    li      r0, 0x0
branch_0x8024296c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024297c
    li      r31, 0x1
    b       branch_0x80242980

branch_0x8024297c:
    li      r31, 0x0
branch_0x80242980:
    mr      r3, r24
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80242994
    li      r31, 0x1
branch_0x80242994:
    cmpwi   r27, 0x3
    bne-    branch_0x802429c4
    lwz     r3, 0x7c(r24)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    beq-    branch_0x802429b8
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x45c
    bne-    branch_0x80242b04
branch_0x802429b8:
    mr      r3, r24
    bl      setUpperDamageRun__6TMarioFv
    b       branch_0x80242b04

branch_0x802429c4:
    lfs     f3, 0x10(r25)
    lfs     f2, 0x10(r24)
    lfs     f1, 0x18(r25)
    lfs     f0, 0x18(r24)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    lha     r0, 0x96(r24)
    sth     r3, 0x96(r24)
    subf    r23, r0, r3
    lfs     f0, 0xb0(r24)
    fcmpo   cr0, f0, f30
    bge-    branch_0x80242a04
    mr      r3, r24
    fmr     f1, f30
    bl      setPlayerVelocity__6TMarioFf
branch_0x80242a04:
    extsh   r0, r23
    cmpwi   r0, -0x4000
    blt-    branch_0x80242a30
    cmpwi   r0, 0x4000
    bgt-    branch_0x80242a30
    lfs     f1, 0xb0(r24)
    li      r4, 0x0
    lfs     f0, -0x1418(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r24)
    b       branch_0x80242a44

branch_0x80242a30:
    lha     r3, 0x96(r24)
    li      r4, 0x1
    addis   r3, r3, 0x1
    addi    r0, r3, -0x8000
    sth     r0, 0x96(r24)
branch_0x80242a44:
    lwz     r3, 0x7c(r24)
    li      r5, 0x1
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x447
    bne-    branch_0x80242a5c
    li      r5, 0x0
branch_0x80242a5c:
    cmplwi  r3, 0x891
    bne-    branch_0x80242a68
    li      r5, 0x0
branch_0x80242a68:
    rlwinm. r0, r3, 0, 18, 18
    beq-    branch_0x80242a78
    li      r0, 0x1
    b       branch_0x80242a7c

branch_0x80242a78:
    li      r0, 0x0
branch_0x80242a7c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80242a88
    li      r5, 0x0
branch_0x80242a88:
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80242b04
    lwz     r5, 0x68(r24)
    slwi    r3, r4, 5
    slwi    r0, r31, 4
    add     r3, r3, r0
    slwi    r0, r27, 2
    cmplwi  r5, 0x0
    addi    r4, sp, 0xd4
    add     r0, r3, r0
    lwzx    r4, r4, r0
    beq-    branch_0x80242ad4
    lwz     r3, 0x4c(r5)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x98
    bne-    branch_0x80242ad4
    li      r0, 0x1
    b       branch_0x80242ad8

branch_0x80242ad4:
    li      r0, 0x0
branch_0x80242ad8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80242af8
    lis     r4, unk_000208ba@h
    addi    r3, r24, 0x0
    addi    r4, r4, unk_000208ba@l
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x80242b04

branch_0x80242af8:
    addi    r3, r24, 0x0
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
branch_0x80242b04:
    sth     r30, 0x14c(r24)
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    bl      decHP__6TMarioFi
    lwz     r0, 0x118(r24)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80242b28
    li      r0, 0x1
    b       branch_0x80242b2c

branch_0x80242b28:
    li      r0, 0x0
branch_0x80242b2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80242b84
    li      r23, 0x0
    b       branch_0x80242b7c

branch_0x80242b3c:
    lwz     r3, 0x3e4(r24)
    bl      damage__9TWaterGunFv
    cmpwi   r3, 0x0
    beq-    branch_0x80242b78
    lwz     r5, 0x3e4(r24)
    lwz     r4, 0x154(r24)
    lwz     r3, 0x1c90(r5)
    lwz     r0, 0x1c94(r5)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x1c98(r5)
    stw     r0, 0x78(r4)
    lwz     r3, R13Off_m0x6088(r13)
    lwz     r4, 0x154(r24)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
branch_0x80242b78:
    addi    r23, r23, 0x1
branch_0x80242b7c:
    cmpw    r23, r28
    blt+    branch_0x80242b3c
branch_0x80242b84:
    cmpwi   r29, 0x0
    ble-    branch_0x80242bac
    lwz     r0, R13Off_m0x60d8(r13)
    cmplw   r24, r0
    bne-    branch_0x80242bac
    lwz     r3, R13Off_m0x60f0(r13)
    addi    r5, r29, 0x0
    li      r4, 0x15
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x80242bac:
    cmpwi   r27, 0x3
    beq-    branch_0x80242bc4
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x2
    lfs     f1, -0x1414(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x80242bc4:
    cmpwi   r27, 0x3
    beq-    branch_0x80242d2c
    lwz     r5, 0x10(r25)
    addi    r3, sp, 0x7c
    lwz     r0, 0x14(r25)
    addi    r4, r24, 0x10
    stw     r5, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x18(r25)
    stw     r0, 0x84(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x7c(sp)
    lwz     r3, 0x80(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x84(sp)
    stw     r3, 0x98(sp)
    lfs     f0, -0x1410(r2)
    stw     r0, 0x9c(sp)
    lfs     f2, 0x94(sp)
    lfs     f1, 0x98(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x9c(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80242c54
    lwz     r3, 0x10(r24)
    lwz     r0, 0x14(r24)
    stw     r3, 0x19c(r24)
    stw     r0, 0x1a0(r24)
    lwz     r0, 0x18(r24)
    stw     r0, 0x1a4(r24)
    b       branch_0x80242cfc

branch_0x80242c54:
    addi    r3, sp, 0x94
    lfs     f30, -0x1414(r2)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x1410(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80242c88
    lfs     f0, -0x140c(r2)
    stfs    f0, 0x9c(sp)
    stfs    f0, 0x98(sp)
    stfs    f0, 0x94(sp)
    b       branch_0x80242c9c

branch_0x80242c88:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    addi    r3, sp, 0x94
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80242c9c:
    addi    r3, sp, 0x64
    addi    r4, sp, 0x94
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x64
    lfs     f1, -0x1408(r2)
    bl      __amu__Q29JGeometry8TVec3_f_Ff
    addi    r3, sp, 0xb8
    addi    r4, sp, 0x64
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r5, 0x10(r24)
    addi    r3, sp, 0x70
    lwz     r0, 0x14(r24)
    addi    r4, sp, 0xb8
    stw     r5, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x18(r24)
    stw     r0, 0x78(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x70(sp)
    lwz     r0, 0x74(sp)
    stw     r3, 0x19c(r24)
    stw     r0, 0x1a0(r24)
    lwz     r0, 0x78(sp)
    stw     r0, 0x1a4(r24)
branch_0x80242cfc:
    addi    r3, r24, 0x0
    addi    r5, r24, 0x19c
    li      r4, 0xb
    bl      emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_
    addi    r3, r24, 0x0
    addi    r5, r24, 0x19c
    li      r4, 0xc
    bl      emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_
    addi    r3, r24, 0x0
    addi    r5, r24, 0x19c
    li      r4, 0xa
    bl      emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_
branch_0x80242d2c:
    lha     r0, 0x120(r24)
    cmpwi   r0, 0x0
    ble-    branch_0x80242d74
    cmpwi   r26, 0x1
    ble-    branch_0x80242d50
    addi    r3, r24, 0x0
    li      r4, 0x7830
    bl      startVoice__6TMarioFUl
    b       branch_0x80242d74

branch_0x80242d50:
    cmpwi   r27, 0x0
    bne-    branch_0x80242d68
    addi    r3, r24, 0x0
    li      r4, 0x783b
    bl      startVoice__6TMarioFUl
    b       branch_0x80242d74

branch_0x80242d68:
    addi    r3, r24, 0x0
    li      r4, 0x7833
    bl      startVoice__6TMarioFUl
branch_0x80242d74:
    lfs     f0, 0x134(r24)
    mr      r3, r24
    fadds   f0, f0, f31
    stfs    f0, 0x134(r24)
    bl      dirtyLimitCheck__6TMarioFv
branch_0x80242d88:
    lmw     r23, 0x11c(sp)
    lwz     r0, 0x154(sp)
    lfd     f31, 0x148(sp)
    lfd     f30, 0x140(sp)
    mtlr    r0
    addi    sp, sp, 0x150
    blr


.globl __amu__Q29JGeometry8TVec3_f_Ff
__amu__Q29JGeometry8TVec3_f_Ff: # 0x80242da4
    lfs     f0, 0x0(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r3)
    blr


.globl __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
__ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_: # 0x80242dcc
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r3)
    blr


.globl calcDamagePos__6TMarioFRCQ29JGeometry8TVec3_f_
calcDamagePos__6TMarioFRCQ29JGeometry8TVec3_f_: # 0x80242de8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r3, sp, 0x3c
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r4)
    addi    r4, r31, 0x10
    stw     r0, 0x44(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x70(sp)
    lfs     f0, -0x1410(r2)
    stw     r0, 0x74(sp)
    lfs     f2, 0x6c(sp)
    lfs     f1, 0x70(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x74(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80242e84
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x19c(r31)
    stw     r0, 0x1a0(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1a4(r31)
    b       branch_0x80242f4c

branch_0x80242e84:
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80242ea4
    lfs     f0, -0x140c(r2)
    stfs    f0, 0x74(sp)
    stfs    f0, 0x70(sp)
    stfs    f0, 0x6c(sp)
    b       branch_0x80242ed4

branch_0x80242ea4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x1414(r2)
    lfs     f0, 0x6c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x70(sp)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x74(sp)
branch_0x80242ed4:
    lwz     r0, 0x6c(sp)
    addi    r3, sp, 0x20
    lwz     r4, 0x70(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x74(sp)
    stw     r4, 0x24(sp)
    lfs     f1, -0x1408(r2)
    stw     r0, 0x28(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x20(sp)
    addi    r3, sp, 0x2c
    lwz     r5, 0x24(sp)
    addi    r4, sp, 0x48
    stw     r0, 0x48(sp)
    lwz     r0, 0x28(sp)
    stw     r5, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r5, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x34(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0x19c(r31)
    stw     r0, 0x1a0(r31)
    lwz     r0, 0x34(sp)
    stw     r0, 0x1a4(r31)
branch_0x80242f4c:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl floorDamageExec__6TMarioFRCQ26TMario8TEParams
floorDamageExec__6TMarioFRCQ26TMario8TEParams: # 0x80242f60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80243020
    lhz     r4, 0x96(r31)
    addi    r9, r29, 0x90
    lwz     r0, R13Off_m0x5eac(r13)
    addi    r10, r29, 0x7c
    lwz     r5, R13Off_m0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0x10(r31)
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    addi    r8, r29, 0x54
    addi    r11, r29, 0x68
    fadds   f0, f1, f0
    addi    r7, r29, 0x40
    addi    r30, r29, 0x2c
    mr      r3, r31
    stfs    f0, 0x484(r31)
    addi    r4, r31, 0x474
    lhz     r5, 0x96(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fadds   f0, f1, f0
    stfs    f0, 0x48c(r31)
    lwz     r12, 0x0(r31)
    lbz     r5, 0x18(r29)
    lwz     r12, 0xdc(r12)
    lbz     r6, 0x0(r30)
    mtlr    r12
    lbz     r7, 0x0(r7)
    lfs     f1, 0x0(r11)
    lbz     r8, 0x0(r8)
    lfs     f2, 0x0(r10)
    lha     r9, 0x0(r9)
    blrl
branch_0x80243020:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl floorDamageExec__6TMarioFiiii
floorDamageExec__6TMarioFiiii: # 0x8024303c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    bl      isInvincible__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802430e8
    lhz     r4, 0x96(r27)
    mr      r3, r27
    lwz     r0, R13Off_m0x5eac(r13)
    mr      r5, r28
    lwz     r6, R13Off_m0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0x10(r27)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    fadds   f0, f1, f0
    addi    r8, r31, 0x0
    addi    r4, r27, 0x474
    li      r9, 0x3c
    stfs    f0, 0x484(r27)
    lhz     r10, 0x96(r27)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r11, R13Off_m0x5ea4(r13)
    sraw    r0, r10, r0
    lfs     f1, 0x18(r27)
    slwi    r0, r0, 2
    lfsx    f0, r11, r0
    fadds   f0, f1, f0
    stfs    f0, 0x48c(r27)
    lwz     r12, 0x0(r27)
    lfs     f1, -0x1400(r2)
    lwz     r12, 0xdc(r12)
    lfs     f2, -0x140c(r2)
    mtlr    r12
    blrl
branch_0x802430e8:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl loserExec__6TMarioFv
loserExec__6TMarioFv: # 0x802430fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x24e0
    beq-    branch_0x80243238
    cmplwi  r0, 0x1313
    beq-    branch_0x80243238
    cmplwi  r0, 0x24e1
    beq-    branch_0x80243238
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x192a
    beq-    branch_0x80243238
    lwz     r3, 0x118(r31)
    li      r0, 0x0
    li      r4, 0x480c
    ori     r3, r3, 0x400
    stw     r3, 0x118(r31)
    sth     r0, 0x120(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80243178
    li      r3, 0x480c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80243178:
    lwz     r3, 0x4dc(r31)
    bl      stop__13JAIAnimeSoundFv
    lwz     r3, 0x3f0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80243190
    bl      kill__6TYoshiFv
branch_0x80243190:
    lwz     r3, 0x7c(r31)
    rlwinm. r0, r3, 0, 18, 18
    beq-    branch_0x802431a4
    li      r0, 0x1
    b       branch_0x802431a8

branch_0x802431a4:
    li      r0, 0x0
branch_0x802431a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x802431f8
    lfs     f1, 0x12c(r31)
    lfs     f0, -0x1414(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802431dc
    lis     r4, unk_000224e0@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000224e0@l
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80243238

branch_0x802431dc:
    lis     r4, unk_000224e1@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000224e1@l
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80243238

branch_0x802431f8:
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x338
    bne-    branch_0x80243220
    lis     r4, unk_00021313@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_00021313@l
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80243238

branch_0x80243220:
    lis     r4, unk_1000192a@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_1000192a@l
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80243238:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl normalizeNozzle__6TMarioFv
normalizeNozzle__6TMarioFv: # 0x8024324c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80243274
    li      r0, 0x1
    b       branch_0x80243278

branch_0x80243274:
    li      r0, 0x0
branch_0x80243278:
    clrlwi. r0, r0, 24
    beq-    branch_0x802432a0
    lwz     r3, 0x3e4(r31)
    li      r4, 0x0
    li      r5, 0x1
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
    li      r0, -0x1
    stw     r0, 0x144(r31)
    li      r0, 0x0
    stw     r0, 0x148(r31)
branch_0x802432a0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl resetNozzle__6TMarioFv
resetNozzle__6TMarioFv: # 0x802432b4
    blr


.globl trampleExec__6TMarioFP9THitActor
trampleExec__6TMarioFP9THitActor: # 0x802432b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x58(sp)
    mr      r30, r3
    stw     r29, 0x54(sp)
    lwz     r3, 0x7c(r3)
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x802432ec
    li      r0, 0x1
    b       branch_0x802432f0

branch_0x802432ec:
    li      r0, 0x0
branch_0x802432f0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80243300
    li      r3, 0x0
    b       branch_0x80243534

branch_0x80243300:
    cmplwi  r3, 0x891
    bne-    branch_0x80243310
    li      r3, 0x0
    b       branch_0x80243534

branch_0x80243310:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8024333c
    li      r3, 0x0
    b       branch_0x80243534

branch_0x8024333c:
    lwz     r0, 0x7c(r30)
    cmplwi  r0, 0x888
    bne-    branch_0x80243360
    addi    r3, r30, 0x0
    li      r4, 0x883
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802433ec

branch_0x80243360:
    lhz     r0, 0xfa(r30)
    cmpwi   r0, 0xd1
    beq-    branch_0x8024337c
    blt-    branch_0x802433b4
    cmpwi   r0, 0xd4
    bge-    branch_0x802433b4
    b       branch_0x80243390

branch_0x8024337c:
    lfs     f1, -0x1414(r2)
    addi    r3, r30, 0x0
    li      r4, 0xd2
    bl      setAnimation__6TMarioFif
    b       branch_0x802433c4

branch_0x80243390:
    lfs     f1, -0x1414(r2)
    addi    r3, r30, 0x0
    li      r4, 0xd3
    bl      setAnimation__6TMarioFif
    lwz     r3, 0x3a8(r30)
    lfs     f0, -0x140c(r2)
    lwz     r3, 0xc(r3)
    stfs    f0, 0x10(r3)
    b       branch_0x802433c4

branch_0x802433b4:
    lfs     f1, -0x1414(r2)
    addi    r3, r30, 0x0
    li      r4, 0xd1
    bl      setAnimation__6TMarioFif
branch_0x802433c4:
    lis     r29, unk_02000890@h
    addi    r3, r30, 0x0
    addi    r4, r29, unk_02000890@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    addi    r3, r30, 0x0
    addi    r4, r29, 0x890
    li      r5, 0x0
    bl      setStatusToJumping__6TMarioFUlUl
branch_0x802433ec:
    lwz     r0, R13Off_m0x60d8(r13)
    lha     r5, 0x27d0(r30)
    cmplw   r30, r0
    bne-    branch_0x8024340c
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x8024340c:
    lwz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 5, 5
    beq-    branch_0x80243420
    li      r0, 0x1
    b       branch_0x80243424

branch_0x80243420:
    li      r0, 0x0
branch_0x80243424:
    clrlwi. r0, r0, 24
    beq-    branch_0x80243468
    lfs     f0, -0x1404(r2)
    addi    r5, r30, 0x0
    addi    r4, r30, 0x10
    stfs    f0, 0x40(sp)
    addi    r6, sp, 0x40
    li      r3, 0x8
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    addi    r5, r30, 0x0
    addi    r4, r30, 0x10
    addi    r6, sp, 0x40
    li      r3, 0x9
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    b       branch_0x8024348c

branch_0x80243468:
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      emitParticle__6TMarioFi
    addi    r3, r30, 0x0
    li      r4, 0x8
    bl      emitParticle__6TMarioFi
    addi    r3, r30, 0x0
    li      r4, 0x9
    bl      emitParticle__6TMarioFi
branch_0x8024348c:
    lwz     r0, 0x78(r30)
    li      r4, 0x0
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r30)
    lwz     r3, 0x3a8(r30)
    lwz     r3, 0xc(r3)
    stb     r4, 0x4(r3)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x8
    bne-    branch_0x802434bc
    li      r4, 0x1
branch_0x802434bc:
    clrlwi. r0, r4, 24
    bne-    branch_0x80243530
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xa
    bne-    branch_0x802434d8
    li      r0, 0x1
    b       branch_0x802434dc

branch_0x802434d8:
    li      r0, 0x0
branch_0x802434dc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80243530
    mr      r3, r30
    bl      getTrampleCt__6TMarioFv
    lwz     r0, R13Off_m0x6044(r13)
    addi    r29, r3, 0x0
    li      r4, 0x1818
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80243530
    lfs     f1, -0x140c(r2)
    addi    r6, r29, 0x0
    addi    r4, r30, 0x10
    li      r3, 0x1818
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80243530:
    li      r3, 0x1
branch_0x80243534:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl canTake__6TMarioFP9THitActor
canTake__6TMarioFP9THitActor: # 0x80243550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    lwz     r5, 0x4fc(r3)
    lwz     r0, 0xd0(r5)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80243584
    bl      isTakeSituation__6TMarioFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x80243584
    li      r31, 0x1
branch_0x80243584:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl isTakeSituation__6TMarioFP9THitActor
isTakeSituation__6TMarioFP9THitActor: # 0x8024359c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x58(sp)
    mr      r30, r3
    lha     r0, 0x14c(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802435cc
    li      r3, 0x0
    b       branch_0x80243784

branch_0x802435cc:
    lwz     r3, 0x7c(r30)
    clrrwi. r0, r3, 31
    beq-    branch_0x802435e0
    li      r0, 0x1
    b       branch_0x802435e4

branch_0x802435e0:
    li      r0, 0x0
branch_0x802435e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802435f4
    li      r3, 0x0
    b       branch_0x80243784

branch_0x802435f4:
    rlwinm. r0, r3, 0, 3, 3
    beq-    branch_0x80243604
    li      r0, 0x1
    b       branch_0x80243608

branch_0x80243604:
    li      r0, 0x0
branch_0x80243608:
    clrlwi. r0, r0, 24
    beq-    branch_0x80243618
    li      r3, 0x0
    b       branch_0x80243784

branch_0x80243618:
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x456
    bne-    branch_0x8024362c
    li      r3, 0x0
    b       branch_0x80243784

branch_0x8024362c:
    mr      r3, r30
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80243644
    li      r3, 0x0
    b       branch_0x80243784

branch_0x80243644:
    lwz     r0, 0x380(r30)
    cmplwi  r0, 0x5
    bne-    branch_0x80243658
    li      r0, 0x1
    b       branch_0x8024365c

branch_0x80243658:
    li      r0, 0x0
branch_0x8024365c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024366c
    li      r3, 0x0
    b       branch_0x80243784

branch_0x8024366c:
    lwz     r0, 0x6c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80243680
    li      r3, 0x0
    b       branch_0x80243784

branch_0x80243680:
    lwz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80243694
    li      r3, 0x0
    b       branch_0x80243784

branch_0x80243694:
    lfs     f3, 0x10(r31)
    lfs     f2, 0x10(r30)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x18(r30)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    lha     r4, 0x96(r30)
    extsh   r0, r3
    subf    r0, r4, r0
    extsh   r0, r0
    cmpwi   r0, -0x2aaa
    bgt-    branch_0x802436d0
    li      r3, 0x0
    b       branch_0x80243784

branch_0x802436d0:
    cmpwi   r0, 0x2aaa
    blt-    branch_0x802436e0
    li      r3, 0x0
    b       branch_0x80243784

branch_0x802436e0:
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x40(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lwz     r0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x48(sp)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x48(sp)
    lfs     f2, 0x4c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x50(r30)
    lfs     f0, 0x58(r31)
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    ble-    branch_0x80243780
    li      r3, 0x0
    b       branch_0x80243784

branch_0x80243780:
    li      r3, 0x1
branch_0x80243784:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl dropObject__6TMarioFv
dropObject__6TMarioFv: # 0x8024379c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x6c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802437dc
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x7
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x6c(r31)
branch_0x802437dc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getAttackAngle__6TMarioFPC9THitActor
getAttackAngle__6TMarioFPC9THitActor: # 0x802437f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f3, 0x10(r4)
    lfs     f2, 0x10(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x18(r3)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl decHP__6TMarioFi
decHP__6TMarioFi: # 0x80243828
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80243870
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80243864
    li      r0, 0x1
    b       branch_0x80243868

branch_0x80243864:
    li      r0, 0x0
branch_0x80243868:
    clrlwi. r0, r0, 24
    beq-    branch_0x802438e8
branch_0x80243870:
    xoris   r0, r31, 0x8000
    lfd     f1, -0x13f8(r2)
    stw     r0, 0x1c(sp)
    lis     r0, unk_43300000@h
    lfs     f2, 0x12c(r30)
    addi    r31, r0, unk_43300000@l
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fsubs   f0, f2, f0
    stfs    f0, 0x12c(r30)
branch_0x8024389c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      bubbleFromMouth__6TMarioFi
    addi    r31, r31, 0x1
    cmpwi   r31, 0xa
    blt+    branch_0x8024389c
    lfs     f1, 0x12c(r30)
    lfs     f0, -0x1414(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80243910
    mr      r3, r30
    bl      loserExec__6TMarioFv
    lis     r4, unk_000224e0@h
    addi    r3, r30, 0x0
    addi    r4, r4, unk_000224e0@l
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80243910

branch_0x802438e8:
    lha     r0, 0x120(r30)
    subf    r0, r31, r0
    sth     r0, 0x120(r30)
    lha     r0, 0x120(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x80243910
    li      r0, 0x0
    sth     r0, 0x120(r30)
    mr      r3, r30
    bl      loserExec__6TMarioFv
branch_0x80243910:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl incHP__6TMarioFi
incHP__6TMarioFi: # 0x80243928
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80243970
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80243964
    li      r0, 0x1
    b       branch_0x80243968

branch_0x80243964:
    li      r0, 0x0
branch_0x80243968:
    clrlwi. r0, r0, 24
    beq-    branch_0x802439dc
branch_0x80243970:
    xoris   r0, r31, 0x8000
    lfd     f1, -0x13f8(r2)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    lfs     f2, 0x12c(r30)
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    fadds   f0, f2, f0
    stfs    f0, 0x12c(r30)
    lfs     f0, 0x12c(r30)
    lfs     f1, 0x130(r30)
    fcmpo   cr0, f0, f1
    ble-    branch_0x802439b0
    stfs    f1, 0x12c(r30)
    b       branch_0x80243a28

branch_0x802439b0:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4801
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80243a28
    li      r3, 0x4801
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x80243a28

branch_0x802439dc:
    lha     r0, 0x120(r30)
    add     r0, r0, r31
    sth     r0, 0x120(r30)
    lha     r0, 0x120(r30)
    lha     r3, 0x58c(r30)
    cmpw    r0, r3
    ble-    branch_0x80243a00
    sth     r3, 0x120(r30)
    b       branch_0x80243a28

branch_0x80243a00:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4801
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80243a28
    li      r3, 0x4801
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80243a28:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl rumbleStart__6TMarioFii
rumbleStart__6TMarioFii: # 0x80243a40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x60d8(r13)
    cmplw   r3, r0
    bne-    branch_0x80243a64
    lwz     r3, R13Off_m0x60f0(r13)
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x80243a64:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __sinit_MarioCollision_cpp
__sinit_MarioCollision_cpp: # 0x80243a74
    mflr    r0
    lis     r3, unk_803fb590@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fb590@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80243abc
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80243abc:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80243aec
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80243aec:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80243b1c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80243b1c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80243b4c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80243b4c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80243b7c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80243b7c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80243bac
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80243bac:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80243bdc
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80243bdc:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80243c0c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80243c0c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80243c3c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80243c3c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80243c6c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80243c6c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80243c9c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80243c9c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80243ccc
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80243ccc:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80243cfc
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80243cfc:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80243d2c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80243d2c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80243d5c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80243d5c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

