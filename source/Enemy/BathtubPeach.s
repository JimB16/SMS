
.globl __dt__20TBathtubPeachManagerFv
__dt__20TBathtubPeachManagerFv: # 0x8012e0a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012e0ec
    lis     r3, 0x803c
    subi    r0, r3, 0x16e4
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8012e0ec
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012e0ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__20TBathtubPeachManagerFR20JSUMemoryInputStream
load__20TBathtubPeachManagerFR20JSUMemoryInputStream: # 0x8012e108
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r27, r5, 0x6418
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x120
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8012e268
    addi    r3, r30, 0x0
    addi    r4, r27, 0x148
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r27, 0x160
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xa8
    addi    r6, r27, 0x160
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x42c4
    stw     r28, 0xa8(r30)
    lis     r3, 0x803b
    subi    r29, r3, 0x42d0
    lfs     f0, -0x4fb0(rtoc)
    addi    r3, r27, 0x16c
    stfs    f0, 0xb8(r30)
    stw     r29, 0xa8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xbc
    addi    r6, r27, 0x16c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xbc(r30)
    subi    r3, rtoc, 0x4fa8
    lfs     f0, -0x4fac(rtoc)
    stfs    f0, 0xcc(r30)
    stw     r29, 0xbc(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xd0
    subi    r6, rtoc, 0x4fa8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xd0(r30)
    subi    r3, rtoc, 0x4f9c
    lfs     f0, -0x4fa0(rtoc)
    stfs    f0, 0xe0(r30)
    stw     r29, 0xd0(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xe4
    subi    r6, rtoc, 0x4f9c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xe4(r30)
    subi    r3, rtoc, 0x4f90
    lfs     f0, -0x4f94(rtoc)
    stfs    f0, 0xf4(r30)
    stw     r29, 0xe4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0xf8
    subi    r6, rtoc, 0x4f90
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0xf8(r30)
    subi    r3, rtoc, 0x4f84
    lfs     f0, -0x4f88(rtoc)
    stfs    f0, 0x108(r30)
    stw     r29, 0xf8(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r30, 0x10c
    subi    r6, rtoc, 0x4f84
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x10c(r30)
    mr      r3, r30
    lfs     f0, -0x4f7c(rtoc)
    stfs    f0, 0x11c(r30)
    stw     r29, 0x10c(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
branch_0x8012e268:
    stw     r30, 0x38(r31)
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl createModelData__20TBathtubPeachManagerFv
createModelData__20TBathtubPeachManagerFv: # 0x8012e280
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x6548
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__20TBathtubPeachManagerFv
createEnemyInstance__20TBathtubPeachManagerFv: # 0x8012e2b4
    li      r3, 0x0
    blr


.globl __ct__20TBathtubPeachManagerFPCc
__ct__20TBathtubPeachManagerFPCc: # 0x8012e2bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x16e4
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__13TBathtubPeachFv
calcRootMatrix__13TBathtubPeachFv: # 0x8012e2f8
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x6590
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r5, -0x5db8(r13)
    lwz     r30, 0x4(r5)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r31, r3, 0x0
    beq-    branch_0x8012e380
    lbz     r0, 0x29a(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8012e380
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    addi    r30, r3, 0x20
    addi    r3, r31, 0x0
    bl      getPeachMtxInDemo__8TBathtubFv
    mr      r4, r30
    bl      PSMTXCopy
    b       branch_0x8012e388

branch_0x8012e380:
    mr      r3, r29
    bl      calcRootMatrix__10TLiveActorFv
branch_0x8012e388:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl receiveMessage__13TBathtubPeachFP9THitActorUl
receiveMessage__13TBathtubPeachFP9THitActorUl: # 0x8012e3a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      receiveMessage__11TSpineEnemyFP9THitActorUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getRootJointMtx__13TBathtubPeachCFv
getRootJointMtx__13TBathtubPeachCFv: # 0x8012e3c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0xc(sp)
    addi    r3, r3, 0x20
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__13TBathtubPeachFUlPQ26JDrama9TGraphics
perform__13TBathtubPeachFUlPQ26JDrama9TGraphics: # 0x8012e3e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__13TBathtubPeachFv
reset__13TBathtubPeachFv: # 0x8012e408
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lfs     f0, 0x10(r3)
    addi    r3, r30, 0x150
    lfs     f1, -0x4f78(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x10(r30)
    lfs     f0, 0x14(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x14(r30)
    lfs     f0, 0x18(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x18(r30)
    lfs     f1, -0x4f74(rtoc)
    lfs     f5, -0x4f70(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      init__14TBathtubBinderFfffff
    li      r31, 0x0
    stb     r31, 0x130(r30)
    addi    r0, r30, 0x150
    addi    r3, r30, 0x0
    lfs     f0, -0x4f6c(rtoc)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    stw     r0, 0x88(r30)
    bl      reset__11TSpineEnemyFv
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8012e4dc
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8012e4cc
    b       branch_0x8012e4d0

branch_0x8012e4cc:
    lwz     r31, 0x4(r3)
branch_0x8012e4d0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8012e4dc:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x8012e4fc
    lwz     r3, 0x74(r30)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
branch_0x8012e4fc:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x4f64(rtoc)
    lfs     f0, -0x4f68(rtoc)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__13TBathtubPeachFP12TLiveManager
init__13TBathtubPeachFP12TLiveManager: # 0x8012e53c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      init__11TSpineEnemyFP12TLiveManager
    lbz     r0, -0x6518(r13)
    extsb.  r0, r0
    bne-    branch_0x8012e598
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6514(r13)
    subi    r0, r3, 0x1690
    lis     r4, 0x8013
    stw     r0, -0x6514(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x36bc
    subi    r4, r4, 0x1a08
    subi    r3, r13, 0x6514
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6518(r13)
branch_0x8012e598:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x6514
    stw     r4, 0x8(r5)
    mr      r3, r31
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    bl      initAnmSound__10TLiveActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x4f64(rtoc)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__17TNervePeachEscapeFv
__dt__17TNervePeachEscapeFv: # 0x8012e5f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012e63c
    lis     r3, 0x803c
    subi    r0, r3, 0x1690
    stw     r0, 0x0(r31)
    beq-    branch_0x8012e62c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8012e62c:
    extsh.  r0, r4
    ble-    branch_0x8012e63c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012e63c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__13TBathtubPeachCFv
getBasNameTable__13TBathtubPeachCFv: # 0x8012e654
    lis     r3, 0x803c
    subi    r3, r3, 0x1740
    blr


.globl __ct__13TBathtubPeachFPCc
__ct__13TBathtubPeachFPCc: # 0x8012e660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lwz     r31, 0x8(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x1670
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x150
    stw     r0, 0x20(r31)
    bl      __ct__14TBathtubBinderFv
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNervePeachEscapeCFP24TSpineBase_10TLiveActor_
execute__17TNervePeachEscapeCFP24TSpineBase_10TLiveActor_: # 0x8012e6d8
    mflr    r0
    lis     r3, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x270(sp)
    stfd    f31, 0x268(sp)
    stfd    f30, 0x260(sp)
    stfd    f29, 0x258(sp)
    stw     r31, 0x254(sp)
    stw     r30, 0x250(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24c(sp)
    addi    r29, r3, 0x6590
    mr      r3, r29
    stw     r28, 0x248(sp)
    lwz     r5, -0x5db8(r13)
    lwz     r31, 0x0(r4)
    lwz     r28, 0x4(r5)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x0
    mtlr    r12
    blrl
    lbz     r0, 0x29a(r3)
    addi    r28, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x8012e754
    li      r3, 0x0
    b       branch_0x8012ebd8

branch_0x8012e754:
    lwz     r0, 0x20(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8012e80c
    lbz     r0, 0x1d4(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8012e804
    lbz     r0, -0x6520(r13)
    extsb.  r0, r0
    bne-    branch_0x8012e7b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x651c(r13)
    subi    r0, r3, 0x1680
    lis     r4, 0x8013
    stw     r0, -0x651c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x36b0
    subi    r4, r4, 0x13e0
    subi    r3, r13, 0x651c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6520(r13)
branch_0x8012e7b0:
    subi    r5, r13, 0x651c
    cmplwi  r5, 0x0
    beq-    branch_0x8012e804
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8012e7f8
    stw     r0, 0x1c(r30)
    lwz     r3, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r3, r0
    bge-    branch_0x8012e7f8
    lwz     r4, 0x14(r30)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r30)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8012e7f8:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r5, 0x14(r30)
branch_0x8012e804:
    li      r3, 0x0
    b       branch_0x8012ebd8

branch_0x8012e80c:
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8012e85c
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8012e850
    li      r4, 0x0
    b       branch_0x8012e854

branch_0x8012e850:
    lwz     r4, 0x4(r3)
branch_0x8012e854:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8012e85c:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x8012e87c
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
branch_0x8012e87c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r30, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x4f64(rtoc)
    mr      r3, r28
    lfs     f0, -0x4f68(rtoc)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r30)
    lwz     r12, 0x0(r28)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lwz     r4, MarioHitActorPos(r13)
    lfs     f31, 0xc(r3)
    lfs     f30, 0x2c(r3)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x21c(sp)
    stw     r0, 0x220(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x224(sp)
    lfs     f1, 0x224(sp)
    lfs     f0, 0x21c(sp)
    fsubs   f1, f1, f30
    fsubs   f2, f0, f31
    bl      matan__Fff
    extsh   r0, r3
    lfs     f0, 0x10(r31)
    xoris   r0, r0, 0x8000
    lfs     f1, 0x18(r31)
    stw     r0, 0x244(sp)
    lis     r30, 0x4330
    fsubs   f2, f0, f31
    lfd     f4, -0x4f48(rtoc)
    stw     r30, 0x240(sp)
    lfs     f0, -0x4f5c(rtoc)
    fsubs   f1, f1, f30
    lfd     f3, 0x240(sp)
    fsubs   f3, f3, f4
    fmuls   f29, f0, f3
    bl      matan__Fff
    extsh   r0, r3
    lfd     f4, -0x4f48(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x4f5c(rtoc)
    stw     r0, 0x23c(sp)
    lfs     f0, -0x4f50(rtoc)
    stw     r30, 0x238(sp)
    lfs     f2, -0x4f54(rtoc)
    lfd     f3, 0x238(sp)
    fsubs   f3, f3, f4
    fmuls   f1, f1, f3
    fsubs   f1, f1, f29
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f3, -0x4f50(rtoc)
    lfs     f0, -0x4f70(rtoc)
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8012e9a8
    lwz     r3, 0x70(r31)
    lfs     f2, -0x4f54(rtoc)
    lwz     r3, 0x38(r3)
    lfs     f0, 0xf4(r3)
    fsubs   f0, f29, f0
    fsubs   f0, f0, f3
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f0, -0x4f50(rtoc)
    fadds   f1, f0, f1
    b       branch_0x8012e9d0

branch_0x8012e9a8:
    lwz     r3, 0x70(r31)
    lfs     f2, -0x4f54(rtoc)
    lwz     r3, 0x38(r3)
    lfs     f0, 0xf4(r3)
    fadds   f0, f29, f0
    fsubs   f0, f0, f3
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f0, -0x4f50(rtoc)
    fadds   f1, f0, f1
branch_0x8012e9d0:
    lfs     f0, -0x4f40(rtoc)
    lwz     r3, 0x70(r31)
    fmuls   f0, f0, f1
    lwz     r0, -0x5eac(r13)
    lwz     r4, 0x38(r3)
    lwz     r3, -0x5ea8(r13)
    fctiwz  f0, f0
    lfs     f4, 0x11c(r4)
    lwz     r5, -0x5ea4(r13)
    stfd    f0, 0x238(sp)
    lfs     f0, 0x10(r31)
    lwz     r4, 0x23c(sp)
    lfs     f2, 0x18(r31)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    lfsx    f3, r5, r0
    fmadds  f1, f4, f1, f31
    fmadds  f3, f4, f3, f30
    fsubs   f0, f1, f0
    fsubs   f1, f3, f2
    stfs    f0, 0x1dc(sp)
    stfs    f1, 0x1e0(sp)
    lwz     r3, 0x70(r31)
    lfs     f1, 0x1dc(sp)
    lfs     f0, 0x1e0(sp)
    fmuls   f2, f1, f1
    lwz     r4, 0x38(r3)
    fmuls   f1, f0, f0
    lfs     f0, 0xe0(r4)
    fadds   f1, f2, f1
    fmuls   f0, f0, f0
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8012eab4
    bl      getSaveParam__13TEnemyManagerCFv
    lfs     f29, 0xe0(r3)
    addi    r3, sp, 0x1dc
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec2_f_CFRCQ29JGeometry8TVec2_f_
    lfs     f0, -0x4f60(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012ea94
    lfs     f0, -0x4f70(rtoc)
    stfs    f0, 0x1e0(sp)
    stfs    f0, 0x1dc(sp)
    b       branch_0x8012eab4

branch_0x8012ea94:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f29, f1
    lfs     f0, 0x1dc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1dc(sp)
    lfs     f0, 0x1e0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1e0(sp)
branch_0x8012eab4:
    lfs     f1, 0x10(r31)
    lfs     f0, 0x1dc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x1e0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x18(r31)
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    fsubs   f1, f1, f0
    lfs     f0, 0x10(r31)
    lwz     r3, 0x70(r31)
    fsubs   f2, f2, f0
    lfs     f0, -0x4f60(rtoc)
    fmuls   f3, f1, f1
    lwz     r3, 0x38(r3)
    lfs     f31, 0xcc(r3)
    fmadds  f3, f2, f2, f3
    fcmpo   cr0, f3, f0
    cror    2, 0, 2
    beq-    branch_0x8012ebd4
    bl      matan__Fff
    extsh   r0, r3
    lfd     f5, -0x4f48(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f4, -0x4f5c(rtoc)
    stw     r0, 0x23c(sp)
    lis     r0, 0x4330
    lfs     f3, -0x4f58(rtoc)
    stw     r0, 0x238(sp)
    lfs     f1, 0x34(r31)
    lfd     f0, 0x238(sp)
    lfs     f2, -0x4f54(rtoc)
    fsubs   f5, f0, f5
    lfs     f0, -0x4f50(rtoc)
    fmuls   f4, f4, f5
    fsubs   f30, f4, f3
    fsubs   f1, f30, f1
    fsubs   f0, f1, f0
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f3, -0x4f50(rtoc)
    fneg    f0, f31
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8012eba0
    lfs     f0, 0x34(r31)
    lfs     f2, -0x4f54(rtoc)
    fsubs   f0, f0, f31
    fsubs   f0, f0, f3
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f0, -0x4f50(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
    b       branch_0x8012ebd4

branch_0x8012eba0:
    fcmpo   cr0, f1, f31
    ble-    branch_0x8012ebd0
    lfs     f0, 0x34(r31)
    lfs     f2, -0x4f54(rtoc)
    fadds   f0, f0, f31
    fsubs   f0, f0, f3
    fadds   f1, f2, f0
    bl      fmodf__3stdFff
    lfs     f0, -0x4f50(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
    b       branch_0x8012ebd4

branch_0x8012ebd0:
    stfs    f30, 0x34(r31)
branch_0x8012ebd4:
    li      r3, 0x0
branch_0x8012ebd8:
    lwz     r0, 0x274(sp)
    lfd     f31, 0x268(sp)
    lfd     f30, 0x260(sp)
    mtlr    r0
    lfd     f29, 0x258(sp)
    lwz     r31, 0x254(sp)
    lwz     r30, 0x250(sp)
    lwz     r29, 0x24c(sp)
    lwz     r28, 0x248(sp)
    addi    sp, sp, 0x270
    blr


.globl dot__Q29JGeometry8TVec2_f_CFRCQ29JGeometry8TVec2_f_
dot__Q29JGeometry8TVec2_f_CFRCQ29JGeometry8TVec2_f_: # 0x8012ec04
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r4)
    fmadds  f1, f2, f1, f0
    blr


.globl __dt__18TNervePeachStaggerFv
__dt__18TNervePeachStaggerFv: # 0x8012ec20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012ec64
    lis     r3, 0x803c
    subi    r0, r3, 0x1680
    stw     r0, 0x0(r31)
    beq-    branch_0x8012ec54
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8012ec54:
    extsh.  r0, r4
    ble-    branch_0x8012ec64
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012ec64:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNervePeachStaggerCFP24TSpineBase_10TLiveActor_
execute__18TNervePeachStaggerCFP24TSpineBase_10TLiveActor_: # 0x8012ec7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    lwz     r5, 0x0(r4)
    li      r4, 0x0
    lwz     r3, 0x74(r5)
    mr      r30, r5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8012ece8
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8012ecdc
    li      r4, 0x0
    b       branch_0x8012ece0

branch_0x8012ecdc:
    lwz     r4, 0x0(r3)
branch_0x8012ece0:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8012ece8:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8012ed08
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x8012ed08:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x4f64(rtoc)
    li      r4, 0x0
    lfs     f0, -0x4f68(rtoc)
    li      r5, 0x0
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    lwz     r3, 0x74(r30)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8012ed50
    li      r3, 0x1
    b       branch_0x8012ed54

branch_0x8012ed50:
    li      r3, 0x0
branch_0x8012ed54:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__13TBathtubPeachFv
__dt__13TBathtubPeachFv: # 0x8012ed6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012edc8
    lis     r3, 0x803c
    subi    r3, r3, 0x1670
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x150
    stw     r0, 0x20(r30)
    li      r4, -0x1
    bl      __dt__14TBathtubBinderFv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8012edc8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012edc8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_BathtubPeach_cpp
__sinit_BathtubPeach_cpp: # 0x8012ede4
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x36b0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8012ee2c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8012ee2c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8012ee5c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8012ee5c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8012ee8c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8012ee8c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8012eebc
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8012eebc:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8012eeec
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8012eeec:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8012ef1c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8012ef1c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8012ef4c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8012ef4c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8012ef7c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8012ef7c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8012efac
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8012efac:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8012efdc
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8012efdc:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8012f00c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8012f00c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8012f03c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8012f03c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8012f06c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8012f06c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8012f09c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8012f09c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8012f0cc
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8012f0cc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__13TBathtubPeachFv
_32___dt__13TBathtubPeachFv: # 0x8012f0e0
    subi    r3, r3, 0x20
    b       __dt__13TBathtubPeachFv

