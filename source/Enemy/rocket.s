
.globl __dt__16TNerveRocketWaitFv
__dt__16TNerveRocketWaitFv: # 0x8010a67c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010a6c0
    lis     r3, 0x803c
    subi    r0, r3, 0x3490
    stw     r0, 0x0(r31)
    beq-    branch_0x8010a6b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8010a6b0:
    extsh.  r0, r4
    ble-    branch_0x8010a6c0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010a6c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveRocketWaitCFP24TSpineBase_10TLiveActor_
execute__16TNerveRocketWaitCFP24TSpineBase_10TLiveActor_: # 0x8010a6d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010a714
    lwz     r0, 0xf0(r3)
    li      r4, 0x3
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8010a714:
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__15TNerveRocketFlyCFP24TSpineBase_10TLiveActor_
execute__15TNerveRocketFlyCFP24TSpineBase_10TLiveActor_: # 0x8010a728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010a8a4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    bl      SMS_GetMarioWaterGun__Fv
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    lwz     r5, 0x1a4(r31)
    li      r4, 0x1
    lfs     f0, 0x0(r3)
    li      r0, 0x0
    lfs     f1, 0x2e4(r5)
    fmuls   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f0, 0x10(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f0, 0x20(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lwz     r5, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r5, 0xac(r31)
    stw     r3, 0xb0(r31)
    lwz     r3, 0xa4(sp)
    stw     r3, 0xb4(r31)
    lwz     r3, 0xf0(r31)
    ori     r3, r3, 0x80
    stw     r3, 0xf0(r31)
    lwz     r3, 0x70(r31)
    stb     r4, 0x60(r3)
    stb     r0, 0x1a0(r31)
    lfs     f2, -0x54f0(rtoc)
    lfs     f1, 0xa4(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8010a800
    lfs     f0, 0x9c(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x8010a7f8
    lfs     f1, -0x54ec(rtoc)
    b       branch_0x8010a87c

branch_0x8010a7f8:
    lfs     f1, -0x54e8(rtoc)
    b       branch_0x8010a87c

branch_0x8010a800:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x8010a840
    lfs     f2, 0x9c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x54d8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x54e4(rtoc)
    stw     r0, 0xac(sp)
    lis     r0, 0x4330
    stw     r0, 0xa8(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x8010a87c

branch_0x8010a840:
    fneg    f1, f1
    lfs     f2, 0x9c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x54d8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x54e4(rtoc)
    stw     r0, 0xac(sp)
    lis     r0, 0x4330
    lfs     f0, -0x54e0(rtoc)
    stw     r0, 0xa8(sp)
    lfd     f2, 0xa8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x8010a87c:
    lfs     f2, -0x54f0(rtoc)
    lfs     f3, -0x54dc(rtoc)
    bl      MsWrap_f___Ffff_8010a978
    lfs     f0, -0x54f0(rtoc)
    stfs    f0, 0x30(r31)
    stfs    f1, 0x34(r31)
    stfs    f0, 0x38(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
branch_0x8010a8a4:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8010a8b8
    li      r0, 0x1
    b       branch_0x8010a8bc

branch_0x8010a8b8:
    li      r0, 0x0
branch_0x8010a8bc:
    clrlwi. r0, r0, 24
    bne-    branch_0x8010a8dc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8010a8dc:
    lwz     r5, 0xac(r31)
    addi    r4, sp, 0x84
    lwz     r0, 0xb0(r31)
    addi    r3, sp, 0x90
    stw     r5, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x8c(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x90(sp)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    stfs    f0, 0x30(r31)
    li      r4, 0x179
    li      r6, 0x1
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r4, 0x8c(r31)
    lwz     r3, 0x1a4(r31)
    lwz     r4, 0x20(r4)
    lwz     r0, 0x30c(r3)
    cmpw    r4, r0
    ble-    branch_0x8010a94c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8010a94c:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8010a960
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
branch_0x8010a960:
    lwz     r0, 0xbc(sp)
    li      r3, 0x0
    lwz     r31, 0xb4(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl MsWrap_f___Ffff_8010a978
MsWrap_f___Ffff_8010a978: # 0x8010a978
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x8010a9b4
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x10538c, 0x8010a990 - 0x8010a98c
branch_0x8010a990:
    fsubs   f1, f1, f0
branch_0x8010a994:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x8010a990
    b       branch_0x8010a9a8

branch_0x8010a9a4:
    fadds   f1, f1, f0
branch_0x8010a9a8:
    fcmpo   cr0, f1, f2
    blt+    branch_0x8010a9a4
    blr

branch_0x8010a9b4:
    fsubs   f0, f3, f2
    b       branch_0x8010a994


.incbin "./baserom/code/Text_0x80005600.bin", 0x1053bc, 0x8010a9c0 - 0x8010a9bc

.globl __dt__15TNerveRocketFlyFv
__dt__15TNerveRocketFlyFv: # 0x8010a9c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010aa04
    lis     r3, 0x803c
    subi    r0, r3, 0x3480
    stw     r0, 0x0(r31)
    beq-    branch_0x8010a9f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8010a9f4:
    extsh.  r0, r4
    ble-    branch_0x8010aa04
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010aa04:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__27TNerveRocketPossessedNozzleCFP24TSpineBase_10TLiveActor_
execute__27TNerveRocketPossessedNozzleCFP24TSpineBase_10TLiveActor_: # 0x8010aa1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010aaf0
    lwz     r3, -0x60f0(r13)
    li      r4, 0x15
    li      r5, 0xa
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, -0x6044(r13)
    li      r4, 0x180c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8010aa88
    addi    r4, r31, 0x10
    li      r3, 0x180c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8010aa88:
    lwz     r3, -0x6044(r13)
    li      r4, 0x825
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8010aab8
    addi    r4, r31, 0x10
    li      r3, 0x825
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8010aab8:
    lwz     r3, 0x70(r31)
    li      r4, 0x0
    li      r0, 0x1
    stb     r4, 0x60(r3)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r5, 0xf0(r31)
    rlwinm  r5, r5, 0, 28, 26
    stw     r5, 0xf0(r31)
    stb     r0, 0x1a0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8010aaf0:
    addi    r3, r31, 0x0
    li      r4, 0x5
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r3, -0x6048(r13)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    lfs     f0, 0xb4(r3)
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r0, 0x94(sp)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x14
    ble-    branch_0x8010ab3c
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x1
    ble-    branch_0x8010ab3c
    lbz     r3, 0x13c(r31)
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r31)
branch_0x8010ab3c:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x8010ab50
    li      r0, 0x1
    b       branch_0x8010ab54

branch_0x8010ab50:
    li      r0, 0x0
branch_0x8010ab54:
    clrlwi. r0, r0, 24
    bne-    branch_0x8010ab9c
    lwz     r3, -0x6044(r13)
    li      r4, 0x4807
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8010ab84
    li      r3, 0x4807
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8010ab84:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8010ab9c:
    lwz     r3, -0x6048(r13)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x8010ac10
    lfs     f0, -0x54d0(rtoc)
    mr      r3, r31
    stfs    f0, 0x190(r31)
    bl      expandCollision__11TSmallEnemyFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x3
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8010abf4
    addi    r4, r31, 0x10
    li      r3, 0x3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8010abf4:
    lwz     r3, -0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x5
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    li      r0, 0x1
    b       branch_0x8010ac14

branch_0x8010ac10:
    li      r0, 0x0
branch_0x8010ac14:
    clrlwi. r0, r0, 24
    beq-    branch_0x8010ac9c
    lbz     r0, -0x6708(r13)
    extsb.  r0, r0
    bne-    branch_0x8010ac60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6704(r13)
    subi    r0, r3, 0x3480
    lis     r4, 0x8011
    stw     r0, -0x6704(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2ef4
    subi    r4, r4, 0x5640
    subi    r3, r13, 0x6704
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6708(r13)
branch_0x8010ac60:
    subi    r4, r13, 0x6704
    cmplwi  r4, 0x0
    beq-    branch_0x8010ac94
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8010ac94
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8010ac94:
    li      r3, 0x1
    b       branch_0x8010aca0

branch_0x8010ac9c:
    li      r3, 0x0
branch_0x8010aca0:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl __dt__27TNerveRocketPossessedNozzleFv
__dt__27TNerveRocketPossessedNozzleFv: # 0x8010acb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010acfc
    lis     r3, 0x803c
    subi    r0, r3, 0x3470
    stw     r0, 0x0(r31)
    beq-    branch_0x8010acec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8010acec:
    extsh.  r0, r4
    ble-    branch_0x8010acfc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010acfc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__7TRocketCFv
getBasNameTable__7TRocketCFv: # 0x8010ad14
    lis     r3, 0x803c
    subi    r3, r3, 0x34b8
    blr


.globl isAttack__7TRocketFv
isAttack__7TRocketFv: # 0x8010ad20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6708(r13)
    extsb.  r0, r0
    bne-    branch_0x8010ad78
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6704(r13)
    subi    r0, r3, 0x3480
    lis     r4, 0x8011
    stw     r0, -0x6704(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2ef4
    subi    r4, r4, 0x5640
    subi    r3, r13, 0x6704
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6708(r13)
branch_0x8010ad78:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6704
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8010ad94
    li      r3, 0x1
    b       branch_0x8010ad98

branch_0x8010ad94:
    li      r3, 0x0
branch_0x8010ad98:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl isCollidMove__7TRocketFP9THitActor
isCollidMove__7TRocketFP9THitActor: # 0x8010adac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    lbz     r0, -0x6708(r13)
    extsb.  r0, r0
    bne-    branch_0x8010ae0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6704(r13)
    subi    r0, r3, 0x3480
    lis     r4, 0x8011
    stw     r0, -0x6704(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2ef4
    subi    r4, r4, 0x5640
    subi    r3, r13, 0x6704
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6708(r13)
branch_0x8010ae0c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6704
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8010ae98
    lwz     r3, 0x4c(r31)
    rlwinm. r0, r3, 0, 4, 4
    beq-    branch_0x8010ae34
    li      r0, 0x1
    b       branch_0x8010ae38

branch_0x8010ae34:
    li      r0, 0x0
branch_0x8010ae38:
    clrlwi. r0, r0, 24
    bne-    branch_0x8010ae60
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x1f
    bne-    branch_0x8010ae54
    li      r0, 0x1
    b       branch_0x8010ae58

branch_0x8010ae54:
    li      r0, 0x0
branch_0x8010ae58:
    clrlwi. r0, r0, 24
    beq-    branch_0x8010ae98
branch_0x8010ae60:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8010ae98
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8010ae98:
    lwz     r0, 0x34(sp)
    li      r3, 0x0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl getGravityY__7TRocketCFv
getGravityY__7TRocketCFv: # 0x8010aeb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lbz     r0, -0x6708(r13)
    lfs     f31, 0xcc(r3)
    extsb.  r0, r0
    bne-    branch_0x8010af14
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6704(r13)
    subi    r0, r3, 0x3480
    lis     r4, 0x8011
    stw     r0, -0x6704(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2ef4
    subi    r4, r4, 0x5640
    subi    r3, r13, 0x6704
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6708(r13)
branch_0x8010af14:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6704
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8010af30
    lwz     r3, 0x1a4(r31)
    lfs     f31, 0x2f8(r3)
branch_0x8010af30:
    lwz     r0, 0x44(sp)
    fmr     f1, f31
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl setDeadAnm__7TRocketFv
setDeadAnm__7TRocketFv: # 0x8010af4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lwz     r5, 0x70(r3)
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x88(sp)
    lwz     r3, 0x68(r5)
    addi    r4, r3, 0x54
    lwz     r3, 0x54(r3)
    lwz     r0, 0x4(r4)
    lwz     r0, 0x8(r4)
    lwz     r4, 0x68(r5)
    lwz     r3, 0x80(sp)
    lwz     r0, 0x84(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x88(sp)
    stw     r0, 0x78(r4)
    lwz     r3, -0x6088(r13)
    lwz     r4, 0x68(r5)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8010afd8
    lwz     r3, 0x70(r31)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0x60(r3)
    stb     r0, 0x1a0(r31)
branch_0x8010afd8:
    lwz     r0, 0xf0(r31)
    li      r4, 0xc1
    li      r6, 0x0
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    li      r7, 0x0
    lwz     r5, 0x74(r31)
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x4(r5)
    addi    r5, r5, 0x20
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    li      r4, 0xc2
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r5)
    li      r7, 0x0
    addi    r5, r5, 0x20
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl bind__7TRocketFv
bind__7TRocketFv: # 0x8010b038
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    mr      r30, r3
    stw     r29, 0xb4(sp)
    lwz     r0, 0xf0(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x2ee8
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x8010b264
    lbz     r0, -0x6710(r13)
    extsb.  r0, r0
    bne-    branch_0x8010b0a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x670c(r13)
    subi    r0, r3, 0x3470
    lis     r3, 0x8011
    stw     r0, -0x670c(r13)
    subi    r4, r3, 0x5348
    subi    r3, r13, 0x670c
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6710(r13)
branch_0x8010b0a8:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x670c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8010b110
    lbz     r0, -0x6708(r13)
    extsb.  r0, r0
    bne-    branch_0x8010b0fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6704(r13)
    subi    r0, r3, 0x3480
    lis     r3, 0x8011
    stw     r0, -0x6704(r13)
    subi    r4, r3, 0x5640
    subi    r3, r13, 0x6704
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6708(r13)
branch_0x8010b0fc:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6704
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8010b25c
branch_0x8010b110:
    lfs     f1, 0x148(r30)
    li      r29, 0x1
    lfs     f0, 0x14c(r30)
    li      r0, 0x0
    lfs     f3, 0x18(r30)
    lfs     f2, 0x14(r30)
    fmuls   f1, f1, f0
    lfs     f0, 0x10(r30)
    addi    r4, sp, 0x84
    lwz     r3, -0x6328(r13)
    stfs    f0, 0x84(sp)
    stfs    f2, 0x88(sp)
    stfs    f3, 0x8c(sp)
    stfs    f1, 0x90(sp)
    stw     r29, 0x94(sp)
    stw     r0, 0x9c(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x8010b1a0
    lwz     r3, 0xa0(sp)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8010b188
    mr      r3, r0
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8010b188:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x8010b264

branch_0x8010b1a0:
    lbz     r0, -0x6708(r13)
    extsb.  r0, r0
    bne-    branch_0x8010b1dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6704(r13)
    subi    r0, r3, 0x3480
    lis     r3, 0x8011
    stw     r0, -0x6704(r13)
    subi    r4, r3, 0x5640
    subi    r3, r13, 0x6704
    addi    r5, r31, 0xc
    bl      __register_global_object
    stb     r29, -0x6708(r13)
branch_0x8010b1dc:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6704
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8010b264
    mr      r3, r30
    bl      bind__10TLiveActorFv
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8010b20c
    li      r0, 0x1
    b       branch_0x8010b210

branch_0x8010b20c:
    li      r0, 0x0
branch_0x8010b210:
    cmpwi   r0, 0x0
    bne-    branch_0x8010b264
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8010b244
    mr      r3, r0
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8010b244:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x8010b264

branch_0x8010b25c:
    mr      r3, r30
    bl      bind__10TLiveActorFv
branch_0x8010b264:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    addi    sp, sp, 0xc0
    blr


.globl behaveToWater__7TRocketFP9THitActor
behaveToWater__7TRocketFP9THitActor: # 0x8010b280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl attackToMario__7TRocketFv
attackToMario__7TRocketFv: # 0x8010b2ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6700(r13)
    extsb.  r0, r0
    bne-    branch_0x8010b304
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66fc(r13)
    subi    r0, r3, 0x3490
    lis     r4, 0x8011
    stw     r0, -0x66fc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2f00
    subi    r4, r4, 0x5984
    subi    r3, r13, 0x66fc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6700(r13)
branch_0x8010b304:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x66fc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8010b3c4
    lwz     r3, 0x70(r31)
    lbz     r0, 0x60(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8010b3c4
    lbz     r0, -0x6710(r13)
    extsb.  r0, r0
    bne-    branch_0x8010b36c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x670c(r13)
    subi    r0, r3, 0x3470
    lis     r4, 0x8011
    stw     r0, -0x670c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2ee8
    subi    r4, r4, 0x5348
    subi    r3, r13, 0x670c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6710(r13)
branch_0x8010b36c:
    subi    r6, r13, 0x670c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x8010b3c4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8010b3b8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8010b3b8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8010b3b8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8010b3c4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl reset__7TRocketFv
reset__7TRocketFv: # 0x8010b3d8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stb     r0, 0x1a0(r3)
    bl      reset__11TSmallEnemyFv
    lbz     r0, 0x1a1(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8010b41c
    lwz     r3, 0x194(r31)
    lwz     r0, 0x198(r31)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x19c(r31)
    stw     r0, 0x18(r31)
branch_0x8010b41c:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lbz     r0, -0x6700(r13)
    extsb.  r0, r0
    bne-    branch_0x8010b484
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66fc(r13)
    subi    r0, r3, 0x3490
    lis     r4, 0x8011
    stw     r0, -0x66fc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2f00
    subi    r4, r4, 0x5984
    subi    r3, r13, 0x66fc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6700(r13)
branch_0x8010b484:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x66fc
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setMActorAndKeeper__7TRocketFv
setMActorAndKeeper__7TRocketFv: # 0x8010b4b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8010b4f0
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8010b4f0:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x3dd0
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcRootMatrix__7TRocketFv
calcRootMatrix__7TRocketFv: # 0x8010b524
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stfd    f30, 0x110(sp)
    stfd    f29, 0x108(sp)
    stw     r31, 0x104(sp)
    mr      r31, r3
    stw     r30, 0x100(sp)
    lbz     r0, 0x1a0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8010b874
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    lbz     r0, -0x6708(r13)
    extsb.  r0, r0
    bne-    branch_0x8010b5b8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6704(r13)
    subi    r0, r3, 0x3480
    lis     r4, 0x8011
    stw     r0, -0x6704(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2ef4
    subi    r4, r4, 0x5640
    subi    r3, r13, 0x6704
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6708(r13)
branch_0x8010b5b8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6704
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8010b5f0
    lfs     f29, 0x18(r31)
    addi    r3, sp, 0xd0
    lfs     f30, 0x14(r31)
    lfs     f31, 0x10(r31)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0xdc(sp)
    stfs    f30, 0xec(sp)
    stfs    f29, 0xfc(sp)
    b       branch_0x8010b830

branch_0x8010b5f0:
    bl      SMS_GetMarioWaterGun__Fv
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    addi    r4, sp, 0xd0
    bl      PSMTXCopy
    lfs     f0, 0xd0(sp)
    stfs    f0, 0xac(sp)
    lfs     f0, 0xe0(sp)
    stfs    f0, 0xb0(sp)
    lfs     f0, 0xf0(sp)
    stfs    f0, 0xb4(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0xb0(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xb4(sp)
    fmuls   f0, f0, f0
    lfs     f1, -0x54f0(rtoc)
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8010b650
    b       branch_0x8010b674

branch_0x8010b650:
    frsqrte f4, f0
    lfs     f3, -0x54cc(rtoc)
    lfs     f1, -0x54c8(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f1, f0, f2, f1
    fmuls   f1, f3, f1
    fmuls   f0, f0, f1
branch_0x8010b674:
    lfs     f1, 0xd4(sp)
    stfs    f1, 0xb8(sp)
    lfs     f1, 0xe4(sp)
    stfs    f1, 0xbc(sp)
    lfs     f1, 0xf4(sp)
    stfs    f1, 0xc0(sp)
    lfs     f2, 0xb8(sp)
    lfs     f1, 0xbc(sp)
    fmuls   f3, f2, f2
    lfs     f4, 0xc0(sp)
    fmuls   f1, f1, f1
    lfs     f2, -0x54f0(rtoc)
    fmuls   f4, f4, f4
    fadds   f1, f3, f1
    fadds   f1, f4, f1
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x8010b6c0
    b       branch_0x8010b6e4

branch_0x8010b6c0:
    frsqrte f5, f1
    lfs     f4, -0x54cc(rtoc)
    lfs     f2, -0x54c8(rtoc)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f2, f1, f3, f2
    fmuls   f2, f4, f2
    fmuls   f1, f1, f2
branch_0x8010b6e4:
    lfs     f2, 0xd8(sp)
    stfs    f2, 0xc4(sp)
    lfs     f2, 0xe8(sp)
    stfs    f2, 0xc8(sp)
    lfs     f2, 0xf8(sp)
    stfs    f2, 0xcc(sp)
    lfs     f3, 0xc4(sp)
    lfs     f2, 0xc8(sp)
    fmuls   f4, f3, f3
    lfs     f5, 0xcc(sp)
    fmuls   f3, f2, f2
    lfs     f2, -0x54f0(rtoc)
    fmuls   f5, f5, f5
    fadds   f3, f4, f3
    fadds   f6, f5, f3
    fcmpo   cr0, f6, f2
    cror    2, 0, 2
    bne-    branch_0x8010b730
    b       branch_0x8010b754

branch_0x8010b730:
    frsqrte f5, f6
    lfs     f4, -0x54cc(rtoc)
    lfs     f2, -0x54c8(rtoc)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f2, f6, f3, f2
    fmuls   f2, f4, f2
    fmuls   f6, f6, f2
branch_0x8010b754:
    lfs     f2, -0x54f0(rtoc)
    fcmpu   cr0, f2, f6
    beq-    branch_0x8010b784
    lfs     f2, 0xd0(sp)
    fdivs   f2, f2, f0
    stfs    f2, 0xd0(sp)
    lfs     f2, 0xe0(sp)
    fdivs   f2, f2, f0
    stfs    f2, 0xe0(sp)
    lfs     f2, 0xf0(sp)
    fdivs   f2, f2, f0
    stfs    f2, 0xf0(sp)
branch_0x8010b784:
    lfs     f2, -0x54f0(rtoc)
    fcmpu   cr0, f2, f0
    beq-    branch_0x8010b7b4
    lfs     f0, 0xd4(sp)
    fdivs   f0, f0, f1
    stfs    f0, 0xd4(sp)
    lfs     f0, 0xe4(sp)
    fdivs   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f0, 0xf4(sp)
    fdivs   f0, f0, f1
    stfs    f0, 0xf4(sp)
branch_0x8010b7b4:
    lfs     f0, -0x54f0(rtoc)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8010b7e4
    lfs     f0, 0xd8(sp)
    fdivs   f0, f0, f6
    stfs    f0, 0xd8(sp)
    lfs     f0, 0xe8(sp)
    fdivs   f0, f0, f6
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xf8(sp)
    fdivs   f0, f0, f6
    stfs    f0, 0xf8(sp)
branch_0x8010b7e4:
    lfs     f29, -0x7d44(r13)
    addi    r3, sp, 0x70
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f29, 0x7c(sp)
    addi    r3, sp, 0xd0
    lfs     f0, -0x54f0(rtoc)
    addi    r5, r3, 0x0
    addi    r4, sp, 0x70
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x9c(sp)
    bl      PSMTXConcat
    lfs     f0, 0xdc(sp)
    stfs    f0, 0x10(r31)
    lfs     f1, 0xec(sp)
    lfs     f0, -0x7d40(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f0, 0xfc(sp)
    stfs    f0, 0x18(r31)
branch_0x8010b830:
    lfs     f1, -0x6718(r13)
    addi    r3, sp, 0x40
    lfs     f2, -0x7d48(r13)
    lfs     f3, -0x6714(r13)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, sp, 0xd0
    addi    r5, r3, 0x0
    addi    r4, sp, 0x40
    bl      PSMTXConcat
    addi    r30, sp, 0xd0
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x8010b87c

branch_0x8010b874:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x8010b87c:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8010b890
    li      r0, 0x1
    b       branch_0x8010b894

branch_0x8010b890:
    li      r0, 0x0
branch_0x8010b894:
    clrlwi. r0, r0, 24
    beq-    branch_0x8010b8cc
    lwz     r3, -0x6044(r13)
    li      r4, 0x3
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8010b8cc
    addi    r4, r31, 0x10
    li      r3, 0x3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8010b8cc:
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lfd     f30, 0x110(sp)
    mtlr    r0
    lfd     f29, 0x108(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    addi    sp, sp, 0x120
    blr


.globl init__7TRocketFP12TLiveManager
init__7TRocketFP12TLiveManager: # 0x8010b8f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      init__11TSmallEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x2b
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1a4(r31)
    lbz     r0, -0x6700(r13)
    extsb.  r0, r0
    bne-    branch_0x8010b978
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66fc(r13)
    subi    r0, r3, 0x3490
    lis     r4, 0x8011
    stw     r0, -0x66fc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2f00
    subi    r4, r4, 0x5984
    subi    r3, r13, 0x66fc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6700(r13)
branch_0x8010b978:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x66fc
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x800
    stw     r0, 0x64(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__7TRocketFR20JSUMemoryInputStream
load__7TRocketFR20JSUMemoryInputStream: # 0x8010b9b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    lwz     r5, 0x10(r31)
    li      r0, 0x1
    lwz     r4, 0x14(r31)
    mr      r3, r31
    stw     r5, 0x194(r31)
    stw     r4, 0x198(r31)
    lwz     r4, 0x18(r31)
    stw     r4, 0x19c(r31)
    stb     r0, 0x1a1(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__7TRocketFPCc
__ct__7TRocketFPCc: # 0x8010ba18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x3460
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stb     r0, 0x1a0(r31)
    stb     r0, 0x1a1(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__14TRocketManagerFUlPQ26JDrama9TGraphics
perform__14TRocketManagerFUlPQ26JDrama9TGraphics: # 0x8010ba68
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x8010baf8
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8010bac4

branch_0x8010ba98:
    lwz     r3, 0x18(r27)
    lwzx    r3, r3, r31
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8010babc
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x8010babc:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8010bac4:
    lwz     r3, 0x38(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x8010bad8
    lwz     r3, 0x14(r27)
    b       branch_0x8010baf0

branch_0x8010bad8:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r27)
    cmpw    r0, r3
    ble-    branch_0x8010baec
    b       branch_0x8010baf0

branch_0x8010baec:
    mr      r3, r0
branch_0x8010baf0:
    cmpw    r30, r3
    blt+    branch_0x8010ba98
branch_0x8010baf8:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl createModelData__14TRocketManagerFv
createModelData__14TRocketManagerFv: # 0x8010bb1c
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x34a8
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initSetEnemies__14TRocketManagerFv
initSetEnemies__14TRocketManagerFv: # 0x8010bb50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stmw    r25, 0x5c(sp)
    mr      r27, r3
    li      r29, 0x0
    li      r26, 0x0
    lis     r31, 0x4330
    lfd     f29, -0x54d8(rtoc)
    lfs     f30, -0x54bc(rtoc)
    lfs     f31, -0x54b8(rtoc)
    b       branch_0x8010bc88

branch_0x8010bb8c:
    lwz     r3, -0x70b0(r13)
    subi    r4, rtoc, 0x54c4
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x18(r27)
    mr      r30, r3
    lwzx    r3, r4, r26
    lwz     r0, 0xf0(r3)
    addi    r28, r3, 0x0
    clrlwi. r0, r0, 31
    beq-    branch_0x8010bc80
    mr      r3, r30
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8010bc80
    lwz     r3, 0x8(r30)
    li      r0, 0x0
    stw     r0, 0x38(sp)
    stw     r3, 0x3c(sp)
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    subf    r25, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x38(sp)
    stw     r0, 0x54(sp)
    xoris   r0, r25, 0x8000
    lwz     r5, 0x0(r30)
    addi    r4, sp, 0x28
    stw     r31, 0x50(sp)
    stw     r0, 0x4c(sp)
    lfd     f0, 0x50(sp)
    stw     r31, 0x48(sp)
    fsubs   f1, f0, f29
    lfd     f0, 0x48(sp)
    fmuls   f1, f30, f1
    fsubs   f0, f0, f29
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    add     r0, r3, r0
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r4, 0x28(sp)
    mr      r3, r28
    lwz     r0, 0x2c(sp)
    stw     r4, 0x10(r28)
    stw     r0, 0x14(r28)
    lwz     r0, 0x30(sp)
    stw     r0, 0x18(r28)
    lfs     f0, 0x14(r28)
    fadds   f0, f0, f31
    stfs    f0, 0x14(r28)
    lwz     r0, 0xf0(r28)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r28)
    lwz     r12, 0x0(r28)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x8010bc80:
    addi    r29, r29, 0x1
    addi    r26, r26, 0x4
branch_0x8010bc88:
    lwz     r0, 0x14(r27)
    cmpw    r29, r0
    blt+    branch_0x8010bb8c
    lmw     r25, 0x5c(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    addi    sp, sp, 0x90
    blr


.globl createEnemyInstance__14TRocketManagerFv
createEnemyInstance__14TRocketManagerFv: # 0x8010bcb4
    mflr    r0
    li      r3, 0x1a8
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8010bd04
    lis     r4, 0x8038
    addi    r3, r31, 0x0
    addi    r4, r4, 0x3ddc
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x3460
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    stb     r0, 0x1a0(r31)
    stb     r0, 0x1a1(r31)
branch_0x8010bd04:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__14TRocketManagerFv
loadAfter__14TRocketManagerFv: # 0x8010bd1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__14TRocketManagerFR20JSUMemoryInputStream
load__14TRocketManagerFR20JSUMemoryInputStream: # 0x8010bd3c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r29, r3, 0x0
    addi    r31, r5, 0x3cf0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x310
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8010be30
    stw     r28, 0x10(sp)
    addi    r4, r31, 0xf8
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r31, 0x10c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r30, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x10c
    addi    r4, r30, 0x0
    addi    r3, r30, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r26, r3, 0x42c4
    stw     r26, 0x2d4(r30)
    lis     r3, 0x803b
    subi    r27, r3, 0x42d0
    lfs     f0, -0x54b4(rtoc)
    addi    r3, r31, 0x11c
    stfs    f0, 0x2e4(r30)
    stw     r27, 0x2d4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x2e8
    addi    r6, r31, 0x11c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x2e8(r30)
    addi    r3, r31, 0x12c
    lfs     f0, -0x54f0(rtoc)
    stfs    f0, 0x2f8(r30)
    stw     r27, 0x2e8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x2fc
    addi    r6, r31, 0x12c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42ac
    stw     r0, 0x2fc(r30)
    li      r0, 0x12c
    lis     r3, 0x803b
    stw     r0, 0x30c(r30)
    subi    r0, r3, 0x42b8
    mr      r3, r30
    stw     r0, 0x2fc(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
branch_0x8010be30:
    stw     r28, 0x38(r29)
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8010be50
    addi    r3, r26, 0x0
    addi    r4, r31, 0x13c
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x8010be50:
    stw     r26, 0x68(r29)
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__14TRocketManagerFPCc
__ct__14TRocketManagerFPCc: # 0x8010be68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x32b8
    stw     r0, 0x0(r31)
    li      r3, 0x1
    li      r0, 0x0
    stb     r3, 0x60(r31)
    mr      r3, r31
    stw     r0, 0x64(r31)
    stw     r0, 0x68(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__7TRocketFv
__dt__7TRocketFv: # 0x8010beb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8010bf20
    lis     r3, 0x803c
    subi    r3, r3, 0x3460
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8010bf10
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8010bf10:
    extsh.  r0, r31
    ble-    branch_0x8010bf20
    mr      r3, r30
    bl      __dl__FPv
branch_0x8010bf20:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TRocketManagerFv
__dt__14TRocketManagerFv: # 0x8010bf3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8010bf94
    lis     r3, 0x803c
    subi    r0, r3, 0x32b8
    stw     r0, 0x0(r30)
    beq-    branch_0x8010bf84
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8010bf84:
    extsh.  r0, r31
    ble-    branch_0x8010bf94
    mr      r3, r30
    bl      __dl__FPv
branch_0x8010bf94:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl clipEnemies__14TRocketManagerFPQ26JDrama9TGraphics
clipEnemies__14TRocketManagerFPQ26JDrama9TGraphics: # 0x8010bfb0
    blr


.globl __sinit_rocket_cpp
__sinit_rocket_cpp: # 0x8010bfb4
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2ee8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8010bffc
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8010bffc:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c02c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8010c02c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c05c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8010c05c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c08c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8010c08c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c0bc
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8010c0bc:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c0ec
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8010c0ec:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c11c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8010c11c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c14c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8010c14c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c17c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8010c17c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c1ac
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8010c1ac:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c1dc
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8010c1dc:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c20c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8010c20c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c23c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8010c23c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c26c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8010c26c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c29c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8010c29c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__7TRocketFv
_32___dt__7TRocketFv: # 0x8010c2b0
    subi    r3, r3, 0x20
    b       __dt__7TRocketFv

