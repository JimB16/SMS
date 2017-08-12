
.globl __ct__8TMapWarpFv
__ct__8TMapWarpFv: # 0x80194ea0
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    lfs     f0, -0x4288(r2)
    stfs    f0, 0xc(r3)
    blr


.globl init__8TMapWarpFR20JSUMemoryInputStream
init__8TMapWarpFR20JSUMemoryInputStream: # 0x80194ebc
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x238(sp)
    stmw    r19, 0x204(sp)
    addi    r25, r4, 0x0
    addi    r31, r3, 0x0
    addi    r3, r25, 0x0
    addi    r4, sp, 0x1f8
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1f8(sp)
    stw     r0, 0x0(r31)
    lwz     r0, 0x0(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x801951d0
    addi    r3, r25, 0x0
    addi    r4, sp, 0x1f8
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1f8(sp)
    stw     r0, 0x8(r31)
    lwz     r0, 0x0(r31)
    slwi    r22, r0, 1
    mulli   r3, r22, 0x14
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__Q28TMapWarp12TMapWarpInfoFv@h
    addi    r4, r4, __ct__Q28TMapWarp12TMapWarpInfoFv@l
    addi    r7, r22, 0x0
    li      r5, 0x0
    li      r6, 0x14
    bl      __construct_new_array
    lis     r4, __ct__Q29JGeometry8TVec3_f_Fv@h
    stw     r3, 0x4(r31)
    addi    r4, r4, __ct__Q29JGeometry8TVec3_f_Fv@l
    addi    r3, sp, 0x108
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x14
    bl      __construct_array
    addi    r24, sp, 0x68
    addi    r22, sp, 0xb8
    li      r19, 0x0
    li      r23, 0x0
    b       branch_0x80194fa8

branch_0x80194f70:
    addi    r3, r25, 0x0
    addi    r4, sp, 0x1f8
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1f8(sp)
    addi    r3, r25, 0x0
    addi    r4, sp, 0x1f8
    stwx    r0, r24, r23
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1f8(sp)
    addi    r19, r19, 0x1
    stwx    r0, r22, r23
    addi    r23, r23, 0x4
branch_0x80194fa8:
    lwz     r0, 0x0(r31)
    cmpw    r19, r0
    blt+    branch_0x80194f70
    lis     r3, point_name_table_2630@ha
    addi    r27, r25, 0x0
    addi    r30, r25, 0x0
    addi    r26, r25, 0x0
    addi    r29, r25, 0x0
    addi    r28, r25, 0x0
    slwi    r24, r0, 1
    addi    r22, r3, point_name_table_2630@l
    li      r21, 0x0
    b       branch_0x801950b8

branch_0x80194fdc:
    mr      r3, r25
    bl      readString__14JSUInputStreamFv
    addi    r20, r3, 0x0
    li      r23, 0x0
    b       branch_0x80194ff4

branch_0x80194ff0:
    addi    r23, r23, 0x8
branch_0x80194ff4:
    add     r19, r22, r23
    lwz     r3, 0x0(r19)
    mr      r4, r20
    bl      strcmp
    cmpwi   r3, 0x0
    bne+    branch_0x80194ff0
    lwz     r0, 0x4(r19)
    addi    r5, sp, 0x108
    addi    r3, r25, 0x0
    mulli   r0, r0, 0xc
    add     r5, r5, r0
    addi    r4, r5, 0x0
    addi    r20, r5, 0x8
    addi    r23, r5, 0x4
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r27, 0x0
    addi    r4, r23, 0x0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r20, 0x0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r25, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r26, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r25, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r25, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r28, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r21, r21, 0x1
branch_0x801950b8:
    cmpw    r21, r24
    blt+    branch_0x80194fdc
    addi    r11, sp, 0xb8
    addi    r10, sp, 0x68
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    b       branch_0x801951ac

branch_0x801950dc:
    addi    r19, sp, 0x108
    lwz     r24, 0x4(r31)
    add     r19, r19, r6
    lfs     f1, 0x0(r19)
    addi    r23, r5, 0x8
    lfs     f0, 0xc(r19)
    addi    r12, r5, 0xc
    addi    r9, r5, 0x10
    fsubs   f0, f1, f0
    addi    r8, r5, 0x4
    addi    r7, r5, 0x14
    addi    r0, r5, 0x18
    stfsx   f0, r24, r23
    addi    r3, r3, 0x1
    lfs     f1, 0x4(r19)
    addi    r6, r6, 0x18
    lfs     f0, 0x10(r19)
    lwz     r23, 0x4(r31)
    fsubs   f0, f1, f0
    stfsx   f0, r23, r12
    lfs     f1, 0x8(r19)
    lfs     f0, 0x14(r19)
    lwz     r12, 0x4(r31)
    fsubs   f0, f1, f0
    stfsx   f0, r12, r9
    lwzx    r19, r11, r4
    lwz     r9, 0x4(r31)
    stwx    r19, r9, r5
    lwzx    r12, r10, r4
    addi    r4, r4, 0x4
    lwz     r9, 0x4(r31)
    stwx    r12, r9, r8
    lwz     r8, 0x4(r31)
    add     r8, r8, r5
    lfs     f0, 0x8(r8)
    fneg    f0, f0
    stfs    f0, 0x1c(r8)
    lwz     r8, 0x4(r31)
    add     r8, r8, r5
    lfs     f0, 0xc(r8)
    fneg    f0, f0
    stfs    f0, 0x20(r8)
    lwz     r8, 0x4(r31)
    add     r8, r8, r5
    lfs     f0, 0x10(r8)
    addi    r5, r5, 0x28
    fneg    f0, f0
    stfs    f0, 0x24(r8)
    lwz     r8, 0x4(r31)
    stwx    r12, r8, r7
    lwz     r7, 0x4(r31)
    stwx    r19, r7, r0
branch_0x801951ac:
    lwz     r0, 0x0(r31)
    cmpw    r3, r0
    blt+    branch_0x801950dc
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x801951d0
    lfs     f0, -0x4284(r2)
    stfs    f0, 0xc(r31)
branch_0x801951d0:
    lmw     r19, 0x204(sp)
    lwz     r0, 0x23c(sp)
    addi    sp, sp, 0x238
    mtlr    r0
    blr


.globl __ct__Q28TMapWarp12TMapWarpInfoFv
__ct__Q28TMapWarp12TMapWarpInfoFv: # 0x801951e4
    blr


.globl initModel__8TMapWarpFv
initModel__8TMapWarpFv: # 0x801951e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    li      r30, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    lwz     r4, R13Off_m0x6328(r13)
    lwz     r3, 0x14(r4)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r31, 0x10(r3)
    b       branch_0x8019525c

branch_0x80195220:
    lwz     r0, 0x8(r29)
    cmpw    r30, r0
    beq-    branch_0x80195258
    lwz     r3, R13Off_m0x6328(r13)
    clrlslwi  r0, r30, 16, 2
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
branch_0x80195258:
    addi    r30, r30, 0x1
branch_0x8019525c:
    cmpw    r30, r31
    blt+    branch_0x80195220
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl watchToWarp__8TMapWarpFv
watchToWarp__8TMapWarpFv: # 0x80195280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x170(sp)
    stw     r31, 0x16c(sp)
    addi    r4, sp, 0x13c
    stw     r30, 0x168(sp)
    mr      r30, r3
    stw     r29, 0x164(sp)
    lwz     r5, R13Off_m0x60b4(r13)
    lfs     f1, -0x4280(r2)
    lfs     f0, 0x4(r5)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r5)
    lfs     f3, 0x8(r5)
    bl      checkGroundExactY__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x13c(sp)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x200
    beq-    branch_0x801952d8
    cmplwi  r0, 0x201
    bne-    branch_0x801952e0
