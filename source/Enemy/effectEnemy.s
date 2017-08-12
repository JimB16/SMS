
.globl __dt__12TEffectEnemyFv
__dt__12TEffectEnemyFv: # 0x801057d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80105854
    lis     r3, __vvt__12TEffectEnemy@ha
    addi    r3, r3, __vvt__12TEffectEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80105844
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80105844
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80105844:
    extsh.  r0, r31
    ble-    branch_0x80105854
    mr      r3, r30
    bl      __dl__FPv
branch_0x80105854:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setDeadAnm__12TEffectEnemyFv
setDeadAnm__12TEffectEnemyFv: # 0x80105870
    mflr    r0
    li      r4, 0x8b
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x28c5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801058cc
    addi    r4, r31, 0x10
    li      r3, 0x28c5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801058cc:
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl sendAttackMsgToMario__12TEffectEnemyFv
sendAttackMsgToMario__12TEffectEnemyFv: # 0x801058ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x194(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80105940
    bge-    branch_0x80105950
    cmpwi   r0, 0x0
    bge-    branch_0x8010591c
    b       branch_0x80105950

branch_0x8010591c:
    addi    r3, r31, 0x0
    li      r4, 0xa
    bl      SMS_SendMessageToMario__FP9THitActorUl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x8010595c

branch_0x80105940:
    addi    r3, r31, 0x0
    li      r4, 0x9
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x8010595c

branch_0x80105950:
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x8010595c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl behaveToWater__12TEffectEnemyFP9THitActor
behaveToWater__12TEffectEnemyFP9THitActor: # 0x80105970
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x13c(r3)
    cmplwi  r0, 0x1
    ble-    branch_0x80105990
    bl      behaveToWater__11TSmallEnemyFP9THitActor
    b       branch_0x801059a0

branch_0x80105990:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801059a0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__12TEffectEnemyFv
reset__12TEffectEnemyFv: # 0x801059b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      reset__12TWalkerEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__12TEffectEnemyFUlPQ26JDrama9TGraphics
perform__12TEffectEnemyFUlPQ26JDrama9TGraphics: # 0x801059d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x80105b04
    clrlwi. r0, r30, 31
    beq-    branch_0x80105a10
    mr      r3, r29
    bl      moveObject__12TWalkerEnemyFv
branch_0x80105a10:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80105af4
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80105af4
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80105a5c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x80105a60

branch_0x80105a5c:
    li      r0, 0x1
branch_0x80105a60:
    lbz     r4, 0x13c(r29)
    clrlwi  r3, r0, 24
    lis     r0, 0x4330
    lfd     f1, -0x55c8(r2)
    divw    r3, r4, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x2c(sp)
    addi    r3, r29, 0x24
    addi    r4, sp, 0x1c
    stw     r0, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f1, f0, f1
    bl      PSVECScale
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x1ed
    li      r6, 0x3
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x135
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x136
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x137
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80105af4:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
branch_0x80105b04:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl forceKill__12TEffectEnemyFv
forceKill__12TEffectEnemyFv: # 0x80105b20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80105b4c
    li      r0, 0x1
    b       branch_0x80105b50

branch_0x80105b4c:
    li      r0, 0x0
branch_0x80105b50:
    clrlwi. r0, r0, 24
    bne-    branch_0x80105c08
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x800
    bne-    branch_0x80105b6c
    li      r0, 0x1
    b       branch_0x80105b70

branch_0x80105b6c:
    li      r0, 0x0
branch_0x80105b70:
    clrlwi. r0, r0, 24
    bne-    branch_0x80105be0
    cmplwi  r3, 0x104
    beq-    branch_0x80105b90
    cmplwi  r3, 0x105
    beq-    branch_0x80105b90
    cmplwi  r3, 0x4104
    bne-    branch_0x80105b98
branch_0x80105b90:
    li      r0, 0x1
    b       branch_0x80105b9c

branch_0x80105b98:
    li      r0, 0x0
