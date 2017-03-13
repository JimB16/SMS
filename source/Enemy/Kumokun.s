
.globl __dt__19TNerveKumokunPreFlyFv
__dt__19TNerveKumokunPreFlyFv: # 0x8011c388
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011c3cc
    lis     r3, 0x803c
    subi    r0, r3, 0x2540
    stw     r0, 0x0(r31)
    beq-    branch_0x8011c3bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011c3bc:
    extsh.  r0, r4
    ble-    branch_0x8011c3cc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011c3cc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveKumokunPreFlyCFP24TSpineBase_10TLiveActor_
execute__19TNerveKumokunPreFlyCFP24TSpineBase_10TLiveActor_: # 0x8011c3e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011c450
    li      r0, 0x0
    stw     r0, 0x1dc(r29)
    lis     r3, 0x8038
    addi    r4, r3, 0x5654
    lwz     r5, 0x1dc(r29)
    lwz     r0, 0x1d8(r29)
    cmpw    r5, r0
    bge-    branch_0x8011c448
    lwz     r3, 0x1e0(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x1dc(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1dc(r29)
branch_0x8011c448:
    mr      r3, r29
    bl      changeBck__8TKumokunFPCc
branch_0x8011c450:
    lwz     r0, 0x1dc(r29)
    li      r30, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x8011c478
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8011c478
    li      r30, 0x1
branch_0x8011c478:
    clrlwi. r0, r30, 24
    beq-    branch_0x8011c500
    lbz     r0, -0x65d8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c4c4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65d4(r13)
    subi    r0, r3, 0x2524
    lis     r4, 0x8012
    stw     r0, -0x65d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3434
    subi    r4, r4, 0x3ae0
    subi    r3, r13, 0x65d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d8(r13)
branch_0x8011c4c4:
    subi    r4, r13, 0x65d4
    cmplwi  r4, 0x0
    beq-    branch_0x8011c4f8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8011c4f8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8011c4f8:
    li      r3, 0x1
    b       branch_0x8011c504

branch_0x8011c500:
    li      r3, 0x0
branch_0x8011c504:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl __dt__16TNerveKumokunFlyFv
__dt__16TNerveKumokunFlyFv: # 0x8011c520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011c564
    lis     r3, 0x803c
    subi    r0, r3, 0x2524
    stw     r0, 0x0(r31)
    beq-    branch_0x8011c554
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011c554:
    extsh.  r0, r4
    ble-    branch_0x8011c564
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011c564:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveKumokunFlyCFP24TSpineBase_10TLiveActor_
execute__16TNerveKumokunFlyCFP24TSpineBase_10TLiveActor_: # 0x8011c57c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stw     r31, 0xf4(sp)
    stw     r30, 0xf0(sp)
    mr      r30, r4
    stw     r29, 0xec(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011c898
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x5664
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lfs     f31, -0x5228(rtoc)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011c5dc
    b       branch_0x8011c5e0

branch_0x8011c5dc:
    lwz     r29, 0x1c(r3)
branch_0x8011c5e0:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    beq-    branch_0x8011c664
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011c660
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011c60c
    b       branch_0x8011c610

branch_0x8011c60c:
    lwz     r29, 0x1c(r3)
branch_0x8011c610:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011c654
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011c654:
    subi    r0, r13, 0x65cc
    cmplw   r29, r0
    bne-    branch_0x8011c664
branch_0x8011c660:
    lfs     f31, -0x5224(rtoc)
branch_0x8011c664:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    lwz     r3, 0x198(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8011c6b0
    bl      getNormal__12TBGCheckDataCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0xd4(sp)
    b       branch_0x8011c6c4

branch_0x8011c6b0:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xcc
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x8011c6c4:
    lwz     r0, 0xcc(sp)
    mr      r3, r31
    lwz     r4, 0xd0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0xd4(sp)
    stw     r4, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x35c(r3)
    addi    r3, sp, 0xb4
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5218(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8011c724
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0xbc(sp)
    stfs    f0, 0xb8(sp)
    stfs    f0, 0xb4(sp)
    b       branch_0x8011c738

branch_0x8011c724:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0xb4
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8011c738:
    lwz     r4, 0xb4(sp)
    li      r0, 0x0
    lwz     r3, 0xb8(sp)
    stw     r4, 0xac(r31)
    stw     r3, 0xb0(r31)
    lwz     r3, 0xbc(sp)
    stw     r3, 0xb4(r31)
    stw     r0, 0x194(r31)
    lwz     r3, 0x198(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8011c784
    bl      getNormal__12TBGCheckDataCFv
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r4, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x8(r3)
    stw     r0, 0xe0(sp)
    b       branch_0x8011c798

branch_0x8011c784:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xd8
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x8011c798:
    lwz     r0, 0xd8(sp)
    lwz     r3, 0xdc(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0xe0(sp)
    stw     r3, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lfs     f1, 0xc0(r31)
    lfs     f0, 0xc0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    lfs     f1, 0x10(r31)
    lfs     f0, 0xc0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xc4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0xc8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lwz     r0, 0x194(r31)
    cmpwi   r0, 0x1e
    bgt-    branch_0x8011c82c
    cmpwi   r0, 0x0
    ble-    branch_0x8011c898
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x1e
    ble-    branch_0x8011c898
branch_0x8011c82c:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8011c858
    lwz     r3, 0x34(r4)
    addi    r29, sp, 0x88
    lwz     r0, 0x38(r4)
    stw     r3, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x90(sp)
    b       branch_0x8011c870

branch_0x8011c858:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x88
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r29, sp, 0x88
branch_0x8011c870:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x7c
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, -0x5228(rtoc)
    addi    r4, sp, 0x7c
    addi    r5, r29, 0x0
    addi    r3, r31, 0x19c
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
branch_0x8011c898:
    lwz     r0, 0x194(r31)
    cmpwi   r0, 0x1e
    bgt-    branch_0x8011c8bc
    cmpwi   r0, 0x0
    ble-    branch_0x8011c928
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x1e
    ble-    branch_0x8011c928
branch_0x8011c8bc:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8011c8e8
    lwz     r3, 0x34(r4)
    addi    r5, sp, 0xa8
    lwz     r0, 0x38(r4)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xb0(sp)
    b       branch_0x8011c900

branch_0x8011c8e8:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xa8
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r5, sp, 0xa8
branch_0x8011c900:
    lfs     f0, -0x521c(rtoc)
    addi    r4, sp, 0x9c
    lfs     f1, -0x5228(rtoc)
    addi    r3, r31, 0x19c
    stfs    f0, 0x9c(sp)
    stfs    f1, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    bl      setRotate__Q29JGeometry9TQuat4_f_FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
    li      r0, 0x1
    b       branch_0x8011c92c

branch_0x8011c928:
    li      r0, 0x0
branch_0x8011c92c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8011c940
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x708
    ble-    branch_0x8011c984
branch_0x8011c940:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    beq-    branch_0x8011c974
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8011c974
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8011c974:
    li      r0, 0x1
    stw     r0, 0x1ec(r31)
    li      r3, 0x1
    b       branch_0x8011c988

branch_0x8011c984:
    li      r3, 0x0
branch_0x8011c988:
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lwz     r31, 0xf4(sp)
    mtlr    r0
    lwz     r30, 0xf0(sp)
    lwz     r29, 0xec(sp)
    addi    sp, sp, 0x100
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8: # 0x8011c9a8
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl getNormal__12TBGCheckDataCFv
getNormal__12TBGCheckDataCFv: # 0x8011c9b8
    addi    r3, r3, 0x34
    blr


.globl execute__23TNerveKumokunPostFreezeCFP24TSpineBase_10TLiveActor_
execute__23TNerveKumokunPostFreezeCFP24TSpineBase_10TLiveActor_: # 0x8011c9c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    stw     r29, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011cac8
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x5678
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lfs     f31, -0x5228(rtoc)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011ca20
    b       branch_0x8011ca24

branch_0x8011ca20:
    lwz     r29, 0x1c(r3)
branch_0x8011ca24:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    beq-    branch_0x8011caa8
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011caa4
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011ca50
    b       branch_0x8011ca54

branch_0x8011ca50:
    lwz     r29, 0x1c(r3)
branch_0x8011ca54:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011ca98
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011ca98:
    subi    r0, r13, 0x65cc
    cmplw   r29, r0
    bne-    branch_0x8011caa8
branch_0x8011caa4:
    lfs     f31, -0x5224(rtoc)
branch_0x8011caa8:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8011cac8:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8011cb5c
    lbz     r0, -0x65f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011cb20
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65f4(r13)
    subi    r0, r3, 0x24e4
    lis     r4, 0x8012
    stw     r0, -0x65f4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3404
    subi    r4, r4, 0x3480
    subi    r3, r13, 0x65f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65f8(r13)
branch_0x8011cb20:
    subi    r4, r13, 0x65f4
    cmplwi  r4, 0x0
    beq-    branch_0x8011cb54
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8011cb54
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8011cb54:
    li      r3, 0x1
    b       branch_0x8011cb60

branch_0x8011cb5c:
    li      r3, 0x0
branch_0x8011cb60:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x48
    blr


.globl __dt__19TNerveKumokunSearchFv
__dt__19TNerveKumokunSearchFv: # 0x8011cb80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011cbc4
    lis     r3, 0x803c
    subi    r0, r3, 0x24e4
    stw     r0, 0x0(r31)
    beq-    branch_0x8011cbb4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011cbb4:
    extsh.  r0, r4
    ble-    branch_0x8011cbc4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011cbc4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23TNerveKumokunPostFreezeFv
__dt__23TNerveKumokunPostFreezeFv: # 0x8011cbdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011cc20
    lis     r3, 0x803c
    subi    r0, r3, 0x2514
    stw     r0, 0x0(r31)
    beq-    branch_0x8011cc10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011cc10:
    extsh.  r0, r4
    ble-    branch_0x8011cc20
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011cc20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveKumokunFreezeCFP24TSpineBase_10TLiveActor_
execute__19TNerveKumokunFreezeCFP24TSpineBase_10TLiveActor_: # 0x8011cc38
    mflr    r0
    lis     r3, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r4
    stw     r29, 0x3c(sp)
    addi    r29, r3, 0x51e0
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011cdf8
    li      r0, 0x0
    stw     r0, 0x1dc(r31)
    addi    r4, r29, 0x498
    li      r5, 0x0
    lwz     r3, 0x74(r31)
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    bne-    branch_0x8011cca8
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x474
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8011cd80
branch_0x8011cca8:
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x4a8
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lfs     f31, -0x5228(rtoc)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011ccd4
    b       branch_0x8011ccd8

branch_0x8011ccd4:
    lwz     r29, 0x1c(r3)
branch_0x8011ccd8:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    beq-    branch_0x8011cd5c
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011cd58
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011cd04
    b       branch_0x8011cd08

branch_0x8011cd04:
    lwz     r29, 0x1c(r3)
branch_0x8011cd08:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011cd4c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011cd4c:
    subi    r0, r13, 0x65cc
    cmplw   r29, r0
    bne-    branch_0x8011cd5c
branch_0x8011cd58:
    lfs     f31, -0x5224(rtoc)
branch_0x8011cd5c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8011cdf8

branch_0x8011cd80:
    lwz     r3, 0x74(r31)
    addi    r4, r29, 0x4a8
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    bne-    branch_0x8011cdf8
    lwz     r5, 0x1dc(r31)
    addi    r4, r29, 0x4a8
    lwz     r0, 0x1d8(r31)
    cmpw    r5, r0
    bge-    branch_0x8011cdc4
    lwz     r3, 0x1e0(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x1dc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1dc(r31)
branch_0x8011cdc4:
    lwz     r5, 0x1dc(r31)
    addi    r4, r29, 0x474
    lwz     r0, 0x1d8(r31)
    cmpw    r5, r0
    bge-    branch_0x8011cdf0
    lwz     r3, 0x1e0(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x1dc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1dc(r31)
branch_0x8011cdf0:
    mr      r3, r31
    bl      changeBck__8TKumokunFPCc
branch_0x8011cdf8:
    lwz     r0, 0x1d0(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8011ce84
    lbz     r0, -0x65e0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011ce48
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65dc(r13)
    subi    r0, r3, 0x2514
    lis     r4, 0x8012
    stw     r0, -0x65dc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3428
    subi    r4, r4, 0x3424
    subi    r3, r13, 0x65dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65e0(r13)
branch_0x8011ce48:
    subi    r4, r13, 0x65dc
    cmplwi  r4, 0x0
    beq-    branch_0x8011ce7c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8011ce7c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8011ce7c:
    li      r3, 0x1
    b       branch_0x8011ce88

branch_0x8011ce84:
    li      r3, 0x0
branch_0x8011ce88:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl __dt__19TNerveKumokunFreezeFv
__dt__19TNerveKumokunFreezeFv: # 0x8011cea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011ceec
    lis     r3, 0x803c
    subi    r0, r3, 0x2504
    stw     r0, 0x0(r31)
    beq-    branch_0x8011cedc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011cedc:
    extsh.  r0, r4
    ble-    branch_0x8011ceec
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011ceec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveKumokunWaitCFP24TSpineBase_10TLiveActor_
execute__17TNerveKumokunWaitCFP24TSpineBase_10TLiveActor_: # 0x8011cf04
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stfd    f30, 0x100(sp)
    stfd    f29, 0xf8(sp)
    stfd    f28, 0xf0(sp)
    stfd    f27, 0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r4
    stw     r30, 0xe0(sp)
    addi    r30, r3, 0x33e0
    stw     r29, 0xdc(sp)
    stw     r28, 0xd8(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011d02c
    li      r0, 0x0
    stb     r0, 0x1d4(r29)
    lis     r3, 0x8038
    addi    r4, r3, 0x5698
    lwz     r3, 0x74(r29)
    bl      setBck__6MActorFPCc
    mr      r3, r29
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r29)
    lfs     f31, -0x5228(rtoc)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8011cf88
    b       branch_0x8011cf8c

branch_0x8011cf88:
    lwz     r28, 0x1c(r3)
branch_0x8011cf8c:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r28, r3
    beq-    branch_0x8011d00c
    lbz     r0, 0x1d4(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8011d008
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8011cfb8
    b       branch_0x8011cfbc

branch_0x8011cfb8:
    lwz     r28, 0x1c(r3)
branch_0x8011cfbc:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011cffc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r3, 0x8012
    stw     r0, -0x65cc(r13)
    subi    r4, r3, 0x3c78
    subi    r3, r13, 0x65cc
    addi    r5, r30, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011cffc:
    subi    r0, r13, 0x65cc
    cmplw   r28, r0
    bne-    branch_0x8011d00c
branch_0x8011d008:
    lfs     f31, -0x5224(rtoc)
branch_0x8011d00c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r29)
    fmuls   f0, f0, f1
    fmuls   f29, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f29, 0xc(r3)
branch_0x8011d02c:
    mr      r3, r29
    bl      isOnSamePlaneWithMario__8TKumokunCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8011d044
    li      r0, 0x0
    b       branch_0x8011d198

branch_0x8011d044:
    lwz     r6, MarioHitActorPos(r13)
    addi    r3, sp, 0x6c
    addi    r4, r29, 0x10
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x74(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    mr      r3, r29
    bl      getQuat__8TKumokunCFv
    addi    r4, r3, 0x0
    addi    r3, sp, 0x78
    bl      __ct__Q29JGeometry8TVec4_f_FRCQ29JGeometry8TVec4_f_
    addi    r3, sp, 0x78
    bl      xyz__Q29JGeometry8TVec4_f_Fv
    bl      negate__Q29JGeometry8TVec3_f_Fv
    addi    r4, sp, 0x6c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x78
    bl      rotate__Q29JGeometry9TQuat4_f_CFRCQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    lwz     r0, 0x6c(sp)
    mr      r3, r29
    lwz     r4, 0x70(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x74(sp)
    stw     r4, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r12, 0x0(r29)
    lfs     f28, 0xbc(sp)
    lwz     r12, 0x108(r12)
    lfs     f27, 0xc0(sp)
    mtlr    r12
    lfs     f31, 0xc4(sp)
    blrl
    lwz     r4, 0x198(r29)
    lfs     f29, 0x348(r3)
    cmplwi  r4, 0x0
    lfs     f30, 0xc0(r29)
    beq-    branch_0x8011d108
    lwz     r3, 0x34(r4)
    addi    r28, sp, 0x8c
    lwz     r0, 0x38(r4)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x94(sp)
    b       branch_0x8011d120

branch_0x8011d108:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x8c
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r28, sp, 0x8c
branch_0x8011d120:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x98
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r28)
    lfs     f0, 0x9c(sp)
    lfs     f2, 0x0(r28)
    fmuls   f0, f1, f0
    lfs     f1, 0x98(sp)
    lfs     f4, 0x8(r28)
    lfs     f3, 0xa0(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011d16c
    lfs     f0, -0x5214(rtoc)
    fmuls   f30, f30, f0
branch_0x8011d16c:
    fabs    f0, f27
    li      r0, 0x0
    fcmpo   cr0, f0, f30
    bge-    branch_0x8011d198
    fmuls   f1, f27, f27
    fmuls   f0, f29, f29
    fmadds  f1, f28, f28, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011d198
    li      r0, 0x1
branch_0x8011d198:
    clrlwi. r0, r0, 24
    beq-    branch_0x8011d21c
    lbz     r0, -0x65f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011d1e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65f4(r13)
    subi    r0, r3, 0x24e4
    lis     r3, 0x8012
    stw     r0, -0x65f4(r13)
    subi    r4, r3, 0x3480
    subi    r3, r13, 0x65f4
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65f8(r13)
branch_0x8011d1e0:
    subi    r4, r13, 0x65f4
    cmplwi  r4, 0x0
    beq-    branch_0x8011d214
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8011d214
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8011d214:
    li      r3, 0x1
    b       branch_0x8011d2d4

branch_0x8011d21c:
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8011d2d0
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x334(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x8011d2d0
    lbz     r0, -0x65f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011d294
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65f4(r13)
    subi    r0, r3, 0x24e4
    lis     r3, 0x8012
    stw     r0, -0x65f4(r13)
    subi    r4, r3, 0x3480
    subi    r3, r13, 0x65f4
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65f8(r13)
branch_0x8011d294:
    subi    r4, r13, 0x65f4
    cmplwi  r4, 0x0
    beq-    branch_0x8011d2c8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8011d2c8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8011d2c8:
    li      r3, 0x1
    b       branch_0x8011d2d4

branch_0x8011d2d0:
    li      r3, 0x0
branch_0x8011d2d4:
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lfd     f30, 0x100(sp)
    mtlr    r0
    lfd     f29, 0xf8(sp)
    lfd     f28, 0xf0(sp)
    lfd     f27, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    lwz     r29, 0xdc(sp)
    lwz     r28, 0xd8(sp)
    addi    sp, sp, 0x110
    blr


.globl rotate__Q29JGeometry9TQuat4_f_CFRCQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
rotate__Q29JGeometry9TQuat4_f_CFRCQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x8011d308
    lfs     f9, 0x8(r3)
    lfs     f8, 0x0(r4)
    lfs     f5, 0x0(r3)
    fneg    f0, f9
    lfs     f6, 0x4(r4)
    fmuls   f1, f9, f8
    fneg    f13, f5
    lfs     f10, 0x8(r4)
    lfs     f12, 0x4(r3)
    fmuls   f3, f9, f6
    fmadds  f2, f13, f10, f1
    lfs     f11, 0xc(r3)
    fmuls   f1, f12, f8
    fmsubs  f4, f12, f10, f3
    fmadds  f7, f11, f6, f2
    fmsubs  f5, f5, f6, f1
    fmuls   f3, f12, f6
    fmadds  f6, f11, f8, f4
    fmuls   f2, f7, f0
    fmuls   f1, f7, f11
    fmsubs  f4, f13, f8, f3
    fmadds  f5, f11, f10, f5
    fmadds  f1, f6, f9, f1
    fneg    f8, f12
    fmadds  f2, f6, f11, f2
    fmuls   f3, f7, f13
    fnmsubs  f4, f9, f10, f4
    fnmsubs  f2, f5, f8, f2
    fmsubs  f3, f6, f8, f3
    fmadds  f1, f5, f13, f1
    fmadds  f2, f4, f13, f2
    fmadds  f3, f5, f11, f3
    fmadds  f1, f4, f8, f1
    stfs    f2, 0x0(r5)
    fmadds  f0, f4, f0, f3
    stfs    f1, 0x4(r5)
    stfs    f0, 0x8(r5)
    blr


.globl negate__Q29JGeometry8TVec3_f_Fv
negate__Q29JGeometry8TVec3_f_Fv: # 0x8011d3a0
    lfs     f0, 0x0(r3)
    fneg    f0, f0
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r3)
    fneg    f0, f0
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r3)
    fneg    f0, f0
    stfs    f0, 0x8(r3)
    blr


.globl xyz__Q29JGeometry8TVec4_f_Fv
xyz__Q29JGeometry8TVec4_f_Fv: # 0x8011d3c8
    blr


.globl __ct__Q29JGeometry8TVec4_f_FRCQ29JGeometry8TVec4_f_
__ct__Q29JGeometry8TVec4_f_FRCQ29JGeometry8TVec4_f_: # 0x8011d3cc
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r5, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r5, 0x8(r3)
    stw     r0, 0xc(r3)
    blr


.globl getQuat__8TKumokunCFv
getQuat__8TKumokunCFv: # 0x8011d3f0
    addi    r3, r3, 0x19c
    blr


.globl theNerve__17TNerveKumokunWaitFv
theNerve__17TNerveKumokunWaitFv: # 0x8011d3f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x65f0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011d448
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65ec(r13)
    subi    r0, r3, 0x24f4
    lis     r4, 0x8012
    stw     r0, -0x65ec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3410
    subi    r4, r4, 0x2ba4
    subi    r3, r13, 0x65ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65f0(r13)
branch_0x8011d448:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x65ec
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TNerveKumokunWaitFv
__dt__17TNerveKumokunWaitFv: # 0x8011d45c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011d4a0
    lis     r3, 0x803c
    subi    r0, r3, 0x24f4
    stw     r0, 0x0(r31)
    beq-    branch_0x8011d490
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011d490:
    extsh.  r0, r4
    ble-    branch_0x8011d4a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011d4a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveKumokunSearchCFP24TSpineBase_10TLiveActor_
execute__19TNerveKumokunSearchCFP24TSpineBase_10TLiveActor_: # 0x8011d4b8
    mflr    r0
    lis     r3, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stfd    f30, 0xe8(sp)
    stw     r31, 0xe4(sp)
    addi    r31, r3, 0x51e0
    stw     r30, 0xe0(sp)
    stw     r29, 0xdc(sp)
    mr      r29, r4
    stw     r28, 0xd8(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011d7fc
    mr      r3, r30
    bl      isOnSamePlaneWithMario__8TKumokunCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8011d510
    li      r0, 0x0
    b       branch_0x8011d5f0

branch_0x8011d510:
    lwz     r5, MarioHitActorPos(r13)
    addi    r4, r30, 0x0
    addi    r3, sp, 0xb4
    bl      rotateGoalDirToLocal__8TKumokunCFRCQ29JGeometry8TVec3_f_
    lfs     f1, 0xb4(sp)
    mr      r3, r30
    lfs     f0, 0xb8(sp)
    stfs    f1, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0xbc(sp)
    stfs    f0, 0xcc(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x521c(rtoc)
    lfs     f30, 0x348(r3)
    addi    r3, sp, 0x6c
    fmr     f3, f1
    lfs     f31, 0xc0(r30)
    lfs     f2, -0x5228(rtoc)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r3, sp, 0x60
    addi    r4, r30, 0x0
    bl      getPlaneNormal__8TKumokunCFv
    lfs     f1, 0x64(sp)
    lfs     f0, 0x70(sp)
    lfs     f2, 0x60(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x6c(sp)
    lfs     f4, 0x68(sp)
    lfs     f3, 0x74(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011d5ac
    lfs     f0, -0x5214(rtoc)
    fmuls   f31, f31, f0
branch_0x8011d5ac:
    lfs     f0, 0xc8(sp)
    li      r0, 0x0
    fabs    f0, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x8011d5f0
    lfs     f2, 0xc4(sp)
    fmuls   f0, f30, f30
    lfs     f1, 0xc8(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0xcc(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011d5f0
    li      r0, 0x1
branch_0x8011d5f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8011d610
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc4
    bl      decideTargetAtDir__8TKumokunFRCQ29JGeometry8TVec3_f_
    li      r0, 0x1
    stb     r0, 0x1d4(r30)
    b       branch_0x8011d758

branch_0x8011d610:
    lwz     r3, 0x19c(r30)
    lwz     r0, 0x1a0(r30)
    stw     r3, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r3, 0x1a4(r30)
    lwz     r0, 0x1a8(r30)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, -0x521c(rtoc)
    stw     r0, 0xd4(sp)
    lis     r0, 0x4330
    lfd     f5, -0x5200(rtoc)
    fmr     f3, f1
    stw     r0, 0xd0(sp)
    lfs     f0, -0x520c(rtoc)
    addi    r3, sp, 0xa8
    lfd     f4, 0xd0(sp)
    lfs     f2, -0x5228(rtoc)
    fsubs   f4, f4, f5
    fmuls   f30, f0, f4
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f2, -0x5220(rtoc)
    lfs     f1, -0x5208(rtoc)
    fadds   f0, f2, f30
    fmuls   f0, f1, f0
    fmuls   f30, f2, f0
    fmr     f1, f30
    bl      sinf
    addi    r3, sp, 0x98
    addi    r4, sp, 0xa8
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
    fmr     f1, f30
    bl      cosf
    stfs    f1, 0xa4(sp)
    addi    r3, sp, 0x88
    lfs     f5, 0xa0(sp)
    lfs     f4, 0x94(sp)
    lfs     f8, 0x9c(sp)
    lfs     f10, 0x98(sp)
    fmuls   f1, f4, f5
    lfs     f9, 0x88(sp)
    fmuls   f2, f4, f8
    fmuls   f3, f4, f10
    lfs     f6, 0xa4(sp)
    fmuls   f0, f9, f10
    lfs     f7, 0x90(sp)
    lfs     f11, 0x8c(sp)
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
    bl      set_f___Q29JGeometry8TVec4_f_Fffff_8011daec
    lwz     r4, 0x19c(r30)
    li      r0, 0x0
    lwz     r3, 0x1a0(r30)
    stw     r4, 0x1ac(r30)
    stw     r3, 0x1b0(r30)
    lwz     r4, 0x1a4(r30)
    lwz     r3, 0x1a8(r30)
    stw     r4, 0x1b4(r30)
    stw     r3, 0x1b8(r30)
    lwz     r4, 0x88(sp)
    lwz     r3, 0x8c(sp)
    stw     r4, 0x1bc(r30)
    stw     r3, 0x1c0(r30)
    lwz     r4, 0x90(sp)
    lwz     r3, 0x94(sp)
    stw     r4, 0x1c4(r30)
    stw     r3, 0x1c8(r30)
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0x1cc(r30)
    stb     r0, 0x1d4(r30)
branch_0x8011d758:
    lbz     r0, 0x1d4(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8011d79c
    lwz     r5, 0x1dc(r30)
    addi    r4, r31, 0x4c4
    lwz     r0, 0x1d8(r30)
    cmpw    r5, r0
    bge-    branch_0x8011d790
    lwz     r3, 0x1e0(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x1dc(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1dc(r30)
branch_0x8011d790:
    mr      r3, r30
    bl      changeBck__8TKumokunFPCc
    b       branch_0x8011d7fc

branch_0x8011d79c:
    lwz     r5, 0x1dc(r30)
    addi    r4, r31, 0x4c4
    lwz     r0, 0x1d8(r30)
    cmpw    r5, r0
    bge-    branch_0x8011d7c8
    lwz     r3, 0x1e0(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x1dc(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1dc(r30)
branch_0x8011d7c8:
    lwz     r5, 0x1dc(r30)
    addi    r4, r31, 0x4d4
    lwz     r0, 0x1d8(r30)
    cmpw    r5, r0
    bge-    branch_0x8011d7f4
    lwz     r3, 0x1e0(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x1dc(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1dc(r30)
branch_0x8011d7f4:
    mr      r3, r30
    bl      changeBck__8TKumokunFPCc
branch_0x8011d7fc:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r28, 0x0
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1d4(r30)
    lfs     f1, 0x2e4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8011d82c
    lfs     f0, -0x5214(rtoc)
    b       branch_0x8011d830

branch_0x8011d82c:
    lfs     f0, -0x5228(rtoc)
branch_0x8011d830:
    fmuls   f1, f1, f0
    lfs     f0, 0x1cc(r30)
    fadds   f0, f0, f1
    stfs    f0, 0x1cc(r30)
    lfs     f1, -0x5228(rtoc)
    lfs     f0, 0x1cc(r30)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8011d85c
    stfs    f1, 0x1cc(r30)
    li      r28, 0x1
branch_0x8011d85c:
    lfs     f1, 0x1cc(r30)
    addi    r3, r30, 0x19c
    lfs     f0, 0x1ac(r30)
    addi    r4, r30, 0x1bc
    stfs    f0, 0x19c(r30)
    lfs     f0, 0x1b0(r30)
    stfs    f0, 0x1a0(r30)
    lfs     f0, 0x1b4(r30)
    stfs    f0, 0x1a4(r30)
    lfs     f0, 0x1b8(r30)
    stfs    f0, 0x1a8(r30)
    bl      slerp__Q29JGeometry9TQuat4_f_FRCQ29JGeometry9TQuat4_f_f
    addi    r3, r30, 0x19c
    lfs     f30, -0x5228(rtoc)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x5218(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8011d8c4
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0x1a8(r30)
    stfs    f0, 0x1a4(r30)
    stfs    f0, 0x1a0(r30)
    stfs    f0, 0x19c(r30)
    b       branch_0x8011d8d8

branch_0x8011d8c4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    addi    r3, r30, 0x19c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x8011d8d8:
    clrlwi. r0, r28, 24
    beq-    branch_0x8011da64
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8011da64
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x4c4
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x8011d9e4
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x4e8
    bl      setBck__6MActorFPCc
    mr      r3, r30
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r30)
    lfs     f31, -0x5228(rtoc)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8011d938
    b       branch_0x8011d93c

branch_0x8011d938:
    lwz     r28, 0x1c(r3)
branch_0x8011d93c:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r28, r3
    beq-    branch_0x8011d9c0
    lbz     r0, 0x1d4(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8011d9bc
    lwz     r3, 0x8c(r30)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8011d968
    b       branch_0x8011d96c

branch_0x8011d968:
    lwz     r28, 0x1c(r3)
branch_0x8011d96c:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011d9b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011d9b0:
    subi    r0, r13, 0x65cc
    cmplw   r28, r0
    bne-    branch_0x8011d9c0
branch_0x8011d9bc:
    lfs     f31, -0x5224(rtoc)
branch_0x8011d9c0:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f0, f0, f1
    fmuls   f30, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f30, 0xc(r3)
    b       branch_0x8011da64

branch_0x8011d9e4:
    lbz     r0, -0x6610(r13)
    extsb.  r0, r0
    bne-    branch_0x8011da28
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x660c(r13)
    subi    r0, r3, 0x24b4
    lis     r4, 0x8012
    stw     r0, -0x660c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x33e0
    subi    r4, r4, 0x2570
    subi    r3, r13, 0x660c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6610(r13)
branch_0x8011da28:
    subi    r4, r13, 0x660c
    cmplwi  r4, 0x0
    beq-    branch_0x8011da5c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8011da5c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8011da5c:
    li      r3, 0x1
    b       branch_0x8011da68

branch_0x8011da64:
    li      r3, 0x0
branch_0x8011da68:
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lfd     f30, 0xe8(sp)
    mtlr    r0
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    lwz     r29, 0xdc(sp)
    lwz     r28, 0xd8(sp)
    addi    sp, sp, 0xf8
    blr


.globl __dt__20TNerveKumokunPreWalkFv
__dt__20TNerveKumokunPreWalkFv: # 0x8011da90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011dad4
    lis     r3, 0x803c
    subi    r0, r3, 0x24b4
    stw     r0, 0x0(r31)
    beq-    branch_0x8011dac4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011dac4:
    extsh.  r0, r4
    ble-    branch_0x8011dad4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011dad4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec4_f_Fffff_8011daec
set_f___Q29JGeometry8TVec4_f_Fffff_8011daec: # 0x8011daec
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    stfs    f4, 0xc(r3)
    blr


.globl theNerve__19TNerveKumokunSearchFv
theNerve__19TNerveKumokunSearchFv: # 0x8011db00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x65f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011db50
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65f4(r13)
    subi    r0, r3, 0x24e4
    lis     r4, 0x8012
    stw     r0, -0x65f4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3404
    subi    r4, r4, 0x3480
    subi    r3, r13, 0x65f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65f8(r13)
branch_0x8011db50:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x65f4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__21TNerveKumokunPostWalkCFP24TSpineBase_10TLiveActor_
execute__21TNerveKumokunPostWalkCFP24TSpineBase_10TLiveActor_: # 0x8011db64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    stw     r29, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011dc6c
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x56d8
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lfs     f31, -0x5228(rtoc)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011dbc4
    b       branch_0x8011dbc8

branch_0x8011dbc4:
    lwz     r29, 0x1c(r3)
branch_0x8011dbc8:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    beq-    branch_0x8011dc4c
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011dc48
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011dbf4
    b       branch_0x8011dbf8

branch_0x8011dbf4:
    lwz     r29, 0x1c(r3)
branch_0x8011dbf8:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011dc3c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011dc3c:
    subi    r0, r13, 0x65cc
    cmplw   r29, r0
    bne-    branch_0x8011dc4c
branch_0x8011dc48:
    lfs     f31, -0x5224(rtoc)
branch_0x8011dc4c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8011dc6c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8011dd00
    lbz     r0, -0x65f0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011dcc4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65ec(r13)
    subi    r0, r3, 0x24f4
    lis     r4, 0x8012
    stw     r0, -0x65ec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3410
    subi    r4, r4, 0x2ba4
    subi    r3, r13, 0x65ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65f0(r13)
branch_0x8011dcc4:
    subi    r4, r13, 0x65ec
    cmplwi  r4, 0x0
    beq-    branch_0x8011dcf8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8011dcf8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8011dcf8:
    li      r3, 0x1
    b       branch_0x8011dd04

branch_0x8011dd00:
    li      r3, 0x0
branch_0x8011dd04:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x48
    blr


.globl theNerve__21TNerveKumokunPostWalkFv
theNerve__21TNerveKumokunPostWalkFv: # 0x8011dd24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6600(r13)
    extsb.  r0, r0
    bne-    branch_0x8011dd74
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65fc(r13)
    subi    r0, r3, 0x24d4
    lis     r4, 0x8012
    stw     r0, -0x65fc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x33f8
    subi    r4, r4, 0x2278
    subi    r3, r13, 0x65fc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6600(r13)
branch_0x8011dd74:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x65fc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__21TNerveKumokunPostWalkFv
__dt__21TNerveKumokunPostWalkFv: # 0x8011dd88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011ddcc
    lis     r3, 0x803c
    subi    r0, r3, 0x24d4
    stw     r0, 0x0(r31)
    beq-    branch_0x8011ddbc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011ddbc:
    extsh.  r0, r4
    ble-    branch_0x8011ddcc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011ddcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveKumokunWalkCFP24TSpineBase_10TLiveActor_
execute__17TNerveKumokunWalkCFP24TSpineBase_10TLiveActor_: # 0x8011dde4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r4
    stw     r30, 0x60(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011de24
    li      r0, 0x0
    lis     r3, 0x8038
    stw     r0, 0x194(r30)
    addi    r4, r3, 0x56e8
    addi    r3, r30, 0x0
    bl      changeBck__8TKumokunFPCc
branch_0x8011de24:
    lfs     f6, 0x1a0(r30)
    lfs     f0, 0x1a8(r30)
    lfs     f5, 0x19c(r30)
    fmuls   f1, f0, f6
    lfs     f2, 0x1a4(r30)
    lfs     f4, -0x5224(rtoc)
    fmuls   f0, f0, f5
    fmuls   f3, f5, f2
    fmuls   f1, f4, f1
    fmuls   f2, f6, f2
    fmuls   f0, f4, f0
    fmadds  f3, f4, f3, f1
    fmuls   f1, f5, f5
    fmsubs  f0, f4, f2, f0
    stfs    f3, 0x54(sp)
    fmuls   f2, f6, f6
    stfs    f0, 0x58(sp)
    lfs     f0, -0x5228(rtoc)
    fnmsubs  f0, f4, f1, f0
    fnmsubs  f0, f4, f2, f0
    stfs    f0, 0x5c(sp)
    lbz     r0, 0x1d4(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8011dea0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r3, r3, 0x2fc
    b       branch_0x8011deb8

branch_0x8011dea0:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r3, r3, 0x2e8
branch_0x8011deb8:
    lfs     f1, 0x10(r3)
    li      r4, 0x1
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(sp)
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x9c(r30)
    lwz     r0, 0x194(r30)
    cmpwi   r0, 0x1e
    bgt-    branch_0x8011df0c
    li      r4, 0x0
branch_0x8011df0c:
    clrlwi. r0, r4, 24
    bne-    branch_0x8011df38
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x320(r3)
    lwz     r0, 0x20(r31)
    cmpw    r3, r0
    bge-    branch_0x8011dfcc
branch_0x8011df38:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8011dfcc
    lbz     r0, -0x6600(r13)
    extsb.  r0, r0
    bne-    branch_0x8011df90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65fc(r13)
    subi    r0, r3, 0x24d4
    lis     r4, 0x8012
    stw     r0, -0x65fc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x33f8
    subi    r4, r4, 0x2278
    subi    r3, r13, 0x65fc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6600(r13)
branch_0x8011df90:
    subi    r4, r13, 0x65fc
    cmplwi  r4, 0x0
    beq-    branch_0x8011dfc4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8011dfc4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8011dfc4:
    li      r3, 0x1
    b       branch_0x8011dfd0

branch_0x8011dfcc:
    li      r3, 0x0
branch_0x8011dfd0:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__17TNerveKumokunWalkFv
__dt__17TNerveKumokunWalkFv: # 0x8011dfe8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8011e02c
    lis     r3, 0x803c
    subi    r0, r3, 0x24c4
    stw     r0, 0x0(r31)
    beq-    branch_0x8011e01c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8011e01c:
    extsh.  r0, r4
    ble-    branch_0x8011e02c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8011e02c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveKumokunPreWalkCFP24TSpineBase_10TLiveActor_
execute__20TNerveKumokunPreWalkCFP24TSpineBase_10TLiveActor_: # 0x8011e044
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    stw     r29, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8011e14c
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x56f8
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lfs     f31, -0x5228(rtoc)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011e0a4
    b       branch_0x8011e0a8

branch_0x8011e0a4:
    lwz     r29, 0x1c(r3)
branch_0x8011e0a8:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    beq-    branch_0x8011e12c
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011e128
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8011e0d4
    b       branch_0x8011e0d8

branch_0x8011e0d4:
    lwz     r29, 0x1c(r3)
branch_0x8011e0d8:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011e11c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011e11c:
    subi    r0, r13, 0x65cc
    cmplw   r29, r0
    bne-    branch_0x8011e12c
branch_0x8011e128:
    lfs     f31, -0x5224(rtoc)
branch_0x8011e12c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
branch_0x8011e14c:
    lwz     r0, 0x1dc(r31)
    li      r29, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x8011e174
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8011e174
    li      r29, 0x1
branch_0x8011e174:
    clrlwi. r0, r29, 24
    beq-    branch_0x8011e1fc
    lbz     r0, -0x6608(r13)
    extsb.  r0, r0
    bne-    branch_0x8011e1c0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6604(r13)
    subi    r0, r3, 0x24c4
    lis     r4, 0x8012
    stw     r0, -0x6604(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x33ec
    subi    r4, r4, 0x2018
    subi    r3, r13, 0x6604
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6608(r13)
branch_0x8011e1c0:
    subi    r4, r13, 0x6604
    cmplwi  r4, 0x0
    beq-    branch_0x8011e1f4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8011e1f4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8011e1f4:
    li      r3, 0x1
    b       branch_0x8011e200

branch_0x8011e1fc:
    li      r3, 0x0
branch_0x8011e200:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x48
    blr


.globl theNerve__20TNerveKumokunPreWalkFv
theNerve__20TNerveKumokunPreWalkFv: # 0x8011e220
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6610(r13)
    extsb.  r0, r0
    bne-    branch_0x8011e270
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x660c(r13)
    subi    r0, r3, 0x24b4
    lis     r4, 0x8012
    stw     r0, -0x660c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x33e0
    subi    r4, r4, 0x2570
    subi    r3, r13, 0x660c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6610(r13)
branch_0x8011e270:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x660c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__15TKumokunManagerFv
createModelData__15TKumokunManagerFv: # 0x8011e284
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x563c
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__15TKumokunManagerFR20JSUMemoryInputStream
load__15TKumokunManagerFR20JSUMemoryInputStream: # 0x8011e2b8
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r26, r3, 0x0
    addi    r25, r4, 0x0
    addi    r31, r5, 0x51e0
    li      r3, 0x360
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8011e45c
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x528
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r31, 0x53c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r28, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x53c
    addi    r4, r28, 0x0
    addi    r3, r28, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x2d4(r28)
    lis     r3, 0x803b
    subi    r27, r3, 0x42d0
    lfs     f0, -0x51f8(rtoc)
    addi    r3, r31, 0x548
    stfs    f0, 0x2e4(r28)
    stw     r27, 0x2d4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x2e8
    addi    r6, r31, 0x548
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e8(r28)
    addi    r3, r31, 0x554
    lfs     f0, -0x5228(rtoc)
    stfs    f0, 0x2f8(r28)
    stw     r27, 0x2e8(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x2fc
    addi    r6, r31, 0x554
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r28)
    addi    r3, r31, 0x564
    lfs     f0, -0x51f4(rtoc)
    stfs    f0, 0x30c(r28)
    stw     r27, 0x2fc(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x310
    addi    r6, r31, 0x564
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r23, r3, 0x42ac
    stw     r23, 0x310(r28)
    li      r0, 0x258
    lis     r3, 0x803b
    stw     r0, 0x320(r28)
    subi    r24, r3, 0x42b8
    addi    r3, r31, 0x570
    stw     r24, 0x310(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x324
    addi    r6, r31, 0x570
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x324(r28)
    li      r0, 0xb4
    addi    r3, r31, 0x57c
    stw     r0, 0x334(r28)
    stw     r24, 0x324(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x338
    addi    r6, r31, 0x57c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r28)
    addi    r3, r31, 0x58c
    lfs     f0, -0x51f0(rtoc)
    stfs    f0, 0x348(r28)
    stw     r27, 0x338(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x34c
    addi    r6, r31, 0x58c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r28)
    mr      r3, r28
    lfs     f0, -0x51ec(rtoc)
    stfs    f0, 0x35c(r28)
    stw     r27, 0x34c(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x8011e45c:
    stw     r30, 0x38(r26)
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    lwz     r0, -0x7cb0(r13)
    stw     r0, 0x194(r30)
    lwz     r0, -0x7cac(r13)
    stw     r0, 0x1a8(r30)
    lwz     r0, -0x7ca8(r13)
    stw     r0, 0x16c(r30)
    lwz     r0, -0x7ca4(r13)
    stw     r0, 0x180(r30)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__15TKumokunManagerFPCc
__ct__15TKumokunManagerFPCc: # 0x8011e4a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x24a4
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getPlaneNormal__8TKumokunCFv
getPlaneNormal__8TKumokunCFv: # 0x8011e4dc
    lwz     r5, 0x198(r4)
    cmplwi  r5, 0x0
    beq-    branch_0x8011e504
    lwz     r4, 0x34(r5)
    lwz     r0, 0x38(r5)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x3c(r5)
    stw     r0, 0x8(r3)
    blr

branch_0x8011e504:
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    blr


.globl isCollidMove__8TKumokunFP9THitActor
isCollidMove__8TKumokunFP9THitActor: # 0x8011e518
    li      r3, 0x0
    blr


.globl doKeepDistance__8TKumokunFv
doKeepDistance__8TKumokunFv: # 0x8011e520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    mr      r31, r3
    stw     r30, 0x108(sp)
    lwz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8011e54c
    li      r0, 0x0
    b       branch_0x8011e884

branch_0x8011e54c:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xc8
    lfs     f2, -0x5228(rtoc)
    li      r30, 0x0
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r3, sp, 0xbc
    addi    r4, r31, 0x0
    bl      getPlaneNormal__8TKumokunCFv
    lfs     f1, 0xc0(sp)
    lfs     f0, 0xcc(sp)
    lfs     f2, 0xbc(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0xc8(sp)
    lfs     f4, 0xc4(sp)
    lfs     f3, 0xd0(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, -0x51e0(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi.   r0, r0, 31
    bne-    branch_0x8011e604
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xb0
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r3, sp, 0xa4
    addi    r4, r31, 0x0
    bl      getPlaneNormal__8TKumokunCFv
    lfs     f1, 0xa8(sp)
    lfs     f0, 0xb4(sp)
    lfs     f2, 0xa4(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0xb0(sp)
    lfs     f4, 0xac(sp)
    lfs     f3, 0xb8(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi.   r0, r0, 31
    bne-    branch_0x8011e604
    li      r30, 0x1
branch_0x8011e604:
    clrlwi. r0, r30, 24
    beq-    branch_0x8011e684
    bl      SMS_IsMarioFencing__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8011e684
    lwz     r30, 0x198(r31)
    bl      SMS_GetMarioWlPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x8011e630
    cmplwi  r30, 0x0
    bne-    branch_0x8011e638
branch_0x8011e630:
    li      r0, 0x0
    b       branch_0x8011e67c

branch_0x8011e638:
    addi    r3, r3, 0x34
    lfs     f0, 0x38(r30)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r30)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x3c(r30)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x51e8(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8011e678
    li      r0, 0x1
    b       branch_0x8011e67c

branch_0x8011e678:
    li      r0, 0x0
branch_0x8011e67c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8011e878
branch_0x8011e684:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8011e6b0
    lwz     r3, 0x34(r4)
    addi    r30, sp, 0xec
    lwz     r0, 0x38(r4)
    stw     r3, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xf4(sp)
    b       branch_0x8011e6c8

branch_0x8011e6b0:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xec
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r30, sp, 0xec
branch_0x8011e6c8:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xf8
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r30)
    lfs     f0, 0xfc(sp)
    lfs     f2, 0x0(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0xf8(sp)
    lfs     f4, 0x8(r30)
    lfs     f3, 0x100(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011e784
    bl      SMS_IsMarioRoofing__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8011e784
    lwz     r30, 0x198(r31)
    bl      SMS_GetMarioRfPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x8011e730
    cmplwi  r30, 0x0
    bne-    branch_0x8011e738
branch_0x8011e730:
    li      r0, 0x0
    b       branch_0x8011e77c

branch_0x8011e738:
    addi    r3, r3, 0x34
    lfs     f0, 0x38(r30)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r30)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x3c(r30)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x51e8(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8011e778
    li      r0, 0x1
    b       branch_0x8011e77c

branch_0x8011e778:
    li      r0, 0x0
branch_0x8011e77c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8011e878
branch_0x8011e784:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8011e7b0
    lwz     r3, 0x34(r4)
    addi    r30, sp, 0xd4
    lwz     r0, 0x38(r4)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xdc(sp)
    b       branch_0x8011e7c8

branch_0x8011e7b0:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xd4
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r30, sp, 0xd4
branch_0x8011e7c8:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xe0
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r30)
    lfs     f0, 0xe4(sp)
    lfs     f2, 0x0(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0xe0(sp)
    lfs     f4, 0x8(r30)
    lfs     f3, 0xe8(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, -0x51e0(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011e880
    lwz     r30, 0x198(r31)
    bl      SMS_GetMarioGrPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x8011e824
    cmplwi  r30, 0x0
    bne-    branch_0x8011e82c
branch_0x8011e824:
    li      r0, 0x0
    b       branch_0x8011e870

branch_0x8011e82c:
    addi    r3, r3, 0x34
    lfs     f0, 0x38(r30)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r30)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x3c(r30)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x51e8(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8011e86c
    li      r0, 0x1
    b       branch_0x8011e870

branch_0x8011e86c:
    li      r0, 0x0
branch_0x8011e870:
    clrlwi. r0, r0, 24
    beq-    branch_0x8011e880
branch_0x8011e878:
    li      r0, 0x1
    b       branch_0x8011e884

branch_0x8011e880:
    li      r0, 0x0
branch_0x8011e884:
    clrlwi. r0, r0, 24
    li      r30, 0x0
    beq-    branch_0x8011e8a4
    mr      r3, r31
    bl      isAttack__8TKumokunCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8011e8a4
    li      r30, 0x1
branch_0x8011e8a4:
    lwz     r0, 0x114(sp)
    mr      r3, r30
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    mtlr    r0
    addi    sp, sp, 0x110
    blr


.globl isAttack__8TKumokunCFv
isAttack__8TKumokunCFv: # 0x8011e8c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    mr      r27, r3
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8011e8e8
    b       branch_0x8011e8ec

branch_0x8011e8e8:
    lwz     r31, 0x1c(r3)
branch_0x8011e8ec:
    lwz     r5, 0x198(r27)
    cmplwi  r5, 0x0
    beq-    branch_0x8011e918
    lwz     r3, 0x34(r5)
    addi    r4, sp, 0x4c
    lwz     r0, 0x38(r5)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x3c(r5)
    stw     r0, 0x54(sp)
    b       branch_0x8011e930

branch_0x8011e918:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x4c
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r4, sp, 0x4c
branch_0x8011e930:
    lfs     f1, 0x4(r4)
    lfs     f0, -0x5228(rtoc)
    lfs     f3, -0x521c(rtoc)
    fmuls   f1, f1, f0
    lfs     f2, 0x0(r4)
    lfs     f4, 0x8(r4)
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f2, f3, f1
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011e980
    lwz     r3, MarioHitActorPos(r13)
    lfs     f2, -0x51dc(rtoc)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x14(r27)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8011e980
    li      r3, 0x0
    b       branch_0x8011ea3c

branch_0x8011e980:
    lbz     r0, -0x6608(r13)
    extsb.  r0, r0
    bne-    branch_0x8011e9c4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6604(r13)
    subi    r0, r3, 0x24c4
    lis     r4, 0x8012
    stw     r0, -0x6604(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x33ec
    subi    r4, r4, 0x2018
    subi    r3, r13, 0x6604
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6608(r13)
branch_0x8011e9c4:
    subi    r0, r13, 0x6604
    cmplw   r31, r0
    li      r30, 0x1
    addi    r29, r30, 0x0
    addi    r28, r30, 0x0
    addi    r27, r30, 0x0
    beq-    branch_0x8011e9f0
    bl      theNerve__19TNerveKumokunSearchFv
    cmplw   r31, r3
    beq-    branch_0x8011e9f0
    li      r27, 0x0
branch_0x8011e9f0:
    clrlwi. r0, r27, 24
    bne-    branch_0x8011ea08
    bl      theNerve__17TNerveKumokunWaitFv
    cmplw   r31, r3
    beq-    branch_0x8011ea08
    li      r28, 0x0
branch_0x8011ea08:
    clrlwi. r0, r28, 24
    bne-    branch_0x8011ea20
    bl      theNerve__20TNerveKumokunPreWalkFv
    cmplw   r31, r3
    beq-    branch_0x8011ea20
    li      r29, 0x0
branch_0x8011ea20:
    clrlwi. r0, r29, 24
    bne-    branch_0x8011ea38
    bl      theNerve__21TNerveKumokunPostWalkFv
    cmplw   r31, r3
    beq-    branch_0x8011ea38
    li      r30, 0x0
branch_0x8011ea38:
    mr      r3, r30
branch_0x8011ea3c:
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl isOnSamePlaneWithMario__8TKumokunCFv
isOnSamePlaneWithMario__8TKumokunCFv: # 0x8011ea50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stw     r31, 0x14c(sp)
    mr      r31, r3
    stw     r30, 0x148(sp)
    stw     r29, 0x144(sp)
    lwz     r4, 0x198(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8011ea80
    li      r3, 0x0
    b       branch_0x8011edb8

branch_0x8011ea80:
    beq-    branch_0x8011eaa4
    lwz     r3, 0x34(r4)
    addi    r30, sp, 0xf4
    lwz     r0, 0x38(r4)
    stw     r3, 0xf4(sp)
    stw     r0, 0xf8(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xfc(sp)
    b       branch_0x8011eabc

branch_0x8011eaa4:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xf4
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r30, sp, 0xf4
branch_0x8011eabc:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x100
    lfs     f2, -0x5228(rtoc)
    li      r29, 0x0
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r30)
    lfs     f0, 0x104(sp)
    lfs     f2, 0x0(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0x100(sp)
    lfs     f4, 0x8(r30)
    lfs     f3, 0x108(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, -0x51e0(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi.   r0, r0, 31
    bne-    branch_0x8011eb68
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xe8
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r3, sp, 0xdc
    addi    r4, r31, 0x0
    bl      getPlaneNormal__8TKumokunCFv
    lfs     f1, 0xe0(sp)
    lfs     f0, 0xec(sp)
    lfs     f2, 0xdc(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0xe8(sp)
    lfs     f4, 0xe4(sp)
    lfs     f3, 0xf0(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi.   r0, r0, 31
    bne-    branch_0x8011eb68
    li      r29, 0x1
branch_0x8011eb68:
    clrlwi. r0, r29, 24
    beq-    branch_0x8011ebe8
    bl      SMS_IsMarioFencing__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8011ebe8
    lwz     r30, 0x198(r31)
    bl      SMS_GetMarioWlPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x8011eb94
    cmplwi  r30, 0x0
    bne-    branch_0x8011eb9c
branch_0x8011eb94:
    li      r0, 0x0
    b       branch_0x8011ebe0

branch_0x8011eb9c:
    addi    r3, r3, 0x34
    lfs     f0, 0x38(r30)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r30)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x3c(r30)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x51e8(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8011ebdc
    li      r0, 0x1
    b       branch_0x8011ebe0

branch_0x8011ebdc:
    li      r0, 0x0
branch_0x8011ebe0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8011edac
branch_0x8011ebe8:
    lwz     r5, 0x198(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8011ec14
    lwz     r3, 0x34(r5)
    addi    r4, sp, 0x124
    lwz     r0, 0x38(r5)
    stw     r3, 0x124(sp)
    stw     r0, 0x128(sp)
    lwz     r0, 0x3c(r5)
    stw     r0, 0x12c(sp)
    b       branch_0x8011ec2c

branch_0x8011ec14:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x124
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r4, sp, 0x124
branch_0x8011ec2c:
    lfs     f1, 0x4(r4)
    lfs     f0, -0x5228(rtoc)
    lfs     f3, -0x521c(rtoc)
    fmuls   f1, f1, f0
    lfs     f2, 0x0(r4)
    lfs     f4, 0x8(r4)
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f2, f3, f1
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011ecd0
    bl      SMS_IsMarioRoofing__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8011ecd0
    lwz     r30, 0x198(r31)
    bl      SMS_GetMarioRfPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x8011ec7c
    cmplwi  r30, 0x0
    bne-    branch_0x8011ec84
branch_0x8011ec7c:
    li      r0, 0x0
    b       branch_0x8011ecc8

branch_0x8011ec84:
    addi    r3, r3, 0x34
    lfs     f0, 0x38(r30)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r30)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x3c(r30)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x51e8(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8011ecc4
    li      r0, 0x1
    b       branch_0x8011ecc8

branch_0x8011ecc4:
    li      r0, 0x0
branch_0x8011ecc8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8011edac
branch_0x8011ecd0:
    lwz     r5, 0x198(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8011ecfc
    lwz     r3, 0x34(r5)
    addi    r4, sp, 0x10c
    lwz     r0, 0x38(r5)
    stw     r3, 0x10c(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0x3c(r5)
    stw     r0, 0x114(sp)
    b       branch_0x8011ed14

branch_0x8011ecfc:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x10c
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r4, sp, 0x10c
branch_0x8011ed14:
    lfs     f1, 0x4(r4)
    lfs     f0, -0x5228(rtoc)
    lfs     f2, -0x521c(rtoc)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r4)
    lfs     f3, 0x8(r4)
    lfs     f4, -0x51e0(rtoc)
    fmadds  f0, f1, f2, f0
    fmadds  f0, f3, f2, f0
    fcmpo   cr0, f4, f0
    bge-    branch_0x8011edb4
    lwz     r30, 0x198(r31)
    bl      SMS_GetMarioGrPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x8011ed58
    cmplwi  r30, 0x0
    bne-    branch_0x8011ed60
branch_0x8011ed58:
    li      r0, 0x0
    b       branch_0x8011eda4

branch_0x8011ed60:
    addi    r3, r3, 0x34
    lfs     f0, 0x38(r30)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r30)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x3c(r30)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x51e8(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8011eda0
    li      r0, 0x1
    b       branch_0x8011eda4

branch_0x8011eda0:
    li      r0, 0x0
branch_0x8011eda4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8011edb4
branch_0x8011edac:
    li      r3, 0x1
    b       branch_0x8011edb8

branch_0x8011edb4:
    li      r3, 0x0
branch_0x8011edb8:
    lwz     r0, 0x154(sp)
    lwz     r31, 0x14c(sp)
    lwz     r30, 0x148(sp)
    mtlr    r0
    lwz     r29, 0x144(sp)
    addi    sp, sp, 0x150
    blr


.globl rotateGoalDirToLocal__8TKumokunCFRCQ29JGeometry8TVec3_f_
rotateGoalDirToLocal__8TKumokunCFRCQ29JGeometry8TVec3_f_: # 0x8011edd4
    stwu    sp, -0x60(sp)
    lwz     r6, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r6, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x58(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x10(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x14(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x18(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lwz     r5, 0x19c(r4)
    lwz     r0, 0x1a0(r4)
    stw     r5, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r5, 0x1a4(r4)
    lwz     r0, 0x1a8(r4)
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lfs     f0, 0x40(sp)
    fneg    f0, f0
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fneg    f0, f0
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fneg    f0, f0
    stfs    f0, 0x48(sp)
    lfs     f7, 0x48(sp)
    lfs     f13, 0x50(sp)
    lfs     f4, 0x40(sp)
    fneg    f12, f7
    lfs     f3, 0x54(sp)
    fmuls   f1, f7, f13
    lfs     f10, 0x44(sp)
    fneg    f11, f4
    lfs     f8, 0x58(sp)
    fmuls   f2, f7, f3
    fmuls   f0, f10, f13
    lfs     f9, 0x4c(sp)
    fmadds  f1, f11, f8, f1
    fmsubs  f2, f10, f8, f2
    fmsubs  f4, f4, f3, f0
    fmadds  f6, f9, f3, f1
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
    stfs    f2, 0x50(sp)
    fmadds  f0, f3, f12, f0
    stfs    f1, 0x54(sp)
    stfs    f0, 0x58(sp)
    lwz     r4, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x58(sp)
    addi    sp, sp, 0x60
    stw     r0, 0x8(r3)
    blr


.globl decideTargetAtDir__8TKumokunFRCQ29JGeometry8TVec3_f_
decideTargetAtDir__8TKumokunFRCQ29JGeometry8TVec3_f_: # 0x8011ef18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stfd    f30, 0xf0(sp)
    stfd    f29, 0xe8(sp)
    stfd    f28, 0xe0(sp)
    stfd    f27, 0xd8(sp)
    stw     r31, 0xd4(sp)
    mr      r31, r3
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f4, -0x521c(rtoc)
    stw     r5, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xcc(sp)
    lwz     r3, 0x19c(r3)
    lwz     r0, 0x1a0(r31)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r3, 0x1a4(r31)
    lwz     r0, 0x1a8(r31)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
    stfs    f4, 0xc8(sp)
    lfs     f1, 0xc4(sp)
    lfs     f3, 0xcc(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x5218(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8011efc0
    stfs    f4, 0xcc(sp)
    stfs    f4, 0xc8(sp)
    stfs    f4, 0xc4(sp)
    b       branch_0x8011eff0

branch_0x8011efc0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5228(rtoc)
    lfs     f0, 0xc4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    lfs     f0, 0xcc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xcc(sp)
branch_0x8011eff0:
    lfs     f3, -0x521c(rtoc)
    li      r0, 0x0
    lfs     f5, 0xc8(sp)
    lfs     f1, -0x5218(rtoc)
    fmuls   f2, f5, f3
    lfs     f8, 0xc4(sp)
    lfs     f6, 0xcc(sp)
    fneg    f0, f1
    lfs     f4, -0x5228(rtoc)
    fmadds  f3, f8, f3, f2
    lfs     f2, -0x51d8(rtoc)
    fmadds  f3, f6, f4, f3
    fsubs   f2, f3, f2
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x8011f040
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x8011f040
    li      r0, 0x1
branch_0x8011f040:
    clrlwi. r0, r0, 24
    beq-    branch_0x8011f080
    lfs     f1, -0x5208(rtoc)
    lfs     f0, -0x5220(rtoc)
    fmuls   f27, f0, f1
    fmr     f1, f27
    bl      sinf
    fmr     f28, f1
    fmr     f1, f27
    bl      cosf
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0xa4(sp)
    stfs    f28, 0xa8(sp)
    stfs    f0, 0xac(sp)
    stfs    f1, 0xb0(sp)
    b       branch_0x8011f160

branch_0x8011f080:
    lfs     f1, -0x521c(rtoc)
    lfs     f0, -0x5228(rtoc)
    fmuls   f2, f1, f6
    fmuls   f4, f1, f5
    fmuls   f7, f1, f8
    fmsubs  f29, f0, f8, f2
    fnmsubs  f30, f0, f5, f2
    fsubs   f28, f4, f7
    fmuls   f0, f29, f29
    fmadds  f0, f30, f30, f0
    fmadds  f31, f28, f28, f0
    fcmpo   cr0, f31, f1
    cror    2, 0, 2
    bne-    branch_0x8011f0bc
    b       branch_0x8011f0e0

branch_0x8011f0bc:
    frsqrte f3, f31
    lfs     f2, -0x5220(rtoc)
    lfs     f0, -0x5214(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x8011f0e0:
    lfs     f0, -0x5218(rtoc)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x8011f10c
    lfs     f1, -0x521c(rtoc)
    lfs     f0, -0x5228(rtoc)
    stfs    f1, 0xa4(sp)
    stfs    f1, 0xa8(sp)
    stfs    f1, 0xac(sp)
    stfs    f0, 0xb0(sp)
    b       branch_0x8011f160

branch_0x8011f10c:
    fadds   f0, f7, f4
    lfs     f1, -0x5228(rtoc)
    fmadds  f2, f1, f6, f0
    fmr     f1, f31
    bl      atan2f
    lfs     f0, -0x5220(rtoc)
    lfs     f2, -0x5228(rtoc)
    fmuls   f0, f0, f1
    fmuls   f27, f2, f0
    fmr     f1, f27
    bl      sinf
    fdivs   f1, f1, f31
    fmuls   f0, f30, f1
    fmuls   f2, f29, f1
    stfs    f0, 0xa4(sp)
    fmuls   f0, f28, f1
    fmr     f1, f27
    stfs    f2, 0xa8(sp)
    stfs    f0, 0xac(sp)
    bl      cosf
    stfs    f1, 0xb0(sp)
branch_0x8011f160:
    lfs     f5, 0xc0(sp)
    lfs     f9, 0xa4(sp)
    lfs     f8, 0xa8(sp)
    lfs     f11, 0xb4(sp)
    fmuls   f0, f5, f9
    lfs     f6, 0xb0(sp)
    fmuls   f1, f5, f8
    lfs     f4, 0xac(sp)
    lfs     f10, 0xb8(sp)
    fmadds  f0, f11, f6, f0
    lfs     f7, 0xbc(sp)
    fmuls   f2, f5, f4
    fmadds  f1, f10, f6, f1
    fmuls   f3, f11, f9
    fmadds  f0, f10, f4, f0
    fmadds  f2, f7, f6, f2
    fmadds  f1, f7, f9, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f0, f7, f8, f0
    fmadds  f2, f11, f8, f2
    fnmsubs  f1, f11, f4, f1
    stfs    f0, 0xb4(sp)
    fnmsubs  f3, f10, f8, f3
    fnmsubs  f0, f10, f9, f2
    stfs    f1, 0xb8(sp)
    fnmsubs  f2, f7, f4, f3
    stfs    f0, 0xbc(sp)
    stfs    f2, 0xc0(sp)
    lwz     r3, 0x19c(r31)
    lwz     r0, 0x1a0(r31)
    stw     r3, 0x1ac(r31)
    stw     r0, 0x1b0(r31)
    lwz     r3, 0x1a4(r31)
    lwz     r0, 0x1a8(r31)
    stw     r3, 0x1b4(r31)
    stw     r0, 0x1b8(r31)
    lwz     r3, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x1bc(r31)
    stw     r0, 0x1c0(r31)
    lwz     r3, 0xbc(sp)
    lwz     r0, 0xc0(sp)
    stw     r3, 0x1c4(r31)
    stw     r0, 0x1c8(r31)
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0x1cc(r31)
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lfd     f30, 0xf0(sp)
    mtlr    r0
    lfd     f29, 0xe8(sp)
    lfd     f28, 0xe0(sp)
    lfd     f27, 0xd8(sp)
    lwz     r31, 0xd4(sp)
    addi    sp, sp, 0x100
    blr


.globl attackToMario__8TKumokunFv
attackToMario__8TKumokunFv: # 0x8011f240
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r26, 0x60(sp)
    mr      r30, r3
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8011f268
    b       branch_0x8011f26c

branch_0x8011f268:
    lwz     r31, 0x1c(r3)
branch_0x8011f26c:
    lwz     r4, 0x198(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8011f298
    lwz     r3, 0x34(r4)
    addi    r29, sp, 0x40
    lwz     r0, 0x38(r4)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x48(sp)
    b       branch_0x8011f2b0

branch_0x8011f298:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x40
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r29, sp, 0x40
branch_0x8011f2b0:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x4c
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r29)
    lfs     f0, 0x50(sp)
    lfs     f2, 0x0(r29)
    fmuls   f0, f1, f0
    lfs     f1, 0x4c(sp)
    lfs     f4, 0x8(r29)
    lfs     f3, 0x54(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011f318
    lwz     r3, MarioHitActorPos(r13)
    lfs     f2, -0x51dc(rtoc)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x14(r30)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8011f318
    li      r29, 0x0
    b       branch_0x8011f3d0

branch_0x8011f318:
    lbz     r0, -0x6608(r13)
    extsb.  r0, r0
    bne-    branch_0x8011f35c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6604(r13)
    subi    r0, r3, 0x24c4
    lis     r4, 0x8012
    stw     r0, -0x6604(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x33ec
    subi    r4, r4, 0x2018
    subi    r3, r13, 0x6604
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6608(r13)
branch_0x8011f35c:
    subi    r0, r13, 0x6604
    cmplw   r31, r0
    li      r29, 0x1
    addi    r28, r29, 0x0
    addi    r27, r29, 0x0
    addi    r26, r29, 0x0
    beq-    branch_0x8011f388
    bl      theNerve__19TNerveKumokunSearchFv
    cmplw   r31, r3
    beq-    branch_0x8011f388
    li      r26, 0x0
branch_0x8011f388:
    clrlwi. r0, r26, 24
    bne-    branch_0x8011f3a0
    bl      theNerve__17TNerveKumokunWaitFv
    cmplw   r31, r3
    beq-    branch_0x8011f3a0
    li      r27, 0x0
branch_0x8011f3a0:
    clrlwi. r0, r27, 24
    bne-    branch_0x8011f3b8
    bl      theNerve__20TNerveKumokunPreWalkFv
    cmplw   r31, r3
    beq-    branch_0x8011f3b8
    li      r28, 0x0
branch_0x8011f3b8:
    clrlwi. r0, r28, 24
    bne-    branch_0x8011f3d0
    bl      theNerve__21TNerveKumokunPostWalkFv
    cmplw   r31, r3
    beq-    branch_0x8011f3d0
    li      r29, 0x0
branch_0x8011f3d0:
    clrlwi. r0, r29, 24
    beq-    branch_0x8011f3ec
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
branch_0x8011f3ec:
    lmw     r26, 0x60(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl calcRootMatrix__8TKumokunFv
calcRootMatrix__8TKumokunFv: # 0x8011f400
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stfd    f30, 0x168(sp)
    stfd    f29, 0x160(sp)
    stw     r31, 0x15c(sp)
    mr      r31, r3
    stw     r30, 0x158(sp)
    stw     r29, 0x154(sp)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8011f43c
    li      r0, 0x1
    b       branch_0x8011f440

branch_0x8011f43c:
    li      r0, 0x0
branch_0x8011f440:
    cmpwi   r0, 0x0
    beq-    branch_0x8011f454
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
    b       branch_0x8011f770

branch_0x8011f454:
    lfs     f31, -0x521c(rtoc)
    lwz     r4, 0x198(r31)
    fmr     f30, f31
    fmr     f29, f31
    cmplwi  r4, 0x0
    beq-    branch_0x8011f48c
    lwz     r3, 0x34(r4)
    addi    r30, sp, 0xb8
    lwz     r0, 0x38(r4)
    stw     r3, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xc0(sp)
    b       branch_0x8011f4a4

branch_0x8011f48c:
    fmr     f1, f31
    addi    r3, sp, 0xb8
    fmr     f2, f31
    fmr     f3, f31
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r30, sp, 0xb8
branch_0x8011f4a4:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xc4
    lfs     f2, -0x5228(rtoc)
    li      r29, 0x0
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r30)
    lfs     f0, 0xc8(sp)
    lfs     f2, 0x0(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0xc4(sp)
    lfs     f4, 0x8(r30)
    lfs     f3, 0xcc(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, -0x51e0(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi.   r0, r0, 31
    bne-    branch_0x8011f550
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xac
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r3, sp, 0xa0
    addi    r4, r31, 0x0
    bl      getPlaneNormal__8TKumokunCFv
    lfs     f1, 0xa4(sp)
    lfs     f0, 0xb0(sp)
    lfs     f2, 0xa0(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0xac(sp)
    lfs     f4, 0xa8(sp)
    lfs     f3, 0xb4(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi.   r0, r0, 31
    bne-    branch_0x8011f550
    li      r29, 0x1
branch_0x8011f550:
    clrlwi. r0, r29, 24
    bne-    branch_0x8011f5c8
    lwz     r5, 0x198(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8011f584
    lwz     r3, 0x34(r5)
    addi    r4, sp, 0xd4
    lwz     r0, 0x38(r5)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lwz     r0, 0x3c(r5)
    stw     r0, 0xdc(sp)
    b       branch_0x8011f59c

branch_0x8011f584:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xd4
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r4, sp, 0xd4
branch_0x8011f59c:
    lfs     f1, 0x4(r4)
    lfs     f0, -0x5228(rtoc)
    lfs     f3, -0x521c(rtoc)
    fmuls   f1, f1, f0
    lfs     f2, 0x0(r4)
    lfs     f4, 0x8(r4)
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f2, f3, f1
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011f620
branch_0x8011f5c8:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8011f5f0
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    stw     r3, 0xf8(sp)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x100(sp)
    b       branch_0x8011f604

branch_0x8011f5f0:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xf8
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x8011f604:
    lfs     f31, 0xf8(sp)
    lfs     f0, -0x51d0(rtoc)
    lfs     f30, 0xfc(sp)
    lfs     f29, 0x100(sp)
    fmuls   f31, f31, f0
    fmuls   f30, f30, f0
    fmuls   f29, f29, f0
branch_0x8011f620:
    lwz     r4, 0x10(r31)
    addi    r3, sp, 0x104
    lwz     r0, 0x14(r31)
    stw     r4, 0x134(sp)
    addi    r4, r31, 0x19c
    stw     r0, 0x138(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x13c(sp)
    lfs     f0, 0x134(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x134(sp)
    lfs     f0, 0x138(sp)
    fadds   f0, f0, f30
    stfs    f0, 0x138(sp)
    lfs     f0, 0x13c(sp)
    fadds   f0, f0, f29
    stfs    f0, 0x13c(sp)
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x134(sp)
    mr      r3, r31
    stfs    f0, 0x110(sp)
    lfs     f0, 0x138(sp)
    stfs    f0, 0x120(sp)
    lfs     f0, 0x13c(sp)
    stfs    f0, 0x130(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    addi    r30, sp, 0x104
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8011f6d0
    b       branch_0x8011f6d4

branch_0x8011f6d0:
    lwz     r30, 0x1c(r3)
branch_0x8011f6d4:
    lbz     r0, -0x65d8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011f718
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65d4(r13)
    subi    r0, r3, 0x2524
    lis     r4, 0x8012
    stw     r0, -0x65d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3434
    subi    r4, r4, 0x3ae0
    subi    r3, r13, 0x65d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d8(r13)
branch_0x8011f718:
    subi    r0, r13, 0x65d4
    cmplw   r30, r0
    bne-    branch_0x8011f770
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r5, r3, 0x20
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    li      r4, 0x174
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8011f770
    lfs     f0, -0x51f4(rtoc)
    li      r0, 0x80
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    stb     r0, 0x183(r3)
branch_0x8011f770:
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lfd     f30, 0x168(sp)
    mtlr    r0
    lfd     f29, 0x160(sp)
    lwz     r31, 0x15c(sp)
    lwz     r30, 0x158(sp)
    lwz     r29, 0x154(sp)
    addi    sp, sp, 0x178
    blr


.globl setDeadAnm__8TKumokunFv
setDeadAnm__8TKumokunFv: # 0x8011f798
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    lwz     r0, 0x1ec(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8011f8b8
    bge-    branch_0x8011f7d0
    cmpwi   r0, 0x0
    bge-    branch_0x8011f7dc
    b       branch_0x8011f9bc

branch_0x8011f7d0:
    cmpwi   r0, 0x3
    bge-    branch_0x8011f9bc
    b       branch_0x8011f994

branch_0x8011f7dc:
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x5778
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lfs     f31, -0x5228(rtoc)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8011f80c
    b       branch_0x8011f810

branch_0x8011f80c:
    lwz     r30, 0x1c(r3)
branch_0x8011f810:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x8011f894
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011f890
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8011f83c
    b       branch_0x8011f840

branch_0x8011f83c:
    lwz     r30, 0x1c(r3)
branch_0x8011f840:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011f884
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011f884:
    subi    r0, r13, 0x65cc
    cmplw   r30, r0
    bne-    branch_0x8011f894
branch_0x8011f890:
    lfs     f31, -0x5224(rtoc)
branch_0x8011f894:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8011f9bc

branch_0x8011f8b8:
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x5784
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lfs     f31, -0x5228(rtoc)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8011f8e8
    b       branch_0x8011f8ec

branch_0x8011f8e8:
    lwz     r30, 0x1c(r3)
branch_0x8011f8ec:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x8011f970
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011f96c
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8011f918
    b       branch_0x8011f91c

branch_0x8011f918:
    lwz     r30, 0x1c(r3)
branch_0x8011f91c:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011f960
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011f960:
    subi    r0, r13, 0x65cc
    cmplw   r30, r0
    bne-    branch_0x8011f970
branch_0x8011f96c:
    lfs     f31, -0x5224(rtoc)
branch_0x8011f970:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    b       branch_0x8011f9bc

branch_0x8011f994:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    li      r4, 0x1
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0x10(r3)
branch_0x8011f9bc:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl changeBck__8TKumokunFPCc
changeBck__8TKumokunFPCc: # 0x8011f9d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lwz     r3, 0x74(r3)
    bl      setBck__6MActorFPCc
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lfs     f31, -0x5228(rtoc)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8011fa1c
    b       branch_0x8011fa20

branch_0x8011fa1c:
    lwz     r30, 0x1c(r3)
branch_0x8011fa20:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x8011faa4
    lbz     r0, 0x1d4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8011faa0
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x8011fa4c
    b       branch_0x8011fa50

branch_0x8011fa4c:
    lwz     r30, 0x1c(r3)
branch_0x8011fa50:
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011fa94
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65cc(r13)
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011fa94:
    subi    r0, r13, 0x65cc
    cmplw   r30, r0
    bne-    branch_0x8011faa4
branch_0x8011faa0:
    lfs     f31, -0x5224(rtoc)
branch_0x8011faa4:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5220(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f0, f0, f1
    fmuls   f31, f31, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl behaveToWater__8TKumokunFP9THitActor
behaveToWater__8TKumokunFP9THitActor: # 0x8011fae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x1d0(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x8011fb78
    li      r0, 0x1e
    stw     r0, 0x1d0(r31)
    li      r0, 0x0
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lbz     r0, -0x65e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8011fb54
    subi    r3, r13, 0x65e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x2504
    lis     r4, 0x8012
    stw     r0, -0x65e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x341c
    subi    r4, r4, 0x3158
    subi    r3, r13, 0x65e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65e8(r13)
branch_0x8011fb54:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x65e4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8011fb6c
    stw     r0, 0x1c(r4)
branch_0x8011fb6c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8011fb78:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl receiveMessage__8TKumokunFP9THitActorUl
receiveMessage__8TKumokunFP9THitActorUl: # 0x8011fb8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stw     r31, 0x114(sp)
    mr      r31, r3
    stw     r30, 0x110(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8011fbb8
    li      r3, 0x0
    b       branch_0x8011fff8

branch_0x8011fbb8:
    cmpwi   r5, 0x1
    beq-    branch_0x8011fd50
    bge-    branch_0x8011fbd0
    cmpwi   r5, 0x0
    bge-    branch_0x8011ff20
    b       branch_0x8011fff0

branch_0x8011fbd0:
    cmpwi   r5, 0xc
    beq-    branch_0x8011fbdc
    b       branch_0x8011fff0

branch_0x8011fbdc:
    bl      SMS_IsMarioFencing__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8011fc54
    lwz     r30, 0x198(r31)
    bl      SMS_GetMarioWlPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x8011fc00
    cmplwi  r30, 0x0
    bne-    branch_0x8011fc08
branch_0x8011fc00:
    li      r0, 0x0
    b       branch_0x8011fc4c

branch_0x8011fc08:
    addi    r3, r3, 0x34
    lfs     f0, 0x38(r30)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r30)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x3c(r30)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x51e8(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8011fc48
    li      r0, 0x1
    b       branch_0x8011fc4c

branch_0x8011fc48:
    li      r0, 0x0
branch_0x8011fc4c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8011fcd4
branch_0x8011fc54:
    bl      SMS_IsMarioRoofing__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8011fccc
    lwz     r30, 0x198(r31)
    bl      SMS_GetMarioRfPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x8011fc78
    cmplwi  r30, 0x0
    bne-    branch_0x8011fc80
branch_0x8011fc78:
    li      r0, 0x0
    b       branch_0x8011fcc4

branch_0x8011fc80:
    addi    r3, r3, 0x34
    lfs     f0, 0x38(r30)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x0(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r30)
    lfs     f4, 0x8(r3)
    lfs     f3, 0x3c(r30)
    fmadds  f0, f2, f1, f0
    lfs     f5, -0x51e8(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8011fcc0
    li      r0, 0x1
    b       branch_0x8011fcc4

branch_0x8011fcc0:
    li      r0, 0x0
branch_0x8011fcc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8011fcd4
branch_0x8011fccc:
    li      r0, 0x0
    b       branch_0x8011fd48

branch_0x8011fcd4:
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011fd20
    subi    r3, r13, 0x65cc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011fd20:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x65cc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8011fd38
    stw     r0, 0x1c(r4)
branch_0x8011fd38:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    li      r0, 0x1
    stw     r3, 0x14(r4)
branch_0x8011fd48:
    clrlwi  r3, r0, 24
    b       branch_0x8011fff8

branch_0x8011fd50:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8011fd7c
    lwz     r3, 0x34(r4)
    addi    r30, sp, 0xec
    lwz     r0, 0x38(r4)
    stw     r3, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xf4(sp)
    b       branch_0x8011fd94

branch_0x8011fd7c:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xec
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r30, sp, 0xec
branch_0x8011fd94:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xf8
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r30)
    lfs     f0, 0xfc(sp)
    lfs     f2, 0x0(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0xf8(sp)
    lfs     f4, 0x8(r30)
    lfs     f3, 0x100(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, -0x51e0(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011fe14
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r5, 0x8c(r31)
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8011fdfc
    stw     r0, 0x1c(r5)
branch_0x8011fdfc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r4, 0x1
    stw     r3, 0x14(r5)
    stw     r0, 0x1ec(r31)
    b       branch_0x8011ff18

branch_0x8011fe14:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8011fe40
    lwz     r3, 0x34(r4)
    addi    r30, sp, 0xd0
    lwz     r0, 0x38(r4)
    stw     r3, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xd8(sp)
    b       branch_0x8011fe58

branch_0x8011fe40:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xd0
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r30, sp, 0xd0
branch_0x8011fe58:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xdc
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r30)
    lfs     f0, 0xe0(sp)
    lfs     f2, 0x0(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0xdc(sp)
    lfs     f4, 0x8(r30)
    lfs     f3, 0xe4(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011ff14
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x65d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8011fee8
    subi    r3, r13, 0x65cc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x2540
    lis     r4, 0x8012
    stw     r0, -0x65cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3440
    subi    r4, r4, 0x3c78
    subi    r3, r13, 0x65cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d0(r13)
branch_0x8011fee8:
    lwz     r5, 0x8c(r31)
    subi    r3, r13, 0x65cc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8011ff00
    stw     r0, 0x1c(r5)
branch_0x8011ff00:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r4, 0x1
    stw     r3, 0x14(r5)
    b       branch_0x8011ff18

branch_0x8011ff14:
    li      r4, 0x0
branch_0x8011ff18:
    clrlwi  r3, r4, 24
    b       branch_0x8011fff8

branch_0x8011ff20:
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8011ff4c
    lwz     r3, 0x34(r4)
    addi    r30, sp, 0xb0
    lwz     r0, 0x38(r4)
    stw     r3, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xb8(sp)
    b       branch_0x8011ff64

branch_0x8011ff4c:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xb0
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r30, sp, 0xb0
branch_0x8011ff64:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xbc
    lfs     f2, -0x5228(rtoc)
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f1, 0x4(r30)
    lfs     f0, 0xc0(sp)
    lfs     f2, 0x0(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0xbc(sp)
    lfs     f4, 0x8(r30)
    lfs     f3, 0xc4(sp)
    fmadds  f0, f2, f1, f0
    lfs     f1, -0x51e0(rtoc)
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8011ffe4
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r5, 0x8c(r31)
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8011ffcc
    stw     r0, 0x1c(r5)
branch_0x8011ffcc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    li      r4, 0x1
    stw     r3, 0x14(r5)
    stw     r0, 0x1ec(r31)
    b       branch_0x8011ffe8

branch_0x8011ffe4:
    li      r4, 0x0
branch_0x8011ffe8:
    clrlwi  r3, r4, 24
    b       branch_0x8011fff8

branch_0x8011fff0:
    mr      r3, r31
    bl      receiveMessage__11TSmallEnemyFP9THitActorUl
branch_0x8011fff8:
    lwz     r0, 0x11c(sp)
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    mtlr    r0
    addi    sp, sp, 0x118
    blr


.globl control__8TKumokunFv
control__8TKumokunFv: # 0x80120010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__10TLiveActorFv
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0xc
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl moveObject__8TKumokunFv
moveObject__8TKumokunFv: # 0x80120058
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x1d0(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80120084
    lwz     r3, 0x1d0(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x1d0(r31)
branch_0x80120084:
    lwz     r0, 0x1dc(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x80120120
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80120120
    lwz     r4, 0x1dc(r31)
    cmpwi   r4, 0x0
    bgt-    branch_0x801200c0
    lwz     r3, 0x1e0(r31)
    slwi    r0, r4, 2
    lwzx    r4, r3, r0
    b       branch_0x801200d8

branch_0x801200c0:
    subi    r0, r4, 0x1
    stw     r0, 0x1dc(r31)
    lwz     r0, 0x1dc(r31)
    lwz     r3, 0x1e0(r31)
    slwi    r0, r0, 2
    lwzx    r4, r3, r0
branch_0x801200d8:
    lwz     r3, 0x74(r31)
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x80120118
    lwz     r3, 0x1dc(r31)
    cmpwi   r3, 0x1
    blt-    branch_0x80120118
    subi    r0, r3, 0x1
    lwz     r3, 0x1e0(r31)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    mr      r3, r31
    bl      changeBck__8TKumokunFPCc
    b       branch_0x80120120

branch_0x80120118:
    li      r0, 0x0
    stw     r0, 0x1dc(r31)
branch_0x80120120:
    mr      r3, r31
    bl      moveObject__11TSmallEnemyFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl bindOnFlying__8TKumokunFv
bindOnFlying__8TKumokunFv: # 0x8012013c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r30, r3
    li      r31, 0x0
    lwz     r4, 0x10(r3)
    lwz     r3, 0x14(r3)
    stw     r4, 0x74(sp)
    addi    r4, sp, 0x58
    stw     r3, 0x78(sp)
    lwz     r3, 0x18(r30)
    stw     r3, 0x7c(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x94(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x98(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x9c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0xac(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0xb0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0xb4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f31, 0xc0(r30)
    lwz     r3, gpMap(r13)
    stw     r0, 0x58(sp)
    lfs     f1, 0x74(sp)
    lfs     f30, 0x78(sp)
    lfs     f3, 0x7c(sp)
    fmr     f2, f30
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x5228(rtoc)
    lfs     f0, -0x521c(rtoc)
    fsubs   f1, f1, f2
    fsubs   f2, f1, f30
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x80120228
    fcmpo   cr0, f2, f31
    bge-    branch_0x80120228
    stfs    f1, 0x78(sp)
    b       branch_0x80120230

branch_0x80120228:
    li      r0, 0x0
    stw     r0, 0x58(sp)
branch_0x80120230:
    lwz     r28, 0x58(sp)
    cmplwi  r28, 0x0
    beq-    branch_0x8012025c
    lfs     f0, -0x521c(rtoc)
    li      r31, 0x1
    stfs    f0, 0xb4(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xac(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
branch_0x8012025c:
    lfs     f0, 0xc0(r30)
    li      r29, 0x0
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x54
    stw     r29, 0x54(sp)
    lfs     f1, 0x74(sp)
    lfs     f30, 0x78(sp)
    lfs     f3, 0x7c(sp)
    fadds   f2, f30, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x5228(rtoc)
    lfs     f0, -0x51e4(rtoc)
    fadds   f1, f1, f2
    fadds   f0, f0, f1
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x801202a8
    stfs    f1, 0x78(sp)
    b       branch_0x801202ac

branch_0x801202a8:
    stw     r29, 0x54(sp)
branch_0x801202ac:
    lwz     r27, 0x54(sp)
    cmplwi  r27, 0x0
    beq-    branch_0x801202dc
    lfs     f0, -0x521c(rtoc)
    li      r31, 0x1
    stfs    f0, 0xb4(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xac(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
    b       branch_0x801202e8

branch_0x801202dc:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x801202e8:
    lfs     f1, 0x78(sp)
    addi    r3, sp, 0x24
    lfs     f0, 0xc0(r30)
    li      r29, 0x0
    lfs     f3, 0x7c(sp)
    fadds   f2, f1, f0
    lfs     f1, 0x74(sp)
    lfs     f31, 0xbc(r30)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    stfs    f31, 0x30(sp)
    li      r0, 0x1
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x24
    stw     r0, 0x34(sp)
    stw     r29, 0x3c(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    ble-    branch_0x80120334
    lwz     r29, 0x40(sp)
branch_0x80120334:
    lfs     f1, 0x24(sp)
    cmplwi  r29, 0x0
    lfs     f0, 0x2c(sp)
    stfs    f1, 0x74(sp)
    stfs    f0, 0x7c(sp)
    beq-    branch_0x80120350
    li      r31, 0x1
branch_0x80120350:
    clrlwi. r0, r31, 24
    beq-    branch_0x80120398
    lwz     r3, 0x194(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x194(r30)
    lwz     r0, 0x194(r30)
    cmpwi   r0, 0x1e
    ble-    branch_0x801203a0
    cmplwi  r28, 0x0
    beq-    branch_0x80120380
    stw     r28, 0x198(r30)
    b       branch_0x801203a0

branch_0x80120380:
    cmplwi  r27, 0x0
    beq-    branch_0x80120390
    stw     r27, 0x198(r30)
    b       branch_0x801203a0

branch_0x80120390:
    stw     r29, 0x198(r30)
    b       branch_0x801203a0

branch_0x80120398:
    li      r0, 0x0
    stw     r0, 0x194(r30)
branch_0x801203a0:
    lwz     r0, 0x74(sp)
    addi    r3, sp, 0x14
    lwz     r5, 0x78(sp)
    addi    r4, r30, 0x10
    stw     r0, 0x14(sp)
    lwz     r0, 0x7c(sp)
    stw     r5, 0x18(sp)
    stw     r0, 0x1c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x9c(r30)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    lmw     r27, 0x84(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl checkOnMovingRoof__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
checkOnMovingRoof__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801203f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stfd    f30, 0xf0(sp)
    stfd    f29, 0xe8(sp)
    stmw    r26, 0xd0(sp)
    mr      r26, r3
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    li      r31, 0x0
    lwz     r8, 0x198(r3)
    cmplwi  r8, 0x0
    beq-    branch_0x80120454
    lwz     r3, 0x34(r8)
    lwz     r0, 0x38(r8)
    stw     r3, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x3c(r8)
    stw     r0, 0x88(sp)
    b       branch_0x80120468

branch_0x80120454:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x80
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x80120468:
    lwz     r0, 0x80(sp)
    lwz     r3, 0x84(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0xc4(sp)
    lfs     f2, -0x5220(rtoc)
    stw     r0, 0xc8(sp)
    lfs     f1, 0xc0(r26)
    lfs     f0, 0xc0(sp)
    fneg    f1, f1
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    lwz     r3, 0x0(r29)
    lwz     r0, 0x4(r29)
    lfs     f0, 0xc0(sp)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x8(r29)
    stw     r0, 0xbc(sp)
    lfs     f1, 0xb4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xb4(sp)
    lfs     f0, 0xb8(sp)
    lfs     f31, 0xc4(sp)
    fadds   f0, f0, f31
    stfs    f0, 0xb8(sp)
    lfs     f0, 0xbc(sp)
    lfs     f30, 0xc8(sp)
    fadds   f0, f0, f30
    stfs    f0, 0xbc(sp)
    lwz     r0, 0xb4(sp)
    lwz     r3, 0xb8(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0xbc(sp)
    stw     r3, 0xac(sp)
    stw     r0, 0xb0(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lwz     r4, 0x198(r26)
    cmplwi  r4, 0x0
    beq-    branch_0x8012056c
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x7c(sp)
    b       branch_0x80120580

branch_0x8012056c:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x74
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x80120580:
    lwz     r0, 0x74(sp)
    addi    r4, sp, 0x98
    lwz     r3, 0x78(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0xa0(sp)
    lfs     f1, -0x51cc(rtoc)
    stw     r0, 0xa4(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xa4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa4(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x9c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0xa0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0xa4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lfs     f29, 0xac(sp)
    lfs     f0, 0xc0(r26)
    lwz     r3, gpMap(r13)
    fsubs   f2, f29, f0
    lfs     f1, 0xa8(sp)
    lfs     f3, 0xb0(sp)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x5228(rtoc)
    lfs     f0, -0x51e4(rtoc)
    fsubs   f2, f1, f2
    fsubs   f0, f2, f0
    fcmpo   cr0, f29, f0
    ble-    branch_0x80120630
    stfs    f2, 0xac(sp)
    b       branch_0x80120664

branch_0x80120630:
    fsubs   f1, f2, f29
    lfs     f0, 0xc0(r26)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80120648
    stfs    f2, 0xac(sp)
    b       branch_0x80120664

branch_0x80120648:
    lfs     f0, 0xb4(sp)
    li      r31, 0x1
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xb8(sp)
    stfs    f0, 0xac(sp)
    lfs     f0, 0xbc(sp)
    stfs    f0, 0xb0(sp)
branch_0x80120664:
    lwz     r0, 0xa8(sp)
    addi    r3, sp, 0x44
    lwz     r4, 0xac(sp)
    li      r30, 0x0
    stw     r0, 0x8c(sp)
    lwz     r0, 0xb0(sp)
    stw     r4, 0x90(sp)
    stw     r0, 0x94(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0xc0(r26)
    lfs     f3, 0x94(sp)
    fadds   f2, f1, f0
    lfs     f1, 0x8c(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f0, -0x51d4(rtoc)
    li      r0, 0x1
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x44
    stfs    f0, 0x50(sp)
    stw     r0, 0x54(sp)
    stw     r30, 0x5c(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    ble-    branch_0x801206c8
    lwz     r30, 0x60(sp)
branch_0x801206c8:
    lfs     f1, 0x44(sp)
    lfs     f0, 0x4c(sp)
    stfs    f1, 0x8c(sp)
    stfs    f0, 0x94(sp)
    stw     r30, 0x0(r28)
    lwz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x801206fc
    lfs     f0, 0x8c(sp)
    li      r31, 0x1
    stfs    f0, 0xa8(sp)
    lfs     f0, 0x94(sp)
    stfs    f0, 0xb0(sp)
branch_0x801206fc:
    lfs     f1, 0xa8(sp)
    mr      r3, r31
    lfs     f0, 0xc0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xac(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0xac(sp)
    lfs     f0, 0xb0(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0xb0(sp)
    lfs     f0, 0xa8(sp)
    stfs    f0, 0x0(r27)
    lfs     f0, 0xac(sp)
    stfs    f0, 0x4(r27)
    lfs     f0, 0xb0(sp)
    stfs    f0, 0x8(r27)
    lfs     f1, 0x0(r27)
    lfs     f0, 0x0(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r27)
    lfs     f1, 0x4(r27)
    lfs     f0, 0x4(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r27)
    lfs     f1, 0x8(r27)
    lfs     f0, 0x8(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r27)
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lfd     f30, 0xf0(sp)
    lfd     f29, 0xe8(sp)
    lmw     r26, 0xd0(sp)
    addi    sp, sp, 0x100
    mtlr    r0
    blr


.globl checkOnMovingFloor__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
checkOnMovingFloor__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x80120790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stmw    r26, 0xa8(sp)
    mr      r30, r6
    mr      r28, r4
    addi    r29, r5, 0x0
    addi    r27, r3, 0x0
    addi    r4, sp, 0x7c
    li      r31, 0x0
    lwz     r6, 0x0(r6)
    lwz     r0, 0x4(r30)
    stw     r6, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x8(r30)
    stw     r0, 0x24(sp)
    lwz     r5, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r5, 0x98(sp)
    lwz     r0, 0x24(sp)
    stw     r5, 0x8c(sp)
    stw     r3, 0x9c(sp)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    stw     r0, 0xa0(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x0(r7)
    fadds   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x4(r7)
    fadds   f0, f1, f0
    stfs    f0, 0x90(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x8(r7)
    fadds   f0, f1, f0
    stfs    f0, 0x94(sp)
    lwz     r5, 0x198(r27)
    lfs     f1, -0x51cc(rtoc)
    lwz     r3, 0x34(r5)
    lwz     r0, 0x38(r5)
    stw     r3, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x3c(r5)
    stw     r0, 0x88(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(sp)
    lfs     f0, 0x84(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(sp)
    lfs     f0, 0x88(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x88(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x80(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x84(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x90(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x88(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f31, 0x90(sp)
    lfs     f0, 0xc0(r27)
    lwz     r3, gpMap(r13)
    fadds   f2, f31, f0
    lfs     f1, 0x8c(sp)
    lfs     f3, 0x94(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x5228(rtoc)
    lfs     f0, -0x51e4(rtoc)
    fadds   f2, f1, f2
    fadds   f0, f0, f2
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x8012090c
    fsubs   f0, f2, f31
    lfs     f1, -0x51ec(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80120904
    lfs     f1, 0x98(sp)
    li      r31, 0x1
    lfs     f0, 0x9c(sp)
    stfs    f1, 0x8c(sp)
    stfs    f0, 0x90(sp)
    lfs     f0, 0xa0(sp)
    stfs    f0, 0x94(sp)
    b       branch_0x80120928

branch_0x80120904:
    stfs    f2, 0x90(sp)
    b       branch_0x80120928

branch_0x8012090c:
    lfs     f1, 0x98(sp)
    li      r31, 0x1
    lfs     f0, 0x9c(sp)
    stfs    f1, 0x8c(sp)
    stfs    f0, 0x90(sp)
    lfs     f0, 0xa0(sp)
    stfs    f0, 0x94(sp)
branch_0x80120928:
    lwz     r0, 0x8c(sp)
    addi    r3, sp, 0x3c
    lwz     r4, 0x90(sp)
    li      r26, 0x0
    stw     r0, 0x70(sp)
    lwz     r0, 0x94(sp)
    stw     r4, 0x74(sp)
    stw     r0, 0x78(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0xc0(r27)
    lfs     f3, 0x78(sp)
    fadds   f2, f1, f0
    lfs     f1, 0x70(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f0, -0x51d4(rtoc)
    li      r0, 0x1
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x3c
    stfs    f0, 0x48(sp)
    stw     r0, 0x4c(sp)
    stw     r26, 0x54(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    ble-    branch_0x8012098c
    lwz     r26, 0x58(sp)
branch_0x8012098c:
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x44(sp)
    stfs    f1, 0x70(sp)
    stfs    f0, 0x78(sp)
    stw     r26, 0x0(r29)
    lwz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801209c0
    lfs     f0, 0x70(sp)
    li      r31, 0x1
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x78(sp)
    stfs    f0, 0x94(sp)
branch_0x801209c0:
    lfs     f0, 0x8c(sp)
    mr      r3, r31
    stfs    f0, 0x0(r28)
    lfs     f0, 0x90(sp)
    stfs    f0, 0x4(r28)
    lfs     f0, 0x94(sp)
    stfs    f0, 0x8(r28)
    lfs     f1, 0x0(r28)
    lfs     f0, 0x0(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r28)
    lfs     f1, 0x4(r28)
    lfs     f0, 0x4(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r28)
    lfs     f1, 0x8(r28)
    lfs     f0, 0x8(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r28)
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lmw     r26, 0xa8(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl checkOnMovingWall__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
checkOnMovingWall__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x80120a24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stmw    r26, 0xe0(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r26, r5, 0x0
    addi    r30, r6, 0x0
    addi    r27, r7, 0x0
    li      r31, 0x0
    lwz     r8, 0x198(r3)
    cmplwi  r8, 0x0
    beq-    branch_0x80120a78
    lwz     r3, 0x34(r8)
    lwz     r0, 0x38(r8)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x3c(r8)
    stw     r0, 0xa4(sp)
    b       branch_0x80120a8c

branch_0x80120a78:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x9c
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x80120a8c:
    lwz     r0, 0x9c(sp)
    mr      r4, r26
    lwz     r3, 0xa0(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0xd4(sp)
    lfs     f2, -0x51d4(rtoc)
    stw     r0, 0xd8(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0x0(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xd0(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0x4(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x8(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xd8(sp)
    lwz     r0, 0xd0(sp)
    lwz     r3, 0xd4(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0xd8(sp)
    stw     r3, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x0(r27)
    fadds   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0x4(r27)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0x8(r27)
    fadds   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lfs     f31, 0xc8(sp)
    lfs     f0, 0xc0(r28)
    lwz     r3, gpMap(r13)
    fadds   f2, f31, f0
    lfs     f1, 0xc4(sp)
    lfs     f3, 0xcc(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x5228(rtoc)
    lfs     f0, 0xc0(r28)
    fadds   f2, f1, f2
    lfs     f1, -0x51e4(rtoc)
    fadds   f2, f2, f0
    fadds   f0, f1, f2
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80120b6c
    li      r31, 0x1
    stfs    f2, 0xc8(sp)
branch_0x80120b6c:
    lwz     r4, 0x198(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x80120b94
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x98(sp)
    b       branch_0x80120ba8

branch_0x80120b94:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x90
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x80120ba8:
    lwz     r0, 0x90(sp)
    addi    r3, sp, 0x54
    lwz     r4, 0x94(sp)
    li      r27, 0x0
    stw     r0, 0xb8(sp)
    lwz     r0, 0x98(sp)
    stw     r4, 0xbc(sp)
    lfs     f2, -0x51cc(rtoc)
    stw     r0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    lfs     f1, 0xb8(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xb8(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0xc8(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0xcc(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0xc0(r28)
    lfs     f3, 0xc0(sp)
    fadds   f2, f1, f0
    lfs     f1, 0xb8(sp)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f0, -0x51d4(rtoc)
    li      r0, 0x1
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x54
    stfs    f0, 0x60(sp)
    stw     r0, 0x64(sp)
    stw     r27, 0x6c(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    ble-    branch_0x80120c40
    lwz     r27, 0x70(sp)
branch_0x80120c40:
    lfs     f1, 0x54(sp)
    cmplwi  r27, 0x0
    lfs     f0, 0x5c(sp)
    stfs    f1, 0xb8(sp)
    stfs    f0, 0xc0(sp)
    bne-    branch_0x80120c78
    lfs     f0, 0xd0(sp)
    li      r31, 0x1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xd4(sp)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0xd8(sp)
    stfs    f0, 0xcc(sp)
    b       branch_0x80120c88

branch_0x80120c78:
    lfs     f0, 0xb8(sp)
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0xcc(sp)
branch_0x80120c88:
    lwz     r4, 0x198(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x80120cb0
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x8c(sp)
    b       branch_0x80120cc4

branch_0x80120cb0:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x84
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x80120cc4:
    lwz     r0, 0x84(sp)
    mr      r3, r31
    lwz     r4, 0x88(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0x8c(sp)
    stw     r4, 0xac(sp)
    lfs     f1, -0x51c8(rtoc)
    stw     r0, 0xb0(sp)
    lfs     f0, 0xa8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xac(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(sp)
    lfs     f0, 0xb0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0xa8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0xac(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x0(r29)
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x4(r29)
    lfs     f0, 0xcc(sp)
    stfs    f0, 0x8(r29)
    lfs     f1, 0x0(r29)
    lfs     f0, 0x0(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r29)
    lfs     f1, 0x4(r29)
    lfs     f0, 0x4(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r29)
    lfs     f1, 0x8(r29)
    lfs     f0, 0x8(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r29)
    lwz     r0, 0x104(sp)
    lmw     r26, 0xe0(sp)
    lfd     f31, 0xf8(sp)
    mtlr    r0
    addi    sp, sp, 0x100
    blr


.globl bind__8TKumokunFv
bind__8TKumokunFv: # 0x80120d98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x188(sp)
    stfd    f31, 0x180(sp)
    stw     r31, 0x17c(sp)
    stw     r30, 0x178(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80121470
    lwz     r3, 0x8c(r30)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80120dd4
    b       branch_0x80120dd8

branch_0x80120dd4:
    lwz     r31, 0x1c(r3)
branch_0x80120dd8:
    lbz     r0, -0x65d8(r13)
    extsb.  r0, r0
    bne-    branch_0x80120e1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65d4(r13)
    subi    r0, r3, 0x2524
    lis     r4, 0x8012
    stw     r0, -0x65d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3434
    subi    r4, r4, 0x3ae0
    subi    r3, r13, 0x65d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65d8(r13)
branch_0x80120e1c:
    subi    r0, r13, 0x65d4
    cmplw   r31, r0
    bne-    branch_0x80120e34
    mr      r3, r30
    bl      bindOnFlying__8TKumokunFv
    b       branch_0x80121470

branch_0x80120e34:
    lwz     r3, 0x94(r30)
    lwz     r0, 0x98(r30)
    stw     r3, 0x168(sp)
    stw     r0, 0x16c(sp)
    lwz     r0, 0x9c(r30)
    stw     r0, 0x170(sp)
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f2, 0x168(sp)
    stw     r3, 0x104(sp)
    stw     r0, 0x108(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x10c(sp)
    lfs     f0, 0x104(sp)
    lfs     f1, 0x108(sp)
    fadds   f2, f2, f0
    lfs     f0, 0x10c(sp)
    stfs    f2, 0x168(sp)
    lfs     f2, 0x16c(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x16c(sp)
    lfs     f1, 0x170(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x170(sp)
    lwz     r5, 0x198(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80120ec0
    lwz     r3, 0x34(r5)
    addi    r4, sp, 0xcc
    lwz     r0, 0x38(r5)
    stw     r3, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x3c(r5)
    stw     r0, 0xd4(sp)
    b       branch_0x80120ed8

branch_0x80120ec0:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0xcc
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r4, sp, 0xcc
branch_0x80120ed8:
    lfs     f1, 0x4(r4)
    lfs     f0, -0x5228(rtoc)
    lfs     f2, -0x521c(rtoc)
    fmuls   f0, f1, f0
    lfs     f1, 0x0(r4)
    lfs     f3, 0x8(r4)
    lfs     f4, -0x51e0(rtoc)
    fmadds  f0, f1, f2, f0
    fmadds  f0, f3, f2, f0
    fcmpo   cr0, f4, f0
    bge-    branch_0x80120ff8
    lwz     r0, 0x168(sp)
    lwz     r3, 0x16c(sp)
    stw     r0, 0x140(sp)
    lwz     r0, 0x170(sp)
    stw     r3, 0x144(sp)
    lfs     f0, -0x5218(rtoc)
    stw     r0, 0x148(sp)
    lfs     f3, 0x140(sp)
    lfs     f1, 0x144(sp)
    fmuls   f3, f3, f3
    lfs     f4, 0x148(sp)
    fmuls   f1, f1, f1
    fmuls   f4, f4, f4
    fadds   f1, f3, f1
    fadds   f1, f4, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80120f5c
    stfs    f2, 0x148(sp)
    stfs    f2, 0x144(sp)
    stfs    f2, 0x140(sp)
    b       branch_0x80120f8c

branch_0x80120f5c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x51c4(rtoc)
    lfs     f0, 0x140(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x140(sp)
    lfs     f0, 0x144(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x144(sp)
    lfs     f0, 0x148(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x148(sp)
branch_0x80120f8c:
    lfs     f1, 0x140(sp)
    mr      r3, r30
    lfs     f0, 0x10(r30)
    addi    r4, sp, 0x150
    addi    r5, sp, 0x14c
    fadds   f0, f1, f0
    addi    r6, sp, 0x140
    addi    r7, sp, 0x168
    stfs    f0, 0x140(sp)
    lfs     f1, 0x144(sp)
    lfs     f0, 0x14(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x144(sp)
    lfs     f1, 0x148(sp)
    lfs     f0, 0x18(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x148(sp)
    bl      checkOnMovingFloor__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, sp, 0x15c
    addi    r5, sp, 0x14c
    addi    r6, r30, 0x10
    addi    r7, sp, 0x168
    bl      checkOnMovingFloor__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    or      r31, r31, r3
    b       branch_0x80121250

branch_0x80120ff8:
    lwz     r5, 0x198(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80121024
    lwz     r3, 0x34(r5)
    addi    r4, sp, 0xb4
    lwz     r0, 0x38(r5)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x3c(r5)
    stw     r0, 0xbc(sp)
    b       branch_0x80121038

branch_0x80121024:
    fmr     f1, f2
    addi    r3, sp, 0xb4
    fmr     f3, f2
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    addi    r4, sp, 0xb4
branch_0x80121038:
    lfs     f1, 0x4(r4)
    lfs     f0, -0x5228(rtoc)
    lfs     f6, -0x521c(rtoc)
    fmuls   f1, f1, f0
    lfs     f2, 0x0(r4)
    lfs     f3, 0x8(r4)
    lfs     f0, -0x5210(rtoc)
    fmadds  f1, f2, f6, f1
    fmadds  f1, f3, f6, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80121158
    lwz     r0, 0x168(sp)
    lwz     r3, 0x16c(sp)
    stw     r0, 0x134(sp)
    lwz     r0, 0x170(sp)
    stw     r3, 0x138(sp)
    lfs     f0, -0x5218(rtoc)
    stw     r0, 0x13c(sp)
    lfs     f2, 0x134(sp)
    lfs     f1, 0x138(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x13c(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801210bc
    stfs    f6, 0x13c(sp)
    stfs    f6, 0x138(sp)
    stfs    f6, 0x134(sp)
    b       branch_0x801210ec

branch_0x801210bc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x51c4(rtoc)
    lfs     f0, 0x134(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x134(sp)
    lfs     f0, 0x138(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x138(sp)
    lfs     f0, 0x13c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x13c(sp)
branch_0x801210ec:
    lfs     f1, 0x134(sp)
    mr      r3, r30
    lfs     f0, 0x10(r30)
    addi    r4, sp, 0x150
    addi    r5, sp, 0x14c
    fadds   f0, f1, f0
    addi    r6, sp, 0x134
    addi    r7, sp, 0x168
    stfs    f0, 0x134(sp)
    lfs     f1, 0x138(sp)
    lfs     f0, 0x14(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x138(sp)
    lfs     f1, 0x13c(sp)
    lfs     f0, 0x18(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x13c(sp)
    bl      checkOnMovingRoof__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, sp, 0x15c
    addi    r5, sp, 0x14c
    addi    r6, r30, 0x10
    addi    r7, sp, 0x168
    bl      checkOnMovingRoof__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    or      r31, r31, r3
    b       branch_0x80121250

branch_0x80121158:
    lwz     r0, 0x168(sp)
    lwz     r3, 0x16c(sp)
    stw     r0, 0x128(sp)
    lwz     r0, 0x170(sp)
    stw     r3, 0x12c(sp)
    lfs     f0, -0x5218(rtoc)
    stw     r0, 0x130(sp)
    lfs     f5, -0x5220(rtoc)
    lfs     f2, 0x128(sp)
    lfs     f1, 0x12c(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x130(sp)
    fmuls   f1, f1, f1
    lfs     f4, 0xc0(r30)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fmuls   f31, f5, f4
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801211bc
    stfs    f6, 0x130(sp)
    stfs    f6, 0x12c(sp)
    stfs    f6, 0x128(sp)
    b       branch_0x801211e8

branch_0x801211bc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x128(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x128(sp)
    lfs     f0, 0x12c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x12c(sp)
    lfs     f0, 0x130(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x130(sp)
branch_0x801211e8:
    lfs     f1, 0x128(sp)
    mr      r3, r30
    lfs     f0, 0x10(r30)
    addi    r4, sp, 0x150
    addi    r5, sp, 0x14c
    fadds   f0, f1, f0
    addi    r6, sp, 0x128
    addi    r7, sp, 0x168
    stfs    f0, 0x128(sp)
    lfs     f1, 0x12c(sp)
    lfs     f0, 0x14(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x12c(sp)
    lfs     f1, 0x130(sp)
    lfs     f0, 0x18(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x130(sp)
    bl      checkOnMovingWall__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, sp, 0x15c
    addi    r5, sp, 0x14c
    addi    r6, r30, 0x10
    addi    r7, sp, 0x168
    bl      checkOnMovingWall__8TKumokunCFPQ29JGeometry8TVec3_f_PPC12TBGCheckDataRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    or      r31, r31, r3
branch_0x80121250:
    lwz     r3, 0x124(r30)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80121414
    lwz     r0, 0x1e8(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80121414
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    lfs     f0, 0x15c(sp)
    stw     r3, 0x11c(sp)
    stw     r0, 0x120(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x124(sp)
    lfs     f1, 0x11c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x11c(sp)
    lfs     f1, 0x120(sp)
    lfs     f0, 0x160(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x120(sp)
    lfs     f1, 0x124(sp)
    lfs     f0, 0x164(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x124(sp)
    lfs     f2, 0x11c(sp)
    lfs     f1, 0x150(sp)
    lfs     f0, 0x154(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x11c(sp)
    lfs     f1, 0x120(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x120(sp)
    lfs     f1, 0x124(sp)
    lfs     f0, 0x158(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x124(sp)
    lwz     r0, 0x11c(sp)
    lwz     r3, 0x120(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0x124(sp)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r3, 0x1e8(r30)
    lfs     f4, 0x14c(r30)
    lwz     r5, 0x0(r3)
    cmplwi  r5, 0x0
    bne-    branch_0x80121318
    li      r3, 0x0
    b       branch_0x801213a4

branch_0x80121318:
    lwz     r0, 0x4(r3)
    li      r3, 0x0
    lfs     f1, -0x521c(rtoc)
    slwi    r0, r0, 4
    add     r0, r5, r0
    b       branch_0x8012139c

branch_0x80121330:
    lfs     f6, 0x4(r5)
    lfs     f0, 0x114(sp)
    lfs     f5, 0x0(r5)
    fmuls   f0, f6, f0
    lfs     f8, 0x110(sp)
    lfs     f7, 0x8(r5)
    lfs     f3, 0x118(sp)
    fmadds  f2, f5, f8, f0
    lfs     f0, 0xc(r5)
    fmadds  f2, f7, f3, f2
    fsubs   f0, f2, f0
    fsubs   f2, f4, f0
    fcmpo   cr0, f2, f1
    ble-    branch_0x80121390
    fmadds  f0, f5, f2, f8
    li      r4, 0x1
    stfs    f0, 0x110(sp)
    lfs     f0, 0x114(sp)
    fmadds  f0, f6, f2, f0
    stfs    f0, 0x114(sp)
    lfs     f0, 0x118(sp)
    fmadds  f0, f7, f2, f0
    stfs    f0, 0x118(sp)
    b       branch_0x80121394

branch_0x80121390:
    li      r4, 0x0
branch_0x80121394:
    or      r3, r3, r4
    addi    r5, r5, 0x10
branch_0x8012139c:
    cmplw   r5, r0
    bne+    branch_0x80121330
branch_0x801213a4:
    lwz     r0, 0x110(sp)
    or      r31, r31, r3
    lwz     r5, 0x114(sp)
    addi    r3, sp, 0x94
    stw     r0, 0x94(sp)
    lwz     r0, 0x118(sp)
    addi    r4, sp, 0x11c
    stw     r5, 0x98(sp)
    stw     r0, 0x9c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x94(sp)
    lwz     r3, 0x98(sp)
    stw     r0, 0xf8(sp)
    lwz     r0, 0x9c(sp)
    stw     r3, 0xfc(sp)
    lfs     f2, 0x15c(sp)
    stw     r0, 0x100(sp)
    lfs     f1, 0xf8(sp)
    lfs     f0, 0xfc(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x15c(sp)
    lfs     f1, 0x160(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x160(sp)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x100(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x164(sp)
branch_0x80121414:
    clrlwi. r0, r31, 24
    beq-    branch_0x8012142c
    lwz     r3, 0x194(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x194(r30)
    b       branch_0x80121434

branch_0x8012142c:
    li      r0, 0x0
    stw     r0, 0x194(r30)
branch_0x80121434:
    lwz     r0, 0x15c(sp)
    addi    r3, sp, 0x88
    lwz     r5, 0x160(sp)
    addi    r4, sp, 0x150
    stw     r0, 0x88(sp)
    lwz     r0, 0x164(sp)
    stw     r5, 0x8c(sp)
    stw     r0, 0x90(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x90(sp)
    stw     r0, 0x9c(r30)
branch_0x80121470:
    lwz     r0, 0x18c(sp)
    lfd     f31, 0x180(sp)
    lwz     r31, 0x17c(sp)
    mtlr    r0
    lwz     r30, 0x178(sp)
    addi    sp, sp, 0x188
    blr


.globl reset__8TKumokunFv
reset__8TKumokunFv: # 0x8012148c
    blr


.globl initAttachPlane__8TKumokunFv
initAttachPlane__8TKumokunFv: # 0x80121490
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stfd    f30, 0x168(sp)
    stfd    f29, 0x160(sp)
    stfd    f28, 0x158(sp)
    stfd    f27, 0x150(sp)
    stw     r31, 0x14c(sp)
    mr      r31, r3
    stw     r30, 0x148(sp)
    li      r30, 0x0
    lfs     f1, 0x14(r3)
    addi    r3, sp, 0xd4
    lfs     f0, 0xc0(r31)
    lfs     f3, 0x18(r31)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
    lfs     f0, -0x51d4(rtoc)
    li      r0, 0x1
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0xd4
    stfs    f0, 0xe0(sp)
    stw     r0, 0xe4(sp)
    stw     r30, 0xec(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    ble-    branch_0x80121508
    lwz     r30, 0xf0(sp)
branch_0x80121508:
    cmplwi  r30, 0x0
    beq-    branch_0x80121650
    stw     r30, 0x198(r31)
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8012153c
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    stw     r3, 0x11c(sp)
    stw     r0, 0x120(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x124(sp)
    b       branch_0x80121550

branch_0x8012153c:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x11c
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x80121550:
    lfs     f3, 0x124(sp)
    lfs     f2, -0x521c(rtoc)
    lfs     f1, 0x120(sp)
    fmuls   f0, f2, f3
    lfs     f4, 0x11c(sp)
    fmuls   f5, f2, f1
    lfs     f1, -0x5228(rtoc)
    fmsubs  f29, f2, f4, f0
    fmsubs  f30, f1, f3, f5
    fnmsubs  f28, f1, f4, f5
    fmuls   f0, f29, f29
    fmadds  f0, f30, f30, f0
    fmadds  f31, f28, f28, f0
    fcmpo   cr0, f31, f2
    cror    2, 0, 2
    bne-    branch_0x80121594
    b       branch_0x801215b8

branch_0x80121594:
    frsqrte f3, f31
    lfs     f2, -0x5220(rtoc)
    lfs     f0, -0x5214(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x801215b8:
    lfs     f0, -0x5218(rtoc)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x801215e4
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    lfs     f0, -0x5228(rtoc)
    stfs    f0, 0x1a8(r31)
    b       branch_0x8012187c

branch_0x801215e4:
    lfs     f1, -0x5228(rtoc)
    lfs     f0, 0x120(sp)
    lfs     f4, -0x521c(rtoc)
    fmuls   f0, f1, f0
    lfs     f2, 0x11c(sp)
    lfs     f3, 0x124(sp)
    fmr     f1, f31
    fmadds  f0, f4, f2, f0
    fmadds  f2, f4, f3, f0
    bl      atan2f
    lfs     f0, -0x5220(rtoc)
    lfs     f2, -0x5228(rtoc)
    fmuls   f0, f0, f1
    fmuls   f27, f2, f0
    fmr     f1, f27
    bl      sinf
    fdivs   f1, f1, f31
    fmuls   f0, f30, f1
    fmuls   f2, f29, f1
    stfs    f0, 0x19c(r31)
    fmuls   f0, f28, f1
    fmr     f1, f27
    stfs    f2, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    bl      cosf
    stfs    f1, 0x1a8(r31)
    b       branch_0x8012187c

branch_0x80121650:
    lfs     f27, 0x14(r31)
    li      r0, 0x0
    lfs     f1, 0x10(r31)
    addi    r4, sp, 0xb8
    lfs     f3, 0x18(r31)
    lfs     f28, 0xc0(r31)
    fmr     f2, f27
    lwz     r3, gpMap(r13)
    stw     r0, 0xb8(sp)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x5228(rtoc)
    lfs     f0, -0x521c(rtoc)
    fsubs   f1, f1, f2
    fsubs   f1, f1, f27
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8012169c
    fcmpo   cr0, f1, f28
    blt-    branch_0x801216a4
branch_0x8012169c:
    li      r0, 0x0
    stw     r0, 0xb8(sp)
branch_0x801216a4:
    lwz     r0, 0xb8(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x801216ec
    stw     r0, 0x198(r31)
    lfs     f1, -0x5208(rtoc)
    lfs     f0, -0x5220(rtoc)
    fmuls   f27, f0, f1
    fmr     f1, f27
    bl      sinf
    fmr     f28, f1
    fmr     f1, f27
    bl      cosf
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x1a0(r31)
    stfs    f28, 0x1a4(r31)
    stfs    f1, 0x1a8(r31)
    b       branch_0x8012187c

branch_0x801216ec:
    lfs     f27, 0x14(r31)
    li      r30, 0x0
    lfs     f0, 0xc0(r31)
    addi    r4, sp, 0xac
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    fadds   f2, f27, f0
    lwz     r3, gpMap(r13)
    stw     r30, 0xac(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x5228(rtoc)
    lfs     f0, -0x51e4(rtoc)
    fadds   f1, f1, f2
    fadds   f0, f0, f1
    fcmpo   cr0, f27, f0
    cror    2, 0, 2
    beq-    branch_0x80121734
    stw     r30, 0xac(sp)
branch_0x80121734:
    lwz     r0, 0xac(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x8012187c
    stw     r0, 0x198(r31)
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8012176c
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    stw     r3, 0x104(sp)
    stw     r0, 0x108(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x10c(sp)
    b       branch_0x80121780

branch_0x8012176c:
    lfs     f1, -0x521c(rtoc)
    addi    r3, sp, 0x104
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8011c9a8
branch_0x80121780:
    lfs     f3, 0x10c(sp)
    lfs     f2, -0x521c(rtoc)
    lfs     f1, 0x108(sp)
    fmuls   f0, f2, f3
    lfs     f4, 0x104(sp)
    fmuls   f5, f2, f1
    lfs     f1, -0x5228(rtoc)
    fmsubs  f29, f2, f4, f0
    fmsubs  f28, f1, f3, f5
    fnmsubs  f30, f1, f4, f5
    fmuls   f0, f29, f29
    fmadds  f0, f28, f28, f0
    fmadds  f31, f30, f30, f0
    fcmpo   cr0, f31, f2
    cror    2, 0, 2
    bne-    branch_0x801217c4
    b       branch_0x801217e8

branch_0x801217c4:
    frsqrte f3, f31
    lfs     f2, -0x5220(rtoc)
    lfs     f0, -0x5214(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x801217e8:
    lfs     f0, -0x5218(rtoc)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80121814
    lfs     f0, -0x521c(rtoc)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    lfs     f0, -0x5228(rtoc)
    stfs    f0, 0x1a8(r31)
    b       branch_0x8012187c

branch_0x80121814:
    lfs     f1, -0x5228(rtoc)
    lfs     f0, 0x108(sp)
    lfs     f4, -0x521c(rtoc)
    fmuls   f0, f1, f0
    lfs     f2, 0x104(sp)
    lfs     f3, 0x10c(sp)
    fmr     f1, f31
    fmadds  f0, f4, f2, f0
    fmadds  f2, f4, f3, f0
    bl      atan2f
    lfs     f0, -0x5220(rtoc)
    lfs     f2, -0x5228(rtoc)
    fmuls   f0, f0, f1
    fmuls   f27, f2, f0
    fmr     f1, f27
    bl      sinf
    fdivs   f1, f1, f31
    fmuls   f0, f28, f1
    fmuls   f2, f29, f1
    stfs    f0, 0x19c(r31)
    fmuls   f0, f30, f1
    fmr     f1, f27
    stfs    f2, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    bl      cosf
    stfs    f1, 0x1a8(r31)
branch_0x8012187c:
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lfd     f30, 0x168(sp)
    mtlr    r0
    lfd     f29, 0x160(sp)
    lfd     f28, 0x158(sp)
    lfd     f27, 0x150(sp)
    lwz     r31, 0x14c(sp)
    lwz     r30, 0x148(sp)
    addi    sp, sp, 0x178
    blr


.globl init__8TKumokunFP12TLiveManager
init__8TKumokunFP12TLiveManager: # 0x801218a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801218f0
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x801218f0:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x562c
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lbz     r0, -0x65f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80121950
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x65f4(r13)
    subi    r0, r3, 0x24e4
    lis     r4, 0x8012
    stw     r0, -0x65f4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3404
    subi    r4, r4, 0x3480
    subi    r3, r13, 0x65f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x65f8(r13)
branch_0x80121950:
    lwz     r7, 0x8c(r31)
    li      r30, 0x0
    lis     r4, 0x1000
    stw     r30, 0x8(r7)
    subi    r0, r13, 0x65f4
    addi    r3, r31, 0x0
    stw     r30, 0x20(r7)
    addi    r4, r4, 0x2c
    li      r5, 0x2
    stw     r0, 0x14(r7)
    lis     r6, 0x9000
    stw     r0, 0x18(r7)
    stw     r30, 0x1c(r7)
    lfs     f1, -0x51c0(rtoc)
    lfs     f2, -0x51c4(rtoc)
    lfs     f3, -0x51bc(rtoc)
    lfs     f4, -0x51b8(rtoc)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lfs     f0, -0x51d4(rtoc)
    stfs    f0, 0xbc(r31)
    stfs    f0, 0x14c(r31)
    lfs     f0, -0x51b4(rtoc)
    stfs    f0, 0xc0(r31)
    lfs     f0, -0x51b0(rtoc)
    stfs    f0, 0xb8(r31)
    bl      initAttachPlane__8TKumokunFv
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    stb     r30, 0x1d4(r31)
    lwz     r3, 0x124(r31)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80121a70
    li      r0, -0x1
    stw     r0, 0x8(r3)
    mr      r3, r31
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80121a08
    stw     r30, 0x0(r3)
branch_0x80121a08:
    stw     r3, 0x1e8(r31)
    lwz     r4, 0x198(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80121a38
    lwz     r3, 0x34(r4)
    addi    r6, sp, 0x4c
    lwz     r0, 0x38(r4)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x54(sp)
    b       branch_0x80121a4c

branch_0x80121a38:
    lfs     f0, -0x521c(rtoc)
    addi    r6, sp, 0x4c
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
branch_0x80121a4c:
    lwz     r4, 0x124(r31)
    addi    r5, r31, 0x10
    lwz     r3, 0x1e8(r31)
    lwz     r4, 0x0(r4)
    bl      init__12TWallAtGraphFPC9TGraphWebRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    bne-    branch_0x80121a70
    li      r0, 0x0
    stw     r0, 0x1e8(r31)
branch_0x80121a70:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl getBasNameTable__8TKumokunCFv
getBasNameTable__8TKumokunCFv: # 0x80121a88
    lwz     r3, 0x198(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80121a9c
    li      r0, 0x0
    b       branch_0x80121ae0

branch_0x80121a9c:
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x80121ab0
    li      r0, 0x1
    b       branch_0x80121ab4

branch_0x80121ab0:
    li      r0, 0x0
branch_0x80121ab4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80121ad4
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x80121adc
    li      r0, 0x0
    b       branch_0x80121ae0

branch_0x80121ad4:
    li      r0, 0x0
    b       branch_0x80121ae0

branch_0x80121adc:
    li      r0, 0x1
branch_0x80121ae0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80121af4
    lis     r3, 0x803c
    subi    r3, r3, 0x25a8
    blr

branch_0x80121af4:
    lis     r3, 0x803c
    subi    r3, r3, 0x2574
    blr


.globl __ct__8TKumokunFPCc
__ct__8TKumokunFPCc: # 0x80121b00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803c
    lwz     r30, 0x8(sp)
    subi    r3, r3, 0x244c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r30)
    subi    r3, r3, 0x2530
    li      r0, 0x3
    stw     r3, 0x1e4(r30)
    li      r31, 0x0
    stw     r0, 0x1d8(r30)
    stw     r31, 0x1dc(r30)
    stw     r31, 0x1e0(r30)
    lwz     r0, 0x1d8(r30)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x1e0(r30)
    li      r0, 0x2
    addi    r3, r30, 0x0
    stw     r31, 0x1e8(r30)
    stw     r0, 0x1ec(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16TSolidStack_PCc_Fv
__dt__16TSolidStack_PCc_Fv: # 0x80121b90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80121bc4
    lis     r3, 0x803c
    subi    r3, r3, 0x2530
    extsh.  r0, r4
    stw     r3, 0xc(r31)
    ble-    branch_0x80121bc4
    mr      r3, r31
    bl      __dl__FPv
branch_0x80121bc4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__12TWallAtGraphFPC9TGraphWebRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
init__12TWallAtGraphFPC9TGraphWebRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x80121bdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stmw    r25, 0x9c(sp)
    mr.     r27, r4
    addi    r26, r3, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    beq-    branch_0x80121c1c
    mr      r3, r27
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80121c24
branch_0x80121c1c:
    li      r3, 0x0
    b       branch_0x80121ec0

branch_0x80121c24:
    mr      r3, r27
    bl      startIsEnd__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80121c3c
    li      r3, 0x0
    b       branch_0x80121ec0

branch_0x80121c3c:
    lwz     r31, 0x8(r27)
    slwi    r3, r31, 4
    stw     r31, 0x4(r26)
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8012
    addi    r4, r4, 0x1efc
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0x10
    bl      __construct_new_array
    stw     r3, 0x0(r26)
    li      r30, 0x0
    li      r25, 0x0
    lfs     f29, -0x5218(rtoc)
    lfs     f30, -0x521c(rtoc)
    lfs     f31, -0x5228(rtoc)
    b       branch_0x80121eb4

branch_0x80121c84:
    addi    r5, r30, 0x1
    divw    r0, r5, r31
    mullw   r0, r0, r31
    addi    r4, r27, 0x0
    addi    r3, sp, 0x64
    subf    r5, r0, r5
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x64(sp)
    mr      r4, r27
    lwz     r6, 0x68(sp)
    mr      r5, r30
    stw     r0, 0x88(sp)
    lwz     r0, 0x6c(sp)
    addi    r3, sp, 0x58
    stw     r6, 0x8c(sp)
    stw     r0, 0x90(sp)
    bl      indexToPoint__9TGraphWebCFi
    lfs     f2, 0x88(sp)
    mr      r4, r27
    lfs     f1, 0x58(sp)
    mr      r5, r30
    lfs     f0, 0x5c(sp)
    fsubs   f1, f2, f1
    addi    r3, sp, 0x4c
    stfs    f1, 0x88(sp)
    lfs     f1, 0x8c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x60(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(sp)
    lwz     r6, 0x0(r28)
    lwz     r0, 0x4(r28)
    stw     r6, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x84(sp)
    bl      indexToPoint__9TGraphWebCFi
    lfs     f2, 0x7c(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x7c(sp)
    lfs     f1, 0x80(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x54(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f4, 0x8c(sp)
    lfs     f5, 0x8(r29)
    lfs     f3, 0x0(r29)
    lfs     f2, 0x90(sp)
    fmuls   f0, f5, f4
    lfs     f6, 0x4(r29)
    lfs     f7, 0x88(sp)
    fmuls   f1, f3, f2
    fmsubs  f0, f6, f2, f0
    fmuls   f2, f6, f7
    fmsubs  f1, f5, f7, f1
    stfs    f0, 0x70(sp)
    fmsubs  f0, f3, f4, f2
    stfs    f1, 0x74(sp)
    stfs    f0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x74(sp)
    lfs     f2, 0x78(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80121dc8
    stfs    f30, 0x78(sp)
    stfs    f30, 0x74(sp)
    stfs    f30, 0x70(sp)
    b       branch_0x80121df4

branch_0x80121dc8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x70(sp)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
branch_0x80121df4:
    lfs     f1, 0x74(sp)
    lfs     f0, 0x80(sp)
    lfs     f4, 0x70(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x7c(sp)
    lfs     f3, 0x78(sp)
    lfs     f2, 0x84(sp)
    fmadds  f0, f4, f1, f0
    fmadds  f0, f3, f2, f0
    fcmpo   cr0, f0, f30
    bge-    branch_0x80121e40
    fneg    f0, f4
    stfs    f0, 0x70(sp)
    lfs     f0, 0x74(sp)
    fneg    f0, f0
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fneg    f0, f0
    stfs    f0, 0x78(sp)
branch_0x80121e40:
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    addi    r3, sp, 0x30
    bl      indexToPoint__9TGraphWebCFi
    addi    r3, sp, 0x3c
    addi    r4, sp, 0x70
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lfs     f1, 0x40(sp)
    addi    r30, r30, 0x1
    lfs     f0, 0x34(sp)
    lfs     f2, 0x3c(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x30(sp)
    lfs     f4, 0x44(sp)
    lfs     f3, 0x38(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x48(sp)
    lwz     r0, 0x0(r26)
    lwz     r3, 0x3c(sp)
    add     r4, r0, r25
    lwz     r0, 0x40(sp)
    addi    r25, r25, 0x10
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x44(sp)
    stw     r0, 0x8(r4)
    lfs     f0, 0x48(sp)
    stfs    f0, 0xc(r4)
branch_0x80121eb4:
    cmpw    r30, r31
    blt+    branch_0x80121c84
    li      r3, 0x1
branch_0x80121ec0:
    lmw     r25, 0x9c(sp)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    lfd     f29, 0xb8(sp)
    addi    sp, sp, 0xd0
    blr


.globl set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_: # 0x80121ee0
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    blr


.globl __ct__Q29JGeometry14TPartition3_f_Fv
__ct__Q29JGeometry14TPartition3_f_Fv: # 0x80121efc
    blr


.globl __dt__15TKumokunManagerFv
__dt__15TKumokunManagerFv: # 0x80121f00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80121f58
    lis     r3, 0x803c
    subi    r0, r3, 0x24a4
    stw     r0, 0x0(r30)
    beq-    branch_0x80121f48
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80121f48:
    extsh.  r0, r31
    ble-    branch_0x80121f58
    mr      r3, r30
    bl      __dl__FPv
branch_0x80121f58:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TKumokunFv
__dt__8TKumokunFv: # 0x80121f74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80121ff4
    lis     r3, 0x803c
    subi    r3, r3, 0x244c
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    addic.  r0, r30, 0x1d8
    stw     r3, 0x20(r30)
    beq-    branch_0x80121fbc
    lis     r3, 0x803c
    subi    r0, r3, 0x2530
    stw     r0, 0x1e4(r30)
branch_0x80121fbc:
    cmplwi  r30, 0x0
    beq-    branch_0x80121fe4
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80121fe4:
    extsh.  r0, r31
    ble-    branch_0x80121ff4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80121ff4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__8TKumokunFv
_32___dt__8TKumokunFv: # 0x80122010
    subi    r3, r3, 0x20
    b       __dt__8TKumokunFv

