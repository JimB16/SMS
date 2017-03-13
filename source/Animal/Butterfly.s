
.globl __dt__19TButterfloidManagerFv
__dt__19TButterfloidManagerFv: # 0x80012130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80012178
    lis     r3, 0x803b
    subi    r0, r3, 0x3de8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80012178
    mr      r3, r30
    bl      __dl__FPv
branch_0x80012178:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__19TButterfloidManagerFv
createModelData__19TButterfloidManagerFv: # 0x80012194
    mflr    r0
    lis     r4, 0x8037
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x3e24
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__19TButterfloidManagerFPCc
__ct__19TButterfloidManagerFPCc: # 0x800121c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x3de8
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createRealoidActor__12TButterfloidFP6MActor
createRealoidActor__12TButterfloidFP6MActor: # 0x80012204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0xac
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80012258
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__13TRealoidActorFP6MActor
    lis     r3, 0x803b
    subi    r3, r3, 0x3c7c
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r29)
    stw     r30, 0xa8(r29)
branch_0x80012258:
    lwz     r0, 0x24(sp)
    mr      r3, r29
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl load__12TButterfloidFR20JSUMemoryInputStream
load__12TButterfloidFR20JSUMemoryInputStream: # 0x80012278
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stw     r31, 0x104(sp)
    stw     r30, 0x100(sp)
    stw     r29, 0xfc(sp)
    mr      r29, r3
    stw     r28, 0xf8(sp)
    addi    r28, r4, 0x0
    lwz     r0, 0x158(r3)
    lis     r3, 0x8037
    addi    r31, r3, 0x3d08
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r5, 0x110(r3)
    addi    r3, r29, 0x0
    bl      loadDefault__8TRealoidFR20JSUMemoryInputStreamPCci
    addi    r3, r28, 0x0
    addi    r4, sp, 0x9c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x158(r29)
    cmpwi   r0, 0x1
    beq-    branch_0x80012340
    bge-    branch_0x800122ec
    cmpwi   r0, 0x0
    bge-    branch_0x800122f8
    b       branch_0x80012398

branch_0x800122ec:
    cmpwi   r0, 0x3
    bge-    branch_0x80012398
    b       branch_0x80012354