branch_0x801952d8:
    li      r0, 0x1
    b       branch_0x801952e4

branch_0x801952e0:
    li      r0, 0x0
branch_0x801952e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801953f0
    lha     r0, 0x2(r3)
    lwz     r3, 0x4(r30)
    mulli   r31, r0, 0x14
    lwz     r0, 0x8(r30)
    lwzx    r29, r3, r31
    cmpw    r0, r29
    beq-    branch_0x801953f0
    lwz     r3, R13Off_m0x6328(r13)
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6328(r13)
    slwi    r0, r29, 2
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x4(r30)
    addi    r4, r31, 0x8
    addi    r3, sp, 0xa0
    lwzx    r0, r5, r31
    stw     r0, 0x8(r30)
    lwz     r6, R13Off_m0x60b4(r13)
    lwz     r7, 0x4(r30)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    add     r4, r7, r4
    stw     r5, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xa8(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r5, 0xa0(sp)
    lis     r0, 0x4330
    lwz     r4, 0xa4(sp)
    addi    r3, sp, 0xe8
    stw     r5, 0xe8(sp)
    lwz     r5, 0xa8(sp)
    stw     r4, 0xec(sp)
    lwz     r4, R13Off_m0x60ac(r13)
    stw     r5, 0xf0(sp)
    lfd     f2, -0x4268(r2)
    lha     r4, 0x0(r4)
    lfs     f3, -0x427c(r2)
    xoris   r4, r4, 0x8000
    lfs     f0, -0x4278(r2)
    stw     r4, 0x15c(sp)
    stw     r0, 0x158(sp)
    lfd     f1, 0x158(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fdivs   f1, f1, f0
    bl      SMS_MarioWarpRequest__FRCQ29JGeometry8TVec3_f_f
branch_0x801953f0:
    lwz     r3, 0x13c(sp)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x202
    beq-    branch_0x80195408
    cmplwi  r0, 0x203
    bne-    branch_0x80195410
branch_0x80195408:
    li      r0, 0x1
    b       branch_0x80195414

branch_0x80195410:
    li      r0, 0x0
branch_0x80195414:
    clrlwi. r0, r0, 24
    beq-    branch_0x80195488
    lha     r29, 0x2(r3)
    lwz     r0, 0x8(r30)
    cmpw    r0, r29
    beq-    branch_0x80195488
    lwz     r3, R13Off_m0x6328(r13)
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6328(r13)
    slwi    r0, r29, 2
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r29, 0x8(r30)
branch_0x80195488:
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, R13Off_m0x70e4(r13)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    beq-    branch_0x80195584
    lwz     r4, R13Off_m0x70e4(r13)
    slwi    r0, r3, 2
    lfs     f1, -0x4274(r2)
    addi    r3, sp, 0x10c
    lwz     r4, 0x14(r4)
    lfs     f5, -0x4270(r2)
    fmr     f2, f1
    lwz     r4, 0x10(r4)
    fmr     f3, f1
    lwzx    r29, r4, r0
    lfs     f0, 0x20(r29)
    lfs     f4, 0x1c(r29)
    lfs     f6, 0x18(r29)
    fmuls   f0, f5, f0
    fmuls   f4, f5, f4
    fmuls   f5, f5, f6
    fctiwz  f0, f0
    fctiwz  f4, f4
    fctiwz  f5, f5
    stfd    f0, 0x148(sp)
    stfd    f5, 0x158(sp)
    lwz     r6, 0x14c(sp)
    stfd    f4, 0x150(sp)
    lwz     r4, 0x15c(sp)
    lwz     r5, 0x154(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lfs     f0, -0x4274(r2)
    addi    r4, sp, 0x100
    addi    r5, r4, 0x0
    stfs    f0, 0x100(sp)
    addi    r3, sp, 0x10c
    stfs    f0, 0x104(sp)
    stfs    f0, 0x108(sp)
    lfs     f1, -0x426c(r2)
    lfs     f0, 0x40(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x108(sp)
    bl      PSMTXMultVec
    lwz     r3, 0x38(r29)
    cmpwi   r3, 0x0
    bne-    branch_0x80195548
    li      r0, 0x1
    b       branch_0x8019554c

branch_0x80195548:
    li      r0, 0x0
branch_0x8019554c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80195570
    cmpwi   r3, 0x1
    bne-    branch_0x80195564
    li      r0, 0x1
    b       branch_0x80195568

branch_0x80195564:
    li      r0, 0x0
branch_0x80195568:
    clrlwi. r0, r0, 24
    beq-    branch_0x8019557c
branch_0x80195570:
    addi    r3, sp, 0x100
    bl      SMS_FlowMoveMario__FRCQ29JGeometry8TVec3_f_
    b       branch_0x80195584

branch_0x8019557c:
    addi    r3, sp, 0x100
    bl      SMS_WindMoveMario__FRCQ29JGeometry8TVec3_f_
branch_0x80195584:
    lwz     r0, 0x174(sp)
    lwz     r31, 0x16c(sp)
    lwz     r30, 0x168(sp)
    mtlr    r0
    lwz     r29, 0x164(sp)
    addi    sp, sp, 0x170
    blr


.globl changeModel__8TMapWarpFi
changeModel__8TMapWarpFi: # 0x801955a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    mr      r30, r3
    lwz     r0, 0x8(r3)
    cmpw    r0, r31
    beq-    branch_0x80195624
    lwz     r3, R13Off_m0x6328(r13)
    slwi    r0, r0, 2
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6328(r13)
    slwi    r0, r31, 2
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r31, 0x8(r30)
branch_0x80195624:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __sinit_MapWarp_cpp
__sinit_MapWarp_cpp: # 0x8019563c
    mflr    r0
    lis     r3, unk_803f80e8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f80e8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80195684
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80195684:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801956b4
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801956b4:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801956e4
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801956e4:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80195714
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80195714:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80195744
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80195744:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80195774
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80195774:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801957a4
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801957a4:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801957d4
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801957d4:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80195804
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80195804:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80195834
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80195834:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80195864
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80195864:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80195894
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80195894:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801958c4
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801958c4:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801958f4
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801958f4:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80195924
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80195924:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

