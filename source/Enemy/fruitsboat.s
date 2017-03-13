
.globl __dt__24TNerveFruitsBoatBckTraceFv
__dt__24TNerveFruitsBoatBckTraceFv: # 0x800eacdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ead20
    lis     r3, 0x803c
    subi    r0, r3, 0x5500
    stw     r0, 0x0(r31)
    beq-    branch_0x800ead10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ead10:
    extsh.  r0, r4
    ble-    branch_0x800ead20
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ead20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveFruitsBoatBckTraceCFP24TSpineBase_10TLiveActor_
execute__24TNerveFruitsBoatBckTraceCFP24TSpineBase_10TLiveActor_: # 0x800ead38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    lwz     r31, 0x0(r4)
    lwz     r3, 0x160(r31)
    bl      update__12J3DFrameCtrlFv
    lwz     r6, 0x160(r31)
    addi    r5, sp, 0x2c
    lwz     r3, 0x15c(r31)
    li      r4, 0x0
    lfs     f0, 0x10(r6)
    stfs    f0, 0x4(r3)
    lwz     r3, 0x15c(r31)
    lwz     r12, 0xc(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x15c(r31)
    addi    r5, sp, 0x4c
    li      r4, 0x1
    lwz     r12, 0xc(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x40(sp)
    lis     r5, 0x4330
    lfs     f0, 0x60(sp)
    li      r3, 0x0
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x64(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lha     r4, 0x38(sp)
    lha     r0, 0x58(sp)
    lfd     f1, -0x5ac8(rtoc)
    add     r0, r4, r0
    lfs     f2, -0x5ad0(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x84(sp)
    stw     r5, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x30(r31)
    lha     r4, 0x3a(sp)
    lha     r0, 0x5a(sp)
    add     r0, r4, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x7c(sp)
    stw     r5, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x34(r31)
    lha     r4, 0x3c(sp)
    lha     r0, 0x5c(sp)
    add     r0, r4, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x74(sp)
    stw     r5, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x38(r31)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x50(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl execute__27TNerveFruitsBoatGraphWanderCFP24TSpineBase_10TLiveActor_
execute__27TNerveFruitsBoatGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x800eae98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stw     r31, 0x114(sp)
    stw     r30, 0x110(sp)
    mr      r30, r4
    lwz     r4, 0x0(r4)
    lwz     r3, 0x124(r4)
    mr      r31, r4
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800eaed8
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x800eaee0
branch_0x800eaed8:
    li      r3, 0x0
    b       branch_0x800eb2a0

branch_0x800eaee0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800eb160
    lwz     r4, 0x124(r31)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r4, r3, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x800eaf30
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
branch_0x800eaf30:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x800eaf4c
    lha     r0, 0x150(r31)
    xori     r0, r0, 0x1
    sth     r0, 0x150(r31)
branch_0x800eaf4c:
    lfs     f1, -0x5abc(rtoc)
    addi    r4, sp, 0xf4
    lfs     f0, 0x34(r31)
    mr      r3, r31
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r5, -0x5ea8(r13)
    lfs     f3, -0x5ac0(rtoc)
    lwz     r7, -0x5ea4(r13)
    fctiwz  f1, f0
    lfs     f0, -0x5ab8(rtoc)
    stfd    f1, 0x108(sp)
    lwz     r6, 0x10c(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    lfsx    f2, r7, r0
    fmuls   f1, f3, f1
    fmuls   f2, f3, f2
    stfs    f1, 0xf4(sp)
    stfs    f0, 0xf8(sp)
    stfs    f2, 0xfc(sp)
    bl      goToDirectedNextGraphNode__11TSpineEnemyFRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    bne-    branch_0x800eb0e0
    lwz     r3, 0x124(r31)
    lfs     f1, 0x140(r31)
    lwz     r4, 0x0(r3)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800eafd8
    li      r0, 0x1
    b       branch_0x800eafdc

branch_0x800eafd8:
    li      r0, 0x0
branch_0x800eafdc:
    cmpwi   r0, 0x0
    beq-    branch_0x800eb0a0
    bl      calcSplineSpeed__12TGraphTracerFf
    lwz     r3, 0x124(r31)
    fmr     f31, f1
    bl      traceSpline__12TGraphTracerFf
    lwz     r6, 0x124(r31)
    addi    r4, sp, 0xd0
    addi    r5, sp, 0xdc
    lwz     r3, 0x0(r6)
    lfs     f1, 0x14(r6)
    lwz     r3, 0x14(r3)
    bl      getPosAndRot__11TSplineRailFfPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lfs     f1, 0xd0(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xd0(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0x94(r31)
    lfs     f0, 0xd0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0xd4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0xd8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    lfs     f0, 0xe0(sp)
    stfs    f0, 0x34(r31)
    lfs     f2, -0x5ab8(rtoc)
    fcmpo   cr0, f31, f2
    bge-    branch_0x800eb0b0
    lfs     f1, -0x5ab4(rtoc)
    lfs     f0, 0x34(r31)
    lfs     f3, -0x5ab0(rtoc)
    fadds   f1, f1, f0
    bl      MsWrap_f___Ffff_800eb318
    stfs    f1, 0x34(r31)
    b       branch_0x800eb0b0

branch_0x800eb0a0:
    lfs     f2, 0x144(r31)
    mr      r3, r31
    lfs     f3, -0x5ab8(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x800eb0b0:
    lwz     r3, gpMSound(r13)
    li      r4, 0x302e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800eb0e0
    addi    r4, r31, 0x10
    li      r3, 0x302e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800eb0e0:
    lbz     r0, -0x6836(r13)
    extsb.  r0, r0
    bne-    branch_0x800eb124
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6834(r13)
    subi    r0, r3, 0x54f0
    lis     r4, 0x800f
    stw     r0, -0x6834(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x23f0
    subi    r4, r4, 0x4d44
    subi    r3, r13, 0x6834
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6836(r13)
branch_0x800eb124:
    subi    r4, r13, 0x6834
    cmplwi  r4, 0x0
    beq-    branch_0x800eb158
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800eb158
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800eb158:
    li      r3, 0x1
    b       branch_0x800eb2a0

branch_0x800eb160:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800eb174
    li      r3, 0x0
    b       branch_0x800eb2a0

branch_0x800eb174:
    lwz     r3, 0x124(r31)
    lfs     f1, 0x140(r31)
    lwz     r4, 0x0(r3)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800eb194
    li      r0, 0x1
    b       branch_0x800eb198

branch_0x800eb194:
    li      r0, 0x0
branch_0x800eb198:
    cmpwi   r0, 0x0
    beq-    branch_0x800eb25c
    bl      calcSplineSpeed__12TGraphTracerFf
    lwz     r3, 0x124(r31)
    fmr     f31, f1
    bl      traceSpline__12TGraphTracerFf
    lwz     r6, 0x124(r31)
    addi    r4, sp, 0xb0
    addi    r5, sp, 0xbc
    lwz     r3, 0x0(r6)
    lfs     f1, 0x14(r6)
    lwz     r3, 0x14(r3)
    bl      getPosAndRot__11TSplineRailFfPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lfs     f1, 0xb4(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb4(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb8(sp)
    lfs     f1, 0x94(r31)
    lfs     f0, 0xb0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0xb4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0xb8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x34(r31)
    lfs     f2, -0x5ab8(rtoc)
    fcmpo   cr0, f31, f2
    bge-    branch_0x800eb26c
    lfs     f1, -0x5ab4(rtoc)
    lfs     f0, 0x34(r31)
    lfs     f3, -0x5ab0(rtoc)
    fadds   f1, f1, f0
    bl      MsWrap_f___Ffff_800eb318
    stfs    f1, 0x34(r31)
    b       branch_0x800eb26c

branch_0x800eb25c:
    lfs     f2, 0x144(r31)
    mr      r3, r31
    lfs     f3, -0x5ab8(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x800eb26c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x302e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800eb29c
    addi    r4, r31, 0x10
    li      r3, 0x302e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800eb29c:
    li      r3, 0x0
branch_0x800eb2a0:
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lwz     r31, 0x114(sp)
    mtlr    r0
    lwz     r30, 0x110(sp)
    addi    sp, sp, 0x120
    blr


.globl __dt__27TNerveFruitsBoatGraphWanderFv
__dt__27TNerveFruitsBoatGraphWanderFv: # 0x800eb2bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800eb300
    lis     r3, 0x803c
    subi    r0, r3, 0x54f0
    stw     r0, 0x0(r31)
    beq-    branch_0x800eb2f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800eb2f0:
    extsh.  r0, r4
    ble-    branch_0x800eb300
    mr      r3, r31
    bl      __dl__FPv
branch_0x800eb300:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl MsWrap_f___Ffff_800eb318
MsWrap_f___Ffff_800eb318: # 0x800eb318
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800eb354
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0xe5d2c, 0x800eb330 - 0x800eb32c
branch_0x800eb330:
    fsubs   f1, f1, f0
branch_0x800eb334:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800eb330
    b       branch_0x800eb348

branch_0x800eb344:
    fadds   f1, f1, f0
branch_0x800eb348:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800eb344
    blr

branch_0x800eb354:
    fsubs   f0, f3, f2
    b       branch_0x800eb334


.incbin "./baserom/code/Text_0x80005600.bin", 0xe5d5c, 0x800eb360 - 0x800eb35c

.globl createEnemyInstance__18TFruitsBoatManagerFv
createEnemyInstance__18TFruitsBoatManagerFv: # 0x800eb360
    li      r3, 0x0
    blr


.globl load__18TFruitsBoatManagerFR20JSUMemoryInputStream
load__18TFruitsBoatManagerFR20JSUMemoryInputStream: # 0x800eb368
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x1958
    li      r3, 0xe4
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x800eb444
    addi    r3, r26, 0x0
    addi    r4, r29, 0x198
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r29, 0x1b0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0xa8
    addi    r6, r29, 0x1b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r30, r3, 0x42c4
    stw     r30, 0xa8(r26)
    lis     r3, 0x803b
    subi    r31, r3, 0x42d0
    lfs     f0, -0x5aa4(rtoc)
    addi    r3, r29, 0x1c0
    stfs    f0, 0xb8(r26)
    stw     r31, 0xa8(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0xbc
    addi    r6, r29, 0x1c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0xbc(r26)
    addi    r3, r29, 0x1cc
    lfs     f0, -0x5aa0(rtoc)
    stfs    f0, 0xcc(r26)
    stw     r31, 0xbc(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0xd0
    addi    r6, r29, 0x1cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0xd0(r26)
    mr      r3, r26
    lfs     f0, -0x5a9c(rtoc)
    stfs    f0, 0xe0(r26)
    stw     r31, 0xd0(r26)
    lwz     r4, 0x0(r26)
    bl      load__7TParamsFPCc
branch_0x800eb444:
    stw     r26, 0x38(r27)
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl createModelData__18TFruitsBoatManagerFv
createModelData__18TFruitsBoatManagerFv: # 0x800eb468
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x1958
    stwu    sp, -0x8(sp)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x800eb4d0
    bge-    branch_0x800eb4e8
    cmpwi   r0, 0x0
    beq-    branch_0x800eb4a0
    bge-    branch_0x800eb4b8
    b       branch_0x800eb4e8


.incbin "./baserom/code/Text_0x80005600.bin", 0xe5e9c, 0x800eb4a0 - 0x800eb49c
branch_0x800eb4a0:
    lwz     r12, 0x0(r3)
    addi    r4, r4, 0x108
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    b       branch_0x800eb4fc

branch_0x800eb4b8:
    lwz     r12, 0x0(r3)
    addi    r4, r4, 0x130
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    b       branch_0x800eb4fc

branch_0x800eb4d0:
    lwz     r12, 0x0(r3)
    addi    r4, r4, 0x158
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    b       branch_0x800eb4fc

branch_0x800eb4e8:
    lwz     r12, 0x0(r3)
    addi    r4, r4, 0x180
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
branch_0x800eb4fc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__18TFruitsBoatManagerFiPCc
__ct__18TFruitsBoatManagerFiPCc: # 0x800eb50c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x54e0
    stw     r0, 0x0(r30)
    mr      r3, r30
    stw     r31, 0x54(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl requestShadow__11TFruitsBoatFv
requestShadow__11TFruitsBoatFv: # 0x800eb55c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0xf0(r3)
    andi.   r0, r3, 0xb
    bne-    branch_0x800eb6a8
    andi.   r0, r3, 0x204
    beq-    branch_0x800eb58c
    rlwinm. r0, r3, 0, 21, 21
    beq-    branch_0x800eb654
branch_0x800eb58c:
    lfs     f0, -0x5ab8(rtoc)
    li      r5, 0x0
    li      r4, 0x1
    stfs    f0, 0x24(sp)
    li      r3, 0x3
    lis     r0, 0x4330
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stb     r5, 0x34(sp)
    stb     r4, 0x35(sp)
    stw     r5, 0x38(sp)
    stfs    f0, 0x18(sp)
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    lwz     r5, 0x10(r31)
    lwz     r4, 0x14(r31)
    stw     r5, 0x18(sp)
    stw     r4, 0x1c(sp)
    lwz     r4, 0x18(r31)
    stw     r4, 0x20(sp)
    lfs     f0, 0x154(r31)
    stfs    f0, 0x24(sp)
    lfs     f0, 0x158(r31)
    stfs    f0, 0x28(sp)
    stb     r3, 0x34(sp)
    lfs     f0, 0x34(r31)
    lfd     f1, -0x5ac8(rtoc)
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r3, 0x4c(sp)
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x44(sp)
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x2c(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x800eb644
    lwz     r5, 0x4c(r31)
    addi    r4, sp, 0x18
    lwz     r3, -0x6100(r13)
    bl      forceRequest__19TMBindShadowManagerFRC20TCircleShadowRequestUl
    b       branch_0x800eb654

branch_0x800eb644:
    lwz     r5, 0x4c(r31)
    addi    r4, sp, 0x18
    lwz     r3, -0x6100(r13)
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
branch_0x800eb654:
    lwz     r0, 0xf0(r31)
    andi.   r0, r0, 0x204
    bne-    branch_0x800eb6a8
    lwz     r0, 0x4c(r31)
    rlwinm. r0, r0, 0, 1, 1
    beq-    branch_0x800eb674
    li      r0, 0x1
    b       branch_0x800eb678

branch_0x800eb674:
    li      r0, 0x0
branch_0x800eb678:
    clrlwi. r0, r0, 24
    bne-    branch_0x800eb6a8
    lwz     r5, 0x10(r31)
    addi    r4, sp, 0xc
    lwz     r0, 0x14(r31)
    lwz     r3, -0x6138(r13)
    stw     r5, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x14(sp)
    lfs     f1, 0xb8(r31)
    bl      request__16TQuestionManagerFQ29JGeometry8TVec3_f_f
branch_0x800eb6a8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl moveObject__11TFruitsBoatFv
moveObject__11TFruitsBoatFv: # 0x800eb6bc
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x160(sp)
    stfd    f31, 0x158(sp)
    stfd    f30, 0x150(sp)
    stfd    f29, 0x148(sp)
    stw     r31, 0x144(sp)
    stw     r30, 0x140(sp)
    stw     r29, 0x13c(sp)
    addi    r29, r4, 0x23d8
    stw     r28, 0x138(sp)
    mr      r28, r3
    lfs     f0, 0x34(r3)
    lis     r3, 0x8038
    lfs     f1, -0x5abc(rtoc)
    addi    r30, r3, 0x1958
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r6, -0x5ea4(r13)
    lwz     r4, -0x5ea8(r13)
    addi    r3, sp, 0xb4
    lfs     f4, -0x5a98(rtoc)
    fctiwz  f0, f0
    lfs     f2, -0x5ab8(rtoc)
    stfd    f0, 0x130(sp)
    lwz     r5, 0x134(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800ebee4
    lwz     r0, 0xb4(sp)
    lwz     r3, 0xb8(sp)
    stw     r0, 0x120(sp)
    lwz     r0, 0xbc(sp)
    stw     r3, 0x124(sp)
    stw     r0, 0x128(sp)
    lwz     r3, 0x10(r28)
    lwz     r0, 0x14(r28)
    lfs     f0, 0x120(sp)
    stw     r3, 0xc(sp)
    lfs     f2, 0x124(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0x14(sp)
    lwz     r0, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r0, 0x114(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x118(sp)
    stw     r0, 0x11c(sp)
    lfs     f1, 0x114(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x114(sp)
    lfs     f0, 0x118(sp)
    fadds   f0, f0, f2
    stfs    f0, 0x118(sp)
    lfs     f0, 0x11c(sp)
    lfs     f3, 0x128(sp)
    fadds   f0, f0, f3
    stfs    f0, 0x11c(sp)
    lwz     r0, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r0, 0x108(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x10c(sp)
    lfs     f0, 0x120(sp)
    stw     r0, 0x110(sp)
    lfs     f1, 0x108(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x110(sp)
    fsubs   f0, f0, f3
    stfs    f0, 0x110(sp)
    lwz     r3, gpMapObjWave(r13)
    lfs     f1, 0x114(sp)
    lfs     f2, 0x11c(sp)
    bl      getWaveHeight__11TMapObjWaveCFff
    stfs    f1, 0x118(sp)
    lwz     r3, gpMapObjWave(r13)
    lfs     f1, 0x108(sp)
    lfs     f2, 0x110(sp)
    bl      getWaveHeight__11TMapObjWaveCFff
    stfs    f1, 0x10c(sp)
    addi    r3, sp, 0x80
    addi    r4, sp, 0x108
    lwz     r0, 0x114(sp)
    lwz     r5, 0x118(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x11c(sp)
    stw     r5, 0x84(sp)
    stw     r0, 0x88(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x80(sp)
    addi    r3, sp, 0x9c
    lwz     r5, 0x84(sp)
    addi    r4, sp, 0xfc
    stw     r0, 0xfc(sp)
    lwz     r0, 0x88(sp)
    stw     r5, 0x100(sp)
    stw     r0, 0x104(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0xf4(sp)
    lfs     f1, -0x5aac(rtoc)
    stw     r0, 0xf8(sp)
    lfs     f0, -0x5ab4(rtoc)
    lfs     f2, 0xf0(sp)
    fmuls   f1, f2, f1
    stfs    f1, 0xf0(sp)
    lfs     f3, 0xf0(sp)
    lfs     f1, 0x30(r28)
    fsubs   f2, f3, f0
    fadds   f3, f0, f3
    bl      MsWrap_f___Ffff_800eb318
    lfs     f2, 0xf0(sp)
    lfs     f0, -0x5ab8(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800eb8e4
    lfs     f0, -0x7d98(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800eb8d8
    b       branch_0x800eb8dc

branch_0x800eb8d8:
    fmr     f0, f1
branch_0x800eb8dc:
    fmr     f1, f0
    b       branch_0x800eb8f8

branch_0x800eb8e4:
    lfs     f0, -0x7d94(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800eb8f4
    b       branch_0x800eb8f8

branch_0x800eb8f4:
    fmr     f1, f0
branch_0x800eb8f8:
    lfs     f0, 0x30(r28)
    fadds   f0, f0, f1
    stfs    f0, 0x30(r28)
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r0, 0xf0(r28)
    addi    r31, r3, 0x0
    rlwinm. r0, r0, 0, 14, 14
    bne-    branch_0x800ebbf0
    cmplwi  r31, 0x0
    beq-    branch_0x800ebc1c
    lwz     r0, 0x44(r31)
    cmplw   r0, r28
    bne-    branch_0x800ebc1c
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800ebc1c
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xec(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0x10(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xe4(sp)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x14(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x18(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f3, -0x5ab8(rtoc)
    stfs    f3, 0xe8(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    lfs     f2, 0xec(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f3
    cror    2, 0, 2
    bne-    branch_0x800eb9c0
    fmr     f31, f1
    b       branch_0x800eb9e4

branch_0x800eb9c0:
    frsqrte f4, f1
    lfs     f3, -0x5aac(rtoc)
    lfs     f0, -0x5aa8(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f31, f1, f0
branch_0x800eb9e4:
    lfs     f2, -0x5ab8(rtoc)
    fcmpu   cr0, f2, f31
    beq-    branch_0x800ebb28
    lbz     r0, -0x6838(r13)
    extsb.  r0, r0
    bne-    branch_0x800eba14
    stfs    f2, 0x0(r29)
    li      r0, 0x1
    lfs     f0, -0x5ac0(rtoc)
    stfs    f0, 0x4(r29)
    stfs    f2, 0x8(r29)
    stb     r0, -0x6838(r13)
branch_0x800eba14:
    lfs     f0, -0x5a94(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800eba38
    lfs     f0, -0x5ab8(rtoc)
    stfs    f0, 0xec(sp)
    stfs    f0, 0xe8(sp)
    stfs    f0, 0xe4(sp)
    b       branch_0x800eba68

branch_0x800eba38:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5ac0(rtoc)
    lfs     f0, 0xe4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
branch_0x800eba68:
    lfs     f4, 0xe8(sp)
    lfs     f5, 0x8(r29)
    lfs     f3, 0x0(r29)
    lfs     f2, 0xec(sp)
    fmuls   f0, f5, f4
    lfs     f6, 0x4(r29)
    lfs     f7, 0xe4(sp)
    fmuls   f1, f3, f2
    fmsubs  f0, f6, f2, f0
    fmuls   f2, f6, f7
    fmsubs  f1, f5, f7, f1
    stfs    f0, 0x164(r28)
    fmsubs  f0, f3, f4, f2
    stfs    f1, 0x168(r28)
    stfs    f0, 0x16c(r28)
    lfs     f1, 0x164(r28)
    lfs     f0, 0x168(r28)
    fmuls   f2, f1, f1
    lfs     f3, 0x16c(r28)
    fmuls   f1, f0, f0
    lfs     f0, -0x5a94(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800ebae8
    lfs     f0, -0x5ab8(rtoc)
    stfs    f0, 0x16c(r28)
    stfs    f0, 0x168(r28)
    stfs    f0, 0x164(r28)
    b       branch_0x800ebb18

branch_0x800ebae8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5ac0(rtoc)
    lfs     f0, 0x164(r28)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x164(r28)
    lfs     f0, 0x168(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x168(r28)
    lfs     f0, 0x16c(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x16c(r28)
branch_0x800ebb18:
    lfs     f1, -0x5a90(rtoc)
    lfs     f0, 0x174(r28)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x174(r28)
branch_0x800ebb28:
    lwz     r0, 0xf0(r28)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r28)
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r28)
    lhz     r0, 0x0(r31)
    cmplwi  r0, 0x7
    beq-    branch_0x800ebb54
    cmplwi  r0, 0x8007
    bne-    branch_0x800ebb5c
branch_0x800ebb54:
    li      r0, 0x1
    b       branch_0x800ebb60

branch_0x800ebb5c:
    li      r0, 0x0
branch_0x800ebb60:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ebc1c
    lwz     r3, 0x70(r28)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x800ebba0
    bge-    branch_0x800ebbe0
    cmpwi   r0, 0x0
    beq-    branch_0x800ebb90
    bge-    branch_0x800ebb98
    b       branch_0x800ebbe0


.incbin "./baserom/code/Text_0x80005600.bin", 0xe658c, 0x800ebb90 - 0x800ebb8c
branch_0x800ebb90:
    addi    r30, r30, 0x1dc
    b       branch_0x800ebba4

branch_0x800ebb98:
    addi    r30, r30, 0x1e8
    b       branch_0x800ebba4

branch_0x800ebba0:
    addi    r30, r30, 0x1f4
branch_0x800ebba4:
    lwz     r3, 0x74(r28)
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x800ebbd4
    lwz     r3, 0x74(r28)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800ebbe0
branch_0x800ebbd4:
    lwz     r3, 0x74(r28)
    mr      r4, r30
    bl      setBck__6MActorFPCc
branch_0x800ebbe0:
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 15, 13
    stw     r0, 0xf0(r28)
    b       branch_0x800ebc1c

branch_0x800ebbf0:
    cmplwi  r31, 0x0
    beq-    branch_0x800ebc10
    lwz     r0, 0x44(r31)
    cmplw   r0, r28
    bne-    branch_0x800ebc10
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x800ebc1c
branch_0x800ebc10:
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 15, 13
    stw     r0, 0xf0(r28)
branch_0x800ebc1c:
    lwz     r0, 0xf0(r28)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x800ebe0c
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xdc(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0x10(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x14(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x18(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f3, -0x5ab8(rtoc)
    stfs    f3, 0xd8(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xd8(sp)
    lfs     f2, 0xdc(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f3
    cror    2, 0, 2
    bne-    branch_0x800ebcb0
    fmr     f0, f1
    b       branch_0x800ebcd4

branch_0x800ebcb0:
    frsqrte f4, f1
    lfs     f3, -0x5aac(rtoc)
    lfs     f0, -0x5aa8(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f0, f1, f0
branch_0x800ebcd4:
    lfs     f2, -0x5ab8(rtoc)
    fcmpu   cr0, f2, f0
    beq-    branch_0x800ebe0c
    lfs     f0, -0x5a94(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800ebd00
    stfs    f2, 0xdc(sp)
    stfs    f2, 0xd8(sp)
    stfs    f2, 0xd4(sp)
    b       branch_0x800ebd30

branch_0x800ebd00:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5ac0(rtoc)
    lfs     f0, 0xd4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xd4(sp)
    lfs     f0, 0xd8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xdc(sp)
branch_0x800ebd30:
    lbz     r0, -0x6837(r13)
    extsb.  r0, r0
    bne-    branch_0x800ebd58
    lfs     f1, -0x5ab8(rtoc)
    li      r0, 0x1
    stfs    f1, 0xc(r29)
    lfs     f0, -0x5ac0(rtoc)
    stfs    f0, 0x10(r29)
    stfs    f1, 0x14(r29)
    stb     r0, -0x6837(r13)
branch_0x800ebd58:
    lfs     f3, 0xdc(sp)
    lfs     f6, 0xc(r29)
    lfs     f2, 0x14(r29)
    lfs     f5, 0xd8(sp)
    fmuls   f0, f6, f3
    lfs     f7, 0xd4(sp)
    fmuls   f1, f2, f5
    lfs     f4, 0x10(r29)
    fmsubs  f30, f2, f7, f0
    fmuls   f2, f4, f7
    lfs     f0, -0x5a94(rtoc)
    fmsubs  f31, f4, f3, f1
    fmuls   f1, f30, f30
    fmsubs  f29, f6, f5, f2
    fmadds  f1, f31, f31, f1
    fmadds  f1, f29, f29, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800ebdb4
    lfs     f5, -0x5ab8(rtoc)
    fmr     f4, f5
    fmr     f3, f4
    b       branch_0x800ebdcc

branch_0x800ebdb4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x5ac0(rtoc)
    fmuls   f0, f0, f1
    fmuls   f3, f31, f0
    fmuls   f4, f30, f0
    fmuls   f5, f29, f0
branch_0x800ebdcc:
    lfs     f1, 0x164(r28)
    lfs     f2, -0x5aa0(rtoc)
    fsubs   f0, f3, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0x164(r28)
    lfs     f1, 0x168(r28)
    fsubs   f0, f4, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0x168(r28)
    lfs     f1, 0x16c(r28)
    fsubs   f0, f5, f1
    fmuls   f0, f2, f0
    fadds   f0, f1, f0
    stfs    f0, 0x16c(r28)
branch_0x800ebe0c:
    lfs     f1, -0x5abc(rtoc)
    lfs     f0, 0x170(r28)
    lwz     r0, -0x5eac(r13)
    fmuls   f1, f1, f0
    lwz     r4, -0x5ea8(r13)
    lfs     f2, -0x5a8c(rtoc)
    lfs     f0, 0x174(r28)
    fctiwz  f1, f1
    stfd    f1, 0x130(sp)
    lwz     r3, 0x134(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fneg    f1, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x174(r28)
    lfs     f1, 0x170(r28)
    lfs     f0, 0x174(r28)
    fadds   f0, f1, f0
    stfs    f0, 0x170(r28)
    lfs     f1, 0x170(r28)
    lfs     f0, -0x5a88(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ebe84
    stfs    f0, 0x170(r28)
    lfs     f0, 0x174(r28)
    fneg    f0, f0
    stfs    f0, 0x174(r28)
    b       branch_0x800ebea0

branch_0x800ebe84:
    lfs     f0, -0x5a84(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ebea0
    stfs    f0, 0x170(r28)
    lfs     f0, 0x174(r28)
    fneg    f0, f0
    stfs    f0, 0x174(r28)
branch_0x800ebea0:
    lfs     f1, 0x174(r28)
    mr      r3, r28
    lfs     f0, -0x5a80(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x174(r28)
    bl      moveObject__10TLiveActorFv
    lwz     r0, 0x164(sp)
    lfd     f31, 0x158(sp)
    lfd     f30, 0x150(sp)
    mtlr    r0
    lfd     f29, 0x148(sp)
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    lwz     r29, 0x13c(sp)
    lwz     r28, 0x138(sp)
    addi    sp, sp, 0x160
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_800ebee4
set_f___Q29JGeometry8TVec3_f_Ffff_800ebee4: # 0x800ebee4
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl calcRootMatrix__11TFruitsBoatFv
calcRootMatrix__11TFruitsBoatFv: # 0x800ebef4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    bl      getModel__10TLiveActorCFv
    mr      r31, r3
    lfs     f1, 0x30(r29)
    addi    r30, r31, 0x20
    lfs     f2, 0x34(r29)
    lfs     f3, 0x38(r29)
    mr      r3, r30
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f1, -0x5a7c(rtoc)
    addi    r3, sp, 0x10
    lfs     f0, 0x170(r29)
    addi    r4, r29, 0x164
    fmuls   f1, f1, f0
    bl      PSMTXRotAxisRad
    addi    r4, r30, 0x0
    addi    r5, r30, 0x0
    addi    r3, sp, 0x10
    bl      PSMTXConcat
    lfs     f1, 0x10(r29)
    mr      r3, r30
    lfs     f2, 0x14(r29)
    mr      r4, r30
    lfs     f3, 0x18(r29)
    bl      PSMTXTransApply
    lwz     r3, 0x24(r29)
    lwz     r0, 0x28(r29)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setGroundCollision__11TFruitsBoatFv
setGroundCollision__11TFruitsBoatFv: # 0x800ebfa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    lwz     r4, MarioHitActorPos(r13)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x48(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800ec108
    lfs     f1, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x48(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x5ab8(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800ec044
    b       branch_0x800ec068

branch_0x800ec044:
    frsqrte f3, f4
    lfs     f2, -0x5aac(rtoc)
    lfs     f0, -0x5aa8(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800ec068:
    lfs     f0, -0x5a78(rtoc)
    fcmpo   cr0, f4, f0
    blt-    branch_0x800ec108
    bl      SMS_GetYoshi__Fv
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800ec08c
    li      r0, 0x0
    b       branch_0x800ec090

branch_0x800ec08c:
    li      r0, 0x1
branch_0x800ec090:
    cmpwi   r0, 0x0
    beq-    branch_0x800ec134
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x10(r31)
    lfs     f1, -0x5a78(rtoc)
    lfs     f0, 0x20(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ec134
    bl      SMS_GetYoshi__Fv
    lfs     f2, -0x5a78(rtoc)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x20(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ec134
    bl      SMS_GetYoshi__Fv
    lfs     f2, 0x18(r31)
    lfs     f1, -0x5a78(rtoc)
    lfs     f0, 0x28(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ec134
    bl      SMS_GetYoshi__Fv
    lfs     f2, -0x5a78(rtoc)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x28(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ec134
branch_0x800ec108:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0xec(r31)
    lwz     r4, 0x58(r3)
    lwz     r3, 0x8(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800ec134
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x800ec134:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl receiveMessage__11TFruitsBoatFP9THitActorUl
receiveMessage__11TFruitsBoatFP9THitActorUl: # 0x800ec148
    li      r3, 0x0
    blr


.globl init__11TFruitsBoatFP12TLiveManager
init__11TFruitsBoatFP12TLiveManager: # 0x800ec150
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stw     r31, 0xf4(sp)
    mr      r31, r3
    stw     r30, 0xf0(sp)
    addi    r30, r5, 0x1958
    stw     r29, 0xec(sp)
    stw     r4, 0x70(r3)
    addi    r4, r31, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800ec1a4
    lwz     r4, 0x70(r31)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800ec1a4:
    stw     r29, 0x78(r31)
    lis     r4, 0x4000
    addi    r3, r31, 0x0
    lfs     f1, -0x5ab8(rtoc)
    addi    r4, r4, 0x7b
    li      r5, 0x1
    fmr     f2, f1
    lis     r6, 0xc000
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, 0x64(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    clrrwi  r4, r4, 1
    stw     r4, 0x64(r31)
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lwz     r3, 0x124(r31)
    lwz     r4, 0x0(r3)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800ec24c
    lwz     r5, 0x4(r3)
    addi    r3, sp, 0xc4
    bl      indexToPoint__9TGraphWebCFi
    lwz     r3, 0xc4(sp)
    li      r6, -0x1
    lwz     r0, 0xc8(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0xcc(sp)
    stw     r0, 0x18(r31)
    lwz     r29, 0x124(r31)
    lwz     r5, 0x8(r29)
    lwz     r4, 0x4(r29)
    lwz     r3, 0x0(r29)
    bl      getShortestNextIndex__9TGraphWebCFiiUl
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      moveTo__12TGraphTracerFi
branch_0x800ec24c:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x54(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x800ec35c
    bge-    branch_0x800ec3d0
    cmpwi   r0, 0x0
    beq-    branch_0x800ec274
    bge-    branch_0x800ec2e8
    b       branch_0x800ec3d0


.incbin "./baserom/code/Text_0x80005600.bin", 0xe6c70, 0x800ec274 - 0x800ec270
branch_0x800ec274:
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800ec298
    addi    r3, r29, 0x0
    addi    r6, r31, 0x0
    addi    r5, r30, 0x200
    li      r4, 0x1
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x800ec298:
    stw     r29, 0xec(r31)
    addi    r4, r30, 0xf8
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    addi    r4, r30, 0x214
    li      r5, 0x1
    lwz     r3, 0xec(r31)
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    lfs     f0, -0x5a74(rtoc)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, -0x5a70(rtoc)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x800ec440

branch_0x800ec2e8:
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800ec30c
    addi    r3, r29, 0x0
    addi    r6, r31, 0x0
    addi    r5, r30, 0x224
    li      r4, 0x1
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x800ec30c:
    stw     r29, 0xec(r31)
    addi    r4, r30, 0x120
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    addi    r4, r30, 0x238
    li      r5, 0x1
    lwz     r3, 0xec(r31)
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    lfs     f0, -0x5a6c(rtoc)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, -0x5a68(rtoc)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x800ec440

branch_0x800ec35c:
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800ec380
    addi    r3, r29, 0x0
    addi    r6, r31, 0x0
    addi    r5, r30, 0x248
    li      r4, 0x1
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x800ec380:
    stw     r29, 0xec(r31)
    addi    r4, r30, 0x148
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    addi    r4, r30, 0x25c
    li      r5, 0x1
    lwz     r3, 0xec(r31)
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    lfs     f0, -0x5a78(rtoc)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, -0x5a98(rtoc)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x800ec440

branch_0x800ec3d0:
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800ec3f4
    addi    r3, r29, 0x0
    addi    r6, r31, 0x0
    addi    r5, r30, 0x26c
    li      r4, 0x1
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x800ec3f4:
    stw     r29, 0xec(r31)
    addi    r4, r30, 0x170
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    addi    r4, r30, 0x280
    li      r5, 0x1
    lwz     r3, 0xec(r31)
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    lfs     f0, -0x5a64(rtoc)
    mr      r3, r31
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, -0x5a60(rtoc)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x800ec440:
    lwz     r30, 0xec(r31)
    addi    r3, sp, 0x90
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, 0x30(r31)
    lfs     f5, 0x34(r31)
    lfs     f6, 0x38(r31)
    lfs     f7, 0x24(r31)
    lfs     f8, 0x28(r31)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r30, 0x8(r30)
    addi    r3, sp, 0x90
    addi    r4, r30, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x6836(r13)
    extsb.  r0, r0
    bne-    branch_0x800ec4dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6834(r13)
    subi    r0, r3, 0x54f0
    lis     r4, 0x800f
    stw     r0, -0x6834(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x23f0
    subi    r4, r4, 0x4d44
    subi    r3, r13, 0x6834
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6836(r13)
branch_0x800ec4dc:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6834
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r4, 0x124(r31)
    lwz     r3, 0x0(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800ec51c
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
    b       branch_0x800ec554

branch_0x800ec51c:
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800ec548
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
    b       branch_0x800ec554

branch_0x800ec548:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
branch_0x800ec554:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb8(r3)
    mr      r3, r31
    stfs    f0, 0x140(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xcc(r3)
    li      r4, 0x2
    stfs    f0, 0x144(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x20
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r0, 0xfc(sp)
    lwz     r31, 0xf4(sp)
    lwz     r30, 0xf0(sp)
    mtlr    r0
    lwz     r29, 0xec(sp)
    addi    sp, sp, 0xf8
    blr


.globl load__11TFruitsBoatFR20JSUMemoryInputStream
load__11TFruitsBoatFR20JSUMemoryInputStream: # 0x800ec5f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x248(sp)
    stw     r31, 0x244(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x240(sp)
    stw     r29, 0x23c(sp)
    addi    r29, r4, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x138
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x138
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x138
    mtlr    r12
    blrl
    addi    r30, r3, 0x0
    addi    r3, r29, 0x0
    addi    r4, sp, 0x38
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r3, -0x70b0(r13)
    addi    r4, sp, 0x38
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r31)
    mr      r29, r3
    stw     r29, 0x0(r4)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0xbc(r12)
    mtlr    r12
    blrl
    cmplwi  r29, 0x0
    beq-    branch_0x800ec6b8
    mr      r3, r29
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x800ec730
branch_0x800ec6b8:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x38
    bl      setBckTrack__11TFruitsBoatFPCc
    cmpwi   r3, 0x0
    bne-    branch_0x800ec730
    lbz     r0, -0x6830(r13)
    extsb.  r0, r0
    bne-    branch_0x800ec710
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x682c(r13)
    subi    r0, r3, 0x5500
    lis     r4, 0x800f
    stw     r0, -0x682c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x23fc
    subi    r4, r4, 0x5324
    subi    r3, r13, 0x682c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6830(r13)
branch_0x800ec710:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x682c
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
branch_0x800ec730:
    lwz     r0, 0x24c(sp)
    lwz     r31, 0x244(sp)
    lwz     r30, 0x240(sp)
    mtlr    r0
    lwz     r29, 0x23c(sp)
    addi    sp, sp, 0x248
    blr


.globl getRootJointMtx__11TFruitsBoatCFv
getRootJointMtx__11TFruitsBoatCFv: # 0x800ec74c
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    blr


.globl setBckTrack__11TFruitsBoatFPCc
setBckTrack__11TFruitsBoatFPCc: # 0x800ec75c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stmw    r27, 0x3c(sp)
    mr      r31, r3
    mr      r27, r4
    lwz     r3, 0x70(r3)
    bl      getMActorAnmData__11TObjManagerFv
    lwz     r29, 0x2c(r3)
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x800ec84c

branch_0x800ec790:
    lwz     r4, 0x8(r29)
    mr      r3, r27
    lwzx    r4, r4, r30
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x800ec844
    lwz     r0, 0x0(r29)
    cmpw    r28, r0
    bge-    branch_0x800ec7c0
    lwz     r3, 0xc(r29)
    lwzx    r0, r3, r30
    b       branch_0x800ec7c4

branch_0x800ec7c0:
    li      r0, 0x0
branch_0x800ec7c4:
    stw     r0, 0x15c(r31)
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800ec7f0
    lis     r3, 0x803b
    subi    r0, r3, 0x2eac
    stw     r0, 0x0(r27)
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
branch_0x800ec7f0:
    stw     r27, 0x160(r31)
    lwz     r4, 0x15c(r31)
    lwz     r3, 0x160(r31)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r5, 0x15c(r31)
    mr      r3, r31
    lwz     r4, 0x160(r31)
    lbz     r0, 0x0(r5)
    stb     r0, 0x4(r4)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0xe0(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f0, f31, f1
    lwz     r4, 0x160(r31)
    li      r3, 0x0
    stfs    f0, 0xc(r4)
    b       branch_0x800ec85c

branch_0x800ec844:
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x800ec84c:
    lwz     r0, 0x0(r29)
    cmpw    r28, r0
    blt+    branch_0x800ec790
    li      r3, -0x1
branch_0x800ec85c:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __ct__11TFruitsBoatFPCc
__ct__11TFruitsBoatFPCc: # 0x800ec874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x548c
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    sth     r0, 0x150(r31)
    lfs     f0, -0x5a5c(rtoc)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stw     r0, 0x15c(r31)
    stw     r0, 0x160(r31)
    lfs     f0, -0x5ac0(rtoc)
    stfs    f0, 0x164(r31)
    lfs     f0, -0x5ab8(rtoc)
    stfs    f0, 0x168(r31)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x170(r31)
    stfs    f0, 0x174(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TFruitsBoatManagerFv
__dt__18TFruitsBoatManagerFv: # 0x800ec8fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ec944
    lis     r3, 0x803c
    subi    r0, r3, 0x54e0
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800ec944
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ec944:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TFruitsBoatFv
__dt__11TFruitsBoatFv: # 0x800ec960
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ec9b0
    lis     r3, 0x803c
    subi    r3, r3, 0x548c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800ec9b0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ec9b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_fruitsboat_cpp
__sinit_fruitsboat_cpp: # 0x800ec9cc
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x23d8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800eca14
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800eca14:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800eca44
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800eca44:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800eca74
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800eca74:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecaa4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800ecaa4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecad4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800ecad4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecb04
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800ecb04:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecb34
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800ecb34:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecb64
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800ecb64:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecb94
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800ecb94:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecbc4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800ecbc4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecbf4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800ecbf4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecc24
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800ecc24:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecc54
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800ecc54:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800ecc84
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800ecc84:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800eccb4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800eccb4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TFruitsBoatFv
_32___dt__11TFruitsBoatFv: # 0x800eccc8
    subi    r3, r3, 0x20
    b       __dt__11TFruitsBoatFv

