
.globl perform__13TEventWatcherFUlPQ26JDrama9TGraphics
perform__13TEventWatcherFUlPQ26JDrama9TGraphics: # 0x80288ffc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x8(sp)
    beq-    branch_0x8028902c
    lwz     r3, 0x14(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8028902c
    lwz     r12, 0x5c(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8028902c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl launchScript__13TEventWatcherFPCc
launchScript__13TEventWatcherFPCc: # 0x8028903c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    stw     r29, 0x14(sp)
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r31, r3
    beq-    branch_0x802890dc
    li      r3, 0x8
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80289090
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__10TSpcBinaryFPv
    lis     r3, __vvt__32TSpcTypedBinary_13TEventWatcher_@ha
    addi    r0, r3, __vvt__32TSpcTypedBinary_13TEventWatcher_@l
    stw     r0, 0x4(r29)
branch_0x80289090:
    stw     r29, 0x10(r30)
    lwz     r3, 0x10(r30)
    bl      init__10TSpcBinaryFv
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802890d8
    lwz     r4, 0x10(r30)
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x20
    li      r7, 0x20
    li      r8, 0x20
    li      r9, 0x20
    bl      __ct__10TSpcInterpFP10TSpcBinaryPviiii
    lis     r3, __vvt__32TSpcTypedInterp_13TEventWatcher_@ha
    addi    r0, r3, __vvt__32TSpcTypedInterp_13TEventWatcher_@l
    stw     r0, 0x5c(r29)
branch_0x802890d8:
    stw     r29, 0x14(r30)
branch_0x802890dc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__13TEventWatcherFPCcPCc
__ct__13TEventWatcherFPCcPCc: # 0x802890f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r5, 0x0
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r31, 0x8(sp)
    mr      r3, r4
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r5, 0x0
    lis     r3, __vvt__13TEventWatcher@ha
    sth     r5, 0xc(r31)
    addi    r0, r3, __vvt__13TEventWatcher@l
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    mr      r4, r30
    stw     r5, 0x10(r31)
    stw     r5, 0x14(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__13TEventWatcherFPCc
__ct__13TEventWatcherFPCc: # 0x80289190
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__13TEventWatcher@ha
    sth     r4, 0xc(r31)
    addi    r0, r3, __vvt__13TEventWatcher@l
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initUserBuiltin__32TSpcTypedBinary_13TEventWatcher_Fv
initUserBuiltin__32TSpcTypedBinary_13TEventWatcher_Fv: # 0x80289200
    mflr    r0
    lis     r5, unk_803a1ec0@h
    stw     r0, 0x4(sp)
    lis     r4, evGetSystemFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r5, unk_803a1ec0@l
    addi    r5, r4, evGetSystemFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r4, r30, 0x158
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetSystemFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetSystemFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x168
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetNameRefHandle__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetNameRefHandle__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x178
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetNameRefName__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetNameRefName__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetNPCType__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetNPCType__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x19c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetFlagNPCDontTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetFlagNPCDontTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1a8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetFlagNPCDontThrow__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetFlagNPCDontThrow__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1bc
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetFlagNPCDead__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetFlagNPCDead__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1d0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsNearSameActors__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evIsNearSameActors__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1e0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsNearActors__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evIsNearActors__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1f4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetTalkNPC__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetTalkNPC__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x204
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetTalkNPCName__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetTalkNPCName__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x210
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetTalkMsgID__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetTalkMsgID__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x220
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetTalkMode__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetTalkMode__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x230
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetTalkSelectedValue__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetTalkSelectedValue__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x23c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetValue2TalkVariable__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetValue2TalkVariable__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x254
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsTalkModeNow__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evIsTalkModeNow__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x26c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetFlagNPCCanTaken__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetFlagNPCCanTaken__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x27c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evPushNerve4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evPushNerve4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x290
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsOnLiveActorFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evIsOnLiveActorFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2a4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetHide4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetHide4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2b8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetDead4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetDead4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2cc
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetTimeLimit__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetTimeLimit__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2e0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetAttentionTime__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetAttentionTime__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2f0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetPollutionIncreaseCount__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetPollutionIncreaseCount__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x304
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetRestTime__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetRestTime__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x320
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetPollutionLevel__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evGetPollutionLevel__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x32c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetNextStage__FP32TSpcTypedInterp_13TEventWatcher_Ul@h
    addi    r5, r3, evSetNextStage__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x340
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evRegisterMovie__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evRegisterMovie__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x350
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGameOver__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evGameOver__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x360
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsGraffitoCoverage0__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsGraffitoCoverage0__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x36c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetGraffitoMultiplied__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evSetGraffitoMultiplied__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x380
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsBossDefeated__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsBossDefeated__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x398
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evLaunchEventClearDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evLaunchEventClearDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x3a8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsEMarioReachedToGoal__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsEMarioReachedToGoal__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x3c0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsEMarioDownWaitingToTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsEMarioDownWaitingToTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x3d8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartEMarioRunAway__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartEMarioRunAway__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x3f4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartEMarioGateDrawing__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartEMarioGateDrawing__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x408
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartEMarioDisappear__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartEMarioDisappear__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x420
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartOpenModelGate__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartOpenModelGate__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x438
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsMapEventFinishedAll__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsMapEventFinishedAll__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x44c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evRaiseBuilding__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evRaiseBuilding__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x464
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evForceCloseTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evForceCloseTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x474
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evInsertTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evInsertTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x484
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x490
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartMonteman__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartMonteman__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x49c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStopTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStopTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x4ac
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evMonteManReachFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evMonteManReachFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x4b8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evGetTime__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evGetTime__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x698
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evKillShine__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evKillShine__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x4cc
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evKillMushroom1up__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evKillMushroom1up__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x4d8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evAppearMushroom1up__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evAppearMushroom1up__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x4e8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evAppearShineFromNPC__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evAppearShineFromNPC__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x4fc
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evAppearShineFromNPCWithoutDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evAppearShineFromNPCWithoutDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x510
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evAppearShineFromKageMario__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evAppearShineFromKageMario__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x530
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evAppearShine__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evAppearShine__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x54c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evAppearShineForWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evAppearShineForWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x558
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evChangeNozzle__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evChangeNozzle__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x570
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartMarioTalking__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartMarioTalking__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x580
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsInsideCube__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsInsideCube__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x594
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetMarioWaiting__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evSetMarioWaiting__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x5a4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetTransScale__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evSetTransScale__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x5b4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetEventID__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evSetEventID__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x5c4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x5d0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStopBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStopBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x690
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartMiss__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartMiss__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x5dc
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartSE__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartSE__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x688
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartEventSE__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartEventSE__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x5e8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evChangeSunglass__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evChangeSunglass__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x5f8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetCollision__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evSetCollision__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x608
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evWarpMario__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evWarpMario__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x618
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartAppearJetBalloon__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartAppearJetBalloon__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x624
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evAppear8RedCoinsAndTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evAppear8RedCoinsAndTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x63c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evWarpFrontToMario__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evWarpFrontToMario__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x654
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evAppearReadyGo__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evAppearReadyGo__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x668
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evOnNeutralMarioKey__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evOnNeutralMarioKey__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x678
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evInvalidatePad__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evInvalidatePad__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x68c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartMontemanBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartMontemanBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x69c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartMontemanFanfare__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartMontemanFanfare__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x6b0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evCheckWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evCheckWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x6c8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evRefreshWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evRefreshWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x6d8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evKillWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evKillWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x6e8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evManiCoinDown__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evManiCoinDown__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x6f4
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evEggYoshiStartFruit__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evEggYoshiStartFruit__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x708
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evPutNozzle__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evPutNozzle__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x71c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evStartMareBottleDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evStartMareBottleDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x728
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsFinishMareBottleDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsFinishMareBottleDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x73c
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsInsideFastCube__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsInsideFastCube__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x754
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evSetEventForWaterMelon__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evSetEventForWaterMelon__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x768
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, evIsWaterMelonIsReached__FP32TSpcTypedInterp_13TEventWatcher_Ul@ha
    addi    r5, r3, evIsWaterMelonIsReached__FP32TSpcTypedInterp_13TEventWatcher_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x780
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    mr      r3, r31
    bl      initNpcBuiltin__9TNpcEventFP32TSpcTypedBinary_13TEventWatcher_
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl evStartMontemanFanfare__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartMontemanFanfare__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80289944
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lis     r3, unk_80010026@h
    addi    r3, r3, unk_80010026@l
    bl      startBGM__5MSBgmFUl
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x802899a4
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x802899cc

branch_0x802899a4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x802899cc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl evStartMontemanBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartMontemanBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x802899e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    li      r3, 0x0
    li      r4, 0xa
    bl      stopTrackBGM__5MSBgmFUcUl
    lis     r3, unk_8001002f@h
    addi    r3, r3, unk_8001002f@l
    bl      startBGM__5MSBgmFUl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4851
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80289a44
    li      r3, 0x4851
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x80289a44:
    li      r0, 0x0
    stw     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80289a74
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80289a9c

branch_0x80289a74:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80289a9c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl evIsWaterMelonIsReached__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsWaterMelonIsReached__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80289ab0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80289b14
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x40(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x44(sp)
    b       branch_0x80289b3c

branch_0x80289b14:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x40(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x44(sp)
branch_0x80289b3c:
    lwz     r0, 0x40(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80289b60
    bge-    branch_0x80289b74
    cmpwi   r0, 0x0
    bge-    branch_0x80289b58
    b       branch_0x80289b74

branch_0x80289b58:
    lwz     r3, 0x44(sp)
    b       branch_0x80289b78

branch_0x80289b60:
    lfs     f0, 0x44(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    b       branch_0x80289b78

branch_0x80289b74:
    li      r3, 0x0
branch_0x80289b78:
    lfs     f3, -0x680(r2)
    li      r4, 0x0
    lfs     f1, 0x10(r3)
    lfs     f2, -0x67c(r2)
    lfs     f0, 0x18(r3)
    fsubs   f3, f3, f1
    lfs     f1, -0x678(r2)
    fsubs   f2, f2, f0
    lfs     f0, -0x674(r2)
    fmadds  f1, f3, f3, f1
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80289bb4
    li      r4, 0x1
branch_0x80289bb4:
    li      r0, 0x0
    stw     r0, 0x2c(sp)
    stw     r4, 0x30(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80289be4
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80289c0c

branch_0x80289be4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80289c0c:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl evInvalidatePad__FP32TSpcTypedInterp_13TEventWatcher_Ul
evInvalidatePad__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80289c20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80289c84
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
    b       branch_0x80289cac

branch_0x80289c84:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
branch_0x80289cac:
    lwz     r0, 0x48(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80289cd0
    bge-    branch_0x80289ce4
    cmpwi   r0, 0x0
    bge-    branch_0x80289cc8
    b       branch_0x80289ce4

branch_0x80289cc8:
    lwz     r4, 0x4c(sp)
    b       branch_0x80289ce8

branch_0x80289cd0:
    lfs     f0, 0x4c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r4, 0x5c(sp)
    b       branch_0x80289ce8

branch_0x80289ce4:
    li      r4, 0x0
branch_0x80289ce8:
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x0
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    stw     r4, 0xe8(r3)
    stw     r0, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80289d28
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80289d50

branch_0x80289d28:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80289d50:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl evOnNeutralMarioKey__FP32TSpcTypedInterp_13TEventWatcher_Ul
evOnNeutralMarioKey__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80289d64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80289dc8
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80289df0

branch_0x80289dc8:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80289df0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl evWarpFrontToMario__FP32TSpcTypedInterp_13TEventWatcher_Ul
evWarpFrontToMario__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80289e04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r5, sp, 0xc
    stw     r30, 0xa8(sp)
    mr      r30, r3
    stw     r29, 0xa4(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80289e70
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
    b       branch_0x80289e98

branch_0x80289e70:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
branch_0x80289e98:
    lwz     r0, 0x7c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80289ebc
    bge-    branch_0x80289ed0
    cmpwi   r0, 0x0
    bge-    branch_0x80289eb4
    b       branch_0x80289ed0

branch_0x80289eb4:
    lwz     r31, 0x80(sp)
    b       branch_0x80289ed4

branch_0x80289ebc:
    lfs     f0, 0x80(sp)
    fctiwz  f0, f0
    stfd    f0, 0x98(sp)
    lwz     r31, 0x9c(sp)
    b       branch_0x80289ed4

branch_0x80289ed0:
    li      r31, 0x0
branch_0x80289ed4:
    lwz     r5, R13Off_m0x60ac(r13)
    addi    r3, sp, 0x64
    lfs     f1, -0x678(r2)
    addi    r4, sp, 0x84
    lha     r29, 0x0(r5)
    lfs     f0, -0x670(r2)
    stfs    f1, 0x84(sp)
    stfs    f1, 0x88(sp)
    stfs    f0, 0x8c(sp)
    lhz     r6, 0x0(r5)
    lwz     r5, R13Off_m0x5eac(r13)
    lwz     r0, R13Off_m0x5ea8(r13)
    sraw    r5, r6, r5
    lfs     f4, 0x84(sp)
    slwi    r6, r5, 2
    lwz     r5, R13Off_m0x5ea4(r13)
    add     r7, r0, r6
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x0(r7)
    add     r5, r5, r6
    lfs     f2, 0x0(r5)
    fneg    f3, f4
    fmuls   f0, f1, f0
    fmadds  f0, f4, f2, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x0(r5)
    lfs     f2, 0x0(r7)
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x8c(sp)
    bl      set__Q29JGeometry8TVec3_f_FRC3Vec
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r3, sp, 0x44
    addi    r4, sp, 0x64
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x4c(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x44(sp)
    addi    r0, r29, -0x8000
    lwz     r5, 0x48(sp)
    extsh   r0, r0
    xoris   r4, r0, 0x8000
    stw     r3, 0x10(r31)
    lis     r3, 0x4330
    li      r0, 0x0
    stw     r5, 0x14(r31)
    stw     r4, 0x9c(sp)
    lwz     r4, 0x4c(sp)
    stw     r3, 0x98(sp)
    stw     r4, 0x18(r31)
    lfd     f0, 0x98(sp)
    lfd     f1, -0x668(r2)
    lfs     f2, -0x66c(r2)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x34(r31)
    stw     r0, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x80289ff4
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028a01c

branch_0x80289ff4:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8028a01c:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl evAppear8RedCoinsAndTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul
evAppear8RedCoinsAndTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028a038
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    addi    r5, sp, 0xc
    stmw    r27, 0x84(sp)
    mr      r31, r3
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x5db8(r13)
    lis     r4, unk_803a2694@h
    addi    r0, r4, unk_803a2694@l
    mr      r29, r0
    lwz     r30, 0x4(r3)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    lwz     r28, 0x138(r3)
    li      r27, 0x0
    lfs     f31, -0x660(r2)
    lis     r30, unk_2000000f@h
branch_0x8028a0a8:
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r30, unk_2000000f@l
    bl      makeObjAppeared__18TMapObjBaseManagerFUl
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r0, 0x150(r29)
    lwz     r12, 0x1dc(r12)
    subf    r4, r0, r28
    mtlr    r12
    blrl
    lfs     f1, 0x14(r29)
    mr      r3, r29
    lfs     f2, 0x18(r29)
    lfs     f0, 0x10(r29)
    fadds   f1, f31, f1
    stfs    f0, 0x158(r29)
    stfs    f1, 0x15c(r29)
    stfs    f2, 0x160(r29)
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r29
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x58
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    addi    r29, r29, 0x158
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r29, 0x0
    li      r4, 0xe5
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r29, 0x0
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    addi    r27, r27, 0x1
    cmpwi   r27, 0x8
    blt+    branch_0x8028a0a8
    xoris   r0, r28, 0x8000
    lwz     r3, R13Off_m0x6048(r13)
    stw     r0, 0x7c(sp)
    lis     r0, unk_43300001@h
    lfd     f1, -0x668(r2)
    addi    r4, r0, unk_43300001@l
    stw     r0, 0x78(sp)
    lfs     f2, -0x65c(r2)
    lfd     f0, 0x78(sp)
    lwz     r3, 0x74(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r5, 0x74(sp)
    bl      startAppearTimer__11TGCConsole2Fil
    lwz     r29, R13Off_m0x6048(r13)
    addi    r3, r29, 0xe8
    bl      OSCheckStopwatch
    stw     r4, 0xcc(r29)
    li      r4, 0xa
    stw     r3, 0xc8(r29)
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      startMoveTimer__11TGCConsole2Fi
    li      r0, 0x0
    stw     r0, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028a1e0
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028a208

branch_0x8028a1e0:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028a208:
    lmw     r27, 0x84(sp)
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl evAppearReadyGo__FP32TSpcTypedInterp_13TEventWatcher_Ul
evAppearReadyGo__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028a220
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    lwz     r3, 0x94(r3)
    bl      startAppearReady__11TConsoleStrFv
    li      r0, 0x0
    stw     r0, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028a284
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028a2ac

branch_0x8028a284:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028a2ac:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl evSetEventForWaterMelon__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetEventForWaterMelon__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028a2c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028a32c
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028a354

branch_0x8028a32c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028a354:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028a40c
    bge-    branch_0x8028a384
    cmpwi   r0, 0x0
    bge-    branch_0x8028a3d4
    b       branch_0x8028a40c

branch_0x8028a384:
    cmpwi   r0, 0x3
    bge-    branch_0x8028a40c
    cmpwi   r0, 0x2
    beq-    branch_0x8028a398
    b       branch_0x8028a3a0

branch_0x8028a398:
    lwz     r30, 0x60(sp)
    b       branch_0x8028a3a4

branch_0x8028a3a0:
    addi    r30, r2, R2Off_m0x658
branch_0x8028a3a4:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028a40c

branch_0x8028a3d4:
    cmpwi   r0, 0x1
    beq-    branch_0x8028a3f4
    bge-    branch_0x8028a408
    cmpwi   r0, 0x0
    bge-    branch_0x8028a3ec
    b       branch_0x8028a408

branch_0x8028a3ec:
    lwz     r3, 0x60(sp)
    b       branch_0x8028a40c

branch_0x8028a3f4:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028a40c

branch_0x8028a408:
    li      r3, 0x0
branch_0x8028a40c:
    bl      startEvent__14TBigWatermelonFv
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028a440
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028a468

branch_0x8028a440:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028a468:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evStartAppearJetBalloon__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartAppearJetBalloon__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028a484
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    addi    r5, sp, 0xc
    stw     r30, 0xa0(sp)
    mr      r30, r3
    stw     r29, 0x9c(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028a4f4
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x80(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x84(sp)
    b       branch_0x8028a51c

branch_0x8028a4f4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x80(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x84(sp)
branch_0x8028a51c:
    lwz     r0, 0x80(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028a540
    bge-    branch_0x8028a554
    cmpwi   r0, 0x0
    bge-    branch_0x8028a538
    b       branch_0x8028a554

branch_0x8028a538:
    lwz     r29, 0x84(sp)
    b       branch_0x8028a558

branch_0x8028a540:
    lfs     f0, 0x84(sp)
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r29, 0x94(sp)
    b       branch_0x8028a558

branch_0x8028a554:
    li      r29, 0x0
branch_0x8028a558:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028a594
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x7c(sp)
    b       branch_0x8028a5bc

branch_0x8028a594:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x7c(sp)
branch_0x8028a5bc:
    lwz     r0, 0x78(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028a5e0
    bge-    branch_0x8028a5f4
    cmpwi   r0, 0x0
    bge-    branch_0x8028a5d8
    b       branch_0x8028a5f4

branch_0x8028a5d8:
    lwz     r0, 0x7c(sp)
    b       branch_0x8028a5f8

branch_0x8028a5e0:
    lfs     f0, 0x7c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r0, 0x94(sp)
    b       branch_0x8028a5f8

branch_0x8028a5f4:
    li      r0, 0x0
branch_0x8028a5f8:
    cmpwi   r0, 0x1
    beq-    branch_0x8028a63c
    bge-    branch_0x8028a610
    cmpwi   r0, 0x0
    bge-    branch_0x8028a61c
    b       branch_0x8028a670

branch_0x8028a610:
    cmpwi   r0, 0x3
    bge-    branch_0x8028a670
    b       branch_0x8028a65c

branch_0x8028a61c:
    cmpwi   r29, 0x1
    bne-    branch_0x8028a670
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x0
    li      r5, 0x8
    lwz     r3, 0x74(r3)
    bl      startAppearJetBalloon__11TGCConsole2Fii
    b       branch_0x8028a670

branch_0x8028a63c:
    cmpwi   r29, 0x1
    bne-    branch_0x8028a670
    lwz     r3, R13Off_m0x6048(r13)
    li      r4, 0x1
    li      r5, 0xa
    lwz     r3, 0x74(r3)
    bl      startAppearJetBalloon__11TGCConsole2Fii
    b       branch_0x8028a670

branch_0x8028a65c:
    cmpwi   r29, 0x1
    bne-    branch_0x8028a670
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearRedCoin__11TGCConsole2Fv
branch_0x8028a670:
    li      r0, 0x0
    stw     r0, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8028a69c
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028a6c4

branch_0x8028a69c:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8028a6c4:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl evWarpMario__FP32TSpcTypedInterp_13TEventWatcher_Ul
evWarpMario__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028a6e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stmw    r27, 0xcc(sp)
    mr      r27, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x4
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028a748
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xa0(sp)
    b       branch_0x8028a770

branch_0x8028a748:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xa0(sp)
branch_0x8028a770:
    lwz     r0, 0x9c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028a794
    bge-    branch_0x8028a7a8
    cmpwi   r0, 0x0
    bge-    branch_0x8028a78c
    b       branch_0x8028a7a8

branch_0x8028a78c:
    lwz     r30, 0xa0(sp)
    b       branch_0x8028a7ac

branch_0x8028a794:
    lfs     f0, 0xa0(sp)
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r30, 0xc4(sp)
    b       branch_0x8028a7ac

branch_0x8028a7a8:
    li      r30, 0x0
branch_0x8028a7ac:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028a7e8
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x94(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x98(sp)
    b       branch_0x8028a810

branch_0x8028a7e8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x94(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x98(sp)
branch_0x8028a810:
    lwz     r0, 0x94(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028a834
    bge-    branch_0x8028a848
    cmpwi   r0, 0x0
    bge-    branch_0x8028a82c
    b       branch_0x8028a848

branch_0x8028a82c:
    lwz     r29, 0x98(sp)
    b       branch_0x8028a84c

branch_0x8028a834:
    lfs     f0, 0x98(sp)
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r29, 0xc4(sp)
    b       branch_0x8028a84c

branch_0x8028a848:
    li      r29, 0x0
branch_0x8028a84c:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028a888
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x90(sp)
    b       branch_0x8028a8b0

branch_0x8028a888:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x90(sp)
branch_0x8028a8b0:
    lwz     r0, 0x8c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028a8d4
    bge-    branch_0x8028a8e8
    cmpwi   r0, 0x0
    bge-    branch_0x8028a8cc
    b       branch_0x8028a8e8

branch_0x8028a8cc:
    lwz     r28, 0x90(sp)
    b       branch_0x8028a8ec

branch_0x8028a8d4:
    lfs     f0, 0x90(sp)
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r28, 0xc4(sp)
    b       branch_0x8028a8ec

branch_0x8028a8e8:
    li      r28, 0x0
branch_0x8028a8ec:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028a928
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x84(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x88(sp)
    b       branch_0x8028a950

branch_0x8028a928:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x84(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x88(sp)
branch_0x8028a950:
    lwz     r0, 0x84(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028a974
    bge-    branch_0x8028a988
    cmpwi   r0, 0x0
    bge-    branch_0x8028a96c
    b       branch_0x8028a988

branch_0x8028a96c:
    lwz     r0, 0x88(sp)
    b       branch_0x8028a98c

branch_0x8028a974:
    lfs     f0, 0x88(sp)
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    b       branch_0x8028a98c

branch_0x8028a988:
    li      r0, 0x0
branch_0x8028a98c:
    xoris   r0, r0, 0x8000
    lfd     f4, -0x668(r2)
    stw     r0, 0xc4(sp)
    xoris   r3, r28, 0x8000
    lis     r5, 0x4330
    stw     r3, 0xbc(sp)
    xoris   r4, r29, 0x8000
    xoris   r0, r30, 0x8000
    stw     r5, 0xc0(sp)
    addi    r3, sp, 0x78
    lfd     f0, 0xc0(sp)
    stw     r4, 0xb4(sp)
    fsubs   f3, f0, f4
    stw     r5, 0xb8(sp)
    lfd     f0, 0xb8(sp)
    stw     r0, 0xac(sp)
    fsubs   f1, f0, f4
    stw     r5, 0xb0(sp)
    lfd     f0, 0xb0(sp)
    stfs    f3, 0x78(sp)
    fsubs   f2, f0, f4
    stw     r5, 0xa8(sp)
    stfs    f1, 0x7c(sp)
    lfd     f0, 0xa8(sp)
    stfs    f2, 0x80(sp)
    fsubs   f1, f0, f4
    bl      SMS_MarioWarpRequest__FRCQ29JGeometry8TVec3_f_f
    li      r0, 0x0
    stw     r0, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x18(r27)
    cmpw    r3, r0
    blt-    branch_0x8028aa24
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028aa4c

branch_0x8028aa24:
    lwz     r5, 0x20(r27)
    slwi    r4, r3, 3
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
branch_0x8028aa4c:
    lmw     r27, 0xcc(sp)
    lwz     r0, 0xe4(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl evSetCollision__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetCollision__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028aa60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r27, 0x94(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028aac8
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
    b       branch_0x8028aaf0

branch_0x8028aac8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
branch_0x8028aaf0:
    lwz     r0, 0x7c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ab14
    bge-    branch_0x8028ab28
    cmpwi   r0, 0x0
    bge-    branch_0x8028ab0c
    b       branch_0x8028ab28

branch_0x8028ab0c:
    lwz     r30, 0x80(sp)
    b       branch_0x8028ab2c

branch_0x8028ab14:
    lfs     f0, 0x80(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r30, 0x8c(sp)
    b       branch_0x8028ab2c

branch_0x8028ab28:
    li      r30, 0x0
branch_0x8028ab2c:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028ab68
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
    b       branch_0x8028ab90

branch_0x8028ab68:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
branch_0x8028ab90:
    lwz     r4, 0x6c(sp)
    li      r3, 0x0
    lwz     r0, 0x70(sp)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x74(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ac48
    bge-    branch_0x8028abc0
    cmpwi   r0, 0x0
    bge-    branch_0x8028ac10
    b       branch_0x8028ac48

branch_0x8028abc0:
    cmpwi   r0, 0x3
    bge-    branch_0x8028ac48
    cmpwi   r0, 0x2
    beq-    branch_0x8028abd4
    b       branch_0x8028abdc

branch_0x8028abd4:
    lwz     r28, 0x78(sp)
    b       branch_0x8028abe0

branch_0x8028abdc:
    addi    r28, r2, R2Off_m0x658
branch_0x8028abe0:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    b       branch_0x8028ac48

branch_0x8028ac10:
    cmpwi   r0, 0x1
    beq-    branch_0x8028ac30
    bge-    branch_0x8028ac44
    cmpwi   r0, 0x0
    bge-    branch_0x8028ac28
    b       branch_0x8028ac44

branch_0x8028ac28:
    lwz     r3, 0x78(sp)
    b       branch_0x8028ac48

branch_0x8028ac30:
    lfs     f0, 0x78(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    b       branch_0x8028ac48

branch_0x8028ac44:
    li      r3, 0x0
branch_0x8028ac48:
    cmpwi   r30, 0x0
    bne-    branch_0x8028ac60
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    b       branch_0x8028ac6c

branch_0x8028ac60:
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
branch_0x8028ac6c:
    li      r0, 0x0
    stw     r0, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8028ac98
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028acc0

branch_0x8028ac98:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8028acc0:
    lmw     r27, 0x94(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl evChangeSunglass__FP32TSpcTypedInterp_13TEventWatcher_Ul
evChangeSunglass__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028acd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x70(sp)
    mr      r30, r3
    stw     r29, 0x6c(sp)
    stw     r28, 0x68(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028ad48
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x50(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x54(sp)
    b       branch_0x8028ad70

branch_0x8028ad48:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x50(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x54(sp)
branch_0x8028ad70:
    lwz     r0, 0x50(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ad94
    bge-    branch_0x8028ada8
    cmpwi   r0, 0x0
    bge-    branch_0x8028ad8c
    b       branch_0x8028ada8

branch_0x8028ad8c:
    lwz     r29, 0x54(sp)
    b       branch_0x8028adac

branch_0x8028ad94:
    lfs     f0, 0x54(sp)
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r29, 0x64(sp)
    b       branch_0x8028adac

branch_0x8028ada8:
    li      r29, 0x0
branch_0x8028adac:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0x7e8
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x7e8
    mtlr    r12
    blrl
    cmpwi   r29, 0x0
    bne-    branch_0x8028ae1c
    li      r4, 0x2
    li      r5, 0x1
    bl      startFade__9TSunGlassFib
    lwz     r3, R13Off_m0x60d8(r13)
    bl      wearGlass__6TMarioFv
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x77
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    beq-    branch_0x8028ae54
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r0, 0x118(r3)
    oris    r0, r0, 0x10
    stw     r0, 0x118(r3)
    b       branch_0x8028ae54

branch_0x8028ae1c:
    li      r4, 0x3
    li      r5, 0x1
    bl      startFade__9TSunGlassFib
    lwz     r3, R13Off_m0x60d8(r13)
    bl      takeOffGlass__6TMarioFv
    lwz     r3, R13Off_m0x6060(r13)
    li      r4, 0x77
    bl      getShineFlag__12TFlagManagerCFUc
    clrlwi. r0, r3, 24
    beq-    branch_0x8028ae54
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm  r0, r0, 0, 12, 10
    stw     r0, 0x118(r3)
branch_0x8028ae54:
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8028ae80
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028aea8

branch_0x8028ae80:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8028aea8:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl evStartMiss__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartMiss__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028aec8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x60d8(r13)
    bl      loserExec__6TMarioFv
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028af24
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028af4c

branch_0x8028af24:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028af4c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl evStartEventSE__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartEventSE__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028af60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028afc8
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
    b       branch_0x8028aff0

branch_0x8028afc8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
branch_0x8028aff0:
    lwz     r0, 0x38(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028b014
    bge-    branch_0x8028b028
    cmpwi   r0, 0x0
    bge-    branch_0x8028b00c
    b       branch_0x8028b028

branch_0x8028b00c:
    lwz     r0, 0x3c(sp)
    b       branch_0x8028b02c

branch_0x8028b014:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    b       branch_0x8028b02c

branch_0x8028b028:
    li      r0, 0x0
branch_0x8028b02c:
    cmpwi   r0, 0x1
    beq-    branch_0x8028b04c
    bge-    branch_0x8028b050
    cmpwi   r0, 0x0
    bge-    branch_0x8028b044
    b       branch_0x8028b050

branch_0x8028b044:
    li      r31, 0x485a
    b       branch_0x8028b050

branch_0x8028b04c:
    li      r31, 0x485b
branch_0x8028b050:
    lwz     r3, R13Off_m0x6044(r13)
    mr      r4, r31
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028b078
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8028b078:
    li      r0, 0x0
    stw     r0, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8028b0a8
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028b0d0

branch_0x8028b0a8:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8028b0d0:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl evStartSE__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartSE__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028b0e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x48(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028b150
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
    b       branch_0x8028b178

branch_0x8028b150:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
branch_0x8028b178:
    lwz     r0, 0x38(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028b19c
    bge-    branch_0x8028b1b0
    cmpwi   r0, 0x0
    bge-    branch_0x8028b194
    b       branch_0x8028b1b0

branch_0x8028b194:
    lwz     r30, 0x3c(sp)
    b       branch_0x8028b1b4

branch_0x8028b19c:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r30, 0x44(sp)
    b       branch_0x8028b1b4

branch_0x8028b1b0:
    li      r30, 0x0
branch_0x8028b1b4:
    lwz     r3, R13Off_m0x6044(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028b1dc
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8028b1dc:
    li      r0, 0x0
    stw     r0, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028b20c
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028b234

branch_0x8028b20c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028b234:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl evStopBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStopBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028b24c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028b2b0
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
    b       branch_0x8028b2d8

branch_0x8028b2b0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
branch_0x8028b2d8:
    lwz     r0, 0x30(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028b2fc
    bge-    branch_0x8028b310
    cmpwi   r0, 0x0
    bge-    branch_0x8028b2f4
    b       branch_0x8028b310

branch_0x8028b2f4:
    lwz     r3, 0x34(sp)
    b       branch_0x8028b314

branch_0x8028b2fc:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    b       branch_0x8028b314

branch_0x8028b310:
    li      r3, 0x0
branch_0x8028b314:
    li      r4, 0xa
    bl      stopBGM__5MSBgmFUlUl
    li      r0, 0x0
    stw     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028b34c
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028b374

branch_0x8028b34c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028b374:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl evPutNozzle__FP32TSpcTypedInterp_13TEventWatcher_Ul
evPutNozzle__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028b388
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028b3f4
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028b41c

branch_0x8028b3f4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028b41c:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028b4d4
    bge-    branch_0x8028b44c
    cmpwi   r0, 0x0
    bge-    branch_0x8028b49c
    b       branch_0x8028b4d4

branch_0x8028b44c:
    cmpwi   r0, 0x3
    bge-    branch_0x8028b4d4
    cmpwi   r0, 0x2
    beq-    branch_0x8028b460
    b       branch_0x8028b468

branch_0x8028b460:
    lwz     r30, 0x60(sp)
    b       branch_0x8028b46c

branch_0x8028b468:
    addi    r30, r2, R2Off_m0x658
branch_0x8028b46c:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028b4d4

branch_0x8028b49c:
    cmpwi   r0, 0x1
    beq-    branch_0x8028b4bc
    bge-    branch_0x8028b4d0
    cmpwi   r0, 0x0
    bge-    branch_0x8028b4b4
    b       branch_0x8028b4d0

branch_0x8028b4b4:
    lwz     r3, 0x60(sp)
    b       branch_0x8028b4d4

branch_0x8028b4bc:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028b4d4

branch_0x8028b4d0:
    li      r3, 0x0
branch_0x8028b4d4:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028b514
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028b53c

branch_0x8028b514:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028b53c:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evEggYoshiStartFruit__FP32TSpcTypedInterp_13TEventWatcher_Ul
evEggYoshiStartFruit__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028b558
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028b5c4
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x58(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x5c(sp)
    b       branch_0x8028b5ec

branch_0x8028b5c4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x58(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x5c(sp)
branch_0x8028b5ec:
    lwz     r4, 0x58(sp)
    li      r3, 0x0
    lwz     r0, 0x5c(sp)
    stw     r4, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028b6a4
    bge-    branch_0x8028b61c
    cmpwi   r0, 0x0
    bge-    branch_0x8028b66c
    b       branch_0x8028b6a4

branch_0x8028b61c:
    cmpwi   r0, 0x3
    bge-    branch_0x8028b6a4
    cmpwi   r0, 0x2
    beq-    branch_0x8028b630
    b       branch_0x8028b638

branch_0x8028b630:
    lwz     r30, 0x64(sp)
    b       branch_0x8028b63c

branch_0x8028b638:
    addi    r30, r2, R2Off_m0x658
branch_0x8028b63c:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028b6a4

branch_0x8028b66c:
    cmpwi   r0, 0x1
    beq-    branch_0x8028b68c
    bge-    branch_0x8028b6a0
    cmpwi   r0, 0x0
    bge-    branch_0x8028b684
    b       branch_0x8028b6a0

branch_0x8028b684:
    lwz     r3, 0x64(sp)
    b       branch_0x8028b6a4

branch_0x8028b68c:
    lfs     f0, 0x64(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028b6a4

branch_0x8028b6a0:
    li      r3, 0x0
branch_0x8028b6a4:
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8028b6b4
    bl      startFruit__9TEggYoshiFv
branch_0x8028b6b4:
    li      r0, 0x0
    stw     r0, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028b6e4
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028b70c

branch_0x8028b6e4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028b70c:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evStartBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartBGM__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028b728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028b78c
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
    b       branch_0x8028b7b4

branch_0x8028b78c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
branch_0x8028b7b4:
    lwz     r0, 0x30(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028b7d8
    bge-    branch_0x8028b7ec
    cmpwi   r0, 0x0
    bge-    branch_0x8028b7d0
    b       branch_0x8028b7ec

branch_0x8028b7d0:
    lwz     r3, 0x34(sp)
    b       branch_0x8028b7f0

branch_0x8028b7d8:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    b       branch_0x8028b7f0

branch_0x8028b7ec:
    li      r3, 0x0
branch_0x8028b7f0:
    bl      startBGM__5MSBgmFUl
    li      r0, 0x0
    stw     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028b824
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028b84c

branch_0x8028b824:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028b84c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl evManiCoinDown__FP32TSpcTypedInterp_13TEventWatcher_Ul
evManiCoinDown__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028b860
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearStar__11TGCConsole2Fv
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028b8c0
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028b8e8

branch_0x8028b8c0:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028b8e8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl evSetEventID__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetEventID__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028b8fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r27, 0x94(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028b964
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
    b       branch_0x8028b98c

branch_0x8028b964:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
branch_0x8028b98c:
    lwz     r0, 0x7c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028b9b0
    bge-    branch_0x8028b9c4
    cmpwi   r0, 0x0
    bge-    branch_0x8028b9a8
    b       branch_0x8028b9c4

branch_0x8028b9a8:
    lwz     r0, 0x80(sp)
    b       branch_0x8028b9c8

branch_0x8028b9b0:
    lfs     f0, 0x80(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    b       branch_0x8028b9c8

branch_0x8028b9c4:
    li      r0, 0x0
branch_0x8028b9c8:
    lwz     r3, 0x1c(r29)
    clrlwi  r30, r0, 16
    cmpwi   r3, 0x0
    bgt-    branch_0x8028ba08
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
    b       branch_0x8028ba30

branch_0x8028ba08:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
branch_0x8028ba30:
    lwz     r4, 0x6c(sp)
    li      r3, 0x0
    lwz     r0, 0x70(sp)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x74(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028bae8
    bge-    branch_0x8028ba60
    cmpwi   r0, 0x0
    bge-    branch_0x8028bab0
    b       branch_0x8028bae8

branch_0x8028ba60:
    cmpwi   r0, 0x3
    bge-    branch_0x8028bae8
    cmpwi   r0, 0x2
    beq-    branch_0x8028ba74
    b       branch_0x8028ba7c

branch_0x8028ba74:
    lwz     r28, 0x78(sp)
    b       branch_0x8028ba80

branch_0x8028ba7c:
    addi    r28, r2, R2Off_m0x658
branch_0x8028ba80:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    b       branch_0x8028bae8

branch_0x8028bab0:
    cmpwi   r0, 0x1
    beq-    branch_0x8028bad0
    bge-    branch_0x8028bae4
    cmpwi   r0, 0x0
    bge-    branch_0x8028bac8
    b       branch_0x8028bae4

branch_0x8028bac8:
    lwz     r3, 0x78(sp)
    b       branch_0x8028bae8

branch_0x8028bad0:
    lfs     f0, 0x78(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    b       branch_0x8028bae8

branch_0x8028bae4:
    li      r3, 0x0
branch_0x8028bae8:
    stw     r30, 0x134(r3)
    li      r0, 0x0
    stw     r0, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8028bb18
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028bb40

branch_0x8028bb18:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8028bb40:
    lmw     r27, 0x94(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl evSetTransScale__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetTransScale__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028bb54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a8(sp)
    stfd    f31, 0x1a0(sp)
    addi    r5, sp, 0xc
    stfd    f30, 0x198(sp)
    stfd    f29, 0x190(sp)
    stfd    f28, 0x188(sp)
    stfd    f27, 0x180(sp)
    stfd    f26, 0x178(sp)
    stw     r31, 0x174(sp)
    stw     r30, 0x170(sp)
    mr      r30, r3
    stw     r29, 0x16c(sp)
    stw     r28, 0x168(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x7
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028bbe0
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x11c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x120(sp)
    b       branch_0x8028bc08

branch_0x8028bbe0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x11c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x120(sp)
branch_0x8028bc08:
    lwz     r0, 0x11c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028bc48
    bge-    branch_0x8028bc50
    cmpwi   r0, 0x0
    bge-    branch_0x8028bc24
    b       branch_0x8028bc50

branch_0x8028bc24:
    lwz     r3, 0x120(sp)
    lis     r0, 0x4330
    lfd     f1, -0x668(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x164(sp)
    stw     r0, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f31, f0, f1
    b       branch_0x8028bc54

branch_0x8028bc48:
    lfs     f31, 0x120(sp)
    b       branch_0x8028bc54

branch_0x8028bc50:
    lfs     f31, -0x678(r2)
branch_0x8028bc54:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028bc90
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x114(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x118(sp)
    b       branch_0x8028bcb8

branch_0x8028bc90:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x114(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x118(sp)
branch_0x8028bcb8:
    lwz     r0, 0x114(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028bcf8
    bge-    branch_0x8028bd00
    cmpwi   r0, 0x0
    bge-    branch_0x8028bcd4
    b       branch_0x8028bd00

branch_0x8028bcd4:
    lwz     r3, 0x118(sp)
    lis     r0, 0x4330
    lfd     f1, -0x668(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x164(sp)
    stw     r0, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f30, f0, f1
    b       branch_0x8028bd04

branch_0x8028bcf8:
    lfs     f30, 0x118(sp)
    b       branch_0x8028bd04

branch_0x8028bd00:
    lfs     f30, -0x678(r2)
branch_0x8028bd04:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028bd40
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x10c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x110(sp)
    b       branch_0x8028bd68

branch_0x8028bd40:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x10c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x110(sp)
branch_0x8028bd68:
    lwz     r0, 0x10c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028bda8
    bge-    branch_0x8028bdb0
    cmpwi   r0, 0x0
    bge-    branch_0x8028bd84
    b       branch_0x8028bdb0

branch_0x8028bd84:
    lwz     r3, 0x110(sp)
    lis     r0, 0x4330
    lfd     f1, -0x668(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x164(sp)
    stw     r0, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f29, f0, f1
    b       branch_0x8028bdb4

branch_0x8028bda8:
    lfs     f29, 0x110(sp)
    b       branch_0x8028bdb4

branch_0x8028bdb0:
    lfs     f29, -0x678(r2)
branch_0x8028bdb4:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028bdf0
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x104(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x108(sp)
    b       branch_0x8028be18

branch_0x8028bdf0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x104(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x108(sp)
branch_0x8028be18:
    lwz     r0, 0x104(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028be58
    bge-    branch_0x8028be60
    cmpwi   r0, 0x0
    bge-    branch_0x8028be34
    b       branch_0x8028be60

branch_0x8028be34:
    lwz     r3, 0x108(sp)
    lis     r0, 0x4330
    lfd     f1, -0x668(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x164(sp)
    stw     r0, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f28, f0, f1
    b       branch_0x8028be64

branch_0x8028be58:
    lfs     f28, 0x108(sp)
    b       branch_0x8028be64

branch_0x8028be60:
    lfs     f28, -0x678(r2)
branch_0x8028be64:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028bea0
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x100(sp)
    b       branch_0x8028bec8

branch_0x8028bea0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x100(sp)
branch_0x8028bec8:
    lwz     r0, 0xfc(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028bf08
    bge-    branch_0x8028bf10
    cmpwi   r0, 0x0
    bge-    branch_0x8028bee4
    b       branch_0x8028bf10

branch_0x8028bee4:
    lwz     r3, 0x100(sp)
    lis     r0, 0x4330
    lfd     f1, -0x668(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x164(sp)
    stw     r0, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f27, f0, f1
    b       branch_0x8028bf14

branch_0x8028bf08:
    lfs     f27, 0x100(sp)
    b       branch_0x8028bf14

branch_0x8028bf10:
    lfs     f27, -0x678(r2)
branch_0x8028bf14:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028bf50
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xf8(sp)
    b       branch_0x8028bf78

branch_0x8028bf50:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xf8(sp)
branch_0x8028bf78:
    lwz     r0, 0xf4(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028bfb8
    bge-    branch_0x8028bfc0
    cmpwi   r0, 0x0
    bge-    branch_0x8028bf94
    b       branch_0x8028bfc0

branch_0x8028bf94:
    lwz     r3, 0xf8(sp)
    lis     r0, 0x4330
    lfd     f1, -0x668(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x164(sp)
    stw     r0, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f26, f0, f1
    b       branch_0x8028bfc4

branch_0x8028bfb8:
    lfs     f26, 0xf8(sp)
    b       branch_0x8028bfc4

branch_0x8028bfc0:
    lfs     f26, -0x678(r2)
branch_0x8028bfc4:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028c000
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xe4(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xe8(sp)
    b       branch_0x8028c028

branch_0x8028c000:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xe4(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xe8(sp)
branch_0x8028c028:
    lwz     r4, 0xe4(sp)
    li      r3, 0x0
    lwz     r0, 0xe8(sp)
    stw     r4, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0xec(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028c0e0
    bge-    branch_0x8028c058
    cmpwi   r0, 0x0
    bge-    branch_0x8028c0a8
    b       branch_0x8028c0e0

branch_0x8028c058:
    cmpwi   r0, 0x3
    bge-    branch_0x8028c0e0
    cmpwi   r0, 0x2
    beq-    branch_0x8028c06c
    b       branch_0x8028c074

branch_0x8028c06c:
    lwz     r29, 0xf0(sp)
    b       branch_0x8028c078

branch_0x8028c074:
    addi    r29, r2, R2Off_m0x658
branch_0x8028c078:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r29
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    b       branch_0x8028c0e0

branch_0x8028c0a8:
    cmpwi   r0, 0x1
    beq-    branch_0x8028c0c8
    bge-    branch_0x8028c0dc
    cmpwi   r0, 0x0
    bge-    branch_0x8028c0c0
    b       branch_0x8028c0dc

branch_0x8028c0c0:
    lwz     r3, 0xf0(sp)
    b       branch_0x8028c0e0

branch_0x8028c0c8:
    lfs     f0, 0xf0(sp)
    fctiwz  f0, f0
    stfd    f0, 0x160(sp)
    lwz     r3, 0x164(sp)
    b       branch_0x8028c0e0

branch_0x8028c0dc:
    li      r3, 0x0
branch_0x8028c0e0:
    mr      r28, r3
    lwz     r12, 0x0(r28)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x678(r2)
    mr      r3, r28
    stfs    f26, 0x13c(sp)
    addi    r4, sp, 0x13c
    addi    r5, sp, 0x130
    stfs    f0, 0x130(sp)
    addi    r6, sp, 0x124
    stfs    f29, 0x124(sp)
    stfs    f27, 0x140(sp)
    stfs    f0, 0x134(sp)
    stfs    f30, 0x128(sp)
    stfs    f28, 0x144(sp)
    stfs    f0, 0x138(sp)
    stfs    f31, 0x12c(sp)
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8028c168
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028c190

branch_0x8028c168:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0xbc(sp)
    lwz     r0, 0xc0(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8028c190:
    lwz     r0, 0x1ac(sp)
    lfd     f31, 0x1a0(sp)
    lfd     f30, 0x198(sp)
    mtlr    r0
    lfd     f29, 0x190(sp)
    lfd     f28, 0x188(sp)
    lfd     f27, 0x180(sp)
    lfd     f26, 0x178(sp)
    lwz     r31, 0x174(sp)
    lwz     r30, 0x170(sp)
    lwz     r29, 0x16c(sp)
    lwz     r28, 0x168(sp)
    addi    sp, sp, 0x1a8
    blr


.globl evIsInsideFastCube__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsInsideFastCube__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028c1c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028c238
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028c260

branch_0x8028c238:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028c260:
    lwz     r0, 0x54(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028c284
    bge-    branch_0x8028c298
    cmpwi   r0, 0x0
    bge-    branch_0x8028c27c
    b       branch_0x8028c298

branch_0x8028c27c:
    lwz     r0, 0x58(sp)
    b       branch_0x8028c29c

branch_0x8028c284:
    lfs     f0, 0x58(sp)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    b       branch_0x8028c29c

branch_0x8028c298:
    li      r0, 0x0
branch_0x8028c29c:
    lwz     r3, 0x1c(r29)
    mr      r30, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x8028c2dc
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
    b       branch_0x8028c304

branch_0x8028c2dc:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
branch_0x8028c304:
    lwz     r0, 0x4c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028c328
    bge-    branch_0x8028c33c
    cmpwi   r0, 0x0
    bge-    branch_0x8028c320
    b       branch_0x8028c33c

branch_0x8028c320:
    lwz     r5, 0x50(sp)
    b       branch_0x8028c340

branch_0x8028c328:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r5, 0x74(sp)
    b       branch_0x8028c340

branch_0x8028c33c:
    li      r5, 0x0
branch_0x8028c340:
    lwz     r4, R13Off_m0x60d8(r13)
    cmpwi   r5, 0x1
    lfs     f0, -0x654(r2)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x64(sp)
    lfs     f1, 0x60(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    beq-    branch_0x8028c3bc
    bge-    branch_0x8028c384
    cmpwi   r5, 0x0
    bge-    branch_0x8028c390
    b       branch_0x8028c414

branch_0x8028c384:
    cmpwi   r5, 0x3
    bge-    branch_0x8028c414
    b       branch_0x8028c3e8

branch_0x8028c390:
    lwz     r3, R13Off_m0x70d8(r13)
    addi    r5, r30, 0x0
    addi    r4, sp, 0x5c
    bl      isInCube__16TCubeManagerBaseCFRC3Vecl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028c3b0
    li      r0, 0x1
    b       branch_0x8028c3b4

branch_0x8028c3b0:
    li      r0, 0x0
branch_0x8028c3b4:
    mr      r3, r0
    b       branch_0x8028c418

branch_0x8028c3bc:
    lwz     r3, R13Off_m0x70d4(r13)
    addi    r5, r30, 0x0
    addi    r4, sp, 0x5c
    bl      isInCube__16TCubeManagerBaseCFRC3Vecl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028c3dc
    li      r0, 0x1
    b       branch_0x8028c3e0

branch_0x8028c3dc:
    li      r0, 0x0
branch_0x8028c3e0:
    mr      r3, r0
    b       branch_0x8028c418

branch_0x8028c3e8:
    lwz     r3, R13Off_m0x70d0(r13)
    addi    r5, r30, 0x0
    addi    r4, sp, 0x5c
    bl      isInCube__16TCubeManagerBaseCFRC3Vecl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028c408
    li      r0, 0x1
    b       branch_0x8028c40c

branch_0x8028c408:
    li      r0, 0x0
branch_0x8028c40c:
    mr      r3, r0
    b       branch_0x8028c418

branch_0x8028c414:
    li      r3, 0x0
branch_0x8028c418:
    li      r0, 0x0
    stw     r0, 0x38(sp)
    stw     r3, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8028c444
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028c46c

branch_0x8028c444:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8028c46c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl evIsFinishMareBottleDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsFinishMareBottleDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028c488
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r30, r4, unk_803a1ec0@l
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x7fc
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x7fc
    mtlr    r12
    blrl
    lwz     r3, 0x74(r3)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8028c508
    li      r3, 0x1
    b       branch_0x8028c50c

branch_0x8028c508:
    li      r3, 0x0
branch_0x8028c50c:
    li      r0, 0x0
    stw     r0, 0x28(sp)
    stw     r3, 0x2c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028c538
    addi    r3, r30, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028c560

branch_0x8028c538:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028c560:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl evStartMareBottleDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartMareBottleDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028c57c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r29, r4, unk_803a1ec0@l
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r29, 0x7fc
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x7fc
    mtlr    r12
    blrl
    mr      r30, r3
    lwz     r3, 0x74(r3)
    addi    r4, r29, 0x808
    bl      setBck__6MActorFPCc
    lwz     r7, R13Off_m0x60d8(r13)
    li      r4, 0x1310
    lwz     r3, 0x10(r30)
    li      r5, 0x0
    lwz     r0, 0x14(r30)
    li      r6, 0x1
    stw     r3, 0x10(r7)
    addi    r3, r7, 0x0
    stw     r0, 0x14(r7)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r7)
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r0, 0x0
    stw     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028c648
    addi    r3, r29, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028c670

branch_0x8028c648:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028c670:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl evSetMarioWaiting__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetMarioWaiting__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028c68c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lis     r4, unk_0c400201@h
    lwz     r3, R13Off_m0x60d8(r13)
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028c6f8
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028c720

branch_0x8028c6f8:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028c720:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl evIsInsideCube__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsInsideCube__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028c734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028c798
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x34(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
    b       branch_0x8028c7c0

branch_0x8028c798:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x34(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
branch_0x8028c7c0:
    lwz     r0, 0x34(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028c7e4
    bge-    branch_0x8028c7f8
    cmpwi   r0, 0x0
    bge-    branch_0x8028c7dc
    b       branch_0x8028c7f8

branch_0x8028c7dc:
    lwz     r0, 0x38(sp)
    b       branch_0x8028c7fc

branch_0x8028c7e4:
    lfs     f0, 0x38(sp)
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    b       branch_0x8028c7fc

branch_0x8028c7f8:
    li      r0, 0x0
branch_0x8028c7fc:
    lwz     r7, R13Off_m0x60d8(r13)
    mr      r5, r0
    lfs     f0, -0x654(r2)
    addi    r4, sp, 0x3c
    lwz     r6, 0x10(r7)
    lwz     r0, 0x14(r7)
    lwz     r3, R13Off_m0x70dc(r13)
    stw     r6, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x18(r7)
    stw     r0, 0x44(sp)
    lfs     f1, 0x40(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    bl      isInCube__16TCubeManagerBaseCFRC3Vecl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028c848
    li      r3, 0x1
    b       branch_0x8028c84c

branch_0x8028c848:
    li      r3, 0x0
branch_0x8028c84c:
    li      r0, 0x0
    stw     r0, 0x24(sp)
    stw     r3, 0x28(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028c87c
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028c8a4

branch_0x8028c87c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028c8a4:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl evKillWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul
evKillWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028c8b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r26, 0x90(sp)
    mr      r27, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r30, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028c920
    addi    r3, r30, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x8028c948

branch_0x8028c920:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x8028c948:
    lwz     r0, 0x68(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028c96c
    bge-    branch_0x8028c980
    cmpwi   r0, 0x0
    bge-    branch_0x8028c964
    b       branch_0x8028c980

branch_0x8028c964:
    lwz     r29, 0x6c(sp)
    b       branch_0x8028c984

branch_0x8028c96c:
    lfs     f0, 0x6c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r29, 0x8c(sp)
    b       branch_0x8028c984

branch_0x8028c980:
    li      r29, 0x0
branch_0x8028c984:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028c9c0
    addi    r3, r30, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x8028c9e8

branch_0x8028c9c0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x8028c9e8:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ca0c
    bge-    branch_0x8028ca20
    cmpwi   r0, 0x0
    bge-    branch_0x8028ca04
    b       branch_0x8028ca20

branch_0x8028ca04:
    lwz     r5, 0x64(sp)
    b       branch_0x8028ca24

branch_0x8028ca0c:
    lfs     f0, 0x64(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r5, 0x8c(sp)
    b       branch_0x8028ca24

branch_0x8028ca20:
    li      r5, 0x0
branch_0x8028ca24:
    lwz     r4, 0x148(r30)
    lis     r3, unk_66666667@h
    lwz     r0, 0x14c(r30)
    addi    r28, r5, 0x0
    addi    r31, r3, unk_66666667@l
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x150(r30)
    stw     r0, 0x78(sp)
    lbz     r0, 0x154(r30)
    stb     r0, 0x7c(sp)
    b       branch_0x8028caec

branch_0x8028ca54:
    cmpwi   r28, 0xa
    bge-    branch_0x8028ca70
    addi    r0, r28, 0x30
    stb     r0, 0x7a(sp)
    li      r0, 0x0
    stb     r0, 0x7b(sp)
    b       branch_0x8028caa4

branch_0x8028ca70:
    mulhw   r0, r31, r28
    srawi   r4, r0, 2
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    srwi    r3, r4, 31
    mulli   r0, r0, 0xa
    add     r3, r4, r3
    addi    r4, r3, 0x30
    subf    r3, r0, r28
    stb     r4, 0x7a(sp)
    addi    r0, r3, 0x30
    stb     r0, 0x7b(sp)
branch_0x8028caa4:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, sp, 0x70
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x70
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8028cae8
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x8028cae8:
    addi    r28, r28, 0x1
branch_0x8028caec:
    cmpw    r28, r29
    ble+    branch_0x8028ca54
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x18(r27)
    cmpw    r3, r0
    blt-    branch_0x8028cb20
    addi    r3, r30, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028cb48

branch_0x8028cb20:
    lwz     r5, 0x20(r27)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
branch_0x8028cb48:
    lmw     r26, 0x90(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl evRefreshWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul
evRefreshWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028cb5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r26, 0x90(sp)
    mr      r27, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r30, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028cbc4
    addi    r3, r30, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x8028cbec

branch_0x8028cbc4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x8028cbec:
    lwz     r0, 0x68(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028cc10
    bge-    branch_0x8028cc24
    cmpwi   r0, 0x0
    bge-    branch_0x8028cc08
    b       branch_0x8028cc24

branch_0x8028cc08:
    lwz     r29, 0x6c(sp)
    b       branch_0x8028cc28

branch_0x8028cc10:
    lfs     f0, 0x6c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r29, 0x8c(sp)
    b       branch_0x8028cc28

branch_0x8028cc24:
    li      r29, 0x0
branch_0x8028cc28:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028cc64
    addi    r3, r30, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x8028cc8c

branch_0x8028cc64:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x8028cc8c:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ccb0
    bge-    branch_0x8028ccc4
    cmpwi   r0, 0x0
    bge-    branch_0x8028cca8
    b       branch_0x8028ccc4

branch_0x8028cca8:
    lwz     r5, 0x64(sp)
    b       branch_0x8028ccc8

branch_0x8028ccb0:
    lfs     f0, 0x64(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r5, 0x8c(sp)
    b       branch_0x8028ccc8

branch_0x8028ccc4:
    li      r5, 0x0
branch_0x8028ccc8:
    lwz     r4, 0x138(r30)
    lis     r3, unk_66666667@h
    lwz     r0, 0x13c(r30)
    addi    r28, r5, 0x0
    addi    r31, r3, unk_66666667@l
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x140(r30)
    stw     r0, 0x78(sp)
    lbz     r0, 0x144(r30)
    stb     r0, 0x7c(sp)
    b       branch_0x8028cd90

branch_0x8028ccf8:
    cmpwi   r28, 0xa
    bge-    branch_0x8028cd14
    addi    r0, r28, 0x30
    stb     r0, 0x7a(sp)
    li      r0, 0x0
    stb     r0, 0x7b(sp)
    b       branch_0x8028cd48

branch_0x8028cd14:
    mulhw   r0, r31, r28
    srawi   r4, r0, 2
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    srwi    r3, r4, 31
    mulli   r0, r0, 0xa
    add     r3, r4, r3
    addi    r4, r3, 0x30
    subf    r3, r0, r28
    stb     r4, 0x7a(sp)
    addi    r0, r3, 0x30
    stb     r0, 0x7b(sp)
branch_0x8028cd48:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, sp, 0x70
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x70
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8028cd8c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x8028cd8c:
    addi    r28, r28, 0x1
branch_0x8028cd90:
    cmpw    r28, r29
    ble+    branch_0x8028ccf8
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x18(r27)
    cmpw    r3, r0
    blt-    branch_0x8028cdc4
    addi    r3, r30, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028cdec

branch_0x8028cdc4:
    lwz     r5, 0x20(r27)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
branch_0x8028cdec:
    lmw     r26, 0x90(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl evCheckWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul
evCheckWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028ce00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r25, 0x94(sp)
    mr      r26, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r30, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r26)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028ce68
    addi    r3, r30, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r26)
    lwz     r3, 0x20(r26)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x8028ce90

branch_0x8028ce68:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r26)
    lwz     r0, 0x1c(r26)
    lwz     r3, 0x20(r26)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x8028ce90:
    lwz     r0, 0x68(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ceb4
    bge-    branch_0x8028cec8
    cmpwi   r0, 0x0
    bge-    branch_0x8028ceac
    b       branch_0x8028cec8

branch_0x8028ceac:
    lwz     r29, 0x6c(sp)
    b       branch_0x8028cecc

branch_0x8028ceb4:
    lfs     f0, 0x6c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r29, 0x8c(sp)
    b       branch_0x8028cecc

branch_0x8028cec8:
    li      r29, 0x0
branch_0x8028cecc:
    lwz     r3, 0x1c(r26)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028cf08
    addi    r3, r30, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r26)
    lwz     r3, 0x20(r26)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x8028cf30

branch_0x8028cf08:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r26)
    lwz     r0, 0x1c(r26)
    lwz     r3, 0x20(r26)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x8028cf30:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028cf54
    bge-    branch_0x8028cf68
    cmpwi   r0, 0x0
    bge-    branch_0x8028cf4c
    b       branch_0x8028cf68

branch_0x8028cf4c:
    lwz     r6, 0x64(sp)
    b       branch_0x8028cf6c

branch_0x8028cf54:
    lfs     f0, 0x64(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r6, 0x8c(sp)
    b       branch_0x8028cf6c

branch_0x8028cf68:
    li      r6, 0x0
branch_0x8028cf6c:
    lwz     r4, 0x128(r30)
    subf    r5, r6, r29
    lwz     r0, 0x12c(r30)
    lis     r3, unk_66666667@h
    addi    r27, r6, 0x0
    stw     r4, 0x70(sp)
    addi    r28, r5, 0x1
    addi    r31, r3, unk_66666667@l
    stw     r0, 0x74(sp)
    lwz     r0, 0x130(r30)
    stw     r0, 0x78(sp)
    lbz     r0, 0x134(r30)
    stb     r0, 0x7c(sp)
    b       branch_0x8028d03c

branch_0x8028cfa4:
    cmpwi   r27, 0xa
    bge-    branch_0x8028cfc0
    addi    r0, r27, 0x30
    stb     r0, 0x7a(sp)
    li      r0, 0x0
    stb     r0, 0x7b(sp)
    b       branch_0x8028cff4

branch_0x8028cfc0:
    mulhw   r0, r31, r27
    srawi   r4, r0, 2
    srawi   r0, r0, 2
    srwi    r3, r0, 31
    add     r0, r0, r3
    srwi    r3, r4, 31
    mulli   r0, r0, 0xa
    add     r3, r4, r3
    addi    r4, r3, 0x30
    subf    r3, r0, r27
    stb     r4, 0x7a(sp)
    addi    r0, r3, 0x30
    stb     r0, 0x7b(sp)
branch_0x8028cff4:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, sp, 0x70
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x70
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8028d038
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8028d038
    addi    r28, r28, -0x1
branch_0x8028d038:
    addi    r27, r27, 0x1
branch_0x8028d03c:
    cmpw    r27, r29
    ble+    branch_0x8028cfa4
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r28, 0x54(sp)
    lwz     r3, 0x1c(r26)
    lwz     r0, 0x18(r26)
    cmpw    r3, r0
    blt-    branch_0x8028d070
    addi    r3, r30, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028d098

branch_0x8028d070:
    lwz     r5, 0x20(r26)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r26)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r26)
branch_0x8028d098:
    lmw     r25, 0x94(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl evStartMarioTalking__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartMarioTalking__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028d0ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x60d8(r13)
    bl      startTalking__6TMarioFv
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028d108
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028d130

branch_0x8028d108:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028d130:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl evChangeNozzle__FP32TSpcTypedInterp_13TEventWatcher_Ul
evChangeNozzle__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028d144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028d1a8
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
    b       branch_0x8028d1d0

branch_0x8028d1a8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x38(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
branch_0x8028d1d0:
    lwz     r0, 0x38(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028d1f4
    bge-    branch_0x8028d208
    cmpwi   r0, 0x0
    bge-    branch_0x8028d1ec
    b       branch_0x8028d208

branch_0x8028d1ec:
    lwz     r0, 0x3c(sp)
    b       branch_0x8028d20c

branch_0x8028d1f4:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    b       branch_0x8028d20c

branch_0x8028d208:
    li      r0, 0x0
branch_0x8028d20c:
    mr      r4, r0
    cmpwi   r4, 0x7
    bne-    branch_0x8028d224
    lwz     r3, R13Off_m0x60d8(r13)
    bl      setDivHelm__6TMarioFv
    b       branch_0x8028d234

branch_0x8028d224:
    lwz     r3, R13Off_m0x60d8(r13)
    li      r5, 0x1
    lwz     r3, 0x3e4(r3)
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
branch_0x8028d234:
    li      r0, 0x0
    stw     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028d264
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028d28c

branch_0x8028d264:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028d28c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl evAppearShineForWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul
evAppearShineForWoodBox__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028d2a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028d30c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
    b       branch_0x8028d334

branch_0x8028d30c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x30(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
branch_0x8028d334:
    lwz     r0, 0x30(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028d358
    bge-    branch_0x8028d36c
    cmpwi   r0, 0x0
    bge-    branch_0x8028d350
    b       branch_0x8028d36c

branch_0x8028d350:
    lwz     r0, 0x34(sp)
    b       branch_0x8028d370

branch_0x8028d358:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    b       branch_0x8028d370

branch_0x8028d36c:
    li      r0, 0x0
branch_0x8028d370:
    cmpwi   r0, 0x0
    beq-    branch_0x8028d37c
    li      r0, 0x1
branch_0x8028d37c:
    slwi    r0, r0, 2
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r13, R13Off_m0x75d8
    lfs     f1, -0x650(r2)
    lwzx    r4, r4, r0
    addi    r5, r31, 0x81c
    lfs     f2, -0x64c(r2)
    lfs     f3, -0x648(r2)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    li      r0, 0x0
    stw     r0, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8028d3cc
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028d3f4

branch_0x8028d3cc:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8028d3f4:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl evAppearShineFromKageMario__FP32TSpcTypedInterp_13TEventWatcher_Ul
evAppearShineFromKageMario__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028d40c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stmw    r26, 0xb8(sp)
    mr      r28, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x3
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r28)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028d474
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xa4(sp)
    b       branch_0x8028d49c

branch_0x8028d474:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xa4(sp)
branch_0x8028d49c:
    lwz     r0, 0xa0(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028d4c0
    bge-    branch_0x8028d4d4
    cmpwi   r0, 0x0
    bge-    branch_0x8028d4b8
    b       branch_0x8028d4d4

branch_0x8028d4b8:
    lwz     r0, 0xa4(sp)
    b       branch_0x8028d4d8

branch_0x8028d4c0:
    lfs     f0, 0xa4(sp)
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    b       branch_0x8028d4d8

branch_0x8028d4d4:
    li      r0, 0x0
branch_0x8028d4d8:
    lwz     r3, 0x1c(r28)
    mr      r30, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x8028d518
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x98(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x9c(sp)
    b       branch_0x8028d540

branch_0x8028d518:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x98(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x9c(sp)
branch_0x8028d540:
    lwz     r0, 0x98(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8028d550
    b       branch_0x8028d558

branch_0x8028d550:
    lwz     r0, 0x9c(sp)
    b       branch_0x8028d55c

branch_0x8028d558:
    addi    r0, r2, R2Off_m0x658
branch_0x8028d55c:
    lwz     r3, 0x1c(r28)
    mr      r29, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x8028d59c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x90(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x94(sp)
    b       branch_0x8028d5c4

branch_0x8028d59c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x90(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x94(sp)
branch_0x8028d5c4:
    lwz     r0, 0x90(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8028d5d4
    b       branch_0x8028d5dc

branch_0x8028d5d4:
    lwz     r0, 0x94(sp)
    b       branch_0x8028d5e0

branch_0x8028d5dc:
    addi    r0, r2, R2Off_m0x658
branch_0x8028d5e0:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r26, r0
    addi    r3, r29, 0x0
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r29, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r26
    mtlr    r12
    blrl
    lwz     r4, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r4, 0x10(r3)
    mr      r4, r30
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r29)
    stw     r0, 0x18(r3)
    bl      appearSimple__6TShineFi
    li      r0, 0x0
    stw     r0, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x8028d68c
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028d6b4

branch_0x8028d68c:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x7c(sp)
    lwz     r0, 0x80(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
branch_0x8028d6b4:
    lmw     r26, 0xb8(sp)
    lwz     r0, 0xd4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl evAppearShineFromNPCWithoutDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul
evAppearShineFromNPCWithoutDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028d6c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r27, 0x9c(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028d72c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
    b       branch_0x8028d750

branch_0x8028d72c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
branch_0x8028d750:
    stw     r4, 0x84(sp)
    lwz     r0, 0x80(sp)
    stw     r0, 0x88(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028d798
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x78(sp)
    b       branch_0x8028d7c0

branch_0x8028d798:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x74(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x78(sp)
branch_0x8028d7c0:
    lwz     r0, 0x74(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8028d7d0
    b       branch_0x8028d7d8

branch_0x8028d7d0:
    lwz     r0, 0x78(sp)
    b       branch_0x8028d7dc

branch_0x8028d7d8:
    addi    r0, r2, R2Off_m0x658
branch_0x8028d7dc:
    lwz     r3, 0x84(sp)
    mr      r30, r0
    lwz     r0, 0x88(sp)
    li      r28, 0x0
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x6c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028d89c
    bge-    branch_0x8028d810
    cmpwi   r0, 0x0
    bge-    branch_0x8028d864
    b       branch_0x8028d89c

branch_0x8028d810:
    cmpwi   r0, 0x3
    bge-    branch_0x8028d89c
    cmpwi   r0, 0x2
    beq-    branch_0x8028d824
    b       branch_0x8028d82c

branch_0x8028d824:
    lwz     r28, 0x70(sp)
    b       branch_0x8028d830

branch_0x8028d82c:
    addi    r28, r2, R2Off_m0x658
branch_0x8028d830:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    mr      r28, r3
    b       branch_0x8028d89c

branch_0x8028d864:
    cmpwi   r0, 0x1
    beq-    branch_0x8028d884
    bge-    branch_0x8028d898
    cmpwi   r0, 0x0
    bge-    branch_0x8028d87c
    b       branch_0x8028d898

branch_0x8028d87c:
    lwz     r28, 0x70(sp)
    b       branch_0x8028d89c

branch_0x8028d884:
    lfs     f0, 0x70(sp)
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r28, 0x94(sp)
    b       branch_0x8028d89c

branch_0x8028d898:
    li      r28, 0x0
branch_0x8028d89c:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    lfs     f0, 0x10(r28)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(r28)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x18(r28)
    stfs    f0, 0x18(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8028d91c
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028d944

branch_0x8028d91c:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8028d944:
    lmw     r27, 0x9c(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl evAppearShine__FP32TSpcTypedInterp_13TEventWatcher_Ul
evAppearShine__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028d958
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    mr      r29, r3
    stw     r28, 0x70(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028d9cc
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x8028d9f4

branch_0x8028d9cc:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x68(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x8028d9f4:
    lwz     r0, 0x68(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8028da04
    b       branch_0x8028da0c

branch_0x8028da04:
    lwz     r0, 0x6c(sp)
    b       branch_0x8028da10

branch_0x8028da0c:
    addi    r0, r2, R2Off_m0x658
branch_0x8028da10:
    lwz     r3, 0x1c(r29)
    mr      r30, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x8028da50
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x8028da78

branch_0x8028da50:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x8028da78:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8028da88
    b       branch_0x8028da90

branch_0x8028da88:
    lwz     r0, 0x64(sp)
    b       branch_0x8028da94

branch_0x8028da90:
    addi    r0, r2, R2Off_m0x658
branch_0x8028da94:
    mr      r28, r0
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x658
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x8028dacc
    lfs     f1, -0x678(r2)
    mr      r4, r28
    lwz     r3, R13Off_m0x62b0(r13)
    mr      r5, r30
    fmr     f2, f1
    fmr     f3, f1
    bl      makeShineAppearWithDemoOffset__12TItemManagerFPCcPCcfff
    b       branch_0x8028db0c

branch_0x8028dacc:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    li      r4, 0x4b0
    li      r5, -0x1
    li      r6, -0x1
    li      r7, -0x1
    bl      appearWithTime__6TShineFiiii
branch_0x8028db0c:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8028db38
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028db60

branch_0x8028db38:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8028db60:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl evAppearShineFromNPC__FP32TSpcTypedInterp_13TEventWatcher_Ul
evAppearShineFromNPC__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028db80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stmw    r26, 0xb8(sp)
    mr      r27, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x3
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028dbe8
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xa0(sp)
    b       branch_0x8028dc10

branch_0x8028dbe8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xa0(sp)
branch_0x8028dc10:
    lwz     r0, 0x9c(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8028dc20
    b       branch_0x8028dc28

branch_0x8028dc20:
    lwz     r0, 0xa0(sp)
    b       branch_0x8028dc2c

branch_0x8028dc28:
    addi    r0, r2, R2Off_m0x658
branch_0x8028dc2c:
    lwz     r3, 0x1c(r27)
    mr      r29, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x8028dc68
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x98(sp)
    b       branch_0x8028dc8c

branch_0x8028dc68:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x98(sp)
branch_0x8028dc8c:
    stw     r4, 0xa4(sp)
    lwz     r0, 0x98(sp)
    stw     r0, 0xa8(sp)
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028dcd4
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x90(sp)
    b       branch_0x8028dcfc

branch_0x8028dcd4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x90(sp)
branch_0x8028dcfc:
    lwz     r0, 0x8c(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x8028dd0c
    b       branch_0x8028dd14

branch_0x8028dd0c:
    lwz     r0, 0x90(sp)
    b       branch_0x8028dd18

branch_0x8028dd14:
    addi    r0, r2, R2Off_m0x658
branch_0x8028dd18:
    lwz     r3, 0xa4(sp)
    mr      r28, r0
    lwz     r0, 0xa8(sp)
    li      r30, 0x0
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x84(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ddd8
    bge-    branch_0x8028dd4c
    cmpwi   r0, 0x0
    bge-    branch_0x8028dda0
    b       branch_0x8028ddd8

branch_0x8028dd4c:
    cmpwi   r0, 0x3
    bge-    branch_0x8028ddd8
    cmpwi   r0, 0x2
    beq-    branch_0x8028dd60
    b       branch_0x8028dd68

branch_0x8028dd60:
    lwz     r30, 0x88(sp)
    b       branch_0x8028dd6c

branch_0x8028dd68:
    addi    r30, r2, R2Off_m0x658
branch_0x8028dd6c:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    mr      r30, r3
    b       branch_0x8028ddd8

branch_0x8028dda0:
    cmpwi   r0, 0x1
    beq-    branch_0x8028ddc0
    bge-    branch_0x8028ddd4
    cmpwi   r0, 0x0
    bge-    branch_0x8028ddb8
    b       branch_0x8028ddd4

branch_0x8028ddb8:
    lwz     r30, 0x88(sp)
    b       branch_0x8028ddd8

branch_0x8028ddc0:
    lfs     f0, 0x88(sp)
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r30, 0xb4(sp)
    b       branch_0x8028ddd8

branch_0x8028ddd4:
    li      r30, 0x0
branch_0x8028ddd8:
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x658
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x8028de0c
    lwz     r3, R13Off_m0x62b0(r13)
    mr      r4, r28
    lfs     f1, 0x10(r30)
    mr      r5, r29
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    b       branch_0x8028de7c

branch_0x8028de0c:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    lwz     r4, 0x10(r30)
    li      r5, -0x1
    lwz     r0, 0x14(r30)
    li      r6, -0x1
    li      r7, -0x1
    stw     r4, 0x10c(r3)
    li      r4, 0x4b0
    stw     r0, 0x110(r3)
    lwz     r0, 0x18(r30)
    stw     r0, 0x114(r3)
    lwz     r8, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r8, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r3)
    bl      appearWithTime__6TShineFiiii
branch_0x8028de7c:
    li      r0, 0x0
    stw     r0, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x18(r27)
    cmpw    r3, r0
    blt-    branch_0x8028dea8
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028ded0

branch_0x8028dea8:
    lwz     r5, 0x20(r27)
    slwi    r4, r3, 3
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
branch_0x8028ded0:
    lmw     r26, 0xb8(sp)
    lwz     r0, 0xd4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl evAppearMushroom1up__FP32TSpcTypedInterp_13TEventWatcher_Ul
evAppearMushroom1up__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028dee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028df50
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x60(sp)
    b       branch_0x8028df78

branch_0x8028df50:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x60(sp)
branch_0x8028df78:
    lwz     r4, 0x5c(sp)
    li      r3, 0x0
    lwz     r0, 0x60(sp)
    stw     r4, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x64(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028e030
    bge-    branch_0x8028dfa8
    cmpwi   r0, 0x0
    bge-    branch_0x8028dff8
    b       branch_0x8028e030

branch_0x8028dfa8:
    cmpwi   r0, 0x3
    bge-    branch_0x8028e030
    cmpwi   r0, 0x2
    beq-    branch_0x8028dfbc
    b       branch_0x8028dfc4

branch_0x8028dfbc:
    lwz     r30, 0x68(sp)
    b       branch_0x8028dfc8

branch_0x8028dfc4:
    addi    r30, r2, R2Off_m0x658
branch_0x8028dfc8:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028e030

branch_0x8028dff8:
    cmpwi   r0, 0x1
    beq-    branch_0x8028e018
    bge-    branch_0x8028e02c
    cmpwi   r0, 0x0
    bge-    branch_0x8028e010
    b       branch_0x8028e02c

branch_0x8028e010:
    lwz     r3, 0x68(sp)
    b       branch_0x8028e030

branch_0x8028e018:
    lfs     f0, 0x68(sp)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r3, 0x74(sp)
    b       branch_0x8028e030

branch_0x8028e02c:
    li      r3, 0x0
branch_0x8028e030:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4854
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028e068
    li      r3, 0x4854
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8028e068:
    li      r0, 0x0
    stw     r0, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028e098
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028e0c0

branch_0x8028e098:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028e0c0:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl evKillMushroom1up__FP32TSpcTypedInterp_13TEventWatcher_Ul
evKillMushroom1up__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028e0dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028e148
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028e170

branch_0x8028e148:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028e170:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028e228
    bge-    branch_0x8028e1a0
    cmpwi   r0, 0x0
    bge-    branch_0x8028e1f0
    b       branch_0x8028e228

branch_0x8028e1a0:
    cmpwi   r0, 0x3
    bge-    branch_0x8028e228
    cmpwi   r0, 0x2
    beq-    branch_0x8028e1b4
    b       branch_0x8028e1bc

branch_0x8028e1b4:
    lwz     r30, 0x60(sp)
    b       branch_0x8028e1c0

branch_0x8028e1bc:
    addi    r30, r2, R2Off_m0x658
branch_0x8028e1c0:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028e228

branch_0x8028e1f0:
    cmpwi   r0, 0x1
    beq-    branch_0x8028e210
    bge-    branch_0x8028e224
    cmpwi   r0, 0x0
    bge-    branch_0x8028e208
    b       branch_0x8028e224

branch_0x8028e208:
    lwz     r3, 0x60(sp)
    b       branch_0x8028e228

branch_0x8028e210:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028e228

branch_0x8028e224:
    li      r3, 0x0
branch_0x8028e228:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028e268
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028e290

branch_0x8028e268:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028e290:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evKillShine__FP32TSpcTypedInterp_13TEventWatcher_Ul
evKillShine__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028e2ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028e318
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028e340

branch_0x8028e318:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028e340:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028e3f8
    bge-    branch_0x8028e370
    cmpwi   r0, 0x0
    bge-    branch_0x8028e3c0
    b       branch_0x8028e3f8

branch_0x8028e370:
    cmpwi   r0, 0x3
    bge-    branch_0x8028e3f8
    cmpwi   r0, 0x2
    beq-    branch_0x8028e384
    b       branch_0x8028e38c

branch_0x8028e384:
    lwz     r30, 0x60(sp)
    b       branch_0x8028e390

branch_0x8028e38c:
    addi    r30, r2, R2Off_m0x658
branch_0x8028e390:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028e3f8

branch_0x8028e3c0:
    cmpwi   r0, 0x1
    beq-    branch_0x8028e3e0
    bge-    branch_0x8028e3f4
    cmpwi   r0, 0x0
    bge-    branch_0x8028e3d8
    b       branch_0x8028e3f4

branch_0x8028e3d8:
    lwz     r3, 0x60(sp)
    b       branch_0x8028e3f8

branch_0x8028e3e0:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028e3f8

branch_0x8028e3f4:
    li      r3, 0x0
branch_0x8028e3f8:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028e438
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028e460

branch_0x8028e438:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028e460:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evGetTime__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetTime__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028e47c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      getFinishedTime__11TGCConsole2Fv
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r3, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028e4dc
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028e504

branch_0x8028e4dc:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028e504:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl evMonteManReachFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul
evMonteManReachFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028e518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    stw     r28, 0x30(sp)
    li      r28, 0x0
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r30, r4, unk_803a1ec0@l
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x838
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x838
    mtlr    r12
    blrl
    bl      isGoal__7TEMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8028e590
    li      r28, 0x1
branch_0x8028e590:
    li      r0, 0x0
    stw     r0, 0x28(sp)
    stw     r28, 0x2c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028e5bc
    addi    r3, r30, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028e5e4

branch_0x8028e5bc:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028e5e4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl evStopTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStopTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028e604
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      stopMoveTimer__11TGCConsole2Fv
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028e664
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028e68c

branch_0x8028e664:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028e68c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl evStartMonteman__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartMonteman__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028e6a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0x838
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x838
    mtlr    r12
    blrl
    lwz     r4, 0x1c(r29)
    addi    r30, r3, 0x0
    cmpwi   r4, 0x0
    bgt-    branch_0x8028e73c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
    b       branch_0x8028e760

branch_0x8028e73c:
    addi    r0, r4, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
branch_0x8028e760:
    stw     r4, 0x50(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x50(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028e790
    bge-    branch_0x8028e7a4
    cmpwi   r0, 0x0
    bge-    branch_0x8028e788
    b       branch_0x8028e7a4

branch_0x8028e788:
    lwz     r0, 0x54(sp)
    b       branch_0x8028e7a8

branch_0x8028e790:
    lfs     f0, 0x54(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    b       branch_0x8028e7a8

branch_0x8028e7a4:
    li      r0, 0x0
branch_0x8028e7a8:
    cmplwi  r30, 0x0
    mr      r4, r0
    beq-    branch_0x8028e7bc
    mr      r3, r30
    bl      startMonteReplay__7TEMarioFUl
branch_0x8028e7bc:
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8028e7e8
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028e810

branch_0x8028e7e8:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8028e810:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl evStartTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028e82c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028e898
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x44(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x48(sp)
    b       branch_0x8028e8c0

branch_0x8028e898:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x44(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x48(sp)
branch_0x8028e8c0:
    lwz     r0, 0x44(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028e8e4
    bge-    branch_0x8028e8f8
    cmpwi   r0, 0x0
    bge-    branch_0x8028e8dc
    b       branch_0x8028e8f8

branch_0x8028e8dc:
    lwz     r0, 0x48(sp)
    b       branch_0x8028e8fc

branch_0x8028e8e4:
    lfs     f0, 0x48(sp)
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    b       branch_0x8028e8fc

branch_0x8028e8f8:
    li      r0, 0x0
branch_0x8028e8fc:
    lwz     r30, R13Off_m0x6048(r13)
    mr      r29, r0
    addi    r3, r30, 0xe8
    bl      OSCheckStopwatch
    stw     r4, 0xcc(r30)
    mr      r4, r29
    stw     r3, 0xc8(r30)
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      startMoveTimer__11TGCConsole2Fi
    li      r0, 0x0
    stw     r0, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028e954
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028e97c

branch_0x8028e954:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028e97c:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl evInsertTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul
evInsertTimer__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028e998
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028ea08
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x80(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x84(sp)
    b       branch_0x8028ea30

branch_0x8028ea08:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x80(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x84(sp)
branch_0x8028ea30:
    lwz     r0, 0x80(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ea54
    bge-    branch_0x8028ea68
    cmpwi   r0, 0x0
    bge-    branch_0x8028ea4c
    b       branch_0x8028ea68

branch_0x8028ea4c:
    lwz     r0, 0x84(sp)
    b       branch_0x8028ea6c

branch_0x8028ea54:
    lfs     f0, 0x84(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    b       branch_0x8028ea6c

branch_0x8028ea68:
    li      r0, 0x0
branch_0x8028ea6c:
    lwz     r3, 0x1c(r29)
    mr      r30, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x8028eaac
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x7c(sp)
    b       branch_0x8028ead4

branch_0x8028eaac:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x78(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x7c(sp)
branch_0x8028ead4:
    lwz     r0, 0x78(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028eaf8
    bge-    branch_0x8028eb0c
    cmpwi   r0, 0x0
    bge-    branch_0x8028eaf0
    b       branch_0x8028eb0c

branch_0x8028eaf0:
    lwz     r0, 0x7c(sp)
    b       branch_0x8028eb10

branch_0x8028eaf8:
    lfs     f0, 0x7c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    b       branch_0x8028eb10

branch_0x8028eb0c:
    li      r0, 0x0
branch_0x8028eb10:
    cmpwi   r0, 0x1
    bne-    branch_0x8028eb30
    lwz     r3, R13Off_m0x6048(r13)
    addi    r5, r30, 0x0
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      startAppearTimer__11TGCConsole2Fil
    b       branch_0x8028eb5c

branch_0x8028eb30:
    cmpwi   r0, 0x2
    bne-    branch_0x8028eb50
    lwz     r3, R13Off_m0x6048(r13)
    addi    r5, r30, 0x0
    li      r4, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearTimer__11TGCConsole2Fil
    b       branch_0x8028eb5c

branch_0x8028eb50:
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      startDisappearTimer__11TGCConsole2Fv
branch_0x8028eb5c:
    li      r0, 0x0
    stw     r0, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8028eb88
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028ebb0

branch_0x8028eb88:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8028ebb0:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl evForceCloseTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul
evForceCloseTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028ebcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x63e8(r13)
    bl      forceCloseTalk__8TTalk2D2Fv
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028ec28
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028ec50

branch_0x8028ec28:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028ec50:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl evRaiseBuilding__FP32TSpcTypedInterp_13TEventWatcher_Ul
evRaiseBuilding__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028ec64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x68(sp)
    mr      r30, r3
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028ecd4
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
    b       branch_0x8028ecf8

branch_0x8028ecd4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
branch_0x8028ecf8:
    stw     r4, 0x50(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x50(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ed28
    bge-    branch_0x8028ed3c
    cmpwi   r0, 0x0
    bge-    branch_0x8028ed20
    b       branch_0x8028ed3c

branch_0x8028ed20:
    lwz     r0, 0x54(sp)
    b       branch_0x8028ed40

branch_0x8028ed28:
    lfs     f0, 0x54(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r0, 0x5c(sp)
    b       branch_0x8028ed40

branch_0x8028ed3c:
    li      r0, 0x0
branch_0x8028ed40:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r28, r0
    addi    r3, r31, 0x844
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x844
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8028ed80
    mr      r4, r28
    bl      raiseBuilding__24TMapEventSinkShadowMarioFi
branch_0x8028ed80:
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8028edac
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8028edd4

branch_0x8028edac:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8028edd4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl evIsMapEventFinishedAll__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsMapEventFinishedAll__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028edf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028ee60
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028ee88

branch_0x8028ee60:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028ee88:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ef40
    bge-    branch_0x8028eeb8
    cmpwi   r0, 0x0
    bge-    branch_0x8028ef08
    b       branch_0x8028ef40

branch_0x8028eeb8:
    cmpwi   r0, 0x3
    bge-    branch_0x8028ef40
    cmpwi   r0, 0x2
    beq-    branch_0x8028eecc
    b       branch_0x8028eed4

branch_0x8028eecc:
    lwz     r30, 0x60(sp)
    b       branch_0x8028eed8

branch_0x8028eed4:
    addi    r30, r2, R2Off_m0x658
branch_0x8028eed8:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028ef40

branch_0x8028ef08:
    cmpwi   r0, 0x1
    beq-    branch_0x8028ef28
    bge-    branch_0x8028ef3c
    cmpwi   r0, 0x0
    bge-    branch_0x8028ef20
    b       branch_0x8028ef3c

branch_0x8028ef20:
    lwz     r3, 0x60(sp)
    b       branch_0x8028ef40

branch_0x8028ef28:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028ef40

branch_0x8028ef3c:
    li      r3, 0x0
branch_0x8028ef40:
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x44(sp)
    clrlwi  r0, r3, 24
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028ef84
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028efac

branch_0x8028ef84:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028efac:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evStartOpenModelGate__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartOpenModelGate__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028efc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028f034
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028f05c

branch_0x8028f034:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028f05c:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028f114
    bge-    branch_0x8028f08c
    cmpwi   r0, 0x0
    bge-    branch_0x8028f0dc
    b       branch_0x8028f114

branch_0x8028f08c:
    cmpwi   r0, 0x3
    bge-    branch_0x8028f114
    cmpwi   r0, 0x2
    beq-    branch_0x8028f0a0
    b       branch_0x8028f0a8

branch_0x8028f0a0:
    lwz     r30, 0x60(sp)
    b       branch_0x8028f0ac

branch_0x8028f0a8:
    addi    r30, r2, R2Off_m0x658
branch_0x8028f0ac:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028f114

branch_0x8028f0dc:
    cmpwi   r0, 0x1
    beq-    branch_0x8028f0fc
    bge-    branch_0x8028f110
    cmpwi   r0, 0x0
    bge-    branch_0x8028f0f4
    b       branch_0x8028f110

branch_0x8028f0f4:
    lwz     r3, 0x60(sp)
    b       branch_0x8028f114

branch_0x8028f0fc:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028f114

branch_0x8028f110:
    li      r3, 0x0
branch_0x8028f114:
    bl      startOpen__10TModelGateFv
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028f148
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028f170

branch_0x8028f148:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028f170:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evStartEMarioDisappear__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartEMarioDisappear__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028f18c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028f1f8
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028f220

branch_0x8028f1f8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028f220:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028f2d8
    bge-    branch_0x8028f250
    cmpwi   r0, 0x0
    bge-    branch_0x8028f2a0
    b       branch_0x8028f2d8

branch_0x8028f250:
    cmpwi   r0, 0x3
    bge-    branch_0x8028f2d8
    cmpwi   r0, 0x2
    beq-    branch_0x8028f264
    b       branch_0x8028f26c

branch_0x8028f264:
    lwz     r30, 0x60(sp)
    b       branch_0x8028f270

branch_0x8028f26c:
    addi    r30, r2, R2Off_m0x658
branch_0x8028f270:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028f2d8

branch_0x8028f2a0:
    cmpwi   r0, 0x1
    beq-    branch_0x8028f2c0
    bge-    branch_0x8028f2d4
    cmpwi   r0, 0x0
    bge-    branch_0x8028f2b8
    b       branch_0x8028f2d4

branch_0x8028f2b8:
    lwz     r3, 0x60(sp)
    b       branch_0x8028f2d8

branch_0x8028f2c0:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028f2d8

branch_0x8028f2d4:
    li      r3, 0x0
branch_0x8028f2d8:
    bl      forceDisappear__7TEMarioFv
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028f30c
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028f334

branch_0x8028f30c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028f334:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evStartEMarioGateDrawing__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartEMarioGateDrawing__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028f350
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028f3bc
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028f3e4

branch_0x8028f3bc:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028f3e4:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028f49c
    bge-    branch_0x8028f414
    cmpwi   r0, 0x0
    bge-    branch_0x8028f464
    b       branch_0x8028f49c

branch_0x8028f414:
    cmpwi   r0, 0x3
    bge-    branch_0x8028f49c
    cmpwi   r0, 0x2
    beq-    branch_0x8028f428
    b       branch_0x8028f430

branch_0x8028f428:
    lwz     r30, 0x60(sp)
    b       branch_0x8028f434

branch_0x8028f430:
    addi    r30, r2, R2Off_m0x658
branch_0x8028f434:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028f49c

branch_0x8028f464:
    cmpwi   r0, 0x1
    beq-    branch_0x8028f484
    bge-    branch_0x8028f498
    cmpwi   r0, 0x0
    bge-    branch_0x8028f47c
    b       branch_0x8028f498

branch_0x8028f47c:
    lwz     r3, 0x60(sp)
    b       branch_0x8028f49c

branch_0x8028f484:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028f49c

branch_0x8028f498:
    li      r3, 0x0
branch_0x8028f49c:
    bl      startGateDrawing__7TEMarioFv
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028f4d0
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028f4f8

branch_0x8028f4d0:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028f4f8:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evStartEMarioRunAway__FP32TSpcTypedInterp_13TEventWatcher_Ul
evStartEMarioRunAway__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028f514
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028f580
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028f5a8

branch_0x8028f580:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028f5a8:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028f660
    bge-    branch_0x8028f5d8
    cmpwi   r0, 0x0
    bge-    branch_0x8028f628
    b       branch_0x8028f660

branch_0x8028f5d8:
    cmpwi   r0, 0x3
    bge-    branch_0x8028f660
    cmpwi   r0, 0x2
    beq-    branch_0x8028f5ec
    b       branch_0x8028f5f4

branch_0x8028f5ec:
    lwz     r30, 0x60(sp)
    b       branch_0x8028f5f8

branch_0x8028f5f4:
    addi    r30, r2, R2Off_m0x658
branch_0x8028f5f8:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028f660

branch_0x8028f628:
    cmpwi   r0, 0x1
    beq-    branch_0x8028f648
    bge-    branch_0x8028f65c
    cmpwi   r0, 0x0
    bge-    branch_0x8028f640
    b       branch_0x8028f65c

branch_0x8028f640:
    lwz     r3, 0x60(sp)
    b       branch_0x8028f660

branch_0x8028f648:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028f660

branch_0x8028f65c:
    li      r3, 0x0
branch_0x8028f660:
    bl      startRunAway__7TEMarioFv
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028f694
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028f6bc

branch_0x8028f694:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028f6bc:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evIsEMarioDownWaitingToTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsEMarioDownWaitingToTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028f6d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028f744
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028f76c

branch_0x8028f744:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028f76c:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028f824
    bge-    branch_0x8028f79c
    cmpwi   r0, 0x0
    bge-    branch_0x8028f7ec
    b       branch_0x8028f824

branch_0x8028f79c:
    cmpwi   r0, 0x3
    bge-    branch_0x8028f824
    cmpwi   r0, 0x2
    beq-    branch_0x8028f7b0
    b       branch_0x8028f7b8

branch_0x8028f7b0:
    lwz     r30, 0x60(sp)
    b       branch_0x8028f7bc

branch_0x8028f7b8:
    addi    r30, r2, R2Off_m0x658
branch_0x8028f7bc:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028f824

branch_0x8028f7ec:
    cmpwi   r0, 0x1
    beq-    branch_0x8028f80c
    bge-    branch_0x8028f820
    cmpwi   r0, 0x0
    bge-    branch_0x8028f804
    b       branch_0x8028f820

branch_0x8028f804:
    lwz     r3, 0x60(sp)
    b       branch_0x8028f824

branch_0x8028f80c:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028f824

branch_0x8028f820:
    li      r3, 0x0
branch_0x8028f824:
    bl      isDownWaitingToTalk__7TEMarioCFv
    li      r0, 0x0
    stw     r0, 0x44(sp)
    clrlwi  r0, r3, 24
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028f85c
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028f884

branch_0x8028f85c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028f884:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evIsEMarioReachedToGoal__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsEMarioReachedToGoal__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028f8a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028f90c
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
    b       branch_0x8028f934

branch_0x8028f90c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x54(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x58(sp)
branch_0x8028f934:
    lwz     r4, 0x54(sp)
    li      r3, 0x0
    lwz     r0, 0x58(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x5c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028f9ec
    bge-    branch_0x8028f964
    cmpwi   r0, 0x0
    bge-    branch_0x8028f9b4
    b       branch_0x8028f9ec

branch_0x8028f964:
    cmpwi   r0, 0x3
    bge-    branch_0x8028f9ec
    cmpwi   r0, 0x2
    beq-    branch_0x8028f978
    b       branch_0x8028f980

branch_0x8028f978:
    lwz     r30, 0x60(sp)
    b       branch_0x8028f984

branch_0x8028f980:
    addi    r30, r2, R2Off_m0x658
branch_0x8028f984:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    b       branch_0x8028f9ec

branch_0x8028f9b4:
    cmpwi   r0, 0x1
    beq-    branch_0x8028f9d4
    bge-    branch_0x8028f9e8
    cmpwi   r0, 0x0
    bge-    branch_0x8028f9cc
    b       branch_0x8028f9e8

branch_0x8028f9cc:
    lwz     r3, 0x60(sp)
    b       branch_0x8028f9ec

branch_0x8028f9d4:
    lfs     f0, 0x60(sp)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    b       branch_0x8028f9ec

branch_0x8028f9e8:
    li      r3, 0x0
branch_0x8028f9ec:
    bl      isReachedToGate__7TEMarioCFv
    li      r0, 0x0
    stw     r0, 0x44(sp)
    clrlwi  r0, r3, 24
    stw     r0, 0x48(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028fa24
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028fa4c

branch_0x8028fa24:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028fa4c:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl evLaunchEventClearDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul
evLaunchEventClearDemo__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028fa68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x28(sp)
    mr      r30, r3
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r31, 0x74(r3)
    lwz     r3, 0x94(r31)
    bl      startAppearShineGet__11TConsoleStrFv
    li      r0, 0x1
    stb     r0, 0x47(r31)
    li      r0, 0x0
    stw     r0, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8028fad8
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028fb00

branch_0x8028fad8:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x8028fb00:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl evIsBossDefeated__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsBossDefeated__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028fb18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x70b0(r13)
    bl      isBossDefeated__10TConductorFv
    cmpwi   r3, 0x0
    beq-    branch_0x8028fb54
    li      r3, 0x1
    b       branch_0x8028fb58

branch_0x8028fb54:
    li      r3, 0x0
branch_0x8028fb58:
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r3, 0x18(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028fb88
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028fbb0

branch_0x8028fb88:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028fbb0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl evSetGraffitoMultiplied__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetGraffitoMultiplied__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028fbc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028fc24
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
    b       branch_0x8028fc48

branch_0x8028fc24:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4c(sp)
branch_0x8028fc48:
    stw     r4, 0x50(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x50(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028fc78
    bge-    branch_0x8028fc8c
    cmpwi   r0, 0x0
    bge-    branch_0x8028fc70
    b       branch_0x8028fc8c

branch_0x8028fc70:
    lwz     r0, 0x54(sp)
    b       branch_0x8028fc90

branch_0x8028fc78:
    lfs     f0, 0x54(sp)
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r0, 0x64(sp)
    b       branch_0x8028fc90

branch_0x8028fc8c:
    li      r0, 0x0
branch_0x8028fc90:
    cmpwi   r0, 0x0
    lwz     r6, R13Off_m0x62f0(r13)
    li      r7, 0x0
    li      r3, 0x0
    li      r4, 0x0
    beq-    branch_0x8028fcf8
    b       branch_0x8028fcc8

branch_0x8028fcac:
    lwz     r5, 0x14(r6)
    addi    r7, r7, 0x1
    lwzx    r5, r5, r4
    addi    r4, r4, 0x4
    lhz     r0, 0x32(r5)
    ori     r0, r0, 0x1
    sth     r0, 0x32(r5)
branch_0x8028fcc8:
    lwz     r0, 0x10(r6)
    cmpw    r7, r0
    blt+    branch_0x8028fcac
    b       branch_0x8028fd04

branch_0x8028fcd8:
    b       branch_0x8028fcf8

branch_0x8028fcdc:
    lwz     r5, 0x14(r6)
    addi    r7, r7, 0x1
    lwzx    r5, r5, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x32(r5)
    clrrwi  r0, r0, 1
    sth     r0, 0x32(r5)
branch_0x8028fcf8:
    lwz     r0, 0x10(r6)
    cmpw    r7, r0
    blt+    branch_0x8028fcdc
branch_0x8028fd04:
    li      r0, 0x0
    stw     r0, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028fd34
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028fd5c

branch_0x8028fd34:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028fd5c:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl evIsGraffitoCoverage0__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsGraffitoCoverage0__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028fd70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x62f0(r13)
    bl      cleanedAll__17TPollutionManagerCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8028fdac
    li      r3, 0x1
    b       branch_0x8028fdb0

branch_0x8028fdac:
    li      r3, 0x0
branch_0x8028fdb0:
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r3, 0x18(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028fde0
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028fe08

branch_0x8028fde0:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028fe08:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl evGameOver__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGameOver__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028fe1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, R13Off_m0x6048(r13)
    li      r0, 0x0
    lhz     r3, 0x4c(r4)
    ori     r3, r3, 0x1
    sth     r3, 0x4c(r4)
    stw     r0, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028fe80
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028fea8

branch_0x8028fe80:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028fea8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl evRegisterMovie__FP32TSpcTypedInterp_13TEventWatcher_Ul
evRegisterMovie__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8028febc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8028ff1c
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
    b       branch_0x8028ff40

branch_0x8028ff1c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
branch_0x8028ff40:
    stw     r4, 0x3c(sp)
    lwz     r0, 0x38(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x3c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8028ff70
    bge-    branch_0x8028ff84
    cmpwi   r0, 0x0
    bge-    branch_0x8028ff68
    b       branch_0x8028ff84

branch_0x8028ff68:
    lwz     r0, 0x40(sp)
    b       branch_0x8028ff88

branch_0x8028ff70:
    lfs     f0, 0x40(sp)
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    b       branch_0x8028ff88

branch_0x8028ff84:
    li      r0, 0x0
branch_0x8028ff88:
    lwz     r3, R13Off_m0x6048(r13)
    clrlwi  r4, r0, 24
    bl      fireStreamingMovie__12TMarDirectorFUc
    li      r0, 0x0
    stw     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8028ffc4
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8028ffec

branch_0x8028ffc4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8028ffec:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl evSetNextStage__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetNextStage__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80290000
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x80(sp)
    mr      r30, r3
    stw     r29, 0x7c(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8029006c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x60(sp)
    b       branch_0x80290090

branch_0x8029006c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x60(sp)
branch_0x80290090:
    stw     r4, 0x64(sp)
    lwz     r0, 0x60(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x64(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802900c0
    bge-    branch_0x802900d4
    cmpwi   r0, 0x0
    bge-    branch_0x802900b8
    b       branch_0x802900d4

branch_0x802900b8:
    lwz     r29, 0x68(sp)
    b       branch_0x802900d8

branch_0x802900c0:
    lfs     f0, 0x68(sp)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r29, 0x74(sp)
    b       branch_0x802900d8

branch_0x802900d4:
    li      r29, 0x0
branch_0x802900d8:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80290110
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
    b       branch_0x80290134

branch_0x80290110:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
branch_0x80290134:
    stw     r4, 0x54(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x54(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80290164
    bge-    branch_0x80290178
    cmpwi   r0, 0x0
    bge-    branch_0x8029015c
    b       branch_0x80290178

branch_0x8029015c:
    lwz     r3, 0x58(sp)
    b       branch_0x8029017c

branch_0x80290164:
    lfs     f0, 0x58(sp)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r3, 0x74(sp)
    b       branch_0x8029017c

branch_0x80290178:
    li      r3, 0x0
branch_0x8029017c:
    addi    r0, r3, 0x1
    lwz     r3, R13Off_m0x6048(r13)
    clrlwi  r4, r29, 24
    slwi    r0, r0, 8
    add     r4, r4, r0
    li      r5, 0x0
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x802901c4
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802901ec

branch_0x802901c4:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x802901ec:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl evGetPollutionLevel__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetPollutionLevel__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80290208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x62f0(r13)
    bl      getPollutionDegree__17TPollutionManagerCFv
    li      r0, 0x0
    stw     r0, 0x10(sp)
    stw     r3, 0x14(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80290264
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x8029028c

branch_0x80290264:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8029028c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl evGetRestTime__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetRestTime__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x802902a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x28(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r30, R13Off_m0x6048(r13)
    addi    r3, r30, 0xe8
    bl      OSCheckStopwatch
    lis     r5, 0x8000
    lwz     r0, 0xf8(r5)
    lis     r5, unk_10624dd3@h
    addi    r5, r5, unk_10624dd3@l
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    srwi    r6, r0, 6
    li      r5, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0xa
    bl      __div2i
    li      r0, 0x0
    stw     r0, 0x20(sp)
    lwz     r0, 0x120(r30)
    subf    r0, r4, r0
    stw     r0, 0x24(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8029033c
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80290364

branch_0x8029033c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80290364:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl evSetPollutionIncreaseCount__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetPollutionIncreaseCount__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8029037c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x802903c0
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    b       branch_0x802903c8

branch_0x802903c0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
branch_0x802903c8:
    li      r0, 0x0
    stw     r0, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x802903f8
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80290420

branch_0x802903f8:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80290420:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl evSetAttentionTime__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetAttentionTime__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80290434
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80290478
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    b       branch_0x80290480

branch_0x80290478:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
branch_0x80290480:
    li      r0, 0x0
    stw     r0, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x802904b0
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x802904d8

branch_0x802904b0:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x802904d8:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl evSetTimeLimit__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetTimeLimit__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x802904ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x60(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80290550
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x48(sp)
    b       branch_0x80290574

branch_0x80290550:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x48(sp)
branch_0x80290574:
    stw     r4, 0x4c(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x4c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802905a4
    bge-    branch_0x802905b8
    cmpwi   r0, 0x0
    bge-    branch_0x8029059c
    b       branch_0x802905b8

branch_0x8029059c:
    lwz     r30, 0x50(sp)
    b       branch_0x802905bc

branch_0x802905a4:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r30, 0x5c(sp)
    b       branch_0x802905bc

branch_0x802905b8:
    li      r30, 0x0
branch_0x802905bc:
    lwz     r3, R13Off_m0x6048(r13)
    addi    r3, r3, 0xe8
    bl      OSResetStopwatch
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x0
    stw     r30, 0x120(r3)
    stw     r0, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80290600
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80290628

branch_0x80290600:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80290628:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl evSetDead4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetDead4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80290640
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x802906a4
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x802906c8

branch_0x802906a4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x802906c8:
    stw     r4, 0x70(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802906f8
    bge-    branch_0x8029070c
    cmpwi   r0, 0x0
    bge-    branch_0x802906f0
    b       branch_0x8029070c

branch_0x802906f0:
    lwz     r30, 0x74(sp)
    b       branch_0x80290710

branch_0x802906f8:
    lfs     f0, 0x74(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r30, 0x7c(sp)
    b       branch_0x80290710

branch_0x8029070c:
    li      r30, 0x0
branch_0x80290710:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x8029074c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x80290774

branch_0x8029074c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x80290774:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x80290784
    b       branch_0x8029078c

branch_0x80290784:
    lwz     r0, 0x64(sp)
    b       branch_0x80290790

branch_0x8029078c:
    addi    r0, r2, R2Off_m0x658
branch_0x80290790:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r27, r0
    addi    r3, r27, 0x0
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r27
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80290804
    cmpwi   r30, 0x0
    beq-    branch_0x802907ec
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    b       branch_0x80290804

branch_0x802907ec:
    lwz     r0, 0xf0(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
branch_0x80290804:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80290830
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80290858

branch_0x80290830:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80290858:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl evSetHide4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetHide4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8029086c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x802908d0
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x802908f4

branch_0x802908d0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x802908f4:
    stw     r4, 0x70(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80290924
    bge-    branch_0x80290938
    cmpwi   r0, 0x0
    bge-    branch_0x8029091c
    b       branch_0x80290938

branch_0x8029091c:
    lwz     r30, 0x74(sp)
    b       branch_0x8029093c

branch_0x80290924:
    lfs     f0, 0x74(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r30, 0x7c(sp)
    b       branch_0x8029093c

branch_0x80290938:
    li      r30, 0x0
branch_0x8029093c:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80290978
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x802909a0

branch_0x80290978:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x802909a0:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x802909b0
    b       branch_0x802909b8

branch_0x802909b0:
    lwz     r0, 0x64(sp)
    b       branch_0x802909bc

branch_0x802909b8:
    addi    r0, r2, R2Off_m0x658
branch_0x802909bc:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r27, r0
    addi    r3, r27, 0x0
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r27
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80290a30
    cmpwi   r30, 0x0
    beq-    branch_0x80290a18
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    b       branch_0x80290a30

branch_0x80290a18:
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
branch_0x80290a30:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80290a5c
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80290a84

branch_0x80290a5c:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80290a84:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl evIsOnLiveActorFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsOnLiveActorFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80290a98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r27, 0x9c(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80290afc
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x84(sp)
    b       branch_0x80290b20

branch_0x80290afc:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x84(sp)
branch_0x80290b20:
    stw     r4, 0x88(sp)
    lwz     r0, 0x84(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x88(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80290b50
    bge-    branch_0x80290b64
    cmpwi   r0, 0x0
    bge-    branch_0x80290b48
    b       branch_0x80290b64

branch_0x80290b48:
    lwz     r30, 0x8c(sp)
    b       branch_0x80290b68

branch_0x80290b50:
    lfs     f0, 0x8c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r30, 0x94(sp)
    b       branch_0x80290b68

branch_0x80290b64:
    li      r30, 0x0
branch_0x80290b68:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80290ba4
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x74(sp)
    b       branch_0x80290bcc

branch_0x80290ba4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x74(sp)
branch_0x80290bcc:
    lwz     r4, 0x70(sp)
    li      r3, 0x0
    lwz     r0, 0x74(sp)
    stw     r4, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x78(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80290c84
    bge-    branch_0x80290bfc
    cmpwi   r0, 0x0
    bge-    branch_0x80290c4c
    b       branch_0x80290c84

branch_0x80290bfc:
    cmpwi   r0, 0x3
    bge-    branch_0x80290c84
    cmpwi   r0, 0x2
    beq-    branch_0x80290c10
    b       branch_0x80290c18

branch_0x80290c10:
    lwz     r28, 0x7c(sp)
    b       branch_0x80290c1c

branch_0x80290c18:
    addi    r28, r2, R2Off_m0x658
branch_0x80290c1c:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    b       branch_0x80290c84

branch_0x80290c4c:
    cmpwi   r0, 0x1
    beq-    branch_0x80290c6c
    bge-    branch_0x80290c80
    cmpwi   r0, 0x0
    bge-    branch_0x80290c64
    b       branch_0x80290c80

branch_0x80290c64:
    lwz     r3, 0x7c(sp)
    b       branch_0x80290c84

branch_0x80290c6c:
    lfs     f0, 0x7c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r3, 0x94(sp)
    b       branch_0x80290c84

branch_0x80290c80:
    li      r3, 0x0
branch_0x80290c84:
    cmplwi  r3, 0x0
    li      r4, 0x0
    beq-    branch_0x80290c98
    lwz     r0, 0xf0(r3)
    and     r4, r0, r30
branch_0x80290c98:
    li      r0, 0x0
    stw     r0, 0x5c(sp)
    stw     r4, 0x60(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80290cc4
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80290cec

branch_0x80290cc4:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80290cec:
    lmw     r27, 0x9c(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl evPushNerve4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul
evPushNerve4LiveActor__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80290d00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r29, r3
    addi    r5, sp, 0xc


.globl Function_0x80290d18
Function_0x80290d18: # 0x80290d18
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r30, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80290d64
    addi    r3, r30, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x80290d88

branch_0x80290d64:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x80290d88:
    stw     r4, 0x70(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80290db8
    bge-    branch_0x80290dcc
    cmpwi   r0, 0x0
    bge-    branch_0x80290db0
    b       branch_0x80290dcc

branch_0x80290db0:
    lwz     r0, 0x74(sp)
    b       branch_0x80290dd0

branch_0x80290db8:
    lfs     f0, 0x74(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    b       branch_0x80290dd0

branch_0x80290dcc:
    li      r0, 0x0
branch_0x80290dd0:
    mr      r3, r0
    bl      NerveGetByIndex__Fi
    lwz     r4, 0x1c(r29)
    addi    r31, r3, 0x0
    cmpwi   r4, 0x0
    bgt-    branch_0x80290e18
    addi    r3, r30, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x80290e40

branch_0x80290e18:
    addi    r0, r4, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x80290e40:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x80290e50
    b       branch_0x80290e58

branch_0x80290e50:
    lwz     r0, 0x64(sp)
    b       branch_0x80290e5c

branch_0x80290e58:
    addi    r0, r2, R2Off_m0x658
branch_0x80290e5c:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r27, r0
    addi    r3, r27, 0x0
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r27
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80290eec
    cmplwi  r31, 0x0
    beq-    branch_0x80290eec
    lwz     r5, 0x8c(r3)
    beq-    branch_0x80290eec
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80290ee0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80290ee0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80290ee0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r31, 0x14(r5)
branch_0x80290eec:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80290f18
    addi    r3, r30, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80290f40

branch_0x80290f18:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80290f40:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl evSetFlagNPCCanTaken__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetFlagNPCCanTaken__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80290f54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80290fb8
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
    b       branch_0x80290fdc

branch_0x80290fb8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x6c(sp)
branch_0x80290fdc:
    stw     r4, 0x70(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8029100c
    bge-    branch_0x80291020
    cmpwi   r0, 0x0
    bge-    branch_0x80291004
    b       branch_0x80291020

branch_0x80291004:
    lwz     r30, 0x74(sp)
    b       branch_0x80291024

branch_0x8029100c:
    lfs     f0, 0x74(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r30, 0x7c(sp)
    b       branch_0x80291024

branch_0x80291020:
    li      r30, 0x0
branch_0x80291024:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80291060
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
    b       branch_0x80291088

branch_0x80291060:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x60(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x64(sp)
branch_0x80291088:
    lwz     r0, 0x60(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x80291098
    b       branch_0x802910a0

branch_0x80291098:
    lwz     r0, 0x64(sp)
    b       branch_0x802910a4

branch_0x802910a0:
    addi    r0, r2, R2Off_m0x658
branch_0x802910a4:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r27, r0
    addi    r3, r27, 0x0
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r27
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80291100
    cmpwi   r30, 0x0
    beq-    branch_0x802910f4
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x10
    stw     r0, 0xf0(r3)
    b       branch_0x80291100

branch_0x802910f4:
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 12, 10
    stw     r0, 0xf0(r3)
branch_0x80291100:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8029112c
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80291154

branch_0x8029112c:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80291154:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl evIsTalkModeNow__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsTalkModeNow__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80291168
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r4, R13Off_m0x6048(r13)
    li      r3, 0x1
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x1
    beq-    branch_0x802911ac
    cmplwi  r0, 0x2
    beq-    branch_0x802911ac
    li      r3, 0x0
branch_0x802911ac:
    clrlwi. r0, r3, 24
    beq-    branch_0x802911bc
    li      r3, 0x1
    b       branch_0x802911c0

branch_0x802911bc:
    li      r3, 0x0
branch_0x802911c0:
    li      r0, 0x0
    stw     r0, 0x18(sp)
    stw     r3, 0x1c(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x802911f0
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80291218

branch_0x802911f0:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80291218:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl evSetValue2TalkVariable__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetValue2TalkVariable__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8029122c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x98(sp)
    mr      r30, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80291278
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80291280

branch_0x80291278:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
branch_0x80291280:
    lwz     r3, 0x1c(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x8029129c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802912a4

branch_0x8029129c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
branch_0x802912a4:
    li      r0, 0x0
    stw     r0, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x802912d0
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802912f8

branch_0x802912d0:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x802912f8:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl evGetTalkSelectedValue__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetTalkSelectedValue__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80291310
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    li      r0, 0x0
    lwz     r3, R13Off_m0x63e8(r13)
    stw     r0, 0x1c(sp)
    lbz     r0, 0x214(r3)
    extsb   r0, r0
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80291370
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80291398

branch_0x80291370:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80291398:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl evGetTalkMode__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetTalkMode__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x802913ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    li      r0, 0x0
    lwz     r3, R13Off_m0x63e8(r13)
    stw     r0, 0x20(sp)
    lwz     r0, 0x248(r3)
    stw     r0, 0x24(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80291408
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80291430

branch_0x80291408:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80291430:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl evSetTalkMsgID__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetTalkMsgID__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80291444
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x802914b0
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x60(sp)
    b       branch_0x802914d4

branch_0x802914b0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x60(sp)
branch_0x802914d4:
    stw     r4, 0x64(sp)
    lwz     r0, 0x60(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x64(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80291504
    bge-    branch_0x80291518
    cmpwi   r0, 0x0
    bge-    branch_0x802914fc
    b       branch_0x80291518

branch_0x802914fc:
    lwz     r0, 0x68(sp)
    b       branch_0x8029151c

branch_0x80291504:
    lfs     f0, 0x68(sp)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    b       branch_0x8029151c

branch_0x80291518:
    li      r0, 0x0
branch_0x8029151c:
    lwz     r3, 0x1c(r29)
    mr      r30, r0
    cmpwi   r3, 0x0
    bgt-    branch_0x80291558
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
    b       branch_0x8029157c

branch_0x80291558:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
branch_0x8029157c:
    stw     r4, 0x54(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x54(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802915ac
    bge-    branch_0x802915c0
    cmpwi   r0, 0x0
    bge-    branch_0x802915a4
    b       branch_0x802915c0

branch_0x802915a4:
    lwz     r0, 0x58(sp)
    b       branch_0x802915c4

branch_0x802915ac:
    lfs     f0, 0x58(sp)
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    b       branch_0x802915c4

branch_0x802915c0:
    li      r0, 0x0
branch_0x802915c4:
    lwz     r3, R13Off_m0x63e8(r13)
    mr      r4, r0
    addi    r5, r30, 0x0
    bl      setMessageID__8TTalk2D2FUlUl
    li      r0, 0x0
    stw     r0, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80291600
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80291628

branch_0x80291600:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80291628:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl evGetTalkNPCName__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetTalkNPCName__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80291644
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x6048(r13)
    lwz     r3, 0xa0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x802916f4
    li      r3, 0x0
    stw     r3, 0x28(sp)
    addi    r0, r2, R2Off_m0x658
    cmplwi  r0, 0x0
    stw     r3, 0x2c(sp)
    li      r3, 0x2
    stw     r3, 0x28(sp)
    bne-    branch_0x802916a0
    stw     r0, 0x2c(sp)
    b       branch_0x802916a4

branch_0x802916a0:
    stw     r0, 0x2c(sp)
branch_0x802916a4:
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x802916c8
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80291770

branch_0x802916c8:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
    b       branch_0x80291770

branch_0x802916f4:
    lwz     r4, 0x4(r3)
    li      r3, 0x0
    li      r0, 0x2
    stw     r3, 0x20(sp)
    cmplwi  r4, 0x0
    stw     r3, 0x24(sp)
    stw     r0, 0x20(sp)
    bne-    branch_0x80291720
    addi    r0, r2, R2Off_m0x658
    stw     r0, 0x24(sp)
    b       branch_0x80291724

branch_0x80291720:
    stw     r4, 0x24(sp)
branch_0x80291724:
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80291748
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80291770

branch_0x80291748:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80291770:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl evGetTalkNPC__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetTalkNPC__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80291784
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x0
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x0
    lwz     r3, 0xa0(r3)
    cmplwi  r3, 0x0
    stw     r0, 0x1c(sp)
    bne-    branch_0x802917c4
    b       branch_0x802917c8

branch_0x802917c4:
    mr      r0, r3
branch_0x802917c8:
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x802917f0
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80291818

branch_0x802917f0:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80291818:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl evIsNearActors__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsNearActors__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x8029182c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stmw    r25, 0xbc(sp)
    addi    r28, r4, 0x0
    cmplwi  r28, 0x3
    addi    r27, r3, 0x0
    li      r30, 0x0
    blt-    branch_0x80291b00
    lwz     r0, 0x1c(r27)
    li      r31, 0x0
    lwz     r3, 0x20(r27)
    subf    r0, r28, r0
    slwi    r0, r0, 3
    add     r4, r3, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0xa0(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80291924
    bge-    branch_0x80291898
    cmpwi   r0, 0x0
    bge-    branch_0x802918ec
    b       branch_0x80291924

branch_0x80291898:
    cmpwi   r0, 0x3
    bge-    branch_0x80291924
    cmpwi   r0, 0x2
    beq-    branch_0x802918ac
    b       branch_0x802918b4

branch_0x802918ac:
    lwz     r29, 0xa4(sp)
    b       branch_0x802918b8

branch_0x802918b4:
    addi    r29, r2, R2Off_m0x658
branch_0x802918b8:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r29
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    mr      r31, r3
    b       branch_0x80291924

branch_0x802918ec:
    cmpwi   r0, 0x1
    beq-    branch_0x8029190c
    bge-    branch_0x80291920
    cmpwi   r0, 0x0
    bge-    branch_0x80291904
    b       branch_0x80291920

branch_0x80291904:
    lwz     r31, 0xa4(sp)
    b       branch_0x80291924

branch_0x8029190c:
    lfs     f0, 0xa4(sp)
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r31, 0xb4(sp)
    b       branch_0x80291924

branch_0x80291920:
    li      r31, 0x0
branch_0x80291924:
    cmplwi  r31, 0x0
    beq-    branch_0x80291b00
    lwz     r3, 0x1c(r27)
    addi    r4, r28, -0x2
    lwz     r5, 0x20(r27)
    addi    r0, r3, -0x1
    subf    r0, r4, r0
    slwi    r0, r0, 3
    add     r3, r5, r0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80291988
    bge-    branch_0x80291990
    cmpwi   r0, 0x0
    bge-    branch_0x80291964
    b       branch_0x80291990

branch_0x80291964:
    lwz     r3, 0x4(r3)
    lis     r0, 0x4330
    lfd     f1, -0x668(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0xb4(sp)
    stw     r0, 0xb0(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f31, f0, f1
    b       branch_0x80291994

branch_0x80291988:
    lfs     f31, 0x4(r3)
    b       branch_0x80291994

branch_0x80291990:
    lfs     f31, -0x678(r2)
branch_0x80291994:
    li      r29, 0x2
    li      r30, 0x1
    b       branch_0x80291af8

branch_0x802919a0:
    lwz     r0, 0x1c(r27)
    subf    r4, r29, r28
    lwz     r5, 0x20(r27)
    li      r3, 0x0
    subf    r0, r4, r0
    slwi    r0, r0, 3
    add     r5, r5, r0
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x98(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80291a70
    bge-    branch_0x802919e8
    cmpwi   r0, 0x0
    bge-    branch_0x80291a38
    b       branch_0x80291a70

branch_0x802919e8:
    cmpwi   r0, 0x3
    bge-    branch_0x80291a70
    cmpwi   r0, 0x2
    beq-    branch_0x802919fc
    b       branch_0x80291a04

branch_0x802919fc:
    lwz     r26, 0x9c(sp)
    b       branch_0x80291a08

branch_0x80291a04:
    addi    r26, r2, R2Off_m0x658
branch_0x80291a08:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r26
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r26
    mtlr    r12
    blrl
    b       branch_0x80291a70

branch_0x80291a38:
    cmpwi   r0, 0x1
    beq-    branch_0x80291a58
    bge-    branch_0x80291a6c
    cmpwi   r0, 0x0
    bge-    branch_0x80291a50
    b       branch_0x80291a6c

branch_0x80291a50:
    lwz     r3, 0x9c(sp)
    b       branch_0x80291a70

branch_0x80291a58:
    lfs     f0, 0x9c(sp)
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r3, 0xb4(sp)
    b       branch_0x80291a70

branch_0x80291a6c:
    li      r3, 0x0
branch_0x80291a70:
    cmplwi  r3, 0x0
    beq-    branch_0x80291af4
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x94(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x90(sp)
    lfs     f2, 0x94(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    cror    2, 0, 2
    bne-    branch_0x80291af4
    addi    r30, r30, 0x1
branch_0x80291af4:
    addi    r29, r29, 0x1
branch_0x80291af8:
    cmplw   r29, r28
    blt+    branch_0x802919a0
branch_0x80291b00:
    lis     r3, unk_803a2674@h
    addi    r29, r3, unk_803a2674@l
    li      r25, 0x0
    b       branch_0x80291b38

branch_0x80291b10:
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x80291b2c
    addi    r3, r29, 0x0
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80291b34

branch_0x80291b2c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
branch_0x80291b34:
    addi    r25, r25, 0x1
branch_0x80291b38:
    cmpw    r25, r28
    blt+    branch_0x80291b10
    li      r0, 0x0
    stw     r0, 0x68(sp)
    stw     r30, 0x6c(sp)
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x18(r27)
    cmpw    r3, r0
    blt-    branch_0x80291b70
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80291b98

branch_0x80291b70:
    lwz     r5, 0x20(r27)
    slwi    r4, r3, 3
    lwz     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
branch_0x80291b98:
    lmw     r25, 0xbc(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl evIsNearSameActors__FP32TSpcTypedInterp_13TEventWatcher_Ul
evIsNearSameActors__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80291bb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stfd    f31, 0x148(sp)
    addi    r5, sp, 0xc
    stmw    r24, 0x128(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x3
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80291c1c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x100(sp)
    b       branch_0x80291c44

branch_0x80291c1c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x100(sp)
branch_0x80291c44:
    lwz     r4, 0xfc(sp)
    li      r3, 0x0
    lwz     r0, 0x100(sp)
    stw     r4, 0x104(sp)
    stw     r0, 0x108(sp)
    lwz     r0, 0x104(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80291cfc
    bge-    branch_0x80291c74
    cmpwi   r0, 0x0
    bge-    branch_0x80291cc4
    b       branch_0x80291cfc

branch_0x80291c74:
    cmpwi   r0, 0x3
    bge-    branch_0x80291cfc
    cmpwi   r0, 0x2
    beq-    branch_0x80291c88
    b       branch_0x80291c90

branch_0x80291c88:
    lwz     r28, 0x108(sp)
    b       branch_0x80291c94

branch_0x80291c90:
    addi    r28, r2, R2Off_m0x658
branch_0x80291c94:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    b       branch_0x80291cfc

branch_0x80291cc4:
    cmpwi   r0, 0x1
    beq-    branch_0x80291ce4
    bge-    branch_0x80291cf8
    cmpwi   r0, 0x0
    bge-    branch_0x80291cdc
    b       branch_0x80291cf8

branch_0x80291cdc:
    lwz     r3, 0x108(sp)
    b       branch_0x80291cfc

branch_0x80291ce4:
    lfs     f0, 0x108(sp)
    fctiwz  f0, f0
    stfd    f0, 0x120(sp)
    lwz     r3, 0x124(sp)
    b       branch_0x80291cfc

branch_0x80291cf8:
    li      r3, 0x0
branch_0x80291cfc:
    cmplwi  r3, 0x0
    bne-    branch_0x80291d5c
    li      r0, 0x0
    stw     r0, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80291d30
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802920a0

branch_0x80291d30:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    b       branch_0x802920a0

branch_0x80291d5c:
    lwz     r4, 0x1c(r29)
    lwz     r30, 0x4c(r3)
    cmpwi   r4, 0x0
    bgt-    branch_0x80291d9c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xf8(sp)
    b       branch_0x80291dc4

branch_0x80291d9c:
    addi    r0, r4, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xf8(sp)
branch_0x80291dc4:
    lwz     r0, 0xf4(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80291e04
    bge-    branch_0x80291e0c
    cmpwi   r0, 0x0
    bge-    branch_0x80291de0
    b       branch_0x80291e0c

branch_0x80291de0:
    lwz     r3, 0xf8(sp)
    lis     r0, 0x4330
    lfd     f1, -0x668(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x124(sp)
    stw     r0, 0x120(sp)
    lfd     f0, 0x120(sp)
    fsubs   f31, f0, f1
    b       branch_0x80291e10

branch_0x80291e04:
    lfs     f31, 0xf8(sp)
    b       branch_0x80291e10

branch_0x80291e0c:
    lfs     f31, -0x678(r2)
branch_0x80291e10:
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80291e4c
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xe4(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xe8(sp)
    b       branch_0x80291e74

branch_0x80291e4c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0xe4(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0xe8(sp)
branch_0x80291e74:
    lwz     r3, 0xe4(sp)
    li      r27, 0x0
    lwz     r0, 0xe8(sp)
    stw     r3, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0xec(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80291f30
    bge-    branch_0x80291ea4
    cmpwi   r0, 0x0
    bge-    branch_0x80291ef8
    b       branch_0x80291f30

branch_0x80291ea4:
    cmpwi   r0, 0x3
    bge-    branch_0x80291f30
    cmpwi   r0, 0x2
    beq-    branch_0x80291eb8
    b       branch_0x80291ec0

branch_0x80291eb8:
    lwz     r28, 0xf0(sp)
    b       branch_0x80291ec4

branch_0x80291ec0:
    addi    r28, r2, R2Off_m0x658
branch_0x80291ec4:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    mr      r27, r3
    b       branch_0x80291f30

branch_0x80291ef8:
    cmpwi   r0, 0x1
    beq-    branch_0x80291f18
    bge-    branch_0x80291f2c
    cmpwi   r0, 0x0
    bge-    branch_0x80291f10
    b       branch_0x80291f2c

branch_0x80291f10:
    lwz     r27, 0xf0(sp)
    b       branch_0x80291f30

branch_0x80291f18:
    lfs     f0, 0xf0(sp)
    fctiwz  f0, f0
    stfd    f0, 0x120(sp)
    lwz     r27, 0x124(sp)
    b       branch_0x80291f30

branch_0x80291f2c:
    li      r27, 0x0
branch_0x80291f30:
    cmplwi  r27, 0x0
    bne-    branch_0x80291f90
    li      r0, 0x0
    stw     r0, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80291f64
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802920a0

branch_0x80291f64:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
    b       branch_0x802920a0

branch_0x80291f90:
    lwz     r3, R13Off_m0x62b8(r13)
    li      r25, 0x0
    li      r24, 0x0
    lwz     r26, 0x14(r3)
    li      r28, 0x0
    b       branch_0x80292044

branch_0x80291fa8:
    lwz     r3, R13Off_m0x62b8(r13)
    lwz     r3, 0x18(r3)
    lwzx    r4, r3, r28
    lwz     r0, 0x4c(r4)
    cmplw   r30, r0
    bne-    branch_0x8029203c
    lwz     r3, 0x10(r27)
    lwz     r0, 0x14(r27)
    stw     r3, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x18(r27)
    stw     r0, 0xe0(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x10(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x14(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0x18(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    lfs     f2, 0xe0(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    cror    2, 0, 2
    bne-    branch_0x8029203c
    addi    r25, r25, 0x1
branch_0x8029203c:
    addi    r24, r24, 0x1
    addi    r28, r28, 0x4
branch_0x80292044:
    cmpw    r24, r26
    blt+    branch_0x80291fa8
    li      r0, 0x0
    stw     r0, 0xa4(sp)
    stw     r25, 0xa8(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80292078
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802920a0

branch_0x80292078:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0xa4(sp)
    lwz     r0, 0xa8(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x802920a0:
    lmw     r24, 0x128(sp)
    lwz     r0, 0x154(sp)
    lfd     f31, 0x148(sp)
    addi    sp, sp, 0x150
    mtlr    r0
    blr


.globl evSetFlagNPCDead__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetFlagNPCDead__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x802920b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r27, 0x94(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80292120
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
    b       branch_0x80292148

branch_0x80292120:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
branch_0x80292148:
    lwz     r0, 0x7c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8029216c
    bge-    branch_0x80292180
    cmpwi   r0, 0x0
    bge-    branch_0x80292164
    b       branch_0x80292180

branch_0x80292164:
    lwz     r0, 0x80(sp)
    b       branch_0x80292184

branch_0x8029216c:
    lfs     f0, 0x80(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    b       branch_0x80292184

branch_0x80292180:
    li      r0, 0x0
branch_0x80292184:
    lwz     r3, 0x1c(r29)
    neg     r4, r0
    subic   r0, r4, 0x1
    cmpwi   r3, 0x0
    subfe   r30, r0, r4
    bgt-    branch_0x802921cc
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
    b       branch_0x802921f4

branch_0x802921cc:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
branch_0x802921f4:
    lwz     r4, 0x6c(sp)
    li      r3, 0x0
    lwz     r0, 0x70(sp)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x74(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802922ac
    bge-    branch_0x80292224
    cmpwi   r0, 0x0
    bge-    branch_0x80292274
    b       branch_0x802922ac

branch_0x80292224:
    cmpwi   r0, 0x3
    bge-    branch_0x802922ac
    cmpwi   r0, 0x2
    beq-    branch_0x80292238
    b       branch_0x80292240

branch_0x80292238:
    lwz     r28, 0x78(sp)
    b       branch_0x80292244

branch_0x80292240:
    addi    r28, r2, R2Off_m0x658
branch_0x80292244:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    b       branch_0x802922ac

branch_0x80292274:
    cmpwi   r0, 0x1
    beq-    branch_0x80292294
    bge-    branch_0x802922a8
    cmpwi   r0, 0x0
    bge-    branch_0x8029228c
    b       branch_0x802922a8

branch_0x8029228c:
    lwz     r3, 0x78(sp)
    b       branch_0x802922ac

branch_0x80292294:
    lfs     f0, 0x78(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    b       branch_0x802922ac

branch_0x802922a8:
    li      r3, 0x0
branch_0x802922ac:
    cmplwi  r3, 0x0
    beq-    branch_0x802922d8
    clrlwi. r0, r30, 24
    beq-    branch_0x802922cc
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    b       branch_0x802922d8

branch_0x802922cc:
    lwz     r0, 0xf0(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r3)
branch_0x802922d8:
    li      r0, 0x0
    stw     r0, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80292304
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8029232c

branch_0x80292304:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8029232c:
    lmw     r27, 0x94(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl evSetFlagNPCDontThrow__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetFlagNPCDontThrow__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80292340
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r27, 0x94(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x802923a8
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
    b       branch_0x802923d0

branch_0x802923a8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
branch_0x802923d0:
    lwz     r0, 0x7c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802923f4
    bge-    branch_0x80292408
    cmpwi   r0, 0x0
    bge-    branch_0x802923ec
    b       branch_0x80292408

branch_0x802923ec:
    lwz     r0, 0x80(sp)
    b       branch_0x8029240c

branch_0x802923f4:
    lfs     f0, 0x80(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    b       branch_0x8029240c

branch_0x80292408:
    li      r0, 0x0
branch_0x8029240c:
    lwz     r3, 0x1c(r29)
    neg     r4, r0
    subic   r0, r4, 0x1
    cmpwi   r3, 0x0
    subfe   r30, r0, r4
    bgt-    branch_0x80292454
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
    b       branch_0x8029247c

branch_0x80292454:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
branch_0x8029247c:
    lwz     r4, 0x6c(sp)
    li      r3, 0x0
    lwz     r0, 0x70(sp)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x74(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80292534
    bge-    branch_0x802924ac
    cmpwi   r0, 0x0
    bge-    branch_0x802924fc
    b       branch_0x80292534

branch_0x802924ac:
    cmpwi   r0, 0x3
    bge-    branch_0x80292534
    cmpwi   r0, 0x2
    beq-    branch_0x802924c0
    b       branch_0x802924c8

branch_0x802924c0:
    lwz     r28, 0x78(sp)
    b       branch_0x802924cc

branch_0x802924c8:
    addi    r28, r2, R2Off_m0x658
branch_0x802924cc:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    b       branch_0x80292534

branch_0x802924fc:
    cmpwi   r0, 0x1
    beq-    branch_0x8029251c
    bge-    branch_0x80292530
    cmpwi   r0, 0x0
    bge-    branch_0x80292514
    b       branch_0x80292530

branch_0x80292514:
    lwz     r3, 0x78(sp)
    b       branch_0x80292534

branch_0x8029251c:
    lfs     f0, 0x78(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    b       branch_0x80292534

branch_0x80292530:
    li      r3, 0x0
branch_0x80292534:
    cmplwi  r3, 0x0
    beq-    branch_0x80292560
    clrlwi. r0, r30, 24
    beq-    branch_0x80292554
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x2000
    stw     r0, 0xf0(r3)
    b       branch_0x80292560

branch_0x80292554:
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 3, 1
    stw     r0, 0xf0(r3)
branch_0x80292560:
    li      r0, 0x0
    stw     r0, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x8029258c
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x802925b4

branch_0x8029258c:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x802925b4:
    lmw     r27, 0x94(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl evSetFlagNPCDontTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetFlagNPCDontTalk__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x802925c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r27, 0x94(sp)
    mr      r29, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80292630
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
    b       branch_0x80292658

branch_0x80292630:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x80(sp)
branch_0x80292658:
    lwz     r0, 0x7c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x8029267c
    bge-    branch_0x80292690
    cmpwi   r0, 0x0
    bge-    branch_0x80292674
    b       branch_0x80292690

branch_0x80292674:
    lwz     r0, 0x80(sp)
    b       branch_0x80292694

branch_0x8029267c:
    lfs     f0, 0x80(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    b       branch_0x80292694

branch_0x80292690:
    li      r0, 0x0
branch_0x80292694:
    lwz     r3, 0x1c(r29)
    neg     r4, r0
    subic   r0, r4, 0x1
    cmpwi   r3, 0x0
    subfe   r30, r0, r4
    bgt-    branch_0x802926dc
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
    b       branch_0x80292704

branch_0x802926dc:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x70(sp)
branch_0x80292704:
    lwz     r4, 0x6c(sp)
    li      r3, 0x0
    lwz     r0, 0x70(sp)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x74(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802927bc
    bge-    branch_0x80292734
    cmpwi   r0, 0x0
    bge-    branch_0x80292784
    b       branch_0x802927bc

branch_0x80292734:
    cmpwi   r0, 0x3
    bge-    branch_0x802927bc
    cmpwi   r0, 0x2
    beq-    branch_0x80292748
    b       branch_0x80292750

branch_0x80292748:
    lwz     r28, 0x78(sp)
    b       branch_0x80292754

branch_0x80292750:
    addi    r28, r2, R2Off_m0x658
branch_0x80292754:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r28
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r28
    mtlr    r12
    blrl
    b       branch_0x802927bc

branch_0x80292784:
    cmpwi   r0, 0x1
    beq-    branch_0x802927a4
    bge-    branch_0x802927b8
    cmpwi   r0, 0x0
    bge-    branch_0x8029279c
    b       branch_0x802927b8

branch_0x8029279c:
    lwz     r3, 0x78(sp)
    b       branch_0x802927bc

branch_0x802927a4:
    lfs     f0, 0x78(sp)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    b       branch_0x802927bc

branch_0x802927b8:
    li      r3, 0x0
branch_0x802927bc:
    cmplwi  r3, 0x0
    beq-    branch_0x802927e8
    clrlwi. r0, r30, 24
    beq-    branch_0x802927dc
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r3)
    b       branch_0x802927e8

branch_0x802927dc:
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r3)
branch_0x802927e8:
    li      r0, 0x0
    stw     r0, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80292814
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8029283c

branch_0x80292814:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x8029283c:
    lmw     r27, 0x94(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl evGetNPCType__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetNPCType__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80292850
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x88(sp)
    mr      r30, r3
    stw     r29, 0x84(sp)
    stw     r28, 0x80(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    li      r31, -0x1
    cmpwi   r3, 0x0
    bgt-    branch_0x802928c4
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x64(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x68(sp)
    b       branch_0x802928ec

branch_0x802928c4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x64(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x68(sp)
branch_0x802928ec:
    lwz     r4, 0x64(sp)
    li      r3, 0x0
    lwz     r0, 0x68(sp)
    stw     r4, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x6c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802929a4
    bge-    branch_0x8029291c
    cmpwi   r0, 0x0
    bge-    branch_0x8029296c
    b       branch_0x802929a4

branch_0x8029291c:
    cmpwi   r0, 0x3
    bge-    branch_0x802929a4
    cmpwi   r0, 0x2
    beq-    branch_0x80292930
    b       branch_0x80292938

branch_0x80292930:
    lwz     r29, 0x70(sp)
    b       branch_0x8029293c

branch_0x80292938:
    addi    r29, r2, R2Off_m0x658
branch_0x8029293c:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r29
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    b       branch_0x802929a4

branch_0x8029296c:
    cmpwi   r0, 0x1
    beq-    branch_0x8029298c
    bge-    branch_0x802929a0
    cmpwi   r0, 0x0
    bge-    branch_0x80292984
    b       branch_0x802929a0

branch_0x80292984:
    lwz     r3, 0x70(sp)
    b       branch_0x802929a4

branch_0x8029298c:
    lfs     f0, 0x70(sp)
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r3, 0x7c(sp)
    b       branch_0x802929a4

branch_0x802929a0:
    li      r3, 0x0
branch_0x802929a4:
    cmplwi  r3, 0x0
    beq-    branch_0x802929b8
    lwz     r3, 0x4c(r3)
    addis   r31, r3, 0xfc00
    addi    r31, r31, -0x1
branch_0x802929b8:
    li      r0, 0x0
    stw     r0, 0x50(sp)
    stw     r31, 0x54(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x802929e8
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80292a10

branch_0x802929e8:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x80292a10:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl evGetNameRefName__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetNameRefName__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80292a30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80292a94
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x34(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
    b       branch_0x80292abc

branch_0x80292a94:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x34(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x38(sp)
branch_0x80292abc:
    lwz     r0, 0x34(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80292ae0
    bge-    branch_0x80292af4
    cmpwi   r0, 0x0
    bge-    branch_0x80292ad8
    b       branch_0x80292af4

branch_0x80292ad8:
    lwz     r3, 0x38(sp)
    b       branch_0x80292af8

branch_0x80292ae0:
    lfs     f0, 0x38(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    b       branch_0x80292af8

branch_0x80292af4:
    li      r3, 0x0
branch_0x80292af8:
    cmpwi   r3, 0x0
    beq-    branch_0x80292b08
    lwz     r4, 0x4(r3)
    b       branch_0x80292b0c

branch_0x80292b08:
    addi    r4, r2, R2Off_m0x658
branch_0x80292b0c:
    li      r3, 0x0
    stw     r3, 0x28(sp)
    cmplwi  r4, 0x0
    li      r0, 0x2
    stw     r3, 0x2c(sp)
    stw     r0, 0x28(sp)
    bne-    branch_0x80292b34
    addi    r0, r2, R2Off_m0x658
    stw     r0, 0x2c(sp)
    b       branch_0x80292b38

branch_0x80292b34:
    stw     r4, 0x2c(sp)
branch_0x80292b38:
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80292b5c
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80292b84

branch_0x80292b5c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80292b84:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl evGetNameRefHandle__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetNameRefHandle__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80292b98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80292c04
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
    b       branch_0x80292c2c

branch_0x80292c04:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r3)
    stw     r0, 0x50(sp)
branch_0x80292c2c:
    lwz     r0, 0x4c(sp)
    cmpwi   r0, 0x2
    beq-    branch_0x80292c3c
    b       branch_0x80292c44

branch_0x80292c3c:
    lwz     r30, 0x50(sp)
    b       branch_0x80292c48

branch_0x80292c44:
    addi    r30, r2, R2Off_m0x658
branch_0x80292c48:
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x40(sp)
    stw     r3, 0x44(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80292ca4
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80292ccc

branch_0x80292ca4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80292ccc:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl evSetSystemFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul
evSetSystemFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80292ce8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_803a1ec0@h
    addi    r31, r4, unk_803a1ec0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80292d54
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x80292d78

branch_0x80292d54:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r30, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x80292d78:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r29)
    cmpwi   r3, 0x0
    bgt-    branch_0x80292db8
    addi    r3, r31, 0x7b4
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x80292ddc

branch_0x80292db8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r29)
    lwz     r0, 0x1c(r29)
    lwz     r3, 0x20(r29)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x80292ddc:
    lwz     r0, 0x24(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x34(sp)
    beq-    branch_0x80292e04
    bge-    branch_0x80292e18
    cmpwi   r4, 0x0
    bge-    branch_0x80292dfc
    b       branch_0x80292e18

branch_0x80292dfc:
    lwz     r0, 0x34(sp)
    b       branch_0x80292e1c

branch_0x80292e04:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    b       branch_0x80292e1c

branch_0x80292e18:
    li      r0, 0x0
branch_0x80292e1c:
    cmpwi   r30, 0x1
    mr      r4, r0
    beq-    branch_0x80292e40
    bge-    branch_0x80292e54
    cmpwi   r30, 0x0
    bge-    branch_0x80292e38
    b       branch_0x80292e54

branch_0x80292e38:
    lwz     r0, 0x3c(sp)
    b       branch_0x80292e58

branch_0x80292e40:
    lfs     f0, 0x3c(sp)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    b       branch_0x80292e58

branch_0x80292e54:
    li      r0, 0x0
branch_0x80292e58:
    lwz     r3, R13Off_m0x6060(r13)
    mr      r5, r0
    bl      setFlag__12TFlagManagerFUll
    li      r0, 0x0
    stw     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x18(r29)
    cmpw    r3, r0
    blt-    branch_0x80292e90
    addi    r3, r31, 0x798
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80292eb8

branch_0x80292e90:
    lwz     r5, 0x20(r29)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r29)
branch_0x80292eb8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl evGetSystemFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul
evGetSystemFlag__FP32TSpcTypedInterp_13TEventWatcher_Ul: # 0x80292ed4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80292f34
    lis     r3, unk_803a2674@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2674@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
    b       branch_0x80292f58

branch_0x80292f34:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x20(sp)
branch_0x80292f58:
    lwz     r0, 0x20(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x28(sp)
    beq-    branch_0x80292f80
    bge-    branch_0x80292f94
    cmpwi   r4, 0x0
    bge-    branch_0x80292f78
    b       branch_0x80292f94

branch_0x80292f78:
    lwz     r0, 0x28(sp)
    b       branch_0x80292f98

branch_0x80292f80:
    lfs     f0, 0x28(sp)
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    b       branch_0x80292f98

branch_0x80292f94:
    li      r0, 0x0
branch_0x80292f98:
    lwz     r3, R13Off_m0x6060(r13)
    mr      r4, r0
    bl      getFlag__12TFlagManagerCFUl
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r3, 0x18(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x80292fd4
    lis     r3, unk_803a2658@h
    crxor   6, 6, 6
    addi    r3, r3, unk_803a2658@l
    bl      SpcTrace__FPCce
    b       branch_0x80292ffc

branch_0x80292fd4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x80292ffc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __dt__32TSpcTypedInterp_13TEventWatcher_Fv
__dt__32TSpcTypedInterp_13TEventWatcher_Fv: # 0x80293010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80293058
    lis     r3, __vvt__32TSpcTypedInterp_13TEventWatcher_@ha
    addi    r0, r3, __vvt__32TSpcTypedInterp_13TEventWatcher_@l
    stw     r0, 0x5c(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TSpcInterpFv
    extsh.  r0, r31
    ble-    branch_0x80293058
    mr      r3, r30
    bl      __dl__FPv
branch_0x80293058:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__32TSpcTypedBinary_13TEventWatcher_Fv
__dt__32TSpcTypedBinary_13TEventWatcher_Fv: # 0x80293074
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802930bc
    lis     r3, __vvt__32TSpcTypedBinary_13TEventWatcher_@ha
    addi    r0, r3, __vvt__32TSpcTypedBinary_13TEventWatcher_@l
    stw     r0, 0x4(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TSpcBinaryFv
    extsh.  r0, r31
    ble-    branch_0x802930bc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802930bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl dispatchBuiltin__32TSpcTypedInterp_13TEventWatcher_FUlUl
dispatchBuiltin__32TSpcTypedInterp_13TEventWatcher_FUlUl: # 0x802930d8
    mflr    r0
    stw     r0, 0x4(sp)
    mulli   r0, r4, 0x14
    stwu    sp, -0x8(sp)
    lwz     r6, 0x0(r3)
    lwz     r8, 0x0(r6)
    lwz     r6, 0x10(r8)
    add     r7, r6, r0
    add.    r7, r8, r7
    beq-    branch_0x8029313c
    lwz     r0, 0x10(r7)
    cmplwi  r0, 0x0
    mr      r12, r0
    beq-    branch_0x8029313c
    lwz     r4, 0x14(r8)
    mtlr    r12
    lwz     r0, 0x4(r7)
    mulli   r4, r4, 0x14
    add     r4, r6, r4
    add     r0, r4, r0
    add     r0, r8, r0
    stw     r0, 0x58(r3)
    mr      r4, r5
    blrl
    b       branch_0x80293140

branch_0x8029313c:
    bl      dispatchBuiltin__10TSpcInterpFUlUl
branch_0x80293140:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __sinit_EventWatcher_cpp
__sinit_EventWatcher_cpp: # 0x80293150
    mflr    r0
    lis     r3, unk_803fc628@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fc628@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80293198
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80293198:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802931c8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x802931c8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802931f8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x802931f8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80293228
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80293228:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80293258
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80293258:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80293288
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80293288:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802932b8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x802932b8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802932e8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x802932e8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80293318
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80293318:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80293348
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80293348:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80293378
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80293378:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802933a8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x802933a8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802933d8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x802933d8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80293408
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80293408:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80293438
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80293438:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

