
.globl __dt__14TEMarioManagerFv
__dt__14TEMarioManagerFv: # 0x80038fe0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80039028
    lis     r3, 0x803b
    subi    r0, r3, 0x1c50
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80039028
    mr      r3, r30
    bl      __dl__FPv
branch_0x80039028:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createEnemyInstance__14TEMarioManagerFv
createEnemyInstance__14TEMarioManagerFv: # 0x80039044
    mflr    r0
    li      r3, 0x164
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80039088
    lis     r4, 0x8037
    addi    r3, r31, 0x0
    addi    r4, r4, 0x6e4c
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x1bfc
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r31)
branch_0x80039088:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__14TEMarioManagerFR20JSUMemoryInputStream
load__14TEMarioManagerFR20JSUMemoryInputStream: # 0x800390a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0xa8
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800390e0
    lis     r3, 0x8037
    addi    r4, r3, 0x6e5c
    addi    r3, r29, 0x0
    bl      __ct__17TSpineEnemyParamsFPCc
branch_0x800390e0:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__14TEMarioManagerFPCc
__ct__14TEMarioManagerFPCc: # 0x8003910c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x1c50
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__7TEMarioFUlPQ26JDrama9TGraphics
perform__7TEMarioFUlPQ26JDrama9TGraphics: # 0x80039148
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stmw    r23, 0xfc(sp)
    mr      r25, r3
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x8003941c
    clrlwi. r28, r26, 31
    beq-    branch_0x80039354
    lwz     r3, 0x150(r25)
    lhz     r0, 0x4292(r3)
    cmplwi  r0, 0xb
    beq-    branch_0x800391a0
    cmplwi  r0, 0xc
    beq-    branch_0x800391a0
    cmplwi  r0, 0x11
    bne-    branch_0x800391a8
branch_0x800391a0:
    li      r0, 0x1
    b       branch_0x800391ac

branch_0x800391a8:
    li      r0, 0x0
branch_0x800391ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x80039354
    li      r29, 0x0
    lis     r3, 0x8000
    lis     r4, 0x4000
    addi    r24, r29, 0x0
    addi    r31, r3, 0x1
    addi    r30, r4, 0xbc
    lis     r23, 0x81
    b       branch_0x80039348

branch_0x800391d4:
    lwz     r3, 0x44(r25)
    lwzx    r6, r3, r24
    lwz     r0, 0x4c(r6)
    cmpw    r0, r30
    beq-    branch_0x8003928c
    bge-    branch_0x80039340
    cmpw    r0, r31
    beq-    branch_0x800391f8
    b       branch_0x80039340

