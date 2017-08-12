
.globl __dt__19TNerveTinKoopaBreakFv
__dt__19TNerveTinKoopaBreakFv: # 0x8009e748
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009e78c
    lis     r3, __vvt__19TNerveTinKoopaBreak@h
    addi    r0, r3, __vvt__19TNerveTinKoopaBreak@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009e77c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009e77c:
    extsh.  r0, r4
    ble-    branch_0x8009e78c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009e78c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveTinKoopaBreakCFP24TSpineBase_10TLiveActor_
execute__19TNerveTinKoopaBreakCFP24TSpineBase_10TLiveActor_: # 0x8009e7a4
    mflr    r0
    lis     r5, unk_803b55b0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stw     r31, 0x10c(sp)
    stw     r30, 0x108(sp)
    addi    r30, r5, unk_803b55b0@l
    stw     r29, 0x104(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x100(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009e894
    lwz     r0, 0x150(r31)
    lwz     r3, 0x74(r31)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r28, 0x12c(r4)
    mr      r4, r28
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8009e820
    li      r4, 0x0
    b       branch_0x8009e828

branch_0x8009e820:
    slwi    r0, r28, 2
    lwzx    r4, r3, r0
branch_0x8009e828:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lis     r3, 0x803f
    lwz     r28, 0x1398(r3)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r28, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r29, 0x0
    li      r4, 0xee
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x6
    lfs     f1, -0x6578(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x8009e894
    lwz     r4, 0x1f0(r31)
    li      r0, 0x1
    li      r3, 0x7
    stb     r0, 0x60(r4)
    li      r4, 0xa
    bl      stopTrackBGMs__5MSBgmFUcUl
branch_0x8009e894:
    lwz     r0, 0x150(r31)
    lwz     r3, 0x74(r31)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x12c(r4)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x8009eb64
    lwz     r0, 0x150(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    li      r5, 0x0
    slwi    r0, r0, 2
    add     r6, r30, r0
    lwz     r0, 0x168(r6)
    slwi    r0, r0, 2
    add     r6, r31, r0
    lwz     r28, 0x1cc(r6)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8009eaec
    lwz     r3, 0xf4(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x150(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x150(r31)
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8009e964
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x158(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x144(r3)
    mr      r3, r31
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x50(r31)
    stfs    f0, 0x54(r31)
    stfs    f1, 0x58(r31)
    stfs    f31, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x8009e9c0

branch_0x8009e964:
    cmpwi   r0, 0x1
    bne-    branch_0x8009e9bc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x16c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x144(r3)
    mr      r3, r31
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x50(r31)
    stfs    f0, 0x54(r31)
    stfs    f1, 0x58(r31)
    stfs    f31, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x8009e9c0

branch_0x8009e9bc:
    cmpwi   r0, 0x2
branch_0x8009e9c0:
    lwz     r28, 0x160(r31)
    lwz     r3, 0x68(r28)
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8009ea24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r28)
    lfs     f31, 0x108(r3)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xf4(r3)
    mr      r3, r28
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x50(r28)
    stfs    f0, 0x54(r28)
    stfs    f1, 0x58(r28)
    stfs    f31, 0x5c(r28)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x8009ea78

branch_0x8009ea24:
    cmpwi   r0, 0x1
    bne-    branch_0x8009ea78
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r28)
    lfs     f31, 0x130(r3)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x11c(r3)
    mr      r3, r28
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x50(r28)
    stfs    f0, 0x54(r28)
    stfs    f1, 0x58(r28)
    stfs    f31, 0x5c(r28)
    bl      calcEntryRadius__9THitActorFv
branch_0x8009ea78:
    lwz     r0, 0x150(r31)
    lwz     r3, 0x74(r31)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r28, 0x118(r4)
    mr      r4, r28
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8009eab8
    li      r4, 0x0
    b       branch_0x8009eac0

branch_0x8009eab8:
    slwi    r0, r28, 2
    lwzx    r4, r3, r0
branch_0x8009eac0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xb8(r3)
    li      r3, 0x1
    stw     r0, 0x1c8(r31)
    b       branch_0x8009eb68

branch_0x8009eaec:
    lbz     r0, 0xf8(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8009eb64
    lwz     r0, 0x150(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    slwi    r0, r0, 2
    add     r5, r30, r0
    lwz     r28, 0x154(r5)
    bl      getFrameCtrl__6MActorFi
    xoris   r0, r28, 0x8000
    lfd     f1, -0x6570(r2)
    stw     r0, 0xfc(sp)
    lis     r0, 0x4330
    stw     r0, 0xf8(sp)
    lfd     f0, 0xf8(sp)
    fsubs   f1, f0, f1
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009eb64
    lwz     r0, 0x150(r31)
    slwi    r0, r0, 2
    add     r3, r30, r0
    lwz     r0, 0x168(r3)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r0, 0x1cc(r3)
    stw     r0, 0x1e4(r31)
    lwz     r3, 0x1e4(r31)
    bl      startBreaking__18TTinKoopaPartsBaseFv
branch_0x8009eb64:
    li      r3, 0x0
branch_0x8009eb68:
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lwz     r31, 0x10c(sp)
    mtlr    r0
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    lwz     r28, 0x100(sp)
    addi    sp, sp, 0x118
    blr


.globl remove__17TMapCollisionBaseFv
remove__17TMapCollisionBaseFv: # 0x8009eb8c
    lhz     r0, 0x5c(r3)
    ori     r0, r0, 0x1
    sth     r0, 0x5c(r3)
    blr


.globl execute__20TNerveTinKoopaDamageCFP24TSpineBase_10TLiveActor_
execute__20TNerveTinKoopaDamageCFP24TSpineBase_10TLiveActor_: # 0x8009eb9c
    mflr    r0
    lis     r5, unk_803b55b0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, unk_803b55b0@l
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x40(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009ec64
    lwz     r0, 0x150(r30)
    lwz     r3, 0x74(r30)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r28, 0x140(r4)
    mr      r4, r28
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8009ec14
    li      r4, 0x0
    b       branch_0x8009ec1c

branch_0x8009ec14:
    slwi    r0, r28, 2
    lwzx    r4, r3, r0
branch_0x8009ec1c:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
    lis     r3, 0x803f
    lwz     r28, 0x1398(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    mulli   r0, r28, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r29, 0x0
    li      r4, 0xee
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x6
    lfs     f1, -0x6578(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x8009ec64:
    lwz     r0, 0x150(r30)
    lwz     r3, 0x74(r30)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x140(r4)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x8009ecf4
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8009ecf4
    lwz     r0, 0x150(r30)
    lwz     r3, 0x74(r30)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r28, 0x118(r4)
    mr      r4, r28
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8009ecdc
    li      r4, 0x0
    b       branch_0x8009ece4

branch_0x8009ecdc:
    slwi    r0, r28, 2
    lwzx    r4, r3, r0
branch_0x8009ece4:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
    li      r3, 0x1
    b       branch_0x8009ecf8

branch_0x8009ecf4:
    li      r3, 0x0
branch_0x8009ecf8:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl __dt__20TNerveTinKoopaDamageFv
__dt__20TNerveTinKoopaDamageFv: # 0x8009ed18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009ed5c
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009ed4c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009ed4c:
    extsh.  r0, r4
    ble-    branch_0x8009ed5c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009ed5c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveTinKoopaWaitCFP24TSpineBase_10TLiveActor_
execute__18TNerveTinKoopaWaitCFP24TSpineBase_10TLiveActor_: # 0x8009ed74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009ee0c
    lwz     r5, 0x150(r30)
    lis     r4, table_3036@h
    addi    r0, r4, table_3036@l
    lwz     r3, 0x74(r30)
    slwi    r4, r5, 2
    add     r4, r0, r4
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8009ede0
    li      r4, 0x0
    b       branch_0x8009ede8

branch_0x8009ede0:
    slwi    r0, r31, 2
    lwzx    r4, r3, r0
branch_0x8009ede8:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    stw     r0, 0x180(r30)
branch_0x8009ee0c:
    lwz     r0, 0x150(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x8009ee38
    lwz     r0, 0x180(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x8009ee38
    lis     r4, unk_0005000a@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r5, r4, unk_0005000a@l
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
branch_0x8009ee38:
    lwz     r0, 0x3c(sp)
    li      r3, 0x0
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __dt__18TNerveTinKoopaWaitFv
__dt__18TNerveTinKoopaWaitFv: # 0x8009ee54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009ee98
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009ee88
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009ee88:
    extsh.  r0, r4
    ble-    branch_0x8009ee98
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009ee98:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__16TTinKoopaManagerFv
createEnemyInstance__16TTinKoopaManagerFv: # 0x8009eeb0
    li      r3, 0x0
    blr


.globl loadAfter__16TTinKoopaManagerFv
loadAfter__16TTinKoopaManagerFv: # 0x8009eeb8
    mflr    r0
    lis     r4, onetimeFilenames_3486@h
    stw     r0, 0x4(sp)
    lis     r3, gParticleFlagLoaded@ha
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r30, r4, onetimeFilenames_3486@l
    addi    r29, r3, gParticleFlagLoaded@l
    li      r26, 0x0
    li      r31, 0x0
    li      r28, 0x1
branch_0x8009eee4:
    addi    r0, r26, 0xee
    clrlwi  r5, r0, 16
    add     r27, r29, r5
    lbz     r0, 0x0(r27)
    add     r3, r30, r31
    lwz     r4, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8009ef10
    lwz     r3, R13Off_m0x5fe0(r13)
    bl      load__18JPAResourceManagerFPCcUs
    stb     r28, 0x0(r27)
branch_0x8009ef10:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x7
    addi    r31, r31, 0x4
    blt+    branch_0x8009eee4
    lis     r4, loopFilenames_3500@h
    lis     r3, gParticleFlagLoaded@ha
    addi    r28, r4, loopFilenames_3500@l
    addi    r29, r3, gParticleFlagLoaded@l
    li      r26, 0x0
    li      r31, 0x0
    li      r30, 0x1
branch_0x8009ef3c:
    addi    r0, r26, 0x1ac
    clrlwi  r5, r0, 16
    add     r27, r29, r5
    lbz     r0, 0x0(r27)
    add     r3, r28, r31
    lwz     r4, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8009ef68
    lwz     r3, R13Off_m0x5fe0(r13)
    bl      load__18JPAResourceManagerFPCcUs
    stb     r30, 0x0(r27)
branch_0x8009ef68:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x11
    addi    r31, r31, 0x4
    blt+    branch_0x8009ef3c
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    lbz     r0, 0x1f2(r3)
    addi    r27, r3, 0x1f2
    li      r31, 0x1
    cmplwi  r0, 0x0
    lwz     r4, R13Off_m0x7e84(r13)
    bne-    branch_0x8009efa8
    lwz     r3, R13Off_m0x5fe0(r13)
    li      r5, 0x1f2
    bl      load__18JPAResourceManagerFPCcUs
    stb     r31, 0x0(r27)
branch_0x8009efa8:
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__16TTinKoopaManagerFR20JSUMemoryInputStream
load__16TTinKoopaManagerFR20JSUMemoryInputStream: # 0x8009efbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x1ac
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8009eff8
    lis     r3, unk_8037d270@ha
    addi    r4, r3, unk_8037d270@l
    addi    r3, r30, 0x0
    bl      __ct__15TTinKoopaParamsFPCc
branch_0x8009eff8:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__16TTinKoopaManagerFv
createModelData__16TTinKoopaManagerFv: # 0x8009f014
    mflr    r0
    lis     r4, entry_3481@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3481@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__16TTinKoopaManagerFPCc
__ct__16TTinKoopaManagerFPCc: # 0x8009f048
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__16TTinKoopaManager@h
    addi    r0, r3, __vvt__16TTinKoopaManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emitTinKoopaEffects__9TTinKoopaFv
emitTinKoopaEffects__9TTinKoopaFv: # 0x8009f084
    mflr    r0
    lis     r4, TTinKoopa_jointIndexTable@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x2b8(sp)
    stmw    r24, 0x298(sp)
    addi    r30, r4, TTinKoopa_jointIndexTable@l
    lis     r4, unk_803b55b0@h
    addi    r31, r3, 0x0
    addi    r29, r4, unk_803b55b0@l
    lwz     r25, 0x0(r30)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r25, 0x30
    lwz     r3, 0x58(r3)
    add     r4, r3, r0
    lfs     f2, 0x2c(r4)
    addi    r25, r30, 0x4
    lfs     f1, 0x1c(r4)
    mr      r3, r31
    lfs     f0, 0xc(r4)
    stfs    f0, 0x184(r31)
    stfs    f1, 0x188(r31)
    stfs    f2, 0x18c(r31)
    lwz     r26, 0x4(r30)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r26, 0x30
    lwz     r3, 0x58(r3)
    add     r4, r3, r0
    lfs     f2, 0x2c(r4)
    addi    r28, r30, 0xc
    lfs     f1, 0x1c(r4)
    mr      r3, r31
    lfs     f0, 0xc(r4)
    stfs    f0, 0x190(r31)
    stfs    f1, 0x194(r31)
    stfs    f2, 0x198(r31)
    lwz     r26, 0xc(r30)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r26, 0x30
    lwz     r3, 0x58(r3)
    add     r4, r3, r0
    lfs     f2, 0x2c(r4)
    addi    r27, r30, 0x10
    lfs     f1, 0x1c(r4)
    mr      r3, r31
    lfs     f0, 0xc(r4)
    stfs    f0, 0x19c(r31)
    stfs    f1, 0x1a0(r31)
    stfs    f2, 0x1a4(r31)
    lwz     r26, 0x10(r30)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r26, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    mr      r7, r31
    lfs     f1, 0x1c(r3)
    addi    r5, r31, 0x190
    lfs     f0, 0xc(r3)
    li      r4, 0x1ac
    stfs    f0, 0x1a8(r31)
    li      r6, 0x1
    stfs    f1, 0x1ac(r31)
    stfs    f2, 0x1b0(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x1
    ble-    branch_0x8009f1c0
    lwz     r26, 0x0(r28)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r26, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x1ad
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009f1c0:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x8009f1f8
    lwz     r26, 0x0(r27)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r26, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x1ae
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009f1f8:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8009f284
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f244
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r3, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r4, r3, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x8009f244:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bdc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f284
    lwz     r26, 0x8(r30)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r26, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x1af
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009f284:
    lwz     r26, 0x0(r28)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r26, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x1b0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r26, 0x0(r27)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r26, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x1fc
    li      r4, 0x1b0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    addi    r26, r30, 0x28
    lwz     r24, 0x28(r30)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x1b1
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r24, 0x0(r30)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0x1b2
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lbz     r0, R13Off_m0x6bd8(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f378
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    lis     r3, __dt__20TNerveTinKoopaDamageFv@ha
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r4, r3, __dt__20TNerveTinKoopaDamageFv@l
    addi    r3, r13, R13Off_m0x6bd4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd8(r13)
branch_0x8009f378:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bd4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009f3dc
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f3c8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r29, 0x22c
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x8009f3c8:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f43c
branch_0x8009f3dc:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x190
    li      r4, 0x1b3
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x190
    addi    r7, r31, 0x1fc
    li      r4, 0x1b3
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x190
    li      r4, 0x1b4
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x190
    addi    r7, r31, 0x1fc
    li      r4, 0x1b4
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8009f43c:
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f47c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r3, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r4, r3, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x8009f47c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bdc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f49c
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x1
    bgt-    branch_0x8009f540
branch_0x8009f49c:
    lbz     r0, R13Off_m0x6bd8(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f4dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    lis     r3, __dt__20TNerveTinKoopaDamageFv@ha
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r4, r3, __dt__20TNerveTinKoopaDamageFv@l
    addi    r3, r13, R13Off_m0x6bd4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd8(r13)
branch_0x8009f4dc:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bd4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009f540
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f52c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r29, 0x22c
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x8009f52c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f558
branch_0x8009f540:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x19c
    li      r4, 0x1b5
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8009f558:
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f598
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r3, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r4, r3, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x8009f598:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bdc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f5b8
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x2
    bgt-    branch_0x8009f65c
branch_0x8009f5b8:
    lbz     r0, R13Off_m0x6bd8(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f5f8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    lis     r3, __dt__20TNerveTinKoopaDamageFv@ha
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r4, r3, __dt__20TNerveTinKoopaDamageFv@l
    addi    r3, r13, R13Off_m0x6bd4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd8(r13)
branch_0x8009f5f8:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bd4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009f65c
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f648
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r29, 0x22c
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x8009f648:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f674
branch_0x8009f65c:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x1a8
    addi    r7, r31, 0x1fc
    li      r4, 0x1b5
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8009f674:
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f6b4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r3, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r4, r3, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x8009f6b4:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bdc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f6d4
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8009f798
branch_0x8009f6d4:
    lbz     r0, R13Off_m0x6bd8(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f714
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    lis     r3, __dt__20TNerveTinKoopaDamageFv@ha
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r4, r3, __dt__20TNerveTinKoopaDamageFv@l
    addi    r3, r13, R13Off_m0x6bd4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd8(r13)
branch_0x8009f714:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bd4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f734
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8009f798
branch_0x8009f734:
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f770
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r29, 0x22c
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x8009f770:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f7e0
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8009f798
    cmpwi   r0, 0x2
    bne-    branch_0x8009f7e0
branch_0x8009f798:
    lwz     r24, 0x0(r25)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r24, r4, r0
    addi    r5, r24, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x1b6
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r24, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x1b7
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009f7e0:
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f820
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r3, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r4, r3, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x8009f820:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bdc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f840
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x2
    bgt-    branch_0x8009f8e4
branch_0x8009f840:
    lbz     r0, R13Off_m0x6bd8(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f880
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    lis     r3, __dt__20TNerveTinKoopaDamageFv@ha
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r4, r3, __dt__20TNerveTinKoopaDamageFv@l
    addi    r3, r13, R13Off_m0x6bd4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd8(r13)
branch_0x8009f880:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bd4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009f8e4
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f8d0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r29, 0x22c
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x8009f8d0:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f8fc
branch_0x8009f8e4:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x184
    li      r4, 0x1b8
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8009f8fc:
    lbz     r0, R13Off_m0x6bd8(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f93c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    lis     r3, __dt__20TNerveTinKoopaDamageFv@ha
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r4, r3, __dt__20TNerveTinKoopaDamageFv@l
    addi    r3, r13, R13Off_m0x6bd4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd8(r13)
branch_0x8009f93c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bd4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009f9a0
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009f98c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r29, 0x22c
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x8009f98c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009f9e8
branch_0x8009f9a0:
    lwz     r24, 0x0(r26)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r24, r4, r0
    addi    r5, r24, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x1ba
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r24, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x1b9
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009f9e8:
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009fa24
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r29, 0x22c
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x8009fa24:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009fc64
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8009fa4c
    cmpwi   r0, 0x3
    bne-    branch_0x8009fa78
branch_0x8009fa4c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6568(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fa78
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x6
    lfs     f1, -0x6578(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x8009fa78:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8009fa8c
    cmpwi   r0, 0x2
    bne-    branch_0x8009fab8
branch_0x8009fa8c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6564(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fab8
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x6
    lfs     f1, -0x6578(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x8009fab8:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8009facc
    cmpwi   r0, 0x3
    bne-    branch_0x8009fb14
branch_0x8009facc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6560(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fb14
    lwz     r24, 0x8(r30)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0xf0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009fb14:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8009fb68
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6568(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fb68
    lwz     r24, 0x8(r30)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0xf1
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009fb68:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x8009fbbc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6568(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fbbc
    lwz     r24, 0x0(r25)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0xf1
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009fbbc:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8009fc10
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x655c(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fc10
    lwz     r24, 0x0(r28)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0xf2
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009fc10:
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x8009fc64
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x655c(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fc64
    lwz     r24, 0x0(r27)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r24, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r31, 0x0
    li      r4, 0xf2
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009fc64:
    lwz     r3, 0x1e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8009fc74
    bl      emitPartsDisappearEffects__18TTinKoopaPartsBaseFv
branch_0x8009fc74:
    lmw     r24, 0x298(sp)
    lwz     r0, 0x2bc(sp)
    addi    sp, sp, 0x2b8
    mtlr    r0
    blr


.globl checkTinKoopaFirstFlameMessage__9TTinKoopaFv
checkTinKoopaFirstFlameMessage__9TTinKoopaFv: # 0x8009fc88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r0, 0x164(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8009fd80
    lbz     r0, 0x168(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8009fd80
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x8009fcf8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r4, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    lis     r3, unk_803f13d4@h
    addi    r5, r3, unk_803f13d4@l
    addi    r4, r4, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x8009fcf8:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6bdc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009fd80
    lwz     r3, 0x164(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8009fd54
    lfs     f1, -0x6558(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fd80
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0xb
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, 0x1
    stb     r0, 0x168(r31)
    b       branch_0x8009fd80

branch_0x8009fd54:
    lfs     f1, -0x6554(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8009fd80
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0xb
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, 0x1
    stb     r0, 0x168(r31)
branch_0x8009fd80:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl checkTinKoopaKillerApproachingMessage__9TTinKoopaFv
checkTinKoopaKillerApproachingMessage__9TTinKoopaFv: # 0x8009fd94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stw     r31, 0x7c(sp)
    li      r31, 0x0
    stw     r30, 0x78(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x74(sp)
    li      r29, 0x0
    stw     r28, 0x70(sp)
    b       branch_0x8009fec8

branch_0x8009fdc8:
    lwz     r3, 0x18(r4)
    lwzx    r28, r3, r29
    lwz     r0, 0xf0(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x8009fec0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f30, 0x1a8(r3)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x64(sp)
    lwz     r0, 0xf0(r28)
    clrlwi. r0, r0, 31
    beq-    branch_0x8009fe24
    li      r0, 0x0
    b       branch_0x8009fea4

branch_0x8009fe24:
    lwz     r0, 0x198(r28)
    cmpwi   r0, 0x0
    beq-    branch_0x8009fe38
    li      r0, 0x0
    b       branch_0x8009fea4

branch_0x8009fe38:
    lwz     r3, 0x1ec(r30)
    addi    r4, sp, 0x5c
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x194(r28)
    addi    r28, r3, 0x0
    cmpw    r28, r4
    blt-    branch_0x8009fe68
    addi    r3, r30, 0x0
    addi    r5, r28, 0x0
    bl      calcCoasterDistance__9TTinKoopaFii
    b       branch_0x8009fe94

branch_0x8009fe68:
    lwz     r5, 0x1ec(r30)
    mr      r3, r30
    lwz     r5, 0x8(r5)
    addi    r5, r5, -0x1
    bl      calcCoasterDistance__9TTinKoopaFii
    fmr     f31, f1
    addi    r3, r30, 0x0
    addi    r5, r28, 0x0
    li      r4, 0x0
    bl      calcCoasterDistance__9TTinKoopaFii
    fadds   f1, f1, f31
branch_0x8009fe94:
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    mfcr    r0
    extrwi  r0, r0, 1, 2
branch_0x8009fea4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009fec0
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x9
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x8009fec0:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x8009fec8:
    lwz     r4, 0x1f0(r30)
    lwz     r3, 0x38(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x8009fee0
    lwz     r3, 0x14(r4)
    b       branch_0x8009fef8

branch_0x8009fee0:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r4)
    cmpw    r0, r3
    ble-    branch_0x8009fef4
    b       branch_0x8009fef8

branch_0x8009fef4:
    mr      r3, r0
branch_0x8009fef8:
    cmpw    r31, r3
    blt+    branch_0x8009fdc8
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x90
    blr


.globl launchKiller__9TTinKoopaFi
launchKiller__9TTinKoopaFi: # 0x8009ff28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r4
    stw     r28, 0x20(sp)
    mr      r28, r3
    lwz     r3, 0x1f0(r3)
    bl      getDeadEnemy__13TEnemyManagerFv
    mr.     r30, r3
    beq-    branch_0x800a000c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    cmpwi   r29, 0x1
    bne-    branch_0x8009ff84
    lwz     r3, 0x174(r28)
    addi    r0, r3, 0xb
    b       branch_0x8009ff8c

branch_0x8009ff84:
    lwz     r0, 0x174(r28)
    subfic  r0, r0, 0xe
branch_0x8009ff8c:
    lis     r3, TTinKoopa_jointIndexTable@h
    slwi    r4, r0, 2
    addi    r0, r3, TTinKoopa_jointIndexTable@l
    add     r3, r0, r4
    lwz     r31, 0x0(r3)
    addi    r3, r28, 0x0
    addi    r5, r30, 0x10
    addi    r4, r31, 0x0
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    stw     r29, 0x198(r30)
    mr      r3, r28
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r4, r0
    addi    r7, r28, 0x0
    li      r4, 0xef
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x285d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a000c
    addi    r4, r30, 0x10
    li      r3, 0x285d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a000c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl hitParts__9TTinKoopaFv
hitParts__9TTinKoopaFv: # 0x800a002c
    mflr    r0
    lis     r4, TTinKoopa_jointIndexTable@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r4, TTinKoopa_jointIndexTable@l
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    addi    r29, r3, 0x0
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a0090
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTinKoopaBreak@h
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r3, __vvt__19TNerveTinKoopaBreak@l
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x800a0090:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x6bcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800a0264
    lbz     r0, R13Off_m0x6bd8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a00e4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    lis     r3, __dt__20TNerveTinKoopaDamageFv@ha
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r4, r3, __dt__20TNerveTinKoopaDamageFv@l
    addi    r3, r13, R13Off_m0x6bd4
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd8(r13)
branch_0x800a00e4:
    lwz     r3, 0x8c(r29)
    addi    r30, r13, R13Off_m0x6bd4
    lwz     r0, 0x14(r3)
    cmplw   r0, r30
    beq-    branch_0x800a0264
    lwz     r0, 0x150(r29)
    cmpwi   r0, 0x4
    beq-    branch_0x800a0264
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x24
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    lwz     r3, 0x1c8(r29)
    addi    r0, r3, -0x1
    stw     r0, 0x1c8(r29)
    lwz     r0, 0x1c8(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x800a01cc
    lbz     r0, R13Off_m0x6bd0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a0170
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTinKoopaBreak@h
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r0, r3, __vvt__19TNerveTinKoopaBreak@l
    lis     r3, __dt__19TNerveTinKoopaBreakFv@ha
    stw     r0, R13Off_m0x6bcc(r13)
    addi    r4, r3, __dt__19TNerveTinKoopaBreakFv@l
    addi    r3, r13, R13Off_m0x6bcc
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd0(r13)
branch_0x800a0170:
    addi    r5, r13, R13Off_m0x6bcc
    lwz     r6, 0x8c(r29)
    cmplwi  r5, 0x0
    beq-    branch_0x800a0264
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800a01bc
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x800a01bc
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x800a01bc:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
    b       branch_0x800a0264

branch_0x800a01cc:
    lbz     r0, R13Off_m0x6bd8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a020c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTinKoopaDamage@h
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r0, r3, __vvt__20TNerveTinKoopaDamage@l
    lis     r3, __dt__20TNerveTinKoopaDamageFv@ha
    stw     r0, R13Off_m0x6bd4(r13)
    addi    r4, r3, __dt__20TNerveTinKoopaDamageFv@l
    addi    r3, r30, 0x0
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bd8(r13)
branch_0x800a020c:
    addi    r5, r13, R13Off_m0x6bd4
    lwz     r6, 0x8c(r29)
    cmplwi  r5, 0x0
    beq-    branch_0x800a0264
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800a0258
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x800a0258
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x800a0258:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x800a0264:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl receiveMessage__9TTinKoopaFP9THitActorUl
receiveMessage__9TTinKoopaFP9THitActorUl: # 0x800a0280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xf000
    cmplwi  r0, 0x2b
    bne-    branch_0x800a02a8
    bl      hitParts__9TTinKoopaFv
    li      r3, 0x1
    b       branch_0x800a02ac

branch_0x800a02a8:
    li      r3, 0x0
branch_0x800a02ac:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getBasNameTable__9TTinKoopaCFv
getBasNameTable__9TTinKoopaCFv: # 0x800a02bc
    lis     r3, tinkoopa_bastable@h
    addi    r3, r3, tinkoopa_bastable@l
    blr


.globl perform__9TTinKoopaFUlPQ26JDrama9TGraphics
perform__9TTinKoopaFUlPQ26JDrama9TGraphics: # 0x800a02c8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x70(sp)
    stmw    r26, 0x58(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x800a03a4
    mr      r3, r29
    bl      emitTinKoopaEffects__9TTinKoopaFv
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a0338
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r4, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    lis     r3, unk_803f13d4@h
    addi    r5, r3, unk_803f13d4@l
    addi    r4, r4, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x800a0338:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x6bdc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800a03a4
    lwz     r3, 0x174(r29)
    lwz     r0, 0x170(r29)
    cmpw    r3, r0
    bge-    branch_0x800a03a4
    lwz     r0, 0x178(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x800a03a4
    add     r3, r29, r3
    lbz     r4, 0x169(r3)
    addi    r3, r29, 0x0
    extsb   r4, r4
    bl      launchKiller__9TTinKoopaFi
    lwz     r4, 0x174(r29)
    addi    r3, r29, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x174(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x180(r3)
    stw     r0, 0x178(r29)
branch_0x800a03a4:
    clrlwi. r0, r30, 31
    beq-    branch_0x800a04dc
    addi    r4, r29, 0x178
    lwz     r3, 0x178(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x800a03c4
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x800a03c4:
    addi    r4, r29, 0x17c
    lwz     r3, 0x17c(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x800a03dc
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x800a03dc:
    addi    r4, r29, 0x180
    lwz     r3, 0x180(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x800a03f4
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x800a03f4:
    lwz     r3, 0x164(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800a0458
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6570(r2)
    addi    r4, r4, -0x1
    xoris   r4, r4, 0x8000
    stw     r4, 0x54(sp)
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f1, f0, f1
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a0458
    lwz     r3, 0x15c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x15c(r29)
    lwz     r0, 0x15c(r29)
    cmpwi   r0, 0x2
    ble-    branch_0x800a0458
    li      r0, 0x0
    stw     r0, 0x15c(r29)
branch_0x800a0458:
    lwz     r26, 0x1f4(r29)
    li      r27, 0x0
    li      r28, 0x0
    b       branch_0x800a047c

branch_0x800a0468:
    lwz     r3, 0x8(r26)
    lwzx    r3, r3, r28
    bl      checkOrder__20TTinKoopaLaunchOrderFv
    addi    r27, r27, 0x1
    addi    r28, r28, 0x4
branch_0x800a047c:
    lbz     r0, 0x0(r26)
    cmpw    r27, r0
    blt+    branch_0x800a0468
    mr      r3, r29
    bl      checkTinKoopaKillerApproachingMessage__9TTinKoopaFv
    lwz     r3, 0x164(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800a04d4
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x15c(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x800a04d4
    lfs     f1, -0x6550(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a04d4
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0xa
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800a04d4:
    mr      r3, r29
    bl      checkTinKoopaFirstFlameMessage__9TTinKoopaFv
branch_0x800a04dc:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x160(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    li      r26, 0x0
    li      r28, 0x0
branch_0x800a0510:
    addi    r0, r28, 0x1cc
    lwzx    r3, r29, r0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
    cmpwi   r26, 0x6
    addi    r28, r28, 0x4
    blt+    branch_0x800a0510
    lmw     r26, 0x58(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl resetTinKoopa__9TTinKoopaFv
resetTinKoopa__9TTinKoopaFv: # 0x800a0554
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    mr      r29, r3
    lwz     r0, 0x1f0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a05b4
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_8037d284@ha
    addi    r31, r3, unk_8037d284@l
    lwz     r30, 0x4(r4)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x1f0(r29)
branch_0x800a05b4:
    lwz     r3, 0x1f0(r29)
    lwz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    lwz     r4, R13Off_m0x60d8(r13)
    li      r31, 0x0
    addi    r3, r29, 0x0
    lwz     r0, 0x400(r4)
    stw     r0, 0x164(r29)
    stw     r31, 0x150(r29)
    stw     r31, 0x154(r29)
    stw     r31, 0x158(r29)
    stw     r31, 0x15c(r29)
    stb     r31, 0x168(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xb8(r3)
    stw     r0, 0x1c8(r29)
    stw     r31, 0x1e4(r29)
    stw     r31, 0x170(r29)
    stw     r31, 0x174(r29)
    stb     r31, 0x169(r29)
    stb     r31, 0x16a(r29)
    stb     r31, 0x16b(r29)
    stb     r31, 0x16c(r29)
    stw     r31, 0x178(r29)
    stw     r31, 0x17c(r29)
    stw     r31, 0x180(r29)
    stw     r31, 0x178(r29)
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x1b4(r29)
    lfs     f0, -0x654c(r2)
    stfs    f0, 0x1b8(r29)
    lfs     f0, -0x653c(r2)
    stfs    f0, 0x1bc(r29)
    lfs     f0, -0x6538(r2)
    stfs    f0, 0x1c0(r29)
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl reset__9TTinKoopaFv
reset__9TTinKoopaFv: # 0x800a0668
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    stw     r28, 0x98(sp)
    bl      reset__11TSpineEnemyFv
    lwz     r29, 0x160(r31)
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xcc(r3)
    li      r30, 0x0
    li      r28, 0x0
    extsh   r0, r0
    sth     r0, 0x70(r29)
    lfs     f0, -0x6578(r2)
    stfs    f0, 0x6c(r29)
    stb     r30, 0x72(r29)
branch_0x800a06c8:
    addi    r0, r30, 0x1cc
    lwzx    r3, r31, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    cmpwi   r28, 0x6
    addi    r30, r30, 0x4
    blt+    branch_0x800a06c8
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800a074c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x158(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x144(r3)
    mr      r3, r31
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x50(r31)
    stfs    f0, 0x54(r31)
    stfs    f1, 0x58(r31)
    stfs    f31, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x800a07a8

branch_0x800a074c:
    cmpwi   r0, 0x1
    bne-    branch_0x800a07a4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x16c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x144(r3)
    mr      r3, r31
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x50(r31)
    stfs    f0, 0x54(r31)
    stfs    f1, 0x58(r31)
    stfs    f31, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x800a07a8

branch_0x800a07a4:
    cmpwi   r0, 0x2
branch_0x800a07a8:
    lwz     r29, 0x160(r31)
    lwz     r3, 0x68(r29)
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800a080c
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r29)
    lfs     f31, 0x108(r3)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xf4(r3)
    mr      r3, r29
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x50(r29)
    stfs    f0, 0x54(r29)
    stfs    f1, 0x58(r29)
    stfs    f31, 0x5c(r29)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x800a0860

branch_0x800a080c:
    cmpwi   r0, 0x1
    bne-    branch_0x800a0860
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r29)
    lfs     f31, 0x130(r3)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x11c(r3)
    mr      r3, r29
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x50(r29)
    stfs    f0, 0x54(r29)
    stfs    f1, 0x58(r29)
    stfs    f31, 0x5c(r29)
    bl      calcEntryRadius__9THitActorFv
branch_0x800a0860:
    mr      r3, r31
    bl      resetTinKoopa__9TTinKoopaFv
    lwz     r5, 0x150(r31)
    lis     r4, table_3036@h
    addi    r0, r4, table_3036@l
    lwz     r3, 0x74(r31)
    slwi    r4, r5, 2
    add     r4, r0, r4
    lwz     r29, 0x0(r4)
    mr      r4, r29
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800a08b0
    li      r4, 0x0
    b       branch_0x800a08b8

branch_0x800a08b0:
    slwi    r0, r29, 2
    lwzx    r4, r3, r0
branch_0x800a08b8:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xb0
    blr


.globl calcCoasterDistance__9TTinKoopaFii
calcCoasterDistance__9TTinKoopaFii: # 0x800a08e4
    cmpw    r4, r5
    lfs     f1, -0x6574(r2)
    slwi    r6, r4, 2
    subf    r4, r4, r5
    bgelr-    

    srwi.   r0, r4, 3
    mtctr   r0
    beq-    branch_0x800a0974
branch_0x800a0904:
    lwz     r5, 0x1e8(r3)
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    bdnz+      branch_0x800a0904
    andi.   r4, r4, 0x7
    beqlr-    

branch_0x800a0974:
    mtctr   r4
branch_0x800a0978:
    lwz     r5, 0x1e8(r3)
    lfsx    f0, r5, r6
    addi    r6, r6, 0x4
    fadds   f1, f1, f0
    bdnz+      branch_0x800a0978
    blr


.globl __ct__9TTinKoopaFPCc
__ct__9TTinKoopaFPCc: # 0x800a0990
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__9TTinKoopa@h
    addi    r3, r3, __vvt__9TTinKoopa@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x1f0(r31)
    stw     r0, 0x1f8(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lfs     f0, -0x6534(r2)
    stfs    f0, 0xb8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calc__16TTinKoopaMtxCalcFUs
calc__16TTinKoopaMtxCalcFUs: # 0x800a0a00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      calc__24M3UMtxCalcSIAnmBlendQuatFUs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__18TTinKoopaPartsBaseFUlPQ26JDrama9TGraphics
perform__18TTinKoopaPartsBaseFUlPQ26JDrama9TGraphics: # 0x800a0a20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x28(sp)
    bl      perform__10TLiveActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x800a0a94
    lwz     r4, 0xfc(r29)
    lis     r3, TTinKoopa_jointIndexTable@h
    addi    r0, r3, TTinKoopa_jointIndexTable@l
    lwz     r3, 0x100(r29)
    slwi    r4, r4, 2
    add     r4, r0, r4
    lwz     r28, 0x0(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mulli   r0, r28, 0x30
    lwz     r3, 0xf4(r29)
    lwz     r12, 0x0(r3)
    add     r4, r4, r0
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x800a0a94:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800a0ad0
    lbz     r0, 0xf8(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800a0ad0
    lwz     r3, 0x104(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800a0ad0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a0ad0
    li      r0, 0x0
    stb     r0, 0xf8(r29)
branch_0x800a0ad0:
    lbz     r0, 0xf8(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800a0af4
    lwz     r3, 0x104(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800a0af4
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x800a0af4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl moveMtx__17TMapCollisionMoveFPA4_f
moveMtx__17TMapCollisionMoveFPA4_f: # 0x800a0b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    bl      move__17TMapCollisionMoveFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__18TTinKoopaPartsBaseFP9THitActorUl
receiveMessage__18TTinKoopaPartsBaseFP9THitActorUl: # 0x800a0b50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xf000
    cmplwi  r0, 0x2b
    bne-    branch_0x800a0b7c
    lwz     r3, 0x100(r3)
    bl      hitParts__9TTinKoopaFv
    li      r3, 0x1
    b       branch_0x800a0b80

branch_0x800a0b7c:
    li      r3, 0x0
branch_0x800a0b80:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitPartsDisappearEffects__18TTinKoopaPartsBaseFPPCcif
emitPartsDisappearEffects__18TTinKoopaPartsBaseFPPCcif: # 0x800a0b90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r23, 0x6c(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    li      r31, 0x0
    li      r27, 0x0
    li      r26, 0x0
    lwz     r6, 0x24(r3)
    lis     r3, unk_8037d2a4@ha
    lwz     r0, 0x28(r28)
    addi    r25, r3, unk_8037d2a4@l
    stw     r6, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x2c(r28)
    stw     r0, 0x64(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x60(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x64(sp)
    lwz     r3, 0x104(r28)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r23, 0xb0(r3)
    b       branch_0x800a0c90

branch_0x800a0c10:
    mr      r3, r23
    lwzx    r4, r29, r26
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, 0x0
    bge-    branch_0x800a0c28
    b       branch_0x800a0c98

branch_0x800a0c28:
    lwz     r4, 0x104(r28)
    add     r7, r28, r27
    addi    r24, r7, 0x108
    lwz     r4, 0x4(r4)
    mulli   r0, r3, 0x30
    lwz     r3, 0x58(r4)
    addi    r4, r24, 0x0
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    mr      r5, r25
    lfs     f1, 0x1c(r3)
    li      r6, 0x1
    lfs     f0, 0xc(r3)
    stfs    f0, 0x108(r7)
    stfs    f1, 0x10c(r7)
    stfs    f2, 0x110(r7)
    lwz     r3, R13Off_m0x70b0(r13)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800a0c98
    addi    r4, r24, 0x0
    addi    r5, sp, 0x5c
    bl      generate__16TEffectExplosionFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    addi    r31, r31, 0x1
    addi    r27, r27, 0xc
    addi    r26, r26, 0x4
branch_0x800a0c90:
    cmpw    r31, r30
    blt+    branch_0x800a0c10
branch_0x800a0c98:
    lmw     r23, 0x6c(sp)
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl emitPartsDisappearEffects__18TTinKoopaPartsBaseFv
emitPartsDisappearEffects__18TTinKoopaPartsBaseFv: # 0x800a0cac
    mflr    r0
    lis     r4, unk_803b55b0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, unk_803b55b0@l
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r3, 0x104(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800a0db8
    lwz     r0, 0xfc(r30)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0xe8(r4)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a0db8
    lwz     r3, 0x104(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    li      r0, 0x3c
    lfd     f1, -0x6570(r2)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a0db8
    lwz     r0, 0xfc(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800a0d50
    lfs     f1, -0x6530(r2)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x17c
    li      r5, 0x6
    bl      emitPartsDisappearEffects__18TTinKoopaPartsBaseFPPCcif
    b       branch_0x800a0dac

branch_0x800a0d50:
    cmpwi   r0, 0x2
    bne-    branch_0x800a0d70
    lfs     f1, -0x6530(r2)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x194
    li      r5, 0x6
    bl      emitPartsDisappearEffects__18TTinKoopaPartsBaseFPPCcif
    b       branch_0x800a0dac

branch_0x800a0d70:
    cmpwi   r0, 0x3
    bne-    branch_0x800a0d90
    lfs     f1, -0x6540(r2)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1ac
    li      r5, 0x4
    bl      emitPartsDisappearEffects__18TTinKoopaPartsBaseFPPCcif
    b       branch_0x800a0dac

branch_0x800a0d90:
    cmpwi   r0, 0x4
    bne-    branch_0x800a0dac
    lfs     f1, -0x6540(r2)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1bc
    li      r5, 0x4
    bl      emitPartsDisappearEffects__18TTinKoopaPartsBaseFPPCcif
branch_0x800a0dac:
    lwz     r3, 0x100(r30)
    li      r0, 0x0
    stw     r0, 0x1e4(r3)
branch_0x800a0db8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl emitPartsTrackEffects__18TTinKoopaPartsBaseFPPCci
emitPartsTrackEffects__18TTinKoopaPartsBaseFPPCci: # 0x800a0dd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r25, 0x64(sp)
    mr      r25, r3
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    lwz     r3, 0x104(r3)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x104(r25)
    li      r28, 0x0
    li      r31, 0x0
    lwz     r3, 0x4(r3)
    li      r30, 0x0
    lwz     r3, 0x4(r3)
    lwz     r29, 0xb0(r3)
    b       branch_0x800a0e90

branch_0x800a0e24:
    mr      r3, r29
    lwzx    r4, r26, r30
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, 0x0
    bge-    branch_0x800a0e3c
    b       branch_0x800a0e98

branch_0x800a0e3c:
    lwz     r4, 0x104(r25)
    add     r7, r25, r31
    mulli   r0, r3, 0x30
    lwz     r3, 0x4(r4)
    lwz     r3, 0x58(r3)
    addi    r5, r7, 0x108
    li      r4, 0xf4
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    li      r6, 0x0
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x108(r7)
    stfs    f1, 0x10c(r7)
    stfs    f2, 0x110(r7)
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r7, 0x100(r25)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    addi    r28, r28, 0x1
    addi    r31, r31, 0xc
    addi    r30, r30, 0x4
branch_0x800a0e90:
    cmpw    r28, r27
    blt+    branch_0x800a0e24
branch_0x800a0e98:
    lmw     r25, 0x64(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl startBreaking__18TTinKoopaPartsBaseFv
startBreaking__18TTinKoopaPartsBaseFv: # 0x800a0eac
    mflr    r0
    lis     r5, unk_803b55b0@h
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r5, unk_803b55b0@l
    stw     r29, 0x54(sp)
    stb     r0, 0xf8(r3)
    lis     r3, TTinKoopa_jointIndexTable@h
    addi    r0, r3, TTinKoopa_jointIndexTable@l
    lwz     r4, 0xfc(r31)
    lwz     r3, 0x100(r31)
    slwi    r4, r4, 2
    add     r4, r0, r4
    lwz     r29, 0x0(r4)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r29, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x18(r31)
    lwz     r3, 0x104(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800a0ff0
    lwz     r0, 0xfc(r31)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0xe8(r4)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x104(r31)
    lfs     f0, 0x10(r31)
    lwz     r3, 0x4(r3)
    stfs    f0, 0x2c(r3)
    addi    r4, r3, 0x20
    mr      r3, r4
    lfs     f0, 0x14(r31)
    stfs    f0, 0x1c(r4)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x2c(r4)
    lwz     r4, 0x104(r31)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r0, 0x104(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800a0ff0
    lwz     r0, 0xfc(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800a0fa0
    addi    r3, r31, 0x0
    addi    r4, r30, 0x17c
    li      r5, 0x6
    bl      emitPartsTrackEffects__18TTinKoopaPartsBaseFPPCci
    b       branch_0x800a0ff0

branch_0x800a0fa0:
    cmpwi   r0, 0x2
    bne-    branch_0x800a0fbc
    addi    r3, r31, 0x0
    addi    r4, r30, 0x194
    li      r5, 0x6
    bl      emitPartsTrackEffects__18TTinKoopaPartsBaseFPPCci
    b       branch_0x800a0ff0

branch_0x800a0fbc:
    cmpwi   r0, 0x3
    bne-    branch_0x800a0fd8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1ac
    li      r5, 0x4
    bl      emitPartsTrackEffects__18TTinKoopaPartsBaseFPPCci
    b       branch_0x800a0ff0

branch_0x800a0fd8:
    cmpwi   r0, 0x4
    bne-    branch_0x800a0ff0
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1bc
    li      r5, 0x4
    bl      emitPartsTrackEffects__18TTinKoopaPartsBaseFPPCci
branch_0x800a0ff0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl setUpTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_
setUpTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_: # 0x800a100c
    mflr    r0
    lis     r5, unk_8037c98c@ha
    stw     r0, 0x4(sp)
    addi    r8, r5, unk_8037c98c@l
    lis     r5, unk_8037c980@ha
    stwu    sp, -0x50(sp)
    addi    r6, r5, unk_8037c980@l
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x20
    lwz     r7, 0x0(r8)
    lwz     r0, 0x4(r8)
    stw     r7, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r8)
    stw     r0, 0x20(sp)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    lfs     f7, 0x18(sp)
    stw     r5, 0x30(sp)
    lfs     f8, 0x1c(sp)
    stw     r0, 0x34(sp)
    lfs     f0, 0x20(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x38(sp)
    lfs     f4, 0x30(sp)
    lfs     f5, 0x34(sp)
    lfs     f6, 0x38(sp)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x0(r4)
    lfs     f2, 0x4(r4)
    lfs     f3, 0x8(r4)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl reset__18TTinKoopaPartsBaseFv
reset__18TTinKoopaPartsBaseFv: # 0x800a10b8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stb     r0, 0xf8(r3)
    addi    r4, sp, 0xc
    lfs     f0, -0x6574(r2)
    stfs    f0, 0xc(sp)
    stfs    f0, 0x10(sp)
    stfs    f0, 0x14(sp)
    lwz     r3, 0xf4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initTinKoopaPartsBase__18TTinKoopaPartsBaseFv
initTinKoopaPartsBase__18TTinKoopaPartsBaseFv: # 0x800a1104
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r6, 0x0
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    stw     r3, 0x8(sp)
    lis     r3, unk_803b55b0@h
    lfs     f1, -0x6574(r2)
    addi    r31, r3, unk_803b55b0@l
    lwz     r29, 0x8(sp)
    fmr     f2, f1
    lwz     r0, 0xfc(r29)
    fmr     f3, f1
    fmr     f4, f1
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r4, 0x100(r3)
    addi    r3, r29, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r29)
    lis     r3, unk_8037d2c0@ha
    addi    r30, r3, unk_8037d2c0@l
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    mr      r3, r30
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x4c
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0x80
    addi    r4, sp, 0x48
    stw     r0, 0x48(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x80(sp)
    addi    r5, sp, 0x58
    addi    r4, r30, 0x0
    stw     r0, 0x7c(sp)
    addi    r3, sp, 0x54
    addi    r6, sp, 0x8
    lwz     r0, 0x7c(sp)
    stw     r0, 0x58(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800a11fc
    mr      r3, r30
    bl      __ct__17TMapCollisionMoveFv
branch_0x800a11fc:
    lwz     r29, 0x8(sp)
    li      r5, 0x0
    stw     r30, 0xf4(r29)
    mr      r6, r29
    lwz     r3, 0xf4(r29)
    lwz     r0, 0xfc(r29)
    lwz     r12, 0x0(r3)
    slwi    r0, r0, 2
    lwz     r12, 0x8(r12)
    add     r4, r31, r0
    lwz     r4, 0xb8(r4)
    mtlr    r12
    blrl
    lfs     f0, -0x6574(r2)
    addi    r4, sp, 0x88
    stfs    f0, 0x88(sp)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x90(sp)
    lwz     r3, 0xf4(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xfc(r29)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r0, 0xd0(r3)
    cmplwi  r0, 0x0
    mr      r4, r0
    beq-    branch_0x800a1294
    lwz     r3, 0x100(r29)
    li      r5, 0x0
    lwz     r3, 0x78(r3)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x104(r29)
    li      r4, 0x1
    lwz     r3, 0x104(r29)
    bl      setLightType__6MActorFi
branch_0x800a1294:
    lwz     r3, 0x8(sp)
    li      r0, 0x0
    addi    r4, sp, 0x60
    stb     r0, 0xf8(r3)
    lfs     f0, -0x6574(r2)
    stfs    f0, 0x60(sp)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x68(sp)
    lwz     r3, 0xf4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl checkOrder__20TTinKoopaLaunchOrderFv
checkOrder__20TTinKoopaLaunchOrderFv: # 0x800a12e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lwz     r4, 0x0(r3)
    lbz     r0, 0x4(r3)
    lwz     r3, 0x15c(r4)
    extsb   r0, r0
    cmpw    r3, r0
    bne-    branch_0x800a1438
    lwz     r3, 0x164(r4)
    lwz     r30, 0x8(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x800a132c
    li      r0, 0x0
    b       branch_0x800a1368

branch_0x800a132c:
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    xoris   r0, r30, 0x8000
    lfd     f1, -0x6570(r2)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a1364
    li      r0, 0x1
    b       branch_0x800a1368

branch_0x800a1364:
    li      r0, 0x0
branch_0x800a1368:
    clrlwi. r0, r0, 24
    beq-    branch_0x800a1438
    lbz     r0, 0xc(r31)
    li      r6, 0x1
    extsb   r0, r0
    cmpwi   r0, -0x1
    bne-    branch_0x800a13cc
    lwz     r3, 0x0(r31)
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800a139c
    li      r6, 0x1
    b       branch_0x800a13d0

branch_0x800a139c:
    cmpwi   r0, 0x1
    bne-    branch_0x800a13ac
    li      r6, 0x1
    b       branch_0x800a13d0

branch_0x800a13ac:
    cmpwi   r0, 0x2
    bne-    branch_0x800a13bc
    li      r6, 0x2
    b       branch_0x800a13d0

branch_0x800a13bc:
    cmpwi   r0, 0x3
    bne-    branch_0x800a13d0
    li      r6, 0x3
    b       branch_0x800a13d0

branch_0x800a13cc:
    mr      r6, r0
branch_0x800a13d0:
    lbz     r5, 0xd(r31)
    cmpwi   r5, 0x1
    bne-    branch_0x800a13f4
    cmpwi   r6, 0x2
    bgt-    branch_0x800a13ec
    mr      r0, r6
    b       branch_0x800a13f0

branch_0x800a13ec:
    li      r0, 0x2
branch_0x800a13f0:
    mr      r6, r0
branch_0x800a13f4:
    cmpwi   r6, 0x4
    lwz     r4, 0x0(r31)
    mr      r0, r6
    ble-    branch_0x800a1408
    li      r0, 0x4
branch_0x800a1408:
    li      r3, 0x0
    stw     r3, 0x174(r4)
    stw     r0, 0x170(r4)
    b       branch_0x800a1424

branch_0x800a1418:
    addi    r0, r3, 0x169
    stbx    r5, r4, r0
    addi    r3, r3, 0x1
branch_0x800a1424:
    lwz     r0, 0x170(r4)
    cmpw    r3, r0
    blt+    branch_0x800a1418
    li      r0, 0x0
    stw     r0, 0x178(r4)
branch_0x800a1438:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl emitFlameEffects__14TTinKoopaFlameFv
emitFlameEffects__14TTinKoopaFlameFv: # 0x800a1450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a14b4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r4, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    lis     r3, unk_803f13d4@h
    addi    r5, r3, unk_803f13d4@l
    addi    r4, r4, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x800a14b4:
    lwz     r3, 0x68(r31)
    addi    r0, r13, R13Off_m0x6bdc
    lwz     r4, 0x8c(r3)
    lwz     r4, 0x14(r4)
    cmplw   r4, r0
    bne-    branch_0x800a1664
    lis     r4, TTinKoopa_jointIndexTable@h
    addi    r4, r4, TTinKoopa_jointIndexTable@l
    lwz     r30, 0x20(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x68(r31)
    mulli   r4, r30, 0x30
    lwz     r3, 0x58(r3)
    lwz     r0, 0x150(r5)
    lfs     f2, -0x6578(r2)
    add     r30, r3, r4
    cmpwi   r0, 0x0
    beq-    branch_0x800a1500
    lfs     f2, -0x652c(r2)
branch_0x800a1500:
    lwz     r0, 0x17c(r5)
    cmpwi   r0, 0x0
    ble-    branch_0x800a1534
    lfs     f1, 0x6c(r31)
    lfs     f0, -0x6528(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x6c(r31)
    lfs     f1, 0x6c(r31)
    lfs     f0, -0x6524(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a1558
    stfs    f0, 0x6c(r31)
    b       branch_0x800a1558

branch_0x800a1534:
    lfs     f1, 0x6c(r31)
    lfs     f0, -0x6528(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(r31)
    lfs     f1, 0x6c(r31)
    lfs     f0, -0x6578(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800a1558
    stfs    f0, 0x6c(r31)
branch_0x800a1558:
    lfs     f0, 0x6c(r31)
    lwz     r3, 0x68(r31)
    fmuls   f30, f0, f2
    lwz     r0, 0x17c(r3)
    fmr     f31, f30
    cmpwi   r0, 0x0
    ble-    branch_0x800a157c
    lfs     f0, -0x6544(r2)
    fmuls   f31, f31, f0
branch_0x800a157c:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x1bb
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800a15b4
    stfs    f30, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f30, 0x15c(r3)
    stfs    f30, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f30, 0x17c(r3)
branch_0x800a15b4:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x1bc
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800a15ec
    stfs    f30, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f30, 0x15c(r3)
    stfs    f30, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f30, 0x17c(r3)
branch_0x800a15ec:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x0
    addi    r7, r31, 0x0
    li      r4, 0x1f2
    li      r6, 0x3
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800a1624
    stfs    f30, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f30, 0x15c(r3)
    stfs    f30, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f30, 0x17c(r3)
branch_0x800a1624:
    lis     r30, unk_00008135@ha
    lwz     r3, R13Off_m0x6044(r13)
    addi    r4, r30, unk_00008135@l
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a1664
    fmr     f1, f30
    addi    r3, r30, -0x7ecb
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800a1664:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl perform__14TTinKoopaFlameFUlPQ26JDrama9TGraphics
perform__14TTinKoopaFlameFUlPQ26JDrama9TGraphics: # 0x800a1684
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r29, 31
    beq-    branch_0x800a1744
    lwz     r3, 0x68(r31)
    lwz     r0, 0x17c(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x800a1744
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x800a1744
    cmpwi   r0, 0x0
    bne-    branch_0x800a16dc
    li      r30, 0xabe
    b       branch_0x800a16e0

branch_0x800a16dc:
    li      r30, 0xd48
branch_0x800a16e0:
    lwz     r3, 0x164(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x800a16f4
    li      r0, 0x0
    b       branch_0x800a1730

branch_0x800a16f4:
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    xoris   r0, r30, 0x8000
    lfd     f1, -0x6570(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f1, f0, f1
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a172c
    li      r0, 0x1
    b       branch_0x800a1730

branch_0x800a172c:
    li      r0, 0x0
branch_0x800a1730:
    clrlwi. r0, r0, 24
    beq-    branch_0x800a1744
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800a1744:
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x800a17b0
    lis     r4, TTinKoopa_jointIndexTable@h
    lwz     r3, 0x68(r31)
    addi    r4, r4, TTinKoopa_jointIndexTable@l
    lwz     r30, 0x24(r4)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r3, 0x58(r3)
    add     r4, r3, r0
    lfs     f0, 0xc(r4)
    mr      r3, r31
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x18(r31)
    bl      emitFlameEffects__14TTinKoopaFlameFv
    lwz     r3, 0x68(r31)
    lwz     r0, 0x17c(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x800a17a8
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
branch_0x800a17a8:
    li      r0, 0x0
    stb     r0, 0x72(r31)
branch_0x800a17b0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl receiveMessage__14TTinKoopaFlameFP9THitActorUl
receiveMessage__14TTinKoopaFlameFP9THitActorUl: # 0x800a17cc
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x800a189c
    lwz     r3, 0x68(r31)
    lwz     r0, 0x17c(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x800a1894
    lha     r3, 0x70(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x800a180c
    addi    r0, r3, -0x1
    sth     r0, 0x70(r31)
branch_0x800a180c:
    lha     r0, 0x70(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x800a1868
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xcc(r3)
    extsh   r0, r0
    sth     r0, 0x70(r31)
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xe0(r3)
    lwz     r3, 0x68(r31)
    extsh   r0, r0
    stw     r0, 0x17c(r3)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x800a1868:
    lbz     r0, 0x72(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800a1894
    li      r0, 0x1
    stb     r0, 0x72(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0xf3
    li      r6, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800a1894:
    li      r3, 0x1
    b       branch_0x800a18a0

branch_0x800a189c:
    li      r3, 0x0
branch_0x800a18a0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl makeLaunchSchedule__9TTinKoopaFv
makeLaunchSchedule__9TTinKoopaFv: # 0x800a18b4
    stwu    sp, -0x28(sp)
    li      r4, 0x0
    li      r6, 0x7
    stmw    r26, 0x10(sp)
    li      r11, 0x2
    li      r10, 0x3
    slwi    r4, r4, 2
    li      r0, 0x1
    slwi    r28, r11, 2
    li      r27, 0x4ce
    slwi    r30, r10, 2
    li      r8, 0x5
    lwz     r5, 0x1f4(r3)
    li      r31, 0xf0
    li      r9, 0x4
    lwz     r5, 0x8(r5)
    slwi    r10, r8, 2
    li      r7, 0x6
    lwzx    r12, r5, r4
    li      r5, 0x0
    slwi    r8, r7, 2
    stb     r5, 0x4(r12)
    li      r4, 0x258
    li      r7, 0x384
    stw     r4, 0x8(r12)
    li      r4, -0x1
    slwi    r6, r6, 2
    stb     r4, 0xc(r12)
    stb     r5, 0xd(r12)
    slwi    r12, r0, 2
    li      r0, 0x1
    lwz     r29, 0x1f4(r3)
    lwz     r11, 0x8(r29)
    li      r29, 0x992
    lwzx    r26, r11, r12
    slwi    r12, r9, 2
    li      r11, 0x118
    stb     r5, 0x4(r26)
    li      r9, 0x276
    stw     r27, 0x8(r26)
    stb     r4, 0xc(r26)
    stb     r0, 0xd(r26)
    lwz     r27, 0x1f4(r3)
    lwz     r27, 0x8(r27)
    lwzx    r27, r27, r28
    stb     r5, 0x4(r27)
    stw     r29, 0x8(r27)
    stb     r4, 0xc(r27)
    stb     r0, 0xd(r27)
    lwz     r29, 0x1f4(r3)
    lwz     r29, 0x8(r29)
    lwzx    r27, r29, r30
    stb     r0, 0x4(r27)
    stw     r31, 0x8(r27)
    stb     r4, 0xc(r27)
    stb     r5, 0xd(r27)
    lwz     r31, 0x1f4(r3)
    lwz     r31, 0x8(r31)
    lwzx    r12, r31, r12
    stb     r0, 0x4(r12)
    stw     r11, 0x8(r12)
    stb     r4, 0xc(r12)
    stb     r0, 0xd(r12)
    lwz     r11, 0x1f4(r3)
    lwz     r11, 0x8(r11)
    lwzx    r10, r11, r10
    stb     r0, 0x4(r10)
    stw     r9, 0x8(r10)
    stb     r4, 0xc(r10)
    stb     r5, 0xd(r10)
    lwz     r9, 0x1f4(r3)
    lwz     r9, 0x8(r9)
    lwzx    r8, r9, r8
    stb     r0, 0x4(r8)
    stw     r7, 0x8(r8)
    stb     r4, 0xc(r8)
    stb     r5, 0xd(r8)
    lwz     r7, 0x1f4(r3)
    lwz     r7, 0x8(r7)
    lwzx    r9, r7, r6
    stb     r0, 0x4(r9)
    li      r6, 0x4b0
    li      r8, 0x8
    stw     r6, 0x8(r9)
    li      r7, 0x9
    li      r6, 0xa
    stb     r4, 0xc(r9)
    slwi    r12, r8, 2
    li      r11, 0x2
    stb     r0, 0xd(r9)
    li      r10, 0x235
    slwi    r9, r7, 2
    lwz     r31, 0x1f4(r3)
    li      r8, 0x2bc
    slwi    r7, r6, 2
    lwz     r31, 0x8(r31)
    li      r6, 0x8ac
    lwzx    r12, r31, r12
    stb     r11, 0x4(r12)
    stw     r10, 0x8(r12)
    stb     r4, 0xc(r12)
    stb     r5, 0xd(r12)
    lwz     r10, 0x1f4(r3)
    lwz     r10, 0x8(r10)
    lwzx    r9, r10, r9
    stb     r11, 0x4(r9)
    stw     r8, 0x8(r9)
    stb     r4, 0xc(r9)
    stb     r5, 0xd(r9)
    lwz     r3, 0x1f4(r3)
    lwz     r3, 0x8(r3)
    lwzx    r3, r3, r7
    stb     r11, 0x4(r3)
    stw     r6, 0x8(r3)
    stb     r4, 0xc(r3)
    stb     r0, 0xd(r3)
    lmw     r26, 0x10(sp)
    addi    sp, sp, 0x28
    blr


.globl init__9TTinKoopaFP12TLiveManager
init__9TTinKoopaFP12TLiveManager: # 0x800a1a90
    mflr    r0
    lis     r7, unk_8037c8a0@ha
    stw     r0, 0x4(sp)
    lis     r6, TTinKoopa_jointIndexTable@h
    lis     r5, unk_803b55b0@h
    stwu    sp, -0x160(sp)
    stfd    f31, 0x158(sp)
    stfd    f30, 0x150(sp)
    stfd    f29, 0x148(sp)
    stfd    f28, 0x140(sp)
    stmw    r24, 0x120(sp)
    mr      r31, r3
    addi    r28, r7, unk_8037c8a0@l
    addi    r30, r6, TTinKoopa_jointIndexTable@l
    addi    r29, r5, unk_803b55b0@l
    stw     r4, 0x70(r3)
    addi    r4, r31, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    lbz     r0, R13Off_m0x6be0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a1b1c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTinKoopaWait@h
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r0, r3, __vvt__18TNerveTinKoopaWait@l
    lis     r3, __dt__18TNerveTinKoopaWaitFv@ha
    stw     r0, R13Off_m0x6bdc(r13)
    addi    r4, r3, __dt__18TNerveTinKoopaWaitFv@l
    addi    r3, r13, R13Off_m0x6bdc
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6be0(r13)
branch_0x800a1b1c:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    addi    r0, r13, R13Off_m0x6bdc
    stw     r4, 0x8(r5)
    li      r3, 0x18
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800a1b5c
    lwz     r4, 0x70(r31)
    addi    r3, r25, 0x0
    li      r5, 0x7
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800a1b5c:
    stw     r25, 0x78(r31)
    addi    r4, r28, 0x56c
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    li      r26, 0x0
    li      r27, 0x0
    lwz     r25, 0xb0(r3)
branch_0x800a1b8c:
    add     r3, r29, r27
    lwz     r4, 0x7c(r3)
    mr      r3, r25
    bl      getIndex__10JUTNameTabCFPCc
    addi    r26, r26, 0x1
    stwx    r3, r30, r27
    cmpwi   r26, 0xf
    addi    r27, r27, 0x4
    blt+    branch_0x800a1b8c
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800a1d08
    stw     r27, 0x110(sp)
    addi    r4, r2, R2Off_m0x6520
    lwz     r3, 0x110(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__14TTinKoopaFlame@h
    lwz     r30, 0x110(sp)
    addi    r3, r3, __vvt__14TTinKoopaFlame@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    stw     r31, 0x68(r30)
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r30)
    lfs     f28, 0x108(r3)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x6574(r2)
    lis     r4, 0x800
    lfs     f3, 0xf4(r3)
    fmr     f4, f28
    fmr     f2, f1
    addi    r3, r30, 0x0
    addi    r4, r4, 0x27
    li      r5, 0x0
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    addi    r3, r28, 0xa20
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0xa20
    mtlr    r12
    blrl
    addi    r25, r3, 0x10
    addi    r4, r25, 0x0
    addi    r3, sp, 0x8c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x8c(sp)
    addi    r4, sp, 0x88
    addi    r3, sp, 0xbc
    stw     r0, 0x88(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xbc(sp)
    addi    r5, sp, 0x9c
    addi    r4, r25, 0x0
    stw     r0, 0xb8(sp)
    addi    r3, sp, 0x98
    addi    r6, sp, 0x110
    lwz     r0, 0xb8(sp)
    stw     r0, 0x9c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x98(sp)
    addi    r3, sp, 0xb4
    addi    r4, sp, 0x94
    stw     r0, 0x94(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xcc(r3)
    li      r0, 0x0
    extsh   r3, r3
    sth     r3, 0x70(r30)
    lfs     f0, -0x6578(r2)
    stfs    f0, 0x6c(r30)
    stb     r0, 0x72(r30)
branch_0x800a1d08:
    lis     r3, __vvt__18TTinKoopaPartsBase@h
    stw     r27, 0x160(r31)
    addi    r28, r3, __vvt__18TTinKoopaPartsBase@l
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    addi    r25, r28, 0x24
    addi    r26, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    li      r30, 0x0
    li      r27, 0x0
branch_0x800a1d28:
    li      r3, 0x150
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a1d84
    add     r3, r29, r27
    lwz     r4, 0xb8(r3)
    stw     r24, 0x10c(sp)
    lwz     r3, 0x10c(sp)
    bl      __ct__10TLiveActorFPCc
    lwz     r8, 0x10c(sp)
    li      r0, 0x0
    addi    r4, r26, 0x0
    stw     r28, 0x0(r8)
    addi    r3, r8, 0x108
    li      r5, 0x0
    stw     r25, 0x20(r8)
    li      r6, 0xc
    li      r7, 0x6
    stb     r0, 0xf8(r8)
    stw     r30, 0xfc(r8)
    stw     r31, 0x100(r8)
    stw     r0, 0x104(r8)
    bl      __construct_array
branch_0x800a1d84:
    addi    r3, r27, 0x1cc
    add     r3, r31, r3
    stw     r24, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      initTinKoopaPartsBase__18TTinKoopaPartsBaseFv
    addi    r30, r30, 0x1
    cmpwi   r30, 0x6
    addi    r27, r27, 0x4
    blt+    branch_0x800a1d28
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f28, 0x158(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x6574(r2)
    lis     r4, 0x800
    lfs     f3, 0x144(r3)
    fmr     f4, f28
    fmr     f2, f1
    addi    r3, r31, 0x0
    addi    r4, r4, 0x18
    li      r5, 0x1
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    li      r4, 0x1
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8c(r3)
    addi    r25, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x800a1e54
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a1e44
    mr      r3, r24
    bl      __ct__13J3DSkinDeformFv
branch_0x800a1e44:
    addi    r4, r24, 0x0
    addi    r3, r25, 0x0
    li      r5, 0x1
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
branch_0x800a1e54:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, r2, R2Off_m0x6518
    bl      getGraphByName__10TConductorFPCc
    stw     r3, 0x1ec(r31)
    lwz     r3, 0x1ec(r31)
    lwz     r3, 0x8(r3)
    addi    r0, r3, -0x1
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x1e8(r31)
    addi    r3, sp, 0xe4
    li      r5, 0x0
    lwz     r4, 0x1ec(r31)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0xe4(sp)
    li      r26, 0x0
    lfs     f31, -0x6574(r2)
    li      r27, 0x0
    stw     r0, 0xd8(sp)
    lwz     r3, 0xe8(sp)
    fmr     f28, f31
    lwz     r0, 0xec(sp)
    stw     r3, 0xdc(sp)
    lfs     f29, -0x6544(r2)
    stw     r0, 0xe0(sp)
    lfs     f30, -0x6540(r2)
    b       branch_0x800a1f98

branch_0x800a1edc:
    lwz     r0, 0xd8(sp)
    addi    r3, sp, 0xf0
    lwz     r6, 0xdc(sp)
    addi    r5, r26, 0x1
    stw     r0, 0xcc(sp)
    lwz     r0, 0xe0(sp)
    stw     r6, 0xd0(sp)
    stw     r0, 0xd4(sp)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0xf0(sp)
    lwz     r3, 0xf4(sp)
    stw     r0, 0xd8(sp)
    lwz     r0, 0xf8(sp)
    stw     r3, 0xdc(sp)
    lfs     f3, 0xcc(sp)
    stw     r0, 0xe0(sp)
    lfs     f1, 0xd0(sp)
    lfs     f2, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fsubs   f4, f3, f2
    lfs     f2, 0xd4(sp)
    fsubs   f3, f1, f0
    lfs     f0, 0xe0(sp)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f2, f2, f0
    fcmpo   cr0, f2, f28
    cror    2, 0, 2
    bne-    branch_0x800a1f60
    b       branch_0x800a1f7c

branch_0x800a1f60:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f29, f1
    fnmsubs  f0, f2, f0, f30
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x800a1f7c:
    lwz     r3, 0x1e8(r31)
    addi    r26, r26, 0x1
    stfsx   f2, r3, r27
    lwz     r3, 0x1e8(r31)
    lfsx    f0, r3, r27
    addi    r27, r27, 0x4
    fadds   f31, f31, f0
branch_0x800a1f98:
    lwz     r4, 0x1ec(r31)
    lwz     r3, 0x8(r4)
    addi    r0, r3, -0x1
    cmpw    r26, r0
    blt+    branch_0x800a1edc
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a2034
    li      r0, 0xb
    stb     r0, 0x0(r24)
    stw     r31, 0x4(r24)
    lbz     r0, 0x0(r24)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    li      r25, 0x0
    stw     r3, 0x8(r24)
    addi    r26, r25, 0x0
    addi    r30, r25, 0x0
    addi    r29, r25, 0x0
    addi    r28, r25, 0x0
    li      r27, 0x0
    b       branch_0x800a2028

branch_0x800a1ff4:
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x800a2018
    stw     r31, 0x0(r3)
    stb     r26, 0x4(r3)
    stw     r30, 0x8(r3)
    stb     r29, 0xc(r3)
    stb     r28, 0xd(r3)
branch_0x800a2018:
    lwz     r4, 0x8(r24)
    addi    r25, r25, 0x1
    stwx    r3, r4, r27
    addi    r27, r27, 0x4
branch_0x800a2028:
    lbz     r0, 0x0(r24)
    cmpw    r25, r0
    blt+    branch_0x800a1ff4
branch_0x800a2034:
    stw     r24, 0x1f4(r31)
    mr      r3, r31
    bl      makeLaunchSchedule__9TTinKoopaFv
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r31
    bl      resetTinKoopa__9TTinKoopaFv
    lmw     r24, 0x120(sp)
    lwz     r0, 0x164(sp)
    lfd     f31, 0x158(sp)
    lfd     f30, 0x150(sp)
    mtlr    r0
    lfd     f29, 0x148(sp)
    lfd     f28, 0x140(sp)
    addi    sp, sp, 0x160
    blr


.globl __ct__15TTinKoopaParamsFPCc
__ct__15TTinKoopaParamsFPCc: # 0x800a2074
    mflr    r0
    lis     r5, unk_8037c8a0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, unk_8037c8a0@l
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0xa2c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0xa2c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0xa8(r31)
    li      r0, 0x2
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0xb8(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0xa38
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0xa38
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xbc(r31)
    li      r28, 0xa
    addi    r3, r30, 0xa44
    stw     r28, 0xcc(r31)
    stw     r26, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0xa44
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xd0(r31)
    addi    r3, r30, 0xa58
    stw     r28, 0xe0(r31)
    stw     r26, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0xa58
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0xe4(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6568(r2)
    addi    r3, r30, 0xa70
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0xa70
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0xa88
    lfs     f0, -0x6510(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0xa88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0xaa0
    lfs     f0, -0x6568(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0xaa0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0xab8
    lfs     f0, -0x6510(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0xab8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0xac8
    lfs     f0, -0x6548(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0xac8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0xadc
    lfs     f0, -0x650c(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0xadc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0xaf0
    lfs     f0, -0x650c(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0xaf0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x170(r31)
    li      r0, 0x1e
    addi    r3, r30, 0xb04
    stw     r0, 0x180(r31)
    stw     r26, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0xb04
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x184(r31)
    li      r0, 0x258
    addi    r3, r30, 0xb18
    stw     r0, 0x194(r31)
    stw     r26, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0xb18
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    mr      r3, r31
    lfs     f0, -0x6508(r2)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lwz     r0, R13Off_m0x7eb8(r13)
    mr      r3, r31
    stw     r0, 0xb8(r31)
    lwz     r0, R13Off_m0x7eb4(r13)
    stw     r0, 0xcc(r31)
    lwz     r0, R13Off_m0x7eb0(r13)
    stw     r0, 0xe0(r31)
    lfs     f0, -0x7eac(r13)
    stfs    f0, 0xf4(r31)
    lfs     f0, -0x7ea8(r13)
    stfs    f0, 0x108(r31)
    lfs     f0, -0x7ea4(r13)
    stfs    f0, 0x11c(r31)
    lfs     f0, -0x7ea0(r13)
    stfs    f0, 0x130(r31)
    lwz     r0, R13Off_m0x7e9c(r13)
    stw     r0, 0x180(r31)
    lfs     f0, -0x7e98(r13)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x7e94(r13)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x7e90(r13)
    stfs    f0, 0x16c(r31)
    lwz     r0, R13Off_m0x7e8c(r13)
    stw     r0, 0x194(r31)
    lfs     f0, -0x7e88(r13)
    stfs    f0, 0x1a8(r31)
    lwz     r0, 0x2c(sp)
    lmw     r26, 0x10(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__16TTinKoopaManagerFv
__dt__16TTinKoopaManagerFv: # 0x800a2378
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a23c0
    lis     r3, __vvt__16TTinKoopaManager@h
    addi    r0, r3, __vvt__16TTinKoopaManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800a23c0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a23c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl hasMapCollision__16TTinKoopaManagerCFv
hasMapCollision__16TTinKoopaManagerCFv: # 0x800a23dc
    li      r3, 0x1
    blr


.globl __dt__16TTinKoopaMtxCalcFv
__dt__16TTinKoopaMtxCalcFv: # 0x800a23e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a2474
    lis     r3, __vvt__16TTinKoopaMtxCalc@h
    addi    r3, r3, __vvt__16TTinKoopaMtxCalc@l
    stw     r3, 0x4c(r30)
    addi    r4, r3, 0x24
    addi    r0, r30, 0x68
    lwz     r3, 0x0(r30)
    stw     r4, 0x0(r3)
    lwz     r3, 0x0(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x800a2464
    lis     r3, __vvt__24M3UMtxCalcSIAnmBlendQuat@ha
    addi    r3, r3, __vvt__24M3UMtxCalcSIAnmBlendQuat@l
    stw     r3, 0x4c(r30)
    addi    r6, r3, 0x24
    addi    r0, r30, 0x64
    lwz     r5, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    stw     r6, 0x0(r5)
    lwz     r5, 0x0(r30)
    subf    r0, r5, r0
    stw     r0, 0x4(r5)
    bl      __dt__19J3DMtxCalcSoftimageFv
branch_0x800a2464:
    extsh.  r0, r31
    ble-    branch_0x800a2474
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a2474:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TTinKoopaPartsBaseFv
__dt__18TTinKoopaPartsBaseFv: # 0x800a2490
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a24e0
    lis     r3, __vvt__18TTinKoopaPartsBase@h
    addi    r3, r3, __vvt__18TTinKoopaPartsBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
    extsh.  r0, r31
    ble-    branch_0x800a24e0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a24e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TTinKoopaFlameFv
__dt__14TTinKoopaFlameFv: # 0x800a24fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a2564
    lis     r3, __vvt__14TTinKoopaFlame@h
    addi    r3, r3, __vvt__14TTinKoopaFlame@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800a2554
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800a2554:
    extsh.  r0, r31
    ble-    branch_0x800a2564
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a2564:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TTinKoopaFv
__dt__9TTinKoopaFv: # 0x800a2580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800a25d0
    lis     r3, __vvt__9TTinKoopa@h
    addi    r3, r3, __vvt__9TTinKoopa@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800a25d0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800a25d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl hasMapCollision__9TTinKoopaCFv
hasMapCollision__9TTinKoopaCFv: # 0x800a25ec
    li      r3, 0x1
    blr


.globl __sinit_tinkoopa_cpp
__sinit_tinkoopa_cpp: # 0x800a25f4
    mflr    r0
    lis     r3, TTinKoopa_jointIndexTable@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, TTinKoopa_jointIndexTable@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800a263c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800a263c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800a266c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800a266c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800a269c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x800a269c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800a26cc
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x800a26cc:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800a26fc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x800a26fc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800a272c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800a272c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800a275c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800a275c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800a278c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x800a278c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800a27bc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x800a27bc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800a27ec
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x800a27ec:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800a281c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800a281c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800a284c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800a284c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a287c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x800a287c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800a28ac
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800a28ac:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800a28dc
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x800a28dc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_800a28f0
unk_800a28f0: # 0x800a28f0
    addi    r3, r3, -0x20
    b       __dt__9TTinKoopaFv


.globl unk_800a28f8
unk_800a28f8: # 0x800a28f8
    addi    r3, r3, -0x20
    b       __dt__14TTinKoopaFlameFv


.globl unk_800a2900
unk_800a2900: # 0x800a2900
    addi    r3, r3, -0x20
    b       __dt__18TTinKoopaPartsBaseFv


.globl unk_800a2908
unk_800a2908: # 0x800a2908
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x68
    b       calc__16TTinKoopaMtxCalcFUs

