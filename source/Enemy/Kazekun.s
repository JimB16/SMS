
.globl __dt__21TNerveKazekunHitWaterFv
__dt__21TNerveKazekunHitWaterFv: # 0x8010c2b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010c2fc
    lis     r3, __vvt__21TNerveKazekunHitWater@ha
    addi    r0, r3, __vvt__21TNerveKazekunHitWater@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010c2ec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010c2ec:
    extsh.  r0, r4
    ble-    branch_0x8010c2fc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010c2fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveKazekunHitWaterCFP24TSpineBase_10TLiveActor_
execute__21TNerveKazekunHitWaterCFP24TSpineBase_10TLiveActor_: # 0x8010c314
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010c384
    lis     r4, unk_80383fe8@h
    lwz     r3, 0x74(r31)
    addi    r4, r4, unk_80383fe8@l
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x291d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8010c384
    addi    r4, r31, 0x10
    li      r3, 0x291d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8010c384:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8010c434
    lbz     r0, R13Off_m0x66d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c3dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveKazekunDisappear@ha
    stw     r0, R13Off_m0x66cc(r13)
    addi    r0, r3, __vvt__22TNerveKazekunDisappear@l
    lis     r4, __dt__22TNerveKazekunDisappearFv@ha
    stw     r0, R13Off_m0x66cc(r13)
    lis     r3, unk_803f2ffc@h
    addi    r5, r3, unk_803f2ffc@l
    addi    r4, r4, __dt__22TNerveKazekunDisappearFv@l
    addi    r3, r13, R13Off_m0x66cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66d0(r13)
branch_0x8010c3dc:
    addi    r4, r13, R13Off_m0x66cc
    cmplwi  r4, 0x0
    beq-    branch_0x8010c410
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8010c410
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8010c410:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x370(r3)
    li      r3, 0x1
    stw     r0, 0x1b0(r31)
    b       branch_0x8010c460

branch_0x8010c434:
    lfs     f0, -0x54b0(r2)
    li      r3, 0x0
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lwz     r4, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x40(sp)
    stw     r0, 0xb4(r31)
branch_0x8010c460:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__22TNerveKazekunDisappearFv
__dt__22TNerveKazekunDisappearFv: # 0x8010c478
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010c4bc
    lis     r3, __vvt__22TNerveKazekunDisappear@ha
    addi    r0, r3, __vvt__22TNerveKazekunDisappear@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010c4ac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010c4ac:
    extsh.  r0, r4
    ble-    branch_0x8010c4bc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010c4bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__21TNerveKazekunHitWaterFv
theNerve__21TNerveKazekunHitWaterFv: # 0x8010c4d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x66c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c524
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveKazekunHitWater@ha
    stw     r0, R13Off_m0x66bc(r13)
    addi    r0, r3, __vvt__21TNerveKazekunHitWater@l
    lis     r4, __dt__21TNerveKazekunHitWaterFv@ha
    stw     r0, R13Off_m0x66bc(r13)
    lis     r3, unk_803f3014@h
    addi    r5, r3, unk_803f3014@l
    addi    r4, r4, __dt__21TNerveKazekunHitWaterFv@l
    addi    r3, r13, R13Off_m0x66bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66c0(r13)
branch_0x8010c524:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x66bc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__17TNerveKazekunWaitCFP24TSpineBase_10TLiveActor_
execute__17TNerveKazekunWaitCFP24TSpineBase_10TLiveActor_: # 0x8010c538
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010c578
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    ori     r0, r0, 0xa
    stw     r0, 0xf0(r30)
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8010c578:
    lwz     r3, 0x1b0(r30)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x8010c608
    lbz     r0, R13Off_m0x66f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c5cc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveKazekunSearch@ha
    stw     r0, R13Off_m0x66f4(r13)
    addi    r0, r3, __vvt__19TNerveKazekunSearch@l
    lis     r4, __dt__19TNerveKazekunSearchFv@ha
    stw     r0, R13Off_m0x66f4(r13)
    lis     r3, unk_803f2fc0@h
    addi    r5, r3, unk_803f2fc0@l
    addi    r4, r4, __dt__19TNerveKazekunSearchFv@l
    addi    r3, r13, R13Off_m0x66f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66f8(r13)
branch_0x8010c5cc:
    addi    r4, r13, R13Off_m0x66f4
    cmplwi  r4, 0x0
    beq-    branch_0x8010c600
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8010c600
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8010c600:
    li      r3, 0x1
    b       branch_0x8010c60c

branch_0x8010c608:
    li      r3, 0x0
branch_0x8010c60c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__19TNerveKazekunSearchFv
__dt__19TNerveKazekunSearchFv: # 0x8010c624
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010c668
    lis     r3, __vvt__19TNerveKazekunSearch@ha
    addi    r0, r3, __vvt__19TNerveKazekunSearch@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010c658
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010c658:
    extsh.  r0, r4
    ble-    branch_0x8010c668
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010c668:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17TNerveKazekunWaitFv
__dt__17TNerveKazekunWaitFv: # 0x8010c680
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010c6c4
    lis     r3, __vvt__17TNerveKazekunWait@ha
    addi    r0, r3, __vvt__17TNerveKazekunWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010c6b4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010c6b4:
    extsh.  r0, r4
    ble-    branch_0x8010c6c4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010c6c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveKazekunDisappearCFP24TSpineBase_10TLiveActor_