branch_0x800391f8:
    lwz     r5, 0x10(r25)
    addi    r4, r6, 0x10
    lwz     r0, 0x14(r25)
    addi    r3, sp, 0xb4
    stw     r5, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x18(r25)
    stw     r0, 0xbc(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xb4(sp)
    lwz     r3, 0xb8(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0xbc(sp)
    stw     r3, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0xe4(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xe8(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r3, 0x150(r25)
    lfs     f0, 0x42b0(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80039340
    lwz     r3, 0x44(r25)
    addi    r4, r25, 0x0
    li      r5, 0xe
    lwzx    r3, r3, r24
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x80039340

branch_0x8003928c:
    lwz     r3, 0x150(r25)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800392a4
    li      r0, 0x1
    b       branch_0x800392a8

branch_0x800392a4:
    li      r0, 0x0
branch_0x800392a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80039340
    lfs     f31, 0x58(r3)
    addi    r3, sp, 0x9c
    lfs     f30, 0x50(r6)
    addi    r4, r25, 0x10
    lwz     r5, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r5, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0xa4(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0xf0(sp)
    stw     r0, 0xf4(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xf4(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fadds   f0, f30, f31
    fcmpo   cr0, f1, f0
    bge-    branch_0x80039340
    lwz     r3, 0x150(r25)
    addi    r4, r23, 0x446
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, 0x150(r25)
    bl      emitGetEffect__6TMarioFv
branch_0x80039340:
    addi    r29, r29, 0x1
    addi    r24, r24, 0x4
branch_0x80039348:
    lhz     r0, 0x48(r25)
    cmpw    r29, r0
    blt+    branch_0x800391d4
branch_0x80039354:
    lwz     r3, 0x150(r25)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmplwi  r28, 0x0
    beq-    branch_0x8003941c
    lwz     r5, 0x150(r25)
    mr      r3, r25
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x10(r25)
    stw     r0, 0x14(r25)
    lwz     r0, 0x18(r5)
    stw     r0, 0x18(r25)
    lwz     r5, 0x150(r25)
    lwz     r4, 0x30(r5)
    lwz     r0, 0x34(r5)
    stw     r4, 0x30(r25)
    stw     r0, 0x34(r25)
    lwz     r0, 0x38(r5)
    stw     r0, 0x38(r25)
    lwz     r5, 0x150(r25)
    lwz     r4, 0x24(r5)
    lwz     r0, 0x28(r5)
    stw     r4, 0x24(r25)
    stw     r0, 0x28(r25)
    lwz     r0, 0x2c(r5)
    stw     r0, 0x2c(r25)
    lwz     r4, 0x150(r25)
    lfs     f0, 0x50(r4)
    stfs    f0, 0x50(r25)
    bl      calcEntryRadius__9THitActorFv
    lwz     r4, 0x150(r25)
    mr      r3, r25
    lfs     f0, 0x54(r4)
    stfs    f0, 0x54(r25)
    bl      calcEntryRadius__9THitActorFv
    lwz     r4, 0x150(r25)
    mr      r3, r25
    lfs     f0, 0x58(r4)
    stfs    f0, 0x58(r25)
    bl      calcEntryRadius__9THitActorFv
    lwz     r4, 0x150(r25)
    mr      r3, r25
    lfs     f0, 0x5c(r4)
    stfs    f0, 0x5c(r25)
    bl      calcEntryRadius__9THitActorFv
branch_0x8003941c:
    lmw     r23, 0xfc(sp)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    mtlr    r0
    addi    sp, sp, 0x130
    blr


.globl forceDisappear__7TEMarioFv
forceDisappear__7TEMarioFv: # 0x80039438
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x150(r3)
    bl      startDisappear__11TEnemyMarioFUs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl startGateDrawing__7TEMarioFv
startGateDrawing__7TEMarioFv: # 0x80039460
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x150(r3)
    bl      startGateDrawing__11TEnemyMarioFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl startMonteReplay__7TEMarioFUl
startMonteReplay__7TEMarioFUl: # 0x80039484
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x150(r3)
    bl      startMonteReplay__11TEnemyMarioFUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl startRunAway__7TEMarioFv
startRunAway__7TEMarioFv: # 0x800394a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x150(r3)
    bl      startRunAway__11TEnemyMarioFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isDownWaitingToTalk__7TEMarioCFv
isDownWaitingToTalk__7TEMarioCFv: # 0x800394cc
    lwz     r3, 0x150(r3)
    lhz     r0, 0x4292(r3)
    cmplwi  r0, 0xf
    bne-    branch_0x800394e4
    li      r3, 0x1
    blr

branch_0x800394e4:
    li      r3, 0x0
    blr


.globl isReachedToGate__7TEMarioCFv
isReachedToGate__7TEMarioCFv: # 0x800394ec
    lwz     r3, 0x150(r3)
    lhz     r0, 0x4292(r3)
    cmplwi  r0, 0x18
    bne-    branch_0x80039504
    li      r3, 0x1
    blr

branch_0x80039504:
    li      r3, 0x0
    blr


.globl isGoal__7TEMarioFv
isGoal__7TEMarioFv: # 0x8003950c
    lwz     r3, 0x150(r3)
    lhz     r0, 0x4290(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80039524
    li      r3, 0x1
    blr

branch_0x80039524:
    li      r3, 0x0
    blr


.globl kill__7TEMarioFv
kill__7TEMarioFv: # 0x8003952c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      SMS_isMultiPlayerMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80039558
    lwz     r3, -0x7118(r13)
    addi    r4, r31, 0x10
    bl      removeMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3_f_
branch_0x80039558:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__7TEMarioFP9THitActorUl
receiveMessage__7TEMarioFP9THitActorUl: # 0x8003956c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      receiveMessage__11TSpineEnemyFP9THitActorUl
    cmplwi  r31, 0xf
    bne-    branch_0x800395b0
    lwz     r3, 0x150(r29)
    mr      r4, r30
    bl      hitWater__11TEnemyMarioFP9THitActor
    li      r3, 0x1
    b       branch_0x800395e4

branch_0x800395b0:
    cmplwi  r31, 0x0
    bne-    branch_0x800395c8
    lwz     r3, 0x150(r29)
    bl      thinkTrample__11TEnemyMarioFv
    clrlwi  r3, r3, 24
    b       branch_0x800395e4

branch_0x800395c8:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x246
    bne-    branch_0x800395e0
    lwz     r3, 0x150(r29)
    bl      reachGoal__11TEnemyMarioFv
branch_0x800395e0:
    li      r3, 0x0
branch_0x800395e4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl init__7TEMarioFP12TLiveManager
init__7TEMarioFP12TLiveManager: # 0x80039600
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    bne-    branch_0x800396c0
    lwz     r30, 0x3c(r31)
    cmplwi  r30, 0x0
    beq-    branch_0x800396b0
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80039650
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80039650:
    stw     r29, 0x78(r31)
    lis     r0, 0x1130
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    stw     r0, 0x14(r3)
    lwz     r4, 0xc(r30)
    lwz     r3, 0x78(r31)
    bl      createMActorFromDefaultBmd__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    li      r30, 0x0
    b       branch_0x8003968c

branch_0x8003967c:
    lwz     r3, 0x4(r3)
    clrlwi  r4, r30, 16
    bl      SMS_InitPacket_Fog__FP8J3DModelUs
    addi    r30, r30, 0x1
branch_0x8003968c:
    lwz     r3, 0x74(r31)
    lwz     r4, 0x4(r3)
    lwz     r4, 0x4(r4)
    lhz     r0, 0x24(r4)
    cmpw    r30, r0
    blt+    branch_0x8003967c
    lis     r4, 0x8037
    addi    r4, r4, 0x6e70
    bl      setBtk__6MActorFPCc
branch_0x800396b0:
    lwz     r3, -0x70b0(r13)
    mr      r4, r31
    bl      registerAloneActor__10TConductorFP10TLiveActor
    b       branch_0x80039708

branch_0x800396c0:
    stw     r4, 0x70(r31)
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800396e4
    lwz     r4, 0x70(r31)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800396e4:
    stw     r29, 0x78(r31)
    mr      r4, r31
    lwz     r3, 0x70(r31)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    lwz     r3, 0x78(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      createMActorFromNthData__13TMActorKeeperFiUl
    stw     r3, 0x74(r31)
branch_0x80039708:
    lwz     r3, 0x74(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8003972c
    lwz     r4, 0x4(r3)
    lis     r3, 0x8037
    addi    r5, r3, 0x6e84
    lwz     r3, -0x6104(r13)
    lwz     r4, 0x4(r4)
    bl      replace__14TScreenTextureFP12J3DModelDataPCc
branch_0x8003972c:
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 22, 20
    stw     r0, 0xf0(r31)
    lwz     r0, 0x80(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80039758
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
branch_0x80039758:
    lis     r4, 0x800
    lfs     f1, -0x74a8(rtoc)
    lfs     f2, -0x74a4(rtoc)
    mr      r3, r31
    lfs     f3, -0x74a0(rtoc)
    addi    r4, r4, 0x2
    lfs     f4, -0x749c(rtoc)
    li      r5, 0x4
    lis     r6, 0xe500
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl loadAfter__7TEMarioFv
loadAfter__7TEMarioFv: # 0x800397b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x150(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    bl      SMS_isMultiPlayerMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800397fc
    lwz     r3, -0x7118(r13)
    addi    r4, r31, 0x10
    lfs     f1, -0x74a0(rtoc)
    lfs     f2, -0x7498(rtoc)
    bl      addMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3_f_ff
branch_0x800397fc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__7TEMarioFR20JSUMemoryInputStream
load__7TEMarioFR20JSUMemoryInputStream: # 0x80039810
    mflr    r0
    lis     r5, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stw     r31, 0xec(sp)
    addi    r31, r5, 0x6d28
    stw     r30, 0xe8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xe4(sp)
    addi    r29, r4, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, r30, 0x154
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x158
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x15c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x160
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0xd4
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0xd0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x154(r30)
    cmplwi  r0, 0xff
    bne-    branch_0x800398b0
    li      r0, 0x0
    stw     r0, 0x154(r30)
branch_0x800398b0:
    lwz     r0, 0x158(r30)
    cmplwi  r0, 0xff
    bne-    branch_0x800398c4
    li      r0, 0x0
    stw     r0, 0x158(r30)
branch_0x800398c4:
    lwz     r0, 0x15c(r30)
    cmplwi  r0, 0xff
    bne-    branch_0x800398d8
    li      r0, 0x0
    stw     r0, 0x15c(r30)
branch_0x800398d8:
    lwz     r0, 0x160(r30)
    cmplwi  r0, 0xff
    bne-    branch_0x800398ec
    li      r0, 0x0
    stw     r0, 0x160(r30)
branch_0x800398ec:
    li      r3, 0x4310
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80039920
    mr      r3, r29
    bl      __ct__6TMarioFv
    lis     r3, 0x803b
    subi    r4, r3, 0x10dc
    stw     r4, 0x0(r29)
    addi    r3, r4, 0x24
    addi    r0, r4, 0xb4
    stw     r3, 0x20(r29)
    stw     r0, 0x70(r29)
branch_0x80039920:
    stw     r29, 0x150(r30)
    addi    r4, r31, 0x170
    lwz     r3, 0x150(r30)
    stw     r30, 0x42a0(r3)
    lwz     r3, 0x4(r30)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80039960
    lwz     r4, -0x6048(r13)
    lwz     r3, 0x150(r30)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    bl      setGamePad__6TMarioFP13TMarioGamePad
    lwz     r3, 0x150(r30)
    li      r0, 0x3
    stb     r0, 0x388(r3)
branch_0x80039960:
    lwz     r3, 0x4(r30)
    addi    r4, r31, 0x17c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80039994
    lwz     r4, -0x6048(r13)
    lwz     r3, 0x150(r30)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x8(r4)
    bl      setGamePad__6TMarioFP13TMarioGamePad
    lwz     r3, 0x150(r30)
    li      r0, 0x4
    stb     r0, 0x388(r3)
branch_0x80039994:
    lwz     r3, 0x4(r30)
    addi    r4, r31, 0x188
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x800399c8
    lwz     r4, -0x6048(r13)
    lwz     r3, 0x150(r30)
    lwz     r4, 0x18(r4)
    lwz     r4, 0xc(r4)
    bl      setGamePad__6TMarioFP13TMarioGamePad
    lwz     r3, 0x150(r30)
    li      r0, 0x5
    stb     r0, 0x388(r3)
branch_0x800399c8:
    lwz     r5, 0x114(r31)
    addi    r3, sp, 0xc0
    lwz     r0, 0x118(r31)
    lwz     r4, -0x5db8(r13)
    stw     r5, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0x11c(r31)
    stw     r0, 0xc8(sp)
    lhz     r0, 0x120(r31)
    sth     r0, 0xcc(sp)
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0xc0
    mtlr    r12
    blrl
    lwz     r4, 0x150(r30)
    stw     r3, 0x3c(r4)
    lwz     r3, 0x150(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x150(r30)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r4)
    lwz     r4, 0x150(r30)
    lwz     r3, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r3, 0x30(r4)
    stw     r0, 0x34(r4)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r4)
    lwz     r4, 0x150(r30)
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x24(r4)
    stw     r0, 0x28(r4)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x2c(r4)
    lfs     f1, -0x7490(rtoc)
    lfs     f0, 0x34(r30)
    lfs     f2, -0x7494(rtoc)
    fmuls   f0, f1, f0
    lwz     r3, 0x150(r30)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xd8(sp)
    lwz     r0, 0xdc(sp)
    sth     r0, 0x96(r3)
    lwz     r3, 0x150(r30)
    bl      initEnemyValues__11TEnemyMarioFv
    lwz     r3, 0x150(r30)
    lwz     r0, 0x118(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x118(r3)
    lwz     r0, 0xf4(sp)
    lwz     r31, 0xec(sp)
    lwz     r30, 0xe8(sp)
    lwz     r29, 0xe4(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl __dt__6TMarioFv
__dt__6TMarioFv: # 0x80039ae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80039b94
    lis     r3, 0x803e
    subi    r3, r3, 0x29a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r3, 0xb4
    stw     r0, 0x20(r30)
    addic.  r0, r30, 0x474
    stw     r3, 0x70(r30)
    beq-    branch_0x80039b44
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x474(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x474
    stw     r0, 0x494(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80039b44:
    cmplwi  r30, 0x0
    beq-    branch_0x80039b84
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80039b84
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80039b84:
    extsh.  r0, r31
    ble-    branch_0x80039b94
    mr      r3, r30
    bl      __dl__FPv
branch_0x80039b94:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__7TEMarioFPCc
__ct__7TEMarioFPCc: # 0x80039bb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x1bfc
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__7TEMarioFv
__dt__7TEMarioFv: # 0x80039bf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80039c44
    lis     r3, 0x803b
    subi    r3, r3, 0x1bfc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x80039c44
    mr      r3, r30
    bl      __dl__FPv
branch_0x80039c44:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_emario_cpp
__sinit_emario_cpp: # 0x80039c60
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x60
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80039ca8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80039ca8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80039cd8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80039cd8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80039d08
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80039d08:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80039d38
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80039d38:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80039d68
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80039d68:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80039d98
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80039d98:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80039dc8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80039dc8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80039df8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80039df8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80039e28
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80039e28:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80039e58
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80039e58:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80039e88
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80039e88:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80039eb8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80039eb8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80039ee8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80039ee8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80039f18
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80039f18:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80039f48
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80039f48:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__7TEMarioFv
_32___dt__7TEMarioFv: # 0x80039f5c
    subi    r3, r3, 0x20
    b       __dt__7TEMarioFv

