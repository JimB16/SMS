
.globl __dt__16TNervePopoThrownFv
__dt__16TNervePopoThrownFv: # 0x800e5bd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e5c1c
    lis     r3, 0x803c
    subi    r0, r3, 0x5b08
    stw     r0, 0x0(r31)
    beq-    branch_0x800e5c0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e5c0c:
    extsh.  r0, r4
    ble-    branch_0x800e5c1c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e5c1c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNervePopoThrownCFP24TSpineBase_10TLiveActor_
execute__16TNervePopoThrownCFP24TSpineBase_10TLiveActor_: # 0x800e5c34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x1e
    ble-    branch_0x800e5cb4
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e5c6c
    li      r0, 0x1
    b       branch_0x800e5c70

branch_0x800e5c6c:
    li      r0, 0x0
branch_0x800e5c70:
    cmpwi   r0, 0x0
    bne-    branch_0x800e5cb4
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800e5cac
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800e5cac
    lwz     r4, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800e5cac:
    li      r3, 0x1
    b       branch_0x800e5cb8

branch_0x800e5cb4:
    li      r3, 0x0
branch_0x800e5cb8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl execute__14TNervePopoWaitCFP24TSpineBase_10TLiveActor_
execute__14TNervePopoWaitCFP24TSpineBase_10TLiveActor_: # 0x800e5ccc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e5d90
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x6
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x5ba0(rtoc)
    stw     r3, 0x20(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    beq-    branch_0x800e5d48
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x24(sp)
    stfs    f1, 0x28(sp)
    stfs    f2, 0x2c(sp)
branch_0x800e5d48:
    lwz     r3, 0x20(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x24(sp)
    lwz     r3, 0x28(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x2c(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x20(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x24(sp)
    lwz     r3, 0x28(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x2c(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x800e5d90:
    lfs     f1, -0x5ba0(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    lwz     r0, 0x3c(sp)
    li      r3, 0x0
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__14TNervePopoWaitFv
__dt__14TNervePopoWaitFv: # 0x800e5dbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e5e00
    lis     r3, 0x803c
    subi    r0, r3, 0x5af8
    stw     r0, 0x0(r31)
    beq-    branch_0x800e5df0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e5df0:
    extsh.  r0, r4
    ble-    branch_0x800e5e00
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e5e00:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNervePopoExplosionCFP24TSpineBase_10TLiveActor_
execute__19TNervePopoExplosionCFP24TSpineBase_10TLiveActor_: # 0x800e5e18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r4
    stw     r29, 0x84(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e5f40
    lfs     f1, -0x5ba0(rtoc)
    li      r4, 0x0
    stfs    f1, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f1, 0x78(sp)
    lwz     r3, 0x70(sp)
    lwz     r0, 0x74(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x78(sp)
    stw     r0, 0xb4(r31)
    lwz     r3, 0x74(r31)
    bl      setFrameRate__6MActorFfi
    lbz     r0, 0x1b4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800e5e98
    lwz     r3, 0x70(r31)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0x60(r3)
    stb     r0, 0x1b4(r31)
branch_0x800e5e98:
    lwz     r0, 0x64(r31)
    addi    r5, r31, 0x1c0
    li      r4, 0xa1
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r3, 0x74(r31)
    lbz     r0, -0x7dc0(r13)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1c0(r31)
    stfs    f1, 0x1c4(r31)
    stfs    f2, 0x1c8(r31)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x1c0
    li      r4, 0xa2
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6044(r13)
    li      r4, 0x297f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e5f40
    addi    r4, r31, 0x10
    li      r3, 0x297f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800e5f40:
    lwz     r3, 0x194(r31)
    lwz     r4, 0x20(r30)
    lwz     r0, 0x3f0(r3)
    cmpw    r4, r0
    ble-    branch_0x800e5ff4
    lwz     r0, 0xf0(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    stw     r29, 0x68(r31)
    bl      stopAnmSound__10TLiveActorFv
    stw     r29, 0x8(r30)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800e5fac
    stw     r0, 0x1c(r30)
branch_0x800e5fac:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800e5fec
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x800e5fec
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800e5fec:
    li      r3, 0x1
    b       branch_0x800e6000

branch_0x800e5ff4:
    mr      r3, r31
    bl      explosion__5TPopoFv
    li      r3, 0x0
branch_0x800e6000:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl __dt__19TNervePopoExplosionFv
__dt__19TNervePopoExplosionFv: # 0x800e601c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e6060
    lis     r3, 0x803c
    subi    r0, r3, 0x5ae8
    stw     r0, 0x0(r31)
    beq-    branch_0x800e6050
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e6050:
    extsh.  r0, r4
    ble-    branch_0x800e6060
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e6060:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNervePopoFlyCFP24TSpineBase_10TLiveActor_
execute__13TNervePopoFlyCFP24TSpineBase_10TLiveActor_: # 0x800e6078
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e6228
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    bl      SMS_GetMarioWaterGun__Fv
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    lwz     r4, 0x194(r31)
    lfs     f1, 0x198(r31)
    lfs     f0, 0x404(r4)
    lfs     f2, 0x3b4(r4)
    fdivs   f1, f1, f0
    lfs     f0, 0x0(r3)
    fmuls   f2, f2, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x68(sp)
    lfs     f0, 0x10(r3)
    fmuls   f0, f2, f0
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x20(r3)
    fmuls   f0, f2, f0
    stfs    f0, 0x70(sp)
    lwz     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x70(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lbz     r0, 0x1b4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800e6144
    lwz     r3, 0x70(r31)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0x60(r3)
    stb     r0, 0x1b4(r31)
branch_0x800e6144:
    lfs     f2, -0x5ba0(rtoc)
    lfs     f1, 0x70(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800e6174
    lfs     f0, 0x68(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800e616c
    lfs     f1, -0x5b9c(rtoc)
    b       branch_0x800e61f0

branch_0x800e616c:
    lfs     f1, -0x5b98(rtoc)
    b       branch_0x800e61f0

branch_0x800e6174:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800e61b4
    lfs     f2, 0x68(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5b88(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5b94(rtoc)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    stw     r0, 0x78(sp)
    lfd     f1, 0x78(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800e61f0

branch_0x800e61b4:
    fneg    f1, f1
    lfs     f2, 0x68(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5b88(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x5b94(rtoc)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5b90(rtoc)
    stw     r0, 0x78(sp)
    lfd     f2, 0x78(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800e61f0:
    lfs     f2, -0x5ba0(rtoc)
    lfs     f3, -0x5b8c(rtoc)
    bl      MsWrap_f___Ffff_800e6314
    lfs     f0, -0x5ba0(rtoc)
    stfs    f0, 0x30(r31)
    stfs    f1, 0x34(r31)
    stfs    f0, 0x38(r31)
    lbz     r0, -0x6878(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800e62c8
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    b       branch_0x800e62c8

branch_0x800e6228:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e623c
    li      r0, 0x1
    b       branch_0x800e6240

branch_0x800e623c:
    li      r0, 0x0
branch_0x800e6240:
    cmpwi   r0, 0x0
    bne-    branch_0x800e62c8
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e628c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r4, 0x800e
    stw     r0, -0x685c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22e4
    addi    r4, r4, 0x601c
    subi    r3, r13, 0x685c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e628c:
    subi    r4, r13, 0x685c
    cmplwi  r4, 0x0
    beq-    branch_0x800e62c0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800e62c0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800e62c0:
    li      r3, 0x1
    b       branch_0x800e62fc

branch_0x800e62c8:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x5
    ble-    branch_0x800e62f0
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x23c(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
branch_0x800e62f0:
    mr      r3, r31
    bl      flyBehavior__5TPopoFv
    li      r3, 0x0
branch_0x800e62fc:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl MsWrap_f___Ffff_800e6314
MsWrap_f___Ffff_800e6314: # 0x800e6314
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800e6350
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0xe0d28, 0x800e632c - 0x800e6328
branch_0x800e632c:
    fsubs   f1, f1, f0
branch_0x800e6330:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800e632c
    b       branch_0x800e6344

branch_0x800e6340:
    fadds   f1, f1, f0
branch_0x800e6344:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800e6340
    blr

branch_0x800e6350:
    fsubs   f0, f3, f2
    b       branch_0x800e6330


.incbin "./baserom/code/Text_0x80005600.bin", 0xe0d58, 0x800e635c - 0x800e6358

.globl __dt__13TNervePopoFlyFv
__dt__13TNervePopoFlyFv: # 0x800e635c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e63a0
    lis     r3, 0x803c
    subi    r0, r3, 0x5ad8
    stw     r0, 0x0(r31)
    beq-    branch_0x800e6390
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e6390:
    extsh.  r0, r4
    ble-    branch_0x800e63a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e63a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNervePopoAttackCFP24TSpineBase_10TLiveActor_
execute__16TNervePopoAttackCFP24TSpineBase_10TLiveActor_: # 0x800e63b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e6458
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x5ba0(rtoc)
    stw     r3, 0x44(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    beq-    branch_0x800e6410
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x48(sp)
    stfs    f1, 0x4c(sp)
    stfs    f2, 0x50(sp)
branch_0x800e6410:
    lwz     r3, 0x44(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x48(sp)
    lwz     r3, 0x4c(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x50(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x44(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x48(sp)
    lwz     r3, 0x4c(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x50(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x800e6458:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e646c
    li      r0, 0x1
    b       branch_0x800e6470

branch_0x800e646c:
    li      r0, 0x0
branch_0x800e6470:
    cmpwi   r0, 0x0
    bne-    branch_0x800e651c
    lwz     r3, 0x70(r31)
    lbz     r0, 0x60(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800e6490
    li      r3, 0x1
    b       branch_0x800e653c

branch_0x800e6490:
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800e64a8
    li      r0, 0x1
    b       branch_0x800e64ac

branch_0x800e64a8:
    li      r0, 0x0
branch_0x800e64ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e64bc
    li      r3, 0x1
    b       branch_0x800e653c

branch_0x800e64bc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x60b4(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r4)
    lfs     f2, 0x130(r3)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x800e64f8
    li      r3, 0x1
    b       branch_0x800e653c

branch_0x800e64f8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b0(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e651c
    li      r3, 0x1
    b       branch_0x800e653c

branch_0x800e651c:
    mr      r3, r31
    lfs     f1, -0x5b80(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x800e653c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl __dt__16TNervePopoAttackFv
__dt__16TNervePopoAttackFv: # 0x800e6550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e6594
    lis     r3, 0x803c
    subi    r0, r3, 0x5ac8
    stw     r0, 0x0(r31)
    beq-    branch_0x800e6584
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e6584:
    extsh.  r0, r4
    ble-    branch_0x800e6594
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e6594:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNervePopoPossessedNozzleCFP24TSpineBase_10TLiveActor_
execute__25TNervePopoPossessedNozzleCFP24TSpineBase_10TLiveActor_: # 0x800e65ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e6634
    lwz     r3, 0x70(r29)
    lbz     r0, 0x60(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800e6624
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800e661c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800e661c
    lwz     r4, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800e661c:
    li      r3, 0x1
    b       branch_0x800e6760

branch_0x800e6624:
    li      r0, 0x0
    stb     r0, 0x60(r3)
    mr      r3, r29
    bl      possessedIn__5TPopoFv
branch_0x800e6634:
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e66cc
    lbz     r3, 0x165(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800e665c
    li      r0, 0x0
    stb     r0, 0x165(r29)
branch_0x800e665c:
    cmplwi  r3, 0x0
    beq-    branch_0x800e6694
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x74(r29)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      setFrameRate__6MActorFfi
    b       branch_0x800e66cc

branch_0x800e6694:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r29)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5ba0(rtoc)
    li      r4, 0x3
    stfs    f1, 0x10(r3)
    lwz     r3, 0x74(r29)
    bl      setFrameRate__6MActorFfi
branch_0x800e66cc:
    mr      r3, r29
    bl      checkTrigger__5TPopoFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800e675c
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e6720
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r4, 0x800e
    stw     r0, -0x6864(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22d8
    addi    r4, r4, 0x635c
    subi    r3, r13, 0x6864
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e6720:
    subi    r4, r13, 0x6864
    cmplwi  r4, 0x0
    beq-    branch_0x800e6754
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800e6754
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800e6754:
    li      r3, 0x1
    b       branch_0x800e6760

branch_0x800e675c:
    li      r3, 0x0
branch_0x800e6760:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl __dt__25TNervePopoPossessedNozzleFv
__dt__25TNervePopoPossessedNozzleFv: # 0x800e677c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e67c0
    lis     r3, 0x803c
    subi    r0, r3, 0x5ab8
    stw     r0, 0x0(r31)
    beq-    branch_0x800e67b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e67b0:
    extsh.  r0, r4
    ble-    branch_0x800e67c0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e67c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__5TPopoCFv
getBasNameTable__5TPopoCFv: # 0x800e67d8
    lis     r3, 0x803c
    subi    r3, r3, 0x5b48
    blr


.globl thrownByChorobei__5TPopoFv
thrownByChorobei__5TPopoFv: # 0x800e67e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6850(r13)
    extsb.  r0, r0
    bne-    branch_0x800e683c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x684c(r13)
    subi    r0, r3, 0x5b08
    lis     r4, 0x800e
    stw     r0, -0x684c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22fc
    addi    r4, r4, 0x5bd8
    subi    r3, r13, 0x684c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6850(r13)
branch_0x800e683c:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x684c
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


.globl possessedIn__5TPopoFv
possessedIn__5TPopoFv: # 0x800e6870
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x1558
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x78(r3)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    lfs     f1, -0x5ba0(rtoc)
    bl      setFrameRate__6MActorFfi
    lbz     r0, -0x6878(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800e68e4
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x800e68e4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5ba0(rtoc)
    li      r4, 0x5
    stfs    f1, 0x10(r3)
    lfs     f0, -0x5b7c(rtoc)
    stfs    f0, 0x1a0(r31)
    lwz     r3, 0x74(r31)
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0xf0(r31)
    li      r0, 0x1
    li      r4, 0x2861
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r31)
    lfs     f0, -0x5b9c(rtoc)
    stfs    f0, 0x1b8(r31)
    stb     r0, 0x1b4(r31)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e6964
    addi    r4, r31, 0x10
    li      r3, 0x2861
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800e6964:
    li      r0, 0x0
    stb     r0, 0x1cc(r31)
    stb     r0, 0x1cd(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl explosion__5TPopoFv
explosion__5TPopoFv: # 0x800e6984
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    lfs     f1, 0x198(r3)
    lfs     f0, -0x5b80(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800e69ac
    lfs     f0, -0x5b78(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x198(r3)
branch_0x800e69ac:
    lwz     r6, 0x70(r3)
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r3)
    lfs     f0, -0x5b74(rtoc)
    stw     r4, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x18(r3)
    stw     r0, 0x84(sp)
    lfs     f1, 0x80(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x80(sp)
    lwz     r4, 0x8c(r3)
    lwz     r4, 0x20(r4)
    srawi   r0, r4, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc.  r0, r0, r4
    bne-    branch_0x800e6a3c
    lwz     r4, 0x68(r6)
    lfs     f0, -0x5b70(rtoc)
    addi    r5, r4, 0x54
    lwz     r4, 0x54(r4)
    lwz     r0, 0x4(r5)
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x78(sp)
    lfs     f1, 0x74(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x74(sp)
    lwz     r4, 0x70(sp)
    lwz     r0, 0x74(sp)
    stw     r4, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x78(sp)
    stw     r0, 0x8(r5)
branch_0x800e6a3c:
    lwz     r4, 0x194(r3)
    lis     r0, 0x4330
    lwz     r5, 0x68(r6)
    lfs     f1, 0x198(r3)
    lfs     f0, 0x404(r4)
    addi    r4, r5, 0x18
    lwz     r3, 0x18(r5)
    fdivs   f1, f1, f0
    lfd     f3, -0x5b88(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x5b6c(rtoc)
    stw     r3, 0x8c(sp)
    stw     r0, 0x88(sp)
    lfd     f2, 0x88(sp)
    fsubs   f2, f2, f3
    fmuls   f2, f2, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x800e6a88
    fmr     f2, f0
branch_0x800e6a88:
    fctiwz  f0, f2
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r0, 0x0(r4)
    lwz     r4, 0x68(r6)
    lwz     r3, 0x7c(sp)
    lwz     r0, 0x80(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x84(sp)
    stw     r0, 0x78(r4)
    lwz     r3, -0x6088(r13)
    lwz     r4, 0x68(r6)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl flyBehavior__5TPopoFv
flyBehavior__5TPopoFv: # 0x800e6ad0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    lwz     r3, 0x19c(r3)
    addi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
    lwz     r3, 0x194(r31)
    lwz     r4, 0x19c(r31)
    lwz     r0, 0x3dc(r3)
    cmpw    r4, r0
    ble-    branch_0x800e6bac
    li      r0, 0x0
    stw     r0, 0x19c(r31)
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e6b54
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r4, 0x800e
    stw     r0, -0x685c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22e4
    addi    r4, r4, 0x601c
    subi    r3, r13, 0x685c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e6b54:
    subi    r6, r13, 0x685c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800e6bac
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e6ba0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800e6ba0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e6ba0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800e6bac:
    lfs     f1, 0x198(r31)
    lfs     f0, -0x5b80(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800e6bc8
    lfs     f0, -0x5b68(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x198(r31)
branch_0x800e6bc8:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800e6bf0
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x4c(sp)
    b       branch_0x800e6c20

branch_0x800e6bf0:
    lbz     r30, -0x7dbf(r13)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x44(sp)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x4c(sp)
branch_0x800e6c20:
    lwz     r5, 0x70(r31)
    lwz     r3, 0x44(sp)
    lwz     r4, 0x64(r5)
    lwz     r0, 0x48(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x78(r4)
    lwz     r3, -0x6088(r13)
    lwz     r4, 0x64(r5)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lwz     r3, -0x6044(r13)
    li      r4, 0x20ce
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e6c7c
    addi    r4, r31, 0x10
    li      r3, 0x20ce
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800e6c7c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl isCollidMove__5TPopoFP9THitActor
isCollidMove__5TPopoFP9THitActor: # 0x800e6c94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e6cf4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r4, 0x800e
    stw     r0, -0x6864(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22d8
    addi    r4, r4, 0x635c
    subi    r3, r13, 0x6864
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e6cf4:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e6dc8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800e6dc8
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e6d70
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r4, 0x800e
    stw     r0, -0x685c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22e4
    addi    r4, r4, 0x601c
    subi    r3, r13, 0x685c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e6d70:
    subi    r6, r13, 0x685c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800e6dc8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e6dbc
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800e6dbc
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e6dbc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800e6dc8:
    lwz     r0, 0x3c(sp)
    li      r3, 0x0
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl isFindMario__5TPopoFf
isFindMario__5TPopoFf: # 0x800e6de4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f1
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0x8c(r3)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x64
    ble-    branch_0x800e6e98
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800e6e28
    li      r0, 0x1
    b       branch_0x800e6e2c

branch_0x800e6e28:
    li      r0, 0x0
branch_0x800e6e2c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800e6e98
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r5, -0x60b4(r13)
    addi    r4, sp, 0x40
    lfs     f2, 0x8(r5)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x40(sp)
    stfs    f1, 0x44(sp)
    stfs    f2, 0x48(sp)
    lfs     f1, 0xcc(r3)
    lfs     f2, 0x108(r3)
    lfs     f3, 0xf4(r3)
    fmuls   f1, f1, f31
    fmuls   f2, f2, f31
    mr      r3, r31
    fmuls   f3, f3, f31
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x800e6e98
    li      r3, 0x1
    b       branch_0x800e6e9c

branch_0x800e6e98:
    li      r3, 0x0
branch_0x800e6e9c:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl isHitValid__5TPopoFUl
isHitValid__5TPopoFUl: # 0x800e6eb4
    mflr    r0
    cmplwi  r4, 0xb
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x800e6ed8
    li      r3, 0x1
    b       branch_0x800e6f80

branch_0x800e6ed8:
    cmplwi  r4, 0x1
    bgt-    branch_0x800e6f7c
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e6f24
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r4, 0x800e
    stw     r0, -0x685c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22e4
    addi    r4, r4, 0x601c
    subi    r3, r13, 0x685c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e6f24:
    subi    r6, r13, 0x685c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800e6f7c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e6f70
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800e6f70
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e6f70:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800e6f7c:
    li      r3, 0x0
branch_0x800e6f80:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl bind__5TPopoFv
bind__5TPopoFv: # 0x800e6f94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r27, 0xc4(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x803f
    li      r28, 0x0
    addi    r30, r3, 0x22c0
    addi    r31, r28, 0x0
    lwz     r27, 0x23c(r29)
    b       branch_0x800e7014

branch_0x800e6fc0:
    lwz     r3, 0x44(r27)
    lwzx    r4, r3, r31
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800e6fe0
    li      r0, 0x1
    b       branch_0x800e6fe4

branch_0x800e6fe0:
    li      r0, 0x0
branch_0x800e6fe4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e7004
    lwz     r3, 0x68(r27)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    b       branch_0x800e700c

branch_0x800e7004:
    lwz     r3, 0x68(r27)
    bl      behaveToHitOthers__11TSmallEnemyFP9THitActor
branch_0x800e700c:
    addi    r28, r28, 0x1
    addi    r31, r31, 0x4
branch_0x800e7014:
    lhz     r0, 0x48(r27)
    cmpw    r28, r0
    blt+    branch_0x800e6fc0
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x800e736c
    lbz     r0, -0x6877(r13)
    extsb.  r0, r0
    bne-    branch_0x800e706c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6874(r13)
    subi    r0, r3, 0x5ab8
    lis     r3, 0x800e
    stw     r0, -0x6874(r13)
    addi    r4, r3, 0x677c
    subi    r3, r13, 0x6874
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6877(r13)
branch_0x800e706c:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6874
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e709c
    lfs     f1, 0x198(r29)
    lfs     f0, -0x5b64(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800e709c
    lbz     r0, -0x6878(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800e70f0
branch_0x800e709c:
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e70dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r3, 0x800e
    stw     r0, -0x6864(r13)
    addi    r4, r3, 0x635c
    subi    r3, r13, 0x6864
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e70dc:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e7364
branch_0x800e70f0:
    lfs     f1, 0x14(r29)
    addi    r4, r29, 0xc4
    lfs     f0, 0xc0(r29)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r29)
    lfs     f3, 0x18(r29)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r29)
    lfs     f1, -0x5b7c(rtoc)
    lfs     f0, 0xc8(r29)
    lfs     f2, 0x14(r29)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    beq-    branch_0x800e7184
    lwz     r3, 0xac(r29)
    lwz     r0, 0xb0(r29)
    lfs     f0, -0x5b80(rtoc)
    stw     r3, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0xb4(r29)
    stw     r0, 0x90(sp)
    lfs     f1, 0x88(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800e721c
    lwz     r3, 0xac(r29)
    lwz     r0, 0xb0(r29)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0xb4(r29)
    stw     r0, 0x84(sp)
    lfs     f1, 0x84(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800e721c
branch_0x800e7184:
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e71c4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r3, 0x800e
    stw     r0, -0x685c(r13)
    addi    r4, r3, 0x601c
    subi    r3, r13, 0x685c
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e71c4:
    subi    r6, r13, 0x685c
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x800e721c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e7210
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800e7210
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e7210:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800e721c:
    lfs     f2, 0x198(r29)
    li      r31, 0x1
    lfs     f1, 0x148(r29)
    li      r0, 0x0
    lfs     f0, 0x14c(r29)
    lfs     f4, 0x18(r29)
    addi    r4, sp, 0x94
    fmuls   f1, f1, f0
    lfs     f3, 0x14(r29)
    lfs     f0, 0x10(r29)
    lwz     r3, -0x6328(r13)
    stfs    f0, 0x94(sp)
    fmuls   f0, f2, f1
    stfs    f3, 0x98(sp)
    stfs    f4, 0x9c(sp)
    stfs    f0, 0xa0(sp)
    stw     r31, 0xa4(sp)
    stw     r0, 0xac(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x800e7308
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e72ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r3, 0x800e
    stw     r0, -0x685c(r13)
    addi    r4, r3, 0x601c
    subi    r3, r13, 0x685c
    addi    r5, r30, 0x24
    bl      __register_global_object
    stb     r31, -0x6860(r13)
branch_0x800e72ac:
    subi    r6, r13, 0x685c
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x800e736c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e72f8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800e72f8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e72f8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800e736c

branch_0x800e7308:
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e7344
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r3, 0x800e
    stw     r0, -0x6864(r13)
    addi    r4, r3, 0x635c
    subi    r3, r13, 0x6864
    addi    r5, r30, 0x18
    bl      __register_global_object
    stb     r31, -0x6868(r13)
branch_0x800e7344:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e736c
    mr      r3, r29
    bl      bind__10TLiveActorFv
    b       branch_0x800e736c

branch_0x800e7364:
    mr      r3, r29
    bl      bind__10TLiveActorFv
branch_0x800e736c:
    lmw     r27, 0xc4(sp)
    lwz     r0, 0xdc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl forceKill__5TPopoFv
forceKill__5TPopoFv: # 0x800e7380
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800e73ac
    li      r0, 0x1
    b       branch_0x800e73b0

branch_0x800e73ac:
    li      r0, 0x0
branch_0x800e73b0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800e7468
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x800
    bne-    branch_0x800e73cc
    li      r0, 0x1
    b       branch_0x800e73d0

branch_0x800e73cc:
    li      r0, 0x0
branch_0x800e73d0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800e7440
    cmplwi  r3, 0x104
    beq-    branch_0x800e73f0
    cmplwi  r3, 0x105
    beq-    branch_0x800e73f0
    cmplwi  r3, 0x4104
    bne-    branch_0x800e73f8
branch_0x800e73f0:
    li      r0, 0x1
    b       branch_0x800e73fc

branch_0x800e73f8:
    li      r0, 0x0
branch_0x800e73fc:
    clrlwi. r0, r0, 24
    bne-    branch_0x800e7440
    cmplwi  r3, 0x100
    beq-    branch_0x800e742c
    cmplwi  r3, 0x101
    beq-    branch_0x800e742c
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x800e742c
    cmplwi  r3, 0x4104
    bne-    branch_0x800e7434
branch_0x800e742c:
    li      r0, 0x1
    b       branch_0x800e7438

branch_0x800e7434:
    li      r0, 0x0
branch_0x800e7438:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e7468
branch_0x800e7440:
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x800e7454
    li      r0, 0x1
    b       branch_0x800e7458

branch_0x800e7454:
    li      r0, 0x0
branch_0x800e7458:
    cmpwi   r0, 0x0
    bne-    branch_0x800e7468
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x800e7480
branch_0x800e7468:
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x18(r31)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    bne-    branch_0x800e7590
branch_0x800e7480:
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e74c4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r4, 0x800e
    stw     r0, -0x685c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22e4
    addi    r4, r4, 0x601c
    subi    r3, r13, 0x685c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e74c4:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x685c
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800e7590
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e7520
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r4, 0x5ae8
    lis     r4, 0x800e
    stw     r0, -0x685c(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0x601c
    addi    r5, r5, 0x22e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e7520:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x685c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800e7538
    stw     r0, 0x1c(r4)
branch_0x800e7538:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800e757c
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800e757c
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e757c:
    lwz     r3, 0xf0(r31)
    li      r0, 0x1
    oris    r3, r3, 0x2
    stw     r3, 0xf0(r31)
    stb     r0, 0x13c(r31)
branch_0x800e7590:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl kill__5TPopoFv
kill__5TPopoFv: # 0x800e75a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lbz     r0, 0x1b4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800e75d8
    lwz     r3, 0x70(r31)
    li      r4, 0x1
    li      r0, 0x0
    stb     r4, 0x60(r3)
    stb     r0, 0x1b4(r31)
branch_0x800e75d8:
    mr      r3, r31
    bl      kill__11TSmallEnemyFv
    lwz     r3, 0x23c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl calcRootMatrix__5TPopoFv
calcRootMatrix__5TPopoFv: # 0x800e7604
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    stfd    f31, 0x188(sp)
    stfd    f30, 0x180(sp)
    stfd    f29, 0x178(sp)
    stw     r31, 0x174(sp)
    mr      r31, r3
    stw     r30, 0x170(sp)
    lbz     r30, -0x7dc0(r13)
    stw     r31, -0x6880(r13)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, 0x23c(r31)
    add     r4, r4, r0
    lfs     f2, 0x2c(r4)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    lbz     r0, 0x1b4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800e7a9c
    lfs     f1, -0x5b60(rtoc)
    lfs     f0, 0x198(r31)
    lwz     r3, 0x194(r31)
    fmuls   f1, f1, f0
    lfs     f0, 0x404(r3)
    fdivs   f0, f1, f0
    stfs    f0, 0x190(r31)
    lfs     f0, 0x190(r31)
    lfs     f1, -0x7dac(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800e7698
    stfs    f1, 0x190(r31)
branch_0x800e7698:
    mr      r3, r31
    bl      expandCollision__11TSmallEnemyFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e7704
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r4, 0x800e
    stw     r0, -0x6864(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22d8
    addi    r4, r4, 0x635c
    subi    r3, r13, 0x6864
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e7704:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e773c
    lfs     f29, 0x18(r31)
    addi    r3, sp, 0x134
    lfs     f30, 0x14(r31)
    lfs     f31, 0x10(r31)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x140(sp)
    stfs    f30, 0x150(sp)
    stfs    f29, 0x160(sp)
    b       branch_0x800e7a58

branch_0x800e773c:
    bl      SMS_GetMarioWaterGun__Fv
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    addi    r4, sp, 0x134
    bl      PSMTXCopy
    lfs     f0, 0x134(sp)
    stfs    f0, 0x110(sp)
    lfs     f0, 0x144(sp)
    stfs    f0, 0x114(sp)
    lfs     f0, 0x154(sp)
    stfs    f0, 0x118(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0x114(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x118(sp)
    fmuls   f0, f0, f0
    lfs     f1, -0x5ba0(rtoc)
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f0, f3, f0
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x800e779c
    b       branch_0x800e77c0

branch_0x800e779c:
    frsqrte f4, f0
    lfs     f3, -0x5b5c(rtoc)
    lfs     f1, -0x5b58(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f1, f0, f2, f1
    fmuls   f1, f3, f1
    fmuls   f0, f0, f1
branch_0x800e77c0:
    lfs     f1, 0x138(sp)
    stfs    f1, 0x11c(sp)
    lfs     f1, 0x148(sp)
    stfs    f1, 0x120(sp)
    lfs     f1, 0x158(sp)
    stfs    f1, 0x124(sp)
    lfs     f2, 0x11c(sp)
    lfs     f1, 0x120(sp)
    fmuls   f3, f2, f2
    lfs     f4, 0x124(sp)
    fmuls   f1, f1, f1
    lfs     f2, -0x5ba0(rtoc)
    fmuls   f4, f4, f4
    fadds   f1, f3, f1
    fadds   f1, f4, f1
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x800e780c
    b       branch_0x800e7830

branch_0x800e780c:
    frsqrte f5, f1
    lfs     f4, -0x5b5c(rtoc)
    lfs     f2, -0x5b58(rtoc)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f2, f1, f3, f2
    fmuls   f2, f4, f2
    fmuls   f1, f1, f2
branch_0x800e7830:
    lfs     f2, 0x13c(sp)
    stfs    f2, 0x128(sp)
    lfs     f2, 0x14c(sp)
    stfs    f2, 0x12c(sp)
    lfs     f2, 0x15c(sp)
    stfs    f2, 0x130(sp)
    lfs     f3, 0x128(sp)
    lfs     f2, 0x12c(sp)
    fmuls   f4, f3, f3
    lfs     f5, 0x130(sp)
    fmuls   f3, f2, f2
    lfs     f2, -0x5ba0(rtoc)
    fmuls   f5, f5, f5
    fadds   f3, f4, f3
    fadds   f6, f5, f3
    fcmpo   cr0, f6, f2
    cror    2, 0, 2
    bne-    branch_0x800e787c
    b       branch_0x800e78a0

branch_0x800e787c:
    frsqrte f5, f6
    lfs     f4, -0x5b5c(rtoc)
    lfs     f2, -0x5b58(rtoc)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f2, f6, f3, f2
    fmuls   f2, f4, f2
    fmuls   f6, f6, f2
branch_0x800e78a0:
    lfs     f2, -0x5ba0(rtoc)
    fcmpu   cr0, f2, f6
    beq-    branch_0x800e78d0
    lfs     f2, 0x134(sp)
    fdivs   f2, f2, f0
    stfs    f2, 0x134(sp)
    lfs     f2, 0x144(sp)
    fdivs   f2, f2, f0
    stfs    f2, 0x144(sp)
    lfs     f2, 0x154(sp)
    fdivs   f2, f2, f0
    stfs    f2, 0x154(sp)
branch_0x800e78d0:
    lfs     f2, -0x5ba0(rtoc)
    fcmpu   cr0, f2, f0
    beq-    branch_0x800e7900
    lfs     f0, 0x138(sp)
    fdivs   f0, f0, f1
    stfs    f0, 0x138(sp)
    lfs     f0, 0x148(sp)
    fdivs   f0, f0, f1
    stfs    f0, 0x148(sp)
    lfs     f0, 0x158(sp)
    fdivs   f0, f0, f1
    stfs    f0, 0x158(sp)
branch_0x800e7900:
    lfs     f0, -0x5ba0(rtoc)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800e7930
    lfs     f0, 0x13c(sp)
    fdivs   f0, f0, f6
    stfs    f0, 0x13c(sp)
    lfs     f0, 0x14c(sp)
    fdivs   f0, f0, f6
    stfs    f0, 0x14c(sp)
    lfs     f0, 0x15c(sp)
    fdivs   f0, f0, f6
    stfs    f0, 0x15c(sp)
branch_0x800e7930:
    lfs     f2, -0x5b54(rtoc)
    addi    r3, sp, 0xd4
    lfs     f1, 0x198(r31)
    lfs     f0, -0x7dc4(r13)
    fmadds  f29, f2, f1, f0
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f29, 0xe0(sp)
    addi    r3, sp, 0x134
    lfs     f0, -0x5ba0(rtoc)
    addi    r5, r3, 0x0
    addi    r4, sp, 0xd4
    stfs    f0, 0xf0(sp)
    stfs    f0, 0x100(sp)
    bl      PSMTXConcat
    lfs     f1, -0x7db8(r13)
    addi    r3, sp, 0xa4
    lfs     f0, 0x198(r31)
    fmuls   f29, f1, f0
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f29, 0xb0(sp)
    addi    r4, sp, 0xa4
    lfs     f0, -0x5ba0(rtoc)
    addi    r5, r4, 0x0
    addi    r3, sp, 0x134
    stfs    f0, 0xc0(sp)
    stfs    f0, 0xd0(sp)
    bl      PSMTXConcat
    lfs     f0, 0xb0(sp)
    stfs    f0, 0x10(r31)
    lfs     f2, -0x7db0(r13)
    lfs     f1, 0x198(r31)
    lfs     f0, 0xc0(sp)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f0, 0xd0(sp)
    stfs    f0, 0x18(r31)
    lbz     r0, 0x1bc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800e7a58
    lwz     r3, 0x74(r31)
    addi    r30, r31, 0x200
    lbz     r0, -0x7dc0(r13)
    mr      r4, r30
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXCopy
    lfs     f0, 0xb0(sp)
    mr      r5, r30
    addi    r7, r31, 0x0
    stfs    f0, 0x20c(r31)
    li      r4, 0x13d
    li      r6, 0x1
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x21c(r31)
    lfs     f0, 0xd0(sp)
    stfs    f0, 0x22c(r31)
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800e7a58
    lfs     f0, 0x230(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x234(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x238(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x230(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x234(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x238(r31)
    stfs    f0, 0x17c(r3)
branch_0x800e7a58:
    lfs     f1, -0x7dcc(r13)
    addi    r3, sp, 0x74
    lfs     f2, -0x7dc8(r13)
    lfs     f3, -0x687c(r13)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, sp, 0x134
    addi    r5, r3, 0x0
    addi    r4, sp, 0x74
    bl      PSMTXConcat
    addi    r30, sp, 0x134
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x800e7aa4

branch_0x800e7a9c:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x800e7aa4:
    lwz     r0, 0x194(sp)
    lfd     f31, 0x188(sp)
    lfd     f30, 0x180(sp)
    mtlr    r0
    lfd     f29, 0x178(sp)
    lwz     r31, 0x174(sp)
    lwz     r30, 0x170(sp)
    addi    sp, sp, 0x190
    blr


.globl attackToMario__5TPopoFv
attackToMario__5TPopoFv: # 0x800e7ac8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x803f
    lbz     r0, -0x6870(r13)
    addi    r31, r3, 0x22c0
    lwz     r30, 0x70(r29)
    extsb.  r0, r0
    bne-    branch_0x800e7b30
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x686c(r13)
    subi    r0, r3, 0x5ac8
    lis     r3, 0x800e
    stw     r0, -0x686c(r13)
    addi    r4, r3, 0x6550
    subi    r3, r13, 0x686c
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6870(r13)
branch_0x800e7b30:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x686c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e7b98
    lbz     r0, -0x6858(r13)
    extsb.  r0, r0
    bne-    branch_0x800e7b84
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6854(r13)
    subi    r0, r3, 0x5af8
    lis     r3, 0x800e
    stw     r0, -0x6854(r13)
    addi    r4, r3, 0x5dbc
    subi    r3, r13, 0x6854
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6858(r13)
branch_0x800e7b84:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6854
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e7c40
branch_0x800e7b98:
    lbz     r0, 0x60(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800e7c40
    lbz     r0, -0x6877(r13)
    extsb.  r0, r0
    bne-    branch_0x800e7be4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6874(r13)
    subi    r0, r3, 0x5ab8
    lis     r3, 0x800e
    stw     r0, -0x6874(r13)
    addi    r4, r3, 0x677c
    subi    r3, r13, 0x6874
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6877(r13)
branch_0x800e7be4:
    subi    r6, r13, 0x6874
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x800e7d54
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e7c30
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800e7c30
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e7c30:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800e7d54

branch_0x800e7c40:
    lwz     r3, 0x8c(r29)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerEscapeFv
    cmplw   r30, r3
    beq-    branch_0x800e7c68
    lwz     r3, 0x8c(r29)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    bne-    branch_0x800e7d54
branch_0x800e7c68:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x5ba0(rtoc)
    addi    r3, sp, 0x74
    addi    r4, r3, 0x0
    stfs    f0, 0x80(sp)
    stfs    f0, 0x84(sp)
    stfs    f0, 0x88(sp)
    lwz     r5, -0x60b4(r13)
    lfs     f1, 0x10(r29)
    lfs     f0, 0x0(r5)
    lfs     f3, 0x14(r29)
    lfs     f2, 0x4(r5)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r29)
    lfs     f1, 0x8(r5)
    fsubs   f2, f3, f2
    stfs    f0, 0x74(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x78(sp)
    stfs    f0, 0x7c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x74(sp)
    stfs    f0, 0xac(r29)
    lfs     f0, 0x7c(sp)
    stfs    f0, 0xb4(r29)
    lfs     f2, 0x148(r29)
    lfs     f1, 0xbc(r29)
    lfs     f0, 0x74(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x7c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x88(sp)
    lwz     r3, 0x80(sp)
    lwz     r0, 0x84(sp)
    stw     r3, 0x94(r29)
    stw     r0, 0x98(r29)
    lwz     r0, 0x88(sp)
    stw     r0, 0x9c(r29)
branch_0x800e7d54:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl walkBehavior__5TPopoFif
walkBehavior__5TPopoFif: # 0x800e7d70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stfd    f29, 0x128(sp)
    stfd    f28, 0x120(sp)
    stw     r31, 0x11c(sp)
    mr      r31, r3
    stw     r30, 0x118(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e7dac
    li      r0, 0x1
    b       branch_0x800e7db0

branch_0x800e7dac:
    li      r0, 0x0
branch_0x800e7db0:
    cmpwi   r0, 0x0
    bne-    branch_0x800e80f4
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x800e7dd0
    addi    r4, r4, 0x10
    b       branch_0x800e7dd4

branch_0x800e7dd0:
    addi    r4, r3, 0x4
branch_0x800e7dd4:
    lwz     r3, 0x0(r4)
    addi    r5, r31, 0x104
    lwz     r0, 0x4(r4)
    stw     r3, 0xfc(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x104(sp)
    lwz     r4, 0x104(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x800e7e04
    addi    r3, r4, 0x10
    b       branch_0x800e7e08

branch_0x800e7e04:
    addi    r3, r5, 0x4
branch_0x800e7e08:
    lfs     f1, 0x8(r3)
    cmplwi  r4, 0x0
    lfs     f0, 0x18(r31)
    addi    r3, r31, 0x104
    fsubs   f3, f1, f0
    beq-    branch_0x800e7e28
    addi    r3, r4, 0x10
    b       branch_0x800e7e2c

branch_0x800e7e28:
    addi    r3, r3, 0x4
branch_0x800e7e2c:
    lfs     f1, 0x0(r3)
    lfs     f0, 0x10(r31)
    lfs     f2, -0x5ba0(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0xfc(sp)
    stfs    f2, 0x100(sp)
    stfs    f3, 0x104(sp)
    lfs     f1, 0xfc(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800e7e78
    lfs     f0, 0x100(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x800e7e78
    lfs     f0, 0x104(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x800e7e78
    lfs     f0, -0x5b80(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xfc(sp)
branch_0x800e7e78:
    addi    r3, sp, 0xfc
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r4, 0x194(r31)
    lfs     f1, -0x5b50(rtoc)
    lfs     f30, 0x364(r4)
    lfs     f31, 0x33c(r4)
    lfs     f0, -0x5b4c(rtoc)
    stfs    f1, 0xe8(sp)
    stfs    f0, 0xec(sp)
    lbz     r0, -0x6870(r13)
    lfs     f29, -0x5b80(rtoc)
    extsb.  r0, r0
    bne-    branch_0x800e7ee8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x686c(r13)
    subi    r0, r3, 0x5ac8
    lis     r4, 0x800e
    stw     r0, -0x686c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22cc
    addi    r4, r4, 0x6550
    subi    r3, r13, 0x686c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6870(r13)
branch_0x800e7ee8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x686c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e7f24
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r6, 0x194(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    lfs     f30, 0x3a0(r6)
    lfs     f31, 0x378(r6)
    mtlr    r12
    lfs     f29, -0x5b48(rtoc)
    blrl
branch_0x800e7f24:
    lfs     f1, 0xec(sp)
    lfs     f0, 0xe8(sp)
    fsubs   f28, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5b88(rtoc)
    stw     r0, 0x114(sp)
    lis     r30, 0x4330
    lfs     f2, -0x5b44(rtoc)
    stw     r30, 0x110(sp)
    lfs     f4, 0xe8(sp)
    lfd     f0, 0x110(sp)
    lfs     f1, 0xfc(sp)
    fsubs   f3, f0, f3
    lfs     f0, 0x10(r31)
    fmadds  f0, f1, f31, f0
    fmuls   f1, f2, f3
    fmuls   f1, f28, f1
    fadds   f1, f4, f1
    fmadds  f0, f29, f1, f0
    stfs    f0, 0xfc(sp)
    lfs     f0, 0xec(sp)
    fsubs   f28, f0, f4
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x5b88(rtoc)
    stw     r0, 0x10c(sp)
    lfs     f3, -0x5b44(rtoc)
    stw     r30, 0x108(sp)
    lfs     f2, 0xe8(sp)
    lfd     f0, 0x108(sp)
    lfs     f1, 0x104(sp)
    fsubs   f4, f0, f4
    lfs     f0, 0x18(r31)
    fmadds  f0, f1, f31, f0
    fmuls   f1, f3, f4
    fmuls   f1, f28, f1
    fadds   f1, f2, f1
    fmadds  f0, f29, f1, f0
    stfs    f0, 0x104(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x100(sp)
    lwz     r3, 0x8c(r31)
    lfs     f28, -0x5b80(rtoc)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerEscapeFv
    cmplw   r30, r3
    bne-    branch_0x800e8000
    mr      r3, r31
    lfs     f28, -0x5b64(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800e8000:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmuls   f1, f30, f28
    addi    r3, sp, 0xd8
    addi    r5, sp, 0xfc
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0xd8(sp)
    lwz     r0, 0xdc(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xe0(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x5b6c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    bne-    branch_0x800e8134
    li      r6, 0x0
    lwz     r5, 0xfc(sp)
    stw     r6, 0xc8(sp)
    mr      r3, r31
    lwz     r0, 0x100(sp)
    li      r4, 0x5
    stw     r5, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x104(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0xc8(sp)
    stw     r0, 0xf4(r31)
    lwz     r5, 0xcc(sp)
    lwz     r0, 0xd0(sp)
    stw     r5, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0xd4(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0xc8(sp)
    stw     r0, 0x104(r31)
    lwz     r5, 0xcc(sp)
    lwz     r0, 0xd0(sp)
    stw     r5, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0xd4(sp)
    stw     r0, 0x110(r31)
    stw     r6, 0x118(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e8134

branch_0x800e80f4:
    lfs     f2, 0xb0(r31)
    lfs     f0, -0x5b40(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800e8114
    lfs     f1, -0x5b5c(rtoc)
    lfs     f0, 0x14(r31)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x14(r31)
branch_0x800e8114:
    lfs     f2, 0xb0(r31)
    lfs     f0, -0x5b70(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x800e8134
    lfs     f1, -0x5b3c(rtoc)
    lfs     f0, 0x14(r31)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x14(r31)
branch_0x800e8134:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x5b80(rtoc)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xc4(sp)
    lfs     f1, 0x1b8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x1b8(r31)
    lbz     r0, -0x6870(r13)
    extsb.  r0, r0
    bne-    branch_0x800e81a0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x686c(r13)
    subi    r0, r3, 0x5ac8
    lis     r4, 0x800e
    stw     r0, -0x686c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22cc
    addi    r4, r4, 0x6550
    subi    r3, r13, 0x686c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6870(r13)
branch_0x800e81a0:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x686c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e81c4
    lfs     f1, 0x1b8(r31)
    lfs     f0, -0x5b6c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1b8(r31)
branch_0x800e81c4:
    lfs     f1, 0x1b8(r31)
    lfs     f0, -0x5b8c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800e81dc
    fsubs   f0, f1, f0
    stfs    f0, 0x1b8(r31)
branch_0x800e81dc:
    lbz     r0, -0x7dd0(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800e81f0
    lfs     f0, -0x5ba0(rtoc)
    stfs    f0, 0x1b8(r31)
branch_0x800e81f0:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x5ba0(rtoc)
    stw     r3, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xb8(sp)
    lfs     f0, 0xb4(sp)
    fcmpo   cr0, f0, f1
    ble-    branch_0x800e8228
    fmr     f3, f1
    lfs     f2, 0x144(r31)
    mr      r3, r31
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x800e8228:
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    mtlr    r0
    lfd     f29, 0x128(sp)
    lfd     f28, 0x120(sp)
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    addi    sp, sp, 0x140
    blr


.globl behaveToFindMario__5TPopoFv
behaveToFindMario__5TPopoFv: # 0x800e8250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r4, -0x6094(r13)
    lwz     r3, 0x70(r3)
    lwz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x800e8280
    li      r0, 0x1
    b       branch_0x800e8284

branch_0x800e8280:
    li      r0, 0x0
branch_0x800e8284:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e83f0
    lbz     r0, 0x60(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800e83f0
    bl      SMS_GetMarioWaterGun__Fv
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800e83f0
    lwz     r3, -0x60d8(r13)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x800e83f0
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x5ba0(rtoc)
    stw     r3, 0x28(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x34(sp)
    beq-    branch_0x800e82f0
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x2c(sp)
    stfs    f1, 0x30(sp)
    stfs    f2, 0x34(sp)
branch_0x800e82f0:
    lwz     r3, 0x28(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x2c(sp)
    lwz     r3, 0x30(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x34(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x28(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x2c(sp)
    lwz     r3, 0x30(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x34(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x800e8370
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800e8370
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e8370:
    lbz     r0, -0x6870(r13)
    extsb.  r0, r0
    bne-    branch_0x800e83b4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x686c(r13)
    subi    r0, r3, 0x5ac8
    lis     r4, 0x800e
    stw     r0, -0x686c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22cc
    addi    r4, r4, 0x6550
    subi    r3, r13, 0x686c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6870(r13)
branch_0x800e83b4:
    subi    r5, r13, 0x686c
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x800e8428
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x800e8428
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    b       branch_0x800e8428

branch_0x800e83f0:
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x800e8428
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800e8428
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e8428:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl getGravityY__5TPopoCFv
getGravityY__5TPopoCFv: # 0x800e843c
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x22c0
    stw     r30, 0x98(sp)
    mr      r30, r3
    stw     r29, 0x94(sp)
    lwz     r3, 0x8c(r3)
    lfs     f31, 0xcc(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r29, r3
    beq-    branch_0x800e84a4
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__18TNerveWalkerEscapeFv
    cmplw   r29, r3
    beq-    branch_0x800e84a4
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r29, r3
    bne-    branch_0x800e84b0
branch_0x800e84a4:
    lwz     r3, 0x194(r30)
    lfs     f1, 0x350(r3)
    b       branch_0x800e85d0

branch_0x800e84b0:
    lbz     r0, -0x6870(r13)
    extsb.  r0, r0
    bne-    branch_0x800e84f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x686c(r13)
    subi    r0, r3, 0x5ac8
    lis     r3, 0x800e
    stw     r0, -0x686c(r13)
    addi    r4, r3, 0x6550
    subi    r3, r13, 0x686c
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6870(r13)
branch_0x800e84f0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x686c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e8510
    lwz     r3, 0x194(r30)
    lfs     f31, 0x38c(r3)
    b       branch_0x800e85cc

branch_0x800e8510:
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e8550
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r3, 0x800e
    stw     r0, -0x6864(r13)
    addi    r4, r3, 0x635c
    subi    r3, r13, 0x6864
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e8550:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e8570
    lwz     r3, 0x194(r30)
    lfs     f31, 0x3c8(r3)
    b       branch_0x800e85cc

branch_0x800e8570:
    lbz     r0, -0x6850(r13)
    extsb.  r0, r0
    bne-    branch_0x800e85b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x684c(r13)
    subi    r0, r3, 0x5b08
    lis     r3, 0x800e
    stw     r0, -0x684c(r13)
    addi    r4, r3, 0x5bd8
    subi    r3, r13, 0x684c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6850(r13)
branch_0x800e85b0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x684c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e85cc
    lwz     r3, 0x194(r30)
    lfs     f31, 0x418(r3)
branch_0x800e85cc:
    fmr     f1, f31
branch_0x800e85d0:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    mtlr    r0
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa8
    blr


.globl behaveToWater__5TPopoFP9THitActor
behaveToWater__5TPopoFP9THitActor: # 0x800e85f0
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x22c0
    stw     r30, 0x98(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x94(sp)
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e8654
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r3, 0x800e
    stw     r0, -0x6864(r13)
    addi    r4, r3, 0x635c
    subi    r3, r13, 0x6864
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e8654:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e887c
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e86a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r3, 0x800e
    stw     r0, -0x685c(r13)
    addi    r4, r3, 0x601c
    subi    r3, r13, 0x685c
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e86a8:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x685c
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    beq-    branch_0x800e887c
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    bne-    branch_0x800e86cc
    b       branch_0x800e887c

branch_0x800e86cc:
    lbz     r0, -0x6877(r13)
    extsb.  r0, r0
    bne-    branch_0x800e870c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6874(r13)
    subi    r0, r3, 0x5ab8
    lis     r3, 0x800e
    stw     r0, -0x6874(r13)
    addi    r4, r3, 0x677c
    subi    r3, r13, 0x6874
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6877(r13)
branch_0x800e870c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6874
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    bne-    branch_0x800e872c
    li      r0, 0x0
    stw     r0, 0x160(r30)
    b       branch_0x800e887c

branch_0x800e872c:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e8740
    li      r0, 0x1
    b       branch_0x800e8744

branch_0x800e8740:
    li      r0, 0x0
branch_0x800e8744:
    cmpwi   r0, 0x0
    beq-    branch_0x800e8818
    lwz     r5, 0xac(r30)
    addi    r3, sp, 0x78
    lwz     r0, 0xb0(r30)
    mr      r4, r3
    lwz     r6, -0x60b4(r13)
    stw     r5, 0x84(sp)
    lfs     f0, -0x5ba0(rtoc)
    stw     r0, 0x88(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x8c(sp)
    lfs     f2, 0x10(r30)
    lfs     f1, 0x0(r6)
    lfs     f4, 0x18(r30)
    fsubs   f1, f2, f1
    lfs     f3, 0x8(r6)
    fsubs   f2, f4, f3
    stfs    f1, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f2, 0x80(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x78(sp)
    lfs     f1, -0x5b38(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(sp)
    lfs     f0, -0x5b70(rtoc)
    stfs    f0, 0x7c(sp)
    lfs     f2, 0x78(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x88(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x78(sp)
    lfs     f1, 0x7c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x8c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x80(sp)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x80(sp)
    stw     r0, 0xb4(r30)
    b       branch_0x800e887c

branch_0x800e8818:
    bl      theNerve__22TNerveSmallEnemyFreezeFv
    cmplw   r29, r3
    beq-    branch_0x800e887c
    bl      theNerve__22TNerveSmallEnemyFreezeFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x800e887c
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800e8870
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x800e8870
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x800e8870:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x800e887c:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl checkTrigger__5TPopoFv
checkTrigger__5TPopoFv: # 0x800e8898
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xb4(sp)
    stb     r0, 0x1bc(r3)
    lwz     r3, -0x60d8(r13)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x800e88e4
    bl      SMS_GetMarioWaterGun__Fv
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x800e8900
branch_0x800e88e4:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
    b       branch_0x800e8b84

branch_0x800e8900:
    addi    r3, r30, 0x0
    li      r4, 0x5
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r3, -0x60d8(r13)
    lwz     r4, 0x194(r30)
    lwz     r3, 0x4fc(r3)
    lfs     f31, 0x404(r4)
    lfs     f0, 0xb4(r3)
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    stfd    f0, 0xa8(sp)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x14
    lwz     r31, 0xac(sp)
    ble-    branch_0x800e8a30
    li      r0, 0x1
    stb     r0, 0x1bc(r30)
    li      r4, 0x20c2
    lwz     r3, -0x6044(r13)
    lfs     f30, 0x198(r30)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e8988
    fmr     f1, f30
    addi    r4, r30, 0x10
    li      r3, 0x20c2
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800e8988:
    clrlwi  r0, r31, 24
    li      r3, 0x0
    stw     r0, 0xa4(sp)
    lis     r0, 0x4330
    stw     r0, 0xa0(sp)
    li      r0, 0x1
    stw     r3, 0x160(r30)
    lfd     f0, 0xa0(sp)
    stb     r0, 0x165(r30)
    lfd     f1, -0x5b28(rtoc)
    lwz     r3, 0x194(r30)
    fsubs   f1, f0, f1
    lfs     f2, 0x198(r30)
    lfs     f0, 0x42c(r3)
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x198(r30)
    lfs     f0, 0x198(r30)
    fcmpo   cr0, f0, f31
    ble-    branch_0x800e89fc
    stfs    f31, 0x198(r30)
    lbz     r0, -0x7db4(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800e89fc
    lwz     r29, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r29, 0x0
    li      r4, 0x5
    bl      setFrameRate__6MActorFfi
branch_0x800e89fc:
    lbz     r0, -0x7db4(r13)
    lwz     r3, 0x194(r30)
    cmplwi  r0, 0x0
    lfs     f2, 0x404(r3)
    beq-    branch_0x800e8a30
    lfs     f1, 0x1a0(r30)
    li      r4, 0x5
    lfs     f0, 0x198(r30)
    lwz     r3, 0x74(r30)
    fmuls   f0, f1, f0
    fdivs   f30, f0, f2
    bl      getFrameCtrl__6MActorFi
    stfs    f30, 0x10(r3)
branch_0x800e8a30:
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x4fc(r3)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x800e8a50
    lbz     r0, -0x7dcf(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800e8a80
branch_0x800e8a50:
    lbz     r0, -0x7da8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800e8a68
    li      r0, 0x1
    stb     r0, 0x1cc(r30)
    b       branch_0x800e8a80

branch_0x800e8a68:
    lfs     f0, 0x198(r30)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x800e8a80
    li      r0, 0x1
    stb     r0, 0x1cc(r30)
branch_0x800e8a80:
    lbz     r0, -0x7da8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800e8abc
    lfs     f0, -0x5b34(rtoc)
    lfs     f1, 0x198(r30)
    fsubs   f0, f31, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x800e8abc
    lfs     f0, -0x5b80(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800e8abc
    lwz     r3, 0x194(r30)
    lfs     f0, 0x454(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x198(r30)
branch_0x800e8abc:
    clrlwi  r0, r31, 24
    lwz     r3, 0x194(r30)
    cmplwi  r0, 0x14
    lfs     f1, 0x440(r3)
    bge-    branch_0x800e8b3c
    lbz     r0, 0x1cc(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x800e8ae8
    lfs     f0, 0x198(r30)
    fcmpo   cr0, f0, f1
    ble-    branch_0x800e8b3c
branch_0x800e8ae8:
    lwz     r3, -0x6044(r13)
    li      r4, 0x28cd
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e8b18
    addi    r4, r30, 0x10
    li      r3, 0x28cd
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800e8b18:
    lwz     r0, 0x64(r30)
    li      r3, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r4, 0x23c(r30)
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    b       branch_0x800e8b84

branch_0x800e8b3c:
    lfs     f3, -0x5b30(rtoc)
    lfs     f2, 0x198(r30)
    lfs     f1, 0x148(r30)
    lfs     f0, 0xbc(r30)
    fmadds  f2, f3, f2, f3
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0x198(r30)
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x800e8b80
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x5b2c(rtoc)
    stfs    f0, 0x10(r3)
branch_0x800e8b80:
    li      r3, 0x0
branch_0x800e8b84:
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    lwz     r29, 0xb4(sp)
    addi    sp, sp, 0xd0
    blr


.globl reset__5TPopoFv
reset__5TPopoFv: # 0x800e8ba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r31, -0x6880(r13)
    bl      reset__12TWalkerEnemyFv
    li      r0, 0x0
    stb     r0, 0x165(r31)
    mr      r3, r31
    stb     r0, 0x1b4(r31)
    lfs     f0, -0x5b80(rtoc)
    stfs    f0, 0x198(r31)
    lfs     f0, -0x5ba0(rtoc)
    stfs    f0, 0x1b8(r31)
    stw     r0, 0x19c(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0xbc(r31)
    lfs     f2, -0x5b20(rtoc)
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xb8(r31)
    lfs     f0, -0x5b3c(rtoc)
    stfs    f0, 0x190(r31)
    bl      expandCollision__11TSmallEnemyFv
    lis     r4, 0x8038
    lwz     r3, 0x78(r31)
    addi    r4, r4, 0x1564
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    lbz     r0, 0x1a4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800e8cc0
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lbz     r0, -0x6858(r13)
    extsb.  r0, r0
    bne-    branch_0x800e8c7c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6854(r13)
    subi    r0, r3, 0x5af8
    lis     r4, 0x800e
    stw     r0, -0x6854(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22f0
    addi    r4, r4, 0x5dbc
    subi    r3, r13, 0x6854
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6858(r13)
branch_0x800e8c7c:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6854
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0x1ac(r31)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x1b0(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r31)
branch_0x800e8cc0:
    lwz     r4, 0x23c(r31)
    li      r0, 0x0
    lwz     r3, 0x64(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r4)
    stw     r0, 0x18c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setMActorAndKeeper__5TPopoFv
setMActorAndKeeper__5TPopoFv: # 0x800e8cec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800e8d24
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800e8d24:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x1558
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x1564
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__5TPopoFUlPQ26JDrama9TGraphics
perform__5TPopoFUlPQ26JDrama9TGraphics: # 0x800e8d6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x23c(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl init__5TPopoFP12TLiveManager
init__5TPopoFP12TLiveManager: # 0x800e8dc0
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xc8(sp)
    addi    r30, r5, 0x1418
    stw     r29, 0xc4(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0xd
    stw     r0, 0x4c(r31)
    lha     r0, 0x7c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800e8e28
    li      r29, 0x0
    b       branch_0x800e8e0c

branch_0x800e8e08:
    addi    r29, r29, 0x1
branch_0x800e8e0c:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800e8e08
branch_0x800e8e28:
    li      r0, 0x11
    stw     r0, 0x150(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x194(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r6, 0x8c(r31)
    li      r0, 0x0
    lis     r4, 0x800f
    stw     r0, 0x8(r6)
    subi    r29, r4, 0x69cc
    addi    r5, r29, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
    stw     r3, 0x18(r6)
    stw     r0, 0x1c(r6)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x800
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    lbz     r4, -0x7dc0(r13)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r3, 0x78(r31)
    addi    r4, r30, 0x14c
    bl      getMActor__13TMActorKeeperCFPCc
    lbz     r4, -0x7dc0(r13)
    mr      r5, r29
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lis     r4, 0x800f
    lwz     r3, 0x74(r31)
    subi    r5, r4, 0x6d7c
    lbz     r4, -0x7dbf(r13)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lis     r4, 0x800f
    lwz     r3, 0x74(r31)
    subi    r29, r4, 0x6f18
    lbz     r4, -0x7dbe(r13)
    mr      r5, r29
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r3, 0x74(r31)
    mr      r5, r29
    lbz     r4, -0x7dbd(r13)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r3, 0x74(r31)
    mr      r5, r29
    lbz     r4, -0x7dbc(r13)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r3, 0x74(r31)
    mr      r5, r29
    lbz     r4, -0x7dbb(r13)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lfs     f0, -0x5ba0(rtoc)
    li      r3, 0x6c
    stfs    f0, 0x188(r31)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800e8f38
    addi    r3, r29, 0x0
    addi    r4, r30, 0x158
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x58f0
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r29)
branch_0x800e8f38:
    stw     r29, 0x23c(r31)
    addi    r3, r30, 0x168
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x168
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x70
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x70(sp)
    addi    r3, sp, 0xa4
    addi    r4, sp, 0x6c
    stw     r0, 0x6c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xa4(sp)
    addi    r5, sp, 0x7c
    addi    r4, r29, 0x0
    stw     r0, 0xa0(sp)
    addi    r3, sp, 0x78
    addi    r6, r31, 0x23c
    lwz     r0, 0xa0(sp)
    stw     r0, 0x7c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lfs     f1, -0x5b1c(rtoc)
    lis     r4, 0x1000
    lwz     r3, 0x23c(r31)
    addi    r4, r4, 0xd
    fmr     f2, f1
    fmr     f3, f1
    li      r5, 0x2
    fmr     f4, f1
    lis     r6, 0x9800
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x23c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x23c(r31)
    stw     r31, 0x68(r3)
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl load__5TPopoFR20JSUMemoryInputStream
load__5TPopoFR20JSUMemoryInputStream: # 0x800e900c
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
    stw     r5, 0x1a8(r31)
    stw     r4, 0x1ac(r31)
    lwz     r4, 0x18(r31)
    stw     r4, 0x1b0(r31)
    stb     r0, 0x1a4(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__5TPopoFPCc
__ct__5TPopoFPCc: # 0x800e906c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x5aa8
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    lfs     f0, -0x5b80(rtoc)
    stfs    f0, 0x198(r31)
    stw     r0, 0x19c(r31)
    lfs     f0, -0x5b7c(rtoc)
    stfs    f0, 0x1a0(r31)
    stb     r0, 0x1a4(r31)
    stb     r0, 0x1b4(r31)
    lfs     f0, -0x5ba0(rtoc)
    stfs    f0, 0x1b8(r31)
    stb     r0, 0x1cc(r31)
    stb     r0, 0x1cd(r31)
    stw     r0, 0x23c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl PopoNonScaleCallback__FP7J3DNodei
PopoNonScaleCallback__FP7J3DNodei: # 0x800e90e8
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x800e9268
    lwz     r31, -0x6880(r13)
    cmplwi  r31, 0x0
    beq-    branch_0x800e91e4
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e9158
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r4, 0x800e
    stw     r0, -0x6864(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22d8
    addi    r4, r4, 0x635c
    subi    r3, r13, 0x6864
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e9158:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e91d0
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e91b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r4, 0x800e
    stw     r0, -0x685c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22e4
    addi    r4, r4, 0x601c
    subi    r3, r13, 0x685c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e91b0:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x685c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e91d0
    lbz     r0, 0x1b4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800e91d8
branch_0x800e91d0:
    li      r0, 0x1
    b       branch_0x800e91dc

branch_0x800e91d8:
    li      r0, 0x0
branch_0x800e91dc:
    clrlwi. r0, r0, 24
    bne-    branch_0x800e91ec
branch_0x800e91e4:
    li      r3, 0x1
    b       branch_0x800e926c

branch_0x800e91ec:
    lhz     r30, 0x18(r30)
    lwz     r3, -0x6880(r13)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    mulli   r0, r30, 0x30
    lfs     f2, -0x5ba0(rtoc)
    lwz     r6, -0x6880(r13)
    stfs    f2, 0x8c(sp)
    add     r3, r3, r0
    lfs     f1, -0x5b78(rtoc)
    mr      r5, r3
    stfs    f2, 0x9c(sp)
    addi    r4, sp, 0x80
    stfs    f2, 0xac(sp)
    lfs     f0, 0x148(r6)
    fmuls   f0, f1, f0
    stfs    f0, 0x80(sp)
    stfs    f2, 0x84(sp)
    stfs    f2, 0x88(sp)
    stfs    f2, 0x90(sp)
    stfs    f0, 0x94(sp)
    stfs    f2, 0x98(sp)
    stfs    f2, 0xa0(sp)
    stfs    f2, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, sp, 0x80
    bl      PSMTXConcat
branch_0x800e9268:
    li      r3, 0x1
branch_0x800e926c:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    addi    sp, sp, 0xc0
    blr


.globl PopoPossessedCallback__FP7J3DNodei
PopoPossessedCallback__FP7J3DNodei: # 0x800e9284
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stfd    f31, 0x140(sp)
    stw     r31, 0x13c(sp)
    stw     r30, 0x138(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x800e9614
    lwz     r31, -0x6880(r13)
    cmplwi  r31, 0x0
    beq-    branch_0x800e9384
    lbz     r0, -0x6868(r13)
    extsb.  r0, r0
    bne-    branch_0x800e92f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r4, 0x800e
    stw     r0, -0x6864(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22d8
    addi    r4, r4, 0x635c
    subi    r3, r13, 0x6864
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e92f8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e9370
    lbz     r0, -0x6860(r13)
    extsb.  r0, r0
    bne-    branch_0x800e9350
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x685c(r13)
    subi    r0, r3, 0x5ae8
    lis     r4, 0x800e
    stw     r0, -0x685c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22e4
    addi    r4, r4, 0x601c
    subi    r3, r13, 0x685c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6860(r13)
branch_0x800e9350:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x685c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e9370
    lbz     r0, 0x1b4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800e9378
branch_0x800e9370:
    li      r0, 0x1
    b       branch_0x800e937c

branch_0x800e9378:
    li      r0, 0x0
branch_0x800e937c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800e938c
branch_0x800e9384:
    li      r3, 0x1
    b       branch_0x800e9618

branch_0x800e938c:
    lwz     r3, -0x6880(r13)
    lfs     f0, -0x5b18(rtoc)
    lfs     f31, 0x198(r3)
    fcmpo   cr0, f31, f0
    bge-    branch_0x800e93a8
    li      r3, 0x1
    b       branch_0x800e9618

branch_0x800e93a8:
    lhz     r30, 0x18(r30)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    mulli   r0, r30, 0x30
    lfs     f0, -0x5ba0(rtoc)
    stfs    f0, 0x108(sp)
    add     r30, r3, r0
    addi    r3, r30, 0x0
    stfs    f0, 0x118(sp)
    addi    r5, r30, 0x0
    addi    r4, sp, 0xfc
    stfs    f0, 0x128(sp)
    stfs    f31, 0xfc(sp)
    stfs    f0, 0x100(sp)
    stfs    f0, 0x104(sp)
    stfs    f0, 0x10c(sp)
    stfs    f31, 0x110(sp)
    stfs    f0, 0x114(sp)
    stfs    f0, 0x11c(sp)
    stfs    f0, 0x120(sp)
    stfs    f31, 0x124(sp)
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, sp, 0xfc
    bl      PSMTXConcat
    lwz     r3, -0x6880(r13)
    lbz     r0, 0x1bc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800e9614
    addi    r4, r3, 0x1d0
    addi    r3, r30, 0x0
    bl      PSMTXCopy
    lfs     f1, -0x5ba0(rtoc)
    addi    r3, sp, 0x9c
    lfs     f2, -0x5b14(rtoc)
    fmr     f3, f1
    bl      MsMtxSetRotRPH__FPA4_ffff
    lwz     r3, -0x6880(r13)
    addi    r4, sp, 0x9c
    addi    r5, r3, 0x1d0
    addi    r3, r5, 0x0
    bl      PSMTXConcat
    lfs     f0, 0x0(r30)
    stfs    f0, 0x78(sp)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x20(r30)
    stfs    f0, 0x80(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x80(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x5ba0(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800e94a4
    b       branch_0x800e94c8

branch_0x800e94a4:
    frsqrte f3, f4
    lfs     f2, -0x5b5c(rtoc)
    lfs     f0, -0x5b58(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800e94c8:
    lwz     r3, -0x6880(r13)
    stfs    f4, 0x234(r3)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x84(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x88(sp)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x88(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x8c(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x5ba0(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800e951c
    b       branch_0x800e9540

branch_0x800e951c:
    frsqrte f3, f4
    lfs     f2, -0x5b5c(rtoc)
    lfs     f0, -0x5b58(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800e9540:
    lwz     r3, -0x6880(r13)
    stfs    f4, 0x238(r3)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x90(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x94(sp)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x98(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x94(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x98(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x5ba0(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800e9594
    b       branch_0x800e95b8

branch_0x800e9594:
    frsqrte f3, f4
    lfs     f2, -0x5b5c(rtoc)
    lfs     f0, -0x5b58(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800e95b8:
    lwz     r3, -0x6880(r13)
    li      r4, 0x13c
    li      r6, 0x1
    stfs    f4, 0x230(r3)
    lwz     r7, -0x6880(r13)
    lwz     r3, -0x6070(r13)
    addi    r5, r7, 0x1d0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800e9614
    lwz     r4, -0x6880(r13)
    lfsu    f0, 0x230(r4)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x17c(r3)
branch_0x800e9614:
    li      r3, 0x1
branch_0x800e9618:
    lwz     r0, 0x14c(sp)
    lfd     f31, 0x140(sp)
    lwz     r31, 0x13c(sp)
    mtlr    r0
    lwz     r30, 0x138(sp)
    addi    sp, sp, 0x148
    blr


.globl PopoRollCallback__FP7J3DNodei
PopoRollCallback__FP7J3DNodei: # 0x800e9634
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    bne-    branch_0x800e9848
    lwz     r0, -0x6880(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800e9664
    li      r3, 0x1
    b       branch_0x800e984c

branch_0x800e9664:
    lhz     r31, 0x18(r3)
    mr      r3, r0
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mulli   r3, r31, 0x30
    lfs     f0, -0x5ba0(rtoc)
    lbz     r0, -0x6868(r13)
    stfs    f0, 0x98(sp)
    add     r31, r4, r3
    lwz     r30, -0x6880(r13)
    extsb.  r0, r0
    stfs    f0, 0xa8(sp)
    stfs    f0, 0xb8(sp)
    lfs     f1, 0x148(r30)
    stfs    f1, 0x8c(sp)
    stfs    f0, 0x90(sp)
    stfs    f0, 0x94(sp)
    stfs    f0, 0x9c(sp)
    stfs    f1, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xac(sp)
    stfs    f0, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    bne-    branch_0x800e96fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r4, 0x800e
    stw     r0, -0x6864(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22d8
    addi    r4, r4, 0x635c
    subi    r3, r13, 0x6864
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e96fc:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e9718
    li      r0, 0x0
    b       branch_0x800e971c

branch_0x800e9718:
    li      r0, 0x1
branch_0x800e971c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e97a0
    lwz     r3, -0x6880(r13)
    lfs     f1, -0x5b10(rtoc)
    lfs     f0, 0x1b8(r3)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r5, -0x5ea8(r13)
    lwz     r3, -0x5ea4(r13)
    lfs     f1, -0x5b80(rtoc)
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r4, 0xc4(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    lfsx    f3, r3, r0
    fneg    f0, f2
    stfs    f1, 0x5c(sp)
    lfs     f1, -0x5ba0(rtoc)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f1, 0x68(sp)
    stfs    f1, 0x6c(sp)
    stfs    f3, 0x70(sp)
    stfs    f0, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x7c(sp)
    stfs    f2, 0x80(sp)
    stfs    f3, 0x84(sp)
    stfs    f1, 0x88(sp)
    b       branch_0x800e9800

branch_0x800e97a0:
    lis     r3, 0x1
    lwz     r0, -0x5eac(r13)
    subi    r3, r3, 0x8000
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea4(r13)
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    lfsx    f3, r3, r0
    fneg    f0, f1
    stfs    f3, 0x5c(sp)
    lfs     f2, -0x5ba0(rtoc)
    stfs    f2, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f2, 0x6c(sp)
    lfs     f1, -0x5b80(rtoc)
    stfs    f1, 0x70(sp)
    stfs    f2, 0x74(sp)
    stfs    f2, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f2, 0x80(sp)
    stfs    f3, 0x84(sp)
    stfs    f2, 0x88(sp)
branch_0x800e9800:
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0x5c
    bl      PSMTXConcat
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0x8c
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r31, r3, 0x4788
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0x5c
    bl      PSMTXConcat
    addi    r5, r31, 0x0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x8c
    bl      PSMTXConcat
branch_0x800e9848:
    li      r3, 0x1
branch_0x800e984c:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    addi    sp, sp, 0xd0
    blr


.globl receiveMessage__14TPopoCollisionFP9THitActorUl
receiveMessage__14TPopoCollisionFP9THitActorUl: # 0x800e9864
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x2c(sp)
    mr      r29, r3
    stw     r28, 0x28(sp)
    lbz     r0, -0x6868(r13)
    lwz     r28, 0x68(r3)
    extsb.  r0, r0
    bne-    branch_0x800e98d4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6864(r13)
    subi    r0, r3, 0x5ad8
    lis     r4, 0x800e
    stw     r0, -0x6864(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x22d8
    addi    r4, r4, 0x635c
    subi    r3, r13, 0x6864
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6868(r13)
branch_0x800e98d4:
    lwz     r3, 0x8c(r28)
    subi    r0, r13, 0x6864
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e98f0
    li      r0, 0x0
    b       branch_0x800e98f4

branch_0x800e98f0:
    li      r0, 0x1
branch_0x800e98f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e991c
    lwz     r3, 0x68(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x800e9920

branch_0x800e991c:
    li      r3, 0x0
branch_0x800e9920:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl perform__12TPopoManagerFUlPQ26JDrama9TGraphics
perform__12TPopoManagerFUlPQ26JDrama9TGraphics: # 0x800e9940
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x800e99dc
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x800e99a8

branch_0x800e9970:
    lwz     r3, 0x18(r27)
    lwzx    r3, r3, r31
    lbz     r0, 0x1a4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800e99a0
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x800e99a0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800e99a0:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x800e99a8:
    lwz     r3, 0x38(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x800e99bc
    lwz     r3, 0x14(r27)
    b       branch_0x800e99d4

branch_0x800e99bc:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r27)
    cmpw    r0, r3
    ble-    branch_0x800e99d0
    b       branch_0x800e99d4

branch_0x800e99d0:
    mr      r3, r0
branch_0x800e99d4:
    cmpw    r30, r3
    blt+    branch_0x800e9970
branch_0x800e99dc:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl createModelData__12TPopoManagerFv
createModelData__12TPopoManagerFv: # 0x800e9a00
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x5b2c
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initSetEnemies__12TPopoManagerFv
initSetEnemies__12TPopoManagerFv: # 0x800e9a34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x124(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x800e9a64
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
branch_0x800e9a64:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__12TPopoManagerFv
createEnemyInstance__12TPopoManagerFv: # 0x800e9a74
    mflr    r0
    li      r3, 0x240
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800e9aa0
    addi    r3, r31, 0x0
    subi    r4, rtoc, 0x5b0c
    bl      __ct__5TPopoFPCc
branch_0x800e9aa0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__12TPopoManagerFR20JSUMemoryInputStream
load__12TPopoManagerFR20JSUMemoryInputStream: # 0x800e9ab8
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x1418
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x14(sp)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x458
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800e9afc
    addi    r3, r29, 0x0
    addi    r4, r31, 0x174
    bl      __ct__19TPopoSaveLoadParamsFPCc
branch_0x800e9afc:
    stw     r29, 0x38(r30)
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800e9b1c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x184
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x800e9b1c:
    stw     r29, 0x64(r30)
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800e9b3c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x19c
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x800e9b3c:
    stw     r29, 0x68(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__12TPopoManagerFPCc
__ct__12TPopoManagerFPCc: # 0x800e9b5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x584c
    stw     r0, 0x0(r31)
    li      r3, 0x1
    li      r0, 0x0
    stb     r3, 0x60(r31)
    mr      r3, r31
    stw     r0, 0x64(r31)
    stw     r0, 0x68(r31)
    stw     r0, -0x6880(r13)
    stw     r0, 0x5c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__19TPopoSaveLoadParamsFPCc
__ct__19TPopoSaveLoadParamsFPCc: # 0x800e9bb4
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r30, r5, 0x1418
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x1b4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x1b4
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x32c(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x5b74(rtoc)
    addi    r3, r30, 0x1c0
    stfs    f0, 0x33c(r31)
    stw     r28, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x1c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x340(r31)
    addi    r3, r30, 0x1d0
    lfs     f0, -0x5b34(rtoc)
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x1d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x354(r31)
    addi    r3, r30, 0x1e0
    lfs     f0, -0x5b48(rtoc)
    stfs    f0, 0x364(r31)
    stw     r28, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x1e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x368(r31)
    addi    r3, r30, 0x1f0
    lfs     f0, -0x5b74(rtoc)
    stfs    f0, 0x378(r31)
    stw     r28, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x1f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x204
    lfs     f0, -0x5b34(rtoc)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x204
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x390(r31)
    addi    r3, r30, 0x214
    lfs     f0, -0x5b48(rtoc)
    stfs    f0, 0x3a0(r31)
    stw     r28, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x214
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x224
    lfs     f0, -0x5b48(rtoc)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x224
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    addi    r3, r30, 0x234
    lfs     f0, -0x5ba0(rtoc)
    stfs    f0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x234
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x3cc(r31)
    li      r0, 0x12c
    lis     r3, 0x803b
    stw     r0, 0x3dc(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x244
    stw     r26, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x244
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3e0(r31)
    li      r0, 0x3c
    addi    r3, r30, 0x25c
    stw     r0, 0x3f0(r31)
    stw     r26, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x25c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f4(r31)
    addi    r3, r30, 0x270
    lfs     f0, -0x5b6c(rtoc)
    stfs    f0, 0x404(r31)
    stw     r28, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x270
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    addi    r3, r30, 0x284
    lfs     f0, -0x5b5c(rtoc)
    stfs    f0, 0x418(r31)
    stw     r28, 0x408(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x41c
    addi    r6, r30, 0x284
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x41c(r31)
    addi    r3, r30, 0x290
    lfs     f0, -0x5b04(rtoc)
    stfs    f0, 0x42c(r31)
    stw     r28, 0x41c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x430
    addi    r6, r30, 0x290
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x430(r31)
    addi    r3, r30, 0x2a0
    lfs     f0, -0x5b64(rtoc)
    stfs    f0, 0x440(r31)
    stw     r28, 0x430(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x444
    addi    r6, r30, 0x2a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x444(r31)
    mr      r3, r31
    lfs     f0, -0x5b00(rtoc)
    stfs    f0, 0x454(r31)
    stw     r28, 0x444(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__5TPopoFv
__dt__5TPopoFv: # 0x800e9eb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e9f34
    lis     r3, 0x803c
    subi    r3, r3, 0x5aa8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800e9f24
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800e9f24
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800e9f24:
    extsh.  r0, r31
    ble-    branch_0x800e9f34
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e9f34:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TPopoCollisionFv
__dt__14TPopoCollisionFv: # 0x800e9f50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e9fb8
    lis     r3, 0x803c
    subi    r3, r3, 0x58f0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800e9fa8
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800e9fa8:
    extsh.  r0, r31
    ble-    branch_0x800e9fb8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e9fb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TPopoManagerFv
__dt__12TPopoManagerFv: # 0x800e9fd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ea02c
    lis     r3, 0x803c
    subi    r0, r3, 0x584c
    stw     r0, 0x0(r30)
    beq-    branch_0x800ea01c
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800ea01c:
    extsh.  r0, r31
    ble-    branch_0x800ea02c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ea02c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_popo_cpp
__sinit_popo_cpp: # 0x800ea048
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x22c0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea090
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800ea090:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea0c0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800ea0c0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea0f0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800ea0f0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea120
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800ea120:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea150
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800ea150:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea180
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800ea180:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea1b0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800ea1b0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea1e0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800ea1e0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea210
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800ea210:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea240
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800ea240:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea270
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800ea270:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea2a0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800ea2a0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea2d0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800ea2d0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea300
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800ea300:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea330
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800ea330:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__14TPopoCollisionFv
_32___dt__14TPopoCollisionFv: # 0x800ea344
    subi    r3, r3, 0x20
    b       __dt__14TPopoCollisionFv


.globl _32___dt__5TPopoFv
_32___dt__5TPopoFv: # 0x800ea34c
    subi    r3, r3, 0x20
    b       __dt__5TPopoFv

