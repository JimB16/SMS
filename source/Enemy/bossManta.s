
.globl __dt__17TBossMantaManagerFv
__dt__17TBossMantaManagerFv: # 0x8010f418
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8010f460
    lis     r3, 0x803c
    subi    r0, r3, 0x2f5c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8010f460
    mr      r3, r30
    bl      __dl__FPv
branch_0x8010f460:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__16TBossMantaParamsFPCc
__ct__16TBossMantaParamsFPCc: # 0x8010f47c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, 0x4198
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x4dc
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x4dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42c4
    stw     r27, 0xa8(r31)
    lis     r3, 0x803b
    subi    r26, r3, 0x42d0
    lfs     f0, -0x543c(rtoc)
    addi    r3, r30, 0x4f0
    stfs    f0, 0xb8(r31)
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x4f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42ac
    stw     r29, 0xbc(r31)
    li      r0, 0x3
    lis     r3, 0x803b
    stw     r0, 0xcc(r31)
    subi    r28, r3, 0x42b8
    addi    r3, r30, 0x504
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x504
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xd0(r31)
    addi    r3, r30, 0x51c
    lfs     f0, -0x5438(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r26, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x51c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xe4(r31)
    addi    r3, r30, 0x534
    lfs     f0, -0x5434(rtoc)
    stfs    f0, 0xf4(r31)
    stw     r26, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x534
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    li      r0, 0xc4
    addi    r3, r30, 0x540
    stw     r0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x540
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    li      r25, 0x80
    addi    r3, r30, 0x550
    stw     r25, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x550
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    li      r0, 0x5f
    addi    r3, r30, 0x560
    stw     r0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x560
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x570
    stw     r25, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x570
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    li      r0, 0xd2
    addi    r3, r30, 0x584
    stw     r0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x584
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    li      r0, 0x1e
    addi    r3, r30, 0x598
    stw     r0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x598
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    li      r0, 0x5a
    addi    r3, r30, 0x5ac
    stw     r0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x5ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x5c0
    stw     r25, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x5c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x198(r31)
    addi    r3, r30, 0x5d4
    lfs     f0, -0x5430(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x5d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1ac(r31)
    addi    r3, r30, 0x5e4
    lfs     f0, -0x542c(rtoc)
    stfs    f0, 0x1bc(r31)
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x5e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    addi    r3, r30, 0x5f8
    lfs     f0, -0x5428(rtoc)
    stfs    f0, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x5f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1d4(r31)
    addi    r3, r30, 0x610
    lfs     f0, -0x5428(rtoc)
    stfs    f0, 0x1e4(r31)
    stw     r26, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x610
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1e8(r31)
    mr      r3, r31
    lfs     f0, -0x5424(rtoc)
    stfs    f0, 0x1f8(r31)
    stw     r26, 0x1e8(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl spawn__17TBossMantaManagerFiRCQ29JGeometry8TVec3_f_
spawn__17TBossMantaManagerFiRCQ29JGeometry8TVec3_f_: # 0x8010f7c4
    mflr    r0
    lis     r6, 0x8038
    stw     r0, 0x4(sp)
    addi    r7, r6, 0x4660
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stfd    f29, 0x118(sp)
    stfd    f28, 0x110(sp)
    stfd    f27, 0x108(sp)
    stfd    f26, 0x100(sp)
    stfd    f25, 0xf8(sp)
    stfd    f24, 0xf0(sp)
    stfd    f23, 0xe8(sp)
    stmw    r25, 0xcc(sp)
    mr      r29, r4
    slwi    r0, r29, 2
    addi    r31, sp, 0xa4
    addi    r28, r3, 0x0
    add     r31, r31, r0
    addi    r30, r5, 0x0
    lwz     r6, 0x0(r7)
    lwz     r4, 0x4(r7)
    stw     r6, 0xa4(sp)
    stw     r4, 0xa8(sp)
    lwz     r3, 0x8(r7)
    lwz     r0, 0xc(r7)
    stw     r3, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x10(r7)
    stw     r0, 0xb4(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f27, -0x5408(rtoc)
    stw     r0, 0xc4(sp)
    lis     r27, 0x4330
    lfs     f0, -0x5420(rtoc)
    li      r26, 0x0
    stw     r27, 0xc0(sp)
    lfs     f29, -0x5418(rtoc)
    lfd     f1, 0xc0(sp)
    lfs     f28, -0x541c(rtoc)
    fsubs   f1, f1, f27
    lfs     f30, -0x5414(rtoc)
    lfs     f31, -0x5410(rtoc)
    fmuls   f0, f0, f1
    fmuls   f0, f29, f0
    fmuls   f25, f28, f0
    b       branch_0x8010f97c

branch_0x8010f888:
    mr      r3, r28
    bl      getDeadEnemy__13TEnemyManagerFv
    mr.     r25, r3
    beq-    branch_0x8010f988
    stfs    f30, 0x64(sp)
    xoris   r0, r26, 0x8000
    stfs    f30, 0x68(sp)
    stw     r0, 0xc4(sp)
    stfs    f31, 0x6c(sp)
    stw     r27, 0xc0(sp)
    lwz     r0, 0x0(r31)
    lfd     f0, 0xc0(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xbc(sp)
    fsubs   f0, f0, f27
    stw     r27, 0xb8(sp)
    fmuls   f1, f29, f0
    lfd     f0, 0xb8(sp)
    fmuls   f1, f1, f28
    fsubs   f0, f0, f27
    fdivs   f0, f1, f0
    fadds   f23, f25, f0
    fmr     f1, f23
    bl      sinf
    fmr     f24, f1
    fmr     f1, f23
    bl      cosf
    lfs     f0, 0x68(sp)
    fneg    f4, f24
    lfs     f6, 0x64(sp)
    mr      r3, r25
    fmuls   f3, f0, f30
    fmuls   f2, f0, f31
    lfs     f5, 0x6c(sp)
    mr      r4, r29
    fmadds  f0, f6, f1, f3
    fmadds  f2, f6, f30, f2
    fmadds  f3, f6, f4, f3
    fmadds  f0, f5, f24, f0
    fmadds  f2, f5, f30, f2
    fmadds  f1, f5, f1, f3
    fadds   f0, f26, f0
    fadds   f2, f26, f2
    fadds   f1, f26, f1
    stfs    f0, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f1, 0x6c(sp)
    lwz     r5, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r5, 0x170(r25)
    stw     r0, 0x174(r25)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x178(r25)
    lfs     f0, 0x0(r30)
    stfs    f0, 0x10(r25)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x14(r25)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x18(r25)
    bl      initNthGeneration__10TBossMantaFi
    addi    r26, r26, 0x1
branch_0x8010f97c:
    lwz     r0, 0x0(r31)
    cmpw    r26, r0
    blt+    branch_0x8010f888
branch_0x8010f988:
    lmw     r25, 0xcc(sp)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    mtlr    r0
    lfd     f29, 0x118(sp)
    lfd     f28, 0x110(sp)
    lfd     f27, 0x108(sp)
    lfd     f26, 0x100(sp)
    lfd     f25, 0xf8(sp)
    lfd     f24, 0xf0(sp)
    lfd     f23, 0xe8(sp)
    addi    sp, sp, 0x130
    blr


.globl createEnemies__17TBossMantaManagerFi
createEnemies__17TBossMantaManagerFi: # 0x8010f9c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r25, 0x94(sp)
    mr      r30, r3
    mr      r31, r4
    lwz     r3, 0x14(r3)
    lwz     r4, 0x10(r30)
    add     r0, r31, r3
    cmpw    r0, r4
    ble-    branch_0x8010f9f0
    subf    r31, r3, r4
branch_0x8010f9f0:
    lwz     r4, 0x38(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8010fa10
    lbz     r4, 0x90(r4)
    add     r0, r31, r3
    cmpw    r0, r4
    ble-    branch_0x8010fa10
    subf    r31, r3, r4
branch_0x8010fa10:
    cmpwi   r31, 0x0
    blt-    branch_0x8010fb00
    lis     r3, 0x8038
    addi    r29, r3, 0x47d0
    addi    r27, sp, 0x58
    addi    r26, sp, 0x68
    li      r25, 0x0
    b       branch_0x8010faf8

branch_0x8010fa30:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    stw     r3, 0x80(sp)
    lwz     r0, 0x80(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x8010faf4
    lwz     r4, -0x5db8(r13)
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
    addi    r28, r3, 0x10
    addi    r4, r28, 0x0
    addi    r3, sp, 0x5c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x5c(sp)
    addi    r4, r27, 0x0
    addi    r3, sp, 0x7c
    stw     r0, 0x58(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x7c(sp)
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    stw     r0, 0x78(sp)
    addi    r3, sp, 0x64
    addi    r6, sp, 0x80
    lwz     r0, 0x78(sp)
    stw     r0, 0x68(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x64(sp)
    addi    r3, sp, 0x74
    addi    r4, sp, 0x60
    stw     r0, 0x60(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, 0x80(sp)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0xbc(r12)
    mtlr    r12
    blrl
branch_0x8010faf4:
    addi    r25, r25, 0x1
branch_0x8010faf8:
    cmpw    r25, r31
    blt+    branch_0x8010fa30
branch_0x8010fb00:
    lmw     r25, 0x94(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl setupEfbAlpha__17TBossMantaManagerFPQ26JDrama9TGraphics
setupEfbAlpha__17TBossMantaManagerFPQ26JDrama9TGraphics: # 0x8010fb14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    stw     r29, 0xc4(sp)
    mr      r29, r4
    bl      ReInitializeGX
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x53f8(rtoc)
    stw     r0, 0xbc(sp)
    lis     r30, 0x4330
    stw     r30, 0xb8(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f31, f0, f1
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfs     f2, -0x5414(rtoc)
    stw     r0, 0xb4(sp)
    fmr     f4, f31
    lfd     f1, -0x53f8(rtoc)
    fmr     f3, f2
    stw     r30, 0xb0(sp)
    fmr     f5, f2
    lfd     f0, 0xb0(sp)
    addi    r3, sp, 0x44
    lfs     f6, -0x5428(rtoc)
    fsubs   f1, f0, f1
    bl      C_MTXOrtho
    addi    r3, sp, 0x44
    li      r4, 0x1
    bl      GXSetProjection
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    addi    r3, sp, 0x14
    bl      PSMTXIdentity
    addi    r3, sp, 0x14
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetCullMode
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f3, -0x53f8(rtoc)
    stw     r0, 0xac(sp)
    lis     r31, 0xcc01
    lfs     f1, -0x5414(rtoc)
    stw     r30, 0xa8(sp)
    lfs     f0, -0x5400(rtoc)
    lfd     f2, 0xa8(sp)
    stfs    f1, -0x8000(r31)
    fsubs   f1, f2, f3
    stfs    f1, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x53f8(rtoc)
    stw     r0, 0xa4(sp)
    stw     r30, 0xa0(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f31, f0, f1
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f2, -0x53f8(rtoc)
    stw     r0, 0x9c(sp)
    lfs     f0, -0x5400(rtoc)
    stw     r30, 0x98(sp)
    lfd     f1, 0x98(sp)
    fsubs   f1, f1, f2
    stfs    f1, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f3, -0x53f8(rtoc)
    stw     r0, 0x94(sp)
    li      r3, 0x1
    lfs     f1, -0x5414(rtoc)
    stw     r30, 0x90(sp)
    lfs     f0, -0x5400(rtoc)
    lfd     f2, 0x90(sp)
    fsubs   f2, f2, f3
    stfs    f2, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    lwz     r0, -0x5440(rtoc)
    addi    r4, sp, 0x88
    li      r3, 0x4
    stw     r0, 0x84(sp)
    lwz     r0, 0x84(sp)
    stw     r0, 0x88(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    addi    r3, r29, 0x74
    li      r4, 0x0
    bl      GXSetProjection
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lwz     r31, 0xcc(sp)
    mtlr    r0
    lwz     r30, 0xc8(sp)
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd8
    blr


.globl perform__17TBossMantaManagerFUlPQ26JDrama9TGraphics
perform__17TBossMantaManagerFUlPQ26JDrama9TGraphics: # 0x8010fdc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    rlwinm. r0, r28, 0, 28, 28
    beq-    branch_0x8010fdfc
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    bl      drawMantaShadow__17TBossMantaManagerFPQ26JDrama9TGraphics
branch_0x8010fdfc:
    clrlwi. r0, r28, 31
    beq-    branch_0x8010fe1c
    addi    r3, r27, 0x88
    bl      update__Q217TBossMantaManager17TMantaBattleStateFv
    addi    r3, r27, 0x90
    bl      update__Q217TBossMantaManager18TMantaMessageStateFv
    mr      r3, r27
    bl      updateMantaEscape__17TBossMantaManagerFv
branch_0x8010fe1c:
    li      r30, 0x0
    li      r31, 0x0
branch_0x8010fe24:
    addi    r0, r31, 0x54
    lwzx    r3, r27, r0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      update__32TBossMantaAdditionalCollisionSetFUlPQ26JDrama9TGraphics
    addi    r30, r30, 0x1
    cmpwi   r30, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x8010fe24
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl updateMantaEscape__17TBossMantaManagerFv
updateMantaEscape__17TBossMantaManagerFv: # 0x8010fe5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stfd    f30, 0x40(sp)
    stfd    f29, 0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    li      r30, 0x1
    stw     r29, 0x2c(sp)
    li      r29, 0x0
    stw     r28, 0x28(sp)
    mr      r28, r3
    lwz     r4, -0x60b4(r13)
    stb     r31, -0x6680(r13)
    lfs     f0, -0x5414(rtoc)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x24(sp)
    stfs    f0, 0x20(sp)
    lfs     f31, 0x20(sp)
    lfs     f30, 0x24(sp)
    lfs     f29, -0x53f0(rtoc)
branch_0x8010fec8:
    lwz     r0, 0x74(r28)
    lfs     f1, 0x1c(sp)
    add     r3, r0, r31
    lfs     f2, 0x0(r3)
    lfs     f0, 0x4(r3)
    fsubs   f2, f2, f1
    lfs     f1, 0x8(r3)
    fsubs   f0, f0, f31
    fsubs   f3, f1, f30
    fmuls   f1, f2, f2
    fmuls   f0, f0, f0
    fmuls   f2, f3, f3
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f29
    bge-    branch_0x8010ff10
    stb     r30, -0x6680(r13)
branch_0x8010ff10:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x7
    addi    r31, r31, 0xc
    blt+    branch_0x8010fec8
    lfs     f29, -0x53ec(rtoc)
    li      r29, 0x0
    li      r31, 0x0
    li      r30, 0x1
branch_0x8010ff30:
    lwz     r0, 0x78(r28)
    lfs     f1, 0x1c(sp)
    add     r3, r0, r31
    lfs     f2, 0x0(r3)
    lfs     f0, 0x4(r3)
    fsubs   f2, f2, f1
    lfs     f1, 0x8(r3)
    fsubs   f0, f0, f31
    fsubs   f3, f1, f30
    fmuls   f1, f2, f2
    fmuls   f0, f0, f0
    fmuls   f2, f3, f3
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f29
    bge-    branch_0x8010ff78
    stb     r30, -0x6680(r13)
branch_0x8010ff78:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r31, r31, 0xc
    blt+    branch_0x8010ff30
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    mtlr    r0
    lfd     f29, 0x38(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x50
    blr


.globl drawMantaShadow__17TBossMantaManagerFPQ26JDrama9TGraphics
drawMantaShadow__17TBossMantaManagerFPQ26JDrama9TGraphics: # 0x8010ffb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x278(sp)
    stfd    f31, 0x270(sp)
    stmw    r26, 0x258(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    bl      setupEfbAlpha__17TBossMantaManagerFPQ26JDrama9TGraphics
    li      r31, 0x0
    li      r27, 0x0
    b       branch_0x801100d8

branch_0x8010ffe0:
    lwz     r3, 0x18(r28)
    lwzx    r3, r3, r27
    lwz     r0, 0xf0(r3)
    addi    r30, r3, 0x0
    andi.   r0, r0, 0x5
    bne-    branch_0x801100d0
    li      r3, 0x1
    bl      GXSetCullMode
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r26, 0x0
    b       branch_0x80110048

branch_0x8011001c:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r26, 16
    lwz     r3, 0x84(r3)
    mulli   r0, r0, 0x34
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
branch_0x80110048:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r26, 16
    lhz     r0, 0x2c(r3)
    cmplw   r4, r0
    blt+    branch_0x8011001c
    li      r3, 0x2
    bl      GXSetCullMode
    li      r3, 0x3
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r26, 0x0
    b       branch_0x801100b4

branch_0x80110088:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r26, 16
    lwz     r3, 0x84(r3)
    mulli   r0, r0, 0x34
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
branch_0x801100b4:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r26, 16
    lhz     r0, 0x2c(r3)
    cmplw   r4, r0
    blt+    branch_0x80110088
branch_0x801100d0:
    addi    r31, r31, 0x1
    addi    r27, r27, 0x4
branch_0x801100d8:
    lwz     r3, 0x38(r28)
    cmplwi  r3, 0x0
    bne-    branch_0x801100ec
    lwz     r3, 0x14(r28)
    b       branch_0x80110104

branch_0x801100ec:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r28)
    cmpw    r0, r3
    ble-    branch_0x80110100
    b       branch_0x80110104

branch_0x80110100:
    mr      r3, r0
branch_0x80110104:
    cmpw    r31, r3
    blt+    branch_0x8010ffe0
    bl      SMSGetGameRenderHeight__Fv
    mr      r27, r3
    bl      SMSGetGameRenderWidth__Fv
    addi    r5, r3, 0x0
    addi    r6, r27, 0x0
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetTexCopySrc
    bl      SMSGetGameRenderHeight__Fv
    mr      r27, r3
    bl      SMSGetGameRenderWidth__Fv
    addi    r4, r27, 0x0
    li      r5, 0x27
    li      r6, 0x0
    bl      GXSetTexCopyDst
    lwz     r3, 0x7c(r28)
    li      r4, 0x0
    bl      GXCopyTex
    bl      GXPixModeSync
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x53f8(rtoc)
    stw     r0, 0x254(sp)
    lis     r27, 0x4330
    stw     r27, 0x250(sp)
    lfd     f0, 0x250(sp)
    fsubs   f31, f0, f1
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfs     f2, -0x5414(rtoc)
    stw     r0, 0x24c(sp)
    fmr     f4, f31
    lfd     f1, -0x53f8(rtoc)
    fmr     f3, f2
    stw     r27, 0x248(sp)
    fmr     f5, f2
    lfd     f0, 0x248(sp)
    addi    r3, sp, 0x160
    lfs     f6, -0x5428(rtoc)
    fsubs   f1, f0, f1
    bl      C_MTXOrtho
    addi    r3, sp, 0x160
    li      r4, 0x1
    bl      GXSetProjection
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    bl      GXSetZCompLoc
    bl      SMSGetGameRenderHeight__Fv
    mr      r27, r3
    bl      SMSGetGameRenderWidth__Fv
    lwz     r4, 0x7c(r28)
    addi    r5, r3, 0x0
    addi    r6, r27, 0x0
    addi    r3, sp, 0x1ac
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x5414(rtoc)
    addi    r3, sp, 0x1ac
    li      r4, 0x0
    fmr     f2, f1
    li      r5, 0x0
    fmr     f3, f1
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    li      r3, 0x0
    li      r4, 0xc
    bl      GXSetTevKColorSel
    li      r3, 0x0
    li      r4, 0x1c
    bl      GXSetTevKAlphaSel
    lwz     r0, 0x8c(r28)
    cmpwi   r0, 0x2
    bne-    branch_0x80110270
    lwz     r3, 0x84(r28)
    addi    r3, r3, 0x1
    cmpwi   r3, 0xf
    ble-    branch_0x8011026c
    li      r3, 0xf
branch_0x8011026c:
    stw     r3, 0x84(r28)
branch_0x80110270:
    lwz     r0, 0x84(r28)
    lis     r31, 0x4330
    lwz     r6, 0x38(r28)
    addi    r4, sp, 0x1a8
    xoris   r0, r0, 0x8000
    stw     r0, 0x24c(sp)
    li      r3, 0x0
    lwz     r0, 0x158(r6)
    stw     r31, 0x248(sp)
    xoris   r0, r0, 0x8000
    lwz     r5, 0x108(r6)
    lfd     f3, -0x5408(rtoc)
    lfd     f0, 0x248(sp)
    xoris   r5, r5, 0x8000
    stw     r0, 0x244(sp)
    fsubs   f1, f0, f3
    lfs     f0, -0x53e4(rtoc)
    stw     r5, 0x254(sp)
    lfs     f2, -0x5410(rtoc)
    fdivs   f4, f1, f0
    stw     r31, 0x240(sp)
    lfd     f0, 0x240(sp)
    stw     r31, 0x250(sp)
    lfd     f1, 0x250(sp)
    fsubs   f0, f0, f3
    fsubs   f2, f2, f4
    fsubs   f1, f1, f3
    fmuls   f0, f4, f0
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x238(sp)
    lwz     r0, 0x23c(sp)
    stb     r0, 0x80(r28)
    lwz     r0, 0x16c(r6)
    lwz     r5, 0x11c(r6)
    xoris   r0, r0, 0x8000
    stw     r0, 0x22c(sp)
    xoris   r0, r5, 0x8000
    stw     r31, 0x228(sp)
    stw     r0, 0x234(sp)
    lfd     f0, 0x228(sp)
    stw     r31, 0x230(sp)
    fsubs   f0, f0, f3
    lfd     f1, 0x230(sp)
    fsubs   f1, f1, f3
    fmuls   f0, f4, f0
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x220(sp)
    lwz     r0, 0x224(sp)
    stb     r0, 0x81(r28)
    lwz     r0, 0x180(r6)
    lwz     r5, 0x130(r6)
    xoris   r0, r0, 0x8000
    stw     r0, 0x214(sp)
    xoris   r0, r5, 0x8000
    stw     r31, 0x210(sp)
    stw     r0, 0x21c(sp)
    lfd     f0, 0x210(sp)
    stw     r31, 0x218(sp)
    fsubs   f0, f0, f3
    lfd     f1, 0x218(sp)
    fsubs   f1, f1, f3
    fmuls   f0, f4, f0
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x208(sp)
    lwz     r0, 0x20c(sp)
    stb     r0, 0x82(r28)
    lwz     r0, 0x194(r6)
    lwz     r5, 0x144(r6)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1fc(sp)
    xoris   r0, r5, 0x8000
    stw     r31, 0x1f8(sp)
    stw     r0, 0x204(sp)
    lfd     f0, 0x1f8(sp)
    stw     r31, 0x200(sp)
    fsubs   f0, f0, f3
    lfd     f1, 0x200(sp)
    fsubs   f1, f1, f3
    fmuls   f0, f4, f0
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x1f0(sp)
    lwz     r0, 0x1f4(sp)
    stb     r0, 0x83(r28)
    lwz     r0, 0x80(r28)
    stw     r0, 0x1a8(sp)
    bl      GXSetTevKColor
    addi    r3, sp, 0x1ac
    li      r4, 0x0
    bl      GXLoadTexObj
    li      r3, 0x1
    li      r4, 0xff
    bl      GXSetDstAlpha
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x6
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0xf
    li      r6, 0xe
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    bl      GXSetColorUpdate
    addi    r3, sp, 0xd4
    bl      PSMTXIdentity
    addi    r3, sp, 0xd4
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetCullMode
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f3, -0x53f8(rtoc)
    stw     r0, 0x1ec(sp)
    lis     r27, 0xcc01
    lfs     f1, -0x5414(rtoc)
    stw     r31, 0x1e8(sp)
    lfs     f0, -0x5400(rtoc)
    lfd     f2, 0x1e8(sp)
    stfs    f1, -0x8000(r27)
    fsubs   f2, f2, f3
    stfs    f2, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x53f8(rtoc)
    stw     r0, 0x1e4(sp)
    stw     r31, 0x1e0(sp)
    lfd     f0, 0x1e0(sp)
    fsubs   f31, f0, f1
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f4, -0x53f8(rtoc)
    stw     r0, 0x1dc(sp)
    lfs     f2, -0x5400(rtoc)
    stw     r31, 0x1d8(sp)
    lfs     f1, -0x5410(rtoc)
    lfd     f3, 0x1d8(sp)
    lfs     f0, -0x5414(rtoc)
    fsubs   f3, f3, f4
    stfs    f3, -0x8000(r27)
    stfs    f31, -0x8000(r27)
    stfs    f2, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f4, -0x53f8(rtoc)
    stw     r0, 0x1d4(sp)
    addi    r3, r29, 0x74
    lfs     f2, -0x5414(rtoc)
    li      r4, 0x0
    stw     r31, 0x1d0(sp)
    lfs     f1, -0x5400(rtoc)
    lfd     f3, 0x1d0(sp)
    lfs     f0, -0x5410(rtoc)
    fsubs   f3, f3, f4
    stfs    f3, -0x8000(r27)
    stfs    f2, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f2, -0x8000(r27)
    stfs    f2, -0x8000(r27)
    stfs    f1, -0x8000(r27)
    stfs    f2, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    bl      GXSetProjection
    lmw     r26, 0x258(sp)
    lwz     r0, 0x27c(sp)
    lfd     f31, 0x270(sp)
    addi    sp, sp, 0x278
    mtlr    r0
    blr


.globl createEnemyInstance__17TBossMantaManagerFv
createEnemyInstance__17TBossMantaManagerFv: # 0x80110664
    mflr    r0
    li      r3, 0x1a8
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80110694
    lis     r3, 0x8038
    addi    r4, r3, 0x47e8
    addi    r3, r31, 0x0
    bl      __ct__10TBossMantaFPCc
branch_0x80110694:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__17TBossMantaManagerFv
createModelData__17TBossMantaManagerFv: # 0x801106ac
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x4648
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__17TBossMantaManagerFv
loadAfter__17TBossMantaManagerFv: # 0x801106e0
    mflr    r0
    lis     r5, 0x803c
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stmw    r25, 0x6c(sp)
    li      r26, 0x0
    addi    r31, r3, 0x0
    addi    r30, r26, 0x0
    subi    r29, r5, 0x2f98
    subi    r28, r4, 0x2f98
    li      r27, 0x1
branch_0x80110714:
    addi    r0, r26, 0xf8
    clrlwi  r5, r0, 16
    add     r25, r28, r5
    lbz     r0, 0x0(r25)
    add     r3, r29, r30
    lwz     r4, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80110740
    lwz     r3, -0x5fe0(r13)
    bl      load__18JPAResourceManagerFPCcUs
    stb     r27, 0x0(r25)
branch_0x80110740:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x5
    addi    r30, r30, 0x4
    blt+    branch_0x80110714
    lis     r4, 0x803c
    lis     r3, 0x8040
    subi    r27, r4, 0x2f84
    subi    r28, r3, 0x2f98
    li      r26, 0x0
    li      r30, 0x0
    li      r29, 0x1
branch_0x8011076c:
    addi    r0, r26, 0x1c7
    clrlwi  r5, r0, 16
    add     r25, r28, r5
    lbz     r0, 0x0(r25)
    add     r3, r27, r30
    lwz     r4, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80110798
    lwz     r3, -0x5fe0(r13)
    bl      load__18JPAResourceManagerFPCcUs
    stb     r29, 0x0(r25)
branch_0x80110798:
    addi    r26, r26, 0x1
    cmpwi   r26, 0xa
    addi    r30, r30, 0x4
    blt+    branch_0x8011076c
    lis     r3, 0x8038
    lfs     f31, -0x5414(rtoc)
    addi    r29, r3, 0x47f4
    li      r25, 0x0
    li      r30, 0x0
branch_0x801107bc:
    addi    r5, r29, 0x0
    crxor   6, 6, 6
    addi    r6, r25, 0x0
    addi    r3, sp, 0x28
    li      r4, 0x40
    bl      snprintf
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x28
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x28
    mtlr    r12
    blrl
    lwz     r0, 0x74(r31)
    addi    r25, r25, 0x1
    lfs     f1, 0x18(r3)
    cmpwi   r25, 0x7
    add     r4, r0, r30
    lfs     f0, 0x10(r3)
    addi    r30, r30, 0xc
    stfs    f0, 0x0(r4)
    stfs    f31, 0x4(r4)
    stfs    f1, 0x8(r4)
    blt+    branch_0x801107bc
    lwz     r3, 0x78(r31)
    li      r0, 0x0
    lfs     f0, -0x53e0(rtoc)
    stfs    f0, 0x0(r3)
    lfs     f1, -0x5414(rtoc)
    stfs    f1, 0x4(r3)
    lfs     f0, -0x53dc(rtoc)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x78(r31)
    lfs     f0, -0x53d8(rtoc)
    stfsu   f0, 0xc(r3)
    stfs    f1, 0x4(r3)
    lfs     f0, -0x53d4(rtoc)
    stfs    f0, 0x8(r3)
    stw     r0, 0x8c(r31)
    stw     r0, 0x94(r31)
    stw     r0, 0x84(r31)
    stb     r0, -0x6680(r13)
    lmw     r25, 0x6c(sp)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl load__17TBossMantaManagerFR20JSUMemoryInputStream
load__17TBossMantaManagerFR20JSUMemoryInputStream: # 0x8011088c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x1fc
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801108cc
    lis     r3, 0x8038
    addi    r4, r3, 0x4800
    addi    r3, r29, 0x0
    bl      __ct__16TBossMantaParamsFPCc
branch_0x801108cc:
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


.globl __ct__17TBossMantaManagerFPCc
__ct__17TBossMantaManagerFPCc: # 0x801108f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    lwz     r30, 0x8(sp)
    subi    r0, r3, 0x2f5c
    stw     r0, 0x0(r30)
    li      r0, 0x0
    stw     r0, 0x7c(r30)
    stw     r0, 0x80(r30)
    stw     r30, 0x88(r30)
    stw     r0, 0x8c(r30)
    stw     r30, 0x90(r30)
    stw     r0, 0x94(r30)
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r31, r3, 16
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    mullw   r0, r0, r31
    rotlwi  r3, r0, 0
    li      r4, 0x20
    bl      __nwa__FUli
    stw     r3, 0x7c(r30)
    li      r3, 0x5c
    bl      __nwa__FUl
    lis     r4, 0x8002
    addi    r31, r4, 0x10dc
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x7
    bl      __construct_new_array
    stw     r3, 0x74(r30)
    li      r3, 0x20
    bl      __nwa__FUl
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x2
    bl      __construct_new_array
    stw     r3, 0x78(r30)
    mr      r3, r30
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__29TBossMantaAdditionalCollisionFUlPQ26JDrama9TGraphics
perform__29TBossMantaAdditionalCollisionFUlPQ26JDrama9TGraphics: # 0x801109cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stfd    f29, 0x48(sp)
    stfd    f28, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x80110b40
    lfs     f31, -0x5410(rtoc)
    li      r30, 0x0
    lfs     f28, -0x53c8(rtoc)
    li      r31, 0x0
    lfs     f29, -0x5414(rtoc)
    lfs     f30, -0x5418(rtoc)
    b       branch_0x80110b34

branch_0x80110a24:
    lwz     r3, 0x44(r29)
    lwzx    r3, r3, r31
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80110a44
    li      r0, 0x1
    b       branch_0x80110a48

branch_0x80110a44:
    li      r0, 0x0
branch_0x80110a48:
    clrlwi. r0, r0, 24
    beq-    branch_0x80110b2c
    lwz     r5, -0x60b4(r13)
    addi    r3, sp, 0x1c
    addi    r4, r3, 0x0
    lfs     f0, 0x0(r5)
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x20(sp)
    lfs     f0, 0x8(r5)
    stfs    f0, 0x24(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    fcmpo   cr0, f1, f28
    cror    2, 0, 2
    bne-    branch_0x80110ac4
    stfs    f29, 0x24(sp)
    stfs    f29, 0x20(sp)
    stfs    f29, 0x1c(sp)
    b       branch_0x80110ad8

branch_0x80110ac4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x1c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80110ad8:
    lfs     f0, 0x1c(sp)
    addi    r3, r29, 0x0
    li      r4, 0xe
    fmuls   f0, f0, f30
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x20(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x20(sp)
    lfs     f0, 0x24(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x24(sp)
    lfs     f0, 0x20(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x20(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, r29, 0x0
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x1c
    lfs     f1, -0x53c4(rtoc)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
branch_0x80110b2c:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80110b34:
    lhz     r0, 0x48(r29)
    cmpw    r30, r0
    blt+    branch_0x80110a24
branch_0x80110b40:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lfd     f28, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x60
    blr


.globl receiveMessage__29TBossMantaAdditionalCollisionFP9THitActorUl
receiveMessage__29TBossMantaAdditionalCollisionFP9THitActorUl: # 0x80110b6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80110b8c
    li      r3, 0x0
    b       branch_0x80110b9c

branch_0x80110b8c:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80110b9c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl update__32TBossMantaAdditionalCollisionSetFUlPQ26JDrama9TGraphics
update__32TBossMantaAdditionalCollisionSetFUlPQ26JDrama9TGraphics: # 0x80110bac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    stfd    f26, 0xc0(sp)
    stfd    f25, 0xb8(sp)
    stfd    f24, 0xb0(sp)
    stfd    f23, 0xa8(sp)
    stmw    r27, 0x94(sp)
    mr      r31, r3
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80110d54
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80110c10
    li      r0, 0x0
    stw     r0, 0xc(r31)
    b       branch_0x80110d54

branch_0x80110c10:
    li      r29, 0x0
    li      r30, 0x0
branch_0x80110c18:
    lwzx    r3, r31, r30
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x80110c18
    lwz     r30, -0x6690(r13)
    lwz     r3, 0xc(r31)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r30, -0x668c(r13)
    lwz     r3, 0xc(r31)
    add     r4, r4, r0
    lfs     f31, 0xc(r4)
    lfs     f30, 0x1c(r4)
    lfs     f29, 0x2c(r4)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r30, -0x6688(r13)
    lwz     r3, 0xc(r31)
    add     r4, r4, r0
    lfs     f28, 0xc(r4)
    lfs     f27, 0x1c(r4)
    lfs     f26, 0x2c(r4)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r30, -0x6684(r13)
    lwz     r3, 0xc(r31)
    add     r4, r4, r0
    lfs     f25, 0xc(r4)
    lfs     f24, 0x1c(r4)
    lfs     f23, 0x2c(r4)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    fsubs   f2, f28, f31
    lwz     r3, 0x58(r3)
    fsubs   f1, f27, f30
    lfs     f3, -0x53c0(rtoc)
    add     r4, r3, r0
    fsubs   f0, f26, f29
    fmadds  f2, f3, f2, f31
    lwz     r3, 0x0(r31)
    lfs     f5, 0xc(r4)
    fmadds  f1, f3, f1, f30
    fmadds  f0, f3, f0, f29
    lfs     f7, 0x1c(r4)
    fsubs   f4, f25, f31
    lfs     f8, 0x2c(r4)
    fsubs   f3, f24, f30
    stfsu   f2, 0x10(r3)
    fsubs   f2, f5, f31
    stfs    f1, 0x4(r3)
    fsubs   f1, f7, f30
    stfs    f0, 0x8(r3)
    fsubs   f0, f23, f29
    lfs     f6, -0x53bc(rtoc)
    lwz     r3, 0x4(r31)
    fmadds  f5, f6, f4, f31
    fmadds  f4, f6, f3, f30
    fmadds  f3, f6, f0, f29
    stfsu   f5, 0x10(r3)
    fsubs   f0, f8, f29
    fmadds  f2, f6, f2, f31
    stfs    f4, 0x4(r3)
    fmadds  f1, f6, f1, f30
    stfs    f3, 0x8(r3)
    fmadds  f0, f6, f0, f29
    lwz     r3, 0x8(r31)
    stfsu   f2, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f0, 0x8(r3)
branch_0x80110d54:
    lmw     r27, 0x94(sp)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lfd     f26, 0xc0(sp)
    lfd     f25, 0xb8(sp)
    lfd     f24, 0xb0(sp)
    lfd     f23, 0xa8(sp)
    addi    sp, sp, 0xf0
    blr


.globl adapt__32TBossMantaAdditionalCollisionSetFP10TBossManta
adapt__32TBossMantaAdditionalCollisionSetFP10TBossManta: # 0x80110d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r4, 0xc(r3)
    lwz     r4, 0xc(r3)
    lfs     f0, -0x53d0(rtoc)
    lfs     f1, 0x24(r4)
    lwz     r3, 0x0(r3)
    fmuls   f1, f0, f1
    stfs    f1, 0x50(r3)
    lfs     f0, -0x543c(rtoc)
    stfs    f0, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lwz     r4, 0xc(r31)
    lfs     f0, -0x53cc(rtoc)
    lfs     f1, 0x24(r4)
    lwz     r3, 0x4(r31)
    fmuls   f1, f0, f1
    stfs    f1, 0x50(r3)
    lfs     f0, -0x543c(rtoc)
    stfs    f0, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lwz     r4, 0xc(r31)
    lfs     f0, -0x53cc(rtoc)
    lfs     f1, 0x24(r4)
    lwz     r3, 0x8(r31)
    fmuls   f1, f0, f1
    stfs    f1, 0x50(r3)
    lfs     f0, -0x543c(rtoc)
    stfs    f0, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0xc(r31)
    lwz     r3, 0x0(r31)
    stw     r0, 0x68(r3)
    lwz     r0, 0xc(r31)
    lwz     r3, 0x4(r31)
    stw     r0, 0x68(r3)
    lwz     r0, 0xc(r31)
    lwz     r3, 0x8(r31)
    stw     r0, 0x68(r3)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl __ct__32TBossMantaAdditionalCollisionSetFv
__ct__32TBossMantaAdditionalCollisionSetFv: # 0x80110e60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r21, 0x5c(sp)
    addi    r23, r3, 0x0
    li      r29, 0x0
    lis     r3, 0x803c
    subi    r30, r3, 0x2f08
    lis     r3, 0x8038
    addi    r28, r3, 0x4198
    addi    r25, r30, 0x24
    addi    r27, sp, 0x38
    addi    r26, sp, 0x30
    li      r24, 0x0
    lis     r31, 0x800
    stw     r29, 0xc(r23)
branch_0x80110ea0:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x80110f78
    stw     r22, 0x50(sp)
    addi    r4, r28, 0x620
    lwz     r3, 0x50(sp)
    bl      __ct__9THitActorFPCc
    lwz     r21, 0x50(sp)
    li      r0, 0x0
    addi    r4, r31, 0x4
    stw     r30, 0x0(r21)
    addi    r3, r21, 0x0
    li      r5, 0x1
    stw     r25, 0x20(r21)
    lis     r6, 0x8000
    stw     r0, 0x68(r21)
    lfs     f1, -0x5414(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r21)
    addi    r3, r28, 0x638
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r21)
    lwz     r4, -0x5db8(r13)
    lwz     r21, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r21)
    addi    r4, r3, 0x0
    addi    r3, r21, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x638
    mtlr    r12
    blrl
    addi    r21, r3, 0x10
    addi    r4, r21, 0x0
    addi    r3, sp, 0x4c
    bl      end__Q27JGadget26TList_pointer_P9THitActor_Fv
    lwz     r0, 0x4c(sp)
    addi    r4, r21, 0x0
    addi    r5, r27, 0x0
    stw     r0, 0x48(sp)
    addi    r3, sp, 0x34
    addi    r6, sp, 0x50
    lwz     r0, 0x48(sp)
    stw     r0, 0x38(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x34(sp)
    addi    r4, r26, 0x0
    addi    r3, sp, 0x44
    stw     r0, 0x30(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
branch_0x80110f78:
    addi    r24, r24, 0x1
    stwx    r22, r23, r29
    cmpwi   r24, 0x3
    addi    r29, r29, 0x4
    blt+    branch_0x80110ea0
    mr      r3, r23
    lmw     r21, 0x5c(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl end__Q27JGadget26TList_pointer_P9THitActor_Fv
end__Q27JGadget26TList_pointer_P9THitActor_Fv: # 0x80110fa4
    stwu    sp, -0x20(sp)
    addi    r0, r4, 0x8
    stw     r0, 0x14(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(sp)
    addi    sp, sp, 0x20
    stw     r0, 0x0(r3)
    blr


.globl update__Q217TBossMantaManager18TMantaMessageStateFv
update__Q217TBossMantaManager18TMantaMessageStateFv: # 0x80110fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    stw     r30, 0x90(sp)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80111134
    bge-    branch_0x80111164
    cmpwi   r0, 0x0
    beq-    branch_0x80111004
    bge-    branch_0x8011109c
    b       branch_0x80111164


.incbin "./baserom/code/Text_0x80005600.bin", 0x10ba00, 0x80111004 - 0x80111000
branch_0x80111004:
    lwz     r3, 0x0(r31)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80111024
    b       branch_0x80111028

branch_0x80111024:
    lwz     r30, 0x1c(r3)
branch_0x80111028:
    lbz     r0, -0x66a8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011106c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66a4(r13)
    subi    r0, r3, 0x2d30
    lis     r4, 0x8011
    stw     r0, -0x66a4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x30f0
    addi    r4, r4, 0x117c
    subi    r3, r13, 0x66a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66a8(r13)
branch_0x8011106c:
    subi    r0, r13, 0x66a4
    cmplw   r30, r0
    bne-    branch_0x80111164
    lwz     r3, -0x6048(r13)
    li      r4, 0xc
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    b       branch_0x80111164

branch_0x8011109c:
    lwz     r6, 0x0(r31)
    li      r8, 0x0
    li      r3, 0x0
    lwz     r5, 0x38(r6)
    li      r9, 0x0
    b       branch_0x801110d4

branch_0x801110b4:
    lwz     r4, 0x18(r6)
    lwzx    r4, r4, r3
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x801110cc
    addi    r9, r9, 0x1
branch_0x801110cc:
    addi    r8, r8, 0x1
    addi    r3, r3, 0x4
branch_0x801110d4:
    cmplwi  r5, 0x0
    bne-    branch_0x801110e4
    lwz     r7, 0x14(r6)
    b       branch_0x80111100

branch_0x801110e4:
    lwz     r4, 0x38(r6)
    lwz     r7, 0x14(r6)
    lbz     r0, 0xa4(r4)
    cmpw    r0, r7
    ble-    branch_0x801110fc
    b       branch_0x80111100

branch_0x801110fc:
    mr      r7, r0
branch_0x80111100:
    cmpw    r8, r7
    blt+    branch_0x801110b4
    cmpwi   r9, 0x32
    ble-    branch_0x80111164
    lwz     r3, -0x6048(r13)
    li      r4, 0xd
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    b       branch_0x80111164

branch_0x80111134:
    lwz     r3, 0x0(r31)
    lwz     r0, 0x8c(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x80111164
    lwz     r3, -0x6048(r13)
    li      r4, 0xe
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x80111164:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    addi    sp, sp, 0x98
    blr


.globl __dt__16TNerveMantaSpawnFv
__dt__16TNerveMantaSpawnFv: # 0x8011117c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801111c0
    lis     r3, 0x803c
    subi    r0, r3, 0x2d30
    stw     r0, 0x0(r31)
    beq-    branch_0x801111b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x801111b0:
    extsh.  r0, r4
    ble-    branch_0x801111c0
    mr      r3, r31
    bl      __dl__FPv
branch_0x801111c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl update__Q217TBossMantaManager17TMantaBattleStateFv
update__Q217TBossMantaManager17TMantaBattleStateFv: # 0x801111d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    mr      r31, r3
    stw     r30, 0xd8(sp)
    stw     r29, 0xd4(sp)
    lwz     r0, 0x4(r3)
    lis     r3, 0x8038
    addi    r30, r3, 0x4198
    cmpwi   r0, 0x2
    beq-    branch_0x801113a8
    bge-    branch_0x8011121c
    cmpwi   r0, 0x0
    beq-    branch_0x8011122c
    bge-    branch_0x801112ac
    b       branch_0x801114d0

branch_0x8011121c:
    cmpwi   r0, 0x4
    beq-    branch_0x801114d0
    bge-    branch_0x801114d0
    b       branch_0x80111484

branch_0x8011122c:
    lis     r4, 0x5
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x7
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801114d0
    li      r0, 0x0
    lwz     r3, -0x6048(r13)
    sth     r0, 0xc8(sp)
    addi    r0, sp, 0xc8
    addi    r4, r30, 0x680
    stw     r0, 0x8(sp)
    li      r5, 0x0
    li      r6, -0x1
    lfs     f1, -0x5414(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r3, 0x0(r31)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    bl      initNthGeneration__10TBossMantaFi
    li      r3, 0x7
    li      r4, 0xa
    bl      stopTrackBGMs__5MSBgmFUcUl
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    b       branch_0x801114d0

branch_0x801112ac:
    lwz     r6, 0x0(r31)
    li      r9, 0x1
    li      r8, 0x0
    lwz     r5, 0x38(r6)
    li      r3, 0x0
    b       branch_0x801112f4

branch_0x801112c4:
    lwz     r4, 0x18(r6)
    lwzx    r4, r4, r3
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x801112ec
    lwz     r0, 0x18c(r4)
    cmpwi   r0, 0x4
    beq-    branch_0x801112ec
    li      r9, 0x0
    b       branch_0x80111328

branch_0x801112ec:
    addi    r8, r8, 0x1
    addi    r3, r3, 0x4
branch_0x801112f4:
    cmplwi  r5, 0x0
    bne-    branch_0x80111304
    lwz     r7, 0x14(r6)
    b       branch_0x80111320

branch_0x80111304:
    lwz     r4, 0x38(r6)
    lwz     r7, 0x14(r6)
    lbz     r0, 0xa4(r4)
    cmpw    r0, r7
    ble-    branch_0x8011131c
    b       branch_0x80111320

branch_0x8011131c:
    mr      r7, r0
branch_0x80111320:
    cmpw    r8, r7
    blt+    branch_0x801112c4
branch_0x80111328:
    clrlwi. r0, r9, 24
    beq-    branch_0x801114d0
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x80111360

branch_0x8011133c:
    lwz     r3, 0x18(r4)
    lwzx    r3, r3, r30
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x80111358
    li      r4, 0x5
    bl      initNthGeneration__10TBossMantaFi
branch_0x80111358:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x80111360:
    lwz     r4, 0x0(r31)
    lwz     r3, 0x38(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x80111378
    lwz     r3, 0x14(r4)
    b       branch_0x80111390

branch_0x80111378:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r4)
    cmpw    r0, r3
    ble-    branch_0x8011138c
    b       branch_0x80111390

branch_0x8011138c:
    mr      r3, r0
branch_0x80111390:
    cmpw    r29, r3
    blt+    branch_0x8011133c
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    b       branch_0x801114d0

branch_0x801113a8:
    lwz     r6, 0x0(r31)
    li      r9, 0x1
    li      r8, 0x0
    lwz     r5, 0x38(r6)
    li      r3, 0x0
    b       branch_0x801113f0

branch_0x801113c0:
    lwz     r4, 0x18(r6)
    lwzx    r4, r4, r3
    lwz     r0, 0x18c(r4)
    cmpwi   r0, 0x5
    bne-    branch_0x801113e8
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x801113e8
    li      r9, 0x0
    b       branch_0x80111424

branch_0x801113e8:
    addi    r8, r8, 0x1
    addi    r3, r3, 0x4
branch_0x801113f0:
    cmplwi  r5, 0x0
    bne-    branch_0x80111400
    lwz     r7, 0x14(r6)
    b       branch_0x8011141c

branch_0x80111400:
    lwz     r4, 0x38(r6)
    lwz     r7, 0x14(r6)
    lbz     r0, 0xa4(r4)
    cmpw    r0, r7
    ble-    branch_0x80111418
    b       branch_0x8011141c

branch_0x80111418:
    mr      r7, r0
branch_0x8011141c:
    cmpw    r8, r7
    blt+    branch_0x801113c0
branch_0x80111424:
    clrlwi. r0, r9, 24
    beq-    branch_0x801114d0
    li      r3, 0x7
    li      r4, 0xa
    bl      stopTrackBGMs__5MSBgmFUcUl
    li      r0, 0x0
    lwz     r3, -0x6044(r13)
    lis     r30, 0x1
    stw     r0, -0x667c(r13)
    subi    r4, r30, 0x7671
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80111474
    subi    r3, r30, 0x7671
    li      r4, 0x0
    li      r5, 0x0
    subi    r6, r13, 0x667c
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80111474:
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    b       branch_0x801114d0

branch_0x80111484:
    lwz     r0, -0x667c(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x801114d0
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x690
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x690
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x64(r3)
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x801114d0:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    lwz     r29, 0xd4(sp)
    addi    sp, sp, 0xe0
    blr


.globl updateAttractor__10TBossMantaFv
updateAttractor__10TBossMantaFv: # 0x801114ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stfd    f31, 0x160(sp)
    stfd    f30, 0x158(sp)
    stfd    f29, 0x150(sp)
    stfd    f28, 0x148(sp)
    stfd    f27, 0x140(sp)
    stfd    f26, 0x138(sp)
    stfd    f25, 0x130(sp)
    stfd    f24, 0x128(sp)
    stw     r31, 0x124(sp)
    stw     r30, 0x120(sp)
    mr      r30, r3
    stw     r29, 0x11c(sp)
    stw     r28, 0x118(sp)
    lwz     r3, 0x158(r3)
    lwz     r0, 0x15c(r30)
    stw     r3, 0x108(sp)
    stw     r0, 0x10c(sp)
    lwz     r0, 0x160(r30)
    stw     r0, 0x110(sp)
    lfs     f1, 0x108(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x10c(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x110(sp)
    lfs     f4, -0x5414(rtoc)
    stfs    f4, 0x10c(sp)
    lfs     f1, 0x108(sp)
    lfs     f3, 0x110(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x53c8(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801115bc
    stfs    f4, 0x110(sp)
    stfs    f4, 0x10c(sp)
    stfs    f4, 0x108(sp)
    b       branch_0x801115ec

branch_0x801115bc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5410(rtoc)
    lfs     f0, 0x108(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x110(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x110(sp)
branch_0x801115ec:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1a8(r3)
    mr      r3, r30
    lfs     f0, 0x108(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x110(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x110(sp)
    lwz     r4, 0x170(r30)
    lwz     r0, 0x174(r30)
    stw     r4, 0xfc(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0x178(r30)
    stw     r0, 0x104(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1d0(r3)
    li      r31, 0x0
    lfs     f0, 0xfc(sp)
    li      r29, 0x0
    fmuls   f0, f0, f1
    stfs    f0, 0xfc(sp)
    lfs     f0, 0x100(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x100(sp)
    lfs     f0, 0x104(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x104(sp)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    lfs     f0, 0xfc(sp)
    stw     r3, 0xf0(sp)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0xf8(sp)
    lfs     f1, 0xf0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    lfs     f1, 0xf4(sp)
    lfs     f0, 0x100(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xf4(sp)
    lfs     f1, 0xf8(sp)
    lfs     f0, 0x104(sp)
    lfs     f26, -0x5414(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xf8(sp)
    stfs    f26, 0xf4(sp)
    lfs     f28, -0x53c8(rtoc)
    lfs     f29, -0x5410(rtoc)
    lfs     f30, -0x53e8(rtoc)
    lfs     f31, -0x5434(rtoc)
    lfs     f27, -0x53b8(rtoc)
    b       branch_0x801119bc

branch_0x801116ec:
    lwz     r0, 0xf0(r30)
    lwz     r3, 0x18(r3)
    clrlwi. r0, r0, 31
    lwzx    r28, r3, r29
    bne-    branch_0x801119b4
    lwz     r0, 0xf0(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x801119b4
    lha     r3, 0x7c(r28)
    lha     r0, 0x7c(r30)
    cmpw    r3, r0
    beq-    branch_0x801119b4
    lwz     r0, 0xf0(sp)
    mr      r3, r30
    lwz     r4, 0xf4(sp)
    stw     r0, 0xe4(sp)
    lwz     r0, 0xf8(sp)
    stw     r4, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r4, 0x170(r28)
    lwz     r0, 0x174(r28)
    stw     r4, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x178(r28)
    stw     r0, 0xe0(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1e4(r3)
    lfs     f0, 0xd8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xdc(sp)
    lfs     f0, 0xe0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe0(sp)
    lwz     r3, 0x10(r28)
    lwz     r0, 0x14(r28)
    lfs     f0, 0xd8(sp)
    stw     r3, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0xd4(sp)
    lfs     f1, 0xcc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0xdc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd0(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xe0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0xcc(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xe4(sp)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0xd0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xd4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xec(sp)
    stfs    f26, 0xe8(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    lfs     f2, 0xec(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f24, f2, f0
    fcmpo   cr0, f24, f26
    cror    2, 0, 2
    bne-    branch_0x80111838
    fmr     f0, f24
    b       branch_0x80111854

branch_0x80111838:
    frsqrte f1, f24
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f30, f1
    fnmsubs  f0, f24, f0, f31
    fmuls   f0, f1, f0
    fmuls   f0, f24, f0
branch_0x80111854:
    fcmpo   cr0, f27, f0
    bge-    branch_0x801119b4
    fcmpo   cr0, f24, f26
    cror    2, 0, 2
    bne-    branch_0x80111870
    fmr     f25, f24
    b       branch_0x8011188c

branch_0x80111870:
    frsqrte f1, f24
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f30, f1
    fnmsubs  f0, f24, f0, f31
    fmuls   f0, f1, f0
    fmuls   f25, f24, f0
branch_0x8011188c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1f8(r3)
    fcmpo   cr0, f25, f0
    bge-    branch_0x801119b4
    fcmpo   cr0, f24, f28
    cror    2, 0, 2
    bne-    branch_0x801118c8
    stfs    f26, 0xec(sp)
    stfs    f26, 0xe8(sp)
    stfs    f26, 0xe4(sp)
    b       branch_0x801118f8

branch_0x801118c8:
    fmr     f1, f24
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f29, f1
    lfs     f0, 0xe4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
branch_0x801118f8:
    lfs     f1, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xec(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f25, f2, f0
    fcmpo   cr0, f25, f26
    cror    2, 0, 2
    bne-    branch_0x80111928
    b       branch_0x80111944

branch_0x80111928:
    frsqrte f1, f25
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f30, f1
    fnmsubs  f0, f25, f0, f31
    fmuls   f0, f1, f0
    fmuls   f25, f25, f0
branch_0x80111944:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1bc(r3)
    lfs     f0, 0xe4(sp)
    fdivs   f1, f1, f25
    fmuls   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
    lfs     f1, 0x108(sp)
    lfs     f0, 0xe4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0xe8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10c(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0xec(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x110(sp)
branch_0x801119b4:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x801119bc:
    lwz     r3, 0x70(r30)
    lwz     r4, 0x38(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x801119d4
    lwz     r4, 0x14(r3)
    b       branch_0x801119ec

branch_0x801119d4:
    lbz     r0, 0xa4(r4)
    lwz     r4, 0x14(r3)
    cmpw    r0, r4
    ble-    branch_0x801119e8
    b       branch_0x801119ec

branch_0x801119e8:
    mr      r4, r0
branch_0x801119ec:
    cmpw    r31, r4
    blt+    branch_0x801116ec
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    lwz     r4, -0x60b4(r13)
    stw     r3, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0xc8(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f3, -0x5414(rtoc)
    stfs    f3, 0xc4(sp)
    lfs     f0, 0xc0(sp)
    lfs     f6, 0xc8(sp)
    lfs     f5, 0xc4(sp)
    fmuls   f1, f0, f0
    fmuls   f2, f6, f6
    fmuls   f0, f5, f5
    fadds   f0, f1, f0
    fadds   f4, f2, f0
    fcmpo   cr0, f4, f3
    cror    2, 0, 2
    bne-    branch_0x80111a78
    b       branch_0x80111a9c

branch_0x80111a78:
    frsqrte f3, f4
    lfs     f2, -0x53e8(rtoc)
    lfs     f0, -0x5434(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80111a9c:
    lbz     r0, -0x6680(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80111ab4
    lwz     r0, 0x18c(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x80111ae8
branch_0x80111ab4:
    lfs     f0, -0x53b4(rtoc)
    fcmpo   cr0, f4, f0
    bge-    branch_0x80111ae8
    lfs     f1, 0x108(sp)
    lfs     f0, 0xc0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fadds   f0, f0, f5
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x110(sp)
    fadds   f0, f0, f6
    stfs    f0, 0x110(sp)
branch_0x80111ae8:
    lfs     f0, -0x5414(rtoc)
    addi    r3, r30, 0x0
    addi    r4, sp, 0xb0
    stfs    f0, 0x10c(sp)
    bl      getIntoGraphVec__10TBossMantaFPQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x80111b64
    lfs     f0, -0x5414(rtoc)
    stfs    f0, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    lfs     f1, -0x53b0(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(sp)
    lfs     f0, 0xb4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(sp)
    lfs     f0, 0xb8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb8(sp)
    lfs     f1, 0x108(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0xb4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10c(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0xb8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x110(sp)
branch_0x80111b64:
    lwz     r3, 0x108(sp)
    lwz     r0, 0x10c(sp)
    stw     r3, 0x164(r30)
    stw     r0, 0x168(r30)
    lwz     r0, 0x110(sp)
    stw     r0, 0x16c(r30)
    lwz     r0, 0x16c(sp)
    lfd     f31, 0x160(sp)
    lfd     f30, 0x158(sp)
    lfd     f29, 0x150(sp)
    lfd     f28, 0x148(sp)
    lfd     f27, 0x140(sp)
    lfd     f26, 0x138(sp)
    lfd     f25, 0x130(sp)
    lfd     f24, 0x128(sp)
    lwz     r31, 0x124(sp)
    lwz     r30, 0x120(sp)
    lwz     r29, 0x11c(sp)
    lwz     r28, 0x118(sp)
    addi    sp, sp, 0x168
    mtlr    r0
    blr


.globl getPolluteRadius__10TBossMantaFv
getPolluteRadius__10TBossMantaFv: # 0x80111bbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x18c(r3)
    cmpwi   r0, 0x4
    bge-    branch_0x80111be8
    cmpwi   r0, 0x0
    bge-    branch_0x80111bf4
    b       branch_0x80111c20

branch_0x80111be8:
    cmpwi   r0, 0x6
    bge-    branch_0x80111c20
    b       branch_0x80111c18

branch_0x80111bf4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xb8(r3)
    lfs     f0, 0x24(r31)
    fmuls   f1, f1, f0
    b       branch_0x80111c24

branch_0x80111c18:
    lfs     f1, -0x543c(rtoc)
    b       branch_0x80111c24

branch_0x80111c20:
    lfs     f1, -0x5414(rtoc)
branch_0x80111c24:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__15TNerveMantaMoveFv
__dt__15TNerveMantaMoveFv: # 0x80111c38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80111c7c
    lis     r3, 0x803c
    subi    r0, r3, 0x2d10
    stw     r0, 0x0(r31)
    beq-    branch_0x80111c6c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80111c6c:
    extsh.  r0, r4
    ble-    branch_0x80111c7c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80111c7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__10TBossMantaFv
calcRootMatrix__10TBossMantaFv: # 0x80111c94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    mr      r30, r3
    lwz     r3, 0x154(r3)
    cmpwi   r3, 0x31
    bge-    branch_0x80111cc0
    addi    r0, r3, 0x1
    stw     r0, 0x154(r30)
branch_0x80111cc0:
    lfs     f0, 0x10(r30)
    mr      r3, r30
    lfs     f3, -0x5414(rtoc)
    stfs    f0, 0x70(sp)
    lfs     f1, -0x5410(rtoc)
    lfs     f0, 0x14(r30)
    lwz     r31, -0x6690(r13)
    stfs    f0, 0x80(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x90(sp)
    lfs     f0, 0x174(r30)
    lfs     f6, 0x178(r30)
    fmuls   f5, f3, f0
    lfs     f4, 0x170(r30)
    fmuls   f2, f3, f6
    fmsubs  f0, f1, f6, f5
    fmsubs  f2, f3, f4, f2
    fnmsubs  f4, f1, f4, f5
    stfs    f0, 0x64(sp)
    stfs    f2, 0x74(sp)
    stfs    f4, 0x84(sp)
    stfs    f3, 0x68(sp)
    stfs    f1, 0x78(sp)
    stfs    f3, 0x88(sp)
    lfs     f0, 0x170(r30)
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x174(r30)
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x178(r30)
    stfs    f0, 0x8c(sp)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    lfs     f1, 0x14(r30)
    add     r4, r3, r0
    lfs     f2, 0x2c(r4)
    mr      r3, r30
    lfs     f0, 0xc(r4)
    stfs    f0, 0x17c(r30)
    stfs    f1, 0x180(r30)
    stfs    f2, 0x184(r30)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    addi    r31, sp, 0x64
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl control__10TBossMantaFv
control__10TBossMantaFv: # 0x80111db4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stw     r31, 0x16c(sp)
    mr      r31, r3
    lwz     r3, 0x1a0(r3)
    cmpwi   r3, 0x0
    ble-    branch_0x80111de0
    subi    r0, r3, 0x1
    stw     r0, 0x1a0(r31)
branch_0x80111de0:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80111f60
    lwz     r5, 0x164(r31)
    addi    r3, sp, 0x134
    lwz     r0, 0x168(r31)
    mr      r4, r3
    lfs     f31, -0x5410(rtoc)
    stw     r5, 0x134(sp)
    stw     r0, 0x138(sp)
    lwz     r0, 0x16c(r31)
    stw     r0, 0x13c(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x53c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80111e40
    lfs     f0, -0x5414(rtoc)
    stfs    f0, 0x13c(sp)
    stfs    f0, 0x138(sp)
    stfs    f0, 0x134(sp)
    b       branch_0x80111e54

branch_0x80111e40:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x134
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80111e54:
    lis     r3, 0x8038
    lfs     f2, 0x13c(sp)
    addi    r8, r3, 0x4328
    lfs     f4, 0x134(sp)
    lwz     r5, 0x0(r8)
    lis     r3, 0x8038
    lwz     r4, 0x4(r8)
    li      r0, 0x19
    addi    r3, r3, 0x4358
    stw     r5, 0x110(sp)
    addi    r6, sp, 0x110
    lfs     f6, -0x53ac(rtoc)
    mtctr   r0
    stw     r4, 0x114(sp)
    lfs     f1, -0x53e8(rtoc)
    addi    r5, sp, 0x3c
    lwz     r7, 0x8(r8)
    subi    r4, r3, 0x8
    lwz     r0, 0xc(r8)
    lfs     f0, -0x5410(rtoc)
    stw     r7, 0x118(sp)
    stw     r0, 0x11c(sp)
    lwz     r3, 0x10(r8)
    lwz     r0, 0x14(r8)
    stw     r3, 0x120(sp)
    stw     r0, 0x124(sp)
    lfs     f3, 0x170(r31)
    lfs     f5, 0x178(r31)
    fmuls   f2, f3, f2
    lwz     r0, 0x18c(r31)
    slwi    r0, r0, 2
    fmsubs  f3, f5, f4, f2
    lfsx    f4, r6, r0
    fsubs   f2, f0, f4
    fnmsubs  f0, f6, f3, f1
    stfs    f0, 0x148(sp)
    lfs     f0, 0x148(sp)
    lfs     f1, 0x150(r31)
    fmuls   f0, f4, f0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x150(r31)
branch_0x80111ef8:
    lwzu    r3, 0x8(r4)
    lwz     r0, 0x4(r4)
    stwu    r3, 0x8(r5)
    stw     r0, 0x4(r5)
    bdnz+      branch_0x80111ef8
    lwz     r0, 0x154(r31)
    addi    r3, sp, 0x44
    lfs     f2, 0x150(r31)
    slwi    r0, r0, 2
    lfs     f1, -0x5414(rtoc)
    lfsx    f0, r3, r0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x80111f34
    b       branch_0x80111f48

branch_0x80111f34:
    lfs     f1, -0x5410(rtoc)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80111f44
    b       branch_0x80111f48

branch_0x80111f44:
    fmr     f1, f0
branch_0x80111f48:
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80111f78
    bl      setMotionBlendRatio__12MActorAnmBckFf
    b       branch_0x80111f78

branch_0x80111f60:
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80111f78
    lfs     f1, -0x5414(rtoc)
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x80111f78:
    lwz     r4, 0x170(r31)
    mr      r3, r31
    lwz     r0, 0x174(r31)
    stw     r4, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r0, 0x178(r31)
    stw     r0, 0x160(sp)
    lfs     f1, 0x190(r31)
    lfs     f0, 0x158(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x158(sp)
    lfs     f0, 0x15c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x15c(sp)
    lfs     f0, 0x160(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x160(sp)
    lwz     r4, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r4, 0x14c(sp)
    stw     r0, 0x150(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x154(sp)
    lfs     f0, 0x150(sp)
    stfs    f0, 0x15c(sp)
    lwz     r4, 0x158(sp)
    lwz     r0, 0x15c(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x160(sp)
    stw     r0, 0xb4(r31)
    bl      control__10TLiveActorFv
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lwz     r31, 0x16c(sp)
    mtlr    r0
    addi    sp, sp, 0x178
    blr


.globl initNthGeneration__10TBossMantaFi
initNthGeneration__10TBossMantaFi: # 0x80112010
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    addi    r9, r5, 0x4340
    lis     r7, 0x803f
    stwu    sp, -0xc0(sp)
    lis     r5, 0x803c
    stw     r31, 0xbc(sp)
    addi    r31, r7, 0x30d8
    stw     r30, 0xb8(sp)
    addi    r30, r3, 0x0
    li      r3, 0x0
    lwz     r6, 0x0(r9)
    lwz     r0, 0x4(r9)
    stw     r6, 0x8c(sp)
    subi    r6, r5, 0x2fb0
    addi    r5, sp, 0x8c
    stw     r0, 0x90(sp)
    li      r0, 0x31
    lwz     r8, 0x8(r9)
    lwz     r7, 0xc(r9)
    stw     r8, 0x94(sp)
    stw     r7, 0x98(sp)
    lwz     r8, 0x10(r9)
    lwz     r7, 0x14(r9)
    stw     r8, 0x9c(sp)
    stw     r7, 0xa0(sp)
    stw     r4, 0x18c(r30)
    lwz     r4, 0x18c(r30)
    slwi    r4, r4, 2
    add     r4, r6, r4
    lfs     f0, 0x0(r4)
    stfs    f0, 0x2c(r30)
    stfs    f0, 0x24(r30)
    lwz     r4, 0x18c(r30)
    slwi    r4, r4, 2
    lfsx    f0, r5, r4
    stfs    f0, 0x28(r30)
    stw     r3, 0x19c(r30)
    lfs     f0, -0x53e8(rtoc)
    stfs    f0, 0x150(r30)
    stw     r0, 0x154(r30)
    lwz     r0, 0x18c(r30)
    cmpwi   r0, 0x3
    beq-    branch_0x80112384
    bge-    branch_0x801120e0
    cmpwi   r0, 0x1
    beq-    branch_0x801121f4
    bge-    branch_0x801122bc
    cmpwi   r0, 0x0
    bge-    branch_0x801120f0
    b       branch_0x801125d4

branch_0x801120e0:
    cmpwi   r0, 0x5
    beq-    branch_0x80112514
    bge-    branch_0x801125d4
    b       branch_0x8011244c

branch_0x801120f0:
    lbz     r0, -0x6698(r13)
    extsb.  r0, r0
    bne-    branch_0x80112130
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6694(r13)
    subi    r0, r3, 0x2d50
    lis     r3, 0x8011
    stw     r0, -0x6694(r13)
    addi    r4, r3, 0x27b8
    subi    r3, r13, 0x6694
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6698(r13)
branch_0x80112130:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x6694
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80112190
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x80112190:
    subi    r5, r13, 0x66b4
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x801121c8
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x801121c8
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x801121c8:
    li      r0, 0x258
    stw     r0, 0x188(r30)
    li      r0, 0x0
    lfs     f0, -0x5418(rtoc)
    stfs    f0, 0x190(r30)
    lfs     f0, -0x53a8(rtoc)
    stfs    f0, 0x194(r30)
    lfs     f0, -0x5428(rtoc)
    stfs    f0, 0x198(r30)
    stw     r0, 0x1a0(r30)
    b       branch_0x801125d4

branch_0x801121f4:
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80112234
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x80112234:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x66b4
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5408(rtoc)
    stw     r0, 0xb4(sp)
    lis     r3, 0x4330
    lfs     f1, -0x5420(rtoc)
    li      r0, 0x78
    stw     r3, 0xb0(sp)
    lfs     f0, -0x543c(rtoc)
    lfd     f2, 0xb0(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xa8(sp)
    lwz     r3, 0xac(sp)
    addi    r3, r3, 0x258
    stw     r3, 0x188(r30)
    lfs     f0, -0x5418(rtoc)
    stfs    f0, 0x190(r30)
    lfs     f0, -0x53a8(rtoc)
    stfs    f0, 0x194(r30)
    lfs     f0, -0x5428(rtoc)
    stfs    f0, 0x198(r30)
    stw     r0, 0x1a0(r30)
    b       branch_0x801125d4

branch_0x801122bc:
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x801122fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x801122fc:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x66b4
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5408(rtoc)
    stw     r0, 0xac(sp)
    lis     r3, 0x4330
    lfs     f1, -0x5420(rtoc)
    li      r0, 0x78
    stw     r3, 0xa8(sp)
    lfs     f0, -0x543c(rtoc)
    lfd     f2, 0xa8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r3, 0xb4(sp)
    addi    r3, r3, 0xc8
    stw     r3, 0x188(r30)
    lfs     f0, -0x5434(rtoc)
    stfs    f0, 0x190(r30)
    lfs     f0, -0x53a8(rtoc)
    stfs    f0, 0x194(r30)
    lfs     f0, -0x5428(rtoc)
    stfs    f0, 0x198(r30)
    stw     r0, 0x1a0(r30)
    b       branch_0x801125d4

branch_0x80112384:
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x801123c4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x801123c4:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x66b4
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5408(rtoc)
    stw     r0, 0xac(sp)
    lis     r3, 0x4330
    lfs     f1, -0x5420(rtoc)
    li      r0, 0x78
    stw     r3, 0xa8(sp)
    lfs     f0, -0x543c(rtoc)
    lfd     f2, 0xa8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r3, 0xb4(sp)
    addi    r3, r3, 0x64
    stw     r3, 0x188(r30)
    lfs     f0, -0x53a4(rtoc)
    stfs    f0, 0x190(r30)
    lfs     f0, -0x53a0(rtoc)
    stfs    f0, 0x194(r30)
    lfs     f0, -0x539c(rtoc)
    stfs    f0, 0x198(r30)
    stw     r0, 0x1a0(r30)
    b       branch_0x801125d4

branch_0x8011244c:
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011248c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x8011248c:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x66b4
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5408(rtoc)
    stw     r0, 0xac(sp)
    lis     r3, 0x4330
    lfs     f1, -0x5420(rtoc)
    li      r0, 0x168
    stw     r3, 0xa8(sp)
    lfs     f0, -0x543c(rtoc)
    lfd     f2, 0xa8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r3, 0xb4(sp)
    addi    r3, r3, 0x64
    stw     r3, 0x188(r30)
    lfs     f0, -0x5398(rtoc)
    stfs    f0, 0x190(r30)
    lfs     f0, -0x5394(rtoc)
    stfs    f0, 0x194(r30)
    lfs     f0, -0x5390(rtoc)
    stfs    f0, 0x198(r30)
    stw     r0, 0x1a0(r30)
    b       branch_0x801125d4

branch_0x80112514:
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80112554
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x80112554:
    lwz     r3, 0x8c(r30)
    li      r31, 0x0
    subi    r0, r13, 0x66b4
    stw     r31, 0x8(r3)
    stw     r31, 0x20(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r31, 0x1c(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5408(rtoc)
    stw     r0, 0xac(sp)
    lis     r0, 0x4330
    lfs     f1, -0x5420(rtoc)
    stw     r0, 0xa8(sp)
    lfs     f0, -0x543c(rtoc)
    lfd     f2, 0xa8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r3, 0xb4(sp)
    addi    r0, r3, 0x64
    stw     r0, 0x188(r30)
    lfs     f0, -0x5434(rtoc)
    stfs    f0, 0x190(r30)
    lfs     f0, -0x5394(rtoc)
    stfs    f0, 0x194(r30)
    lfs     f0, -0x538c(rtoc)
    stfs    f0, 0x198(r30)
    stw     r31, 0x1a0(r30)
branch_0x801125d4:
    lwz     r0, 0x18c(r30)
    cmpwi   r0, 0x2
    bgt-    branch_0x80112600
    lfs     f0, -0x5414(rtoc)
    mr      r3, r30
    stfs    f0, 0x50(r30)
    stfs    f0, 0x54(r30)
    stfs    f0, 0x58(r30)
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x80112628

branch_0x80112600:
    lfs     f1, -0x5388(rtoc)
    mr      r3, r30
    lfs     f0, 0x24(r30)
    fmuls   f1, f1, f0
    stfs    f1, 0x50(r30)
    lfs     f0, -0x543c(rtoc)
    stfs    f0, 0x54(r30)
    stfs    f1, 0x58(r30)
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
branch_0x80112628:
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r0, 0xf0(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r30)
    lwz     r0, 0x18c(r30)
    cmpwi   r0, 0x2
    bgt-    branch_0x801127a0
    li      r0, 0x2
    lwz     r6, 0x70(r30)
    li      r5, 0x0
    mtctr   r0
    addi    r3, r5, 0x0
branch_0x80112660:
    addi    r0, r3, 0x54
    lwzx    r4, r6, r0
    lwz     r4, 0xc(r4)
    cmplwi  r4, 0x0
    beq-    branch_0x80112688
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x80112688
    li      r0, 0x1
    b       branch_0x8011268c

branch_0x80112688:
    li      r0, 0x0
branch_0x8011268c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801126a8
    add     r3, r6, r3
    lwz     r3, 0x54(r3)
    mr      r4, r30
    bl      adapt__32TBossMantaAdditionalCollisionSetFP10TBossManta
    b       branch_0x801127a0

branch_0x801126a8:
    addi    r0, r3, 0x58
    lwzx    r4, r6, r0
    addi    r3, r3, 0x4
    lwz     r4, 0xc(r4)
    cmplwi  r4, 0x0
    beq-    branch_0x801126d4
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x801126d4
    li      r0, 0x1
    b       branch_0x801126d8

branch_0x801126d4:
    li      r0, 0x0
branch_0x801126d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801126f4
    add     r3, r6, r3
    lwz     r3, 0x54(r3)
    mr      r4, r30
    bl      adapt__32TBossMantaAdditionalCollisionSetFP10TBossManta
    b       branch_0x801127a0

branch_0x801126f4:
    addi    r0, r3, 0x58
    lwzx    r4, r6, r0
    addi    r3, r3, 0x4
    addi    r5, r5, 0x1
    lwz     r4, 0xc(r4)
    cmplwi  r4, 0x0
    beq-    branch_0x80112724
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x80112724
    li      r0, 0x1
    b       branch_0x80112728

branch_0x80112724:
    li      r0, 0x0
branch_0x80112728:
    clrlwi. r0, r0, 24
    bne-    branch_0x80112744
    add     r3, r6, r3
    lwz     r3, 0x54(r3)
    mr      r4, r30
    bl      adapt__32TBossMantaAdditionalCollisionSetFP10TBossManta
    b       branch_0x801127a0

branch_0x80112744:
    addi    r0, r3, 0x58
    lwzx    r4, r6, r0
    addi    r3, r3, 0x4
    addi    r5, r5, 0x1
    lwz     r4, 0xc(r4)
    cmplwi  r4, 0x0
    beq-    branch_0x80112774
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x80112774
    li      r0, 0x1
    b       branch_0x80112778

branch_0x80112774:
    li      r0, 0x0
branch_0x80112778:
    clrlwi. r0, r0, 24
    bne-    branch_0x80112794
    add     r3, r6, r3
    lwz     r3, 0x54(r3)
    mr      r4, r30
    bl      adapt__32TBossMantaAdditionalCollisionSetFP10TBossManta
    b       branch_0x801127a0

branch_0x80112794:
    addi    r5, r5, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x80112660
branch_0x801127a0:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    addi    sp, sp, 0xc0
    blr


.globl __dt__21TNerveMantaAppearDemoFv
__dt__21TNerveMantaAppearDemoFv: # 0x801127b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801127fc
    lis     r3, 0x803c
    subi    r0, r3, 0x2d50
    stw     r0, 0x0(r31)
    beq-    branch_0x801127ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x801127ec:
    extsh.  r0, r4
    ble-    branch_0x801127fc
    mr      r3, r31
    bl      __dl__FPv
branch_0x801127fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__10TBossMantaFP9THitActorUl
receiveMessage__10TBossMantaFP9THitActorUl: # 0x80112814
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x80112850
    lwz     r0, 0x68(r4)
    lwz     r4, -0x6088(r13)
    slwi    r0, r0, 1
    add     r4, r4, r0
    lhz     r0, 0x414(r4)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80112850
    bl      collidedWithWater__10TBossMantaFv
    clrlwi  r3, r3, 24
    b       branch_0x80112854

branch_0x80112850:
    li      r3, 0x0
branch_0x80112854:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl collidedWithWater__10TBossMantaFv
collidedWithWater__10TBossMantaFv: # 0x80112864
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    stw     r28, 0x90(sp)
    lwz     r0, 0x1a0(r3)
    lis     r3, 0x803f
    addi    r30, r3, 0x30d8
    cmpwi   r0, 0x0
    ble-    branch_0x801128a0
    li      r28, 0x0
    b       branch_0x80112924

branch_0x801128a0:
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x801128b4
    b       branch_0x801128b8

branch_0x801128b4:
    lwz     r29, 0x1c(r3)
branch_0x801128b8:
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x801128f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x801128f8:
    subi    r0, r13, 0x66b4
    cmplw   r29, r0
    li      r28, 0x1
    beq-    branch_0x80112924
    bl      theNerve__19TNerveMantaHitWaterFv
    mr      r29, r3
    lwz     r3, 0x8c(r31)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r29
    beq-    branch_0x80112924
    li      r28, 0x0
branch_0x80112924:
    clrlwi. r0, r28, 24
    beq-    branch_0x80112ccc
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80112940
    b       branch_0x80112944

branch_0x80112940:
    lwz     r29, 0x1c(r3)
branch_0x80112944:
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80112984
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x80112984:
    subi    r0, r13, 0x66b4
    cmplw   r29, r0
    bne-    branch_0x80112998
    li      r6, 0x0
    b       branch_0x80112a08

branch_0x80112998:
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x801129ac
    b       branch_0x801129b0

branch_0x801129ac:
    lwz     r29, 0x1c(r3)
branch_0x801129b0:
    lbz     r0, -0x66b0(r13)
    extsb.  r0, r0
    bne-    branch_0x801129f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66ac(r13)
    subi    r0, r3, 0x2d20
    lis     r3, 0x8011
    stw     r0, -0x66ac(r13)
    addi    r4, r3, 0x2d4c
    subi    r3, r13, 0x66ac
    addi    r5, r30, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b0(r13)
branch_0x801129f0:
    subi    r0, r13, 0x66ac
    cmplw   r29, r0
    bne-    branch_0x80112a04
    li      r6, 0x1
    b       branch_0x80112a08

branch_0x80112a04:
    li      r6, 0x0
branch_0x80112a08:
    lis     r3, 0x8038
    addi    r5, r3, 0x4310
    lwz     r4, 0x0(r5)
    addi    r3, sp, 0x70
    lwz     r0, 0x4(r5)
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x18c(r31)
    lwz     r4, 0x19c(r31)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    cmpw    r4, r0
    bge-    branch_0x80112cc4
    li      r0, 0x1e
    cmpwi   r6, 0x0
    stw     r0, 0x1a0(r31)
    bne-    branch_0x80112adc
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x66b0(r13)
    extsb.  r0, r0
    bne-    branch_0x80112ab8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66ac(r13)
    subi    r0, r3, 0x2d20
    lis     r3, 0x8011
    stw     r0, -0x66ac(r13)
    addi    r4, r3, 0x2d4c
    subi    r3, r13, 0x66ac
    addi    r5, r30, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b0(r13)
branch_0x80112ab8:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x66ac
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80112ad0
    stw     r0, 0x1c(r4)
branch_0x80112ad0:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x80112adc:
    lwz     r4, 0x19c(r31)
    lis     r3, 0x8038
    addi    r5, r3, 0x4310
    addi    r0, r4, 0x1
    stw     r0, 0x19c(r31)
    addi    r3, sp, 0x50
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    stw     r4, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r5, 0x18c(r31)
    lwz     r0, 0x19c(r31)
    slwi    r4, r5, 2
    lwzx    r3, r3, r4
    cmpw    r0, r3
    bne-    branch_0x80112c3c
    cmpwi   r5, 0x4
    blt-    branch_0x80112bc0
    lbz     r0, -0x66a0(r13)
    extsb.  r0, r0
    bne-    branch_0x80112b84
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x669c(r13)
    subi    r0, r3, 0x2d40
    lis     r3, 0x8011
    stw     r0, -0x669c(r13)
    addi    r4, r3, 0x2cf0
    subi    r3, r13, 0x669c
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66a0(r13)
branch_0x80112b84:
    subi    r5, r13, 0x669c
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80112cc4
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x80112cc4
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    b       branch_0x80112cc4

branch_0x80112bc0:
    lbz     r0, -0x66a8(r13)
    extsb.  r0, r0
    bne-    branch_0x80112c00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66a4(r13)
    subi    r0, r3, 0x2d30
    lis     r3, 0x8011
    stw     r0, -0x66a4(r13)
    addi    r4, r3, 0x117c
    subi    r3, r13, 0x66a4
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66a8(r13)
branch_0x80112c00:
    subi    r5, r13, 0x66a4
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80112cc4
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x80112cc4
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    b       branch_0x80112cc4

branch_0x80112c3c:
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x7
    bge-    branch_0x80112cc4
    lbz     r0, -0x66b8(r13)
    extsb.  r0, r0
    bne-    branch_0x80112c8c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66b4(r13)
    subi    r0, r3, 0x2d10
    lis     r3, 0x8011
    stw     r0, -0x66b4(r13)
    addi    r4, r3, 0x1c38
    subi    r3, r13, 0x66b4
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b8(r13)
branch_0x80112c8c:
    subi    r5, r13, 0x66b4
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80112cc4
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x80112cc4
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x80112cc4:
    li      r3, 0x1
    b       branch_0x80112cd0

branch_0x80112ccc:
    li      r3, 0x0
branch_0x80112cd0:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    blr


.globl __dt__16TNerveMantaDeathFv
__dt__16TNerveMantaDeathFv: # 0x80112cf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80112d34
    lis     r3, 0x803c
    subi    r0, r3, 0x2d40
    stw     r0, 0x0(r31)
    beq-    branch_0x80112d24
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80112d24:
    extsh.  r0, r4
    ble-    branch_0x80112d34
    mr      r3, r31
    bl      __dl__FPv
branch_0x80112d34:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19TNerveMantaHitWaterFv
__dt__19TNerveMantaHitWaterFv: # 0x80112d4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80112d90
    lis     r3, 0x803c
    subi    r0, r3, 0x2d20
    stw     r0, 0x0(r31)
    beq-    branch_0x80112d80
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80112d80:
    extsh.  r0, r4
    ble-    branch_0x80112d90
    mr      r3, r31
    bl      __dl__FPv
branch_0x80112d90:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl moveObject__10TBossMantaFv
moveObject__10TBossMantaFv: # 0x80112da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stfd    f29, 0x48(sp)
    stfd    f28, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r3
    bl      moveObject__10TLiveActorFv
    lwz     r4, -0x5448(rtoc)
    addi    r3, sp, 0x20
    lhz     r0, -0x5444(rtoc)
    stw     r4, 0x20(sp)
    sth     r0, 0x24(sp)
    lwz     r0, 0x18c(r29)
    lbzx    r0, r3, r0
    cmplwi  r0, 0x0
    beq-    branch_0x80112e24
    mr      r3, r29
    bl      getPolluteRadius__10TBossMantaFv
    lfs     f0, 0x10(r29)
    fmr     f4, f1
    lfs     f3, 0x18(r29)
    li      r4, 0x1
    fmr     f1, f0
    lfs     f2, 0x14(r29)
    lwz     r3, -0x62f0(r13)
    bl      stamp__17TPollutionManagerFUsffff
branch_0x80112e24:
    lfs     f31, -0x5410(rtoc)
    li      r30, 0x0
    lfs     f28, -0x53c8(rtoc)
    li      r31, 0x0
    lfs     f29, -0x5414(rtoc)
    lfs     f30, -0x5418(rtoc)
    b       branch_0x80112f50

branch_0x80112e40:
    lwz     r3, 0x44(r29)
    lwzx    r3, r3, r31
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80112e60
    li      r0, 0x1
    b       branch_0x80112e64

branch_0x80112e60:
    li      r0, 0x0
branch_0x80112e64:
    clrlwi. r0, r0, 24
    beq-    branch_0x80112f48
    lwz     r5, -0x60b4(r13)
    addi    r3, sp, 0x14
    addi    r4, r3, 0x0
    lfs     f0, 0x0(r5)
    stfs    f0, 0x14(sp)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x18(sp)
    lfs     f0, 0x8(r5)
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x10(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x18(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    fcmpo   cr0, f1, f28
    cror    2, 0, 2
    bne-    branch_0x80112ee0
    stfs    f29, 0x1c(sp)
    stfs    f29, 0x18(sp)
    stfs    f29, 0x14(sp)
    b       branch_0x80112ef4

branch_0x80112ee0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x14
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x80112ef4:
    lfs     f0, 0x14(sp)
    addi    r3, r29, 0x0
    li      r4, 0xe
    fmuls   f0, f0, f30
    stfs    f0, 0x14(sp)
    lfs     f0, 0x18(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x18(sp)
    lfs     f0, 0x1c(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x18(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x18(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, r29, 0x0
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x14
    lfs     f1, -0x53c4(rtoc)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
branch_0x80112f48:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80112f50:
    lhz     r0, 0x48(r29)
    cmpw    r30, r0
    blt+    branch_0x80112e40
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lfd     f28, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x60
    blr


.globl init__10TBossMantaFP12TLiveManager
init__10TBossMantaFP12TLiveManager: # 0x80112f88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    stw     r28, 0x98(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x8038
    addi    r31, r3, 0x4198
    lwz     r29, 0x8(sp)
    stw     r4, 0x70(r29)
    mr      r4, r29
    lwz     r3, 0x70(r29)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80112fe4
    lwz     r4, 0x70(r29)
    addi    r3, r28, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80112fe4:
    lwz     r30, 0x8(sp)
    addi    r4, r31, 0x4a4
    li      r5, 0x0
    stw     r28, 0x78(r30)
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    subi    r4, rtoc, 0x5384
    lwz     r3, -0x70b0(r13)
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r30)
    stw     r3, 0x0(r4)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8011304c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x80113050

branch_0x8011304c:
    li      r0, 0x1
branch_0x80113050:
    lwz     r29, 0x8(sp)
    lis     r3, 0x800
    addi    r4, r3, 0x4
    stb     r0, 0x13c(r29)
    addi    r3, r29, 0x0
    li      r5, 0x1
    lfs     f0, -0x537c(rtoc)
    lis     r6, 0x8000
    stfs    f0, 0xc0(r29)
    lfs     f1, -0x5414(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lfs     f0, -0x5414(rtoc)
    mr      r3, r29
    stfs    f0, 0x170(r29)
    stfs    f0, 0x174(r29)
    lfs     f0, -0x5410(rtoc)
    stfs    f0, 0x178(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x638
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x638
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x64
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x64(sp)
    addi    r3, sp, 0x8c
    addi    r4, sp, 0x60
    stw     r0, 0x60(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x8c(sp)
    addi    r5, sp, 0x70
    addi    r4, r30, 0x0
    stw     r0, 0x88(sp)
    addi    r3, sp, 0x6c
    addi    r6, sp, 0x8
    lwz     r0, 0x88(sp)
    stw     r0, 0x70(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lha     r0, 0x7c(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x801131d0
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    subi    r4, rtoc, 0x5378
    lwz     r30, 0xb0(r3)
    mr      r3, r30
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, -0x6690(r13)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6a8
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, -0x668c(r13)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6b4
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, -0x6688(r13)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x6c0
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, -0x6684(r13)
    li      r30, 0x0
    addi    r31, r30, 0x0
    lwz     r29, 0x70(r29)
branch_0x801131a0:
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x801131b8
    mr      r3, r28
    bl      __ct__32TBossMantaAdditionalCollisionSetFv
branch_0x801131b8:
    addi    r30, r30, 0x1
    addi    r0, r31, 0x54
    cmpwi   r30, 0x8
    stwx    r28, r29, r0
    addi    r31, r31, 0x4
    blt+    branch_0x801131a0
branch_0x801131d0:
    lwz     r4, 0x8(sp)
    li      r0, 0x0
    lwz     r3, 0xf0(r4)
    ori     r3, r3, 0x8
    stw     r3, 0xf0(r4)
    lwz     r3, 0xf0(r4)
    rlwinm  r3, r3, 0, 24, 22
    stw     r3, 0xf0(r4)
    stw     r0, 0x1a4(r4)
    lfs     f0, -0x53e8(rtoc)
    stfs    f0, 0x150(r4)
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl getIntoGraphVec__10TBossMantaFPQ29JGeometry8TVec3_f_
getIntoGraphVec__10TBossMantaFPQ29JGeometry8TVec3_f_: # 0x8011321c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stfd    f29, 0x118(sp)
    stw     r31, 0x114(sp)
    stw     r30, 0x110(sp)
    li      r30, 0x0
    stw     r29, 0x10c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x108(sp)
    mr      r28, r3
    lwz     r3, 0x124(r3)
    lfs     f31, -0x5414(rtoc)
    lwz     r31, 0x0(r3)
branch_0x8011325c:
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r3, sp, 0xc0
    bl      indexToPoint__9TGraphWebCFi
    lfs     f3, 0xc0(sp)
    mr      r4, r31
    lfs     f2, 0x10(r28)
    addi    r3, sp, 0xa8
    lfs     f1, 0xc8(sp)
    lfs     f0, 0x18(r28)
    fsubs   f30, f3, f2
    addi    r5, r30, 0x1
    fsubs   f29, f1, f0
    bl      indexToPoint__9TGraphWebCFi
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r3, sp, 0xb4
    bl      indexToPoint__9TGraphWebCFi
    lfs     f1, 0xbc(sp)
    lfs     f0, 0xb0(sp)
    lfs     f2, 0xb4(sp)
    fsubs   f1, f1, f0
    lfs     f0, 0xa8(sp)
    fsubs   f4, f2, f0
    fmuls   f0, f30, f1
    fmsubs  f0, f29, f4, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x80113364
    lfs     f3, -0x5410(rtoc)
    fmuls   f0, f31, f1
    fmsubs  f2, f3, f1, f31
    fmsubs  f1, f31, f4, f0
    fnmsubs  f0, f3, f4, f31
    stfs    f2, 0x0(r29)
    stfs    f1, 0x4(r29)
    stfs    f0, 0x8(r29)
    lfs     f1, 0x0(r29)
    lfs     f0, 0x4(r29)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r29)
    fmuls   f1, f0, f0
    lfs     f0, -0x53c8(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8011332c
    stfs    f31, 0x8(r29)
    stfs    f31, 0x4(r29)
    stfs    f31, 0x0(r29)
    b       branch_0x8011335c

branch_0x8011332c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5410(rtoc)
    lfs     f0, 0x0(r29)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r29)
    lfs     f0, 0x4(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r29)
    lfs     f0, 0x8(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r29)
branch_0x8011335c:
    li      r3, 0x1
    b       branch_0x80113480

branch_0x80113364:
    addi    r30, r30, 0x1
    cmpwi   r30, 0xc
    blt+    branch_0x8011325c
    addi    r4, r31, 0x0
    addi    r3, sp, 0x9c
    li      r5, 0xc
    bl      indexToPoint__9TGraphWebCFi
    lfs     f3, 0x9c(sp)
    mr      r4, r31
    lfs     f2, 0x10(r28)
    addi    r3, sp, 0x84
    lfs     f1, 0xa4(sp)
    lfs     f0, 0x18(r28)
    fsubs   f29, f3, f2
    li      r5, 0x0
    fsubs   f30, f1, f0
    bl      indexToPoint__9TGraphWebCFi
    addi    r4, r31, 0x0
    addi    r3, sp, 0x90
    li      r5, 0xc
    bl      indexToPoint__9TGraphWebCFi
    lfs     f1, 0x98(sp)
    lfs     f0, 0x8c(sp)
    lfs     f2, 0x90(sp)
    fsubs   f1, f1, f0
    lfs     f0, 0x84(sp)
    lfs     f4, -0x5414(rtoc)
    fsubs   f5, f2, f0
    fmuls   f0, f29, f1
    fmsubs  f0, f30, f5, f0
    fcmpo   cr0, f0, f4
    bge-    branch_0x8011347c
    lfs     f3, -0x5410(rtoc)
    fmuls   f0, f4, f1
    fmsubs  f2, f3, f1, f4
    fmsubs  f1, f4, f5, f0
    fnmsubs  f0, f3, f5, f4
    stfs    f2, 0x0(r29)
    stfs    f1, 0x4(r29)
    stfs    f0, 0x8(r29)
    lfs     f1, 0x0(r29)
    lfs     f0, 0x4(r29)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r29)
    fmuls   f1, f0, f0
    lfs     f0, -0x53c8(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80113444
    stfs    f4, 0x8(r29)
    stfs    f4, 0x4(r29)
    stfs    f4, 0x0(r29)
    b       branch_0x80113474

branch_0x80113444:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5410(rtoc)
    lfs     f0, 0x0(r29)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r29)
    lfs     f0, 0x4(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r29)
    lfs     f0, 0x8(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r29)
branch_0x80113474:
    li      r3, 0x1
    b       branch_0x80113480

branch_0x8011347c:
    li      r3, 0x0
branch_0x80113480:
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    mtlr    r0
    lfd     f29, 0x118(sp)
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    lwz     r29, 0x10c(sp)
    lwz     r28, 0x108(sp)
    addi    sp, sp, 0x130
    blr


.globl __ct__10TBossMantaFPCc
__ct__10TBossMantaFPCc: # 0x801134ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x2e64
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f1, -0x5414(rtoc)
    stfs    f1, 0x158(r31)
    stfs    f1, 0x15c(r31)
    stfs    f1, 0x160(r31)
    stfs    f1, 0x164(r31)
    stfs    f1, 0x168(r31)
    stfs    f1, 0x16c(r31)
    stfs    f1, 0x170(r31)
    stfs    f1, 0x174(r31)
    lfs     f0, -0x5410(rtoc)
    stfs    f0, 0x178(r31)
    stfs    f1, 0x17c(r31)
    stfs    f1, 0x180(r31)
    stfs    f1, 0x184(r31)
    stw     r0, 0x188(r31)
    stw     r0, 0x18c(r31)
    stfs    f1, 0x190(r31)
    stfs    f1, 0x194(r31)
    stfs    f1, 0x198(r31)
    stw     r0, 0x19c(r31)
    stw     r0, 0x1a0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveMantaAppearDemoCFP24TSpineBase_10TLiveActor_
execute__21TNerveMantaAppearDemoCFP24TSpineBase_10TLiveActor_: # 0x80113548
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    lwz     r31, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r31, 0x0
    bne-    branch_0x80113660
    lfs     f0, -0x5414(rtoc)
    mr      r3, r30
    stfs    f0, 0x10(r30)
    stfs    f0, 0x14(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xe0(r3)
    stfs    f0, 0x18(r30)
    lfs     f1, -0x5414(rtoc)
    stfs    f1, 0x170(r30)
    stfs    f1, 0x174(r30)
    lfs     f0, -0x5370(rtoc)
    stfs    f0, 0x178(r30)
    stfs    f1, 0x158(r30)
    stfs    f1, 0x15c(r30)
    lfs     f0, -0x536c(rtoc)
    stfs    f0, 0x160(r30)
    lwz     r3, 0x74(r30)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801135d0
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x801135d0:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x78(r30)
    lwz     r3, 0xc(r3)
    lwz     r3, 0x2c(r3)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x4
    ble-    branch_0x80113600
    lwz     r3, 0xc(r3)
    lwz     r4, 0x10(r3)
    b       branch_0x80113604

branch_0x80113600:
    li      r4, 0x0
branch_0x80113604:
    lwz     r3, 0x74(r30)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80113618
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x80113618:
    lwz     r3, 0x74(r30)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80113630
    lfs     f1, -0x53e8(rtoc)
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x80113630:
    lwz     r29, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    lwz     r4, 0x18c(r30)
    lis     r3, 0x803c
    subi    r0, r3, 0x2fc8
    slwi    r3, r4, 2
    add     r3, r0, r3
    lfs     f0, 0x0(r3)
    addi    r3, r29, 0x0
    li      r4, 0x0
    fmuls   f1, f0, f1
    bl      setFrameRate__6MActorFfi
branch_0x80113660:
    cmpwi   r31, 0x2d0
    bne-    branch_0x80113674
    lis     r3, 0x8001
    addi    r3, r3, 0x2b
    bl      startBGM__5MSBgmFUl
branch_0x80113674:
    cmpwi   r31, 0x690
    bne-    branch_0x80113684
    li      r3, 0x1
    b       branch_0x801136d8

branch_0x80113684:
    lis     r31, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r31, 0x7e72
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801136b8
    subi    r3, r31, 0x7e72
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801136b8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xf4(r3)
    li      r3, 0x0
    stfs    f0, 0x190(r30)
branch_0x801136d8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl execute__16TNerveMantaDeathCFP24TSpineBase_10TLiveActor_
execute__16TNerveMantaDeathCFP24TSpineBase_10TLiveActor_: # 0x801136f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80113750
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r31, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x74(r30)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80113750
    lfs     f1, -0x5414(rtoc)
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x80113750:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x801137c4
    lwz     r3, -0x6070(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x17c
    li      r4, 0xf8
    li      r6, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lis     r31, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r31, 0x7668
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801137b0
    subi    r3, r31, 0x7668
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801137b0:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801137c4:
    lwz     r0, 0x34(sp)
    li      r3, 0x0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl execute__16TNerveMantaSpawnCFP24TSpineBase_10TLiveActor_
execute__16TNerveMantaSpawnCFP24TSpineBase_10TLiveActor_: # 0x801137e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    stw     r29, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x5
    bge-    branch_0x80113838
    lfs     f0, 0x24(r31)
    lfs     f1, -0x5368(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r31)
    lfs     f0, 0x28(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r31)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r31)
    b       branch_0x80113860

branch_0x80113838:
    lfs     f0, 0x24(r31)
    lfs     f1, -0x5364(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r31)
    lfs     f0, 0x28(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r31)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r31)
branch_0x80113860:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x80113934
    lis     r4, 0x8038
    lwz     r3, -0x6070(r13)
    addi    r9, r4, 0x42f0
    lwz     r6, 0x0(r9)
    addi    r4, sp, 0x3c
    lwz     r0, 0x4(r9)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x17c
    stw     r6, 0x3c(sp)
    li      r6, 0x0
    stw     r0, 0x40(sp)
    lwz     r8, 0x8(r9)
    lwz     r0, 0xc(r9)
    stw     r8, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x18c(r31)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lis     r4, 0x8038
    lwz     r3, -0x6044(r13)
    addi    r6, r4, 0x4300
    lwz     r5, 0x0(r6)
    addi    r4, sp, 0x2c
    lwz     r0, 0x4(r6)
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r5, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x18c(r31)
    slwi    r0, r0, 2
    lwzx    r29, r4, r0
    mr      r4, r29
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80113920
    addi    r3, r29, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80113920:
    lwz     r4, 0x18c(r31)
    addi    r5, r31, 0x10
    lwz     r3, 0x70(r31)
    addi    r4, r4, 0x1
    bl      spawn__17TBossMantaManagerFiRCQ29JGeometry8TVec3_f_
branch_0x80113934:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x1e
    bne-    branch_0x8011395c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x80113960

branch_0x8011395c:
    li      r3, 0x0
branch_0x80113960:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl execute__19TNerveMantaHitWaterCFP24TSpineBase_10TLiveActor_
execute__19TNerveMantaHitWaterCFP24TSpineBase_10TLiveActor_: # 0x8011397c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r24, 0x90(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80113a68
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    lwz     r27, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    lwz     r4, 0x18c(r31)
    lis     r3, 0x803c
    subi    r0, r3, 0x2fc8
    slwi    r3, r4, 2
    add     r3, r0, r3
    lfs     f0, 0x0(r3)
    addi    r3, r27, 0x0
    li      r4, 0x0
    fmuls   f1, f0, f1
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801139f0
    lfs     f1, -0x5414(rtoc)
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x801139f0:
    lis     r4, 0x8038
    lwz     r3, -0x6044(r13)
    addi    r6, r4, 0x4290
    lwz     r5, 0x0(r6)
    addi    r4, sp, 0x74
    lwz     r0, 0x4(r6)
    stw     r5, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r5, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r5, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r5, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r5, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x18c(r31)
    slwi    r0, r0, 2
    lwzx    r27, r4, r0
    mr      r4, r27
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80113a68
    addi    r3, r27, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80113a68:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lis     r4, 0x8038
    lwz     r30, 0xcc(r3)
    li      r0, 0x9
    addi    r3, r4, 0x42a8
    mtctr   r0
    addi    r5, sp, 0x24
    subi    r4, r3, 0x8
branch_0x80113a98:
    lwzu    r3, 0x8(r4)
    lwz     r0, 0x4(r4)
    stwu    r3, 0x8(r5)
    stw     r0, 0x4(r5)
    bdnz+      branch_0x80113a98
    addi    r27, sp, 0x2c
    li      r25, 0x0
    li      r29, 0x0
branch_0x80113ab8:
    lwz     r0, 0x18c(r31)
    mulli   r0, r0, 0xc
    add     r0, r0, r29
    lwzx    r0, r27, r0
    cmpwi   r0, 0x0
    ble-    branch_0x80113b18
    add     r26, r27, r29
    li      r24, 0x0
    li      r28, 0x0
    b       branch_0x80113b10

branch_0x80113ae0:
    lwz     r0, 0x18c(r31)
    addi    r5, r31, 0x17c
    lwz     r3, -0x6070(r13)
    add     r7, r31, r28
    mulli   r0, r0, 0xc
    lwzx    r4, r26, r0
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmpwi   r25, 0x2
    beq-    branch_0x80113b18
    addi    r24, r24, 0x1
    addi    r28, r28, 0x1a8
branch_0x80113b10:
    cmpw    r24, r30
    blt+    branch_0x80113ae0
branch_0x80113b18:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r29, r29, 0x4
    blt+    branch_0x80113ab8
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80113b54
    lfs     f0, -0x53e8(rtoc)
    li      r0, 0x0
    li      r3, 0x1
    stfs    f0, 0x150(r31)
    stw     r0, 0x154(r31)
    b       branch_0x80113b58

branch_0x80113b54:
    li      r3, 0x0
branch_0x80113b58:
    lmw     r24, 0x90(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl execute__15TNerveMantaMoveCFP24TSpineBase_10TLiveActor_
execute__15TNerveMantaMoveCFP24TSpineBase_10TLiveActor_: # 0x80113b6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stw     r31, 0x12c(sp)
    stw     r30, 0x128(sp)
    stw     r29, 0x124(sp)
    stw     r28, 0x120(sp)
    lwz     r5, 0x0(r4)
    lwz     r30, 0x20(r4)
    lwz     r3, 0x124(r5)
    addi    r29, r5, 0x0
    cmpwi   r30, 0x0
    lwz     r31, 0x0(r3)
    bne-    branch_0x80113d24
    lwz     r3, 0x74(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80113bb8
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x80113bb8:
    lwz     r3, 0x74(r29)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x78(r29)
    lwz     r3, 0xc(r3)
    lwz     r3, 0x2c(r3)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x4
    ble-    branch_0x80113be8
    lwz     r3, 0xc(r3)
    lwz     r4, 0x10(r3)
    b       branch_0x80113bec

branch_0x80113be8:
    li      r4, 0x0
branch_0x80113bec:
    lwz     r3, 0x74(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80113c00
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x80113c00:
    lwz     r3, 0x74(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80113c18
    lfs     f1, -0x53e8(rtoc)
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x80113c18:
    lwz     r28, 0x74(r29)
    bl      SMSGetAnmFrameRate__Fv
    lwz     r4, 0x18c(r29)
    lis     r3, 0x803c
    subi    r0, r3, 0x2fc8
    slwi    r3, r4, 2
    add     r3, r0, r3
    lfs     f0, 0x0(r3)
    addi    r3, r28, 0x0
    li      r4, 0x0
    fmuls   f1, f0, f1
    bl      setFrameRate__6MActorFfi
    lwz     r28, 0x8(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5408(rtoc)
    stw     r0, 0x11c(sp)
    lis     r5, 0x4330
    xoris   r0, r28, 0x8000
    lfs     f1, -0x5420(rtoc)
    stw     r5, 0x118(sp)
    mr      r4, r31
    stw     r0, 0x114(sp)
    addi    r3, sp, 0xd0
    lfd     f0, 0x118(sp)
    stw     r5, 0x110(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x110(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x108(sp)
    lwz     r5, 0x10c(sp)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0xd0(sp)
    lwz     r3, 0xd4(sp)
    stw     r0, 0xf4(sp)
    lwz     r0, 0xd8(sp)
    stw     r3, 0xf8(sp)
    lwz     r3, -0x60b4(r13)
    stw     r0, 0xfc(sp)
    lfs     f2, -0x5410(rtoc)
    lfs     f1, 0xf4(sp)
    lfs     f0, 0x0(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf4(sp)
    lfs     f1, 0xf8(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf8(sp)
    lfs     f1, 0xfc(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xfc(sp)
    lwz     r3, 0xf4(sp)
    lwz     r0, 0xf8(sp)
    stw     r3, 0x158(r29)
    stw     r0, 0x15c(r29)
    lwz     r0, 0xfc(sp)
    stw     r0, 0x160(r29)
branch_0x80113d24:
    lwz     r0, 0x18c(r29)
    cmpwi   r0, 0x3
    bge-    branch_0x80113d64
    lis     r28, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r28, 0x7e67
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80113d64
    subi    r3, r28, 0x7e67
    addi    r4, r29, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80113d64:
    lwz     r0, 0x18c(r29)
    cmpwi   r0, 0x5
    bne-    branch_0x80113dc4
    lis     r3, 0x2aab
    lha     r0, 0x7c(r29)
    subi    r3, r3, 0x5555
    mulhw   r3, r3, r30
    srawi   r3, r3, 4
    srwi    r4, r3, 31
    add     r3, r3, r4
    mulli   r3, r3, 0x60
    subf    r3, r3, r30
    cmpw    r3, r0
    bne-    branch_0x80113dc4
    lis     r4, 0x1
    lwz     r3, -0x6044(r13)
    lfs     f1, -0x5414(rtoc)
    subi    r4, r4, 0x7665
    addi    r5, r29, 0x10
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
branch_0x80113dc4:
    lfs     f3, 0x10(r29)
    lfs     f2, 0x158(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x15c(r29)
    fsubs   f2, f3, f2
    lfs     f3, 0x18(r29)
    fsubs   f1, f1, f0
    lfs     f0, 0x160(r29)
    fmuls   f2, f2, f2
    fsubs   f3, f3, f0
    lfs     f0, -0x5414(rtoc)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80113e10
    b       branch_0x80113e34

branch_0x80113e10:
    frsqrte f3, f4
    lfs     f2, -0x53e8(rtoc)
    lfs     f0, -0x5434(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80113e34:
    lfs     f0, -0x5424(rtoc)
    fcmpo   cr0, f4, f0
    blt-    branch_0x80113e64
    lis     r3, 0x1b4f
    subi    r0, r3, 0x7e4b
    mulhw   r0, r0, r30
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x96
    subf.   r0, r0, r30
    bne-    branch_0x80114358
branch_0x80113e64:
    lwz     r28, 0x8(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5408(rtoc)
    stw     r0, 0x10c(sp)
    lis     r5, 0x4330
    xoris   r0, r28, 0x8000
    lfs     f1, -0x5420(rtoc)
    stw     r5, 0x108(sp)
    mr      r4, r31
    stw     r0, 0x114(sp)
    addi    r3, sp, 0xc4
    lfd     f0, 0x108(sp)
    stw     r5, 0x110(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x110(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x118(sp)
    lwz     r5, 0x11c(sp)
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r0, 0xe8(sp)
    lwz     r0, 0xcc(sp)
    stw     r3, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x1a4(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x80114114
    lwz     r0, 0x18c(r29)
    cmpwi   r0, 0x3
    beq-    branch_0x80114018
    bge-    branch_0x80113f0c
    cmpwi   r0, 0x1
    beq-    branch_0x80113f70
    bge-    branch_0x80113fc4
    cmpwi   r0, 0x0
    bge-    branch_0x80113f1c
    b       branch_0x80114340

branch_0x80113f0c:
    cmpwi   r0, 0x5
    beq-    branch_0x801140c0
    bge-    branch_0x80114340
    b       branch_0x8011406c

branch_0x80113f1c:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5410(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x80113f70:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5410(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x80113fc4:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5410(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x80114018:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5410(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x8011406c:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5410(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x801140c0:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5410(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x80114114:
    lwz     r0, 0x18c(r29)
    cmpwi   r0, 0x3
    beq-    branch_0x80114248
    bge-    branch_0x8011413c
    cmpwi   r0, 0x1
    beq-    branch_0x801141a0
    bge-    branch_0x801141f4
    cmpwi   r0, 0x0
    bge-    branch_0x8011414c
    b       branch_0x80114340

branch_0x8011413c:
    cmpwi   r0, 0x5
    beq-    branch_0x801142f0
    bge-    branch_0x80114340
    b       branch_0x8011429c

branch_0x8011414c:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5410(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x801141a0:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5360(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x801141f4:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5360(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x80114248:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x535c(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x8011429c:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5360(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
    b       branch_0x80114340

branch_0x801142f0:
    lwz     r3, -0x60b4(r13)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x0(r3)
    lfs     f2, -0x5410(rtoc)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0xf0(sp)
branch_0x80114340:
    lwz     r3, 0xe8(sp)
    lwz     r0, 0xec(sp)
    stw     r3, 0x158(r29)
    stw     r0, 0x15c(r29)
    lwz     r0, 0xf0(sp)
    stw     r0, 0x160(r29)
branch_0x80114358:
    lwz     r3, 0x188(r29)
    divw    r0, r30, r3
    mullw   r0, r0, r3
    subf.   r0, r0, r30
    bne-    branch_0x80114378
    lwz     r0, 0x1a4(r29)
    xori     r0, r0, 0x1
    stw     r0, 0x1a4(r29)
branch_0x80114378:
    lis     r3, 0x51ec
    subi    r0, r3, 0x7ae1
    mulhw   r0, r0, r30
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x64
    subf.   r0, r0, r30
    bne-    branch_0x801143a4
    mr      r3, r29
    bl      updateAttractor__10TBossMantaFv
branch_0x801143a4:
    lwz     r3, 0x164(r29)
    lwz     r0, 0x168(r29)
    lfs     f0, -0x53c8(rtoc)
    stw     r3, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x16c(r29)
    stw     r0, 0xe4(sp)
    lfs     f2, 0xdc(sp)
    lfs     f1, 0xe0(sp)
    lfs     f3, 0xe4(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80114400
    lfs     f0, -0x5414(rtoc)
    stfs    f0, 0xe4(sp)
    stfs    f0, 0xe0(sp)
    stfs    f0, 0xdc(sp)
    b       branch_0x80114430

branch_0x80114400:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5410(rtoc)
    lfs     f0, 0xdc(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xdc(sp)
    lfs     f0, 0xe0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe0(sp)
    lfs     f0, 0xe4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe4(sp)
branch_0x80114430:
    lfs     f1, 0x194(r29)
    lfs     f0, 0xdc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xdc(sp)
    lfs     f0, 0xe0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe0(sp)
    lfs     f0, 0xe4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f1, 0x170(r29)
    lfs     f0, 0xdc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x170(r29)
    lfs     f1, 0x174(r29)
    lfs     f0, 0xe0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x174(r29)
    lfs     f1, 0x178(r29)
    lfs     f0, 0xe4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x178(r29)
    lfs     f1, 0x170(r29)
    lfs     f3, 0x178(r29)
    lfs     f0, 0x174(r29)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x53c8(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801144cc
    lfs     f0, -0x5414(rtoc)
    stfs    f0, 0x178(r29)
    stfs    f0, 0x174(r29)
    stfs    f0, 0x170(r29)
    b       branch_0x801144fc

branch_0x801144cc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5410(rtoc)
    lfs     f0, 0x170(r29)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x170(r29)
    lfs     f0, 0x174(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x174(r29)
    lfs     f0, 0x178(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x178(r29)
branch_0x801144fc:
    lwz     r0, 0x134(sp)
    li      r3, 0x0
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    mtlr    r0
    lwz     r29, 0x124(sp)
    lwz     r28, 0x120(sp)
    addi    sp, sp, 0x130
    blr


.globl theNerve__19TNerveMantaHitWaterFv
theNerve__19TNerveMantaHitWaterFv: # 0x80114520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x66b0(r13)
    extsb.  r0, r0
    bne-    branch_0x80114570
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x66ac(r13)
    subi    r0, r3, 0x2d20
    lis     r4, 0x8011
    stw     r0, -0x66ac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x30e4
    addi    r4, r4, 0x2d4c
    subi    r3, r13, 0x66ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x66b0(r13)
branch_0x80114570:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x66ac
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__29TBossMantaAdditionalCollisionFv
__dt__29TBossMantaAdditionalCollisionFv: # 0x80114584
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801145ec
    lis     r3, 0x803c
    subi    r3, r3, 0x2f08
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801145dc
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801145dc:
    extsh.  r0, r31
    ble-    branch_0x801145ec
    mr      r3, r30
    bl      __dl__FPv
branch_0x801145ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBossMantaFv
__dt__10TBossMantaFv: # 0x80114608
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80114658
    lis     r3, 0x803c
    subi    r3, r3, 0x2e64
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x80114658
    mr      r3, r30
    bl      __dl__FPv
branch_0x80114658:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl drawObject__10TBossMantaFPQ26JDrama9TGraphics
drawObject__10TBossMantaFPQ26JDrama9TGraphics: # 0x80114674
    blr


.globl reset__10TBossMantaFv
reset__10TBossMantaFv: # 0x80114678
    blr


.globl __sinit_bossManta_cpp
__sinit_bossManta_cpp: # 0x8011467c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x30d8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801146c4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801146c4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801146f4
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801146f4:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80114724
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80114724:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80114754
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80114754:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80114784
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80114784:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801147b4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801147b4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801147e4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801147e4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80114814
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80114814:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80114844
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80114844:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80114874
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80114874:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801148a4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801148a4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801148d4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801148d4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80114904
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80114904:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80114934
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80114934:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80114964
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80114964:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__10TBossMantaFv
_32___dt__10TBossMantaFv: # 0x80114978
    subi    r3, r3, 0x20
    b       __dt__10TBossMantaFv


.globl _32___dt__29TBossMantaAdditionalCollisionFv
_32___dt__29TBossMantaAdditionalCollisionFv: # 0x80114980
    subi    r3, r3, 0x20
    b       __dt__29TBossMantaAdditionalCollisionFv