execute__22TNerveKazekunDisappearCFP24TSpineBase_10TLiveActor_: # 0x8010c6dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010c768
    lis     r4, unk_80383ff4@h
    lwz     r3, 0x74(r30)
    addi    r4, r4, unk_80383ff4@l
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xcf
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x28(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
branch_0x8010c768:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8010c7fc
    lbz     r0, R13Off_m0x66c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010c7c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveKazekunWait@ha
    stw     r0, R13Off_m0x66c4(r13)
    addi    r0, r3, __vvt__17TNerveKazekunWait@l
    lis     r4, __dt__17TNerveKazekunWaitFv@ha
    stw     r0, R13Off_m0x66c4(r13)
    lis     r3, unk_803f3008@h
    addi    r5, r3, unk_803f3008@l
    addi    r4, r4, __dt__17TNerveKazekunWaitFv@l
    addi    r3, r13, R13Off_m0x66c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66c8(r13)
branch_0x8010c7c0:
    addi    r4, r13, R13Off_m0x66c4
    cmplwi  r4, 0x0
    beq-    branch_0x8010c7f4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8010c7f4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8010c7f4:
    li      r3, 0x1
    b       branch_0x8010c800

branch_0x8010c7fc:
    li      r3, 0x0
branch_0x8010c800:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl execute__19TNerveKazekunAttackCFP24TSpineBase_10TLiveActor_
execute__19TNerveKazekunAttackCFP24TSpineBase_10TLiveActor_: # 0x8010c818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f0(sp)
    stfd    f31, 0x1e8(sp)
    stw     r31, 0x1e4(sp)
    stw     r30, 0x1e0(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010cabc
    lis     r4, unk_80384004@h
    lwz     r3, 0x74(r31)
    addi    r4, r4, unk_80384004@l
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x8010c874
    addi    r5, r4, 0x10
    b       branch_0x8010c878

branch_0x8010c874:
    addi    r5, r3, 0x4
branch_0x8010c878:
    lwz     r4, 0x0(r5)
    mr      r3, r31
    lwz     r0, 0x4(r5)
    stw     r4, 0x190(sp)
    stw     r0, 0x194(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x198(sp)
    lfs     f1, 0x190(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x190(sp)
    lfs     f1, 0x194(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x194(sp)
    lfs     f1, 0x198(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x198(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x334(r3)
    addi    r3, sp, 0x190
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x54ac(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010c908
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x198(sp)
    stfs    f0, 0x194(sp)
    stfs    f0, 0x190(sp)
    b       branch_0x8010c91c

branch_0x8010c908:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x190
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8010c91c:
    lwz     r4, 0x190(sp)
    addi    r3, sp, 0xf0
    lwz     r0, 0x194(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x198(sp)
    stw     r0, 0xb4(r31)
    lwz     r4, 0x1a0(r31)
    lwz     r0, 0x1a4(r31)
    stw     r4, 0x1ac(sp)
    stw     r0, 0x1b0(sp)
    lwz     r4, 0x1a8(r31)
    lwz     r0, 0x1ac(r31)
    stw     r4, 0x1b4(sp)
    stw     r0, 0x1b8(sp)
    lwz     r4, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r4, 0x1bc(sp)
    stw     r0, 0x1c0(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x1c4(sp)
    bl      __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
    lfs     f1, -0x54b0(r2)
    addi    r3, sp, 0x13c
    lfs     f2, -0x54a8(r2)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8010d05c
    addi    r5, sp, 0x13c
    addi    r3, sp, 0xf0
    addi    r4, sp, 0x1bc
    bl      SMS_CalcToDirMatrix__FRQ29JGeometry64TPosition3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0xf0
    addi    r4, sp, 0x19c
    bl      getQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___CFRQ29JGeometry9TQuat4_f_
    lfs     f3, 0x114(sp)
    addi    r3, sp, 0x130
    lfs     f2, 0x104(sp)
    lfs     f1, 0xf4(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8010d05c
    lfs     f1, -0x54b0(r2)
    bl      sinf
    addi    r3, sp, 0x120
    addi    r4, sp, 0x130
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
    lfs     f1, -0x54b0(r2)
    bl      cosf
    stfs    f1, 0x12c(sp)
    addi    r3, sp, 0x19c
    lfs     f5, 0x128(sp)
    lfs     f4, 0x1a8(sp)
    lfs     f8, 0x124(sp)
    lfs     f10, 0x120(sp)
    fmuls   f1, f4, f5
    lfs     f9, 0x19c(sp)
    fmuls   f2, f4, f8
    fmuls   f3, f4, f10
    lfs     f6, 0x12c(sp)
    fmuls   f0, f9, f10
    lfs     f7, 0x1a4(sp)
    lfs     f11, 0x1a0(sp)
    fmadds  f3, f9, f6, f3
    fmsubs  f0, f4, f6, f0
    fmadds  f2, f11, f6, f2
    fmadds  f1, f7, f6, f1
    fmadds  f4, f11, f5, f3
    fmadds  f2, f7, f10, f2
    fmadds  f3, f9, f8, f1
    fnmsubs  f0, f11, f8, f0
    fnmsubs  f1, f7, f8, f4
    fnmsubs  f2, f9, f5, f2
    fnmsubs  f3, f11, f10, f3
    fnmsubs  f4, f7, f5, f0
    bl      set_f___Q29JGeometry8TVec4_f_Fffff
    lfs     f1, -0x54a4(r2)
    addi    r3, sp, 0x1ac
    addi    r4, sp, 0x19c
    bl      slerp__Q29JGeometry9TQuat4_f_FRCQ29JGeometry9TQuat4_f_f
    addi    r3, sp, 0x1ac
    lfs     f31, -0x54a8(r2)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x54ac(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010ca88
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x1b8(sp)
    stfs    f0, 0x1b4(sp)
    stfs    f0, 0x1b0(sp)
    stfs    f0, 0x1ac(sp)
    b       branch_0x8010ca9c

branch_0x8010ca88:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x1ac
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x8010ca9c:
    lwz     r3, 0x1ac(sp)
    lwz     r0, 0x1b0(sp)
    stw     r3, 0x1a0(r31)
    stw     r0, 0x1a4(r31)
    lwz     r3, 0x1b4(sp)
    lwz     r0, 0x1b8(sp)
    stw     r3, 0x1a8(r31)
    stw     r0, 0x1ac(r31)
branch_0x8010cabc:
    lwz     r4, 0x1a0(r31)
    addi    r3, sp, 0x8c
    lwz     r0, 0x1a4(r31)
    stw     r4, 0x174(sp)
    stw     r0, 0x178(sp)
    lwz     r4, 0x1a8(r31)
    lwz     r0, 0x1ac(r31)
    stw     r4, 0x17c(sp)
    stw     r0, 0x180(sp)
    lwz     r4, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r4, 0x184(sp)
    stw     r0, 0x188(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x18c(sp)
    bl      __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
    lfs     f1, -0x54b0(r2)
    addi    r3, sp, 0xd8
    lfs     f2, -0x54a8(r2)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8010d05c
    addi    r5, sp, 0xd8
    addi    r3, sp, 0x8c
    addi    r4, sp, 0x184
    bl      SMS_CalcToDirMatrix__FRQ29JGeometry64TPosition3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x8c
    addi    r4, sp, 0x164
    bl      getQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___CFRQ29JGeometry9TQuat4_f_
    lfs     f3, 0xb0(sp)
    addi    r3, sp, 0xcc
    lfs     f2, 0xa0(sp)
    lfs     f1, 0x90(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8010d05c
    lfs     f1, -0x54b0(r2)
    bl      sinf
    addi    r3, sp, 0xbc
    addi    r4, sp, 0xcc
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
    lfs     f1, -0x54b0(r2)
    bl      cosf
    stfs    f1, 0xc8(sp)
    addi    r3, sp, 0x164
    lfs     f5, 0xc4(sp)
    lfs     f4, 0x170(sp)
    lfs     f8, 0xc0(sp)
    lfs     f10, 0xbc(sp)
    fmuls   f1, f4, f5
    lfs     f9, 0x164(sp)
    fmuls   f2, f4, f8
    fmuls   f3, f4, f10
    lfs     f6, 0xc8(sp)
    fmuls   f0, f9, f10
    lfs     f7, 0x16c(sp)
    lfs     f11, 0x168(sp)
    fmadds  f3, f9, f6, f3
    fmsubs  f0, f4, f6, f0
    fmadds  f2, f11, f6, f2
    fmadds  f1, f7, f6, f1
    fmadds  f4, f11, f5, f3
    fmadds  f2, f7, f10, f2
    fmadds  f3, f9, f8, f1
    fnmsubs  f0, f11, f8, f0
    fnmsubs  f1, f7, f8, f4
    fnmsubs  f2, f9, f5, f2
    fnmsubs  f3, f11, f10, f3
    fnmsubs  f4, f7, f5, f0
    bl      set_f___Q29JGeometry8TVec4_f_Fffff
    lfs     f1, -0x54a4(r2)
    addi    r3, sp, 0x174
    addi    r4, sp, 0x164
    bl      slerp__Q29JGeometry9TQuat4_f_FRCQ29JGeometry9TQuat4_f_f
    addi    r3, sp, 0x174
    lfs     f31, -0x54a8(r2)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x54ac(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010cc10
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x180(sp)
    stfs    f0, 0x17c(sp)
    stfs    f0, 0x178(sp)
    stfs    f0, 0x174(sp)
    b       branch_0x8010cc24

branch_0x8010cc10:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x174
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x8010cc24:
    lwz     r4, 0x174(sp)
    mr      r3, r31
    lwz     r0, 0x178(sp)
    stw     r4, 0x1a0(r31)
    stw     r0, 0x1a4(r31)
    lwz     r4, 0x17c(sp)
    lwz     r0, 0x180(sp)
    stw     r4, 0x1a8(r31)
    stw     r0, 0x1ac(r31)
    lwz     r4, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r4, 0x1d4(sp)
    stw     r0, 0x1d8(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x1dc(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x348(r3)
    lfs     f0, 0x1d4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1d4(sp)
    lfs     f0, 0x1d8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1d8(sp)
    lfs     f0, 0x1dc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1dc(sp)
    lwz     r3, 0x1d4(sp)
    lwz     r0, 0x1d8(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x1dc(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x1d4(sp)
    lfs     f3, 0x1dc(sp)
    lfs     f0, 0x1d8(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x54a8(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8010cd78
    lbz     r0, R13Off_m0x66d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010cd20
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveKazekunDisappear@ha
    stw     r0, R13Off_m0x66cc(r13)
    addi    r0, r3, __vvt__22TNerveKazekunDisappear@l
    lis     r4, __dt__22TNerveKazekunDisappearFv@ha
    stw     r0, R13Off_m0x66cc(r13)
    lis     r3, unk_803f2ffc@h
    addi    r5, r3, unk_803f2ffc@l
    addi    r4, r4, __dt__22TNerveKazekunDisappearFv@l
    addi    r3, r13, R13Off_m0x66cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66d0(r13)
branch_0x8010cd20:
    addi    r4, r13, R13Off_m0x66cc
    cmplwi  r4, 0x0
    beq-    branch_0x8010cd54
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8010cd54
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8010cd54:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x35c(r3)
    li      r3, 0x1
    stw     r0, 0x1b0(r31)
    b       branch_0x8010cd7c

branch_0x8010cd78:
    li      r3, 0x0
branch_0x8010cd7c:
    lwz     r0, 0x1f4(sp)
    lfd     f31, 0x1e8(sp)
    lwz     r31, 0x1e4(sp)
    mtlr    r0
    lwz     r30, 0x1e0(sp)
    addi    sp, sp, 0x1f0
    blr


.globl set_f___Q29JGeometry8TVec4_f_Fffff
set_f___Q29JGeometry8TVec4_f_Fffff: # 0x8010cd98
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    stfs    f4, 0xc(r3)
    blr


.globl getQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___CFRQ29JGeometry9TQuat4_f_
getQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___CFRQ29JGeometry9TQuat4_f_: # 0x8010cdac
    lfs     f5, 0x0(r3)
    lfs     f4, 0x14(r3)
    lfs     f3, 0x28(r3)
    fadds   f6, f5, f4
    lfs     f1, -0x54b0(r2)
    fadds   f2, f3, f6
    fcmpo   cr0, f2, f1
    cror    2, 1, 2
    bne-    branch_0x8010ce5c
    lfs     f0, -0x54a8(r2)
    fadds   f3, f2, f0
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x8010cde8
    b       branch_0x8010ce0c

branch_0x8010cde8:
    frsqrte f4, f3
    lfs     f2, -0x54a0(r2)
    lfs     f0, -0x549c(r2)
    frsp    f4, f4
    fmuls   f1, f4, f4
    fmuls   f2, f2, f4
    fnmsubs  f0, f3, f1, f0
    fmuls   f0, f2, f0
    fmuls   f3, f3, f0
branch_0x8010ce0c:
    lfs     f0, -0x54a0(r2)
    fdivs   f2, f0, f3
    fmuls   f0, f0, f3
    stfs    f0, 0xc(r4)
    lfs     f1, 0x24(r3)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x0(r4)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x20(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x4(r4)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x8(r4)
    blr

branch_0x8010ce5c:
    fcmpo   cr0, f5, f4
    cror    2, 1, 2
    bne-    branch_0x8010ce70
    fmr     f0, f5
    b       branch_0x8010ce74

branch_0x8010ce70:
    fmr     f0, f4
branch_0x8010ce74:
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x8010ce84
    b       branch_0x8010ce88

branch_0x8010ce84:
    fmr     f0, f3
branch_0x8010ce88:
    fcmpu   cr0, f0, f5
    bne-    branch_0x8010cf28
    fadds   f1, f4, f3
    lfs     f2, -0x54a8(r2)
    lfs     f0, -0x54b0(r2)
    fsubs   f1, f5, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x8010ceb4
    b       branch_0x8010ced8

branch_0x8010ceb4:
    frsqrte f3, f4
    lfs     f2, -0x54a0(r2)
    lfs     f0, -0x549c(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8010ced8:
    lfs     f0, -0x54a0(r2)
    fdivs   f2, f0, f4
    fmuls   f0, f0, f4
    stfs    f0, 0x0(r4)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x10(r3)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x4(r4)
    lfs     f1, 0x20(r3)
    lfs     f0, 0x8(r3)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x8(r4)
    lfs     f1, 0x24(r3)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xc(r4)
    blr

branch_0x8010cf28:
    fcmpu   cr0, f0, f4
    bne-    branch_0x8010cfc8
    fadds   f1, f3, f5
    lfs     f2, -0x54a8(r2)
    lfs     f0, -0x54b0(r2)
    fsubs   f1, f4, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x8010cf54
    b       branch_0x8010cf78

branch_0x8010cf54:
    frsqrte f3, f4
    lfs     f2, -0x54a0(r2)
    lfs     f0, -0x549c(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8010cf78:
    lfs     f0, -0x54a0(r2)
    fdivs   f2, f0, f4
    fmuls   f0, f0, f4
    stfs    f0, 0x4(r4)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x24(r3)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x8(r4)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x10(r3)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x0(r4)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x20(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xc(r4)
    blr

branch_0x8010cfc8:
    fsubs   f1, f3, f6
    lfs     f2, -0x54a8(r2)
    lfs     f0, -0x54b0(r2)
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x8010cfe8
    b       branch_0x8010d00c

branch_0x8010cfe8:
    frsqrte f3, f4
    lfs     f2, -0x54a0(r2)
    lfs     f0, -0x549c(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8010d00c:
    lfs     f0, -0x54a0(r2)
    fdivs   f2, f0, f4
    fmuls   f0, f0, f4
    stfs    f0, 0x8(r4)
    lfs     f1, 0x20(r3)
    lfs     f0, 0x8(r3)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x0(r4)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x24(r3)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x4(r4)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xc(r4)
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8010d05c
set_f___Q29JGeometry8TVec3_f_Ffff_8010d05c: # 0x8010d05c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl theNerve__19TNerveKazekunAttackFv
theNerve__19TNerveKazekunAttackFv: # 0x8010d06c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x66d8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010d0bc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveKazekunAttack@ha
    stw     r0, R13Off_m0x66d4(r13)
    addi    r0, r3, __vvt__19TNerveKazekunAttack@l
    lis     r4, __dt__19TNerveKazekunAttackFv@ha
    stw     r0, R13Off_m0x66d4(r13)
    lis     r3, unk_803f2ff0@h
    addi    r5, r3, unk_803f2ff0@l
    addi    r4, r4, __dt__19TNerveKazekunAttackFv@l
    addi    r3, r13, R13Off_m0x66d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66d8(r13)
branch_0x8010d0bc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x66d4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__19TNerveKazekunAttackFv
__dt__19TNerveKazekunAttackFv: # 0x8010d0d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010d114
    lis     r3, __vvt__19TNerveKazekunAttack@ha
    addi    r0, r3, __vvt__19TNerveKazekunAttack@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010d104
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010d104:
    extsh.  r0, r4
    ble-    branch_0x8010d114
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010d114:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveKazekunPreAttackCFP24TSpineBase_10TLiveActor_
execute__22TNerveKazekunPreAttackCFP24TSpineBase_10TLiveActor_: # 0x8010d12c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    mr      r30, r4
    stw     r29, 0x8c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010d1a0
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      doAttackPose__8TKazekunFb
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x28b6
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8010d194
    addi    r4, r31, 0x10
    li      r3, 0x28b6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8010d194:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8010d1a0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x384(r3)
    lis     r3, 0x4330
    lwz     r0, 0x20(r30)
    xoris   r4, r4, 0x8000
    lfd     f3, -0x5498(r2)
    stw     r4, 0x84(sp)
    xoris   r0, r0, 0x8000
    lfs     f1, 0x398(r29)
    stw     r3, 0x80(sp)
    stw     r0, 0x7c(sp)
    lfd     f0, 0x80(sp)
    stw     r3, 0x78(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x78(sp)
    fmuls   f1, f2, f1
    fsubs   f0, f0, f3
    fcmpo   cr0, f1, f0
    bge-    branch_0x8010d294
    lwz     r5, R13Off_m0x60b4(r13)
    li      r4, 0x0
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x74(sp)
    stw     r4, 0x5c(sp)
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x74(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x5c(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x68(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x68(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
branch_0x8010d294:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      doAttackPose__8TKazekunFb
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x384(r3)
    lwz     r0, 0x20(r30)
    cmpw    r3, r0
    bge-    branch_0x8010d344
    lbz     r0, R13Off_m0x66d8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010d308
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveKazekunAttack@ha
    stw     r0, R13Off_m0x66d4(r13)
    addi    r0, r3, __vvt__19TNerveKazekunAttack@l
    lis     r4, __dt__19TNerveKazekunAttackFv@ha
    stw     r0, R13Off_m0x66d4(r13)
    lis     r3, unk_803f2ff0@h
    addi    r5, r3, unk_803f2ff0@l
    addi    r4, r4, __dt__19TNerveKazekunAttackFv@l
    addi    r3, r13, R13Off_m0x66d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66d8(r13)
branch_0x8010d308:
    addi    r4, r13, R13Off_m0x66d4
    cmplwi  r4, 0x0
    beq-    branch_0x8010d33c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8010d33c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8010d33c:
    li      r3, 0x1
    b       branch_0x8010d348

branch_0x8010d344:
    li      r3, 0x0
branch_0x8010d348:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    blr


.globl theNerve__22TNerveKazekunPreAttackFv
theNerve__22TNerveKazekunPreAttackFv: # 0x8010d364
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x66e0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010d3b4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveKazekunPreAttack@ha
    stw     r0, R13Off_m0x66dc(r13)
    addi    r0, r3, __vvt__22TNerveKazekunPreAttack@l
    lis     r4, __dt__22TNerveKazekunPreAttackFv@ha
    stw     r0, R13Off_m0x66dc(r13)
    lis     r3, unk_803f2fe4@h
    addi    r5, r3, unk_803f2fe4@l
    addi    r4, r4, __dt__22TNerveKazekunPreAttackFv@l
    addi    r3, r13, R13Off_m0x66dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66e0(r13)
branch_0x8010d3b4:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x66dc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__22TNerveKazekunPreAttackFv
__dt__22TNerveKazekunPreAttackFv: # 0x8010d3c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010d40c
    lis     r3, __vvt__22TNerveKazekunPreAttack@ha
    addi    r0, r3, __vvt__22TNerveKazekunPreAttack@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010d3fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010d3fc:
    extsh.  r0, r4
    ble-    branch_0x8010d40c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010d40c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveKazekunTurnCFP24TSpineBase_10TLiveActor_
execute__17TNerveKazekunTurnCFP24TSpineBase_10TLiveActor_: # 0x8010d424
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r4
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010d478
    lis     r4, unk_80384014@h
    lwz     r3, 0x74(r29)
    addi    r4, r4, unk_80384014@l
    bl      setBck__6MActorFPCc
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
branch_0x8010d478:
    mr      r3, r29
    bl      flyAroundMario__8TKazekunFv
    mr      r3, r29
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r12, 0x0(r29)
    li      r30, 0x1
    lfs     f1, 0x4(r4)
    lfs     f0, 0x198(r29)
    lwz     r12, 0x108(r12)
    fsubs   f31, f1, f0
    mtlr    r12
    blrl
    lfs     f0, 0x3d4(r3)
    fneg    f0, f0
    fcmpo   cr0, f31, f0
    blt-    branch_0x8010d4dc
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x3c0(r3)
    fcmpo   cr0, f0, f31
    blt-    branch_0x8010d4dc
    li      r30, 0x0
branch_0x8010d4dc:
    clrlwi. r0, r30, 24
    beq-    branch_0x8010d564
    lbz     r0, R13Off_m0x66d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010d528
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveKazekunDisappear@ha
    stw     r0, R13Off_m0x66cc(r13)
    addi    r0, r3, __vvt__22TNerveKazekunDisappear@l
    lis     r4, __dt__22TNerveKazekunDisappearFv@ha
    stw     r0, R13Off_m0x66cc(r13)
    lis     r3, unk_803f2ffc@h
    addi    r5, r3, unk_803f2ffc@l
    addi    r4, r4, __dt__22TNerveKazekunDisappearFv@l
    addi    r3, r13, R13Off_m0x66cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66d0(r13)
branch_0x8010d528:
    addi    r4, r13, R13Off_m0x66cc
    cmplwi  r4, 0x0
    beq-    branch_0x8010d55c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8010d55c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8010d55c:
    li      r3, 0x1
    b       branch_0x8010d63c

branch_0x8010d564:
    mr      r3, r29
    lwz     r30, 0x20(r31)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x320(r3)
    xoris   r0, r30, 0x8000
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    xoris   r3, r3, 0x8000
    stw     r3, 0x5c(sp)
    lfd     f2, -0x5498(r2)
    stw     r0, 0x58(sp)
    stw     r0, 0x50(sp)
    lfd     f1, 0x58(sp)
    lfd     f0, 0x50(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x8010d638
    lbz     r0, R13Off_m0x66e0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010d5fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveKazekunPreAttack@ha
    stw     r0, R13Off_m0x66dc(r13)
    addi    r0, r3, __vvt__22TNerveKazekunPreAttack@l
    lis     r4, __dt__22TNerveKazekunPreAttackFv@ha
    stw     r0, R13Off_m0x66dc(r13)
    lis     r3, unk_803f2fe4@h
    addi    r5, r3, unk_803f2fe4@l
    addi    r4, r4, __dt__22TNerveKazekunPreAttackFv@l
    addi    r3, r13, R13Off_m0x66dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66e0(r13)
branch_0x8010d5fc:
    addi    r4, r13, R13Off_m0x66dc
    cmplwi  r4, 0x0
    beq-    branch_0x8010d630
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8010d630
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8010d630:
    li      r3, 0x1
    b       branch_0x8010d63c

branch_0x8010d638:
    li      r3, 0x0
branch_0x8010d63c:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__17TNerveKazekunTurnFv
__dt__17TNerveKazekunTurnFv: # 0x8010d65c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010d6a0
    lis     r3, __vvt__17TNerveKazekunTurn@ha
    addi    r0, r3, __vvt__17TNerveKazekunTurn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010d690
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010d690:
    extsh.  r0, r4
    ble-    branch_0x8010d6a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010d6a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveKazekunAppearCFP24TSpineBase_10TLiveActor_
execute__19TNerveKazekunAppearCFP24TSpineBase_10TLiveActor_: # 0x8010d6b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010d720
    lwz     r3, 0xf0(r30)
    li      r0, -0xb
    addi    r5, r30, 0x10
    and     r0, r3, r0
    stw     r0, 0xf0(r30)
    li      r4, 0xcf
    li      r6, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lis     r4, unk_80384024@h
    lwz     r3, 0x74(r30)
    addi    r4, r4, unk_80384024@l
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
branch_0x8010d720:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8010d7b4
    lbz     r0, R13Off_m0x66e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010d778
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveKazekunTurn@ha
    stw     r0, R13Off_m0x66e4(r13)
    addi    r0, r3, __vvt__17TNerveKazekunTurn@l
    lis     r4, __dt__17TNerveKazekunTurnFv@ha
    stw     r0, R13Off_m0x66e4(r13)
    lis     r3, unk_803f2fd8@h
    addi    r5, r3, unk_803f2fd8@l
    addi    r4, r4, __dt__17TNerveKazekunTurnFv@l
    addi    r3, r13, R13Off_m0x66e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66e8(r13)
branch_0x8010d778:
    addi    r4, r13, R13Off_m0x66e4
    cmplwi  r4, 0x0
    beq-    branch_0x8010d7ac
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8010d7ac
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8010d7ac:
    li      r3, 0x1
    b       branch_0x8010d7b8

branch_0x8010d7b4:
    li      r3, 0x0
branch_0x8010d7b8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__19TNerveKazekunAppearFv
__dt__19TNerveKazekunAppearFv: # 0x8010d7d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8010d814
    lis     r3, __vvt__19TNerveKazekunAppear@ha
    addi    r0, r3, __vvt__19TNerveKazekunAppear@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8010d804
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8010d804:
    extsh.  r0, r4
    ble-    branch_0x8010d814
    mr      r3, r31
    bl      __dl__FPv
branch_0x8010d814:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveKazekunSearchCFP24TSpineBase_10TLiveActor_
execute__19TNerveKazekunSearchCFP24TSpineBase_10TLiveActor_: # 0x8010d82c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8010d868
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x8010d868:
    mr      r3, r30
    bl      updateSquareToMario__11TSpineEnemyFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2e4(r3)
    lfs     f1, 0x134(r30)
    fmuls   f0, f0, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010d91c
    lbz     r0, R13Off_m0x66f0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010d8e0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveKazekunAppear@ha
    stw     r0, R13Off_m0x66ec(r13)
    addi    r0, r3, __vvt__19TNerveKazekunAppear@l
    lis     r4, __dt__19TNerveKazekunAppearFv@ha
    stw     r0, R13Off_m0x66ec(r13)
    lis     r3, unk_803f2fcc@h
    addi    r5, r3, unk_803f2fcc@l
    addi    r4, r4, __dt__19TNerveKazekunAppearFv@l
    addi    r3, r13, R13Off_m0x66ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66f0(r13)
branch_0x8010d8e0:
    addi    r4, r13, R13Off_m0x66ec
    cmplwi  r4, 0x0
    beq-    branch_0x8010d914
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8010d914
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8010d914:
    li      r3, 0x1
    b       branch_0x8010d920

branch_0x8010d91c:
    li      r3, 0x0
branch_0x8010d920:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl createModelData__15TKazekunManagerFv
createModelData__15TKazekunManagerFv: # 0x8010d938
    mflr    r0
    lis     r4, entry_2840@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2840@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__15TKazekunManagerFR20JSUMemoryInputStream
load__15TKazekunManagerFR20JSUMemoryInputStream: # 0x8010d96c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    li      r3, 0x400
    stw     r29, 0x1c(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8010d9ac
    lis     r3, unk_80384034@h
    addi    r4, r3, unk_80384034@l
    addi    r3, r29, 0x0
    bl      __ct__14TKazekunParamsFPCc
branch_0x8010d9ac:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    lwz     r0, R13Off_m0x7d38(r13)
    stw     r0, 0x194(r29)
    lwz     r0, R13Off_m0x7d34(r13)
    stw     r0, 0x1a8(r29)
    lwz     r0, R13Off_m0x7d30(r13)
    stw     r0, 0x16c(r29)
    lwz     r0, R13Off_m0x7d2c(r13)
    stw     r0, 0x180(r29)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r0, 0x0
    stw     r0, 0x5c(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__15TKazekunManagerFPCc
__ct__15TKazekunManagerFPCc: # 0x8010da00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__15TKazekunManager@ha
    addi    r0, r3, __vvt__15TKazekunManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__14TKazekunParamsFPCc
__ct__14TKazekunParamsFPCc: # 0x8010da3c
    mflr    r0
    lis     r5, unk_80383e48@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r30, r5, unk_80383e48@l
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x200
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x200
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x2d4(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x5490(r2)
    addi    r3, r30, 0x20c
    stfs    f0, 0x2e4(r31)
    stw     r28, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x20c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e8(r31)
    addi    r3, r30, 0x218
    lfs     f0, -0x548c(r2)
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x218
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x228
    lfs     f0, -0x5488(r2)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x228
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0x310(r31)
    li      r0, 0x258
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x320(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x234
    stw     r26, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x234
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x324(r31)
    addi    r3, r30, 0x244
    lfs     f0, -0x5488(r2)
    stfs    f0, 0x334(r31)
    stw     r28, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x244
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x250
    lfs     f0, -0x5484(r2)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x250
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x34c(r31)
    li      r0, 0x12c
    addi    r3, r30, 0x25c
    stw     r0, 0x35c(r31)
    stw     r26, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x25c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x360(r31)
    li      r0, 0x5dc
    addi    r3, r30, 0x270
    stw     r0, 0x370(r31)
    stw     r26, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x270
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x374(r31)
    li      r0, 0x78
    addi    r3, r30, 0x27c
    stw     r0, 0x384(r31)
    stw     r26, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x27c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x388(r31)
    addi    r3, r30, 0x28c
    lfs     f0, -0x54a4(r2)
    stfs    f0, 0x398(r31)
    stw     r28, 0x388(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x39c
    addi    r6, r30, 0x28c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x39c(r31)
    addi    r3, r30, 0x29c
    lfs     f0, -0x5480(r2)
    stfs    f0, 0x3ac(r31)
    stw     r28, 0x39c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b0
    addi    r6, r30, 0x29c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b0(r31)
    addi    r3, r30, 0x2ac
    lfs     f0, -0x547c(r2)
    stfs    f0, 0x3c0(r31)
    stw     r28, 0x3b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3c4
    addi    r6, r30, 0x2ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3c4(r31)
    addi    r3, r30, 0x2c0
    lfs     f0, -0x547c(r2)
    stfs    f0, 0x3d4(r31)
    stw     r28, 0x3c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3d8
    addi    r6, r30, 0x2c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3d8(r31)
    addi    r3, r30, 0x2cc
    lfs     f0, -0x5478(r2)
    stfs    f0, 0x3e8(r31)
    stw     r28, 0x3d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3ec
    addi    r6, r30, 0x2cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3ec(r31)
    mr      r3, r31
    lfs     f0, -0x5474(r2)
    stfs    f0, 0x3fc(r31)
    stw     r28, 0x3ec(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl doAttackPose__8TKazekunFb
doAttackPose__8TKazekunFb: # 0x8010dd3c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x218(sp)
    stfd    f31, 0x210(sp)
    stfd    f30, 0x208(sp)
    stfd    f29, 0x200(sp)
    stfd    f28, 0x1f8(sp)
    stfd    f27, 0x1f0(sp)
    stfd    f26, 0x1e8(sp)
    stfd    f25, 0x1e0(sp)
    stfd    f24, 0x1d8(sp)
    stfd    f23, 0x1d0(sp)
    stfd    f22, 0x1c8(sp)
    stfd    f21, 0x1c0(sp)
    stw     r31, 0x1bc(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x1b8(sp)
    lwz     r5, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x198(sp)
    stw     r0, 0x19c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1a0(sp)
    lfs     f1, 0x198(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x198(sp)
    lfs     f1, 0x19c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x19c(sp)
    lfs     f2, 0x1a0(sp)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x54b0(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x1a0(sp)
    stfs    f0, 0x19c(sp)
    beq-    branch_0x8010dfb0
    addi    r3, sp, 0xfc
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f1, -0x54b0(r2)
    addi    r5, sp, 0x148
    lfs     f0, -0x54a8(r2)
    addi    r3, sp, 0xfc
    stfs    f1, 0x148(sp)
    addi    r4, sp, 0x198
    stfs    f0, 0x14c(sp)
    stfs    f1, 0x150(sp)
    bl      SMS_CalcToDirMatrix__FRQ29JGeometry64TPosition3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0xfc
    addi    r4, sp, 0x188
    bl      getQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___CFRQ29JGeometry9TQuat4_f_
    lfs     f1, -0x5470(r2)
    lfs     f22, 0x120(sp)
    lfs     f23, 0x110(sp)
    lfs     f24, 0x100(sp)
    bl      sinf
    fmuls   f3, f24, f1
    fmuls   f2, f23, f1
    fmuls   f0, f22, f1
    stfs    f3, 0x12c(sp)
    stfs    f2, 0x130(sp)
    stfs    f0, 0x134(sp)
    lfs     f1, -0x5470(r2)
    bl      cosf
    stfs    f1, 0x138(sp)
    mr      r3, r31
    lfs     f5, 0x194(sp)
    lfs     f10, 0x12c(sp)
    lfs     f8, 0x130(sp)
    lfs     f9, 0x188(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x138(sp)
    fmuls   f1, f5, f8
    lfs     f11, 0x18c(sp)
    lfs     f4, 0x134(sp)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0x190(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x188(sp)
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f0, f11, f10, f0
    stfs    f1, 0x18c(sp)
    fnmsubs  f2, f7, f4, f3
    stfs    f0, 0x190(sp)
    stfs    f2, 0x194(sp)
    lwz     r4, 0x188(sp)
    lwz     r0, 0x18c(sp)
    stw     r4, 0x1a0(r31)
    stw     r0, 0x1a4(r31)
    lwz     r4, 0x190(sp)
    lwz     r0, 0x194(sp)
    stw     r4, 0x1a8(r31)
    stw     r0, 0x1ac(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x17c(sp)
    stfs    f0, 0x180(sp)
    lfs     f0, 0x3e8(r3)
    stfs    f0, 0x184(sp)
    lfs     f7, 0x190(sp)
    lfs     f13, 0x17c(sp)
    lfs     f4, 0x188(sp)
    fneg    f12, f7
    lfs     f3, 0x180(sp)
    fmuls   f0, f7, f13
    fneg    f11, f4
    lfs     f8, 0x184(sp)
    fmuls   f2, f7, f3
    lfs     f10, 0x18c(sp)
    fmadds  f1, f11, f8, f0
    lfs     f9, 0x194(sp)
    fmuls   f0, f10, f13
    fmsubs  f2, f10, f8, f2
    fmadds  f6, f9, f3, f1
    fmsubs  f4, f4, f3, f0
    fmuls   f1, f10, f3
    fmadds  f5, f9, f13, f2
    fmuls   f2, f6, f12
    fmsubs  f3, f11, f13, f1
    fmuls   f0, f6, f9
    fmadds  f4, f9, f8, f4
    fneg    f10, f10
    fmadds  f1, f5, f7, f0
    fmadds  f2, f5, f9, f2
    fmuls   f0, f6, f11
    fnmsubs  f3, f7, f8, f3
    fnmsubs  f2, f4, f10, f2
    fmsubs  f0, f5, f10, f0
    fmadds  f1, f4, f11, f1
    fmadds  f2, f3, f11, f2
    fmadds  f0, f4, f9, f0
    fmadds  f1, f3, f10, f1
    stfs    f2, 0x17c(sp)
    fmadds  f0, f3, f12, f0
    stfs    f1, 0x180(sp)
    stfs    f0, 0x184(sp)
    lwz     r3, 0x17c(sp)
    lwz     r0, 0x180(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x184(sp)
    stw     r0, 0xb4(r31)
branch_0x8010dfb0:
    addi    r30, r31, 0x1a0
    lfs     f5, -0x546c(r2)
    lfs     f26, 0x1a8(r31)
    mr      r3, r31
    lfs     f7, 0x1a0(r31)
    fmuls   f1, f26, f5
    lfs     f6, 0x1a4(r31)
    lfs     f4, -0x54b0(r2)
    fneg    f24, f7
    lfs     f25, 0x1ac(r31)
    fmuls   f9, f6, f4
    lwz     r12, 0x0(r31)
    fmuls   f10, f26, f4
    fmuls   f0, f6, f5
    lwz     r12, 0x108(r12)
    fsubs   f3, f9, f10
    mtlr    r12
    fmuls   f8, f25, f4
    fmadds  f2, f24, f4, f1
    fmsubs  f0, f7, f4, f0
    fmsubs  f1, f24, f5, f9
    fadds   f29, f8, f2
    fneg    f22, f26
    fmadds  f30, f25, f5, f3
    fadds   f28, f8, f0
    fmuls   f0, f29, f22
    fneg    f23, f6
    fsubs   f27, f1, f10
    fmadds  f0, f30, f25, f0
    fnmsubs  f0, f28, f23, f0
    fmadds  f21, f27, f24, f0
    blrl
    lfs     f1, -0x5468(r2)
    lfs     f0, 0x3fc(r3)
    lfs     f2, -0x54a0(r2)
    fmuls   f0, f1, f0
    fmuls   f31, f2, f0
    fmr     f1, f31
    bl      sinf
    fmuls   f2, f29, f25
    fmuls   f0, f29, f24
    fmuls   f3, f21, f1
    fmadds  f2, f30, f26, f2
    fmsubs  f0, f30, f23, f0
    stfs    f3, 0x1a4(sp)
    fmadds  f2, f28, f24, f2
    fmadds  f0, f28, f25, f0
    fmadds  f2, f27, f23, f2
    fmadds  f0, f27, f22, f0
    fmuls   f2, f2, f1
    fmuls   f0, f0, f1
    fmr     f1, f31
    stfs    f2, 0x1a8(sp)
    stfs    f0, 0x1ac(sp)
    bl      cosf
    stfs    f1, 0x1b0(sp)
    lfs     f5, 0x1b0(sp)
    lfs     f10, 0x0(r30)
    lfs     f8, 0x4(r30)
    lfs     f9, 0x1a4(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0xc(r30)
    fmuls   f1, f5, f8
    lfs     f11, 0x1a8(sp)
    lfs     f4, 0x8(r30)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0x1ac(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x1a4(sp)
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f0, f11, f10, f0
    stfs    f1, 0x1a8(sp)
    fnmsubs  f2, f7, f4, f3
    stfs    f0, 0x1ac(sp)
    stfs    f2, 0x1b0(sp)
    lwz     r3, 0x1a4(sp)
    lwz     r0, 0x1a8(sp)
    stw     r3, 0x1a0(r31)
    stw     r0, 0x1a4(r31)
    lwz     r3, 0x1ac(sp)
    lwz     r0, 0x1b0(sp)
    stw     r3, 0x1a8(r31)
    stw     r0, 0x1ac(r31)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x160(sp)
    lfs     f1, 0x158(sp)
    lfs     f0, 0x15c(sp)
    lfs     f2, 0x160(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x54b0(r2)
    li      r3, 0x0
    stfs    f0, 0x164(sp)
    stfs    f0, 0x168(sp)
    stfs    f1, 0x16c(sp)
    lfs     f7, 0x1ac(sp)
    lfs     f13, 0x164(sp)
    lfs     f4, 0x1a4(sp)
    fneg    f12, f7
    lfs     f3, 0x168(sp)
    fmuls   f0, f7, f13
    fneg    f11, f4
    lfs     f8, 0x16c(sp)
    fmuls   f2, f7, f3
    lfs     f10, 0x1a8(sp)
    fmadds  f1, f11, f8, f0
    lfs     f9, 0x1b0(sp)
    fmuls   f0, f10, f13
    fmsubs  f2, f10, f8, f2
    fmadds  f6, f9, f3, f1
    fmsubs  f4, f4, f3, f0
    fmuls   f1, f10, f3
    fmadds  f5, f9, f13, f2
    fmuls   f2, f6, f12
    fmsubs  f3, f11, f13, f1
    fmuls   f0, f6, f9
    fmadds  f4, f9, f8, f4
    fneg    f10, f10
    fmadds  f1, f5, f7, f0
    fmadds  f2, f5, f9, f2
    fmuls   f0, f6, f11
    fnmsubs  f3, f7, f8, f3
    fnmsubs  f2, f4, f10, f2
    fmsubs  f0, f5, f10, f0
    fmadds  f1, f4, f11, f1
    fmadds  f2, f3, f11, f2
    fmadds  f0, f4, f9, f0
    fmadds  f1, f3, f10, f1
    stfs    f2, 0x164(sp)
    fmadds  f0, f3, f12, f0
    stfs    f1, 0x168(sp)
    stfs    f0, 0x16c(sp)
    lwz     r4, 0x164(sp)
    lwz     r0, 0x168(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x16c(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0x21c(sp)
    lfd     f31, 0x210(sp)
    lfd     f30, 0x208(sp)
    mtlr    r0
    lfd     f29, 0x200(sp)
    lfd     f28, 0x1f8(sp)
    lfd     f27, 0x1f0(sp)
    lfd     f26, 0x1e8(sp)
    lfd     f25, 0x1e0(sp)
    lfd     f24, 0x1d8(sp)
    lfd     f23, 0x1d0(sp)
    lfd     f22, 0x1c8(sp)
    lfd     f21, 0x1c0(sp)
    lwz     r31, 0x1bc(sp)
    lwz     r30, 0x1b8(sp)
    addi    sp, sp, 0x218
    blr


.globl flyAroundMario__8TKazekunFv
flyAroundMario__8TKazekunFv: # 0x8010e260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stfd    f29, 0x128(sp)
    stfd    f28, 0x120(sp)
    stfd    f27, 0x118(sp)
    stw     r31, 0x114(sp)
    stw     r30, 0x110(sp)
    mr      r30, r3
    lwz     r5, R13Off_m0x60b4(r13)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x104(sp)
    stw     r0, 0x108(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x10c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x108(sp)
    lfs     f0, 0x3ac(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x104(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x104(sp)
    lfs     f1, 0x108(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0x18(r30)
    lfs     f2, -0x545c(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x108(sp)
    fcmpo   cr0, f0, f2
    bge-    branch_0x8010e30c
    b       branch_0x8010e320

branch_0x8010e30c:
    lfs     f2, -0x548c(r2)
    fcmpo   cr0, f0, f2
    ble-    branch_0x8010e31c
    b       branch_0x8010e320

branch_0x8010e31c:
    fmr     f2, f0
branch_0x8010e320:
    lfs     f1, -0x5458(r2)
    mr      r3, r30
    lfs     f0, -0x54b0(r2)
    fmuls   f31, f2, f1
    stfs    f0, 0x108(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, sp, 0x104
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x2f8(r31)
    lfs     f30, -0x54b0(r2)
    fdivs   f0, f1, f0
    fcmpo   cr0, f0, f30
    bge-    branch_0x8010e370
    b       branch_0x8010e384

branch_0x8010e370:
    lfs     f30, -0x5460(r2)
    fcmpo   cr0, f0, f30
    ble-    branch_0x8010e380
    b       branch_0x8010e384

branch_0x8010e380:
    fmr     f30, f0
branch_0x8010e384:
    addi    r3, sp, 0x88
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f1, -0x54b0(r2)
    addi    r5, sp, 0xd4
    lfs     f0, -0x54a8(r2)
    addi    r3, sp, 0x88
    stfs    f1, 0xd4(sp)
    addi    r4, sp, 0x104
    stfs    f0, 0xd8(sp)
    stfs    f1, 0xdc(sp)
    bl      SMS_CalcToDirMatrix__FRQ29JGeometry64TPosition3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x88
    addi    r4, sp, 0xf4
    bl      getQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___CFRQ29JGeometry9TQuat4_f_
    lfs     f1, -0x5460(r2)
    lfs     f0, -0x5464(r2)
    fsubs   f1, f1, f30
    lfs     f2, -0x54a0(r2)
    lfs     f29, 0xac(sp)
    lfs     f28, 0x9c(sp)
    fmuls   f0, f1, f0
    lfs     f27, 0x8c(sp)
    fmuls   f30, f2, f0
    fmr     f1, f30
    bl      sinf
    fmuls   f0, f27, f1
    fmuls   f2, f28, f1
    stfs    f0, 0xb8(sp)
    fmuls   f0, f29, f1
    fmr     f1, f30
    stfs    f2, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    bl      cosf
    stfs    f1, 0xc4(sp)
    fabs    f4, f31
    mr      r3, r30
    lfs     f6, 0x100(sp)
    lfs     f11, 0xb8(sp)
    lfs     f9, 0xbc(sp)
    lfs     f10, 0xf4(sp)
    fmuls   f0, f6, f11
    lfs     f7, 0xc4(sp)
    fmuls   f1, f6, f9
    lfs     f12, 0xf8(sp)
    lfs     f5, 0xc0(sp)
    fmadds  f2, f10, f7, f0
    lfs     f8, 0xfc(sp)
    fmuls   f0, f6, f5
    fmadds  f1, f12, f7, f1
    fmuls   f3, f10, f11
    fmadds  f2, f12, f5, f2
    fmadds  f0, f8, f7, f0
    fmadds  f1, f8, f11, f1
    fmsubs  f3, f6, f7, f3
    fnmsubs  f2, f8, f9, f2
    fmadds  f0, f10, f9, f0
    fnmsubs  f1, f10, f5, f1
    stfs    f2, 0xf4(sp)
    fnmsubs  f3, f12, f9, f3
    fnmsubs  f0, f12, f11, f0
    stfs    f1, 0xf8(sp)
    fnmsubs  f2, f8, f5, f3
    stfs    f0, 0xfc(sp)
    stfs    f2, 0x100(sp)
    lwz     r4, 0xf4(sp)
    lwz     r0, 0xf8(sp)
    stw     r4, 0x1a0(r30)
    stw     r0, 0x1a4(r30)
    lwz     r4, 0xfc(sp)
    lwz     r0, 0x100(sp)
    stw     r4, 0x1a8(r30)
    stw     r0, 0x1ac(r30)
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0xe8(sp)
    stfs    f0, 0xec(sp)
    lfs     f0, -0x54a8(r2)
    stfs    f0, 0xf0(sp)
    fadds   f6, f0, f4
    lfs     f9, 0xfc(sp)
    lfs     f27, 0xe8(sp)
    lfs     f5, 0xf4(sp)
    fneg    f0, f9
    lfs     f4, 0xec(sp)
    fmuls   f2, f9, f27
    lfs     f12, 0xf8(sp)
    fneg    f13, f5
    lfs     f10, 0xf0(sp)
    fmuls   f3, f9, f4
    fmuls   f1, f12, f27
    lfs     f11, 0x100(sp)
    fmadds  f2, f13, f10, f2
    fmsubs  f3, f12, f10, f3
    fmsubs  f5, f5, f4, f1
    fmadds  f8, f11, f4, f2
    fmuls   f2, f12, f4
    fmadds  f7, f11, f27, f3
    fmuls   f3, f8, f0
    fmsubs  f4, f13, f27, f2
    fmuls   f1, f8, f11
    fmadds  f5, f11, f10, f5
    fneg    f12, f12
    fmadds  f2, f7, f9, f1
    fmadds  f3, f7, f11, f3
    fmuls   f1, f8, f13
    fnmsubs  f4, f9, f10, f4
    fnmsubs  f3, f5, f12, f3
    fmsubs  f1, f7, f12, f1
    fmadds  f2, f5, f13, f2
    fmadds  f3, f4, f13, f3
    fmadds  f1, f5, f11, f1
    fmadds  f2, f4, f12, f2
    stfs    f3, 0xe8(sp)
    fmadds  f0, f4, f0, f1
    stfs    f2, 0xec(sp)
    stfs    f0, 0xf0(sp)
    stfs    f31, 0xec(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f6
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f6
    stfs    f0, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fmuls   f0, f0, f6
    stfs    f0, 0xf0(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x30c(r3)
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf0(sp)
    lwz     r3, 0xe8(sp)
    lwz     r0, 0xec(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0xf0(sp)
    stw     r0, 0x9c(r30)
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    lfd     f29, 0x128(sp)
    lfd     f28, 0x120(sp)
    lfd     f27, 0x118(sp)
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    addi    sp, sp, 0x140
    mtlr    r0
    blr


.globl setDeadAnm__8TKazekunFv
setDeadAnm__8TKazekunFv: # 0x8010e5f4
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    li      r4, 0x1
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isCollidMove__8TKazekunFP9THitActor
isCollidMove__8TKazekunFP9THitActor: # 0x8010e644
    li      r3, 0x0
    blr


.globl attackToMario__8TKazekunFv
attackToMario__8TKazekunFv: # 0x8010e64c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mr      r30, r3
    lwz     r31, 0x8c(r3)
    lwz     r27, 0x14(r31)
    cmplwi  r27, 0x0
    beq-    branch_0x8010e674
    b       branch_0x8010e678

branch_0x8010e674:
    lwz     r27, 0x1c(r31)
branch_0x8010e678:
    lbz     r0, R13Off_m0x66e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010e6b8
    addi    r3, r13, R13Off_m0x66e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__17TNerveKazekunTurn@ha
    addi    r0, r3, __vvt__17TNerveKazekunTurn@l
    lis     r4, __dt__17TNerveKazekunTurnFv@ha
    stw     r0, R13Off_m0x66e4(r13)
    lis     r3, unk_803f2fd8@h
    addi    r5, r3, unk_803f2fd8@l
    addi    r4, r4, __dt__17TNerveKazekunTurnFv@l
    addi    r3, r13, R13Off_m0x66e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66e8(r13)
branch_0x8010e6b8:
    addi    r0, r13, R13Off_m0x66e4
    cmplw   r27, r0
    li      r28, 0x1
    addi    r27, r28, 0x0
    beq-    branch_0x8010e6e8
    bl      theNerve__22TNerveKazekunPreAttackFv
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r29
    beq-    branch_0x8010e6e8
    li      r27, 0x0
branch_0x8010e6e8:
    clrlwi. r0, r27, 24
    bne-    branch_0x8010e70c
    bl      theNerve__19TNerveKazekunAttackFv
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r29
    beq-    branch_0x8010e70c
    li      r28, 0x0
branch_0x8010e70c:
    clrlwi. r0, r28, 24
    beq-    branch_0x8010e720
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x8010e720:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getBasNameTable__8TKazekunCFv
getBasNameTable__8TKazekunCFv: # 0x8010e734
    lis     r3, Kazekun_bastable@ha
    addi    r3, r3, Kazekun_bastable@l
    blr


.globl behaveToWater__8TKazekunFP9THitActor
behaveToWater__8TKazekunFP9THitActor: # 0x8010e740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r27, 0x2c(sp)
    mr      r30, r3
    lwz     r31, 0x8c(r3)
    lwz     r27, 0x14(r31)
    cmplwi  r27, 0x0
    beq-    branch_0x8010e768
    b       branch_0x8010e76c

branch_0x8010e768:
    lwz     r27, 0x1c(r31)
branch_0x8010e76c:
    lbz     r0, R13Off_m0x66e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010e7b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveKazekunTurn@ha
    stw     r0, R13Off_m0x66e4(r13)
    addi    r0, r3, __vvt__17TNerveKazekunTurn@l
    lis     r4, __dt__17TNerveKazekunTurnFv@ha
    stw     r0, R13Off_m0x66e4(r13)
    lis     r3, unk_803f2fd8@h
    addi    r5, r3, unk_803f2fd8@l
    addi    r4, r4, __dt__17TNerveKazekunTurnFv@l
    addi    r3, r13, R13Off_m0x66e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66e8(r13)
branch_0x8010e7b0:
    addi    r0, r13, R13Off_m0x66e4
    cmplw   r27, r0
    li      r28, 0x1
    addi    r27, r28, 0x0
    beq-    branch_0x8010e7e0
    bl      theNerve__22TNerveKazekunPreAttackFv
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r29
    beq-    branch_0x8010e7e0
    li      r27, 0x0
branch_0x8010e7e0:
    clrlwi. r0, r27, 24
    bne-    branch_0x8010e804
    bl      theNerve__19TNerveKazekunAttackFv
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r29
    beq-    branch_0x8010e804
    li      r28, 0x0
branch_0x8010e804:
    clrlwi. r0, r28, 24
    beq-    branch_0x8010e880
    lwz     r3, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x66c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8010e85c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveKazekunHitWater@ha
    stw     r0, R13Off_m0x66bc(r13)
    addi    r0, r3, __vvt__21TNerveKazekunHitWater@l
    lis     r4, __dt__21TNerveKazekunHitWaterFv@ha
    stw     r0, R13Off_m0x66bc(r13)
    lis     r3, unk_803f3014@h
    addi    r5, r3, unk_803f3014@l
    addi    r4, r4, __dt__21TNerveKazekunHitWaterFv@l
    addi    r3, r13, R13Off_m0x66bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66c0(r13)
branch_0x8010e85c:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x66bc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8010e874
    stw     r0, 0x1c(r4)
branch_0x8010e874:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8010e880:
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl bind__8TKazekunFv
bind__8TKazekunFv: # 0x8010e894
    lfs     f1, 0x94(r3)
    lfs     f0, 0xac(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r3)
    lfs     f1, 0x98(r3)
    lfs     f0, 0xb0(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r3)
    lfs     f1, 0x9c(r3)
    lfs     f0, 0xb4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r3)
    blr


.globl calcRootMatrix__8TKazekunFv
calcRootMatrix__8TKazekunFv: # 0x8010e8c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    mr      r30, r3
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8010e8f0
    li      r0, 0x1
    b       branch_0x8010e8f4

branch_0x8010e8f0:
    li      r0, 0x0
branch_0x8010e8f4:
    cmpwi   r0, 0x0
    beq-    branch_0x8010e908
    mr      r3, r30
    bl      calcRootMatrix__11TSpineEnemyFv
    b       branch_0x8010eaf8

branch_0x8010e908:
    lfs     f3, 0x1a4(r30)
    mr      r3, r30
    lfs     f1, -0x5460(r2)
    addi    r29, sp, 0x20
    lfs     f6, 0x1a8(r30)
    fmuls   f11, f1, f3
    lfs     f10, 0x1a0(r30)
    fmuls   f2, f1, f6
    lfs     f0, 0x1ac(r30)
    fmuls   f7, f1, f10
    fmuls   f12, f1, f0
    lfs     f1, -0x54a8(r2)
    fmuls   f9, f11, f3
    fmuls   f8, f2, f6
    fmuls   f5, f7, f3
    fmuls   f4, f12, f6
    fsubs   f0, f1, f9
    fmuls   f2, f7, f10
    fmuls   f7, f7, f6
    fmuls   f3, f12, f3
    fsubs   f13, f1, f2
    fsubs   f0, f0, f8
    fsubs   f2, f5, f4
    fadds   f1, f7, f3
    stfs    f0, 0x20(sp)
    fadds   f0, f5, f4
    fmuls   f6, f11, f6
    fmuls   f5, f12, f10
    stfs    f2, 0x24(sp)
    fsubs   f4, f13, f8
    fsubs   f2, f7, f3
    stfs    f1, 0x28(sp)
    fsubs   f3, f6, f5
    stfs    f0, 0x30(sp)
    fadds   f1, f6, f5
    fsubs   f0, f13, f9
    stfs    f4, 0x34(sp)
    stfs    f3, 0x38(sp)
    stfs    f2, 0x40(sp)
    stfs    f1, 0x44(sp)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x2c(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x4c(sp)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r31, 0x8c(r30)
    lwz     r26, 0x14(r31)
    cmplwi  r26, 0x0
    beq-    branch_0x8010e9ec
    b       branch_0x8010e9f0

branch_0x8010e9ec:
    lwz     r26, 0x1c(r31)
branch_0x8010e9f0:
    lbz     r0, R13Off_m0x66e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010ea34
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveKazekunTurn@ha
    stw     r0, R13Off_m0x66e4(r13)
    addi    r0, r3, __vvt__17TNerveKazekunTurn@l
    lis     r4, __dt__17TNerveKazekunTurnFv@ha
    stw     r0, R13Off_m0x66e4(r13)
    lis     r3, unk_803f2fd8@h
    addi    r5, r3, unk_803f2fd8@l
    addi    r4, r4, __dt__17TNerveKazekunTurnFv@l
    addi    r3, r13, R13Off_m0x66e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66e8(r13)
branch_0x8010ea34:
    addi    r0, r13, R13Off_m0x66e4
    cmplw   r26, r0
    li      r28, 0x1
    addi    r27, r28, 0x0
    addi    r26, r28, 0x0
    beq-    branch_0x8010ea68
    bl      theNerve__22TNerveKazekunPreAttackFv
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r29
    beq-    branch_0x8010ea68
    li      r26, 0x0
branch_0x8010ea68:
    clrlwi. r0, r26, 24
    bne-    branch_0x8010ea8c
    bl      theNerve__19TNerveKazekunAttackFv
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r29
    beq-    branch_0x8010ea8c
    li      r27, 0x0
branch_0x8010ea8c:
    clrlwi. r0, r27, 24
    bne-    branch_0x8010eab0
    bl      theNerve__21TNerveKazekunHitWaterFv
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    cmplw   r3, r29
    beq-    branch_0x8010eab0
    li      r28, 0x0
branch_0x8010eab0:
    clrlwi. r0, r28, 24
    beq-    branch_0x8010eaf8
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r5, r3, 0x20
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r30, 0x0
    li      r4, 0x189
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r5, r3, 0x20
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r30, 0x0
    li      r4, 0x18a
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8010eaf8:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl reset__8TKazekunFv
reset__8TKazekunFv: # 0x8010eb0c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x1a0(r3)
    stfs    f0, 0x1a4(r3)
    stfs    f0, 0x1a8(r3)
    lfs     f0, -0x54a8(r2)
    stfs    f0, 0x1ac(r3)
    lwz     r5, 0x194(r3)
    lwz     r0, 0x198(r3)
    stw     r5, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x19c(r3)
    stw     r0, 0x18(sp)
    lfs     f0, 0x10(sp)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(sp)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x18(sp)
    stfs    f0, 0x18(r3)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0xa
    stw     r0, 0xf0(r3)
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl init__8TKazekunFP12TLiveManager
init__8TKazekunFP12TLiveManager: # 0x8010eb84
    mflr    r0
    lis     r5, unk_80383e48@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, unk_80383e48@l
    stw     r30, 0x28(sp)
    mr      r30, r3
    stw     r29, 0x24(sp)
    stw     r4, 0x70(r3)
    addi    r4, r30, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8010ebd8
    lwz     r4, 0x70(r30)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8010ebd8:
    stw     r29, 0x78(r30)
    addi    r4, r31, 0x17c
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    lbz     r0, R13Off_m0x66f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010ec34
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveKazekunSearch@ha
    stw     r0, R13Off_m0x66f4(r13)
    addi    r0, r3, __vvt__19TNerveKazekunSearch@l
    lis     r4, __dt__19TNerveKazekunSearchFv@ha
    stw     r0, R13Off_m0x66f4(r13)
    lis     r3, unk_803f2fc0@h
    addi    r5, r3, unk_803f2fc0@l
    addi    r4, r4, __dt__19TNerveKazekunSearchFv@l
    addi    r3, r13, R13Off_m0x66f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x66f8(r13)
branch_0x8010ec34:
    lwz     r8, 0x8c(r30)
    li      r7, 0x0
    lis     r4, unk_10000029@h
    stw     r7, 0x8(r8)
    addi    r0, r13, R13Off_m0x66f4
    addi    r3, r30, 0x0
    stw     r7, 0x20(r8)
    addi    r4, r4, unk_10000029@l
    li      r5, 0x1
    stw     r0, 0x14(r8)
    lis     r6, 0x8000
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f0, -0x5454(r2)
    stfs    f0, 0xc0(r30)
    lfs     f0, -0x5450(r2)
    stfs    f0, 0xbc(r30)
    stfs    f0, 0xb8(r30)
    lfs     f2, 0x148(r30)
    lfs     f1, 0xc0(r30)
    lfs     f0, 0xbc(r30)
    fmuls   f4, f2, f1
    fmuls   f3, f2, f0
    fmr     f2, f4
    fmr     f1, f3
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    addi    r29, r3, 0xcf
    lbz     r0, 0xcf(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8010ecd8
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x2dc
    li      r5, 0xcf
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x8010ecd8:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x189
    lbz     r0, 0x189(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8010ed08
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x304
    li      r5, 0x189
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x8010ed08:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x18a
    lbz     r0, 0x18a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8010ed38
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x328
    li      r5, 0x18a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x8010ed38:
    mr      r3, r30
    bl      initAnmSound__10TLiveActorFv
    lfs     f0, 0x10(r30)
    mr      r3, r30
    stfs    f0, 0x194(r30)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x198(r30)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x19c(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__8TKazekunFPCc
__ct__8TKazekunFPCc: # 0x8010ed88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, __vvt__8TKazekun@ha
    addi    r3, r3, __vvt__8TKazekun@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x1b0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SMS_CalcToDirMatrix__FRQ29JGeometry64TPosition3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
SMS_CalcToDirMatrix__FRQ29JGeometry64TPosition3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8010ede0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stfd    f28, 0xb0(sp)
    stfd    f27, 0xa8(sp)
    stfd    f26, 0xa0(sp)
    stfd    f25, 0x98(sp)
    stfd    f24, 0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r5
    stw     r30, 0x88(sp)
    mr      r30, r3
    lwz     r6, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, -0x54ac(r2)
    stw     r6, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x84(sp)
    lfs     f2, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f3, 0x84(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010ee7c
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x80(sp)
    lfs     f0, -0x54a8(r2)
    stfs    f0, 0x84(sp)
    b       branch_0x8010eecc

branch_0x8010ee7c:
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010ee9c
    lfs     f0, -0x54b0(r2)
    stfs    f0, 0x84(sp)
    stfs    f0, 0x80(sp)
    stfs    f0, 0x7c(sp)
    b       branch_0x8010eecc

branch_0x8010ee9c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x54a8(r2)
    lfs     f0, 0x7c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(sp)
    lfs     f0, 0x84(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(sp)
branch_0x8010eecc:
    lfs     f31, 0x84(sp)
    lfs     f4, 0x0(r31)
    lfs     f2, 0x8(r31)
    lfs     f30, 0x80(sp)
    fmuls   f0, f4, f31
    lfs     f5, 0x7c(sp)
    fmuls   f1, f2, f30
    lfs     f3, 0x4(r31)
    fmsubs  f28, f2, f5, f0
    fmuls   f2, f3, f5
    lfs     f0, -0x54ac(r2)
    fmsubs  f27, f3, f31, f1
    fmuls   f1, f28, f28
    fmsubs  f26, f4, f30, f2
    fmadds  f1, f27, f27, f1
    fmadds  f1, f26, f26, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010ef28
    lfs     f28, -0x54b0(r2)
    lfs     f29, -0x54a8(r2)
    fmr     f27, f28
    b       branch_0x8010ef5c

branch_0x8010ef28:
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010ef44
    lfs     f27, -0x54b0(r2)
    fmr     f28, f27
    fmr     f29, f28
    b       branch_0x8010ef5c

branch_0x8010ef44:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x54a8(r2)
    fmuls   f0, f0, f1
    fmuls   f29, f27, f0
    fmuls   f28, f28, f0
    fmuls   f27, f26, f0
branch_0x8010ef5c:
    lfs     f4, 0x7c(sp)
    fmuls   f3, f31, f28
    fmuls   f1, f30, f29
    lfs     f0, -0x54ac(r2)
    fmuls   f2, f4, f27
    fmsubs  f26, f30, f27, f3
    fmsubs  f24, f4, f28, f1
    fmsubs  f25, f31, f29, f2
    fmuls   f1, f25, f25
    fmadds  f1, f26, f26, f1
    fmadds  f1, f24, f24, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8010efa4
    lfs     f0, -0x54b0(r2)
    fmr     f2, f0
    fmr     f1, f2
    b       branch_0x8010efbc

branch_0x8010efa4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x54a8(r2)
    fmuls   f0, f0, f1
    fmuls   f1, f26, f0
    fmuls   f2, f25, f0
    fmuls   f0, f24, f0
branch_0x8010efbc:
    stfs    f29, 0x0(r30)
    stfs    f28, 0x10(r30)
    stfs    f27, 0x20(r30)
    stfs    f1, 0x4(r30)
    stfs    f2, 0x14(r30)
    stfs    f0, 0x24(r30)
    lfs     f0, 0x7c(sp)
    stfs    f0, 0x8(r30)
    stfs    f30, 0x18(r30)
    stfs    f31, 0x28(r30)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    lfd     f29, 0xb8(sp)
    lfd     f28, 0xb0(sp)
    lfd     f27, 0xa8(sp)
    lfd     f26, 0xa0(sp)
    lfd     f25, 0x98(sp)
    lfd     f24, 0x90(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl __dt__15TKazekunManagerFv
__dt__15TKazekunManagerFv: # 0x8010f01c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8010f074
    lis     r3, __vvt__15TKazekunManager@ha
    addi    r0, r3, __vvt__15TKazekunManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8010f064
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8010f064:
    extsh.  r0, r31
    ble-    branch_0x8010f074
    mr      r3, r30
    bl      __dl__FPv
branch_0x8010f074:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TKazekunFv
__dt__8TKazekunFv: # 0x8010f090
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8010f0f8
    lis     r3, __vvt__8TKazekun@ha
    addi    r3, r3, __vvt__8TKazekun@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8010f0e8
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8010f0e8:
    extsh.  r0, r31
    ble-    branch_0x8010f0f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8010f0f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_Kazekun_cpp
__sinit_Kazekun_cpp: # 0x8010f114
    mflr    r0
    lis     r3, unk_803f2fc0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f2fc0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f15c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8010f15c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f18c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8010f18c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f1bc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8010f1bc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f1ec
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8010f1ec:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f21c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8010f21c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f24c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8010f24c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f27c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8010f27c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f2ac
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8010f2ac:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f2dc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8010f2dc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f30c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8010f30c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f33c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8010f33c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f36c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8010f36c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f39c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8010f39c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f3cc
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8010f3cc:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8010f3fc
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8010f3fc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8010f410
unk_8010f410: # 0x8010f410
    addi    r3, r3, -0x20
    b       __dt__8TKazekunFv