branch_0x80105b9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80105be0
    cmplwi  r3, 0x100
    beq-    branch_0x80105bcc
    cmplwi  r3, 0x101
    beq-    branch_0x80105bcc
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80105bcc
    cmplwi  r3, 0x4104
    bne-    branch_0x80105bd4
branch_0x80105bcc:
    li      r0, 0x1
    b       branch_0x80105bd8

branch_0x80105bd4:
    li      r0, 0x0
branch_0x80105bd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80105c08
branch_0x80105be0:
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x80105bf4
    li      r0, 0x1
    b       branch_0x80105bf8

branch_0x80105bf4:
    li      r0, 0x0
branch_0x80105bf8:
    cmpwi   r0, 0x0
    bne-    branch_0x80105c08
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x80105c20
branch_0x80105c08:
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x18(r31)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    bne-    branch_0x80105c34
branch_0x80105c20:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80105c34:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl kill__12TEffectEnemyFv
kill__12TEffectEnemyFv: # 0x80105c48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__12TEffectEnemyFv
setMActorAndKeeper__12TEffectEnemyFv: # 0x80105c98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80105cd0
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80105cd0:
    stw     r30, 0x78(r31)
    lis     r3, unk_80383558@h
    addi    r4, r3, unk_80383558@l
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


.globl init__12TEffectEnemyFP12TLiveManager
init__12TEffectEnemyFP12TLiveManager: # 0x80105d04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000005@h
    addi    r0, r3, unk_10000005@l
    stw     r0, 0x4c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12TEffectEnemyFPCc
__ct__12TEffectEnemyFPCc: # 0x80105d3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__12TEffectEnemy@ha
    addi    r3, r3, __vvt__12TEffectEnemy@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initSetEnemies__19TEffectEnemyManagerFv
initSetEnemies__19TEffectEnemyManagerFv: # 0x80105d88
    blr


.globl createEnemyInstance__19TEffectEnemyManagerFv
createEnemyInstance__19TEffectEnemyManagerFv: # 0x80105d8c
    mflr    r0
    li      r3, 0x198
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80105dd8
    lis     r4, unk_80383564@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_80383564@l
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__12TEffectEnemy@ha
    addi    r3, r3, __vvt__12TEffectEnemy@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    stw     r0, 0x194(r31)
branch_0x80105dd8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__19TEffectEnemyManagerFv
loadAfter__19TEffectEnemyManagerFv: # 0x80105df0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__19TEffectEnemyManagerFR20JSUMemoryInputStream
load__19TEffectEnemyManagerFR20JSUMemoryInputStream: # 0x80105e10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x32c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80105e4c
    lis     r3, unk_80383574@h
    addi    r4, r3, unk_80383574@l
    addi    r3, r30, 0x0
    bl      __ct__18TWalkerEnemyParamsFPCc
branch_0x80105e4c:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__19TEffectEnemyManagerFv
__dt__19TEffectEnemyManagerFv: # 0x80105e68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80105ec0
    lis     r3, __vvt__19TEffectEnemyManager@ha
    addi    r0, r3, __vvt__19TEffectEnemyManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80105eb0
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80105eb0:
    extsh.  r0, r31
    ble-    branch_0x80105ec0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80105ec0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_effectEnemy_cpp
__sinit_effectEnemy_cpp: # 0x80105edc
    mflr    r0
    lis     r3, unk_803f2c58@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f2c58@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80105f24
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80105f24:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80105f54
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80105f54:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80105f84
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80105f84:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80105fb4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80105fb4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80105fe4
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80105fe4:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80106014
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80106014:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80106044
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80106044:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80106074
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80106074:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801060a4
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801060a4:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801060d4
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801060d4:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80106104
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80106104:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80106134
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80106134:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80106164
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80106164:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80106194
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80106194:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801061c4
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801061c4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801061d8
unk_801061d8: # 0x801061d8
    addi    r3, r3, -0x20
    b       __dt__12TEffectEnemyFv

