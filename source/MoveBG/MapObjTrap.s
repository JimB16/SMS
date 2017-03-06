
.globl __dt__13TLampTrapIronFv
__dt__13TLampTrapIronFv: # 0x802012b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020131c
    lis     r3, 0x803d
    addi    r3, r3, 0x7ee0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8020130c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x8020130c:
    extsh.  r0, r31
    ble-    branch_0x8020131c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020131c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__13TLampTrapIronFUlPQ26JDrama9TGraphics
perform__13TLampTrapIronFUlPQ26JDrama9TGraphics: # 0x80201338
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r3, 0x138(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x802013c0
    lwz     r0, 0x13c(r29)
    cmpwi   r0, 0x0
    ble-    branch_0x802013c0
    lwz     r3, -0x6070(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x1f1
    li      r6, 0x3
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x12c
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x802013c0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl control__13TLampTrapIronFv
control__13TLampTrapIronFv: # 0x802013dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lwz     r3, 0x140(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x80201434
    bl      SMS_GetMarioGrPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x80201450
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x80201450
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80201450
    addi    r3, r31, 0x0
    li      r4, 0xa
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x80201450

branch_0x80201434:
    subi    r0, r3, 0x1
    stw     r0, 0x140(r31)
    lwz     r0, 0x140(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80201450
    lwz     r0, -0x77c0(r13)
    stw     r0, 0x13c(r31)
branch_0x80201450:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__13TLampTrapIronFP9THitActorUl
receiveMessage__13TLampTrapIronFP9THitActorUl: # 0x80201464
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x80201490
    li      r0, 0x1
    b       branch_0x80201494

branch_0x80201490:
    li      r0, 0x0
branch_0x80201494:
    clrlwi. r0, r0, 24
    beq-    branch_0x802014ec
    lwz     r3, 0x13c(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x802014e4
    subi    r0, r3, 0x1
    stw     r0, 0x13c(r31)
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802014e4
    lwz     r0, -0x77bc(r13)
    mr      r3, r31
    stw     r0, 0x140(r31)
    bl      getModel__10TLiveActorCFv
    addi    r5, r3, 0x20
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x64
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x802014e4:
    li      r3, 0x1
    b       branch_0x802014f4

branch_0x802014ec:
    mr      r3, r31
    bl      receiveMessage__11TMapObjBaseFP9THitActorUl
branch_0x802014f4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl loadAfter__13TLampTrapIronFv
loadAfter__13TLampTrapIronFv: # 0x80201508
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r27, 0x64(sp)
    addi    r31, r3, 0x0
    addi    r28, r4, 0x4710
    bl      loadAfter__11TMapObjBaseFv
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80201620
    stw     r30, 0x58(sp)
    addi    r4, r28, 0xf8
    lwz     r3, 0x58(sp)
    bl      __ct__9THitActorFPCc
    lwz     r29, 0x58(sp)
    lis     r3, 0x803e
    subi    r3, r3, 0x7fbc
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    lis     r4, 0x4000
    stw     r0, 0x20(r29)
    addi    r3, r29, 0x0
    addi    r4, r4, 0x1d
    stw     r31, 0x68(r29)
    li      r5, 0x3
    lis     r6, 0x8000
    lfs     f1, -0x1dcc(rtoc)
    lfs     f2, -0x1dc8(rtoc)
    fmr     f3, f1
    fmr     f4, f2
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x104
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x104
    mtlr    r12
    blrl
    addi    r28, r3, 0x10
    addi    r4, r28, 0x0
    addi    r3, sp, 0x34
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x34(sp)
    addi    r4, sp, 0x30
    addi    r3, sp, 0x54
    stw     r0, 0x30(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x40
    addi    r4, r28, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x3c
    addi    r6, sp, 0x58
    lwz     r0, 0x50(sp)
    stw     r0, 0x40(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x3c(sp)
    addi    r3, sp, 0x4c
    addi    r4, sp, 0x38
    stw     r0, 0x38(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
branch_0x80201620:
    stw     r30, 0x138(r31)
    lmw     r27, 0x64(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl initMapObj__13TLampTrapIronFv
initMapObj__13TLampTrapIronFv: # 0x80201638
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x64(r31)
    li      r0, 0x0
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    stw     r0, 0x140(r31)
    lwz     r0, -0x77c0(r13)
    stw     r0, 0x13c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__13TLampTrapIronFPCc
__ct__13TLampTrapIronFPCc: # 0x80201680
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x7ee0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    stw     r0, 0x13c(r31)
    stw     r0, 0x140(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__16TLampTrapIronHitFUlPQ26JDrama9TGraphics
perform__16TLampTrapIronHitFUlPQ26JDrama9TGraphics: # 0x802016d4
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
    beq-    branch_0x80201794
    lwz     r4, 0x68(r31)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x1dc4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x68(r31)
    lwz     r0, 0x13c(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80201794
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x80201788

branch_0x80201748:
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r30
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80201768
    li      r0, 0x1
    b       branch_0x8020176c

branch_0x80201768:
    li      r0, 0x0
branch_0x8020176c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80201780
    addi    r3, r31, 0x0
    li      r4, 0xa
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x80201780:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x80201788:
    lhz     r0, 0x48(r31)
    cmpw    r29, r0
    blt+    branch_0x80201748
branch_0x80201794:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl receiveMessage__16TLampTrapIronHitFP9THitActorUl
receiveMessage__16TLampTrapIronHitFP9THitActorUl: # 0x802017b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__14TLampTrapSpikeFUlPQ26JDrama9TGraphics
perform__14TLampTrapSpikeFUlPQ26JDrama9TGraphics: # 0x802017e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r3, 0x140(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl control__14TLampTrapSpikeFv
control__14TLampTrapSpikeFv: # 0x80201840
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r27, 0x4c(sp)
    mr      r31, r3
    li      r28, 0x0
    lwz     r30, 0x138(r3)
    lis     r3, 0x8039
    addi    r29, r3, 0x4710
    cmpwi   r30, 0x3
    beq-    branch_0x80201a9c
    bge-    branch_0x80201888
    cmpwi   r30, 0x1
    beq-    branch_0x80201944
    bge-    branch_0x802019f8
    cmpwi   r30, 0x0
    bge-    branch_0x80201898
    b       branch_0x80201ba0

branch_0x80201888:
    cmpwi   r30, 0x5
    beq-    branch_0x80201ba0
    bge-    branch_0x80201ba0
    b       branch_0x80201b18

branch_0x80201898:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x13c(r31)
    addi    r27, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x802018e0
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x118
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1dc0(rtoc)
    mr      r27, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r27)
branch_0x802018e0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80201908
    li      r0, 0x0
    stw     r0, 0x13c(r31)
    li      r0, 0x2
    stw     r0, 0x138(r31)
branch_0x80201908:
    lha     r3, 0x8(r27)
    lis     r0, 0x4330
    lfd     f1, -0x1db0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x1dbc(rtoc)
    stw     r3, 0x44(sp)
    lfs     f3, 0x10(r27)
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fcmpo   cr0, f3, f0
    ble-    branch_0x80201c0c
    li      r28, 0x1
    b       branch_0x80201c0c

branch_0x80201944:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x13c(r31)
    addi    r27, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x80201994
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x12c
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1dd0(rtoc)
    mr      r27, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x1db8(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r27)
branch_0x80201994:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x802019bc
    li      r0, 0x0
    stw     r0, 0x13c(r31)
    li      r0, 0x3
    stw     r0, 0x138(r31)
branch_0x802019bc:
    lha     r3, 0x8(r27)
    lis     r0, 0x4330
    lfd     f1, -0x1db0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x1dbc(rtoc)
    stw     r3, 0x44(sp)
    lfs     f3, 0x10(r27)
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fcmpo   cr0, f3, f0
    ble-    branch_0x80201c0c
    li      r28, 0x1
    b       branch_0x80201c0c

branch_0x802019f8:
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80201a78
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x118
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r5, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x1db0(rtoc)
    li      r4, 0x3863
    xoris   r5, r5, 0x8000
    stw     r5, 0x44(sp)
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, -0x1dd0(rtoc)
    stfs    f0, 0xc(r3)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80201a78
    addi    r4, r31, 0x10
    li      r3, 0x3863
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80201a78:
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x168
    blt-    branch_0x80201a94
    li      r0, 0x0
    stw     r0, 0x13c(r31)
    li      r0, 0x1
    stw     r0, 0x138(r31)
branch_0x80201a94:
    li      r28, 0x1
    b       branch_0x80201c0c

branch_0x80201a9c:
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80201af4
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x12c
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80201af4
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x1db0(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x44(sp)
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, -0x1dd0(rtoc)
    stfs    f0, 0xc(r3)
branch_0x80201af4:
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x78
    blt-    branch_0x80201b10
    li      r0, 0x0
    stw     r0, 0x13c(r31)
    li      r0, 0x4
    stw     r0, 0x138(r31)
branch_0x80201b10:
    li      r28, 0x0
    b       branch_0x80201c0c

branch_0x80201b18:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x13c(r31)
    addi    r27, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x80201b68
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x118
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1dd0(rtoc)
    mr      r27, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x1db4(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r27)
branch_0x80201b68:
    mr      r3, r27
    lfs     f1, -0x1dc0(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80201b84
    lfs     f0, -0x1dd0(rtoc)
    stfs    f0, 0xc(r27)
branch_0x80201b84:
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0xf0
    blt-    branch_0x80201c0c
    li      r0, 0x0
    stw     r0, 0x13c(r31)
    stw     r0, 0x138(r31)
    b       branch_0x80201c0c

branch_0x80201ba0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x13c(r31)
    addi    r27, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x80201bec
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x118
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x1dc0(rtoc)
    mr      r27, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    fneg    f0, f1
    stfs    f0, 0xc(r27)
branch_0x80201bec:
    mr      r3, r27
    lfs     f1, -0x1dd0(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80201c0c
    li      r0, 0x0
    stw     r0, 0x13c(r31)
    stw     r0, 0x138(r31)
branch_0x80201c0c:
    lwz     r0, 0x138(r31)
    cmpw    r0, r30
    bne-    branch_0x80201c38
    lwz     r3, 0x13c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x13c(r31)
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80201c38
    li      r0, 0x1
    stw     r0, 0x13c(r31)
branch_0x80201c38:
    mr      r3, r31
    bl      control__11TMapObjBaseFv
    bl      SMS_GetMarioGrPlane__Fv
    cmpwi   r28, 0x0
    beq-    branch_0x80201c78
    cmplwi  r3, 0x0
    beq-    branch_0x80201c78
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x80201c78
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80201c78
    addi    r3, r31, 0x0
    li      r4, 0xa
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x80201c78:
    lmw     r27, 0x4c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl receiveMessage__14TLampTrapSpikeFP9THitActorUl
receiveMessage__14TLampTrapSpikeFP9THitActorUl: # 0x80201c8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      receiveMessage__11TMapObjBaseFP9THitActorUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__14TLampTrapSpikeFv
loadAfter__14TLampTrapSpikeFv: # 0x80201cac
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r27, 0x64(sp)
    addi    r31, r3, 0x0
    addi    r28, r4, 0x4710
    bl      loadAfter__11TMapObjBaseFv
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80201dc4
    stw     r30, 0x58(sp)
    addi    r4, r28, 0x140
    lwz     r3, 0x58(sp)
    bl      __ct__9THitActorFPCc
    lwz     r29, 0x58(sp)
    lis     r3, 0x803e
    subi    r3, r3, 0x7db4
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    lis     r4, 0x4000
    stw     r0, 0x20(r29)
    addi    r3, r29, 0x0
    addi    r4, r4, 0x1e
    stw     r31, 0x68(r29)
    li      r5, 0x3
    lis     r6, 0x8000
    lfs     f1, -0x1dcc(rtoc)
    lfs     f2, -0x1dc8(rtoc)
    fmr     f3, f1
    fmr     f4, f2
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x104
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x104
    mtlr    r12
    blrl
    addi    r28, r3, 0x10
    addi    r4, r28, 0x0
    addi    r3, sp, 0x34
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x34(sp)
    addi    r4, sp, 0x30
    addi    r3, sp, 0x54
    stw     r0, 0x30(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x40
    addi    r4, r28, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x3c
    addi    r6, sp, 0x58
    lwz     r0, 0x50(sp)
    stw     r0, 0x40(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x3c(sp)
    addi    r3, sp, 0x4c
    addi    r4, sp, 0x38
    stw     r0, 0x38(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
branch_0x80201dc4:
    stw     r30, 0x140(r31)
    lmw     r27, 0x64(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl initMapObj__14TLampTrapSpikeFv
initMapObj__14TLampTrapSpikeFv: # 0x80201ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__14TLampTrapSpikeFPCc
__ct__14TLampTrapSpikeFPCc: # 0x80201e14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803e
    subi    r3, r3, 0x7f18
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x3
    stw     r0, 0x20(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r4, 0x138(r31)
    stw     r0, 0x13c(r31)
    stw     r0, 0x140(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__17TLampTrapSpikeHitFUlPQ26JDrama9TGraphics
perform__17TLampTrapSpikeHitFUlPQ26JDrama9TGraphics: # 0x80201e6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r4, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r29, 31
    beq-    branch_0x80201f34
    lwz     r4, 0x68(r31)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x1dc4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x68(r31)
    lwz     r0, 0x138(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80201edc
    cmplwi  r0, 0x1
    bgt-    branch_0x80201f34
branch_0x80201edc:
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x80201f28

branch_0x80201ee8:
    lwz     r3, 0x44(r31)
    lwzx    r3, r3, r30
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80201f08
    li      r0, 0x1
    b       branch_0x80201f0c

branch_0x80201f08:
    li      r0, 0x0
branch_0x80201f0c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80201f20
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x80201f20:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x80201f28:
    lhz     r0, 0x48(r31)
    cmpw    r29, r0
    blt+    branch_0x80201ee8
branch_0x80201f34:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl receiveMessage__17TLampTrapSpikeHitFP9THitActorUl
receiveMessage__17TLampTrapSpikeHitFP9THitActorUl: # 0x80201f50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__16TLampTrapIronHitFv
__dt__16TLampTrapIronHitFv: # 0x80201f80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80201fe8
    lis     r3, 0x803e
    subi    r3, r3, 0x7fbc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80201fd8
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80201fd8:
    extsh.  r0, r31
    ble-    branch_0x80201fe8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80201fe8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TLampTrapSpikeFv
__dt__14TLampTrapSpikeFv: # 0x80202004
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8020206c
    lis     r3, 0x803e
    subi    r3, r3, 0x7f18
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8020205c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x8020205c:
    extsh.  r0, r31
    ble-    branch_0x8020206c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8020206c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TLampTrapSpikeHitFv
__dt__17TLampTrapSpikeHitFv: # 0x80202088
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802020f0
    lis     r3, 0x803e
    subi    r3, r3, 0x7db4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x802020e0
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x802020e0:
    extsh.  r0, r31
    ble-    branch_0x802020f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802020f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjTrap_cpp
__sinit_MapObjTrap_cpp: # 0x8020210c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x53e0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80202154
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80202154:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80202184
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80202184:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802021b4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x802021b4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802021e4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802021e4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80202214
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80202214:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80202244
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80202244:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80202274
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80202274:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802022a4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802022a4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802022d4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802022d4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80202304
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80202304:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80202334
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80202334:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80202364
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80202364:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80202394
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80202394:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802023c4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x802023c4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802023f4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802023f4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__17TLampTrapSpikeHitFv
_32___dt__17TLampTrapSpikeHitFv: # 0x80202408
    subi    r3, r3, 0x20
    b       __dt__17TLampTrapSpikeHitFv


.globl _32___dt__14TLampTrapSpikeFv
_32___dt__14TLampTrapSpikeFv: # 0x80202410
    subi    r3, r3, 0x20
    b       __dt__14TLampTrapSpikeFv


.globl _32___dt__16TLampTrapIronHitFv
_32___dt__16TLampTrapIronHitFv: # 0x80202418
    subi    r3, r3, 0x20
    b       __dt__16TLampTrapIronHitFv


.globl _32___dt__13TLampTrapIronFv
_32___dt__13TLampTrapIronFv: # 0x80202420
    subi    r3, r3, 0x20
    b       __dt__13TLampTrapIronFv