branch_0x800122f8:
    lfs     f0, -0x7d74(rtoc)
    addi    r6, sp, 0xb8
    lfs     f1, -0x7d78(rtoc)
    addi    r5, sp, 0xac
    stfs    f0, 0xac(sp)
    addi    r4, sp, 0xa0
    stfs    f1, 0xb8(sp)
    subi    r3, rtoc, 0x7d70
    stfs    f0, 0xa0(sp)
    stfs    f1, 0xbc(sp)
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xa4(sp)
    stfs    f1, 0xc0(sp)
    stfs    f0, 0xb4(sp)
    stfs    f0, 0xa8(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x15c(r29)
    b       branch_0x80012398

branch_0x80012340:
    lwz     r3, 0x9c(sp)
    subi    r4, rtoc, 0x7d68
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x15c(r29)
    b       branch_0x80012398

branch_0x80012354:
    lfs     f0, -0x7d74(rtoc)
    addi    r6, sp, 0xdc
    lfs     f1, -0x7d78(rtoc)
    addi    r5, sp, 0xd0
    stfs    f0, 0xd0(sp)
    addi    r4, sp, 0xc4
    stfs    f1, 0xdc(sp)
    addi    r3, r31, 0x14c
    stfs    f0, 0xc4(sp)
    stfs    f1, 0xe0(sp)
    stfs    f0, 0xd4(sp)
    stfs    f0, 0xc8(sp)
    stfs    f1, 0xe4(sp)
    stfs    f0, 0xd8(sp)
    stfs    f0, 0xcc(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x15c(r29)
branch_0x80012398:
    lfs     f0, -0x7d64(rtoc)
    lwz     r3, 0x150(r29)
    stfs    f0, 0x24(r3)
    lfs     f0, -0x7d60(rtoc)
    lwz     r3, 0x150(r29)
    stfs    f0, 0x20(r3)
    lfs     f0, -0x7d5c(rtoc)
    lwz     r3, 0x150(r29)
    stfs    f0, 0x28(r3)
    lfs     f0, -0x7d58(rtoc)
    lwz     r3, 0x150(r29)
    stfs    f0, 0x2c(r3)
    lfs     f0, -0x7d54(rtoc)
    lwz     r3, 0x150(r29)
    stfs    f0, 0x30(r3)
    lfs     f0, -0x7d50(rtoc)
    lwz     r3, 0x150(r29)
    stfs    f0, 0x34(r3)
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x7d74(rtoc)
    stw     r3, 0xe8(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0xec(sp)
    stfs    f0, 0xf0(sp)
    stfs    f0, 0xf4(sp)
    beq-    branch_0x80012418
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0xec(sp)
    stfs    f1, 0xf0(sp)
    stfs    f2, 0xf4(sp)
branch_0x80012418:
    lwz     r4, 0x150(r29)
    li      r30, 0x0
    lwz     r0, 0xe8(sp)
    li      r28, 0x0
    stw     r0, 0x5c(r4)
    lwz     r3, 0xec(sp)
    lwz     r0, 0xf0(sp)
    stw     r3, 0x60(r4)
    stw     r0, 0x64(r4)
    lwz     r0, 0xf4(sp)
    stw     r0, 0x68(r4)
    lfs     f0, -0x7d4c(rtoc)
    lwz     r3, 0x150(r29)
    stfs    f0, 0x6c(r3)
    lfs     f0, -0x7d48(rtoc)
    lwz     r3, 0x150(r29)
    stfs    f0, 0x70(r3)
    lwz     r3, 0x150(r29)
    lwz     r0, 0x1c(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x1c(r3)
    b       branch_0x8001248c

branch_0x80012470:
    lwz     r3, 0x154(r29)
    addi    r4, r31, 0x15c
    lwzx    r3, r3, r28
    lwz     r3, 0x70(r3)
    bl      setBck__6MActorFPCc
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x8001248c:
    lwz     r3, 0x150(r29)
    lwz     r0, 0x10(r3)
    cmpw    r30, r0
    blt+    branch_0x80012470
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x800124c8

branch_0x800124a8:
    lwz     r3, 0x154(r29)
    lwzx    r3, r3, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb4(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x800124c8:
    lwz     r3, 0x150(r29)
    lwz     r0, 0x10(r3)
    cmpw    r28, r0
    blt+    branch_0x800124a8
    lwz     r0, 0x10c(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    mtlr    r0
    lwz     r29, 0xfc(sp)
    lwz     r28, 0xf8(sp)
    addi    sp, sp, 0x108
    blr


.globl init__12TButterfloidFP12TLiveManager
init__12TButterfloidFP12TLiveManager: # 0x800124f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    lbz     r0, -0x72c0(r13)
    extsb.  r0, r0
    bne-    branch_0x80012560
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x72bc(r13)
    subi    r0, r3, 0x4904
    lis     r4, 0x8000
    stw     r0, -0x72bc(r13)
    lis     r3, 0x803f
    subi    r5, r3, 0x6500
    addi    r4, r4, 0x7170
    subi    r3, r13, 0x72bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x72c0(r13)
branch_0x80012560:
    lwz     r8, 0x8c(r31)
    li      r7, 0x0
    subi    r0, r13, 0x72bc
    stw     r7, 0x8(r8)
    addi    r3, r31, 0x0
    li      r4, 0x0
    stw     r7, 0x20(r8)
    li      r5, 0x1
    li      r6, 0x0
    stw     r0, 0x14(r8)
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f1, -0x7d74(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__12TButterfloidFiPCc
__ct__12TButterfloidFiPCc: # 0x800125c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      __ct__8TRealoidFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x3d94
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    mr      r3, r30
    stw     r31, 0x158(r30)
    stw     r0, 0x15c(r30)
    stw     r0, 0x160(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl receiveMessage__10TButterflyFP9THitActorUl
receiveMessage__10TButterflyFP9THitActorUl: # 0x80012628
    mflr    r0
    cmpwi   r5, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    beq-    branch_0x80012694
    bge-    branch_0x80012658
    cmpwi   r5, 0x4
    beq-    branch_0x80012664
    b       branch_0x80012788

branch_0x80012658:
    cmpwi   r5, 0xb
    beq-    branch_0x800126b0
    b       branch_0x80012788

branch_0x80012664:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80012788
    stw     r4, 0x68(r31)
    addi    r5, r31, 0x10
    li      r4, 0xe7
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x8001278c

branch_0x80012694:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80012788
    li      r0, 0x0
    stw     r0, 0x68(r31)
    li      r3, 0x1
    b       branch_0x8001278c

branch_0x800126b0:
    lwz     r0, 0x74(r31)
    lwz     r5, 0xa8(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x74(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x160(r5)
    addi    r4, r3, 0x1
    stw     r4, 0x160(r5)
    lwz     r3, 0x150(r5)
    lwz     r0, 0x10(r3)
    cmpw    r4, r0
    bne-    branch_0x80012780
    lwz     r30, 0x15c(r5)
    cmplwi  r30, 0x0
    beq-    branch_0x80012780
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x8001270c
    li      r0, 0x1
    b       branch_0x80012710

branch_0x8001270c:
    li      r0, 0x0
branch_0x80012710:
    clrlwi. r0, r0, 24
    beq-    branch_0x8001272c
    lis     r4, 0x2000
    lwz     r3, gpItemManager(r13)
    addi    r4, r4, 0xe
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r30, r3
branch_0x8001272c:
    cmplwi  r30, 0x0
    beq-    branch_0x80012780
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r30)
    lfs     f1, -0x7d74(rtoc)
    stfs    f1, 0xac(r30)
    lfs     f0, -0x7d44(rtoc)
    stfs    f0, 0xb0(r30)
    stfs    f1, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
branch_0x80012780:
    li      r3, 0x1
    b       branch_0x8001278c

branch_0x80012788:
    li      r3, 0x0
branch_0x8001278c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl init__10TButterflyFv
init__10TButterflyFv: # 0x800127a4
    mflr    r0
    lis     r4, 0x1000
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x30
    li      r5, 0x0
    stwu    sp, -0x68(sp)
    li      r6, 0x0
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    lfs     f1, -0x7d74(rtoc)
    lfs     f3, -0x7d40(rtoc)
    stw     r3, 0x8(sp)
    fmr     f2, f1
    fmr     f4, f3
    lwz     r3, 0x8(sp)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, 0x8(sp)
    lis     r3, 0x8037
    addi    r31, r3, 0x3e74
    lwz     r0, 0x64(r4)
    addi    r3, r31, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r4)
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x38
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x38(sp)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x34
    stw     r0, 0x34(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x44
    addi    r4, r31, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x40
    addi    r6, sp, 0x8
    lwz     r0, 0x50(sp)
    stw     r0, 0x44(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__12TButterfloidFv
__dt__12TButterfloidFv: # 0x80012894
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800128fc
    lis     r3, 0x803b
    subi    r3, r3, 0x3d94
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800128ec
    lis     r3, 0x803b
    subi    r3, r3, 0x4660
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800128ec:
    extsh.  r0, r31
    ble-    branch_0x800128fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x800128fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TButterflyFv
__dt__10TButterflyFv: # 0x80012918
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80012998
    lis     r3, 0x803b
    subi    r3, r3, 0x3c7c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80012988
    lis     r3, 0x803b
    subi    r3, r3, 0x4548
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80012988
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__9THitActorFv
branch_0x80012988:
    extsh.  r0, r31
    ble-    branch_0x80012998
    mr      r3, r30
    bl      __dl__FPv
branch_0x80012998:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__10TButterflyFv
_32___dt__10TButterflyFv: # 0x800129b4
    subi    r3, r3, 0x20
    b       __dt__10TButterflyFv


.globl _32___dt__12TButterfloidFv
_32___dt__12TButterfloidFv: # 0x800129bc
    subi    r3, r3, 0x20
    b       __dt__12TButterfloidFv
