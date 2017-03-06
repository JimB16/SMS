
.globl __dt__11TWoodBarrelFv
__dt__11TWoodBarrelFv: # 0x801aeb40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801aebc0
    lis     r3, 0x803c
    addi    r3, r3, 0x28d8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801aebb0
    lis     r3, 0x803d
    subi    r3, r3, 0x74e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801aebb0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801aebb0:
    extsh.  r0, r31
    ble-    branch_0x801aebc0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801aebc0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getFlushTime__11TWoodBarrelCFv
getFlushTime__11TWoodBarrelCFv: # 0x801aebdc
    lwz     r3, -0x7a60(r13)
    blr


.globl getLivingTime__14TMapObjGeneralCFv
getLivingTime__14TMapObjGeneralCFv: # 0x801aebe4
    lwz     r3, -0x7a48(r13)
    blr


.globl checkIllegalAttr__14TMapObjGeneralCFv
checkIllegalAttr__14TMapObjGeneralCFv: # 0x801aebec
    blr


.globl __ct__11TWoodBarrelFPCc
__ct__11TWoodBarrelFPCc: # 0x801aebf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, 0x803c
    addi    r3, r3, 0x28d8
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x148(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14TMapObjGeneralFv
__dt__14TMapObjGeneralFv: # 0x801aec3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801aeca4
    lis     r3, 0x803d
    subi    r3, r3, 0x74e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801aec94
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801aec94:
    extsh.  r0, r31
    ble-    branch_0x801aeca4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801aeca4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__11TWoodBarrelFR20JSUMemoryInputStream
load__11TWoodBarrelFR20JSUMemoryInputStream: # 0x801aecc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801aecfc
    lis     r3, 0x8039
    subi    r4, r3, 0x5590
    addi    r3, r30, 0x0
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x801aecfc:
    stw     r30, 0x148(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__11TWoodBarrelFv
loadAfter__11TWoodBarrelFv: # 0x801aed18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__14TMapObjGeneralFv
    lwz     r3, -0x6328(r13)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    mr      r3, r31
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x14(r31)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x10c(r31)
    stw     r0, 0x110(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x114(r31)
    bl      checkOnManhole__11TMapObjBaseFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__11TWoodBarrelFv
control__11TWoodBarrelFv: # 0x801aed80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__14TMapObjGeneralFv
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x5c
    bne-    branch_0x801aedb0
    li      r0, 0x1
    b       branch_0x801aedb4

branch_0x801aedb0:
    li      r0, 0x0
branch_0x801aedb4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801aee10
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x6
    bne-    branch_0x801aedd0
    li      r0, 0x1
    b       branch_0x801aedd4

branch_0x801aedd0:
    li      r0, 0x0
branch_0x801aedd4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801aee10
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801aedf0
    li      r0, 0x1
    b       branch_0x801aedf4

branch_0x801aedf0:
    li      r0, 0x0
branch_0x801aedf4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801aee10
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801aee10:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__11TWoodBarrelFP9THitActorUl
receiveMessage__11TWoodBarrelFP9THitActorUl: # 0x801aee24
    mflr    r0
    cmplwi  r5, 0xd
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x801aee50
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801aee54

branch_0x801aee50:
    bl      receiveMessage__14TMapObjGeneralFP9THitActorUl
branch_0x801aee54:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchActor__11TWoodBarrelFP9THitActor
touchActor__11TWoodBarrelFP9THitActor: # 0x801aee64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4c(r4)
    rlwinm. r0, r4, 0, 5, 5
    beq-    branch_0x801aee94
    li      r0, 0x1
    b       branch_0x801aee98

branch_0x801aee94:
    li      r0, 0x0
branch_0x801aee98:
    clrlwi. r0, r0, 24
    bne-    branch_0x801aeebc
    rlwinm. r0, r4, 0, 1, 1
    beq-    branch_0x801aeeb0
    li      r0, 0x1
    b       branch_0x801aeeb4

branch_0x801aeeb0:
    li      r0, 0x0
branch_0x801aeeb4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801aeef0
branch_0x801aeebc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801aef18

branch_0x801aeef0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      touchActor__11TMapObjBaseFP9THitActor
branch_0x801aef18:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl touchPlayer__11TWoodBarrelFP9THitActor
touchPlayer__11TWoodBarrelFP9THitActor: # 0x801aef30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      touchPlayer__14TMapObjGeneralFP9THitActor
    bl      SMS_IsMarioHeadSlideAttack__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801aef68
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801aef68:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchGround__11TWoodBarrelFPQ29JGeometry8TVec3_f_
touchGround__11TWoodBarrelFPQ29JGeometry8TVec3_f_: # 0x801aef7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801aefd0
    cmplwi  r3, 0x101
    beq-    branch_0x801aefd0
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801aefd0
    cmplwi  r3, 0x4104
    bne-    branch_0x801aefd8
branch_0x801aefd0:
    li      r0, 0x1
    b       branch_0x801aefdc

branch_0x801aefd8:
    li      r0, 0x0
branch_0x801aefdc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801aefec
    mr      r3, r31
    bl      emitColumnWater__11TMapObjBaseFv
branch_0x801aefec:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchWall__11TWoodBarrelFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord
touchWall__11TWoodBarrelFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord: # 0x801af000
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl appear__11TWoodBarrelFv
appear__11TWoodBarrelFv: # 0x801af02c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe5
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6044(r13)
    li      r4, 0x387d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801af098
    addi    r4, r31, 0x10
    li      r3, 0x387d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801af098:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl appeared__11TWoodBarrelFv
appeared__11TWoodBarrelFv: # 0x801af0ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      appeared__14TMapObjGeneralFv
    bl      SMS_IsMarioStatusHipDrop__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801af0f8
    lwz     r4, 0x130(r31)
    mr      r3, r31
    lfs     f1, -0x3e38(rtoc)
    lwz     r4, 0x14(r4)
    lwz     r4, 0xc(r4)
    lfs     f0, 0xc(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x801af114

branch_0x801af0f8:
    lwz     r4, 0x130(r31)
    mr      r3, r31
    lwz     r4, 0x14(r4)
    lwz     r4, 0xc(r4)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x801af114:
    lwz     r3, -0x6328(r13)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lfs     f2, 0x14(r31)
    lfs     f1, -0x3e34(rtoc)
    lfs     f0, 0xc8(r31)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801af14c
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x801af14c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl kill__11TWoodBarrelFv
kill__11TWoodBarrelFv: # 0x801af160
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      kill__14TMapObjGeneralFv
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lfs     f0, -0x3e30(rtoc)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x24(sp)
    lfs     f1, 0x20(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x20(sp)
    lwz     r4, 0x148(r31)
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x24(sp)
    stw     r0, 0x78(r4)
    lwz     r3, -0x6088(r13)
    lwz     r4, 0x148(r31)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801af1f4
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x68(r31)
branch_0x801af1f4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl breaking__11TWoodBarrelFv
breaking__11TWoodBarrelFv: # 0x801af208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801af274
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x801af274
    mr      r3, r31
    lwz     r4, -0x7a68(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b0(r12)
    mtlr    r12
    blrl
branch_0x801af274:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl hold__11TWoodBarrelFP10TTakeActor
hold__11TWoodBarrelFP10TTakeActor: # 0x801af288
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      hold__14TMapObjGeneralFP10TTakeActor
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x5c
    bne-    branch_0x801af2b8
    li      r0, 0x1
    b       branch_0x801af2bc

branch_0x801af2b8:
    li      r0, 0x0
branch_0x801af2bc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801af2cc
    lwz     r0, -0x7a64(r13)
    stw     r0, 0x104(r31)
branch_0x801af2cc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl put__11TWoodBarrelFv
put__11TWoodBarrelFv: # 0x801af2e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      put__14TMapObjGeneralFv
    lwz     r3, 0xc4(r31)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801af344
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x7b
    bne-    branch_0x801af320
    li      r0, 0x1
    b       branch_0x801af324

branch_0x801af320:
    li      r0, 0x0
branch_0x801af324:
    clrlwi. r0, r0, 24
    beq-    branch_0x801af344
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801af390

branch_0x801af344:
    lfs     f1, 0x14(r31)
    lfs     f0, -0x3e34(rtoc)
    lfs     f2, 0xc8(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801af378
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    b       branch_0x801af390

branch_0x801af378:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
branch_0x801af390:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __sinit_WoodBarrel_cpp
__sinit_WoodBarrel_cpp: # 0x801af3a4
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7040
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801af3ec
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801af3ec:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801af41c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801af41c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801af44c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801af44c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801af47c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801af47c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801af4ac
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801af4ac:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801af4dc
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801af4dc:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801af50c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801af50c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801af53c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801af53c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801af56c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801af56c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801af59c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801af59c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801af5cc
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801af5cc:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801af5fc
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801af5fc:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801af62c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801af62c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801af65c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801af65c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801af68c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801af68c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TWoodBarrelFv
_32___dt__11TWoodBarrelFv: # 0x801af6a0
    subi    r3, r3, 0x20
    b       __dt__11TWoodBarrelFv
