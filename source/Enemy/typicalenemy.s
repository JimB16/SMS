
.globl __dt__24TNerveTypicalGraphWanderFv
__dt__24TNerveTypicalGraphWanderFv: # 0x8006f4f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006f53c
    lis     r3, __vvt__24TNerveTypicalGraphWander@h
    addi    r0, r3, __vvt__24TNerveTypicalGraphWander@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8006f52c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8006f52c:
    extsh.  r0, r4
    ble-    branch_0x8006f53c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006f53c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveTypicalGraphWanderCFP24TSpineBase_10TLiveActor_
execute__24TNerveTypicalGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x8006f554
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8006f584
    mr      r3, r30
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
branch_0x8006f584:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8006f620
    lbz     r0, R13Off_m0x6e78(r13)
    extsb.  r0, r0
    bne-    branch_0x8006f5e4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveTypicalGraphWander@h
    stw     r0, R13Off_m0x6e74(r13)
    addi    r0, r3, __vvt__24TNerveTypicalGraphWander@l
    lis     r4, __dt__24TNerveTypicalGraphWanderFv@ha
    stw     r0, R13Off_m0x6e74(r13)
    lis     r3, unk_803f0a78@h
    addi    r5, r3, unk_803f0a78@l
    addi    r4, r4, __dt__24TNerveTypicalGraphWanderFv@l
    addi    r3, r13, R13Off_m0x6e74
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6e78(r13)
branch_0x8006f5e4:
    addi    r4, r13, R13Off_m0x6e74
    cmplwi  r4, 0x0
    beq-    branch_0x8006f618
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8006f618
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8006f618:
    li      r3, 0x1
    b       branch_0x8006f640

branch_0x8006f620:
    lfs     f2, 0x144(r30)
    mr      r3, r30
    lfs     f1, 0x140(r30)
    lfs     f3, -0x6b28(r2)
    bl      walkToCurPathNode__11TSpineEnemyFfff
    mr      r3, r30
    bl      doShortCut__11TSpineEnemyFv
    li      r3, 0x0
branch_0x8006f640:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl theNerve__24TNerveTypicalGraphWanderFv
theNerve__24TNerveTypicalGraphWanderFv: # 0x8006f658
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6e78(r13)
    extsb.  r0, r0
    bne-    branch_0x8006f6a8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveTypicalGraphWander@h
    stw     r0, R13Off_m0x6e74(r13)
    addi    r0, r3, __vvt__24TNerveTypicalGraphWander@l
    lis     r4, __dt__24TNerveTypicalGraphWanderFv@ha
    stw     r0, R13Off_m0x6e74(r13)
    lis     r3, unk_803f0a78@h
    addi    r5, r3, unk_803f0a78@l
    addi    r4, r4, __dt__24TNerveTypicalGraphWanderFv@l
    addi    r3, r13, R13Off_m0x6e74
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6e78(r13)
branch_0x8006f6a8:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6e74
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__15TTypicalManagerFv
createEnemyInstance__15TTypicalManagerFv: # 0x8006f6bc
    mflr    r0
    li      r3, 0x150
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8006f728
    stw     r31, 0xc(sp)
    addi    r4, r2, R2Off_m0x6b24
    lwz     r3, 0xc(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__13TTypicalEnemy@h
    lwz     r4, 0xc(sp)
    addi    r3, r3, __vvt__13TTypicalEnemy@l
    stw     r3, 0x0(r4)
    addi    r0, r3, 0x24
    li      r3, 0x34
    stw     r0, 0x20(r4)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8006f720
    mr      r3, r30
    bl      __ct__7TWalkerFv
branch_0x8006f720:
    lwz     r3, 0xc(sp)
    stw     r30, 0x88(r3)
branch_0x8006f728:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__15TTypicalManagerFR20JSUMemoryInputStream
load__15TTypicalManagerFR20JSUMemoryInputStream: # 0x8006f744
    mflr    r0
    lis     r5, unk_80379ef8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, unk_80379ef8@l
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    li      r3, 0xbc
    stw     r28, 0x10(sp)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8006f7d4
    addi    r3, r28, 0x0
    addi    r4, r31, 0xe0
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r31, 0xf4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xa8
    addi    r6, r31, 0xf4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r0, r3, __vvt__10TParamT_f_@l
    stw     r0, 0xa8(r28)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r0, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6b1c(r2)
    mr      r3, r28
    stfs    f0, 0xb8(r28)
    stw     r0, 0xa8(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x8006f7d4:
    stw     r28, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__15TTypicalManagerFPCc
__ct__15TTypicalManagerFPCc: # 0x8006f804
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__15TTypicalManager@h
    addi    r0, r3, __vvt__15TTypicalManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__13TTypicalEnemyFP12TLiveManager
init__13TTypicalEnemyFP12TLiveManager: # 0x8006f840
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      init__11TSpineEnemyFP12TLiveManager
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, r2, R2Off_m0x6b18
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r31)
    stw     r3, 0x0(r4)
    lbz     r0, R13Off_m0x6e78(r13)
    extsb.  r0, r0
    bne-    branch_0x8006f8b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveTypicalGraphWander@h
    stw     r0, R13Off_m0x6e74(r13)
    addi    r0, r3, __vvt__24TNerveTypicalGraphWander@l
    lis     r4, __dt__24TNerveTypicalGraphWanderFv@ha
    stw     r0, R13Off_m0x6e74(r13)
    lis     r3, unk_803f0a78@h
    addi    r5, r3, unk_803f0a78@l
    addi    r4, r4, __dt__24TNerveTypicalGraphWanderFv@l
    addi    r3, r13, R13Off_m0x6e74
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6e78(r13)
branch_0x8006f8b0:
    lwz     r6, 0x8c(r31)
    li      r5, 0x0
    addi    r4, r13, R13Off_m0x6e74
    stw     r5, 0x8(r6)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r5, 0x20(r6)
    stw     r4, 0x14(r6)
    stw     r4, 0x18(r6)
    stw     r5, 0x1c(r6)
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__13TTypicalEnemyFPCc
__ct__13TTypicalEnemyFPCc: # 0x8006f8f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__13TTypicalEnemy@h
    lwz     r4, 0x8(sp)
    addi    r3, r3, __vvt__13TTypicalEnemy@l
    stw     r3, 0x0(r4)
    addi    r0, r3, 0x24
    li      r3, 0x34
    stw     r0, 0x20(r4)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8006f944
    mr      r3, r31
    bl      __ct__7TWalkerFv
branch_0x8006f944:
    lwz     r3, 0x8(sp)
    stw     r31, 0x88(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15TTypicalManagerFv
__dt__15TTypicalManagerFv: # 0x8006f960
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8006f9a8
    lis     r3, __vvt__15TTypicalManager@h
    addi    r0, r3, __vvt__15TTypicalManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8006f9a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8006f9a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TTypicalEnemyFv
__dt__13TTypicalEnemyFv: # 0x8006f9c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8006fa14
    lis     r3, __vvt__13TTypicalEnemy@h
    addi    r3, r3, __vvt__13TTypicalEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8006fa14
    mr      r3, r30
    bl      __dl__FPv
branch_0x8006fa14:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl unk_8006fa30
unk_8006fa30: # 0x8006fa30
    addi    r3, r3, -0x20
    b       __dt__13TTypicalEnemyFv

