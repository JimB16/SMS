
.globl __dt__19TNerveRHGraphWanderFv
__dt__19TNerveRHGraphWanderFv: # 0x800c7574
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c75b8
    lis     r3, 0x803c
    subi    r0, r3, 0x7d20
    stw     r0, 0x0(r31)
    beq-    branch_0x800c75a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c75a8:
    extsh.  r0, r4
    ble-    branch_0x800c75b8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c75b8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveRHGraphWanderCFP24TSpineBase_10TLiveActor_
execute__19TNerveRHGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x800c75d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    stw     r30, 0xd8(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c7658
    lfs     f1, -0x601c(rtoc)
    addi    r4, sp, 0xac
    lfs     f0, 0x34(r31)
    mr      r3, r31
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r5, -0x5ea8(r13)
    lfs     f3, -0x6020(rtoc)
    lwz     r7, -0x5ea4(r13)
    fctiwz  f1, f0
    lfs     f0, -0x6018(rtoc)
    stfd    f1, 0xd0(sp)
    lwz     r6, 0xd4(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    lfsx    f2, r7, r0
    fmuls   f1, f3, f1
    fmuls   f2, f3, f2
    stfs    f1, 0xac(sp)
    stfs    f0, 0xb0(sp)
    stfs    f2, 0xb4(sp)
    bl      goToDirectedNextGraphNode__11TSpineEnemyFRCQ29JGeometry8TVec3_f_
branch_0x800c7658:
    lwz     r3, 0x104(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800c766c
    addi    r4, r3, 0x10
    b       branch_0x800c7670

branch_0x800c766c:
    addi    r4, r31, 0x108
branch_0x800c7670:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xa4(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    lfs     f2, 0xa4(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6014(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c7794
    lwz     r4, 0x124(r31)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x800c7714
    lhz     r0, 0xc(r3)
    stw     r0, 0x154(r31)
branch_0x800c7714:
    lbz     r0, -0x6a20(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7758
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a1c(r13)
    subi    r0, r3, 0x7d20
    lis     r4, 0x800c
    stw     r0, -0x6a1c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1c40
    addi    r4, r4, 0x7574
    subi    r3, r13, 0x6a1c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a20(r13)
branch_0x800c7758:
    subi    r4, r13, 0x6a1c
    cmplwi  r4, 0x0
    beq-    branch_0x800c778c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800c778c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800c778c:
    li      r3, 0x1
    b       branch_0x800c7898

branch_0x800c7794:
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800c77b0
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x800c77b8
branch_0x800c77b0:
    li      r3, 0x0
    b       branch_0x800c7898

branch_0x800c77b8:
    lwz     r0, 0x154(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x800c77cc
    li      r3, 0x0
    b       branch_0x800c7898

branch_0x800c77cc:
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x800c77e4
    addi    r6, r4, 0x10
    b       branch_0x800c77e8

branch_0x800c77e4:
    addi    r6, r3, 0x4
branch_0x800c77e8:
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0xb8
    lwz     r0, 0x4(r6)
    mr      r4, r3
    stw     r5, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xc0(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb8(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    bl      PSVECNormalize
    lfs     f1, 0x140(r31)
    li      r3, 0x0
    lfs     f0, 0xb8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb8(sp)
    lfs     f0, 0xbc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xbc(sp)
    lfs     f0, 0xc0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f1, 0x10(r31)
    lfs     f0, 0xb8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xbc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0xc0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
branch_0x800c7898:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    addi    sp, sp, 0xe0
    blr


.globl createEnemyInstance__17TRiccoHookManagerFv
createEnemyInstance__17TRiccoHookManagerFv: # 0x800c78b0
    li      r3, 0x0
    blr


.globl load__17TRiccoHookManagerFR20JSUMemoryInputStream
load__17TRiccoHookManagerFR20JSUMemoryInputStream: # 0x800c78b8
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    subi    r29, r5, 0xac8
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x800c79c0
    addi    r3, r26, 0x0
    addi    r4, r29, 0x108
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r29, 0x120
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0xa8
    addi    r6, r29, 0x120
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r30, r3, 0x42c4
    stw     r30, 0xa8(r26)
    lis     r3, 0x803b
    subi    r31, r3, 0x42d0
    lfs     f0, -0x6010(rtoc)
    addi    r3, r29, 0x130
    stfs    f0, 0xb8(r26)
    stw     r31, 0xa8(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0xbc
    addi    r6, r29, 0x130
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0xbc(r26)
    addi    r3, r29, 0x140
    lfs     f0, -0x600c(rtoc)
    stfs    f0, 0xcc(r26)
    stw     r31, 0xbc(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0xd0
    addi    r6, r29, 0x140
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0xd0(r26)
    addi    r3, r29, 0x150
    lfs     f0, -0x6008(rtoc)
    stfs    f0, 0xe0(r26)
    stw     r31, 0xd0(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0xe4
    addi    r6, r29, 0x150
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0xe4(r26)
    mr      r3, r26
    lfs     f0, -0x6004(rtoc)
    stfs    f0, 0xf4(r26)
    stw     r31, 0xe4(r26)
    lwz     r4, 0x0(r26)
    bl      load__7TParamsFPCc
branch_0x800c79c0:
    stw     r26, 0x38(r27)
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl createModelData__17TRiccoHookManagerFv
createModelData__17TRiccoHookManagerFv: # 0x800c79e4
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x9d8
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__17TRiccoHookManagerFPCc
__ct__17TRiccoHookManagerFPCc: # 0x800c7a18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x7d10
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10TRiccoHookFUlPQ26JDrama9TGraphics
perform__10TRiccoHookFUlPQ26JDrama9TGraphics: # 0x800c7a54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x150(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r30, 31
    beq-    branch_0x800c7b28
    lwz     r3, 0x154(r29)
    cmpwi   r3, 0x0
    ble-    branch_0x800c7ab8
    subi    r0, r3, 0x1
    stw     r0, 0x154(r29)
    b       branch_0x800c7b28

branch_0x800c7ab8:
    lha     r0, 0x7c(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x800c7af8
    lwz     r3, gpMSound(r13)
    li      r4, 0x3034
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c7b28
    addi    r4, r29, 0x10
    li      r3, 0x3034
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800c7b28

branch_0x800c7af8:
    lwz     r3, gpMSound(r13)
    li      r4, 0x3035
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c7b28
    addi    r4, r29, 0x10
    li      r3, 0x3035
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c7b28:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl receiveMessage__10TRiccoHookFP9THitActorUl
receiveMessage__10TRiccoHookFP9THitActorUl: # 0x800c7b44
    li      r3, 0x0
    blr


.globl kill__10TRiccoHookFv
kill__10TRiccoHookFv: # 0x800c7b4c
    blr


.globl init__10TRiccoHookFP12TLiveManager
init__10TRiccoHookFP12TLiveManager: # 0x800c7b50
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r25, 0xbc(sp)
    addi    r30, r3, 0x0
    subi    r31, r5, 0xac8
    bl      init__11TSpineEnemyFP12TLiveManager
    lbz     r0, -0x6a20(r13)
    extsb.  r0, r0
    bne-    branch_0x800c7bb4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a1c(r13)
    subi    r0, r3, 0x7d20
    lis     r4, 0x800c
    stw     r0, -0x6a1c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1c40
    addi    r4, r4, 0x7574
    subi    r3, r13, 0x6a1c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a20(r13)
branch_0x800c7bb4:
    lwz     r4, 0x8c(r30)
    li      r28, 0x0
    subi    r0, r13, 0x6a1c
    stw     r28, 0x8(r4)
    li      r3, 0x74
    stw     r28, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r28, 0x1c(r4)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800c7d50
    stw     r29, 0xa8(sp)
    mr      r3, r29
    addi    r4, r31, 0x160
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r29)
    subi    r3, r3, 0x7ba8
    addi    r0, r3, 0x24
    stw     r28, 0x68(r29)
    stw     r28, 0x6c(r29)
    lwz     r28, 0xa8(sp)
    stw     r3, 0x0(r28)
    stw     r0, 0x20(r28)
    stw     r30, 0x70(r28)
    lwz     r3, 0x70(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r28)
    addi    r27, r3, 0xb8
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r28)
    addi    r26, r3, 0xcc
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r28)
    addi    r25, r3, 0xb8
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lis     r4, 0x4000
    lfs     f1, 0xcc(r3)
    lfs     f2, 0x0(r25)
    mr      r3, r28
    lfs     f3, 0x0(r26)
    addi    r4, r4, 0xbb
    lfs     f4, 0x0(r27)
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x170
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x170
    mtlr    r12
    blrl
    addi    r28, r3, 0x10
    addi    r4, r28, 0x0
    addi    r3, sp, 0x60
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x60(sp)
    addi    r4, sp, 0x5c
    addi    r3, sp, 0x8c
    stw     r0, 0x5c(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x8c(sp)
    addi    r5, sp, 0x70
    addi    r4, r28, 0x0
    stw     r0, 0x88(sp)
    addi    r3, sp, 0x6c
    addi    r6, sp, 0xa8
    lwz     r0, 0x88(sp)
    stw     r0, 0x70(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x6c(sp)
    addi    r3, sp, 0x84
    addi    r4, sp, 0x68
    stw     r0, 0x68(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
branch_0x800c7d50:
    stw     r29, 0x150(r30)
    li      r0, -0x1
    addi    r3, r30, 0x0
    lwz     r4, 0x124(r30)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xf4(r3)
    stfs    f0, 0x140(r30)
    lfs     f0, -0x6014(rtoc)
    stfs    f0, 0x144(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r0, 0xdc(sp)
    lmw     r25, 0xbc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl __ct__10TRiccoHookFPCc
__ct__10TRiccoHookFPCc: # 0x800c7dac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x7cbc
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x150(r31)
    stw     r0, 0x154(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__9THookTakeFUlPQ26JDrama9TGraphics
perform__9THookTakeFUlPQ26JDrama9TGraphics: # 0x800c7dfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    clrlwi. r31, r4, 31
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x800c7e48
    lwz     r6, 0x70(r30)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(r6)
    stw     r0, 0x18(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x6010(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r30)
branch_0x800c7e48:
    mr      r3, r30
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    cmplwi  r31, 0x0
    beq-    branch_0x800c7ec8
    lwz     r5, 0x6c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800c7ec8
    lwz     r3, 0x10(r5)
    addi    r4, sp, 0x30
    lwz     r0, 0x14(r5)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x38(sp)
    lwz     r3, 0x70(r30)
    lfs     f1, 0x30(sp)
    lfsu    f0, 0x94(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lwz     r3, 0x6c(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
branch_0x800c7ec8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl receiveMessage__9THookTakeFP9THitActorUl
receiveMessage__9THookTakeFP9THitActorUl: # 0x800c7ee0
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800c7f20
    cmplwi  r5, 0x5
    bne-    branch_0x800c7f04
    stw     r4, 0x6c(r3)
    li      r3, 0x1
    blr

branch_0x800c7f04:
    subi    r0, r5, 0x7
    cmplwi  r0, 0x1
    bgt-    branch_0x800c7f20
    li      r0, 0x0
    stw     r0, 0x6c(r3)
    li      r3, 0x1
    blr

branch_0x800c7f20:
    li      r3, 0x0
    blr


.globl getRadiusAtY__9THookTakeCFf
getRadiusAtY__9THookTakeCFf: # 0x800c7f28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x70(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    lfs     f1, 0xe0(r3)
    mtlr    r0
    blr


.globl getTakingMtx__9THookTakeFv
getTakingMtx__9THookTakeFv: # 0x800c7f5c
    li      r3, 0x0
    blr


.globl __dt__17TRiccoHookManagerFv
__dt__17TRiccoHookManagerFv: # 0x800c7f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c7fac
    lis     r3, 0x803c
    subi    r0, r3, 0x7d10
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800c7fac
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c7fac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TRiccoHookFv
__dt__10TRiccoHookFv: # 0x800c7fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c8018
    lis     r3, 0x803c
    subi    r3, r3, 0x7cbc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800c8018
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c8018:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9THookTakeFv
__dt__9THookTakeFv: # 0x800c8034
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800c80b4
    lis     r3, 0x803c
    subi    r3, r3, 0x7ba8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c80a4
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800c80a4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800c80a4:
    extsh.  r0, r31
    ble-    branch_0x800c80b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800c80b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_riccohook_cpp
__sinit_riccohook_cpp: # 0x800c80d0
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x1c40
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8118
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800c8118:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8148
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800c8148:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8178
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800c8178:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800c81a8
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800c81a8:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800c81d8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800c81d8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8208
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800c8208:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8238
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800c8238:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8268
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800c8268:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8298
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800c8298:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800c82c8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800c82c8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800c82f8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800c82f8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8328
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800c8328:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8358
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800c8358:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8388
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800c8388:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800c83b8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800c83b8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__9THookTakeFv
_32___dt__9THookTakeFv: # 0x800c83cc
    subi    r3, r3, 0x20
    b       __dt__9THookTakeFv


.globl _32___dt__10TRiccoHookFv
_32___dt__10TRiccoHookFv: # 0x800c83d4
    subi    r3, r3, 0x20
    b       __dt__10TRiccoHookFv

